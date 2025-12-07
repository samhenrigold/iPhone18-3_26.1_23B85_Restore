@interface CloudBookmarkMovedBookmarkManager
- (BOOL)_insertBookmarkWithRecordName:(id)name intoExistingFolderWithRecordName:(id)recordName;
- (BOOL)_localDatabaseContainsItemWithRecordName:(id)name getParentRecordName:(id *)recordName;
- (CloudBookmarkMovedBookmarkManager)initWithDatabase:(void *)database databaseAccessor:(id)accessor;
- (id)_bookmarksByVerifyingAndReparentingUnrootedBookmarksRememberOriginalParents:(BOOL)parents getLastValidPositionInRootFolder:(id *)folder;
- (id)_lastValidPositionInRootFolder;
- (id)_recordNameOfAncestorToReparentForRecordName:(id)name verifiedRecordNames:(id)names;
- (id)_recordNameOfAncestorToReparentInLoop:(id)loop;
- (id)_sortedRecordNamesWithChildIDs:(id)ds getLastPosition:(id *)position;
- (id)bookmarksByVerifyingAndReparentingUnrootedBookmarksGetLastValidPositionInRootFolder:(id *)folder;
- (void)_createBuiltInFolderWithRecordNameIfNeeded:(id)needed;
- (void)_deleteTemporaryParentFolder;
- (void)_insertBookmark:(id)bookmark intoFolderWithRecordName:(id)name;
- (void)_recursivelyUpdateChildrenOrderWithParentServerID:(id)d depth:(int)depth;
- (void)_reorderChildrenOfFolderWithServerSyncId:(id)id;
- (void)_reorderChildrenOfTopBookmarkFolderGetLastPosition:(id *)position;
- (void)_reparentBuiltInFolderIfNeeded;
- (void)addMovedBookmark:(id)bookmark;
- (void)dealloc;
- (void)didDeleteBookmarkWithRecordName:(id)name;
- (void)didLocallyMoveBookmarkWithRecordName:(id)name;
- (void)moveBookmarksIntoPlace;
- (void)removeLocalItemsForDeletedRecordNames;
- (void)reorderAllBookmarksUsingSyncPosition;
- (void)verifyAndReparentUnrootedBookmarksRememberingOriginalParents;
@end

@implementation CloudBookmarkMovedBookmarkManager

- (CloudBookmarkMovedBookmarkManager)initWithDatabase:(void *)database databaseAccessor:(id)accessor
{
  accessorCopy = accessor;
  v23.receiver = self;
  v23.super_class = CloudBookmarkMovedBookmarkManager;
  v8 = [(CloudBookmarkMovedBookmarkManager *)&v23 init];
  if (v8)
  {
    v8->_databaseRef = CFRetain(database);
    objc_storeStrong(&v8->_databaseAccessor, accessor);
    v9 = +[NSMutableDictionary dictionary];
    childRecordNamesToParentRecordNames = v8->_childRecordNamesToParentRecordNames;
    v8->_childRecordNamesToParentRecordNames = v9;

    v11 = +[NSMutableSet set];
    movedBookmarkRecordNames = v8->_movedBookmarkRecordNames;
    v8->_movedBookmarkRecordNames = v11;

    v13 = +[NSMutableSet set];
    deletedBookmarkRecordNames = v8->_deletedBookmarkRecordNames;
    v8->_deletedBookmarkRecordNames = v13;

    v15 = +[NSMutableSet set];
    parentRecordNamesWithMovedChildren = v8->_parentRecordNamesWithMovedChildren;
    v8->_parentRecordNamesWithMovedChildren = v15;

    v17 = +[NSMutableSet set];
    misplacedBuiltInFolderRecordNames = v8->_misplacedBuiltInFolderRecordNames;
    v8->_misplacedBuiltInFolderRecordNames = v17;

    v19 = +[NSMutableSet set];
    reorderedBySyncPositionBookmarkFolderServerIDs = v8->_reorderedBySyncPositionBookmarkFolderServerIDs;
    v8->_reorderedBySyncPositionBookmarkFolderServerIDs = v19;

    v21 = v8;
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
  v4.super_class = CloudBookmarkMovedBookmarkManager;
  [(CloudBookmarkMovedBookmarkManager *)&v4 dealloc];
}

- (void)addMovedBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  recordName = [bookmarkCopy recordName];
  parentRecordName = [bookmarkCopy parentRecordName];
  v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(parentRecordName, v7);
  v9 = v8;
  if (parentRecordName)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138543618;
      v11 = recordName;
      v12 = 2114;
      v13 = parentRecordName;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Moving record %{public}@ into parent record %{public}@", &v10, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10003DFA0();
    }

    parentRecordName = WBSCloudBookmarkListRecordNameNullParentFolder;
  }

  [(CloudBookmarkMovedBookmarkManager *)self _insertBookmark:bookmarkCopy intoFolderWithRecordName:parentRecordName];
  [(NSMutableSet *)self->_deletedBookmarkRecordNames removeObject:recordName];
}

