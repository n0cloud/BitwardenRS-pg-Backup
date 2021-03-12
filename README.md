# BitwardenRS Backup

Backup bitwarden_rs running postgresql on kubernetes

This is for my personnal use and designed to work with my current setup. Use it at your own risk

You should probably use or fork [ttionya/BitwardenRS-Backup](https://github.com/ttionya/BitwardenRS-Backup) instead of this project.

## Install
### Kubernetes
Create a cronjob in Kubernetes is the recommended option. An example is available [here](k8s/cron-job.yml).
```bash
kubectl create secret generic bitwarden-database-secret --from-literal='url=postgres://dbUser:password@postgres-host:5432/dbName'
kubectl create secret generic bitwarden-backup-config --from-literal=zip_password='PASSWORDHERE' --from-literal=project_number=1234 --from-file=service_account.json 
kubectl apply -f k8s/cron-job.yml
```
### Docker
Use [this docker image](https://hub.docker.com/r/n0cloud/bitwardenrs-pg-backup)
## Credits
This project is based on https://github.com/ttionya/BitwardenRS-Backup
