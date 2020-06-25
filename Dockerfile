FROM registry.redhat.io/redhat-sso-7/sso73-openshift:1.0

COPY extensions/postconfigure.sh /opt/eap/extensions/
COPY extensions/actions.cli /opt/eap/extensions/

USER root
RUN chmod 774 /opt/eap/extensions/*.sh
USER jboss

CMD ["/opt/eap/bin/openshift-launch.sh"]
