@interface _CSVisualizationArchiver
+ (void)beginProvidingVisualizationArchivesWithMachServiceName:(id)name queue:(id)queue creatingVisualizersWithBlock:(id)block;
+ (void)processCommandFromConnection:(void *)connection fileHandle:(__sFILE *)handle providerBlock:(id)block;
+ (void)provideVisualizerToConnection:(void *)connection fileHandle:(__sFILE *)handle providerBlock:(id)block;
- (BOOL)fwrite:(const void *)fwrite size:(unint64_t)size numberOfItems:(unint64_t)items error:(id *)error;
- (BOOL)writeDictionary:(id)dictionary error:(id *)error;
- (BOOL)writeMetadata:(id)metadata forStore:(__CSStore *)store error:(id *)error;
- (_CSVisualizationArchiver)initWithVisualizer:(id)visualizer fileHandle:(__sFILE *)handle closeWhenDone:(BOOL)done allowCompression:(BOOL)compression error:(id *)error;
- (void)dealloc;
- (void)finishWriting;
- (void)getWriteUnitState:(_CSWriteUnitState *)state forTable:(unsigned int)table;
- (void)setUnitDescriptionPredicate:(id)predicate;
- (void)writeAllUnitsInTable:(unsigned int)table block:(id)block;
- (void)writeAllUnitsWithBlock:(id)block;
- (void)writeUnit:(unsigned int)unit inTable:(unsigned int)table;
- (void)writeUnit:(unsigned int)unit inTable:(unsigned int)table state:(const _CSWriteUnitState *)state;
@end

@implementation _CSVisualizationArchiver

- (void)setUnitDescriptionPredicate:(id)predicate
{
  v10[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  objc_storeStrong(&self->_unitDescriptionPredicate, predicate);
  if (predicateCopy)
  {
    v9 = @"predicate";
    predicateFormat = [predicateCopy predicateFormat];
    v10[0] = predicateFormat;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    visualizer = [(_CSVisualizationArchiver *)self visualizer];
    -[_CSVisualizationArchiver writeMetadata:forStore:error:](self, "writeMetadata:forStore:error:", v7, [visualizer store], 0);
  }
}

- (void)finishWriting
{
  fileHandle = self->_fileHandle;
  if (fileHandle)
  {
    fflush(fileHandle);
    if (self->_closeWhenDone)
    {
      fclose(self->_fileHandle);
    }

    self->_fileHandle = 0;
  }
}

- (void)writeAllUnitsWithBlock:(id)block
{
  blockCopy = block;
  visualizer = [(_CSVisualizationArchiver *)self visualizer];
  store = [visualizer store];

  if (!store)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CSVisualizationArchiver.mm" lineNumber:490 description:@"Missing CSStore"];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51___CSVisualizationArchiver_writeAllUnitsWithBlock___block_invoke;
  v10[3] = &unk_1E7ED32E8;
  v10[4] = self;
  v8 = blockCopy;
  v11 = v8;
  _CSStoreEnumerateTables(store, v10);
}

- (void)writeAllUnitsInTable:(unsigned int)table block:(id)block
{
  v4 = *&table;
  selfCopy = self;
  tableCopy = table;
  blockCopy = block;
  visualizer = [(_CSVisualizationArchiver *)self visualizer];
  store = [visualizer store];

  if (store)
  {
    v9 = 4294929780;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CSVisualizationArchiver.mm" lineNumber:445 description:@"Missing CSStore"];

    v9 = 0;
  }

  [(_CSVisualizationArchiver *)self writeUnit:v4 inTable:v9];
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3321888768;
  v21[2] = __55___CSVisualizationArchiver_writeAllUnitsInTable_block___block_invoke;
  v21[3] = &__block_descriptor_40_ea8_32c68_ZTSKZ55___CSVisualizationArchiver_writeAllUnitsInTable_block__E3__0_e19_v32__0I8r_v12I20_24l;
  v21[4] = &v22;
  _CSStoreEnumerateUnits(store, v4, v21);
  v19 = 0u;
  v20 = 0u;
  [(_CSVisualizationArchiver *)self getWriteUnitState:&v19 forTable:v4];
  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11 = _CSStoreCopyTableName(store, v4);
  v12 = [v10 initWithFormat:@"_CSVisualizationArchiver queue for table %@", v11];

  uTF8String = [v12 UTF8String];
  v14 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_create(uTF8String, v14);

  v18 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = __55___CSVisualizationArchiver_writeAllUnitsInTable_block___block_invoke_83;
  block[3] = &__block_descriptor_80_ea8_32c68_ZTSKZ55___CSVisualizationArchiver_writeAllUnitsInTable_block__E3__1_e8_v16__0Q8l;
  block[4] = &v18;
  block[5] = &v22;
  block[6] = &selfCopy;
  block[7] = &tableCopy;
  block[8] = &v19;
  block[9] = &blockCopy;
  dispatch_apply((v23 - v22) >> 2, v15, block);

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }
}

