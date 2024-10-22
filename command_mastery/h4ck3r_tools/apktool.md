 Apktool is a powerful tool for reverse engineering Android applications. It allows you to decompile, rebuild, and debug Android apps from their APKs. Below are some common features of `apktool` along with examples that you can run in a Kali Linux terminal.

### Installation
First, make sure you have Apktool installed. You can install it using the following command:
```sh
sudo apt-get update
sudo apt-get install apktool
```

### Basic Commands
1. **Decompiling an APK:**
   ```sh
   apktool d your_app.apk
   ```
   This will create a directory named `your_app` containing the decompiled code and resources of the APK.

2. **Rebuilding an APK:**
   ```sh
   apktool b your_app -o new_app.apk
   ```
   This will take the contents of the `your_app` directory and create a new APK named `new_app.apk`.

3. **Inspecting the APK:**
   ```sh
   apktool if your_app.apk
   ```
   This command provides detailed information about the structure and components of the APK.

4. **Smali/Baksmali Engine:**
   Apktool uses Smali for decompilation and Baksmali for reassembly. You can directly use these tools to work with the Dalvik bytecode:
   ```sh
   smali your_app -o output_dir
   baksmali your_app -o output_dir
   ```

### Example Usage
Here are some example commands demonstrating how to use Apktool in a Kali Linux terminal:

1. **Decompiling an APK:**
   ```sh
   apktool d /path/to/your_app.apk
   ```

2. **Rebuilding an APK:**
   ```sh
   apktool b /path/to/your_app -o /path/to/new_app.apk
   ```

3. **Inspecting the APK:**
   ```sh
   apktool if /path/to/your_app.apk
   ```

4. **Working with Smali and Baksmali:**
   ```sh
   smali your_app -o output_dir
   baksmali your_app -o output_dir
   ```

### Additional Commands
1. **Cleaning the Decompiled APK:**
   ```sh
   apktool clean
   ```
   This command cleans up the decompiled resources by removing unnecessary files and directories.

2. **Building a Signed APK:**
   If you need to sign your recompiled APK, you can use Apktool with additional parameters:
   ```sh
   apktool b /path/to/your_app -o /path/to/new_app.apk --use-aapt2
   ```
   `--use-aapt2` is recommended for modern Android applications.

3. **Viewing the Manifest:**
   ```sh
   aapt dump xmltree your_app.apk AndroidManifest.xml
   ```
   This command shows the contents of the manifest file inside the APK.

### Conclusion
Apktool provides a versatile set of tools for working with Android applications, both in decompiled and compiled states. By understanding these commands and options, you can effectively use Apktool to reverse engineer, modify, and repackage Android apps.

