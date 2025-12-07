@interface CCDatabaseSetChangeEnumerator
+ (unint64_t)localItemInstanceCountFromBookmark:(id)bookmark;
+ (unint64_t)sharedItemCountFromBookmark:(id)bookmark;
- (BOOL)_imputeChanges:(id *)changes;
- (BOOL)_obtainDatabaseAccess:(id *)access;
- (BOOL)_resetDatabaseAccess:(id *)access;
- (BOOL)beginWithBookmark:(id)bookmark error:(id *)error;
- (BOOL)isBookmarkUpToDate:(id)date;
- (BOOL)reset:(id *)reset;
- (CCDatabaseSetChangeEnumerator)init;
- (CCDatabaseSetChangeEnumerator)initWithSet:(id)set readAccess:(id)access;
- (id)_contentMessageFromContentData:(id)data;
- (id)_metaContentMessageFromMetaContentData:(id)data;
- (id)itemInstanceCount:(id *)count;
- (id)next;
- (id)nextBookmark;
- (id)sharedItemCount:(id *)count;
- (int64_t)_lastDeltaDate;
- (int64_t)_localResourceGenerationFromDatabaseDeviceMapping;
- (void)_lastDeltaDate;
- (void)dealloc;
- (void)nextBookmark;
@end

@implementation CCDatabaseSetChangeEnumerator

