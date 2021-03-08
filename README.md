# service-scaffold
Starter code for a spring boot service

## Build/Run with docker
```
docker build -t service .
docker run --rm -itp "8080:8080" service
```

## Build/Run without docker
Note: use `mvnw.cmd` instead of `mvnw` if you are on windows.
```
./mvnw spring-boot:run
```
