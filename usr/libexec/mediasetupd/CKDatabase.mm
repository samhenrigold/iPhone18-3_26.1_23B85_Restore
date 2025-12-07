@interface CKDatabase
- (BOOL)_attemptToRecordServiceRequestLapse:(id)lapse fromRecords:(id)records;
- (id)_checkIfRecordZonePresentForUser:(id)user;
- (id)_fetchPlaceholderRecordData:(id)data error:(id *)error;
- (id)_fetchRefreshTokenForRecordZoneID:(id)d;
- (id)_getOperationConfiguration;
- (id)_handleChangedRecords:(id)records andDeletedRecordIDS:(id)s;
- (id)_handleChangesInChangedRecords:(id)records withDataInLocalCopy:(id)copy;
- (id)_handleDeletedRecordIDS:(id)s withDataInLocalCopy:(id)copy;
- (id)_handleRecordZonesChanged:(id)changed deletedRecordZones:(id)zones;
- (id)operationConfiguration;
- (void)_addSubscriptionWithIdentifier:(id)identifier completion:(id)completion;
- (void)_checkShareStatusIfApplicable:(id)applicable;
- (void)_deleteRecord:(id)record completion:(id)completion;
- (void)_handleCKErrorChangeTokenExpired:(id)expired userInfo:(id)info;
- (void)_handleManateeLossOnPrivateDatabase:(id)database homeUserID:(id)d;
- (void)_handleManateeLossOnSharedDatabase:(id)database completion:(id)completion;
- (void)_notifyObserversDataChanged:(id)changed cachedData:(id)data;
- (void)_populateRecordZoneWithCachedInfo:(id)info cachedInfo:(id)cachedInfo;
- (void)_purgeDeletedZonesFromDefaults:(id)defaults;
- (void)_saveRecordZone:(id)zone withAttribution:(id)attribution andOptions:(id)options completion:(id)completion;
- (void)_serviceConfigInfoFor:(id)for homeUserIDS:(id)s serviceID:(id)d completion:(id)completion;
- (void)_updateDefaultService:(id)service serviceID:(id)d userInfo:(id)info completion:(id)completion;
- (void)_updateServerChangeTokenMap:(id)map serverChangeToken:(id)token;
- (void)_updateUserInfoToRecordZoneIDMap:(id)map userID:(id)d;
- (void)addMediaService:(id)service usingSetupBundles:(id)bundles transaction:(id)transaction completion:(id)completion;
- (void)addSubscriptionForDatabaseWithIdentifier:(id)identifier completion:(id)completion;
- (void)deleteRecordWithID:(id)d missingManateeIdentity:(BOOL)identity withOptions:(id)options completion:(id)completion;
- (void)deleteRecordZone:(id)zone withOptions:(id)options completion:(id)completion;
- (void)fetchAllRecordsForRecordZoneID:(id)d userInfo:(id)info withOptions:(id)options completion:(id)completion;
- (void)fetchRecordWithID:(id)d withOptions:(id)options completion:(id)completion;
- (void)fetchRecordWithIDS:(id)s withOptions:(id)options completion:(id)completion;
- (void)fetchRecordZoneFor:(id)for user:(id)user withOptions:(id)options withAttribution:(id)attribution completion:(id)completion;
- (void)getAvailableServices:(id)services completion:(id)completion;
- (void)getDefaultMediaService:(id)service completion:(id)completion;
- (void)getServiceConfigurationInfo:(id)info serviceID:(id)d completion:(id)completion;
- (void)handleCKErrorMissingManateeIdentity:(id)identity homeUserID:(id)d;
- (void)handleCKErrorMissingManateeIdentity:(id)identity homeUserIDS:(id)s;
- (void)modifyCKRecordWithRecordsToSave:(id)save recordIDSToDelete:(id)delete missingManateeIdentity:(BOOL)identity withAttribution:(id)attribution withOptions:(id)options completion:(id)completion;
- (void)refreshDatabase:(id)database completion:(id)completion;
- (void)removeMediaService:(id)service withUserInfo:(id)info completion:(id)completion;
- (void)removeMediaServices:(id)services withUserInfo:(id)info completion:(id)completion;
- (void)saveRecord:(id)record withAttribution:(id)attribution withOptions:(id)options completion:(id)completion;
- (void)switchUserAccountInfo:(id)info homeID:(id)d homeUserID:(id)iD completion:(id)completion;
- (void)updateAuthRenewalForMediaService:(id)service userInfo:(id)info completion:(id)completion;
- (void)updateDefaultMediaService:(id)service withUserInfo:(id)info completion:(id)completion;
- (void)updateProperty:(id)property propertyInfo:(id)info withUserInfo:(id)userInfo completion:(id)completion;
@end

@implementation CKDatabase

- (void)addSubscriptionForDatabaseWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = [CKFetchSubscriptionsOperation alloc];
  v18 = identifierCopy;
  v9 = [NSArray arrayWithObjects:&v18 count:1];
  v10 = [v8 initWithSubscriptionIDs:v9];

  [v10 setQualityOfService:17];
  _getOperationConfiguration = [(CKDatabase *)self _getOperationConfiguration];
  [v10 setConfiguration:_getOperationConfiguration];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100001CE0;
  v14[3] = &unk_100050960;
  v15 = identifierCopy;
  selfCopy = self;
  v17 = completionCopy;
  v12 = completionCopy;
  v13 = identifierCopy;
  [v10 setFetchSubscriptionCompletionBlock:v14];
  [(CKDatabase *)self addOperation:v10];
}

- (void)_addSubscriptionWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = objc_alloc_init(CKNotificationInfo);
  [v8 setShouldSendContentAvailable:1];
  v9 = [[CKDatabaseSubscription alloc] initWithSubscriptionID:identifierCopy];

  v10 = [v9 setNotificationInfo:v8];
  if (v9)
  {
    v11 = [CKModifySubscriptionsOperation alloc];
    v18 = v9;
    v12 = [NSArray arrayWithObjects:&v18 count:1];
    v13 = [v11 initWithSubscriptionsToSave:v12 subscriptionIDsToDelete:0];

    [v13 setQualityOfService:17];
    _getOperationConfiguration = [(CKDatabase *)self _getOperationConfiguration];
    [v13 setConfiguration:_getOperationConfiguration];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000210C;
    v16[3] = &unk_100050988;
    v17 = completionCopy;
    [v13 setModifySubscriptionsCompletionBlock:v16];
    [(CKDatabase *)self addOperation:v13];

LABEL_7:
    goto LABEL_8;
  }

  v15 = sub_100030FE4(v10);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10000225C(v15);
  }

  if (completionCopy)
  {
    v13 = [NSError errorWithDomain:MSErrorDomain code:1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v13);
    goto LABEL_7;
  }

LABEL_8:
}

- (id)_getOperationConfiguration
{
  v2 = objc_opt_new();

  return v2;
}

- (void)addMediaService:(id)service usingSetupBundles:(id)bundles transaction:(id)transaction completion:(id)completion
{
  serviceCopy = service;
  bundlesCopy = bundles;
  transactionCopy = transaction;
  completionCopy = completion;
  v14 = [MSServiceEvent alloc];
  serviceID = [serviceCopy serviceID];
  v16 = [v14 initWithEventType:0 serviceID:serviceID];

  stopwatch = [v16 stopwatch];
  [stopwatch start];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000062B0;
  v33[3] = &unk_100050B38;
  v34 = v16;
  v18 = v16;
  v19 = objc_retainBlock(v33);
  v20 = +[MSDPublicDBManager shared];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100006338;
  v26[3] = &unk_100050C28;
  v31 = v19;
  v32 = completionCopy;
  v27 = serviceCopy;
  v28 = bundlesCopy;
  selfCopy = self;
  v30 = transactionCopy;
  v21 = transactionCopy;
  v22 = bundlesCopy;
  v23 = completionCopy;
  v24 = v19;
  v25 = serviceCopy;
  [v20 syncDataWithCloudKit:v26];
}

- (void)getAvailableServices:(id)services completion:(id)completion
{
  servicesCopy = services;
  completionCopy = completion;
  v8 = completionCopy;
  if (servicesCopy)
  {
    completionCopy = [servicesCopy count];
    if (completionCopy)
    {
      v9 = objc_alloc_init(MSDFetchCKDataOptions);
      [(MSDFetchCKDataOptions *)v9 setCreateNewZoneIfMissing:0];
      [(MSDFetchCKDataOptions *)v9 setUserInitiatedRequest:1];
      v10 = [servicesCopy objectForKey:kCKDatabaseAccessUserInfoHomeIDKey];
      v11 = [servicesCopy objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000071BC;
      v16[3] = &unk_100050C78;
      v19 = v8;
      v16[4] = self;
      v17 = servicesCopy;
      v18 = v9;
      v12 = v9;
      [(CKDatabase *)self fetchRecordZoneFor:v10 user:v11 withOptions:v12 completion:v16];

      v13 = v19;
LABEL_8:

      goto LABEL_9;
    }
  }

  v14 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_10000CDBC();
  }

  if (v8)
  {
    v15 = MSErrorDomain;
    v20 = MSUserInfoErrorStringKey;
    v21 = @"Failed to fetch available services, NIL HomeID and HomeUserID";
    v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v13 = [NSError errorWithDomain:v15 code:1 userInfo:v12];
    (v8)[2](v8, 0, v13);
    goto LABEL_8;
  }

LABEL_9:
}

