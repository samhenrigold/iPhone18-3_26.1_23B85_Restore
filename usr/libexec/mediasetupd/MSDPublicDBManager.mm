@interface MSDPublicDBManager
+ (id)_getMatchingObjectForBundleID:(id)d bundleID:(id)iD;
+ (id)_getMatchingObjectForServiceID:(id)d serviceID:(id)iD;
+ (id)_getMatchingObjectForServiceName:(id)name serviceName:(id)serviceName;
+ (id)getCachedPublicInfo;
+ (id)getCachedPublicInfoForBundleID:(id)d;
+ (id)getCachedPublicInfoForServiceID:(id)d;
+ (id)getCachedPublicInfoForServiceName:(id)name;
+ (id)shared;
+ (void)_fetchData:(id)data;
+ (void)getPublicInfoForBundleID:(id)d completion:(id)completion;
+ (void)getPublicInfoForServiceID:(id)d completion:(id)completion;
+ (void)getPublicInfoForServiceName:(id)name completion:(id)completion;
- (BOOL)shouldUseCloudKit;
- (MSDPublicDBManager)init;
- (id)_fetchPreviousChangeToken:(id)token;
- (id)_handleChangedRecords:(id)records localCachedCopy:(id)copy error:(id *)error;
- (id)_handleDeletedRecordIDS:(id)s localCachedCopy:(id)copy;
- (id)_handleRecordsChanged:(id)changed deletedRecordIDS:(id)s error:(id *)error;
- (id)createPublicDBInfoObject:(id)object;
- (id)createPublicDBInfoObjectFromDictionary:(id)dictionary;
- (void)_clearAllDefaultsData;
- (void)_syncDataWithCloudKitWithCompletion:(id)completion;
- (void)_updateDefaultsWithChangeToken:(id)token serverChangeToken:(id)changeToken;
- (void)_updateLastRefreshTS;
- (void)_withLock:(id)lock;
- (void)executePendingRequests:(id)requests forPublicDBInfo:(id)info error:(id)error;
- (void)syncDataWithCloudKit:(id)kit;
@end

@implementation MSDPublicDBManager

+ (id)shared
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024624;
  block[3] = &unk_1000508C0;
  block[4] = self;
  if (qword_100059AD0 != -1)
  {
    dispatch_once(&qword_100059AD0, block);
  }

  v2 = qword_100059AC8;

  return v2;
}

- (MSDPublicDBManager)init
{
  v11.receiver = self;
  v11.super_class = MSDPublicDBManager;
  v2 = [(MSDPublicDBManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v4 = sub_100030FE4(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[MSDPublicDBManager init]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    v3->_retryCount = 0;
    v3->_isCurrentlySyncing = 0;
    v5 = objc_opt_new();
    queuedPendingRequests = v3->_queuedPendingRequests;
    v3->_queuedPendingRequests = v5;

    v3->_syncLock._os_unfair_lock_opaque = 0;
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v8 = dispatch_queue_create("com.apple.mediasetup.publicdb-notify-queue", v7);
    notifyQueue = v3->_notifyQueue;
    v3->_notifyQueue = v8;
  }

  return v3;
}

- (void)syncDataWithCloudKit:(id)kit
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100024820;
  v5[3] = &unk_100051558;
  kitCopy = kit;
  v4 = kitCopy;
  [(MSDPublicDBManager *)self _syncDataWithCloudKitWithCompletion:v5];
}

+ (void)getPublicInfoForServiceName:(id)name completion:(id)completion
{
  nameCopy = name;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000248F4;
  v9[3] = &unk_100051F90;
  completionCopy = completion;
  selfCopy = self;
  v10 = nameCopy;
  v7 = nameCopy;
  v8 = completionCopy;
  [self _fetchData:v9];
}

+ (void)getPublicInfoForServiceID:(id)d completion:(id)completion
{
  dCopy = d;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100024A68;
  v9[3] = &unk_100051F90;
  completionCopy = completion;
  selfCopy = self;
  v10 = dCopy;
  v7 = dCopy;
  v8 = completionCopy;
  [self _fetchData:v9];
}

+ (void)getPublicInfoForBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100024BDC;
  v9[3] = &unk_100051F90;
  completionCopy = completion;
  selfCopy = self;
  v10 = dCopy;
  v7 = dCopy;
  v8 = completionCopy;
  [self _fetchData:v9];
}

