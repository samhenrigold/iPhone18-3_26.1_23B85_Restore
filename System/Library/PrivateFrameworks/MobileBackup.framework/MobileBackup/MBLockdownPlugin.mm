@interface MBLockdownPlugin
- (id)_restoreLockdownKeysWithEngine:(id)engine;
- (id)_savePurpleBuddyRestoreState:(id)state persona:(id)persona;
- (id)_setLockdownValue:(id)value forDomain:(id)domain key:(id)key connection:(id)connection;
- (id)_setPurpleBuddyRestoreState:(id)state withEngine:(id)engine;
- (id)endedBackupWithEngine:(id)engine error:(id)error;
- (id)endedRestoreWithPolicy:(id)policy engine:(id)engine error:(id)error;
- (id)endingRestoreWithPolicy:(id)policy engine:(id)engine;
- (id)preparingBackupWithEngine:(id)engine;
- (id)startingRestoreWithPolicy:(id)policy engine:(id)engine;
@end

@implementation MBLockdownPlugin

- (id)preparingBackupWithEngine:(id)engine
{
  engineCopy = engine;
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Backing up lockdown keys", buf, 2u);
    _MBLog(@"Df", "Backing up lockdown keys");
  }

  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Connecting to lockdown", buf, 2u);
    _MBLog(@"Db", "Connecting to lockdown");
  }

  v54 = +[MBLockdown connect];
  if (v54)
  {
    v53 = [NSMutableDictionary dictionaryWithCapacity:0];
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Copying lockdown keys", buf, 2u);
      _MBLog(@"Df", "Copying lockdown keys");
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v6 = sub_1001490C0();
    v7 = [v6 countByEnumeratingWithState:&v71 objects:v83 count:16];
    if (v7)
    {
      v8 = *v72;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v72 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v71 + 1) + 8 * i);
          v11 = sub_1001490C0();
          v12 = [v11 objectForKeyedSubscript:v10];

          v13 = MBGetGestaltValueForKey();
          v14 = MBGetDefaultLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v80 = v10;
            v81 = 2112;
            v82 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
            _MBLog(@"Df", "%@: %@", v10, v13);
          }

          if (v13)
          {
            [v53 setObject:v13 forKeyedSubscript:v10];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v71 objects:v83 count:16];
      }

      while (v7);
    }

    if ([engineCopy backsUpPrimaryAccount])
    {
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      obj = [NSSet setWithObjects:@"com.apple.Accessibility", @"com.apple.mobile.data_sync", @"com.apple.mobile.iTunes.accessories", @"com.apple.MobileDeviceCrashCopy", @"com.apple.TerminalFlashr", 0];
      v46 = [obj countByEnumeratingWithState:&v67 objects:v78 count:16];
      if (v46)
      {
        v45 = *v68;
        do
        {
          for (j = 0; j != v46; j = j + 1)
          {
            if (*v68 != v45)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v67 + 1) + 8 * j);
            v16 = MBGetDefaultLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v80 = v15;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Copying lockdown domain %{public}@", buf, 0xCu);
              _MBLog(@"Df", "Copying lockdown domain %{public}@", v15);
            }

            v47 = v15;

            v17 = [v54 objectForDomain:v15 andKey:0];
            v49 = v17;
            if (v17)
            {
              v65 = 0u;
              v66 = 0u;
              v63 = 0u;
              v64 = 0u;
              v18 = v17;
              v19 = [v18 countByEnumeratingWithState:&v63 objects:v77 count:16];
              if (v19)
              {
                v20 = *v64;
                do
                {
                  for (k = 0; k != v19; k = k + 1)
                  {
                    if (*v64 != v20)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v22 = *(*(&v63 + 1) + 8 * k);
                    v23 = [v18 objectForKeyedSubscript:v22];
                    v24 = MBGetDefaultLog();
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v80 = v22;
                      v81 = 2112;
                      v82 = v23;
                      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
                      _MBLog(@"Df", "%@: %@", v22, v23);
                    }
                  }

                  v19 = [v18 countByEnumeratingWithState:&v63 objects:v77 count:16];
                }

                while (v19);
              }

              [v53 setObject:v18 forKeyedSubscript:v47];
            }

            else
            {
              if (MBIsInternalInstall() && !dword_10042182C && !atomic_fetch_add_explicit(&dword_10042182C, 1u, memory_order_relaxed))
              {
                v25 = MBGetDefaultLog();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412290;
                  v80 = v15;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "Failed to copy lockdown domain: %@", buf, 0xCu);
                  _MBLog(@"F ", "Failed to copy lockdown domain: %@", v15);
                }
              }

              v26 = MBGetDefaultLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v80 = v15;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to copy lockdown domain %{public}@", buf, 0xCu);
                _MBLog(@"E ", "Failed to copy lockdown domain %{public}@", v15);
              }
            }
          }

          v46 = [obj countByEnumeratingWithState:&v67 objects:v78 count:16];
        }

        while (v46);
      }

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v50 = [&off_1003E1E88 countByEnumeratingWithState:&v59 objects:v76 count:16];
      if (v50)
      {
        v48 = *v60;
        do
        {
          for (m = 0; m != v50; m = m + 1)
          {
            if (*v60 != v48)
            {
              objc_enumerationMutation(&off_1003E1E88);
            }

            v27 = *(*(&v59 + 1) + 8 * m);
            v28 = MBGetDefaultLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v80 = v27;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Copying keys from lockdown domain %{public}@", buf, 0xCu);
              _MBLog(@"Df", "Copying keys from lockdown domain %{public}@", v27);
            }

            v29 = +[NSMutableDictionary dictionary];
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v30 = [&off_1003E1E88 objectForKeyedSubscript:v27];
            v31 = [v30 countByEnumeratingWithState:&v55 objects:v75 count:16];
            if (v31)
            {
              v32 = *v56;
              do
              {
                for (n = 0; n != v31; n = n + 1)
                {
                  if (*v56 != v32)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v34 = *(*(&v55 + 1) + 8 * n);
                  v35 = [v54 objectForDomain:v27 andKey:v34];
                  v36 = MBGetDefaultLog();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v80 = v34;
                    v81 = 2112;
                    v82 = v35;
                    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
                    _MBLog(@"Df", "%@: %@", v34, v35);
                  }

                  if (v35)
                  {
                    [v29 setObject:v35 forKeyedSubscript:v34];
                  }
                }

                v31 = [v30 countByEnumeratingWithState:&v55 objects:v75 count:16];
              }

              while (v31);
            }

            [v53 setObject:v29 forKeyedSubscript:v27];
          }

          v50 = [&off_1003E1E88 countByEnumeratingWithState:&v59 objects:v76 count:16];
        }

        while (v50);
      }
    }

    v39 = MBGetDefaultLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "Disconnecting from lockdown", buf, 2u);
      _MBLog(@"Db", "Disconnecting from lockdown");
    }

    [v54 disconnect];
    v40 = MBGetDefaultLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v80 = v53;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Saving lockdown keys in manifest properties: %@", buf, 0xCu);
      _MBLog(@"I ", "Saving lockdown keys in manifest properties: %@", v53);
    }

    properties = [engineCopy properties];
    [properties setLockdownKeys:v53];

    v38 = 0;
  }

  else
  {
    if (MBIsInternalInstall() && !dword_100421828 && !atomic_fetch_add_explicit(&dword_100421828, 1u, memory_order_relaxed))
    {
      v37 = MBGetDefaultLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_FAULT, "Failed to connect to lockdown", buf, 2u);
        _MBLog(@"F ", "Failed to connect to lockdown");
      }
    }

    v38 = [MBError errorWithCode:1 format:@"Unable to connect to lockdown to backup keys"];
  }

  return v38;
}

