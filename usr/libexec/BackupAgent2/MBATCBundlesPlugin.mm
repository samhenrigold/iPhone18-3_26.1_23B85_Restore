@interface MBATCBundlesPlugin
- (id)endingBackupWithEngine:(id)engine;
- (id)startingBackupWithEngine:(id)engine;
- (void)_populateAccountsAndAssetsForEngine:(id)engine accountsTracker:(id)tracker;
- (void)_populateAccountsForEngine:(id)engine dataClasses:(id)classes accountsTracker:(id)tracker;
- (void)_populateBuddyStashForEngine:(id)engine;
- (void)_populatePathsForEngine:(id)engine domain:(id)domain dataclass:(id)dataclass allBackupPaths:(id)paths;
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
        sub_10009DC60();
      }

      v19 = 1;
    }

    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_10003B058;
    v70[3] = &unk_1000FDAD8;
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
    sub_10009DCB8();
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
    sub_10009DD10();
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
    sub_10009DCE4();
  }

  v12 = v11;
  v13 = +[SSAccountStore defaultStore];
  v14 = objc_alloc_init(NSMutableSet);
  v15 = +[LSApplicationWorkspace defaultWorkspace];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10003BE58;
  v22[3] = &unk_1000FDB00;
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
  if ([engineCopy backsUpPrimaryAccount])
  {
    if (!MBIsInternalInstall() || (+[MBBehaviorOptions sharedOptions](MBBehaviorOptions, "sharedOptions"), v5 = objc_claimAutoreleasedReturnValue(), [v5 domainsToBackUpRegex], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = +[ATClientController sharedInstance];
      allClients = [v7 allClients];

      v9 = [allClients countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          v12 = 0;
          do
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(allClients);
            }

            v13 = *(*(&v15 + 1) + 8 * v12);
            if (objc_opt_respondsToSelector())
            {
              [v13 prepareForBackup];
            }

            v12 = v12 + 1;
          }

          while (v10 != v12);
          v10 = [allClients countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }

      if ([engineCopy isDriveEngine])
      {
        [(MBATCBundlesPlugin *)self _populatePathsForEngine:engineCopy domain:@"TonesDomain" dataclass:@"Ringtone"];
      }
    }
  }

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

@end