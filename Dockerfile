FROM jupyter/minimal-notebook	

USER root

COPY requirements.txt Visualization_xbeach.ipynb ./

RUN apt-get update && apt-get install -y libpng-dev libfreetype6-dev pkg-config
RUN pip install -r requirements.txt && \
	rm requirements.txt
RUN jupyter nbextension enable --py widgetsnbextension

USER $NB_USER