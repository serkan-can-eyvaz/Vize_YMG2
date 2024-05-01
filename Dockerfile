FROM openjdk:21
ADD target/YMG_Proje-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]