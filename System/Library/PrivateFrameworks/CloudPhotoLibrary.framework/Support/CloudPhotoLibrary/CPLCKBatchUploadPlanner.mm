@interface CPLCKBatchUploadPlanner
- (BOOL)_shouldUpdateKeyOnCKRecord:(id)record;
- (BOOL)_shouldUpdateKeyOnSharedCKRecord:(id)record;
- (BOOL)didFetchPrivateCKRecord:(id)record forRecordWithRecordID:(id)d error:(id *)error;
- (BOOL)didFetchSharedCKRecord:(id)record forRecordWithRecordID:(id)d error:(id *)error;
- (BOOL)planRecordChangeUpload:(id)upload error:(id *)error;
- (CPLCKBatchUploadPlanner)initWithScopeProvider:(id)provider destinationZoneIdentification:(id)identification sharedZoneIdentification:(id)zoneIdentification propertyMapping:(id)mapping currentUserRecordID:(id)d targetMapping:(id)targetMapping fetchCache:(id)cache cplEnabledDate:(id)self0;
- (double)planProgess;
- (double)uploadedSize;
- (id)_recordIDFromScopedIdentifier:(id)identifier cloudKitScope:(id *)scope error:(id *)error;
- (id)_shareTodoForRecordWithScopedIdentifier:(id)identifier recordClass:(Class)class proposedContributorUserIdentifiers:(id)identifiers target:(id)target;
- (id)recordBuilderForKey:(id)key;
- (id)recordIDForResourcesOfRecordWithScopedIdentifier:(id)identifier cloudKitScope:(id *)scope error:(id *)error;
- (id)rejectedScopedIdentifierForRejectedCKRecordID:(id)d;
- (id)scopedIdentifierForCKRecordID:(id)d;
- (id)willUploadRecords;
- (id)willUploadSharedRecords;
- (void)_addCKRecordIDForResourcesUploadProgressTracking:(id)tracking size:(double)size;
- (void)_addRecordWithScopedIdentifierToShareTodos:(id)todos recordClass:(Class)class proposedContributorUserIdentifiers:(id)identifiers target:(id)target force:(BOOL)force;
- (void)_addRecordWithScopedIdentifierToUnshareTodos:(id)todos recordClass:(Class)class target:(id)target;
- (void)_copyPrivateMasterWithScopedIdentifier:(id)identifier masterTarget:(id)target uploadIndex:(unint64_t)index reason:(id)reason;
- (void)_deleteRecord;
- (void)_deleteSharedRecord;
- (void)_dontUnshareRecordWithScopedIdentifier:(id)identifier recordClass:(Class)class;
- (void)_noteMasterWillBeUploadedToPrivateZone:(id)zone;
- (void)_noteMasterWillBeUploadedToSharedZone:(id)zone;
- (void)_noteRecordWithScopedIdentifierWillMoveToSplitState:(id)state;
- (void)_resetPlannerState;
- (void)_willUpdateCKRecordWithID:(id)d onBehalfOfRecordWithScopedIdentifier:(id)identifier;
- (void)deleteCKRecordWithRecordID:(id)d;
- (void)deleteSharedCKRecordWithRecordID:(id)d;
- (void)didFinishUploadOfRecordsWithError:(id)error;
- (void)didFinishUploadOfSharedRecordsWithError:(id)error;
- (void)requestPrivateCKRecordWithRecordIDBeforeUpload:(id)upload fetchedBlock:(id)block reason:(id)reason;
- (void)requestRecordWithID:(id)d cloudKitScope:(id)scope forKey:(id)key completionHandler:(id)handler;
- (void)requestSharedCKRecordWithRecordIDBeforeUpload:(id)upload fetchedBlock:(id)block reason:(id)reason;
- (void)setCKAsset:(id)asset forKey:(id)key;
- (void)setCKReferenceWithScopedIdentifier:(id)identifier forKey:(id)key referenceAction:(unint64_t)action;
- (void)setEncryptedObject:(id)object forKey:(id)key validateClass:(Class)class;
- (void)setLegacyEncryptedObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)updateTargetMappingAfterUpload;
- (void)uploadCKRecord:(id)record forScopedIdentifier:(id)identifier triggeringKey:(id)key;
- (void)uploadOfRecordID:(id)d didProgress:(double)progress;
- (void)uploadSharedCKRecord:(id)record forScopedIdentifier:(id)identifier triggeringKey:(id)key;
@end

@implementation CPLCKBatchUploadPlanner

- (CPLCKBatchUploadPlanner)initWithScopeProvider:(id)provider destinationZoneIdentification:(id)identification sharedZoneIdentification:(id)zoneIdentification propertyMapping:(id)mapping currentUserRecordID:(id)d targetMapping:(id)targetMapping fetchCache:(id)cache cplEnabledDate:(id)self0
{
  providerCopy = provider;
  identificationCopy = identification;
  zoneIdentificationCopy = zoneIdentification;
  mappingCopy = mapping;
  dCopy = d;
  targetMappingCopy = targetMapping;
  cacheCopy = cache;
  dateCopy = date;
  v30.receiver = self;
  v30.super_class = CPLCKBatchUploadPlanner;
  v19 = [(CPLCKBatchUploadPlanner *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_scopeProvider, provider);
    objc_storeStrong(&v20->_destinationZoneIdentification, identification);
    objc_storeStrong(&v20->_sharedZoneIdentification, zoneIdentification);
    objc_storeStrong(&v20->_propertyMapping, mapping);
    objc_storeStrong(&v20->_currentUserRecordID, d);
    objc_storeStrong(&v20->_targetMapping, targetMapping);
    if (cacheCopy)
    {
      v21 = cacheCopy;
    }

    else
    {
      v21 = objc_alloc_init(CPLCKRecordFetchCache);
    }

    fetchCache = v20->_fetchCache;
    v20->_fetchCache = v21;

    objc_storeStrong(&v20->_cplEnabledDate, date);
  }

  return v20;
}

- (void)_noteRecordWithScopedIdentifierWillMoveToSplitState:(id)state
{
  stateCopy = state;
  scopedIdentifiersMovingToSplitState = self->_scopedIdentifiersMovingToSplitState;
  v8 = stateCopy;
  if (!scopedIdentifiersMovingToSplitState)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_scopedIdentifiersMovingToSplitState;
    self->_scopedIdentifiersMovingToSplitState = v6;

    stateCopy = v8;
    scopedIdentifiersMovingToSplitState = self->_scopedIdentifiersMovingToSplitState;
  }

  [(NSMutableSet *)scopedIdentifiersMovingToSplitState addObject:stateCopy];
}

- (void)_resetPlannerState
{
  currentRecordChange = self->_currentRecordChange;
  self->_currentRecordChange = 0;

  currentRecordTarget = self->_currentRecordTarget;
  self->_currentRecordTarget = 0;

  recordModificationDate = self->_recordModificationDate;
  self->_recordModificationDate = 0;

  simpleBuilder = self->_simpleBuilder;
  self->_simpleBuilder = 0;

  ckRecordToUpload = self->_ckRecordToUpload;
  self->_ckRecordToUpload = 0;

  v8 = self->_currentRecordTarget;
  self->_currentRecordTarget = 0;

  currentRecordID = self->_currentRecordID;
  self->_currentRecordID = 0;

  v10 = self->_recordModificationDate;
  self->_recordModificationDate = 0;

  sharedCKRecordToUpload = self->_sharedCKRecordToUpload;
  self->_sharedCKRecordToUpload = 0;

  sharedRecordID = self->_sharedRecordID;
  self->_sharedRecordID = 0;

  pendingCKRecordToUpload = self->_pendingCKRecordToUpload;
  self->_pendingCKRecordToUpload = 0;
}

- (void)_addCKRecordIDForResourcesUploadProgressTracking:(id)tracking size:(double)size
{
  trackingCopy = tracking;
  self->_uploadTotalSize = self->_uploadTotalSize + size;
  if (!self->_sizesPerRecordID)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    sizesPerRecordID = self->_sizesPerRecordID;
    self->_sizesPerRecordID = v6;
  }

  v8 = [NSNumber numberWithDouble:size];
  [(NSMutableDictionary *)self->_sizesPerRecordID setObject:v8 forKeyedSubscript:trackingCopy];
}

- (id)_shareTodoForRecordWithScopedIdentifier:(id)identifier recordClass:(Class)class proposedContributorUserIdentifiers:(id)identifiers target:(id)target
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  destinationZoneIdentification = self->_destinationZoneIdentification;
  targetCopy = target;
  scopedIdentifier = [targetCopy scopedIdentifier];
  identifier = [scopedIdentifier identifier];
  v16 = [(CPLCloudKitZoneIdentification *)destinationZoneIdentification recordIDWithRecordName:identifier];

  sharedZoneIdentification = self->_sharedZoneIdentification;
  otherScopedIdentifier = [targetCopy otherScopedIdentifier];

  identifier2 = [otherScopedIdentifier identifier];
  v20 = [(CPLCloudKitZoneIdentification *)sharedZoneIdentification recordIDWithRecordName:identifier2];

  if ([identifiersCopy count])
  {
    recordName = [(CKRecordID *)self->_currentUserRecordID recordName];
    v22 = [identifiersCopy containsObject:recordName];

    if ((v22 & 1) == 0)
    {
      v23 = [identifiersCopy mutableCopy];
      recordName2 = [(CKRecordID *)self->_currentUserRecordID recordName];
      [v23 addObject:recordName2];

      identifiersCopy = v23;
    }
  }

  v25 = [CPLCKShareRecordTodo alloc];
  recordModificationDate = [(CPLRecordChange *)self->_currentRecordChange recordModificationDate];
  if (recordModificationDate)
  {
    v28 = sub_100194CDC(&v25->super.isa, identifierCopy, class, v16, v20, identifiersCopy, recordModificationDate);
  }

  else
  {
    v27 = +[NSDate date];
    v28 = sub_100194CDC(&v25->super.isa, identifierCopy, class, v16, v20, identifiersCopy, v27);
  }

  return v28;
}

- (void)_dontUnshareRecordWithScopedIdentifier:(id)identifier recordClass:(Class)class
{
  identifierCopy = identifier;
  if (objc_opt_class() != class)
  {
    dontUnshareScopedIdentifier = self->_dontUnshareScopedIdentifier;
    if (!dontUnshareScopedIdentifier)
    {
      v7 = objc_alloc_init(NSMutableSet);
      v8 = self->_dontUnshareScopedIdentifier;
      self->_dontUnshareScopedIdentifier = v7;

      dontUnshareScopedIdentifier = self->_dontUnshareScopedIdentifier;
    }

    [(NSMutableSet *)dontUnshareScopedIdentifier addObject:identifierCopy];
  }
}

