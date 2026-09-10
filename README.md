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
└── cerevi-web
```
run
```
sudo docker compose up -d
```
The ISP terminates TLS and forwards HTTP traffic to port `8080` by default. Set
`HTTP_PORT` to publish a different host port.

if code changes, run with rebuild
```
sudo docker compose up -d --build
```