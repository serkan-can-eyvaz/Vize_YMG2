package com.example.ymg_proje.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("hello")
public class HelloWorldController {

    @GetMapping()
    public String helloWorld(){
        return  "hello world serkan can eyvaz";
    }

}