- (void)updateDefaultMediaService:(id)service withUserInfo:(id)info completion:(id)completion
{
  serviceCopy = service;
  infoCopy = info;
  completionCopy = completion;
  v11 = completionCopy;
  if (infoCopy && (completionCopy = [infoCopy count]) != 0)
  {
    objc_initWeak(&location, self);
    v12 = objc_alloc_init(MSDFetchCKDataOptions);
    [(MSDFetchCKDataOptions *)v12 setCreateNewZoneIfMissing:0];
    [(MSDFetchCKDataOptions *)v12 setUserInitiatedRequest:1];
    v13 = [infoCopy objectForKey:kCKDatabaseAccessUserInfoHomeIDKey];
    v14 = [infoCopy objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100007AC0;
    v18[3] = &unk_100050CC8;
    v21 = v11;
    objc_copyWeak(&v22, &location);
    v19 = serviceCopy;
    v20 = infoCopy;
    [(CKDatabase *)self fetchRecordZoneFor:v13 user:v14 withOptions:v12 completion:v18];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    v15 = sub_100030FE4(completionCopy);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE78();
    }

    if (v11)
    {
      v24 = MSUserInfoErrorStringKey;
      v25 = @"Failed to update default service, NIL HomeID and HomeUserID";
      v16 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v17 = [NSError errorWithDomain:MSErrorDomain code:1 userInfo:v16];
      (v11)[2](v11, 0, v17);
    }
  }
}

- (void)_updateDefaultService:(id)service serviceID:(id)d userInfo:(id)info completion:(id)completion
{
  serviceCopy = service;
  dCopy = d;
  infoCopy = info;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100007DAC;
  v18[3] = &unk_100050D18;
  v14 = serviceCopy;
  v19 = v14;
  v15 = completionCopy;
  v22 = v15;
  objc_copyWeak(&v23, &location);
  v16 = infoCopy;
  v20 = v16;
  v17 = dCopy;
  v21 = v17;
  [(CKDatabase *)self fetchRecordWithID:v14 completionHandler:v18];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)getDefaultMediaService:(id)service completion:(id)completion
{
  serviceCopy = service;
  completionCopy = completion;
  v8 = completionCopy;
  if (serviceCopy)
  {
    completionCopy = [serviceCopy count];
    if (completionCopy)
    {
      v9 = [NSUUID alloc];
      v10 = [serviceCopy objectForKey:kCKDatabaseAccessUserInfoHomeIDKey];
      v11 = [v9 initWithUUIDString:v10];

      v12 = [serviceCopy objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
      objc_initWeak(&location, self);
      v13 = objc_alloc_init(MSDFetchCKDataOptions);
      [(MSDFetchCKDataOptions *)v13 setCreateNewZoneIfMissing:0];
      [(MSDFetchCKDataOptions *)v13 setUserInitiatedRequest:1];
      uUIDString = [v11 UUIDString];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100008458;
      v18[3] = &unk_100050D68;
      v22 = v8;
      objc_copyWeak(&v23, &location);
      v19 = serviceCopy;
      v15 = v13;
      v20 = v15;
      v16 = v12;
      v21 = v16;
      [(CKDatabase *)self fetchRecordZoneFor:uUIDString user:v16 withOptions:v15 completion:v18];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
LABEL_8:

      goto LABEL_9;
    }
  }

  v17 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_10000CF74();
  }

  if (v8)
  {
    v25 = MSUserInfoErrorStringKey;
    v26 = @"Failed to fetch default media service, NIL HomeID and HomeUserID";
    v11 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v16 = [NSError errorWithDomain:MSErrorDomain code:1 userInfo:v11];
    (v8)[2](v8, 0, v16);
    goto LABEL_8;
  }

LABEL_9:
}

- (void)removeMediaService:(id)service withUserInfo:(id)info completion:(id)completion
{
  serviceCopy = service;
  infoCopy = info;
  completionCopy = completion;
  v11 = completionCopy;
  if (infoCopy)
  {
    completionCopy = [infoCopy count];
    if (completionCopy)
    {
      v12 = objc_alloc_init(MSDFetchCKDataOptions);
      [(MSDFetchCKDataOptions *)v12 setCreateNewZoneIfMissing:0];
      [(MSDFetchCKDataOptions *)v12 setUserInitiatedRequest:1];
      v13 = [MSServiceEvent alloc];
      serviceID = [serviceCopy serviceID];
      v15 = [v13 initWithEventType:1 serviceID:serviceID];

      stopwatch = [v15 stopwatch];
      [stopwatch start];

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100008EC8;
      v31[3] = &unk_100050B38;
      v32 = v15;
      v17 = v15;
      v18 = objc_retainBlock(v31);
      v19 = [infoCopy objectForKey:kCKDatabaseAccessUserInfoHomeIDKey];
      v20 = [infoCopy objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100008F50;
      v25[3] = &unk_100050E30;
      v29 = v18;
      v30 = v11;
      v25[4] = self;
      v26 = infoCopy;
      v27 = v12;
      v28 = serviceCopy;
      v21 = v12;
      v22 = v18;
      [(CKDatabase *)self fetchRecordZoneFor:v19 user:v20 withOptions:v21 completion:v25];

LABEL_8:
      goto LABEL_9;
    }
  }

  v23 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Failed to remove service, NIL HomeID and NIL HomeUserID", buf, 2u);
  }

  if (v11)
  {
    v24 = MSErrorDomain;
    v34 = MSUserInfoErrorStringKey;
    v35 = @"Failed to remove service, NIL HomeID and HomeUserID";
    v17 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v21 = [NSError errorWithDomain:v24 code:1 userInfo:v17];
    (v11)[2](v11, 0, v21);
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_deleteRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  v8 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315395;
    v14 = "[CKDatabase(MediaService) _deleteRecord:completion:]";
    v15 = 2113;
    v16 = recordCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Attempting to delete record %{private}@", buf, 0x16u);
  }

  v9 = objc_alloc_init(MSDFetchCKDataOptions);
  [(MSDFetchCKDataOptions *)v9 setUserInitiatedRequest:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100009C6C;
  v11[3] = &unk_100050CA0;
  v12 = completionCopy;
  v10 = completionCopy;
  [(CKDatabase *)self deleteRecord:recordCopy withOptions:v9 completion:v11];
}

- (void)updateProperty:(id)property propertyInfo:(id)info withUserInfo:(id)userInfo completion:(id)completion
{
  propertyCopy = property;
  infoCopy = info;
  userInfoCopy = userInfo;
  completionCopy = completion;
  v14 = completionCopy;
  if (userInfoCopy)
  {
    completionCopy = [userInfoCopy count];
    if (completionCopy)
    {
      v15 = objc_alloc_init(MSDFetchCKDataOptions);
      [(MSDFetchCKDataOptions *)v15 setCreateNewZoneIfMissing:0];
      [(MSDFetchCKDataOptions *)v15 setUserInitiatedRequest:1];
      v16 = [userInfoCopy objectForKey:kCKDatabaseAccessUserInfoHomeIDKey];
      v17 = [userInfoCopy objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100009EF0;
      v21[3] = &unk_100050EA8;
      v26 = v14;
      v22 = propertyCopy;
      selfCopy = self;
      v24 = userInfoCopy;
      v25 = infoCopy;
      [(CKDatabase *)self fetchRecordZoneFor:v16 user:v17 withOptions:v15 completion:v21];

      v18 = v26;
LABEL_8:

      goto LABEL_9;
    }
  }

  v19 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_10000D064();
  }

  if (v14)
  {
    v20 = MSErrorDomain;
    v27 = MSUserInfoErrorStringKey;
    v28 = @"Failed to updateProperty, NIL HomeID and HomeUserID";
    v15 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v18 = [NSError errorWithDomain:v20 code:1 userInfo:v15];
    (v14)[2](v14, 0, v18);
    goto LABEL_8;
  }

LABEL_9:
}

- (void)getServiceConfigurationInfo:(id)info serviceID:(id)d completion:(id)completion
{
  infoCopy = info;
  dCopy = d;
  completionCopy = completion;
  if (infoCopy && [infoCopy count])
  {
    v11 = +[CKFetchRecordZonesOperation fetchAllRecordZonesOperation];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000A724;
    v14[3] = &unk_100050F38;
    v14[4] = self;
    v15 = infoCopy;
    v17 = completionCopy;
    v16 = dCopy;
    [v11 setFetchRecordZonesCompletionBlock:v14];
    [v11 setQualityOfService:25];
    [(CKDatabase *)self addOperation:v11];

LABEL_6:
    goto LABEL_7;
  }

  if (completionCopy)
  {
    v12 = MSErrorDomain;
    v18 = MSUserInfoErrorStringKey;
    v19 = @"Failed to fetch service config info, HomeUserIDS cannot be nil";
    v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [NSError errorWithDomain:v12 code:1 userInfo:v11];
    (*(completionCopy + 2))(completionCopy, 0, v13);

    goto LABEL_6;
  }

LABEL_7:
}

- (void)_serviceConfigInfoFor:(id)for homeUserIDS:(id)s serviceID:(id)d completion:(id)completion
{
  forCopy = for;
  sCopy = s;
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    if (dCopy)
    {
      v48[0] = 0;
      v48[1] = v48;
      v48[2] = 0x3032000000;
      v48[3] = sub_100006964;
      v48[4] = sub_100006974;
      v49 = 0;
      v12 = objc_opt_new();
      v28 = completionCopy;
      uUIDString = [dCopy UUIDString];
      v31 = [MSDPublicDBManager getCachedPublicInfoForServiceID:uUIDString];

      v14 = dispatch_group_create();
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = forCopy;
      v15 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v15)
      {
        v16 = *v45;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v45 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v44 + 1) + 8 * i);
            v19 = [CKRecordID alloc];
            uUIDString2 = [dCopy UUIDString];
            zoneID = [v18 zoneID];
            v22 = [v19 initWithRecordName:uUIDString2 zoneID:zoneID];

            v24 = sub_100030FE4(v23);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v51 = v22;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Fetching records for recordID: %@", buf, 0xCu);
            }

            dispatch_group_enter(v14);
            v37[0] = _NSConcreteStackBlock;
            v37[1] = 3221225472;
            v37[2] = sub_10000AE1C;
            v37[3] = &unk_100050F60;
            v38 = sCopy;
            v39 = v14;
            v40 = dCopy;
            v41 = v31;
            v42 = v12;
            v43 = v48;
            [(CKDatabase *)self fetchRecordWithID:v22 withOptions:0 completion:v37];
          }

          v15 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
        }

        while (v15);
      }

      v25 = dispatch_get_global_queue(33, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000B040;
      block[3] = &unk_100050F88;
      v34 = v12;
      v35 = v28;
      v36 = v48;
      v26 = v12;
      dispatch_group_notify(v14, v25, block);

      _Block_object_dispose(v48, 8);
      completionCopy = v28;
    }

    else
    {
      v27 = [NSError errorWithDomain:MSErrorDomain code:1 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, v27);
    }
  }
}

