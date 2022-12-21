#!/bin/bash

o=$0
i=$1

function chk {
  ii=$(dig +short $i)
  if [[ $o != $ii ]]
  then
    sleep 2;
    chk;
  else
    exit 0
  fi
};

chk;