- (void)_addRecordWithScopedIdentifierToShareTodos:(id)todos recordClass:(Class)class proposedContributorUserIdentifiers:(id)identifiers target:(id)target force:(BOOL)force
{
  todosCopy = todos;
  identifiersCopy = identifiers;
  targetCopy = target;
  if ([targetCopy shouldUploadToOtherRecord] && !force)
  {
    sub_10019698C(todosCopy, self, class);
  }

  else
  {
    v15 = [(CPLCKUnsharePlan *)self->_unsharePlan hasShareTodoForScopedIdentifier:todosCopy];
    if (v15)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v16 = sub_1000035AC(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v33 = todosCopy;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Remove plan to unshare %@", buf, 0xCu);
        }
      }

      [(CPLCKUnsharePlan *)self->_unsharePlan removeShareTodoForScopedIdentifier:todosCopy];
      [(CPLCKBatchUploadPlanner *)self _dontUnshareRecordWithScopedIdentifier:todosCopy recordClass:class];
    }

    else if (![(CPLCKSharePlan *)self->_sharePlan hasShareTodoForScopedIdentifier:todosCopy])
    {
      if (!self->_sharePlan)
      {
        v17 = [[CPLCKSharePlan alloc] initWithPlanner:self];
        sharePlan = self->_sharePlan;
        self->_sharePlan = v17;
      }

      v19 = [(CPLCKBatchUploadPlanner *)self _shareTodoForRecordWithScopedIdentifier:todosCopy recordClass:class proposedContributorUserIdentifiers:identifiersCopy target:targetCopy];
      v20 = v19;
      if (v19)
      {
        [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:*(v19 + 24) onBehalfOfRecordWithScopedIdentifier:todosCopy];
        v21 = v20[4];
      }

      else
      {
        [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:0 onBehalfOfRecordWithScopedIdentifier:todosCopy];
        v21 = 0;
      }

      v22 = [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:v21 onBehalfOfRecordWithScopedIdentifier:todosCopy];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v23 = sub_1000035AC(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          engineScope = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification engineScope];
          if (v20)
          {
            v24 = v20[3];
          }

          else
          {
            v24 = 0;
          }

          v25 = v24;
          recordName = [v25 recordName];
          v30 = v25;
          if (v20)
          {
            v27 = v20[4];
          }

          else
          {
            v27 = 0;
          }

          v28 = v27;
          recordName2 = [v28 recordName];
          *buf = 138413058;
          v33 = todosCopy;
          v34 = 2112;
          v35 = engineScope;
          v36 = 2112;
          v37 = recordName;
          v38 = 2112;
          v39 = recordName2;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Will move %@ to %@ (%@ -> %@)", buf, 0x2Au);
        }
      }

      [(CPLCKSharePlan *)self->_sharePlan addShareTodo:v20, v30];
    }
  }
}

- (void)_deleteSharedRecord
{
  if (!self->_sharedRecordID)
  {
    sub_100196AF8(self, a2);
  }

  if ([(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification supportsDeletionOfRecord:self->_currentRecordChange scopeProvider:self])
  {
    if ([(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification supportsDirectDeletionOfRecord:self->_currentRecordChange scopeProvider:self])
    {
      sharedRecordID = self->_sharedRecordID;

      [(CPLCKBatchUploadPlanner *)self deleteSharedCKRecordWithRecordID:sharedRecordID];
    }

    else
    {
      currentRecordChange = self->_currentRecordChange;
      v5 = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification zone];
      v7 = [CKRecord cpl_expungedSharedRecordFromCPLRecordChange:currentRecordChange inZone:v5 target:self->_currentRecordTarget];

      scopedIdentifier = [(CPLRecordChange *)self->_currentRecordChange scopedIdentifier];
      [(CPLCKBatchUploadPlanner *)self uploadSharedCKRecord:v7 forScopedIdentifier:scopedIdentifier triggeringKey:@"isExpunged"];
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    sub_100196A58(&self->_currentRecordChange);
  }
}

- (void)requestSharedCKRecordWithRecordIDBeforeUpload:(id)upload fetchedBlock:(id)block reason:(id)reason
{
  uploadCopy = upload;
  blockCopy = block;
  reasonCopy = reason;
  p_requestedSharedCKRecordIDs = &self->_requestedSharedCKRecordIDs;
  requestedSharedCKRecordIDs = self->_requestedSharedCKRecordIDs;
  if (requestedSharedCKRecordIDs)
  {
    v13 = [(NSMutableDictionary *)requestedSharedCKRecordIDs objectForKeyedSubscript:uploadCopy];

    if (v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_100196BD4(&self->_requestedSharedCKRecordIDs);
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v15 = sub_1000035AC(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      currentRecordChange = self->_currentRecordChange;
      v18 = 138543874;
      v19 = uploadCopy;
      v20 = 2112;
      v21 = currentRecordChange;
      v22 = 2114;
      v23 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Will fetch shared %{public}@ for %@ before upload because %{public}@", &v18, 0x20u);
    }
  }

  v17 = objc_retainBlock(blockCopy);
  [(NSMutableDictionary *)*p_requestedSharedCKRecordIDs setObject:v17 forKeyedSubscript:uploadCopy];

LABEL_8:
}

- (BOOL)didFetchSharedCKRecord:(id)record forRecordWithRecordID:(id)d error:(id *)error
{
  recordCopy = record;
  dCopy = d;
  v10 = [(NSMutableDictionary *)self->_requestedSharedCKRecordIDs objectForKeyedSubscript:dCopy];
  v11 = v10;
  if (v10)
  {
    v12 = (*(v10 + 16))(v10, dCopy, recordCopy, error);
    [(NSMutableDictionary *)self->_requestedSharedCKRecordIDs removeObjectForKey:dCopy];
  }

  else
  {
    sub_100196C18(recordCopy, dCopy, error);
    v12 = 0;
  }

  return v12;
}

- (BOOL)didFetchPrivateCKRecord:(id)record forRecordWithRecordID:(id)d error:(id *)error
{
  recordCopy = record;
  dCopy = d;
  v10 = [(NSMutableDictionary *)self->_requestedPrivateCKRecordIDs objectForKeyedSubscript:dCopy];
  v11 = v10;
  if (v10)
  {
    v12 = (*(v10 + 16))(v10, dCopy, recordCopy, error);
    [(NSMutableDictionary *)self->_requestedPrivateCKRecordIDs removeObjectForKey:dCopy];
  }

  else
  {
    sub_100196C18(recordCopy, dCopy, error);
    v12 = 0;
  }

  return v12;
}

- (double)uploadedSize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  progressSizesPerRecordID = self->_progressSizesPerRecordID;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100032578;
  v5[3] = &unk_1002739A0;
  v5[4] = &v6;
  [(NSMutableDictionary *)progressSizesPerRecordID enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)planProgess
{
  result = 0.0;
  if (self->_uploadTotalSize > 0.0)
  {
    [(CPLCKBatchUploadPlanner *)self uploadedSize];
    return fmin(v4 / self->_uploadTotalSize, 1.0);
  }

  return result;
}

- (void)uploadOfRecordID:(id)d didProgress:(double)progress
{
  dCopy = d;
  v7 = [(NSMutableDictionary *)self->_sizesPerRecordID objectForKeyedSubscript:?];
  v8 = v7;
  if (v7)
  {
    [v7 doubleValue];
    if (v9 > 0.0)
    {
      v10 = v9;
      if (!self->_dateOfFirstUploadProgress)
      {
        v11 = +[NSDate date];
        dateOfFirstUploadProgress = self->_dateOfFirstUploadProgress;
        self->_dateOfFirstUploadProgress = v11;
      }

      if (!self->_progressSizesPerRecordID)
      {
        v13 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSMutableDictionary count](self->_sizesPerRecordID, "count")}];
        progressSizesPerRecordID = self->_progressSizesPerRecordID;
        self->_progressSizesPerRecordID = v13;
      }

      progress = [NSNumber numberWithDouble:v10 * progress];
      [(NSMutableDictionary *)self->_progressSizesPerRecordID setObject:progress forKeyedSubscript:dCopy];
    }
  }

  v16 = [(CPLCKBatchUploadPlanner *)self scopedIdentifierForCKRecordID:dCopy];
  if (!v16)
  {
    sub_100196CF8(a2, self, dCopy);
  }

  v17 = v16;
  if (self->_progressHandler && [(NSMutableSet *)self->_scopedIdentifiersNeedingToCallProgressHandler containsObject:v16])
  {
    progressCopy = progress;
    (*(self->_progressHandler + 2))(progressCopy);
  }
}

- (void)didFinishUploadOfRecordsWithError:(id)error
{
  dateOfFirstUploadProgress = self->_dateOfFirstUploadProgress;
  if (dateOfFirstUploadProgress)
  {
    [(NSDate *)dateOfFirstUploadProgress timeIntervalSinceNow];
    self->_totalDurationOfUpload = self->_totalDurationOfUpload + fmax(-v5, 0.0);
    v6 = self->_dateOfFirstUploadProgress;
    self->_dateOfFirstUploadProgress = 0;
  }

  uploadContext = self->_uploadContext;
  self->_uploadContext = 0;
}

- (void)didFinishUploadOfSharedRecordsWithError:(id)error
{
  dateOfFirstUploadProgress = self->_dateOfFirstUploadProgress;
  if (dateOfFirstUploadProgress)
  {
    [(NSDate *)dateOfFirstUploadProgress timeIntervalSinceNow];
    self->_totalDurationOfUpload = self->_totalDurationOfUpload + fmax(-v5, 0.0);
    v6 = self->_dateOfFirstUploadProgress;
    self->_dateOfFirstUploadProgress = 0;
  }

  sharedUploadContext = self->_sharedUploadContext;
  self->_sharedUploadContext = 0;
}

- (void)updateTargetMappingAfterUpload
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_scopedIdentifiersMovingToSplitState;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:v8, v14];
        v10 = [CPLRecordTarget alloc];
        otherScopedIdentifier = [v9 otherScopedIdentifier];
        v12 = [v10 initWithScopedIdentifier:v8 otherScopedIdentifier:otherScopedIdentifier targetState:3];

        [(CPLRecordTargetMapping *)self->_targetMapping setTarget:v12 forRecordWithScopedIdentifier:v8];
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  requestedSharedCKRecordIDs = self->_requestedSharedCKRecordIDs;
  self->_requestedSharedCKRecordIDs = 0;
}

