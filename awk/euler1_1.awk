#!/bin/bash
# Euler1 in AWK

seq 999 | awk '{if ($1%3==0 || $1%5==0) sum+=$1} END{print sum}'
