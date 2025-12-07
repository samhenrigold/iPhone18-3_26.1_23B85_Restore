@interface DMDManagedMediaManager
+ (BOOL)shouldBypassVPPLicenseCheck;
+ (DMDManagedMediaManager)sharedManager;
+ (id)homeSharingCloudClient;
- (DMDManagedMediaManager)init;
- (NSArray)nonStoreBooks;
- (NSArray)storeBooks;
- (void)cancelNonStoreDownloadsWithDownloadIdentifiers:(id)identifiers completionBlock:(id)block;
- (void)cleanUpWithAssertion:(id)assertion completionBlock:(id)block;
- (void)installNonStoreBook:(id)book fileExtension:(id)extension URL:(id)l assertion:(id)assertion completionBlock:(id)block;
- (void)installStoreBookWithiTunesStoreID:(id)d originator:(id)originator assertion:(id)assertion completionBlock:(id)block;
- (void)memberQueueCleanUp;
- (void)memberQueueCommitNonStoreBooksManifest;
- (void)memberQueueCommitStoreBooksManifest;
- (void)memberQueueMoveTransientStatesForward;
- (void)memberQueueRereadNonStoreBooksManifest;
- (void)memberQueueRereadStoreBooksManifest;
- (void)moveTransientStatesForward;
- (void)refreshBookPurchaseHistoryCompletion:(id)completion;
- (void)removeNonStoreBookWithPersistentID:(id)d assertion:(id)assertion completionBlock:(id)block;
- (void)removeStoreBookWithiTunesStoreID:(id)d assertion:(id)assertion completionBlock:(id)block;
- (void)rereadNonStoreBooksManifestCompletionBlock:(id)block;
- (void)rereadStoreBooksManifestCompletionBlock:(id)block;
- (void)searchBookPurchaseHistoryForiTunesStoreID:(id)d assertion:(id)assertion triesLeft:(int)left completionBlock:(id)block;
- (void)setNonStoreManagedBook:(id)book;
- (void)setState:(id)state forNonStoreBookWithPersistentID:(id)d;
- (void)setState:(id)state forStoreBookWithiTunesStoreID:(id)d;
- (void)setStoreManagedBook:(id)book;
- (void)uprootWithAssertion:(id)assertion completionBlock:(id)block;
@end

@implementation DMDManagedMediaManager

+ (DMDManagedMediaManager)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005009C;
  block[3] = &unk_1000CE018;
  block[4] = self;
  if (qword_1000FF138 != -1)
  {
    dispatch_once(&qword_1000FF138, block);
  }

  v2 = qword_1000FF130;

  return v2;
}

+ (id)homeSharingCloudClient
{
  if (qword_1000FF148 != -1)
  {
    sub_100084DA4();
  }

  v3 = qword_1000FF140;

  return v3;
}

- (DMDManagedMediaManager)init
{
  v15.receiver = self;
  v15.super_class = DMDManagedMediaManager;
  v3 = [(DMDManagedMediaManager *)&v15 init];
  if (v3)
  {
    v4 = [DMDPowerAssertion assertionForOperation:@"DMDManagedMediaManager: init"];
    if ((MCHasMDMMigrated() & 1) == 0)
    {
      sub_100084DB8(a2, v3);
    }

    v5 = dispatch_queue_create("DMDManagedMediaManager Member Queue", &_dispatch_queue_attr_concurrent);
    memberQueue = v3->_memberQueue;
    v3->_memberQueue = v5;

    v7 = objc_opt_new();
    memberQueuePersistentIDToNonStoreBook = v3->_memberQueuePersistentIDToNonStoreBook;
    v3->_memberQueuePersistentIDToNonStoreBook = v7;

    v9 = objc_opt_new();
    memberQueueiTunesStoreIDToStoreBook = v3->_memberQueueiTunesStoreIDToStoreBook;
    v3->_memberQueueiTunesStoreIDToStoreBook = v9;

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000502B8;
    v13[3] = &unk_1000CE5A0;
    v14 = v4;
    v11 = v4;
    [(DMDManagedMediaManager *)v3 cleanUpWithAssertion:v11 completionBlock:v13];
    [v11 stayAliveThroughHereAtLeast];
  }

  return v3;
}

