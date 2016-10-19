# © Copyright IBM Corporation 2016.
#
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html

FROM sg248351/stub
MAINTAINER Carsten Bornert carsten.bornert@uk.ibm.com

RUN rm /bin/sh && ln -s /bin/bash /bin/sh
ADD iib_scenario2_orderapi_stub.bar /tmp/iib_scenario2_orderapi_stub.bar
ADD iib_scenario2_orderapi_stub.overrides /tmp/iib_scenario2_orderapi_stub.overrides
ADD orderfiles/*.json /tmp/OrderStub/

ADD agents/agentx.json  /tmp/SwitchAgent/agentx.json
ADD agents/agentp.json  /tmp/SwitchAgent/agentp.json

ENV BASH_ENV=/usr/local/bin/iib_env.sh

RUN bash && source /opt/ibm/iibruntime/server/bin/mqsiprofile && mqsistart node1 && sleep 3 && \
    mqsiapplybaroverride -b /tmp/iib_scenario2_orderapi_stub.bar -p /tmp/iib_scenario2_orderapi_stub.overrides -r && \
    mqsideploy node1 -e default -a /tmp/iib_scenario2_orderapi_stub.bar && \
    mqsichangeproperties node1 -e default -o ComIbmIIBSwitchManager -n agentXConfigFile -p /tmp/SwitchAgent/agentx.json && \
    iibswitch create agentp -c /tmp/SwitchAgent/agentp.json
