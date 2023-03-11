apt update && apt upgrade -y && apt dist-upgrade -y
apt install -y apt-transport-https ca-certificates curl software-properties-common gnupg2 net-tools
hostnamectl set-hostname $(curl -s http://169.254.169.254/latest/meta-data/local-hostname)
apt install -y docker.io
cat << EOF > /etc/docker/daemon.json
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF

systemctl stop docker
systemctl start docker
systemctl enable docker
cat <<EOF > /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
EOF

sysctl --system
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
apt update
apt install kubelet="1.22.17-00" 
apt install kubeadm="1.22.17-00"
apt install kubectl="1.22.17-00"
cat << EOF > /etc/kubernetes/aws.yaml
---
apiVersion: kubeadm.k8s.io/v1beta3
kind: ClusterConfiguration
kubernetesVersion: v1.22.17
networking:
  serviceSubnet: "10.100.0.0/16"
  podSubnet: "10.244.0.0/16"
apiServer:
  extraArgs:
    cloud-provider: "aws"
controllerManager:
  extraArgs:
    cloud-provider: "aws"
EOF

kubeadm init --config /etc/kubernetes/aws.yaml
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f https://docs.projectcalico.org/manifests/calico-typha.yaml
kubectl get nodes
clear
kubectl get nodes
kubectl get pods -A
kubectl get nodes
kubectl pods -A
kubectl get pods -A
kubectl get pods -A -owide
kubectl get pods -n kube-system
kubectl get pods -n kube-system -owide
kubectl get namespace
kubectl get ns
kubectl get pods -A
kubectl get nodes
docker ps
vi tomcat.yaml
vi tomcat.yaml 
kubectl create -f tomcat.yaml 
vi tomcat.yaml 
kubectl create -f tomcat.yaml 
vi tomcat.yaml 
kubectl create -f tomcat.yaml 
vi tomcat.yaml 
kubectl create -f tomcat.yaml 
kubectl get pods -n kube-system -owide
kubectl get pods -owide
vi tomcat.yaml 
kubectl get services
vi tomcat.yaml 
kubectl get pods 
kubectl delete pods tomcat 
kubectl create -f tomcat.yaml 
kubectl get pods
kubectl get pods -owide
corl -v 10.244.107.194:8080
vi tomcat.yaml 
kubectl get pods
vi tomcat.yaml 
clear
ls
vi service.yaml 
mv service.yaml loadBalance.yaml
ls
vi nodeport.yaml
kubectl get pods
kubectl apply -f tomcat.yaml 
kubectl get pods
kubectl apply -f nodeport.yaml 
kubectl get svc
kubectl get pods -owide
ls
cd
clear
ls
vi tomcat.yaml 
vi replicaset.yaml
kubectl apply -f replicaset.yaml 
vi replicaset.yaml 
kubectl apply -f replicaset.yaml 
vi replicaset.yaml 
kubectl apply -f replicaset.yaml 
kubectl get replicaset
kubectl get pods
ls
cp replicaset.yaml deployment.yaml
vi deployment.yaml 
clear
ls
kubectl get pods
kubectl get endpoints
ls
kubetl apply -f LoadBalance.yaml
kubectl apply -f LoadBalance.yaml
ls

vi tomcat.yaml 
vi loadBalance.yaml 
kubetl apply -f LoadBalance.yaml
kubectl apply -f LoadBalance.yaml
kubectl get loadBalance
kubectl get svc
kubectl delete service tomcat-nginx
kubectl apply -f loadBalance.yaml
ls
kubectl apply -f deployment.yaml 
kubelet get svc
kubelet get service
kubectl get pods
kubectle delete pod tomcat-2pbm9
kubectl delete pod tomcat-2pbm9
kubectl get pods
kubectl get nodes
ls
clear
ls
vi replicaset.yaml 
kubectl apply -f replicaset.yaml 
kubectl get pod
kubectl get service
vi replicaset.yaml 

kubectl get pod
kubectl apply -f deployment.yaml 
cat deployment.yaml 
clear
ls
cat deployment.yaml 
kubectl get endpoints
kubectl get pods
kubectl logs tomcat-hw9ct
kubectl logs tomcat-hw9ct -c tomcat nginx
ls
vi loadBalance.yaml 
vi namespace.yaml
kubectl apply -f namespace.yaml 
vi namespace.yaml
kubectl apply -f namespace.yaml 
kubectl get nms
kubectl get namespace
kubectl get pods -n devlopment-nms
vi tomcat.yaml 
vi resource.yaml
vi tomcat.yaml 
kubectl apply -f namespace.yaml 
kubectl get pods
kubectl delete pod --all
kubectl get pods
kubectl delete pod --all
kubectl get pods
kubectl get service
kubectl get replicaset
ls
mv tomcat.yaml pod.yaml
vi pod.yaml 
kubectl apply -f pod.yaml 
kubectl get pods
kubectl get pods -n devlopment-nms
vi pod.yaml 
kubectl describe namespace dev-envi-namespace
kubectl describe namespace devlopment-nms
clear
kubectl describe namespace devlopment-nms
ls
cat resource.yaml 
clear
kubectl describe namespace devlopment-nms
vi resource.yaml 
kubectl apply -f resource.yaml 
kubectl get resourcequota
kubectl get resource
clear
kubectl get resourcec
clear

clear
kubectl get pods -n devlopment-nms
kubectl describe namespace devlopment-nms
cat resource.yaml 
kubectl apply -f resource.yaml 
kubectl describe quota
kubectl describe pod-quota
kubectl get quota
kubectl get quota -n devlopment-nms
kubectl describe pod-quota
clear
ls
vi limitrange.yml
kubectl apply -f limitrange.yml 
vi limitrange.yml
clear
ls
vi ip.sh
vi script.sh
ls
./script.sh
chmod 777 script.sh
./script.sh
vi script.sh
./script.sh
vi script.sh
./script.sh
vi script.sh
./script.sh
vi script.sh
./script.sh
10.0.0.16
vi script.sh
./script.sh
vi script.sh
./script.sh
clear
vi script.sh
./script.sh 
./script.sh
clear
vi script.sh
./script.sh
clear
./script.sh
313213
clear
./script.sh
clear
cat script.sh 
./script.sh
vi pod.yaml 

vi pod.yaml 
kubectl get pods
kubectl delete pods --all
kubectl get pods
vi pod.yaml 
kubectl apply -f pod.yaml 

kubectl get pods -owide

kubectl apply -f pod.yaml 
kubectl get pods -owide
vi pod.yaml 
kubectl explain --recursive pod
vi pod.yaml 
cat pod.yaml 
vi pod.yaml 
clear
cat pod.yaml 
kubectl apply -f pod.yaml 
kubectl get pods -owide
history
kubectl get nodes
history

kubectl describe nodes ip-10-0-0-138.ap-northeast-1.compute.internal -owide
kubectl describe nodes ip-10-0-0-138.ap-northeast-1.compute.internal 
kubectl taint node ip-10-0-0-138.ap-northeast-1.compute.internal mysize-large-
kubectl taint node ip-10-0-0-138.ap-northeast-1.compute.internal mysize=large-
kubectl taint node ip-10-0-0-138.ap-northeast-1.compute.internal mysize=large:NoSchedule
kubectl taint node ip-10-0-0-138.ap-northeast-1.compute.internal mysize=large:NoSchedule-
vi pod.yaml 
clear
kubectl get nodes --show-labels
kubectl get nodes
kubectl label ip-10-0-0-138.ap-northeast-1.compute.internal size=large
kubectl label nodes ip-10-0-0-138.ap-northeast-1.compute.internal size=large
vi pod.yaml 
kubectl label nodes ip-10-0-0-138.ap-northeast-1.compute.internal size=large-
kubectl label node ip-10-0-0-138.ap-northeast-1.compute.internal size=large-
kubectl label node ip-10-0-0-138.ap-northeast-1.compute.internal size-
kubectl label node ip-10-0-0-138.ap-northeast-1.compute.internal size=large-
kubectl label node ip-10-0-0-138.ap-northeast-1.compute.internal size=large -
kubectl label nodes ip-10-0-0-138.ap-northeast-1.compute.internal size=large-
kubectl label nodes ip-10-0-0-138.ap-northeast-1.compute.internal size=-
kubectl label node ip-10-0-0-138.ap-northeast-1.compute.internal rishabh=prajwal
kubectl get nodes
kubectl get nodes -owide
kubectl get nodes --show-labels
vi pod.yaml 
cp pod.yaml nodeselec.yaml
vi nodeselec.yaml 
kubectl get pods
kubectl delete pods --all
clear
cat nodeselec.yaml 
kubectl apply -f nodeselec.yaml 
vi nodeselec.yaml 
kubectl apply -f nodeselec.yaml 
kubectl get pods -owide
vi nodeselec.yaml 
kubectl apply -f nodeselec.yaml 
kubectl get pods -owide
cat nodeselec.yaml 
kubectl get nodes --show-labels
vi nodeselec.yaml 
kubectl label node ip-10-0-0-138.ap-northeast-1.compute.internal rishabh=prajwal-
kubectl label node ip-10-0-0-138.ap-northeast-1.compute.internal rishabh=prajwal -
kubectl label node ip-10-0-0-138.ap-northeast-1.compute.internal rishabh -
kubectl label node ip-10-0-0-138.ap-northeast-1.compute.internal rishabh 
kubectl label node ip-10-0-0-138.ap-northeast-1.compute.internal rishab
kubectl label nodes ip-10-0-0-138.ap-northeast-1.compute.internal rishab
kubectl label nodes ip-10-0-0-138.ap-northeast-1.compute.internal rishab=prajwal
kubectl label nodes ip-10-0-0-138.ap-northeast-1.compute.internal rishab=prajwal-
kubectl delete -f nodeselec.yaml 
kubectl label nodes ip-10-0-0-138.ap-northeast-1.compute.internal rishabh=prajwal-
kubectl label nodes ip-10-0-0-138.ap-northeast-1.compute.internal sixe
kubectl label node ip-10-0-0-138.ap-northeast-1.compute.internal size
kubectl get pods
kubectl delete pods --all
kubectl label nodes ip-10-0-0-138.ap-northeast-1.compute.internal rishabh=prajwal-
kubectl label nodes ip-10-0-0-138.ap-northeast-1.compute.internal rishabh
kubectl label node ip-10-0-0-138.ap-northeast-1.compute.internal rishabh
kubectl get nodes --show-labels
kubectl label --overwrite nodes rishabh-prajwal workload-
kubectl label --overwrite nodes ip-10-0-0-138.ap-northeast-1.compute.internal rishabh-prajwal workload-
kubectl label --overwrite nodes ip-10-0-0-138.ap-northeast-1.compute.internal rishabh-prajwal workload
kubectl label --overwrite nodes ip-10-0-0-138.ap-northeast-1.compute.internal workload-
kubectl label --overwrite nodes ip-10-0-0-138.ap-northeast-1.compute.internal rishabh-
kubectl get nodes --show-labels
kubectl label --overwrite nodes ip-10-0-0-138.ap-northeast-1.compute.internal rishab-
kubectl get nodes --show-labels
history
vi nodeselec.yaml 
ls
cp nodeselec.yaml affinity.yaml
ls
vi affinity.yaml 
kubectl get pods
clear

kubectl get pods --show-labels
kubectl get nodes --show-labels
kubectl label node ip-10-0-0-138.ap-northeast-1.compute.internal size=large
kubectl label node ip-10-0-0-215.ap-northeast-1.compute.internal size=small
kubectl get nodes --show-labels
clear
kubectl apply -f affinity.yaml 
kubectl get pods
kubectl get pods -owide
cat affinity.yaml 
clear
l
ls
l
clear
ls
kubectl get pods
kubectl get pods -n deployment-nms
kubectl get pods -n devlopment-nms
kubectl apply deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods -owide -n devlopment-nms
clear
kubectl get replicaset
kubectl delete replicaset tomcat 
kubectl get replicaset
kubectl delete pods --all
kubectl delete pods -n devlopment-nms --all
kubectl get pods -owide -n devlopment-nms
kubectl get pods
kubectl get pods -n devlopment-nms
kubectl pods delete tomcat-9zz42
kubectl pods delete -n devlopment-nms tomcat-9zz42
kubectl pods delete -n devlopment-nms --all
kubectl delete pods tomcat-9zz42
kubectl delete pods -n devlopment-nms tomcat-9zz42
kubectl get pods -n devlopment-nms
kubectl delete -f deployment.yaml 
kubectl delete -f deployment.yaml -n devlopment-nms
kubectl get pods -n devlopment-nms

kubectl apply -f deployment.yaml 
kubectl get pods -owide -n devlopment-nms
kubectl get pods 
kubectl describe pods 
kubectl describe pods | grep taint
kubectl describe pods | grep Taint

kubectl get nodes
vi deployment.yaml 
clear
kubectl get nodes
kubectl get pods
ls
clear
kubectl get pods
kubectl delete pods --all
kubectl get pods
kubectl get replicaset.yaml 
kubectl get replicaset
kubectl delete replicaset tomcat
kubectl delete pods --all
kubectl get pods
kubectl get pods -n devlopment-nms
vi pod.yaml 
kubectl get nodes -owide
kubectl describe nodes ip-10-0-0-138.ap-northeast-1.compute.internal
kubectl taint ip-10-0-0-138.ap-northeast-1.compute.internal mysize=large:NoSchedule
kubectl apply -f pod.yaml -n devlopment-nms
kubectl get pods -n devlopment-nms
kubectl taint ip-10-0-0-138.ap-northeast-1.compute.internal mysize=large:NoSchedule
kubectl taint node ip-10-0-0-138.ap-northeast-1.compute.internal mysize=large:NoSchedule
kubectl describe nodes ip-10-0-0-138.ap-northeast-1.compute.internal
kubectl get pods -owide
kubectl get pods -owide -n devlopment-nms
kubectl apply -f replicaset.yaml -n devlopment-nms
kubectl get pods -owide -n devlopment-nms
kubectl get nodes
kubectl get pods
kubectl get pods -n devlopment-nms
vi pod.yaml 
kubectl apply -f pod.yaml -n devlopment-nms
kubectl get pods -owide -n devlopment-nms
ls
vi pod.yaml 
ls
mkdir services
mv * services/
mv * /services/
ls
cd /services/
ls
cd
ls
cd ..
ls
mv services /root/
ls
cd
ls
kubectl get pods
kubectl get pods -n devlopment-nms
kubectl delete pods -n devlopment-nms
kubectl delete pods -n devlopment-nms --all
kubectl get pods -n devlopment-nms
kubectl get replicaset
clear
cd services/
ls
cp pod.yaml ../
cd
ls
vi pod.yaml 
kubectl taint node ip-10-0-0-138.ap-northeast-1.compute.internal mysize=large:NoSchedule-
clear
kubectl get nodes -owide
kubectl taint node ip-10-0-0-138.ap-northeast-1.compute.internal mysize=large:NoSchedule
kubectl describe node ip-10-0-0-138.ap-northeast-1.compute.internal/less
kubectl describe node ip-10-0-0-138.ap-northeast-1.compute.internal|less
clear
ls
vi nodeselec.yaml 
kubectl get nodes
cd services/
ls
clear
kubectl get pods
kubectl exec -it configmap-demo-pod -- bin/sh
ls
cat config.yaml 
vi config.yaml 
vi game.yaml 
kubectl get pods
kubectl pods delete --all
kubectl pod delete --all
kubectl delete pods --all
kubectl get pods
kubectl delete pods --all
kubectl get config
kubectl get configuration
kubectl get svc
kubectl apply -f game.yaml 
kubectl get pods
kubectl exec -it configmap-demo-pod -- bin/sh
ls
kubectl apply -f config.yaml 
kubectl get pods
kubectl exec -it configmap-demo-pod -- bin/sh
kubectl get pods
kubectl describe configmap-demo-pod
kubectl pods describe configmap-demo-pod
kubectl delete pods --all
ls
kubectl get pods
kubectl delete pods --all
kubectl -delete config.yaml 
kubectl delete -f config.yaml 
kubectl delete -f game.yaml 
kubectl get pods
clear
vi jenkins.yaml
kubectl apply -f jenkins.yaml 
ls
kubectl get pods -owide
kubectl get nodes
kubectl get nodes -owide
vi jenkins.yaml 

cat jenkins.yaml 
clear
ls
kubectl get cm
vi config.yaml 
vi game.yaml 
vi config.yaml 
vi secrets.yaml
ls
vi jenkins.yaml 
kubectl getpods
kubectl get pods
kubectl apply -f getpods
kubectl apply -f jenkins.yaml 
kubectl get pods
kubectl get cn
kubectl get configmap
vi jenkins.yaml 
kubectl delete pods --all
kubectl apply -f jenkins.yaml 
kubectl get pods
kubectl apply -f jenkins.yaml 
kubectl get pods
kubectl delete pods --all
kubectl get pods
kubectl apply -f jenkins.yaml 
kubectl get pods
vi jenkins.yaml 
kubectl delete pods --all
kubectl apply -f jenkins.yaml 
kubectl get pods
kubectl get pods -owide
kubectl get pods -oyaml
vi jenkins.yaml 
clear
ls
vi jenkins.yaml 
clear
history
docker login
cat ~/.docker/config.json
kubectl create secret generic regcred     --from-file=.dockerconfigjson=<path/to/.docker/config.json>     --type=kubernetes.io/dockerconfigjson
kubectl create secret generic regcred     --from-file=.dockerconfigjson=/root/.docker/config.json     --type=kubernetes.io/dockerconfigjson
kubectl get secret regcred --output=yaml
kubectl get secret regcred --output="jsonpath={.data.\.dockerconfigjson}" | base64 --decode
kubectl create secret docker-registry regcred --docker-server=<https://index.docker.io/v1/ --docker-username=prajwal1327 --docker-password=Prajwal@1
ls
kubectl get secret
kubectl create secret docker-registry regcred --docker-server=<https://index.docker.io/v1/ --docker-username=prajwal1327 --docker-password=Prajwal@1
kubectl get secret
kubectl delete secret regcred
vi secret.yaml
kubectl apply -f secret.yaml
kubectl create secret docker-registry regcred --docker-server=<https://index.docker.io/v1/ --docker-username=prajwal1327 --docker-password=Prajwal@1
kubectl create secret docker-registry secret.yaml --docker-server=<https://index.docker.io/v1/ --docker-username=prajwal1327 --docker-password=Prajwal@1
kubectl create secret docker-registry regcred --docker-server=https://index.docker.io/v1/ --docker-username=prajwal1327 --docker-password=Prajwal@1
kubectl get secret regcred --output=yam
kubectl get secret regcred --output=yaml
kubectl get secret
kubectl get secret myregistrykey --output=yaml
kubectl get secret regcred --output="jsonpath={.data.\.dockerconfigjson}" | base64 --decode
clear
ls
https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/aws/deploy.yaml
get url https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/aws/deploy.yaml
clear
mkdir ingress
cd ingress/
ls
vi ingress-setup.yaml
kubectl get pods
kubectl delete pods --all
kubectl apply -f ingress-setup.yaml 
kubectl get pods
kubectl get pods -n ingress-nginx
kubectl describe pods 
kubectl describe pods -n ingress-nginx
kubectl get pods
kubectl describe pods -n ingress-nginx
kubectl get pods -n ingress-nginx
kubectl get svc
kubectl get svc -n ingress-nginx
kubectl describe svc ingress-nginx-controller -n ingress-nginx
kubectl get all -n ingress-nginx
kubectl get pod -A
kubectl logs ingress-nginx-controller-666f45c794-vb87l -n ingress-nginx
kubectl delete -f ingress-setup.yaml 
kubectl apply -f 
https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/aws/deploy.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/aws/deploy.yaml
kubectl get all -n ingress-nginx
kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/aws/deploy.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/aws/deploy.yaml
kubectl get all -n ingress-nginx
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/aws/deploy.yaml
kubectl get all -n ingress-nginx
ls
kubectl get all -n ingress-nginx
ls
cd ingress/
ls
vi tomcat-ingress
mv tomcat-ingress tomcat-ingress.yaml
kubectl apply -f  tomcat-ingress
kubectl apply -f  tomcat-ingress.yaml 
kubectl get svc
kubectl get svc -n ingress-nginx
ls
vi jenkins.yml
kubectl delete -f  tomcat-ingress.yaml 
kubectl apply -f jenkins.yml 
kubectl get svc 
vi jenkins.yml
kubectl get svc -n ingress-nginx
kubectl delete -f jenkins.yml 
vi jen.yml
kubectl apply -f jen.yml 
kubectl get svc
kubectl get ing
vi tom.yaml
kubectl apply -f tom.yml 
ls
vi tom.yaml 
kubectl apply -f tom.yml
vi tom.yaml 
kubectl apply -f tom.yml
vi tom.yaml 
ls
rm -rf jen.yml tom.yaml jenkins.yml 
ls
cd
ls
vi jenkins.yaml 
curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null
sudo apt-get install apt-transport-https --yes
cho "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm
helm --version
helm version
which helm
ls
helm create jenkins
ls
tree jenkins
apt install tree
tree jenkins
cd jenkins/
ls
vi chart.yaml
cd
tree jenkins
helm create tomcat
cd tomcat/
ls
vi chart.yaml
vi Chart.yaml
ls
rm -rf charts/
cd templates/
ls
vi deployment.yaml 
rm -rf *
cd
ls
cd tomcat/
ls
cd
vi jenkins.yaml 
cd services/
ls
vi deployment.yaml 
cd
clear
ls
cd tomcat/
ls
cd templates/
ls
cd ..
cd templates/
vi tomcat.yaml
vi ingress.yaml
kubectl get pods
kubectl get svc
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/aws/deploy.yaml
cd ..
helm install tomcat . tomcat
helm install tomcat .tomcat
helm install tomcat ./tomcat
helm install mytomcat ./tomcat
cd templates/
helm install mytomcat ./tomcat
helm install tomcat ./tomcat
helm install tomcat .
ls
helm install tomcat ./tomcat.yaml
helm install ./tomcat 
helm install tomcat 
cd ..
ls
vi values.yaml
cd 
helm install tomcat ./tomcat.yaml
helm install tomcat ./tomcat
helm create tom
cp tomcat/templates/tomcat.yaml tom/
cp tomcat/templates/ingress.yaml tom/
cd tom
ls
rm -rf charts/
mv ingress.yaml templates/
mv tomcat.yaml templates/
cd templates/
ls
rm -rf NOTES.txt _helpers.tpl hpa.yaml serviceaccount.yaml  tests
ls
rm -rf service.yaml deployment.yaml service.yaml 
vi tomcat.yaml 
mv tomcat.yaml deployment.yaml
ls
cd ..
helm ls
cd templates/
vi deployment.yaml 
cd ..
helm install mytomcat ./tom
helm install mytomcat ./tomcat
helm install mytomcat .
cd templates/
vi deployment.yaml 
vi ingress.yaml 
cd ..
helm install mytomcat .
kubectl get pods
helm uninstall mytomcat .
cd templates/
ls
vi deployment.yaml 
cd ..
helm install mytomcat . -n app-tom
helm install mytomcat . -n app_tom
helm install mytomcat . -n apptom
helm install mytomcat .
helm uninstall mytomcat .
kubectl get pods
helm ls
helm install mytomcat . -n prajwal
helm ls
helm install mytomcat . -n myspace
helm install mytomcat . -n privatetomcat
kubectl get ns
cd templates/
vi ingress.yaml 
helm install mytomcat . -n ingress-nginx
cd ..
helm install mytomcat . -n ingress-nginx
helm install mytomcat .
helm uninstall mytomcat .
helm install mytomcat . 
kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/aws/deploy.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/aws/deploy.yaml
helm install mytomcat .
helm ls
helm unstall mytomcat .
helm uninstall mytomcat .
helm install mytomcat .
helm ls
helm uninstall mytomcat 
helm install mytomcat .

kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/aws/deploy.yaml
helm ls
helm unstall mytomcat .
helm uninstall mytomcat .
helm uninstall mytomcat 
helm ls
clear
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/aws/deploy.yaml
helm install mytomcat .
kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/aws/deploy.yaml
cd ..
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/aws/deploy.yaml
kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/aws/deploy.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/aws/deploy.yaml
kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/aws/deploy.yaml
kubectl get pods
kubectl delete pod privatetomcat
kubectl get pods
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/aws/deploy.yaml
kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/aws/deploy.yaml
clear
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/aws/deploy.yaml
kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/aws/deploy.yaml
kubectl get svc
kubectl delete svc tomcat-cluster
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.5.1/deploy/static/provider/aws/deploy.yaml
cd tom
ls
helm install mytomcat .
helm ls
helm uninstall mytomcat
helm install mytomcat .
cd templates/
ls
vi ingress.yaml 
ls
rm -rf ingress.yaml 
ls
vi deployment.yaml 
cd ..
helm install mytomcat .
helm uninstall mytomcat 
helm install mytomcat .
helm ls
kubectl get pods
kubectl get svc
kubectl get pods -owide
helm uninstall mytomcat 
cd templates/
ls
vi deployment.yaml 
cd ..
helm install mytomcat .
cd templates/
vi deployment.yaml 
cd ..
helm install mytomcat .
helm ls
heml uninstall mytomcat
helm uninstall mytomcat
helm install mytomcat .
cd templates/

helm uninstall mytomcat
helm install mytomcat .
cd ..
helm install mytomcat .
kubectl get svc
helm uninstall mytomcat
kubectl get svc

kubectl get svc
clear
helm ls
helm install mytomcat . -n app_tomcat
clear
helm ls
helm install mytomcat . -n p
clear
helm ls
helm install mytomcat .
kubectl get pods
kubectl get svc
helm uinstall mytomcat .
helm uninstall mytomcat .
helm uninstall mytomcat 
kubectl get svc
kubectl get pods
kubectl get svc
clear
apt update
apt install default-jdk
useradd -m prajwal
passwd prajwal
su - prajwal
vi /etc/groups
vi /etc/group
vi /etc/ssh/sshd_config
systemctl restart ssh
systemctl restart sshd
clear
ls
helm install pack_tomcat
helm create  pack_tomcat
ls
cd pack_tomcat/
ls
rm -rf charts
ls
cd tomcat
cd templates/
ls
rm -rf *
cd ..
vi values.yaml 
cd templates/
vi deployment.yaml
vi clusterip.yaml
vi config.yaml
cd ..
helm install pack_tomcat ./tomcat --dry-run --debug
helm install helm_homcat ./pack_tomcat --dry-run --debug
helm install helm_homcat . --dry-run --debug

ls
vi chart.yaml
vi Chart.yaml
helm install helm_homcat . 
helm install mytomcat . 
helm ls
helm install mytomcat . --dry-run --debug

cd templates/
ls
vi deployment.yaml 
cd ..
vi values.yaml 
helm uninstall mytomcat 
helm install mytomcat . --dry-run --debug
kubectl get pods
helm install mytomcat . 
kubectl get pods
kubectl get pods -owide
cd templates/
ls
vi clusterip.yaml 
cd ..
vi values.yaml 
cd templates/
ls
vi clusterip.yaml 
cd ..
helm uninstall mytomcat
helm install mytomcat . 
kubectl get pods
kubectl get pods -owide
helm install mytomcat . --dry-run --debug
kubectl get svc
kubectl get pods -owide
cd 
helm package ./pack_tomcat
ls
curl -uprajwal.more7730@gmail.com:Prajwal@1 -T pack_tomcat-0.1.0.tgz "https://prajwaal1327.jfrog.io/artifactory/helm/pack_tomcat-0.1.0.tgz"
helm repo add helm https://prajwaal1327.jfrog.io/artifactory/api/helm/helm --username prajwal.more7730@gmail.com --password Prajwal@1
helm search repo ls
helm search repo ls helm/pack_tomcat
ls
helm search repo ls helm/pack_tomcat --versions
helm repo update
helm search repo ls helm/pack_tomcat --versions
clear
helm ls
helm list
helm repo ls
helm push tomcat-0.1.1.tgz https://prajwaal1327.jfrog.io/artifactory/api/helm/helm
helm push tomcat-0.1.1.tgz helm
helm push tomcat-0.1.1.tgz helm/
kubectl get pods
kubectl get all
kubectl get ing
kubectl get pods
history
helm ls
helm repo ls
ls
helm repo add helm https://prajwaal1327.jfrog.io/artifactory/api/helm/helm --username prajwal.more7730@gmail.com --password Prajwal@1
helm ls
helm uninstall mytomcat
helm repo add helm https://prajwaal1327.jfrog.io/artifactory/api/helm/helm --username prajwal.more7730@gmail.com --password Prajwal@1
helm ls
helm install mytomcat
helm install mytomcat ./pack_tomcat
helm repo add helm https://prajwaal1327.jfrog.io/artifactory/api/helm/helm --username prajwal.more7730@gmail.com --password Prajwal@1
history
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
helm version
helm repo add stable https://charts.helm.sh/stable
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm search repo prometheus-community
helm install [RELEASE_NAME] prometheus-community/kube-prometheus-stack
helm install stable prometheus-community/kube-prometheus-stack
kubectl get pods
kubectl get svc
kubectl edit svc stable-kube-prometheus-sta-prometheus
kubectl get pods
kubectl get svc
kubectl get all stable
helm ls
helm get all stable
vi prom_ingress.yaml
kubectl edit svc stable-kube-prometheus-sta-prometheus
cat svc stable-kube-prometheus-sta-prometheus
kubectl edit svc stable-kube-prometheus-sta-prometheus
kubectl edit svc stable-grafana
kubectl get svc
kubectl get ep -A
