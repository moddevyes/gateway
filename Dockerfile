FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=build/libs/gateway-0.0.1.jar
ARG JAR_FILE
COPY ${JAR_FILE} gateway-0.0.1.jar
EXPOSE 8000
CMD ["java","-jar","gateway-0.0.1.jar"]
