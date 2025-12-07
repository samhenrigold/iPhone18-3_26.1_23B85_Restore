@interface SABinary
+ (SABinary)binaryWithUUID:(id)d;
+ (SABinary)binaryWithUUID:(id)d absolutePath:(id)path;
+ (id)binaryWithPath:(uint64_t)path architecture:(int)architecture additionalCSSymbolicatorFlags:;
+ (id)binaryWithSymbolOwner:(uint64_t)owner fromDisk:(uint64_t)disk;
+ (id)dataFillingQueue;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
+ (uint64_t)haveMultipleBinariesWithUUID:(uint64_t)d;
+ (void)_addDsymPath:(uint64_t)path;
+ (void)_doCachedBinariesWork:(uint64_t)work;
+ (void)_doDsymPathsWork:(uint64_t)work;
+ (void)addDsymPaths:(id)paths;
+ (void)addPath:(id)path forBinaryWithUUID:(id)d;
+ (void)addSymbolsFromTailspin:(id)tailspin;
+ (void)binaryForDyldImage:(int)image options:;
+ (void)clearCaches;
+ (void)clearCoreSymbolicationCaches;
+ (void)clearSymbolCaches;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (BOOL)applyLength:(void *)length;
- (BOOL)cacheSymbolOwnerWithOptions:(unint64_t)options pid:(int)pid additionalCSSymbolicatorFlags:(unsigned int)flags;
- (BOOL)hasTextExecSegment;
- (NSArray)segments;
- (NSString)debugDescription;
- (NSString)name;
- (SABinary)initWithUUID:(id)d path:(id)path;
- (id)addSymbolWithOffsetIntoBinary:(unint64_t)binary length:(void *)length name:;
- (id)checkForSegmentWithCleanName:(void *)name;
- (id)createFakeEntireBinarySegment;
- (id)instructionAtOffsetIntoBinary:(int64_t)binary;
- (id)instructionAtOffsetIntoTextSegment:(unint64_t)segment;
- (id)segmentAtOffsetIntoBinary:(int)binary createFakeSegmentIfNeeded:;
- (id)segmentWithCSSegment:(uint64_t)segment symbolOwnerLayoutMatchesDisk:(int)disk symbolOwnerBaseAddress:(uint64_t)address;
- (id)segmentWithCleanName:(NSObject *)name length:(void *)length offsetIntoBinary:;
- (id)segmentWithName:(NSObject *)name length:(void *)length offsetIntoBinary:;
- (id)segmentWithName:(id)name;
- (id)symbolOwnerWrapperWithOptions:(int)options pid:(int)pid checkExclave:(int)exclave additionalCSSymbolicatorFlags:;
- (unint64_t)textSegmentLength;
- (void)addInfoFromSymbolOwner:(uint64_t)owner fromDisk:(char)disk includeExpensiveInfo:(int)info;
- (void)addPath:(id)path;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)clearCoreSymbolicationCache;
- (void)clearSymbolCache;
- (void)findPathViaBinaryLocator;
- (void)gatherBundleInfo;
- (void)gatherInfoWithDataGatheringOptions:(unint64_t)options pid:(int)pid;
- (void)getCodeSignInfoWithBundleUrl:(void *)url;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)saveInfoFromBundle:(void *)bundle;
- (void)segmentAtOffsetIntoBinary:(void *)binary;
- (void)setName:(void *)name;
- (void)symbolicateAllInstructionsWithOptions:(int)options pid:(int)pid checkExclave:(int)exclave onlyDsym:(int)dsym additionalCSSymbolicatorFlags:;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
@end

@implementation SABinary

- (NSArray)segments
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_segments copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)clearCoreSymbolicationCache
{
  obj = self;
  objc_sync_enter(obj);
  symbolOwnerWrapper = obj->_symbolOwnerWrapper;
  v3 = obj->_alreadyAttempted & 0xFFFFFFFFFFFFFF9FLL;
  obj->_symbolOwnerWrapper = 0;
  obj->_alreadyAttempted = v3;

  objc_sync_exit(obj);
}

+ (id)dataFillingQueue
{
  objc_opt_self();
  if (qword_1EDD03208 != -1)
  {
    dispatch_once(&qword_1EDD03208, &__block_literal_global_154);
  }

  v1 = qword_1EDD03200;

  return v1;
}

- (NSString)name
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  name = selfCopy->_name;
  if (name)
  {
    Path = name;
  }

  else
  {
    Path = [(NSString *)selfCopy->_path copyLastPathComponent];
  }

  v5 = Path;
  objc_sync_exit(selfCopy);

  return v5;
}

- (id)createFakeEntireBinarySegment
{
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v2 = selfCopy[6];
    if (!v2)
    {
      v3 = [SASegment segmentWithBinary:selfCopy name:@"ENTIRE_BINARY" length:selfCopy[5] offsetIntoBinary:0];
      v4 = selfCopy[6];
      selfCopy[6] = v3;

      v2 = selfCopy[6];
    }

    v5 = v2;
    objc_sync_exit(selfCopy);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)_doCachedBinariesWork:(uint64_t)work
{
  objc_opt_self();
  os_unfair_lock_lock(&unk_1EDD031D8);
  if (!qword_1EDD031E8)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = qword_1EDD031E8;
    qword_1EDD031E8 = v3;
  }

  (*(a2 + 16))(a2);

  os_unfair_lock_unlock(&unk_1EDD031D8);
}

+ (void)clearCaches
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3032000000;
  v6 = __Block_byref_object_copy__2;
  v7 = __Block_byref_object_dispose__2;
  v8 = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __23__SABinary_clearCaches__block_invoke;
  v2[3] = &unk_1E86F6840;
  v2[4] = &v3;
  [(SABinary *)self _doCachedBinariesWork:v2];
  [v4[5] enumerateKeysAndObjectsUsingBlock:&__block_literal_global_3];
  _Block_object_dispose(&v3, 8);
}

void __23__SABinary_clearCaches__block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = qword_1EDD031E8;
  if (qword_1EDD031E8 == a2)
  {
    qword_1EDD031E8 = 0;
  }

  else
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "global doesn't match local", v10, 2u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(1146, "global doesn't match local");
    _os_crash();
    __break(1u);
  }
}

void __23__SABinary_clearCaches__block_invoke_102(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) clearSymbolCache];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

+ (void)clearSymbolCaches
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3032000000;
  v6 = __Block_byref_object_copy__2;
  v7 = __Block_byref_object_dispose__2;
  v8 = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __29__SABinary_clearSymbolCaches__block_invoke;
  v2[3] = &unk_1E86F6840;
  v2[4] = &v3;
  [(SABinary *)self _doCachedBinariesWork:v2];
  [v4[5] enumerateKeysAndObjectsUsingBlock:&__block_literal_global_105];
  _Block_object_dispose(&v3, 8);
}

void __29__SABinary_clearSymbolCaches__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __29__SABinary_clearSymbolCaches__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) clearSymbolCache];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

+ (void)clearCoreSymbolicationCaches
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3032000000;
  v6 = __Block_byref_object_copy__2;
  v7 = __Block_byref_object_dispose__2;
  v8 = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __40__SABinary_clearCoreSymbolicationCaches__block_invoke;
  v2[3] = &unk_1E86F6840;
  v2[4] = &v3;
  [(SABinary *)self _doCachedBinariesWork:v2];
  [v4[5] enumerateKeysAndObjectsUsingBlock:&__block_literal_global_107];
  _Block_object_dispose(&v3, 8);
}

void __40__SABinary_clearCoreSymbolicationCaches__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __40__SABinary_clearCoreSymbolicationCaches__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) clearCoreSymbolicationCache];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

+ (uint64_t)haveMultipleBinariesWithUUID:(uint64_t)d
{
  v3 = objc_opt_self();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__SABinary_haveMultipleBinariesWithUUID___block_invoke;
  v6[3] = &unk_1E86F6888;
  v6[4] = a2;
  v6[5] = &v7;
  [(SABinary *)v3 _doCachedBinariesWork:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __41__SABinary_haveMultipleBinariesWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = [v3 count] > 1;
}

+ (SABinary)binaryWithUUID:(id)d absolutePath:(id)path
{
  v18 = *MEMORY[0x1E69E9840];
  if (path)
  {
    if (([path isAbsolutePath] & 1) == 0)
    {
      v9 = *__error();
      v10 = _sa_logt();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = [path UTF8String];
        _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "path %s is not absolute", &buf, 0xCu);
      }

      *__error() = v9;
      pathCopy = path;
      _SASetCrashLogMessage(1200, "path %s is not absolute", [path UTF8String]);
      _os_crash();
      __break(1u);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__2;
    v16 = __Block_byref_object_dispose__2;
    v17 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __40__SABinary_binaryWithUUID_absolutePath___block_invoke;
    v12[3] = &unk_1E86F68B0;
    v12[4] = d;
    v12[5] = path;
    v12[6] = &buf;
    v12[7] = self;
    [(SABinary *)self _doCachedBinariesWork:v12];
    v7 = *(*(&buf + 1) + 40);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v7 = [self binaryWithUUID:d];
  }

  return v7;
}

void __40__SABinary_binaryWithUUID_absolutePath___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  [a2 objectForKeyedSubscript:*(a1 + 32)];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = v31 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v27 = 0;
        v10 = [v9 path];
        v11 = SAFilepathMatches(v10, *(a1 + 40), &v27);

        if (v11)
        {
          v12 = [v9 path];
          if (v12)
          {
          }

          else if ([v4 count] != 1)
          {
            v22 = *__error();
            v23 = _sa_logt();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = [*(a1 + 32) UUIDString];
              v25 = [v24 UTF8String];
              *buf = 136315138;
              v33 = v25;
              _os_log_error_impl(&dword_1E0E2F000, v23, OS_LOG_TYPE_ERROR, "Multiple binaries for %s, but no path", buf, 0xCu);
            }

            *__error() = v22;
            v26 = [*(a1 + 32) UUIDString];
            _SASetCrashLogMessage(1209, "Multiple binaries for %s, but no path", [v26 UTF8String]);

            _os_crash();
            __break(1u);
          }

          if (v27 == 1)
          {
            v14 = SACachedNSString(*(a1 + 40));
            if (v9)
            {
              objc_setProperty_atomic_copy(v9, v13, v14, 80);
            }
          }

          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v9);
          goto LABEL_18;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v15 = objc_alloc(*(a1 + 56));
    v16 = *(a1 + 32);
    v17 = SACachedNSString(*(a1 + 40));
    v18 = [v15 initWithUUID:v16 path:v17];
    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    if (v4)
    {
      [v4 addObject:*(*(*(a1 + 48) + 8) + 40)];
    }

    else
    {
      v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{*(*(*(a1 + 48) + 8) + 40), 0}];
      [a2 setObject:v21 forKeyedSubscript:*(a1 + 32)];
    }
  }
}

+ (SABinary)binaryWithUUID:(id)d
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__SABinary_binaryWithUUID___block_invoke;
  v5[3] = &unk_1E86F68D8;
  v5[4] = d;
  v5[5] = &v6;
  v5[6] = self;
  [(SABinary *)self _doCachedBinariesWork:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __27__SABinary_binaryWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v5 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v6 = [v5 firstObject];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if ([v4 count] >= 2)
    {
      v9 = *__error();
      v10 = _sa_logt();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = [*(*(*(a1 + 40) + 8) + 40) path];
        *buf = 138412546;
        v18 = v11;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_DEFAULT, "WARNING: Multiple binaries with UUID %@ exist, using %@", buf, 0x16u);
      }

      *__error() = v9;
    }
  }

  else
  {
    v13 = [objc_alloc(*(a1 + 48)) initWithUUID:*(a1 + 32) path:0];
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{*(*(*(a1 + 40) + 8) + 40), 0}];
    [a2 setObject:v16 forKeyedSubscript:*(a1 + 32)];
  }
}

+ (id)binaryWithPath:(uint64_t)path architecture:(int)architecture additionalCSSymbolicatorFlags:
{
  v7 = objc_opt_self();
  SymbolOwnerForArchitectureAtPath = CreateSymbolOwnerForArchitectureAtPath(path, a2, architecture);
  v10 = v9;
  if (CSIsNull())
  {
    v11 = 0;
  }

  else
  {
    v11 = [(SABinary *)v7 binaryWithSymbolOwner:v10 fromDisk:1];
    CSRelease();
  }

  return v11;
}

+ (id)binaryWithSymbolOwner:(uint64_t)owner fromDisk:(uint64_t)disk
{
  diskCopy = disk;
  v7 = objc_opt_self();
  CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
  if (CSSymbolOwnerIsDsym())
  {
    v9 = 0;
  }

  else
  {
    Path = CSSymbolOwnerGetPath();
    v9 = SAFilepathForCString(Path);
  }

  if (!(CFUUIDBytes | v9))
  {
    v14 = 0;
    goto LABEL_19;
  }

  if (CFUUIDBytes)
  {
    v11 = CFUUIDBytes;
  }

  else
  {
    v11 = &UUID_NULL;
  }

  v12 = uuidForBytes(v11);
  if ([v9 isAbsolutePath])
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v7 binaryWithUUID:v12 absolutePath:v13];
  path = [v14 path];

  if (path || !v9)
  {
    if (v14)
    {
      goto LABEL_17;
    }
  }

  else if (v14)
  {
    objc_setProperty_atomic_copy(v14, v16, v9, 80);
LABEL_17:
    [(SABinary *)v14 addInfoFromSymbolOwner:a2 fromDisk:owner includeExpensiveInfo:diskCopy, 0];
  }

