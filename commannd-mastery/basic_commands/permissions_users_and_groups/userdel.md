 The `userdel` command in Kali Linux is used to delete a user account and optionally remove the home directory associated with that user. Below are the features and examples of using the `userdel` command:

### Features of `userdel` Command:
1. **Delete User Account**: Removes the specified user account from the system.
2. **Remove Home Directory**: Optionally removes the home directory of the user.
3. **Force Removal**: Can forcefully remove a user even if they are currently logged in.
4. **Interactive Mode**: Provides prompts for confirmation before deletion.

### Examples:

#### Basic Usage:
To delete a user named `username` and keep their home directory, use the following command:
```bash
sudo userdel username
```
This will remove the user account but leave the `/home/username` directory intact.

#### Removing Home Directory:
If you want to delete both the user account and its home directory, you can use the `-r` option:
```bash
sudo userdel -r username
```
This command will remove the user account along with the `/home/username` directory.

#### Force Removal (if user is logged in):
If you want to forcefully delete a user even if they are currently logged in, use the `-f` option:
```bash
sudo userdel -f username
```
This command will forcibly remove the user account regardless of whether they are logged in or not.

#### Interactive Mode (Confirmation):
By default, `userdel` will prompt for confirmation before deleting the user:
```bash
sudo userdel username
```
You will be asked to confirm the deletion. To skip this confirmation and proceed directly with the deletion, you can use the `-i` option:
```bash
sudo userdel -i username
```
This command will not prompt for confirmation and will delete the user account immediately.

### Examples:
1. **Delete a User Without Removing Home Directory:**
   ```bash
   sudo userdel username
   ```
2. **Delete a User Including the Home Directory:**
   ```bash
   sudo userdel -r username
   ```
3. **Forcefully Delete a User (if logged in):**
   ```bash
   sudo userdel -f username
   ```
4. **Interactively Delete a

