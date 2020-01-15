screen -dmS cc
screen -S cc -p 0 -X stuff 'cd CorpusCook && . venv/bin/activate && python server/annotation_server.py\n'

screen -dmS app
screen -S cc -p 0 -X stuff 'cd CorpusCookApp && . venv/bin/activate && python client_as_micviz.py\n'

screen -dmS app
screen -S doc -p 0 -X stuff 'cd pdfetc2txt && . venv/bin/activate && python rest_server.py\n'

screen -dmS app
screen -S science -p 0 -X stuff 'cd ScienceMap && . venv/bin/activate && python rest_science_map.py\n'

apache-tomcat-9.0.30/bin/startup.sh

