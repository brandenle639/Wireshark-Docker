#!/bin/bash
if [[ $# -lt 1 ]]; then
    wireshark
else
    $@
fi