- (id)next
{
  v68 = *MEMORY[0x1E69E9840];
  if (!self->_provenanceEnumerator)
  {
    p_super = __biome_log_for_category();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      [CCDatabaseSetChangeEnumerator next];
    }

    goto LABEL_51;
  }

  p_super = 0;
  *&v2 = 138412546;
  v55 = v2;
  do
  {
    if (!self->_nextRow)
    {
      nextRow = [(CCDatabaseValueRowEnumerator *)self->_provenanceEnumerator nextRow];
      v6 = [CCDatabaseJoinedProvenance joinedProvenanceFromDatabaseValueRow:nextRow];
      nextRow = self->_nextRow;
      self->_nextRow = v6;

      if (!v6)
      {
        break;
      }
    }

    v8 = objc_autoreleasePoolPush();
    provenance = [(CCDatabaseJoinedProvenance *)self->_nextRow provenance];
    provenance2 = [(CCDatabaseJoinedProvenance *)self->_nextRow provenance];
    contentHash = [provenance2 contentHash];

    provenance3 = [(CCDatabaseJoinedProvenance *)self->_nextRow provenance];
    instanceHash = [provenance3 instanceHash];

    contentData = [(CCDatabaseJoinedProvenance *)self->_nextRow contentData];
    metaContentData = [(CCDatabaseJoinedProvenance *)self->_nextRow metaContentData];
    if (!contentHash)
    {
      v23 = __biome_log_for_category();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v65 = provenance;
        _os_log_error_impl(&dword_1B6DB2000, v23, OS_LOG_TYPE_ERROR, "missing content hash, provenance row is not enumerable: %@", buf, 0xCu);
      }

      v24 = 0;
      deviceRowId = self->_nextRow;
      self->_nextRow = 0;
      goto LABEL_43;
    }

    v63 = contentData;
    deviceRowId = [provenance deviceRowId];
    v17 = [(CCDatabaseDeviceMapping *)self->_deviceMapping siteIdentifierForDeviceRowId:deviceRowId];
    if (!v17)
    {
      v25 = __biome_log_for_category();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = v55;
        v65 = deviceRowId;
        v66 = 2112;
        v67 = provenance;
        _os_log_error_impl(&dword_1B6DB2000, v25, OS_LOG_TYPE_ERROR, "could not find device with rowId: %@ for provenance row: %@", buf, 0x16u);
      }

      v24 = 0;
      v26 = self->_nextRow;
      self->_nextRow = 0;
      goto LABEL_42;
    }

    v61 = instanceHash;
    v59 = v8;
    v62 = [(CCDatabaseDeviceMapping *)self->_deviceMapping deviceForDeviceRowId:deviceRowId];
    contentState = [provenance contentState];
    unsignedIntValue = [contentState unsignedIntValue];

    metaContentState = [provenance metaContentState];
    unsignedIntValue2 = [metaContentState unsignedIntValue];

    if (!p_super)
    {
      goto LABEL_19;
    }

    if (([p_super containsContentHash:contentHash]& 1) != 0)
    {
      v58 = p_super;
      v22 = self->_nextRow;
      self->_nextRow = 0;
      goto LABEL_20;
    }

    if (([p_super containsChangesAfterDeduplication]& 1) == 0)
    {

LABEL_19:
      v27 = self->_nextRow;
      self->_nextRow = 0;

      v22 = [(CCDatabaseSetChangeEnumerator *)self _contentMessageFromContentData:v63];
      v28 = [[CCSharedItem alloc] initWithSharedIdentifier:contentHash content:v22];
      v58 = [[CCMutableSetChange alloc] initWithSharedItem:v28 changeType:1];

LABEL_20:
      contentSequenceNumber = [provenance contentSequenceNumber];
      unsignedIntegerValue = [contentSequenceNumber unsignedIntegerValue];

      v60 = [objc_alloc(getCKDistributedTimestampClass()) initWithSiteIdentifierObject:v17 clockValue:unsignedIntegerValue];
      if (unsignedIntValue == 2)
      {
        p_super = &v58->super;
        if ([(CKDistributedTimestampStateVector *)self->_contentRemovalsVector atomStateForTimestamp:v60]== 2)
        {
          [(CCMutableSetChange *)v58 appendRemovedDevices:v62];
          [(CCDatabaseSetStateVectorBuilder *)self->_seenContentBuilder addClockValue:unsignedIntegerValue withAtomState:2 forDeviceRowId:deviceRowId];
        }
      }

      else
      {
        p_super = &v58->super;
        if (unsignedIntValue == 1)
        {
          if ([(CKDistributedTimestampStateVector *)self->_contentContentsVector atomStateForTimestamp:v60]== 1)
          {
            [(CCMutableSetChange *)v58 appendAddedDevices:v62];
            [(CCDatabaseSetStateVectorBuilder *)self->_seenContentBuilder addClockValue:unsignedIntegerValue withAtomState:1 forDeviceRowId:deviceRowId];
          }

          if (unsignedIntValue2 != 2)
          {
            [(CCMutableSetChange *)v58 appendAllDevices:v62];
          }
        }
      }

      metaContentSequenceNumber = [provenance metaContentSequenceNumber];

      if (metaContentSequenceNumber)
      {
        metaContentSequenceNumber2 = [provenance metaContentSequenceNumber];
        unsignedIntegerValue2 = [metaContentSequenceNumber2 unsignedIntegerValue];

        v34 = [objc_alloc(getCKDistributedTimestampClass()) initWithSiteIdentifierObject:v17 clockValue:unsignedIntegerValue2];
        if (unsignedIntValue2 == 2)
        {
          if ([(CKDistributedTimestampStateVector *)self->_metaContentRemovalsVector atomStateForTimestamp:v34]== 2)
          {
            v39 = [[CCItemInstance alloc] initWithSharedIdentifier:contentHash instanceIdentifier:v61 content:0 metaContent:0];
            [p_super appendRemovedLocalInstances:v39];
            [(CCDatabaseSetStateVectorBuilder *)self->_seenMetaContentBuilder addClockValue:unsignedIntegerValue2 withAtomState:2 forDeviceRowId:deviceRowId];
            goto LABEL_38;
          }
        }

        else if (unsignedIntValue2 == 1)
        {
          v57 = v34;
          if ([(CKDistributedTimestampStateVector *)self->_metaContentContentsVector atomStateForTimestamp:v34]== 1 && metaContentData)
          {
            v56 = [(CCDatabaseSetChangeEnumerator *)self _metaContentMessageFromMetaContentData:metaContentData];
            v35 = [CCItemInstance alloc];
            sharedItem = [p_super sharedItem];
            content = [sharedItem content];
            v38 = [(CCItemInstance *)v35 initWithSharedIdentifier:contentHash instanceIdentifier:v61 content:content metaContent:v56];

            p_super = &v58->super;
            [(CCMutableSetChange *)v58 appendAddedLocalInstances:v38];
            [(CCDatabaseSetStateVectorBuilder *)self->_seenMetaContentBuilder addClockValue:unsignedIntegerValue2 withAtomState:1 forDeviceRowId:deviceRowId];

            goto LABEL_37;
          }

          if (metaContentData)
          {
LABEL_37:
            v39 = [(CCDatabaseSetChangeEnumerator *)self _metaContentMessageFromMetaContentData:metaContentData];
            v40 = [CCItemInstance alloc];
            sharedItem2 = [p_super sharedItem];
            content2 = [sharedItem2 content];
            v43 = [(CCItemInstance *)v40 initWithSharedIdentifier:contentHash instanceIdentifier:v61 content:content2 metaContent:v39];

            p_super = &v58->super;
            v34 = v57;
            [(CCMutableSetChange *)v58 appendAllLocalInstances:v43];

LABEL_38:
          }
        }
      }

      v24 = 0;
      goto LABEL_41;
    }

    v24 = 1;
LABEL_41:
    v8 = v59;
    instanceHash = v61;
    v26 = v62;
LABEL_42:

    contentData = v63;
LABEL_43:

    objc_autoreleasePoolPop(v8);
  }

  while (!v24);
  if (!self->_nextRow && ![p_super containsChangesAfterDeduplication])
  {
LABEL_51:
    v49 = 0;
    goto LABEL_59;
  }

  removedDevices = [p_super removedDevices];
  if ([removedDevices count])
  {
    allDevices = [p_super allDevices];
    v46 = [allDevices count];

    if (!v46)
    {
      v47 = p_super;
      v48 = 2;
      goto LABEL_56;
    }
  }

  else
  {
  }

  addedDevices = [p_super addedDevices];
  allDevices2 = [p_super allDevices];
  if ([addedDevices isEqual:allDevices2])
  {
    removedDevices2 = [p_super removedDevices];
    v53 = [removedDevices2 count];

    if (!v53)
    {
      v47 = p_super;
      v48 = 0;
LABEL_56:
      [v47 setSharedItemChangeType:v48];
    }
  }

  else
  {
  }

  v49 = [p_super copy];
