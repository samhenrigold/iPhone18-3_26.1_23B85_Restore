@interface MBATCBundlesPlugin
- (BOOL)shouldBackgroundRestoreContentWithPolicy:(id)policy fileInfo:(id)info;
- (BOOL)shouldRestoreContentWithPolicy:(id)policy fileInfo:(id)info;
- (id)endingBackupWithEngine:(id)engine;
- (id)startingBackupWithEngine:(id)engine;
- (id)startingRestoreWithPolicy:(id)policy engine:(id)engine;
- (void)_populateAccountsAndAssetsForEngine:(id)engine accountsTracker:(id)tracker;
- (void)_populateAccountsForEngine:(id)engine dataClasses:(id)classes accountsTracker:(id)tracker;
- (void)_populateBuddyStashForEngine:(id)engine;
- (void)_populatePathsForEngine:(id)engine domain:(id)domain dataclass:(id)dataclass allBackupPaths:(id)paths;
- (void)_updatePathsForCameraRollDomainWithEngine:(id)engine;
@end

@implementation MBATCBundlesPlugin

- (void)_populatePathsForEngine:(id)engine domain:(id)domain dataclass:(id)dataclass allBackupPaths:(id)paths
{
  engineCopy = engine;
  domainCopy = domain;
  dataclassCopy = dataclass;
  pathsCopy = paths;
  v13 = +[ATClientController sharedInstance];
  v14 = [v13 clientForDataclass:dataclassCopy];
  domainManager = [engineCopy domainManager];
  v16 = [domainManager domainForName:domainCopy];

  v17 = objc_alloc_init(NSMutableSet);
  v18 = objc_alloc_init(NSMutableSet);
  if (objc_opt_respondsToSelector())
  {
    context = objc_autoreleasePoolPush();
    v57 = v17;
    if ([engineCopy isDeviceTransferEngine])
    {
      v19 = 3;
    }

    else if ([engineCopy isDriveEngine])
    {
      v19 = 2;
    }

    else
    {
      if (([engineCopy isServiceEngine] & 1) == 0)
      {
        __assert_rtn("[MBATCBundlesPlugin _populatePathsForEngine:domain:dataclass:allBackupPaths:]", "MBATCBundlesPlugin.m", 64, "restoreType != ATRestoreTypeNone");
      }

      v19 = 1;
    }

    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_1001F8868;
    v70[3] = &unk_1003C1700;
    v71 = v14;
    v76 = v19;
    v72 = v16;
    v73 = pathsCopy;
    v74 = v17;
    v75 = v18;
    v46 = [v71 enumeratePathsForBackupType:v19 usingBlock:v70];

    v45 = v71;
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_37;
    }

    v57 = v17;
    v59 = v18;
    v52 = v13;
    v53 = dataclassCopy;
    v54 = domainCopy;
    v55 = engineCopy;
    context = objc_autoreleasePoolPush();
    v68 = 0;
    v69 = 0;
    [v14 pathsToBackup:&v69 pathsNotToBackup:&v68];
    v20 = v69;
    v21 = v68;
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v20 count];
      v24 = [v21 count];
      *buf = 138412802;
      v80 = v14;
      v81 = 2048;
      v82 = v23;
      v83 = 2048;
      v84 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %@: pathsToBackup.count:%lu, pathsNotToBackup.count:%lu", buf, 0x20u);
      _MBLog(@"Df", "=atc-bundles= %@: pathsToBackup.count:%lu, pathsNotToBackup.count:%lu", v14, [v20 count], objc_msgSend(v21, "count"));
    }

    v51 = v21;

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v25 = v20;
    v26 = [v25 countByEnumeratingWithState:&v64 objects:v78 count:16];
    v27 = pathsCopy;
    obj = v25;
    if (v26)
    {
      v28 = v26;
      v29 = *v65;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v65 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v64 + 1) + 8 * i);
          v32 = objc_autoreleasePoolPush();
          v33 = MBGetDefaultLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v80 = v14;
            v81 = 2112;
            v82 = v31;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %@: pathToBackup:%@", buf, 0x16u);
            _MBLog(@"Df", "=atc-bundles= %@: pathToBackup:%@", v14, v31);
          }

          v34 = [v16 standardizedRelativePathFor:v31];
          if ([v27 containsObject:v34])
          {
            v35 = MBGetDefaultLog();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v80 = v14;
              v81 = 2112;
              v82 = v31;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %@: Skipping duplicate path: %@", buf, 0x16u);
              _MBLog(@"Df", "=atc-bundles= %@: Skipping duplicate path: %@", v14, v31);
            }
          }

          else
          {
            [v27 addObject:v34];
            [v57 addObject:v34];
          }

          objc_autoreleasePoolPop(v32);
        }

        v25 = obj;
        v28 = [obj countByEnumeratingWithState:&v64 objects:v78 count:16];
      }

      while (v28);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v36 = v51;
    v37 = [v36 countByEnumeratingWithState:&v60 objects:v77 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v61;
      do
      {
        for (j = 0; j != v38; j = j + 1)
        {
          if (*v61 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v60 + 1) + 8 * j);
          v42 = objc_autoreleasePoolPush();
          v43 = MBGetDefaultLog();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v80 = v14;
            v81 = 2112;
            v82 = v41;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %@: pathNotToBackup:%@", buf, 0x16u);
            _MBLog(@"Df", "=atc-bundles= %@: pathNotToBackup:%@", v14, v41);
          }

          v44 = [v16 standardizedRelativePathFor:v41];
          [v59 addObject:v44];

          objc_autoreleasePoolPop(v42);
        }

        v38 = [v36 countByEnumeratingWithState:&v60 objects:v77 count:16];
      }

      while (v38);
    }

    domainCopy = v54;
    engineCopy = v55;
    pathsCopy = v27;
    v13 = v52;
    dataclassCopy = v53;
    v18 = v59;
    v45 = obj;
  }

  objc_autoreleasePoolPop(context);
  v17 = v57;
