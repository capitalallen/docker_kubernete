### Define Dockerfile 
1. Define from what image we want to build from

```
FROM node:14
```
2. Create a directory to hold the application code inside the image

```
WORKDIR /usr/src/app
```
3. Install your app dependencies using the npm binary
```
COPY package*.json ./

RUN npm install
```
4. To bundle your app's source code inside the Docker image, use the COPY instruction
```
COPY . .
```
5. Your app binds to port 8080 so you'll use the EXPOSE instruction to have it mapped by the docker daemon
```
CMD [ "node", "server.js" ]
```

### Build and Run the image 
- Build image 
```
docker build -t capitalallen/node-web-app .
```
- Run the image
```
docker run -p 8080:8080 -d --name node-web-app capitalallen/node-web-app
```

### Go inside container 
```
docker exec -it <container id> /bin/bash
```

### Docker Commend to rm all images 
https://stackoverflow.com/questions/63074477/unable-to-delete-docker-images