# cmd /c ""C:\Program Files\Git\bin\sh.exe" --login -i -- "E:\BackupAtivosDeRedeRc\windows.sh"
find .git/ -name "desktop.ini" | xargs rm -rf
cd /e/BackupAtivosDeRedeRc && git pull && git add . && git commit -m "Versionando" && git push origin master
