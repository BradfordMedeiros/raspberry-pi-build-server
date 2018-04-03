# raspberry_pi_build_server

Scripts that configure raspberry pi to build -- or more so run a script from github
Note that the server can only be set to build one project at a time


1. Install Raspberry Pi build server image onto SD card

2. Run command: set-build-repo <github url to  clone>.  This repo needs to have a file called build-raspberry.sh.
 You can do whatever you want in here, but I use it to build some  software and host it automatically on my pi.  
 
This default to running a daily "build". Change this will
3. set-build-frequency <hourly/daily/weekly/never/ cron '<some raw cron expression'> 

note that if a build is still occuring when the next scheduled build kicks off, the build will  simply occur on the next interval

other useful commands:
last-build-time: display last build time
get-build-repo: list configured build repo
get-build-frequency: list configured build frequency
set-build-hook <script_path>: call a command after build has taken place (for decoupling, can use however, but redcommended when the actions aren't really related to the github repo the script is  hosted in).

