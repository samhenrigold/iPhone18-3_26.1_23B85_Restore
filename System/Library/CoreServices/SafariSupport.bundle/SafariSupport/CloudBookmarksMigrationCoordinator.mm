@interface CloudBookmarksMigrationCoordinator
- (BOOL)_hasValidDeviceIdentifier;
- (CloudBookmarksMigrationCoordinator)initWithBookmarkStore:(id)store databaseAccessor:(id)accessor syncMigrationCoordinator:(id)coordinator;
- (void)_attemptLocalMigrationBeforeTryingToBecomeResponsibleForMigrationInOperationGroup:(id)group externalCompletionHandler:(id)handler;
- (void)_becameResponsibleForMigrationInOperationGroup:(id)group externalCompletionHandler:(id)handler;
- (void)_determineCourseOfActionFromLocalStateInOperationGroup:(id)group externalCompletionHandler:(id)handler;
- (void)_handleFailureToBecomeResponsibleForMigrationDueToConflictInOperationGroup:(id)group externalCompletionHandler:(id)handler;
- (void)_performMigrationAsPrimaryDevice:(BOOL)device inOperationGroup:(id)group externalCompletionHandler:(id)handler;
- (void)_resetToIdleAfterMigrationFailureInOperationGroup:(id)group externalCompletionHandler:(id)handler;
- (void)_scheduleMigrationRetryIfNeededInOperationGroup:(id)group externalCompletionHandler:(id)handler;
- (void)_transitionToMigrationState:(int64_t)state;
- (void)_tryToBecomeResponsibleForMigrationInOperationGroup:(id)group externalCompletionHandler:(id)handler;
- (void)_tryToBecomeResponsibleForMigrationWithRetryManager:(id)manager inOperationGroup:(id)group externalCompletionHandler:(id)handler;
- (void)_tryToResumePendingRemoteMigrationFromMigrationInfo:(id)info inOperationGroup:(id)group externalCompletionHandler:(id)handler;
- (void)invalidateCachedDataclassEnabledness;
- (void)startCoordinatingMigrationInOperationGroup:(id)group completionHandler:(id)handler;
@end

@implementation CloudBookmarksMigrationCoordinator

- (CloudBookmarksMigrationCoordinator)initWithBookmarkStore:(id)store databaseAccessor:(id)accessor syncMigrationCoordinator:(id)coordinator
{
  storeCopy = store;
  accessorCopy = accessor;
  coordinatorCopy = coordinator;
  v16.receiver = self;
  v16.super_class = CloudBookmarksMigrationCoordinator;
  v12 = [(CloudBookmarksMigrationCoordinator *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bookmarkStore, store);
    objc_storeStrong(&v13->_databaseAccessor, accessor);
    objc_storeStrong(&v13->_syncMigrationCoordinator, coordinator);
    v14 = v13;
  }

  return v13;
}

- (void)startCoordinatingMigrationInOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v6 = groupCopy;
  v7 = handlerCopy;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

- (void)invalidateCachedDataclassEnabledness
{
  accountPropertiesStore = [(CloudBookmarkSyncMigrationCoordinator *)self->_syncMigrationCoordinator accountPropertiesStore];
  [accountPropertiesStore setNeedsDataclassEnabledCheck];
}

- (BOOL)_hasValidDeviceIdentifier
{
  v2 = sub_1000328C4(self->_databaseAccessor);
  v3 = [v2 length] != 0;

  return v3;
}