- (void)removeMediaServices:(id)services withUserInfo:(id)info completion:(id)completion
{
  servicesCopy = services;
  infoCopy = info;
  completionCopy = completion;
  if (servicesCopy && (v11 = [servicesCopy count]) != 0)
  {
    if (infoCopy)
    {
      v11 = [infoCopy count];
      if (v11)
      {
        v12 = objc_alloc_init(MSDFetchCKDataOptions);
        [(MSDFetchCKDataOptions *)v12 setCreateNewZoneIfMissing:0];
        [(MSDFetchCKDataOptions *)v12 setUserInitiatedRequest:0];
        v13 = [infoCopy objectForKey:kCKDatabaseAccessUserInfoHomeIDKey];
        v14 = [infoCopy objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_10000B308;
        v21[3] = &unk_100050C78;
        v25 = completionCopy;
        v22 = servicesCopy;
        selfCopy = self;
        v24 = v12;
        v15 = v12;
        [(CKDatabase *)self fetchRecordZoneFor:v13 user:v14 withOptions:v15 completion:v21];

        v16 = v25;
LABEL_13:

        goto LABEL_14;
      }
    }

    v20 = sub_100030FE4(v11);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10000D180();
    }

    if (completionCopy)
    {
      v17 = MSErrorDomain;
      v26 = MSUserInfoErrorStringKey;
      v27 = @"Failed to remove services, NIL identifiers passed";
      v18 = &v27;
      v19 = &v26;
      goto LABEL_12;
    }
  }

  else if (completionCopy)
  {
    v17 = MSErrorDomain;
    v28 = MSUserInfoErrorStringKey;
    v29 = @"ServiceIDs specified is nil";
    v18 = &v29;
    v19 = &v28;
LABEL_12:
    v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v19 count:1];
    v16 = [NSError errorWithDomain:v17 code:1 userInfo:v15];
    (*(completionCopy + 2))(completionCopy, 0, v16);
    goto LABEL_13;
  }

LABEL_14:
}

- (void)updateAuthRenewalForMediaService:(id)service userInfo:(id)info completion:(id)completion
{
  serviceCopy = service;
  infoCopy = info;
  completionCopy = completion;
  if (infoCopy)
  {
    v11 = [infoCopy count];
    if (v11)
    {
      if (serviceCopy)
      {
        v12 = sub_100030FE4(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          authCredential = [serviceCopy authCredential];
          authConfiguration = [serviceCopy authConfiguration];
          *buf = 138478083;
          v29 = authCredential;
          v30 = 2113;
          v31 = authConfiguration;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating CloudKit with AuthCredential %{private}@, AuthConfig %{private}@", buf, 0x16u);
        }

        v15 = objc_alloc_init(MSDFetchCKDataOptions);
        [(MSDFetchCKDataOptions *)v15 setCreateNewZoneIfMissing:0];
        [(MSDFetchCKDataOptions *)v15 setUserInitiatedRequest:1];
        v16 = [infoCopy objectForKey:kCKDatabaseAccessUserInfoHomeIDKey];
        v17 = [infoCopy objectForKey:kCKDatabaseAccessUserInfoHomeUserIDKey];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_10000B9C0;
        v23[3] = &unk_100050C78;
        v27 = completionCopy;
        v24 = serviceCopy;
        selfCopy = self;
        v26 = v15;
        v18 = v15;
        [(CKDatabase *)self fetchRecordZoneFor:v16 user:v17 withOptions:v18 completion:v23];

        v19 = v27;
        goto LABEL_10;
      }

      if (!completionCopy)
      {
        goto LABEL_11;
      }

      v20 = MSErrorDomain;
      v32 = MSUserInfoErrorStringKey;
      v33 = @"Failed to updateAuthRenewalInfo, NIL MediaService";
      v21 = &v33;
      v22 = &v32;
LABEL_9:
      v18 = [NSDictionary dictionaryWithObjects:v21 forKeys:v22 count:1];
      v19 = [NSError errorWithDomain:v20 code:1 userInfo:v18];
      (*(completionCopy + 2))(completionCopy, 0, v19);
LABEL_10:

      goto LABEL_11;
    }
  }

  if (completionCopy)
  {
    v20 = MSErrorDomain;
    v34 = MSUserInfoErrorStringKey;
    v35 = @"Failed to updateAuthRenewalInfo, NIL UserInfo";
    v21 = &v35;
    v22 = &v34;
    goto LABEL_9;
  }

LABEL_11:
}

