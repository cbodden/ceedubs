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
# - If this is set it will not ask you speed at script run.
# - This is a number between 1 (slowest) and 3 (fastest)
GLOBAL_SPEED=""
#
# Length of words selected
# - If this is set it will not ask you length at script run.
# - This is a number between 1 and 20 or RANDOM
# - If RANDOM is set you can set the RANDOM MAX length or it defaults to 20
GLOBAL_LENGTH=""
GLOBAL_RANDOM_MAX_LENGTH=""
#
#
# END USER SETTINGS
#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=#



# todo:
## multiwords
## no output option till end (testing mode)
## choice between input or dict file
## number practice (mix letters and numbers also)

## source all the shlibs
for ITER in shlib/*.shlib
do
    source ${ITER}
done

main
word_speed
word_length
cw_out
