#!/bin/bash

keytool -importkeystore -srckeystore root.keystore.jks \
   -destkeystore newkeystore.p12 -srcstorepass password -srckeypass password \
   -srcstoretype jks -deststorepass password -destkeypass password \
   -srcalias root -destalias root -deststoretype pkcs12


openssl pkcs12 -in newkeystore.p12 -nodes -nocerts -out root.key
