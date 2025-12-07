@interface CloudBookmarkSyncMigrationHierarchyConverter
- (BOOL)convertRecordsForMigration;
- (CloudBookmarkSyncMigrationHierarchyConverter)initWithDatabase:(void *)database databaseAccessor:(id)accessor;
- (id)_cloudKitRecordNameForBookmarkDAVServerSyncId:(id)id;
- (void)_convertItem:(void *)item;
- (void)dealloc;
@end

@implementation CloudBookmarkSyncMigrationHierarchyConverter

- (CloudBookmarkSyncMigrationHierarchyConverter)initWithDatabase:(void *)database databaseAccessor:(id)accessor
{
  accessorCopy = accessor;
  v11.receiver = self;
  v11.super_class = CloudBookmarkSyncMigrationHierarchyConverter;
  v8 = [(CloudBookmarkSyncMigrationHierarchyConverter *)&v11 init];
  if (v8)
  {
    v8->_databaseRef = CFRetain(database);
    objc_storeStrong(&v8->_databaseAccessor, accessor);
    v9 = v8;
  }

  return v8;
}

- (void)dealloc
{
  databaseRef = self->_databaseRef;
  if (databaseRef)
  {
    CFRelease(databaseRef);
  }

  v4.receiver = self;
  v4.super_class = CloudBookmarkSyncMigrationHierarchyConverter;
  [(CloudBookmarkSyncMigrationHierarchyConverter *)&v4 dealloc];
}

- (BOOL)convertRecordsForMigration
{
  v3 = objc_autoreleasePoolPush();
  v5 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Prepare records for migration", &v22, 2u);
  }

  v6 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyLocalIDsInFolderWithLocalID:0 database:[(CloudBookmarkSyncMigrationHierarchyConverter *)self databaseRef]];
  allObjects = [v6 allObjects];
  v8 = [allObjects mutableCopy];

  v9 = [v8 count];
  for (i = 0; v9; v9 = [v8 count])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = [v8 objectAtIndexedSubscript:0];
    [v8 removeObjectAtIndex:0];
    databaseAccessor = [(CloudBookmarkSyncMigrationHierarchyConverter *)self databaseAccessor];
    v15 = [databaseAccessor copyItemWithLocalID:v13 database:{-[CloudBookmarkSyncMigrationHierarchyConverter databaseRef](self, "databaseRef")}];

    if ([(WBSBookmarkDBAccess *)self->_databaseAccessor itemTypeWithItem:v15]== 1)
    {
      v16 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyLocalIDsInFolderWithLocalID:v13 database:[(CloudBookmarkSyncMigrationHierarchyConverter *)self databaseRef]];
      allObjects2 = [v16 allObjects];
      v18 = allObjects2;
      if (allObjects2)
      {
        v19 = allObjects2;
      }

      else
      {
        v19 = &__NSArray0__struct;
      }

      [v8 addObjectsFromArray:v19];
    }

    [(CloudBookmarkSyncMigrationHierarchyConverter *)self _convertItem:v15];
    CFRelease(v15);
    ++i;

    objc_autoreleasePoolPop(v12);
  }

  v20 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v9, v10);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 134217984;
    v23 = i;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Number of records prepared for migration: %ld", &v22, 0xCu);
  }

  [(WBSBookmarkDBAccess *)self->_databaseAccessor saveDatabase:[(CloudBookmarkSyncMigrationHierarchyConverter *)self databaseRef]];

  objc_autoreleasePoolPop(v3);
  return i != 0;
}

- (void)_convertItem:(void *)item
{
  [(WBSBookmarkDBAccess *)self->_databaseAccessor setSyncKey:0 item:item];
  [(WBSBookmarkDBAccess *)self->_databaseAccessor setSyncData:0 item:item];
  if ([(WBSBookmarkDBAccess *)self->_databaseAccessor itemTypeWithItem:item]!= 1 || ([CKRecord safari_recordNameForFolderType:[(WBSBookmarkDBAccess *)self->_databaseAccessor folderTypeWithFolder:item]], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyServerIdWithItem:item];
    v10 = [CKRecord safari_folderTypeForRecordName:v6];
    if (v10)
    {
      v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        databaseAccessor = self->_databaseAccessor;
        v23 = v12;
        v24 = 134218242;
        v25 = [(WBSBookmarkDBAccess *)databaseAccessor itemTypeWithItem:item];
        v26 = 2114;
        v27 = v6;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Record of type %ld has built-in record name %{public}@ despite not being a built-in folder, generating a new record name", &v24, 0x16u);
      }

      v6 = 0;
    }

    if ([v6 length])
    {
      uUIDString = [(CloudBookmarkSyncMigrationHierarchyConverter *)self _cloudKitRecordNameForBookmarkDAVServerSyncId:v6];
      if ([uUIDString length])
      {
        v15 = [(WBSBookmarkDBAccess *)self->_databaseAccessor setServerId:uUIDString item:item];
        v17 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v15, v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v24 = 138543362;
          v25 = uUIDString;
          v18 = "Convert Bookmark DAV record with recordName %{public}@ for migration";
LABEL_17:
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, v18, &v24, 0xCu);
        }
      }

      else
      {
        v17 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v14);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v24 = 138543362;
          v25 = uUIDString;
          v18 = "Already converted record with recordName %{public}@ for migration";
          goto LABEL_17;
        }
      }
    }

    else
    {
      v19 = +[NSUUID UUID];
      uUIDString = [v19 UUIDString];

      v20 = [(WBSBookmarkDBAccess *)self->_databaseAccessor setServerId:uUIDString item:item];
      v17 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v20, v21);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v24 = 138543362;
        v25 = uUIDString;
        v18 = "Convert new local record with created recordName %{public}@ for migration";
        goto LABEL_17;
      }
    }

    goto LABEL_19;
  }

  v6 = v5;
  v7 = [(WBSBookmarkDBAccess *)self->_databaseAccessor setServerId:v5 item:item];
  v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v24 = 138543362;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Convert built-in record with recordName %{public}@ for migration", &v24, 0xCu);
  }

LABEL_19:
}

- (id)_cloudKitRecordNameForBookmarkDAVServerSyncId:(id)id
{
  v3 = [NSURL URLWithString:id];
  v4 = v3;
  if (v3)
  {
    scheme = [v3 scheme];
    v6 = [scheme length];

    if (v6)
    {
      uRLByDeletingPathExtension = [v4 URLByDeletingPathExtension];
      lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];

      if ([lastPathComponent length])
      {
        v6 = [@"DAV-" stringByAppendingString:lastPathComponent];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end