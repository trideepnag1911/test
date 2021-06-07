FROM openjdk:8-jre-alpine
WORKDIR /app
COPY target/gs-maven-0.1.0.jar /app
CMD ["java -jar /app/gs-maven-0.1.0.jar"] 
