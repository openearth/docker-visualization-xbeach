## Table of Contents
1. [What](#what)
2. [How to use this image?](#how)
  1. 
## What is docker-visualization-xbeach <a name="what"/>
This image is used to create a visualization of an running xbeach model. The visualization is made using a [Jupyter][1] notebook. In the notebook the package [mmi-python ][2] is used to make a connection with a running xbeach model. With this connection data from the model is loaded into the notebook, including water depth (zs [m]), bed level (zb [m]) and wave height (H[m]). For each interaction with the model these parameters are retrieved and the timestep and saved internally. These values are visaulized in an interactive [bokeh][3] plot and controlled by a time Slider based on the [ipywidgets interactive module][4].

![alt text][fig1]

[fig1]: https://github.com/openearth/docker-visualization-xbeach/blob/master/figures/example.png
[1]:http://jupyter.org/
[2]:https://github.com/openearth/mmi-python
[3]:https://bokeh.pydata.org/en/latest/
[4]:http://ipywidgets.readthedocs.io/en/stable/examples/Using%20Interact.html
## How to use this image? <a name="how"/>
# Run docker-visualization-xbeach with seperate xbeach-mi example <a name="how1"/>
# Run docker-compose example<a name="how2"/>
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

