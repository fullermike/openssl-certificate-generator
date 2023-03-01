# Convert a PEM certificate file and a private key to PKCS#12 (.pfx .p12)
openssl pkcs12 -export -inkey example.key -in example.crt -certfile example.crt -out example.pfx
