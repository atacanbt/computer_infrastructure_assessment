#! /bin/bash
# above command is called shebang and it tells the system to use bash to run the script

date
echo "Downloading weather data from Met Eireann API"
# This script will download the weather data from the Met Eireann API and save it to a file with the current date and time as the filename
wget -O data/weather/`date +"%Y%m%d_%H%M%S.json"` https://prodapi.metweb.ie/observations/athenry/today
echo "Finished downloading weather data"
date
