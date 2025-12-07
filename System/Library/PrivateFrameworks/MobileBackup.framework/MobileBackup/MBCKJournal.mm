@interface MBCKJournal
+ (id)journalForDevice:(id)device cache:(id)cache engine:(id)engine;
- (BOOL)_clearSnapshotActionsWithOperationTracker:(id)tracker error:(id *)error;
- (BOOL)_handleMergeAction:(id)action outputSnapshotID:(id)d serverSnapshot:(id)snapshot shouldMergeDeletions:(BOOL)deletions operationTracker:(id)tracker error:(id *)error;
- (BOOL)_handleRemoveDomain:(id)domain domainHmacs:(id)hmacs outputSnapshotID:(id)d serverSnapshot:(id)snapshot operationTracker:(id)tracker error:(id *)error;
- (BOOL)_handleSnapshotAction:(id)action operationTracker:(id)tracker error:(id *)error;
- (BOOL)fetchFromServerWithOperationTracker:(id)tracker error:(id *)error;
- (BOOL)replayJournalResetOrDisableWithOperationTracker:(id)tracker serviceManager:(id)manager disable:(BOOL *)disable error:(id *)error;
- (BOOL)replayWithOperationTracker:(id)tracker actionCount:(unint64_t *)count error:(id *)error;
- (MBCKDevice)device;
- (MBCKEngine)engine;
- (MBCKJournal)initWithDevice:(id)device cache:(id)cache engine:(id)engine;
- (id)_getRecordIDString;
- (id)recordRepresentation;
- (void)refreshWithRecord:(id)record;
@end

@implementation MBCKJournal

+ (id)journalForDevice:(id)device cache:(id)cache engine:(id)engine
{
  engineCopy = engine;
  cacheCopy = cache;
  deviceCopy = device;
  v10 = [[MBCKJournal alloc] initWithDevice:deviceCopy cache:cacheCopy engine:engineCopy];

  return v10;
}

- (MBCKJournal)initWithDevice:(id)device cache:(id)cache engine:(id)engine
{
  deviceCopy = device;
  engineCopy = engine;
  v13.receiver = self;
  v13.super_class = MBCKJournal;
  v10 = [(MBCKModel *)&v13 initWithRecord:0 cache:cache];
  v11 = v10;
  if (v10)
  {
    [(MBCKJournal *)v10 setDevice:deviceCopy];
    [(MBCKJournal *)v11 setEngine:engineCopy];
  }

  return v11;
}

- (id)_getRecordIDString
{
  device = [(MBCKJournal *)self device];
  deviceUUID = [device deviceUUID];

  if (!deviceUUID)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MBCKJournal.m" lineNumber:49 description:@"Journal is missing a device deviceUUID"];
  }

  recordPrefix = [(MBCKJournal *)self recordPrefix];

  v7 = [NSString alloc];
  if (recordPrefix)
  {
    recordPrefix2 = [(MBCKJournal *)self recordPrefix];
    deviceUUID2 = [device deviceUUID];
    v10 = [v7 initWithFormat:@"%@:%@:%@", recordPrefix2, deviceUUID2, @"Journal"];
  }

  else
  {
    recordPrefix2 = [device deviceUUID];
    v10 = [v7 initWithFormat:@"%@:%@", recordPrefix2, @"Journal"];
  }

  return v10;
}

- (void)refreshWithRecord:(id)record
{
  recordCopy = record;
  v5 = [recordCopy objectForKeyedSubscript:@"snapshotActions"];
  snapshotActions = self->_snapshotActions;
  self->_snapshotActions = v5;

  v7 = [recordCopy objectForKeyedSubscript:@"processedSnapshotActions"];
  processedSnapshotActions = self->_processedSnapshotActions;
  self->_processedSnapshotActions = v7;

  v9.receiver = self;
  v9.super_class = MBCKJournal;
  [(MBCKModel *)&v9 refreshWithRecord:recordCopy];
}

- (id)recordRepresentation
{
  v5.receiver = self;
  v5.super_class = MBCKJournal;
  recordRepresentation = [(MBCKModel *)&v5 recordRepresentation];
  [recordRepresentation setObject:self->_snapshotActions forKeyedSubscript:@"snapshotActions"];
  [recordRepresentation setObject:self->_processedSnapshotActions forKeyedSubscript:@"processedSnapshotActions"];

  return recordRepresentation;
}

