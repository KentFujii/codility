FROM jupyter/base-notebook

RUN pip install jupyterlab==1.0
RUN jupyter serverextension enable --py jupyterlab
RUN jupyter labextension install jupyterlab_vim
RUN mkdir -p /home/jovyan/.jupyter/lab/user-settings/@jupyterlab/apputils-extension
RUN echo '{"theme":"JupyterLab Dark"}' > \
  /home/jovyan/.jupyter/lab/user-settings/@jupyterlab/apputils-extension/themes.jupyterlab-settings
