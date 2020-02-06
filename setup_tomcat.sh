wget http://apache.lauf-forum.at/tomcat/tomcat-9/v9.0.30/bin/apache-tomcat-9.0.30.tar.gz
tar -xzvf apache-tomcat-9.0.30.tar.gz
cp view_control_web/target/CCpy4j-0.0.0.war apache-tomcat-9.0.30/webapps/

cd $JAVA_HOME/bin
sudo keytool -genkey -alias cow -keypass cow -keystore cow.bin -storepass cow


echo put '	<Connector port="8443"
	maxThreads="150" minSpareThreads="25" maxSpareThreads="75"
	enableLookups="true" disableUploadTimeout="true" 
	acceptCount="100" debug="0" 
        scheme="https" secure="true"
	clientAuth="false" sslProtocol="TLS"
	keystoreFile="../webapps/cow.bin"
	keystorePass="cow" />' into apache-tomcat-9.0.30/conf/server.xml
