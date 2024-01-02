# GPG Setup on different OS

## GPG Setup on Windows 10 Sucks

1. Uninstall the ancient OpenSSH version delivered by windows 10
   `> Remove-WindowsCapability -Name "OpenSSH.Client~~~~0.0.1.0" -Online`

2. Install a more recent version from the [github repo](https://github.com/PowerShell/Win32-OpenSSH/releases/)

3. Install GPG4Win
4. Make sure that the following entries exist in your User Environment

```
Path: C:\Program Files\OpenSSH
Path: C:\...\gpg4win\current\Gpg4win\bin
SSH_AUTH_SOCK: \\.\pipe\ssh-pageant
```

5. Import your public key `gpg --import key.gpg`

6. trust your key `gpg --edit-key YOURKEYID` (you can list your keys by running `gpg -k --with-keygrip`)
   `> trust` & `> 5`

7. Configure GPG `C:\Users\sk\AppData\Roaming\gnupg\gpg.conf`
   add a new line `use-agent`

8. Configure GPG-Agent `C:\Users\sk\AppData\Roaming\gnupg\gpg-agent.conf`
   add the two lines
   ```
   enable-ssh-support
   enable-putty-support
   ```
9. Restart the Agent

   ```
   gpg-connect-agent killagent /bye
   gpg-connect-agent /bye
   ```

10. Setup [wsl ssh pAgeant](https://github.com/benpye/wsl-ssh-pageant/releases)

    - Download the release
    - place it in a folder you like `C:\wsl-ssh-pageant\wsl-ssh-pageant-amd64.exe`
    - create a link in your startup folder `%appdata%\Microsoft\Windows\Start Menu\Programs\Startup`
      - change the target to `C:\wsl-ssh-pageant\wsl-ssh-pageant-amd64.exe --wsl C:\wsl-ssh-pageant\ssh-agent.sock --winssh ssh-pageant --systray`
    - start it or reboot ;)

11. Check `ssh-add -L`, it should show your ssh key

## MacOS

### gpg-agent

Add pinentry tool for macos (install via Brew)

`pinentry-program /usr/local/bin/pinentry-mac`
