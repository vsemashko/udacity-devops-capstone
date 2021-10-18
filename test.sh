SERVICE_HOST=$(kubectl describe svc/udacity-devops-capstone-app | grep "LoadBalancer Ingress:" | awk '{print $3;}')
SERVICE_URL="${SERVICE_HOST}:8080"
PRODUCT_VERSION="b5628670-b2a8-4332-8210-18ca9a21ed68"

RESPONSE=$(curl --silent "http://${SERVICE_URL}" | grep $PRODUCT_VERSION)

if [ ! -z "$RESPONSE" ]; then
  echo "test successfully passed"
else
  echo "test failed"
  return 1
fi