apiVersion: apps/v1
kind: Deployment
metadata:
  name: manage-a-workforce-design-history
spec:
  replicas: 1
  selector:
    matchLabels:
      app: manage-a-workforce-design-history
  template:
    metadata:
      labels:
        app: manage-a-workforce-design-history
    spec:
      containers:
      - name: nginx
        image: 754256621582.dkr.ecr.eu-west-2.amazonaws.com/${ECR_NAME}:${IMAGE_TAG}
        ports:
        - containerPort: 3000
---
apiVersion: v1
kind: Service
metadata:
  name: design-history-nginx-service
  labels:
    app: design-history-nginx-service
spec:
  ports:
  - port: 3000
    name: http
    targetPort: 3000
  selector:
    app: manage-a-workforce-design-history
---
apiVersion: networking.k8s.io/v1beta1
kind: Ingress
metadata:
  name: design-history-ingress
  annotations:
    kubernetes.io/ingress.class: nginx
    external-dns.alpha.kubernetes.io/set-identifier: design-history-ingress-${KUBE_NAMESPACE}-green
    external-dns.alpha.kubernetes.io/aws-weight: "100"
spec:
  tls:
  - hosts:
    - ${PROTOTYPE_NAME}.apps.live.cloud-platform.service.justice.gov.uk
  rules:
  - host: ${PROTOTYPE_NAME}.apps.live.cloud-platform.service.justice.gov.uk
    http:
      paths:
      - path: /
        backend:
          serviceName: design-history-nginx-service
          servicePort: 3000
