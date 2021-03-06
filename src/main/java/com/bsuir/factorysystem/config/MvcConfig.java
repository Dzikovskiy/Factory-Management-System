package com.bsuir.factorysystem.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfig implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
    }

    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/login").setViewName("login");
        registry.addViewController("/foreman").setViewName("foreman");
        registry.addViewController("/tech").setViewName("tech");
        registry.addViewController("/dispatcherSellingPlan").setViewName("dispatcherSellingPlan");
        registry.addViewController("/dispatcherOrders").setViewName("dispatcherOrders");
        registry.addViewController("/foremanOrdersMovement").setViewName("foremanOrdersMovement");
    }

}