package com.smartphone.init;

import java.util.List;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.MediaType;
import org.springframework.mobile.device.DeviceHandlerMethodArgumentResolver;
import org.springframework.mobile.device.DeviceResolverHandlerInterceptor;
import org.springframework.mobile.device.view.LiteDeviceDelegatingViewResolver;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.config.annotation.ContentNegotiationConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan("com.smartphone")
public class AppConfig extends WebMvcConfigurerAdapter{
	
	@Bean
	public DeviceResolverHandlerInterceptor 
	        deviceResolverHandlerInterceptor() {
	    return new DeviceResolverHandlerInterceptor();
	}

	@Bean
	public DeviceHandlerMethodArgumentResolver 
	        deviceHandlerMethodArgumentResolver() {
	    return new DeviceHandlerMethodArgumentResolver();
	}

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
	    registry.addInterceptor(deviceResolverHandlerInterceptor());
	}

	@Override
	public void addArgumentResolvers(
	        List<HandlerMethodArgumentResolver> argumentResolvers) {
	    argumentResolvers.add(deviceHandlerMethodArgumentResolver());
	}

	@Bean
	public LiteDeviceDelegatingViewResolver liteDeviceAwareViewResolver() {
	    InternalResourceViewResolver delegate = 
	            new InternalResourceViewResolver();
	    delegate.setPrefix("/WEB-INF/views/");
	    delegate.setSuffix(".jsp");
	    LiteDeviceDelegatingViewResolver resolver = 
	            new LiteDeviceDelegatingViewResolver(delegate);
	    resolver.setMobilePrefix("mobile/");
	    resolver.setTabletPrefix("tablet/");
	    return resolver;
	}
	
	@Override
	public void configureContentNegotiation(ContentNegotiationConfigurer configurer) {
		configurer.favorPathExtension(true)
			.useJaf(false)
			.ignoreAcceptHeader(true)
			.mediaType("html", MediaType.TEXT_HTML)
			.mediaType("json", MediaType.APPLICATION_JSON)
			.defaultContentType(MediaType.TEXT_HTML);
	}

}