- (void)_determineCourseOfActionFromLocalStateInOperationGroup:(id)group externalCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  _hasValidDeviceIdentifier = [(CloudBookmarksMigrationCoordinator *)self _hasValidDeviceIdentifier];
  if (_hasValidDeviceIdentifier)
  {
    migrationState = [(CloudBookmarksMigrationCoordinator *)self migrationState];
    if (migrationState <= 0)
    {
      if (migrationState != -1)
      {
        if (migrationState)
        {
          goto LABEL_23;
        }

LABEL_14:
        v14 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(migrationState, v11);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Will attempt secondary migration", v18, 2u);
        }

        [(CloudBookmarksMigrationCoordinator *)self _attemptLocalMigrationBeforeTryingToBecomeResponsibleForMigrationInOperationGroup:groupCopy externalCompletionHandler:handlerCopy];
        goto LABEL_23;
      }

      v16 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(-1, v11);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10004B67C();
      }

      [(CloudBookmarksMigrationCoordinator *)self _scheduleMigrationRetryIfNeededInOperationGroup:groupCopy externalCompletionHandler:handlerCopy];
    }

    else
    {
      if (migrationState != 1)
      {
        if (migrationState != 2)
        {
          if (migrationState == 3)
          {
            v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(3, v11);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Not migrating because we've already migrated", buf, 2u);
            }

            handlerCopy[2](handlerCopy, 1);
          }

          goto LABEL_23;
        }

        goto LABEL_14;
      }

      v15 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(1, v11);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17[0] = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Will attempt primary migration", v17, 2u);
      }

      [(CloudBookmarksMigrationCoordinator *)self _tryToBecomeResponsibleForMigrationInOperationGroup:groupCopy externalCompletionHandler:handlerCopy];
    }
  }

  else
  {
    v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(_hasValidDeviceIdentifier, v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10004B648();
    }

    handlerCopy[2](handlerCopy, 0);
  }

LABEL_23:
}

- (void)_attemptLocalMigrationBeforeTryingToBecomeResponsibleForMigrationInOperationGroup:(id)group externalCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(handlerCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Determining eligibility for local-only migration", buf, 2u);
  }

  _hasValidDeviceIdentifier = [(CloudBookmarksMigrationCoordinator *)self _hasValidDeviceIdentifier];
  if ((_hasValidDeviceIdentifier & 1) == 0)
  {
    v17 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(_hasValidDeviceIdentifier, v11);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10004B6B0();
    }

    goto LABEL_10;
  }

  accountPropertiesStore = [(CloudBookmarkSyncMigrationCoordinator *)self->_syncMigrationCoordinator accountPropertiesStore];
  isDataclassEnabled = [accountPropertiesStore isDataclassEnabled];

  if ((isDataclassEnabled & 1) == 0)
  {
    v18 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v14, v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Bailing out from secondary migration without fetching remote migration info because Safari sync is disabled", buf, 2u);
    }

LABEL_10:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_11;
  }

  objc_initWeak(buf, self);
  bookmarkStore = self->_bookmarkStore;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000499F0;
  v19[3] = &unk_100133730;
  objc_copyWeak(&v22, buf);
  v21 = handlerCopy;
  v20 = groupCopy;
  [(CloudBookmarkStore *)bookmarkStore fetchRemoteMigrationInfoInOperationGroup:v20 withCompletionHandler:v19];

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
LABEL_11:
}

