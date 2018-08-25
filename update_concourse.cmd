REM my-cheat-sheets update_concourse.cmd
@ECHO OFF
ECHO "START update_concourse.cmd script"
ECHO.
REM Assumed you ran "C:\Program Files (x86)\Concourse\fly-4.0.0.exe" -t ci login -c http://192.168.100.6:8080/
ECHO "Run Fly to update my-cheat-sheets pipeline" 
ECHO.
REM "C:\Program Files (x86)\Concourse\fly-4.0.0.exe" -v
START "concourse" "C:\Program Files (x86)\Concourse\fly-4.0.0.exe" -t ci set-pipeline -p my-cheat-sheets -c ci/pipeline.yml --load-vars-from ci/.credentials.yml
ECHO "END update_concourse.cmd script"