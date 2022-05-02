#!/bin/bash
echo "################################"
echo
echo -e "\e[31m     RSYNC MAN-IN-THE-MIDDLE TOOL\e[m"
echo
echo "################################"

read -p "Are you pulling a directory? (y/n): "
case $(echo $REPLY | tr '[A-Z]' '[a-z]') in
    y)
        echo -ne "Enter the \e[31mPULL Server IP\e[m (example@10.0.0.1): "
        read -r dirpullIP

        echo -ne "Enter the \e[31mFolder path you want to PULL\e[m off the server (/home/cmc): "
        read -r dirpullFolderName

        echo -ne "Enter the \e[31mPUSH Server IP\e[m (example@10.0.0.2): "
        read -r dirpushIP

        echo -ne "Enter the \e[31mServer Directory to PUSH Folder\e[m (/home/myFolder): "
        read -r dirpushDirectory

        echo
        echo
        echo
        echo
        
        echo -e "##### PULLING FOLDER #####"
        rsync --progress -rth $dirpullIP:$dirpullFolderName /tmp

        pulledFolderSuffix=$(basename $dirpullFolderName suffix)
        echo -e "##### PUSHING FOLDER #####"
        rsync --progress -rth /tmp/$pulledFolderSuffix $dirpushIP:$dirpushDirectory

        echo -e "##### CLEANING UP DIRECTORY #####"
        rm -Rfv /tmp/$pulledFolderSuffix
    ;;

    n)
        echo -ne "Enter the \e[31mPULL Server IP\e[m (example@10.0.0.1): "
        read -r pullIP

        echo -ne "Enter the \e[31mFile path you want to PULL\e[m off the server (/home/cmc/test.txt): "
        read -r pullFileName

        echo -ne "Enter the \e[31mPUSH Server IP\e[m (example@10.0.0.2): "
        read -r pushIP

        echo -ne "Enter the \e[31mServer Directory you want to PUSH to\e[m (/home/myFolder): "
        read -r pushDirectory

        echo
        echo
        echo
        echo

        pulledFileSuffix=$(basename $pullFileName suffix)
        echo -e "##### PULLING FILES #####"
        rsync --progress -h $pullIP:$pullFileName /tmp

        echo -e "##### PUSHING FILES #####"
        rsync --progress -h /tmp/$pulledFileSuffix $pushIP:$pushDirectory

        echo -e "##### CLEANING UP DIRECTORY #####"
        rm -Rfv /tmp/$pulledFileSuffix
    ;;
esac
