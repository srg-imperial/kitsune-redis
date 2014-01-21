#!/bin/sh

# $1 - the directory containing slaptest
# $2 - the file to write the time to
# $3 - the number of operations to perform

$1/redis-benchmark -q -n $3 | perl -n -e'/([\d\.]+) ([\d\.]+)/ && print (($1 + $2)/1000.0)' >> $2