- (void)didLocallyMoveBookmarkWithRecordName:(id)name
{
  nameCopy = name;
  v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(nameCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    v8 = nameCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Marking record name %{public}@ as moved locally", &v7, 0xCu);
  }

  [(NSMutableSet *)self->_movedBookmarkRecordNames addObject:nameCopy];
  [(NSMutableSet *)self->_deletedBookmarkRecordNames removeObject:nameCopy];
}

- (void)didDeleteBookmarkWithRecordName:(id)name
{
  nameCopy = name;
  v5 = [CKRecord safari_folderTypeForRecordName:nameCopy];
  v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v5, v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003E008();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138543362;
      v10 = nameCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Marking record name %{public}@ as deleted", &v9, 0xCu);
    }

    [(NSMutableSet *)self->_movedBookmarkRecordNames removeObject:nameCopy];
    [(NSMutableDictionary *)self->_childRecordNamesToParentRecordNames removeObjectForKey:nameCopy];
    [(NSMutableSet *)self->_deletedBookmarkRecordNames addObject:nameCopy];
  }
}

- (void)_insertBookmark:(id)bookmark intoFolderWithRecordName:(id)name
{
  bookmarkCopy = bookmark;
  nameCopy = name;
  recordName = [bookmarkCopy recordName];
  v9 = WBSCloudBookmarkListRecordNameTopBookmark;
  if ([nameCopy isEqualToString:WBSCloudBookmarkListRecordNameTopBookmark])
  {
    v10 = -[WBSBookmarkDBAccess addItem:underFolderWithServerId:database:](self->_databaseAccessor, "addItem:underFolderWithServerId:database:", [bookmarkCopy item], 0, self->_databaseRef);
    if (v10)
    {
      goto LABEL_12;
    }

    v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v10, v11);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ([CKRecord safari_folderTypeForRecordName:recordName])
  {
    if (([nameCopy isEqualToString:v9] & 1) == 0)
    {
      v13 = [(NSMutableSet *)self->_misplacedBuiltInFolderRecordNames addObject:recordName];
      v15 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10003E070();
      }
    }

    v16 = -[WBSBookmarkDBAccess addItem:underFolderWithServerId:database:](self->_databaseAccessor, "addItem:underFolderWithServerId:database:", [bookmarkCopy item], 0, self->_databaseRef);
    if (v16)
    {
      goto LABEL_12;
    }

    v18 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v16, v17);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

LABEL_11:
    sub_10003E0D8();
