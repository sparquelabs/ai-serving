# sets up k3s for using the ECR registry - likely token expires in 12 hours so this might have 
#   to be part of a cron job
set -x
export ECR_TOKEN=`aws ecr get-login-password --region "us-east-1"`
aws ecr get-login-password --region "us-east-1"  | docker login --username AWS --password-stdin ${MY_ECR_REPOSITORY}

# add the ECR repo login
sudo cat<<EOF >> /tmp/registries.yaml
mirrors:
    docker.io:
        endpoint:
            - "https://${MY_ECR_REPOSITORY}:5000"
configs:
    782340374253.dkr.ecr.us-east-1.amazonaws.com:
        auth:
            username: AWS
            password: ${ECR_TOKEN}
EOF

sudo mv /tmp/registries.yaml /etc/rancher/k3s/registries.yaml

# reload k3s
sudo systemctl force-reload k3s

# verify entry [plugins."io.containerd.grpc.v1.cri".registry.configs."782340374253.dkr.ecr.us-east-1.amazonaws.com".auth]
# if it contains the username and password
sudo cat /var/lib/rancher/k3s/agent/etc/containerd/config.toml
