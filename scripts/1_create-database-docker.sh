#!/bin/sh
docker rm -f oraclexe23
docker run -d --name oraclexe23 -p 1521:1521 -e ORACLE_PWD=oracle container-registry.oracle.com/database/free:latest