+ (id)getCachedPublicInfoForServiceName:(id)name
{
  nameCopy = name;
  v5 = +[MSDDefaultsManager sharedManager];
  v6 = [v5 objectForDefaultWithCustomClass:@"publicDBData"];

  v7 = [self _getMatchingObjectForServiceName:v6 serviceName:nameCopy];

  return v7;
}

+ (id)getCachedPublicInfoForServiceID:(id)d
{
  dCopy = d;
  v5 = +[MSDDefaultsManager sharedManager];
  v6 = [v5 objectForDefaultWithCustomClass:@"publicDBData"];

  v7 = [self _getMatchingObjectForServiceID:v6 serviceID:dCopy];

  return v7;
}

+ (id)getCachedPublicInfoForBundleID:(id)d
{
  dCopy = d;
  v5 = +[MSDDefaultsManager sharedManager];
  v6 = [v5 objectForDefaultWithCustomClass:@"publicDBData"];

  v7 = [self _getMatchingObjectForBundleID:v6 bundleID:dCopy];

  return v7;
}

+ (id)getCachedPublicInfo
{
  v2 = +[MSDDefaultsManager sharedManager];
  v3 = [v2 objectForDefaultWithCustomClass:@"publicDBData"];

  return v3;
}

- (id)createPublicDBInfoObject:(id)object
{
  objectCopy = object;
  v4 = [objectCopy objectForKey:MediaServiceName];
  v5 = [objectCopy objectForKey:MediaServiceIdentifier];
  v6 = [[MSPublicDBInfo alloc] initWithServiceName:v4 serviceID:v5];
  if (v6)
  {
    recordID = [objectCopy recordID];
    recordName = [recordID recordName];
    [v6 setRecordName:recordName];

    v9 = [objectCopy objectForKey:MediaServiceType];
    [v6 setServiceType:v9];

    v10 = [objectCopy objectForKey:MediaServiceBundleIdentifier];
    [v6 setBundleIDS:v10];

    v11 = [objectCopy objectForKey:MediaServiceIconPath];
    v12 = [NSURL URLWithString:v11];
    [v6 setServiceIconPath:v12];

    v13 = [objectCopy objectForKey:MediaServiceConfigurationPublicKey];
    [v6 setConfigurationPublicKey:v13];

    v14 = v6;
  }

  else
  {
    v15 = sub_100030FE4(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100027AE8();
    }
  }

  return v6;
}

- (id)createPublicDBInfoObjectFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:MediaServiceName];
  v5 = [dictionaryCopy objectForKey:MediaServiceIdentifier];
  v6 = [[MSPublicDBInfo alloc] initWithServiceName:v4 serviceID:v5];
  if (v6)
  {
    v7 = [dictionaryCopy objectForKey:MediaServiceType];
    [v6 setServiceType:v7];

    v8 = [dictionaryCopy objectForKey:MediaServiceBundleIdentifier];
    [v6 setBundleIDS:v8];

    v9 = [dictionaryCopy objectForKey:MediaServiceIconPath];
    v10 = [NSURL URLWithString:v9];
    [v6 setServiceIconPath:v10];

    v11 = [dictionaryCopy objectForKey:MediaServiceConfigurationPublicKey];
    [v6 setConfigurationPublicKey:v11];

    v12 = v6;
  }

  else
  {
    v13 = sub_100030FE4(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = v4;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to create MSPublicDBInfo object with serviceName %@ service ID: %@", &v15, 0x16u);
    }
  }

  return v6;
}

