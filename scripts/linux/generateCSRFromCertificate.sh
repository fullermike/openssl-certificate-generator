# Generate a certificate signing request (.crt) based on an existing certificate

openssl x509 -x509toreq -in example.crt -out CSR.csr -signkey example.key