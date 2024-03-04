
Elastic Kubernetes-AWS within existing VPC network and Subnets

The main functionality of the code are as follows:

1. Spins up a EKS cluster at AWS.
2. Parameters such as existing VPC, and two subnets in two AZ'subnets.
3. Creates a fresh SG and the rules can be moderated in the Kubernetes.tf.
4. Two nodes, on-demand scaling and the instance type can be moderated.
5. The tf modules uses a SSO for the sign-in. Therefore, the provider block may be moderated based on "AWS Configure".
6. The code also creates a fresh .pem for node authentication.

To run:

1. Modify the variables at variables.tf 
2. Replace the SubnetID's and VPC
3. tf init
4. tf plan
5. tf apply
6. tf destroy


Install ArgoCD
1. aws eks update-kubeconfig --region eu-west-1 --name EKSManish-ArgoCD-Cluster --profile thesis
2. kubectl create namespace argocd
3. kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

To expose it to a LB:
1. kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'
2. export ARGOCD_SERVER=`kubectl get svc argocd-server -n argocd -o json | jq --raw-output '.status.loadBalancer.ingress[0].hostname'`

To retrieve password:
1. argocd admin initial-password -n argocd

ArgoCD local - port forwarding
1. kubectl create namespace argocd
2. kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
3. argocd admin initial-password -n argocd or kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
4. kubectl port-forward svc/argocd-server -n argocd 8080:443

login to ArgoCD via CLI locally
1. export ARGO_PWD=`kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d`
2. export ARGOCD_SERVER=`kubectl get svc argocd-server -n argocd -o json | jq --raw-output '.status.loadBalancer.ingress[0].hostname'`
3. argocd login $ARGOCD_SERVER --username admin --password <password> --insecure 


To reset password:
#bcrypt(password)=$2a$10$rRyBsGSHK6.uc8fntPwVIuLVHgsAhAX7TcdrqW/RADU0uh7CaChLa
kubectl -n argocd patch secret argocd-secret \
  -p '{"stringData": {
    "admin.password": "$2a$10$rRyBsGSHK6.uc8fntPwVIuLVHgsAhAX7TcdrqW/RADU0uh7CaChLa",
    "admin.passwordMtime": "'$(date +%FT%T%Z)'"
  }}'
K