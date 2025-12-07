@interface CloudBookmarkPendingReferenceManager
- (BOOL)shouldApplyReference:(id)reference withGeneration:(id)generation toAttribute:(id)attribute inRecordWithName:(id)name;
- (CloudBookmarkPendingReferenceManager)initWithDatabase:(void *)database databaseAccessor:(id)accessor;
- (void)applyAllPendingReferencesWithUpdater:(id)updater;
- (void)dealloc;
@end

@implementation CloudBookmarkPendingReferenceManager

- (CloudBookmarkPendingReferenceManager)initWithDatabase:(void *)database databaseAccessor:(id)accessor
{
  accessorCopy = accessor;
  v13.receiver = self;
  v13.super_class = CloudBookmarkPendingReferenceManager;
  v8 = [(CloudBookmarkPendingReferenceManager *)&v13 init];
  if (v8)
  {
    v8->_databaseRef = CFRetain(database);
    objc_storeStrong(&v8->_databaseAccessor, accessor);
    v9 = +[NSMutableDictionary dictionary];
    pendingReferences = v8->_pendingReferences;
    v8->_pendingReferences = v9;

    v11 = v8;
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
  v4.super_class = CloudBookmarkPendingReferenceManager;
  [(CloudBookmarkPendingReferenceManager *)&v4 dealloc];
}

- (BOOL)shouldApplyReference:(id)reference withGeneration:(id)generation toAttribute:(id)attribute inRecordWithName:(id)name
{
  referenceCopy = reference;
  generationCopy = generation;
  attributeCopy = attribute;
  nameCopy = name;
  recordID = [referenceCopy recordID];
  recordName = [recordID recordName];

  if ([recordName length])
  {
    v17 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyItemWithServerId:recordName database:self->_databaseRef];
    v19 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v17, v18);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (v17)
    {
      if (v20)
      {
        *buf = 138544130;
        v36 = recordName;
        v37 = 2114;
        v38 = generationCopy;
        v39 = 2114;
        v40 = attributeCopy;
        v41 = 2114;
        v42 = nameCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Did find referenced record: %{public}@ generation: %{public}@ for attribute: %{public}@ in record: %{public}@", buf, 0x2Au);
      }

      CFRelease(v17);
      v21 = 1;
    }

    else
    {
      if (v20)
      {
        *buf = 138544130;
        v36 = recordName;
        v37 = 2114;
        v38 = generationCopy;
        v39 = 2114;
        v40 = attributeCopy;
        v41 = 2114;
        v42 = nameCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Could not find referenced record: %{public}@ generation: %{public}@ for attribute: %{public}@ in record: %{public}@", buf, 0x2Au);
      }

      v23 = [(NSMutableDictionary *)self->_pendingReferences objectForKeyedSubscript:nameCopy];
      if (!v23)
      {
        v23 = +[NSMutableDictionary dictionary];
        [(NSMutableDictionary *)self->_pendingReferences setObject:v23 forKeyedSubscript:nameCopy];
      }

      v24 = [v23 objectForKeyedSubscript:attributeCopy];
      v26 = v24;
      if (v24)
      {
        v27 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v24, v25);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v30 = v27;
          first = [v26 first];
          recordID2 = [first recordID];
          recordName2 = [recordID2 recordName];
          second = [v26 second];
          *buf = 138544642;
          v36 = recordName2;
          v37 = 2114;
          v38 = second;
          v39 = 2114;
          v40 = recordName;
          v41 = 2114;
          v42 = generationCopy;
          v43 = 2114;
          v44 = attributeCopy;
          v45 = 2114;
          v46 = nameCopy;
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Overriding previous referenced record : %{public}@ generation: %{public}@ with referenced record: %{public}@ generation: %{public}@ for attribute: %{public}@ in record: %{public}@", buf, 0x3Eu);
        }
      }

      v28 = [[WBSPair alloc] initWithFirst:referenceCopy second:generationCopy];
      [v23 setObject:v28 forKeyedSubscript:attributeCopy];

      v21 = 0;
    }
  }

  else
  {
    v22 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v16);
    v21 = 1;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138543874;
      v36 = generationCopy;
      v37 = 2114;
      v38 = attributeCopy;
      v39 = 2114;
      v40 = nameCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Clearing referenced record with generation: %{public}@ for attribute: %{public}@ in record: %{public}@", buf, 0x20u);
    }
  }

  return v21;
}

- (void)applyAllPendingReferencesWithUpdater:(id)updater
{
  updaterCopy = updater;
  pendingReferences = self->_pendingReferences;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A594C;
  v7[3] = &unk_100135A68;
  v7[4] = self;
  v8 = updaterCopy;
  v6 = updaterCopy;
  [(NSMutableDictionary *)pendingReferences enumerateKeysAndObjectsUsingBlock:v7];
}

@end