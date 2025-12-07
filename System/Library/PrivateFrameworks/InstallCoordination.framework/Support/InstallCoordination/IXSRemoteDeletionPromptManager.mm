@interface IXSRemoteDeletionPromptManager
+ (id)sharedInstance;
- (BOOL)iCloudIsEnabledForMessages;
- (BOOL)isValidBundleIDForRemoteAlert:(id)alert withAppType:(unint64_t *)type numAppsInstalled:(unint64_t *)installed;
- (IXSRemoteDeletionPromptManager)init;
- (id)_constructRelevantAppData:(id)data showArchiveOption:(BOOL)option;
- (unint64_t)sharedMediaInMessagesCount;
- (void)dismissRemoteAlert;
- (void)displayDeletionAlertForRecord:(id)record showArchiveOption:(BOOL)option completion:(id)completion;
@end

@implementation IXSRemoteDeletionPromptManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100071328;
  block[3] = &unk_100100D40;
  block[4] = self;
  if (qword_100121E40 != -1)
  {
    dispatch_once(&qword_100121E40, block);
  }

  v2 = qword_100121E38;

  return v2;
}

- (IXSRemoteDeletionPromptManager)init
{
  v6.receiver = self;
  v6.super_class = IXSRemoteDeletionPromptManager;
  v2 = [(IXSRemoteDeletionPromptManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    connection = v2->_connection;
    v2->_connection = 0;
  }

  return v3;
}

- (void)dismissRemoteAlert
{
  connection = [(IXSRemoteDeletionPromptManager *)self connection];
  v3 = connection;
  if (connection)
  {
    [connection dismissAlert];
  }

  else
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000A3A1C();
    }
  }
}

- (BOOL)iCloudIsEnabledForMessages
{
  if (qword_100121E48)
  {
    sharedInstance = [qword_100121E48 sharedInstance];
    isEnabled = [sharedInstance isEnabled];

    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (isEnabled)
      {
        v5 = 89;
      }

      else
      {
        v5 = 78;
      }

      v7 = 136315394;
      v8 = "[IXSRemoteDeletionPromptManager iCloudIsEnabledForMessages]";
      v9 = 1024;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: IMCloudKitHooks returned %c for iCloud state", &v7, 0x12u);
    }
  }

  else
  {
    v4 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000A3A9C();
    }

    LOBYTE(isEnabled) = 0;
  }

  return isEnabled;
}

- (unint64_t)sharedMediaInMessagesCount
{
  if (qword_100121E58)
  {
    v2 = qword_100121E50 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    sharedPhotoLibrary = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(sharedPhotoLibrary, OS_LOG_TYPE_ERROR))
    {
      sub_1000A3B1C();
    }

    v6 = 0;
  }

  else
  {
    sharedPhotoLibrary = [qword_100121E58 sharedPhotoLibrary];
    librarySpecificFetchOptions = [sharedPhotoLibrary librarySpecificFetchOptions];
    [librarySpecificFetchOptions setIncludeGuestAssets:1];
    v5 = [qword_100121E50 fetchGuestAssetsWithOptions:librarySpecificFetchOptions];
    v6 = [v5 count];
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[IXSRemoteDeletionPromptManager sharedMediaInMessagesCount]";
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: PHPhotoLibrary and PHAsset returned %lu for shared media count", &v10, 0x16u);
    }
  }

  return v6;
}

