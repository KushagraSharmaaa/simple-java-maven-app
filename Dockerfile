# Dockerfile (at repo root)
FROM eclipse-temurin:21-jre
WORKDIR /app

# Copy the jar produced by 'mvn package'
# If your artifact name differs, we’ll adjust it below
COPY target/*.jar app.jar

# Run
ENTRYPOINT ["java","-jar","/app/app.jar"]