- (void)_syncDataWithCloudKitWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[MSDPublicDBManager _syncDataWithCloudKitWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100025A9C;
  v40[3] = &unk_100051FB8;
  v40[4] = self;
  v42 = &v43;
  v6 = completionCopy;
  v41 = v6;
  v7 = [(MSDPublicDBManager *)self _withLock:v40];
  if (v6 && (v44[3] & 1) == 0)
  {
    v8 = sub_100030FE4(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "A sync with the public db is already underway. Suspending request to sync with CloudKit until sync is complete.", &buf, 2u);
    }

    goto LABEL_25;
  }

  v9 = sub_100030FE4(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Starting sync with public db", &buf, 2u);
  }

  v10 = [CKRecordZoneID alloc];
  v11 = [v10 initWithZoneName:MSPublicInfoRecordZoneName ownerName:CKCurrentUserDefaultName];
  v8 = v11;
  if (v11)
  {
    zoneName = [v11 zoneName];
    v13 = [(MSDPublicDBManager *)self _fetchPreviousChangeToken:zoneName];

    v14 = objc_opt_new();
    v15 = [v14 setPreviousServerChangeToken:v13];
    if (v14)
    {
      v53 = v8;
      v54 = v14;
      v16 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      v17 = sub_100030FE4(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138477827;
        *(&buf + 4) = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[Public] Passing Configuration for recordZoneID %{private}@", &buf, 0xCu);
      }

      v18 = [CKFetchRecordZoneChangesOperation alloc];
      v52 = v8;
      v19 = [NSArray arrayWithObjects:&v52 count:1];
      v20 = [v18 initWithRecordZoneIDs:v19 configurationsByRecordZoneID:v16];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v48 = 0x3032000000;
      v49 = sub_100025B38;
      v50 = sub_100025B48;
      v51 = 0;
      v38[0] = 0;
      v38[1] = v38;
      v38[2] = 0x3032000000;
      v38[3] = sub_100025B38;
      v38[4] = sub_100025B48;
      v39 = objc_opt_new();
      v36[0] = 0;
      v36[1] = v36;
      v36[2] = 0x3032000000;
      v36[3] = sub_100025B38;
      v36[4] = sub_100025B48;
      v37 = objc_opt_new();
      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x3032000000;
      v34[3] = sub_100025B38;
      v34[4] = sub_100025B48;
      v35 = objc_opt_new();
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100025B50;
      v33[3] = &unk_100051FE0;
      v33[4] = v36;
      [v20 setRecordWithIDWasDeletedBlock:v33];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100025C1C;
      v32[3] = &unk_100052008;
      v32[4] = v38;
      [v20 setRecordWasChangedBlock:v32];
      objc_initWeak(&location, self);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100025D48;
      v26[3] = &unk_100052098;
      objc_copyWeak(&v30, &location);
      v26[4] = self;
      v28 = v34;
      p_buf = &buf;
      v27 = v6;
      [v20 setFetchRecordZoneChangesCompletionBlock:v26];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100026424;
      v25[3] = &unk_1000520C0;
      v25[6] = v38;
      v25[7] = v36;
      v25[4] = self;
      v25[5] = &buf;
      [v20 setRecordZoneFetchCompletionBlock:v25];
      [v20 setQualityOfService:17];
      v21 = +[CKContainer MSDPublicCloudKitContainer];
      publicCloudDatabase = [v21 publicCloudDatabase];
      [publicCloudDatabase addOperation:v20];

      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
      _Block_object_dispose(v34, 8);

      _Block_object_dispose(v36, 8);
      _Block_object_dispose(v38, 8);

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v24 = sub_100030FE4(v15);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100027B5C(v24);
      }

      if (!v6)
      {
        goto LABEL_23;
      }

      v16 = [NSError errorWithDomain:CKErrorDomain code:12 userInfo:0];
      (*(v6 + 2))(v6, 0, v16);
    }

LABEL_23:
    goto LABEL_24;
  }

  v23 = sub_100030FE4(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_100027BA0(v23);
  }

  if (v6)
  {
    v13 = [NSError errorWithDomain:CKErrorDomain code:12 userInfo:0];
    (*(v6 + 2))(v6, 0, v13);
LABEL_24:
  }

LABEL_25:

  _Block_object_dispose(&v43, 8);
}

- (id)_handleRecordsChanged:(id)changed deletedRecordIDS:(id)s error:(id *)error
{
  changedCopy = changed;
  sCopy = s;
  v10 = +[MSDDefaultsManager sharedManager];
  v11 = [v10 objectForDefaultWithCustomClass:@"publicDBData"];

  v12 = [(MSDPublicDBManager *)self _handleDeletedRecordIDS:sCopy localCachedCopy:v11];

  if (!v12 || ![v12 count])
  {
    v13 = objc_opt_new();

    v12 = v13;
  }

  v14 = [(MSDPublicDBManager *)self _handleChangedRecords:changedCopy localCachedCopy:v12 error:error];

  return v14;
}

