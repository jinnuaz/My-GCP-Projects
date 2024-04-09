bq --location=US mk -d \
    --description "This is my dataset." \
    soccar

bq --location=US mk -d --description "This is my dataset." mydataset
bq mk --table mydataset.mytable /tmp/myschema.json