eksctl create cluster --name=eksdemo \
                      --region=us-east-1 \
                      --zones=us-east-1a,us-east-1b \
                      --without-nodegroup

eksctl utils associate-iam-oidc-provider \
    --region=us-east-1 \
    --cluster eksdemo \
    --approve

#eksctl create nodegroup --cluster=eksdemo \
#                       --region=us-east-1 \
#                       --name=eksdemo-ng-public \
#                       --node-type=t3.medium \
#                       --nodes=2 \
#                       --nodes-min=2 \
#                       --nodes-max=4 \
#                       --node-volume-size=20 \
#                       --ssh-access \
#                       --ssh-public-key=kube-demo \
#                       --managed \
#                       --asg-access \
#                       --external-dns-access \
#                       --full-ecr-access \
#                       --appmesh-access \
#                       --alb-ingress-access

eksctl create nodegroup --cluster=eksdemo \
                        --region=us-east-1 \
                        --name=eksdemo1-ng-private \
                        --node-type=t3.medium \
                        --nodes=2 \
                        --nodes-min=2 \
                        --nodes-max=4 \
                        --node-volume-size=20 \
                        --ssh-access \
                        --ssh-public-key=kube-demo \
                        --managed \
                        --asg-access \
                        --external-dns-access \
                        --full-ecr-access \
                        --appmesh-access \
                        --alb-ingress-access \
                        --node-private-networking