LABEL_19:

  return v14;
}

+ (void)_doDsymPathsWork:(uint64_t)work
{
  objc_opt_self();
  if (qword_1EDD031F8 != -1)
  {
    dispatch_once(&qword_1EDD031F8, &__block_literal_global_114);
  }

  obj = qword_1EDD031F0;
  objc_sync_enter(obj);
  (*(a2 + 16))(a2, qword_1EDD031F0);
  objc_sync_exit(obj);
}

void __29__SABinary__doDsymPathsWork___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v1 = qword_1EDD031F0;
  qword_1EDD031F0 = v0;
}

+ (void)_addDsymPath:(uint64_t)path
{
  v3 = objc_opt_self();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __25__SABinary__addDsymPath___block_invoke;
  v4[3] = &unk_1E86F6900;
  v4[4] = a2;
  [(SABinary *)v3 _doDsymPathsWork:v4];
}

void *__25__SABinary__addDsymPath___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 containsObject:*(a1 + 32)];
  if ((result & 1) == 0)
  {
    v5 = *(a1 + 32);

    return [a2 addObject:v5];
  }

  return result;
}

void __22__SABinary__dsymPaths__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (void)addDsymPaths:(id)paths
{
  v27 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = paths;
  v4 = [obj countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v19;
    *&v5 = 138412546;
    v16 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 rangeOfString:{@".dSYM", v16}];
        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(SABinary *)self _addDsymPath:v9];
        }

        else
        {
          v12 = [v9 substringWithRange:{0, v10 + v11}];
          stringByDeletingLastPathComponent = [v12 stringByDeletingLastPathComponent];

          if (![(__CFString *)stringByDeletingLastPathComponent length])
          {

            stringByDeletingLastPathComponent = @"./";
          }

          v14 = *__error();
          v15 = _sa_logt();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = v16;
            v23 = v9;
            v24 = 2112;
            v25 = stringByDeletingLastPathComponent;
            _os_log_debug_impl(&dword_1E0E2F000, v15, OS_LOG_TYPE_DEBUG, "Replaced %@ with %@", buf, 0x16u);
          }

          *__error() = v14;
          [(SABinary *)self _addDsymPath:stringByDeletingLastPathComponent];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v6);
  }
}

+ (void)addPath:(id)path forBinaryWithUUID:(id)d
{
  if ([path isAbsolutePath])
  {
    v6 = [SABinary binaryWithUUID:d absolutePath:path];
  }

  else
  {
    v7 = [SABinary binaryWithUUID:d];
    [v7 addPath:path];
  }
}

+ (void)addSymbolsFromTailspin:(id)tailspin
{
  v59 = *MEMORY[0x1E69E9840];
  v51 = DictGetString(tailspin, 0x1F5BBFC60);
  v4 = DictGetString(tailspin, 0x1F5BBFC80);
  v5 = DictGetNumber(tailspin, 0x1F5BBFCA0);
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v7 = DictGetString(tailspin, 0x1F5BBFCE0);
  newValue = DictGetString(tailspin, 0x1F5BBFD20);
  v49 = DictGetString(tailspin, 0x1F5BBFD40);
  v48 = DictGetString(tailspin, 0x1F5BBFD60);
  v8 = DictGetString(tailspin, 0x1F5BBFD80);
  v9 = DictGetNumber(tailspin, 0x1F5BBFCC0);
  bOOLValue = [v9 BOOLValue];

  if (v7)
  {
    v11 = uuidForString(v7);
    if (v11)
    {
      if ([v4 isAbsolutePath])
      {
        v12 = v4;
      }

      else
      {
        v12 = 0;
      }

      v13 = [SABinary binaryWithUUID:v11 absolutePath:v12];
      v14 = v13;
      if (bOOLValue)
      {
        v15 = @"__TEXT_EXEC";
      }

      else
      {
        v15 = @"__TEXT";
      }

      v47 = [(SABinary *)v13 segmentWithCleanName:v15 length:unsignedLongLongValue offsetIntoBinary:0x7FFFFFFFFFFFFFFFLL];
      path = [v14 path];
      if (path)
      {
      }

      else
      {
        v21 = [v4 length];
        if (v14 && v21)
        {
          objc_setProperty_atomic_copy(v14, v22, v4, 80);
        }
      }

      name = [v14 name];
      if (name)
      {
      }

      else if ([v51 length])
      {
        path2 = [v14 path];
        if (!path2 || ([v14 path], v25 = objc_claimAutoreleasedReturnValue(), Path = -[NSString copyLastPathComponent](v25), v27 = objc_msgSend(Path, "hasPrefix:", v51), Path, v25, path2, (v27 & 1) == 0))
        {
          [(SABinary *)v14 setName:v51];
        }
      }

      bundleIdentifier = [v14 bundleIdentifier];
      if (bundleIdentifier)
      {
      }

      else
      {
        v29 = [newValue length];
        if (v14 && v29)
        {
          objc_setProperty_atomic_copy(v14, v30, newValue, 88);
        }
      }

      bundleVersion = [v14 bundleVersion];
      if (bundleVersion)
      {
      }

      else
      {
        v32 = [v49 length];
        if (v14 && v32)
        {
          objc_setProperty_atomic_copy(v14, v33, v49, 96);
        }
      }

      bundleShortVersion = [v14 bundleShortVersion];
      if (bundleShortVersion)
      {
      }

      else
      {
        v35 = [v48 length];
        if (v14 && v35)
        {
          objc_setProperty_atomic_copy(v14, v36, v48, 104);
        }
      }

      binaryVersion = [v14 binaryVersion];
      if (binaryVersion)
      {
      }

      else
      {
        v38 = [v8 length];
        if (v14 && v38)
        {
          objc_setProperty_atomic_copy(v14, v39, v8, 112);
        }
      }

      v40 = DictGetDict(tailspin, 0x1F5BBFD00);
      if (v40 && v47)
      {
        v41 = v47;
        objc_sync_enter(v41);
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = __32__SASegment_addTailspinSymbols___block_invoke;
        v56[3] = &unk_1E86F66C0;
        v56[4] = v41;
        [v40 enumerateKeysAndObjectsUsingBlock:v56];
        allValues = [v41[7] allValues];
        objc_sync_exit(v41);

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v43 = allValues;
        v44 = [v43 countByEnumeratingWithState:&v52 objects:buf count:16];
        if (v44)
        {
          v45 = *v53;
          do
          {
            for (i = 0; i != v44; ++i)
            {
              if (*v53 != v45)
              {
                objc_enumerationMutation(v43);
              }

              [(SAInstruction *)*(*(&v52 + 1) + 8 * i) checkForNewSymbol];
            }

            v44 = [v43 countByEnumeratingWithState:&v52 objects:buf count:16];
          }

          while (v44);
        }
      }
    }

    else
    {
      v19 = *__error();
      v20 = _sa_logt();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v58 = v7;
        _os_log_error_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_ERROR, "Unable to convert %@ into uuid", buf, 0xCu);
      }

      *__error() = v19;
    }
  }

  else
  {
    v17 = *__error();
    v18 = _sa_logt();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v58 = v51;
      _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "No uuid in tailspin symbol chunk for %@", buf, 0xCu);
    }

    *__error() = v17;
  }
}

- (id)segmentWithCleanName:(NSObject *)name length:(void *)length offsetIntoBinary:
{
  v222 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_156;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v151 = selfCopy;
  v8 = selfCopy[7];
  v9 = [v8 countByEnumeratingWithState:&v167 objects:v197 count:16];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = *v168;
LABEL_4:
  v11 = 0;
  while (1)
  {
    if (*v168 != v10)
    {
      objc_enumerationMutation(v8);
    }

    v12 = *(*(&v167 + 1) + 8 * v11);
    name = [v12 name];
    v14 = [name isEqualToString:a2];

    if (v14)
    {
      break;
    }

    if (v9 == ++v11)
    {
      v9 = [v8 countByEnumeratingWithState:&v167 objects:v197 count:16];
      if (!v9)
      {
LABEL_10:

        goto LABEL_14;
      }

      goto LABEL_4;
    }
  }

  v152 = v12;

  if (!v152)
  {
LABEL_14:
    v152 = [SASegment segmentWithBinary:v151 name:a2 length:name offsetIntoBinary:length];
    v16 = v151[7];
    if (!v16)
    {
      v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      v18 = v151[7];
      v151[7] = v17;

      v16 = v151[7];
    }

    [v16 addObject:v152];
    [v151[7] sortUsingComparator:&__block_literal_global_130];
    goto LABEL_24;
  }

  if (length == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_13;
  }

  if ([v152 hasOffsetIntoBinary])
  {
    if ([v152 offsetIntoBinary] == length)
    {
LABEL_13:
      v15 = 0;
      goto LABEL_23;
    }

    v19 = *__error();
    v20 = _sa_logt();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v130 = [v152 debugDescription];
      *v216 = 138412802;
      v217 = v130;
      v218 = 2048;
      lengthCopy = length;
      v220 = 2048;
      nameCopy = name;
      _os_log_error_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_ERROR, "Segment %@ mismatched offsetIntoBinary 0x%llx (with length 0x%llx) - possibly due to two segments with the same name which is unsupported. Symbols may be incorrect", v216, 0x20u);
    }

    v15 = 0;
    *__error() = v19;
  }

  else
  {
    v152[5] = length;
    v15 = 1;
  }

LABEL_23:
  if ((v15 | [(SASegment *)v152 applyLength:name]) != 1)
  {
LABEL_149:
    objc_sync_exit(v151);

    goto LABEL_150;
  }

LABEL_24:
  if (!v151[6])
  {
    goto LABEL_149;
  }

  v155 = v151[6];
  if (!v152)
  {
LABEL_147:
    if ([(SASegment *)v151[6] isEmpty])
    {
      v128 = v151[6];
      v151[6] = 0;
    }

    goto LABEL_149;
  }

  WeakRetained = objc_loadWeakRetained(v152 + 6);
  v22 = objc_loadWeakRetained(v155 + 6);
  v23 = WeakRetained == v22;

  if (v23)
  {
    if ([v152 hasOffsetIntoBinary] && objc_msgSend(v155, "hasOffsetIntoBinary") && (objc_msgSend(v155[7], "count") || objc_msgSend(v155[1], "count")))
    {
      offsetIntoBinary = [v155 offsetIntoBinary];
      v25 = v152;
      objc_sync_enter(v25);
      allKeys = [v155[7] allKeys];
      v27 = [allKeys sortedArrayUsingSelector:?];

      v195 = 0u;
      v196 = 0u;
      v193 = 0u;
      v194 = 0u;
      obj = v27;
      v163 = [obj countByEnumeratingWithState:&v193 objects:v216 count:16];
      if (v163)
      {
        v28 = *v194;
        v158 = *v194;
        do
        {
          for (i = 0; i != v163; i = i + 1)
          {
            if (*v194 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*(&v193 + 1) + 8 * i);
            v31 = [v30 unsignedLongLongValue] + offsetIntoBinary;
            v32 = v25[5];
            v33 = v31 - v32;
            if (v31 >= v32)
            {
              if (v31 >= v32 + v25[3])
              {
                goto LABEL_51;
              }

              v34 = [v155[7] objectForKeyedSubscript:v30];
              v35 = v25[7];
              if (!v35)
              {
                v36 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v155[7], "count")}];
                v37 = v25[7];
                v25[7] = v36;

                v35 = v25[7];
              }

              v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v33];
              v39 = [v35 objectForKeyedSubscript:v38];

              if (v39)
              {
                v40 = *__error();
                v41 = _sa_logt();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  v160 = [v25 debugDescription];
                  v42 = [v39 debugDescription];
                  v43 = [v34 debugDescription];
                  *buf = 138412802;
                  v211 = v160;
                  v212 = 2112;
                  v213 = v42;
                  v214 = 2112;
                  v215 = v43;
                  _os_log_impl(&dword_1E0E2F000, v41, OS_LOG_TYPE_DEFAULT, "WARNING: %@: have existing instruction %@ when grabbing %@, dropping grabbed instruction", buf, 0x20u);

                  v28 = v158;
                }

                *__error() = v40;
                if (v34)
                {
                  objc_storeWeak((v34 + 32), 0);
                  objc_storeWeak((v34 + 24), 0);
                }
              }

              else
              {
                if (v34)
                {
                  objc_storeWeak((v34 + 32), v25);
                  *(v34 + 40) = v33;
                }

                v44 = v25[7];
                v45 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v33];
                [v44 setObject:v34 forKeyedSubscript:v45];
              }

              [v155[7] setObject:0 forKeyedSubscript:v30];
            }
          }

          v163 = [obj countByEnumeratingWithState:&v193 objects:v216 count:16];
        }

        while (v163);
      }

