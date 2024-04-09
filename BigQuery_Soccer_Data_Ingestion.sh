bq --location=US mk -d \
    --description "This is my dataset." \
    soccar

bq mk --table soccar.competitions spls/bq-soccer-analytics/competitions.json
