#!/bin/sh

#                "checksum":"SHA-256:12868e320717f2778b5f354fe2e3ba323965e07dd22294684acda3d1bd8de0c4",
# sed -i '/SHA-256/s/SHA-256:.*"/SHA-256:'$CRC'"/' package_sodaq_index.json

doit()
{
    ARCH=${1?}
    VER=${2?}
    PREFIX=${3?}
    TARFILE=${PREFIX}-${VER}.tar.bz2
    tar -cjf ${TARFILE} -C ${ARCH} $(cd ${ARCH} && git ls-files ${VER})
    CRC=$(sha256sum ${TARFILE}  | awk '{print $1}')
    echo
    echo "TARFILE = '${TARFILE}'"
    echo "\"checksum\":\"SHA-256:${CRC}\""
    echo "\"size\":\"$(cat ${TARFILE} | wc -c)\""
}

doit avr  1.0.0 sodaqboards
doit avr  1.0.1 sodaqboards
doit samd 1.6.0 sodaqsamdboards
doit samd 1.6.1 sodaqsamdboards
