# docker-visualization-xbeach
Docker container to visualize xbeach model results.

## Run docker-compose example:
Note: When working on windows, be sure to save the folder on a drive that is available to your containers. 
Shared drives can be enabled in the settings.
Run the following commands to start the docker compose example:
`cd example`
`docker-compose up -d`

This will return something like:
```
example_xbeach-run_1 ...
Starting example_xbeach-run_1 ... done
Starting example_xbeach-vis_1 ...
Starting example_xbeach-vis_1 ... done
```

Request logs from the visualisation container:
`docker logs example_xbeach-vis_1`

From the logs copy the login with token and access the IPython Notebook via your browser.
