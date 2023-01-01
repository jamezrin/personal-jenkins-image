helm upgrade --install \
  --namespace jenkins \
  --create-namespace \
  jenkins jenkins/jenkins \
  -f values.yaml
