#!/usr/bin/env bash

[ -f /opt/mapr/conf/mapr-clusters.conf ] && [ -f /opt/mapr/conf/ssl_truststore ] && /opt/mapr/server/configure.sh -R

[ -d app ] || git clone https://github.com/erdincka/catchx.git /app

cd /app
python3 main.py

# don't exit when service dies.
sleep infinity
