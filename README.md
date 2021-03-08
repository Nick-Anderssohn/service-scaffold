# Spring boot service starter project
Starter code for a spring boot service. This adds docker, some tweaks to the pom.xml,
and some example code  on top of a project originally generated using
[spring initializr](https://start.spring.io/).

## Build/Run with docker
```
docker build -t service . && docker run --rm -itp "8080:8080" service
```

## Build/Run without docker
Note: use `mvnw.cmd` instead of `mvnw` if you are on windows.
```
./mvnw spring-boot:run
```

## Sources
`mvnw`, `mvnw.cmd`, and everything in the `.mvn` folder were generated
using [spring initializr](https://start.spring.io/).