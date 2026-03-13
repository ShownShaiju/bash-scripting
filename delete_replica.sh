file1=$1
file2=$2
if [ ! -f "$file1" ]; then
    echo "File $file1 does not exist."
    exit 1
    fi
if [ ! -f "$file2" ]; then
    echo "File $file2 does not exist."
    exit 1
    fi
if cmp -s "$file1" "$file2"; then
      echo "The files are identical,deleting $file2."
      rm "$file2"
else
        echo "The files are different"
fi
              
  