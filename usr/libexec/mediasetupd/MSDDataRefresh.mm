@interface MSDDataRefresh
+ (void)cacheLastRefreshforHomes:(id)homes;
+ (void)clearLastRefreshTSForHomes;
- (BOOL)_shouldPreformRefresh:(id)refresh;
- (BOOL)_shouldProceedWithExecution:(id)execution;
- (MSDDataRefresh)initWithReason:(unint64_t)reason;
- (MSDDataRefresh)initWithReason:(unint64_t)reason withDelay:(double)delay;
- (void)_checkDataSanity:(id)sanity publicDBInfo:(id)info home:(id)home completion:(id)completion;
- (void)_checkZoneAndDefaultRecordInEachHome:(id)home completion:(id)completion;
- (void)_createAndSaveAppleMusicRecord:(id)record publicDBInfo:(id)info home:(id)home completion:(id)completion;
- (void)_deleteRecordZone:(id)zone completion:(id)completion;
- (void)_deleteZombieRecordZonesIfAnyInHomes:(id)homes completion:(id)completion;
- (void)_handleCKShareError:(id)error home:(id)home;
- (void)_initializeCKAndServiceInfoForHome:(id)home completion:(id)completion;
- (void)_performDataRefresh:(id)refresh;
- (void)_refreshDatabases:(id)databases;
- (void)_saveMediaServiceConfigInfo:(id)info record:(id)record completion:(id)completion;
- (void)_setupShareForParticipant:(id)participant home:(id)home completion:(id)completion;
- (void)_shareThisRecordIfApplicable:(id)applicable home:(id)home completion:(id)completion;
- (void)_updateDefaultService:(id)service record:(id)record completion:(id)completion;
- (void)performRefreshWithCompletion:(id)completion;
- (void)refreshDataAfterDelay;
@end

@implementation MSDDataRefresh

- (MSDDataRefresh)initWithReason:(unint64_t)reason
{
  v5.receiver = self;
  v5.super_class = MSDDataRefresh;
  result = [(MSDDataRefresh *)&v5 init];
  if (result)
  {
    result->_refreshReason = reason;
    result->_delay = 0.0;
  }

  return result;
}

- (MSDDataRefresh)initWithReason:(unint64_t)reason withDelay:(double)delay
{
  v7.receiver = self;
  v7.super_class = MSDDataRefresh;
  result = [(MSDDataRefresh *)&v7 init];
  if (result)
  {
    result->_refreshReason = reason;
    result->_delay = delay;
  }

  return result;
}

- (void)performRefreshWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MSDDataRefreshReasonToString(self->_refreshReason);
    delay = self->_delay;
    *buf = 136315650;
    v14 = "[MSDDataRefresh performRefreshWithCompletion:]";
    v15 = 2112;
    v16 = v6;
    v17 = 2048;
    v18 = delay;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s reason: %@ delay: %f", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v8 = +[MSDCloudManager sharedManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001AB10;
  v10[3] = &unk_1000518A0;
  v9 = completionCopy;
  v10[4] = self;
  v11 = v9;
  objc_copyWeak(&v12, buf);
  [v8 isCloudKitAccessAvailable:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)_performDataRefresh:(id)refresh
{
  refreshCopy = refresh;
  v5 = +[MSDHomeManager sharedManager];
  allHomes = [v5 allHomes];

  if (allHomes)
  {
    v7 = [allHomes count];
    if (v7)
    {
      v8 = sub_100030FE4(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v23 = allHomes;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Homes user is part of %{private}@", buf, 0xCu);
      }

      v9 = [allHomes hmf_objectsPassingTest:&stru_1000518E0];
      v10 = [v9 count];
      v11 = sub_100030FE4(v10);
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v12)
        {
          *buf = 138477827;
          v23 = v9;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Performing update on the following homes: %{private}@", buf, 0xCu);
        }

        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10001B05C;
        v17[3] = &unk_100051958;
        v19 = refreshCopy;
        v17[4] = self;
        v9 = v9;
        v18 = v9;
        [(MSDDataRefresh *)self _checkZoneAndDefaultRecordInEachHome:v9 completion:v17];

        v13 = v19;
      }

      else
      {
        if (v12)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Skipping CloudKit refresh. Homes do not contain valid accessories for media setup.", buf, 2u);
        }

        if (!refreshCopy)
        {
          goto LABEL_12;
        }

        v15 = MSErrorDomain;
        v20 = MSUserInfoErrorStringKey;
        v21 = @"Failed to perform refresh. No valid accessories in home to setup.";
        v13 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        v16 = [NSError errorWithDomain:v15 code:3 userInfo:v13];
        (*(refreshCopy + 2))(refreshCopy, 0, v16);
      }

