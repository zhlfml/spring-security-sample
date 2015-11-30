package me.thomas.sample.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Thomas on 2015/11/30.
 */
@Controller
@RequestMapping("/users")
public class UserController {

    @ResponseBody
    @RequestMapping("/info")
    public String info() {
        return "{\"name\":\"Thomas\"}";
    }
}
