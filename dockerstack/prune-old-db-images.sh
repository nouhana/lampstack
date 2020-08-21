REGISTRY=dockerprivatereg
REPOSITORY=dockerstack_db
KEEP=10
diff <(az acr repository show-tags -n ${REGISTRY} --repository ${REPOSITORY} --orderby time_desc --top ${KEEP} -o tsv) <(az acr repository show-tags -n ${REGISTRY} --repository ${REPOSITORY} --orderby time_desc -o tsv) | awk '{ print $2 }' | xargs -n 1 -I%  az acr repository delete -n ${REGISTRY}  --image ${REPOSITORY}:% --yes
