FROM odoo:17.0

LABEL maintainer="DevVastra"

USER root

RUN pip3 install --upgrade pip
RUN pip3 install pyopenssl

USER odoo

