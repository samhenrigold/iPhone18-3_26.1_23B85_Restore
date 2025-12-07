@interface CloudBookmarkDatabaseLockArbiter
- (BOOL)isDatabaseOpen;
- (BOOL)lockForClient:(id)client;
- (BOOL)openDatabase;
- (CloudBookmarkDatabaseLockArbiter)initWithDatabaseAccessor:(id)accessor;
- (CloudBookmarkDatabaseLockArbiterDelegate)delegate;
- (int64_t)localMigrationState;
- (void)closeDatabaseAndSave:(BOOL)save;
- (void)databaseRef;
- (void)dealloc;
- (void)setLocalMigrationState:(int64_t)state;
- (void)unlockForClient:(id)client;
@end

@implementation CloudBookmarkDatabaseLockArbiter

- (CloudBookmarkDatabaseLockArbiter)initWithDatabaseAccessor:(id)accessor
{
  accessorCopy = accessor;
  v10.receiver = self;
  v10.super_class = CloudBookmarkDatabaseLockArbiter;
  v6 = [(CloudBookmarkDatabaseLockArbiter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_databaseAccessor, accessor);
    v8 = v7;
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CloudBookmarkDatabaseLockArbiter;
  [(CloudBookmarkDatabaseLockArbiter *)&v2 dealloc];
}

- (BOOL)isDatabaseOpen
{
  v3 = +[NSThread isMainThread];
  if (v3)
  {
    return self->_databaseOpen;
  }

  else
  {
    v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10008D90C();
    }

    return 0;
  }
}

- (void)databaseRef
{
  v3 = +[NSThread isMainThread];
  if (v3)
  {
    return self->_databaseRef;
  }

  v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v3, v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10008D940();
  }

  return 0;
}

- (BOOL)lockForClient:(id)client
{
  clientCopy = client;
  v5 = +[NSThread isMainThread];
  v6 = v5;
  v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v5, v7);
  v9 = v8;
  if ((v6 & 1) == 0)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10008D974();
    }

    goto LABEL_9;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    sub_10008D9A8(clientCopy, v9);
  }

  databaseLockCount = self->_databaseLockCount;
  self->_databaseLockCount = databaseLockCount + 1;
  if (databaseLockCount)
  {
    v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v10, v11);
    v14 = 1;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v23 = 138543362;
      v24 = clientCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}@ backing store was already locked", &v23, 0xCu);
    }

    goto LABEL_10;
  }

  createDatabase = [(WBSBookmarkDBAccess *)self->_databaseAccessor createDatabase];
  self->_databaseRef = createDatabase;
  if (!createDatabase)
  {
    self->_databaseLockCount = 0;
    v22 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v17);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10008DA20();
    }

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v18 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(createDatabase, v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v23 = 138543362;
    v24 = clientCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%{public}@ successfully locked backing store", &v23, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    v21 = objc_loadWeakRetained(&self->_delegate);
    [v21 databaseLockArbiterDidAcquireDatabaseLock:self];
  }

  v14 = 1;
LABEL_10:

  return v14;
}

- (void)unlockForClient:(id)client
{
  clientCopy = client;
  v5 = +[NSThread isMainThread];
  if (v5)
  {
    databaseLockCount = self->_databaseLockCount;
    if (databaseLockCount)
    {
      v8 = databaseLockCount - 1;
      self->_databaseLockCount = v8;
      if (v8)
      {
        v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v5, v6);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v16 = 138543362;
          v17 = clientCopy;
          v10 = "%{public}@ did not unlock backing store due to outstanding lock requests";
LABEL_15:
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v10, &v16, 0xCu);
        }
      }

      else
      {
        if (self->_databaseOpen)
        {
          v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v5, v6);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_10008DAC8();
          }
        }

        CFRelease(self->_databaseRef);
        self->_databaseRef = 0;
        v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v14, v15);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v16 = 138543362;
          v17 = clientCopy;
          v10 = "%{public}@ unlocked backing store";
          goto LABEL_15;
        }
      }
    }

    else
    {
      v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v5, v6);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10008DB3C();
      }
    }
  }

  else
  {
    v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v5, v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10008DA94();
    }
  }
}

