package com.cling;

import static org.junit.Assert.assertTrue;

import com.cling.Entity.Person;
import org.apache.ignite.*;
import org.apache.ignite.binary.BinaryObject;
import org.apache.ignite.cache.CacheAtomicityMode;
import org.apache.ignite.cache.CacheMode;
import org.apache.ignite.cache.QueryEntity;
import org.apache.ignite.cache.QueryIndex;
import org.apache.ignite.cache.query.QueryCursor;
import org.apache.ignite.cache.query.ScanQuery;
import org.apache.ignite.cache.query.TextQuery;
import org.apache.ignite.cluster.ClusterGroup;
import org.apache.ignite.cluster.ClusterMetrics;
import org.apache.ignite.cluster.ClusterNode;
import org.apache.ignite.configuration.CacheConfiguration;
import org.apache.ignite.configuration.IgniteConfiguration;
import org.apache.ignite.lang.IgniteBiPredicate;
import org.apache.ignite.lang.IgniteCallable;
import org.apache.ignite.lang.IgniteRunnable;
import org.apache.ignite.resources.IgniteInstanceResource;
import org.apache.ignite.spi.discovery.tcp.TcpDiscoverySpi;
import org.apache.ignite.spi.discovery.tcp.ipfinder.multicast.TcpDiscoveryMulticastIpFinder;
import org.apache.ignite.transactions.Transaction;
import org.junit.Test;
import org.omg.CORBA.INTERNAL;

import javax.cache.Cache;
import javax.cache.CacheManager;
import javax.cache.Caching;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;

/**
 * Unit test for simple App.
 */
public class AppTest {
    /**
     * Rigorous Test :-)
     */
    @Test
    public void shouldAnswerWithTrue() {
        assertTrue(true);
    }

    @Test
    public void calcApp() {
        Ignite ignite = Ignition.start("examples/config/example-ignite.xml");
        Collection<IgniteCallable<Integer>> calls = new ArrayList<>();
        for (final String word : "count characters using callable".split(" ")) {
            calls.add(word::length);
        }
        Collection<Integer> res = ignite.compute().call(calls);
        int sum = res.stream().mapToInt(Integer::intValue).sum();
        System.out.println(sum);
    }

    @Test
    public void weatherAlarm() {
        Ignite ignite = Ignition.start();
        long cityId = 2;
        ignite.compute().affinityRun("SQL_PUBIC_CITY", cityId, new IgniteRunnable() {
            @IgniteInstanceResource
            Ignite ignite;

            @Override
            public void run() {
                IgniteCache<BinaryObject, BinaryObject> people = ignite.cache("Person").withKeepBinary();
                ScanQuery<BinaryObject, BinaryObject> query = new ScanQuery<>();

                try (QueryCursor<Cache.Entry<BinaryObject, BinaryObject>> cursor = people.query(query)) {
                    for (Cache.Entry<BinaryObject, BinaryObject> entry : cursor) {
                        BinaryObject personKey = entry.getKey();
                        if (personKey.<Long>field("CITY_ID") == cityId) {
                            System.out.println(entry.getValue());
                        }
                    }
                }

            }
        });
    }

    /**
     * 第一个数据网格应用
     * 往分布式缓存中获取/添加数组，并执行基本的事务
     */
    @Test
    public void TestGridApp() {
        try (Ignite ignite = Ignition.start("examples/config/example-ignite.xml")) {
            IgniteCache<Integer, String> cache = ignite.getOrCreateCache("myCacheName");
            for (int i = 0; i < 10; i++) {
                cache.put(i, Integer.toString(i));
            }
            for (int i = 0; i < 10; i++) {
                System.out.println("Got [key=" + i + ", val=" + cache.get(i) + ']');
            }
          /*  Integer oldVal = cache.getAndPutIfAbsent("Hello", 11);
            System.out.println(oldVal);
            boolean success = cache.putIfAbsent("World", 22);
            System.out.println(success);
            oldVal = cache.getAndReplace("Hello", 11);
            System.out.println(oldVal);
            success = cache.replace("World", 22);
            System.out.println(success);
            success = cache.replace("World", 22, 222);
            System.out.println(success);
            success = cache.remove("Hello", 11);
            System.out.println(success);*/
      /*     try (Transaction tx = ignite.transactions().txStart()) {
               Integer hello = cache.get("Hello");
               if (hello == 1) {
                   cache.put("World", 11);
               }
               cache.put("World" ,22);
               tx.commit();
           }*/

        }
    }