LABEL_12:
    self->_topBookmarkFolderRequiresReordering = 1;
    goto LABEL_13;
  }

  if ([CKRecord safari_folderTypeForRecordName:nameCopy])
  {
    [(NSMutableSet *)self->_parentRecordNamesWithMovedChildren addObject:nameCopy];
    [(CloudBookmarkMovedBookmarkManager *)self _createBuiltInFolderWithRecordNameIfNeeded:nameCopy];
    v19 = -[WBSBookmarkDBAccess addItem:underFolderWithServerId:database:](self->_databaseAccessor, "addItem:underFolderWithServerId:database:", [bookmarkCopy item], nameCopy, self->_databaseRef);
    if ((v19 & 1) == 0)
    {
      v21 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10003E140();
      }
    }
  }

  else
  {
    [(NSMutableSet *)self->_movedBookmarkRecordNames addObject:recordName];
    item = [bookmarkCopy item];
    if ([(WBSBookmarkDBAccess *)self->_databaseAccessor addItem:item underFolderWithServerId:nameCopy database:self->_databaseRef])
    {
      [(NSMutableSet *)self->_parentRecordNamesWithMovedChildren addObject:nameCopy];
      [(NSMutableDictionary *)self->_childRecordNamesToParentRecordNames setObject:nameCopy forKeyedSubscript:recordName];
    }

    else
    {
      v23 = WBSCloudBookmarkListRecordNameTemporaryParentFolder;
      if (!self->_hasTemporaryParentFolder)
      {
        [(CloudBookmarkMovedBookmarkManager *)self _createBuiltInFolderWithRecordNameIfNeeded:WBSCloudBookmarkListRecordNameTemporaryParentFolder];
        self->_hasTemporaryParentFolder = 1;
      }

      [(NSMutableDictionary *)self->_childRecordNamesToParentRecordNames setObject:nameCopy forKeyedSubscript:recordName];
      v24 = [(WBSBookmarkDBAccess *)self->_databaseAccessor addItem:item underFolderWithServerId:v23 database:self->_databaseRef];
      if ((v24 & 1) == 0)
      {
        v26 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v24, v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_10003E1A8();
        }
      }
    }
  }

LABEL_13:
}

- (BOOL)_insertBookmarkWithRecordName:(id)name intoExistingFolderWithRecordName:(id)recordName
{
  nameCopy = name;
  recordNameCopy = recordName;
  v8 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyItemWithServerId:nameCopy database:self->_databaseRef];
  if (v8)
  {
    v10 = v8;
    v11 = [(WBSBookmarkDBAccess *)self->_databaseAccessor addItem:v8 underFolderWithServerId:recordNameCopy database:self->_databaseRef];
    CFRelease(v10);
  }

  else
  {
    v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10003E210();
    }

    v13 = +[NSNotificationCenter defaultCenter];
    v16 = @"bugIDs";
    v17 = &off_10013C908;
    v11 = 1;
    v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [v13 postNotificationName:@"cloudBookmarkDidDetectBug" object:self userInfo:v14];
  }

  return v11;
}

- (void)_createBuiltInFolderWithRecordNameIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyItemWithServerId:neededCopy database:self->_databaseRef];
  if (v5)
  {
    CFRelease(v5);
  }

  else
  {
    v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138543362;
      v10 = neededCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Creating built-in folder with record name: %{public}@", &v9, 0xCu);
    }

    v8 = [(WBSBookmarkDBAccess *)self->_databaseAccessor createFolderWithType:[CKRecord database:"safari_folderTypeForRecordName:" safari_folderTypeForRecordName:neededCopy], self->_databaseRef];
    [(WBSBookmarkDBAccess *)self->_databaseAccessor setServerId:neededCopy item:v8];
    [(WBSBookmarkDBAccess *)self->_databaseAccessor addItem:v8 underFolderWithServerId:0 database:self->_databaseRef];
    CFRelease(v8);
    self->_topBookmarkFolderRequiresReordering = 1;
  }
}

