@interface CalDatabaseInMemoryChangeTracking
+ (id)canonicalizePath:(id)path;
+ (id)changeTrackingForDatabase:(CalDatabase *)database;
+ (id)changeTrackingForDatabaseWithPath:(id)path;
+ (id)pathForDatabase:(CalDatabase *)database;
+ (void)_setInterestedDatabasePaths:(id)paths forContext:(id)context;
+ (void)setInterestedDatabasePaths:(id)paths forContext:(id)context;
+ (void)setInterestedDatabases:(id)databases forContext:(id)context;
- (CalDatabaseInMemoryChangeTracking)init;
- (id)changedEntityIDsBetweenMinExternalTimestamp:(unint64_t)timestamp minSelfTimestamp:(unint64_t)selfTimestamp maxExternalTimestamp:(unint64_t)externalTimestamp allowIntegrationChanges:(BOOL)changes latestSelfTimestamp:(unint64_t *)latestSelfTimestamp client:(int)client changeType:(unint64_t *)type deleteOffset:(unint64_t *)self0;
- (id)changedEntityIDsBetweenTimestamp:(id)timestamp andTimestamp:(unint64_t)andTimestamp allowIntegrationChanges:(BOOL)changes latestTimestamp:(id *)latestTimestamp client:(unsigned int)client changeType:(unint64_t *)type deleteOffset:(unint64_t *)offset;
- (id)changedEntityIDsForDatabase:(CalDatabase *)database sinceTimestamp:(id)timestamp allowIntegrationChanges:(BOOL)changes latestTimestamp:(id *)latestTimestamp changeType:(unint64_t *)type deleteOffset:(unint64_t *)offset;
- (int)_writeChanges:(id)changes withTimestamp:(unint64_t)timestamp flags:(int)flags clientID:(unsigned int)d atIndex:(int)index;
- (void)addChangeset:(__CFArray *)changeset deletes:(__CFArray *)deletes clientID:(unsigned int)d changeType:(unint64_t)type;
- (void)clearAllChangesets;
@end

@implementation CalDatabaseInMemoryChangeTracking

- (CalDatabaseInMemoryChangeTracking)init
{
  v3.receiver = self;
  v3.super_class = CalDatabaseInMemoryChangeTracking;
  result = [(CalDatabaseInMemoryChangeTracking *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (id)canonicalizePath:(id)path
{
  pathCopy = path;
  if (([pathCopy hasSuffix:@"/"] & 1) == 0)
  {
    v4 = [pathCopy stringByAppendingString:@"/"];

    pathCopy = v4;
  }

  return pathCopy;
}

+ (id)pathForDatabase:(CalDatabase *)database
{
  v4 = CalDatabaseCopyDirectoryPathForDatabase(database);
  v5 = [self canonicalizePath:v4];

  return v5;
}

+ (void)_setInterestedDatabasePaths:(id)paths forContext:(id)context
{
  v37 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  contextCopy = context;
  os_unfair_lock_lock(&_trackedDatabasesLock);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [_trackedDatabases allKeys];
  v7 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [_trackedDatabases objectForKeyedSubscript:v11];
        v13 = [pathsCopy containsObject:v11];
        clients = [v12 clients];
        v15 = clients;
        if (v13)
        {
          [clients addObject:contextCopy];

          [pathsCopy removeObject:v11];
        }

        else
        {
          [clients removeObject:contextCopy];

          if (([v12 hasClients] & 1) == 0)
          {
            [_trackedDatabases removeObjectForKey:v11];
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  if (!_trackedDatabases)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = _trackedDatabases;
    _trackedDatabases = v16;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = pathsCopy;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v27 + 1) + 8 * j);
        v24 = objc_alloc_init(CalInMemoryTrackedDatabase);
        clients2 = [(CalInMemoryTrackedDatabase *)v24 clients];
        [clients2 addObject:contextCopy];

        [_trackedDatabases setObject:v24 forKeyedSubscript:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v20);
  }

  os_unfair_lock_unlock(&_trackedDatabasesLock);
}

+ (void)setInterestedDatabases:(id)databases forContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  databasesCopy = databases;
  contextCopy = context;
  if (contextCopy)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = databasesCopy;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [self pathForDatabase:{*(*(&v15 + 1) + 8 * i), v15}];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v8 = 0;
  }

  [self _setInterestedDatabasePaths:v8 forContext:{contextCopy, v15}];
}