- (id)scopedIdentifierForCKRecordID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_ckRecordIDToScopedIdentifier objectForKeyedSubscript:dCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(CPLCloudKitScopeProvider *)self->_scopeProvider scopedIdentifierForCKRecordID:dCopy];
  }

  v8 = v7;

  return v8;
}

- (id)rejectedScopedIdentifierForRejectedCKRecordID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_ckRecordIDToRejectedScopedIdentifier objectForKeyedSubscript:dCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(CPLCKBatchUploadPlanner *)self scopedIdentifierForCKRecordID:dCopy];
  }

  v8 = v7;

  return v8;
}

- (void)_noteMasterWillBeUploadedToPrivateZone:(id)zone
{
  zoneCopy = zone;
  mastersUploadedToPrivateZone = self->_mastersUploadedToPrivateZone;
  v8 = zoneCopy;
  if (!mastersUploadedToPrivateZone)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_mastersUploadedToPrivateZone;
    self->_mastersUploadedToPrivateZone = v6;

    zoneCopy = v8;
    mastersUploadedToPrivateZone = self->_mastersUploadedToPrivateZone;
  }

  [(NSMutableSet *)mastersUploadedToPrivateZone addObject:zoneCopy];
  [(NSMutableDictionary *)self->_mastersNotYetUploadedToPrivateZone removeObjectForKey:v8];
}

- (void)_noteMasterWillBeUploadedToSharedZone:(id)zone
{
  zoneCopy = zone;
  mastersUploadedToSharedZone = self->_mastersUploadedToSharedZone;
  v8 = zoneCopy;
  if (!mastersUploadedToSharedZone)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_mastersUploadedToSharedZone;
    self->_mastersUploadedToSharedZone = v6;

    zoneCopy = v8;
    mastersUploadedToSharedZone = self->_mastersUploadedToSharedZone;
  }

  [(NSMutableSet *)mastersUploadedToSharedZone addObject:zoneCopy];
  [(NSMutableDictionary *)self->_mastersNotYetUploadedToSharedZone removeObjectForKey:v8];
}

- (BOOL)_shouldUpdateKeyOnCKRecord:(id)record
{
  recordCopy = record;
  if ([(CPLCKRecordPropertyMapping *)self->_propertyMapping isKeyReadOnly:recordCopy recordClass:[(CPLRecordChange *)self->_currentRecordChange recordClass]])
  {
    goto LABEL_2;
  }

  if (!self->_sharedZoneIdentification || ![(CPLRecordTarget *)self->_currentRecordTarget shouldUploadToOtherRecord])
  {
LABEL_8:
    if (self->_ckRecordToUpload)
    {
LABEL_68:
      v6 = 1;
      goto LABEL_69;
    }

    pendingCKRecordToUpload = self->_pendingCKRecordToUpload;
    if (pendingCKRecordToUpload)
    {
      v8 = pendingCKRecordToUpload;
      ckRecordToUpload = self->_ckRecordToUpload;
      self->_ckRecordToUpload = v8;
    }

    else
    {
      currentRecordChange = self->_currentRecordChange;
      ckRecordToUpload = [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification zone];
      v11 = CPLBaseCKRecordFromCPLRecordChange(currentRecordChange, ckRecordToUpload, self->_currentRecordTarget);
      v12 = self->_ckRecordToUpload;
      self->_ckRecordToUpload = v11;
    }

    v13 = self->_pendingCKRecordToUpload;
    self->_pendingCKRecordToUpload = 0;

    if ([(CPLRecordChange *)self->_currentRecordChange isMasterChange])
    {
      scopedIdentifier = [(CPLRecordChange *)self->_currentRecordChange scopedIdentifier];
      [(CPLCKBatchUploadPlanner *)self _noteMasterWillBeUploadedToPrivateZone:scopedIdentifier];
    }

    if (self->_cplEnabledDate && [(CPLRecordChange *)self->_currentRecordChange isAssetChange])
    {
      [(CPLRecordChange *)self->_currentRecordChange setMostRecentAddedDateOnCKRecord:self->_ckRecordToUpload withCPLEnabledDate:self->_cplEnabledDate];
    }

    if ([(CPLRecordChange *)self->_currentRecordChange isFullRecord])
    {
      [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification setupRootOnRecord:self->_ckRecordToUpload];
    }

    if (self->_recordModificationDate && [(CPLRecordChange *)self->_currentRecordChange supportsRecordModificationDate])
    {
      [(CKRecord *)self->_ckRecordToUpload setObject:self->_recordModificationDate forKey:@"recordModificationDate"];
    }

    v15 = self->_ckRecordToUpload;
    scopedIdentifier2 = [(CPLRecordChange *)self->_currentRecordChange scopedIdentifier];
    [(CPLCKBatchUploadPlanner *)self uploadCKRecord:v15 forScopedIdentifier:scopedIdentifier2 triggeringKey:recordCopy];

    if (!self->_sharedZoneIdentification)
    {
LABEL_67:
      v69 = [[CPLSimpleCKRecordBuilder alloc] initWithBaseCKRecord:self->_ckRecordToUpload scopeProvider:self currentUserRecordID:self->_currentUserRecordID targetMapping:self->_targetMapping];
      simpleBuilder = self->_simpleBuilder;
      self->_simpleBuilder = v69;

      goto LABEL_68;
    }

    if ([(CPLRecordTarget *)self->_currentRecordTarget targetState]== 2)
    {
      v115 = a2;
      [(CPLCKBatchUploadPlanner *)self updatePrivateRecord:self->_ckRecordToUpload sharedToRecordWithID:self->_sharedRecordID];
      if ([(CPLRecordChange *)self->_currentRecordChange isEPPRecord])
      {
        [(CKRecord *)self->_ckRecordToUpload cpl_markRecordAsEPP];
      }

      scopedIdentifier3 = [(CPLRecordTarget *)self->_currentRecordTarget scopedIdentifier];
      [(CPLCKBatchUploadPlanner *)self _noteRecordWithScopedIdentifierWillMoveToSplitState:scopedIdentifier3];

      if ([(CPLCKRecordPropertyMapping *)self->_propertyMapping doesRecordClassSupportSparseRecords:[(CPLRecordChange *)self->_currentRecordChange recordClass]])
      {
        v18 = @"creating private sparse record from shared record";
      }

      else
      {
        v18 = @"shared record needs private properties to be uploaded but can't be sparse";
      }

      otherScopedIdentifier = [(CPLRecordTarget *)self->_currentRecordTarget otherScopedIdentifier];
      identifier = [otherScopedIdentifier identifier];

      v21 = [CKRecordID alloc];
      zoneID = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification zoneID];
      v23 = [v21 initWithRecordName:identifier zoneID:zoneID];

      recordClass = [(CPLRecordChange *)self->_currentRecordChange recordClass];
      v25 = [CPLCKSplitCopyHelper alloc];
      v26 = self->_ckRecordToUpload;
      databaseScope = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification databaseScope];
      recordID = [(CKRecord *)self->_ckRecordToUpload recordID];
      v29 = [(CPLCKSplitCopyHelper *)v25 initWithBaseCKRecord:v26 sourceRecordID:v23 fromPrivateRecord:0 recordClass:recordClass sourceDatabaseScope:databaseScope destinationRecordID:recordID planner:self];

      v132[0] = _NSConcreteStackBlock;
      v132[1] = 3221225472;
      v132[2] = sub_100195B0C;
      v132[3] = &unk_1002739C8;
      a2 = v115;
      selfCopy = self;
      v135 = v115;
      v133 = v29;
      v30 = v29;
      [(CPLCKBatchUploadPlanner *)self requestSharedCKRecordWithRecordIDBeforeUpload:v23 fetchedBlock:v132 reason:v18];
    }

    isAssetChange = [(CPLRecordChange *)self->_currentRecordChange isAssetChange];
    v32 = self->_currentRecordChange;
    if (!isAssetChange)
    {
      relatedScopedIdentifier = [(CPLRecordChange *)v32 relatedScopedIdentifier];
      if (!relatedScopedIdentifier)
      {
LABEL_66:

        goto LABEL_67;
      }

      v38 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:relatedScopedIdentifier];
      if (v38)
      {
        masterScopedIdentifier = v38;
        if ([v38 targetState] != 2 || (-[NSMutableSet containsObject:](self->_scopedIdentifiersMovingToSplitState, "containsObject:", relatedScopedIdentifier) & 1) != 0)
        {
          goto LABEL_65;
        }

        otherScopedIdentifier2 = [masterScopedIdentifier otherScopedIdentifier];
        identifier2 = [otherScopedIdentifier2 identifier];

        v42 = [CKRecordID alloc];
        zoneID2 = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification zoneID];
        v113 = identifier2;
        v44 = [v42 initWithRecordName:identifier2 zoneID:zoneID2];

        relatedRecordClass = [(CPLRecordChange *)self->_currentRecordChange relatedRecordClass];
        v45 = [relatedRecordClass newRecordWithScopedIdentifier:relatedScopedIdentifier];
        v46 = [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification zone];
        v47 = CPLBaseCKRecordFromCPLRecordChange(v45, v46, masterScopedIdentifier);

        [(CPLCKBatchUploadPlanner *)self updatePrivateRecord:v47 sharedToRecordWithID:v44];
        recordID2 = [v47 recordID];
        [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:recordID2 onBehalfOfRecordWithScopedIdentifier:relatedScopedIdentifier];

        [(NSMutableArray *)self->_ckRecordsToUpload insertObject:v47 atIndex:[(NSMutableArray *)self->_ckRecordsToUpload count]- 1];
        [(CPLCKBatchUploadPlanner *)self _noteRecordWithScopedIdentifierWillMoveToSplitState:relatedScopedIdentifier];
        v49 = self->_recordModificationDate;
        if (v49)
        {
          [v47 setObject:v49 forKeyedSubscript:@"recordModificationDate"];
        }

        if ([v45 isAssetChange])
        {
          [v45 setMostRecentAddedDateOnCKRecord:v47 withCPLEnabledDate:self->_cplEnabledDate];
        }

        v108 = v49;
        v116 = a2;
        if ([(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification supportsDeletionOfRecord:v45 scopeProvider:self]&& ![(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification supportsDirectDeletionOfRecord:v45 scopeProvider:self])
        {
          [v47 setObject:&__kCFBooleanFalse forKeyedSubscript:@"isExpunged"];
          v50 = [NSNumber numberWithBool:[(CPLRecordChange *)self->_currentRecordChange inTrash]];
          [v47 setObject:v50 forKeyedSubscript:@"isDeleted"];
        }

        v51 = [CPLCKSplitCopyHelper alloc];
        databaseScope2 = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification databaseScope];
        recordID3 = [v47 recordID];
        v54 = [(CPLCKSplitCopyHelper *)v51 initWithBaseCKRecord:v47 sourceRecordID:v44 fromPrivateRecord:0 recordClass:relatedRecordClass sourceDatabaseScope:databaseScope2 destinationRecordID:recordID3 planner:self];

        v119[0] = _NSConcreteStackBlock;
        v119[1] = 3221225472;
        v119[2] = sub_100195D38;
        v119[3] = &unk_1002739C8;
        selfCopy2 = self;
        v122 = v116;
        v120 = v54;
        v55 = v54;
        [(CPLCKBatchUploadPlanner *)self requestSharedCKRecordWithRecordIDBeforeUpload:v44 fetchedBlock:v119 reason:@"shared related record needs to be in private zone"];

        goto LABEL_51;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v101 = sub_1000035AC(0);
        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          relatedRecordClass2 = [(CPLRecordChange *)self->_currentRecordChange relatedRecordClass];
          v103 = self->_currentRecordChange;
          *buf = 138412802;
          v137 = relatedRecordClass2;
          v138 = 2112;
          v139 = relatedScopedIdentifier;
          v140 = 2112;
          v141 = v103;
          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_ERROR, "Target for <%@ %@> related to %@ should be known here", buf, 0x20u);
        }
      }

      v104 = +[NSAssertionHandler currentHandler];
      v105 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKBatchUploadPlanner.m"];
      [v104 handleFailureInMethod:a2 object:self file:v105 lineNumber:932 description:{@"Target for <%@ %@> related to %@ should be known here", -[CPLRecordChange relatedRecordClass](self->_currentRecordChange, "relatedRecordClass"), relatedScopedIdentifier, self->_currentRecordChange}];