- (id)_setLockdownValue:(id)value forDomain:(id)domain key:(id)key connection:(id)connection
{
  valueCopy = value;
  domainCopy = domain;
  keyCopy = key;
  connectionCopy = connection;
  v13 = connectionCopy;
  if (connectionCopy)
  {
    if (valueCopy)
    {
      v20 = 0;
      v14 = [connectionCopy setObject:valueCopy forDomain:domainCopy andKey:keyCopy withError:&v20];
      v15 = v20;
    }

    else
    {
      v19 = 0;
      v14 = [connectionCopy removeObjectWithDomain:domainCopy andKey:keyCopy withError:&v19];
      v15 = v19;
    }

    v17 = v15;
    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v17 = v17;
      v16 = v17;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)endedBackupWithEngine:(id)engine error:(id)error
{
  engineCopy = engine;
  errorCopy = error;
  if ([engineCopy backsUpPrimaryAccount] && (objc_msgSend(engineCopy, "isDeviceTransferEngine") & 1) == 0)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Connecting to lockdown", buf, 2u);
      _MBLog(@"Db", "Connecting to lockdown");
    }

    v9 = +[MBLockdown connect];
    if (v9)
    {
      *buf = 0;
      v30 = buf;
      v31 = 0x3032000000;
      v32 = sub_10014996C;
      v33 = sub_10014997C;
      v34 = 0;
      if (errorCopy && ([MBError isError:errorCopy withCode:500]& 1) == 0)
      {
        self = 0;
        v25 = 1;
      }

      else
      {
        v10 = +[NSTimeZone systemTimeZone];
        abbreviation = [v10 abbreviation];

        if ([engineCopy isCloudKitEngine])
        {
          v12 = MBGetDefaultLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *v35 = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Getting last backup date from the CloudKit engine", v35, 2u);
            _MBLog(@"Db", "Getting last backup date from the CloudKit engine");
          }

          v13 = engineCopy;
          cache = [v13 cache];
          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = sub_100149984;
          v28[3] = &unk_1003BFC08;
          v28[4] = buf;
          v15 = [cache enumerateSnapshots:v28];
          v16 = @"LastCloudBackupDate";
          v17 = @"LastCloudBackupTZ";
        }

        else
        {
          v19 = MBGetDefaultLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *v35 = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Using the current date as the last backup", v35, 2u);
            _MBLog(@"Db", "Using the current date as the last backup");
          }

          v13 = +[NSDate date];
          [v13 timeIntervalSinceReferenceDate];
          v21 = [NSNumber numberWithUnsignedLongLong:v20];
          cache = *(v30 + 5);
          *(v30 + 5) = v21;
          v16 = @"LastiTunesBackupDate";
          v17 = @"LastiTunesBackupTZ";
        }

        if (*(v30 + 5))
        {
          v22 = MBGetDefaultLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = *(v30 + 5);
            *v35 = 138412802;
            v36 = v23;
            v37 = 2112;
            v38 = abbreviation;
            v39 = 2112;
            v40 = v16;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Setting last backup date to %@/%@ for key %@", v35, 0x20u);
            _MBLog(@"I ", "Setting last backup date to %@/%@ for key %@", *(v30 + 5), abbreviation, v16);
          }

          v24 = [(MBLockdownPlugin *)self _setLockdownValue:*(v30 + 5) forDomain:@"com.apple.mobile.backup" key:v16 connection:v9];

          if (v24 || ([(MBLockdownPlugin *)self _setLockdownValue:abbreviation forDomain:@"com.apple.mobile.backup" key:v17 connection:v9], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            errorCopy = v24;
            v25 = 1;
            self = errorCopy;
          }

          else
          {
            v25 = 0;
            errorCopy = 0;
          }
        }

        else
        {
          v25 = 0;
        }
      }

      v26 = MBGetDefaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Disconnecting from lockdown", v35, 2u);
        _MBLog(@"Db", "Disconnecting from lockdown");
      }

      [v9 disconnect];
      if (!v25)
      {
        self = 0;
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Unable to connect to lockdown to set PurpleBuddy keys", buf, 2u);
        _MBLog(@"E ", "Unable to connect to lockdown to set PurpleBuddy keys");
      }

      self = 0;
    }
  }

  else
  {
    self = 0;
  }

  return self;
}

