# pgbadger
PostgreSQL Log Analyser Docker Image

[Docker Image](https://hub.docker.com/r/grandegoiania/pgbadger)

## Usage:

**/var/lib/postgresql/12/main/log** Example folder with log files.  
**/usr/share/nginx/html** Example folder where the report will be available.  

```
docker run --rm -v /var/lib/postgresql/12/main/log:/data -v /usr/share/nginx/html:/usr/share/nginx/html grandegoiania/pgbadger
```

## Usage with docker volumes:  

```
docker run --rm -v logs:/data -v html:/usr/share/nginx/html grandegoiania/pgbadger
```

## Environment variables:

-e JOBS=2 **number of jobs to run at same time. Default: 2.**  
-e AVERAGE=5 **number of minutes to build the average graphs of queries and connections. Default 5 minutes.**  
-e SAMPLE=4 **number of query samples to store. Default: 4.**  
-e TOP=32 **number of queries to store/display. Default: 32.**  

## Output

The report is generated in incremental mode at **/usr/share/nginx/html/pgbadger** folder.  

## Crontab

Schedule execution to keep the report up to date.  
