#! /bin/bash
# set -x #echo on 

failout () {
    echo >&2 "$@"
    exit 1
}

testpath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
xsltpath="$testpath/../data/epidoc-stylesheets/start-edition.xsl"
[ -f "$xsltpath" ] || failout "Expected EpiDoc Example Stylesheets at $xsltpath, but did not find them."
outpath="$testpath/output/iospe/"
mkdir -p "$outpath"
java -jar bin/claxon-1.0.1-SNAPSHOT-standalone.jar --xsl "$xsltpath" --dir "$testpath/data/xml/iospe/" --out "$outpath" --ext .xhtml leiden-style iospe edn-structure iospe internal-app-style iospe external-app-style iospe 
cd "$outpath"
sha1sum -c --status < ../../data/html/iospe_1_5.xhtml.sha1
[ $? -eq 0 ] || failout "FAILURE: Transform of tests/data/xml/iospe/iospe_1_5.xml to XHTML failed (sha1 checksum did not match data/html/iospe/iospe_1_5.xhtml.sha1"
echo "SUCCESS!"
rm -rf "$testpath/output"