- (id)_savePurpleBuddyRestoreState:(id)state persona:(id)persona
{
  stateCopy = state;
  userIncompleteRestoreDirectory = [persona userIncompleteRestoreDirectory];
  v7 = [userIncompleteRestoreDirectory stringByAppendingPathComponent:@"/var/mobile/Library/Preferences/com.apple.purplebuddy.plist"];
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v27 = v7;
    v28 = 2114;
    v29 = stateCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Saving the PurpleBuddy restore state at %{public}@: %{public}@", buf, 0x16u);
    _MBLog(@"Df", "Saving the PurpleBuddy restore state at %{public}@: %{public}@", v7, stateCopy);
  }

  v9 = [NSMutableDictionary dictionaryWithContentsOfFile:v7];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = +[NSMutableDictionary dictionary];
  }

  v12 = v11;

  if (stateCopy)
  {
    [v12 setObject:stateCopy forKeyedSubscript:@"SetupState"];
    [v12 setObject:stateCopy forKeyedSubscript:@"RestoreState"];
  }

  else
  {
    [v12 removeObjectForKey:@"SetupState"];
    [v12 removeObjectForKey:@"RestoreState"];
  }

  stringByDeletingLastPathComponent = [v7 stringByDeletingLastPathComponent];
  v14 = +[NSFileManager defaultManager];
  v25 = 0;
  v15 = [v14 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v25];
  v16 = v25;

  if ((v15 & 1) == 0)
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v27 = stringByDeletingLastPathComponent;
      v28 = 2114;
      v29 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to create the directory at %{public}@: %{public}@", buf, 0x16u);
      _MBLog(@"E ", "Failed to create the directory at %{public}@: %{public}@", stringByDeletingLastPathComponent, v16);
    }
  }

  v18 = [NSURL fileURLWithPath:v7 isDirectory:0];
  v24 = v16;
  v19 = [v12 writeToURL:v18 error:&v24];
  v20 = v24;

  if (v19)
  {
    v21 = 0;
  }

  else
  {
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v27 = v7;
      v28 = 2114;
      v29 = v20;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to saved the PurpleBuddy plist at %{public}@: %{public}@", buf, 0x16u);
      _MBLog(@"E ", "Failed to saved the PurpleBuddy plist at %{public}@: %{public}@", v7, v20);
    }

    v21 = v20;
  }

  return v21;
}

