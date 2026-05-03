# Text and File Processing

This document provides detailed explanations of common commands used for reading, searching, and manipulating text in files and data streams.

## `cat` - Concatenate and Print Files
The `cat` command reads data from files and outputs their contents. It is the simplest way to display a file's content on the screen.

**Common Flags:**
- `-n`: Number all output lines.
- `-A`: Show non-printing characters (like tabs and line endings).

**Examples:**
```bash
cat config.yaml      # Print the contents of config.yaml
cat file1.txt file2.txt > merged.txt  # Concatenate two files into a new one
```

## `less` - View File Content (Paged)
Unlike `cat` which dumps the whole file at once, `less` lets you read the file one page at a time. It doesn't load the entire file into memory, making it fast for very large files.

**Navigation in less:**
- `Space` / `Page Down`: Scroll down one page.
- `b` / `Page Up`: Scroll up one page.
- `/pattern`: Search forward for a pattern.
- `q`: Quit.

**Example:**
```bash
less /var/log/syslog  # View a potentially large log file
```

## `head` & `tail` - View Beginning/End of Files
Used to quickly inspect the start or end of a file.

**Common Flags:**
- `-n <number>`: Number of lines to show (default is 10).
- `-f` (tail only): Follow the file. It keeps the file open and displays new lines as they are appended (extremely useful for monitoring logs).

**Examples:**
```bash
head -n 20 data.csv       # Show the first 20 lines
tail -n 50 error.log      # Show the last 50 lines
tail -f /var/log/nginx/access.log  # Live monitor an Nginx access log
```

## `grep` - Search Text Using Patterns
`grep` searches input files for lines containing a match to a given pattern (string or regular expression) and prints those lines.

**Common Flags:**
- `-i`: Ignore case (case-insensitive).
- `-r` or `-R`: Recursively search directories.
- `-v`: Invert match (show lines that *do not* match the pattern).
- `-n`: Print line numbers alongside matched lines.

**Examples:**
```bash
grep "ERROR" app.log               # Find lines containing ERROR
grep -ir "password" /etc/          # Search recursively for "password" ignoring case
grep -v "DEBUG" app.log            # Show all lines EXCEPT debug lines
```

## `awk` - Pattern Scanning and Processing Language
`awk` is a powerful programming language designed for text processing and data extraction. It treats data as records (lines) and fields (columns/words separated by whitespace).

**Examples:**
```bash
# Print the 1st and 3rd columns (fields) of a file
awk '{print $1, $3}' access.log

# Print lines where the 3rd column is greater than 100
awk '$3 > 100 {print $0}' data.txt

# Count the number of lines in a file (similar to wc -l)
awk 'END {print NR}' file.txt
```

## `sed` - Stream Editor
`sed` is used to perform basic text transformations on an input stream (a file or input from a pipeline). It is most commonly used for finding and replacing text.

**Common Usage (`s` command for substitute):**
`sed 's/search_pattern/replacement_string/flags' file`

**Examples:**
```bash
# Replace the first occurrence of 'foo' with 'bar' on every line
sed 's/foo/bar/' file.txt

# Replace ALL occurrences of 'foo' with 'bar' globally (using 'g' flag)
sed 's/foo/bar/g' file.txt

# Delete lines containing a specific word (using 'd' command)
sed '/DeleteThis/d' file.txt
```

## `wc` - Word, Line, Character, and Byte Count
Prints counts for a file.

**Common Flags:**
- `-l`: Count lines.
- `-w`: Count words.
- `-c`: Count bytes.

**Examples:**
```bash
wc -l script.sh      # Print the number of lines in script.sh
ls -l | wc -l        # Count the number of files/lines output by ls
```