- (void)_deleteTemporaryParentFolder
{
  if (self->_hasTemporaryParentFolder)
  {
    v3 = WBSCloudBookmarkListRecordNameTemporaryParentFolder;
    v4 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyServerIdsInFolderWithServerId:WBSCloudBookmarkListRecordNameTemporaryParentFolder database:self->_databaseRef];
    v5 = [v4 mutableCopy];

    [v5 minusSet:self->_deletedBookmarkRecordNames];
    v6 = [v5 count];
    if (v6)
    {
      v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10003E278(v8, v5);
      }
    }

    [(WBSBookmarkDBAccess *)self->_databaseAccessor removeItemWithServerId:v3 database:self->_databaseRef];
    self->_hasTemporaryParentFolder = 0;
  }
}

- (void)_reparentBuiltInFolderIfNeeded
{
  if ([(CloudBookmarkMovedBookmarkManager *)self hasUnverifiedMovedBookmarks])
  {
    if (qword_100153ED0 != -1)
    {
      sub_10003E358();
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = qword_100153EC8;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          v9 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyItemWithServerId:v8 database:self->_databaseRef, v12];
          if (v9)
          {
            v10 = v9;
            v11 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyParentServerIdWithItem:v9];
            if (v11)
            {
              [(WBSBookmarkDBAccess *)self->_databaseAccessor addItem:v10 underFolderWithServerId:0 database:self->_databaseRef];
              [(NSMutableSet *)self->_misplacedBuiltInFolderRecordNames addObject:v8];
              self->_topBookmarkFolderRequiresReordering = 1;
            }

            CFRelease(v10);
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }
}

- (id)_bookmarksByVerifyingAndReparentingUnrootedBookmarksRememberOriginalParents:(BOOL)parents getLastValidPositionInRootFolder:(id *)folder
{
  parentsCopy = parents;
  v7 = objc_autoreleasePoolPush();
  [(CloudBookmarkMovedBookmarkManager *)self _reparentBuiltInFolderIfNeeded];
  [(CloudBookmarkMovedBookmarkManager *)self _reorderChildrenOfTopBookmarkFolderGetLastPosition:folder];
  objc_autoreleasePoolPop(v7);
  if ([(CloudBookmarkMovedBookmarkManager *)self hasUnverifiedMovedBookmarks])
  {
    v36 = +[NSMutableSet set];
    v8 = +[NSMutableSet set];
    if (parentsCopy)
    {
      obj = [(NSMutableSet *)self->_movedBookmarkRecordNames mutableCopy];
      v32 = [(NSMutableSet *)self->_misplacedBuiltInFolderRecordNames mutableCopy];
      v33 = [(NSMutableDictionary *)self->_childRecordNamesToParentRecordNames mutableCopy];
    }

    else
    {
      v33 = 0;
      v32 = 0;
      obj = 0;
    }

    [v36 unionSet:self->_misplacedBuiltInFolderRecordNames];
    [v8 unionSet:self->_misplacedBuiltInFolderRecordNames];
    [(NSMutableSet *)self->_misplacedBuiltInFolderRecordNames removeAllObjects];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    p_movedBookmarkRecordNames = &self->_movedBookmarkRecordNames;
    v10 = self->_movedBookmarkRecordNames;
    v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v40 objects:v46 count:16];
    v34 = parentsCopy;
    if (v11)
    {
      v12 = v11;
      v13 = *v41;
      do
      {
        v14 = 0;
        do
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v40 + 1) + 8 * v14);
          v16 = objc_autoreleasePoolPush();
          v17 = [(CloudBookmarkMovedBookmarkManager *)self _recordNameOfAncestorToReparentForRecordName:v15 verifiedRecordNames:v8];
          if (v17)
          {
            if (parentsCopy)
            {
              [obj addObject:v17];
              v39 = 0;
              [(CloudBookmarkMovedBookmarkManager *)self _localDatabaseContainsItemWithRecordName:v17 getParentRecordName:&v39];
              v18 = v39;
              if ([v18 length])
              {
                [v33 setObject:v18 forKeyedSubscript:v17];
              }

              else
              {
                v20 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v19);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v45 = v17;
                  _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Record with name %{public}@ does not have a parent even though it was checked right before", buf, 0xCu);
                }
              }

              parentsCopy = v34;
            }

            [(NSMutableDictionary *)self->_childRecordNamesToParentRecordNames removeObjectForKey:v17];
            v21 = [(CloudBookmarkMovedBookmarkManager *)self _insertBookmarkWithRecordName:v17 intoExistingFolderWithRecordName:0];
            if ((v21 & 1) == 0)
            {
              v23 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v21, v22);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v45 = v17;
                _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to insert %{public}@ into the root folder and for some reason the parent folder does not exist or creates a cycle!", buf, 0xCu);
              }
            }

            [v36 addObject:v17];
          }

          objc_autoreleasePoolPop(v16);
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v12);
    }

    removeAllObjects = [(NSMutableSet *)*p_movedBookmarkRecordNames removeAllObjects];
    v26 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(removeAllObjects, v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Did finish checking hierarchy consistency, will move remaining records into their final location", buf, 2u);
    }

    childRecordNamesToParentRecordNames = self->_childRecordNamesToParentRecordNames;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10003CAB4;
    v37[3] = &unk_100132FB0;
    v37[4] = self;
    v28 = v36;
    v38 = v28;
    [(NSMutableDictionary *)childRecordNamesToParentRecordNames enumerateKeysAndObjectsUsingBlock:v37];
    [(NSMutableDictionary *)self->_childRecordNamesToParentRecordNames removeAllObjects];
    [(CloudBookmarkMovedBookmarkManager *)self _deleteTemporaryParentFolder];
    if (v34)
    {
      objc_storeStrong(p_movedBookmarkRecordNames, obj);
      objc_storeStrong(&self->_misplacedBuiltInFolderRecordNames, v32);
      objc_storeStrong(&self->_childRecordNamesToParentRecordNames, v33);
    }

    v29 = v38;
    v9 = v28;
  }

  else
  {
    v9 = +[NSSet set];
  }

  return v9;
}

