gcloud config set project ${PROJECT_ID}
gcloud config set auth/disable_credentials true
gcloud config set api_endpoint_overrides/spanner http://spanner.localhost:9020/

gcloud spanner instances create ${SPANNER_INSTANCE} \
       --config=emulator-config --description="Emulated Test Instance" --nodes=1

gcloud spanner databases create ${SPANNER_DATABASE} --instance ${SPANNER_INSTANCE}
