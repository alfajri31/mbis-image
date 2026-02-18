FROM maven:3.9.9-eclipse-temurin-21 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

COPY --from=builder /app/target/be-mbis-0.0.1-SNAPSHOT.jar mbis-be.jar

EXPOSE 8090

ENTRYPOINT ["java", "-jar", "mbis-be.jar"]
