**W.I.P.**

A iojs.js Docker image for development based on the official node docker image. Uses forever to automatically restart node when new files are added or existing files are changed in the mounted volume.

Please note: This image should not be used in production environments!

# Build

## Clone the Repository
## Move in the Directory
## Run the Build Command

```
docker build -t iojs-development .
```


# Run

```
docker run -it -d -p 10000:3000 -v $HOME/Code/docker/testnode/:/src/ --name my-iojs-app iojs-development

```

## Install NPM Packages
Browse to your mounted volume which includes a _package.json_ file and run the following command to install all dependencies.

```
docker exec -it my-node-app npm install /src
```

# Contribute
As this image is still a work in progress, feel free to contribute :)

# ToDo
- Try to make the forever command dynamically on build so "server.js" can be defined and changed to "app.js" or "index.js"
- Do we need to EXPOSE the port?