LABEL_51:

      v46 = v155[1];
      if (v46)
      {
        v192[0] = MEMORY[0x1E69E9820];
        v192[1] = 3221225472;
        v192[2] = __46__SASegment_grabInstructionsFromOtherSegment___block_invoke;
        v192[3] = &unk_1E86F6670;
        v192[5] = offsetIntoBinary;
        v192[4] = v25;
        v47 = SABinarySearchArray(v46, 1280, v192);
        v48 = v155[1];
        v191[0] = MEMORY[0x1E69E9820];
        v191[1] = 3221225472;
        v191[2] = __46__SASegment_grabInstructionsFromOtherSegment___block_invoke_2;
        v191[3] = &unk_1E86F6670;
        v191[5] = offsetIntoBinary;
        v191[4] = v25;
        v49 = SABinarySearchArray(v48, 1280, v191);
        if (v47 < [v155[1] count])
        {
          if (v49)
          {
            v50 = v49 - v47;
            v51 = [v155[1] subarrayWithRange:{v47, v50}];
            [v155[1] removeObjectsInRange:{v47, v50}];
            v146 = v51;
            if (v25[1])
            {
              v189 = 0u;
              v190 = 0u;
              v187 = 0u;
              v188 = 0u;
              v52 = v51;
              v53 = [v52 countByEnumeratingWithState:&v187 objects:buf count:16];
              if (!v53)
              {
                goto LABEL_108;
              }

              v149 = v52;
              v54 = 0;
              v153 = *v188;
              while (1)
              {
                v55 = 0;
                v156 = v53;
                do
                {
                  if (*v188 != v153)
                  {
                    objc_enumerationMutation(v149);
                  }

                  v56 = *(*(&v187 + 1) + 8 * v55);
                  offsetIntoSegment = [v56 offsetIntoSegment];
                  v58 = [v56 length];
                  v60 = offsetIntoSegment + offsetIntoBinary;
                  v61 = v25[5];
                  v62 = v61 + v25[3];
                  v164 = v55;
                  if (v58 + offsetIntoSegment + offsetIntoBinary <= v62)
                  {
                    v63 = v60 - v61;
                    if (v56)
                    {
                      goto LABEL_64;
                    }
                  }

                  else
                  {
                    if (v56)
                    {
                      v56[2] = v62 - v60;
                      v63 = v60 - v25[5];
LABEL_64:
                      v56[1] = v63;
                      v185 = 0u;
                      v186 = 0u;
                      v183 = 0u;
                      v184 = 0u;
                      Property = objc_getProperty(v56, v59, 32, 1);
                      v161 = 0;
                      goto LABEL_65;
                    }

                    v63 = v60 - v61;
                  }

                  Property = 0;
                  v185 = 0u;
                  v186 = 0u;
                  v161 = 1;
                  v183 = 0u;
                  v184 = 0u;
LABEL_65:
                  v65 = Property;
                  v66 = [v65 countByEnumeratingWithState:&v183 objects:v209 count:16];
                  if (v66)
                  {
                    v67 = *v184;
                    do
                    {
                      for (j = 0; j != v66; ++j)
                      {
                        if (*v184 != v67)
                        {
                          objc_enumerationMutation(v65);
                        }

                        v69 = *(*(&v183 + 1) + 8 * j);
                        offsetIntoSegment2 = [v69 offsetIntoSegment];
                        if (v69)
                        {
                          v69[2] = offsetIntoSegment2 + offsetIntoBinary - v25[5];
                        }
                      }

                      v66 = [v65 countByEnumeratingWithState:&v183 objects:v209 count:16];
                    }

                    while (v66);
                  }

                  while (v54 < [v25[1] count])
                  {
                    v71 = [v25[1] objectAtIndexedSubscript:v54];
                    v72 = [v71 offsetIntoSegment] < v63;

                    if (!v72)
                    {
                      break;
                    }

                    ++v54;
                  }

                  v73 = [v25[1] objectAtIndexedSubscript:v54];
                  offsetIntoSegment3 = [v73 offsetIntoSegment];
                  if (offsetIntoSegment3 == v63)
                  {
                    if ([v56 length])
                    {
                      if (![v73 length] || (v75 = objc_msgSend(v56, "length"), v75 < objc_msgSend(v73, "length")))
                      {
                        v76 = [v56 length];
                        if (v73)
                        {
                          v73[2] = v76;
                        }
                      }
                    }

                    name2 = [v73 name];
                    if (name2)
                    {
                    }

                    else
                    {
                      name3 = [v56 name];
                      v83 = name3 == 0;

                      if (!v83)
                      {
                        name4 = [v56 name];
                        if (v73)
                        {
                          objc_setProperty_atomic_copy(v73, v84, name4, 24);
                        }
                      }
                    }
                  }

                  else
                  {
                    if (v54)
                    {
                      v78 = [v25[1] objectAtIndexedSubscript:v54 - 1];
                      offsetIntoSegment4 = [v78 offsetIntoSegment];
                      if (v63 < [v78 length] + offsetIntoSegment4)
                      {
                        offsetIntoSegment5 = [v78 offsetIntoSegment];
                        if (v78)
                        {
                          v78[2] = v63 - offsetIntoSegment5;
                        }
                      }
                    }

                    if ([v56 length] + v63 <= offsetIntoSegment3)
                    {
                      v81 = 1;
                    }

                    else
                    {
                      v81 = v161;
                    }

                    if ((v81 & 1) == 0)
                    {
                      v56[2] = offsetIntoSegment3 - v63;
                    }

                    [v25[1] insertObject:v56 atIndex:v54++];
                  }

                  v55 = v164 + 1;
                }

                while (v164 + 1 != v156);
                v86 = [v149 countByEnumeratingWithState:&v187 objects:buf count:16];
                v53 = v86;
                if (!v86)
                {
                  v52 = v149;
                  goto LABEL_108;
                }
              }
            }

            v87 = [v51 mutableCopy];
            v52 = v25[1];
            v25[1] = v87;
LABEL_108:

            v181 = 0u;
            v182 = 0u;
            v179 = 0u;
            v180 = 0u;
            allKeys2 = [v155[2] allKeys];
            v154 = [allKeys2 sortedArrayUsingSelector:sel_compare_];

            v89 = [v154 countByEnumeratingWithState:&v179 objects:v208 count:16];
            if (v89)
            {
              v90 = *v180;
              v147 = *v180;
              do
              {
                v162 = 0;
                v150 = v89;
                do
                {
                  if (*v180 != v90)
                  {
                    objc_enumerationMutation(v154);
                  }

                  v159 = *(*(&v179 + 1) + 8 * v162);
                  v91 = [v159 unsignedLongLongValue] + offsetIntoBinary;
                  v92 = v25[5];
                  if (v91 >= v92)
                  {
                    if (v91 >= v92 + v25[3])
                    {
                      goto LABEL_145;
                    }

                    v157 = [v155[2] objectForKeyedSubscript:v159];
                    v93 = v25[5];
                    v94 = v25[2];
                    if (!v94)
                    {
                      v95 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
                      v96 = v25[2];
                      v25[2] = v95;

                      v94 = v25[2];
                    }

                    v97 = (v91 - v93);
                    v98 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v91 - v93];
                    v99 = [v94 objectForKeyedSubscript:v98];
                    v100 = v99 == 0;

                    if (v100)
                    {
                      v103 = v25[2];
                      v104 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v97];
                      [v103 setObject:v157 forKeyedSubscript:v104];

                      v177 = 0u;
                      v178 = 0u;
                      v175 = 0u;
                      v176 = 0u;
                      v165 = v157;
                      v105 = [v165 countByEnumeratingWithState:&v175 objects:v207 count:16];
                      if (v105)
                      {
                        v106 = *v176;
                        do
                        {
                          v107 = 0;
                          do
                          {
                            if (*v176 != v106)
                            {
                              objc_enumerationMutation(v165);
                            }

                            v108 = *(*(&v175 + 1) + 8 * v107);
                            offsetIntoSegment6 = [v108 offsetIntoSegment];
                            if (v108)
                            {
                              v108[1] = offsetIntoSegment6 + offsetIntoBinary - v25[5];
                              v173 = 0u;
                              v174 = 0u;
                              v171 = 0u;
                              v172 = 0u;
                              v111 = objc_getProperty(v108, v110, 32, 1);
                            }

                            else
                            {
                              v111 = 0;
                              v173 = 0u;
                              v174 = 0u;
                              v171 = 0u;
                              v172 = 0u;
                            }

                            v112 = v111;
                            v113 = [v112 countByEnumeratingWithState:&v171 objects:v206 count:16];
                            if (v113)
                            {
                              v114 = *v172;
                              do
                              {
                                for (k = 0; k != v113; ++k)
                                {
                                  if (*v172 != v114)
                                  {
                                    objc_enumerationMutation(v112);
                                  }

                                  v116 = *(*(&v171 + 1) + 8 * k);
                                  offsetIntoSegment7 = [v116 offsetIntoSegment];
                                  if (v116)
                                  {
                                    v116[2] = offsetIntoSegment7 + offsetIntoBinary - v25[5];
                                  }
                                }

                                v113 = [v112 countByEnumeratingWithState:&v171 objects:v206 count:16];
                              }

                              while (v113);
                            }

                            ++v107;
                          }

                          while (v107 != v105);
                          v118 = [v165 countByEnumeratingWithState:&v175 objects:v207 count:16];
                          v105 = v118;
                        }

                        while (v118);
                      }
                    }

                    else
                    {
                      v101 = *__error();
                      v102 = _sa_logt();
                      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
                      {
                        v119 = [v25 debugDescription];
                        v120 = v119;
                        uTF8String = [v119 UTF8String];
                        v145 = [v157 count];
                        v121 = [(SASegment *)v25 nonInlineSymbolAtOffsetIntoSegment:v97];
                        v122 = [v121 debugDescription];
                        v123 = v122;
                        uTF8String2 = [v122 UTF8String];
                        v124 = v25[2];
                        v125 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v97];
                        v126 = [v124 objectForKeyedSubscript:v125];
                        v127 = [v126 count];
                        *v198 = 136315906;
                        v199 = uTF8String;
                        v200 = 2048;
                        v201 = v145;
                        v202 = 2080;
                        v203 = uTF8String2;
                        v204 = 2048;
                        v205 = v127;
                        _os_log_debug_impl(&dword_1E0E2F000, v102, OS_LOG_TYPE_DEBUG, "%s: throwing out %lu duplicate inline symbols for %s (already have %lu)", v198, 0x2Au);
                      }

                      *__error() = v101;
                    }

                    [v155[2] setObject:0 forKeyedSubscript:v159];

                    v90 = v147;
                    v89 = v150;
                  }

                  ++v162;
                }

                while (v162 != v89);
                v89 = [v154 countByEnumeratingWithState:&v179 objects:v208 count:16];
              }

              while (v89);
            }

LABEL_145:
          }
        }
      }

      objc_sync_exit(v25);
    }

    goto LABEL_147;
  }

  v131 = *__error();
  v132 = _sa_logt();
  if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
  {
    v133 = [v152 debugDescription];
    v134 = v133;
    uTF8String3 = [v133 UTF8String];
    v136 = [v155 debugDescription];
    v137 = v136;
    uTF8String4 = [v136 UTF8String];
    *v216 = 136315394;
    v217 = uTF8String3;
    v218 = 2080;
    lengthCopy = uTF8String4;
    _os_log_error_impl(&dword_1E0E2F000, v132, OS_LOG_TYPE_ERROR, "%s grabbing from %s", v216, 0x16u);
  }

  *__error() = v131;
  v139 = [v152 debugDescription];
  v140 = v139;
  uTF8String5 = [v139 UTF8String];
  v142 = [v155 debugDescription];
  v143 = v142;
  _SASetCrashLogMessage(195, "%s grabbing from %s", uTF8String5, [v142 UTF8String]);

  _os_crash();
  __break(1u);
LABEL_156:
  v152 = 0;
LABEL_150:

  return v152;
}

- (void)setName:(void *)name
{
  if (name)
  {
    obj = name;
    objc_sync_enter(obj);
    v3 = [a2 copy];
    v4 = obj[3];
    obj[3] = v3;

    objc_sync_exit(obj);
  }
}

- (SABinary)initWithUUID:(id)d path:(id)path
{
  v9.receiver = self;
  v9.super_class = SABinary;
  v6 = [(SABinary *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, d);
    objc_storeStrong(&v7->_path, path);
  }

  return v7;
}

- (void)addPath:(id)path
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = 0;
  if (SAFilepathMatches(selfCopy->_path, path, &v13))
  {
    if (v13 == 1)
    {
      v5 = SACachedNSString(path);
      path = selfCopy->_path;
      selfCopy->_path = v5;

      if (([path isAbsolutePath] & 1) == 0)
      {
        v7 = *__error();
        v8 = _sa_logt();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v12 = [(SABinary *)selfCopy debugDescription];
          *buf = 138412290;
          pathCopy = v12;
          _os_log_debug_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_DEBUG, "%@ set relative path", buf, 0xCu);
        }

        *__error() = v7;
      }
    }
  }

  else
  {
    v9 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(SABinary *)selfCopy debugDescription];
      *buf = 138412546;
      pathCopy = path;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_DEFAULT, "WARNING: Tried to set mismatched path %@ on binary %@", buf, 0x16u);
    }

    *__error() = v9;
  }

  objc_sync_exit(selfCopy);
}

