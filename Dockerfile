FROM openjdk:21

#Exposer le port 9000
EXPOSE 9000

#Repertoire de travail dans le conteneur pour stoker le jar
WORKDIR /app

#Copie du fichier JAR recuperer de l'artefact de votre projet dans le conteneur
COPY API-0.0.1-SNAPSHOT.jar /app/API-0.0.1-SNAPSHOT.jar