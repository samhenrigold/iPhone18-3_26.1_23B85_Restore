@interface WeatherXPCAppRemovalService
- (id)appContainerPath;
- (id)deleteAllFilesInDirectory:(id)directory except:(id)except;
- (id)deleteAllUserDefaults;
- (id)deleteNanoUserDefaults;
- (id)removeUserDefaults:(id)defaults container:(id)container doNanoSync:(BOOL)sync;
- (void)removeAppWithReply:(id)reply;
@end

@implementation WeatherXPCAppRemovalService

- (void)removeAppWithReply:(id)reply
{
  replyCopy = reply;
  v5 = os_log_xpcAppRemoval(replyCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting AppRemoval.", buf, 2u);
  }

  deleteAllUserDefaults = [(WeatherXPCAppRemovalService *)self deleteAllUserDefaults];
  if (deleteAllUserDefaults || ([(WeatherXPCAppRemovalService *)self deleteNanoUserDefaults], (deleteAllUserDefaults = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = deleteAllUserDefaults;
    v8 = os_log_xpcAppRemoval(deleteAllUserDefaults);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100003E78();
    }

    replyCopy[2](replyCopy, v7);
  }

  else
  {
    v9 = os_log_xpcAppRemoval(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Now decommissioning the weather daemon.", buf, 2u);
    }

    v7 = objc_alloc_init(WeatherDaemonDecommissioner);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100001984;
    v10[3] = &unk_100008310;
    v10[4] = self;
    v11 = replyCopy;
    [(WeatherDaemonDecommissioner *)v7 decommissionDaemonWithCompletion:v10];
  }
}

- (id)removeUserDefaults:(id)defaults container:(id)container doNanoSync:(BOOL)sync
{
  syncCopy = sync;
  applicationID = defaults;
  containerCopy = container;
  v8 = os_log_xpcAppRemoval(containerCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  v34 = containerCopy;
  if (containerCopy)
  {
    if (v9)
    {
      *buf = 138412290;
      v50 = containerCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Container is %@.", buf, 0xCu);
    }

    v10 = _CFPreferencesCopyKeyListWithContainer();
    if (v10)
    {
      v33 = syncCopy;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v11 = v10;
      v12 = [(__CFArray *)v11 countByEnumeratingWithState:&v36 objects:v46 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v37;
        do
        {
          v15 = 0;
          do
          {
            if (*v37 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v36 + 1) + 8 * v15);
            v17 = os_log_xpcAppRemoval(v12);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v50 = v16;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Removing Default key: %@", buf, 0xCu);
            }

            v12 = _CFPreferencesSetValueWithContainer();
            v15 = v15 + 1;
          }

          while (v13 != v15);
          v12 = [(__CFArray *)v11 countByEnumeratingWithState:&v36 objects:v46 count:16];
          v13 = v12;
        }

        while (v12);
      }

      if (!_CFPreferencesSynchronizeWithContainer())
      {
        v44[0] = NSLocalizedDescriptionKey;
        v44[1] = @"BundleId";
        v45[0] = @"Unable to synchronize User Defaults for AppRemoval.";
        v45[1] = @"com.apple.weather";
        v18 = v45;
        v19 = v44;
        goto LABEL_32;
      }

      goto LABEL_29;
    }

LABEL_30:
    v27 = 0;
    v11 = 0;
    goto LABEL_35;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Container is nil.", buf, 2u);
  }

  v20 = CFPreferencesCopyKeyList(applicationID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (!v20)
  {
    goto LABEL_30;
  }

  v33 = syncCopy;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = v20;
  v21 = [(__CFArray *)v11 countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v41;
    do
    {
      v24 = 0;
      do
      {
        if (*v41 != v23)
        {
          objc_enumerationMutation(v11);
        }

        v25 = *(*(&v40 + 1) + 8 * v24);
        v26 = os_log_xpcAppRemoval(v21);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v50 = v25;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Removing Default key: %@", buf, 0xCu);
        }

        v24 = v24 + 1;
      }

      while (v22 != v24);
      v21 = [(__CFArray *)v11 countByEnumeratingWithState:&v40 objects:v51 count:16];
      v22 = v21;
    }

    while (v21);
  }

  CFPreferencesSetMultiple(0, v11, applicationID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (!CFPreferencesSynchronize(applicationID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost))
  {
    v47[0] = NSLocalizedDescriptionKey;
    v47[1] = @"BundleId";
    v48[0] = @"Unable to synchronize User Defaults for AppRemoval.";
    v48[1] = @"com.apple.weather";
    v18 = v48;
    v19 = v47;
LABEL_32:
    v29 = [NSDictionary dictionaryWithObjects:v18 forKeys:v19 count:2];
    v27 = [NSError errorWithDomain:@"com.apple.weather.appremoval.errorDomain" code:-1 userInfo:v29];
    v28 = v33;

    if (v27)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

LABEL_29:
  v27 = 0;
  v28 = v33;
LABEL_33:
  if (v28)
  {
    v30 = objc_opt_new();
    v31 = [NSSet setWithArray:v11];
    [v30 synchronizeUserDefaultsDomain:applicationID keys:v31];

    v27 = 0;
  }

LABEL_35:

  return v27;
}

- (id)deleteAllUserDefaults
{
  v3 = os_log_xpcAppRemoval(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = @"group.com.apple.weather";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing User Defaults for %@", buf, 0xCu);
  }

  appContainerPath = [(WeatherXPCAppRemovalService *)self appContainerPath];
  v5 = os_log_xpcAppRemoval(appContainerPath);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = appContainerPath;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "GroupContainer URL: %@", buf, 0xCu);
  }

  if (!appContainerPath)
  {
    v14 = os_log_xpcAppRemoval(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000406C(v14);
    }

    v16[0] = @"BundleId";
    v16[1] = @"PrefsGroupId";
    v17[0] = @"com.apple.weather";
    v17[1] = @"group.com.apple.weather";
    v16[2] = NSLocalizedFailureReasonErrorKey;
    v17[2] = @"Group container URL was nil.";
    v13 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
    v11 = [NSError errorWithDomain:@"com.apple.weather.appremoval.errorDomain" code:4 userInfo:v13];
    goto LABEL_16;
  }

  [NSUserActivity deleteAllSavedUserActivitiesWithCompletionHandler:&stru_100008330];
  path = [(__CFString *)appContainerPath path];
  v8 = [(WeatherXPCAppRemovalService *)self removeUserDefaults:@"group.com.apple.weather" container:path doNanoSync:0];

  if (v8)
  {
    v10 = os_log_xpcAppRemoval(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100003F9C();
    }
  }

  v11 = [(WeatherXPCAppRemovalService *)self removeUserDefaults:@"com.apple.weather.sensitive" container:0 doNanoSync:0];

  if (v11)
  {
    v13 = os_log_xpcAppRemoval(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100004004();
    }

LABEL_16:
  }

  return v11;
}