- (void)_tryToBecomeResponsibleForMigrationInOperationGroup:(id)group externalCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(handlerCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Attempting to become responsible for migration by pushing state to the server", v16, 2u);
  }

  _hasValidDeviceIdentifier = [(CloudBookmarksMigrationCoordinator *)self _hasValidDeviceIdentifier];
  if (_hasValidDeviceIdentifier)
  {
    v12 = [WBSCloudKitOperationRetryManager alloc];
    v14 = [v12 initWithLog:{-[CloudTabGroupSyncCoordinator _bookmarksLog]_0(v12, v13)}];
    [v14 setTimeout:30.0];
    [(CloudBookmarksMigrationCoordinator *)self _tryToBecomeResponsibleForMigrationWithRetryManager:v14 inOperationGroup:groupCopy externalCompletionHandler:handlerCopy];
  }

  else
  {
    v15 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(_hasValidDeviceIdentifier, v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10004B7B0();
    }

    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)_tryToBecomeResponsibleForMigrationWithRetryManager:(id)manager inOperationGroup:(id)group externalCompletionHandler:(id)handler
{
  managerCopy = manager;
  groupCopy = group;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  bookmarkStore = self->_bookmarkStore;
  v12 = sub_1000328C4(self->_databaseAccessor);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100049F9C;
  v16[3] = &unk_100133758;
  objc_copyWeak(&v20, &location);
  v13 = handlerCopy;
  v19 = v13;
  v14 = groupCopy;
  v17 = v14;
  v15 = managerCopy;
  v18 = v15;
  [(CloudBookmarkStore *)bookmarkStore setRemoteMigrationState:1 deviceIdentifier:v12 inOperationGroup:v14 completionHandler:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)_becameResponsibleForMigrationInOperationGroup:(id)group externalCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(handlerCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Pushed migration state successfully; assuming we are now responsible for migration", buf, 2u);
  }

  accountPropertiesStore = [(CloudBookmarkSyncMigrationCoordinator *)self->_syncMigrationCoordinator accountPropertiesStore];
  isDataclassEnabled = [accountPropertiesStore isDataclassEnabled];

  if (isDataclassEnabled)
  {
    v14 = self->_syncMigrationCoordinator;
    databaseCoordinator = [(CloudBookmarkSyncMigrationCoordinator *)v14 databaseCoordinator];
    v16 = [databaseCoordinator lockForClient:@"Migration coordinator"];

    if (v16)
    {
      v22 = _NSConcreteStackBlock;
      v23 = 3221225472;
      v24 = sub_10004A5AC;
      v25 = &unk_100132030;
      v26 = v14;
      v27 = handlerCopy;
      v19 = objc_retainBlock(&v22);
      [(CloudBookmarksMigrationCoordinator *)self _performMigrationAsPrimaryDevice:1 inOperationGroup:groupCopy externalCompletionHandler:v19, v22, v23, v24, v25];
    }

    else
    {
      v21 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v17, v18);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10004B9C0();
      }

      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }

  else
  {
    v20 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v12, v13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Bailing out from primary migration because Safari sync is disabled", buf, 2u);
    }

    [(CloudBookmarksMigrationCoordinator *)self _transitionToMigrationState:0];
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)_handleFailureToBecomeResponsibleForMigrationDueToConflictInOperationGroup:(id)group externalCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(handlerCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10004B9F4();
  }

  migrationState = [(CloudBookmarksMigrationCoordinator *)self migrationState];
  if (migrationState > 0)
  {
    if (migrationState == 1)
    {
      [(CloudBookmarksMigrationCoordinator *)self _handlePreemptionInOperationGroup:groupCopy externalCompletionHandler:handlerCopy];
      goto LABEL_13;
    }

    if (migrationState == 2)
    {
      [(CloudBookmarksMigrationCoordinator *)self _resetToIdleAfterMigrationFailureInOperationGroup:groupCopy externalCompletionHandler:handlerCopy];
      goto LABEL_13;
    }

    if (migrationState != 3)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (migrationState == -1 || !migrationState)
  {
LABEL_10:
    handlerCopy[2](handlerCopy, 0);
  }

LABEL_13:
}

- (void)_tryToResumePendingRemoteMigrationFromMigrationInfo:(id)info inOperationGroup:(id)group externalCompletionHandler:(id)handler
{
  infoCopy = info;
  groupCopy = group;
  handlerCopy = handler;
  _hasValidDeviceIdentifier = [(CloudBookmarksMigrationCoordinator *)self _hasValidDeviceIdentifier];
  if (_hasValidDeviceIdentifier)
  {
    migratorDeviceIdentifier = [infoCopy migratorDeviceIdentifier];
    if (!migratorDeviceIdentifier)
    {
      v15 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10004BA5C();
      }
    }

    v16 = sub_1000328C4(self->_databaseAccessor);
    v17 = [migratorDeviceIdentifier isEqualToString:v16];

    if (v17)
    {
      v20 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Migration record indicates that we are the migrating device; attempting to resume migration", buf, 2u);
      }

      [(CloudBookmarksMigrationCoordinator *)self _tryToBecomeResponsibleForMigrationInOperationGroup:groupCopy externalCompletionHandler:handlerCopy];
      goto LABEL_26;
    }

    serverModificationDate = [infoCopy serverModificationDate];
    if (serverModificationDate)
    {
      v24 = +[NSUserDefaults safari_cloudBookmarksDefaults];
      [v24 doubleForKey:@"CloudBookmarksDebugDelayInSecondsBeforeStealingRightToMigrate"];
      v26 = v25;

      v27 = +[NSDate date];
      v28 = v27;
      v29 = -v26;
      if (v26 == 0.0)
      {
        v29 = -604800.0;
      }

      v30 = [v27 dateByAddingTimeInterval:v29];

      v31 = [serverModificationDate compare:v30];
      v34 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v32, v33);
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
      if (v31 == -1)
      {
        if (v35)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Deleting existing record zone in preparation for stealing right to migrate", buf, 2u);
        }

        bookmarkStore = self->_bookmarkStore;
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_10004AAA8;
        v40[3] = &unk_100130E78;
        v42 = handlerCopy;
        v40[4] = self;
        v41 = groupCopy;
        [(CloudBookmarkStore *)bookmarkStore deleteBookmarksZoneInOperationGroup:v41 completionHandler:v40];

        goto LABEL_25;
      }

      if (v35)
      {
        *buf = 0;
        v36 = "Not stealing right to migrate since migration state was updated recently by another device";
        v37 = v34;
LABEL_20:
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, v36, buf, 2u);
      }
    }

    else
    {
      v38 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v22);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v36 = "Not stealing right to migrate since no last modification date was stored in the migration record";
        v37 = v38;
        goto LABEL_20;
      }
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v21 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(_hasValidDeviceIdentifier, v12);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_10004BA28();
  }

  (*(handlerCopy + 2))(handlerCopy, 0);
