FROM eclipse-temurin:17-jdk
WORKDIR /app

COPY . /app
RUN ./mvnw clean install

CMD ["java", "-jar", "target/your-jar-file-name.jar"]
