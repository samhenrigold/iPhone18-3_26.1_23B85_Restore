@interface DownloadsDatabaseGarbageCollectionOperation
+ (BOOL)garbageCollectionTimerIsExpired;
- (void)_garbageCollectPersistentManagers;
- (void)_garbageCollectSoftwareDownloads;
- (void)_garbageCollectWorkingDirectory;
- (void)_garbageCollectWorkingDirectoryPath:(id)path;
- (void)run;
@end

@implementation DownloadsDatabaseGarbageCollectionOperation

+ (BOOL)garbageCollectionTimerIsExpired
{
  v2 = CFPreferencesCopyAppValue(@"DownloadsScratchGarbageCollectionTime", kSSUserDefaultsIdentifier);
  v3 = v2;
  if (v2)
  {
    [v2 timeIntervalSinceNow];
    v5 = v4 < -86400.0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)run
{
  [(DownloadsDatabaseGarbageCollectionOperation *)self _garbageCollectWorkingDirectory];
  [(DownloadsDatabaseGarbageCollectionOperation *)self _garbageCollectPersistentManagers];
  [(DownloadsDatabaseGarbageCollectionOperation *)self _garbageCollectSoftwareDownloads];
  v3 = +[NSDate date];
  v4 = kSSUserDefaultsIdentifier;
  CFPreferencesSetAppValue(@"DownloadsScratchGarbageCollectionTime", v3, kSSUserDefaultsIdentifier);
  CFPreferencesAppSynchronize(v4);

  [(DownloadsDatabaseGarbageCollectionOperation *)self setSuccess:1];
}

- (void)_garbageCollectPersistentManagers
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = +[DownloadsDatabase downloadsDatabase];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10020A328;
  v19[3] = &unk_10032C4E0;
  v4 = v2;
  v20 = v4;
  [v3 readUsingTransactionBlock:v19];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10020A508;
  v17[3] = &unk_10032C508;
  v5 = objc_alloc_init(NSMutableArray);
  v18 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v17];
  if ([v5 count])
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = shouldLog | 2;
    }

    else
    {
      LODWORD(v8) = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = [v5 count];
      v21 = 138412546;
      v22 = v10;
      v23 = 2048;
      v24 = v12;
      v13 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "[%@]: Garbage collecting %lu persistent managers", &v21, 22);

      if (!v13)
      {
LABEL_14:

        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10020A57C;
        v15[3] = &unk_100329558;
        v16 = v5;
        v14 = [v3 modifyUsingTransactionBlock:v15];

        goto LABEL_15;
      }

      oSLogObject = [NSString stringWithCString:v13 encoding:4];
      free(v13);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (void)_garbageCollectSoftwareDownloads
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v12 = 138412290;
  v13 = objc_opt_class();
  v7 = v13;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "[%@]: Garbage collecting software downloads", &v12, 12);

  if (v8)
  {
    oSLogObject = [NSString stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog();
LABEL_12:
  }

  v9 = +[DownloadsDatabase downloadsDatabase];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10020A888;
  v11[3] = &unk_100329558;
  v11[4] = self;
  v10 = [v9 modifyUsingTransactionBlock:v11];
}

- (void)_garbageCollectWorkingDirectory
{
  v3 = +[ScratchManager baseDirectoryPath];
  [(DownloadsDatabaseGarbageCollectionOperation *)self _garbageCollectWorkingDirectoryPath:v3];

  v4 = +[ApplicationWorkspace defaultWorkspace];
  isMultiUser = [v4 isMultiUser];

  if (isMultiUser)
  {
    v6 = +[ScratchManager containerDirectoryPath];
    [(DownloadsDatabaseGarbageCollectionOperation *)self _garbageCollectWorkingDirectoryPath:v6];
  }
}

- (void)_garbageCollectWorkingDirectoryPath:(id)path
{
  pathCopy = path;
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v68 = 138412546;
    v69 = objc_opt_class();
    v70 = 2112;
    v71 = pathCopy;
    v8 = v69;
    v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "[%@]: Garbage collecting download scratch directory: %@", &v68, 22);

    if (!v9)
    {
      goto LABEL_13;
    }

    oSLogObject = [NSString stringWithCString:v9 encoding:4];
    free(v9);
    v44 = oSLogObject;
    SSFileLog();
  }

