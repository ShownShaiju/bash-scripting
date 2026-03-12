read -p "Enter the file path: " file_path
if test -w "$file_path"; then
    echo "The file is writable."
else
    echo "The file is not writable."
fi