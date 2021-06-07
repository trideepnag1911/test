FROM maven:3.5-jdk-8-alpine
WORKDIR /app
COPY initial/ /app/
RUN mvn install

FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=0 /app/target/HelloWorld.jar /app
CMD ["java -jar HelloWorld.jar"] 
