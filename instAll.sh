make_env(){
  cd $1 
  python3 -m venv venv
  . venv/bin/activate
  pip install -r requirements.txt
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

git clone --mirror  git@github.com/c0ntradicti0n/CorpusCook.git
make_env CorpusCook
git clone --mirror  https://github.com/c0ntradicti0n/CorpusCookApp.git
make_env CorpusCookApp
#git clone https://github.com/c0ntradicti0n/Distinctiopus4.git
git clone --mirror  https://github.com/c0ntradicti0n/ScienceMap.git
make_env ScienceMap
git clone --mirror  https://github.com/c0ntradicti0n/allennlp_vs_ampligraph.git
make_env allennlp_vs_ampligraph

git clone --mirror  https://github.com/c0ntradicti0n/view_control_web.git
make_mvn view_control_web 
git clone  --mirror https://github.com/c0ntradicti0n/hal.git
make_mvn hal 


wget https://repo1.maven.org/maven2/com/madgag/bfg/1.9.0/bfg-1.9.0.jar





