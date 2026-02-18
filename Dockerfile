FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

COPY app/target/be-mbis-0.0.1-SNAPSHOT.jar mbis-be.jar

EXPOSE 8090

ENTRYPOINT ["java", "-jar", "mbis-be.jar"]