- (void)writeUnit:(unsigned int)unit inTable:(unsigned int)table
{
  v4 = *&table;
  v5 = *&unit;
  v7 = 0u;
  v8 = 0u;
  [(_CSVisualizationArchiver *)self getWriteUnitState:&v7 forTable:?];
  [(_CSVisualizationArchiver *)self writeUnit:v5 inTable:v4 state:&v7];
}

- (void)writeUnit:(unsigned int)unit inTable:(unsigned int)table state:(const _CSWriteUnitState *)state
{
  v6 = *&table;
  v7 = *&unit;
  v27 = *MEMORY[0x1E69E9840];
  v9 = objc_autoreleasePoolPush();
  v10 = (*(state->var2 + 2))();
  if (!v10 || (var3 = state->var3) == 0 || [var3 evaluateWithObject:v10])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
    [dictionary setObject:v13 forKeyedSubscript:@"u"];

    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    [dictionary setObject:v14 forKeyedSubscript:@"t"];

    v15 = (*(state->var1 + 2))();
    if (v15)
    {
      [dictionary setObject:v15 forKeyedSubscript:@"s"];
    }

    if (v10)
    {
      [dictionary setObject:v10 forKeyedSubscript:@"d"];
    }

    v20 = 0;
    v16 = [(_CSVisualizationArchiver *)self writeDictionary:dictionary error:&v20];
    v17 = v20;
    v18 = v17;
    if (!v16)
    {
      v19 = CSStore2::GetLog(v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v22 = v7;
        v23 = 2048;
        v24 = v6;
        v25 = 2114;
        v26 = v18;
        _os_log_error_impl(&dword_1B9D5B000, v19, OS_LOG_TYPE_ERROR, "Failed to convert description of unit %llu in table %llu to data: %{public}@", buf, 0x20u);
      }
    }
  }

  objc_autoreleasePoolPop(v9);
}

- (void)getWriteUnitState:(_CSWriteUnitState *)state forTable:(unsigned int)table
{
  v4 = *&table;
  visualizer = [(_CSVisualizationArchiver *)self visualizer];
  objc_storeStrong(&state->var0, visualizer);
  unitDescriptionPredicate = [(_CSVisualizationArchiver *)self unitDescriptionPredicate];
  var3 = state->var3;
  state->var3 = unitDescriptionPredicate;

  v10 = [visualizer functionsForTable:v4];
  getSummary = [v10 getSummary];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __55___CSVisualizationArchiver_getWriteUnitState_forTable___block_invoke;
  v21[3] = &unk_1E7ED3298;
  v12 = getSummary;
  v22 = v12;
  v13 = MEMORY[0x1BFAE6310](v21);
  var1 = state->var1;
  state->var1 = v13;

  getDescription = [v10 getDescription];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __55___CSVisualizationArchiver_getWriteUnitState_forTable___block_invoke_2;
  v19[3] = &unk_1E7ED32C0;
  v20 = getDescription;
  v16 = getDescription;
  v17 = MEMORY[0x1BFAE6310](v19);
  var2 = state->var2;
  state->var2 = v17;
}

