docker build -t serv_portfo .
docker run --name Portfolio_SAUBIN -p 82:80 -tid serv_portfo
docker exec -ti Portfolio_SAUBIN composer.phar -n install