LABEL_11:

LABEL_12:
      goto LABEL_13;
    }
  }

  if (refreshCopy)
  {
    v14 = MSErrorDomain;
    v24 = MSUserInfoErrorStringKey;
    v25 = @"Failed to perform refresh. No homes available.";
    v9 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v13 = [NSError errorWithDomain:v14 code:3 userInfo:v9];
    (*(refreshCopy + 2))(refreshCopy, 0, v13);
    goto LABEL_11;
  }

LABEL_13:
}

- (void)_checkZoneAndDefaultRecordInEachHome:(id)home completion:(id)completion
{
  homeCopy = home;
  completionCopy = completion;
  v7 = dispatch_group_create();
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = homeCopy;
  v8 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  v9 = v8;
  if (v8)
  {
    v10 = *v29;
    do
    {
      v11 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * v11);
        v13 = sub_100030FE4(v8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v35 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Starting refresh for Home : %{private}@", buf, 0xCu);
        }

        isCurrentUserRestrictedGuest = [v12 isCurrentUserRestrictedGuest];
        if (isCurrentUserRestrictedGuest)
        {
          v15 = sub_100030FE4(isCurrentUserRestrictedGuest);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            currentUser = [v12 currentUser];
            uniqueIdentifier = [currentUser uniqueIdentifier];
            *buf = 138477827;
            v35 = uniqueIdentifier;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Determined user (%{private}@) to be a restricted guest. Skipping setting up media in the home", buf, 0xCu);
          }
        }

        else
        {
          dispatch_group_enter(v7);
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_10001B800;
          v25[3] = &unk_100051068;
          v27 = v32;
          v25[4] = v12;
          v26 = v7;
          [(MSDDataRefresh *)self _initializeCKAndServiceInfoForHome:v12 completion:v25];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v8 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      v9 = v8;
    }

    while (v8);
  }

  v18 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B90C;
  block[3] = &unk_100051980;
  v23 = completionCopy;
  v24 = v32;
  v19 = completionCopy;
  dispatch_group_notify(v7, v18, block);

  _Block_object_dispose(v32, 8);
}

