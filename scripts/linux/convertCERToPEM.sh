# Convert a DER file (.crt .cer .der) to PEM
openssl x509 -inform der -in example.crt -out example.pem
