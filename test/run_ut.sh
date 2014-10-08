#! /bin/bash

php ./Coinbase.php > result
success=`tail -n1 result | grep 'Failures: 0, Exceptions: 0' | wc -l`
if [ $success == 1 ]; then
    rm ./result
    exit 0
fi
exit 1