- (BOOL)_clearSnapshotActionsWithOperationTracker:(id)tracker error:(id *)error
{
  trackerCopy = tracker;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKJournal _clearSnapshotActionsWithOperationTracker:error:]", "MBCKJournal.m", 77, "tracker");
  }

  v7 = trackerCopy;
  if (self->_snapshotActions)
  {
    v8 = [[NSMutableArray alloc] initWithArray:self->_processedSnapshotActions];
    [(NSArray *)v8 addObjectsFromArray:self->_snapshotActions];
    snapshotActions = self->_snapshotActions;
    self->_snapshotActions = 0;

    processedSnapshotActions = self->_processedSnapshotActions;
    self->_processedSnapshotActions = v8;

    v11 = [(MBCKModel *)self saveWithOperationTracker:v7 error:error];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)fetchFromServerWithOperationTracker:(id)tracker error:(id *)error
{
  trackerCopy = tracker;
  v16.receiver = self;
  v16.super_class = MBCKJournal;
  v17 = 0;
  v7 = [(MBCKModel *)&v16 fetchFromServerWithOperationTracker:trackerCopy error:&v17];
  v8 = v17;
  if (v7)
  {
LABEL_2:
    v9 = 1;
    goto LABEL_11;
  }

  if ([MBError isCKNotFoundError:v8])
  {

    v15 = 0;
    v10 = [(MBCKModel *)self saveWithOperationTracker:trackerCopy error:&v15];
    v8 = v15;
    if (v10)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Recreated empty journal record", v14, 2u);
        _MBLog(@"I ", "Recreated empty journal record");
      }

      goto LABEL_2;
    }
  }

  if (error)
  {
    v12 = v8;
    v9 = 0;
    *error = v8;
  }

  else
  {
    v9 = 0;
  }

LABEL_11:

  return v9;
}