LABEL_37:
  if ([v17 count])
  {
    relativePathsToBackupAndRestore = [v16 relativePathsToBackupAndRestore];

    if (relativePathsToBackupAndRestore)
    {
      relativePathsToBackupAndRestore2 = [v16 relativePathsToBackupAndRestore];
      [v17 unionSet:relativePathsToBackupAndRestore2];
    }

    [v16 setRelativePathsToBackupAndRestore:v17];
  }

  if ([v18 count])
  {
    relativePathsNotToBackup = [v16 relativePathsNotToBackup];

    if (relativePathsNotToBackup)
    {
      relativePathsNotToBackup2 = [v16 relativePathsNotToBackup];
      [v18 unionSet:relativePathsNotToBackup2];
    }

    [v16 setRelativePathsNotToBackup:v18];
  }
}

- (void)_populateAccountsForEngine:(id)engine dataClasses:(id)classes accountsTracker:(id)tracker
{
  engineCopy = engine;
  classesCopy = classes;
  trackerCopy = tracker;
  if (!trackerCopy)
  {
    __assert_rtn("[MBATCBundlesPlugin _populateAccountsForEngine:dataClasses:accountsTracker:]", "MBATCBundlesPlugin.m", 140, "accountsTracker");
  }

  v10 = trackerCopy;
  if ([engineCopy isDeviceTransferEngine])
  {
    [engineCopy preflightProperties];
  }

  else
  {
    [engineCopy properties];
  }
  v54 = ;
  v46 = engineCopy;
  v49 = +[ATClientController sharedInstance];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = classesCopy;
  v50 = [obj countByEnumeratingWithState:&v64 objects:v76 count:16];
  if (v50)
  {
    v48 = *v65;
    do
    {
      v11 = 0;
      do
      {
        if (*v65 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v64 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v55 = v12;
        v14 = [v49 clientForDataclass:v12];
        v52 = v13;
        v53 = v11;
        v51 = v14;
        if (objc_opt_respondsToSelector())
        {
          accountsForAssets = [v14 accountsForAssets];
          v16 = MBGetDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v71 = v14;
            v72 = 2112;
            v73 = v55;
            v74 = 2112;
            v75 = accountsForAssets;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=atc-bundles= %@: dataClass:%@, -accountsForAssets returned: %@", buf, 0x20u);
            _MBLog(@"I ", "=atc-bundles= %@: dataClass:%@, -accountsForAssets returned: %@", v14, v55, accountsForAssets);
          }

LABEL_17:

          goto LABEL_18;
        }

        if (v14)
        {
          v16 = MBGetDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v71 = v14;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=atc-bundles= %@ doesn't implement -accountsForAssets", buf, 0xCu);
            _MBLog(@"I ", "=atc-bundles= %@ doesn't implement -accountsForAssets", v14);
          }

          accountsForAssets = 0;
          goto LABEL_17;
        }

        accountsForAssets = 0;
LABEL_18:
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v17 = accountsForAssets;
        v18 = [v17 countByEnumeratingWithState:&v60 objects:v69 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v61;
          do
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v61 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v60 + 1) + 8 * i);
              appleID = [v22 appleID];
              if (!appleID)
              {
                v24 = MBGetDefaultLog();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v71 = v22;
                  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=atc-bundles= Found nil appleID for %@", buf, 0xCu);
                  _MBLog(@"Df", "=atc-bundles= Found nil appleID for %@", v22);
                }
              }

              dSID = [v22 DSID];
              if (!dSID)
              {
                v26 = MBGetDefaultLog();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v71 = v22;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=atc-bundles= Found nil DSID for %@", buf, 0xCu);
                  _MBLog(@"Df", "=atc-bundles= Found nil DSID for %@", v22);
                }
              }

              altDSID = [v22 altDSID];
              if (!altDSID)
              {
                v28 = MBGetDefaultLog();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v71 = v22;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "=atc-bundles= Found nil altDSID for %@", buf, 0xCu);
                  _MBLog(@"Df", "=atc-bundles= Found nil altDSID for %@", v22);
                }
              }

              if ([v10 addAccountWithDSID:dSID])
              {
                stringValue = [dSID stringValue];
                [v54 addAppleID:appleID DSID:stringValue altDSID:altDSID dataClass:v55];
              }

              else
              {
                stringValue = MBGetDefaultLog();
                if (os_log_type_enabled(stringValue, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v71 = appleID;
                  v72 = 2112;
                  v73 = dSID;
                  _os_log_impl(&_mh_execute_header, stringValue, OS_LOG_TYPE_INFO, "=atc-bundles= Skipping account: %@/%@", buf, 0x16u);
                  _MBLog(@"I ", "=atc-bundles= Skipping account: %@/%@", appleID, dSID);
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v60 objects:v69 count:16];
          }

          while (v19);
        }

        appleIDsForAssets = [v51 appleIDsForAssets];
        v31 = MBGetDefaultLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v71 = v51;
          v72 = 2112;
          v73 = v55;
          v74 = 2112;
          v75 = appleIDsForAssets;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "=atc-bundles= %@: dataClass:%@, -appleIDsForAssets returned: %@", buf, 0x20u);
          _MBLog(@"I ", "=atc-bundles= %@: dataClass:%@, -appleIDsForAssets returned: %@", v51, v55, appleIDsForAssets);
        }

        v32 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(appleIDsForAssets, "count")}];
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v33 = appleIDsForAssets;
        v34 = [v33 countByEnumeratingWithState:&v56 objects:v68 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v57;
          do
          {
            for (j = 0; j != v35; j = j + 1)
            {
              if (*v57 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = *(*(&v56 + 1) + 8 * j);
              if (([v10 isIgnoredAppleID:v38] & 1) == 0)
              {
                [v32 addObject:v38];
              }
            }

            v35 = [v33 countByEnumeratingWithState:&v56 objects:v68 count:16];
          }

          while (v35);
        }

        if ([v32 count])
        {
          v39 = [v32 count];
          if (v39 != [v33 count])
          {
            v40 = MBGetDefaultLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              v71 = v51;
              v72 = 2112;
              v73 = v55;
              v74 = 2112;
              v75 = v33;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "=atc-bundles= %@: dataClass:%@, Filtered appleIDs: %@", buf, 0x20u);
              _MBLog(@"I ", "=atc-bundles= %@: dataClass:%@, Filtered appleIDs: %@", v51, v55, v33);
            }
          }

          [v54 addAppleIDsFromSet:v32 dataClass:v55];
        }

        objc_autoreleasePoolPop(v52);
        v11 = v53 + 1;
      }

      while ((v53 + 1) != v50);
      v41 = [obj countByEnumeratingWithState:&v64 objects:v76 count:16];
      v50 = v41;
    }

    while (v41);
  }

  v42 = +[SSAccountStore defaultStore];
  activeAccount = [v42 activeAccount];

  if (activeAccount)
  {
    accountName = [activeAccount accountName];
    if (([v10 isIgnoredAppleID:accountName] & 1) == 0)
    {
      v45 = MBGetDefaultLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v71 = accountName;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "=atc-bundles= Found active store account: %@", buf, 0xCu);
        _MBLog(@"Df", "=atc-bundles= Found active store account: %@", accountName);
      }

      [v54 setActiveAppleID:accountName];
    }
  }
}

