FROM eclipse-temurin:17-jdk

# Install Maven
RUN apt-get update && apt-get install -y maven

WORKDIR /app

COPY . /app

# Skip tests when building
RUN mvn clean install -DskipTests

# Replace with your actual jar file name inside target/
CMD ["java", "-jar", "target/whats-up-api-springboot-0.0.1-SNAPSHOT.jar"]
