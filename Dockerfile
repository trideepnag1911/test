FROM openjdk:8-jre-alpine
WORKDIR /app
COPY target/original-gs-maven-0.1.0.jar /app
CMD ["java -jar original-gs-maven-0.1.0.jar"] 