- (void)switchUserAccountInfo:(id)info homeID:(id)d homeUserID:(id)iD completion:(id)completion
{
  infoCopy = info;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  if (infoCopy && dCopy && iDCopy)
  {
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x3032000000;
    v30[3] = sub_100006964;
    v30[4] = sub_100006974;
    v31 = 0;
    v14 = dispatch_group_create();
    dispatch_group_enter(v14);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10000C1F4;
    v26[3] = &unk_100051068;
    v29 = v30;
    v15 = v14;
    v27 = v15;
    v16 = infoCopy;
    v28 = v16;
    [MSAuthTokenProvider fetchAuthTokensForMediaService:v16 networkActivity:0 completion:v26];
    v17 = dispatch_get_global_queue(33, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000C384;
    block[3] = &unk_100051150;
    v25 = v30;
    v24 = completionCopy;
    block[4] = self;
    v21 = dCopy;
    v22 = iDCopy;
    v23 = v16;
    dispatch_group_notify(v15, v17, block);

    _Block_object_dispose(v30, 8);
  }

  else
  {
    v32 = NSLocalizedDescriptionKey;
    v33 = @"Failed to switch User Account Info, NIL attributes provided";
    v18 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v19 = [NSError errorWithDomain:MSErrorDomain code:1 userInfo:v18];
    (*(completionCopy + 2))(completionCopy, v19);
  }
}

- (void)refreshDatabase:(id)database completion:(id)completion
{
  completionCopy = completion;
  databaseCopy = database;
  v8 = sub_100030FE4(databaseCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    [(CKDatabase *)self databaseScope];
    v9 = CKDatabaseScopeString();
    *buf = 136315395;
    v32 = "[CKDatabase(MSDCloudDatabase) refreshDatabase:completion:]";
    v33 = 2113;
    v34 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s databaseScope %{private}@", buf, 0x16u);
  }

  if ([(CKDatabase *)self databaseScope]== 3)
  {
    v10 = @"sharedDatabaseChangesKey";
  }

  else
  {
    v10 = @"privateDatabaseChangesKey";
  }

  v11 = +[MSDDefaultsManager sharedManager];
  v12 = [v11 objectForDefaultWithCustomClass:v10];

  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v15 = [[CKFetchDatabaseChangesOperation alloc] initWithPreviousServerChangeToken:v12];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000282DC;
  v26[3] = &unk_1000521A8;
  v26[4] = self;
  v30 = completionCopy;
  v16 = v13;
  v27 = v16;
  v17 = v14;
  v28 = v17;
  v29 = v10;
  v18 = completionCopy;
  [v15 setFetchDatabaseChangesCompletionBlock:v26];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100028504;
  v24[3] = &unk_1000521D0;
  v25 = v16;
  v19 = v16;
  [v15 setRecordZoneWithIDChangedBlock:v24];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100028510;
  v22[3] = &unk_1000521D0;
  v23 = v17;
  v20 = v17;
  [v15 setRecordZoneWithIDWasDeletedBlock:v22];
  LODWORD(v14) = [databaseCopy userInitiatedRequest];

  if (v14)
  {
    [v15 setQualityOfService:25];
  }

  else
  {
    [v15 setQualityOfService:17];
    operationConfiguration = [(CKDatabase *)self operationConfiguration];
    [v15 setConfiguration:operationConfiguration];
  }

  [(CKDatabase *)self addOperation:v15];
}

- (void)fetchRecordZoneFor:(id)for user:(id)user withOptions:(id)options withAttribution:(id)attribution completion:(id)completion
{
  forCopy = for;
  userCopy = user;
  optionsCopy = options;
  attributionCopy = attribution;
  completionCopy = completion;
  v17 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v33 = userCopy;
    v34 = 2113;
    v35 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Fetching Zone for HomeUserID: %{private}@, options: %{private}@", buf, 0x16u);
  }

  v18 = [(CKDatabase *)self _checkIfRecordZonePresentForUser:userCopy];
  v19 = sub_100030FE4(v18);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      zoneID = [v18 zoneID];
      *buf = 138478083;
      v33 = zoneID;
      v34 = 2113;
      v35 = userCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "RecordZone %{private}@ for user %{private}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v18, 0);
    }
  }

  else
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Possibly missing cached value on device, checking with CloudKit", buf, 2u);
    }

    objc_initWeak(buf, self);
    v22 = +[CKFetchRecordZonesOperation fetchAllRecordZonesOperation];
    MSDUpdateCKOperationForAttribution(v22, attributionCopy);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000288A8;
    v25[3] = &unk_1000522B8;
    v30 = completionCopy;
    v25[4] = self;
    v26 = userCopy;
    objc_copyWeak(&v31, buf);
    v27 = forCopy;
    v23 = optionsCopy;
    v28 = v23;
    v29 = attributionCopy;
    [v22 setFetchRecordZonesCompletionBlock:v25];
    if ([v23 userInitiatedRequest])
    {
      [v22 setQualityOfService:25];
    }

    else
    {
      [v22 setQualityOfService:17];
      operationConfiguration = [(CKDatabase *)self operationConfiguration];
      [v22 setConfiguration:operationConfiguration];
    }

    [(CKDatabase *)self addOperation:v22];

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }
}

- (id)_checkIfRecordZonePresentForUser:(id)user
{
  userCopy = user;
  v4 = +[MSDDefaultsManager sharedManager];
  v5 = [v4 objectForDefaultWithCustomClass:@"kUserIDToRecordZoneIDMap"];

  if (v5 && ([v5 objectForKey:userCopy], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [[CKRecordZone alloc] initWithZoneID:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_updateUserInfoToRecordZoneIDMap:(id)map userID:(id)d
{
  mapCopy = map;
  dCopy = d;
  v6 = +[MSDDefaultsManager sharedManager];
  v7 = [v6 objectForDefaultWithCustomClass:@"kUserIDToRecordZoneIDMap"];
  v8 = [v7 mutableCopy];

  if (![v8 count])
  {
    v9 = objc_opt_new();

    v8 = v9;
  }

  [v8 setObject:mapCopy forKey:dCopy];
  v10 = +[MSDDefaultsManager sharedManager];
  v11 = [v8 copy];
  [v10 setObjectWithCustomClass:v11 forDefault:@"kUserIDToRecordZoneIDMap"];
}

- (void)deleteRecordZone:(id)zone withOptions:(id)options completion:(id)completion
{
  zoneCopy = zone;
  completionCopy = completion;
  optionsCopy = options;
  v11 = [CKModifyRecordZonesOperation alloc];
  v18 = zoneCopy;
  v12 = [NSArray arrayWithObjects:&v18 count:1];
  v13 = [v11 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v12];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100029D80;
  v16[3] = &unk_100050988;
  v17 = completionCopy;
  v14 = completionCopy;
  [v13 setModifyRecordZonesCompletionBlock:v16];
  LODWORD(v12) = [optionsCopy userInitiatedRequest];

  if (v12)
  {
    [v13 setQualityOfService:25];
  }

  else
  {
    [v13 setQualityOfService:17];
    operationConfiguration = [(CKDatabase *)self operationConfiguration];
    [v13 setConfiguration:operationConfiguration];
  }

  [(CKDatabase *)self addOperation:v13];
}

- (void)fetchRecordWithID:(id)d withOptions:(id)options completion:(id)completion
{
  dCopy = d;
  optionsCopy = options;
  completionCopy = completion;
  v11 = completionCopy;
  if (dCopy)
  {
    v18 = dCopy;
    v12 = [NSArray arrayWithObjects:&v18 count:1];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100029FCC;
    v15[3] = &unk_1000522E0;
    v17 = v11;
    v16 = dCopy;
    [(CKDatabase *)self fetchRecordWithIDS:v12 withOptions:optionsCopy completion:v15];

    v13 = v17;
LABEL_7:

    goto LABEL_8;
  }

  v14 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1000304CC();
  }

  if (v11)
  {
    v13 = [NSError errorWithDomain:CKErrorDomain code:12 userInfo:0];
    (v11)[2](v11, 0, v13);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)fetchRecordWithIDS:(id)s withOptions:(id)options completion:(id)completion
{
  sCopy = s;
  optionsCopy = options;
  completionCopy = completion;
  v11 = completionCopy;
  if (sCopy)
  {
    completionCopy = [sCopy count];
    if (completionCopy)
    {
      v12 = [[CKFetchRecordsOperation alloc] initWithRecordIDs:sCopy];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10002A21C;
      v15[3] = &unk_100051660;
      v16 = v11;
      [v12 setFetchRecordsCompletionBlock:v15];
      if ([optionsCopy userInitiatedRequest])
      {
        [v12 setQualityOfService:25];
      }

      else
      {
        [v12 setQualityOfService:17];
        operationConfiguration = [(CKDatabase *)self operationConfiguration];
        [v12 setConfiguration:operationConfiguration];
      }

      [(CKDatabase *)self addOperation:v12];

      goto LABEL_11;
    }
  }

  v13 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100030508();
  }

  if (v11)
  {
    v12 = [NSError errorWithDomain:CKErrorDomain code:12 userInfo:0];
    (v11)[2](v11, 0, v12);
LABEL_11:
  }
}

- (void)fetchAllRecordsForRecordZoneID:(id)d userInfo:(id)info withOptions:(id)options completion:(id)completion
{
  dCopy = d;
  infoCopy = info;
  optionsCopy = options;
  completionCopy = completion;
  v12 = completionCopy;
  if (dCopy)
  {
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x3032000000;
    v47[3] = sub_10002926C;
    v47[4] = sub_10002927C;
    v48 = 0;
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x3032000000;
    v45[3] = sub_10002926C;
    v45[4] = sub_10002927C;
    v46 = objc_opt_new();
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x3032000000;
    v43[3] = sub_10002926C;
    v43[4] = sub_10002927C;
    v44 = objc_opt_new();
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x3032000000;
    v41[3] = sub_10002926C;
    v41[4] = sub_10002927C;
    v42 = 0;
    v13 = [[MSServiceEvent alloc] initWithEventType:2];
    stopwatch = [v13 stopwatch];
    [stopwatch start];

    if ([(CKDatabase *)self databaseScope]== 3)
    {
      v15 = @"sharedDatabaseData";
    }

    else
    {
      v15 = @"privateDatabaseData";
    }

    optionsCopy = [(CKDatabase *)self _fetchRefreshTokenForRecordZoneID:dCopy, optionsCopy];
    v17 = sub_100030FE4(optionsCopy);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315395;
      v51 = "[CKDatabase(MSDCloudDatabase) fetchAllRecordsForRecordZoneID:userInfo:withOptions:completion:]";
      v52 = 2113;
      v53 = optionsCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Passing Config information %{private}@", buf, 0x16u);
    }

    v18 = [CKFetchRecordZoneChangesOperation alloc];
    v49 = dCopy;
    v19 = [NSArray arrayWithObjects:&v49 count:1];
    v20 = [v18 initWithRecordZoneIDs:v19 configurationsByRecordZoneID:optionsCopy];

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10002A830;
    v30[3] = &unk_1000523A8;
    v21 = v13;
    v37 = v47;
    v31 = v21;
    selfCopy = self;
    v33 = dCopy;
    v34 = infoCopy;
    v35 = v15;
    v36 = v12;
    v38 = v45;
    v39 = v43;
    v40 = v41;
    [v20 setFetchRecordZoneChangesCompletionBlock:v30];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10002B1B8;
    v29[3] = &unk_1000523D0;
    v29[4] = self;
    v29[5] = v47;
    v29[6] = v45;
    v29[7] = v43;
    v29[8] = v41;
    [v20 setRecordZoneFetchCompletionBlock:v29];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10002B434;
    v28[3] = &unk_1000523F8;
    v28[4] = self;
    v28[5] = v43;
    [v20 setRecordWithIDWasDeletedBlock:v28];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10002B544;
    v27[3] = &unk_100052420;
    v27[4] = self;
    v27[5] = v45;
    [v20 setRecordWasChangedBlock:v27];
    if ([optionsCopy userInitiatedRequest])
    {
      [v20 setQualityOfService:25];
    }

    else
    {
      [v20 setQualityOfService:17];
      operationConfiguration = [(CKDatabase *)self operationConfiguration];
      [v20 setConfiguration:operationConfiguration];
    }

    [(CKDatabase *)self addOperation:v20];

    _Block_object_dispose(v41, 8);
    _Block_object_dispose(v43, 8);

    _Block_object_dispose(v45, 8);
    _Block_object_dispose(v47, 8);
  }

  else
  {
    v22 = sub_100030FE4(completionCopy);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100030544();
    }

    if (v12)
    {
      v23 = [NSError errorWithDomain:CKErrorDomain code:12 userInfo:0];
      (v12)[2](v12, 0, v23);
    }
  }
}

- (id)_handleRecordZonesChanged:(id)changed deletedRecordZones:(id)zones
{
  changedCopy = changed;
  zonesCopy = zones;
  if ([zonesCopy count])
  {
    [(CKDatabase *)self _purgeDeletedZonesFromDefaults:zonesCopy];
  }

  v18 = zonesCopy;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10002926C;
  v31 = sub_10002927C;
  v32 = 0;
  v8 = dispatch_group_create();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = changedCopy;
  v9 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v9)
  {
    v10 = *v24;
    v11 = 1000000000 * MSMaxWaitInSecondsForFetchDataFromCloudKit;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        dispatch_group_enter(v8);
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_10002B984;
        v20[3] = &unk_100052448;
        v20[4] = v13;
        v20[5] = self;
        v22 = &v27;
        v14 = v8;
        v21 = v14;
        [(CKDatabase *)self fetchAllRecordsForRecordZoneID:v13 userInfo:0 withOptions:0 completion:v20, v18];
        v15 = dispatch_time(0, v11);
        dispatch_group_wait(v14, v15);
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v9);
  }

  v16 = v28[5];
  _Block_object_dispose(&v27, 8);

  return v16;
}

