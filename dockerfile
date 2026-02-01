# Stage 1 Building Image
FROM maven:4.0.0-rc-5-eclipse-temurin-21-alpine AS builder
RUN adduser -D app_builder
RUN mkdir -p /app && chown app_builder:app_builder /app
WORKDIR /app
USER app_builder
COPY --chown=app_builder:app_builder . .
RUN mvn clean package -X -DskipTests=true

#Stage 2 Running Image
FROM eclipse-temurin:21.0.9_10-jre-ubi10-minimal AS runner
RUN useradd -m app_runner
ENV SPRING_PROFILES_ACTIVE=stg
RUN mkdir -p /target && chown app_runner:app_runner /target
WORKDIR target
USER app_runner
COPY --from=builder app/target/*.jar app.jar
EXPOSE 8001
ENTRYPOINT ["java","-jar","app.jar"]


