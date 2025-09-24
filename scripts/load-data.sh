#!/bin/sh

echo "Load structured data set..."
tg-load-structured-data --collection setec_balance_sheets \
  -f financial-analyst \
  --schema-name balance_sheets \
  --descriptor ./EXPECTED-DESCRIPTORS/balance-sheets-descriptor.json \
  --load --input ./datasets/setec-balance-sheets.xml

echo "Loading Company Knowledge Graph data..."
tg-load-knowledge -i urn:doc:setec-company \
  -f financial-analyst \
  --collection setec_company \
  ./datasets/setec.ttl
