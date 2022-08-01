FROM amazoncorretto:latest

WORKDIR /serverdata
ENV DATA_DIR=/serverdata
ENV SERVER_DIR=/serverdata/serverfiles

# ENV LANG=en_US.UTF-8
# ENV LANGUAGE=en_US:en
# ENV LC_ALL=en_US.UTF-8

# ENV RUNTIME_NAME=
# ENV GAME_PARAMS=
# ENV GAME_PORT=25565
# ENV ENABLE_WEBCONSOLE=true
# ENV GAME_V=
# ENV XMX_SIZE=1024
# ENV XMS_SIZE=1024
# ENV EXTRA_JVM_PARAMS=
# ENV ACCEPT_EULA=true
# ENV UMASK=000
# ENV UMASK=000
# ENV UID=99
# ENV GID=100
# ENV USER=minecraft
# ENV DATA_PERM=770

# RUN bin/sh -c mkdir $DATA_DIR && mkdir $SERVER_DIR && useradd -d $DATA_DIR -s /bin/bash $USER && chown -R $USER $DATA_DIR && ulimit -n 2048
COPY .src /serverdata
CMD echo "Server is starting..." 
ENTRYPOINT ["sh", "LaunchServer.sh"]