@interface CloudBookmarkDebugHierarchyChecker
- (BOOL)_verifyHierarchyIntegrityInDatabase:(void *)database;
- (BOOL)_verifySyncDataForItem:(void *)item recordName:(id)name expectingSyncData:(BOOL)data expectingCloudKitData:(BOOL)kitData;
- (BOOL)performHierarchyCheck;
- (CloudBookmarkDebugHierarchyChecker)initWithDatabaseAccessor:(id)accessor;
- (int64_t)_serverSyncIDTypeForServerSyncID:(id)d;
@end

@implementation CloudBookmarkDebugHierarchyChecker

- (CloudBookmarkDebugHierarchyChecker)initWithDatabaseAccessor:(id)accessor
{
  accessorCopy = accessor;
  v10.receiver = self;
  v10.super_class = CloudBookmarkDebugHierarchyChecker;
  v6 = [(CloudBookmarkDebugHierarchyChecker *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_databaseAccessor, accessor);
    v8 = v7;
  }

  return v7;
}

- (BOOL)performHierarchyCheck
{
  createDatabaseWithoutLock = [(WBSBookmarkDBAccess *)self->_databaseAccessor createDatabaseWithoutLock];
  [(WBSBookmarkDBAccess *)self->_databaseAccessor openDatabase:createDatabaseWithoutLock];
  v4 = [(CloudBookmarkDebugHierarchyChecker *)self _verifyHierarchyIntegrityInDatabase:createDatabaseWithoutLock];
  if (v4)
  {
    [(WBSBookmarkDBAccess *)self->_databaseAccessor saveBackupOfDatabase:createDatabaseWithoutLock withName:@"Bookmarks-Backup-for-31802262"];
  }

  [(WBSBookmarkDBAccess *)self->_databaseAccessor closeDatabase:createDatabaseWithoutLock shouldSave:0];
  CFRelease(createDatabaseWithoutLock);
  return v4;
}

- (int64_t)_serverSyncIDTypeForServerSyncID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    if ([dCopy hasPrefix:@"http"])
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_verifyHierarchyIntegrityInDatabase:(void *)database
{
  selfCopy = self;
  v5 = [(WBSBookmarkDBAccess *)self->_databaseAccessor localCloudKitMigrationState:?];
  v45 = v5 - 1;
  v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134218752;
    v60 = v5;
    v61 = 1024;
    *v62 = v5 == 0;
    *&v62[4] = 1024;
    *&v62[6] = v45 < 2;
    LOWORD(v63) = 1024;
    *(&v63 + 2) = v5 == 3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Migration state: %ld, expect DAV IDs: %d, expect CloudKit IDs for all records: %d, expect parsable sync data: %d", buf, 0x1Eu);
  }

  v8 = [(WBSBookmarkDBAccess *)selfCopy->_databaseAccessor copyLocalIDsInFolderWithLocalID:0 database:database];
  allObjects = [v8 allObjects];
  v10 = [allObjects mutableCopy];

  firstObject = [v10 firstObject];
  if (firstObject)
  {
    v13 = firstObject;
    v14 = 1;
    *&v12 = 138543362;
    v44 = v12;
    p_isa = &selfCopy->super.isa;
    while (1)
    {
      [v10 removeObjectAtIndex:{0, v44}];
      v15 = [(WBSBookmarkDBAccess *)selfCopy->_databaseAccessor copyItemWithLocalID:v13 database:database];
      v16 = objc_alloc_init(WBSScopeExitHandler);
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_10002D0A4;
      v58[3] = &unk_1001321B8;
      v58[4] = v15;
      v48 = v16;
      [v16 setHandler:v58];
      v49 = [(WBSBookmarkDBAccess *)selfCopy->_databaseAccessor copyServerIdWithItem:v15];
      v17 = [(WBSBookmarkDBAccess *)selfCopy->_databaseAccessor itemTypeWithItem:v15];
      databaseAccessor = selfCopy->_databaseAccessor;
      if (v17 == 1)
      {
        v47 = [(WBSBookmarkDBAccess *)databaseAccessor folderTypeWithFolder:v15];
        v19 = [(WBSBookmarkDBAccess *)selfCopy->_databaseAccessor copyLocalIDsInFolderWithLocalID:v13 database:database];
        [v19 allObjects];
        v20 = v5;
        v22 = v21 = database;
        [v10 addObjectsFromArray:v22];

        database = v21;
        v5 = v20;
      }

      else
      {
        v23 = [(WBSBookmarkDBAccess *)databaseAccessor bookmarkTypeWithBookmark:v15];
        v47 = v23;
      }

      v25 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v23, v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138544130;
        v60 = v13;
        v61 = 2114;
        *v62 = v49;
        *&v62[8] = 2048;
        v63 = v17;
        v64 = 2048;
        v65 = v47;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Checking record with local ID: %{public}@, server ID: %{public}@, item type: %ld, subtype: %ld", buf, 0x2Au);
      }

      selfCopy = p_isa;
      v26 = v49;
      v27 = [p_isa _serverSyncIDTypeForServerSyncID:v49];
      if (v27 == 2)
      {
        break;
      }

      if (v27 != 1)
      {
        if (!v27 && v45 <= 1)
        {
          v29 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_10002D4C8(&v56, v57);
          }

LABEL_19:
          v14 = 0;
LABEL_33:
          v38 = [p_isa[1] copySyncKeyWithItem:v15];

          if (v38)
          {
            v41 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v39, v40);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              sub_10002D4F4(&v50, v51);
            }

            v14 = 0;
          }

          goto LABEL_37;
        }

        goto LABEL_32;
      }

      if (v5)
      {
        v30 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(1, v28);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10002D49C(&v54, v55);
        }

        goto LABEL_19;
      }

