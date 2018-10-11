package com.cling;

import org.apache.ignite.Ignite;
import org.apache.ignite.IgniteCache;
import org.apache.ignite.Ignition;

public class Jcache {
    public static void main(String[] args) {
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
}
