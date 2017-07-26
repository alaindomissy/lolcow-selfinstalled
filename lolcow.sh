#!/bin/bash

# if you want to bind some host directories...
# export SINGULARTY_BINDPATH=/some,/dirs,/to,/bind

DIR=$(dirname  "$0")
CMD=$(basename "$0")
ARG="$@"

singularity exec $dir/image $CMD $ARG