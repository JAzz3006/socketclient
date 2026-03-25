#базовый образ, содержащий JDK-17
FROM eclipse-temurin:17-jdk-jammy

#Директория приложения внутри контейнера
WORKDIR /app

#Копирование JAR-файла приложения в контейнер
#если его нет, то делаем - Gradle -> Task -> build -> jar и потом еше bootJar
# потом в build/libs и там будет socketclient-0.0.1-SNAPSHOT.jar (без -plain)
#внутри контейнера файл будет называться app.jar
COPY build/libs/socketclient-0.0.1-SNAPSHOT.jar app.jar

#команда для запуска приложения
CMD ["java", "-jar", "app.jar"]

