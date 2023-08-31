# Sample AI Deployment 
https://levelup.gitconnected.com/mlops-mastering-machine-learning-deployment-an-intro-to-docker-kubernetes-helm-and-modern-web-b14dd140a9bf

Build docker 
```
docker build -t ml-python-image .
```
Apply deployment:
```
kubectl apply -f deployment.yaml
```
Expose model to access from outside
```
kubectl expose deployment ml-model-deployment --type=LoadBalancer --port=2246 --target-port=5000
```

