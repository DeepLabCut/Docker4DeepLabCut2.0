FROM python:3
RUN pip install imageio
# install ffmpeg from imageio.
RUN pip install imageio-ffmpeg

FROM bethgelab/deeplearning:cuda9.0-cudnn7
RUN apt-get update
RUN apt-get -y install ffmpeg

RUN pip install --upgrade pip

RUN pip install tensorflow-gpu==1.8

RUN pip3 install deeplabcut

RUN pip install ipywidgets
RUN pip3 install ipywidgets

RUN pip3 install seaborn

# run the below if you need wxPython:
#RUN pip install -U \
#    -f https://extras.wxpython.org/wxPython4/extras/linux/gtk3/ubuntu-16.04 \
#    wxPython

# Install libgtk-3-dev (required by wxPython) and python3-tk (matplotlib)
#RUN apt-get update && apt-get install -y \
#    libgtk-3-0 \
#    python3-tk
