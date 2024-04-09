bq --location=US mk -d \
    --description "This is my dataset." \
    soccar

bq --location=US mk -d --default_table_expiration 3600 --description "This is my dataset." mydataset