- (void)_purgeDeletedZonesFromDefaults:(id)defaults
{
  defaultsCopy = defaults;
  if ([(CKDatabase *)self databaseScope]== 3)
  {
    v5 = @"sharedDatabaseData";
  }

  else
  {
    v5 = @"privateDatabaseData";
  }

  v6 = [defaultsCopy na_map:&stru_100052488];
  v7 = sub_100030FE4(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v41 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Purging recordZoneData with recordZoneNames %{private}@", buf, 0xCu);
  }

  v8 = +[MSDDefaultsManager sharedManager];
  v9 = [v8 objectForDefaultWithCustomClass:v5];
  v10 = [v9 mutableCopy];

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10002BF60;
  v38[3] = &unk_100050A98;
  v11 = v6;
  v39 = v11;
  v32 = [v10 na_filter:v38];
  v12 = sub_100030FE4([v10 removeObjectsInArray:?]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    [(CKDatabase *)self databaseScope];
    v13 = CKDatabaseScopeString();
    *buf = 138412547;
    v41 = v13;
    v42 = 2113;
    v43 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] Updating Data in defaults after recordZone deleted %{private}@", buf, 0x16u);
  }

  v14 = +[MSDDefaultsManager sharedManager];
  [v14 setObjectWithCustomClass:v10 forDefault:v5];

  if ([(CKDatabase *)self databaseScope]== 3)
  {
    v15 = @"sharedDatabaseKeyRefreshTokens";
  }

  else
  {
    v15 = @"privateDatabaseKeyRefreshTokens";
  }

  v16 = +[MSDDefaultsManager sharedManager];
  v17 = [v16 objectForDefaultWithCustomClass:v15];
  v18 = [v17 mutableCopy];

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10002BFA8;
  v36[3] = &unk_1000524B0;
  v19 = v11;
  v37 = v19;
  v20 = [v18 na_map:v36];
  v21 = sub_100030FE4([v18 removeObjectsForKeys:v20]);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    [(CKDatabase *)self databaseScope];
    v22 = CKDatabaseScopeString();
    *buf = 138412547;
    v41 = v22;
    v42 = 2113;
    v43 = v18;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%@] Updating Server tokens in defaults after recordZone deleted %{private}@", buf, 0x16u);
  }

  v23 = +[MSDDefaultsManager sharedManager];
  [v23 setObjectWithCustomClass:v18 forDefault:v15];

  v24 = +[MSDDefaultsManager sharedManager];
  v25 = [v24 objectForDefaultWithCustomClass:@"kUserIDToRecordZoneIDMap"];
  v26 = [v25 mutableCopy];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10002C008;
  v33[3] = &unk_100052500;
  v34 = defaultsCopy;
  v27 = objc_opt_new();
  v35 = v27;
  v28 = defaultsCopy;
  [v26 na_each:v33];
  v29 = sub_100030FE4([v26 removeObjectsForKeys:v27]);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    [(CKDatabase *)self databaseScope];
    v30 = CKDatabaseScopeString();
    *buf = 138412547;
    v41 = v30;
    v42 = 2113;
    v43 = v26;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%@] Updating the UserIDToRecordZoneID Map to %{private}@", buf, 0x16u);
  }

  v31 = +[MSDDefaultsManager sharedManager];
  [v31 setObjectWithCustomClass:v26 forDefault:@"kUserIDToRecordZoneIDMap"];
}

- (void)_saveRecordZone:(id)zone withAttribution:(id)attribution andOptions:(id)options completion:(id)completion
{
  zoneCopy = zone;
  attributionCopy = attribution;
  optionsCopy = options;
  completionCopy = completion;
  v14 = completionCopy;
  if (zoneCopy)
  {
    v15 = [CKModifyRecordZonesOperation alloc];
    v23 = zoneCopy;
    v16 = [NSArray arrayWithObjects:&v23 count:1];
    v17 = [v15 initWithRecordZonesToSave:v16 recordZoneIDsToDelete:0];

    MSDUpdateCKOperationForAttribution(v17, attributionCopy);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10002C3C0;
    v20[3] = &unk_100050988;
    v21 = v14;
    [v17 setModifyRecordZonesCompletionBlock:v20];
    if ([optionsCopy userInitiatedRequest])
    {
      [v17 setQualityOfService:25];
    }

    else
    {
      [v17 setQualityOfService:17];
      operationConfiguration = [(CKDatabase *)self operationConfiguration];
      [v17 setConfiguration:operationConfiguration];
    }

    [(CKDatabase *)self addOperation:v17];

    goto LABEL_10;
  }

  v18 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Failed to save recordZone - NIL CKRecordZone", buf, 2u);
  }

  if (v14)
  {
    v17 = [NSError errorWithDomain:CKErrorDomain code:12 userInfo:0];
    (v14)[2](v14, 0, v17);
LABEL_10:
  }
}