- (BOOL)isValidBundleIDForRemoteAlert:(id)alert withAppType:(unint64_t *)type numAppsInstalled:(unint64_t *)installed
{
  alertCopy = alert;
  v33 = 0;
  v8 = sub_10003AF28(alertCopy, 17, &v33);
  v9 = v33;
  v10 = v9;
  if (v8 && v9 && (([v9 objectForKeyedSubscript:@"TEST_MODE_APP_DELETION_UI_SAD_APP_TYPE_KEY"], v11 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v12 = v11, (objc_opt_isKindOfClass() & 1) == 0) ? (v13 = 0) : (v13 = v12), v12, v12, v13))
  {
    unsignedIntegerValue = [v13 unsignedIntegerValue];
    if (unsignedIntegerValue == 4)
    {

      goto LABEL_15;
    }
  }

  else
  {
    v13 = [&off_10010DF58 objectForKey:alertCopy];
    unsignedIntegerValue = [v13 unsignedIntegerValue];
  }

  v15 = unsignedIntegerValue;

  if (v15)
  {
    if (v15 == 2)
    {
      v18 = sub_100071B4C(alertCopy);
    }

    else
    {
      if (v15 == 3)
      {
        v16 = +[IXGlobalConfiguration sharedInstance];
        v17 = [v16 isiPad] ^ 1;

        v18 = 0;
        v15 = 3;
        if (!type)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v18 = 0;
    }

    LOBYTE(v17) = 1;
    if (!type)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_15:
  v19 = alertCopy;
  v33 = 0;
  v20 = sub_10003AF28(v19, 17, &v33);
  v21 = v33;
  v22 = v21;
  v23 = 0;
  if (!v20 || !v21 || (([v21 objectForKeyedSubscript:@"TEST_MODE_APP_DELETION_UI_SAD_APP_TYPE_KEY"], v24 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v25 = v24, (objc_opt_isKindOfClass() & 1) == 0) ? (v23 = 0) : (v23 = v25), (v25, v25, !v23) || objc_msgSend(v23, "unsignedIntegerValue") != 4))
  {
    v27 = +[LSApplicationWorkspace defaultWorkspace];
    v32 = 0;
    v28 = [v27 getPreferredAppMarketplacesWithError:&v32];
    v29 = v32;

    if (v28)
    {
      v30 = [v28 containsObject:v19];

      if (v30)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v31 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1000A3B9C();
      }
    }

    LOBYTE(v17) = 0;
    v15 = 0;
    v18 = 0;
    if (type)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

LABEL_32:
  v18 = sub_100071B4C(v19);
  if (v18)
  {
    LOBYTE(v17) = 1;
    v15 = 4;
    if (!type)
    {
      goto LABEL_23;
    }

LABEL_22:
    *type = v15;
    goto LABEL_23;
  }

  LOBYTE(v17) = 0;
  v15 = 0;
  if (type)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (installed)
  {
    *installed = v18;
  }

  return v17;
}

- (id)_constructRelevantAppData:(id)data showArchiveOption:(BOOL)option
{
  optionCopy = option;
  dataCopy = data;
  v48 = 0;
  v49 = 0;
  if ([(IXSRemoteDeletionPromptManager *)self isValidBundleIDForRemoteAlert:dataCopy withAppType:&v49 numAppsInstalled:&v48]&& v49)
  {
    v7 = objc_opt_new();
    v8 = [NSNumber numberWithUnsignedInteger:v49];
    [v7 setObject:v8 forKeyedSubscript:@"SADAppType"];

    v9 = [NSNumber numberWithBool:optionCopy];
    [v7 setObject:v9 forKeyedSubscript:@"ShowArchiveOption"];

    v47 = 0;
    v10 = sub_10003AF28(dataCopy, 17, &v47);
    v11 = v47;
    v12 = v11;
    if (v11)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0;
    }

    if (v13 == 1)
    {
      v14 = [v11 objectForKeyedSubscript:@"TEST_MODE_APP_DELETION_UI_SAD_KILL_FOR_TESTING_KEY"];
      objc_opt_class();
      v15 = v14;
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        [v7 setObject:v16 forKeyedSubscript:@"TestCrash"];
      }
    }

    v17 = 0;
    if (v49 > 2)
    {
      if (v49 == 3)
      {
        if (v13 && (([v12 objectForKeyedSubscript:@"TEST_MODE_APP_DELETION_UI_SAD_ICLOUD_ON_KEY"], v23 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v24 = v23, (objc_opt_isKindOfClass() & 1) == 0) ? (v25 = 0) : (v25 = v24), v24, v24, v25))
        {
          bOOLValue = [v25 BOOLValue];
        }

        else
        {
          bOOLValue = [(IXSRemoteDeletionPromptManager *)self iCloudIsEnabledForMessages];
        }

        v30 = [NSNumber numberWithBool:bOOLValue];
        [v7 setObject:v30 forKeyedSubscript:@"IsICloudOn"];

        if (v13 && (([v12 objectForKeyedSubscript:@"TEST_MODE_APP_DELETION_UI_SAD_NUM_MEDIA_SHARED_KEY"], v31 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v32 = v31, (objc_opt_isKindOfClass() & 1) == 0) ? (v33 = 0) : (v33 = v32), v32, v32, v33))
        {
          unsignedIntegerValue = [v33 unsignedIntegerValue];
        }

        else
        {
          unsignedIntegerValue = [(IXSRemoteDeletionPromptManager *)self sharedMediaInMessagesCount];
        }

        v35 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
        [v7 setObject:v35 forKeyedSubscript:@"SharedMedia"];

        if (v13 && (([v12 objectForKeyedSubscript:@"TEST_MODE_APP_DELETION_UI_SAD_WATCH_PAIRED_KEY"], v36 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v37 = v36, (objc_opt_isKindOfClass() & 1) == 0) ? (v38 = 0) : (v38 = v37), v37, v37, v38))
        {
          bOOLValue2 = [v38 BOOLValue];
        }

        else
        {
          v40 = +[NRPairedDeviceRegistry sharedInstance];
          getActivePairedDevice = [v40 getActivePairedDevice];
          bOOLValue2 = getActivePairedDevice != 0;

          v38 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            if (getActivePairedDevice)
            {
              v42 = 89;
            }

            else
            {
              v42 = 78;
            }

            *buf = 136315394;
            v51 = "_watchIsPaired";
            v52 = 1024;
            v53 = v42;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%s: NRPairedDeviceRegistry returned %c for watch paired state", buf, 0x12u);
          }
        }

        v43 = [NSNumber numberWithBool:bOOLValue2];
        [v7 setObject:v43 forKeyedSubscript:@"WatchIsPaired"];

        if (!v13)
        {
          goto LABEL_71;
        }

        v44 = [v12 objectForKeyedSubscript:@"TEST_MODE_APP_DELETION_UI_SAD_SOS_AVAILABLE_KEY"];
        objc_opt_class();
        v45 = v44;
        v18 = (objc_opt_isKindOfClass() & 1) != 0 ? v45 : 0;

        if (!v18)
        {
          goto LABEL_71;
        }

        v19 = @"TestSOSAvailable";
LABEL_70:
        [v7 setObject:v18 forKeyedSubscript:v19];

LABEL_71:
        v17 = [v7 copy];
        goto LABEL_72;
      }

      if (v49 != 4)
      {
LABEL_72:

        goto LABEL_73;
      }
    }

    else
    {
      if (v49 == 1)
      {
        if (v13 && (([v12 objectForKeyedSubscript:@"TEST_MODE_APP_DELETION_UI_SAD_ICLOUD_ON_KEY"], v20 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v21 = v20, (objc_opt_isKindOfClass() & 1) == 0) ? (v22 = 0) : (v22 = v21), v21, v21, v22))
        {
          bOOLValue3 = [v22 BOOLValue];
        }

        else if (qword_100121E58)
        {
          sharedPhotoLibrary = [qword_100121E58 sharedPhotoLibrary];
          bOOLValue3 = [sharedPhotoLibrary isCloudPhotoLibraryEnabled];

          v22 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            if (bOOLValue3)
            {
              v28 = 89;
            }

            else
            {
              v28 = 78;
            }

            *buf = 136315394;
            v51 = "_iCloudIsEnabledForPhotos";
            v52 = 1024;
            v53 = v28;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s: PHPhotoLibrary returned %c for iCloud state", buf, 0x12u);
          }
        }

        else
        {
          v22 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_1000A3C9C();
          }

          bOOLValue3 = 0;
        }

        v18 = [NSNumber numberWithBool:bOOLValue3];
        v19 = @"IsICloudOn";
        goto LABEL_70;
      }

      if (v49 != 2)
      {
        goto LABEL_72;
      }
    }

    v18 = [NSNumber numberWithUnsignedInteger:v48];
    v19 = @"NumInstalledApps";
    goto LABEL_70;
  }

  v7 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000A3C1C();
  }

  v17 = 0;
