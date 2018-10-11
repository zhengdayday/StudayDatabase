package com.cling;

import com.cling.Service.Impl.WeatherServiceImpl;
import com.cling.Service.WeatherService;
import org.apache.ignite.Ignite;
import org.apache.ignite.Ignition;

/**
 * @author dayday
 */
public class ServiceGridExample {
    public static void main(String[] args) throws Exception {
        try (Ignite ignite = Ignition.start()) {
            ignite.services().deployClusterSingleton("WeatherService", new WeatherServiceImpl());
            WeatherService service = ignite.services().service("WeatherService");
            String forecast = service.getCurrentTemperature("London", "UK");
            System.out.println("Weather forecast in London:" + forecast);
        }
    }
}