    @Test
    public void client() {

        // Enable client mode locally
        Ignition.setClientMode(true);

        // Start Ignite in client mode.
        Ignite ignite = Ignition.start();
        CacheConfiguration cfg = new CacheConfiguration("myCache");
        // be caching any data.
        IgniteCache<?, ?> cache = ignite.getOrCreateCache(cfg);

        IgniteCompute compute = ignite.compute();
        compute.broadcast(() -> System.out.println("Hello Server"));

    }

    @Test
    public void TestCluster() {
        // 通过IgniteCluster接口提供集群功能
        // 可以启动和停止一个远程集群节点
        // 获取集群成员的列表
        // 创建逻辑 集群组
        Ignite ignite = Ignition.ignite();
        IgniteCluster cluster = ignite.cluster();

        //ClusterNode 处理集群中的节点，可以视为网络中逻辑端点，他有一个唯一的ID， 节点的元数据信息，静态属性集以及一些其他的参数

        // 获得worker属性的节点
        ClusterGroup workers = ignite.cluster().forAttribute("ROLE", "worker");
        Collection<ClusterNode> nodes = workers.nodes();

        // Local Ignite node.
        ClusterNode localNode = cluster.localNode();

        // node metercs. 节点指标
        ClusterMetrics metrics = cluster.metrics();

        // Get some metric values.
        double cpuLoad = metrics.getCurrentCpuLoad();
        long userHeap = metrics.getHeapMemoryUsed();
        int numberOfCores = metrics.getTotalCpus();
        int activeJobs = metrics.getCurrentActiveJobs();

        // 本地集群节点是ClusterNode的一个实例， 表示当前的lgnite节点
        localNode = ignite.cluster().localNode();

        // 集群组

        // ClusterGroup表示集群内节点的一个逻辑组。从设计上讲，所有集群节点都是平等的，所以没用必要以一个特定的顺序启动任何节点，
        // IgniteCluster接口也是一个集群组


    }

    @Test
    public void TestClusterBroadcast() {
        final Ignite ignite = Ignition.start();
        IgniteCluster cluster = ignite.cluster();
        // get compute instance which will only execute
        // over remote nodes, i.e. not this node.
        IgniteCompute compute = ignite.compute(cluster.forRemotes());
        compute.broadcast(() -> System.out.println("Hello Node: " + ignite.cluster().localNode()));

    }

    @Test
    public void TestFindIp() {
        TcpDiscoverySpi spi = new TcpDiscoverySpi();
        TcpDiscoveryMulticastIpFinder ipFinder = new TcpDiscoveryMulticastIpFinder();
        ipFinder.setMulticastGroup("228..10.10.157");

        spi.setIpFinder(ipFinder);
        IgniteConfiguration cfg = new IgniteConfiguration();
        // override default discovery SPI
        cfg.setDiscoverySpi(spi);

        // Start Ignite node.
        Ignition.start(cfg);
        // 也可以设置要给静态ip数组
        // 在同一个机器卡组中隔离Ignite集群
        // 可以在同一组机器中启动两个隔离的集群


    }

    @Test
    public void grid() {

        // IgniteCache接口是Ignite缓存实现的一个入口，提供了保存和获取数据，执行查询， 包括SQL, 迭代和扫描等等方法。
        // 可以从Ignite中直接获得IgniteCacche的实例
        Ignite ignite = Ignition.ignite();
        IgniteCache<Integer, String> cache = ignite.cache("myCache");

        // 动态缓存
        CacheConfiguration cfg = new CacheConfiguration();
        cfg.setName("myCache");
        cfg.setAtomicityMode(CacheAtomicityMode.TRANSACTIONAL);
        IgniteCache<Integer, String> cache1 = ignite.getOrCreateCache(cfg);
    }