- (id)_setPurpleBuddyRestoreState:(id)state withEngine:(id)engine
{
  stateCopy = state;
  engineCopy = engine;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Connecting to lockdown", buf, 2u);
    _MBLog(@"Db", "Connecting to lockdown");
  }

  v9 = +[MBLockdown connect];
  if (v9)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v18 = @"com.apple.purplebuddy";
      v19 = 2112;
      v20 = @"SetupState";
      v21 = 2112;
      v22 = stateCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting %@ %@ to %@", buf, 0x20u);
      _MBLog(@"Df", "Setting %@ %@ to %@", @"com.apple.purplebuddy", @"SetupState", stateCopy);
    }

    v11 = [(MBLockdownPlugin *)self _setLockdownValue:stateCopy forDomain:@"com.apple.purplebuddy" key:@"SetupState" connection:v9];
    if (!v11)
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v18 = @"com.apple.purplebuddy";
        v19 = 2112;
        v20 = @"RestoreState";
        v21 = 2112;
        v22 = stateCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting %@ %@ to %@", buf, 0x20u);
        _MBLog(@"Df", "Setting %@ %@ to %@", @"com.apple.purplebuddy", @"RestoreState", stateCopy);
      }

      v11 = [(MBLockdownPlugin *)self _setLockdownValue:stateCopy forDomain:@"com.apple.purplebuddy" key:@"RestoreState" connection:v9];
      if (!v11)
      {
        if ([engineCopy isForegroundRestore])
        {
          persona = [engineCopy persona];
          v11 = [(MBLockdownPlugin *)self _savePurpleBuddyRestoreState:stateCopy persona:persona];
        }

        else
        {
          v11 = 0;
        }
      }
    }

    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Disconnecting from lockdown", buf, 2u);
      _MBLog(@"Db", "Disconnecting from lockdown");
    }

    [v9 disconnect];
  }

  else
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to connect to lockdown to set PurpleBuddy keys", buf, 2u);
      _MBLog(@"E ", "Failed to connect to lockdown to set PurpleBuddy keys");
    }

    v11 = [MBError errorWithCode:1 format:@"Unable to connect to lockdown to set PurpleBuddy keys"];
  }

  return v11;
}

