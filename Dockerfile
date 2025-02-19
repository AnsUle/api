FROM openjdk:21

# Modification des variables d'environnement de l'application
# pour fonctionner au sein du conteneur Docker
#ENV SPRING.DATASOURCE.URL=jdbc:mysql://mysql:3306/springboot
#ENV SPRING.JPA.PROPERTIES.HIBERNATE.DIALECT=org.hibernate.dialect.MySQL8Dialect
#ENV spring.datasource.username=root
#ENV spring.datasource.password=root

#Exposer le port 9000
EXPOSE 9000

#Repertoire de travail dans le conteneur pour stoker le jar
WORKDIR /app

#Copie du ficH JAR recuperer de l'artefact de votre projet dans le conteneur
COPY API-0.0.1-SNAPSHOT.jar /app/API-0.0.1-SNAPSHOT.jar

# commande pour executer l'application API : java -jar API-0.0.1-SNAPSHOT.jar
CMD ["java", "-jar", "API-0.0.1-SNAPSHOT.jar"]