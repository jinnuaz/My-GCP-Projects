bq --location=US mk -d \
    --description "This is my dataset." \
    soccar

bq --location=US mk -d --description "This is my dataset." mydataset

bq mk \
 --table \
 --expiration 3600 \
 --description "This is my table" \
 --label organization:development \
 mydataset.mytable \
 /tmp/myschema.json