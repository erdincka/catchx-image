#!/usr/bin/env bash

[ -f /opt/mapr/conf/mapr-clusters.conf ] && [ -f /opt/mapr/conf/ssl_truststore ] && /opt/mapr/server/configure.sh -R

[ -d app ] || git clone https://github.com/erdincka/catchx.git /app

python3 /app/main.py

# sleep infinity