LABEL_104:

      abort();
    }

    if (![(CPLRecordChange *)v32 hasChangeType:64])
    {
      goto LABEL_57;
    }

    v33 = self->_currentRecordChange;
    scopeIdentifier = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification scopeIdentifier];
    LOBYTE(v33) = [(CPLRecordChange *)v33 isSharedInScopeWithIdentifier:scopeIdentifier];

    if (v33)
    {
      if (![(CPLRecordChange *)self->_currentRecordChange _relatedRecordShouldBeShared]|| ([(CPLRecordTarget *)self->_currentRecordTarget shouldUploadToOtherRecord]& 1) != 0)
      {
        goto LABEL_57;
      }

      relatedScopedIdentifier2 = [(CPLRecordChange *)self->_currentRecordChange relatedScopedIdentifier];
      if (!relatedScopedIdentifier2 || ([(NSMutableSet *)self->_mastersUploadedToPrivateZone containsObject:relatedScopedIdentifier2]& 1) != 0)
      {
        v36 = relatedScopedIdentifier2;
LABEL_38:

        goto LABEL_57;
      }

      v85 = [(NSMutableDictionary *)self->_mastersNotYetUploadedToPrivateZone objectForKeyedSubscript:relatedScopedIdentifier2];
      v86 = v85;
      if (v85)
      {
        if (([v85 isFullRecord] & 1) == 0)
        {
          sub_100196DC4(a2, self, v86);
        }

        v114 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:relatedScopedIdentifier2];
        if (!v114)
        {
          sub_100197008(a2, self, v86);
        }

        v87 = [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification zone];
        v88 = CPLBaseCKRecordFromCPLRecordChange(v86, v87, v114);

        scopedIdentifier5 = v88;
        v89 = [[CPLSimpleCKRecordBuilder alloc] initWithBaseCKRecord:v88 scopeProvider:self currentUserRecordID:self->_currentUserRecordID targetMapping:self->_targetMapping];
        sharedCKRecordsToUpload = self->_sharedCKRecordsToUpload;
        v130[0] = _NSConcreteStackBlock;
        v130[1] = 3221225472;
        v130[2] = sub_100033C54;
        v130[3] = &unk_1002739F0;
        v36 = relatedScopedIdentifier2;
        v131 = v36;
        v91 = [(NSMutableArray *)sharedCKRecordsToUpload indexOfObjectWithOptions:2 passingTest:v130];
        if (v91 != 0x7FFFFFFFFFFFFFFFLL)
        {
          sub_100196E90(v36, &self->_sharedCKRecordsToUpload, v91);
        }

        v92 = objc_alloc_init(CPLCloudKitResourceCountAndSize);
        v129 = 0;
        v111 = v89;
        v93 = [v86 prepareWithCKRecordBuilder:v89 resourceCountAndSize:v92 scopeProvider:self error:&v129];
        v94 = v129;
        v95 = v94;
        if (v93)
        {
          if (self->_metric)
          {
            if (sub_1001941F8(v92) || sub_100194228(v92))
            {
              [(CPLCloudKitUploadMetric *)self->_metric setItemCount:[(CPLCloudKitUploadMetric *)self->_metric itemCount]+ 1];
              [(CPLCloudKitUploadMetric *)self->_metric setUploadSize:[(CPLCloudKitUploadMetric *)self->_metric uploadSize]+ sub_1001941F8(v92)];
              [(CPLCloudKitUploadMetric *)self->_metric setReferencedResourcesSize:[(CPLCloudKitUploadMetric *)self->_metric referencedResourcesSize]+ sub_100194228(v92)];
              v94 = [(CPLCloudKitUploadMetric *)self->_metric setReferencedResourcesCount:[(CPLCloudKitUploadMetric *)self->_metric referencedResourcesCount]+ sub_100194210(v92)];
            }

            else
            {
              v94 = [(CPLCloudKitUploadMetric *)self->_metric setOtherItemCount:[(CPLCloudKitUploadMetric *)self->_metric otherItemCount]+ 1];
            }
          }

          if ((_CPLSilentLogging & 1) == 0)
          {
            v96 = sub_1000035AC(v94);
            if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
            {
              recordID4 = [scopedIdentifier5 recordID];
              v109 = v95;
              recordClass2 = [(CPLRecordChange *)self->_currentRecordChange recordClass];
              [(CPLRecordChange *)self->_currentRecordChange scopedIdentifier];
              v99 = v118 = a2;
              *buf = 138543874;
              v137 = recordID4;
              v138 = 2112;
              v139 = recordClass2;
              v95 = v109;
              v140 = 2112;
              v141 = v99;
              _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "Will update %{public}@ (triggered by sharing <%@ %@>)", buf, 0x20u);

              a2 = v118;
            }
          }

          [(CPLCKBatchUploadPlanner *)self _noteMasterWillBeUploadedToPrivateZone:v36];
          [(NSMutableArray *)self->_ckRecordsToUpload insertObject:scopedIdentifier5 atIndex:[(NSMutableArray *)self->_ckRecordsToUpload count]- 1];
          recordID5 = [scopedIdentifier5 recordID];
          [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:recordID5 onBehalfOfRecordWithScopedIdentifier:v36];

          goto LABEL_38;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          sub_100196F60(v86, v94);
        }
      }

      v67 = 0;
      v68 = @"asset/master needs to be uploaded to private zone first before being shared";
    }

    else
    {
      if (([(CPLRecordTarget *)self->_currentRecordTarget shouldUploadToOtherRecord]& 1) != 0)
      {
LABEL_57:
        if (![(CPLRecordChange *)self->_currentRecordChange hasChangeType:2])
        {
          goto LABEL_67;
        }

        if (([(CPLRecordTarget *)self->_currentRecordTarget shouldUploadToOtherRecord]& 1) != 0)
        {
          goto LABEL_67;
        }

        relatedScopedIdentifier3 = [(CPLRecordChange *)self->_currentRecordChange relatedScopedIdentifier];
        if (!relatedScopedIdentifier3)
        {
          goto LABEL_67;
        }

        v64 = relatedScopedIdentifier3;
        v65 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:relatedScopedIdentifier3];
        targetState = [v65 targetState];

        if (targetState != 2)
        {
          goto LABEL_67;
        }

        v67 = 1;
        v68 = @"private asset is pointing to indirect master";
        goto LABEL_63;
      }

      v67 = 1;
      v68 = @"private asset needs to copy shared master back to private zone";
    }

LABEL_63:
    relatedScopedIdentifier = self->_currentRecordChange;
    masterScopedIdentifier = [(CPLRecordChange *)relatedScopedIdentifier masterScopedIdentifier];
    if (!masterScopedIdentifier || ([(NSMutableSet *)self->_mastersUploadedToPrivateZone containsObject:masterScopedIdentifier]& 1) != 0)
    {
      goto LABEL_65;
    }

    if (v67)
    {
      [(CPLCKBatchUploadPlanner *)self _noteRecordWithScopedIdentifierWillMoveToSplitState:masterScopedIdentifier];
    }

    [(CPLCKUnsharePlan *)self->_unsharePlan removeShareTodoForScopedIdentifier:masterScopedIdentifier];
    v72 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:masterScopedIdentifier];
    if (v72)
    {
      v56 = v72;
      if ([v72 targetState] != 2)
      {
        goto LABEL_52;
      }

      v73 = [CKRecordID alloc];
      scopedIdentifier4 = [v56 scopedIdentifier];
      [scopedIdentifier4 identifier];
      v76 = v75 = v56;
      zoneID3 = [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification zoneID];
      v117 = [v73 initWithRecordName:v76 zoneID:zoneID3];

      v78 = [CKRecordID alloc];
      v113 = v75;
      otherScopedIdentifier3 = [v75 otherScopedIdentifier];
      identifier3 = [otherScopedIdentifier3 identifier];
      identifier4 = identifier3;
      if (!identifier3)
      {
        scopedIdentifier5 = [v113 scopedIdentifier];
        identifier4 = [scopedIdentifier5 identifier];
      }

      zoneID4 = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification zoneID];
      v83 = [v78 initWithRecordName:identifier4 zoneID:zoneID4];

      if (!identifier3)
      {
      }

      v84 = [(NSMutableArray *)self->_ckRecordsToUpload count]- 1;
      [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:v117 onBehalfOfRecordWithScopedIdentifier:masterScopedIdentifier];
      [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:v83 onBehalfOfRecordWithScopedIdentifier:masterScopedIdentifier];
      v123[0] = _NSConcreteStackBlock;
      v123[1] = 3221225472;
      v123[2] = sub_100033CC8;
      v123[3] = &unk_100273A18;
      v123[4] = self;
      v124 = masterScopedIdentifier;
      v125 = v83;
      v126 = v117;
      v127 = v68;
      v128 = v84;
      v45 = v117;
      v44 = v83;
      [(CPLCKBatchUploadPlanner *)self requestSharedCKRecordWithRecordIDBeforeUpload:v44 fetchedBlock:v123 reason:v68];

