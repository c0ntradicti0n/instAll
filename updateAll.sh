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
echo copying config
cp view_control_web/app.config ./
echo copying .war-file
cp view_control_web/target/corpuscow-1.war apache-tomcat-9.0.30/webapps/corpuscow.war

update_mvn hal 