- (void)_populateAccountsAndAssetsForEngine:(id)engine accountsTracker:(id)tracker
{
  engineCopy = engine;
  trackerCopy = tracker;
  if (!trackerCopy)
  {
    __assert_rtn("[MBATCBundlesPlugin _populateAccountsAndAssetsForEngine:accountsTracker:]", "MBATCBundlesPlugin.m", 209, "accountsTracker");
  }

  v7 = trackerCopy;
  isDeviceTransferEngine = [engineCopy isDeviceTransferEngine];
  v9 = isDeviceTransferEngine;
  if (isDeviceTransferEngine)
  {
    [engineCopy preflightProperties];
  }

  else
  {
    [engineCopy properties];
  }
  v10 = ;
  v11 = +[ACAccountStore defaultStore];
  if (!v11)
  {
    __assert_rtn("[MBATCBundlesPlugin _populateAccountsAndAssetsForEngine:accountsTracker:]", "MBATCBundlesPlugin.m", 220, "acAccountStore");
  }

  v12 = v11;
  v13 = +[SSAccountStore defaultStore];
  v14 = objc_alloc_init(NSMutableSet);
  v15 = +[LSApplicationWorkspace defaultWorkspace];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001F96D8;
  v22[3] = &unk_1003C1728;
  v16 = v14;
  v23 = v16;
  v24 = v7;
  v25 = v13;
  v26 = v10;
  v28 = v9;
  v27 = v12;
  v17 = v12;
  v18 = v10;
  v19 = v13;
  v20 = v7;
  [v15 enumerateBundlesOfType:0 block:v22];

  v21 = MBGetDefaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v16;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=atc-bundles= Found accounts: %@", buf, 0xCu);
    _MBLog(@"Df", "=atc-bundles= Found accounts: %@", v16);
  }
}

