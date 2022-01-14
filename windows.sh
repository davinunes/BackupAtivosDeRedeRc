find .git/ -name "desktop.ini" | xargs rm -rf
cd /e/BackupAtivosDeRedeRc && git pull && git add . && git commit -m "Versionando" && git push origin master
