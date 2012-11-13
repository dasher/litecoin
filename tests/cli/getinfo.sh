#!/bin/bash

LITECOIN="../../src/litecoind"
IS_CLI=1

declare -A testResults

if [ -e $LITECOIN ]
then
  echo "Found Litecoin"
else
  echo "Not Found"
fi

safeRunCommand() {
	typeset testCommand="$*"
	typeset ret_code

	echo "Attempting $LITECOIN $testCommand"
	result=$("$LITECOIN $testCommand")
	ret_code=$?
	if [ $ret_code != 0 ]; then
		if [ $IS_CLI != 1 ]; then
			# the coin cli returns 1 on sucess - if we're here - we didn't get an exit code of 1
			printf "Error : [%d] when executing command: '$LITECOIN' '$testCommand'" $ret_code
			testResults[${testCommand}]=$ret_code
			#exit $ret_code
		else
			# We go 1 so all ok
			testResults[${testCommand}]=0
		fi
	fi
}

safeRunCommand "help"
safeRunCommand "getinfo"

echo "--TEST RESULTS"

for test in ${!testResults[@]}; do
  echo "$test was ${testResults[$test]}"
done

echo "--TEST COMPLETE"
