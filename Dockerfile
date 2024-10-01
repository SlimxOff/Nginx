# Используем базовый образ с OpenJDK 8 на Alpine Linux
FROM openjdk:8-jdk-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем JAR-файл в контейнер
COPY target/your-application.jar app.jar  # Для Maven
# COPY build/libs/your-application.jar app.jar  # Для Gradle

# Открываем порт, на котором работает ваше приложение
EXPOSE 8080

# Запускаем приложение
ENTRYPOINT ["java", "-jar", "app.jar"]