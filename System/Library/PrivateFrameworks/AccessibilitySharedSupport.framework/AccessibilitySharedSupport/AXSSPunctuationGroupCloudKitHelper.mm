@interface AXSSPunctuationGroupCloudKitHelper
- (id)createCKRecordFromGroup:(id)group;
- (id)createCKRecordFromObject:(id)object;
- (id)testRecordForSchemaCreation:(id)creation;
- (void)beginWatchingForChanges;
- (void)clearRecordsForPurging:(id)purging;
- (void)dealloc;
- (void)processRecordDeletionsFromServer:(id)server;
- (void)processServerUpdateChanges:(id)changes moc:(id)moc recordNameToManagedObject:(id)object;
- (void)punctuationGroupsChanged:(id)changed;
- (void)retrieveLocalChangesForCloud:(id)cloud;
@end

@implementation AXSSPunctuationGroupCloudKitHelper

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXSSPunctuationGroupCloudKitHelper;
  [(AXSSCloudKitHelper *)&v4 dealloc];
}

- (id)testRecordForSchemaCreation:(id)creation
{
  v4 = MEMORY[0x1E695BA60];
  creationCopy = creation;
  v6 = [v4 alloc];
  zoneSubscription = [(AXSSCloudKitHelper *)self zoneSubscription];
  recordType = [zoneSubscription recordType];
  v9 = [v6 initWithRecordType:recordType recordID:creationCopy];

  [v9 setName:@"test"];

  return v9;
}

- (id)createCKRecordFromGroup:(id)group
{
  v4 = MEMORY[0x1E695BA70];
  groupCopy = group;
  v6 = [v4 alloc];
  uuid = [groupCopy uuid];
  uUIDString = [uuid UUIDString];
  recordZone = [(AXSSCloudKitHelper *)self recordZone];
  zoneID = [recordZone zoneID];
  v11 = [v6 initWithRecordName:uUIDString zoneID:zoneID];

  v12 = objc_alloc(MEMORY[0x1E695BA60]);
  recordType = [(AXSSPunctuationGroupCloudKitHelper *)self recordType];
  v14 = [v12 initWithRecordType:recordType recordID:v11];

  name = [groupCopy name];
  [v14 setName:name];

  basePunctuationUUID = [groupCopy basePunctuationUUID];
  uUIDString2 = [basePunctuationUUID UUIDString];
  [v14 setBasePunctuationGroup:uUIDString2];

  v18 = MEMORY[0x1E696AD98];
  version = [groupCopy version];

  v20 = [v18 numberWithUnsignedShort:version];
  [v14 setVersion:v20];

  return v14;
}

- (id)createCKRecordFromObject:(id)object
{
  v4 = MEMORY[0x1E695BA70];
  objectCopy = object;
  v6 = [v4 alloc];
  uuid = [objectCopy uuid];
  uUIDString = [uuid UUIDString];
  recordZone = [(AXSSCloudKitHelper *)self recordZone];
  zoneID = [recordZone zoneID];
  v11 = [v6 initWithRecordName:uUIDString zoneID:zoneID];

  v12 = objc_alloc(MEMORY[0x1E695BA60]);
  recordType = [(AXSSPunctuationGroupCloudKitHelper *)self recordType];
  v14 = [v12 initWithRecordType:recordType recordID:v11];

  name = [objectCopy name];
  [v14 setName:name];

  basePunctuationUUID = [objectCopy basePunctuationUUID];
  uUIDString2 = [basePunctuationUUID UUIDString];
  [v14 setBasePunctuationGroup:uUIDString2];

  v18 = MEMORY[0x1E696AD98];
  version = [objectCopy version];

  v20 = [v18 numberWithShort:version];
  [v14 setVersion:v20];

  return v14;
}