- (BOOL)fwrite:(const void *)fwrite size:(unint64_t)size numberOfItems:(unint64_t)items error:(id *)error
{
  itemsCopy = items;
  v32 = *MEMORY[0x1E69E9840];
  v9 = fwrite(fwrite, size, items, self->_fileHandle);
  fileHandle = self->_fileHandle;
  if (v9 == itemsCopy && !ferror(self->_fileHandle))
  {
    return 1;
  }

  v11 = MEMORY[0x1E696A798];
  if (fileHandle->_close == CSStore2::closeGzipFile)
  {
    errnum = 0;
    v16 = gzerror(fileHandle->_cookie, &errnum);
    v17 = errnum;
    if (errnum == -1)
    {
      v22 = MEMORY[0x1E696ABC0];
      v23 = *__error();
      v28 = *MEMORY[0x1E696A278];
      v29 = @"Line";
      v30 = @"errno";
      v31 = &unk_1F37D78F8;
      itemsCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v28 count:2];
      v15 = [v22 errorWithDomain:*v11 code:v23 userInfo:itemsCopy];
    }

    else
    {
      if (errnum < 2)
      {
        v15 = 0;
        goto LABEL_16;
      }

      v18 = v16;
      v19 = MEMORY[0x1E696ABC0];
      if (v16)
      {
        v28 = *MEMORY[0x1E696A578];
        itemsCopy = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16];
        v30 = itemsCopy;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v28 count:1];
      }

      else
      {
        v20 = 0;
      }

      v15 = [v19 errorWithDomain:@"Z" code:v17 userInfo:v20];
      if (!v18)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_16;
  }

  v12 = MEMORY[0x1E696ABC0];
  v13 = *__error();
  v28 = *MEMORY[0x1E696A278];
  v29 = @"Line";
  v30 = @"errno";
  v31 = &unk_1F37D7910;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v28 count:2];
  v15 = [v12 errorWithDomain:*v11 code:v13 userInfo:v14];

LABEL_16:
  if (error)
  {
    v24 = v15;
    *error = v15;
  }

  if ([v15 code] == 32)
  {
    domain = [v15 domain];
    v26 = [domain isEqual:*v11];

    if (v26)
    {
      atomic_store(1u, &self->_hadEPIPE);
    }
  }

  return 0;
}

- (BOOL)writeDictionary:(id)dictionary error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy copy];

  v8 = objc_autoreleasePoolPush();
  v9 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  v10 = v9;
  if (self->_outputAsXML)
  {
    [v9 setOutputFormat:100];
  }

  [v10 encodeObject:v7 forKey:*MEMORY[0x1E696A508]];
  [v10 finishEncoding];
  encodedData = [v10 encodedData];

  objc_autoreleasePoolPop(v8);
  if (!encodedData)
  {
    v15 = 0;
    LOBYTE(v14) = 0;
    if (!error)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v12 = [encodedData length];
  v22 = v12;
  v13 = CSStore2::GetLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v24 = 8;
    v25 = 2048;
    v26 = v12;
    _os_log_debug_impl(&dword_1B9D5B000, v13, OS_LOG_TYPE_DEBUG, "Writing %llu+%llu bytes to gzip stream", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_dictWriteLock);
  v21 = 0;
  v14 = [(_CSVisualizationArchiver *)self fwrite:&v22 size:8 numberOfItems:1 error:&v21];
  v15 = v21;
  if (v14)
  {
    v16 = encodedData;
    v20 = v15;
    v14 = -[_CSVisualizationArchiver fwrite:size:numberOfItems:error:](self, "fwrite:size:numberOfItems:error:", [encodedData bytes], objc_msgSend(encodedData, "length"), 1, &v20);
    v17 = v20;

    if (v14)
    {
      fflush(self->_fileHandle);
      LOBYTE(v14) = 1;
    }

    v15 = v17;
  }

  os_unfair_lock_unlock(&self->_dictWriteLock);
  if (error)
  {
LABEL_13:
    if (!v14)
    {
      v18 = v15;
      *error = v15;
    }
  }

LABEL_15:

  return v14;
}