- (void)cleanUpWithAssertion:(id)assertion completionBlock:(id)block
{
  blockCopy = block;
  memberQueue = [(DMDManagedMediaManager *)self memberQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100050374;
  v8[3] = &unk_1000CE8C0;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  dispatch_barrier_async(memberQueue, v8);
}

- (void)memberQueueCleanUp
{
  v2 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Cleaning up media manager manifests", buf, 2u);
  }

  v71 = sub_100050ED0(v2);
  [(DMDManagedMediaManager *)self memberQueueRereadNonStoreBooksManifest];
  v74 = objc_opt_new();
  downloads = [v71 downloads];
  v81 = [downloads mutableCopy];

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = [(DMDManagedMediaManager *)self memberQueuePersistentIDToNonStoreBook];
  v4 = [obj countByEnumeratingWithState:&v106 objects:v117 count:16];
  if (v4)
  {
    v79 = 0;
    v5 = *v107;
    v75 = SSDownloadPhaseFailed;
    v73 = SSDownloadPhaseFinished;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v107 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v106 + 1) + 8 * i);
        memberQueuePersistentIDToNonStoreBook = [(DMDManagedMediaManager *)self memberQueuePersistentIDToNonStoreBook];
        v9 = [memberQueuePersistentIDToNonStoreBook objectForKeyedSubscript:v7];

        downloadIdentifier = [v9 downloadIdentifier];
        v11 = downloadIdentifier == 0;

        if (!v11)
        {
          *buf = 0;
          v101 = buf;
          v102 = 0x3032000000;
          v103 = sub_100050F14;
          v104 = sub_100050F24;
          v105 = 0;
          downloadIdentifier2 = [v9 downloadIdentifier];
          longLongValue = [downloadIdentifier2 longLongValue];

          v99[0] = _NSConcreteStackBlock;
          v99[1] = 3221225472;
          v99[2] = sub_100050F2C;
          v99[3] = &unk_1000CF5A0;
          v99[4] = buf;
          v99[5] = longLongValue;
          [v81 enumerateObjectsUsingBlock:v99];
          v14 = *(v101 + 5);
          if (v14)
          {
            downloadPhaseIdentifier = [v14 downloadPhaseIdentifier];
            if ([downloadPhaseIdentifier isEqualToString:v75])
            {
              v16 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                friendlyName = [v9 friendlyName];
                failureError = [*(v101 + 5) failureError];
                *v113 = 138543618;
                v114 = friendlyName;
                v115 = 2114;
                v116 = failureError;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Book failed to download: %{public}@\nError: %{public}@", v113, 0x16u);
              }

              [v9 setDownloadIdentifier:0];
              state = [v9 state];
              v18 = state == @"Failed";

              if (!v18)
              {
                [v9 setState:@"Failed"];
                v79 = 1;
              }

              [v74 addObject:*(v101 + 5)];
            }

            else if ([downloadPhaseIdentifier isEqualToString:v73])
            {
              v19 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                friendlyName2 = [v9 friendlyName];
                *v113 = 138543362;
                v114 = friendlyName2;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Book completed downloading: %{public}@", v113, 0xCu);
              }

              [v9 setDownloadIdentifier:0];
              state2 = [v9 state];
              v22 = state2 == @"Managed";

              if (!v22)
              {
                [v9 setState:@"Managed"];
                v79 = 1;
              }
            }

            [v81 removeObjectIdenticalTo:*(v101 + 5)];
          }

          _Block_object_dispose(buf, 8);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v106 objects:v117 count:16];
    }

    while (v4);
  }

  else
  {
    v79 = 0;
  }

  [v71 finishDownloads:v74];
  if ([v81 count])
  {
    v96[0] = _NSConcreteStackBlock;
    v96[1] = 3221225472;
    v96[2] = sub_100050FAC;
    v96[3] = &unk_1000CDBD0;
    v97 = v71;
    v98 = v81;
    [v97 cancelDownloads:v98 completionBlock:v96];
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  memberQueuePersistentIDToNonStoreBook2 = [(DMDManagedMediaManager *)self memberQueuePersistentIDToNonStoreBook];
  v25 = [memberQueuePersistentIDToNonStoreBook2 countByEnumeratingWithState:&v92 objects:v112 count:16];
  if (v25)
  {
    v26 = *v93;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v93 != v26)
        {
          objc_enumerationMutation(memberQueuePersistentIDToNonStoreBook2);
        }

        v28 = *(*(&v92 + 1) + 8 * j);
        memberQueuePersistentIDToNonStoreBook3 = [(DMDManagedMediaManager *)self memberQueuePersistentIDToNonStoreBook];
        v30 = [memberQueuePersistentIDToNonStoreBook3 objectForKeyedSubscript:v28];

        fullPath = [v30 fullPath];
        if (!fullPath || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v32 = objc_claimAutoreleasedReturnValue(), [v30 fullPath], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v32, "fileExistsAtPath:", v33), v33, v32, fullPath, !v34))
        {
          state3 = [v30 state];
          v39 = state3 == @"ManagedButUninstalled";

          v37 = @"ManagedButUninstalled";
          if (v39)
          {
            goto LABEL_40;
          }

LABEL_39:
          [v30 setState:v37];
          v79 = 1;
          goto LABEL_40;
        }

        state4 = [v30 state];
        v36 = state4 == @"Managed";

        v37 = @"Managed";
        if (!v36)
        {
          goto LABEL_39;
        }