- (void)segmentAtOffsetIntoBinary:(void *)binary
{
  if (binary)
  {
    binary = [(SABinary *)binary segmentAtOffsetIntoBinary:a2 createFakeSegmentIfNeeded:0];
    v2 = vars8;
  }

  return binary;
}

- (id)segmentAtOffsetIntoBinary:(int)binary createFakeSegmentIfNeeded:
{
  v22 = *MEMORY[0x1E69E9840];
  if (self && (a2 < 0 || self[5] - 1 >= a2))
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = selfCopy[7];
    if (v7)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = 0;
        v11 = *v18;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v17 + 1) + 8 * i);
            if ([v13 hasOffsetIntoBinary] && objc_msgSend(v13, "offsetIntoBinary") <= a2)
            {
              if ([v13 length])
              {
                offsetIntoBinary = [v13 offsetIntoBinary];
                if ([v13 length] + offsetIntoBinary > a2)
                {
                  createFakeEntireBinarySegment = v13;

                  goto LABEL_23;
                }

                v15 = 0;
              }

              else
              {
                v15 = v13;
              }

              v10 = v15;
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }

        if (v10)
        {
          v10 = v10;
          createFakeEntireBinarySegment = v10;
LABEL_23:

          goto LABEL_28;
        }
      }

      else
      {
      }
    }

    createFakeEntireBinarySegment = 0;
    if ((a2 & 0x8000000000000000) == 0 && binary)
    {
      createFakeEntireBinarySegment = [(SABinary *)selfCopy createFakeEntireBinarySegment];
    }

LABEL_28:
    objc_sync_exit(selfCopy);
  }

  else
  {
    createFakeEntireBinarySegment = 0;
  }

  return createFakeEntireBinarySegment;
}

- (id)segmentWithName:(id)name
{
  v4 = CopyCleanSegmentName(name);
  v5 = [(SABinary *)self checkForSegmentWithCleanName:v4];

  return v5;
}

- (id)checkForSegmentWithCleanName:(void *)name
{
  v19 = *MEMORY[0x1E69E9840];
  if (name)
  {
    nameCopy = name;
    objc_sync_enter(nameCopy);
    v4 = nameCopy[7];
    if (v4)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        v7 = *v15;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v15 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v14 + 1) + 8 * i);
            name = [v9 name];
            v11 = [name isEqualToString:a2];

            if (v11)
            {
              v12 = v9;
              goto LABEL_13;
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      v12 = 0;
LABEL_13:
    }

    else
    {
      v12 = 0;
    }

    objc_sync_exit(nameCopy);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __57__SABinary_segmentWithCleanName_length_offsetIntoBinary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 offsetIntoBinary];
  v5 = [a3 offsetIntoBinary];
  if (v4 < v5)
  {
    return -1;
  }

  else
  {
    return v4 > v5;
  }
}

- (id)segmentWithName:(NSObject *)name length:(void *)length offsetIntoBinary:
{
  if (self)
  {
    v7 = CopyCleanSegmentName(a2);
    v8 = [(SABinary *)self segmentWithCleanName:v7 length:name offsetIntoBinary:length];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)cacheSymbolOwnerWithOptions:(unint64_t)options pid:(int)pid additionalCSSymbolicatorFlags:(unsigned int)flags
{
  v5 = [(SABinary *)self symbolOwnerWrapperWithOptions:options pid:pid checkExclave:1 additionalCSSymbolicatorFlags:flags];
  v6 = v5 != 0;

  return v6;
}

- (id)symbolOwnerWrapperWithOptions:(int)options pid:(int)pid checkExclave:(int)exclave additionalCSSymbolicatorFlags:
{
  v121 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = (a2 & 0x400) == 0;
    if (!options)
    {
      v9 = 0;
    }

    if (options < 0)
    {
      v9 = 1;
    }

    v10 = (~a2 & 0x22) != 0 || v9;
    optionsCopy = options;
    v100 = v10;
    v11 = selfCopy + 10;
    isAbsolutePath = [selfCopy[10] isAbsolutePath];
    if ((a2 & 4) != 0)
    {
      v13 = isAbsolutePath;
    }

    else
    {
      v13 = 1;
    }

    if ((v13 & 1) == 0 && (selfCopy[2] & 4) == 0)
    {
      [(SABinary *)selfCopy findPathViaBinaryLocator];
    }

    if (CSIsNull())
    {
      v14 = selfCopy[1];
      if (!v14 || (objc_copyStruct(dest, v14 + 16, 16, 1, 0), (CSSymbolOwnerIsDsym() & 1) == 0))
      {
        if ((a2 & 0x40) != 0)
        {
          v15 = selfCopy[2];
          if ((v15 & 0x40) == 0)
          {
            v16 = ((selfCopy[2] & 8) == 0) & (a2 >> 3);
LABEL_24:
            v17 = 64;
            if ((((v15 & 0x200) == 0) & (a2 >> 9)) != 0)
            {
              v17 = 576;
            }

            v18 = v17 | v15;
            if (v16)
            {
              v18 |= 8uLL;
            }

            selfCopy[2] = v18;
            v19 = objc_opt_self();
            *dest = 0;
            *&dest[8] = dest;
            *&dest[16] = 0x3032000000;
            v118 = __Block_byref_object_copy__2;
            v119 = __Block_byref_object_dispose__2;
            v120 = 0;
            *buf = MEMORY[0x1E69E9820];
            *&v114 = 3221225472;
            *(&v114 + 1) = __22__SABinary__dsymPaths__block_invoke;
            v115 = &unk_1E86F6928;
            v116 = dest;
            [(SABinary *)v19 _doDsymPathsWork:buf];
            v20 = *(*&dest[8] + 40);
            _Block_object_dispose(dest, 8);

            v97 = CSIsNull() ^ 1;
            goto LABEL_30;
          }
        }

        if ((a2 & 8) != 0)
        {
          v15 = selfCopy[2];
          if ((v15 & 8) == 0)
          {
            v16 = 1;
            goto LABEL_24;
          }
        }
      }
    }

    v97 = 0;
LABEL_30:
    if (CSIsNull() && selfCopy[1])
    {
      isAbsolutePath2 = [*v11 isAbsolutePath];
      if ((a2 & 1) != 0 && ((isAbsolutePath2 ^ 1) & 1) == 0)
      {
        v22 = selfCopy[2];
        if ((v22 & 1) == 0)
        {
          selfCopy[2] = (v22 | 1);
          [(SABinary *)selfCopy gatherBundleInfo];
        }
      }

LABEL_119:
      v80 = selfCopy[1];
      objc_sync_exit(selfCopy);

      goto LABEL_120;
    }

    v23 = a2 & pid;
    if (!CSIsNull())
    {
      goto LABEL_49;
    }

    v24 = v23 ^ 1;
    if (*v11)
    {
      v24 = 1;
    }

    if (v24)
    {
LABEL_49:
      v27 = 0;
      SymbolOwnerForExclaveUUID = 0;
      v35 = 1;
    }

    else
    {
      SymbolOwnerForExclaveUUID = CreateSymbolOwnerForExclaveUUID(selfCopy[9], exclave);
      v27 = v26;
      v28 = CSIsNull();
      if ((~a2 & 5) != 0)
      {
        v29 = 1;
      }

      else
      {
        v29 = v28;
      }

      if ((v29 & 1) == 0)
      {
        Path = CSSymbolOwnerGetPath();
        v31 = SAFilepathForCString(Path);
        v32 = v31;
        if (v31 && [v31 isAbsolutePath])
        {
          v33 = +[SABinaryLocator sharedBinaryLocator];
          v34 = [MEMORY[0x1E695DFF8] fileURLWithPath:v32 isDirectory:0];
          [(SABinaryLocator *)v33 addURL:v34 ForUUID:selfCopy[9]];

          [v33 done];
        }
      }

      v35 = 0;
    }

    if (!CSIsNull())
    {
      goto LABEL_55;
    }

    v36 = v100;
    if (*v11)
    {
      v36 = 1;
    }

    if ((v36 & 1) != 0 || kill(optionsCopy, 0) || (v58 = CopyDyldSnapshotForPid(optionsCopy)) == 0)
    {
LABEL_55:
      v37 = 0;
    }

    else
    {
      *dest = 0;
      *&dest[8] = dest;
      *&dest[16] = 0x2020000000;
      LOBYTE(v118) = 0;
      v106 = MEMORY[0x1E69E9820];
      v107 = 3221225472;
      v108 = __89__SABinary_symbolOwnerWrapperWithOptions_pid_checkExclave_additionalCSSymbolicatorFlags___block_invoke;
      v109 = &unk_1E86F69E8;
      v110 = selfCopy;
      v111 = dest;
      v112 = optionsCopy;
      dyld_process_snapshot_for_each_image();
      if (*v11)
      {
        v59 = *__error();
        v60 = _sa_logt();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          v88 = [selfCopy debugDescription];
          *buf = 67109378;
          *&buf[4] = optionsCopy;
          LOWORD(v114) = 2112;
          *(&v114 + 2) = v88;
          v95 = v88;
          _os_log_debug_impl(&dword_1E0E2F000, v60, OS_LOG_TYPE_DEBUG, "Found path via dyld inspection of [%d] for %@", buf, 0x12u);
        }

        v61 = v59;
        v37 = 0;
        *__error() = v61;
      }

      else if (*(*&dest[8] + 24))
      {
        v37 = 0;
      }

      else
      {
        v82 = *__error();
        v83 = _sa_logt();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          v96 = v82;
          v84 = [selfCopy debugDescription];
          *buf = 67109378;
          *&buf[4] = optionsCopy;
          LOWORD(v114) = 2112;
          *(&v114 + 2) = v84;
          v85 = v84;
          _os_log_impl(&dword_1E0E2F000, v83, OS_LOG_TYPE_DEFAULT, "WARNING: Unable to find binary via dyld inspection of [%d] for %@", buf, 0x12u);

          v82 = v96;
        }

        *__error() = v82;
        v37 = 1;
      }

      v86 = +[SABinary dataFillingQueue];
      v104[0] = MEMORY[0x1E69E9820];
      v104[1] = 3221225472;
      v104[2] = __89__SABinary_symbolOwnerWrapperWithOptions_pid_checkExclave_additionalCSSymbolicatorFlags___block_invoke_143;
      v104[3] = &__block_descriptor_52_e5_v8__0l;
      v105 = optionsCopy;
      v104[4] = v58;
      v104[5] = a2 & 0x26D;
      dispatch_async(v86, v104);

      _Block_object_dispose(dest, 8);
    }

    if (!CSIsNull())
    {
      goto LABEL_61;
    }

    LODWORD(v95) = 1;
    if ((a2 & 0x20) == 0)
    {
      goto LABEL_62;
    }

    v38 = *v11;
    if (!*v11)
    {
      goto LABEL_62;
    }

    v39 = selfCopy[2];
    if ((v39 & 0x20) != 0)
    {
LABEL_61:
      LODWORD(v95) = 1;
    }

    else
    {
      selfCopy[2] = (v39 | 0x20);
      SymbolOwnerForExclaveUUID = CreateSymbolOwnerForUUIDAtPath(selfCopy[9], v38, exclave);
      v27 = v40;
      LODWORD(v95) = 0;
      v97 |= CSIsNull() ^ 1;
    }

