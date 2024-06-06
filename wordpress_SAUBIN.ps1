docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce
#réseau pour le dns et la résolution du nom mariadb
docker network create sae23_SAUBIN
#le mariadb avec son volume pour conserver les données
docker run --detach --name mariadb --env MARIADB_USER=SaubinT --env MARIADB_PASSWORD=Secu2MaladeTS --env MARIADB_DATABASE=SAE203 --env MARIADB_ROOT_PASSWORD=root -p 3307:3306 --network sae23_SAUBIN  --volume C:\Users\asusr\Documents\SAE203\badowordpress:/var/lib/mysql mariadb:latest
#mise à jour pour ensuite avoir les paquets du ping et tester si nécessaire
docker exec -t -i Mariadb /bin/bash
#vérifie ce qu'il y a de disponnible en MAJ
docker exec -t mariadb apt update
#fais les MAJ faire attention au - y pour yes
docker exec -t mariadb apt ugrade -y
#instal des packet pour la commande ping
docker exec -t mariadb apt install iputils-ping
docker exec -t mariadb exit
#on quitte le bash puis on crée les containers phpmyadmin et wordpress avec le volume pour conserver les données 
docker run --name phpmyadmin -d --network sae23_SAUBIN -e PMA_HOST=mariadb -p 9000:80 phpmyadmin
docker run --name wordpress -d -e WORDPRESS_DB_HOST=mariadb -e WORDPRESS_DB_USER=SaubinT -e WORDPRESS_DB_PASSWORD=Secu2MaladeTS -e WORDPRESS_DB_NAME=SAE203 -p 80:80 --network sae23_SAUBIN --volume C:\Users\asusr\Documents\SAE203\htmlwordpress:/var/www/html wordpress
start http://127.0.0.1/wp-login.php
start http://127.0.0.1/
start http://localhost:9000