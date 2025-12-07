@interface AXSSPunctuationEntryCloudKitHelper
- (id)createCKRecordFromEntry:(id)entry;
- (id)createCKRecordFromObject:(id)object;
- (id)testRecordForSchemaCreation:(id)creation;
- (void)_processPunctuationEntryFromCKRecord:(id)record;
- (void)beginWatchingForChanges;
- (void)clearRecordsForPurging:(id)purging;
- (void)dealloc;
- (void)processRecordDeletionsFromServer:(id)server;
- (void)processServerUpdateChanges:(id)changes moc:(id)moc recordNameToManagedObject:(id)object;
- (void)punctuationGroupChanged:(id)changed;
- (void)retrieveLocalChangesForCloud:(id)cloud;
@end

@implementation AXSSPunctuationEntryCloudKitHelper

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXSSPunctuationEntryCloudKitHelper;
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

  [v9 setRule:@"Rule"];
  [v9 setVersion:&unk_1F4066FA8];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [v9 setGroupUUID:uUID];

  return v9;
}

- (id)createCKRecordFromEntry:(id)entry
{
  v4 = MEMORY[0x1E695BA70];
  entryCopy = entry;
  v6 = [v4 alloc];
  uuid = [entryCopy uuid];
  uUIDString = [uuid UUIDString];
  recordZone = [(AXSSCloudKitHelper *)self recordZone];
  zoneID = [recordZone zoneID];
  v11 = [v6 initWithRecordName:uUIDString zoneID:zoneID];

  v12 = objc_alloc(MEMORY[0x1E695BA60]);
  recordType = [(AXSSPunctuationEntryCloudKitHelper *)self recordType];
  v14 = [v12 initWithRecordType:recordType recordID:v11];

  v15 = +[AXSSPunctuationManager sharedDatabase];
  v16 = [v15 ruleToString:{objc_msgSend(entryCopy, "rule")}];
  [v14 setRule:v16];

  punctuation = [entryCopy punctuation];
  [v14 setPunctuation:punctuation];

  replacement = [entryCopy replacement];
  [v14 setReplacement:replacement];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(entryCopy, "version")}];
  [v14 setVersion:v19];

  groupUUID = [entryCopy groupUUID];

  [v14 setGroupUUID:groupUUID];

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
  recordType = [(AXSSPunctuationEntryCloudKitHelper *)self recordType];
  v14 = [v12 initWithRecordType:recordType recordID:v11];

  rule = [objectCopy rule];
  [v14 setRule:rule];

  punctuation = [objectCopy punctuation];
  [v14 setPunctuation:punctuation];

  replacement = [objectCopy replacement];
  [v14 setReplacement:replacement];

  v18 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(objectCopy, "version")}];
  [v14 setVersion:v18];

  groupUUID = [objectCopy groupUUID];

  [v14 setGroupUUID:groupUUID];

  return v14;
}

- (void)_processPunctuationEntryFromCKRecord:(id)record
{
  v30 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v4 = objc_alloc(MEMORY[0x1E696AFB0]);
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v7 = [v4 initWithUUIDString:recordName];

  v8 = +[AXSSPunctuationManager sharedDatabase];
  v9 = [v8 punctuationEntryForUUID:v7];

  if (!v9)
  {
    v9 = objc_opt_new();
    [v9 setUuid:v7];
    goto LABEL_10;
  }

  ckChangeTag = [v9 ckChangeTag];
  recordChangeTag = [recordCopy recordChangeTag];
  v12 = [ckChangeTag isEqual:recordChangeTag];

  if (v12)
  {
    if ([v9 inCloud])
    {
      v13 = AXLogPunctuationStorage();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v28 = 138412290;
        v29 = v9;
        v14 = "Entry is same as CK - skipping: %@";
LABEL_12:
        _os_log_impl(&dword_1C0E8A000, v13, OS_LOG_TYPE_INFO, v14, &v28, 0xCu);
        goto LABEL_13;
      }

      goto LABEL_13;
    }

LABEL_10:
    v21 = +[AXSSPunctuationManager sharedDatabase];
    rule = [recordCopy rule];
    [v9 setRule:{objc_msgSend(v21, "stringToRule:", rule)}];

    punctuation = [recordCopy punctuation];
    [v9 setPunctuation:punctuation];

    replacement = [recordCopy replacement];
    [v9 setReplacement:replacement];

    groupUUID = [recordCopy groupUUID];
    [v9 setGroupUUID:groupUUID];

    [v9 setInCloud:1];
    recordChangeTag2 = [recordCopy recordChangeTag];
    [v9 setCkChangeTag:recordChangeTag2];

    v27 = +[AXSSPunctuationManager sharedDatabase];
    [v27 updateEntry:v9 fromCloudKit:1];

    v13 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v28 = 138412290;
      v29 = v9;
      v14 = "Updating punctuation entry: %@";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  lastModifiedDate = [v9 lastModifiedDate];
  [lastModifiedDate timeIntervalSinceReferenceDate];
  v17 = v16;
  modificationDate = [recordCopy modificationDate];
  [modificationDate timeIntervalSinceReferenceDate];
  v20 = v19;

  if (v17 <= v20)
  {
    goto LABEL_10;
  }

  v13 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v28 = 138412290;
    v29 = v9;
    v14 = "Local entry is newer, we need to update: %@";
    goto LABEL_12;
  }

