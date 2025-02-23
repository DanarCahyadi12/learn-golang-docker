

## 💻 Learn Docker with Golang.

I've been learning Docker with Golang.

## 🦴 A bit Explanation.

`docker-compose.yml`: This file actually for development environment. We use `cosmtrek/air` image for live reloading. So, we don't need building our app repeatedly in development environment.

There are 2 stages in `Dockerfile` : 

- `builder`: This stage is for building our app into `.exe` file.  And the binary file will be storing in `app` work directory.
- `prod`: This is our final stage. We use `alpine` for running our application. This stage will be copying binary file from `builder` stage and running the application.









## 👩🏿‍💻 Tech Stack.
- Golang.
- Fiber for HTTP framework.



## 📈 Installation

Clone the project.
```sh
git clone https://github.com/DanarCahyadi12/learn-golang-docker.git
```

Clone the project.
```sh
cd learn-golang-docker
```

Build development environment.
```sh
docker-compose up --build
```
Access this endpoint.
```sh
http://localhost:8080
```

### 💫 Starting with production environment.
Build the image.
```sh
docker build -t <YOUR_DOCKER_USERNAME>/<YOUR_IMAGE_NAME> .
```

Run the container.
```sh
    docker run -d -p 8080:8080 --name <YOUR_CUSTOM_CONTAINER_NAME> <YOUR_DOCKER_USERNAME>/<YOUR_IMAGE_NAME> 

```

Access this endpoint.
```sh
http://localhost:8080
```