- (BOOL)replayJournalResetOrDisableWithOperationTracker:(id)tracker serviceManager:(id)manager disable:(BOOL *)disable error:(id *)error
{
  trackerCopy = tracker;
  managerCopy = manager;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKJournal replayJournalResetOrDisableWithOperationTracker:serviceManager:disable:error:]", "MBCKJournal.m", 105, "tracker");
  }

  v12 = managerCopy;
  if (!managerCopy)
  {
    __assert_rtn("[MBCKJournal replayJournalResetOrDisableWithOperationTracker:serviceManager:disable:error:]", "MBCKJournal.m", 106, "serviceManager");
  }

  if (!disable)
  {
    __assert_rtn("[MBCKJournal replayJournalResetOrDisableWithOperationTracker:serviceManager:disable:error:]", "MBCKJournal.m", 107, "disable");
  }

  account = [trackerCopy account];
  if (!account)
  {
    __assert_rtn("[MBCKJournal replayJournalResetOrDisableWithOperationTracker:serviceManager:disable:error:]", "MBCKJournal.m", 109, "serviceAccount");
  }

  v14 = account;
  if (![(MBCKJournal *)self fetchFromServerWithOperationTracker:trackerCopy error:error])
  {
    v28 = 0;
    goto LABEL_48;
  }

  v47 = v14;
  v15 = self->_snapshotActions;
  v48 = v12;
  if (MBIsInternalInstall())
  {
    v16 = +[MBBehaviorOptions sharedOptions];
    forceCacheReset = [v16 forceCacheReset];

    if (forceCacheReset)
    {
      if (v15)
      {
        v18 = v15;
      }

      else
      {
        v18 = &__NSArray0__struct;
      }

      v15 = [(NSArray *)v18 arrayByAddingObject:@"reset"];
    }
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v15;
  v19 = [(NSArray *)obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (!v19)
  {
    v28 = 0;
    goto LABEL_47;
  }

  v20 = v19;
  selfCopy = self;
  errorCopy = error;
  v46 = trackerCopy;
  v21 = *v53;
  while (2)
  {
    for (i = 0; i != v20; i = i + 1)
    {
      if (*v53 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v23 = [[NSString alloc] initWithString:*(*(&v52 + 1) + 8 * i)];
      v24 = [v23 stringByReplacingOccurrencesOfString:@"S:" withString:&stru_1003C3430];

      v25 = [v24 stringByReplacingOccurrencesOfString:@":" withString:@"|"];

      v26 = [v25 componentsSeparatedByString:@"|"];
      firstObject = [v26 firstObject];
      if ([firstObject containsString:@"reset"])
      {
        v29 = MBGetDefaultLog();
        trackerCopy = v46;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Replaying journal - journal contains server reset", buf, 2u);
          _MBLog(@"I ", "Replaying journal - journal contains server reset");
        }

        engine = [(MBCKJournal *)selfCopy engine];
        backupPolicy = [engine backupPolicy];

        if (backupPolicy == 1)
        {
          [v48 clearPrebuddyWithAccount:v47 accountSignOut:0];
        }

        v32 = [v48 resetCacheWithAccount:v47 error:errorCopy];
        v51 = 0;
        v33 = [v48 openCacheWithAccount:v47 accessType:1 error:&v51];
        v34 = v51;
        [(MBCKModel *)selfCopy setCache:v33];
        device = [(MBCKJournal *)selfCopy device];
        [device setCache:v33];

        if (v32 && [(MBCKJournal *)selfCopy _clearSnapshotActionsWithOperationTracker:v46 error:errorCopy])
        {
          goto LABEL_46;
        }

        v36 = MBGetDefaultLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          if (errorCopy)
          {
            v37 = *errorCopy;
            *buf = 138412290;
            v57 = v37;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Replaying journal - unable to complete reset: %@", buf, 0xCu);
            v38 = *errorCopy;
          }

          else
          {
            *buf = 138412290;
            v38 = @"unknown error";
            v57 = @"unknown error";
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Replaying journal - unable to complete reset: %@", buf, 0xCu);
          }

          _MBLog(@"I ", "Replaying journal - unable to complete reset: %@", v38);
        }

        goto LABEL_45;
      }

      if ([firstObject containsString:@"disable"])
      {
        v39 = MBGetDefaultLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Replaying journal - journal contains server disable", buf, 2u);
          _MBLog(@"I ", "Replaying journal - journal contains server disable");
        }

        v40 = [v48 resetCacheWithAccount:v47 error:errorCopy];
        v50 = 0;
        v33 = [v48 openCacheWithAccount:v47 accessType:1 error:&v50];
        v34 = v50;
        [(MBCKModel *)selfCopy setCache:v33];
        trackerCopy = v46;
        if (v40 && [(MBCKJournal *)selfCopy _clearSnapshotActionsWithOperationTracker:v46 error:errorCopy])
        {
          *disable = 1;
LABEL_46:

          v28 = 1;
          goto LABEL_47;
        }

        v36 = MBGetDefaultLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          if (errorCopy)
          {
            v41 = *errorCopy;
            *buf = 138412290;
            v57 = v41;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Replaying journal - unable to complete disable: %@", buf, 0xCu);
            v42 = *errorCopy;
          }

          else
          {
            *buf = 138412290;
            v42 = @"unknown error";
            v57 = @"unknown error";
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Replaying journal - unable to complete disable: %@", buf, 0xCu);
          }

          _MBLog(@"I ", "Replaying journal - unable to complete disable: %@", v42);
        }

LABEL_45:

        goto LABEL_46;
      }
    }

    v20 = [(NSArray *)obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    v28 = 0;
    trackerCopy = v46;
    if (v20)
    {
      continue;
    }

    break;
  }

LABEL_47:

  v14 = v47;
  v12 = v48;
LABEL_48:

  return v28;
}