LABEL_59:

  return v49;
}

- (id)nextBookmark
{
  p_provenanceEnumerator = &self->_provenanceEnumerator;
  provenanceEnumerator = self->_provenanceEnumerator;
  if (!provenanceEnumerator)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CCDatabaseSetChangeEnumerator nextBookmark];
    }

    goto LABEL_7;
  }

  error = [(CCDatabaseValueRowEnumerator *)provenanceEnumerator error];

  if (error)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CCDatabaseSetChangeEnumerator *)p_provenanceEnumerator nextBookmark];
    }

LABEL_7:

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  _localResourceGenerationFromDatabaseDeviceMapping = [(CCDatabaseSetChangeEnumerator *)self _localResourceGenerationFromDatabaseDeviceMapping];
  if (_localResourceGenerationFromDatabaseDeviceMapping < 0)
  {
    goto LABEL_8;
  }

  v10 = _localResourceGenerationFromDatabaseDeviceMapping;
  getCKDistributedTimestampStateVectorClass_0();
  v11 = objc_opt_new();
  [v11 unionStateVector:self->_lastContentStateVector];
  build = [(CCDatabaseSetStateVectorBuilder *)self->_seenContentBuilder build];
  [v11 unionStateVector:build];

  getCKDistributedTimestampStateVectorClass_0();
  v13 = objc_opt_new();
  [v13 unionStateVector:self->_lastMetaContentStateVector];
  build2 = [(CCDatabaseSetStateVectorBuilder *)self->_seenMetaContentBuilder build];
  [v13 unionStateVector:build2];

  v7 = [[CCSetChangeBookmark alloc] initWithContentVector:v11 metaContentVector:v13 localResourceGeneration:v10 lastDeltaDate:[(CCDatabaseSetChangeEnumerator *)self _lastDeltaDate] set:self->_set];
LABEL_9:

  return v7;
}

- (int64_t)_localResourceGenerationFromDatabaseDeviceMapping
{
  localDeviceSite = [(CCDatabaseDeviceMapping *)self->_deviceMapping localDeviceSite];
  resourceGeneration = [localDeviceSite resourceGeneration];

  if (resourceGeneration)
  {
    longLongValue = [resourceGeneration longLongValue];
  }

  else
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseSetChangeEnumerator _localResourceGenerationFromDatabaseDeviceMapping];
    }

    longLongValue = -1;
  }

  return longLongValue;
}

- (int64_t)_lastDeltaDate
{
  lastDeltaDate = self->_lastDeltaDate;
  if (lastDeltaDate)
  {
    return [(NSNumber *)lastDeltaDate longLongValue];
  }

  stateReader = self->_stateReader;
  v10 = 0;
  v5 = [(CCDatabaseSetStateReader *)stateReader lastDeltaDate:&v10];
  v6 = v10;
  v7 = self->_lastDeltaDate;
  self->_lastDeltaDate = v5;

  if (self->_lastDeltaDate)
  {
LABEL_3:

    lastDeltaDate = self->_lastDeltaDate;
    return [(NSNumber *)lastDeltaDate longLongValue];
  }

  if (!v6)
  {
    self->_lastDeltaDate = &unk_1F2EC9300;

    goto LABEL_3;
  }

  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [CCDatabaseSetChangeEnumerator _lastDeltaDate];
  }

  return -1;
}

- (void)dealloc
{
  v7 = 0;
  v3 = [(CCDatabaseSetChangeEnumerator *)self reset:&v7];
  v4 = v7;
  if (!v3)
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseSetChangeEnumerator dealloc];
    }
  }

  v6.receiver = self;
  v6.super_class = CCDatabaseSetChangeEnumerator;
  [(CCDatabaseSetChangeEnumerator *)&v6 dealloc];
}

- (CCDatabaseSetChangeEnumerator)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCDatabaseSetChangeEnumerator)initWithSet:(id)set readAccess:(id)access
{
  setCopy = set;
  accessCopy = access;
  v12.receiver = self;
  v12.super_class = CCDatabaseSetChangeEnumerator;
  v9 = [(CCDatabaseSetChangeEnumerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_set, set);
    objc_storeStrong(&v10->_readAccess, access);
  }

  return v10;
}

