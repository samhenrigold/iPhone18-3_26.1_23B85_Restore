@interface DMEnvironment
+ (BOOL)isBuildVersion:(id)version equalToBuildVersion:(id)buildVersion;
+ (DMEnvironment)sharedInstance;
- (BOOL)deviceModeIsSharediPad;
- (BOOL)shouldImposePluginArtificialHang;
- (BOOL)shouldWatchdogPluginsAfterTimeout;
- (BOOL)suppressMigrationPluginWrapperExitMarkerPref;
- (BOOL)userSessionIsLoginWindow;
- (BOOL)waitForExecutePluginsSignalMarkerPref;
- (id)buildVersion;
- (id)context;
- (id)continuousIntegrationMarkerPref;
- (id)inducedPluginFailures;
- (id)lastBuildVersionPref;
- (id)lastMigrationResultsPref;
- (id)migrationPluginResultsPref;
- (id)migrationRebootCountPref;
- (id)userDataDispositionPref;
- (unint64_t)migrationRebootCount;
- (void)clearContext;
- (void)setContext:(id)context;
- (void)setLastBuildVersionPref:(id)pref;
- (void)setLastMigrationResultsPref:(id)pref;
- (void)setMigrationPluginResultsPref:(id)pref;
- (void)setMigrationRebootCount:(unint64_t)count;
- (void)setMigrationRebootCountPref:(id)pref;
- (void)setUserDataDispositionPref:(id)pref;
@end

@implementation DMEnvironment

+ (DMEnvironment)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[DMEnvironment sharedInstance];
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __31__DMEnvironment_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance = objc_alloc_init(DMEnvironment);

  return MEMORY[0x2821F96F8]();
}

- (id)lastBuildVersionPref
{
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF030];
  CFPreferencesSynchronize(@"com.apple.migration", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  v4 = CFPreferencesCopyValue(@"LastSystemVersion", @"com.apple.migration", v2, v3);

  return v4;
}

- (void)setLastBuildVersionPref:(id)pref
{
  v3 = *MEMORY[0x277CBF040];
  v4 = *MEMORY[0x277CBF030];
  CFPreferencesSetValue(@"LastSystemVersion", pref, @"com.apple.migration", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);

  CFPreferencesSynchronize(@"com.apple.migration", v3, v4);
}

- (id)lastMigrationResultsPref
{
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF030];
  CFPreferencesSynchronize(@"com.apple.migration", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  v4 = CFPreferencesCopyValue(@"DMLastMigrationResults", @"com.apple.migration", v2, v3);

  return v4;
}

- (void)setLastMigrationResultsPref:(id)pref
{
  v3 = *MEMORY[0x277CBF040];
  v4 = *MEMORY[0x277CBF030];
  CFPreferencesSetValue(@"DMLastMigrationResults", pref, @"com.apple.migration", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);

  CFPreferencesSynchronize(@"com.apple.migration", v3, v4);
}

- (id)userDataDispositionPref
{
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF030];
  CFPreferencesSynchronize(@"com.apple.migration", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  v4 = CFPreferencesCopyValue(@"DMUserDataDisposition", @"com.apple.migration", v2, v3);

  return v4;
}

- (void)setUserDataDispositionPref:(id)pref
{
  v3 = *MEMORY[0x277CBF040];
  v4 = *MEMORY[0x277CBF030];
  CFPreferencesSetValue(@"DMUserDataDisposition", pref, @"com.apple.migration", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);

  CFPreferencesSynchronize(@"com.apple.migration", v3, v4);
}

- (id)continuousIntegrationMarkerPref
{
  CFPreferencesAppSynchronize(@"com.apple.migration");
  v2 = CFPreferencesCopyAppValue(@"com.apple.datamigrator.continuous-integration", @"com.apple.migration");

  return v2;
}