LABEL_62:
    if ((v23 & v35 & CSIsNull()) == 1)
    {
      SymbolOwnerForExclaveUUID = CreateSymbolOwnerForExclaveUUID(selfCopy[9], exclave);
      v27 = v41;
      v42 = CSIsNull();
      v43 = (~a2 & 5) != 0 ? 1 : v42;
      if ((v43 & 1) == 0)
      {
        v44 = CSSymbolOwnerGetPath();
        v45 = SAFilepathForCString(v44);
        v46 = v45;
        if (v45 && [v45 isAbsolutePath])
        {
          v47 = +[SABinaryLocator sharedBinaryLocator];
          v48 = [MEMORY[0x1E695DFF8] fileURLWithPath:v46 isDirectory:0];
          [(SABinaryLocator *)v47 addURL:v48 ForUUID:selfCopy[9]];

          [v47 done];
        }
      }
    }

    if (((v100 | v37 | CSIsNull() ^ 1) & 1) == 0 && !kill(optionsCopy, 0))
    {
      if (optionsCopy)
      {
        v49 = *__error();
        v50 = _sa_logt();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = [selfCopy debugDescription];
          *dest = 67109378;
          *&dest[4] = optionsCopy;
          *&dest[8] = 2112;
          *&dest[10] = v51;
          _os_log_impl(&dword_1E0E2F000, v50, OS_LOG_TYPE_DEFAULT, "WARNING: Inspecting live process [%d] to get symbol owner for %@", dest, 0x12u);
        }

        *__error() = v49;
      }

      SymbolicatorForLiveProcess = CreateSymbolicatorForLiveProcess(optionsCopy, exclave);
      v54 = v53;
      if ((CSIsNull() & 1) == 0)
      {
        *buf = 0;
        *&v114 = 0;
        [selfCopy[9] getUUIDBytes:buf];
        SymbolOwnerForExclaveUUID = CSSymbolicatorGetSymbolOwnerWithCFUUIDBytesAtTime();
        v27 = v55;
        if (CSIsNull())
        {
          v56 = *__error();
          v57 = _sa_logt();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            v87 = [selfCopy debugDescription];
            *dest = 67109378;
            *&dest[4] = optionsCopy;
            *&dest[8] = 2112;
            *&dest[10] = v87;
            _os_log_debug_impl(&dword_1E0E2F000, v57, OS_LOG_TYPE_DEBUG, "Process [%d] didn't have symbol owner for %@", dest, 0x12u);
          }

          *__error() = v56;
        }

        else
        {
          v62 = CSSymbolOwnerGetPath();
          v63 = SAFilepathForCString(v62);
          if (v63)
          {
            v103 = 0;
            if (!(v95 & 1 | ((*(selfCopy + 66) & 1) == 0)) || SAFilepathMatches(*v11, v63, &v103) && v103 == 1)
            {
              objc_storeStrong(selfCopy + 10, v63);
              *(selfCopy + 66) = 0;
            }

            v64 = [v63 isAbsolutePath] ^ 1;
            if ((~a2 & 5) != 0)
            {
              LOBYTE(v64) = 1;
            }

            if ((v64 & 1) == 0)
            {
              v65 = +[SABinaryLocator sharedBinaryLocator];
              if (!(v95 & 1 | ((*(selfCopy + 66) & 1) == 0)))
              {
                v101 = *__error();
                v66 = _sa_logt();
                if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
                {
                  v67 = selfCopy[9];
                  v68 = selfCopy[10];
                  *dest = 138543874;
                  *&dest[4] = v67;
                  *&dest[12] = 2112;
                  *&dest[14] = v68;
                  *&dest[22] = 2112;
                  v118 = v63;
                  _os_log_impl(&dword_1E0E2F000, v66, OS_LOG_TYPE_INFO, "%{public}@ moved: replacing %@ with %@", dest, 0x20u);
                }

                *__error() = v101;
                [(SABinaryLocator *)v65 removeURLForUUID:?];
              }

              v69 = [MEMORY[0x1E695DFF8] fileURLWithPath:v63 isDirectory:0];
              [(SABinaryLocator *)v65 addURL:v69 ForUUID:selfCopy[9]];

              [v65 done];
            }
          }

          CSRetain();
        }

        v70 = +[SABinary dataFillingQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __89__SABinary_symbolOwnerWrapperWithOptions_pid_checkExclave_additionalCSSymbolicatorFlags___block_invoke_145;
        block[3] = &__block_descriptor_48_e5_v8__0l;
        block[4] = SymbolicatorForLiveProcess;
        block[5] = v54;
        dispatch_async(v70, block);
      }
    }

    if (CSIsNull())
    {
      goto LABEL_115;
    }

    if (CSIsNull())
    {
      v89 = *__error();
      v90 = _sa_logt();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        *dest = 0;
        _os_log_error_impl(&dword_1E0E2F000, v90, OS_LOG_TYPE_ERROR, "CSSymbolOwner is NULL", dest, 2u);
      }

      *__error() = v89;
      _SASetCrashLogMessage(1991, "CSSymbolOwner is NULL");
      _os_crash();
      __break(1u);
LABEL_132:
      v91 = *__error();
      v92 = _sa_logt();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        *dest = 0;
        _os_log_error_impl(&dword_1E0E2F000, v92, OS_LOG_TYPE_ERROR, "_symbolOwnerWrapper is nil after setting CSSymbolOwner", dest, 2u);
      }

      *__error() = v91;
      _SASetCrashLogMessage(2300, "_symbolOwnerWrapper is nil after setting CSSymbolOwner");
      _os_crash();
      __break(1u);
      goto LABEL_135;
    }

    v71 = selfCopy;
    objc_sync_enter(v71);
    if (!v71[1])
    {
      goto LABEL_107;
    }

    if (CSSymbolOwnerIsDsym())
    {
      [(SACSSymbolOwnerWrapper *)v71[1] symbolOwner];
      if ((CSSymbolOwnerIsDsym() & 1) == 0)
      {
LABEL_107:
        v72 = [SACSSymbolOwnerWrapper alloc];
        if (v72)
        {
          if (CSIsNull())
          {
LABEL_135:
            v93 = *__error();
            v94 = _sa_logt();
            if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
            {
              *dest = 0;
              _os_log_error_impl(&dword_1E0E2F000, v94, OS_LOG_TYPE_ERROR, "CSSymbolOwner is NULL", dest, 2u);
            }

            *__error() = v93;
            _SASetCrashLogMessage(50, "CSSymbolOwner is NULL");
            _os_crash();
            __break(1u);
            goto LABEL_138;
          }

          *dest = v72;
          *&dest[8] = SACSSymbolOwnerWrapper;
          v72 = objc_msgSendSuper2(dest, sel_init);
          if (v72)
          {
            v72->_symbolOwner._opaque_1 = CSRetain();
            v72->_symbolOwner._opaque_2 = v73;
            v72->_isDiskLayout = v97 & 1;
          }
        }

        v74 = v71[1];
        v71[1] = v72;

        [(SABinary *)v71 addInfoFromSymbolOwner:v27 fromDisk:v97 & 1 includeExpensiveInfo:0];
      }
    }

    else if (!*v11)
    {
      v75 = CSSymbolOwnerGetPath();
      v76 = SAFilepathForCString(v75);
      v77 = *v11;
      *v11 = v76;
    }

    objc_sync_exit(v71);

    CSRelease();
    if (v71[1])
    {
LABEL_115:
      isAbsolutePath3 = [*v11 isAbsolutePath];
      if ((a2 & 1) != 0 && ((isAbsolutePath3 ^ 1) & 1) == 0)
      {
        v79 = selfCopy[2];
        if ((v79 & 1) == 0)
        {
          selfCopy[2] = (v79 | 1);
          [(SABinary *)selfCopy gatherBundleInfo];
        }
      }

      goto LABEL_119;
    }

    goto LABEL_132;
  }

LABEL_138:
  v80 = 0;
LABEL_120:

  return v80;
}

- (id)instructionAtOffsetIntoBinary:(int64_t)binary
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(SABinary *)selfCopy segmentAtOffsetIntoBinary:binary createFakeSegmentIfNeeded:1];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_4;
  }

  if (![(SASegment *)v5 hasOffsetIntoBinary])
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(SASegment *)v6 debugDescription];
      *buf = 136315138;
      uTF8String = [v13 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "%s: no offset into binary", buf, 0xCu);
    }

    *__error() = v11;
    v14 = [(SASegment *)v6 debugDescription];
    v15 = v14;
    _SASetCrashLogMessage(1787, "%s: no offset into binary", [v14 UTF8String]);

    _os_crash();
    __break(1u);
  }

  offsetIntoBinary = [(SASegment *)v6 offsetIntoBinary];
  if ([(SASegment *)v6 length]- 1 >= binary - offsetIntoBinary)
  {
    v10 = [(SASegment *)v6 instructionAtOffsetIntoSegment:?];
    v8 = v10;
    if (v6 == selfCopy->_fakeEntireBinarySegment && v10)
    {
      objc_storeWeak((v10 + 32), 0);
    }
  }

  else
  {
LABEL_4:
    v8 = 0;
  }

  objc_sync_exit(selfCopy);

  return v8;
}

- (id)segmentWithCSSegment:(uint64_t)segment symbolOwnerLayoutMatchesDisk:(int)disk symbolOwnerBaseAddress:(uint64_t)address
{
  selfCopy = self;
  if (self)
  {
    Range = CSRegionGetRange();
    v10 = v9;
    Name = CSRegionGetName();
    if (Name)
    {
      v12 = SANSStringForCString(Name);
      if (disk)
      {
        v13 = Range - address;
      }

      else
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      selfCopy = [(SABinary *)selfCopy segmentWithName:v12 length:v10 offsetIntoBinary:v13];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

uint64_t __33__SABinary_addInfoFromDyldImage___block_invoke(void *a1, const char *a2, unint64_t a3, NSObject *a4)
{
  v8 = a1[4];
  v9 = SANSStringForCString(a2);
  v10 = [(SABinary *)v8 segmentWithName:v9 length:a4 offsetIntoBinary:0x7FFFFFFFFFFFFFFFLL];

  v11 = *(a1[5] + 8);
  if (*(v11 + 24) < a4 + a3)
  {
    *(v11 + 24) = a4 + a3;
  }

  v12 = *(a1[6] + 8);
  if (*(v12 + 24) > a3)
  {
    *(v12 + 24) = a3;
  }

  *(*(a1[7] + 8) + 24) += a4;
  result = strcmp(a2, "__TEXT");
  if (!result)
  {
    *(*(a1[8] + 8) + 24) = a3;
  }

  return result;
}

- (BOOL)applyLength:(void *)length
{
  v19 = *MEMORY[0x1E69E9840];
  if (!length)
  {
    return 0;
  }

  lengthCopy = length;
  objc_sync_enter(lengthCopy);
  v4 = *(lengthCopy + 5);
  v5 = v4 < a2;
  if (v4 < a2)
  {
    if (v4)
    {
      v6 = *__error();
      v7 = _sa_logt();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v11 = [lengthCopy debugDescription];
        v15 = 138412546;
        v16 = v11;
        v17 = 2048;
        v18 = a2;
        _os_log_debug_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_DEBUG, "%@ updating length to 0x%llx", &v15, 0x16u);
      }

      *__error() = v6;
    }

    *(lengthCopy + 5) = a2;
    if (a2 >> 28)
    {
      v12 = *__error();
      v13 = _sa_logt();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v14 = [lengthCopy debugDescription];
        v15 = 138412546;
        v16 = v14;
        v17 = 2048;
        v18 = a2;
        _os_log_fault_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_FAULT, "%@ has length above max: 0x%llx", &v15, 0x16u);
      }

      *__error() = v12;
    }

    v8 = *(lengthCopy + 6);
    if (v8)
    {
      [(SASegment *)v8 applyLength:?];
      if ([(SASegment *)*(lengthCopy + 6) isEmpty])
      {
        v9 = *(lengthCopy + 6);
        *(lengthCopy + 6) = 0;
      }
    }
  }

  objc_sync_exit(lengthCopy);

  return v5;
}

void __33__SABinary_addInfoFromDyldImage___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v7 = *(a1 + 32);
  v9 = SANSStringForCString(a2);
  v8 = [(SABinary *)v7 segmentWithName:v9 length:a4 offsetIntoBinary:(a3 - *(*(*(a1 + 40) + 8) + 24))];
}

+ (void)binaryForDyldImage:(int)image options:
{
  v64 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = objc_autoreleasePoolPush();
  *uu = 0;
  v56 = 0;
  if (!dyld_image_copy_uuid() || uuid_is_null(uu))
  {
    v6 = *__error();
    v7 = _sa_logt();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v20 = DyldImagePath(a2);
      *buf = 136315138;
      *&buf[4] = v20;
      _os_log_error_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_ERROR, "No UUID for dyld_image %s", buf, 0xCu);
    }

    v8 = 0;
    *__error() = v6;
    goto LABEL_6;
  }

  v10 = uuidForBytes(uu);
  v11 = DyldImagePath(a2);
  if (v11 && *v11)
  {
    v12 = SANSStringForCString(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 isAbsolutePath] ^ 1;
  if ((~image & 5) != 0)
  {
    LOBYTE(v13) = 1;
  }

  if ((v13 & 1) == 0)
  {
    v14 = +[SABinaryLocator sharedBinaryLocator];
    v15 = v14;
    if (!v14)
    {
LABEL_29:

      goto LABEL_30;
    }

    v16 = [(SABinaryLocator *)v14 urlForUUID:v10];
    v17 = v16;
    if (v16)
    {
      path = [v16 path];
      if (path)
      {
        path2 = [v17 path];
        if ([path2 isEqualToString:v12])
        {

LABEL_28:
          [v15 done];

          goto LABEL_29;
        }

        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        path3 = [v17 path];
        if ([defaultManager fileExistsAtPath:path3])
        {

          goto LABEL_28;
        }

        defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
        v35 = [defaultManager2 fileExistsAtPath:v12];

        if (!v35)
        {
          goto LABEL_28;
        }
      }

      v22 = *__error();
      v23 = _sa_logt();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        path4 = [v17 path];
        *buf = 138543874;
        *&buf[4] = v10;
        *&buf[12] = 2112;
        *&buf[14] = path4;
        *&buf[22] = 2112;
        v58 = v12;
        _os_log_impl(&dword_1E0E2F000, v23, OS_LOG_TYPE_INFO, "%{public}@ moved: replacing %@ with %@", buf, 0x20u);
      }

      *__error() = v22;
      [(SABinaryLocator *)v15 removeURLForUUID:v10];
    }

    v25 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12 isDirectory:0];

    [(SABinaryLocator *)v15 addURL:v25 ForUUID:v10];
    v17 = v25;
    goto LABEL_28;
  }