- (BOOL)beginWithBookmark:(id)bookmark error:(id *)error
{
  v86 = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  v69 = 0;
  v7 = [(CCDatabaseSetChangeEnumerator *)self _obtainDatabaseAccess:&v69];
  v8 = v69;
  v9 = v8;
  if (!v7)
  {
    domain = [v8 domain];
    if ([domain isEqual:@"com.apple.CascadeSets.Set"])
    {
      code = [v9 code];

      if (code == 4)
      {
        lastMetaContentStateVector = __biome_log_for_category();
        if (os_log_type_enabled(lastMetaContentStateVector, OS_LOG_TYPE_DEFAULT))
        {
          v26 = objc_opt_class();
          *buf = 138412546;
          v83 = v26;
          v84 = 2112;
          v85 = v9;
          _os_log_impl(&dword_1B6DB2000, lastMetaContentStateVector, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
        }

LABEL_19:
        v12 = v9;
        goto LABEL_20;
      }
    }

    else
    {
    }

    v27 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E698F0B0];
    v80[0] = *MEMORY[0x1E696A578];
    lastMetaContentStateVector = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ failed access database", objc_opt_class()];
    v81[0] = lastMetaContentStateVector;
    v80[1] = *MEMORY[0x1E696AA08];
    null = v9;
    if (!v9)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v81[1] = null;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:2];
    v31 = [v27 errorWithDomain:v28 code:3 userInfo:v30];
    CCSetError(error, v31);

    if (!v9)
    {
    }

    goto LABEL_19;
  }

  stateReader = self->_stateReader;
  v68 = v9;
  v11 = [(CCDatabaseSetStateReader *)stateReader constructDeviceMapping:&v68];
  v12 = v68;

  deviceMapping = self->_deviceMapping;
  self->_deviceMapping = v11;

  if (!self->_deviceMapping)
  {
    v35 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E698F0B0];
    v78[0] = *MEMORY[0x1E696A578];
    lastMetaContentStateVector = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ failed to construct device mapping", objc_opt_class()];
    v79[0] = lastMetaContentStateVector;
    v78[1] = *MEMORY[0x1E696AA08];
    null2 = v12;
    if (!v12)
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    v79[1] = null2;
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:2];
    v39 = [v35 errorWithDomain:v36 code:3 userInfo:v38];
    CCSetError(error, v39);

    if (v12)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

  _localResourceGenerationFromDatabaseDeviceMapping = [(CCDatabaseSetChangeEnumerator *)self _localResourceGenerationFromDatabaseDeviceMapping];
  if (_localResourceGenerationFromDatabaseDeviceMapping < 0)
  {
    lastMetaContentStateVector = __biome_log_for_category();
    if (os_log_type_enabled(lastMetaContentStateVector, OS_LOG_TYPE_DEFAULT))
    {
      v40 = objc_opt_class();
      *buf = 138412290;
      v83 = v40;
      _os_log_impl(&dword_1B6DB2000, lastMetaContentStateVector, OS_LOG_TYPE_DEFAULT, "%@ Will complete enumeration without error due to invalid database state", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (!bookmarkCopy)
  {
    v41 = objc_alloc_init(getCKDistributedTimestampStateVectorClass_0());
    lastContentStateVector = self->_lastContentStateVector;
    self->_lastContentStateVector = v41;

    v43 = objc_alloc_init(getCKDistributedTimestampStateVectorClass_0());
    lastMetaContentStateVector = self->_lastMetaContentStateVector;
    self->_lastMetaContentStateVector = v43;
    goto LABEL_29;
  }

  v15 = _localResourceGenerationFromDatabaseDeviceMapping;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v45 = objc_alloc(MEMORY[0x1E696ABC0]);
    v76 = *MEMORY[0x1E696A578];
    v46 = MEMORY[0x1E696AEC0];
    v47 = objc_opt_class();
    lastMetaContentStateVector = NSStringFromClass(v47);
    v48 = objc_opt_class();
    v49 = NSStringFromClass(v48);
    v50 = [v46 stringWithFormat:@"The provided bookmark was of class %@, but we expected %@", lastMetaContentStateVector, v49];
    v77 = v50;
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v52 = [v45 initWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:v51];
    CCSetError(error, v52);

    goto LABEL_20;
  }

  lastMetaContentStateVector = bookmarkCopy;
  v17 = +[CCSetChangeBookmark currentBookmarkVersion];
  bookmarkVersion = [lastMetaContentStateVector bookmarkVersion];
  if (bookmarkVersion != v17)
  {
    v55 = MEMORY[0x1E696ABC0];
    v56 = *MEMORY[0x1E698F0B0];
    v74 = *MEMORY[0x1E696A278];
    null2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Current bookmark version requirement (%d) invalidates the provided bookmark (%d): %@", v17, bookmarkVersion, lastMetaContentStateVector];
    v75 = null2;
    v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    v58 = v55;
    v59 = v56;
LABEL_42:
    v66 = [v58 errorWithDomain:v59 code:2 userInfo:v57];
    CCSetError(error, v66);

LABEL_43:
    goto LABEL_20;
  }

  localResourceGeneration = [lastMetaContentStateVector localResourceGeneration];
  if (!localResourceGeneration || localResourceGeneration != v15)
  {
    v64 = MEMORY[0x1E696ABC0];
    v65 = *MEMORY[0x1E698F0B0];
    v72 = *MEMORY[0x1E696A278];
    null2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Database resource generation (%lld) invalidates the provided bookmark (%lld): %@", v15, localResourceGeneration, lastMetaContentStateVector];
    v73 = null2;
    v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    v58 = v64;
    v59 = v65;
    goto LABEL_42;
  }

  contentVector = [lastMetaContentStateVector contentVector];
  v21 = self->_lastContentStateVector;
  self->_lastContentStateVector = contentVector;

  metaContentVector = [lastMetaContentStateVector metaContentVector];
  v23 = self->_lastMetaContentStateVector;
  self->_lastMetaContentStateVector = metaContentVector;

LABEL_29:
  v67 = v12;
  v44 = [(CCDatabaseSetChangeEnumerator *)self _imputeChanges:&v67];
  v33 = v67;

  if (v44)
  {
    v32 = 1;
    goto LABEL_21;
  }

  domain2 = [v33 domain];
  if ([domain2 isEqual:@"com.apple.CascadeSets.Set"])
  {
    v54 = 2 * ([v33 code]== 2);
  }

  else
  {
    v54 = 0;
  }

  v60 = MEMORY[0x1E696ABC0];
  v61 = *MEMORY[0x1E698F0B0];
  v70 = *MEMORY[0x1E696AA08];
  lastMetaContentStateVector = v33;
  if (!v33)
  {
    lastMetaContentStateVector = [MEMORY[0x1E695DFB0] null];
  }

  v71 = lastMetaContentStateVector;
  v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
  v63 = [v60 errorWithDomain:v61 code:v54 userInfo:v62];
  CCSetError(error, v63);

  if (v33)
  {
    v32 = 0;
    goto LABEL_21;
  }

  v12 = 0;
LABEL_20:

  v32 = 0;
  v33 = v12;
LABEL_21:

  return v32;
}

- (BOOL)_obtainDatabaseAccess:(id *)access
{
  if (self->_databaseAccess && self->_stateReader)
  {
    return 1;
  }

  set = self->_set;
  readAccess = self->_readAccess;
  v15 = 0;
  v8 = [(CCDataResourceReadAccess *)readAccess databaseReadAccessForSet:set error:&v15];
  v9 = v15;
  databaseAccess = self->_databaseAccess;
  self->_databaseAccess = v8;

  v11 = self->_databaseAccess;
  v5 = v11 != 0;
  if (v11)
  {
    v12 = [[CCDatabaseSetStateReader alloc] initWithDatabaseAccess:self->_databaseAccess siteIdentifierFormat:2];
    stateReader = self->_stateReader;
    self->_stateReader = v12;
  }

  else
  {
    CCSetError(access, v9);
  }

  return v5;
}

- (BOOL)reset:(id *)reset
{
  lastContentStateVector = self->_lastContentStateVector;
  self->_lastContentStateVector = 0;

  lastMetaContentStateVector = self->_lastMetaContentStateVector;
  self->_lastMetaContentStateVector = 0;

  contentContentsVector = self->_contentContentsVector;
  self->_contentContentsVector = 0;

  contentRemovalsVector = self->_contentRemovalsVector;
  self->_contentRemovalsVector = 0;

  metaContentContentsVector = self->_metaContentContentsVector;
  self->_metaContentContentsVector = 0;

  metaContentRemovalsVector = self->_metaContentRemovalsVector;
  self->_metaContentRemovalsVector = 0;

  nextRow = self->_nextRow;
  self->_nextRow = 0;

  seenContentBuilder = self->_seenContentBuilder;
  self->_seenContentBuilder = 0;

  seenMetaContentBuilder = self->_seenMetaContentBuilder;
  self->_seenMetaContentBuilder = 0;

  provenanceEnumerator = self->_provenanceEnumerator;
  self->_provenanceEnumerator = 0;

  localResourceGeneration = self->_localResourceGeneration;
  self->_localResourceGeneration = 0;

  lastDeltaDate = self->_lastDeltaDate;
  self->_lastDeltaDate = 0;

  deviceMapping = self->_deviceMapping;
  self->_deviceMapping = 0;

  return [(CCDatabaseSetChangeEnumerator *)self _resetDatabaseAccess:reset];
}

- (BOOL)_resetDatabaseAccess:(id *)access
{
  v17[2] = *MEMORY[0x1E69E9840];
  databaseAccess = self->_databaseAccess;
  if (!databaseAccess)
  {
    v7 = 0;
    goto LABEL_9;
  }

  v15 = 0;
  v5 = [(CCDatabaseReadOnlyAccess *)databaseAccess reset:&v15];
  v6 = v15;
  v7 = v6;
  if (v5)
  {
LABEL_9:
    v13 = 1;
    goto LABEL_10;
  }

  v8 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E698F0B0];
  v16[0] = *MEMORY[0x1E696AA08];
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = *MEMORY[0x1E696A278];
  v17[0] = null;
  v17[1] = @"Failed to reset database";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v12 = [v8 errorWithDomain:v9 code:0 userInfo:v11];
  CCSetError(access, v12);

  if (!v7)
  {
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (id)sharedItemCount:(id *)count
{
  v18[2] = *MEMORY[0x1E69E9840];
  if ([(CCDatabaseSetChangeEnumerator *)self _obtainDatabaseAccess:?])
  {
    stateReader = self->_stateReader;
    v16 = 0;
    v6 = [(CCDatabaseSetStateReader *)stateReader sharedItemCount:&v16];
    v7 = v16;
    v8 = v7;
    if (!v6)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E698F0B0];
      v17[0] = *MEMORY[0x1E696AA08];
      null = v7;
      if (!v7)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v17[1] = *MEMORY[0x1E696A278];
      v18[0] = null;
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to count shared items in set: %@", self->_set];
      v18[1] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
      v14 = [v9 errorWithDomain:v10 code:0 userInfo:v13];
      CCSetError(count, v14);

      if (!v8)
      {
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)itemInstanceCount:(id *)count
{
  v18[2] = *MEMORY[0x1E69E9840];
  if ([(CCDatabaseSetChangeEnumerator *)self _obtainDatabaseAccess:?])
  {
    stateReader = self->_stateReader;
    v16 = 0;
    v6 = [(CCDatabaseSetStateReader *)stateReader itemInstanceCount:&v16];
    v7 = v16;
    v8 = v7;
    if (!v6)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E698F0B0];
      v17[0] = *MEMORY[0x1E696AA08];
      null = v7;
      if (!v7)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v17[1] = *MEMORY[0x1E696A278];
      v18[0] = null;
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to count item instances in set: %@", self->_set];
      v18[1] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
      v14 = [v9 errorWithDomain:v10 code:0 userInfo:v13];
      CCSetError(count, v14);

      if (!v8)
      {
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isBookmarkUpToDate:(id)date
{
  dateCopy = date;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CCSerializedSetChangeEnumerator isBookmarkUpToDate:dateCopy];
    }

    goto LABEL_10;
  }

  v11 = 0;
  v5 = [(CCDatabaseSetChangeEnumerator *)self _obtainDatabaseAccess:&v11];
  v6 = v11;
  if (!v5)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseSetChangeEnumerator isBookmarkUpToDate:];
    }

    goto LABEL_10;
  }

  _lastDeltaDate = [(CCDatabaseSetChangeEnumerator *)self _lastDeltaDate];
  if (_lastDeltaDate < 0)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v8 = _lastDeltaDate == [dateCopy lastDeltaDate];
