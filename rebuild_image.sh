docker container rm node-web-app

docker build -t capitalallen/node-web-app .

docker run -p 8080:8080 -d capitalallen/node-web-app