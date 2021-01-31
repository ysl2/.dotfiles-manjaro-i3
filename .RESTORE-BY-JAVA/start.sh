cd javarestore
javac *.java
cd ..
java javarestore.Main
cd javarestore
rm $(ls | grep class)
cd ..
cd assets

if [[ -e "conflict.sh" ]]; then
    echo "beacuse of the conflict, the shell script stoped normally :-)"
    exit 0
fi

if [[ ! -e "run-stow.sh"]]; then
    echo '"run-stow.sh" is missing. Something must be wrong, so I have to stop.'
    exit 1
fi

sh run-stow.sh

\rm -rf /home/yusoli/.dotfiles/.RESTORE-BY-JAVA/assets
