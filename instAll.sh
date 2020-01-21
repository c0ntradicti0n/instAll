# https://wiki.ubuntuusers.de/Java/Installation/OpenJDK/#OpenJDK-8
sudo apt-get install openjdk-8-jre 
sudo apt-get install openjdk-8-jdk openjdk-8-demo openjdk-8-doc openjdk-8-jre-headless openjdk-8-source
echo please switch to version java 8!
sudo update-alternatives --config java 
sudo apt-get install maven
sudo apt-get install pip3
sudo apt-get install screen
sudo apt-get install xorg openbox
sudo apt-get install xvfb




make_env(){
  cd $1 
  python3 -m venv venv
  . venv/bin/activate
  pip3 install --upgrade pip
  pip3 install -r requirements.txt
  deactivate
  cd ..
}

make_screen_session(){
  screen -d -m -S $1 bash -c $2
}

make_mvn(){
  cd $1 
  mvn package
  cd ..
}

git clone https://github.com/c0ntradicti0n/CorpusCook.git
make_env CorpusCook
git clone https://github.com/c0ntradicti0n/CorpusCookApp.git
make_env CorpusCookApp
#git clone https://github.com/c0ntradicti0n/Distinctiopus4.git
git clone https://github.com/c0ntradicti0n/ScienceMap.git
make_env ScienceMap
git clone https://github.com/c0ntradicti0n/pdfetc2txt.git
make_env pdfetc2txt
git clone https://github.com/c0ntradicti0n/KnowledgeScience.git
make_env KnowledgeScience

git clone https://github.com/c0ntradicti0n/view_control_web.git
make_mvn view_control_web 
git clone https://github.com/c0ntradicti0n/hal.git
make_mvn hal 

sed -i 's|<Connector connectionTimeout="20000" port="8080" protocol="HTTP/1.1" redirectPort="8443"/>|<Connector connectionTimeout="20000" port="80" protocol="HTTP/1.1" redirectPort="8443"/>|g' apache-tomcat-9.0.30/conf/server.xml
setup_tomcat.sh

wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x1024_128_2048cnn_1xhighway/elmo_2x1024_128_2048cnn_1xhighway_weights.hdf5 -P ScienceMap/models/
wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x1024_128_2048cnn_1xhighway/elmo_2x1024_128_2048cnn_1xhighway_options.json -P ScienceMap/models/

cd  CorpusCookApp 
pip install -r ../KnowledgeScience/requirements.txt
cd ..

cp ../init_models/model_first.tar.gz  ./CorpusCook/server/models/
cp ../init_models/model_over.tar.gz  ./CorpusCook/server/models/


scp finn@roedel.etrap.eu:init_models/model_first.tar.gz  ./CorpusCook/server/models/
scp finn@roedel.etrap.eu:init_models/model_over.tar.gz  ./CorpusCook/server/models/











