#!/bin/bash

API="http://localhost:4741"
URL_PATH="/patients"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
    "patient": {
      "mrn": "'"${MRN}"'",
        "lastName": "'"${LASTNAME}"'",
          "firstName": "'"${FIRSTNAME}"'",
            "test": "'"${TEST}"'",
              "grossDescription": "'"${TEXT}"'",
                "collectionDate": "'"${C_DATE}"'",
                  "serviceDate": "'"${S_DATE}"'",
                    "result": "'"${RESULT}"'"





    }
  }'

echo
