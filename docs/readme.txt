Run main to go through the main loop

Cron jobs
	Notes
		This allows you to take a picture every 60 seconds, and log the system uptime for diagnostics
	View cron jobs
		sudo crontab -l
	Edit cron jobs
		sudo crontabs -e
	Contents of crontabs
		* * * * * date >> /home/pi/Desktop/timelapse-pi/data/uptime.txt
		* * * * * bash /home/pi/Desktop/timelapse-pi/scripts/main.sh

TODO
	Make interval configurable
	Check FTP upload status and only delete if successful
	Ability to turn off picture taking, but have it reset on reboot
	FTP upload should upload all available files, not the one that was just taken