- (int64_t)localMigrationState
{
  v3 = +[NSThread isMainThread];
  v4 = v3;
  v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v3, v5);
  v7 = v6;
  if ((v4 & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10008DB70();
    }

    return -1;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = self->_databaseLockCount != 0;
    databaseOpen = self->_databaseOpen;
    v15 = 67109376;
    LODWORD(v16[0]) = v8;
    WORD2(v16[0]) = 1024;
    *(v16 + 6) = databaseOpen;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Fetching local migration state from database (isDatabaseLocked: %d, isDatabaseOpen: %d)", &v15, 0xEu);
  }

  if (![(CloudBookmarkDatabaseLockArbiter *)self lockForClient:@"Migration state lock arbiter property"])
  {
    return -1;
  }

  if (!self->_databaseOpen)
  {
    [(WBSBookmarkDBAccess *)self->_databaseAccessor openDatabase:self->_databaseRef];
  }

  v10 = [(WBSBookmarkDBAccess *)self->_databaseAccessor localCloudKitMigrationState:self->_databaseRef];
  if (!self->_databaseOpen)
  {
    [(WBSBookmarkDBAccess *)self->_databaseAccessor closeDatabase:self->_databaseRef shouldSave:0];
  }

  v11 = [(CloudBookmarkDatabaseLockArbiter *)self unlockForClient:@"Migration state lock arbiter property"];
  v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = 134217984;
    v16[0] = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Fetched local migration state %ld from database", &v15, 0xCu);
  }

  return v10;
}

- (void)setLocalMigrationState:(int64_t)state
{
  v5 = +[NSThread isMainThread];
  v6 = v5;
  v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v5, v7);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = self->_databaseLockCount != 0;
      databaseOpen = self->_databaseOpen;
      v12 = 134218496;
      stateCopy = state;
      v14 = 1024;
      v15 = v10;
      v16 = 1024;
      v17 = databaseOpen;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Setting local migration state in database to %ld (isDatabaseLocked: %d, isDatabaseOpen: %d)", &v12, 0x18u);
    }

    if (self->_databaseOpen)
    {
      sub_100032958(self->_databaseRef, state, self->_databaseAccessor);
    }

    else if ([(CloudBookmarkDatabaseLockArbiter *)self lockForClient:@"Migration state lock arbiter property"])
    {
      [(WBSBookmarkDBAccess *)self->_databaseAccessor openDatabase:self->_databaseRef];
      sub_100032958(self->_databaseRef, state, self->_databaseAccessor);
      [(WBSBookmarkDBAccess *)self->_databaseAccessor closeDatabase:self->_databaseRef shouldSave:1];
      [(CloudBookmarkDatabaseLockArbiter *)self unlockForClient:@"Migration state lock arbiter property"];
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10008DBA4();
  }
}

- (BOOL)openDatabase
{
  v3 = +[NSThread isMainThread];
  if ((v3 & 1) == 0)
  {
    v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v3, v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10008DBD8();
    }

    return 0;
  }

  if (!self->_databaseLockCount)
  {
    v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v3, v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10008DC40();
    }

    return 0;
  }

  databaseOpen = self->_databaseOpen;
  v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v3, v4);
  v7 = v6;
  if (databaseOpen)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10008DC0C();
    }

    return 0;
  }

  v10 = 1;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Will open the database", v12, 2u);
  }

  self->_databaseOpen = 1;
  [(WBSBookmarkDBAccess *)self->_databaseAccessor openDatabase:self->_databaseRef];
  return v10;
}

- (void)closeDatabaseAndSave:(BOOL)save
{
  saveCopy = save;
  v5 = +[NSThread isMainThread];
  if (v5)
  {
    if (self->_databaseLockCount)
    {
      if (self->_databaseOpen)
      {
        v7 = [(WBSBookmarkDBAccess *)self->_databaseAccessor closeDatabase:self->_databaseRef shouldSave:saveCopy];
        self->_databaseOpen = 0;
        v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v7, v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v13[0] = 67109120;
          v13[1] = saveCopy;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Did close database, did save %d", v13, 8u);
        }
      }

      else
      {
        v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v5, v6);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10008DCA8();
        }
      }
    }

    else
    {
      v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v5, v6);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10008DD20();
      }
    }
  }

  else
  {
    v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v5, v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10008DC74();
    }
  }
}

- (CloudBookmarkDatabaseLockArbiterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end