# Dockerfile for Day of Defeat Source dedicated server

## Example

```bash
# Start a server and run it in the background
docker run -dit --name dods -p 27015:27015 -p 27015:27015/udp rbwsam/dods:latest +hostname SERVER_NAME +map dod_avalanche +maxplayers 10 +rcon_password RCON_PASSWORD

# View the server output
docker logs -f dods

# Attach to the running server console - Detach with key sequence: CTRL-p CTRL-q
docker attach dods

# Run a shell in the server
docker exec -it dods bash

# Stop the server
docker stop dods

# Remove the container
docker rm dods
```

## Run a server on an arbitrary port
You have the server listen on ports other than the default `27015` but make sure that you set the `+port 30000 +rcon_port 30000` arguments to match your public ports.

```bash
docker run -dit --name dods -p 30000:30000 -p 30000:30000/udp rbwsam/dods:latest +port 30000 +rcon_port 30000 +hostname SERVER_NAME +map dod_avalanche +maxplayers 10 +rcon_password RCON_PASSWORD
```