+ (void)setInterestedDatabasePaths:(id)paths forContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  contextCopy = context;
  if (contextCopy)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = pathsCopy;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [self canonicalizePath:{*(*(&v15 + 1) + 8 * i), v15}];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v8 = 0;
  }

  [self _setInterestedDatabasePaths:v8 forContext:{contextCopy, v15}];
}

+ (id)changeTrackingForDatabase:(CalDatabase *)database
{
  v4 = [self pathForDatabase:database];
  v5 = [self changeTrackingForDatabaseWithPath:v4];

  return v5;
}

+ (id)changeTrackingForDatabaseWithPath:(id)path
{
  v3 = [self canonicalizePath:path];
  os_unfair_lock_lock(&_trackedDatabasesLock);
  v4 = [_trackedDatabases objectForKeyedSubscript:v3];
  database = [v4 database];

  os_unfair_lock_unlock(&_trackedDatabasesLock);

  return database;
}

- (void)clearAllChangesets
{
  os_unfair_lock_lock(&self->_lock);
  self->_nextIndex = 0;
  self->_changeCount = 0;
  self->_lastPrunedTimestamp = CalMonotonicTime();

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addChangeset:(__CFArray *)changeset deletes:(__CFArray *)deletes clientID:(unsigned int)d changeType:(unint64_t)type
{
  typeCopy = type;
  v7 = *&d;
  Count = CFArrayGetCount(changeset);
  v12 = CFArrayGetCount(deletes) + Count;
  if (v12 >= 513)
  {

    [(CalDatabaseInMemoryChangeTracking *)self clearAllChangesets];
    return;
  }

  os_unfair_lock_lock(&self->_lock);
  v13 = self->_changeCount + v12;
  if (v13 >= 513)
  {
    if (1 - (v12 + self->_nextIndex) >= 0)
    {
      v14 = -((1 - (v12 + self->_nextIndex)) & 0x1FF);
    }

    else
    {
      v14 = (v12 + self->_nextIndex - 1) & 0x1FF;
    }

    self->_lastPrunedTimestamp = self->_changes[v14].timestamp;
  }

  v15 = CalMonotonicTime();
  v16 = [(CalDatabaseInMemoryChangeTracking *)self _writeChanges:deletes withTimestamp:v15 flags:typeCopy & 3 | 4u clientID:v7 atIndex:[(CalDatabaseInMemoryChangeTracking *)self _writeChanges:changeset withTimestamp:v15 flags:typeCopy & 3 clientID:v7 atIndex:self->_nextIndex]];
  self->_nextIndex = v16;
  if (v13 <= 512)
  {
    v18 = self->_changeCount + v12;
LABEL_19:
    self->_changeCount = v18;
    goto LABEL_20;
  }

  self->_changeCount = 512;
  lastPrunedTimestamp = self->_lastPrunedTimestamp;
  if (self->_changes[v16].timestamp == lastPrunedTimestamp)
  {
    v18 = 512;
    do
    {
      --v18;
      if (v16 == 511)
      {
        v16 = 0;
      }

      else
      {
        ++v16;
      }
    }

    while (self->_changes[v16].timestamp == lastPrunedTimestamp);
    goto LABEL_19;
  }

LABEL_20:

  os_unfair_lock_unlock(&self->_lock);
}

- (int)_writeChanges:(id)changes withTimestamp:(unint64_t)timestamp flags:(int)flags clientID:(unsigned int)d atIndex:(int)index
{
  v30 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = [changesCopy countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    changes = self->_changes;
    v17 = ((d & 0x1FFFFF) << 8) | (flags << 29);
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(changesCopy);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        v20 = &changes[index];
        v20->timestamp = timestamp;
        v21 = CalRecordIDGetEntityType(v19);
        *(v20 + 3) = *(v20 + 3) & 0xFFFFFF00 | internalEntityTypeFromExternalType(v21);
        v22 = CalRecordIDGetRowID(v19);
        v23 = v17 | *(v20 + 12);
        v20->rowID = v22;
        *(v20 + 3) = v23;
        if (index == 511)
        {
          index = 0;
        }

        else
        {
          ++index;
        }
      }

      v14 = [changesCopy countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  return index;
}

- (id)changedEntityIDsBetweenMinExternalTimestamp:(unint64_t)timestamp minSelfTimestamp:(unint64_t)selfTimestamp maxExternalTimestamp:(unint64_t)externalTimestamp allowIntegrationChanges:(BOOL)changes latestSelfTimestamp:(unint64_t *)latestSelfTimestamp client:(int)client changeType:(unint64_t *)type deleteOffset:(unint64_t *)self0
{
  changesCopy = changes;
  offsetCopy2 = offset;
  changeCount = self->_changeCount;
  if (changeCount < 1)
  {
    p_lastPrunedTimestamp = &self->_lastPrunedTimestamp;
  }

  else
  {
    nextIndex = self->_nextIndex;
    if (nextIndex)
    {
      v16 = nextIndex - 1;
    }

    else
    {
      v16 = 511;
    }

    p_lastPrunedTimestamp = &self->_changes[v16];
  }

  *latestSelfTimestamp = p_lastPrunedTimestamp->timestamp;
  if (offset)
  {
    *offset = 0;
  }

  if (timestamp >= selfTimestamp)
  {
    timestampCopy = selfTimestamp;
  }

  else
  {
    timestampCopy = timestamp;
  }

  if (timestampCopy < self->_lastPrunedTimestamp)
  {
    v19 = 0;
    goto LABEL_83;
  }

  if (!changeCount)
  {
    if (type)
    {
      *type = 1;
    }

    v19 = objc_alloc_init(MEMORY[0x1E695DEF0]);
    goto LABEL_83;
  }

  v20 = self->_nextIndex - changeCount + ((self->_nextIndex - changeCount) >> 31 << 9);
  v21 = changeCount - 1;
  v22 = 0;
  if (changeCount > 1)
  {
    do
    {
      v23 = v20 + ((v22 + v21) >> 1);
      v24 = v23 & 0x1FF;
      v26 = -v23;
      v25 = v26 < 0;
      v27 = v26 & 0x1FF;
      if (v25)
      {
        v28 = v24;
      }

      else
      {
        v28 = -v27;
      }

      if (self->_changes[v28].timestamp <= timestampCopy)
      {
        v22 = ((v22 + v21) >> 1) + 1;
      }

      else
      {
        v21 = (v22 + v21) >> 1;
      }
    }

    while (v22 < v21);
  }

  v29 = changeCount - v22;
  Mutable = CFDictionaryCreateMutable(0, changeCount - v22, 0, 0);
  v78 = Mutable;
  v79 = 0;
  if (v29 < 1)
  {
    v55 = Mutable;
    v31 = 0;
    v57 = 0;
    v56 = 1;
    goto LABEL_76;
  }

  v64 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  if ((v22 + v20) <= 0)
  {
    v35 = -(-(v22 + v20) & 0x1FF);
  }

  else
  {
    v35 = (v22 + v20) & 0x1FF;
  }

  changes = self->_changes;
  v37 = 1;
  selfTimestampCopy3 = selfTimestamp;
  externalTimestampCopy2 = externalTimestamp;
  timestampCopy3 = timestamp;
  v61 = changesCopy;
  clientCopy = client;
  do
  {
    v41 = &changes[v35];
    timestamp = v41->timestamp;
    v43 = *(v41 + 3);
    if (((v43 >> 8) & 0x1FFFFF) == client)
    {
      if (timestamp <= selfTimestampCopy3)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v44 = timestamp <= timestampCopy3 || timestamp > externalTimestampCopy2;
      if (v44)
      {
        goto LABEL_64;
      }
    }

    if ((v43 & 0x60000000) != 0x40000000 || changesCopy)
    {
      v70 = v34;
      v71 = v33;
      v46 = *(v41 + 3);
      rowID = v41->rowID;
      v68 = v37 != ((v43 >> 29) & 3);
      if ((v34 & 1) == 0)
      {
        v37 = (v43 >> 29) & 3;
      }

      v69 = v37;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      Value = CFDictionaryGetValue(v78, rowID);
      LODWORD(v74) = Value;
      if (Value)
      {
        if ((Value & 0x80000000) == 0)
        {
          v49 = 0;
          while ((Value & 0x1F) != v46)
          {
            ++v49;
            v44 = Value > 0x3F;
            Value >>= 6;
            if (!v44)
            {
              LODWORD(v76) = v49;
              HIDWORD(v74) = -1;
              goto LABEL_53;
            }
          }

          HIDWORD(v74) = v49;
          if ((Value & 0x20) == 0)
          {
LABEL_58:
            if ((v43 & 0x80000000) != 0)
            {
              EntityDict_set(&v78, v43, rowID, &v74, 1);
              ++v64;
              --v31;
            }

            goto LABEL_63;
          }

          goto LABEL_61;
        }

        v63 = v31;
        ValueAtIndex = CFArrayGetValueAtIndex(v79, Value & 0x7FFFFFFF);
        v75 = ValueAtIndex;
        Count = CFArrayGetCount(ValueAtIndex);
        if (Count >= 1)
        {
          v52 = Count;
          v53 = 0;
          while (1)
          {
            v54 = CFArrayGetValueAtIndex(ValueAtIndex, v53);
            if ((v54 & 0x1F) == v46)
            {
              break;
            }

            if (v52 == ++v53)
            {
              goto LABEL_52;
            }
          }

          HIDWORD(v74) = v53;
          v31 = v63;
          changesCopy = v61;
          client = clientCopy;
          if ((v54 & 0x20) == 0)
          {
            goto LABEL_58;
          }

LABEL_61:
          if ((v43 & 0x80000000) != 0)
          {
            goto LABEL_63;
          }

          EntityDict_set(&v78, v43, rowID, &v74, 0);
          --v64;
          goto LABEL_55;
        }

LABEL_52:
        HIDWORD(v74) = -1;
        v31 = v63;
        changesCopy = v61;
        client = clientCopy;
      }

      else
      {
        v74 = 0xFFFFFFFF00000000;
        LODWORD(v76) = 0;
      }

LABEL_53:
      if ((v43 & 0x80000000) != 0)
      {
        EntityDict_set(&v78, v43, rowID, &v74, 1);
        ++v64;
        goto LABEL_63;
      }

      EntityDict_set(&v78, v43, rowID, &v74, 0);
LABEL_55:
      ++v31;
LABEL_63:
      v33 = v70 & v68 | v71;
      v34 = 1;
      selfTimestampCopy3 = selfTimestamp;
      externalTimestampCopy2 = externalTimestamp;
      timestampCopy3 = timestamp;
      v37 = v69;
LABEL_64:
      if (v35 == 511)
      {
        v35 = 0;
      }

      else
      {
        ++v35;
      }
    }

    ++v32;
  }

  while (v32 != v29);
  v55 = v78;
  if (v33)
  {
    v56 = 0;
  }

  else
  {
    v56 = v37;
  }

  offsetCopy2 = offset;
  v57 = v64;
LABEL_76:
  v58 = 8 * (v57 + v31);
  v59 = malloc_type_malloc(v58, 0x100004000313F17uLL);
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x2020000000;
  v73[3] = v31;
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __194__CalDatabaseInMemoryChangeTracking_changedEntityIDsBetweenMinExternalTimestamp_minSelfTimestamp_maxExternalTimestamp_allowIntegrationChanges_latestSelfTimestamp_client_changeType_deleteOffset___block_invoke;
  v72[3] = &unk_1E8694500;
  v72[5] = &v74;
  v72[6] = v59;
  v72[4] = v73;
  context[0] = &v78;
  context[1] = v72;
  CFDictionaryApplyFunction(v55, _EntityDict_enumerate, context);
  CFRelease(v78);
  if (v79)
  {
    CFRelease(v79);
  }

  v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v59 length:v58 freeWhenDone:1];
  if (type)
  {
    *type = v56;
  }

  if (offsetCopy2)
  {
    *offsetCopy2 = v31;
  }

  _Block_object_dispose(v73, 8);
  _Block_object_dispose(&v74, 8);
LABEL_83:

  return v19;
}

uint64_t __194__CalDatabaseInMemoryChangeTracking_changedEntityIDsBetweenMinExternalTimestamp_minSelfTimestamp_maxExternalTimestamp_allowIntegrationChanges_latestSelfTimestamp_client_changeType_deleteOffset___block_invoke(uint64_t result, int a2, int a3, int a4)
{
  if ((a2 - 1) > 0x13)
  {
    v4 = -1;
  }

  else
  {
    v4 = dword_1DECB2170[a2 - 1];
  }

  v5 = 40;
  if (a4)
  {
    v5 = 32;
  }

  v6 = *(result + 48);
  *(v6 + 8 * *(*(*(result + v5) + 8) + 24)) = v4;
  *(v6 + 8 * (*(*(*(result + v5) + 8) + 24))++ + 4) = a3;
  return result;
}

- (id)changedEntityIDsBetweenTimestamp:(id)timestamp andTimestamp:(unint64_t)andTimestamp allowIntegrationChanges:(BOOL)changes latestTimestamp:(id *)latestTimestamp client:(unsigned int)client changeType:(unint64_t *)type deleteOffset:(unint64_t *)offset
{
  v10 = *&client;
  changesCopy = changes;
  timestampCopy = timestamp;
  os_unfair_lock_lock(&self->_lock);
  v21 = 0;
  others = [timestampCopy others];
  myself = [timestampCopy myself];

  v18 = [(CalDatabaseInMemoryChangeTracking *)self changedEntityIDsBetweenMinExternalTimestamp:others minSelfTimestamp:myself maxExternalTimestamp:andTimestamp allowIntegrationChanges:changesCopy latestSelfTimestamp:&v21 client:v10 changeType:type deleteOffset:offset];
  if (latestTimestamp)
  {
    v19 = [CalSingleDatabaseInMemoryChangeTimestamp alloc];
    *latestTimestamp = [(CalSingleDatabaseInMemoryChangeTimestamp *)v19 initWithTimestampForMyself:v21 others:andTimestamp];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v18;
}

- (id)changedEntityIDsForDatabase:(CalDatabase *)database sinceTimestamp:(id)timestamp allowIntegrationChanges:(BOOL)changes latestTimestamp:(id *)latestTimestamp changeType:(unint64_t *)type deleteOffset:(unint64_t *)offset
{
  changesCopy = changes;
  timestampCopy = timestamp;
  os_unfair_lock_lock(&database->var9);
  var21 = database->var21;
  var22 = database->var22;
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(&database->var9);
  }

  os_unfair_lock_unlock(&database->var9);
  v17 = [(CalDatabaseInMemoryChangeTracking *)self changedEntityIDsBetweenTimestamp:timestampCopy andTimestamp:var21 allowIntegrationChanges:changesCopy latestTimestamp:latestTimestamp client:var22 changeType:type deleteOffset:offset];

  return v17;
}

@end