    @Test
    public void jCache() {
        try (Ignite ignite = Ignition.start("examples/config/example-cache.xml")) {
            IgniteCache<Integer, String> cache = ignite.getOrCreateCache("gridCache");
            IgniteCache<Integer, String> cache1 = ignite.cache("gridCache");
            for (int i = 0; i < 10; i++) {
                System.out.println(i);
                cache1.put(i, Integer.toString(i));
            }
            for (int i = 0; i < 10; i++) {
                System.out.println("Get [key=" + i + ",val=" + cache.get(i) + "]");
            }
        }
    }

    @Test
    public void testEntryProcessor() {
        try (Ignite ignite = Ignition.start("examples/config/example-cache.xml")) {
            IgniteCache<String, Integer> cache = ignite.getOrCreateCache("mycache");
            // 当在缓存中执行puts和updates操作时，通常需要在网络中发送完整的状态数据，而EntryProcessor可以直接在主节点上处理数据
            for (int i = 0; i < 10; i++) {
                cache.invoke("mykey", (entry, args) -> {
                    Integer val = entry.getValue();
                    entry.setValue(val == null ? 1 : val + 1);
                    return null;
                });
            }
        }

    }

    @Test
    public void testSync() {
        CacheManager cacheMgr = Caching.getCachingProvider().getCacheManager();
        CacheConfiguration<Integer, String> cfg= new CacheConfiguration<>();
        cfg.setCacheMode(CacheMode.PARTITIONED);
        Cache<Integer, String> cache = cacheMgr.createCache("aCache", cfg);

        //Cache operations
        Integer key = 1;
        String value = "11";
        cache.put(key, value);
        System.out.println(cache.get(key));

        // CachingProvider.getCacheManager(..)
        // Get or crate a cache manager



    }

    // 分区模式是扩展性最好的分布式缓存模式，这种模式下，所有数据被均等地分布在分区中， 所有的分区也被均等地拆分在相关的节点中，实际上就是为缓存的数据创建一个巨大的内存分布式存储。这个方式可以在所有节点上只要匹配总可用存储
    // 复制模式
    // 所有数据都被复制到集群内的每个节点

    public List<Person> initPerson() {
        Person person = new Person("dayday", 2000, "man");
        Person person1 = new Person("dayday1", 3000, "man");
        Person person2 = new Person("dayday2", 1000, "man");
        List<Person> list = new ArrayList<>();
        list.add(person);
        list.add(person1);
        list.add(person2);
        return list;
    }

    @Test
    public void scanSelect() {

        try (Ignite ignite = Ignition.start("examples/config/example-cache.xml")) {
            IgniteCache<Long, Person> cache = ignite.getOrCreateCache("mycache1");
            List<Person> personList = initPerson();
            cache.put(1L , personList.get(0));
            cache.put(2L , personList.get(1));
            cache.put(3L , personList.get(2));
            TextQuery txt = new TextQuery(Person.class, "dayday");
            try (QueryCursor<Cache.Entry<Long, Person>> masters = cache.query(txt)) {
                for (Cache.Entry<Long, Person> entry : masters) {
                    System.out.println(entry.getValue().toString());
                }
            }
        }
    }

    @Test
    public void queryEntity() {
        CacheConfiguration<Long, Person>  cacheCfg = new CacheConfiguration<>();
        cacheCfg.setName("myCache");

        // Setting up query eneity.
        QueryEntity queryEntity = new QueryEntity();
        queryEntity.setKeyType(Long.class.getName());
        queryEntity.setValueType(Person.class.getName());
        LinkedHashMap<String, String> fields = new LinkedHashMap<>();

        fields.put("id", Long.class.getName());
        fields.put("orgId", Long.class.getName());
        fields.put("firstName", String.class.getName());
        fields.put("lastName", String.class.getName());
        fields.put("resume", String.class.getName());
        fields.put("salary", Double.class.getName());

        queryEntity.setFields(fields);

        // set index
        Collection<QueryIndex> indexes = new ArrayList<>();
        ((ArrayList<QueryIndex>) indexes).add(new QueryIndex("id"));




    }
}
