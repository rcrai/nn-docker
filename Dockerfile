FROM nvcr.io/nvidia/pytorch:20.03-py3 as builder

# see: https://ngc.nvidia.com/catalog/containers/nvidia:pytorch/tags

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

# # Install tools
# RUN apt-get update \
#         && apt-get --yes install \
#         wget \
#         && rm -rf /var/lib/apt/lists/*

# # Install miniconda
# RUN wget --progress=dot:mega https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh \
#         && chmod +x miniconda.sh && ./miniconda.sh -b -p /usr/local/conda3 \
#         && rm -f miniconda.sh

# ENV PATH /usr/local/conda3/bin:$PATH

# RUN echo 'export PATH=/usr/local/conda3/bin:$PATH' >> /etc/profile.d/pynn.sh \
#         && ln -sf /usr/local/conda3/etc/profile.d/conda.sh /etc/profile.d/

# # Install pytorch
# # See: https://pytorch.org/get-started/locally/
# RUN conda install --yes pytorch torchvision cudatoolkit=9.0 -c pytorch \
#         && pip --no-cache-dir install https://github.com/kpu/kenlm/archive/master.zip

# # 
# COPY environment.yml /
# RUN conda env update