- (BOOL)writeMetadata:(id)metadata forStore:(__CSStore *)store error:(id *)error
{
  metadataCopy = metadata;
  v9 = objc_autoreleasePoolPush();
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"metadata"];
  if (metadataCopy)
  {
    [v10 addEntriesFromDictionary:metadataCopy];
  }

  else
  {
    BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.CSStore");
    if (BundleWithIdentifier)
    {
      [v10 setObject:CFBundleGetValueForInfoDictionaryKey(BundleWithIdentifier forKeyedSubscript:{*MEMORY[0x1E695E500]), @"framework-version"}];
    }

    v12 = _CFCopySystemVersionDictionary();
    v13 = v12;
    if (v12)
    {
      v14 = [v12 objectForKeyedSubscript:*MEMORY[0x1E695E1F0]];
      [v10 setObject:v14 forKeyedSubscript:@"os"];

      v15 = [v13 objectForKeyedSubscript:*MEMORY[0x1E695E208]];
      [v10 setObject:v15 forKeyedSubscript:@"os-version"];

      v16 = [v13 objectForKeyedSubscript:*MEMORY[0x1E695E1E8]];
      [v10 setObject:v16 forKeyedSubscript:@"os-build"];
    }

    if (store)
    {
      v17 = -37516;
    }

    else
    {
      v17 = 0;
    }

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{CSStoreGetUnitCount(store, v17)}];
    [v10 setObject:v18 forKeyedSubscript:@"tableCount"];

    visualizer = [(_CSVisualizationArchiver *)self visualizer];
    breakDownUsage = [visualizer breakDownUsage];

    if (breakDownUsage)
    {
      [v10 setObject:breakDownUsage forKeyedSubscript:@"breakdown"];
    }
  }

  v26 = 0;
  v21 = [(_CSVisualizationArchiver *)self writeDictionary:v10 error:&v26];
  v22 = v26;

  objc_autoreleasePoolPop(v9);
  if (error)
  {
    v23 = v21;
  }

  else
  {
    v23 = 1;
  }

  if ((v23 & 1) == 0)
  {
    v24 = v22;
    *error = v22;
  }

  return v21;
}

- (void)dealloc
{
  fileHandle = self->_fileHandle;
  if (fileHandle && self->_closeWhenDone)
  {
    fclose(fileHandle);
  }

  v4.receiver = self;
  v4.super_class = _CSVisualizationArchiver;
  [(_CSVisualizationArchiver *)&v4 dealloc];
}

- (_CSVisualizationArchiver)initWithVisualizer:(id)visualizer fileHandle:(__sFILE *)handle closeWhenDone:(BOOL)done allowCompression:(BOOL)compression error:(id *)error
{
  doneCopy = done;
  v87 = *MEMORY[0x1E69E9840];
  visualizerCopy = visualizer;
  v76.receiver = self;
  v76.super_class = _CSVisualizationArchiver;
  v15 = [(_CSVisualizationArchiver *)&v76 init];
  if (!visualizerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:v15 file:@"CSVisualizationArchiver.mm" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"visualizer != nil"}];
  }

  if (!handle)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:v15 file:@"CSVisualizationArchiver.mm" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"fileHandle != NULL"}];
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E696ABC0];
    v77[0] = *MEMORY[0x1E696A278];
    v77[1] = @"Line";
    v78[0] = @"ENOMEM";
    v78[1] = &unk_1F37D78E0;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:2];
    v21 = [v19 errorWithDomain:*MEMORY[0x1E696A798] code:12 userInfo:v20];

    goto LABEL_11;
  }

  objc_storeStrong(&v15->_visualizer, visualizer);
  *__str = 0;
  v86 = 0;
  v16 = getenv("CS_VISUALIZATION_COMPRESSION_LEVEL");
  if (v16)
  {
    v17 = strtoul(v16, 0, 0);
    v18 = 9;
    if (v17 < 9)
    {
      v18 = v17;
    }
  }

  else
  {
    v18 = 6;
  }

  snprintf(__str, 0x10uLL, "%cb%lu", 119, v18);
  v23 = fileno(handle);
  if ((v23 & 0x80000000) != 0)
  {
    v31 = CSStore2::GetLog(v23);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = handle;
      _os_log_impl(&dword_1B9D5B000, v31, OS_LOG_TYPE_INFO, "File handle %p passed to _CSVisualization[Un]Archiver is not backed by a file descriptor. Will not compress/decompress.", buf, 0xCu);
    }

    v28 = 0;
    if (handle)
    {
      goto LABEL_48;
    }