LABEL_51:
      v56 = v113;
LABEL_52:

LABEL_65:
      goto LABEL_66;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v106 = sub_1000035AC(0);
      if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v137 = masterScopedIdentifier;
        v138 = 2112;
        v139 = relatedScopedIdentifier;
        _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "Missing target for %@ to upload %@", buf, 0x16u);
      }
    }

    v104 = +[NSAssertionHandler currentHandler];
    v105 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKBatchUploadPlanner.m"];
    [v104 handleFailureInMethod:a2 object:self file:v105 lineNumber:889 description:{@"Missing target for %@ to upload %@", masterScopedIdentifier, relatedScopedIdentifier, v107}];
    goto LABEL_104;
  }

  if ([(CPLRecordTarget *)self->_currentRecordTarget targetState]== 2 && !self->_ckRecordToUpload)
  {
    if (![(CPLCKRecordPropertyMapping *)self->_propertyMapping shouldSplitIndirectRecordForKey:recordCopy recordClass:[(CPLRecordChange *)self->_currentRecordChange recordClass]])
    {
      if ([(CPLCKRecordPropertyMapping *)self->_propertyMapping shouldUpdateKeyOnPrivateRecord:recordCopy recordClass:[(CPLRecordChange *)self->_currentRecordChange recordClass]])
      {
        v57 = self->_currentRecordChange;
        v58 = [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification zone];
        v59 = CPLBaseCKRecordFromCPLRecordChange(v57, v58, self->_currentRecordTarget);
        v60 = self->_pendingCKRecordToUpload;
        self->_pendingCKRecordToUpload = v59;

        v61 = [[CPLSimpleCKRecordBuilder alloc] initWithBaseCKRecord:self->_pendingCKRecordToUpload scopeProvider:self currentUserRecordID:self->_currentUserRecordID targetMapping:self->_targetMapping];
        v62 = self->_simpleBuilder;
        self->_simpleBuilder = v61;
      }

      goto LABEL_2;
    }

    goto LABEL_8;
  }

  if ([(CPLCKRecordPropertyMapping *)self->_propertyMapping shouldUpdateKeyOnPrivateRecord:recordCopy recordClass:[(CPLRecordChange *)self->_currentRecordChange recordClass]])
  {
    goto LABEL_8;
  }

LABEL_2:
  v6 = 0;
LABEL_69:

  return v6;
}

- (void)_copyPrivateMasterWithScopedIdentifier:(id)identifier masterTarget:(id)target uploadIndex:(unint64_t)index reason:(id)reason
{
  identifierCopy = identifier;
  targetCopy = target;
  reasonCopy = reason;
  v13 = [CKRecordID alloc];
  otherScopedIdentifier = [targetCopy otherScopedIdentifier];
  identifier = [otherScopedIdentifier identifier];
  identifier2 = identifier;
  if (!identifier)
  {
    scopedIdentifier = [targetCopy scopedIdentifier];
    identifier2 = [scopedIdentifier identifier];
  }

  v17 = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification zoneID:a2];
  v18 = [v13 initWithRecordName:identifier2 zoneID:v17];

  if (!identifier)
  {
  }

  v19 = [CKRecordID alloc];
  scopedIdentifier2 = [targetCopy scopedIdentifier];
  identifier3 = [scopedIdentifier2 identifier];
  zoneID = [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification zoneID];
  v23 = [v19 initWithRecordName:identifier3 zoneID:zoneID];

  [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:v18 onBehalfOfRecordWithScopedIdentifier:identifierCopy];
  [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:v23 onBehalfOfRecordWithScopedIdentifier:identifierCopy];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100034058;
  v33[3] = &unk_100273A40;
  v33[4] = self;
  v34 = identifierCopy;
  v35 = targetCopy;
  v36 = v18;
  v37 = v23;
  v38 = reasonCopy;
  v39 = v30;
  v40 = v32;
  v24 = reasonCopy;
  v25 = v23;
  v26 = v18;
  v27 = targetCopy;
  v28 = identifierCopy;
  [(CPLCKBatchUploadPlanner *)self requestPrivateCKRecordWithRecordIDBeforeUpload:v25 fetchedBlock:v33 reason:v24];
}

