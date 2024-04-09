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