- (id)_handleDeletedRecordIDS:(id)s localCachedCopy:(id)copy
{
  sCopy = s;
  copyCopy = copy;
  v7 = [copyCopy count];
  if (v7 && (v7 = [sCopy count]) != 0)
  {
    v8 = [copyCopy na_dictionaryWithKeyGenerator:&stru_100052100];
    v9 = sub_100030FE4(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v36 = sCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Public] RecordIDS deleted on device: %{private}@", buf, 0xCu);
    }

    v28 = copyCopy;
    v10 = [NSMutableArray arrayWithArray:copyCopy];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = sCopy;
    v11 = sCopy;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          allKeys = [v8 allKeys];
          recordName = [v16 recordName];
          v19 = [allKeys containsObject:recordName];

          if (v19)
          {
            v21 = sub_100030FE4(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              recordName2 = [v16 recordName];
              *buf = 138477827;
              v36 = recordName2;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[Public] Found match for %{private}@, removing obj from local copy", buf, 0xCu);
            }

            recordName3 = [v16 recordName];
            v24 = [v8 objectForKey:recordName3];

            [v10 removeObject:v24];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v13);
    }

    v25 = [v10 copy];
    copyCopy = v28;
    sCopy = v29;
  }

  else
  {
    v26 = sub_100030FE4(v7);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[Public] Deleted recordIDS or cachedData is nil, skipping update", buf, 2u);
    }

    v25 = copyCopy;
  }

  return v25;
}

- (id)_handleChangedRecords:(id)records localCachedCopy:(id)copy error:(id *)error
{
  recordsCopy = records;
  copyCopy = copy;
  if ([recordsCopy count])
  {
    v10 = [NSMutableArray arrayWithArray:copyCopy];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v29 = recordsCopy;
    obj = recordsCopy;
    v11 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    v12 = copyCopy;
    v30 = v10;
    if (v11)
    {
      v13 = v11;
      v33 = *v39;
      v31 = MSErrorDomain;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v39 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v15 = [(MSDPublicDBManager *)self createPublicDBInfoObject:*(*(&v38 + 1) + 8 * i)];
          v16 = v15;
          if (v15)
          {
            v34[0] = _NSConcreteStackBlock;
            v34[1] = 3221225472;
            v34[2] = sub_100026EA8;
            v34[3] = &unk_100050B60;
            v17 = v15;
            v35 = v17;
            v18 = [v12 na_firstObjectPassingTest:v34];
            v19 = v18;
            if (v18)
            {
              v20 = sub_100030FE4(v18);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                [v17 serviceID];
                selfCopy = self;
                errorCopy = error;
                v24 = v23 = v12;
                *buf = 138477827;
                v43 = v24;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "A property on a known service (%{private}@) changed", buf, 0xCu);

                v12 = v23;
                error = errorCopy;
                self = selfCopy;
                v10 = v30;
              }

              [v10 removeObject:v19];
            }

            [v10 na_safeAddObject:v17];
          }

          else
          {
            v25 = sub_100030FE4(0);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              sub_100027DF8(&v36, v37, v25);
            }

            if (error)
            {
              *error = [NSError errorWithDomain:v31 code:1 userInfo:0];
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v13);
    }

    v26 = v12;
    recordsCopy = v29;
  }

  else
  {
    v26 = copyCopy;
    v27 = sub_100030FE4(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[Public] Changed records is nil, skipping update", buf, 2u);
    }

    v30 = v26;
  }

  return v30;
}

- (void)_clearAllDefaultsData
{
  v2 = +[MSDDefaultsManager sharedManager];
  [v2 clearObjectForDefault:@"publicDBData"];

  v3 = +[MSDDefaultsManager sharedManager];
  [v3 clearObjectForDefault:@"publicDBChangeTokenMap"];
}

