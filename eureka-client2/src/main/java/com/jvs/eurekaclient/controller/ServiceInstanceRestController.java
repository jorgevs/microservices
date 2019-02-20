package com.jvs.eurekaclient.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
class ServiceInstanceRestController {

    @Autowired
    private DiscoveryClient discoveryClient;

    @RequestMapping("/hello")
    public String printHelloWorld() {
        return "Hello world!";
    }

    @RequestMapping("/all-service-instances")
    public List<String> serviceInstances() {
        return this.discoveryClient.getServices();
    }
}