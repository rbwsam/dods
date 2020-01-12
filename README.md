# Dockerfile for Day of Defeat Source dedicated server

## Example

```bash
# Start a server and run it in the background
docker run -dit --name dods -p 27015:27015 -p 27015:27015/udp -p 27020:27020/udp rbwsam/dods:latest +hostname SERVER_NAME +map dod_avalanche +maxplayers 10 +rcon_password RCON_PASSWORD

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