LABEL_30:
  if ([v12 isAbsolutePath])
  {
    v26 = v12;
  }

  else
  {
    v26 = 0;
  }

  v27 = [SABinary binaryWithUUID:v10 absolutePath:v26];
  v8 = v27;
  if (v27 && (!*(v27 + 80) || !*(v27 + 40) || ![*(v27 + 56) count]))
  {
    v28 = v8;
    objc_sync_enter(v28);
    if (!v8[10])
    {
      v32 = DyldImagePath(a2);
      if (v32)
      {
        if (*v32)
        {
          v33 = SANSStringForCString(v32);
          v34 = v8[10];
          v8[10] = v33;
        }
      }
    }

    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = -1;
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __33__SABinary_addInfoFromDyldImage___block_invoke;
    v58 = &unk_1E86F6970;
    v59 = v28;
    v60 = &v47;
    v61 = &v51;
    v62 = &v43;
    v63 = &v39;
    DyldImageEnumerateSegments(a2, buf);
    v29 = v40[3];
    if (v29 == v52[3])
    {
      v30 = v48[3] - v29;
      if (v30 == v44[3])
      {
        [(SABinary *)v28 applyLength:v30];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __33__SABinary_addInfoFromDyldImage___block_invoke_2;
        v38[3] = &unk_1E86F6998;
        v38[4] = v28;
        v38[5] = &v39;
        DyldImageEnumerateSegments(a2, v38);
      }
    }

    if ([(SASegment *)v28[6] isEmpty])
    {
      v31 = v28[6];
      v28[6] = 0;
    }

    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(&v47, 8);
    _Block_object_dispose(&v51, 8);
    objc_sync_exit(v28);
  }

LABEL_6:
  objc_autoreleasePoolPop(v5);

  return v8;
}

- (void)addInfoFromSymbolOwner:(uint64_t)owner fromDisk:(char)disk includeExpensiveInfo:(int)info
{
  if (self && ((info & 1) != 0 || ![*(self + 80) isAbsolutePath] || !*(self + 40)))
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = selfCopy + 10;
    if (([selfCopy[10] isAbsolutePath] & 1) == 0 && (CSSymbolOwnerIsDsym() & 1) == 0)
    {
      Path = CSSymbolOwnerGetPath();
      v13 = SAFilepathForCString(Path);
      LOBYTE(v27) = 0;
      if (v13 && SAFilepathMatches(*v11, v13, &v27) && v27 == 1)
      {
        objc_storeStrong(selfCopy + 10, v13);
      }
    }

    if (!selfCopy[3] && !*v11)
    {
      Name = CSSymbolOwnerGetName();
      v15 = SAFilepathForCString(Name);
      v16 = selfCopy[3];
      selfCopy[3] = v15;
    }

    v27 = 0;
    v28 = 0;
    v26 = 0;
    IsContiguous = SASymbolOwnerIsContiguous(a2, owner, &v27, &v26);
    v18 = v26;
    if (v18 > [selfCopy[7] count])
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __65__SABinary_addInfoFromSymbolOwner_fromDisk_includeExpensiveInfo___block_invoke;
      v23[3] = &unk_1E86F69C0;
      v24 = IsContiguous | disk;
      v23[4] = selfCopy;
      v23[5] = a2;
      v23[6] = owner;
      infoCopy = info;
      SASymbolOwnerForeachSegment(a2, owner, v23);
    }

    if ([(SASegment *)selfCopy[6] isEmpty])
    {
      v19 = selfCopy[6];
      selfCopy[6] = 0;
    }

    if (IsContiguous)
    {
      [(SABinary *)selfCopy applyLength:v28];
    }

    if (info && !selfCopy[14])
    {
      Version = CSSymbolOwnerGetVersion();
      if (Version)
      {
        v21 = SANSStringForCString(Version);
        v22 = selfCopy[14];
        selfCopy[14] = v21;
      }
    }

    objc_sync_exit(selfCopy);
  }
}

void __65__SABinary_addInfoFromSymbolOwner_fromDisk_includeExpensiveInfo___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  BaseAddress = CSSymbolOwnerGetBaseAddress();
  v18 = [(SABinary *)v7 segmentWithCSSegment:a2 symbolOwnerLayoutMatchesDisk:a3 symbolOwnerBaseAddress:v6, BaseAddress];
  if (v18 && *(a1 + 57) == 1)
  {
    v9 = v18;
    objc_sync_enter(v9);
    Range = CSRegionGetRange();
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __34__SASegment_addInfoFromCSSegment___block_invoke;
    v28[3] = &unk_1E86F6750;
    v28[5] = Range;
    v28[6] = v11;
    v28[4] = v9;
    v12 = MEMORY[0x1E12EBE50](v28);
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __34__SASegment_addInfoFromCSSegment___block_invoke_2;
    v26 = &unk_1E86F67A0;
    v27 = v12;
    CSRegionForeachSymbol();
    v13 = [v9[7] allValues];

    objc_sync_exit(v9);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v15)
    {
      v16 = *v20;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v14);
          }

          [(SAInstruction *)*(*(&v19 + 1) + 8 * i) checkForNewSymbol];
        }

        v15 = [v14 countByEnumeratingWithState:&v19 objects:v29 count:16];
      }

      while (v15);
    }
  }
}

- (void)findPathViaBinaryLocator
{
  v20 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (([selfCopy[10] isAbsolutePath] & 1) == 0)
    {
      v2 = selfCopy[2];
      if ((v2 & 4) == 0)
      {
        selfCopy[2] = (v2 | 4);
        v3 = +[SABinaryLocator sharedBinaryLocator];
        v4 = [(SABinaryLocator *)v3 urlForUUID:?];
        v5 = v4;
        if (v4)
        {
          path = [v4 path];
          if (path)
          {
            v13 = 0;
            if (SAFilepathMatches(selfCopy[10], path, &v13))
            {
              if (v13 == 1)
              {
                v7 = SACachedNSString(path);
                v8 = selfCopy[10];
                selfCopy[10] = v7;

                *(selfCopy + 66) = 1;
              }
            }

            else
            {
              v9 = *__error();
              v10 = _sa_logt();
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
              {
                uUIDString = [selfCopy[9] UUIDString];
                v12 = selfCopy[10];
                *buf = 138543874;
                v15 = uUIDString;
                v16 = 2112;
                v17 = path;
                v18 = 2112;
                v19 = v12;
                _os_log_debug_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@: found path %@ via binary locator, but doesn't match existing partial path %@", buf, 0x20u);
              }

              *__error() = v9;
            }
          }
        }

        [v3 done];
      }
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)gatherBundleInfo
{
  if (self)
  {
    obj = self;
    objc_sync_enter(obj);
    if (*(obj + 88) == 0 && !*(obj + 13) && (obj[64] & 1) == 0 && ([*(obj + 10) isAbsolutePath] & 1) != 0)
    {
      obj[64] |= 1u;
      v1 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:*(obj + 10) isDirectory:0];
      if (v1)
      {
        v2 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle();

        if (v2)
        {
          [(SABinary *)obj saveInfoFromBundle:v2];
          CFRelease(v2);
        }

        else
        {
          [(SABinary *)obj getCodeSignInfoWithBundleUrl:?];
        }
      }
    }

    objc_sync_exit(obj);
  }
}

void __89__SABinary_symbolOwnerWrapperWithOptions_pid_checkExclave_additionalCSSymbolicatorFlags___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 80))
  {
    *uu2 = 0;
    v18 = 0;
    dyld_image_copy_uuid();
    *uu1 = 0;
    v16 = 0;
    [*(*(a1 + 32) + 72) getUUIDBytes:uu1];
    if (!uuid_compare(uu1, uu2))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      v4 = DyldImagePath(a2);
      if (v4)
      {
        v5 = SANSStringForCString(v4);
        v6 = *(a1 + 32);
        v7 = *(v6 + 80);
        *(v6 + 80) = v5;
      }

      else
      {
        v8 = *__error();
        v9 = _sa_logt();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = *(a1 + 48);
          v11 = [*(a1 + 32) debugDescription];
          v12[0] = 67109378;
          v12[1] = v10;
          v13 = 2112;
          v14 = v11;
          _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "dyld image has no installname in [%d] for %@", v12, 0x12u);
        }

        *__error() = v8;
      }
    }
  }
}

uint64_t __89__SABinary_symbolOwnerWrapperWithOptions_pid_checkExclave_additionalCSSymbolicatorFlags___block_invoke_143(uint64_t a1)
{
  _CopyLoadInfosForDyldSnapshot(*(a1 + 32), *(a1 + 48), 1, *(a1 + 40), 0, 0, 0, 0);

  return dyld_process_snapshot_dispose();
}

uint64_t __89__SABinary_symbolOwnerWrapperWithOptions_pid_checkExclave_additionalCSSymbolicatorFlags___block_invoke_145(uint64_t a1)
{
  CSSymbolicatorForeachSymbolOwnerAtTime();

  return CSRelease();
}

- (void)getCodeSignInfoWithBundleUrl:(void *)url
{
  if (url && !url[15] && !url[16] && (a2 || url[10]))
  {
    obj = url;
    objc_sync_enter(obj);
    if ((obj[8] & 2) == 0)
    {
      *(obj + 64) |= 2u;
    }

    objc_sync_exit(obj);
  }
}

- (void)saveInfoFromBundle:(void *)bundle
{
  if (bundle)
  {
    bundleCopy = bundle;
    objc_sync_enter(bundleCopy);
    if (*(bundleCopy + 88) == 0 && !*(bundleCopy + 13))
    {
      bundleCopy[64] |= 1u;
      v4 = CFBundleGetIdentifier(a2);
      v5 = *(bundleCopy + 11);
      *(bundleCopy + 11) = v4;

      v6 = SACFBundleCopyStringForKey(a2, *MEMORY[0x1E695E148]);
      v7 = *(bundleCopy + 13);
      *(bundleCopy + 13) = v6;

      v8 = SACFBundleCopyStringForKey(a2, *MEMORY[0x1E695E500]);
      v9 = *(bundleCopy + 12);
      *(bundleCopy + 12) = v8;

      if (!*(bundleCopy + 10))
      {
        v10 = CFBundleCopyExecutableURL(a2);
        v11 = v10;
        if (v10)
        {
          path = [(__CFURL *)v10 path];

          if (path)
          {
            v16 = 0;
            if (SAFilepathMatches(*(bundleCopy + 10), path, &v16))
            {
              if (v16 == 1)
              {
                v13 = SACachedNSString(path);
                v14 = *(bundleCopy + 10);
                *(bundleCopy + 10) = v13;
              }
            }
          }
        }
      }

      v15 = CFBundleCopyBundleURL(a2);
      [(SABinary *)bundleCopy getCodeSignInfoWithBundleUrl:v15];
    }

    objc_sync_exit(bundleCopy);
  }
}

- (void)gatherInfoWithDataGatheringOptions:(unint64_t)options pid:(int)pid
{
  optionsCopy = options;
  obj = self;
  objc_sync_enter(obj);
  isAbsolutePath = [(NSString *)obj->_path isAbsolutePath];
  if ((optionsCopy & 4) != 0)
  {
    v6 = isAbsolutePath;
  }

  else
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0 && (obj->_alreadyAttempted & 4) == 0)
  {
    [(SABinary *)obj findPathViaBinaryLocator];
  }

  v7 = ![(NSString *)obj->_path isAbsolutePath];
  if ((optionsCopy & 1) == 0)
  {
    LOBYTE(v7) = 1;
  }

  if ((v7 & 1) == 0)
  {
    alreadyAttempted = obj->_alreadyAttempted;
    if ((alreadyAttempted & 1) == 0)
    {
      obj->_alreadyAttempted = alreadyAttempted | 1;
      [(SABinary *)obj gatherBundleInfo];
    }
  }

  objc_sync_exit(obj);
}

