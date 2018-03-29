# raspberry_pi_build_server

Scripts that configure raspberry pi to build periodically from github
Note that the build server can only be set to build one project at a time


1. Install Raspberry Pi build server image onto SD card
2. Run command: set-build-repo <github url to  clone>.  
This default to running a daily build. Change this will
3. set-build-frequency <hourly/daily/weekly> 

note that if a build is still occuring when the next scheduled build kicks off, the build will  simply occur on the next interval
see configuration with build-server-info

other useful commands:
last-build-time: display last build time
get-build-repo: list configured build repo
get-build-frequency: list configured build frequency
set-build-hook <script_path>: call a command after build has taken place (useful to do something like scp files)