- (void)_deleteZombieRecordZonesIfAnyInHomes:(id)homes completion:(id)completion
{
  homesCopy = homes;
  completionCopy = completion;
  v8 = +[MSDeviceInfo isDeviceAppleTV];
  if ((v8 & 1) != 0 || (v8 = +[MSDeviceInfo isDeviceAudioAccessory], v8))
  {
    v9 = sub_100030FE4(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "** Deletion of recordZones will be handled by the iOS device **", buf, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v10 = [homesCopy na_map:&stru_1000519C0];
    v11 = +[CKContainer MSDCloudKitContainer];
    privateCloudDatabase = [v11 privateCloudDatabase];

    v13 = +[CKFetchRecordZonesOperation fetchAllRecordZonesOperation];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10001BB84;
    v17[3] = &unk_100051A60;
    v22 = completionCopy;
    v18 = privateCloudDatabase;
    v19 = v10;
    v20 = homesCopy;
    selfCopy = self;
    v14 = v10;
    v15 = privateCloudDatabase;
    [v13 setFetchRecordZonesCompletionBlock:v17];
    [v13 setQualityOfService:17];
    operationConfiguration = [v15 operationConfiguration];
    [v13 setConfiguration:operationConfiguration];

    [v15 addOperation:v13];
  }
}

- (void)_deleteRecordZone:(id)zone completion:(id)completion
{
  zoneCopy = zone;
  completionCopy = completion;
  v7 = +[CKContainer MSDCloudKitContainer];
  privateCloudDatabase = [v7 privateCloudDatabase];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001C6A8;
  v11[3] = &unk_100051A88;
  v12 = zoneCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = zoneCopy;
  [privateCloudDatabase deleteRecordZone:v10 withOptions:0 completion:v11];
}

- (void)_refreshDatabases:(id)databases
{
  databasesCopy = databases;
  v4 = dispatch_group_create();
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_10001C0EC;
  v20[4] = sub_10001C0FC;
  v21 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  dispatch_group_enter(v4);
  v5 = +[CKContainer MSDCloudKitContainer];
  privateCloudDatabase = [v5 privateCloudDatabase];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001C9B8;
  v14[3] = &unk_100051AB0;
  v16 = v20;
  v17 = v18;
  v7 = v4;
  v15 = v7;
  [privateCloudDatabase refreshDatabase:0 completion:v14];

  v8 = dispatch_get_global_queue(2, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001CA54;
  v10[3] = &unk_100051AD8;
  v11 = databasesCopy;
  v12 = v18;
  v13 = v20;
  v9 = databasesCopy;
  dispatch_group_notify(v7, v8, v10);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);
}

+ (void)clearLastRefreshTSForHomes
{
  v2 = sub_100030FE4(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10001FA7C();
  }

  v3 = +[MSDDefaultsManager sharedManager];
  [v3 removeObjectForDefault:@"lastDataRefresh"];
}

+ (void)cacheLastRefreshforHomes:(id)homes
{
  homesCopy = homes;
  v4 = +[MSDDefaultsManager sharedManager];
  v5 = +[NSDate date];
  [v5 timeIntervalSinceReferenceDate];
  v6 = [NSNumber numberWithDouble:?];
  [v4 setObject:v6 forDefault:@"lastDataRefresh"];

  v8 = [homesCopy na_map:&stru_100051AF8];

  v7 = +[MSDDefaultsManager sharedManager];
  [v7 setObject:v8 forDefault:@"homesRefreshed"];
}

- (void)refreshDataAfterDelay
{
  inited = objc_initWeak(&location, self);
  v4 = sub_100030FE4(inited);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    delay = self->_delay;
    v6 = MSDDataRefreshReasonToString(self->_refreshReason);
    *buf = 134218242;
    v12 = delay;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Scheduling Refresh task after %f with reason: %@", buf, 0x16u);
  }

  v7 = dispatch_time(0, (self->_delay * 1000000000.0));
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001D020;
  v8[3] = &unk_1000509C0;
  objc_copyWeak(&v9, &location);
  dispatch_after(v7, &_dispatch_main_q, v8);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_initializeCKAndServiceInfoForHome:(id)home completion:(id)completion
{
  homeCopy = home;
  completionCopy = completion;
  v8 = objc_alloc_init(MSDFetchCKDataOptions);
  [(MSDFetchCKDataOptions *)v8 setCreateNewZoneIfMissing:1];
  [(MSDFetchCKDataOptions *)v8 setUserInitiatedRequest:0];
  v9 = +[CKContainer MSDCloudKitContainer];
  privateCloudDatabase = [v9 privateCloudDatabase];

  objc_initWeak(&location, self);
  uniqueIdentifier = [homeCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  currentUser = [homeCopy currentUser];
  uniqueIdentifier2 = [currentUser uniqueIdentifier];
  uUIDString2 = [uniqueIdentifier2 UUIDString];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001D37C;
  v18[3] = &unk_100051B70;
  v16 = completionCopy;
  v20 = v16;
  objc_copyWeak(&v21, &location);
  v17 = homeCopy;
  v19 = v17;
  [privateCloudDatabase fetchRecordZoneFor:uUIDString user:uUIDString2 withOptions:v8 completion:v18];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)_checkDataSanity:(id)sanity publicDBInfo:(id)info home:(id)home completion:(id)completion
{
  sanityCopy = sanity;
  infoCopy = info;
  homeCopy = home;
  completionCopy = completion;
  v14 = [CKRecordID alloc];
  serviceID = [infoCopy serviceID];
  zoneID = [sanityCopy zoneID];
  v17 = [v14 initWithRecordName:serviceID zoneID:zoneID];

  v18 = [CKRecordID alloc];
  zoneID2 = [sanityCopy zoneID];
  v20 = [v18 initWithRecordName:MSDefaultServiceRecordName zoneID:zoneID2];

  if (v17 && v20)
  {
    objc_initWeak(&location, self);
    v22 = +[CKContainer MSDCloudKitContainer];
    privateCloudDatabase = [v22 privateCloudDatabase];

    v43[0] = v17;
    v43[1] = v20;
    v24 = [NSArray arrayWithObjects:v43 count:2];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10001D8B8;
    v34[3] = &unk_100051BC0;
    objc_copyWeak(&v41, &location);
    v40 = completionCopy;
    v35 = v17;
    v36 = v20;
    v37 = homeCopy;
    v38 = sanityCopy;
    v39 = infoCopy;
    [privateCloudDatabase fetchRecordWithIDS:v24 withOptions:0 completion:v34];

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  else
  {
    v25 = sub_100030FE4(v21);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10001FC44(v25, v26, v27, v28, v29, v30, v31, v32);
    }

    if (completionCopy)
    {
      v33 = [NSError errorWithDomain:CKErrorDomain code:12 userInfo:0];
      (*(completionCopy + 2))(completionCopy, v33);
    }
  }
}

- (BOOL)_shouldProceedWithExecution:(id)execution
{
  executionCopy = execution;
  v4 = [executionCopy CKErrorHasErrorCode:11];
  v5 = sub_100030FE4(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unknown item error, Okay to continue, we will create new record", v8, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10001FCBC();
  }

  return v4;
}

- (void)_createAndSaveAppleMusicRecord:(id)record publicDBInfo:(id)info home:(id)home completion:(id)completion
{
  recordCopy = record;
  infoCopy = info;
  homeCopy = home;
  completionCopy = completion;
  v14 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v32 = infoCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Creating AppleMusic Service record with PublicDB Info : %{private}@", buf, 0xCu);
  }

  serviceID = [infoCopy serviceID];
  v16 = [CKRecord createRecordWithName:serviceID recordType:MSServiceAccountRecordType recordZone:recordCopy];

  uniqueIdentifier = [homeCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  currentUser = [homeCopy currentUser];
  uniqueIdentifier2 = [currentUser uniqueIdentifier];
  uUIDString2 = [uniqueIdentifier2 UUIDString];

  v23 = sub_100030FE4(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v32 = uUIDString;
    v33 = 2113;
    v34 = uUIDString2;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Adding Home Entries HomeID : %{private}@ HomeUserID : %{private}@", buf, 0x16u);
  }

  [v16 setRecordFieldForKey:MSHomeParticipantHomeIdentifier value:uUIDString];
  [v16 setRecordFieldForKey:MSHomeParticipantHomeUserIdentifier value:uUIDString2];
  objc_initWeak(buf, self);
  serviceID2 = [infoCopy serviceID];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10001E080;
  v27[3] = &unk_100051BE8;
  v25 = completionCopy;
  v29 = v25;
  objc_copyWeak(&v30, buf);
  v26 = homeCopy;
  v28 = v26;
  [(MSDDataRefresh *)self _saveMediaServiceConfigInfo:serviceID2 record:v16 completion:v27];

  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);
}

- (void)_shareThisRecordIfApplicable:(id)applicable home:(id)home completion:(id)completion
{
  applicableCopy = applicable;
  homeCopy = home;
  completionCopy = completion;
  v11 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    isCurrentUserHomeOwner = [homeCopy isCurrentUserHomeOwner];
    v13 = @"NO";
    v21 = "[MSDDataRefresh _shareThisRecordIfApplicable:home:completion:]";
    *buf = 136315651;
    if (isCurrentUserHomeOwner)
    {
      v13 = @"YES";
    }

    v22 = 2113;
    v23 = homeCopy;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s %{private}@ CurrentUserOwner: %@", buf, 0x20u);
  }

  if ([homeCopy isCurrentUserHomeOwner] || (v14 = objc_msgSend(homeCopy, "isCurrentUserRestrictedGuest"), v14))
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v15 = sub_100030FE4(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      recordID = [applicableCopy recordID];
      *buf = 138477827;
      v21 = recordID;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Setting up share for participant with recordID %{private}@", buf, 0xCu);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10001E560;
    v17[3] = &unk_100051C10;
    v18 = homeCopy;
    v19 = completionCopy;
    [(MSDDataRefresh *)self _setupShareForParticipant:applicableCopy home:v18 completion:v17];
  }
}

