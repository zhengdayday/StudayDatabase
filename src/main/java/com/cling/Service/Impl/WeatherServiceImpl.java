package com.cling.Service.Impl;

import com.cling.Service.WeatherService;
import org.apache.ignite.services.ServiceContext;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class WeatherServiceImpl implements WeatherService {

    /** Weather service URL */
    private static final String WEATHER_URL = "http://samples.openweathermap.org/data/2.5/weather?";

    /** Sample app ID */
    private static final String appId = "ca7345b4a1ef8c037f7749c09fcbf808";

    @Override
    public String getCurrentTemperature(String countryCode, String cityName) throws Exception {
        System.out.println(">>> Requestd weather forecase [city=" + cityName + ", countryCode=" + countryCode + "]");
        String connStr = WEATHER_URL + "q=" + cityName + "," + countryCode + "$appid=" + appId;
        URL url = new URL(connStr);
        HttpURLConnection conn = null;
        try {
            conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.connect();
            try (BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()))) {
                String line;
                StringBuilder sb = new StringBuilder();
                while ((line = reader.readLine()) != null) {
                    sb.append(line);
                }
                return sb.toString();
            }
        } finally {
            if (conn != null) {
                conn.disconnect();
            }
        }
    }

    @Override
    public void cancel(ServiceContext serviceContext) {
        System.out.println("Weather Service is stopped!");
    }

    @Override
    public void init(ServiceContext serviceContext) throws Exception {
        System.out.println("Weather Servcie is initialized!");
    }

    @Override
    public void execute(ServiceContext serviceContext) throws Exception {
        System.out.println("Weather Service is started!");
    }
}
