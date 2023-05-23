# Nextcloud won't work after a full Rocky Linux Update

Trying to connect, it refuses the connection and was not working properly.  

I fixed it by first

1. `docker rm portainer`
2. `docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest`
3. Opened Portainer
4. Click restart on NCP
5.  Went into the NCP Admin Interface, forced maintenance mode and then turned it off.

Still not sure what happened.  I think Portainer updated and they changed how the ports works, and then it confliced somehow.  