- (void)clearRecordsForPurging:(id)purging
{
  v21 = *MEMORY[0x1E69E9840];
  purgingCopy = purging;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [purgingCopy countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(purgingCopy);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = AXLogPunctuationStorage();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [(AXSSPunctuationGroupCloudKitHelper *)v18 clearRecordsForPurging:v8, &v19, v9];
        }

        v10 = +[AXSSPunctuationManager sharedDatabase];
        v11 = objc_alloc(MEMORY[0x1E696AFB0]);
        recordName = [v8 recordName];
        v13 = [v11 initWithUUIDString:recordName];
        [v10 removeCloudRecordForPurge:v13];

        ++v7;
      }

      while (v5 != v7);
      v5 = [purgingCopy countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
  }
}

- (void)retrieveLocalChangesForCloud:(id)cloud
{
  v77 = *MEMORY[0x1E69E9840];
  cloudCopy = cloud;
  array = [MEMORY[0x1E695DF70] array];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v4 = +[AXSSPunctuationManager sharedDatabase];
  punctuationGroups = [v4 punctuationGroups];

  obj = punctuationGroups;
  v6 = [punctuationGroups countByEnumeratingWithState:&v63 objects:v76 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v64;
    v55 = *v64;
    do
    {
      v9 = 0;
      do
      {
        if (*v64 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v63 + 1) + 8 * v9);
        v11 = AXLogPunctuationStorage();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          inCloud = [v10 inCloud];
          ckChangeTag = [v10 ckChangeTag];
          date = [MEMORY[0x1E695DF00] date];
          [date timeIntervalSinceReferenceDate];
          v27 = v26;
          ckRecordProcessDate = [v10 ckRecordProcessDate];
          [ckRecordProcessDate timeIntervalSinceReferenceDate];
          v30 = v27 - v29;
          date2 = [MEMORY[0x1E695DF00] date];
          [date2 timeIntervalSinceReferenceDate];
          v33 = v32;
          ckRecordProcessDate2 = [v10 ckRecordProcessDate];
          [ckRecordProcessDate2 timeIntervalSinceReferenceDate];
          *buf = 67110402;
          *v69 = inCloud;
          *&v69[4] = 2112;
          *&v69[6] = ckChangeTag;
          *&v69[14] = 2112;
          *&v69[16] = v10;
          v70 = 2048;
          v71 = v30;
          v72 = 2048;
          v73 = v33;
          v74 = 2048;
          v75 = v35;
          _os_log_debug_impl(&dword_1C0E8A000, v11, OS_LOG_TYPE_DEBUG, "Is group in icloud? %d, tag: %@: %@, last mod date: %f[%f-%f]", buf, 0x3Au);

          v8 = v55;
        }

        inCloud2 = [v10 inCloud];
        if (inCloud2)
        {
          ckChangeTag2 = [v10 ckChangeTag];
          v3 = ckChangeTag2;
          if (ckChangeTag2)
          {
            goto LABEL_20;
          }
        }

        ckRecordProcessDate3 = [v10 ckRecordProcessDate];
        if (!ckRecordProcessDate3)
        {

          if (inCloud2)
          {
          }

LABEL_17:
          ckChangeTag2 = [(AXSSPunctuationGroupCloudKitHelper *)self createCKRecordFromGroup:v10];
          [array addObject:ckChangeTag2];
          date3 = [MEMORY[0x1E695DF00] date];
          [v10 setCkRecordProcessDate:date3];

          v22 = +[AXSSPunctuationManager sharedDatabase];
          [v22 updatePunctuationGroup:v10];

          v23 = AXLogPunctuationStorage();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *v69 = ckChangeTag2;
            _os_log_debug_impl(&dword_1C0E8A000, v23, OS_LOG_TYPE_DEBUG, "Adding record: %@", buf, 0xCu);
          }

LABEL_20:
          goto LABEL_21;
        }

        date4 = [MEMORY[0x1E695DF00] date];
        [date4 timeIntervalSinceReferenceDate];
        v17 = v16;
        ckRecordProcessDate4 = [v10 ckRecordProcessDate];
        [ckRecordProcessDate4 timeIntervalSinceReferenceDate];
        v20 = v17 - v19;

        if (inCloud2)
        {
        }

        v8 = v55;
        if (v20 > 60.0)
        {
          goto LABEL_17;
        }

LABEL_21:
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
    }

    while (v7);
  }

  array2 = [MEMORY[0x1E695DF70] array];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v37 = +[AXSSPunctuationManager sharedDatabase];
  v38 = +[AXSSPunctuationGroup description];
  v39 = [v37 cloudRecordsToPurge:v38];

  obja = v39;
  v40 = [v39 countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v60;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v60 != v42)
        {
          objc_enumerationMutation(obja);
        }

        v44 = *(*(&v59 + 1) + 8 * i);
        v45 = objc_alloc(MEMORY[0x1E695BA70]);
        uUIDString = [v44 UUIDString];
        recordZone = [(AXSSCloudKitHelper *)self recordZone];
        zoneID = [recordZone zoneID];
        v49 = [v45 initWithRecordName:uUIDString zoneID:zoneID];

        [array2 addObject:v49];
        v50 = AXLogPunctuationStorage();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v69 = v44;
          _os_log_impl(&dword_1C0E8A000, v50, OS_LOG_TYPE_INFO, "Purging group: %@", buf, 0xCu);
        }
      }

      v41 = [obja countByEnumeratingWithState:&v59 objects:v67 count:16];
    }

    while (v41);
  }

  v51 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *v69 = array;
    *&v69[8] = 2112;
    *&v69[10] = array2;
    _os_log_impl(&dword_1C0E8A000, v51, OS_LOG_TYPE_INFO, "Group providing data for local server: %@, del: %@", buf, 0x16u);
  }

  cloudCopy[2](cloudCopy, array, array2, &__block_literal_global_8);
}

