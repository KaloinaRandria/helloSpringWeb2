#!/bin/bash

# Définir le chemin du JDK (modifier en fonction de votre installation JDK)
# jdk_path="/usr/lib/jvm/java-17-openjdk-amd64"

# Définir les variables
path="/opt/apache-tomcat-10.1.23/webapps"
read -p "Nom du projet: " project
webinf="temp/WEB-INF"
classes="temp/WEB-INF/classes"
lib="temp/WEB-INF/lib"
src="src"
archive="$project.war"
destination="$path/$archive"

# Supprimer et recréer les répertoires
rm -rf temp
mkdir temp
mkdir "$webinf"
mkdir "$classes"
mkdir "$lib"
mkdir tempJava

# Copier web.xml
cp conf/* "$webinf"

# Copier les pages
cp web/* temp/

# Copier lib
cp lib/* "$lib"

# Compiler les fichiers Java
find "$src" -name '*.java' -exec cp {} tempJava/ \;
javac -cp .:"$lib/*" -d "$classes" tempJava/*.java

# Créer le fichier WAR
jar cf "$archive" -C temp/ .

# Déplacer le fichier WAR vers la destination
cp "$archive" "$path"