- (BOOL)_shouldUpdateKeyOnSharedCKRecord:(id)record
{
  recordCopy = record;
  if (![(CPLCKRecordPropertyMapping *)self->_propertyMapping isKeyReadOnly:recordCopy recordClass:[(CPLRecordChange *)self->_currentRecordChange recordClass]]&& self->_sharedZoneIdentification && [(CPLRecordTarget *)self->_currentRecordTarget shouldUploadToOtherRecord]&& [(CPLCKRecordPropertyMapping *)self->_propertyMapping shouldUpdateKeyOnSharedRecord:recordCopy recordClass:[(CPLRecordChange *)self->_currentRecordChange recordClass]])
  {
    if (!self->_sharedCKRecordToUpload)
    {
      currentRecordChange = self->_currentRecordChange;
      v9 = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification zone];
      v10 = CPLBaseSharedCKRecordFromCPLRecordChange(currentRecordChange, v9, self->_currentRecordTarget);
      sharedCKRecordToUpload = self->_sharedCKRecordToUpload;
      self->_sharedCKRecordToUpload = v10;

      v12 = [[CPLSimpleCKRecordBuilder alloc] initWithBaseCKRecord:self->_sharedCKRecordToUpload scopeProvider:self currentUserRecordID:self->_currentUserRecordID targetMapping:self->_targetMapping];
      simpleBuilderForSharedCKRecord = self->_simpleBuilderForSharedCKRecord;
      self->_simpleBuilderForSharedCKRecord = v12;

      if ([(CPLRecordChange *)self->_currentRecordChange isMasterChange])
      {
        scopedIdentifier = [(CPLRecordChange *)self->_currentRecordChange scopedIdentifier];
        [(CPLCKBatchUploadPlanner *)self _noteMasterWillBeUploadedToSharedZone:scopedIdentifier];
      }

      recordModificationDate = self->_recordModificationDate;
      if (recordModificationDate)
      {
        [self->_sharedCKRecordToUpload setObject:recordModificationDate forKey:@"recordModificationDate"];
      }

      v16 = self->_sharedCKRecordToUpload;
      scopedIdentifier2 = [(CPLRecordChange *)self->_currentRecordChange scopedIdentifier];
      [(CPLCKBatchUploadPlanner *)self uploadSharedCKRecord:v16 forScopedIdentifier:scopedIdentifier2 triggeringKey:recordCopy];

      if (self->_sharedZoneIdentification)
      {
        if ([(CPLRecordChange *)self->_currentRecordChange isAssetChange])
        {
          if ([(CPLRecordChange *)self->_currentRecordChange hasChangeType:2])
          {
            if ([(CPLRecordTarget *)self->_currentRecordTarget shouldUploadToOtherRecord])
            {
              relatedScopedIdentifier = [(CPLRecordChange *)self->_currentRecordChange relatedScopedIdentifier];
              if (relatedScopedIdentifier)
              {
                v19 = relatedScopedIdentifier;
                v20 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:relatedScopedIdentifier];
                shouldUploadToOtherRecord = [v20 shouldUploadToOtherRecord];

                if ((shouldUploadToOtherRecord & 1) == 0)
                {
                  v22 = self->_currentRecordChange;
                  masterScopedIdentifier = [(CPLRecordChange *)v22 masterScopedIdentifier];
                  if (masterScopedIdentifier && ([(NSMutableSet *)self->_mastersUploadedToPrivateZone containsObject:masterScopedIdentifier]& 1) == 0)
                  {
                    [(CPLCKBatchUploadPlanner *)self _noteRecordWithScopedIdentifierWillMoveToSplitState:masterScopedIdentifier];
                    v24 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:masterScopedIdentifier];
                    if (!v24)
                    {
                      if ((_CPLSilentLogging & 1) == 0)
                      {
                        v26 = sub_1000035AC(0);
                        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412546;
                          v30 = masterScopedIdentifier;
                          v31 = 2112;
                          v32 = v22;
                          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Missing target for %@ to upload %@", buf, 0x16u);
                        }
                      }

                      v27 = +[NSAssertionHandler currentHandler];
                      v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKBatchUploadPlanner.m"];
                      [v27 handleFailureInMethod:a2 object:self file:v28 lineNumber:1113 description:{@"Missing target for %@ to upload %@", masterScopedIdentifier, v22}];

                      abort();
                    }

                    v25 = v24;
                    if (([v24 shouldUploadToOtherRecord] & 1) == 0)
                    {
                      [(CPLCKBatchUploadPlanner *)self _copyPrivateMasterWithScopedIdentifier:masterScopedIdentifier masterTarget:v25 uploadIndex:[(NSMutableArray *)self->_sharedCKRecordsToUpload count]- 1 reason:@"shared asset is pointing to direct master"];
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v9 = keyCopy;
  if (!self->_recordModificationDate && [keyCopy isEqualToString:@"recordModificationDate"])
  {
    if (!objectCopy)
    {
      goto LABEL_16;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_1001971D8(a2, self, objectCopy);
    }

    objc_storeStrong(&self->_recordModificationDate, object);
    ckRecordToUpload = self->_ckRecordToUpload;
    if (ckRecordToUpload)
    {
      [(CKRecord *)ckRecordToUpload setObject:objectCopy forKey:v9];
    }

    sharedCKRecordToUpload = self->_sharedCKRecordToUpload;
    if (!sharedCKRecordToUpload)
    {
      goto LABEL_16;
    }

LABEL_15:
    [sharedCKRecordToUpload setObject:objectCopy forKey:v9];
    goto LABEL_16;
  }

  if ([(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnCKRecord:v9])
  {
    [(CPLSimpleCKRecordBuilder *)self->_simpleBuilder setObject:objectCopy forKey:v9];
  }

  if ([(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnSharedCKRecord:v9])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v13 = self->_sharedCKRecordToUpload;
    if (isKindOfClass)
    {
      cplCopyCleanAsset = [objectCopy cplCopyCleanAsset];
      [(CKRecord *)v13 setObject:cplCopyCleanAsset forKey:v9];

      goto LABEL_16;
    }

    sharedCKRecordToUpload = v13;
    goto LABEL_15;
  }

LABEL_16:
}

- (void)setEncryptedObject:(id)object forKey:(id)key validateClass:(Class)class
{
  objectCopy = object;
  keyCopy = key;
  if ([(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnCKRecord:keyCopy])
  {
    [(CPLSimpleCKRecordBuilder *)self->_simpleBuilder setEncryptedObject:objectCopy forKey:keyCopy validateClass:class];
  }

  if ([(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnSharedCKRecord:keyCopy])
  {
    [self->_sharedCKRecordToUpload cpl_setEncryptedObject:objectCopy forKey:keyCopy validateClass:class];
  }
}

- (void)setLegacyEncryptedObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if ([(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnCKRecord:keyCopy])
  {
    [(CPLSimpleCKRecordBuilder *)self->_simpleBuilder setLegacyEncryptedObject:objectCopy forKey:keyCopy];
  }

  if ([(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnSharedCKRecord:keyCopy])
  {
    [self->_sharedCKRecordToUpload cpl_setLegacyEncryptedObject:objectCopy forKey:keyCopy];
  }
}

- (void)setCKAsset:(id)asset forKey:(id)key
{
  assetCopy = asset;
  keyCopy = key;
  if ([(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnCKRecord:keyCopy])
  {
    [(CPLSimpleCKRecordBuilder *)self->_simpleBuilder setCKAsset:assetCopy forKey:keyCopy];
    if (![(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnSharedCKRecord:keyCopy])
    {
      goto LABEL_7;
    }

    cplCopyCleanAsset = [assetCopy cplCopyCleanAsset];
  }

  else
  {
    if (![(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnSharedCKRecord:keyCopy])
    {
      goto LABEL_7;
    }

    cplCopyCleanAsset = assetCopy;
  }

  v8 = cplCopyCleanAsset;
  [self->_sharedCKRecordToUpload setObject:cplCopyCleanAsset forKey:keyCopy];

LABEL_7:
}

- (void)setCKReferenceWithScopedIdentifier:(id)identifier forKey:(id)key referenceAction:(unint64_t)action
{
  identifierCopy = identifier;
  keyCopy = key;
  if ([(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnCKRecord:keyCopy])
  {
    [(CPLSimpleCKRecordBuilder *)self->_simpleBuilder setCKReferenceWithScopedIdentifier:identifierCopy forKey:keyCopy referenceAction:action];
  }

  if ([(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnSharedCKRecord:keyCopy])
  {
    v9 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:identifierCopy];
    v10 = v9;
    if (v9)
    {
      otherScopedIdentifier = [v9 otherScopedIdentifier];
      identifier = [otherScopedIdentifier identifier];
    }

    else
    {
      identifier = [identifierCopy identifier];
    }

    v13 = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification recordIDWithRecordName:identifier];
    v14 = [[CKReference alloc] initWithRecordID:v13 action:action];
    [self->_sharedCKRecordToUpload setObject:v14 forKey:keyCopy];
  }
}

- (id)recordBuilderForKey:(id)key
{
  keyCopy = key;
  v6 = [(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnCKRecord:keyCopy];
  v7 = [(CPLCKBatchUploadPlanner *)self _shouldUpdateKeyOnSharedCKRecord:keyCopy];
  if ((v6 & 1) == 0 && (v7 & 1) == 0)
  {
    sub_1001972A4(self, a2, keyCopy);
  }

  if (!v6)
  {
    p_simpleBuilderForSharedCKRecord = &self->_simpleBuilderForSharedCKRecord;
    goto LABEL_9;
  }

  if (!v7)
  {
    p_simpleBuilderForSharedCKRecord = &self->_simpleBuilder;
    goto LABEL_9;
  }

  p_simpleBuilderForSharedCKRecord = &self->_unionBuilderForCKRecords;
  unionBuilderForCKRecords = self->_unionBuilderForCKRecords;
  if (!unionBuilderForCKRecords)
  {
    v10 = [CPLUnionCKRecordBuilder alloc];
    simpleBuilder = self->_simpleBuilder;
    v17[0] = self->_simpleBuilderForSharedCKRecord;
    v17[1] = simpleBuilder;
    v12 = [NSArray arrayWithObjects:v17 count:2];
    v13 = [(CPLUnionCKRecordBuilder *)v10 initWithRecordBuilders:v12];
    v14 = self->_unionBuilderForCKRecords;
    self->_unionBuilderForCKRecords = v13;

LABEL_9:
    unionBuilderForCKRecords = *p_simpleBuilderForSharedCKRecord;
  }

  v15 = unionBuilderForCKRecords;

  return unionBuilderForCKRecords;
}

- (void)requestRecordWithID:(id)d cloudKitScope:(id)scope forKey:(id)key completionHandler:(id)handler
{
  scopeCopy = scope;
  handlerCopy = handler;
  dCopy = d;
  v13 = [(CPLCKBatchUploadPlanner *)self recordBuilderForKey:key];
  if (!self->_recordRequestor)
  {
    v14 = [[CPLCKRecordRequestor alloc] initWithFetchCache:self->_fetchCache scopeProvider:self];
    recordRequestor = self->_recordRequestor;
    self->_recordRequestor = v14;
  }

  v16 = self->_recordRequestor;
  v17 = self->_currentRecordID;
  v18 = CPLCloudKitOperationTypeForScope(scopeCopy);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100034E74;
  v21[3] = &unk_100273A68;
  v22 = v13;
  v23 = handlerCopy;
  v19 = v13;
  v20 = handlerCopy;
  [(CPLCKRecordRequestor *)v16 requestRecordWithRecordID:dCopy operationType:v18 forRecordWithRecordID:v17 completionHandler:v21];
}

- (id)_recordIDFromScopedIdentifier:(id)identifier cloudKitScope:(id *)scope error:(id *)error
{
  identifierCopy = identifier;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  v10 = [(CPLCKBatchUploadPlanner *)self cloudKitScopeForScopeIdentifier:scopeIdentifier];

  if (v10)
  {
    identifier = [identifierCopy identifier];
    error = [v10 recordIDWithRecordName:identifier];

    v12 = v10;
    *scope = v10;
  }

  else if (error)
  {
    scopeIdentifier2 = [identifierCopy scopeIdentifier];
    *error = [CPLErrors cplErrorWithCode:2001 description:@"Can't find CloudKit scope for %@", scopeIdentifier2];

    error = 0;
  }

  return error;
}

- (id)recordIDForResourcesOfRecordWithScopedIdentifier:(id)identifier cloudKitScope:(id *)scope error:(id *)error
{
  identifierCopy = identifier;
  v10 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:identifierCopy];
  if (!v10)
  {
    sub_100197390(a2, self, identifierCopy);
  }

  v11 = v10;
  resourceScopedIdentifier = [v10 resourceScopedIdentifier];
  v13 = [(CPLCKBatchUploadPlanner *)self _recordIDFromScopedIdentifier:resourceScopedIdentifier cloudKitScope:scope error:error];

  return v13;
}

- (void)_willUpdateCKRecordWithID:(id)d onBehalfOfRecordWithScopedIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_1000035AC(identifierCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000187DC();
      sub_1000033B4();
      v20 = v8;
      sub_100037514(&_mh_execute_header, v9, v10, "If necessary, will update %@ on behalf of %@", v19);
    }
  }

  ckRecordIDToScopedIdentifier = self->_ckRecordIDToScopedIdentifier;
  if (!ckRecordIDToScopedIdentifier)
  {
    v12 = objc_alloc_init(NSMutableDictionary);
    v13 = self->_ckRecordIDToScopedIdentifier;
    self->_ckRecordIDToScopedIdentifier = v12;

    v14 = objc_alloc_init(NSMutableDictionary);
    ckRecordIDToRejectedScopedIdentifier = self->_ckRecordIDToRejectedScopedIdentifier;
    self->_ckRecordIDToRejectedScopedIdentifier = v14;

    ckRecordIDToScopedIdentifier = self->_ckRecordIDToScopedIdentifier;
  }

  [(NSMutableDictionary *)ckRecordIDToScopedIdentifier setObject:v8 forKeyedSubscript:dCopy];
  v16 = [(NSMutableDictionary *)self->_ckRecordIDToRejectedScopedIdentifier objectForKeyedSubscript:dCopy];

  if (!v16)
  {
    currentRecordChange = self->_currentRecordChange;
    if (currentRecordChange)
    {
      scopedIdentifier = [(CPLRecordChange *)currentRecordChange scopedIdentifier];
      [(NSMutableDictionary *)self->_ckRecordIDToRejectedScopedIdentifier setObject:scopedIdentifier forKeyedSubscript:dCopy];
    }

    else
    {
      [(NSMutableDictionary *)self->_ckRecordIDToRejectedScopedIdentifier setObject:v8 forKeyedSubscript:dCopy];
    }
  }
}

- (BOOL)planRecordChangeUpload:(id)upload error:(id *)error
{
  uploadCopy = upload;
  [(CPLCKBatchUploadPlanner *)self _resetPlannerState];
  objc_storeStrong(&self->_currentRecordChange, upload);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = sub_1000035AC(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      currentRecordChange = self->_currentRecordChange;
      attachedDiffTracker = [(CPLRecordChange *)currentRecordChange attachedDiffTracker];
      v14 = attachedDiffTracker;
      v15 = @"no diff tracker";
      if (attachedDiffTracker)
      {
        v15 = attachedDiffTracker;
      }

      *buf = 138412546;
      v69 = currentRecordChange;
      v70 = 2112;
      v71 = v15;
      sub_100037514(&_mh_execute_header, v10, v13, "Planning %@ (%@)", buf);
    }
  }

  scopedIdentifier = [uploadCopy scopedIdentifier];
  v17 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:scopedIdentifier];
  currentRecordTarget = self->_currentRecordTarget;
  self->_currentRecordTarget = v17;

  v19 = self->_currentRecordTarget;
  if (!v19)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v57 = sub_1000035AC(0);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v69 = uploadCopy;
        sub_10000348C(&_mh_execute_header, v58, v59, "Target for %@ was not specified before upload", v60, v61, v62, v63, v66, v67);
      }
    }

    v64 = +[NSAssertionHandler currentHandler];
    v65 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKBatchUploadPlanner.m"];
    [v64 handleFailureInMethod:a2 object:self file:v65 lineNumber:207 description:{@"Target for %@ was not specified before upload", uploadCopy}];

    abort();
  }

  destinationZoneIdentification = self->_destinationZoneIdentification;
  scopedIdentifier2 = [(CPLRecordTarget *)v19 scopedIdentifier];
  identifier = [scopedIdentifier2 identifier];
  v23 = [(CPLCloudKitZoneIdentification *)destinationZoneIdentification recordIDWithRecordName:identifier];
  currentRecordID = self->_currentRecordID;
  self->_currentRecordID = v23;

  [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:self->_currentRecordID onBehalfOfRecordWithScopedIdentifier:scopedIdentifier];
  if (self->_sharedZoneIdentification)
  {
    otherScopedIdentifier = [(CPLRecordTarget *)self->_currentRecordTarget otherScopedIdentifier];
    v26 = otherScopedIdentifier;
    if (otherScopedIdentifier)
    {
      scopeIdentifier = [otherScopedIdentifier scopeIdentifier];
      [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification scopeIdentifier];
      objc_claimAutoreleasedReturnValue();
      v28 = [sub_1000374E8() isEqualToString:identifier];

      if (v28)
      {
        [v26 identifier];
        objc_claimAutoreleasedReturnValue();
        v29 = [sub_1000374E8() recordIDWithRecordName:identifier];
        sharedRecordID = self->_sharedRecordID;
        self->_sharedRecordID = v29;

        [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:self->_sharedRecordID onBehalfOfRecordWithScopedIdentifier:scopedIdentifier];
      }
    }

    if ([uploadCopy isMasterChange] && objc_msgSend(uploadCopy, "isFullRecord"))
    {
      if (!self->_mastersNotYetUploadedToPrivateZone)
      {
        v31 = objc_alloc_init(NSMutableDictionary);
        mastersNotYetUploadedToPrivateZone = self->_mastersNotYetUploadedToPrivateZone;
        self->_mastersNotYetUploadedToPrivateZone = v31;
      }

      if (!self->_mastersNotYetUploadedToSharedZone)
      {
        v33 = objc_alloc_init(NSMutableDictionary);
        mastersNotYetUploadedToSharedZone = self->_mastersNotYetUploadedToSharedZone;
        self->_mastersNotYetUploadedToSharedZone = v33;
      }

      [uploadCopy scopedIdentifier];
      objc_claimAutoreleasedReturnValue();
      [sub_1000374E8() setObject:uploadCopy forKeyedSubscript:identifier];

      [uploadCopy scopedIdentifier];
      objc_claimAutoreleasedReturnValue();
      [sub_1000374E8() setObject:uploadCopy forKeyedSubscript:identifier];
    }
  }

  v35 = objc_alloc_init(CPLCloudKitResourceCountAndSize);
  if ([uploadCopy isDelete])
  {
    targetState = [(CPLRecordTarget *)self->_currentRecordTarget targetState];
    if (targetState < 2)
    {
      [(CPLCKBatchUploadPlanner *)self _deleteRecord];
    }

    else
    {
      if (targetState != 2)
      {
        if (targetState != 3)
        {
          goto LABEL_44;
        }

        [(CPLCKBatchUploadPlanner *)self _deleteRecord];
      }

      [(CPLCKBatchUploadPlanner *)self _deleteSharedRecord];
    }
  }

  else
  {
    if ([uploadCopy supportsResources])
    {
      scopedIdentifiersNeedingToCallProgressHandler = self->_scopedIdentifiersNeedingToCallProgressHandler;
      if (!scopedIdentifiersNeedingToCallProgressHandler)
      {
        v38 = objc_alloc_init(NSMutableSet);
        v39 = self->_scopedIdentifiersNeedingToCallProgressHandler;
        self->_scopedIdentifiersNeedingToCallProgressHandler = v38;

        scopedIdentifiersNeedingToCallProgressHandler = self->_scopedIdentifiersNeedingToCallProgressHandler;
      }

      [(NSMutableSet *)scopedIdentifiersNeedingToCallProgressHandler addObject:scopedIdentifier];
    }

    if (![uploadCopy prepareWithCKRecordBuilder:self resourceCountAndSize:v35 scopeProvider:self error:error])
    {
      v44 = 0;
      goto LABEL_62;
    }

    if (self->_metric)
    {
      if (sub_1001941F8(v35) || sub_100194228(v35))
      {
        [(CPLCloudKitUploadMetric *)self->_metric setItemCount:[(CPLCloudKitUploadMetric *)self->_metric itemCount]+ 1];
        [(CPLCloudKitUploadMetric *)self->_metric setUploadSize:[(CPLCloudKitUploadMetric *)self->_metric uploadSize]+ sub_1001941F8(v35)];
        [(CPLCloudKitUploadMetric *)self->_metric setReferencedResourcesSize:[(CPLCloudKitUploadMetric *)self->_metric referencedResourcesSize]+ sub_100194228(v35)];
        [(CPLCloudKitUploadMetric *)self->_metric setReferencedResourcesCount:[(CPLCloudKitUploadMetric *)self->_metric referencedResourcesCount]+ sub_100194210(v35)];
      }

      else
      {
        [(CPLCloudKitUploadMetric *)self->_metric setOtherItemCount:[(CPLCloudKitUploadMetric *)self->_metric otherItemCount]+ 1];
      }
    }

    if (self->_sharedZoneIdentification && [uploadCopy supportsSharingScopedIdentifier] && objc_msgSend(uploadCopy, "hasChangeType:", 64))
    {
      scopeIdentifier2 = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification scopeIdentifier];
      v41 = [uploadCopy isSharedInScopeWithIdentifier:scopeIdentifier2];

      relatedScopedIdentifier = [uploadCopy relatedScopedIdentifier];
      v43 = relatedScopedIdentifier;
      if (v41)
      {
        if (relatedScopedIdentifier)
        {
          if ((-[CPLRecordTarget shouldUploadToOtherRecord](self->_currentRecordTarget, "shouldUploadToOtherRecord") & 1) == 0 && ([uploadCopy _relatedRecordShouldBeShared] & 1) == 0 && objc_msgSend(uploadCopy, "isAssetChange"))
          {
            v56 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:v43];
            if ([v56 targetState] == 3)
            {
              [sub_1000374D0() _copyPrivateMasterWithScopedIdentifier:? masterTarget:? uploadIndex:? reason:?];
            }
          }

          [uploadCopy relatedRecordClass];
          v54 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:v43];
          [sub_1000374D0() _addRecordWithScopedIdentifierToShareTodos:? recordClass:? proposedContributorUserIdentifiers:? target:? force:?];
        }

        updateSharingContributorUserIdentifiers = [uploadCopy updateSharingContributorUserIdentifiers];
        scopedIdentifier3 = [uploadCopy scopedIdentifier];
        -[CPLCKBatchUploadPlanner _addRecordWithScopedIdentifierToShareTodos:recordClass:proposedContributorUserIdentifiers:target:force:](self, "_addRecordWithScopedIdentifierToShareTodos:recordClass:proposedContributorUserIdentifiers:target:force:", scopedIdentifier3, [uploadCopy recordClass], updateSharingContributorUserIdentifiers, self->_currentRecordTarget, 0);
      }

      else
      {
        if (relatedScopedIdentifier)
        {
          [uploadCopy relatedRecordClass];
          v52 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:v43];
          [sub_1000374D0() _addRecordWithScopedIdentifierToUnshareTodos:? recordClass:? target:?];
        }

        updateSharingContributorUserIdentifiers = [uploadCopy scopedIdentifier];
        -[CPLCKBatchUploadPlanner _addRecordWithScopedIdentifierToUnshareTodos:recordClass:target:](self, "_addRecordWithScopedIdentifierToUnshareTodos:recordClass:target:", updateSharingContributorUserIdentifiers, [uploadCopy recordClass], self->_currentRecordTarget);
      }
    }
  }

LABEL_44:
  if (self->_ckRecordToUpload)
  {
    if (!self->_uploadContext)
    {
      v45 = objc_alloc_init(CPLCloudKitUploadOperationContext);
      uploadContext = self->_uploadContext;
      self->_uploadContext = v45;
    }

    if (self->_sharedZoneIdentification && ([(CPLRecordChange *)self->_currentRecordChange isMasterChange]& 1) == 0 && [(CPLRecordChange *)self->_currentRecordChange supportsSharingScopedIdentifier])
    {
      shouldUploadToOtherRecord = [(CPLRecordTarget *)self->_currentRecordTarget shouldUploadToOtherRecord];
      [(CPLCloudKitUploadOperationContext *)self->_uploadContext addRecord:self->_currentRecordChange forRecordID:self->_currentRecordID ignoreResources:shouldUploadToOtherRecord];
      if (shouldUploadToOtherRecord)
      {
        goto LABEL_55;
      }
    }

    else
    {
      [(CPLCloudKitUploadOperationContext *)self->_uploadContext addRecord:self->_currentRecordChange forRecordID:self->_currentRecordID ignoreResources:0];
    }

    if (sub_1001941F8(v35))
    {
      sub_1001941F8(v35);
      [sub_1000374D0() _addCKRecordIDForResourcesUploadProgressTracking:? size:?];
    }
  }

LABEL_55:
  if (self->_sharedCKRecordToUpload)
  {
    if (self->_sharedUploadContext)
    {
      v48 = objc_alloc_init(CPLCloudKitUploadOperationContext);
      sharedUploadContext = self->_sharedUploadContext;
      self->_sharedUploadContext = v48;

      v50 = self->_sharedUploadContext;
    }

    else
    {
      v50 = 0;
    }

    [(CPLCloudKitUploadOperationContext *)v50 addRecord:self->_currentRecordChange forRecordID:self->_sharedRecordID ignoreResources:0];
    if (sub_1001941F8(v35))
    {
      sub_1001941F8(v35);
      [sub_1000374D0() _addCKRecordIDForResourcesUploadProgressTracking:? size:?];
    }
  }

  v44 = 1;
LABEL_62:

  return v44;
}

- (void)_addRecordWithScopedIdentifierToUnshareTodos:(id)todos recordClass:(Class)class target:(id)target
{
  todosCopy = todos;
  targetCopy = target;
  v10 = [(CPLCKBatchUploadPlanner *)self _shareTodoForRecordWithScopedIdentifier:todosCopy recordClass:class proposedContributorUserIdentifiers:0 target:targetCopy];
  if (-[objc_class isSubclassOfClass:](class, "isSubclassOfClass:", objc_opt_class()) && [targetCopy shouldUploadToOtherRecord] && (!v10 ? (v11 = 0) : (v11 = v10[4]), -[NSMutableDictionary objectForKeyedSubscript:](self->_requestedSharedCKRecordIDs, "objectForKeyedSubscript:", v11), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = sub_1000035AC(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        scopeIdentifier = [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification scopeIdentifier];
        v39 = 138412802;
        classCopy = class;
        sub_1000033B4();
        v41 = todosCopy;
        v42 = 2114;
        v43 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "We are already planning to copy shared <%@ %@> to %{public}@ - no need to unshare", &v39, 0x20u);
      }
    }
  }

  else if ([targetCopy shouldUploadToOtherRecord])
  {
    v17 = [(NSMutableSet *)self->_dontUnshareScopedIdentifier containsObject:todosCopy];
    if ((v17 & 1) != 0 || (v17 = [(CPLCKSharePlan *)self->_sharePlan hasShareTodoForScopedIdentifier:todosCopy], v17))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v18 = sub_1000035AC(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000187DC();
          sub_1000374A0(&_mh_execute_header, v18, v19, "Won't unshare %@", &v39);
        }
      }
    }

    else if (![(CPLCKUnsharePlan *)self->_unsharePlan hasShareTodoForScopedIdentifier:todosCopy])
    {
      if (!self->_unsharePlan)
      {
        v20 = [[CPLCKUnsharePlan alloc] initWithPlanner:self];
        unsharePlan = self->_unsharePlan;
        self->_unsharePlan = v20;
      }

      if (v10)
      {
        [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:v10[3] onBehalfOfRecordWithScopedIdentifier:todosCopy];
        v22 = v10[4];
      }

      else
      {
        [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:0 onBehalfOfRecordWithScopedIdentifier:todosCopy];
        v22 = 0;
      }

      v23 = [(CPLCKBatchUploadPlanner *)self _willUpdateCKRecordWithID:v22 onBehalfOfRecordWithScopedIdentifier:todosCopy];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v24 = sub_1000035AC(v23);
        if (sub_1000374B8(v24))
        {
          engineScope = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification engineScope];
          if (v10)
          {
            v26 = v10[4];
          }

          else
          {
            v26 = 0;
          }

          v27 = v26;
          recordName = [v27 recordName];
          if (v10)
          {
            v29 = v10[3];
          }

          else
          {
            v29 = 0;
          }

          v30 = v29;
          recordName2 = [v30 recordName];
          sub_1000187DC();
          sub_1000033B4();
          v41 = engineScope;
          v42 = v32;
          v43 = recordName;
          v44 = v32;
          v45 = v33;
          sub_10003746C();
          _os_log_impl(v34, v35, v36, v37, v38, 0x2Au);
        }
      }

      [(CPLCKUnsharePlan *)self->_unsharePlan addShareTodo:v10];
    }
  }
}

