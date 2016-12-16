terraform remote config \
    -backend=s3 \
    -backend-config="bucket=blurredimages.terraform.vpc.dev.state" \
    -backend-config="key=global/s3/terraform.tfstate" \
    -backend-config="region=us-east-1" \
    -backend-config="encrypt=true"