- (id)bookmarksByVerifyingAndReparentingUnrootedBookmarksGetLastValidPositionInRootFolder:(id *)folder
{
  v8 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = [(CloudBookmarkMovedBookmarkManager *)self _bookmarksByVerifyingAndReparentingUnrootedBookmarksRememberOriginalParents:0 getLastValidPositionInRootFolder:&v8];
  objc_autoreleasePoolPop(v5);
  *folder = v8;

  return v6;
}

- (void)verifyAndReparentUnrootedBookmarksRememberingOriginalParents
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(CloudBookmarkMovedBookmarkManager *)self _bookmarksByVerifyingAndReparentingUnrootedBookmarksRememberOriginalParents:1 getLastValidPositionInRootFolder:0];

  objc_autoreleasePoolPop(v3);
}

- (id)_recordNameOfAncestorToReparentForRecordName:(id)name verifiedRecordNames:(id)names
{
  nameCopy = name;
  namesCopy = names;
  v8 = [namesCopy containsObject:nameCopy];
  v9 = v8;
  v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v8, v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (!v9)
  {
    if (v12)
    {
      *buf = 138543362;
      v40 = nameCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Checking parent chain of record with name %{public}@", buf, 0xCu);
    }

    v14 = [namesCopy copy];
    v15 = nameCopy;
    v16 = +[NSMutableOrderedSet orderedSet];
    [v16 addObject:v15];
    [namesCopy addObject:v15];
    v38 = 0;
    v17 = [(CloudBookmarkMovedBookmarkManager *)self _localDatabaseContainsItemWithRecordName:v15 getParentRecordName:&v38];
    v18 = v38;
    v20 = v18;
    if (v17)
    {
      if (!v18)
      {
        v13 = 0;
        goto LABEL_21;
      }

      v21 = WBSCloudBookmarkListRecordNameNullParentFolder;
      while (1)
      {
        if ([v20 isEqualToString:v21])
        {
          goto LABEL_32;
        }

        v22 = [(NSMutableSet *)self->_deletedBookmarkRecordNames containsObject:v20];
        if (v22)
        {
          v35 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v22, v23);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v40 = v20;
            v41 = 2114;
            v42 = v15;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Parent %{public}@ was deleted, reparenting %{public}@", buf, 0x16u);
          }

LABEL_32:
          v15 = v15;
          v13 = v15;
          goto LABEL_20;
        }

        if ([v14 containsObject:v20])
        {
          goto LABEL_19;
        }

        v24 = [v16 indexOfObject:v20];
        if (v24 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v37 = 0;
        v25 = [(CloudBookmarkMovedBookmarkManager *)self _localDatabaseContainsItemWithRecordName:v20 getParentRecordName:&v37];
        v26 = v37;
        v28 = v26;
        if ((v25 & 1) == 0)
        {
          v36 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v26, v27);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v40 = v20;
            v41 = 2114;
            v42 = v15;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Parent %{public}@ is not in the database, reparenting %{public}@", buf, 0x16u);
          }

          v15 = v15;

          v13 = v15;
          goto LABEL_20;
        }

        v29 = v20;

        [v16 addObject:v29];
        [namesCopy addObject:v29];

        v15 = v29;
        v20 = v28;
        if (!v28)
        {
          v13 = 0;
          v15 = v29;
          goto LABEL_20;
        }
      }

      v32 = v24;
      if (v24)
      {
        [v16 removeObjectsInRange:{0, v24}];
      }

      v13 = [(CloudBookmarkMovedBookmarkManager *)self _recordNameOfAncestorToReparentInLoop:v16, v32];
      v34 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v13, v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v40 = v13;
        v41 = 2114;
        v42 = v16;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Loop detected, reparenting %{public}@ in list %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v30 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v18, v19);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10003E43C();
      }

