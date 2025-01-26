# Basis-Image mit Nginx verwenden
FROM nginx:alpine

# Standard-Inhalte von Nginx löschen
RUN rm -rf /usr/share/nginx/html/*

# Eigene Inhalte kopieren
COPY index.html /usr/share/nginx/html/
COPY css/style.css /usr/share/nginx/html/
COPY img/ /usr/share/nginx/html/imgs/

# Port 80 freigeben
EXPOSE 80