- (BOOL)replayWithOperationTracker:(id)tracker actionCount:(unint64_t *)count error:(id *)error
{
  trackerCopy = tracker;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKJournal replayWithOperationTracker:actionCount:error:]", "MBCKJournal.m", 169, "tracker");
  }

  v9 = trackerCopy;
  device = [(MBCKJournal *)self device];
  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    recordIDString = [device recordIDString];
    *buf = 138543362;
    v76 = recordIDString;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Replaying journal for device: %{public}@", buf, 0xCu);

    recordIDString2 = [device recordIDString];
    _MBLog(@"Df", "Replaying journal for device: %{public}@", recordIDString2);
  }

  if (([device hasFetchedSnapshots] & 1) == 0 && !objc_msgSend(device, "fetchSnapshotsWithOperationTracker:error:", v9, error) || !-[MBCKJournal fetchFromServerWithOperationTracker:error:](self, "fetchFromServerWithOperationTracker:error:", v9, error))
  {
    LOBYTE(v22) = 0;
    goto LABEL_62;
  }

  if (MBIsInternalInstall())
  {
    v14 = +[MBBehaviorOptions sharedOptions];
    cancelBackupDuringJournalReplay = [v14 cancelBackupDuringJournalReplay];

    if (cancelBackupDuringJournalReplay)
    {
      engine = [(MBCKJournal *)self engine];
      cancellationError = [objc_opt_class() cancellationError];
      [engine cancelWithError:cancellationError];
    }
  }

  v18 = [(NSArray *)self->_snapshotActions count];
  v19 = MBGetDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    snapshotActions = self->_snapshotActions;
    *buf = 138543362;
    v76 = snapshotActions;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Journal actions: %{public}@", buf, 0xCu);
    _MBLog(@"Df", "Journal actions: %{public}@", self->_snapshotActions);
  }

  if (count)
  {
    *count = v18;
  }

  if (!v18)
  {
    LOBYTE(v22) = 1;
    goto LABEL_62;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = self->_snapshotActions;
  v58 = [(NSArray *)obj countByEnumeratingWithState:&v69 objects:v74 count:16];
  v21 = 0;
  if (!v58)
  {
    LOBYTE(v22) = 1;
    goto LABEL_45;
  }

  v57 = *v70;
  v22 = 1;
  errorCopy = error;
  v54 = v9;
  v52 = device;
LABEL_17:
  v23 = 0;
  while (1)
  {
    if (*v70 != v57)
    {
      objc_enumerationMutation(obj);
    }

    v59 = *(*(&v69 + 1) + 8 * v23);
    v24 = objc_alloc_init(NSMutableDictionary);
    cachedSnapshotsByID = self->_cachedSnapshotsByID;
    self->_cachedSnapshotsByID = v24;

    v26 = objc_alloc_init(NSMutableDictionary);
    snapshotsByID = self->_snapshotsByID;
    self->_snapshotsByID = v26;

    v28 = objc_opt_new();
    cache = [(MBCKModel *)self cache];
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_100087BE0;
    v67[3] = &unk_1003BC450;
    v61 = v28;
    v68 = v61;
    v30 = [cache enumerateSnapshotIDs:v67];

    if (v30)
    {
      if (error)
      {
        v47 = v30;
        *error = v30;
      }

      v48 = MBGetDefaultLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v76 = v30;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Error enumerating snapshot IDs: %@", buf, 0xCu);
        _MBLog(@"E ", "Error enumerating snapshot IDs: %@", v30);
      }

      LOBYTE(v22) = 0;
      goto LABEL_59;
    }

    objc_storeStrong(&self->_cachedSnapshotIDs, v28);
    cache2 = [(MBCKModel *)self cache];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_100087C04;
    v66[3] = &unk_1003BCD40;
    v66[4] = self;
    v32 = [cache2 enumerateSnapshots:v66];

    v60 = v32;
    if (v32)
    {
      if (error)
      {
        v33 = v32;
        *error = v32;
      }

      v34 = MBGetDefaultLog();
      v35 = v61;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v76 = v32;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Error enumerating snapshots: %@", buf, 0xCu);
        _MBLog(@"E ", "Error enumerating snapshots: %@", v32);
      }

      v36 = 1;
    }

    else
    {
      v55 = v22;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      WeakRetained = objc_loadWeakRetained(&self->_device);
      snapshots = [WeakRetained snapshots];

      v39 = [snapshots countByEnumeratingWithState:&v62 objects:v73 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v63;
        do
        {
          for (i = 0; i != v40; i = i + 1)
          {
            if (*v63 != v41)
            {
              objc_enumerationMutation(snapshots);
            }

            v43 = *(*(&v62 + 1) + 8 * i);
            v44 = self->_snapshotsByID;
            snapshotID = [v43 snapshotID];
            [(NSMutableDictionary *)v44 setValue:v43 forKey:snapshotID];
          }

          v40 = [snapshots countByEnumeratingWithState:&v62 objects:v73 count:16];
        }

        while (v40);
      }

      error = errorCopy;
      v9 = v54;
      v46 = [(MBCKJournal *)self _handleSnapshotAction:v59 operationTracker:v54 error:errorCopy];
      v36 = v46 ? 0 : 10;
      v22 = v46 & v55;
      v35 = v61;
    }

    if (v36)
    {
      break;
    }

    v23 = v23 + 1;
    v21 = v60;
    if (v23 == v58)
    {
      device = v52;
      v58 = [(NSArray *)obj countByEnumeratingWithState:&v69 objects:v74 count:16];
      if (v58)
      {
        goto LABEL_17;
      }

LABEL_45:

      v30 = v21;
      if (error)
      {
        goto LABEL_54;
      }

      goto LABEL_61;
    }
  }

  if (v36 != 10)
  {
    LOBYTE(v22) = 0;
    v30 = v60;
LABEL_59:
    device = v52;
    goto LABEL_61;
  }

  v30 = v60;
  device = v52;
  if (!error)
  {
    goto LABEL_61;
  }