- (id)addSymbolWithOffsetIntoBinary:(unint64_t)binary length:(void *)length name:
{
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = [(SABinary *)selfCopy segmentAtOffsetIntoBinary:a2 createFakeSegmentIfNeeded:1];
    v9 = (a2 - [v8 offsetIntoBinary]);
    v10 = [(SASegment *)v8 nonInlineSymbolAtOffsetIntoSegment:v9];
    v11 = v10;
    if (v10)
    {
      if ([v10 offsetIntoSegment] == v9)
      {
        if (length)
        {
          name = [v11 name];

          if (!name)
          {
            objc_setProperty_atomic_copy(v11, v13, length, 24);
          }
        }
      }

      else
      {
        v14 = [(SASegment *)v8 addNonInlineSymbolWithOffsetIntoSegment:v9 length:binary name:length];

        v11 = v14;
      }
    }

    else
    {
      v11 = [(SASegment *)v8 addNonInlineSymbolWithOffsetIntoSegment:v9 length:binary name:length];
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)symbolicateAllInstructionsWithOptions:(int)options pid:(int)pid checkExclave:(int)exclave onlyDsym:(int)dsym additionalCSSymbolicatorFlags:
{
  v105 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (a2 & 0x48) == 0 && (exclave)
    {
      goto LABEL_76;
    }

    v66 = a2 & 0x66F;
    v9 = v66 & ~*(selfCopy + 4);
    if (*(selfCopy + 65))
    {
      goto LABEL_5;
    }

    if ((*(selfCopy + 64) & 8) != 0 || !v9)
    {
      goto LABEL_76;
    }

    if ((*(selfCopy + 64) & 4) == 0)
    {
LABEL_5:
      v62 = a2 & 0x66F & ~*(selfCopy + 4);
      v64 = a2;
      exclaveCopy2 = exclave;
      v65 = 0;
    }

    else
    {
      if ((v9 & 0x48) == 0)
      {
LABEL_76:
        objc_sync_exit(selfCopy);

        return;
      }

      v62 = a2 & 0x66F & ~*(selfCopy + 4);
      v64 = a2;
      exclaveCopy2 = exclave;
      v65 = 1;
    }

    v85 = 0;
    v86 = &v85;
    v87 = 0x2020000000;
    v88 = 1;
    v81 = 0;
    v82 = &v81;
    v83 = 0x2020000000;
    v84 = 1;
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v77 = __106__SABinary_symbolicateAllInstructionsWithOptions_pid_checkExclave_onlyDsym_additionalCSSymbolicatorFlags___block_invoke;
    v78 = &unk_1E86F6A70;
    v79 = &v85;
    v80 = &v81;
    v10 = objc_alloc(MEMORY[0x1E695DF70]);
    v11 = selfCopy;
    objc_sync_enter(v11);
    obj = v11;
    Property = v11[6];
    if (Property)
    {
      Property = objc_getProperty(Property, v12, 56, 1);
    }

    v14 = Property;
    v15 = [v14 count];

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v16 = v11[7];
    v18 = [v16 countByEnumeratingWithState:&v99 objects:&dest count:16];
    if (v18)
    {
      v19 = *v100;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v100 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v99 + 1) + 8 * i);
          if (v21)
          {
            v21 = objc_getProperty(v21, v17, 56, 1);
          }

          v22 = v21;
          v23 = [v22 count];

          v15 += v23;
        }

        v18 = [v16 countByEnumeratingWithState:&v99 objects:&dest count:16];
      }

      while (v18);
    }

    objc_sync_exit(obj);
    v24 = [v10 initWithCapacity:v15];
    v25 = obj;
    v67 = obj;
    objc_sync_enter(v67);
    v26 = obj[6];
    if (v26)
    {
      v27 = v26;
      objc_sync_enter(v27);
      v29 = obj[6];
      if (v29)
      {
        v29 = objc_getProperty(v29, v28, 56, 1);
      }

      v30 = v29;
      allValues = [v30 allValues];

      objc_sync_exit(v27);
      if (allValues)
      {
        [v24 addObjectsFromArray:allValues];
      }

      v25 = obj;
    }

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v32 = v25[7];
    v33 = [v32 countByEnumeratingWithState:&v94 objects:&dest count:16];
    if (v33)
    {
      v34 = *v95;
      do
      {
        v35 = 0;
        do
        {
          if (*v95 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = *(*(&v94 + 1) + 8 * v35);
          objc_sync_enter(v36);
          if (v36)
          {
            v38 = objc_getProperty(v36, v37, 56, 1);
          }

          else
          {
            v38 = 0;
          }

          v39 = v38;
          allValues2 = [v39 allValues];

          objc_sync_exit(v36);
          if (allValues2)
          {
            [v24 addObjectsFromArray:allValues2];
          }

          ++v35;
        }

        while (v33 != v35);
        v41 = [v32 countByEnumeratingWithState:&v94 objects:&dest count:16];
        v33 = v41;
      }

      while (v41);
    }

    objc_sync_exit(v67);
    v93 = 0;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v42 = v24;
    v43 = [v42 countByEnumeratingWithState:&v89 objects:&v99 count:16];
    if (v43)
    {
      v44 = *v90;
LABEL_38:
      v45 = 0;
      while (1)
      {
        if (*v90 != v44)
        {
          objc_enumerationMutation(v42);
        }

        v77(v76, *(*(&v89 + 1) + 8 * v45), &v93);
        if (v93)
        {
          break;
        }

        if (v43 == ++v45)
        {
          v43 = [v42 countByEnumeratingWithState:&v89 objects:&v99 count:16];
          if (v43)
          {
            goto LABEL_38;
          }

          break;
        }
      }
    }

    if (*(v82 + 24) == 1)
    {
      if (*(v86 + 24) == 1 || (v65 = 1, (v67[8] & 8) == 0) && (v62 & 0x48) == 0)
      {
        *(selfCopy + 65) = 0;
LABEL_75:
        _Block_object_dispose(&v81, 8);
        _Block_object_dispose(&v85, 8);
        goto LABEL_76;
      }
    }

    *(selfCopy + 4) = v66;
    v46 = [(SABinary *)v67 symbolOwnerWrapperWithOptions:v64 pid:options checkExclave:pid additionalCSSymbolicatorFlags:dsym];
    if (v46)
    {
      objc_copyStruct(&dest, (v46 + 16), 16, 1, 0);
      if (CSIsNull())
      {
        v55 = *__error();
        v56 = _sa_logt();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v57 = [v67 debugDescription];
          v58 = v57;
          uTF8String = [v57 UTF8String];
          dest = 136315138;
          dest_4 = uTF8String;
          _os_log_error_impl(&dword_1E0E2F000, v56, OS_LOG_TYPE_ERROR, "%s: null symbol owner in symbol owner wrapper", &dest, 0xCu);
        }

        *__error() = v55;
        v60 = [v67 debugDescription];
        v61 = v60;
        _SASetCrashLogMessage(2606, "%s: null symbol owner in symbol owner wrapper", [v60 UTF8String]);

        _os_crash();
        __break(1u);
      }

      *(v67 + 64) |= 4u;
      if (CSSymbolOwnerIsDsym())
      {
        v47 = 8;
      }

      else
      {
        v47 = 0;
      }

      *(v67 + 64) = v67[8] & 0xF7 | v47;
      if (v65 | exclaveCopy2) != 1 || (CSSymbolOwnerIsDsym())
      {
        *(selfCopy + 65) = 0;
        if (!v67[14])
        {
          Version = CSSymbolOwnerGetVersion();
          if (Version)
          {
            v49 = SANSStringForCString(Version);
            v50 = v67[14];
            v67[14] = v49;
          }
        }

        [(SASegment *)obj[6] symbolicateWithSymbolOwnerWrapper:v46];
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v51 = obj[7];
        v52 = [v51 countByEnumeratingWithState:&v72 objects:v98 count:16];
        if (v52)
        {
          v53 = *v73;
          do
          {
            for (j = 0; j != v52; ++j)
            {
              if (*v73 != v53)
              {
                objc_enumerationMutation(v51);
              }

              [(SASegment *)*(*(&v72 + 1) + 8 * j) symbolicateWithSymbolOwnerWrapper:v46];
            }

            v52 = [v51 countByEnumeratingWithState:&v72 objects:v98 count:16];
          }

          while (v52);
        }

        goto LABEL_74;
      }

      if ((v65 | exclaveCopy2 ^ 1) != 1)
      {
LABEL_74:

        goto LABEL_75;
      }
    }

    else
    {
      *(v67 + 64) &= 0xF3u;
    }

    *(selfCopy + 65) = 0;
    goto LABEL_74;
  }
}

uint64_t __106__SABinary_symbolicateAllInstructionsWithOptions_pid_checkExclave_onlyDsym_additionalCSSymbolicatorFlags___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (!a2)
  {
    *(*(*(result + 32) + 8) + 24) = 0;
LABEL_7:
    *(*(*(result + 40) + 8) + 24) = 0;
    *a3 = 1;
    return result;
  }

  if (!*(a2 + 16))
  {
    *(*(*(result + 32) + 8) + 24) = 0;
  }

  if (!*(a2 + 8))
  {
    goto LABEL_7;
  }

  return result;
}

- (void)clearSymbolCache
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  fakeEntireBinarySegment = selfCopy->_fakeEntireBinarySegment;
  selfCopy->_fakeEntireBinarySegment = 0;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = selfCopy->_segments;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        if (v8)
        {
          v9 = v8;
          objc_sync_enter(v9);
          v10 = v9[1];
          v9[1] = 0;

          v11 = v9[2];
          v9[2] = 0;

          v12 = v9[7];
          v9[7] = 0;

          objc_sync_exit(v9);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  selfCopy->_haveMoreInstructionsToSymbolicate = 0;
  selfCopy->_optionsWhenLastSymbolicated = 0;
  *(selfCopy + 64) &= 0xF3u;
  [(SABinary *)selfCopy clearCoreSymbolicationCache];
  objc_sync_exit(selfCopy);
}

void __28__SABinary_dataFillingQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);
  v1 = dispatch_queue_create("com.apple.SampleAnalysis.binaryDataFilling", v0);
  v2 = qword_1EDD03200;
  qword_1EDD03200 = v1;
}

- (NSString)debugDescription
{
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  path = self->_path;
  if (!path)
  {
    path = self->_name;
  }

  uuid = self->_uuid;
  length = self->_length;
  bundleIdentifier = self->_bundleIdentifier;
  bundleVersion = self->_bundleVersion;
  bundleShortVersion = self->_bundleShortVersion;
  binaryVersion = self->_binaryVersion;
  codesigningID = self->_codesigningID;
  teamID = self->_teamID;
  v12 = [(NSMutableArray *)self->_segments count];
  v13 = "has";
  if (!self->_fakeEntireBinarySegment)
  {
    v13 = "no";
  }

  if (self->_symbolOwnerWrapper)
  {
    v14 = @"has";
  }

  else
  {
    v14 = @"no";
  }

  v15 = [v17 initWithFormat:@"%@ <%@> length 0x%llx %@ %@ %@ %@ %@ %@: %lu segments (%s fake segment), (%@ symbol owner)", path, uuid, length, bundleIdentifier, bundleVersion, bundleShortVersion, binaryVersion, codesigningID, teamID, v12, v13, v14];

  return v15;
}

