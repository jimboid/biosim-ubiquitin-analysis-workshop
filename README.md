CCPBioSim Ubiquitin Analysis Workshop
=====================================

[![build](https://github.com/jimboid/biosim-ubiquitin-analysis-workshop/actions/workflows/build.yml/badge.svg?branch=main)](https://github.com/jimboid/biosim-ubiquitin-analysis-workshop/actions/workflows/build.yml)
[![tests](https://github.com/jimboid/biosim-ubiquitin-analysis-workshop/actions/workflows/test.yaml/badge.svg?branch=main)](https://github.com/jimboid/biosim-ubiquitin-analysis-workshop/actions/workflows/test.yaml)
[![latest](https://img.shields.io/badge/dynamic/xml?url=https%3A%2F%2Fgithub.com%2Fjimboid%2Fbackage%2Fraw%2Findex%2Fjimboid%2Fbiosim-ubiquitin-analysis-workshop%2Fbiosim-ubiquitin-analysis-workshop.xml&query=xml%2Fversion%5B.%2Flatest%5B.%3D%22true%22%5D%5D%2Ftags%5B.!%3D%22latest%22%5D%5B.!%3D%22dev%22%5D&logo=github&label=latest&color=purple)](https://github.com/jimboid/biosim-ubiquitin-analysis-workshop)
[![size](https://img.shields.io/badge/dynamic/xml?url=https%3A%2F%2Fgithub.com%2Fjimboid%2Fbackage%2Fraw%2Findex%2Fjimboid%2Fbiosim-ubiquitin-analysis-workshop%2Fbiosim-ubiquitin-analysis-workshop.xml&query=xml%2Fsize&logo=github&label=size&color=orange)](https://github.com/jimboid/biosim-ubiquitin-analysis-workshop)
[![pulls](https://img.shields.io/badge/dynamic/xml?url=https%3A%2F%2Fgithub.com%2Fjimboid%2Fbackage%2Fraw%2Findex%2Fjimboid%2Fbiosim-ubiquitin-analysis-workshop%2Fbiosim-ubiquitin-analysis-workshop.xml&query=xml%2Fdownloads&logo=github&label=pulls&color=blue)](https://github.com/jimboid/biosim-ubiquitin-analysis-workshop)

This container is derived from the CCPBioSim JupyterHub image. This container
adds the necessary software packages and notebook content to form a deployable
course container. The source content for this course can be found at
https://github.com/CCPBioSim/ubiquiting-analysis-workshop

How to Use
----------

In our containers we are using the JupyterHub default port 8888, so you should
forward this port when deploying locally::

    docker run -p 8888:8888 ghcr.io/jimboid/biosim-ubiquitin-analysis-workshop:latest
