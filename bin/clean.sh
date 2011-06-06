#!/bin/sh

# Detect PATH
cd "`dirname $0`";
BASENAME=`pwd`;
ROOTPATH='../';
cd "${ROOTPATH}"
ROOTPATH=`pwd`;

cd ${ROOTPATH}/www;
#FIXME: at the moment, sites/all is deleted, so sites/all/custom is deleted too...
rm -rf\
  *.*\
  includes\
  misc\
  modules\
  scripts\
  sites/all\
  themes\
  profiles/minimal\
  profiles/standard\
  profiles/testing
