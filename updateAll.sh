update(){
  cd $1 
  git pull
  cd ..
}

update_mvn(){
  cd $1 
  git pull  
  mvn package
  cd ..
}
 
update instAll

update CorpusCook

update CorpusCookApp


update ScienceMap

update pdfetc2txt

update KnowledgeScience


update_mvn view_control_web 
cp view_control_web/app.config ./
cp view_control_web/target/CCpy4j-0.0.0.war apache-tomcat-9.0.30/webapps/

update_mvn hal 









