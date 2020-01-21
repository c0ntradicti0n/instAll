screen -dmS CorpusCook
screen -S  CorpusCook -p 0 -X stuff 'cd CorpusCook && export PYTHONPATH=$PYTHONPATH:. &&. venv/bin/activate && python server/annotation_server.py\n'

screen -dmS AppCorpusCook
screen -S AppCorpusCook -p 0 -X stuff 'cd CorpusCookApp && export PYTHONPATH=$PYTHONPATH:. && . venv/bin/activate && python client_as_micviz.py\n'

screen -dmS Doc
screen -S Doc -p 0 -X stuff 'cd pdfetc2txt && export PYTHONPATH=$PYTHONPATH:. && . venv/bin/activate && python rest_server.py\n'

screen -dmS Science
screen -S Science -p 0 -X stuff 'cd ScienceMap && export PYTHONPATH=$PYTHONPATH:. && . venv/bin/activate && python rest_science_map.py\n'

screen -dmS X
screen -S X -p 0 -X stuff 'sudo startx\n'


apache-tomcat-9.0.30/bin/startup.sh

