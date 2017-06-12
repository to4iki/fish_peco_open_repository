function peco_open_repository -d "open git remote repository web page"
    ghq list | peco | cut -d "/" -f 2,3 | read -l line
    if [ $line ]
        hub browse $line
    end
end
