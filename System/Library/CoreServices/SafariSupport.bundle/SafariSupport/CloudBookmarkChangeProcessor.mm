@interface CloudBookmarkChangeProcessor
- (CloudBookmarkChangeProcessor)initWithDatabase:(void *)database databaseAccessor:(id)accessor updater:(id)updater;
- (CloudBookmarkUpdater)updater;
- (id)_createServerSyncIDForItem:(void *)item;
- (void)dealloc;
- (void)processChanges;
@end

@implementation CloudBookmarkChangeProcessor

- (CloudBookmarkChangeProcessor)initWithDatabase:(void *)database databaseAccessor:(id)accessor updater:(id)updater
{
  accessorCopy = accessor;
  updaterCopy = updater;
  v19.receiver = self;
  v19.super_class = CloudBookmarkChangeProcessor;
  v11 = [(CloudBookmarkChangeProcessor *)&v19 init];
  if (v11)
  {
    v11->_databaseRef = CFRetain(database);
    objc_storeStrong(&v11->_databaseAccessor, accessor);
    objc_storeWeak(&v11->_updater, updaterCopy);
    changes = v11->_changes;
    v11->_changes = &__NSArray0__struct;

    v13 = +[NSSet set];
    movedRecordNames = v11->_movedRecordNames;
    v11->_movedRecordNames = v13;

    v15 = +[NSSet set];
    deletedRecordNames = v11->_deletedRecordNames;
    v11->_deletedRecordNames = v15;

    v17 = v11;
  }

  return v11;
}

- (void)dealloc
{
  databaseRef = self->_databaseRef;
  if (databaseRef)
  {
    CFRelease(databaseRef);
  }

  v4.receiver = self;
  v4.super_class = CloudBookmarkChangeProcessor;
  [(CloudBookmarkChangeProcessor *)&v4 dealloc];
}

- (void)processChanges
{
  v73 = 0;
  v3 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyChangesWithDatabase:self->_databaseRef changeToken:&v73];
  v4 = [v3 copy];

  v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10008CDC4(v7, v4, self);
  }

  +[NSMutableDictionary dictionary];
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_10008CB6C;
  v62 = v71[3] = &unk_1001354E8;
  v72 = v62;
  v65 = objc_retainBlock(v71);
  v63 = +[NSMutableSet set];
  v64 = +[NSMutableSet set];
  v66 = +[NSMutableSet set];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v67 objects:v78 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v68;
    *&v10 = 138543618;
    v61 = v10;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v68 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v67 + 1) + 8 * i);
        v15 = [(WBSBookmarkDBAccess *)self->_databaseAccessor changeTypeForChange:v14, v61];
        switch(v15)
        {
          case 2u:
            v19 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyServerIdWithChange:v14];
            if (![v19 length])
            {
              goto LABEL_42;
            }

            v34 = [CKRecord safari_folderTypeForRecordName:v19];
            if (v34)
            {
              v36 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v34, v35);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v75 = v19;
                _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Attempted to delete built-in record with name: %{public}@, ignoring.", buf, 0xCu);
              }

              databaseAccessor = self->_databaseAccessor;
              v38 = +[NSData data];
              [(WBSBookmarkDBAccess *)databaseAccessor setDeletedBookmarkSyncData:v38 change:v14];

              goto LABEL_42;
            }

            v43 = [(NSSet *)v66 containsObject:v19];
            v44 = v43;
            v46 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v43, v45);
            v47 = v46;
            if (v44)
            {
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v75 = v19;
                _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Adding change of type delete for record that has already been processed: %{public}@", buf, 0xCu);
              }
            }

            else
            {
              if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                v75 = v19;
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Processing change of type delete for record: %{public}@", buf, 0xCu);
              }

              [(NSSet *)v66 addObject:v19];
            }

            [(NSSet *)v64 addObject:v19];
            goto LABEL_53;
          case 1u:
            if ([(WBSBookmarkDBAccess *)self->_databaseAccessor changeIsMoveChange:v14])
            {
              v26 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyChangedItemWithChange:v14];
              if (!v26)
              {
                v48 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v27);
                if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                {
                  continue;
                }

                *buf = 138543362;
                v75 = v14;
                v40 = v48;
                v41 = "Move change %{public}@ was provided without a corresponding changed item.";
                goto LABEL_38;
              }

              v18 = v26;
              v19 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyServerIdWithItem:v26];
              if (![v19 length])
              {
                v49 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v28);
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  *buf = v61;
                  v75 = v18;
                  v76 = 2114;
                  v77 = v14;
                  _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Moved item %{public}@ for change %{public}@ did not have a record ID.", buf, 0x16u);
                }

                CFRelease(v18);
