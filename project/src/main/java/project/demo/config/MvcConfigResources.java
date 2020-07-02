package project.demo.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.resource.PathResourceResolver;

@Configuration
public class MvcConfigResources extends WebMvcConfigurerAdapter {

    @Value("${file.path}")
    private  String path;

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry
                .addResourceHandler("/images/**")
                .addResourceLocations("file:"+ path)
                .setCachePeriod(Integer.MAX_VALUE);
        super.addResourceHandlers(registry);

        registry.
                addResourceHandler("/src/main/webapp/resources/css/**")
                .addResourceLocations("/resources/css/");
    }

}
