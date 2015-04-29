function abspath --description='Get the absolute path for the given file or the current working directory'
    set -l file
    if [ (count $argv) -lt 1 ]
        set file $PWD
    else
        set file $argv[1]
    end
    fish (echo "cd (dirname $file); echo (pwd)/(basename $file)" | psub)
end
