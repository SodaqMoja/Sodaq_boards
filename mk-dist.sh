#!/bin/sh

#                "checksum":"SHA-256:12868e320717f2778b5f354fe2e3ba323965e07dd22294684acda3d1bd8de0c4",
# sed -i '/SHA-256/s/SHA-256:.*"/SHA-256:'$CRC'"/' package_sodaq_index.json

VER=1.0.0
TARFILE=sodaqboards-${VER}.tar.bz2
tar cjf ${TARFILE} $(git ls-files ${VER})
CRC=$(sha256sum ${TARFILE}  | awk '{print $1}')
echo "\"checksum\":\"SHA-256:${CRC}\""
echo "\"size\":\"$(cat ${TARFILE} | wc -c)\""

VER=1.0.1
TARFILE=sodaqboards-${VER}.tar.bz2
tar cjf ${TARFILE} $(git ls-files ${VER})
CRC=$(sha256sum ${TARFILE}  | awk '{print $1}')
echo "\"checksum\":\"SHA-256:${CRC}\""
echo "\"size\":\"$(cat ${TARFILE} | wc -c)\""

VER=1.6.0
TARFILE=sodaqsamdboards-${VER}.tar.bz2
tar cjf ${TARFILE} $(git ls-files ${VER})
CRC=$(sha256sum ${TARFILE}  | awk '{print $1}')
echo "\"checksum\":\"SHA-256:${CRC}\""
echo "\"size\":\"$(cat ${TARFILE} | wc -c)\""
