read -p "Enter the file path: " file_path
if [ -e "$file_path" ]; then
    if [ -r "$file_path" ]; then
        echo "The file is readable."
    else
        echo "The file is not readable."
    fi

    if [ -w "$file_path" ]; then
        echo "The file is writable."
    else
        echo "The file is not writable."
    fi

    if [ -x "$file_path" ]; then
        echo "The file is executable."
    else
        echo "The file is not executable."
    fi
else
    echo "The file does not exist."
fi