void __67__AXSSPunctuationGroupCloudKitHelper_retrieveLocalChangesForCloud___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x1E696AFB0]);
  v4 = [v2 recordID];
  v5 = [v4 recordName];
  v6 = [v3 initWithUUIDString:v5];

  v7 = +[AXSSPunctuationManager sharedDatabase];
  v8 = [v7 punctuationGroupForUUID:v6];

  v9 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v13 = 138412802;
    v14 = v2;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_1C0E8A000, v9, OS_LOG_TYPE_INFO, "Processing group cloud retreival: %@ %@ %@", &v13, 0x20u);
  }

  [v8 setInCloud:1];
  v10 = [v2 recordChangeTag];
  [v8 setCkChangeTag:v10];

  [v8 setCkRecordProcessDate:0];
  v11 = +[AXSSPunctuationManager sharedDatabase];
  [v11 updatePunctuationGroup:v8 fromCloudKit:1];

  v12 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = v8;
    _os_log_impl(&dword_1C0E8A000, v12, OS_LOG_TYPE_INFO, "Marked in icloud: %@", &v13, 0xCu);
  }
}

- (void)beginWatchingForChanges
{
  v8.receiver = self;
  v8.super_class = AXSSPunctuationGroupCloudKitHelper;
  [(AXSSCloudKitHelper *)&v8 beginWatchingForChanges];
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter addObserver:self selector:sel_punctuationGroupsChanged_ name:@"AXSSVoiceOverPunctuationGroupsChangedNotification" object:0];

  v4 = objc_alloc(MEMORY[0x1E6988780]);
  cloudkitQueue = [(AXSSCloudKitHelper *)self cloudkitQueue];
  v6 = [v4 initWithTargetSerialQueue:cloudkitQueue];
  changeCoalescer = self->_changeCoalescer;
  self->_changeCoalescer = v6;

  [(AXDispatchTimer *)self->_changeCoalescer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
}

- (void)punctuationGroupsChanged:(id)changed
{
  changedCopy = changed;
  changeCoalescer = self->_changeCoalescer;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__AXSSPunctuationGroupCloudKitHelper_punctuationGroupsChanged___block_invoke;
  v7[3] = &unk_1E8134950;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  [(AXDispatchTimer *)changeCoalescer afterDelay:v7 processBlock:0.5];
}

