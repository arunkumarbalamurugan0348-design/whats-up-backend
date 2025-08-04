FROM eclipse-temurin:17-jdk

# Install Maven
RUN apt-get update && apt-get install -y maven

WORKDIR /app

COPY . /app

RUN mvn clean install

CMD ["java", "-jar", "target/your-jar-file-name.jar"]