LABEL_11:

  return v8;
}

- (BOOL)_imputeChanges:(id *)changes
{
  v97 = *MEMORY[0x1E69E9840];
  stateReader = self->_stateReader;
  deviceMapping = self->_deviceMapping;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  v6 = [(CCDatabaseSetStateReader *)stateReader constructStateVectorsFromDatabaseWithDeviceMapping:deviceMapping outContent:&v93 outMetaContent:&v92 error:&v91];
  v72 = v93;
  v70 = v92;
  v71 = v91;
  v7 = __biome_log_for_category();
  v8 = v7;
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseSetChangeEnumerator _imputeChanges:];
    }

    CCSetError(changes, v71);
    goto LABEL_32;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CCDatabaseSetChangeEnumerator _imputeChanges:];
  }

  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [CCDatabaseSetChangeEnumerator _imputeChanges:];
  }

  if (!v72)
  {
    v18 = __biome_log_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseSetChangeEnumerator _imputeChanges:];
    }

    goto LABEL_31;
  }

  if (!v70)
  {
    v18 = __biome_log_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseSetChangeEnumerator _imputeChanges:];
    }

LABEL_31:

LABEL_32:
    v19 = 0;
    goto LABEL_33;
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  p_lastContentStateVector = &self->_lastContentStateVector;
  obj = [(CKDistributedTimestampStateVector *)self->_lastContentStateVector allSiteIdentifiers];
  v10 = [obj countByEnumeratingWithState:&v87 objects:v96 count:16];
  if (v10)
  {
    v76 = 0;
    v11 = *v88;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v88 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v87 + 1) + 8 * i);
        v14 = [(CCDatabaseDeviceMapping *)self->_deviceMapping deviceRowIdForSiteIdentifier:v13];

        if (!v14)
        {
          v83 = 0;
          v84 = &v83;
          v85 = 0x2020000000;
          v86 = 0;
          v15 = *p_lastContentStateVector;
          v82[0] = MEMORY[0x1E69E9820];
          v82[1] = 3221225472;
          v82[2] = __48__CCDatabaseSetChangeEnumerator__imputeChanges___block_invoke;
          v82[3] = &unk_1E7C8B800;
          v82[4] = &v83;
          [v15 enumerateClockValuesForSiteIdentifier:v13 usingBlock:v82];
          if (*(v84 + 24) == 1)
          {
            v21 = __biome_log_for_category();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v22 = [CCDatabaseDeviceMapping descriptionForSiteIdentifier:v13];
              [(CCDatabaseSetChangeEnumerator *)v22 _imputeChanges:buf, v21];
            }

            v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:0];
            CCSetError(changes, v23);

            _Block_object_dispose(&v83, 8);
            v19 = 0;
            goto LABEL_92;
          }

          if (!v76)
          {
            v76 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v16 = __biome_log_for_category();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [CCDatabaseDeviceMapping descriptionForSiteIdentifier:v13];
            *buf = 138412290;
            v95 = v17;
            _os_log_impl(&dword_1B6DB2000, v16, OS_LOG_TYPE_DEFAULT, "Found expired site: %@ eligible for cleanup from the client provided state vector", buf, 0xCu);
          }

          [v76 addObject:v13];
          _Block_object_dispose(&v83, 8);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v87 objects:v96 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v76 = 0;
  }

  if ([v76 count])
  {
    [CCDatabaseSetStateVectorBuilder removeSiteIdentifiers:v76 fromStateVector:*p_lastContentStateVector];
  }

  v24 = __biome_log_for_category();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [CCDatabaseSetChangeEnumerator _imputeChanges:];
  }

  v25 = __biome_log_for_category();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [CCDatabaseSetChangeEnumerator _imputeChanges:];
  }

  obj = [*p_lastContentStateVector clockVector];
  v26 = [v72 isGreaterThanOrEqualToVector:obj];
  v27 = __biome_log_for_category();
  v28 = v27;
  if (v26)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [CCDatabaseSetChangeEnumerator _imputeChanges:];
    }

    v29 = __biome_log_for_category();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [CCDatabaseSetChangeEnumerator _imputeChanges:];
    }

    clockVector = [(CKDistributedTimestampStateVector *)self->_lastMetaContentStateVector clockVector];
    if (([v70 isGreaterThanOrEqualToVector:clockVector] & 1) == 0)
    {
      v62 = __biome_log_for_category();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
      {
        [CCDatabaseSetChangeEnumerator _imputeChanges:];
      }

      v31 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:0];
      CCSetError(changes, v31);
      v19 = 0;
      goto LABEL_90;
    }

    v31 = [objc_alloc(getCKMergeableDeltaVectorsClass()) initWithPreviousStateVector:*p_lastContentStateVector currentStateVector:v72];
    contents = [v31 contents];
    removals = [v31 removals];
    v74 = [objc_alloc(getCKMergeableDeltaVectorsClass()) initWithPreviousStateVector:self->_lastMetaContentStateVector currentStateVector:v70];
    contents2 = [v74 contents];
    removals2 = [v74 removals];
    v34 = __biome_log_for_category();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      [CCDatabaseSetChangeEnumerator _imputeChanges:];
    }

    v35 = __biome_log_for_category();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      [CCDatabaseSetChangeEnumerator _imputeChanges:];
    }

    v36 = __biome_log_for_category();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      [CCDatabaseSetChangeEnumerator _imputeChanges:];
    }

    v37 = __biome_log_for_category();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [CCDatabaseSetChangeEnumerator _imputeChanges:];
    }

    v83 = 0;
    v84 = &v83;
    v85 = 0x2020000000;
    v86 = 1;
    v38 = objc_autoreleasePoolPush();
    v39 = self->_stateReader;
    v40 = self->_deviceMapping;
    v80[4] = &v83;
    v81 = 0;
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __48__CCDatabaseSetChangeEnumerator__imputeChanges___block_invoke_48;
    v80[3] = &unk_1E7C8B828;
    v41 = [(CCDatabaseSetStateReader *)v39 enumerateProvenanceRecordsForStateVector:removals withType:0 selectAtomsInState:2 skipOverAtomsInState:1 deviceMapping:v40 error:&v81 usingBlock:v80];
    v42 = v81;
    objc_autoreleasePoolPop(v38);
    if (!v41)
    {
      v63 = __biome_log_for_category();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseSetChangeEnumerator _imputeChanges:];
      }

      CCSetError(changes, v42);
      v19 = 0;
      goto LABEL_89;
    }

    v43 = objc_autoreleasePoolPush();
    v44 = self->_stateReader;
    v45 = self->_deviceMapping;
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __48__CCDatabaseSetChangeEnumerator__imputeChanges___block_invoke_50;
    v78[3] = &unk_1E7C8B828;
    v78[4] = &v83;
    v79 = 0;
    v46 = [(CCDatabaseSetStateReader *)v44 enumerateProvenanceRecordsForStateVector:removals2 withType:1 selectAtomsInState:2 skipOverAtomsInState:1 deviceMapping:v45 error:&v79 usingBlock:v78];
    v66 = v79;
    objc_autoreleasePoolPop(v43);
    if (!v46)
    {
      v64 = __biome_log_for_category();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseSetChangeEnumerator _imputeChanges:];
      }

      CCSetError(changes, v66);
      v19 = 0;
      goto LABEL_88;
    }

    if (v84[3])
    {
      objc_storeStrong(&self->_contentContentsVector, contents);
      objc_storeStrong(&self->_contentRemovalsVector, removals);
      objc_storeStrong(&self->_metaContentContentsVector, contents2);
      objc_storeStrong(&self->_metaContentRemovalsVector, removals2);
      v47 = [[CCDatabaseSetStateVectorBuilder alloc] initWithDeviceMapping:self->_deviceMapping missingAtomsImplied:0];
      seenContentBuilder = self->_seenContentBuilder;
      self->_seenContentBuilder = v47;

      v49 = [[CCDatabaseSetStateVectorBuilder alloc] initWithDeviceMapping:self->_deviceMapping missingAtomsImplied:0];
      seenMetaContentBuilder = self->_seenMetaContentBuilder;
      self->_seenMetaContentBuilder = v49;

      v51 = objc_autoreleasePoolPush();
      v52 = self->_stateReader;
      v53 = self->_seenContentBuilder;
      v54 = self->_seenMetaContentBuilder;
      v55 = self->_deviceMapping;
      v77 = 0;
      v56 = [(CCDatabaseSetStateReader *)v52 provenanceRecordEnumeratorForContentDeltaVector:v31 metaContentDeltaVector:v74 seenContentBuilder:v53 seenMetaContentBuilder:v54 deviceMapping:v55 error:&v77];
      v57 = v77;
      objc_autoreleasePoolPop(v51);
      provenanceEnumerator = self->_provenanceEnumerator;
      p_provenanceEnumerator = &self->_provenanceEnumerator;
      *p_provenanceEnumerator = v56;

      if (*p_provenanceEnumerator)
      {
        v60 = v57 == 0;
      }

      else
      {
        v60 = 0;
      }

      v19 = v60;
      if (v60)
      {
        goto LABEL_87;
      }

      v61 = __biome_log_for_category();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseSetChangeEnumerator _imputeChanges:];
      }

      CCSetError(changes, v57);
    }

    else
    {
      v65 = __biome_log_for_category();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseSetChangeEnumerator _imputeChanges:];
      }

      v57 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:0];
      CCSetError(changes, v57);
    }

    v19 = 0;
