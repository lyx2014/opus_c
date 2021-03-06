#!/bin/bash
ORIGDIR=`pwd`
TMPDIR=opus.$$

mkdir -p ../${TMPDIR}

cd ..
cp -a opus ${TMPDIR}/opus-1.1
cd ${TMPDIR}
rm -rf opus-1.1/.git*
tar zcf opus-1.1.tar.gz opus-1.1
mv opus-1.1.tar.gz ${ORIGDIR}/.
cd ${ORIGDIR}
rm -rf ../${TMPDIR}
