#!/bin/bash
 #{"user":{"_id":"5d63adfbec19073c458815f5","updatedAt":"2019-08-26T15:07:06.281Z","createdAt":"2019-08-26T10:01:31.067Z","email":"a@a","__v":0,"token":"aea2f79085973d8a33c98ec17dd4838a"}}


API="http://localhost:4741"
URL_PATH="/patients"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "patient": {
        "MRN": "'"${MRN}"'",
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
