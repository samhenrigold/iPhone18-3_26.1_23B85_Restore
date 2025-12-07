@interface SCWZone
- (BOOL)isDirty;
- (BOOL)needsFirstSync;
- (NSArray)clientRecords;
- (SCWZone)initWithSchema:(id)schema store:(id)store;
- (SCWZoneDiff)clientDiff;
@end

@implementation SCWZone

- (NSArray)clientRecords
{
  schema = [(SCWZone *)self schema];
  clientDiff = [(SCWZone *)self clientDiff];
  store = [(SCWZone *)self store];
  serverRecords = [store serverRecords];
  v7 = [clientDiff applyToRecords:serverRecords];
  v8 = [schema validateRecords:v7];

  return v8;
}

- (SCWZoneDiff)clientDiff
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [SCWZoneModificationSilo alloc];
  schema = [(SCWZone *)self schema];
  store = [(SCWZone *)self store];
  serverRecords = [store serverRecords];
  v7 = [(SCWZoneModificationSilo *)v3 initWithZoneSchema:schema contents:serverRecords];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  store2 = [(SCWZone *)self store];
  pendingCommands = [store2 pendingCommands];

  v10 = [pendingCommands countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(pendingCommands);
        }

        [*(*(&v16 + 1) + 8 * i) executeWithZone:v7];
      }

      v11 = [pendingCommands countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  diff = [(SCWZoneModificationSilo *)v7 diff];

  return diff;
}

- (BOOL)needsFirstSync
{
  store = [(SCWZone *)self store];
  lastSyncDate = [store lastSyncDate];
  v4 = lastSyncDate == 0;

  return v4;
}

- (BOOL)isDirty
{
  store = [(SCWZone *)self store];
  lastSyncDate = [store lastSyncDate];

  store2 = [(SCWZone *)self store];
  lastDirtyDate = [store2 lastDirtyDate];

  if (lastSyncDate)
  {
    if (lastDirtyDate)
    {
      v7 = [lastDirtyDate compare:lastSyncDate] == 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (SCWZone)initWithSchema:(id)schema store:(id)store
{
  schemaCopy = schema;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = SCWZone;
  v9 = [(SCWZone *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_schema, schema);
    objc_storeStrong(&v10->_store, store);
  }

  return v10;
}

@end