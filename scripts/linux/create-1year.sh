# TODO: check for values and pause/ask user 
#       if they want to overwrite files at ../create-output/

# -subj "/C=US/ST=Oregon/L=Portland/O=Company Name/OU=Org/CN=www.example.com"
# TODO: set as variables here if we don't want to prompt/copy/paste

set _cn="localhost"
echo "creating cert for: ${_cn}"

openssl req -x509 -newkey rsa:4096 -sha256 -days 365 -nodes \
  -keyout example.key -out example.crt -subj "/CN=example.com" \
  -addext "subjectAltName=DNS:example.com,DNS:www.example.net,IP:10.0.0.1"

mv example.key ../../output/
mv example.crt ../../output/

# openssl req -x509 -newkey rsa:4096 -keyout ../create-output/new-key.pem -out ../create-output/new-cert.pem -sha256 -days 365 -subj "/CN=${_cn}"


