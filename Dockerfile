FROM rbwsam/steamcmd:latest
RUN ./steamcmd.sh +login anonymous +force_install_dir ../dods +app_update 232290 validate +quit
WORKDIR /opt/dods
RUN echo "rcon_password \"password\"" > dod/cfg/server.cfg
ENTRYPOINT ["./srcds_run", "-game", "dod"] 
