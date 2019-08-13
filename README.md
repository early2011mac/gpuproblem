# gpuproblem
This was the problem I had been facing : https://apple.stackexchange.com/questions/267581/gpu-problem-boot-hangs-on-grey-screen, for which I was helped by one of the approaches suggested in the answer https://apple.stackexchange.com/a/360443/300460 by this user https://apple.stackexchange.com/users/251859/langlangc. I followed it first when I had this issue in last Sep2018.

It was a very detailed answer with two different approaches - software & hardware modes - across so many different versions of OSX. 
So struggled a bit to figure out the exact delta steps to be performed while upgrading next time for OSX Security update 2019-003 from 10.13.6.

So, I wanted to come up with a few scripts that abstract many of those steps to make it easier for those users who might come across this issue for a second time. 

Once again, huge thanks to langlangc for the original one.

## Delta steps

1. Single-User Mode
   1. Restart in single-user mode by press&hold Cmd+S (Cmd+R won't load giving the white screen)
   2. Run `sh force-iGPU-boot.sh`
   3. Run `reboot`
2. Recovery mode
   1. Restart in recovery mode by press&hold Cmd+r
   2. Run `force-iGPU-boot_without_sudo.sh`
   3. Run `reboot`
3. Single-User Mode
   1. Restart in single-user mode by press&hold Cmd+s
   2. Ensure an existing `/System/Library/Extensions-off` folder is removed after taking a backup
   3. Run `move_out_amd_kext.sh`
   4. Run `reboot`
4. Recovery mode 
   1. Run `csrutil enable` 
   2. Run `reboot`