- (void)_deleteRecord
{
  v3 = [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification supportsDeletionOfRecord:self->_currentRecordChange scopeProvider:self];
  if (v3)
  {
    if ([(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification supportsDirectDeletionOfRecord:self->_currentRecordChange scopeProvider:self])
    {
      currentRecordID = self->_currentRecordID;

      [(CPLCKBatchUploadPlanner *)self deleteCKRecordWithRecordID:currentRecordID];
    }

    else
    {
      currentRecordChange = self->_currentRecordChange;
      v9 = [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification zone];
      v11 = [CKRecord cpl_expungedRecordFromCPLRecordChange:currentRecordChange inZone:v9 target:self->_currentRecordTarget];

      scopedIdentifier = [(CPLRecordChange *)self->_currentRecordChange scopedIdentifier];
      [(CPLCKBatchUploadPlanner *)self uploadCKRecord:v11 forScopedIdentifier:scopedIdentifier triggeringKey:@"isExpunged"];
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_1000035AC(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_currentRecordChange;
      v12 = 138412290;
      v13 = v7;
      sub_1000374A0(&_mh_execute_header, v5, v6, "Dropping %@", &v12);
    }
  }
}

- (void)deleteCKRecordWithRecordID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_1000035AC(dCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000187DC();
      sub_1000374A0(&_mh_execute_header, v6, v7, "Will delete shared %{public}@", v11);
    }
  }

  ckRecordIDsToDelete = self->_ckRecordIDsToDelete;
  if (!ckRecordIDsToDelete)
  {
    v9 = objc_alloc_init(NSMutableArray);
    v10 = self->_ckRecordIDsToDelete;
    self->_ckRecordIDsToDelete = v9;

    ckRecordIDsToDelete = self->_ckRecordIDsToDelete;
  }

  [(NSMutableArray *)ckRecordIDsToDelete addObject:v5];
}