- (id)_handleChangedRecords:(id)records andDeletedRecordIDS:(id)s
{
  recordsCopy = records;
  sCopy = s;
  if ([(CKDatabase *)self databaseScope]== 3)
  {
    v8 = @"sharedDatabaseData";
  }

  else
  {
    v8 = @"privateDatabaseData";
  }

  v9 = +[MSDDefaultsManager sharedManager];
  v10 = [v9 objectForDefaultWithCustomClass:v8];

  if (v10 && [v10 count])
  {
    v11 = v10;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;
  v13 = [sCopy count];
  if (v10)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = [(CKDatabase *)self _handleDeletedRecordIDS:sCopy withDataInLocalCopy:v10];

    v12 = v15;
  }

  if ([recordsCopy count])
  {
    v16 = [(CKDatabase *)self _handleChangesInChangedRecords:recordsCopy withDataInLocalCopy:v12];

    v12 = v16;
  }

  return v12;
}

- (id)_handleDeletedRecordIDS:(id)s withDataInLocalCopy:(id)copy
{
  sCopy = s;
  copyCopy = copy;
  if (copyCopy)
  {
    v25 = [NSMutableArray arrayWithArray:copyCopy];
    v23 = copyCopy;
    v7 = [copyCopy na_dictionaryWithKeyGenerator:&stru_100052540];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = sCopy;
    v8 = sCopy;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          recordName = [v13 recordName];
          zoneID = [v13 zoneID];
          zoneName = [zoneID zoneName];
          v17 = [NSString stringWithFormat:@"%@ %@", recordName, zoneName];

          allKeys = [v7 allKeys];
          LODWORD(recordName) = [allKeys containsObject:v17];

          if (recordName)
          {
            v20 = sub_100030FE4(v19);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138477827;
              v31 = v17;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Found match for %{private}@, removing obj from default", buf, 0xCu);
            }

            v21 = [v7 objectForKey:v17];
            [v25 removeObject:v21];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v10);
    }

    copyCopy = v23;
    sCopy = v24;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)_handleChangesInChangedRecords:(id)records withDataInLocalCopy:(id)copy
{
  recordsCopy = records;
  copyCopy = copy;
  if (copyCopy)
  {
    v7 = [NSMutableArray arrayWithArray:copyCopy];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = recordsCopy;
    v45 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
    if (v45)
    {
      v43 = MSHomeParticipantHomeIdentifier;
      v44 = *v54;
      v42 = MSHomeParticipantHomeUserIdentifier;
      v40 = MSDefaultServiceRecordType;
      v36 = recordsCopy;
      v37 = v7;
      v38 = copyCopy;
      while (2)
      {
        for (i = 0; i != v45; i = i + 1)
        {
          if (*v54 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v53 + 1) + 8 * i);
          v10 = [NSUUID alloc];
          v11 = [v9 recordFieldForKey:v43];
          v12 = [v10 initWithUUIDString:v11];

          v13 = [NSUUID alloc];
          v14 = [v9 recordFieldForKey:v42];
          v15 = [v13 initWithUUIDString:v14];

          createMediaServiceObjectFromRecord = [v9 createMediaServiceObjectFromRecord];
          if (!createMediaServiceObjectFromRecord)
          {
            v34 = sub_100030FE4(0);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              sub_10003094C(v9);
            }

LABEL_27:
            v33 = 0;
            recordsCopy = v36;
            goto LABEL_28;
          }

          v17 = createMediaServiceObjectFromRecord;
          v18 = [[MSDDefaultsInfo alloc] initWithService:createMediaServiceObjectFromRecord homeID:v12 homeUserID:v15];
          if (v18)
          {
            recordID = [v9 recordID];
            recordName = [recordID recordName];
            [v18 setRecordName:recordName];

            recordType = [v9 recordType];
            [v18 setRecordType:recordType];

            recordID2 = [v9 recordID];
            zoneID = [recordID2 zoneID];
            zoneName = [zoneID zoneName];
            [v18 setRecordZoneName:zoneName];

            recordType2 = [v18 recordType];
            LODWORD(zoneID) = [recordType2 isEqualToString:v40];

            if (zoneID)
            {
              v48[0] = _NSConcreteStackBlock;
              v48[1] = 3221225472;
              v48[2] = sub_10002CE38;
              v48[3] = &unk_100050B10;
              v49 = v15;
              v50 = v18;
              v26 = [copyCopy na_firstObjectPassingTest:v48];

              v27 = &v49;
            }

            else
            {
              v46[0] = _NSConcreteStackBlock;
              v46[1] = 3221225472;
              v46[2] = sub_10002CF04;
              v46[3] = &unk_100050A98;
              v47 = v18;
              v26 = [copyCopy na_firstObjectPassingTest:v46];
              v27 = &v47;
            }

            if (v26)
            {
              v29 = sub_100030FE4(v28);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                recordType3 = [v26 recordType];
                service = [v26 service];
                serviceID = [service serviceID];
                homeUserID = [v26 homeUserID];
                *buf = 138478595;
                v58 = recordType3;
                v59 = 2113;
                v60 = serviceID;
                v61 = 2113;
                v62 = homeUserID;
                v63 = 2113;
                v64 = v18;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "A property on a known service changed (RecordType: %{private}@, ServiceID: %{private}@, homeUserID: %{private}@) | Updating cachedInfo with %{private}@", buf, 0x2Au);

                copyCopy = v38;
                v7 = v37;
              }

              [v7 removeObject:v26];
            }

            [v7 na_safeAddObject:v18];
          }

          else
          {
            v26 = sub_100030FE4(0);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              sub_10003090C(&v51, v52, v26);
            }
          }

          if (!v18)
          {
            goto LABEL_27;
          }
        }

        recordsCopy = v36;
        v45 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
        if (v45)
        {
          continue;
        }

        break;
      }
    }

    v33 = [v7 copy];
LABEL_28:
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (void)saveRecord:(id)record withAttribution:(id)attribution withOptions:(id)options completion:(id)completion
{
  recordCopy = record;
  attributionCopy = attribution;
  optionsCopy = options;
  completionCopy = completion;
  v14 = completionCopy;
  if (recordCopy)
  {
    v20 = recordCopy;
    v15 = [NSArray arrayWithObjects:&v20 count:1];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10002D270;
    v18[3] = &unk_100050988;
    v19 = v14;
    [(CKDatabase *)self modifyCKRecordWithRecordsToSave:v15 recordIDSToDelete:0 missingManateeIdentity:0 withAttribution:attributionCopy withOptions:optionsCopy completion:v18];

    v16 = v19;
LABEL_7:

    goto LABEL_8;
  }

  v17 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_1000309F0();
  }

  if (v14)
  {
    v16 = [NSError errorWithDomain:CKErrorDomain code:12 userInfo:0];
    (v14)[2](v14, 0, v16);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)deleteRecordWithID:(id)d missingManateeIdentity:(BOOL)identity withOptions:(id)options completion:(id)completion
{
  identityCopy = identity;
  dCopy = d;
  optionsCopy = options;
  completionCopy = completion;
  v13 = completionCopy;
  if (dCopy)
  {
    v20 = dCopy;
    v14 = [NSArray arrayWithObjects:&v20 count:1];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002D4D0;
    v17[3] = &unk_100050988;
    v18 = v13;
    [(CKDatabase *)self modifyCKRecordWithRecordsToSave:0 recordIDSToDelete:v14 missingManateeIdentity:identityCopy withAttribution:0 withOptions:optionsCopy completion:v17];

    v15 = v18;
LABEL_7:

    goto LABEL_8;
  }

  v16 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to delete record - NIL CKRecordID", buf, 2u);
  }

  if (v13)
  {
    v15 = [NSError errorWithDomain:CKErrorDomain code:12 userInfo:0];
    (v13)[2](v13, 0, v15);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)modifyCKRecordWithRecordsToSave:(id)save recordIDSToDelete:(id)delete missingManateeIdentity:(BOOL)identity withAttribution:(id)attribution withOptions:(id)options completion:(id)completion
{
  identityCopy = identity;
  saveCopy = save;
  deleteCopy = delete;
  attributionCopy = attribution;
  optionsCopy = options;
  completionCopy = completion;
  v19 = [saveCopy count];
  if (v19 || (v19 = [deleteCopy count]) != 0)
  {
    if (identityCopy)
    {
      v20 = sub_100030FE4(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Creating Modify Records Operation with markAsParticipantNeedsNewInvitationToken: YES", buf, 2u);
      }
    }

    v21 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:saveCopy recordIDsToDelete:deleteCopy];
    MSDUpdateCKOperationForAttribution(v21, attributionCopy);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10002D748;
    v24[3] = &unk_100050988;
    v25 = completionCopy;
    [v21 setModifyRecordsCompletionBlock:v24];
    if ([optionsCopy userInitiatedRequest])
    {
      [v21 setQualityOfService:25];
    }

    else
    {
      [v21 setQualityOfService:17];
      operationConfiguration = [(CKDatabase *)self operationConfiguration];
      [v21 setConfiguration:operationConfiguration];
    }

    [v21 setMarkAsParticipantNeedsNewInvitationToken:identityCopy];
    [(CKDatabase *)self addOperation:v21];

    goto LABEL_11;
  }

  v23 = sub_100030FE4(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_100030A2C();
  }

  if (completionCopy)
  {
    v21 = [NSError errorWithDomain:CKErrorDomain code:12 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, v21);
LABEL_11:
  }
}

