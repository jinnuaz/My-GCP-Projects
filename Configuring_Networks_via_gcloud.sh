# (Optional) You can list the active account name with this command:
#gcloud auth list

#You can list the project ID with this command:
#gcloud config list

# Instrall pinf to use later in this lab
#sudo apt install iputils-ping


# Creating a custom VPC labnet
gcloud compute networks create labnet --subnet-mode=custom

# Create a subnet for labnet
gcloud compute networks subnets create labnet-sub --network labnet --region "us-west1" --range 10.0.0.0/28

#List the network in the project
gcloud compute networks list
