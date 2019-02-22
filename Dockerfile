FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04


RUN apt-get update \
        && apt-get --yes install \
        wget \
        && rm -rf /var/lib/apt/lists/*


RUN wget --progress=dot:mega https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh \
        && chmod +x miniconda.sh && ./miniconda.sh -b -p /usr/local/conda3 \
        && rm -f miniconda.sh

ENV PATH /usr/local/conda3/bin:$PATH

RUN echo 'export PATH=/usr/local/conda3/bin:$PATH' >> /etc/profile.d/pynn.sh

# Install pytorch
# See: https://pytorch.org/get-started/locally/
RUN conda install --yes pytorch torchvision cudatoolkit=9.0 -c pytorch \
       && conda install --yes mkl numpy pyyaml scikit-learn setuptools


