#! /bin/bash
# set -x #echo on 

testpath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
mkdir "$testpath/output"
java -jar bin/claxon-1.0.0-SNAPSHOT-standalone.jar --xsl "$testpath/data/xsl/basic_tei.xsl" --dir "$testpath/data/xml/basic/" --out "$testpath/output/" --ext .txt
result='Some text here.'
if [[ $(< "$testpath/output/basic_tei.txt") != "$result" ]]; then
    echo "FAILURE!"
else 
    echo "SUCCESS!"
fi
rm -rf "$testpath/output"
