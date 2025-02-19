FROM openjdk:21

ENV SPRING.DATASOURCE.URL=jdbc:mysql://mysql:3306/springboot
ENV SPRING.JPA.PROPERTIES.HIBERNATE.DIALECT=org.hibernate.dialect.MySQL8Dialect

#Exposer le port 9000
EXPOSE 9000

#Repertoire de travail dans le conteneur pour stoker le jar
WORKDIR /app

#Copie du ficH JAR recuperer de l'artefact de votre projet dans le conteneur
COPY API-0.0.1-SNAPSHOT.jar /app/API-0.0.1-SNAPSHOT.jar

# commande pour executer l'application API : java -jar API-0.0.1-SNAPSHOT.jar
CMD ["java", "-jar", "API-0.0.1-SNAPSHOT.jar"]