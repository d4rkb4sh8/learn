 The `mkdir` (make directory) command in Kali Linux is used to create directories. Here are some of its features along with examples:

### Basic Usage
The most common use of `mkdir` is to create a new directory.

```sh
mkdir my_new_directory
```

This will create a directory named "my_new_directory" in the current working directory.

### Create Multiple Directories
You can create multiple directories with a single command by providing several names separated by spaces.

```sh
mkdir dir1 dir2 dir3
```

This will create three directories: `dir1`, `dir2`, and `dir3`.

### Create Parent Directories
The `-p` flag can be used to create parent directories if they do not already exist. This is useful for creating deeply nested directories.

```sh
mkdir -p my_new_project/src
```

This will create the directory `my_new_project` and a subdirectory named `src` within it.

### Create with Permissions
You can specify permissions (mode) for the new directory using the `-m` flag. The mode is specified in octal notation (e.g., 755, 644).

```sh
mkdir -m 755 my_new_directory
```

### Create with Parent Permissions
If you want to create a directory and its parent directories with specific permissions, you can use the `-vp` flags together.

```sh
mkdir -vp 755 /path/to/my_new_directory
```

This will create `/path/to/my_new_directory` if it doesn't exist and set its permissions to 755.

### Examples
Here are some practical examples:

1. **Create a single directory:**
   ```sh
   mkdir new_dir
   ```

2. **Create multiple directories:**
   ```sh
   mkdir dir1 dir2 dir3
   ```

3. **Create parent directories (with `-p`):**
   ```sh
   mkdir -p project/data
   ```

4. **Create a directory with specific permissions:**
   ```sh
   mkdir -m 750 my_dir
   ```

5. **Create multiple directories and set their parent directories if they don't exist:**
   ```sh
   mkdir -p dir1/subdir1 dir2/subdir2
   ```

### Common Pitfalls
- If you try to create a directory that already exists, `mkdir` will not overwrite it unless you use the `--force` (`-f`) flag, which bypasses the check.
  ```sh
  mkdir my_existing_dir  # This will fail if my_existing_dir already exists
  mkdir -p my_existing_dir  # This will create parent directories if they don't exist
  ```

By understanding these features and examples, you can efficiently manage your directory structure in Kali Linux using the `mkdir` command.