LABEL_23:
    v32 = v28;
    handle = 0;
    v33 = v28;
    goto LABEL_49;
  }

  v24 = v23;
  if (compression)
  {
    v24 = dup(v23);
    if (v24 < 0)
    {
      v25 = MEMORY[0x1E696ABC0];
      v26 = *__error();
      *&v82 = *MEMORY[0x1E696A278];
      *(&v82 + 1) = @"Line";
      v83 = @"errno";
      v84 = &unk_1F37D7928;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:2];
      v28 = [v25 errorWithDomain:*MEMORY[0x1E696A798] code:v26 userInfo:v27];

      v30 = CSStore2::GetLog(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v64 = *__error();
        v65 = __error();
        v66 = strerror(*v65);
        *buf = 136446722;
        *&buf[4] = "writing";
        *&buf[12] = 1024;
        *&buf[14] = v64;
        v80 = 2080;
        v81 = v66;
        _os_log_error_impl(&dword_1B9D5B000, v30, OS_LOG_TYPE_ERROR, "Error duplicating file descriptor for %{public}s: %i (%s)", buf, 0x1Cu);
      }

      goto LABEL_39;
    }
  }

  else
  {
    v34 = CSStore2::GetLog(v23);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = handle;
      _os_log_impl(&dword_1B9D5B000, v34, OS_LOG_TYPE_INFO, "Disabling compression for file handle %p passed to _CSVisualization[Un]Archiver. Will not compress/decompress.", buf, 0xCu);
    }

    if (handle)
    {
      v33 = 0;
      v28 = 0;
      goto LABEL_49;
    }
  }

  *__error() = 0;
  v35 = gzdopen(v24, __str);
  v36 = v35;
  if (!v35)
  {
    v38 = *__error();
    v72 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A798];
    if (v38)
    {
      *&v82 = *MEMORY[0x1E696A278];
      *(&v82 + 1) = @"Line";
      v83 = @"errnum";
      v84 = &unk_1F37D7958;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:2];
      v28 = [v72 errorWithDomain:v39 code:v38 userInfo:v40];

      v42 = CSStore2::GetLog(v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = strerror(v38);
        *buf = 136446722;
        *&buf[4] = "writing";
        *&buf[12] = 1024;
        *&buf[14] = v38;
        v80 = 2080;
        v81 = v43;
        v44 = "Error opening file handle for %{public}s with gzdopen(): %i (%s)";
        v45 = buf;
        v46 = v42;
        v47 = 28;
LABEL_67:
        _os_log_error_impl(&dword_1B9D5B000, v46, OS_LOG_TYPE_ERROR, v44, v45, v47);
      }
    }

    else
    {
      v83 = *MEMORY[0x1E696A278];
      v84 = @"Line";
      *buf = @"ENOMEM";
      *&buf[8] = &unk_1F37D7970;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v83 count:2];
      v28 = [v72 errorWithDomain:v39 code:12 userInfo:v52];

      v42 = CSStore2::GetLog(v53);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v82) = 136446210;
        *(&v82 + 4) = "writing";
        v44 = "Unknown error opening file handle for %{public}s with gzdopen()";
        v45 = &v82;
        v46 = v42;
        v47 = 12;
        goto LABEL_67;
      }
    }

    close(v24);
    goto LABEL_39;
  }

  v37 = funopen(v35, CSStore2::readFromGzipFile, CSStore2::writeToGzipFile, 0, CSStore2::closeGzipFile);
  if (v37)
  {
    v28 = 0;
    goto LABEL_40;
  }

  v48 = MEMORY[0x1E696ABC0];
  *&v82 = *MEMORY[0x1E696A278];
  *(&v82 + 1) = @"Line";
  v83 = @"ENOMEM";
  v84 = &unk_1F37D7940;
  v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:2];
  v28 = [v48 errorWithDomain:*MEMORY[0x1E696A798] code:12 userInfo:v49];

  v51 = CSStore2::GetLog(v50);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    v67 = *__error();
    v68 = __error();
    v69 = strerror(*v68);
    *buf = 136446722;
    *&buf[4] = "writing";
    *&buf[12] = 1024;
    *&buf[14] = v67;
    v80 = 2080;
    v81 = v69;
    _os_log_error_impl(&dword_1B9D5B000, v51, OS_LOG_TYPE_ERROR, "Error funopening file handle for %{public}s: %i (%s)", buf, 0x1Cu);
  }

  gzclose(v36);
LABEL_39:
  v37 = 0;
LABEL_40:
  v54 = v37 != handle || doneCopy;
  if (v37 == handle || !doneCopy)
  {
    LOBYTE(doneCopy) = v54;
  }

  else
  {
    fclose(handle);
    LOBYTE(doneCopy) = 1;
  }

  handle = v37;
  if (!v37)
  {
    goto LABEL_23;
  }

LABEL_48:
  v33 = 0;