- (id)startingRestoreWithPolicy:(id)policy engine:(id)engine
{
  engineCopy = engine;
  if (![engineCopy restoresPrimaryAccount])
  {
    goto LABEL_17;
  }

  if (([engineCopy isServiceEngine] & 1) == 0)
  {
    selfCopy = self;
    v6 = 1;
    while (1)
    {
      v7 = v6;
      v8 = +[FMDFMIPManager sharedInstance];
      lockdownShouldDisableDeviceRestore = [v8 lockdownShouldDisableDeviceRestore];

      v10 = fmdFMIPLastOperationResult;
      v11 = MBGetDefaultLog();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (!v10)
      {
        break;
      }

      if (v12)
      {
        *buf = 134217984;
        v20 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[FMDFMIPManager lockdownShouldDisableDeviceRestore] failed: %ld", buf, 0xCu);
        _MBLog(@"Df", "[FMDFMIPManager lockdownShouldDisableDeviceRestore] failed: %ld", v10);
      }

      v6 = 0;
      if ((v7 & 1) == 0)
      {
        v13 = @"Failed to determine the Find My iPhone state";
        v14 = 1;
LABEL_13:
        v15 = [MBError errorWithCode:v14 format:v13];
        goto LABEL_16;
      }
    }

    self = selfCopy;
    if (v12)
    {
      *buf = 67109120;
      LODWORD(v20) = lockdownShouldDisableDeviceRestore;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[FMDFMIPManager lockdownShouldDisableDeviceRestore] returned %d", buf, 8u);
      _MBLog(@"Df", "[FMDFMIPManager lockdownShouldDisableDeviceRestore] returned %d", lockdownShouldDisableDeviceRestore);
    }

    if (lockdownShouldDisableDeviceRestore)
    {
      v13 = @"Find My iPhone must be disabled before restoring";
      v14 = 211;
      goto LABEL_13;
    }
  }

  if ([engineCopy isServiceEngine])
  {
    v15 = [(MBLockdownPlugin *)self _setPurpleBuddyRestoreState:@"RestoringFromBackup" withEngine:engineCopy];
LABEL_16:
    v16 = v15;
  }

  else
  {
LABEL_17:
    v16 = 0;
  }

  return v16;
}

- (id)endingRestoreWithPolicy:(id)policy engine:(id)engine
{
  engineCopy = engine;
  if (![engineCopy restoresPrimaryAccount])
  {
    v7 = 0;
    goto LABEL_12;
  }

  if ([engineCopy isDeviceTransferEngine])
  {
    v6 = @"RestoredFromDevice";
  }

  else if ([engineCopy isDriveEngine])
  {
    v6 = @"RestoredFromiTunesBackup";
  }

  else
  {
    if (![engineCopy isServiceEngine])
    {
LABEL_10:
      v8 = [(MBLockdownPlugin *)self _restoreLockdownKeysWithEngine:engineCopy];
      goto LABEL_11;
    }

    v6 = @"BackgroundRestoringFromiCloudBackup";
  }

  v8 = [(MBLockdownPlugin *)self _setPurpleBuddyRestoreState:v6 withEngine:engineCopy];
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_11:
  v7 = v8;
LABEL_12:

  return v7;
}

