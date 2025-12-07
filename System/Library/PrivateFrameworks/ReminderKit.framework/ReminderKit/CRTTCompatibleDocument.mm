@interface CRTTCompatibleDocument
- (CRTTCompatibleDocument)initWithVersion:(id)version startVersion:(id)startVersion rootObject:(id)object replica:(id)replica;
- (CRTTCompatibleDocument)initWithVersion:(id)version startVersion:(id)startVersion rootObject:(id)object replica:(id)replica topoTimestamp:(id)timestamp;
- (unint64_t)mergeResultForMergingWithDocument:(id)document;
- (void)mergeTimestampWithDocument:(id)document;
- (void)realizeLocalChanges;
@end

@implementation CRTTCompatibleDocument

- (CRTTCompatibleDocument)initWithVersion:(id)version startVersion:(id)startVersion rootObject:(id)object replica:(id)replica
{
  replicaCopy = replica;
  objectCopy = object;
  startVersionCopy = startVersion;
  versionCopy = version;
  v14 = [[TTCRVectorMultiTimestamp alloc] initWithCapacity:2];
  v15 = [(CRTTCompatibleDocument *)self initWithVersion:versionCopy startVersion:startVersionCopy rootObject:objectCopy replica:replicaCopy topoTimestamp:v14];

  return v15;
}

- (CRTTCompatibleDocument)initWithVersion:(id)version startVersion:(id)startVersion rootObject:(id)object replica:(id)replica topoTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v18.receiver = self;
  v18.super_class = CRTTCompatibleDocument;
  v13 = [(CRDocument *)&v18 initWithVersion:version startVersion:startVersion rootObject:object replica:replica];
  v14 = v13;
  if (v13)
  {
    [(CRTTCompatibleDocument *)v13 setSharedTopotextTimestamp:timestampCopy];
    array = [MEMORY[0x1E695DF70] array];
    [(CRTTCompatibleDocument *)v14 setStringsWithClocksNeedingUpdating:array];

    array2 = [MEMORY[0x1E695DF70] array];
    [(CRTTCompatibleDocument *)v14 setStringsWithClocksToResetAfterRealizingLocalChanges:array2];
  }

  return v14;
}

- (unint64_t)mergeResultForMergingWithDocument:(id)document
{
  documentCopy = document;
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, documentCopy);
  if (v6 && (-[CRTTCompatibleDocument sharedTopotextTimestamp](self, "sharedTopotextTimestamp"), v7 = objc_claimAutoreleasedReturnValue(), [v6 sharedTopotextTimestamp], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "compareTo:", v8), v8, v7, (v9 & 1) != 0))
  {
    v10 = 2;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CRTTCompatibleDocument;
    v10 = [(CRDocument *)&v12 mergeResultForMergingWithDocument:documentCopy];
  }

  return v10;
}

- (void)mergeTimestampWithDocument:(id)document
{
  v22 = *MEMORY[0x1E69E9840];
  documentCopy = document;
  v20.receiver = self;
  v20.super_class = CRTTCompatibleDocument;
  [(CRDocument *)&v20 mergeTimestampWithDocument:documentCopy];
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, documentCopy);
  if (v6)
  {
    sharedTopotextTimestamp = [(CRTTCompatibleDocument *)self sharedTopotextTimestamp];
    sharedTopotextTimestamp2 = [v6 sharedTopotextTimestamp];
    [sharedTopotextTimestamp mergeWithTimestamp:sharedTopotextTimestamp2];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    stringsWithClocksNeedingUpdating = [(CRTTCompatibleDocument *)self stringsWithClocksNeedingUpdating];
    v10 = [stringsWithClocksNeedingUpdating countByEnumeratingWithState:&v16 objects:v21 count:16];
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
            objc_enumerationMutation(stringsWithClocksNeedingUpdating);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          [v14 updateClock];
          [v14 checkTimestampLogStyleErrors:1];
          [v14 resetLocalReplicaClocksToTimestampValues];
        }

        v11 = [stringsWithClocksNeedingUpdating countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v11);
    }

    stringsWithClocksNeedingUpdating2 = [(CRTTCompatibleDocument *)self stringsWithClocksNeedingUpdating];
    [stringsWithClocksNeedingUpdating2 removeAllObjects];
  }
}

- (void)realizeLocalChanges
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = CRTTCompatibleDocument;
  [(CRDocument *)&v15 realizeLocalChanges];
  stringsWithClocksToResetAfterRealizingLocalChanges = [(CRTTCompatibleDocument *)self stringsWithClocksToResetAfterRealizingLocalChanges];
  v4 = [stringsWithClocksToResetAfterRealizingLocalChanges copy];

  stringsWithClocksToResetAfterRealizingLocalChanges2 = [(CRTTCompatibleDocument *)self stringsWithClocksToResetAfterRealizingLocalChanges];
  [stringsWithClocksToResetAfterRealizingLocalChanges2 removeAllObjects];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
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

        [*(*(&v11 + 1) + 8 * v10++) resetLocalReplicaClocksToTimestampValues];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

@end