- (void)_updateDefaultService:(id)service record:(id)record completion:(id)completion
{
  completionCopy = completion;
  v8 = MSDefaultServiceRecordName;
  v9 = MSDefaultServiceRecordType;
  recordCopy = record;
  serviceCopy = service;
  recordID = [recordCopy recordID];
  zoneID = [recordID zoneID];
  v14 = [CKRecord createRecordWithName:v8 recordType:v9 recordZone:zoneID];

  v15 = MediaServiceIdentifier;
  v16 = [recordCopy recordFieldForKey:MediaServiceIdentifier];

  currentUser = [serviceCopy currentUser];

  uniqueIdentifier = [currentUser uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  v21 = sub_100030FE4(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v28 = v16;
    v29 = 2113;
    v30 = uUIDString;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Setting default service identifier %{private}@ and homeUserID %{private}@", buf, 0x16u);
  }

  [v14 setRecordFieldForKey:v15 value:v16];
  [v14 setRecordFieldForKey:MSHomeParticipantHomeUserIdentifier value:uUIDString];
  v22 = +[CKContainer MSDCloudKitContainer];
  privateCloudDatabase = [v22 privateCloudDatabase];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10001E934;
  v25[3] = &unk_100051C38;
  v26 = completionCopy;
  v24 = completionCopy;
  [privateCloudDatabase saveRecord:v14 completionHandler:v25];
}

- (void)_saveMediaServiceConfigInfo:(id)info record:(id)record completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  recordCopy = record;
  v10 = sub_100030FE4(recordCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v17 = infoCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Attempting to save record for Apple Music with service info : %{private}@", buf, 0xCu);
  }

  [recordCopy setRecordFieldForKey:MediaServiceIdentifier value:infoCopy];
  v11 = +[CKContainer MSDCloudKitContainer];
  privateCloudDatabase = [v11 privateCloudDatabase];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001EB9C;
  v14[3] = &unk_100051C38;
  v15 = completionCopy;
  v13 = completionCopy;
  [privateCloudDatabase saveRecord:recordCopy withOptions:0 completion:v14];
}