LABEL_40:
      }

      v25 = [memberQueuePersistentIDToNonStoreBook2 countByEnumeratingWithState:&v92 objects:v112 count:16];
    }

    while (v25);
  }

  if (v79)
  {
    [(DMDManagedMediaManager *)self memberQueueCommitNonStoreBooksManifest];
  }

  v40 = +[DMDPaths purchasedBooksManifest];
  obja = [NSDictionary dictionaryWithContentsOfFile:v40];

  v41 = [obja objectForKeyedSubscript:@"Books"];
  v42 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v41 count]);
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v82 = v41;
  v43 = [v82 countByEnumeratingWithState:&v88 objects:v111 count:16];
  if (v43)
  {
    v44 = *v89;
    do
    {
      for (k = 0; k != v43; k = k + 1)
      {
        if (*v89 != v44)
        {
          objc_enumerationMutation(v82);
        }

        v46 = *(*(&v88 + 1) + 8 * k);
        v47 = [v46 objectForKeyedSubscript:@"s"];
        v48 = [v46 objectForKeyedSubscript:@"Path"];
        v49 = v48;
        if (v47)
        {
          v50 = v48 == 0;
        }

        else
        {
          v50 = 1;
        }

        if (!v50)
        {
          v51 = +[DMDPaths purchasedBooksDirectory];
          v52 = [v51 stringByAppendingPathComponent:v49];
          [v42 setObject:v52 forKeyedSubscript:v47];
        }
      }

      v43 = [v82 countByEnumeratingWithState:&v88 objects:v111 count:16];
    }

    while (v43);
  }

  [(DMDManagedMediaManager *)self memberQueueRereadStoreBooksManifest];
  v80 = +[NSFileManager defaultManager];
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  memberQueueiTunesStoreIDToStoreBook = [(DMDManagedMediaManager *)self memberQueueiTunesStoreIDToStoreBook];
  v54 = [memberQueueiTunesStoreIDToStoreBook countByEnumeratingWithState:&v84 objects:v110 count:16];
  if (!v54)
  {

    goto LABEL_74;
  }

  v78 = 0;
  v55 = *v85;
  do
  {
    for (m = 0; m != v54; m = m + 1)
    {
      if (*v85 != v55)
      {
        objc_enumerationMutation(memberQueueiTunesStoreIDToStoreBook);
      }

      v57 = *(*(&v84 + 1) + 8 * m);
      memberQueueiTunesStoreIDToStoreBook2 = [(DMDManagedMediaManager *)self memberQueueiTunesStoreIDToStoreBook];
      v59 = [memberQueueiTunesStoreIDToStoreBook2 objectForKeyedSubscript:v57];

      v61 = sub_100050FB8(v60);
      state5 = [v59 state];
      v63 = [v61 containsObject:state5];

      if ((v63 & 1) == 0)
      {
        iTunesStoreID = [v59 iTunesStoreID];
        v65 = [v42 objectForKeyedSubscript:iTunesStoreID];

        if (v65 && [v80 fileExistsAtPath:v65])
        {
          state6 = [v59 state];
          v67 = state6 == @"Installed";

          v68 = @"Installed";
          if (v67)
          {
            goto LABEL_68;
          }

LABEL_67:
          [v59 setState:v68];
          v78 = 1;
        }

        else
        {
          state7 = [v59 state];
          v70 = state7 == @"Uninstalled";

          v68 = @"Uninstalled";
          if (!v70)
          {
            goto LABEL_67;
          }
        }

LABEL_68:
      }
    }

    v54 = [memberQueueiTunesStoreIDToStoreBook countByEnumeratingWithState:&v84 objects:v110 count:16];
  }

  while (v54);

  if (v78)
  {
    [(DMDManagedMediaManager *)self memberQueueCommitStoreBooksManifest];
  }

