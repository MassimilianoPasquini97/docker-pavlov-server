# Pavlov VR Server 
![!GMOD Logo!](https://steamcdn-a.akamaihd.net/steam/apps/555160/capsule_616x353.jpg?t=1574985448)

# Description
This docker image provides a Pavlov VR game Server. It automatically download the latest version at startup. To update the server just restart the container. To start the server run

```bash
docker run -d -p 7:7/udp -p 7000:7000/udp -p 7777:7777/udp -p 7200:7200/udp --name server-pavlov massimilianopasquini/pavlov-server:latest
```

It may take several minutes for the server to start, it depends on the speed of your ISP. Once the container starts, it will download the Pavlov VR game Server.

# Attaching game data directory to the host
If you need to access the Pavlov VR folder you can mount it as a volume, here are the directories you can mount

| Directory                                                  | Description              |
|------------------------------------------------------------|--------------------------|
| /home/pavlov/pavlov-server                                 | Game Server Folder       |
| /home/pavlov/pavlov-server/Pavlov/Saved/Config/LinuxServer | Game.ini settings folder |

Example below

```bash
docker run -d -p 7:7/udp -p 7000:7000/udp -p 7777:7777/udp -p 7200:7200/udp  -v pavlov_server:/home/pavlov/pavlov-server --name server-pavlov massimilianopasquini/pavlov-server:latest 
```

# Docker Compose
To facilitate the start of the containers it is possible to use the docker compose files present in the Example directory.

```bash
sudo docker-compose up -d pavlov-server
```