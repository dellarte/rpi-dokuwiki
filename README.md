# rpi-dokuwiki

Docker image containing DOKUWIKI that is compatible to the Raspberry Pi.

### Build the Docker Image
```bash
make build
```

### Run the Docker Image and get version of installed dokuwiki
```bash
make version
```

### Push Docker Image to Docker Hub
* First, use a `docker login` with username, password and email address
* Second, push Docker Image to the official Docker Hub
```bash
make push
```