LABEL_49:

  v21 = v33;
  v15->_fileHandle = handle;
  v15->_closeWhenDone = doneCopy;
  if (handle)
  {
    v55 = getenv("CS_VISUALIZATION_OUTPUT_XML");
    if (v55)
    {
      v56 = strtol(v55, 0, 0) != 0;
    }

    else
    {
      v56 = 0;
    }

    v15->_outputAsXML = v56;
    v15->_dictWriteLock._os_unfair_lock_opaque = 0;
    v75 = v21;
    v57 = [(_CSVisualizationArchiver *)v15 fwrite:"csviz0jg" size:8 numberOfItems:1 error:&v75];
    v58 = v75;

    if (!v57)
    {

      goto LABEL_61;
    }

    store = [(_CSVisualizer *)v15->_visualizer store];
    v60 = 4294929780;
    if (!store)
    {
      v60 = 0;
    }

    *buf = v60;
    v74 = v58;
    v61 = [(_CSVisualizationArchiver *)v15 fwrite:buf size:8 numberOfItems:1 error:&v74];
    v21 = v74;

    if (v61)
    {
      fflush(v15->_fileHandle);
      v73 = v21;
      v62 = -[_CSVisualizationArchiver writeMetadata:forStore:error:](v15, "writeMetadata:forStore:error:", 0, [visualizerCopy store], &v73);
      v58 = v73;

      if (v62)
      {
        v21 = v58;
        goto LABEL_63;
      }

LABEL_61:
      v21 = v58;
      if (!error)
      {
        goto LABEL_62;
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

LABEL_11:
  if (!error)
  {
LABEL_62:
    v15 = 0;
    goto LABEL_63;
  }

LABEL_12:
  v22 = v21;
  v15 = 0;
  *error = v21;
LABEL_63:

  return v15;
}

+ (void)beginProvidingVisualizationArchivesWithMachServiceName:(id)name queue:(id)queue creatingVisualizersWithBlock:(id)block
{
  v25 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  queueCopy = queue;
  blockCopy = block;
  v12 = blockCopy;
  if (nameCopy)
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CSVisualizationArchiver.mm" lineNumber:1092 description:{@"Invalid parameter not satisfying: %@", @"serviceName != nil"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"CSVisualizationArchiver.mm" lineNumber:1093 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];

LABEL_3:
  if (lockdownLibrary(void)::sOnce != -1)
  {
    dispatch_once(&lockdownLibrary(void)::sOnce, &__block_literal_global);
  }

  if (lockdownLibrary(void)::sLib)
  {
    v13 = dlsym(lockdownLibrary(void)::sLib, "soft_lockdown_checkin_xpc");
    if (v13)
    {
      v14 = CSStore2::GetLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v24 = nameCopy;
        _os_log_debug_impl(&dword_1B9D5B000, v14, OS_LOG_TYPE_DEBUG, "Beginning remote visualization service '%{public}@'", buf, 0xCu);
      }

      v15 = nameCopy;
      uTF8String = [nameCopy UTF8String];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __141___CSVisualizationArchiver_CSRemoteVisualization__beginProvidingVisualizationArchivesWithMachServiceName_queue_creatingVisualizersWithBlock___block_invoke;
      v19[3] = &unk_1E7ED3338;
      v20 = nameCopy;
      selfCopy = self;
      v21 = v12;
      softLinklockdown_checkin_xpc(uTF8String, 0, queueCopy, v19);
    }
  }
}

+ (void)provideVisualizerToConnection:(void *)connection fileHandle:(__sFILE *)handle providerBlock:(id)block
{
  blockCopy = block;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106___CSVisualizationArchiver_CSRemoteVisualization__provideVisualizerToConnection_fileHandle_providerBlock___block_invoke;
  block[3] = &unk_1E7ED3310;
  v11 = blockCopy;
  connectionCopy = connection;
  handleCopy = handle;
  v8 = blockCopy;
  v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
  v9[2]();
}

+ (void)processCommandFromConnection:(void *)connection fileHandle:(__sFILE *)handle providerBlock:(id)block
{
  v16 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  __ptr = -1;
  if (fread(&__ptr, 8uLL, 1uLL, handle) == 1)
  {
    v9 = __ptr;
    v10 = objc_autoreleasePoolPush();
    v11 = CSStore2::GetLog(v10);
    v12 = v11;
    if (v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v15 = v9;
        _os_log_error_impl(&dword_1B9D5B000, v12, OS_LOG_TYPE_ERROR, "Unrecognized reserved value %llu received from the Mac, ignoring and closing.", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B9D5B000, v12, OS_LOG_TYPE_DEFAULT, "Mac commanded we send a store archive", buf, 2u);
      }

      [self provideVisualizerToConnection:connection fileHandle:handle providerBlock:blockCopy];
    }

    objc_autoreleasePoolPop(v10);
  }
}

@end