# Environment of nuxt.js project

```bash
    [+] AUTOR:        Markus Luckey
    [+] CREDITS:      Gerardo Junior
    [+] SITE:         https://kernblick.de
    [+] EMAIL:        luckey@kernblick.de
    [+] GITHUB:       https://github.com/kernblick/nuxtjs-docker.git
```

[![Docker Automated build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/kernblick/nuxtjs)

Docker image to run [nuxt.js](https://nuxtjs.org) projects

> The project must be in the **/src** container folder

## Tags available

- [latest](https://github.com/kernblick/nuxtjs-docker/blob/develop/Dockerfile)
  - [kernblick/nodejs](https://hub.docker.com/r/kernblick/nodejs) 17.1.0
    - [nodejs](https://nodejs.org) 17.1.0
    - [yarn](https://yarnpkg.com/) 1.22.15

## Run

```bash
docker pull kernblick/nuxtjs:stable
docker run kernblick/nuxtjs
```

## How to build

to build the image you need install the [docker engine](https://www.docker.com/) only

> You can try building with different versions of software with docker args, for example: NODE_ENV=1.0.0

```bash
docker build https://github.com/kernblick/nuxtjs-docker.git --tag kernblick/nuxtjs
```

## How to use

### Only with docker command

```bash
# in your project folder
docker run -it --rm -v $(pwd):/src -p 3000:3000 kernblick/nuxtjs:stable [command]

# or docker-compose
docker-compose run nuxt [command]
```

### With [docker-compose](https://docs.docker.com/compose/)

Create the docker-compose.yml file  in your project folder with:

```yml
# (...)

  nuxt:
    image: kernblick/nuxtjs:stable
    restart: on-failure
    volumes:
      - type: bind
        source: ./
        target: /src
    ports:
      - 3000:3000
    #command: dev

# (...)
```

## How to enter image shell

```bash
docker run -it --rm kernblick/nuxtjs sh
# or with docker-compose
docker-compose run nuxt sh
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
