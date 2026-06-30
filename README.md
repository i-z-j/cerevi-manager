## Cerevi Manager
Manages metadata and deployment

#### Metadata
```
cd metadata
sudo DRY_RUN=1 ./sync.sh . /nsgm_njx_hdd/cerevi
sudo ./sync.sh . /nsgm_njx_hdd/cerevi
```

#### Deployment
With directory structure
```
/home/ubuntu/app/cerevi
├── cerevi-dc-helper
├── cerevi-manager
├── cerevi-server
├── cerevi-web
├── nginx_certs
└── visor-image-validator
```
run
```
sudo docker compose up -d
```
if code changes, run with rebuild
```
sudo docker compose up -d --build
```