- (void)_setupShareForParticipant:(id)participant home:(id)home completion:(id)completion
{
  homeCopy = home;
  completionCopy = completion;
  participantCopy = participant;
  v11 = [MSDHomeCloudShareCreate cloudShareForHome:homeCopy];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001ED68;
  v14[3] = &unk_100051C60;
  v14[4] = self;
  v15 = homeCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = homeCopy;
  [v11 setupShareForHomeParticipant:participantCopy completion:v14];
}

- (BOOL)_shouldPreformRefresh:(id)refresh
{
  refreshCopy = refresh;
  v4 = +[MSDDefaultsManager sharedManager];
  v5 = [v4 objectForDefault:@"lastDataRefresh"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:v7];
  v9 = +[NSDate date];
  v10 = [v8 dateByAddingTimeInterval:MSPrivateDatabaseRefreshIntervalInSecs];
  v11 = [v9 compare:v10];

  if (v11 == -1)
  {
    v13 = +[MSDDefaultsManager sharedManager];
    v14 = [v13 objectForDefault:@"homesRefreshed"];

    v15 = [refreshCopy na_map:&stru_100051C80];
    v16 = v15;
    LOBYTE(v12) = 1;
    if (v14 && v15)
    {
      v17 = [[NSSet alloc] initWithArray:v14];
      v18 = [[NSSet alloc] initWithArray:v16];
      v12 = [v17 isEqualToSet:v18] ^ 1;
    }
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  return v12;
}

- (void)_handleCKShareError:(id)error home:(id)home
{
  errorCopy = error;
  homeCopy = home;
  v7 = sub_100030FE4(homeCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = errorCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Encountered error when trying to share recordZone with owner %@", buf, 0xCu);
  }

  domain = [errorCopy domain];
  if (![domain isEqualToString:HMErrorDomain])
  {
    goto LABEL_15;
  }

  code = [errorCopy code];

  if (code == 8)
  {
    v11 = sub_100030FE4(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "HomeOwner device did not respond in time, hit HomeKit timeout error", buf, 2u);
    }

    uniqueIdentifier = [homeCopy uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    domain = [NSString stringWithFormat:@"%@_%@", @"CKShareErrorRetryCount", uUIDString];

    v14 = +[MSDDefaultsManager sharedManager];
    v15 = [v14 objectForDefault:domain];
    integerValue = [v15 integerValue];

    if (integerValue == MSCKShareTimeoutErrorMaxRetryCount)
    {
      v18 = sub_100030FE4(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Hit max retry count, aborting..", buf, 2u);
      }

      v19 = [MSDBackgroundActivityTask alloc];
      v20 = [(MSDBackgroundActivityTask *)v19 initWithIdentifier:kBackgroundActivityUserShareRetryTaskIdentifier];
      [(MSDBackgroundActivityTask *)v20 invalidate];
    }

    else
    {
      v21 = integerValue + 1;
      v22 = sub_100030FE4(v17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349315;
        v27 = v21;
        v28 = 2113;
        v29 = domain;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Updating value of retry count %{public}lu for %{private}@", buf, 0x16u);
      }

      v23 = +[MSDDefaultsManager sharedManager];
      v24 = [NSNumber numberWithUnsignedInteger:v21];
      [v23 setObject:v24 forDefault:domain];

      v25 = [MSDBackgroundActivityTask alloc];
      v20 = [(MSDBackgroundActivityTask *)v25 initWithIdentifier:kBackgroundActivityUserShareRetryTaskIdentifier];
      [(MSDBackgroundActivityTask *)v20 invalidate];
      [(MSDBackgroundActivityTask *)v20 setAllowBattery:1];
      [(MSDBackgroundActivityTask *)v20 setRepeats:0];
      [(MSDBackgroundActivityTask *)v20 setRequireNetworkConnection:1];
      [(MSDBackgroundActivityTask *)v20 setInterval:MSCKShareTimeoutRetryIntervalInSecs];
      [(MSDBackgroundActivityTask *)v20 setRequireInexpensiveNetworkConnection:1];
      [(MSDBackgroundActivityTask *)v20 setActivityBlock:&stru_100051CC0];
      [(MSDBackgroundActivityTask *)v20 schedule];
    }

LABEL_15:
  }
}

@end