#!/bin/sh
TRANSLATIONS=fr

# Detect PATH
cd "`dirname $0`";
BASENAME=`pwd`;
ROOTPATH='../';
cd "${ROOTPATH}"
ROOTPATH=`pwd`;

cd ${ROOTPATH}/www;
drush make -y --translations="${TRANSLATIONS}" ${BASENAME}/project.make;