LABEL_74:
}

- (void)memberQueueCommitNonStoreBooksManifest
{
  v3 = objc_opt_new();
  memberQueuePersistentIDToNonStoreBook = [(DMDManagedMediaManager *)self memberQueuePersistentIDToNonStoreBook];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [memberQueuePersistentIDToNonStoreBook count]);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  memberQueuePersistentIDToNonStoreBook2 = [(DMDManagedMediaManager *)self memberQueuePersistentIDToNonStoreBook];
  allValues = [memberQueuePersistentIDToNonStoreBook2 allValues];

  v8 = [allValues countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        manifestDictionary = [*(*(&v19 + 1) + 8 * v11) manifestDictionary];
        [v5 addObject:manifestDictionary];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [allValues countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }

  [v3 setObject:v5 forKeyedSubscript:kNonStoreBooksManifestBooksKey];
  v13 = +[NSFileManager defaultManager];
  v14 = +[DMDPaths managedNonStoreBooksDirectory];
  if (([v13 fileExistsAtPath:v14] & 1) == 0)
  {
    v23 = NSFilePosixPermissions;
    v24 = &off_1000D7A30;
    v15 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [v13 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:v15 error:0];

    v16 = +[MCProfileConnection sharedConnection];
    isEnterpriseBookBackupAllowed = [v16 isEnterpriseBookBackupAllowed];

    if (![DMDMDMUtilities setSkipBackupAttribute:isEnterpriseBookBackupAllowed ^ 1 toItemAtPath:v14]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100084E44();
    }
  }

  v18 = +[DMDPaths managedNonStoreBooksManifestPath];
  [v3 writeToFile:v18 atomically:1];

  MCSendManagedBooksChangedNotification();
}

- (void)memberQueueCommitStoreBooksManifest
{
  v3 = objc_opt_new();
  memberQueueiTunesStoreIDToStoreBook = [(DMDManagedMediaManager *)self memberQueueiTunesStoreIDToStoreBook];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [memberQueueiTunesStoreIDToStoreBook count]);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  memberQueueiTunesStoreIDToStoreBook2 = [(DMDManagedMediaManager *)self memberQueueiTunesStoreIDToStoreBook];
  allValues = [memberQueueiTunesStoreIDToStoreBook2 allValues];

  v8 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        manifestDictionary = [*(*(&v14 + 1) + 8 * v11) manifestDictionary];
        [v5 addObject:manifestDictionary];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [v3 setObject:v5 forKeyedSubscript:kStoreBooksManifestBooksKey];
  v13 = +[DMDPaths managedStoreBooksManifestPath];
  [v3 writeToFile:v13 atomically:1];

  MCSendManagedBooksChangedNotification();
}

- (void)memberQueueRereadNonStoreBooksManifest
{
  v3 = objc_opt_new();
  v4 = +[DMDPaths managedNonStoreBooksManifestPath];
  v5 = [NSDictionary dictionaryWithContentsOfFile:v4];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:kNonStoreBooksManifestBooksKey];
    v7 = v6;
    if (v6)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          v11 = 0;
          do
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [[MDMBook alloc] initWithManifestDictionary:*(*(&v15 + 1) + 8 * v11)];
            persistentID = [v12 persistentID];

            if (persistentID)
            {
              persistentID2 = [v12 persistentID];
              [v3 setObject:v12 forKeyedSubscript:persistentID2];
            }

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v9);
      }
    }
  }

  [(DMDManagedMediaManager *)self setMemberQueuePersistentIDToNonStoreBook:v3];
}

- (void)memberQueueRereadStoreBooksManifest
{
  v3 = objc_opt_new();
  v4 = +[DMDPaths managedStoreBooksManifestPath];
  v5 = [NSDictionary dictionaryWithContentsOfFile:v4];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:kStoreBooksManifestBooksKey];
    v7 = v6;
    if (v6)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          v11 = 0;
          do
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [[MDMBook alloc] initWithManifestDictionary:*(*(&v15 + 1) + 8 * v11)];
            iTunesStoreID = [v12 iTunesStoreID];

            if (iTunesStoreID)
            {
              iTunesStoreID2 = [v12 iTunesStoreID];
              [v3 setObject:v12 forKeyedSubscript:iTunesStoreID2];
            }

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v9);
      }
    }
  }

  [(DMDManagedMediaManager *)self setMemberQueueiTunesStoreIDToStoreBook:v3];
}

