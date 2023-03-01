# Check an SSL connection. All the certificates (including Intermediates) should be displayed
openssl s_client -connect www.google.com:443
