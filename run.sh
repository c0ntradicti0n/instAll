screen -dmS cc
screen -S cc -p 0 -X stuff 'cd CorpusCook && . venv/bin/activate && python server/annotation_server.py\n'


