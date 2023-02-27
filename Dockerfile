FROM maven:3.8.7-openjdk-18 AS build  
COPY src /usr/src/myapp/src  
COPY pom.xml /usr/src/myapp  
RUN mvn -f /usr/src/myapp/pom.xml clean install

FROM openjdk:18
COPY --from=build /usr/src/myapp/target/mydemo-0.0.1-SNAPSHOT.jar /usr/myapp/mydemo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/usr/myapp/mydemo-0.0.1-SNAPSHOT.jar"]  