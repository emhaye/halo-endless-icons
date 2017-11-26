#!/bin/bash

if [[ -n $inInteractiveMode ]]
then
  echo -e -n "$oldFileName => $newFileName\nDo you want to do this change? [Y/n]: "
  read run

  [[ -z $run || "$run" == "y" || "$run" == "Y" ]] && mv "$oldFileName" "$newFileName" 
fi