- (unint64_t)textSegmentLength
{
  v3 = [(SABinary *)self checkForSegmentWithCleanName:?];
  if (v3 || ([(SABinary *)self checkForSegmentWithCleanName:?], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [v3 length];

    return v5;
  }

  else
  {

    return [(SABinary *)self length];
  }
}

- (BOOL)hasTextExecSegment
{
  v2 = [(SABinary *)self checkForSegmentWithCleanName:?];
  v3 = v2 != 0;

  return v3;
}

- (id)instructionAtOffsetIntoTextSegment:(unint64_t)segment
{
  v5 = [(SABinary *)self checkForSegmentWithCleanName:?];
  if (v5 || ([(SABinary *)self checkForSegmentWithCleanName:?], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 instructionAtOffsetIntoSegment:segment];
  }

  else
  {
    v7 = [(SABinary *)self instructionAtOffsetIntoBinary:segment];
  }

  return v7;
}

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  name = self->_name;
  if (name)
  {
    SAJSONWriteDictionaryFirstEntry(stream, @"name", name);
  }

  if ([(SABinary *)self length])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SABinary length](self, "length")}];
    SAJSONWriteDictionaryEntry(stream, @"length", v6);
  }

  path = self->_path;
  if (path)
  {
    SAJSONWriteDictionaryEntry(stream, @"path", path);
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    SAJSONWriteDictionaryEntry(stream, @"bundleID", bundleIdentifier);
  }

  bundleVersion = self->_bundleVersion;
  if (bundleVersion)
  {
    SAJSONWriteDictionaryEntry(stream, @"bundleVersion", bundleVersion);
  }

  bundleShortVersion = self->_bundleShortVersion;
  if (bundleShortVersion)
  {
    SAJSONWriteDictionaryEntry(stream, @"bundleShortVersion", bundleShortVersion);
  }

  binaryVersion = self->_binaryVersion;
  if (binaryVersion)
  {
    SAJSONWriteDictionaryEntry(stream, @"binaryVersion", binaryVersion);
  }

  codesigningID = self->_codesigningID;
  if (codesigningID)
  {
    SAJSONWriteDictionaryEntry(stream, @"codesigningID", codesigningID);
  }

  teamID = self->_teamID;
  if (teamID)
  {
    SAJSONWriteDictionaryEntry(stream, @"teamID", teamID);
  }

  if ([(NSMutableArray *)self->_segments count])
  {
    [stream appendString:{@", segments:"}];
    segments = self->_segments;

    SAJSONWriteArray(stream, segments);
  }
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  selfCopy = self;
  v35 = *MEMORY[0x1E69E9840];
  if ([(SABinary *)self sizeInBytesForSerializedVersion]> length)
  {
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [selfCopy debugDescription];
      uTF8String = [v17 UTF8String];
      sizeInBytesForSerializedVersion = [selfCopy sizeInBytesForSerializedVersion];
      v19 = [*(selfCopy + 56) count];
      *buf = 136315906;
      v32 = uTF8String;
      v33 = 2048;
      *v34 = sizeInBytesForSerializedVersion;
      *&v34[8] = 2048;
      *&v34[10] = v19;
      *&v34[18] = 2048;
      *&v34[20] = length;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "%s: size %lu (%lu segments) > buffer length %lu", buf, 0x2Au);
    }

    *__error() = v15;
    v20 = [selfCopy debugDescription];
    _SASetCrashLogMessage(4780, "%s: size %lu (%lu segments) > buffer length %lu", [v20 UTF8String], objc_msgSend(selfCopy, "sizeInBytesForSerializedVersion"), objc_msgSend(*(selfCopy + 56), "count"), length);

    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  *&buffer->var0 = 769;
  *&buffer->var2[16] = [selfCopy length];
  if ([*(selfCopy + 56) count] == 1)
  {
    v10 = [(SABinary *)selfCopy checkForSegmentWithCleanName:?];

    if (v10)
    {
      BYTE2(buffer->var9) |= 1u;
    }
  }

  [*(selfCopy + 72) getUUIDBytes:buffer->var2];
  *(&buffer->var3 + 2) = SASerializableIndexForPointerFromSerializationDictionary(*(selfCopy + 24), dictionary);
  *(&buffer->var4 + 2) = SASerializableIndexForPointerFromSerializationDictionary(*(selfCopy + 80), dictionary);
  *(&buffer->var5 + 2) = SASerializableIndexForPointerFromSerializationDictionary(*(selfCopy + 88), dictionary);
  *(&buffer->var6 + 2) = SASerializableIndexForPointerFromSerializationDictionary(*(selfCopy + 96), dictionary);
  *(&buffer->var7 + 2) = SASerializableIndexForPointerFromSerializationDictionary(*(selfCopy + 104), dictionary);
  *(&buffer->var8 + 2) = SASerializableIndexForPointerFromSerializationDictionary(*(selfCopy + 112), dictionary);
  if ([*(selfCopy + 56) count] >= 0xFFFF)
  {
LABEL_11:
    v21 = *__error();
    buffer = _sa_logt();
    if (os_log_type_enabled(buffer, OS_LOG_TYPE_ERROR))
    {
      v22 = [selfCopy debugDescription];
      uTF8String2 = [v22 UTF8String];
      *buf = 136315394;
      v32 = uTF8String2;
      v33 = 1024;
      *v34 = 0xFFFF;
      _os_log_error_impl(&dword_1E0E2F000, buffer, OS_LOG_TYPE_ERROR, "%s: more than %d segments", buf, 0x12u);
    }

    *__error() = v21;
    selfCopy = [selfCopy debugDescription];
    _SASetCrashLogMessage(4800, "%s: more than %d segments", [selfCopy UTF8String], 0xFFFF);

    _os_crash();
    __break(1u);
LABEL_14:
    v24 = *__error();
    v25 = _sa_logt();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [selfCopy debugDescription];
      uTF8String3 = [v26 UTF8String];
      v28 = *(&buffer->var9 + 3);
      sizeInBytesForSerializedVersion2 = [selfCopy sizeInBytesForSerializedVersion];
      *buf = 136315906;
      v32 = uTF8String3;
      v33 = 1024;
      *v34 = v28;
      *&v34[4] = 2048;
      *&v34[6] = sizeInBytesForSerializedVersion;
      *&v34[14] = 2048;
      *&v34[16] = sizeInBytesForSerializedVersion2;
      _os_log_error_impl(&dword_1E0E2F000, v25, OS_LOG_TYPE_ERROR, "%s: after serializing with %u segments, ended with length %ld, should be %lu", buf, 0x26u);
    }

    *__error() = v24;
    v30 = [selfCopy debugDescription];
    _SASetCrashLogMessage(4807, "%s: after serializing with %u segments, ended with length %ld, should be %lu", [v30 UTF8String], *(&buffer->var9 + 3), sizeInBytesForSerializedVersion, objc_msgSend(selfCopy, "sizeInBytesForSerializedVersion"));

    _os_crash();
    __break(1u);
  }

  v11 = [*(selfCopy + 56) count];
  *(&buffer->var9 + 3) = v11;
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&buffer->var9 + 5, v11, *(selfCopy + 56), dictionary);
  v12 = *(&buffer->var9 + 3);
  sizeInBytesForSerializedVersion = 8 * v12 + 93;
  if (sizeInBytesForSerializedVersion != [selfCopy sizeInBytesForSerializedVersion])
  {
    goto LABEL_14;
  }

  v13 = (&buffer->var9 + 8 * v12 + 5);
  *v13 = SASerializableIndexForPointerFromSerializationDictionary(*(selfCopy + 120), dictionary);
  v13[1] = SASerializableIndexForPointerFromSerializationDictionary(*(selfCopy + 128), dictionary);
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v17 = *MEMORY[0x1E69E9840];
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    [(NSString *)self->_name addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_path addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_bundleIdentifier addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_bundleVersion addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_bundleShortVersion addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_binaryVersion addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_codesigningID addSelfToSerializationDictionary:dictionary];
    [(NSString *)self->_teamID addSelfToSerializationDictionary:dictionary];
    [(SASegment *)self->_fakeEntireBinarySegment addSelfToSerializationDictionary:dictionary];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_segments;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) addSelfToSerializationDictionary:{dictionary, v12}];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v4 = *__error();
  v5 = _sa_logt();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&dword_1E0E2F000, v5, OS_LOG_TYPE_ERROR, "Called without dict/buff though it's defined", v7, 2u);
  }

  *__error() = v4;
  _SASetCrashLogMessage(4835, "Called without dict/buff though it's defined");
  result = _os_crash();
  __break(1u);
  return result;
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v28 = *MEMORY[0x1E69E9840];
  if (*buffer >= 4u)
  {
    goto LABEL_21;
  }

  if (length <= 0x4A)
  {
    v21 = *__error();
    v22 = _sa_logt();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v26 = 2048;
      v27 = 75;
      _os_log_error_impl(&dword_1E0E2F000, v22, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SABinary struct %lu", buf, 0x16u);
    }

    *__error() = v21;
    _SASetCrashLogMessage(4843, "bufferLength %lu < serialized SABinary struct %lu", length, 75);
    _os_crash();
    __break(1u);
LABEL_21:
    v23 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SABinary version" userInfo:0];
    objc_exception_throw(v23);
  }

  v10 = uuidForBytes(buffer + 2);
  v11 = *(buffer + 34);
  v12 = objc_opt_class();
  v13 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v12, 1);
  if (*gSASerializationEncodedVersionBeingDecoded() < 31)
  {
    v16 = [SABinary binaryWithUUID:v10 absolutePath:0];
    v15 = v16;
    if (v13)
    {
      path = [v16 path];

      if (!path)
      {
        [v15 addPath:v13];
      }
    }
  }

  else
  {
    if ([v13 isAbsolutePath])
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = [SABinary binaryWithUUID:v10 absolutePath:v14];
  }

  if (*(buffer + 1) < 2u)
  {
    if (*(buffer + 74))
    {
      v18 = @"__TEXT_EXEC";
    }

    else
    {
      v18 = @"__TEXT";
    }

    v19 = [(SABinary *)v15 segmentWithCleanName:v18 length:*(buffer + 18) offsetIntoBinary:0x7FFFFFFFFFFFFFFFLL];
  }

  else
  {
    [(SABinary *)v15 applyLength:?];
  }

  return v15;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  *&v66[13] = *MEMORY[0x1E69E9840];
  if (*buffer >= 4u)
  {
    goto LABEL_53;
  }

  if (length <= 0x4A)
  {
    v52 = *__error();
    v53 = _sa_logt();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy3 = length;
      v65 = 2048;
      *v66 = 75;
      _os_log_error_impl(&dword_1E0E2F000, v53, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SABinary struct %lu", buf, 0x16u);
    }

    *__error() = v52;
    _SASetCrashLogMessage(4880, "bufferLength %lu < serialized SABinary struct %lu", length, 75);
    _os_crash();
    __break(1u);
LABEL_44:
    v54 = *__error();
    v55 = _sa_logt();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy3 = length;
      v65 = 2048;
      *v66 = 77;
      _os_log_error_impl(&dword_1E0E2F000, v55, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SABinary struct %lu", buf, 0x16u);
    }

    *__error() = v54;
    _SASetCrashLogMessage(4920, "bufferLength %lu < serialized SABinary struct %lu", length, 77);
    _os_crash();
    __break(1u);
    goto LABEL_47;
  }

  bufferCopy = buffer;
  v13 = *(buffer + 34);
  v14 = objc_opt_class();
  v15 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v13, dictionary, bufferDictionary, v14, 0);
  p_path = &self->_path;
  path = self->_path;
  if (path)
  {
    if (v15 && ![(NSString *)path isEqualToString:v15])
    {
      v17 = *gSASerializationEncodedVersionBeingDecoded();
      v18 = *__error();
      v19 = _sa_logt();
      v20 = v19;
      if (v17 < 31)
      {
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }

        v21 = [(SABinary *)self debugDescription];
        *buf = 138412546;
        lengthCopy3 = v15;
        v65 = 2112;
        *v66 = v21;
        _os_log_error_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_ERROR, "Decoded SABinary path %@ doesn't match %@, not filling in bundle/codesign info", buf, 0x16u);
      }

      else
      {
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
LABEL_38:

          *__error() = v18;
          goto LABEL_39;
        }

        v21 = [(SABinary *)self debugDescription];
        *buf = 138412546;
        lengthCopy3 = v15;
        v65 = 2112;
        *v66 = v21;
        _os_log_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_INFO, "Decoded SABinary path %@ doesn't match %@", buf, 0x16u);
      }

      goto LABEL_38;
    }
  }

  else
  {
    objc_storeStrong(&self->_path, v15);
  }

  if (!self->_name && !*p_path)
  {
    v22 = *(bufferCopy + 26);
    v23 = objc_opt_class();
    v24 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v22, dictionary, bufferDictionary, v23, 0);
    p_path = v24;
    if (v24)
    {
      v25 = [v24 copy];
      name = self->_name;
      self->_name = v25;
    }
  }

  if (!self->_bundleIdentifier)
  {
    p_path = *(bufferCopy + 42);
    v27 = objc_opt_class();
    v28 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(p_path, dictionary, bufferDictionary, v27, 0);
    bundleIdentifier = self->_bundleIdentifier;
    self->_bundleIdentifier = v28;
  }

  if (!self->_bundleVersion)
  {
    p_path = *(bufferCopy + 50);
    v30 = objc_opt_class();
    v31 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(p_path, dictionary, bufferDictionary, v30, 0);
    bundleVersion = self->_bundleVersion;
    self->_bundleVersion = v31;
  }

  if (!self->_bundleShortVersion)
  {
    p_path = *(bufferCopy + 58);
    v33 = objc_opt_class();
    v34 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(p_path, dictionary, bufferDictionary, v33, 0);
    bundleShortVersion = self->_bundleShortVersion;
    self->_bundleShortVersion = v34;
  }

  if (!self->_binaryVersion)
  {
    p_path = *(bufferCopy + 66);
    v36 = objc_opt_class();
    v37 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(p_path, dictionary, bufferDictionary, v36, 0);
    binaryVersion = self->_binaryVersion;
    self->_binaryVersion = v37;
  }

  if (bufferCopy[1] < 2u)
  {
    goto LABEL_39;
  }

  if (length <= 0x4C)
  {
    goto LABEL_44;
  }

  lengthCopy4 = *(bufferCopy + 75);
  v39 = 8 * lengthCopy4;
  p_path = (8 * lengthCopy4 + 77);
  if (p_path > length)
  {
LABEL_47:
    v56 = *__error();
    v57 = _sa_logt();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = *(bufferCopy + 75);
      *buf = 134218496;
      lengthCopy3 = length;
      v65 = 1024;
      *v66 = v58;
      v66[2] = 2048;
      *&v66[3] = p_path;
      _os_log_error_impl(&dword_1E0E2F000, v57, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SABinary struct plus %u segments %llu", buf, 0x1Cu);
    }

    *__error() = v56;
    _SASetCrashLogMessage(4923, "bufferLength %lu < serialized SABinary struct plus %u segments %llu", length, *(bufferCopy + 75), p_path);
    _os_crash();
    __break(1u);
LABEL_50:
    v59 = *__error();
    v60 = _sa_logt();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v61 = *(bufferCopy + 75);
      *buf = 134218240;
      lengthCopy3 = lengthCopy4;
      v65 = 1024;
      *v66 = v61;
      _os_log_error_impl(&dword_1E0E2F000, v60, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SABinary struct v3 with %u segments", buf, 0x12u);
    }

    *__error() = v59;
    _SASetCrashLogMessage(4935, "bufferLength %lu < serialized SABinary struct v3 with %u segments", lengthCopy4, *(bufferCopy + 75));
    _os_crash();
    __break(1u);
LABEL_53:
    v62 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SABinary version" userInfo:0];
    objc_exception_throw(v62);
  }

  v40 = gSASerializationEncodedVersionBeingDecoded();
  if (*v40 <= 30)
  {
    *gBinaryBeingDecoded(&gBinaryBeingDecoded) = self;
  }

  v41 = objc_opt_class();
  v42 = SASerializableNewMutableArrayFromIndexList((bufferCopy + 77), lengthCopy4, dictionary, bufferDictionary, v41);
  if (*v40 <= 30)
  {
    *gBinaryBeingDecoded(&gBinaryBeingDecoded) = 0;
  }

  lengthCopy4 = length;
  if (bufferCopy[1] >= 3u)
  {
    if (v39 + 93 <= length)
    {
      v43 = &bufferCopy[8 * *(bufferCopy + 75) + 77];
      if (!self->_codesigningID)
      {
        v44 = *v43;
        v45 = objc_opt_class();
        v46 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v44, dictionary, bufferDictionary, v45, 0);
        codesigningID = self->_codesigningID;
        self->_codesigningID = v46;
      }

      if (!self->_teamID)
      {
        v48 = v43[1];
        v49 = objc_opt_class();
        v50 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v48, dictionary, bufferDictionary, v49, 0);
        teamID = self->_teamID;
        self->_teamID = v50;
      }

      goto LABEL_39;
    }

    goto LABEL_50;
  }

LABEL_39:
}

@end