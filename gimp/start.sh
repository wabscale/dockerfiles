#!/bin/sh

fc-cache

if [ -z "${FILE_TO_OPEN}" ]; then
    gimp
else
    gimp "${FILE_TO_OPEN}"
fi
