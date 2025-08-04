FROM eclipse-temurin:17-jdk
WORKDIR /app

COPY . /app

# Add this line to give execute permission to mvnw
RUN chmod +x ./mvnw

RUN ./mvnw clean install

CMD ["java", "-jar", "target/your-jar-file-name.jar"]