- (id)appContainerPath
{
  if (qword_10000C838 != -1)
  {
    sub_1000040B0();
  }

  v3 = qword_10000C830;

  return v3;
}

- (id)deleteNanoUserDefaults
{
  v3 = os_log_xpcAppRemoval(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = @"com.apple.nanoweatherprefs";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing Nano Defaults for: %@", buf, 0xCu);
  }

  v4 = [(WeatherXPCAppRemovalService *)self removeUserDefaults:@"com.apple.nanoweatherprefs" container:0 doNanoSync:1];
  if (!v4)
  {
    v5 = +[NRPairedDeviceRegistry sharedInstance];
    getPairedDevices = [v5 getPairedDevices];

    v28 = objc_alloc_init(NPSManager);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = getPairedDevices;
    v32 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
    v4 = 0;
    if (v32)
    {
      v30 = NRDevicePropertyPairingID;
      v31 = *v41;
      do
      {
        v7 = 0;
        do
        {
          if (*v41 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v40 + 1) + 8 * v7);
          v9 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nanoweatherprefs" pairedDevice:v8];
          if (v9)
          {
            v34 = v7;
            v35 = v4;
            v10 = [v8 valueForProperty:v30];
            v11 = os_log_xpcAppRemoval(v10);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              uUIDString = [v10 UUIDString];
              *buf = 138412290;
              v49 = uUIDString;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Removing Nano Defaults for device: %@", buf, 0xCu);
            }

            v33 = v10;

            dictionaryRepresentation = [v9 dictionaryRepresentation];
            allKeys = [dictionaryRepresentation allKeys];

            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v15 = allKeys;
            v16 = [v15 countByEnumeratingWithState:&v36 objects:v46 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v37;
              do
              {
                v19 = 0;
                do
                {
                  if (*v37 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v36 + 1) + 8 * v19);
                  v21 = os_log_xpcAppRemoval(v16);
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v49 = v20;
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Removing device specific Nano Default key: %@", buf, 0xCu);
                  }

                  v16 = [v9 removeObjectForKey:v20];
                  v19 = v19 + 1;
                }

                while (v17 != v19);
                v16 = [v15 countByEnumeratingWithState:&v36 objects:v46 count:16];
                v17 = v16;
              }

              while (v16);
            }

            synchronize = [v9 synchronize];

            if (synchronize)
            {
              v24 = os_log_xpcAppRemoval(v23);
              v25 = v33;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v49 = synchronize;
                _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error synchronizing NanoDomain. error=%@", buf, 0xCu);
              }

              v44[0] = NSLocalizedDescriptionKey;
              v44[1] = @"BundleId";
              v45[0] = @"Unable to synchronize device specific Nano defaults for AppRemoval.";
              v45[1] = @"com.apple.weather";
              v26 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
              v4 = [NSError errorWithDomain:@"com.apple.weather.appremoval.errorDomain" code:-1 userInfo:v26];
            }

            else
            {
              v26 = [NSSet setWithArray:v15];
              [v28 synchronizeNanoDomain:@"com.apple.nanoweatherprefs" keys:v26];
              v4 = 0;
              v25 = v33;
            }

            v7 = v34;
          }

          v7 = v7 + 1;
        }

        while (v7 != v32);
        v32 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
      }

      while (v32);
    }
  }

  return v4;
}