- (void)_populateBuddyStashForEngine:(id)engine
{
  properties = [engine properties];
  v4 = BYDataStashCreate();
  v5 = v4;
  if (v4)
  {
    if ([v4 length] > 0x8000)
    {
      v6 = MBGetDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v8 = [v5 length];
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "=atc-bundles= buddyStash exceeds 32k (%ld)", buf, 0xCu);
        _MBLog(@"F ", "=atc-bundles= buddyStash exceeds 32k (%ld)", [v5 length]);
      }
    }

    [properties setBuddyStashData:v5];
  }
}

- (id)startingBackupWithEngine:(id)engine
{
  engineCopy = engine;
  if (![engineCopy backsUpPrimaryAccount])
  {
    goto LABEL_39;
  }

  if (MBIsInternalInstall())
  {
    v5 = +[MBBehaviorOptions sharedOptions];
    domainsToBackUpRegex = [v5 domainsToBackUpRegex];

    if (domainsToBackUpRegex)
    {
      goto LABEL_39;
    }
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = +[ATClientController sharedInstance];
  allClients = [v7 allClients];

  v9 = [allClients countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v42;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(allClients);
        }

        v13 = *(*(&v41 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v13 prepareForBackup];
        }
      }

      v10 = [allClients countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v10);
  }

  if ([engineCopy backupPolicy] == 1)
  {
    if (![engineCopy isCloudKitEngine])
    {
      __assert_rtn("[MBATCBundlesPlugin startingBackupWithEngine:]", "MBATCBundlesPlugin.m", 307, "!isMegaBackupPolicy || engine.isCloudKitEngine");
    }

    [engineCopy isDeviceTransferEngine];
    goto LABEL_18;
  }

  if ([engineCopy isDeviceTransferEngine])
  {
LABEL_18:
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = [&off_1003E2468 countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(&off_1003E2468);
          }

          v19 = *(*(&v37 + 1) + 8 * j);
          domainManager = [engineCopy domainManager];
          v21 = [domainManager domainForName:v19];

          if (!v21)
          {
            __assert_rtn("[MBATCBundlesPlugin startingBackupWithEngine:]", "MBATCBundlesPlugin.m", 313, "domain");
          }

          v22 = engineCopy;
          v23 = [v21 standardizedRelativePathFor:@"Media/iTunes_Control/iTunes"];
          relativePathsNotToBackupToDrive = [v21 relativePathsNotToBackupToDrive];
          v25 = [relativePathsNotToBackupToDrive containsObject:v23];

          if (v25)
          {
            relativePathsNotToBackupToDrive2 = [v21 relativePathsNotToBackupToDrive];
            v27 = [relativePathsNotToBackupToDrive2 mutableCopy];

            v28 = MBGetDefaultLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v46 = v19;
              v47 = 2114;
              v48 = v23;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsNotToBackupToDrive", buf, 0x16u);
              _MBLog(@"Df", "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsNotToBackupToDrive", v19, v23);
            }

            [v27 removeObject:v23];
            [v21 setRelativePathsNotToBackupToDrive:v27];
          }

          relativePathsNotToBackupToDrive3 = [v21 relativePathsNotToBackupToDrive];
          v30 = [relativePathsNotToBackupToDrive3 containsObject:&stru_1003C3430];

          if (v30)
          {
            relativePathsNotToBackupToDrive4 = [v21 relativePathsNotToBackupToDrive];
            v32 = [relativePathsNotToBackupToDrive4 mutableCopy];

            v33 = MBGetDefaultLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v46 = v19;
              v47 = 2114;
              v48 = &stru_1003C3430;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsNotToBackupToDrive", buf, 0x16u);
              _MBLog(@"Df", "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsNotToBackupToDrive", v19, &stru_1003C3430);
            }

            [v32 removeObject:&stru_1003C3430];
            [v21 setRelativePathsNotToBackupToDrive:v32];
          }

          engineCopy = v22;
        }

        v16 = [&off_1003E2468 countByEnumeratingWithState:&v37 objects:v49 count:16];
      }

      while (v16);
    }
  }

  if ([engineCopy isDeviceTransferEngine])
  {
    [(MBATCBundlesPlugin *)self _populatePathsForEngine:engineCopy domain:@"BooksDomain" dataclass:@"Book" allBackupPaths:0];
    v34 = objc_alloc_init(NSMutableSet);
    [(MBATCBundlesPlugin *)self _populatePathsForEngine:engineCopy domain:@"TonesDomain" dataclass:@"Ringtone" allBackupPaths:v34];
    [(MBATCBundlesPlugin *)self _populatePathsForEngine:engineCopy domain:@"MediaDomain" dataclass:@"Media" allBackupPaths:v34];
    [(MBATCBundlesPlugin *)self _updatePathsForCameraRollDomainWithEngine:engineCopy];
    v35 = objc_alloc_init(MBIgnoredAccountsTracker);
    [(MBATCBundlesPlugin *)self _populateAccountsForEngine:engineCopy dataClasses:&off_1003E2480 accountsTracker:v35];
    [(MBATCBundlesPlugin *)self _populateAccountsAndAssetsForEngine:engineCopy accountsTracker:v35];

LABEL_38:
    goto LABEL_39;
  }

  if ([engineCopy isCloudKitEngine])
  {
    [(MBATCBundlesPlugin *)self _populatePathsForEngine:engineCopy domain:@"CameraRollDomain" dataclass:@"Photo"];
    [(MBATCBundlesPlugin *)self _populatePathsForEngine:engineCopy domain:@"BooksDomain" dataclass:@"Book"];
    [(MBATCBundlesPlugin *)self _populatePathsForEngine:engineCopy domain:@"TonesDomain" dataclass:@"Ringtone"];
    [(MBATCBundlesPlugin *)self _populatePathsForEngine:engineCopy domain:@"MediaDomain" dataclass:@"Media"];
    v34 = objc_alloc_init(MBIgnoredAccountsTracker);
    [(MBATCBundlesPlugin *)self _populateAccountsForEngine:engineCopy dataClasses:&off_1003E2498 accountsTracker:v34];
    [(MBATCBundlesPlugin *)self _populateAccountsAndAssetsForEngine:engineCopy accountsTracker:v34];
    [(MBATCBundlesPlugin *)self _populateBuddyStashForEngine:engineCopy];
    goto LABEL_38;
  }