LABEL_19:
      v13 = 0;
    }

LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  if (v12)
  {
    *buf = 138543362;
    v40 = nameCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Already verified parent chain fo record with name %{public}@", buf, 0xCu);
  }

  v13 = 0;
LABEL_22:

  return v13;
}

- (id)_recordNameOfAncestorToReparentInLoop:(id)loop
{
  array = [loop array];
  v4 = [array safari_minimumUsingComparator:&stru_100132FF0];

  return v4;
}

- (BOOL)_localDatabaseContainsItemWithRecordName:(id)name getParentRecordName:(id *)recordName
{
  nameCopy = name;
  *recordName = 0;
  v7 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyItemWithServerId:nameCopy database:self->_databaseRef];
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_childRecordNamesToParentRecordNames objectForKeyedSubscript:nameCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      *recordName = v9;
    }

    else
    {
      v11 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyParentServerIdWithItem:v7];
      *recordName = v11;
    }

    CFRelease(v7);
  }

  return v7 != 0;
}

- (void)reorderAllBookmarksUsingSyncPosition
{
  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Beginning reorder of all bookmarks in local storage based on CloudKit sync data", v5, 2u);
  }

  self->_topBookmarkFolderRequiresReordering = 1;
  v4 = objc_autoreleasePoolPush();
  [(CloudBookmarkMovedBookmarkManager *)self _reorderChildrenOfTopBookmarkFolderGetLastPosition:0];
  objc_autoreleasePoolPop(v4);
  [(CloudBookmarkMovedBookmarkManager *)self _recursivelyUpdateChildrenOrderWithParentServerID:0 depth:0];
  [(NSMutableSet *)self->_reorderedBySyncPositionBookmarkFolderServerIDs removeAllObjects];
}

