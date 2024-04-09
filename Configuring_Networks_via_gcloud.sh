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

# List the network in the project
gcloud compute networks list

# Use describe to view network details, such as its peering connections and subnets. Replace NETWORK_NAME with the name of your network:
gcloud compute networks describe labnet

# Create the labnet-allow-internal firewall rule:
gcloud compute firewall-rules create labnet-allow-internal --network=labnet --action=ALLOW --rules=icmp,tcp:22 --source-ranges=0.0.0.0/0

# Inspect the firewall rules to see its name, applicable network, and components, including whether the rule is enabled or disabled:
gcloud compute firewall-rules describe labnet-allow-internal


# Creating another custom VPC privatenet
gcloud compute networks create privatenet --subnet-mode=custom

#Create the private-sub subnet:
gcloud compute networks subnets create private-sub --network=privatenet --region=us-west1 --range 10.1.0.0/28

#create the privatenet-deny firewall rule:
gcloud compute firewall-rules create privatenet-deny --network=privatenet --action=DENY --rules=icmp,tcp:22 --source-ranges=0.0.0.0/0

# Create VM instances
# Create two VM instances in the subnets:
# pnet-vm in private-sub
# lnet-vm in labnet-sub

gcloud compute instances create pnet-vm --zone=us-central1-a --machine-type=n1-standard-1 --subnet=private-sub
gcloud compute instances create lnet-vm --zone=us-central1-a --machine-type=n1-standard-1 --subnet=labnet-sub

# Now list all the VM instances (sorted by zone):
gcloud compute instances list --sort-by=us-central1-a