server:
  port: 3101


spring: 
  application: 
    name: gateway-service
  cloud:
    gateway:
      routes:
          #路由的ID 唯一即可
        - id: redisserver
          #路由的地址
          uri:  http://localhost:4101/
         #uri:  lb://service-name 
          predicates:
            - Path=/redis/**


eureka:      
  client: 
    serviceUrl:
      defaultZone: http://127.0.0.1:3201/eureka/
      register-with-eureka: false
      fetch-registry: false