- (id)_fetchPlaceholderRecordData:(id)data error:(id *)error
{
  dataCopy = data;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10002926C;
  v25 = sub_10002927C;
  v26 = objc_opt_new();
  v7 = [CKRecordID alloc];
  v8 = [v7 initWithRecordName:MSPlaceholderRecordName zoneID:dataCopy];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10002DA6C;
  v18 = &unk_100052568;
  v20 = &v21;
  v9 = dispatch_semaphore_create(0);
  v19 = v9;
  [(CKDatabase *)self fetchRecordWithID:v8 withOptions:0 completion:&v15];
  v10 = dispatch_time(0, 1000000000 * MSMaxWaitInSecondsForFetchDataFromCloudKit);
  v11 = dispatch_semaphore_wait(v9, v10);
  if (v11)
  {
    v12 = sub_100030FE4(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100030A68();
    }

    if (error)
    {
      *error = [NSError errorWithDomain:MSCloudKitErrorDomain code:10 userInfo:0, v15, v16, v17, v18];
    }
  }

  v13 = [v22[5] copy];

  _Block_object_dispose(&v21, 8);

  return v13;
}

- (id)_fetchRefreshTokenForRecordZoneID:(id)d
{
  dCopy = d;
  if ([(CKDatabase *)self databaseScope]== 3)
  {
    v5 = @"sharedDatabaseKeyRefreshTokens";
  }

  else
  {
    v5 = @"privateDatabaseKeyRefreshTokens";
  }

  v6 = +[MSDDefaultsManager sharedManager];
  v7 = [v6 objectForDefaultWithCustomClass:v5];

  if (v7)
  {
    v9 = sub_100030FE4(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      [(CKDatabase *)self databaseScope];
      v10 = CKDatabaseScopeString();
      *buf = 138412290;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] There exists an entry for Change token", buf, 0xCu);
    }

    v11 = +[MSDDefaultsManager sharedManager];
    v12 = [v11 objectForDefaultWithCustomClass:v5];

    v13 = objc_opt_new();
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10002DDD4;
    v18[3] = &unk_100052590;
    v19 = dCopy;
    v14 = v13;
    v20 = v14;
    [v12 na_each:v18];
    v15 = v20;
    v16 = v14;
  }

  else
  {
    v12 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
    [v12 setPreviousServerChangeToken:0];
    v16 = objc_opt_new();
    [v16 na_safeSetObject:v12 forKey:dCopy];
  }

  return v16;
}

- (void)_updateServerChangeTokenMap:(id)map serverChangeToken:(id)token
{
  mapCopy = map;
  tokenCopy = token;
  if ([(CKDatabase *)self databaseScope]== 3)
  {
    v8 = @"sharedDatabaseKeyRefreshTokens";
  }

  else
  {
    v8 = @"privateDatabaseKeyRefreshTokens";
  }

  v9 = +[MSDDefaultsManager sharedManager];
  v10 = [v9 objectForDefaultWithCustomClass:v8];
  v11 = [v10 mutableCopy];

  if (!v11)
  {
    v11 = objc_opt_new();
  }

  zoneName = [mapCopy zoneName];
  [v11 na_safeSetObject:tokenCopy forKey:zoneName];

  v14 = sub_100030FE4(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    [(CKDatabase *)self databaseScope];
    v15 = CKDatabaseScopeString();
    v18 = 138412546;
    v19 = v15;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] Updating Server Change Token Map %@", &v18, 0x16u);
  }

  v16 = +[MSDDefaultsManager sharedManager];
  v17 = [v11 copy];
  [v16 setObjectWithCustomClass:v17 forDefault:v8];
}

- (void)_handleCKErrorChangeTokenExpired:(id)expired userInfo:(id)info
{
  expiredCopy = expired;
  infoCopy = info;
  v8 = infoCopy;
  if (expiredCopy)
  {
    v15 = expiredCopy;
    v9 = [NSArray arrayWithObjects:&v15 count:1];
    [(CKDatabase *)self _purgeDeletedZonesFromDefaults:v9];

    v10 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002E1A8;
    block[3] = &unk_100052128;
    block[4] = self;
    v13 = expiredCopy;
    v14 = v8;
    dispatch_async(v10, block);
  }

  else
  {
    v11 = sub_100030FE4(infoCopy);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100030B14();
    }
  }
}

- (void)handleCKErrorMissingManateeIdentity:(id)identity homeUserIDS:(id)s
{
  identityCopy = identity;
  sCopy = s;
  v8 = sCopy;
  if (!identityCopy)
  {
    v9 = sub_100030FE4(sCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100030C20();
    }

    goto LABEL_12;
  }

  if ([(CKDatabase *)self databaseScope]!= 3)
  {
    if ([(CKDatabase *)self databaseScope]!= 2)
    {
      goto LABEL_13;
    }

    v10 = +[MSDDefaultsManager sharedManager];
    v9 = [v10 objectForDefaultWithCustomClass:@"privateDatabaseData"];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002E404;
    v17[3] = &unk_100050A98;
    v11 = identityCopy;
    v18 = v11;
    v12 = [v9 na_firstObjectPassingTest:v17];
    homeUserID = [v12 homeUserID];

    if (homeUserID)
    {
      uUIDString = [homeUserID UUIDString];
      [(CKDatabase *)self _handleManateeLossOnPrivateDatabase:v11 homeUserID:uUIDString];

      v16 = [[MSDDataRefresh alloc] initWithReason:7 withDelay:90.0];
      [(MSDDataRefresh *)v16 performRefreshWithCompletion:0];
    }

    else
    {
      v16 = sub_100030FE4(v14);
      if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_ERROR))
      {
        sub_100030B94(v11);
      }
    }

LABEL_12:
    goto LABEL_13;
  }

  [(CKDatabase *)self _handleManateeLossOnSharedDatabase:identityCopy completion:&stru_1000525B0];
LABEL_13:
}

- (void)handleCKErrorMissingManateeIdentity:(id)identity homeUserID:(id)d
{
  identityCopy = identity;
  dCopy = d;
  v8 = sub_100030FE4(dCopy);
  v9 = v8;
  if (identityCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [(CKDatabase *)self databaseScope];
      v10 = CKDatabaseScopeString();
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Manatee loss detected on Database scope: %@", &v16, 0xCu);
    }

    v12 = sub_100030FE4(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      zoneName = [identityCopy zoneName];
      v16 = 138412546;
      v17 = zoneName;
      v18 = 2112;
      v19 = dCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Attempting to recover from Manatee loss for %@ and homeUserID %@", &v16, 0x16u);
    }

    if ([(CKDatabase *)self databaseScope]== 3)
    {
      [(CKDatabase *)self _handleManateeLossOnSharedDatabase:identityCopy completion:&stru_1000525D0];
    }

    else if ([(CKDatabase *)self databaseScope]== 2)
    {
      v14 = sub_100030FE4([(CKDatabase *)self _handleManateeLossOnPrivateDatabase:identityCopy homeUserID:dCopy]);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 134217984;
        v17 = 90;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Scheduling PrivateDatabase refresh after %lu sec", &v16, 0xCu);
      }

      v15 = [[MSDDataRefresh alloc] initWithReason:7 withDelay:90.0];
      [(MSDDataRefresh *)v15 performRefreshWithCompletion:0];
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100030C20();
    }
  }
}

- (void)_handleManateeLossOnSharedDatabase:(id)database completion:(id)completion
{
  completionCopy = completion;
  databaseCopy = database;
  v8 = [[CKShare alloc] initWithRecordZoneID:databaseCopy];

  v10 = sub_100030FE4(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Attempting to delete shareID %@", buf, 0xCu);
  }

  recordID = [v8 recordID];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002E8CC;
  v13[3] = &unk_100051A88;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [(CKDatabase *)self deleteRecordWithID:recordID missingManateeIdentity:1 withOptions:0 completion:v13];
}

- (void)_handleManateeLossOnPrivateDatabase:(id)database homeUserID:(id)d
{
  databaseCopy = database;
  v6 = databaseCopy;
  if (databaseCopy)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002EB04;
    v8[3] = &unk_100052620;
    v8[4] = self;
    v9 = databaseCopy;
    [(CKDatabase *)self deleteRecordZone:v9 withOptions:0 completion:v8];
  }

  else
  {
    v7 = sub_100030FE4(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[CKDatabase(MSDCloudDatabase) _handleManateeLossOnPrivateDatabase:homeUserID:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Failed to recover from Manatee Loss - NIL recordZoneID", buf, 0xCu);
    }
  }
}

