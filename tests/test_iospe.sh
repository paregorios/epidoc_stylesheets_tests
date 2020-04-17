#! /bin/bash
# set -x #echo on 

failout () {
    echo >&2 "$@"
    exit 1
}

# validate command-line arguments
# [ "$#" -eq 1 ] || failout "1 argument required, $# provided"
# [ -f "$1" ] || failout "$1 is not a valid file path (expected xslt file)"

testpath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
xsltpath="$testpath/../data/epidoc-stylesheets/start-edition.xsl"
[ -f "$xsltpath" ] || failout "Expected EpiDoc Example Stylesheets at $xsltpath, but did not find them."
outpath="$testpath/output/iospe"
mkdir -p "$outpath"
java -jar bin/claxon-1.0.0-SNAPSHOT-standalone.jar --xsl "$xsltpath" --dir "$testpath/data/xml/iospe/" --out "$outpath" --ext .xhtml leiden-style iospe edn-structure iospe internal-app-style iospe external-app-style iospe 
#result='Some text here.'
#if [[ $(< "$testpath/output/basic_tei.txt") != "$result" ]]; then
#    echo "FAILURE!"
#else 
#    echo "SUCCESS!"
#fi
# rm -rf "$testpath/output"
