FROM odoo:17.0

LABEL maintainer="DevVastra"

USER root
RUN pip3 install --upgrade pip
RUN pip3 install pyopenssl
COPY ./odoo.conf /odoo.conf
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
