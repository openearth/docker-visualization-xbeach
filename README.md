# docker-visualization-xbeach
Docker container to visualize xbeach model results.

## Run docker-compose example:
When working on windows, be sure to save the folder on a drive that is available to your containers. 
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
This will look something like:
```http://localhost:8888/?token=a38c9a5b4f5a16476b49b09b76ea0f8d13323222a995207c ```

When working on Windows this link might not work and therefore instead of using `http://localhost:...` you need to use the ip adress of the docker container. This ip adress can be found using the following commando:
`docker-machine ip`

The new link should include this ip adress and will look something like this: 

```192.168.99.100:8888/?token=a38c9a5b4f5a16476b49b09b76ea0f8d13323222a995207c ```
