LABEL maintainer="Mackenzie Mathis <mackenzie@post.harvard.edu>"

FROM python:3
RUN pip install imageio
# install ffmpeg from imageio.
RUN python -c "import imageio; imageio.plugins.ffmpeg.download()"

FROM bethgelab/deeplearning:cuda8.0-cudnn5
RUN apt-get update
RUN apt-get -y install ffmpeg

RUN pip3 install deeplabcut==0.0.dev1
#install the dependenices, but not the full package yet... 

RUN pip install ipywidgets
RUN pip2 install ipywidgets
RUN pip3 install ipywidgets

RUN pip3 install seaborn