LABEL_13:
}

- (void)beginWatchingForChanges
{
  v8.receiver = self;
  v8.super_class = AXSSPunctuationEntryCloudKitHelper;
  [(AXSSCloudKitHelper *)&v8 beginWatchingForChanges];
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter addObserver:self selector:sel_punctuationGroupChanged_ name:@"AXSSVoiceOverPunctuationGroupsChangedNotification" object:0];

  v4 = objc_alloc(MEMORY[0x1E6988780]);
  cloudkitQueue = [(AXSSCloudKitHelper *)self cloudkitQueue];
  v6 = [v4 initWithTargetSerialQueue:cloudkitQueue];
  changeCoalescer = self->_changeCoalescer;
  self->_changeCoalescer = v6;

  [(AXDispatchTimer *)self->_changeCoalescer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
}

- (void)punctuationGroupChanged:(id)changed
{
  changedCopy = changed;
  changeCoalescer = self->_changeCoalescer;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__AXSSPunctuationEntryCloudKitHelper_punctuationGroupChanged___block_invoke;
  v7[3] = &unk_1E8134950;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  [(AXDispatchTimer *)changeCoalescer afterDelay:v7 processBlock:0.5];
}

uint64_t __62__AXSSPunctuationEntryCloudKitHelper_punctuationGroupChanged___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1C0E8A000, v2, OS_LOG_TYPE_INFO, "Punctuation group changed locally, consolidating for cloud push: %@", &v7, 0xCu);
  }

  v4 = +[AXSSPunctuationManager sharedDatabase];
  v5 = [v4 managedObjectContext];
  [v5 performBlockAndWait:&__block_literal_global_15];

  return [*(a1 + 40) processLocalChangesAndPush];
}

void __62__AXSSPunctuationEntryCloudKitHelper_punctuationGroupChanged___block_invoke_17()
{
  v1 = +[AXSSPunctuationManager sharedDatabase];
  v0 = [v1 managedObjectContext];
  [v0 refreshAllObjects];
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
          [(AXSSPunctuationEntryCloudKitHelper *)v18 clearRecordsForPurging:v8, &v19, v9];
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
  v78 = *MEMORY[0x1E69E9840];
  cloudCopy = cloud;
  array = [MEMORY[0x1E695DF70] array];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v5 = +[AXSSPunctuationManager sharedDatabase];
  punctuationGroups = [v5 punctuationGroups];

  obj = punctuationGroups;
  v53 = array;
  v51 = [punctuationGroups countByEnumeratingWithState:&v65 objects:v77 count:16];
  if (v51)
  {
    v50 = *v66;
    do
    {
      v7 = 0;
      do
      {
        if (*v66 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v52 = v7;
        v8 = *(*(&v65 + 1) + 8 * v7);
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        entries = [v8 entries];
        v9 = [entries countByEnumeratingWithState:&v61 objects:v76 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v62;
          do
          {
            v12 = 0;
            do
            {
              if (*v62 != v11)
              {
                objc_enumerationMutation(entries);
              }

              v13 = *(*(&v61 + 1) + 8 * v12);
              v14 = AXLogPunctuationStorage();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
              {
                inCloud = [v13 inCloud];
                ckChangeTag = [v13 ckChangeTag];
                date = [MEMORY[0x1E695DF00] date];
                [date timeIntervalSinceReferenceDate];
                v30 = v29;
                ckRecordProcessDate = [v13 ckRecordProcessDate];
                [ckRecordProcessDate timeIntervalSinceReferenceDate];
                *buf = 67109890;
                *v71 = inCloud;
                *&v71[4] = 2112;
                *&v71[6] = ckChangeTag;
                v72 = 2112;
                v73 = v13;
                v74 = 2048;
                v75 = v30 - v32;
                _os_log_debug_impl(&dword_1C0E8A000, v14, OS_LOG_TYPE_DEBUG, "Is entry in icloud? %d, tag: %@: %@, last mod date: %f", buf, 0x26u);

                array = v53;
              }

              inCloud2 = [v13 inCloud];
              if (inCloud2)
              {
                ckChangeTag2 = [v13 ckChangeTag];
                v3 = ckChangeTag2;
                if (ckChangeTag2)
                {
                  goto LABEL_23;
                }
              }

              ckRecordProcessDate2 = [v13 ckRecordProcessDate];
              if (!ckRecordProcessDate2)
              {

                if (inCloud2)
                {
                }

LABEL_22:
                v24 = [(AXSSPunctuationEntryCloudKitHelper *)self createCKRecordFromEntry:v13];
                [array addObject:v24];

                date2 = [MEMORY[0x1E695DF00] date];
                [v13 setCkRecordProcessDate:date2];

                ckChangeTag2 = +[AXSSPunctuationManager sharedDatabase];
                [ckChangeTag2 updateEntry:v13];
LABEL_23:

                goto LABEL_24;
              }

              date3 = [MEMORY[0x1E695DF00] date];
              [date3 timeIntervalSinceReferenceDate];
              v20 = v19;
              ckRecordProcessDate3 = [v13 ckRecordProcessDate];
              [ckRecordProcessDate3 timeIntervalSinceReferenceDate];
              v23 = v20 - v22;

              if (inCloud2)
              {
              }

              if (v23 > 60.0)
              {
                goto LABEL_22;
              }

LABEL_24:
              ++v12;
            }

            while (v10 != v12);
            v10 = [entries countByEnumeratingWithState:&v61 objects:v76 count:16];
          }

          while (v10);
        }

        v7 = v52 + 1;
      }

      while (v52 + 1 != v51);
      v51 = [obj countByEnumeratingWithState:&v65 objects:v77 count:16];
    }

    while (v51);
  }

  array2 = [MEMORY[0x1E695DF70] array];
  v34 = +[AXSSPunctuationManager sharedDatabase];
  v35 = +[AXSSPunctuationEntry description];
  v36 = [v34 cloudRecordsToPurge:v35];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v56 = v36;
  v37 = [v56 countByEnumeratingWithState:&v57 objects:v69 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v58;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v58 != v39)
        {
          objc_enumerationMutation(v56);
        }

        v41 = *(*(&v57 + 1) + 8 * i);
        v42 = objc_alloc(MEMORY[0x1E695BA70]);
        uUIDString = [v41 UUIDString];
        recordZone = [(AXSSCloudKitHelper *)self recordZone];
        zoneID = [recordZone zoneID];
        v46 = [v42 initWithRecordName:uUIDString zoneID:zoneID];

        [array2 addObject:v46];
        v47 = AXLogPunctuationStorage();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v71 = v41;
          _os_log_impl(&dword_1C0E8A000, v47, OS_LOG_TYPE_INFO, "Purging entry: %@", buf, 0xCu);
        }

        array = v53;
      }

      v38 = [v56 countByEnumeratingWithState:&v57 objects:v69 count:16];
    }

    while (v38);
  }

  cloudCopy[2](cloudCopy, array, array2, &__block_literal_global_23_0);
}

