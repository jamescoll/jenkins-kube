FROM maven:3.8.1-jdk-11
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN mvn clean install
EXPOSE 8080
CMD ["java", "-jar", "target/template-0.0.1-SNAPSHOT.jar"]