uint64_t __63__AXSSPunctuationGroupCloudKitHelper_punctuationGroupsChanged___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = +[AXSSPunctuationManager sharedDatabase];
  v3 = [v2 managedObjectContext];
  [v3 performBlockAndWait:&__block_literal_global_21_0];

  v4 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1C0E8A000, v4, OS_LOG_TYPE_INFO, "Punctuation groups changed locally, consolidating for cloud push: %@", &v7, 0xCu);
  }

  return [*(a1 + 40) processLocalChangesAndPush];
}

void __63__AXSSPunctuationGroupCloudKitHelper_punctuationGroupsChanged___block_invoke_2()
{
  v1 = +[AXSSPunctuationManager sharedDatabase];
  v0 = [v1 managedObjectContext];
  [v0 refreshAllObjects];
}

- (void)processServerUpdateChanges:(id)changes moc:(id)moc recordNameToManagedObject:(id)object
{
  v35 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [changesCopy countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v29;
    *&v7 = 138412290;
    v27 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(changesCopy);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = objc_alloc(MEMORY[0x1E696AFB0]);
        recordID = [v11 recordID];
        recordName = [recordID recordName];
        v15 = [v12 initWithUUIDString:recordName];

        v16 = +[AXSSPunctuationManager sharedDatabase];
        v17 = [v16 punctuationGroupForUUID:v15];

        if (v17)
        {
          ckChangeTag = [v17 ckChangeTag];

          if (!ckChangeTag)
          {
            v19 = AXLogPunctuationStorage();
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              goto LABEL_14;
            }

            *buf = v27;
            v33 = v17;
            v20 = v19;
            v21 = "Local group is newer than cloud group, ditching cloud group: %@";
            goto LABEL_13;
          }
        }

        else
        {
          v17 = objc_opt_new();
          [v17 setUuid:v15];
        }

        name = [v11 name];
        [v17 setName:name];

        v23 = objc_alloc(MEMORY[0x1E696AFB0]);
        basePunctuationGroup = [v11 basePunctuationGroup];
        v25 = [v23 initWithUUIDString:basePunctuationGroup];
        [v17 setBasePunctuationUUID:v25];

        v26 = +[AXSSPunctuationManager sharedDatabase];
        [v26 updatePunctuationGroup:v17 fromCloudKit:1];

        v19 = AXLogPunctuationStorage();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          goto LABEL_14;
        }

        *buf = v27;
        v33 = v17;
        v20 = v19;
        v21 = "Handling punctuation group: %@";
LABEL_13:
        _os_log_impl(&dword_1C0E8A000, v20, OS_LOG_TYPE_INFO, v21, buf, 0xCu);
LABEL_14:
      }

      v8 = [changesCopy countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v8);
  }
}

- (void)processRecordDeletionsFromServer:(id)server
{
  v25 = *MEMORY[0x1E69E9840];
  serverCopy = server;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [serverCopy countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(serverCopy);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = objc_alloc(MEMORY[0x1E696AFB0]);
        recordName = [v8 recordName];
        v11 = [v9 initWithUUIDString:recordName];

        v12 = +[AXSSPunctuationManager sharedDatabase];
        v13 = [v12 punctuationGroupForUUID:v11];

        v14 = +[AXSSPunctuationManager sharedDatabase];
        [v14 removePunctuationGroup:v13];

        v15 = AXLogPunctuationStorage();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v21 = v8;
          v22 = 2112;
          v23 = v13;
          _os_log_impl(&dword_1C0E8A000, v15, OS_LOG_TYPE_DEFAULT, "Removing group from server push: %@ %@", buf, 0x16u);
        }
      }

      v5 = [serverCopy countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v5);
  }
}

- (void)clearRecordsForPurging:(void *)a3 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 recordName];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_1C0E8A000, a4, OS_LOG_TYPE_DEBUG, "Committing record purge group: %@", a1, 0xCu);
}

@end