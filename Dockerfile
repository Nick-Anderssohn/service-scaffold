FROM openjdk:15-jdk-alpine3.12 as builder

WORKDIR /build

COPY . .

RUN if [[ -d "./target" ]]; then rm -rf ./target; fi

RUN ./mvnw package

FROM openjdk:15-jdk-alpine3.12

RUN apk add --no-cache tini

COPY --from=builder /build/target/service.jar .

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["java", "-jar", "service.jar"]