LABEL_13:
  v10 = objc_alloc_init(NSFileManager);
  v11 = objc_alloc_init(NSMutableSet);
  [v10 contentsOfDirectoryAtPath:pathCopy error:0];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v65 = 0u;
  v12 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v63;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v63 != v14)
        {
          objc_enumerationMutation(obj);
        }

        longLongValue = [*(*(&v62 + 1) + 8 * i) longLongValue];
        if (longLongValue)
        {
          v17 = [[NSNumber alloc] initWithLongLong:longLongValue];
          [v11 addObject:v17];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
    }

    while (v13);
  }

  if ([v11 count])
  {
    v18 = +[DownloadsDatabase downloadsDatabase];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_10020B3B4;
    v57[3] = &unk_10032B650;
    v19 = v11;
    v58 = v19;
    selfCopy = self;
    v49 = pathCopy;
    v20 = pathCopy;
    v60 = v20;
    v48 = v10;
    v21 = v10;
    v61 = v21;
    [v18 readUsingTransactionBlock:v57];

    v22 = +[SSLogConfig sharedDaemonConfig];
    if (!v22)
    {
      v22 = +[SSLogConfig sharedConfig];
    }

    v47 = v11;
    shouldLog2 = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      v24 = shouldLog2 | 2;
    }

    else
    {
      v24 = shouldLog2;
    }

    oSLogObject2 = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v26 = v24;
    }

    else
    {
      v26 = v24 & 2;
    }

    if (v26)
    {
      v27 = objc_opt_class();
      v28 = v27;
      v29 = [v19 count];
      v68 = 138412546;
      v69 = v27;
      v70 = 2048;
      v71 = v29;
      LODWORD(v46) = 22;
      v30 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "[%@]: Garbage collecting %lu scratch directories", &v68, v46);

      if (!v30)
      {
LABEL_35:

        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v50 = v19;
        v31 = [v50 countByEnumeratingWithState:&v53 objects:v66 count:16];
        if (!v31)
        {
          goto LABEL_53;
        }

        v32 = v31;
        v33 = *v54;
        while (1)
        {
          v34 = 0;
          v35 = &CFDictionaryGetValue_ptr;
          do
          {
            if (*v54 != v33)
            {
              objc_enumerationMutation(v50);
            }

            stringValue = [*(*(&v53 + 1) + 8 * v34) stringValue];
            v37 = [v20 stringByAppendingPathComponent:stringValue];

            [v21 removeItemAtPath:v37 error:0];
            sharedDaemonConfig = [v35[412] sharedDaemonConfig];
            if (!sharedDaemonConfig)
            {
              sharedDaemonConfig = [v35[412] sharedConfig];
            }

            LODWORD(v39) = [sharedDaemonConfig shouldLog];
            if ([sharedDaemonConfig shouldLogToDisk])
            {
              LODWORD(v39) = v39 | 2;
            }

            oSLogObject3 = [sharedDaemonConfig OSLogObject];
            if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
            {
              v39 = v39;
            }

            else
            {
              v39 &= 2u;
            }

            if (v39)
            {
              v41 = objc_opt_class();
              v68 = 138412546;
              v69 = v41;
              v70 = 2112;
              v71 = v37;
              v42 = v41;
              LODWORD(v46) = 22;
              v43 = _os_log_send_and_compose_impl(v39, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "[%@]: Removed: %@", &v68, v46);

              v35 = &CFDictionaryGetValue_ptr;
              if (!v43)
              {
                goto LABEL_51;
              }

              oSLogObject3 = [NSString stringWithCString:v43 encoding:4];
              free(v43);
              v45 = oSLogObject3;
              SSFileLog();
            }

LABEL_51:
            v34 = v34 + 1;
          }

          while (v32 != v34);
          v32 = [v50 countByEnumeratingWithState:&v53 objects:v66 count:16];
          if (!v32)
          {
LABEL_53:

            v10 = v48;
            pathCopy = v49;
            v11 = v47;
            goto LABEL_54;
          }
        }
      }

      oSLogObject2 = [NSString stringWithCString:v30 encoding:4];
      free(v30);
      v45 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_35;
  }

LABEL_54:
}

@end