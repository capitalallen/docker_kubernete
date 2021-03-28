docker container rm node-web-app

docker build -t capitalallen/node-web-app .

docker run -p 5000:5000 -d capitalallen/node-web-app