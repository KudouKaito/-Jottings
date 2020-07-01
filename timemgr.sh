#!/bin/bash
logtime=0
vimlog=0

if [[ $0 =~ ^\/.* ]]       #判断当前脚本是否为绝对路径，匹配以/开头下的所有
then
   script=$0
else
   script=$(pwd)/$0
fi
script=`readlink -f $script`
script_path=${script%/*}
realpath=$(readlink -f $script_path)
onlydata=$(date "+%Y-%m-%d")
logfile="$realpath/TimeManagement/$onlydata.md"
ARGS=`getopt -o tv --long time,vim -n "$0" -- "$@"`
if [ $? != 0 ]; then
    echo "Terminating..."
    exit 1
fi

eval set --"${ARGS}"

while true
do
    case "$1" in
        -t|--time)
            date >> $logfile
            logtime=1
            shift
            ;;
        -v|--vim)
            vimlog=1
            shift
            ;;
        --)
            shift
            break
            ;;
        *)
            echo "error!"
            exit 1
            ;;
    esac
done
if [ $# != 0 ]; then
    if [ $logtime == 0 ]; then
        date >> $logfile
        logtime= true
    fi
    echo $@ >> $logfile
else
    if [ $vimlog == 0 ]; then
        vim $logfile
    fi
fi
if [ $vimlog == 1 ]; then
    vim $logfile
fi
