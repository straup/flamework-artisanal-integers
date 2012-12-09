#!/bin/sh

if test $OSTYPE = "FreeBSD"
then
    WHOAMI=`realpath $0`
elif test $OSTYPE = "darwin"
then
    WHOAMI=`python -c 'import os, sys; print os.path.realpath(sys.argv[1])' $0`
else
    WHOAMI=`readlink -f $0`
fi

WHEREAMI=`dirname $WHOAMI`
ARTISANAL=`dirname $WHEREAMI`

PROJECT=$1

echo "copying library code to ${PROJECT}"
cp ${ARTISANAL}/www/include/*.php ${PROJECT}/www/include/

echo "done"
