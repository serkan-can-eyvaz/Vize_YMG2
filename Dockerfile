FROM openjdk:21
ARG JAR_FILE=target/*.jar
COPY target/YMG_Proje-0.0.1-SNAPSHOT.jar YMG.jar
ENTRYPOINT ["java","-jar","YMG.jar"]