LABEL_39:

  return 0;
}

- (id)endingBackupWithEngine:(id)engine
{
  if ([engine backsUpPrimaryAccount])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = +[ATClientController sharedInstance];
    allClients = [v3 allClients];

    v5 = [allClients countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(allClients);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 backupEnded];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [allClients countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  return 0;
}

- (BOOL)shouldRestoreContentWithPolicy:(id)policy fileInfo:(id)info
{
  infoCopy = info;
  if ([policy isRestoringPrimaryAccount])
  {
    v6 = +[ATClientController sharedInstance];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    allClients = [v6 allClients];
    v8 = [allClients countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v19 = v6;
      v10 = *v21;
      v11 = &selRef_setServiceDelegate_;
      while (2)
      {
        v12 = 0;
        v13 = v11;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(allClients);
          }

          v14 = *(*(&v20 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            v15 = +[MBCKManager sharedInstance];
            v16 = [v14 shouldRestoreFile:infoCopy backupManager:v15];

            if (!v16)
            {
              v17 = 0;
              goto LABEL_14;
            }
          }

          v12 = v12 + 1;
        }

        while (v9 != v12);
        v9 = [allClients countByEnumeratingWithState:&v20 objects:v24 count:16];
        v11 = v13;
        if (v9)
        {
          continue;
        }

        break;
      }

      v17 = 1;
LABEL_14:
      v6 = v19;
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)shouldBackgroundRestoreContentWithPolicy:(id)policy fileInfo:(id)info
{
  infoCopy = info;
  if (![policy isRestoringPrimaryAccount])
  {
    v17 = 0;
    goto LABEL_29;
  }

  v6 = +[ATClientController sharedInstance];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  allClients = [v6 allClients];
  v8 = [allClients countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (!v8)
  {
    v17 = 0;
    goto LABEL_28;
  }

  v9 = v8;
  v10 = *v33;
  v11 = &selRef_setServiceDelegate_;
  v12 = &selRef_setServiceDelegate_;
  v31 = v6;
  while (2)
  {
    v13 = 0;
    v14 = v11;
    v15 = v12;
    do
    {
      if (*v33 != v10)
      {
        objc_enumerationMutation(allClients);
      }

      v16 = *(*(&v32 + 1) + 8 * v13);
      if (objc_opt_respondsToSelector())
      {
        path = [infoCopy path];
        v19 = +[MBCKManager sharedInstance];
        v20 = [v16 shouldBackgroundRestorePath:path backupManager:v19];

        v21 = MBGetDefaultLog();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
        if (v20)
        {
          v6 = v31;
          if (v22)
          {
            goto LABEL_19;
          }

          goto LABEL_22;
        }

        v6 = v31;
        if (v22)
        {
LABEL_24:
          path2 = [infoCopy path];
          *buf = 138412546;
          v37 = v16;
          v38 = 2112;
          v39 = path2;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "=atc-bundles= %@ requesting FG restore: %@", buf, 0x16u);

          v17 = 0;
          v27 = "=atc-bundles= %@ requesting FG restore: %@";
          goto LABEL_25;
        }

LABEL_26:
        v17 = 0;
        goto LABEL_27;
      }

      if (objc_opt_respondsToSelector())
      {
        v23 = +[MBCKManager sharedInstance];
        v24 = [v16 shouldBackgroundRestoreFile:infoCopy backupManager:v23];

        v21 = MBGetDefaultLog();
        v25 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
        if (v24)
        {
          v6 = v31;
          if (v25)
          {
LABEL_19:
            path3 = [infoCopy path];
            *buf = 138412546;
            v37 = v16;
            v38 = 2112;
            v39 = path3;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "=atc-bundles= %@ requesting BG restore: %@", buf, 0x16u);

            v17 = 1;
            v27 = "=atc-bundles= %@ requesting BG restore: %@";
LABEL_25:
            path4 = [infoCopy path];
            _MBLog(@"Db", v27, v16, path4);

            goto LABEL_27;
          }

LABEL_22:
          v17 = 1;
LABEL_27:

          goto LABEL_28;
        }

        v6 = v31;
        if (v25)
        {
          goto LABEL_24;
        }

        goto LABEL_26;
      }

      v13 = v13 + 1;
    }

    while (v9 != v13);
    v9 = [allClients countByEnumeratingWithState:&v32 objects:v40 count:16];
    v17 = 0;
    v6 = v31;
    v11 = v14;
    v12 = v15;
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_28:

LABEL_29:
  return v17;
}

- (id)startingRestoreWithPolicy:(id)policy engine:(id)engine
{
  policyCopy = policy;
  engineCopy = engine;
  if (![engineCopy restoresPrimaryAccount])
  {
    goto LABEL_33;
  }

  domainManager = [engineCopy domainManager];
  v31 = engineCopy;
  v32 = policyCopy;
  if ([engineCopy backupPolicy] == 1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[MBATCBundlesPlugin startingRestoreWithPolicy:engine:]", "MBATCBundlesPlugin.m", 439, "[engine isKindOfClass:MBCKRestoreEngine.class]");
    }

    [engineCopy isDeviceTransferEngine];
    goto LABEL_6;
  }

  if ([engineCopy isDeviceTransferEngine])
  {
LABEL_6:
    if (!domainManager)
    {
      __assert_rtn("[MBATCBundlesPlugin startingRestoreWithPolicy:engine:]", "MBATCBundlesPlugin.m", 443, "domainManager");
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = [&off_1003E24B0 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v8)
    {
      v9 = v8;
      v33 = *v36;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v36 != v33)
          {
            objc_enumerationMutation(&off_1003E24B0);
          }

          v11 = *(*(&v35 + 1) + 8 * i);
          v12 = [domainManager domainForName:v11];
          if (!v12)
          {
            __assert_rtn("[MBATCBundlesPlugin startingRestoreWithPolicy:engine:]", "MBATCBundlesPlugin.m", 447, "domain");
          }

          v13 = v12;
          relativePathsToBackupAndRestore = [v12 relativePathsToBackupAndRestore];

          if (relativePathsToBackupAndRestore)
          {
            relativePathsToBackupAndRestore2 = [v13 relativePathsToBackupAndRestore];
            v16 = [relativePathsToBackupAndRestore2 mutableCopy];
          }

          else
          {
            v16 = objc_opt_new();
          }

          v17 = MBGetDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v40 = v13;
            v41 = 2114;
            v42 = @"Media";
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %{public}@: Adding %{public}@ to relativePathsToBackupAndRestore", buf, 0x16u);
            _MBLog(@"Df", "=atc-bundles= %{public}@: Adding %{public}@ to relativePathsToBackupAndRestore", v13, @"Media");
          }

          [v16 addObject:@"Media"];
          v18 = MBGetDefaultLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v40 = v13;
            v41 = 2114;
            v42 = @"Media/iTunes_Control/iTunes";
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %{public}@: Adding %{public}@ to relativePathsToBackupAndRestore", buf, 0x16u);
            _MBLog(@"Df", "=atc-bundles= %{public}@: Adding %{public}@ to relativePathsToBackupAndRestore", v13, @"Media/iTunes_Control/iTunes");
          }

          [v16 addObject:@"Media/iTunes_Control/iTunes"];
          [v13 setRelativePathsToBackupAndRestore:v16];
          v19 = [v13 standardizedRelativePathFor:@"Media/iTunes_Control/iTunes"];
          relativePathsNotToBackupToDrive = [v13 relativePathsNotToBackupToDrive];
          v21 = [relativePathsNotToBackupToDrive containsObject:v19];

          if (v21)
          {
            relativePathsNotToBackupToDrive2 = [v13 relativePathsNotToBackupToDrive];
            v23 = [relativePathsNotToBackupToDrive2 mutableCopy];

            v24 = MBGetDefaultLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v40 = v11;
              v41 = 2114;
              v42 = v19;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsNotToBackupToDrive", buf, 0x16u);
              _MBLog(@"Df", "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsNotToBackupToDrive", v11, v19);
            }

            [v23 removeObject:v19];
            [v13 setRelativePathsNotToBackupToDrive:v23];
          }

          relativePathsNotToBackupToDrive3 = [v13 relativePathsNotToBackupToDrive];
          v26 = [relativePathsNotToBackupToDrive3 containsObject:&stru_1003C3430];

          if (v26)
          {
            relativePathsNotToBackupToDrive4 = [v13 relativePathsNotToBackupToDrive];
            v28 = [relativePathsNotToBackupToDrive4 mutableCopy];

            v29 = MBGetDefaultLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v40 = v11;
              v41 = 2114;
              v42 = &stru_1003C3430;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsNotToBackupToDrive", buf, 0x16u);
              _MBLog(@"Df", "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsNotToBackupToDrive", v11, &stru_1003C3430);
            }

            [v28 removeObject:&stru_1003C3430];
            [v13 setRelativePathsNotToBackupToDrive:v28];
          }
        }

        v9 = [&off_1003E24B0 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v9);
    }
  }

  engineCopy = v31;
  if ([v31 isDeviceTransferEngine])
  {
    [(MBATCBundlesPlugin *)self _updatePathsForCameraRollDomainWithEngine:v31];
  }

  policyCopy = v32;
