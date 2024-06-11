docker build -t serv_portfo C:\\Users\\asusr\\Documents\\SAE203\\Portfolio
docker run --name Portfolio_SAUBIN -p 82:80 -tid serv_portfo7
start http://localhost:82
