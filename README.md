# Cleanup scripts for container hosts
This repos primary purpose is to cleanup left over data on cron jobs or manually run.

# Supported Environments

| CNCF Platform |
| ------------- |
| Docker        |
| K3s           |
| RKE 1         |
| RKE 2         |
| Rancher       |


# Scripts
Below is a copy paste for `Ubuntu 18+` environments to run the script over the internet.

## Rancher Node Cleanup Script
```bash
wget -O - https://raw.githubusercontent.com/txj-xyz/cleanup-cncf/master/scripts/kubernetes-rke.sh | bash
```