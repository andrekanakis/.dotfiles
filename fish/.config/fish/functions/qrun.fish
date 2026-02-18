function qrun
    if test -z "$argv[1]"
        echo "Usage: qrun <filename>.<c|cc>"
        return 1
    end

    set -l filename $argv[1]
    set -l binary /tmp/qrun_binary_$fish_pid

    if string match -q -r '\.cc$' -- $filename
        echo "Compiling $filename..."
        clang++ -Wall -Werror -std=c++23 -o "$binary" "$filename"
    else if string match -q -r '\.c$' -- $filename
        echo "Compiling $filename..."
        clang -Wall -Werror -std=c23 -o "$binary" "$filename"
    else
        echo "Error: File must have .c or .cc extension"
        return 1
    end

    if test $status -ne 0
        echo "Compilation failed!"
        return 1
    end

    "$binary"
    set -l exit_code $status

    rm -f "$binary"

    return $exit_code
end
