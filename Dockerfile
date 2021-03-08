FROM openjdk:15-jdk-alpine3.12 as builder

WORKDIR /build

# First download and cache dependencies to make subsequent builds faster.
# Note, if pom.xml, mvnw, or anything in .mvn are edited, dependencies will be
# re-downloaded on the next build.
COPY pom.xml .
COPY mvnw .
COPY .mvn .mvn
RUN ./mvnw dependency:go-offline

# Next, copy the source code and build the service
COPY . .
RUN if [[ -d "./target" ]]; then rm -rf ./target; fi
RUN ./mvnw package

# Finally, create the image with any runtime dependencies that are needed
FROM openjdk:15-jdk-alpine3.12

RUN apk add --no-cache tini

COPY --from=builder /build/target/service.jar .

ENTRYPOINT ["/sbin/tini", "--"]

CMD ["java", "-jar", "service.jar"]