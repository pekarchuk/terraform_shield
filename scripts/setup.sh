#! /bin/bash

# version check
verlte () {
    [  "$1" = `echo -e "$1\n$2" | sort -V | head -n1` ]
}

# Check for terraform
if ! command -v terraform &> /dev/null
then
    echo "terraform could not be found. Please install terraform first."
    exit
fi

# Write AWS Creds to terraform.tfvars
echo AWS Acess Key: 
read AccessKey
echo AWS Secret Key:
read SecretKey

cat << EOF > .env
export AWS_ACCESS_KEY_ID="$AccessKey"
export AWS_SECRET_ACCESS_KEY="$SecretKey"
EOF

echo Trying to init terraform...
terraform init