- (void)_recursivelyUpdateChildrenOrderWithParentServerID:(id)d depth:(int)depth
{
  dCopy = d;
  v7 = [(NSMutableSet *)self->_reorderedBySyncPositionBookmarkFolderServerIDs containsObject:dCopy];
  if (v7)
  {
    v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_10003E518(dCopy, &self->_reorderedBySyncPositionBookmarkFolderServerIDs, v9);
    }
  }

  else if (depth < 401)
  {
    if (dCopy)
    {
      v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v7, v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v37 = dCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Reordering children of %{public}@", buf, 0xCu);
      }

      [(NSMutableSet *)self->_reorderedBySyncPositionBookmarkFolderServerIDs addObject:dCopy];
      v12 = objc_autoreleasePoolPush();
      [(CloudBookmarkMovedBookmarkManager *)self _reorderChildrenOfFolderWithServerSyncId:dCopy];
      objc_autoreleasePoolPop(v12);
    }

    v13 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyServerIdsInFolderWithServerId:dCopy database:self->_databaseRef];
    v14 = [v13 count];
    v16 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v14, v15);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v17)
      {
        v18 = v16;
        v19 = [v13 count];
        *buf = 134218242;
        v37 = v19;
        v38 = 2114;
        v39 = dCopy;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Recursing to update order for %lu children of %{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      *buf = 138543362;
      v37 = dCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "No children of bookmark %{public}@ to recurse on", buf, 0xCu);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v20 = v13;
    v21 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v21)
    {
      v23 = v21;
      v24 = *v32;
      *&v22 = 138543362;
      v30 = v22;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v31 + 1) + 8 * i);
          v27 = [dCopy isEqualToString:{v26, v30, v31}];
          if (v27)
          {
            v29 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v27, v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
            {
              *buf = v30;
              v37 = dCopy;
              _os_log_fault_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "Child bookmark ID unexpectedly equal to parent server ID %{public}@", buf, 0xCu);
            }
          }

          else
          {
            [(CloudBookmarkMovedBookmarkManager *)self _recursivelyUpdateChildrenOrderWithParentServerID:v26 depth:(depth + 1)];
          }
        }

        v23 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v23);
    }
  }

  else
  {
    v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10003E4A4();
    }
  }
}

- (void)moveBookmarksIntoPlace
{
  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Fixing order in local storage based on CloudKit positions", buf, 2u);
  }

  v4 = objc_autoreleasePoolPush();
  [(CloudBookmarkMovedBookmarkManager *)self _reorderChildrenOfTopBookmarkFolderGetLastPosition:0];
  objc_autoreleasePoolPop(v4);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_parentRecordNamesWithMovedChildren;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        [(CloudBookmarkMovedBookmarkManager *)self _reorderChildrenOfFolderWithServerSyncId:v10, v12];
        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  [(NSMutableSet *)self->_parentRecordNamesWithMovedChildren removeAllObjects];
}

- (id)_sortedRecordNamesWithChildIDs:(id)ds getLastPosition:(id *)position
{
  dsCopy = ds;
  context = objc_autoreleasePoolPush();
  v6 = +[NSMutableArray array];
  v7 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = dsCopy;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [(CloudBookmarkMovedBookmarkManager *)self _positionOfBookmarkWithRecordNameForFolderSorting:v13];
        v16 = v14;
        if (v14)
        {
          v17 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v14, v15);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v29 = v13;
            v30 = 2112;
            v31 = v16;
            _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Record name %@, position: %@", buf, 0x16u);
          }

          v18 = [v7 indexOfObject:v16 inSortedRange:0 options:objc_msgSend(v7 usingComparator:{"count"), 1024, &stru_100133030}];
          [v6 insertObject:v13 atIndex:v18];
          [v7 insertObject:v16 atIndex:v18];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v10);
  }

  if (position)
  {
    lastObject = [v7 lastObject];
    v20 = *position;
    *position = lastObject;
  }

  objc_autoreleasePoolPop(context);

  return v6;
}

