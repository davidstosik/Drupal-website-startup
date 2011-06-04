#!/bin/sh

DRUSHPATH=${HOME}/.drush/drush/drush;

# Detect PATH
ORIGPATH=`pwd`;
cd "`dirname $0`";
BASENAME=`pwd`;
ROOTPATH='../';
cd "${ROOTPATH}"
ROOTPATH=`pwd`;

cd ${ROOTPATH}/www;
${DRUSHPATH} make -y ${BASENAME}/project.make;
cd ${ORIGPATH};
