Cron jobs
	Notes
		This allows you to take a picture every 60 seconds, and log the system uptime for diagnostics
	View cron jobs
		sudo crontab -l
	Edit cron jobs
		sudo crontabs -e
	Contents of crontabs
		* * * * * date >> /home/pi/Desktop/timelapse-pi/data/uptime.txt
		* * * * * bash /home/pi/Desktop/timelapse-pi/scripts/take-picture.sh



