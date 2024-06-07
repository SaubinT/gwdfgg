FROM webdevops/php-nginx
COPY moi.jpg /app/moi.jpg
RUN echo "<p>Coucou c'est NOM</p>" > /app/index.php
RUN echo "<img src=\"moi.jpg\">" >> /app/index.php
EXPOSE 80
