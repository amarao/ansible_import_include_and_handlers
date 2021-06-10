#!/bin/sh

CURRENT_DIR=`pwd`

# test case dir
testCase(){
    cd $CURRENT_DIR/case$1  # change to case dir

    echo "" # empty line
    echo "" # empty line

    seq -s'#' 0 50 | tr -d '[:digit:]'    # print line
    echo "# Test Case: $i"
    seq -s'#' 0 50 | tr -d '[:digit:]'    # print line

    echo "" # empty line
    ansible-playbook -i localhost, play.yaml
    echo "" # empty line
}

# automatic loop over each file
testAuto(){
    for i in {1..18}
    do
        testCase $i
        # sleep 2
    done
}


####
## Manual
####

#  usage:    ./test.sh caseNumber
#  example:  ./test.sh 3

# uncomment for manual testing of each case
# testCase $1

####
## Automatic
####
# comment to test manually
testAuto