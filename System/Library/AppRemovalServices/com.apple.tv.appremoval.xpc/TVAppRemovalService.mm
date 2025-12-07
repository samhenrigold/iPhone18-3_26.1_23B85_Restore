@interface TVAppRemovalService
- (BOOL)_anyDownloadsExistAtPaths:(id)paths;
- (void)_clearPreferencesForApplicationID:(id)d;
- (void)removeAppWithReply:(id)reply;
@end

@implementation TVAppRemovalService

- (void)removeAppWithReply:(id)reply
{
  replyCopy = reply;
  NSLog(@"Running app removal...");
  v5 = +[NSBundle mainBundle];
  bundleIdentifier = [v5 bundleIdentifier];
  [bundleIdentifier UTF8String];

  v7 = tcc_identity_create();
  v8 = dispatch_group_create();
  NSLog(@"Invalidating playback keys and listening for secure invalidation complete notification");
  dispatch_group_enter(v8);
  v9 = +[NSNotificationCenter defaultCenter];
  v10 = VUITellAppRemovalServiceThatSecureInvalidationDidCompleteNotification;
  v11 = +[NSOperationQueue currentQueue];
  v90[0] = _NSConcreteStackBlock;
  v90[1] = 3221225472;
  v90[2] = sub_10000183C;
  v90[3] = &unk_100004288;
  v12 = v8;
  v91 = v12;
  v13 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v90];

  [VUIMediaLibraryManager setDeleteAllVideosAndKeysOnInitializationForAppRemoval:1];
  v14 = +[VUIMediaLibraryManager defaultManager];
  v15 = &NSLog_ptr;
  [MPMediaQuery setFilteringDisabled:1];
  v16 = [MPMediaLibrary alloc];
  v17 = +[ICUserIdentity autoupdatingActiveAccount];
  v18 = [v16 initWithClientIdentity:v7 userIdentity:v17];

  v19 = +[ISNetworkObserver sharedInstance];
  LOBYTE(v16) = +[ISNetworkObserver isLikelyToReachRemoteServerWithReachabilityFlags:](ISNetworkObserver, "isLikelyToReachRemoteServerWithReachabilityFlags:", [v19 networkReachabilityFlags]);

  NSLog(@"Process rentals...");
  v20 = &NSLog_ptr;
  if (v16)
  {
    v21 = objc_alloc_init(MPMediaQuery);
    v22 = [MPMediaPropertyPredicate predicateWithValue:&off_100004588 forProperty:?];
    [v21 addFilterPredicate:v22];

    v23 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanTrue forProperty:MPMediaItemPropertyIsRental];
    [v21 addFilterPredicate:v23];

    +[NSDate timeIntervalSinceReferenceDate];
    v24 = [NSNumber numberWithDouble:?];
    v25 = [MPMediaPropertyPredicate predicateWithValue:v24 forProperty:MPMediaItemPropertyRentalExpirationDate comparisonType:101];
    [v21 addFilterPredicate:v25];

    NSLog(@"Rental count... %lu", [v21 _countOfItems]);
    if ([v21 _hasItems])
    {
      v69 = v18;
      v70 = replyCopy;
      selfCopy = self;
      v73 = v12;
      v75 = v7;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v68 = v21;
      items = [v21 items];
      v27 = [items countByEnumeratingWithState:&v86 objects:v95 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v87;
        v30 = MPMediaItemPropertyStoreAccountID;
        v31 = MPMediaItemPropertyStoreRentalID;
        v77 = MPMediaItemPropertyStoreRentalID;
        do
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v87 != v29)
            {
              objc_enumerationMutation(items);
            }

            v33 = *(*(&v86 + 1) + 8 * i);
            v34 = [v33 valueForProperty:v30];
            v35 = [v33 valueForProperty:v31];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v36 = v29;
                v37 = v35;
                v38 = v30;
                v39 = items;
                v40 = v34;
                v41 = [[SSRentalCheckinRequest alloc] initWithAccountIdentifier:v40 rentalKeyIdentifier:v37];

                v29 = v36;
                v42 = dispatch_semaphore_create(0);
                v84[0] = _NSConcreteStackBlock;
                v84[1] = 3221225472;
                v84[2] = sub_10000187C;
                v84[3] = &unk_1000042B0;
                v85 = v42;
                v43 = v42;
                [v41 startWithConnectionResponseBlock:v84];
                v44 = dispatch_time(0, 3000000000);
                dispatch_semaphore_wait(v43, v44);

                items = v39;
                v30 = v38;
                v31 = v77;
              }
            }
          }

          v28 = [items countByEnumeratingWithState:&v86 objects:v95 count:16];
        }

        while (v28);
      }

      v12 = v73;
      v7 = v75;
      v18 = v69;
      replyCopy = v70;
      self = selfCopy;
      v15 = &NSLog_ptr;
      v20 = &NSLog_ptr;
      v21 = v68;
    }

    v45 = MPMediaItemPropertyMediaType;
  }

  else
  {
    v45 = MPMediaItemPropertyMediaType;
  }

  NSLog(@"Process content for deletion...");
  v46 = objc_alloc_init(v15[64]);
  v47 = [v20[63] predicateWithValue:&off_100004588 forProperty:v45];
  [v46 addFilterPredicate:v47];

  v48 = [v20[63] predicateWithValue:&__kCFBooleanTrue forProperty:MPMediaItemPropertyHasNonPurgeableAsset];
  v94[0] = v48;
  v49 = [v20[63] predicateWithValue:&__kCFBooleanTrue forProperty:MPMediaItemPropertyIsLocal];
  v94[1] = v49;
  v50 = [NSArray arrayWithObjects:v94 count:2];
  v51 = [MPMediaCompoundAnyPredicate predicateMatchingPredicates:v50];
  [v46 addFilterPredicate:v51];

  if ([v46 _hasItems])
  {
    v74 = v12;
    v76 = v7;
    v52 = v18;
    selfCopy2 = self;
    v53 = replyCopy;
    v54 = objc_alloc_init(NSMutableArray);
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    items2 = [v46 items];
    v56 = [items2 countByEnumeratingWithState:&v80 objects:v93 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v81;
      v59 = MPMediaItemPropertyFilePath;
      do
      {
        for (j = 0; j != v57; j = j + 1)
        {
          if (*v81 != v58)
          {
            objc_enumerationMutation(items2);
          }

          v61 = [*(*(&v80 + 1) + 8 * j) valueForProperty:v59];
          if ([v61 length])
          {
            [v54 addObject:v61];
          }
        }

        v57 = [items2 countByEnumeratingWithState:&v80 objects:v93 count:16];
      }

      while (v57);
    }

    items3 = [v46 items];
    v18 = v52;
    [v52 removeItems:items3];

    replyCopy = v53;
    self = selfCopy2;
    v12 = v74;
    v7 = v76;
    if ([v54 count])
    {
      do
      {
        NSLog(@"Waiting for downloads to be deleted");
        sleep(1u);
      }

      while ([(TVAppRemovalService *)selfCopy2 _anyDownloadsExistAtPaths:v54]);
      NSLog(@"Done waiting for downloads to be deleted");
    }
  }

  [(TVAppRemovalService *)self _clearPreferencesForApplicationID:@"com.apple.videos"];
  [(TVAppRemovalService *)self _clearPreferencesForApplicationID:@"com.apple.videos-preferences"];
  CFPreferencesSetAppValue(@"VideosShowCloudMediaEnabledSetting", kCFBooleanTrue, @"com.apple.mobileipod");
  CFPreferencesSetAppValue(@"VideosAllowHDREnabledSetting", 0, @"com.apple.mobileipod");
  v63 = [SSDownloadManager alloc];
  v92[0] = SSDownloadKindMovie;
  v92[1] = SSDownloadKindTelevisionEpisode;
  v64 = [NSArray arrayWithObjects:v92 count:2];
  v65 = [v63 initWithDownloadKinds:v64];

  downloads = [v65 downloads];
  NSLog(@"Cancel downloads if needed...");
  if ([downloads count])
  {
    [v65 cancelDownloads:downloads completionBlock:0];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001884;
  block[3] = &unk_1000042D8;
  v79 = replyCopy;
  v67 = replyCopy;
  dispatch_group_notify(v12, &_dispatch_main_q, block);
}

- (void)_clearPreferencesForApplicationID:(id)d
{
  applicationID = d;
  v3 = CFPreferencesCopyKeyList(applicationID, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  if ([(__CFArray *)v3 count])
  {
    CFPreferencesSetMultiple(0, v3, applicationID, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  }
}

- (BOOL)_anyDownloadsExistAtPaths:(id)paths
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  pathsCopy = paths;
  v4 = [pathsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = @"NO";
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(pathsCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        NSLog(@"Looking for file at path %@", v9);
        v10 = +[NSFileManager defaultManager];
        v11 = [v10 fileExistsAtPath:v9];

        if (v11)
        {
          NSLog(@"Found at least one download that still exists at path %@", v9);
          v7 = @"YES";
          v12 = 1;
          goto LABEL_12;
        }
      }

      v5 = [pathsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
    v7 = @"NO";
  }

LABEL_12:

  NSLog(@"Any downloads exist: %@", v7);
  return v12;
}

@end