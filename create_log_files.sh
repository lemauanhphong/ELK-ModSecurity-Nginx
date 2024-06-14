#!/bin/sh
touch ./logs/nginx/{access.log,error.log} ./logs/modsec/audit.log
chmod 777 ./logs/nginx/{access.log,error.log} ./logs/modsec/audit.log