void __67__AXSSPunctuationEntryCloudKitHelper_retrieveLocalChangesForCloud___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x1E696AFB0]);
  v4 = [v2 recordID];
  v5 = [v4 recordName];
  v6 = [v3 initWithUUIDString:v5];

  v7 = +[AXSSPunctuationManager sharedDatabase];
  v8 = [v7 punctuationEntryForUUID:v6];

  v9 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v15 = 138412802;
    v16 = v2;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_1C0E8A000, v9, OS_LOG_TYPE_INFO, "Processing entry cloud retreival: %@ %@ %@", &v15, 0x20u);
  }

  if (v8)
  {
    [v8 setInCloud:1];
    v10 = [v2 groupUUID];
    [v8 setGroupUUID:v10];

    v11 = [v2 recordChangeTag];
    [v8 setCkChangeTag:v11];

    [v8 setCkRecordProcessDate:0];
    v12 = +[AXSSPunctuationManager sharedDatabase];
    [v12 updateEntry:v8 fromCloudKit:1];

    v13 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v8 ckChangeTag];
      v15 = 138412546;
      v16 = v14;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1C0E8A000, v13, OS_LOG_TYPE_INFO, "Marked in icloud with new tag: %@: %@", &v15, 0x16u);
    }
  }
}

- (void)processServerUpdateChanges:(id)changes moc:(id)moc recordNameToManagedObject:(id)object
{
  v24 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  objectCopy = object;
  v9 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = changesCopy;
    v22 = 2112;
    v23 = objectCopy;
    _os_log_impl(&dword_1C0E8A000, v9, OS_LOG_TYPE_DEFAULT, "Received server updates: %@, %@", buf, 0x16u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = changesCopy;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(AXSSPunctuationEntryCloudKitHelper *)self _processPunctuationEntryFromCKRecord:*(*(&v15 + 1) + 8 * v14++), v15];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
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
        v13 = [v12 punctuationEntryForUUID:v11];

        v14 = +[AXSSPunctuationManager sharedDatabase];
        [v14 removeEntry:v13];

        v15 = AXLogPunctuationStorage();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v21 = v8;
          v22 = 2112;
          v23 = v13;
          _os_log_impl(&dword_1C0E8A000, v15, OS_LOG_TYPE_DEFAULT, "Removing entry from server push: %@ %@", buf, 0x16u);
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
  _os_log_debug_impl(&dword_1C0E8A000, a4, OS_LOG_TYPE_DEBUG, "Committing record purge entry: %@", a1, 0xCu);
}

@end