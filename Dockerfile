FROM continuumio/miniconda3

# Install dependencies
RUN conda install erdantic -c conda-forge
RUN pip install compliance-trestle

WORKDIR /opt
ADD generate_diagrams.sh generate_diagrams.sh

ENTRYPOINT ["/bin/bash", "generate_diagrams.sh"]
