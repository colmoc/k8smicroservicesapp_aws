#!/usr/bin/env bash

PORT=8000
echo "Port: $PORT"

# POST method predict
curl -d '{  
   "CHAS":{  
      "0":9
   },
   "RM":{  
      "0":9.575
   },
   "TAX":{  
      "0":596.0
   },
   "PTRATIO":{  
      "0":15.3
   },
   "B":{  
      "0":390.9
   },
   "LSTAT":{  
      "0":9.98
   }
}'\
     -H "Content-Type: application/json" \
     -X POST http://a52e3c1086bb94eaca1162e297d81957-1109044162.us-east-2.elb.amazonaws.com:$PORT/predict