- (void)rereadNonStoreBooksManifestCompletionBlock:(id)block
{
  blockCopy = block;
  memberQueue = [(DMDManagedMediaManager *)self memberQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005188C;
  v7[3] = &unk_1000CE8C0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_barrier_async(memberQueue, v7);
}

- (void)rereadStoreBooksManifestCompletionBlock:(id)block
{
  blockCopy = block;
  memberQueue = [(DMDManagedMediaManager *)self memberQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000519B8;
  v7[3] = &unk_1000CE8C0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_barrier_async(memberQueue, v7);
}

- (void)setNonStoreManagedBook:(id)book
{
  bookCopy = book;
  persistentID = [bookCopy persistentID];

  if (persistentID)
  {
    memberQueue = [(DMDManagedMediaManager *)self memberQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100051B1C;
    v7[3] = &unk_1000CDC38;
    v7[4] = self;
    v8 = bookCopy;
    dispatch_barrier_async(memberQueue, v7);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100084E88();
  }
}

- (void)setStoreManagedBook:(id)book
{
  bookCopy = book;
  iTunesStoreID = [bookCopy iTunesStoreID];

  if (iTunesStoreID)
  {
    memberQueue = [(DMDManagedMediaManager *)self memberQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100051C7C;
    v7[3] = &unk_1000CDC38;
    v7[4] = self;
    v8 = bookCopy;
    dispatch_barrier_async(memberQueue, v7);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100084F00();
  }
}

- (void)setState:(id)state forNonStoreBookWithPersistentID:(id)d
{
  stateCopy = state;
  dCopy = d;
  memberQueue = [(DMDManagedMediaManager *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051DC8;
  block[3] = &unk_1000CDC60;
  block[4] = self;
  v12 = dCopy;
  v13 = stateCopy;
  v9 = stateCopy;
  v10 = dCopy;
  dispatch_barrier_async(memberQueue, block);
}

- (void)setState:(id)state forStoreBookWithiTunesStoreID:(id)d
{
  stateCopy = state;
  dCopy = d;
  memberQueue = [(DMDManagedMediaManager *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051F1C;
  block[3] = &unk_1000CDC60;
  block[4] = self;
  v12 = dCopy;
  v13 = stateCopy;
  v9 = stateCopy;
  v10 = dCopy;
  dispatch_barrier_async(memberQueue, block);
}

- (void)cancelNonStoreDownloadsWithDownloadIdentifiers:(id)identifiers completionBlock:(id)block
{
  identifiersCopy = identifiers;
  blockCopy = block;
  v7 = sub_100050ED0(blockCopy);
  v8 = objc_opt_new();
  if ([identifiersCopy count])
  {
    v19 = v7;
    v20 = blockCopy;
    downloads = [v7 downloads];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = [downloads countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(downloads);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v14 persistentIdentifier]);
          v16 = [identifiersCopy containsObject:v15];

          if (v16)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [downloads countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v11);
    }

    v7 = v19;
    blockCopy = v20;
  }

  if ([v8 count])
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100052220;
    v23[3] = &unk_1000CE2E8;
    v17 = &v24;
    v24 = blockCopy;
    [v7 cancelDownloads:v8 completionBlock:v23];
LABEL_16:

    goto LABEL_17;
  }

  if (blockCopy)
  {
    v18 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100052284;
    block[3] = &unk_1000CF578;
    v17 = &v22;
    v22 = blockCopy;
    dispatch_async(v18, block);

    goto LABEL_16;
  }

LABEL_17:
}

- (void)installNonStoreBook:(id)book fileExtension:(id)extension URL:(id)l assertion:(id)assertion completionBlock:(id)block
{
  bookCopy = book;
  extensionCopy = extension;
  lCopy = l;
  assertionCopy = assertion;
  blockCopy = block;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = bookCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Starting installation of book: %{public}@", buf, 0xCu);
  }

  persistentID = [bookCopy persistentID];
  if (!persistentID)
  {
    sub_100084FF0();
  }

  memberQueue = [(DMDManagedMediaManager *)self memberQueue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100052470;
  v24[3] = &unk_1000CF668;
  v24[4] = self;
  v25 = bookCopy;
  v26 = extensionCopy;
  v27 = assertionCopy;
  v28 = lCopy;
  v29 = blockCopy;
  v19 = lCopy;
  v20 = assertionCopy;
  v21 = blockCopy;
  v22 = extensionCopy;
  v23 = bookCopy;
  dispatch_barrier_async(memberQueue, v24);
}

+ (BOOL)shouldBypassVPPLicenseCheck
{
  CFPreferencesAppSynchronize(@"com.apple.managedconfiguration.mdmd");
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"MediaBypassVPPCheck", @"com.apple.managedconfiguration.mdmd", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (void)refreshBookPurchaseHistoryCompletion:(id)completion
{
  completionCopy = completion;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Refreshing book purchase history and trying again.", v5, 2u);
  }

  v4 = +[DMDManagedMediaManager homeSharingCloudClient];
  [v4 updateJaliscoLibraryWithReason:8 completionHandler:completionCopy];
}

- (void)searchBookPurchaseHistoryForiTunesStoreID:(id)d assertion:(id)assertion triesLeft:(int)left completionBlock:(id)block
{
  dCopy = d;
  assertionCopy = assertion;
  blockCopy = block;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v26 = dCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Searching book purchase history for iTunes Store ID %{public}@", buf, 0xCu);
  }

  v13 = +[DMDManagedMediaManager homeSharingCloudClient];
  v24 = dCopy;
  v14 = [NSArray arrayWithObjects:&v24 count:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100053254;
  v18[3] = &unk_1000CF6B8;
  leftCopy = left;
  v19 = dCopy;
  selfCopy = self;
  v21 = assertionCopy;
  v22 = blockCopy;
  v15 = assertionCopy;
  v16 = dCopy;
  v17 = blockCopy;
  [v13 loadBooksForStoreIDs:v14 withCompletionHandler:v18];
}

- (void)installStoreBookWithiTunesStoreID:(id)d originator:(id)originator assertion:(id)assertion completionBlock:(id)block
{
  dCopy = d;
  originatorCopy = originator;
  assertionCopy = assertion;
  blockCopy = block;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = dCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Starting installation of book with iTunes Store ID %{public}@", buf, 0xCu);
  }

  if (dCopy)
  {
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"Book Installation" value:&stru_1000D0428 table:@"DMFNotifications"];

    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"Sign in to iTunes to allow %@ to manage and install books." value:&stru_1000D0428 table:@"DMFNotifications"];
    originatorCopy = [NSString stringWithFormat:v17, originatorCopy];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100053960;
    v20[3] = &unk_1000CF730;
    v24 = blockCopy;
    v21 = assertionCopy;
    selfCopy = self;
    v23 = dCopy;
    [(DMDManagedAssetManager *)self promptUserToLoginToiTunesIfNeededTitle:v15 message:originatorCopy assertion:v21 completionBlock:v20];

LABEL_7:
    goto LABEL_8;
  }

  if (blockCopy)
  {
    v19 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000538E8;
    block[3] = &unk_1000CF450;
    v27 = blockCopy;
    v26 = assertionCopy;
    dispatch_async(v19, block);

    v15 = v27;
    goto LABEL_7;
  }

LABEL_8:
}

- (NSArray)storeBooks
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100050F14;
  v11 = sub_100050F24;
  v12 = 0;
  memberQueue = [(DMDManagedMediaManager *)self memberQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100053DD8;
  v6[3] = &unk_1000CE550;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_barrier_sync(memberQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSArray)nonStoreBooks
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100050F14;
  v11 = sub_100050F24;
  v12 = 0;
  memberQueue = [(DMDManagedMediaManager *)self memberQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100053F8C;
  v6[3] = &unk_1000CE550;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_barrier_sync(memberQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)memberQueueMoveTransientStatesForward
{
  v31 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  memberQueuePersistentIDToNonStoreBook = [(DMDManagedMediaManager *)self memberQueuePersistentIDToNonStoreBook];
  v4 = [memberQueuePersistentIDToNonStoreBook countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v38;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(memberQueuePersistentIDToNonStoreBook);
        }

        v8 = *(*(&v37 + 1) + 8 * i);
        memberQueuePersistentIDToNonStoreBook2 = [(DMDManagedMediaManager *)self memberQueuePersistentIDToNonStoreBook];
        v10 = [memberQueuePersistentIDToNonStoreBook2 objectForKeyedSubscript:v8];

        v12 = sub_100050FB8(v11);
        state = [v10 state];
        v14 = [v12 containsObject:state];

        if (v14)
        {
          [v31 addObject:v8];
        }
      }

      v5 = [memberQueuePersistentIDToNonStoreBook countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v5);
  }

  if ([v31 count])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v15 = [v31 count];
      *buf = 67109120;
      LODWORD(v42) = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Removing %u non-store books because we have reported their transient state.", buf, 8u);
    }

    memberQueuePersistentIDToNonStoreBook3 = [(DMDManagedMediaManager *)self memberQueuePersistentIDToNonStoreBook];
    [memberQueuePersistentIDToNonStoreBook3 removeObjectsForKeys:v31];

    [(DMDManagedMediaManager *)self memberQueueCommitNonStoreBooksManifest];
  }

  v32 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  memberQueueiTunesStoreIDToStoreBook = [(DMDManagedMediaManager *)self memberQueueiTunesStoreIDToStoreBook];
  v18 = [memberQueueiTunesStoreIDToStoreBook countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(memberQueueiTunesStoreIDToStoreBook);
        }

        v22 = *(*(&v33 + 1) + 8 * j);
        memberQueueiTunesStoreIDToStoreBook2 = [(DMDManagedMediaManager *)self memberQueueiTunesStoreIDToStoreBook];
        v24 = [memberQueueiTunesStoreIDToStoreBook2 objectForKeyedSubscript:v22];

        v26 = sub_100050FB8(v25);
        state2 = [v24 state];
        v28 = [v26 containsObject:state2];

        if (v28)
        {
          [v32 addObject:v22];
        }
      }

      v19 = [memberQueueiTunesStoreIDToStoreBook countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v19);
  }

  if ([v32 count])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v29 = [v32 count];
      *buf = 134217984;
      v42 = v29;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Removing %lu store books because we have reported their transient state.", buf, 0xCu);
    }

    memberQueueiTunesStoreIDToStoreBook3 = [(DMDManagedMediaManager *)self memberQueueiTunesStoreIDToStoreBook];
    [memberQueueiTunesStoreIDToStoreBook3 removeObjectsForKeys:v32];

    [(DMDManagedMediaManager *)self memberQueueCommitStoreBooksManifest];
  }
}