LABEL_54:
  if (*error)
  {
    v49 = MBGetDefaultLog();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = *error;
      *buf = 138412290;
      v76 = v50;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Not marking journal action as processed %@", buf, 0xCu);
      _MBLog(@"E ", "Not marking journal action as processed %@", *error);
    }
  }

  else
  {
    [(MBCKJournal *)self _clearSnapshotActionsWithOperationTracker:v9 error:0];
  }

LABEL_61:

LABEL_62:
  return v22 & 1;
}

- (BOOL)_handleMergeAction:(id)action outputSnapshotID:(id)d serverSnapshot:(id)snapshot shouldMergeDeletions:(BOOL)deletions operationTracker:(id)tracker error:(id *)error
{
  actionCopy = action;
  dCopy = d;
  snapshotCopy = snapshot;
  trackerCopy = tracker;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKJournal _handleMergeAction:outputSnapshotID:serverSnapshot:shouldMergeDeletions:operationTracker:error:]", "MBCKJournal.m", 249, "tracker");
  }

  v16 = trackerCopy;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_1000882C4;
  v53 = sub_1000882D4;
  v54 = 0;
  context = objc_autoreleasePoolPush();
  if ([actionCopy count] != 2)
  {
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v19 = v19;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v26 = [actionCopy count];
        *buf = 134218242;
        v56 = v26;
        v57 = 2112;
        v58 = actionCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Client side merge only supports two snapshots. (%lu specified %@)", buf, 0x16u);
      }

      _MBLog(@"E ", "Client side merge only supports two snapshots. (%lu specified %@)", [actionCopy count], actionCopy);
    }

    goto LABEL_15;
  }

  if (!dCopy)
  {
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Merge output snapshotID not specified.", buf, 2u);
      _MBLog(@"E ", "Merge output snapshotID not specified.");
    }

LABEL_15:
    v27 = 0;
    goto LABEL_28;
  }

  cachedSnapshotsByID = self->_cachedSnapshotsByID;
  firstObject = [actionCopy firstObject];
  v19 = [(NSMutableDictionary *)cachedSnapshotsByID valueForKey:firstObject];

  v20 = self->_cachedSnapshotsByID;
  lastObject = [actionCopy lastObject];
  v36 = [(NSMutableDictionary *)v20 valueForKey:lastObject];

  if (v19 && v36)
  {
    device = [(MBCKJournal *)self device];
    [v19 setDevice:device];
    [v36 setDevice:device];
    if (!snapshotCopy)
    {
      v25 = +[MBCKSnapshot snapshotForDevice:reason:type:snapshotFormat:snapshotID:](MBCKSnapshot, "snapshotForDevice:reason:type:snapshotFormat:snapshotID:", device, [v36 backupReason], objc_msgSend(v36, "type"), objc_msgSend(v36, "snapshotFormat"), dCopy);
      created = [v36 created];
      [v25 setCreated:created];

LABEL_22:
      [(MBCKJournal *)self _clearSnapshotActionsWithOperationTracker:v16 error:0];
      cache = [(MBCKModel *)self cache];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1000882DC;
      v40[3] = &unk_1003BCD68;
      v40[4] = self;
      firstObject3 = v25;
      v41 = firstObject3;
      v46 = &v49;
      v42 = v19;
      v43 = v36;
      v44 = dCopy;
      deletionsCopy = deletions;
      v45 = snapshotCopy;
      v34 = [cache performInTransaction:v40];

      v27 = v34 == 0;
      if (v34 && !v50[5])
      {
        objc_storeStrong(v50 + 5, v34);
      }

LABEL_26:
      goto LABEL_27;
    }

    v23 = v50 + 5;
    obj = v50[5];
    v24 = [snapshotCopy fetchManifestsWithOperationTracker:v16 error:&obj];
    objc_storeStrong(v23, obj);
    if (v24)
    {
      v25 = snapshotCopy;
      goto LABEL_22;
    }
  }

  else
  {
    device = MBGetDefaultLog();
    if (os_log_type_enabled(device, OS_LOG_TYPE_ERROR))
    {
      device = device;
      if (os_log_type_enabled(device, OS_LOG_TYPE_ERROR))
      {
        firstObject2 = [actionCopy firstObject];
        lastObject2 = [actionCopy lastObject];
        *buf = 138412546;
        v56 = firstObject2;
        v57 = 2112;
        v58 = lastObject2;
        _os_log_impl(&_mh_execute_header, device, OS_LOG_TYPE_ERROR, "Input snapshots do not exist: %@ %@", buf, 0x16u);
      }

      firstObject3 = [actionCopy firstObject];
      lastObject3 = [actionCopy lastObject];
      _MBLog(@"E ", "Input snapshots do not exist: %@ %@", firstObject3, lastObject3);

      v27 = 0;
      goto LABEL_26;
    }
  }

  v27 = 0;