LABEL_42:

                continue;
              }

              v29 = [(NSSet *)v66 containsObject:v19];
              v30 = v29;
              v32 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v29, v31);
              v33 = v32;
              if (v30)
              {
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v75 = v19;
                  _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Adding change of type modify for record that has already been processed: %{public}@", buf, 0xCu);
                }
              }

              else
              {
                if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                {
                  *buf = 138543362;
                  v75 = v19;
                  _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Processing change of type modify for record: %{public}@", buf, 0xCu);
                }

                [(NSSet *)v66 addObject:v19];
              }

              v42 = v63;
LABEL_51:
              [(NSSet *)v42 addObject:v19];
              goto LABEL_52;
            }

            break;
          case 0u:
            v16 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyChangedItemWithChange:v14];
            if (!v16)
            {
              v39 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v17);
              if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                continue;
              }

              *buf = 138543362;
              v75 = v14;
              v40 = v39;
              v41 = "Add change %{public}@ was provided without a corresponding changed item.";
LABEL_38:
              _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, v41, buf, 0xCu);
              continue;
            }

            v18 = v16;
            v19 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyServerIdWithItem:v16];
            if (![v19 length])
            {
              v20 = [(CloudBookmarkChangeProcessor *)self _createServerSyncIDForItem:v18];

              [(WBSBookmarkDBAccess *)self->_databaseAccessor setServerId:v20 item:v18];
              v19 = v20;
            }

            v21 = [(NSSet *)v66 containsObject:v19];
            v22 = v21;
            v24 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v21, v23);
            v25 = v24;
            if (!v22)
            {
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                v75 = v19;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Processing change of type add for record: %{public}@", buf, 0xCu);
              }

              v42 = v66;
              goto LABEL_51;
            }

            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v75 = v19;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Adding change of type add for record that has already been processed: %{public}@", buf, 0xCu);
            }

LABEL_52:
            v50 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyParentServerIdWithItem:v18];
            (v65[2])(v65, v19, v50);

            CFRelease(v18);
LABEL_53:

            break;
        }

        v51 = self->_databaseAccessor;
        WeakRetained = objc_loadWeakRetained(&self->_updater);
        [CloudBookmark updateSyncDataGenerationsWithChange:v14 databaseAccessor:v51 updater:WeakRetained];
      }

      v11 = [v8 countByEnumeratingWithState:&v67 objects:v78 count:16];
    }

    while (v11);
  }

  if (v8)
  {
    v53 = v8;
  }

  else
  {
    v53 = &__NSArray0__struct;
  }

  objc_storeStrong(&self->_changes, v53);
  changeToken = self->_changeToken;
  self->_changeToken = v73;

  movedRecordNames = self->_movedRecordNames;
  self->_movedRecordNames = v63;
  v56 = v63;

  deletedRecordNames = self->_deletedRecordNames;
  self->_deletedRecordNames = v64;
  v58 = v64;

  parentRecordNamesToMovedChildRecordNames = self->_parentRecordNamesToMovedChildRecordNames;
  self->_parentRecordNamesToMovedChildRecordNames = v62;
  v60 = v62;

  [(WBSBookmarkDBAccess *)self->_databaseAccessor saveDatabase:self->_databaseRef];
}

- (id)_createServerSyncIDForItem:(void *)item
{
  if ([(WBSBookmarkDBAccess *)self->_databaseAccessor itemTypeWithItem:?]!= 1)
  {
    goto LABEL_6;
  }

  v5 = [(WBSBookmarkDBAccess *)self->_databaseAccessor folderTypeWithFolder:item];
  if (v5 == 3)
  {
    v6 = &WBSCloudBookmarkListRecordNameReadingList;
    goto LABEL_9;
  }

  if (v5 == 2)
  {
    v6 = &WBSCloudBookmarkListRecordNameBookmarksMenu;
    goto LABEL_9;
  }

  if (v5 != 1)
  {
LABEL_6:
    v7 = +[NSUUID UUID];
    uUIDString = [v7 UUIDString];

    goto LABEL_10;
  }

  v6 = &WBSCloudBookmarkListRecordNameFavoritesBar;
LABEL_9:
  uUIDString = *v6;
LABEL_10:

  return uUIDString;
}

- (CloudBookmarkUpdater)updater
{
  WeakRetained = objc_loadWeakRetained(&self->_updater);

  return WeakRetained;
}

@end