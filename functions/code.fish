function code
    set -l arg
    if [ (count $argv) -lt 1 ]
        set arg $PWD/
    else
        set arg (abspath $argv[1])
        if [ -d $arg ]
            set arg $arg/
        end
    end
    open -a 'Visual Studio Code' $arg
end
