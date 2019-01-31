/home -rw,nfsvers=3,hard,intr,bg,nosuid,nodev,timeo=15,retrans=5 {{ services_ip }}:/data/home
/sw -rw,nfsvers=3,hard,intr,bg,nosuid,nodev,timeo=15,retrans=5 {{ services_ip }}:/data/sw
/mnt/galaxy -rw,nfsvers=3,hard,intr,bg,nosuid,nodev,timeo=15,retrans=5 {{ services_ip }}:/mnt/galaxy
/mnt/galaxyIndices -rw,nfsvers=3,hard,intr,bg,nosuid,nodev,timeo=15,retrans=5 {{ services_ip }}:/mnt/galaxyIndices
