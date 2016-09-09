#!/bin/bash
#fileformat.sh
######################################################################################
#作用：把当前目录下的所有.c，.h文件统一按linux内核代码的对齐风格进行代码格式化
#方法: 把该文件拷贝到/bin下 ， 然后到指定目录下执行fileformat.sh ， 自动递归执行
#######################################################################################

THIS_CMD=$0
COMMAND=$1

USRPATH=$PWD

echo "THIS_CMD" $THIS_CMD
echo "COMMAND" $COMMAND

if [ "$1" = "help" ]; then
    echo reccurrun COMMAND
    echo " Navigate recursivly the current directory and run COMMAND on"
    echo " all the files(not directory)."
    exit 0
fi

#exit

#find $USRPATH -name "*.c" | xargs indent
#find $USRPATH -name "*.h" | xargs indent
find $PWD -name "*.c" |xargs indent -npro -kr -i8 -ts8 -sob -l80 -ss -ncs
find $PWD -name "*.h" |xargs indent -npro -kr -i8 -ts8 -sob -l80 -ss -ncs
