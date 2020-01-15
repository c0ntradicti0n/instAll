make_env(){
  cd $1 
  python3 -m venv venv
  pip install -r requirements.txt
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
git clone https://github.com/c0ntradicti0n/allennlp_vs_ampligraph.git
make_env allennlp_vs_ampligraph

git clone https://github.com/c0ntradicti0n/view_control_web.git
make_mvn(view_control_web)
git clone https://github.com/c0ntradicti0n/hal.git
make_mvn(hal)

wget http://apache.lauf-forum.at/tomcat/tomcat-9/v9.0.30/bin/apache-tomcat-9.0.30.tar.gz
tar -xzvf apache-tomcat-9.0.30.tar.gz





