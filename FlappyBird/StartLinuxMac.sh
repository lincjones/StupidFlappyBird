#!/usr/bin/env bash



spinner() {
    local i sp n
    sp='/-\|'
    n=${#sp}
    printf ' '
    while sleep 0.1; do
        printf "%s\b" "${sp:i++%n:1}"
    done
}

printf 'Baking pizza '
spinner &

sleep 10  # sleeping for 10 seconds is important work

kill "$!" # kill the spinner
printf '\n'

python StartWindows.py