- (BOOL)waitForExecutePluginsSignalMarkerPref
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.migration");
  if (CFPreferencesGetAppBooleanValue(@"DMWaitForExecutePluginsSignal", @"com.apple.migration", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (BOOL)suppressMigrationPluginWrapperExitMarkerPref
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.migration");
  if (CFPreferencesGetAppBooleanValue(@"DMSuppressMigrationPluginWrapperExit", @"com.apple.migration", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (id)migrationPluginResultsPref
{
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF030];
  CFPreferencesSynchronize(@"com.apple.migration", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  v4 = CFPreferencesCopyValue(@"DMMigrationPluginResults", @"com.apple.migration", v2, v3);

  return v4;
}

- (void)setMigrationPluginResultsPref:(id)pref
{
  v3 = *MEMORY[0x277CBF040];
  v4 = *MEMORY[0x277CBF030];
  CFPreferencesSetValue(@"DMMigrationPluginResults", pref, @"com.apple.migration", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);

  CFPreferencesSynchronize(@"com.apple.migration", v3, v4);
}

- (BOOL)deviceModeIsSharediPad
{
  v11 = MKBUserTypeDeviceMode();
  _DMLogFunc(v2, 7, @"MKBUserTypeDeviceMode returned error %@ result %@", v3, v4, v5, v6, v7, 0);
  v8 = [v11 objectForKeyedSubscript:*MEMORY[0x277D28AD0]];
  v9 = [v8 isEqualToString:*MEMORY[0x277D28AE0]];

  return v9;
}

- (BOOL)userSessionIsLoginWindow
{
  IsLoginWindow = MKBUserSessionIsLoginWindow();
  v10 = [MEMORY[0x277CCABB0] numberWithBool:IsLoginWindow];
  _DMLogFunc(v2, 7, @"MKBUserSessionIsLoginWindow returned error %@ result %@", v4, v5, v6, v7, v8, 0);

  return IsLoginWindow;
}

- (BOOL)shouldWatchdogPluginsAfterTimeout
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.migration");
  return CFPreferencesGetAppBooleanValue(@"DMWatchdogPluginsAfterTimeout", @"com.apple.migration", &keyExistsAndHasValidFormat) || keyExistsAndHasValidFormat == 0;
}

- (unint64_t)migrationRebootCount
{
  migrationRebootCountPref = [(DMEnvironment *)self migrationRebootCountPref];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    buildVersion = [(DMEnvironment *)self buildVersion];
    dm_migrationRebootCountPref_buildVersion = [migrationRebootCountPref dm_migrationRebootCountPref_buildVersion];
    v6 = [DMEnvironment isBuildVersion:buildVersion equalToBuildVersion:dm_migrationRebootCountPref_buildVersion];

    if (v6)
    {
      dm_migrationRebootCountPref_rebootCount = [migrationRebootCountPref dm_migrationRebootCountPref_rebootCount];
    }

    else
    {
      dm_migrationRebootCountPref_rebootCount = 0;
    }
  }

  else
  {
    dm_migrationRebootCountPref_rebootCount = 0;
  }

  return dm_migrationRebootCountPref_rebootCount;
}

- (void)setMigrationRebootCount:(unint64_t)count
{
  v5 = MEMORY[0x277CBEAC0];
  buildVersion = [(DMEnvironment *)self buildVersion];
  v7 = [v5 dm_migrationRebootCountPrefWithRebootCount:count buildVersion:buildVersion];
  [(DMEnvironment *)self setMigrationRebootCountPref:v7];

  [(DMEnvironment *)self blockUntilPreferencesFlush];
}

- (id)migrationRebootCountPref
{
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF030];
  CFPreferencesSynchronize(@"com.apple.migration", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  v4 = CFPreferencesCopyValue(@"DMMigrationRebootCount", @"com.apple.migration", v2, v3);

  return v4;
}

- (void)setMigrationRebootCountPref:(id)pref
{
  v3 = *MEMORY[0x277CBF040];
  v4 = *MEMORY[0x277CBF030];
  CFPreferencesSetValue(@"DMMigrationRebootCount", pref, @"com.apple.migration", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);

  CFPreferencesSynchronize(@"com.apple.migration", v3, v4);
}

- (BOOL)shouldImposePluginArtificialHang
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.migration");
  if (CFPreferencesGetAppBooleanValue(@"DMImposePluginArtificialHang", @"com.apple.migration", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (id)inducedPluginFailures
{
  v2 = CFPreferencesCopyValue(@"DMInducedPluginFailures", @"com.apple.migration", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);

  return v2;
}

- (id)context
{
  if (DMContextPath_onceToken != -1)
  {
    [DMEnvironment(DMContext) context];
  }

  v2 = CFURLCreateWithFileSystemPath(0, DMContextPath_retval, kCFURLPOSIXPathStyle, 0);
  if (v2)
  {
    v3 = v2;
    v4 = CFReadStreamCreateWithFile(0, v2);
    if (v4)
    {
      v5 = v4;
      if (CFReadStreamOpen(v4))
      {
        v6 = CFPropertyListCreateWithStream(0, v5, 0, 0, 0, 0);
        v7 = v6;
        if (v6)
        {
          v8 = CFGetTypeID(v6);
          if (v8 != CFDictionaryGetTypeID())
          {
            CFRelease(v7);
            v7 = 0;
          }
        }

        CFReadStreamClose(v5);
      }

      else
      {
        v7 = 0;
      }

      CFRelease(v5);
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setContext:(id)context
{
  propertyList = context;
  _DMLogFunc(v3, 7, @"Setting context to %@", v4, v5, v6, v7, v8, propertyList);
  v9 = getpwnam("mobile");
  if (!v9)
  {
    v32 = @"Couldn't get user info for the mobile user";
LABEL_16:
    _DMLogFunc(v3, 3, v32, v10, v11, v12, v13, v14, v44);
    goto LABEL_23;
  }

  v15 = v9;
  if (DMContextPath_onceToken != -1)
  {
    [DMEnvironment(DMContext) context];
  }

  v16 = CFURLCreateWithFileSystemPath(0, DMContextPath_retval, kCFURLPOSIXPathStyle, 0);
  if (!v16)
  {
    if (DMContextPath_onceToken != -1)
    {
      [DMEnvironment(DMContext) context];
    }

    v44 = DMContextPath_retval;
    v32 = @"Couldn't create a URL for the path %@";
    goto LABEL_16;
  }

  v17 = v16;
  v18 = CFWriteStreamCreateWithFile(0, v16);
  if (v18)
  {
    v19 = v18;
    if (CFWriteStreamOpen(v18))
    {
      if (!CFPropertyListWrite(propertyList, v19, kCFPropertyListBinaryFormat_v1_0, 0, 0))
      {
        _DMLogFunc(v3, 3, @"Error writing context property list to stream.", v20, v21, v22, v23, v24, v44);
      }

      if (chown("/var/mobile/Library/Preferences/com.apple.DataMigration.plist", v15->pw_uid, v15->pw_gid))
      {
        v25 = __error();
        v26 = strerror(*v25);
        _DMLogFunc(v3, 3, @"Couldn't chown the preferences file to the mobile user: %s", v27, v28, v29, v30, v31, v26);
      }

      CFWriteStreamClose(v19);
    }

    else
    {
      v38 = CFWriteStreamCopyError(v19);
      _DMLogFunc(v3, 3, @"Couldn't open the stream at %@: %@", v39, v40, v41, v42, v43, v17);
      if (v38)
      {
        CFRelease(v38);
      }
    }
  }

  else
  {
    v19 = CFWriteStreamCopyError(0);
    _DMLogFunc(v3, 3, @"Couldn't create a stream for the file at %@: %@", v33, v34, v35, v36, v37, v17);
    if (!v19)
    {
      goto LABEL_22;
    }
  }

  CFRelease(v19);
LABEL_22:
  CFRelease(v17);
LABEL_23:
}

- (void)clearContext
{
  if (DMContextPathCStr_onceToken != -1)
  {
    [DMEnvironment(DMContext) clearContext];
  }

  if (unlink(DMContextPathCStr_retval))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInt:*__error()];
    v14 = v8;
    if (DMContextPathCStr_onceToken != -1)
    {
      [DMEnvironment(DMContext) clearContext];
      v8 = v14;
    }

    _DMLogFunc(v2, 3, @"clearContext failed with errno %@ for path '%s'", v9, v10, v11, v12, v13, v8);
  }

  else
  {
    if (DMContextPathCStr_onceToken != -1)
    {
      [DMEnvironment(DMContext) clearContext];
    }

    _DMLogFunc(v2, 7, @"clearContext succeeded for path '%s'", v3, v4, v5, v6, v7, DMContextPathCStr_retval);
  }
}

- (id)buildVersion
{
  v2 = _CFCopySystemVersionDictionary();
  if (v2)
  {
    v3 = v2;
    v4 = [CFDictionaryGetValue(v2 *MEMORY[0x277CBEC70])];
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isBuildVersion:(id)version equalToBuildVersion:(id)buildVersion
{
  result = 0;
  if (version)
  {
    if (buildVersion)
    {
      return [version compare:buildVersion options:1] == 0;
    }
  }

  return result;
}

@end