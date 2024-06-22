# Windows Cleanup Utility v1.0.bat

## Description
This is a Windows Cleanup Utility compiled as a batch `.bat` file .This script automates the cleanup process for temporary files, the Recycle Bin, temporary installation files, Windows update cache, log files, and performs disk checking and defragmentation for the C: drive.

## Usage
- You can either clone this repository to your PC using the command -
 
  ```python
  git clone https://github.com/jubinjacob03/cleanup_utility.bat-Win.git
  ```
- or directly download the <code>**cleanup_utility-v1_0.bat**</code> file to your PC
1. Double click the .bat file to `execute` the script or Right click the file and select `Open` . For all features to work properly **run the script as an administrator.**
2. Wait for the tool finish all the function executions.

## Script Details

### Overview
> [!NOTE]
> This script is designed to automate the cleanup process for various types of files and perform disk maintenance tasks.

### Processes
1. **Cleanup of Temporary Files:**
   > Removes temporary files from both **USER** and **SYSTEM** temporary directories.
   - Command: `del /q /f /s %TEMP%\*`, `del /q /f /s %SystemRoot%\Temp\*`
---

2. **Emptying Recycle Bin:**
   > Clears / Empty the Recycle Bin.
   - Command: `rd /s /q C:\$Recycle.bin`
---

3. **Removal of Temporary Installation Files:**
   > Deletes temporary installation files from the Windows Installer directory. 
   - Command: `del /q /f /s "C:\Windows\Installer\*.tmp"`
  > [!IMPORTANT]
  > This removes temporary installer files and cache used by an application at time of its installations. **( Not required after app installation )**
---

4. **Clearing Windows Update Cache:**
   > Cleans up the Windows update cache.
   - Command: `del /q /f /s %SystemRoot%\SoftwareDistribution\Download\*`
--- 

5. **Cleaning up Windows Log Files:**
   > Removes log files from Windows logs directories.
   - Commands:
     - `del /q /f /s %SystemRoot%\Logs\*`
     - `del /q /f /s %SystemRoot%\System32\LogFiles\*`
---

6. **Disk Checking:**
   > Checks the C: drive for errors and repairs them.
   - Command: `chkdsk C: /f /r`
  > [!CAUTION]
  > Disk Check **cannot run** when, the volume is **in use** by other processes. So you will have to **schedule** it to run on **next system restart** for that give ***Y*** for this prompt ***"  Would you like to schedule this volume to be checked the next time the system restarts? (Y/N)"***
---

7. **Defragmentation:**
   > Defragments the C: drive.
   - Command: `defrag C: /U /V`
---

### Additional Information

- **Version:** 1.0

#### Arguments
- `*` - all files 
- `/q` - execute without prompting for confirmation
- `/f` - perform actions even if the files are read-only ***( incase of Disk Checking*** `/f` - ***attempt to fix any errors found )***
- `/s` - command should apply recursively to all subdirectories 
- `/U` - tells to perform an analysis
- `/V` - makes it verbose,

# Note
- **Ensure to run the script with administrative privileges to perform all the cleanup tasks effectively.**
> [!IMPORTANT]
> **Some files will not be removed as they are either IMPORTANT resources ( Access Denied error ) or are CURRENTLY being USED by other processes.**