LABEL_33:

  return 0;
}

- (void)_updatePathsForCameraRollDomainWithEngine:(id)engine
{
  engineCopy = engine;
  domainManager = [engineCopy domainManager];
  v5 = [domainManager domainForName:@"CameraRollDomain"];

  if (!v5)
  {
    __assert_rtn("[MBATCBundlesPlugin _updatePathsForCameraRollDomainWithEngine:]", "MBATCBundlesPlugin.m", 495, "domain");
  }

  v6 = [v5 standardizedRelativePathFor:@"Media/PhotoData/Sync"];
  relativePathsToRemoveOnRestore = [v5 relativePathsToRemoveOnRestore];
  v8 = [relativePathsToRemoveOnRestore containsObject:v6];

  if (v8)
  {
    relativePathsToRemoveOnRestore2 = [v5 relativePathsToRemoveOnRestore];
    v10 = [relativePathsToRemoveOnRestore2 mutableCopy];

    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v29 = @"CameraRollDomain";
      v30 = 2114;
      v31 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsToRemoveOnRestore", buf, 0x16u);
      _MBLog(@"Df", "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsToRemoveOnRestore", @"CameraRollDomain", v6);
    }

    [v10 removeObject:v6];
    [v5 setRelativePathsToRemoveOnRestore:v10];
  }

  relativePathsNotToBackup = [v5 relativePathsNotToBackup];
  v13 = [relativePathsNotToBackup containsObject:v6];

  if (v13)
  {
    relativePathsNotToBackup2 = [v5 relativePathsNotToBackup];
    v15 = [relativePathsNotToBackup2 mutableCopy];

    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v29 = @"CameraRollDomain";
      v30 = 2114;
      v31 = v6;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsNotToBackup", buf, 0x16u);
      _MBLog(@"Df", "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsNotToBackup", @"CameraRollDomain", v6);
    }

    [v15 removeObject:v6];
    [v5 setRelativePathsNotToBackup:v15];
  }

  v17 = [v5 standardizedRelativePathFor:@"Media/PhotoData/Metadata/PhotoData/Sync"];
  relativePathsToRemoveOnRestore3 = [v5 relativePathsToRemoveOnRestore];
  v19 = [relativePathsToRemoveOnRestore3 containsObject:v17];

  if (v19)
  {
    relativePathsToRemoveOnRestore4 = [v5 relativePathsToRemoveOnRestore];
    v21 = [relativePathsToRemoveOnRestore4 mutableCopy];

    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v29 = @"CameraRollDomain";
      v30 = 2114;
      v31 = v17;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsToRemoveOnRestore", buf, 0x16u);
      _MBLog(@"Df", "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsToRemoveOnRestore", @"CameraRollDomain", v17);
    }

    [v21 removeObject:v17];
    [v5 setRelativePathsToRemoveOnRestore:v21];
  }

  relativePathsNotToBackup3 = [v5 relativePathsNotToBackup];
  v24 = [relativePathsNotToBackup3 containsObject:v17];

  if (v24)
  {
    relativePathsNotToBackup4 = [v5 relativePathsNotToBackup];
    v26 = [relativePathsNotToBackup4 mutableCopy];

    v27 = MBGetDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v29 = @"CameraRollDomain";
      v30 = 2114;
      v31 = v17;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsNotToBackup", buf, 0x16u);
      _MBLog(@"Df", "=atc-bundles= %{public}@: Removing %{public}@ from relativePathsNotToBackup", @"CameraRollDomain", v17);
    }

    [v26 removeObject:v17];
    [v5 setRelativePathsNotToBackup:v26];
  }
}

@end