LABEL_27:
}

- (void)_resetToIdleAfterMigrationFailureInOperationGroup:(id)group externalCompletionHandler:(id)handler
{
  handlerCopy = handler;
  groupCopy = group;
  [(CloudBookmarksMigrationCoordinator *)self _transitionToMigrationState:0];
  [(CloudBookmarksMigrationCoordinator *)self _scheduleMigrationRetryIfNeededInOperationGroup:groupCopy externalCompletionHandler:handlerCopy];
}

- (void)_scheduleMigrationRetryIfNeededInOperationGroup:(id)group externalCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v8 = self->_numberOfRetryAttempts + 1;
  self->_numberOfRetryAttempts = v8;
  _maximumNumberOfRetryAttempts = [(CloudBookmarksMigrationCoordinator *)self _maximumNumberOfRetryAttempts];
  v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(_maximumNumberOfRetryAttempts, v10);
  v12 = v11;
  if (v8 <= _maximumNumberOfRetryAttempts)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Scheduling migration retry", buf, 2u);
    }

    objc_initWeak(buf, self);
    [(CloudBookmarksMigrationCoordinator *)self _delayBetweenRetryAttempts];
    v14 = dispatch_time(0, (v13 * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004AE50;
    block[3] = &unk_100133780;
    objc_copyWeak(&v18, buf);
    v16 = groupCopy;
    v17 = handlerCopy;
    dispatch_after(v14, &_dispatch_main_q, block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10004BB28();
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)_performMigrationAsPrimaryDevice:(BOOL)device inOperationGroup:(id)group externalCompletionHandler:(id)handler
{
  deviceCopy = device;
  groupCopy = group;
  handlerCopy = handler;
  v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(handlerCopy, v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (deviceCopy)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting PRIMARY migration", buf, 2u);
    }

    [(CloudBookmarkStore *)self->_bookmarkStore setIncludesMigrationRecordInSaveBatch:1];
  }

  else if (v12)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting SECONDARY migration", buf, 2u);
  }

  syncMigrationCoordinator = self->_syncMigrationCoordinator;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10004B044;
  v20[3] = &unk_100131D10;
  v20[4] = self;
  v21 = deviceCopy;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10004B060;
  v16[3] = &unk_100133820;
  v19 = deviceCopy;
  v16[4] = self;
  v17 = groupCopy;
  v18 = handlerCopy;
  v14 = handlerCopy;
  v15 = groupCopy;
  [(CloudBookmarkSyncMigrationCoordinator *)syncMigrationCoordinator beginMigratingAsPrimaryMigrator:deviceCopy inOperationGroup:v15 willBeginMigrationHandler:v20 withCompletionHandler:v16];
}

- (void)_transitionToMigrationState:(int64_t)state
{
  migrationState = [(CloudBookmarksMigrationCoordinator *)self migrationState];
  if (migrationState != state)
  {
    v7 = migrationState;
    v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(migrationState, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 134218240;
      v10 = v7;
      v11 = 2048;
      stateCopy = state;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Migration coordinator transitioning from state %zd to state %zd", &v9, 0x16u);
    }

    [(CloudBookmarksMigrationCoordinator *)self setMigrationState:state];
  }
}

@end