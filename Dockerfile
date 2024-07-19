FROM openjdk:17-jdk
ARG JAR_FILE=build/libs/jenkins-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} jenkins-springboot.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/jenkins-springboot.jar"]