- (id)deleteAllFilesInDirectory:(id)directory except:(id)except
{
  directoryCopy = directory;
  exceptCopy = except;
  v7 = os_log_xpcAppRemoval(exceptCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    path = [directoryCopy path];
    *buf = 138412290;
    v29 = path;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing files in directory: %@", buf, 0xCu);
  }

  v9 = +[NSFileManager defaultManager];
  path2 = [directoryCopy path];
  v11 = [v9 enumeratorAtPath:path2];
  nextObject = [v11 nextObject];
  if (nextObject)
  {
    nextObject3 = nextObject;
    v26 = 0;
    *&v13 = 138412546;
    v24 = v13;
    do
    {
      v15 = nextObject3;
      while (1)
      {
        v16 = [exceptCopy containsObject:{v15, v24}];
        if (!v16)
        {
          break;
        }

        v17 = os_log_xpcAppRemoval(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v29 = v15;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Skipping exception %@.", buf, 0xCu);
        }

        [v11 skipDescendants];
        nextObject2 = [v11 nextObject];

        v15 = nextObject2;
        if (!nextObject2)
        {
          goto LABEL_20;
        }
      }

      v25 = directoryCopy;
      v19 = [path2 stringByAppendingPathComponent:v15];
      v27 = 0;
      [v9 removeItemAtPath:v19 error:&v27];
      v20 = v27;
      v21 = os_log_xpcAppRemoval(v20);
      v22 = v21;
      if (v20)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = v24;
          v29 = v19;
          v30 = 2112;
          v31 = v26;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Error encountered removing item: %@. Error: %@", buf, 0x16u);
        }

        v22 = v26;
        v26 = v20;
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v19;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Removed item: %@", buf, 0xCu);
      }

      nextObject3 = [v11 nextObject];

      directoryCopy = v25;
    }

    while (nextObject3);
  }

  else
  {
    v26 = 0;
  }

LABEL_20:

  return v26;
}

@end