- (void)uploadCKRecord:(id)record forScopedIdentifier:(id)identifier triggeringKey:(id)key
{
  sub_10002B0F4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v9;
  v15 = v7;
  v16 = v15;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v17 = sub_1000035AC(v15);
    if (sub_1000374B8(v17))
    {
      [v13 recordID];
      *&v26[4] = *v26 = 138543618;
      sub_1000033B4();
      *&v26[14] = v16;
      sub_10003746C();
      _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
    }
  }

  v23 = *(v11 + 24);
  if (!v23)
  {
    v24 = objc_alloc_init(NSMutableArray);
    v25 = *(v11 + 24);
    *(v11 + 24) = v24;

    v23 = *(v11 + 24);
  }

  [v23 addObject:{v13, *v26, *&v26[16]}];
}

- (void)deleteSharedCKRecordWithRecordID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_1000035AC(dCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000187DC();
      sub_1000374A0(&_mh_execute_header, v6, v7, "Will delete shared %{public}@", v11);
    }
  }

  sharedCKRecordIDsToDelete = self->_sharedCKRecordIDsToDelete;
  if (!sharedCKRecordIDsToDelete)
  {
    v9 = objc_alloc_init(NSMutableArray);
    v10 = self->_sharedCKRecordIDsToDelete;
    self->_sharedCKRecordIDsToDelete = v9;

    sharedCKRecordIDsToDelete = self->_sharedCKRecordIDsToDelete;
  }

  [(NSMutableArray *)sharedCKRecordIDsToDelete addObject:v5];
}

- (void)uploadSharedCKRecord:(id)record forScopedIdentifier:(id)identifier triggeringKey:(id)key
{
  sub_10002B0F4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v9;
  v15 = v7;
  v16 = v15;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v17 = sub_1000035AC(v15);
    if (sub_1000374B8(v17))
    {
      [v13 recordID];
      *&v26[4] = *v26 = 138543618;
      sub_1000033B4();
      *&v26[14] = v16;
      sub_10003746C();
      _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
    }
  }

  v23 = *(v11 + 48);
  if (!v23)
  {
    v24 = objc_alloc_init(NSMutableArray);
    v25 = *(v11 + 48);
    *(v11 + 48) = v24;

    v23 = *(v11 + 48);
  }

  [v23 addObject:{v13, *v26, *&v26[16]}];
}

- (void)requestPrivateCKRecordWithRecordIDBeforeUpload:(id)upload fetchedBlock:(id)block reason:(id)reason
{
  uploadCopy = upload;
  blockCopy = block;
  reasonCopy = reason;
  requestedPrivateCKRecordIDs = self->_requestedPrivateCKRecordIDs;
  if (requestedPrivateCKRecordIDs)
  {
    v12 = [(NSMutableDictionary *)requestedPrivateCKRecordIDs objectForKeyedSubscript:uploadCopy];

    if (v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v13 = objc_alloc_init(NSMutableDictionary);
    v14 = self->_requestedPrivateCKRecordIDs;
    self->_requestedPrivateCKRecordIDs = v13;
  }

  v15 = [(NSMutableDictionary *)self->_requestedPrivateCKRecordIDs objectForKeyedSubscript:uploadCopy];

  if (!v15)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v23 = sub_1000035AC(v16);
      if (sub_1000374B8(v23))
      {
        sub_10003747C();
        sub_10003746C();
        _os_log_impl(v24, v25, v26, v27, v28, 0x20u);
      }
    }

    v15 = objc_retainBlock(blockCopy);
    [(NSMutableDictionary *)self->_requestedPrivateCKRecordIDs setObject:v15 forKeyedSubscript:uploadCopy];
    goto LABEL_14;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v17 = sub_1000035AC(v16);
    if (sub_1000374B8(v17))
    {
      sub_10003747C();
      sub_10003746C();
      _os_log_impl(v18, v19, v20, v21, v22, 0x20u);
    }

LABEL_14:
  }

LABEL_15:
}

- (id)willUploadRecords
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_1000035AC(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      cloudKitScope = [(CPLCloudKitZoneIdentification *)self->_destinationZoneIdentification cloudKitScope];
      if (self->_ckRecordsToUpload)
      {
        ckRecordsToUpload = self->_ckRecordsToUpload;
      }

      else
      {
        ckRecordsToUpload = &__NSArray0__struct;
      }

      cplFullDescription = [(NSMutableArray *)ckRecordsToUpload cplFullDescription];
      sub_100021CFC();
      sub_100013984();
      sub_100037514(v7, v8, v9, v10, v11);
    }
  }

  dateOfFirstUploadProgress = self->_dateOfFirstUploadProgress;
  self->_dateOfFirstUploadProgress = 0;

  [(CPLCKBatchUploadPlanner *)self _resetPlannerState];
  requestedSharedCKRecordIDs = self->_requestedSharedCKRecordIDs;
  self->_requestedSharedCKRecordIDs = 0;

  uploadContext = self->_uploadContext;

  return uploadContext;
}

- (id)willUploadSharedRecords
{
  if (self->_sharedZoneIdentification && (_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_1000035AC(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      cloudKitScope = [(CPLCloudKitZoneIdentification *)self->_sharedZoneIdentification cloudKitScope];
      if (self->_sharedCKRecordsToUpload)
      {
        sharedCKRecordsToUpload = self->_sharedCKRecordsToUpload;
      }

      else
      {
        sharedCKRecordsToUpload = &__NSArray0__struct;
      }

      cplFullDescription = [(NSMutableArray *)sharedCKRecordsToUpload cplFullDescription];
      sub_100021CFC();
      sub_100013984();
      sub_100037514(v7, v8, v9, v10, v11);
    }
  }

  dateOfFirstUploadProgress = self->_dateOfFirstUploadProgress;
  self->_dateOfFirstUploadProgress = 0;

  sharedUploadContext = self->_sharedUploadContext;

  return sharedUploadContext;
}

@end