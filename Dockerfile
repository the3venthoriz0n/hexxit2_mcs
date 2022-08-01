FROM amazoncorretto:latest

ENV DATA_DIR="/serverdata"
ENV SERVER_DIR="${DATA_DIR}/serverfiles"

WORKDIR /serverdata

# adds to the filesystem of the image
ADD .src ${SERVER_DIR}

# adds to the filesystem of the container
#COPY /config/server.properties /tmp/server.properties
#COPY .src /serverdata
#COPY .src ${SERVER_DIR}

CMD echo "Server is starting..." 

#Server Start
ENTRYPOINT ["sh", "LaunchServer.sh"]


# docker images | awk '{print $3}' | xargs -I {} docker rmi {} -f

# docker run -d --name='hexxit2' --net='bridge' -e TZ="America/Los_Angeles" -e HOST_OS="Unraid" -e HOST_HOSTNAME="dbServer" -e HOST_CONTAINERNAME="MinecraftBasicServer" -e 'JAR_NAME'='server' -e 'GAME_V'='latest' -e 'GAME_PARAMS'='' -e 'EXTRA_JVM_PARAMS'='' -e 'XMS_SIZE'='1024' -e 'XMX_SIZE'='1024' -e 'ACCEPT_EULA'='true' -e 'RUNTIME_NAME'='jre17' -e 'UID'='99' -e 'GID'='100' -l net.unraid.docker.managed=dockerman -l net.unraid.docker.webui='http://[IP]:[PORT:8080]/' -l net.unraid.docker.icon='https://raw.githubusercontent.com/ich777/docker-templates/master/ich777/images/mc.png' -p '25566:25565/tcp' -p '25576:25575/tcp' -p '9012:8080/tcp' -v '/mnt/cache/appdata/minecraft':'/serverdata/serverfiles':'rw' --restart=unless-stopped 'hexxit2'
