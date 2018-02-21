### pg_query_analyser Dockerfile

Provides a Dockerfile for the [pg_query_analyser](https://github.com/WoLpH/pg_query_analyser).

Building: 

```
> docker build -t pg_query_analyser:latest .
```

Running (assuming `pg.log` contains the postgres log to analyse): 

```
> docker run --rm -v /path/to/pg/logs/on/host:/pglogs pg_query_analyzer:latest pg_query_analyser --input-file=/pglogs/pg.log --output-file=/pglogs/report.html
```

Your analysis result will now be available at `/path/to/pg/logs/on/host/report.html`