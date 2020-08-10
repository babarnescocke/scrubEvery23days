#scrubEvery23Days

really straight forward, this is a project that, by default, will initiate a scrub of all zpools if the day of the year that it is run is divisible by 23. Hence the script as written does a scrub 15 times a year.

I wanted a script that wouldn't rely on monthly, weekly intervals - ie. the default cron intervas. Admittedly hack-y.

##Usage

```bash
chmod 0100 scrubEvery23Days.bash
crontab -e
x y * * * /path/to/scrubEvery23Days.bash
```
done as the root user

this will create a cronjob that runs everyday at hour y, minute x

https://crontab.guru/

##License

BSD 3-Clause