- (void)_populateRecordZoneWithCachedInfo:(id)info cachedInfo:(id)cachedInfo
{
  infoCopy = info;
  cachedInfoCopy = cachedInfo;
  v8 = objc_opt_new();
  v9 = [cachedInfoCopy na_firstObjectPassingTest:&stru_100052660];
  v10 = v9;
  v60 = infoCopy;
  if (v9)
  {
    selfCopy = self;
    v77[0] = kCKDatabaseAccessUserInfoHomeUserIDKey;
    homeUserID = [v9 homeUserID];
    uUIDString = [homeUserID UUIDString];
    v78[0] = uUIDString;
    v77[1] = kCKDatabaseAccessUserInfoHomeIDKey;
    homeID = [v10 homeID];
    uUIDString2 = [homeID UUIDString];
    v78[1] = uUIDString2;
    v15 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:2];

    v16 = MSPlaceholderRecordName;
    v17 = MSPlaceholderRecordType;
    zoneID = [infoCopy zoneID];
    v58 = [CKRecord createRecordWithName:v16 recordType:v17 recordZone:zoneID];

    v20 = sub_100030FE4(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      homeID2 = [v10 homeID];
      homeUserID2 = [v10 homeUserID];
      *buf = 138412546;
      v74 = homeID2;
      v75 = 2112;
      v76 = homeUserID2;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Placeholder recordInfo HomeID: %@, HomeUserID: %@", buf, 0x16u);
    }

    v23 = MSHomeParticipantHomeIdentifier;
    homeID3 = [v10 homeID];
    uUIDString3 = [homeID3 UUIDString];
    [v58 setRecordFieldForKey:v23 value:uUIDString3];

    v26 = MSHomeParticipantHomeUserIdentifier;
    v56 = v10;
    homeUserID3 = [v10 homeUserID];
    uUIDString4 = [homeUserID3 UUIDString];
    [v58 setRecordFieldForKey:v26 value:uUIDString4];

    [v8 na_safeAddObject:v58];
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v57 = cachedInfoCopy;
    obj = cachedInfoCopy;
    v29 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
    v30 = infoCopy;
    v31 = &HMHomeManagerStatusToString_ptr;
    v65 = v29;
    if (v29)
    {
      v64 = *v69;
      v32 = MSDefaultServiceRecordType;
      v63 = MSServiceAccountRecordType;
      v61 = MSDefaultServiceRecordName;
      v59 = v15;
      do
      {
        v33 = 0;
        do
        {
          v34 = v32;
          if (*v69 != v64)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v68 + 1) + 8 * v33);
          v36 = sub_100030FE4(v29);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            service = [v35 service];
            serviceID = [service serviceID];
            *buf = 138412290;
            v74 = serviceID;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Repopulating info for %@", buf, 0xCu);
          }

          recordType = [v35 recordType];
          v32 = v34;
          v40 = [recordType isEqualToString:v34];

          if (v40)
          {
            v41 = v31[244];
            zoneID2 = [v30 zoneID];
            [v41 createRecordWithName:v61 recordType:v34 recordZone:zoneID2];
            v44 = v43 = v34;
          }

          else
          {
            recordType2 = [v35 recordType];
            v46 = [recordType2 isEqualToString:v63];

            if (!v46)
            {
              goto LABEL_16;
            }

            v47 = v31[244];
            zoneID2 = [v35 service];
            [zoneID2 serviceID];
            v49 = v48 = v8;
            uUIDString5 = [v49 UUIDString];
            zoneID3 = [v30 zoneID];
            v52 = v47;
            v43 = v63;
            v44 = [v52 createRecordWithName:uUIDString5 recordType:v63 recordZone:zoneID3];

            v30 = v60;
            v31 = &HMHomeManagerStatusToString_ptr;

            v8 = v48;
            v15 = v59;
          }

          service2 = [v35 service];
          [v44 populateCKRecordInfo:service2 userInfo:v15 recordType:v43];

          [v8 na_safeAddObject:v44];
          v32 = v34;
LABEL_16:
          v33 = v33 + 1;
        }

        while (v65 != v33);
        v29 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
        v65 = v29;
      }

      while (v29);
    }

    if ([v8 count])
    {
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_10002F648;
      v66[3] = &unk_100052688;
      v67 = v8;
      [(CKDatabase *)selfCopy modifyCKRecordWithRecordsToSave:v67 recordIDSToDelete:0 missingManateeIdentity:0 withAttribution:0 withOptions:0 completion:v66];
      v54 = v67;
      cachedInfoCopy = v57;
    }

    else
    {
      v54 = sub_100030FE4(0);
      cachedInfoCopy = v57;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        sub_100030E58();
      }
    }

    v10 = v56;
  }

  else
  {
    v15 = sub_100030FE4(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "There are no cached services configured on account", buf, 2u);
    }
  }
}

- (void)_checkShareStatusIfApplicable:(id)applicable
{
  applicableCopy = applicable;
  if ([(CKDatabase *)self databaseScope]== 2)
  {
    v5 = +[MSDHomeManager sharedManager];
    currentHome = [v5 currentHome];

    if (currentHome && ([currentHome isCurrentUserHomeOwner] & 1) == 0 && (objc_msgSend(currentHome, "isCurrentUserRestrictedGuest") & 1) == 0)
    {
      objc_opt_class();
      v7 = applicableCopy;
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      participants = [v9 participants];
      v11 = [participants na_firstObjectPassingTest:&stru_1000526A8];

      v13 = sub_100030FE4(v12);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v14)
        {
          [v11 invitationTokenStatus];
          v15 = CKStringFromParticipantInvitationTokenStatus();
          *buf = 138412290;
          v19 = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "There exists a participant whose invitation token status : %@", buf, 0xCu);
        }

        [v11 setWantsNewInvitationToken:1];
        [v9 addParticipant:v11];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10002F9D8;
        v16[3] = &unk_100052710;
        v17 = v7;
        [(CKDatabase *)self saveRecord:v9 withOptions:0 completion:v16];
        v13 = v17;
      }

      else if (v14)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No eligible participant on the share (NeedsNewToken - NO)", buf, 2u);
      }
    }
  }
}

- (id)operationConfiguration
{
  v2 = objc_opt_new();

  return v2;
}

- (void)_notifyObserversDataChanged:(id)changed cachedData:(id)data
{
  dataCopy = data;
  changedCopy = changed;
  v7 = sub_100030FE4(changedCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Posting notification a property changed on service object", v9, 2u);
  }

  notify_post([kMediaSetupServicesChanged UTF8String]);
  v8 = [MSDServicesUpdated servicesUpdated:changedCopy cachedData:dataCopy];

  [v8 processChangesInServices];
}

- (BOOL)_attemptToRecordServiceRequestLapse:(id)lapse fromRecords:(id)records
{
  lapseCopy = lapse;
  recordsCopy = records;
  v7 = +[MSDDefaultsManager sharedManager];
  v8 = kMissedServiceRequestKey;
  v9 = [v7 objectForDefault:kMissedServiceRequestKey];

  v10 = [v9 objectForKeyedSubscript:kMissedServiceRequestServiceKey];
  v11 = v10;
  if (v10)
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10002FF94;
    v31[3] = &unk_100050A98;
    v12 = v10;
    v32 = v12;
    v13 = [lapseCopy na_firstObjectPassingTest:v31];
    v14 = v13;
    if (v13)
    {
      v15 = sub_100030FE4(v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Noticed a request for a missing service while adding it.", buf, 2u);
      }

      v16 = +[MSDDefaultsManager sharedManager];
      [v16 removeObjectForDefault:v8];

      v29 = recordsCopy;
      v17 = [recordsCopy na_firstObjectPassingTest:&stru_100052730];
      v18 = [v9 objectForKeyedSubscript:kMissedServiceRequestDateLastRequestedKey];
      v19 = +[NSCalendar currentCalendar];
      creationDate = [v17 creationDate];
      v21 = [v19 components:16 fromDate:v18 toDate:creationDate options:0];

      v22 = [v21 day];
      v23 = v22 < 2;
      if (v22 < 2)
      {
        v26 = [[MSServiceRequestLapseEvent alloc] initWithServiceID:v12];
        creationDate2 = [v17 creationDate];
        [v26 setRecordCreationDate:creationDate2];

        v25 = [v9 objectForKeyedSubscript:kMissedServiceRequestTimeLastRequestedKey];
        -[NSObject setTimeOfRequest:](v26, "setTimeOfRequest:", [v25 unsignedLongLongValue]);

        [v26 setDateOfRequest:v18];
        [v26 setEndTime:mach_absolute_time()];
        [MSAnalytics sendServiceRequestLapseEvent:v26];
      }

      else
      {
        v26 = sub_100030FE4(v22);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Request for service over a day old. Skipping noting it as a lapse event.", buf, 2u);
        }
      }

      recordsCopy = v29;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

@end