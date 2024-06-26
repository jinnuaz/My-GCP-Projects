"""
-   The Pub/Sub service allows applications to exchange messages reliably, quickly, and asynchronously.
-   To accomplish this, a data producer publishes messages to a Cloud Pub/Sub topic.
-   A subscriber client then creates a subscription to that topic and consumes messages from the subscription.
-   Cloud Pub/Sub persists messages that could not be delivered reliably for up to seven days

"""

"You can list the active account name with this command:"
gcloud auth list
"You can list the project ID with this command:"
gcloud config list project
