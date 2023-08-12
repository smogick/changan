#!/bin/bash

Help() {
    # Display Help
  echo "Модификация Головного Устройства (ГУ) на Changan Uni-V."
  echo 
  echo "Выполняемые команды"
  echo "-c      Проверка подключения ГУ по ADB"
  echo "--root      Получение root прав"
  echo "--unlock    Удалить приложение защиты от установок"
  echo "--install   Установить APK из папки system_apk"
  echo 
}

CheckADB(){
    # Check ADB connected devices
    adb devices
}

############################################################
# Process the input options. Add options as needed.        #
############################################################
# Get the options
while getopts ":hcm:s-:" option; do
  case $option in
  [Hh]*) # display Help
    Help
    exit
    ;;
  c)
    CheckADB
    exit
    ;;

  m*)
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
