# instAll

Ubuntu 18.04
Python 3.6

``` 
sudo apt-get install python3-venv
sudo apt-get install maven
git clone https://github.com/c0ntradicti0n/instAll.git
. instAll/instAll.sh 2>&1 | tee installing.txt
```

# Using SSL
## Getting Trusted Certificate
If doing an enterprisething, you will be going with this on a browser warning trouble!!! 
If you don't want start with this directly:

https://cheapsslsecurity.com/blog/self-signed-ssl-versus-trusted-ca-signed-ssl-certificate/

## Getting and configuring self-signed certificate (for development... with ssl)

* make certificate (keytool is in ubuntu available, if not ubuntu, in $java_home/bin (?)):
```
   76  keytool  -genkey -alias tomcat -keyalg RSA
   81  keytool -list -keystore ~/.keystore
```

* exchange server.xml connector
* change to port 80!

``` 
sed -i 's|<Connector connectionTimeout="20000" port="8080" protocol="HTTP/1.1" 
redirectPort="8443"/>|<Connector connectionTimeout="20000" port="80" protocol="HTTP/1.1" redirectPort="8443"/>|g' apache
```

* make certificate and .keystore 
* look at the javaesque environment variables in the sample server.xml