LABEL_37:
      v14 &= [p_isa _verifySyncDataForItem:v15 recordName:v26 expectingSyncData:v45 > 1 expectingCloudKitData:v5 == 3];

      firstObject2 = [v10 firstObject];

      v13 = firstObject2;
      if (!firstObject2)
      {
        goto LABEL_40;
      }
    }

    if (!v5)
    {
      v31 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(2, v28);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10002D470(&v52, v53);
      }

      v14 = 0;
      v26 = v49;
    }

    if (v17 == 1)
    {
      v32 = [CKRecord safari_folderTypeForRecordName:v26];
      if (v32 != v47)
      {
        v34 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v32, v33);
        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
        if (v47)
        {
          if (v35)
          {
            v36 = v34;
            v37 = [CKRecord safari_recordNameForFolderType:v47];
            *buf = 134218498;
            v60 = v47;
            v61 = 2114;
            *v62 = v49;
            *&v62[8] = 2114;
            v63 = v37;
            _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Built-in folder with type %ld, has invalid record name: %{public}@, expecting: %{public}@", buf, 0x20u);

            v26 = v49;
          }
        }

        else if (v35)
        {
          *buf = v44;
          v60 = v26;
          _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Regular folder has built-in record name: %{public}@, shouldn't!", buf, 0xCu);
        }

        v14 = 0;
      }
    }

LABEL_32:
    if (v5)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  LOBYTE(v14) = 1;
LABEL_40:

  return v14;
}

- (BOOL)_verifySyncDataForItem:(void *)item recordName:(id)name expectingSyncData:(BOOL)data expectingCloudKitData:(BOOL)kitData
{
  kitDataCopy = kitData;
  nameCopy = name;
  v11 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copySyncDataWithItem:item];
  v13 = v11;
  if (v11 && !data)
  {
    v14 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10002D520();
    }

LABEL_5:
    v15 = 0;
    goto LABEL_51;
  }

  if ([v11 length])
  {
    if (!kitDataCopy)
    {
      v15 = 1;
      goto LABEL_51;
    }

    v17 = [WBBookmarkSyncData syncDataWithContentsOfData:v13];
    if (!v17)
    {
      v34 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v16);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_10002D83C();
      }

      v15 = 0;
      goto LABEL_50;
    }

    v18 = [(WBSBookmarkDBAccess *)self->_databaseAccessor itemTypeWithItem:item];
    record = [v17 record];
    v20 = record;
    if (record)
    {
      safari_recordName = [record safari_recordName];
      v22 = [safari_recordName isEqualToString:nameCopy];

      if ((v22 & 1) == 0)
      {
        v25 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v23, v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_10002D554(v25, v20, nameCopy);
        }
      }

      if (v18 == 1)
      {
        recordType = [v20 recordType];
        v36 = [recordType isEqualToString:@"BookmarkList"];

        if ((v36 & 1) == 0)
        {
          v39 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v37, v38);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            sub_10002D610(v39, v20);
          }
        }
      }

      else if (!v18)
      {
        recordType2 = [v20 recordType];
        v27 = [recordType2 isEqualToString:@"BookmarkLeaf"];

        if ((v27 & 1) == 0)
        {
          v30 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v28, v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_10002D6A4(v30, v20);
          }
        }
      }

      recordChangeTag = [v20 recordChangeTag];
      v41 = [recordChangeTag length];

      if (!v41)
      {
        v44 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v42, v43);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          sub_10002D738();
        }
      }

      position = [v17 position];
      if (position)
      {
      }

      else if (![CKRecord safari_folderTypeForRecordName:nameCopy])
      {
        v47 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v46);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_10002D76C();
        }
      }
    }

    v48 = [v17 hasGenerationForKey:@"ParentAndPosition"];
    v15 = v48;
    if ((v48 & 1) == 0 && (v50 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v48, v49), os_log_type_enabled(v50, OS_LOG_TYPE_ERROR)))
    {
      sub_10002D7A0();
      if (v18)
      {
LABEL_40:
        if (v18 != 1)
        {
          goto LABEL_49;
        }

        v51 = [v17 hasGenerationForKey:@"TitleAndIdentityHash"];
        if (v51)
        {
          goto LABEL_49;
        }

        v53 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v51, v52);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          sub_10002D808();
        }

        goto LABEL_48;
      }
    }

    else if (v18)
    {
      goto LABEL_40;
    }

    v54 = [v17 hasGenerationForKey:@"TitleURLAndIdentityHash"];
    if (v54)
    {
LABEL_49:

LABEL_50:
      goto LABEL_51;
    }

    v56 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v54, v55);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      sub_10002D7D4();
    }

LABEL_48:
    v15 = 0;
    goto LABEL_49;
  }

  v31 = [nameCopy length];
  v15 = 1;
  if (v31 && kitDataCopy)
  {
    v33 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v31, v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10002D870();
    }

    goto LABEL_5;
  }

LABEL_51:

  return v15;
}

@end