LABEL_27:

LABEL_28:
  objc_autoreleasePoolPop(context);
  if (error)
  {
    *error = v50[5];
  }

  _Block_object_dispose(&v49, 8);

  return v27;
}

- (BOOL)_handleRemoveDomain:(id)domain domainHmacs:(id)hmacs outputSnapshotID:(id)d serverSnapshot:(id)snapshot operationTracker:(id)tracker error:(id *)error
{
  domainCopy = domain;
  hmacsCopy = hmacs;
  dCopy = d;
  snapshotCopy = snapshot;
  trackerCopy = tracker;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKJournal _handleRemoveDomain:domainHmacs:outputSnapshotID:serverSnapshot:operationTracker:error:]", "MBCKJournal.m", 481, "tracker");
  }

  v18 = trackerCopy;
  if (!domainCopy)
  {
    device = MBGetDefaultLog();
    if (os_log_type_enabled(device, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, device, OS_LOG_TYPE_ERROR, "Input removeDomain snapshot does not exist.", buf, 2u);
      _MBLog(@"E ", "Input removeDomain snapshot does not exist.", hmacsCopy);
    }

    goto LABEL_11;
  }

  if (!dCopy)
  {
    device = MBGetDefaultLog();
    if (os_log_type_enabled(device, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, device, OS_LOG_TYPE_ERROR, "Merge output snapshotID not specified.", buf, 2u);
      _MBLog(@"E ", "Merge output snapshotID not specified.", hmacsCopy);
    }

    goto LABEL_11;
  }

  device = [(MBCKJournal *)self device];
  [domainCopy setDevice:device];
  if (!snapshotCopy)
  {
    v20 = +[MBCKSnapshot snapshotForDevice:reason:type:snapshotFormat:snapshotID:](MBCKSnapshot, "snapshotForDevice:reason:type:snapshotFormat:snapshotID:", device, [domainCopy backupReason], objc_msgSend(domainCopy, "type"), objc_msgSend(domainCopy, "snapshotFormat"), dCopy);
    created = [domainCopy created];
    [v20 setCreated:created];

    goto LABEL_13;
  }

  if (![snapshotCopy fetchManifestsWithOperationTracker:v18 error:{error, hmacsCopy}])
  {
LABEL_11:
    v21 = 0;
    goto LABEL_19;
  }

  v20 = snapshotCopy;
LABEL_13:
  *buf = 0;
  v36 = buf;
  v37 = 0x3032000000;
  v38 = sub_1000882C4;
  v39 = sub_1000882D4;
  v40 = 0;
  [(MBCKJournal *)self _clearSnapshotActionsWithOperationTracker:v18 error:0];
  cache = [(MBCKModel *)self cache];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100089F58;
  v28[3] = &unk_1003BCD90;
  v28[4] = self;
  v24 = v20;
  v29 = v24;
  v30 = hmacsCopy;
  v34 = buf;
  v31 = domainCopy;
  v32 = dCopy;
  v33 = snapshotCopy;
  v25 = [cache performInTransaction:v28];

  v21 = v25 == 0;
  if (v25)
  {
    if (!*(v36 + 5))
    {
      objc_storeStrong(v36 + 5, v25);
    }

    if (error)
    {
      *error = *(v36 + 5);
    }
  }

  _Block_object_dispose(buf, 8);
