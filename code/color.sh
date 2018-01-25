#!/bin/bash


HIGHLIGHT='\033[1m'
F_black='\033[30m'
B_black='\033[40m'
F_red='\033[31m'
B_red='\033[41m'
F_green='\033[32m'
B_green='\033[42m'
F_yellow='\033[33m'
B_yellow='\033[43m'
F_blue='\033[34m'
B_blue='\033[44m'
F_magenta='\033[35m'
B_magenta='\033[45m'
F_cyan='\033[36m'
B_cyan='\033[46m'
F_white='\033[37m'
B_white='\033[47m'


RESET='\033[0m'

cecho()
{
    local default_msg="No message passed."
    message=${1:-$default_msg}
    color=${2:-$white}
    highlight=${3:false}

    echo -e "$color $message $RESET"

    return
}

cecho "Feeling blue..." $blue
cecho "Magenta looks more like purple." $magenta
cecho "Green with envy." $green
cecho "Seeing red?" $red
cecho "Cyan, more familiarly known as aqua." $cyan
cecho "No color passed (defaults to black)."
cecho "\"Empty\" color passed (defaults to black)." ""
cecho "" ""
exit


