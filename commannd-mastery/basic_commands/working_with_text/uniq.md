 The `uniq` command in Linux is used to filter out adjacent duplicate lines from a sorted file. It can also be used to count occurrences of each line, remove non-unique lines, or combine counts into a new file. Here are some key features and examples for the `uniq` command on Kali Linux:

### 1. Basic Usage
The basic usage of `uniq` is straightforward. If you have a sorted file (e.g., using `sort`), `uniq` will remove adjacent duplicates.

**Example:**
```bash
echo -e "apple\nbanana\napple\norange\nbanana" | sort | uniq
```
This will output:
```
apple
banana
orange
```

### 2. Counting Occurrences
You can use `uniq` with the `-c` option to count occurrences of each line.

**Example:**
```bash
echo -e "apple\nbanana\napple\norange\nbanana" | sort | uniq -c
```
This will output:
```
     2 apple
     2 banana
     1 orange
```

### 3. Removing Non-Unique Lines
You can use `uniq` with the `-u` option to remove non-unique lines, keeping only the unique ones.

**Example:**
```bash
echo -e "apple\nbanana\napple\norange\nbanana" | sort | uniq -u
```
This will output:
```
orange
```

### 4. Combining Counts into a New File
You can use `uniq` with the `--output=FILE` option to write the unique lines along with their counts to a new file.

**Example:**
```bash
echo -e "apple\nbanana\napple\norange\nbanana" | sort | uniq -c > output.txt
cat output.txt
```
This will create `output.txt` containing:
```
     2 apple
     2 banana
     1 orange
```

### 5. Ignoring Case with `-i`
You can use the `-i` option to ignore case differences when comparing lines.

**Example:**
```bash
echo -e "Apple\nbanana\napple\norange\nbanana" | sort | uniq -i
```
This will output:
```
Apple
orange
```

### 6. Specifying a Field with `-f`
You can use the `-f` option to ignore the first N fields when comparing lines.

**Example:**
```bash
echo -e "apple banana\napple orange\nbanana apple" | sort | uniq -f 1
```
This will output:
```
apple banana
apple orange
```

### 7. Specifying a Character with `-s`
You can use the `-s` option to ignore the first N characters when comparing lines.

**Example:**
```bash
echo -e "applbanana\nappleorange\nbananaapple" | sort | uniq -s 3
```
This will output:
```
applbanana
appleorange
```

### Alphabetically Organized Examples
To organize the examples alphabetically, let's categorize them based on their functionality.

#### Basic Usage (1) and Counting Occurrences (2)
```bash
# Basic Usage (Remove adjacent duplicates from a sorted file)
echo -e "apple\nbanana\napple\norange\nbanana" | sort | uniq

# Counting Occurrences
echo -e "apple\nbanana\napple\norange\nbanana" | sort | uniq -c
```

#### Removing Non-Unique Lines (3) and Combining Counts into a New File (4)
```bash
# Removing Non-Unique Lines
echo -e "apple\nbanana\napple\norange\nbanana" | sort | uniq -u

# Combining Counts into a New File
echo -e "apple\nbanana\napple\norange\nbanana" | sort | uniq -c > output.txt
cat output.txt
```

#### Ignoring Case with `-i` (5) and Specifying a Field with `-f` (6)
```bash
# Ignoring Case with `-i`
echo -e "Apple\nbanana\napple\norange\nbanana" | sort | uniq -i

# Specifying a Field with `-f`
echo -e "apple banana\napple orange\nbanana apple" | sort | uniq -f 1
```

#### Specifying a Character with `-s` (7)
```bash
# Specifying a Character with `-s`
echo -e "applbanana\nappleorange\nbananaapple" | sort | uniq -s 3
```

These examples cover the basic usage and various options of the `uniq` command, organized alphabetically by functionality.