LABEL_73:

  return v17;
}

- (void)displayDeletionAlertForRecord:(id)record showArchiveOption:(BOOL)option completion:(id)completion
{
  optionCopy = option;
  recordCopy = record;
  completionCopy = completion;
  bundleIdentifier = [recordCopy bundleIdentifier];
  v11 = [(IXSRemoteDeletionPromptManager *)self _constructRelevantAppData:bundleIdentifier showArchiveOption:optionCopy];
  if (v11)
  {
    v12 = [RBSProcessIdentity identityForApplicationJobLabel:@"com.apple.AppDeletionUIHost"];
    v13 = [[SBSRemoteAlertDefinition alloc] initWithSceneProvidingProcess:v12 configurationIdentifier:@"AppDeletionUI"];
    v14 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
    v27[0] = bundleIdentifier;
    v26[0] = kCFBundleIdentifierKey;
    v26[1] = kCFBundleNameKey;
    localizedName = [recordCopy localizedName];
    v26[2] = @"RelevantAppData";
    v27[1] = localizedName;
    v27[2] = v11;
    v16 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];

    [v14 setUserInfo:v16];
    v17 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 136315650;
      *&v21[4] = "[IXSRemoteDeletionPromptManager displayDeletionAlertForRecord:showArchiveOption:completion:]";
      v22 = 2112;
      v23 = bundleIdentifier;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: Showing deletion sheet for %@ with data %@", v21, 0x20u);
    }

    v18 = objc_alloc_init(IXSRemoteDeletionPromptConnection);
    [(IXSRemoteDeletionPromptConnection *)v18 startConnectionWithConfig:v14 alertDefinition:v13 completion:completionCopy];

    [(IXSRemoteDeletionPromptManager *)self setConnection:v18];
    completionCopy = v13;
  }

  else
  {
    v19 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000A3D1C();
    }

    v12 = sub_1000405FC("[IXSRemoteDeletionPromptManager displayDeletionAlertForRecord:showArchiveOption:completion:]", 398, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to construct alert relevant data", v20, *v21);
    (*(completionCopy + 2))(completionCopy, 5, v12);
  }
}

@end