- (id)_restoreLockdownKeysWithEngine:(id)engine
{
  engineCopy = engine;
  settingsContext = [engineCopy settingsContext];
  shouldRestoreSystemFiles = [settingsContext shouldRestoreSystemFiles];

  if (shouldRestoreSystemFiles)
  {
    properties = [engineCopy properties];
    lockdownKeys = [properties lockdownKeys];

    if (lockdownKeys)
    {
      v6 = MBGetDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v83 = lockdownKeys;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Loaded saved lockdown keys: %@", buf, 0xCu);
        _MBLog(@"Df", "Loaded saved lockdown keys: %@", lockdownKeys);
      }

      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Connecting to lockdown", buf, 2u);
        _MBLog(@"Db", "Connecting to lockdown");
      }

      v8 = +[MBLockdown connect];
      if (v8)
      {
        v9 = MBGetDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Restoring lockdown domains", buf, 2u);
          _MBLog(@"I ", "Restoring lockdown domains");
        }

        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v10 = [NSSet setWithObjects:@"com.apple.Accessibility", @"com.apple.mobile.data_sync", @"com.apple.mobile.iTunes.accessories", @"com.apple.MobileDeviceCrashCopy", @"com.apple.TerminalFlashr", 0];
        v49 = [v10 countByEnumeratingWithState:&v76 objects:v88 count:16];
        if (v49)
        {
          v51 = *v77;
          v50 = v10;
          while (2)
          {
            for (i = 0; i != v49; i = i + 1)
            {
              if (*v77 != v51)
              {
                objc_enumerationMutation(v10);
              }

              v11 = *(*(&v76 + 1) + 8 * i);
              v12 = MBGetDefaultLog();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v83 = v11;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Restoring lockdown domain %@", buf, 0xCu);
                _MBLog(@"I ", "Restoring lockdown domain %@", v11);
              }

              v13 = MBGetDefaultLog();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v83 = v11;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Clearing lockdown domain %@", buf, 0xCu);
                _MBLog(@"I ", "Clearing lockdown domain %@", v11);
              }

              v14 = [v8 objectForDomain:v11 andKey:0];
              if (!v14)
              {
                v43 = [MBError errorWithCode:1 format:@"Error copying lockdown domain %@", v11];
                v15 = 0;
                v44 = 0;
LABEL_74:

                goto LABEL_75;
              }

              v74 = 0u;
              v75 = 0u;
              v72 = 0u;
              v73 = 0u;
              v15 = v14;
              v16 = [v15 countByEnumeratingWithState:&v72 objects:v87 count:16];
              if (v16)
              {
                v17 = *v73;
                while (2)
                {
                  for (j = 0; j != v16; j = j + 1)
                  {
                    if (*v73 != v17)
                    {
                      objc_enumerationMutation(v15);
                    }

                    v19 = *(*(&v72 + 1) + 8 * j);
                    v20 = MBGetDefaultLog();
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v83 = v19;
                      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
                      _MBLog(@"I ", "%@", v19);
                    }

                    v71 = 0;
                    v21 = [v8 removeObjectWithDomain:v11 andKey:v19 withError:&v71];
                    v22 = v71;
                    v23 = v22;
                    if ((v21 & 1) == 0)
                    {
                      v43 = [MBError errorWithCode:1 format:@"Error clearing lockdown key %@ from domain %@: %@", v19, v11, v22];
                      v44 = 0;
LABEL_73:

                      goto LABEL_74;
                    }
                  }

                  v16 = [v15 countByEnumeratingWithState:&v72 objects:v87 count:16];
                  if (v16)
                  {
                    continue;
                  }

                  break;
                }
              }

              v24 = MBGetDefaultLog();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v83 = v11;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Setting lockdown keys for domain %@", buf, 0xCu);
                _MBLog(@"I ", "Setting lockdown keys for domain %@", v11);
              }

              v25 = [lockdownKeys objectForKeyedSubscript:v11];

              v69 = 0u;
              v70 = 0u;
              v67 = 0u;
              v68 = 0u;
              v15 = v25;
              v26 = [v15 countByEnumeratingWithState:&v67 objects:v86 count:16];
              if (v26)
              {
                v27 = *v68;
                while (2)
                {
                  for (k = 0; k != v26; k = k + 1)
                  {
                    if (*v68 != v27)
                    {
                      objc_enumerationMutation(v15);
                    }

                    v29 = *(*(&v67 + 1) + 8 * k);
                    v23 = [v15 objectForKeyedSubscript:v29];
                    v30 = MBGetDefaultLog();
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v83 = v29;
                      v84 = 2112;
                      v85 = v23;
                      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%@: %@", buf, 0x16u);
                      _MBLog(@"I ", "%@: %@", v29, v23);
                    }

                    v31 = [(MBLockdownPlugin *)self _setLockdownValue:v23 forDomain:v11 key:v29 connection:v8];
                    if (v31)
                    {
                      v44 = v31;
                      v43 = v44;
                      goto LABEL_73;
                    }
                  }

                  v26 = [v15 countByEnumeratingWithState:&v67 objects:v86 count:16];
                  if (v26)
                  {
                    continue;
                  }

                  break;
                }
              }

              v10 = v50;
            }

            v49 = [v50 countByEnumeratingWithState:&v76 objects:v88 count:16];
            if (v49)
            {
              continue;
            }

            break;
          }
        }

        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v52 = [&off_1003E1E88 countByEnumeratingWithState:&v63 objects:v81 count:16];
        if (v52)
        {
          v54 = *v64;
          do
          {
            for (m = 0; m != v52; m = m + 1)
            {
              if (*v64 != v54)
              {
                objc_enumerationMutation(&off_1003E1E88);
              }

              v32 = *(*(&v63 + 1) + 8 * m);
              v33 = MBGetDefaultLog();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v83 = v32;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Restoring lockdown keys for domain %@", buf, 0xCu);
                _MBLog(@"I ", "Restoring lockdown keys for domain %@", v32);
              }

              v34 = [lockdownKeys objectForKeyedSubscript:v32];
              v61 = 0u;
              v62 = 0u;
              v59 = 0u;
              v60 = 0u;
              v35 = [&off_1003E1E88 objectForKeyedSubscript:v32];
              v36 = [v35 countByEnumeratingWithState:&v59 objects:v80 count:16];
              if (v36)
              {
                v37 = *v60;
                while (2)
                {
                  for (n = 0; n != v36; n = n + 1)
                  {
                    if (*v60 != v37)
                    {
                      objc_enumerationMutation(v35);
                    }

                    v39 = *(*(&v59 + 1) + 8 * n);
                    v40 = [v34 objectForKeyedSubscript:v39];
                    if (v40)
                    {
                      v41 = MBGetDefaultLog();
                      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412546;
                        v83 = v39;
                        v84 = 2112;
                        v85 = v40;
                        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%@: %@", buf, 0x16u);
                        _MBLog(@"I ", "%@: %@", v39, v40);
                      }

                      v42 = [(MBLockdownPlugin *)self _setLockdownValue:v40 forDomain:v32 key:v39 connection:v8];
                      if (v42)
                      {
                        v43 = v42;

                        v44 = v43;
                        goto LABEL_75;
                      }
                    }
                  }

                  v36 = [v35 countByEnumeratingWithState:&v59 objects:v80 count:16];
                  if (v36)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

            v43 = 0;
            v44 = 0;
            v52 = [&off_1003E1E88 countByEnumeratingWithState:&v63 objects:v81 count:16];
          }

          while (v52);
        }

        else
        {
          v43 = 0;
          v44 = 0;
        }

LABEL_75:
        v47 = MBGetDefaultLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "Disconnecting from lockdown", buf, 2u);
          _MBLog(@"Db", "Disconnecting from lockdown");
        }

        [v8 disconnect];
      }

      else
      {
        v43 = [MBError errorWithCode:1 format:@"Unable to connect to lockdown to restore keys"];
        v44 = 0;
      }

      v46 = lockdownKeys;
    }

    else
    {
      v43 = [MBError errorWithCode:1 format:@"Saved lockdown keys not found in manifest properties"];
      v46 = 0;
    }
  }

  else
  {
    v45 = MBGetDefaultLog();
    v46 = v45;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Not restoring lockdown keys since system files weren't restored", buf, 2u);
      _MBLog(@"I ", "Not restoring lockdown keys since system files weren't restored");
      v43 = 0;
      v46 = v45;
    }

    else
    {
      v43 = 0;
    }
  }

  return v43;
}

- (id)endedRestoreWithPolicy:(id)policy engine:(id)engine error:(id)error
{
  engineCopy = engine;
  if ([engineCopy restoresPrimaryAccount])
  {
    isServiceEngine = [engineCopy isServiceEngine];
    v9 = 0;
    if (error && isServiceEngine)
    {
      v9 = [(MBLockdownPlugin *)self _setPurpleBuddyRestoreState:0 withEngine:engineCopy];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end