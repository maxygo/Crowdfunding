package com.crowd.config;


import com.crowd.config.filter.AuthenticationSuccessFilter;
import com.crowd.service.UserDetailServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.ProviderManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

import java.util.ArrayList;
import java.util.List;

@Configuration
@EnableWebMvcSecurity
@EnableGlobalMethodSecurity(securedEnabled = true, proxyTargetClass = true, prePostEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {


    @Autowired
    private UserDetailServiceImpl userDetailService;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf()
                .disable()
                .authorizeRequests()
                .antMatchers("/resources/**").permitAll()
                .antMatchers("/register").permitAll()
                .antMatchers("/login").permitAll()

                .and();

        http.formLogin()
                .loginPage("/login")
                .loginProcessingUrl("/j_spring_security_check")
                .successHandler(getAuthenticationSuccess())
                .failureUrl("/login?error=accessDenied")
                .usernameParameter("j_username")
                .passwordParameter("j_password")
                .permitAll()
                .and()
                .authorizeRequests()
                .antMatchers("/**").authenticated()
                .anyRequest().authenticated()
                .and();
        http.logout()
                .logoutSuccessUrl("/")
                .logoutUrl("/logout")
                .permitAll();

        http.headers().xssProtection();
    }


    @Bean
    public ShaPasswordEncoder getShaPasswordEncoder() {
        return new ShaPasswordEncoder(256);
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/resources/**");
    }

    @Bean
    public DaoAuthenticationProvider getDaoAuthenticationProvider() {
        DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
        provider.setUserDetailsService(userDetailService);
        provider.setPasswordEncoder(getShaPasswordEncoder());

        return provider;
    }

    @Bean
    public ProviderManager getProviderManager() {
        List<AuthenticationProvider> providers = new ArrayList<AuthenticationProvider>();
        providers.add(getDaoAuthenticationProvider());
        return new ProviderManager(providers);
    }

    @Bean
    public SavedRequestAwareAuthenticationSuccessHandler getAuthenticationSuccess() {
        AuthenticationSuccessFilter authenticationSuccess = new AuthenticationSuccessFilter();
        authenticationSuccess.setDefaultTargetUrl("/");
        return authenticationSuccess;
    }
}
