#!/bin/bash
# {"user":{"_id":"5d6457a5722cf42c28a47531","email":"k@k","createdAt":"2019-08-26T22:05:25.541Z","updatedAt":"2019-08-27T10:59:08.715Z","__v":0,"token":"640078dfbe5a42ba6b5acc4bec018bdb"}}
# {"user":{"_id":"5d6536fc4b6bb44d9cd3d073","email":"g@g","createdAt":"2019-08-27T13:58:20.221Z","updatedAt":"2019-08-27T14:16:59.242Z","__v":0,"token":"46b278df927d8c5e4c23e59824470257"}}


API="http://localhost:4741"
URL_PATH="/patients"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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
