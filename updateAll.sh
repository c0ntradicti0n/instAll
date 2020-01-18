update(){
  cd $1 
  git pull
  cd ..
}

update_mvn(){
  cd $1 
  git pull  | grep -q 'Already up to date.' &&  mvn package
  cd ..
}
 
update instAll

update CorpusCook

update CorpusCookApp


update ScienceMap

update pdfetc2txt

update KnowledgeScience


update_mvn view_control_web 

update_mvn hal 

cp view_control_web/target/CCpy4j-0.0.0.war apache-tomcat-9.0.30/webapps/







