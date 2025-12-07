@interface TRICEnvironmentManager
+ (BOOL)validateTrialPath:(id)path requireUserPath:(BOOL)userPath;
+ (const)getLoginPasswd;
+ (id)envToString:(int64_t)string;
+ (int)checkDeviceUnlocked;
+ (int)checkIfConnectedToVPN:(BOOL *)n;
+ (int)resetDaemonProcess;
+ (int64_t)currentEnv;
@end

@implementation TRICEnvironmentManager

+ (BOOL)validateTrialPath:(id)path requireUserPath:(BOOL)userPath
{
  userPathCopy = userPath;
  pathComponents = [path pathComponents];
  if (pathComponents)
  {
    trialDaemonUserName = [self trialDaemonUserName];
    if (userPathCopy && ![pathComponents containsObject:trialDaemonUserName])
    {
      v9 = 0;
    }

    else
    {
      lastObject = [pathComponents lastObject];
      v9 = [lastObject isEqualToString:@"Trial"];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (int)resetDaemonProcess
{
  v6[2] = *MEMORY[0x277D85DE8];
  if (geteuid())
  {
    [TRICPrinter printNewlineAndLogErrorWithFormat:@"Warning: Running reset without root access. Please ensure you are running reset as root."];
  }

  [TRICCommandRunner runCommand:@"/bin/launchctl" withArgs:&unk_28436FAB0];
  if (getuid())
  {
    result = [TRICCommandRunner runCommand:@"/usr/bin/killall" withArgs:&unk_28436FAC8];
    if (!result)
    {
      return result;
    }

    v3 = __error();
    [TRICPrinter printNewlineAndLogErrorWithFormat:@"Error killing triald. Error: %s", strerror(*v3)];
  }

  else
  {
    v6[0] = @"unload";
    v6[1] = @"/System/Library/LaunchDaemons/com.apple.triald.plist";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
    v5 = [TRICCommandRunner runCommand:@"/bin/launchctl" withArgs:v4];

    if (!v5)
    {
      return 0;
    }

    [TRICPrinter printNewlineAndLogErrorWithFormat:@"Error unloading triald at %@", @"/System/Library/LaunchDaemons/com.apple.triald.plist"];
  }

  return 1;
}

+ (int)checkDeviceUnlocked
{
  result = [MEMORY[0x277D42598] isClassCLocked];
  if (result)
  {
    fwrite("Error: Device has not been unlocked since reboot, please unlock to use trialcontroller\n", 0x57uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 3;
  }

  return result;
}

+ (int64_t)currentEnv
{
  v11[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"read";
  v11[1] = @"com.apple.triald";
  v11[2] = @"com.apple.triald.ck.serverEnvironment";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  v9 = 0;
  v10 = 0;
  v3 = [TRICCommandRunner runCommandAsTrialDaemonUserName:@"/usr/bin/defaults" withArgs:v2 output:&v10 error:&v9];
  v4 = v10;
  v5 = v9;

  if (v3)
  {

    v4 = 0;
  }

  if ([v4 length])
  {
    v8 = 0;
    if ([TRIMisc convertFromString:v4 usingBase:10 toI64:&v8])
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    [TRICPrinter printNewlineAndLogErrorWithFormat:@"Unable to read defaults. Error: %@", 0];
  }

  return v6;
}

+ (int)checkIfConnectedToVPN:(BOOL *)n
{
  v8 = 0;
  v9 = 0;
  v4 = [TRICCommandRunner runCommand:@"/sbin/ifconfig" withArgs:&unk_28436FAE0 output:&v9 error:&v8];
  v5 = v9;
  v6 = v8;
  *n = [v5 rangeOfString:@"VPN: Corporate"] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

+ (id)envToString:(int64_t)string
{
  if ((string - 1) > 4)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_27885DF00[string - 1];
  }
}

+ (const)getLoginPasswd
{
  *__error() = 0;
  result = getpwnam("mobile");
  if (result)
  {
    if (result->pw_uid)
    {
      return result;
    }

    fwrite("Warning: got pwInfo for uid=0.\n", 0x1FuLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  else
  {
    v3 = *MEMORY[0x277D85DF8];
    v4 = __error();
    v5 = strerror(*v4);
    v6 = __error();
    fprintf(v3, "Warning: failed to get pwInfo: %s (%d)\n", v5, *v6);
  }

  return 0;
}

@end