- (void)moveTransientStatesForward
{
  memberQueue = [(DMDManagedMediaManager *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054448;
  block[3] = &unk_1000CE5A0;
  block[4] = self;
  dispatch_barrier_async(memberQueue, block);
}

- (void)removeNonStoreBookWithPersistentID:(id)d assertion:(id)assertion completionBlock:(id)block
{
  dCopy = d;
  assertionCopy = assertion;
  blockCopy = block;
  memberQueue = [(DMDManagedMediaManager *)self memberQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100054550;
  v15[3] = &unk_1000CE9D8;
  v15[4] = self;
  v16 = dCopy;
  v17 = assertionCopy;
  v18 = blockCopy;
  v12 = assertionCopy;
  v13 = blockCopy;
  v14 = dCopy;
  dispatch_barrier_async(memberQueue, v15);
}

- (void)removeStoreBookWithiTunesStoreID:(id)d assertion:(id)assertion completionBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  memberQueue = [(DMDManagedMediaManager *)self memberQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054A60;
  block[3] = &unk_1000CDC38;
  block[4] = self;
  v16 = dCopy;
  v10 = dCopy;
  dispatch_sync(memberQueue, block);

  v11 = dispatch_get_global_queue(0, 0);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100054AB0;
  v13[3] = &unk_1000CF578;
  v14 = blockCopy;
  v12 = blockCopy;
  dispatch_async(v11, v13);
}

- (void)uprootWithAssertion:(id)assertion completionBlock:(id)block
{
  assertionCopy = assertion;
  blockCopy = block;
  v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Canceling all book downloads.", buf, 2u);
  }

  v9 = sub_100050ED0(v8);
  [v9 downloads];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100054C18;
  v14[3] = &unk_1000CF758;
  v16 = v15 = v9;
  v18 = assertionCopy;
  v19 = blockCopy;
  selfCopy = self;
  v10 = assertionCopy;
  v11 = blockCopy;
  v12 = v16;
  v13 = v9;
  [v13 cancelDownloads:v12 completionBlock:v14];
}

@end