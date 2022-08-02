FROM adoptopenjdk/openjdk11
CMD ["./gradlew", "clean", "package"]
ARG JAR_FILE_PATH=build/libs/*.jar
COPY ${JAR_FILE_PATH} app.jar
ENTRYPOINT ["java", "-jar", "app.jar", "--server.port=${SERVER_PORT}"]