LABEL_87:

LABEL_88:
LABEL_89:

    _Block_object_dispose(&v83, 8);
LABEL_90:

    goto LABEL_91;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
  {
    [CCDatabaseSetChangeEnumerator _imputeChanges:];
  }

  clockVector = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:0];
  CCSetError(changes, clockVector);
  v19 = 0;
LABEL_91:

LABEL_92:
LABEL_33:

  return v19;
}

uint64_t __48__CCDatabaseSetChangeEnumerator__imputeChanges___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _BYTE *a6)
{
  if (a5 == 1)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a6 = 1;
  }

  return result;
}

void __48__CCDatabaseSetChangeEnumerator__imputeChanges___block_invoke_48(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v5 = [v7 contentState];
  if ([v5 unsignedIntValue] == 2)
  {
    v6 = [v7 contentHash];

    if (!v6)
    {
      *a3 = 1;
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

  else
  {
  }
}

void __48__CCDatabaseSetChangeEnumerator__imputeChanges___block_invoke_50(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v5 = [v7 metaContentState];
  if ([v5 unsignedIntValue] == 2)
  {
    v6 = [v7 instanceHash];

    if (!v6)
    {
      *a3 = 1;
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

  else
  {
  }
}

- (id)_contentMessageFromContentData:(id)data
{
  if (data)
  {
    set = self->_set;
    dataCopy = data;
    v9 = 0;
    v5 = [CCItemMessage contentMessageForItemType:[(CCSet *)set itemType] data:dataCopy error:&v9];

    v6 = v9;
    if (!v5)
    {
      v7 = __biome_log_for_category();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseSetChangeEnumerator _contentMessageFromContentData:];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_metaContentMessageFromMetaContentData:(id)data
{
  if (data)
  {
    set = self->_set;
    dataCopy = data;
    v9 = 0;
    v5 = [CCItemMessage metaContentMessageForItemType:[(CCSet *)set itemType] data:dataCopy error:&v9];

    v6 = v9;
    if (!v5)
    {
      v7 = __biome_log_for_category();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseSetChangeEnumerator _contentMessageFromContentData:];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (unint64_t)sharedItemCountFromBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  contentVector = [bookmarkCopy contentVector];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__CCDatabaseSetChangeEnumerator_sharedItemCountFromBookmark___block_invoke;
  v7[3] = &unk_1E7C8B850;
  v7[4] = &v8;
  [contentVector enumerateAllClockValuesUsingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __61__CCDatabaseSetChangeEnumerator_sharedItemCountFromBookmark___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a6 == 1)
  {
    *(*(*(result + 32) + 8) + 24) += a4;
  }

  return result;
}

+ (unint64_t)localItemInstanceCountFromBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  metaContentVector = [bookmarkCopy metaContentVector];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__CCDatabaseSetChangeEnumerator_localItemInstanceCountFromBookmark___block_invoke;
  v7[3] = &unk_1E7C8B850;
  v7[4] = &v8;
  [metaContentVector enumerateAllClockValuesUsingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __68__CCDatabaseSetChangeEnumerator_localItemInstanceCountFromBookmark___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a6 == 1)
  {
    *(*(*(result + 32) + 8) + 24) += a4;
  }

  return result;
}

- (void)nextBookmark
{
  error = [*self error];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B6DB2000, v2, v3, "Returning nil bookmark after enumerator error: %@", v4, v5, v6, v7);
}

- (void)_lastDeltaDate
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, v0, v1, "failed to read last delta date for set: %@ error: %@");
}

- (void)isBookmarkUpToDate:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, v0, v1, "Failed to access database for bookmark: %@ error: %@");
}

- (void)_imputeChanges:(uint8_t *)buf .cold.4(void *a1, uint64_t *a2, uint8_t *buf, os_log_t log)
{
  v5 = *a2;
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = v5;
  _os_log_error_impl(&dword_1B6DB2000, log, OS_LOG_TYPE_ERROR, "Client provided state vector contains present content for site: %@ which has already expired and been cleaned up: %@", buf, 0x16u);
}

- (void)_imputeChanges:.cold.18()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, v0, v1, "Could not construct provenance enumerator %@ with error: %@");
}

@end