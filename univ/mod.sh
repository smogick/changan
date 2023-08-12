#!/bin/bash

Help() {
    # Display Help
  echo "Модификация Головного Устройства (ГУ) на Changan Uni-V."
}

############################################################
# Process the input options. Add options as needed.        #
############################################################
# Get the options
while getopts ":hbdpm:s-:" option; do
  case $option in
  [Hh]*) # display Help
    Help
    exit
    ;;
  t)
    echo 'test'
    exit
    ;;

  m*)
    # Make migrations
    arg=${OPTARG}
    echo 'with arg ' + $migration_name
    exit
    ;;
  -)
    case ${OPTARG} in
    "test"*)
      echo 'test'
      exit
      ;;
    "help")
      Help
      exit
      ;;
    esac
    ;;
  esac
done

Help

exit 0
