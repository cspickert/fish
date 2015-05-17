function abspath --description='Get the absolute path for the given file or the current working directory'
    if [ (count $argv) -lt 1 ]
        echo $PWD
    else
        set -l file $argv[1]
        if [ -d $file ]
            fish (echo "cd $file; echo (pwd)" | psub)
        else
            fish (echo "cd (dirname $file); echo (pwd)/(basename $file)" | psub)
        end
    end
end