- (void)_reorderChildrenOfTopBookmarkFolderGetLastPosition:(id *)position
{
  if (self->_topBookmarkFolderRequiresReordering)
  {
    v5 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(self, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Reordering children of root folder", buf, 2u);
    }

    v6 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyServerIdsInFolderWithServerId:0 database:self->_databaseRef];
    v7 = [v6 mutableCopy];

    v8 = WBSCloudBookmarkListRecordNameFavoritesBar;
    [v7 removeObject:WBSCloudBookmarkListRecordNameFavoritesBar];
    v9 = WBSCloudBookmarkListRecordNameBookmarksMenu;
    [v7 removeObject:WBSCloudBookmarkListRecordNameBookmarksMenu];
    v10 = WBSCloudBookmarkListRecordNameReadingList;
    [v7 removeObject:WBSCloudBookmarkListRecordNameReadingList];
    v11 = WBSCloudBookmarkListRecordNameTemporaryParentFolder;
    [v7 removeObject:WBSCloudBookmarkListRecordNameTemporaryParentFolder];
    v12 = [(CloudBookmarkMovedBookmarkManager *)self _sortedRecordNamesWithChildIDs:v7 getLastPosition:position];
    [v12 insertObject:v8 atIndex:0];
    [v12 insertObject:v9 atIndex:1];
    [v12 insertObject:v10 atIndex:2];
    if (self->_hasTemporaryParentFolder)
    {
      [v12 addObject:v11];
    }

    v13 = [(WBSBookmarkDBAccess *)self->_databaseAccessor setChildrenOrder:v12 forFolderWithServerId:0 database:self->_databaseRef];
    v15 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Did finish reordering children of root folder", v18, 2u);
    }

    self->_topBookmarkFolderRequiresReordering = 0;
  }

  else if (position)
  {
    _lastValidPositionInRootFolder = [(CloudBookmarkMovedBookmarkManager *)self _lastValidPositionInRootFolder];
    v17 = *position;
    *position = _lastValidPositionInRootFolder;
  }
}

- (id)_lastValidPositionInRootFolder
{
  v3 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyLastServerIdInFolderWithServerId:0 database:self->_databaseRef];
  if (v3 && ![CKRecord safari_folderTypeForRecordName:v3])
  {
    v4 = [CloudBookmark positionForItemWithRecordName:v3 inDatabase:self->_databaseRef databaseAccessor:self->_databaseAccessor];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_reorderChildrenOfFolderWithServerSyncId:(id)id
{
  idCopy = id;
  v5 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyServerIdsInFolderWithServerId:idCopy database:self->_databaseRef];
  v6 = [v5 count];
  v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v6, v7);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 138543362;
      v15 = idCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Reordering children of record with Server Sync ID: %{public}@", &v14, 0xCu);
    }

    v10 = [(CloudBookmarkMovedBookmarkManager *)self _sortedRecordNamesWithChildIDs:v5 getLastPosition:0];
    v11 = [(WBSBookmarkDBAccess *)self->_databaseAccessor setChildrenOrder:v10 forFolderWithServerId:idCopy database:self->_databaseRef];
    v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = 138543362;
      v15 = idCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Did finish reordering children of record with Server Sync ID: %{public}@", &v14, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10003E5CC();
  }
}

- (void)removeLocalItemsForDeletedRecordNames
{
  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    deletedBookmarkRecordNames = self->_deletedBookmarkRecordNames;
    v5 = v3;
    *buf = 134217984;
    v17 = [(NSMutableSet *)deletedBookmarkRecordNames count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Removing %lu local items that were deleted on the server", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_deletedBookmarkRecordNames;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(WBSBookmarkDBAccess *)self->_databaseAccessor removeItemWithServerId:*(*(&v11 + 1) + 8 * v10) database:self->_databaseRef, v11];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(NSMutableSet *)self->_deletedBookmarkRecordNames removeAllObjects];
}

@end