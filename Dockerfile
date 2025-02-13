# Start with BioSim base image.
ARG BASE_IMAGE=latest
FROM ghcr.io/jimboid/biosim-jupyter-base:$BASE_IMAGE

LABEL maintainer="James Gebbie-Rayet <james.gebbie@stfc.ac.uk>"
LABEL org.opencontainers.image.source=https://github.com/jimboid/biosim-ubiquitin-analysis-workshop
LABEL org.opencontainers.image.description="A container environment for the ccpbiosim workshop on Ubiquitin analysis."
LABEL org.opencontainers.image.licenses=MIT

# Switch to jovyan user.
USER $NB_USER
WORKDIR $HOME

# Install workshop deps
RUN conda install mdtraj matplotlib -y
RUN conda install ipywidgets -c conda-forge -y
RUN pip install mdplus

# Get workshop files and move them to jovyan directory.
RUN git clone https://github.com/CCPBioSim/ubiquitin-analysis-workshop.git && \
    mv ubiquitin-analysis-workshop/* . && \
    rm -r AUTHORS LICENSE README.md ubiquitin-analysis-workshop

# Copy updated lab workspace
COPY --chown=1000:100 default-37a8.jupyterlab-workspace /home/jovyan/.jupyter/lab/workspaces/default-37a8.jupyterlab-workspace

# UNCOMMENT THIS LINE FOR REMOTE DEPLOYMENT
COPY jupyter_notebook_config.py /etc/jupyter/

# Always finish with non-root user as a precaution.
USER $NB_USER
