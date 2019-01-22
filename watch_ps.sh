#!/bin/bash

while [ 1 ]; 
do
  ps a | grep cc | grep -v grep
  sleep 0.1
done