LABEL_19:

  return v21;
}

- (BOOL)_handleSnapshotAction:(id)action operationTracker:(id)tracker error:(id *)error
{
  trackerCopy = tracker;
  v9 = [action stringByReplacingOccurrencesOfString:@"S:" withString:&stru_1003C3430];
  v10 = [v9 stringByReplacingOccurrencesOfString:@":" withString:@"|"];

  v11 = [v10 componentsSeparatedByString:@"|"];
  firstObject = [v11 firstObject];
  lastObject = [v11 lastObject];
  v14 = [(NSMutableDictionary *)self->_snapshotsByID valueForKey:lastObject];
  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Journal snapshot action: %{public}@", buf, 0xCu);
    _MBLog(@"Df", "Journal snapshot action: %{public}@", v10);
  }

  if (firstObject && lastObject)
  {
    if (v14)
    {
      cachedSnapshotIDs = self->_cachedSnapshotIDs;
      snapshotID = [v14 snapshotID];
      LODWORD(cachedSnapshotIDs) = [(NSSet *)cachedSnapshotIDs containsObject:snapshotID];

      if (cachedSnapshotIDs)
      {
        v18 = MBGetDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          snapshotID2 = [v14 snapshotID];
          *buf = 138543618;
          v31 = snapshotID2;
          v32 = 2114;
          v33 = firstObject;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Output snapshot already exists: %{public}@ skipping %{public}@ request", buf, 0x16u);

          snapshotID3 = [v14 snapshotID];
          _MBLog(@"Df", "Output snapshot already exists: %{public}@ skipping %{public}@ request", snapshotID3, firstObject);
        }

        v21 = 1;
        goto LABEL_16;
      }
    }

    if (([firstObject isEqualToString:@"merge"] & 1) != 0 || objc_msgSend(firstObject, "isEqualToString:", @"mergeBase"))
    {
      v18 = [v11 objectAtIndexedSubscript:1];
      v22 = [v18 componentsSeparatedByString:@", "];
      v21 = -[MBCKJournal _handleMergeAction:outputSnapshotID:serverSnapshot:shouldMergeDeletions:operationTracker:error:](self, "_handleMergeAction:outputSnapshotID:serverSnapshot:shouldMergeDeletions:operationTracker:error:", v22, lastObject, v14, [firstObject isEqualToString:@"merge"], trackerCopy, error);

      goto LABEL_16;
    }

    if ([firstObject isEqualToString:@"removeDomain"])
    {
      v18 = [v11 objectAtIndexedSubscript:1];
      v24 = [v18 componentsSeparatedByString:@", "];
      cachedSnapshotsByID = self->_cachedSnapshotsByID;
      v29 = v24;
      firstObject2 = [v24 firstObject];
      v28 = [(NSMutableDictionary *)cachedSnapshotsByID valueForKey:firstObject2];

      v26 = [v29 subarrayWithRange:{1, objc_msgSend(v29, "count") - 1}];
      v21 = [(MBCKJournal *)self _handleRemoveDomain:v28 domainHmacs:v26 outputSnapshotID:lastObject serverSnapshot:v14 operationTracker:trackerCopy error:error];

      goto LABEL_16;
    }

    if ([firstObject isEqualToString:@"repair"])
    {
      v21 = 0;
      goto LABEL_17;
    }

    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v10;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Unrecognized journal entry: %@", buf, 0xCu);
      _MBLog(@"E ", "Unrecognized journal entry: %@", v10);
    }
  }

  else
  {
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v31 = v10;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "No action or outputSnapshot specified: %{public}@", buf, 0xCu);
      _MBLog(@"E ", "No action or outputSnapshot specified: %{public}@", v10);
    }
  }

  v21 = 0;
LABEL_16:

LABEL_17:
  return v21;
}

- (MBCKDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

- (MBCKEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

@end