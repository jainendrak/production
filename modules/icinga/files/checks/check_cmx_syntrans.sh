#/bin/bash
jar=$1
emailaddress=$2
url=$3
scenario=$4
logfilelocation=$5

java -jar "$jar" -emailaddress "$emailaddress" -url "$url" -scenario "$scenario"  -logFileLocation "$logfilelocation";
