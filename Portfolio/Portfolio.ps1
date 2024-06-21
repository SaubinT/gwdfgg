docker build -t serv_portfo .
docker run --name Portfolio_SAUBIN -p 82:80 -tid serv_portfo