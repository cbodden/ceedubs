#!/usr/bin/env bash

#===============================================================================
#
#          FILE: ceedubs.sh
#         USAGE: ./ceedubs.sh [options]
#   DESCRIPTION:
#       OPTIONS:
#  REQUIREMENTS: sox (play) and wordlist
#          BUGS: they will be discovered at random times
#         NOTES:
#        AUTHOR: Cesar B. (), cesar@poa.nyc
#  ORGANIZATION: poa.nyc
#       CREATED: 2023-03-17
#      REVISION: 1
#       LICENSE: Copyright (c) 2023, cesar@poa.nyc
#                All rights reserved.
#
#                This source code is licensed under the BSD-style license
#                found in the LICENSE file in the root directory of this
#                source tree.
#
#===============================================================================


#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=#
# USER SETTINGS
#
# Speed of morse code / CW
# - This is set to medium by default. To have an interactive prompt just remove
# - - the number.
# - This is a number between 1 (slowest) and 3 (fastest)
# - To disable just leave empty.
GLOBAL_SPEED="2"
#
# Length of words selected
# - If this is set it will not ask you length at script run.
# - If RANDOM is set you can set the MIN & MAX length or it defaults to 5
GLOBAL_LENGTH="RANDOM"
GLOBAL_RANDOM_MIN_LENGTH="3"
GLOBAL_RANDOM_MAX_LENGTH="6"
#
#
# END USER SETTINGS
#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=#

# todo:
## multiwords
## no output option till end (testing mode)
## choice between input or dict file

## source all the shlibs
for ITER in shlib/*.shlib
do
    source ${ITER}
done

main
speed
length
practice
cw_out
