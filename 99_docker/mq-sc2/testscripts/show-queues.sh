#!/bin/bash
echo
echo "dis qs (SC2*)" | runmqsc | grep "(" | grep -v "Corp" | grep -v "dis"
echo "dis qs (EVENT.*)" | runmqsc | grep "(" | grep -v "Corp" | grep -v "dis"
echo