- (void)_updateLastRefreshTS
{
  v4 = +[MSDDefaultsManager sharedManager];
  v2 = +[NSDate date];
  [v2 timeIntervalSinceReferenceDate];
  v3 = [NSNumber numberWithDouble:?];
  [v4 setObject:v3 forDefault:@"publicDBLastRefreshTS"];
}

- (BOOL)shouldUseCloudKit
{
  v2 = +[MSDDefaultsManager sharedManager];
  v3 = [v2 objectForDefault:@"publicDBLastRefreshTS"];
  [v3 doubleValue];
  v5 = v4;

  v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:v5];
  v7 = +[NSDate date];
  v8 = [v6 dateByAddingTimeInterval:MSPublicDatabaseRefreshIntervalInSecs];
  v9 = [v7 compare:v8] != -1;

  return v9;
}

- (id)_fetchPreviousChangeToken:(id)token
{
  tokenCopy = token;
  v4 = +[MSDDefaultsManager sharedManager];
  v5 = [v4 objectForDefaultWithCustomClass:@"publicDBChangeTokenMap"];

  if (v5)
  {
    v6 = [v5 objectForKey:tokenCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateDefaultsWithChangeToken:(id)token serverChangeToken:(id)changeToken
{
  tokenCopy = token;
  changeTokenCopy = changeToken;
  v7 = +[MSDDefaultsManager sharedManager];
  v8 = [v7 objectForDefaultWithCustomClass:@"publicDBChangeTokenMap"];
  v9 = [v8 mutableCopy];

  if (!v9)
  {
    v9 = objc_opt_new();
  }

  v10 = sub_100030FE4([v9 na_safeSetObject:changeTokenCopy forKey:tokenCopy]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138477827;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Public] Updating value of serverChangeToken %{private}@", &v13, 0xCu);
  }

  v11 = +[MSDDefaultsManager sharedManager];
  v12 = [v9 copy];
  [v11 setObjectWithCustomClass:v12 forDefault:@"publicDBChangeTokenMap"];
}

+ (void)_fetchData:(id)data
{
  dataCopy = data;
  v4 = +[MSDPublicDBManager shared];
  shouldUseCloudKit = [v4 shouldUseCloudKit];

  if (shouldUseCloudKit)
  {
    v7 = +[MSDPublicDBManager shared];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100027440;
    v11[3] = &unk_100051558;
    v12 = dataCopy;
    [v7 syncDataWithCloudKit:v11];

    v8 = v12;
LABEL_7:

    goto LABEL_8;
  }

  v9 = sub_100030FE4(v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Public] Returning data from cached copy, last refresh was less than 24 hours back", buf, 2u);
  }

  if (dataCopy)
  {
    v8 = +[MSDDefaultsManager sharedManager];
    v10 = [v8 objectForDefaultWithCustomClass:@"publicDBData"];
    (*(dataCopy + 2))(dataCopy, v10, 0);

    goto LABEL_7;
  }

LABEL_8:
}

+ (id)_getMatchingObjectForServiceID:(id)d serviceID:(id)iD
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100027584;
  v8[3] = &unk_100050B60;
  iDCopy = iD;
  v5 = iDCopy;
  v6 = [d na_firstObjectPassingTest:v8];

  return v6;
}

+ (id)_getMatchingObjectForBundleID:(id)d bundleID:(id)iD
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100027678;
  v8[3] = &unk_100050B60;
  iDCopy = iD;
  v5 = iDCopy;
  v6 = [d na_firstObjectPassingTest:v8];

  return v6;
}

+ (id)_getMatchingObjectForServiceName:(id)name serviceName:(id)serviceName
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002776C;
  v8[3] = &unk_100050B60;
  serviceNameCopy = serviceName;
  v5 = serviceNameCopy;
  v6 = [name na_firstObjectPassingTest:v8];

  return v6;
}

- (void)executePendingRequests:(id)requests forPublicDBInfo:(id)info error:(id)error
{
  requestsCopy = requests;
  infoCopy = info;
  errorCopy = error;
  notifyQueue = self->_notifyQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027894;
  block[3] = &unk_100052128;
  v16 = requestsCopy;
  v17 = infoCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = infoCopy;
  v14 = requestsCopy;
  dispatch_async(notifyQueue, block);
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_syncLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_syncLock);
}

@end