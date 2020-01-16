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

scp finn@roedel.etrap.eu:init_models/model_first.tar.gz  ./CorpusCook/server/models/
scp finn@roedel.etrap.eu:init_models/model_over.tar.gz  ./CorpusCook/server/models/

cp ../init_models/model_first.tar.gz  ./CorpusCook/server/models/
cp ../init_models/model_over.tar.gz  ./CorpusCook/server/models/
setup_tomcat.sh

wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x1024_128_2048cnn_1xhighway/elmo_2x1024_128_2048cnn_1xhighway_weights.hdf5 -P ScienceMap/models/
wget https://s3-us-west-2.amazonaws.com/allennlp/models/elmo/2x1024_128_2048cnn_1xhighway/elmo_2x1024_128_2048cnn_1xhighway_options.json -P ScienceMap/models/




