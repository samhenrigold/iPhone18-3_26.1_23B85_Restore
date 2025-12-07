@interface SASharedCache
+ (id)currentSharedCacheWithDataGatheringOptions:(uint64_t)options;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (id)sharedCacheWithCSSymbolicator:(uint64_t)symbolicator dataGatheringOptions:(uint64_t)options;
+ (id)sharedCacheWithUUID:(uint64_t)d slide:(uint64_t)slide binaryLoadInfos:;
+ (id)sharedCacheWithUUID:(uint64_t)d slide:(uint64_t)slide slidBaseAddress:(uint64_t)address dataGatheringOptions:;
+ (uint64_t)applyBinaryLoadInfos:(uint64_t)infos sharedCacheUUID:(uint64_t)d slide:(uint64_t)slide slidBaseAddress:;
+ (void)_applyBaseAddress:(void *)address toSharedCaches:;
+ (void)_applyLoadInfos:(uint64_t)infos withSlide:(uint64_t)slide andSlidBaseAddress:(void *)address toSharedCaches:;
+ (void)_doDscSymDirsWork:(uint64_t)work;
+ (void)_doSharedCachesWork:(id)work;
+ (void)_findLoadInfosForSharedCaches:(uint64_t)caches;
+ (void)addDSCSymData:(id)data;
+ (void)addDscSymDir:(id)dir;
+ (void)sharedCacheWithDyldSharedCache:(__int16)cache dataGatheringOptions:;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (BOOL)matchesUUID:(unsigned __int8)d[16] slide:(unint64_t)slide slidBaseAddress:(unint64_t)address;
- (NSString)debugDescription;
- (id)initWithUUID:(void *)d slide:(void *)slide slidBaseAddress:;
- (unint64_t)endAddress;
- (unint64_t)startAddress;
- (void)_applyLoadInfos:(uint64_t)infos withSlide:(uint64_t)slide andSlidBaseAddress:;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)setSlidBaseAddress:(void *)result;
- (void)setSlide:(void *)result;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
@end

@implementation SASharedCache

- (unint64_t)startAddress
{
  firstObject = [(NSArray *)self->_binaryLoadInfos firstObject];
  v3 = firstObject;
  if (firstObject)
  {
    loadAddress = [firstObject loadAddress];
  }

  else
  {
    loadAddress = -1;
  }

  return loadAddress;
}

- (unint64_t)endAddress
{
  lastObject = [(NSArray *)self->_binaryLoadInfos lastObject];
  v3 = lastObject;
  if (lastObject)
  {
    v4 = [lastObject length];
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0x10000000;
    }

    v6 = v5 + [v3 loadAddress];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)initWithUUID:(void *)d slide:(void *)slide slidBaseAddress:
{
  if (!self)
  {
    return 0;
  }

  v10.receiver = self;
  v10.super_class = SASharedCache;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(v7 + 5, a2);
    v8[1] = d;
    v8[2] = slide;
  }

  return v8;
}

+ (void)_doDscSymDirsWork:(uint64_t)work
{
  objc_opt_self();
  if (qword_1EDD03228 != -1)
  {
    dispatch_once(&qword_1EDD03228, &__block_literal_global_467);
  }

  obj = qword_1EDD03220;
  objc_sync_enter(obj);
  (*(a2 + 16))(a2, qword_1EDD03220);
  objc_sync_exit(obj);
}

void __35__SASharedCache__doDscSymDirsWork___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v1 = qword_1EDD03220;
  qword_1EDD03220 = v0;
}

+ (void)_doSharedCachesWork:(id)work
{
  if (qword_1EDD03238 != -1)
  {
    dispatch_once(&qword_1EDD03238, &__block_literal_global_469);
  }

  obj = qword_1EDD03230;
  objc_sync_enter(obj);
  (*(work + 2))(work, qword_1EDD03230);
  objc_sync_exit(obj);
}

void __37__SASharedCache__doSharedCachesWork___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v1 = qword_1EDD03230;
  qword_1EDD03230 = v0;
}

+ (void)addDscSymDir:(id)dir
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__SASharedCache_addDscSymDir___block_invoke;
  v5[3] = &unk_1E86F6B70;
  v5[4] = dir;
  v5[5] = &v6;
  [(SASharedCache *)self _doDscSymDirsWork:v5];
  if (*(v7 + 24) == 1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __30__SASharedCache_addDscSymDir___block_invoke_2;
    v4[3] = &__block_descriptor_40_e29_v16__0__NSMutableDictionary_8l;
    v4[4] = self;
    [self _doSharedCachesWork:v4];
  }

  _Block_object_dispose(&v6, 8);
}

void *__30__SASharedCache_addDscSymDir___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 containsObject:*(a1 + 32)];
  if ((result & 1) == 0)
  {
    result = [a2 addObject:*(a1 + 32)];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __30__SASharedCache_addDscSymDir___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__SASharedCache_addDscSymDir___block_invoke_3;
  v3[3] = &__block_descriptor_40_e39_v32__0__NSUUID_8__NSMutableArray_16_B24l;
  v3[4] = *(a1 + 32);
  return [a2 enumerateKeysAndObjectsUsingBlock:v3];
}

+ (void)_findLoadInfosForSharedCaches:(uint64_t)caches
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  firstObject = [a2 firstObject];
  binaryLoadInfos = [firstObject binaryLoadInfos];
  v6 = [binaryLoadInfos count];

  if (!v6)
  {
    *uu = 0;
    v35 = 0;
    uuid = [firstObject uuid];
    [uuid getUUIDBytes:uu];

    if (!uuid_is_null(uu))
    {
      slide = [firstObject slide];
      if (slide == -1)
      {
        v9 = 0;
      }

      else
      {
        v9 = slide;
      }

      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2560];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __47__SASharedCache__findLoadInfosForSharedCaches___block_invoke;
      v29[3] = &unk_1E86F6D10;
      v31 = v9;
      v11 = v10;
      v30 = v11;
      v12 = MEMORY[0x1E12EBE50](v29);
      v28 = -1;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v13 = objc_opt_self();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__2;
      v37 = __Block_byref_object_dispose__2;
      v38 = 0;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __27__SASharedCache_dscSymDirs__block_invoke;
      v32[3] = &unk_1E86F6928;
      v32[4] = buf;
      [(SASharedCache *)v13 _doDscSymDirsWork:v32];
      v14 = *(*&buf[8] + 40);
      _Block_object_dispose(buf, 8);

      v15 = [v14 countByEnumeratingWithState:&v24 objects:v33 count:16];
      if (v15)
      {
        v16 = *v25;
        while (2)
        {
          v17 = 0;
          do
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v24 + 1) + 8 * v17);
            [v18 UTF8String];
            if (!dscsym_iterate())
            {

              goto LABEL_19;
            }

            [v11 removeAllObjects];
            ++v17;
          }

          while (v15 != v17);
          v15 = [v14 countByEnumeratingWithState:&v24 objects:v33 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      if (dscsym_iterate())
      {
        v19 = *__error();
        v20 = _sa_logt();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68157954;
          *&buf[4] = 16;
          *&buf[8] = 2096;
          *&buf[10] = uu;
          _os_log_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_DEFAULT, "WARNING: Unable to find shared cache mapping for %{uuid_t}.16P", buf, 0x12u);
        }

        *__error() = v19;
      }

      else
      {
LABEL_19:
        objc_opt_self();
        [v11 sortUsingComparator:&__block_literal_global_361];
        v21 = *__error();
        v22 = _sa_logt();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v23 = [v11 count];
          *buf = 134218498;
          *&buf[4] = v23;
          *&buf[12] = 1040;
          *&buf[14] = 16;
          *&buf[18] = 2096;
          *&buf[20] = uu;
          _os_log_debug_impl(&dword_1E0E2F000, v22, OS_LOG_TYPE_DEBUG, "%lu binaries in shared cache %{uuid_t}.16P", buf, 0x1Cu);
        }

        *__error() = v21;
        [(SASharedCache *)v3 _applyLoadInfos:v11 withSlide:v9 andSlidBaseAddress:v28 + v9 toSharedCaches:a2];
      }
    }
  }
}

void __27__SASharedCache_dscSymDirs__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (id)currentSharedCacheWithDataGatheringOptions:(uint64_t)options
{
  v3 = objc_opt_self();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__SASharedCache_currentSharedCacheWithDataGatheringOptions___block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = v3;
  v6[5] = a2;
  if (qword_1EDD03258 != -1)
  {
    dispatch_once(&qword_1EDD03258, v6);
  }

  if (qword_1EDD03240)
  {
    v4 = [SASharedCache sharedCacheWithUUID:qword_1EDD03250 slide:qword_1EDD03248 slidBaseAddress:a2 dataGatheringOptions:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __60__SASharedCache_currentSharedCacheWithDataGatheringOptions___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  if (!CopyDyldSnapshotForPid(v2))
  {
    return;
  }

  shared_cache = dyld_process_snapshot_get_shared_cache();
  if (!shared_cache)
  {
    v6 = *__error();
    v7 = _sa_logt();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v7, OS_LOG_TYPE_ERROR, "No shared cache for current process", buf, 2u);
    }

    *__error() = v6;
    goto LABEL_12;
  }

  v17 = [(SASharedCache *)*(a1 + 32) sharedCacheWithDyldSharedCache:*(a1 + 40) dataGatheringOptions:?];
  if (!v17)
  {
    *uu = 0;
    v23 = 0;
    dyld_shared_cache_copy_uuid();
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      add_explicit = atomic_fetch_add_explicit(&uuid_string_index, 1u, memory_order_relaxed);
      v11 = add_explicit & 3;
      v13 = -add_explicit;
      v12 = v13 < 0;
      v14 = v13 & 3;
      if (v12)
      {
        v15 = v11;
      }

      else
      {
        v15 = -v14;
      }

      v16 = &uuid_string_string[37 * v15];
      uuid_unparse(uu, v16);
      *buf = 136446466;
      v19 = v16;
      v20 = 2082;
      v21 = dyld_shared_cache_file_path();
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "Unable to find current processes' shared cache (%{public}s: %{public}s) (via dyld introspection)", buf, 0x16u);
    }

    *__error() = v8;
LABEL_12:
    dyld_process_snapshot_dispose();
    return;
  }

  dyld_process_snapshot_dispose();
  v4 = [v17 uuid];
  v5 = qword_1EDD03240;
  qword_1EDD03240 = v4;

  qword_1EDD03250 = [v17 slide];
  qword_1EDD03248 = [v17 slidBaseAddress];
}

+ (void)sharedCacheWithDyldSharedCache:(__int16)cache dataGatheringOptions:
{
  v32 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  memset(uu, 0, sizeof(uu));
  dyld_shared_cache_copy_uuid();
  if (uuid_is_null(uu))
  {
    v4 = 0;
  }

  else
  {
    v5 = uuidForBytes(uu);
    base_address = dyld_shared_cache_get_base_address();
    v7 = [SASharedCache sharedCacheWithUUID:v5 slide:-1 slidBaseAddress:base_address dataGatheringOptions:2048];
    v4 = v7;
    if ((cache & 0x800) == 0)
    {
      if ([v7 slide] == -1)
      {
        v25 = 0;
        v26 = &v25;
        v27 = 0x2020000000;
        v28 = 0;
        v21 = 0;
        v22 = &v21;
        v23 = 0x2020000000;
        v24 = 0;
        dyld_for_each_installed_shared_cache();
        if (*(v26 + 24) == 1)
        {
          [(SASharedCache *)v4 setSlide:?];
        }

        else
        {
          dscsym_iterate();
          v8 = *__error();
          v9 = _sa_logt();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v17 = [v4 debugDescription];
            *buf = 138412290;
            v31 = v17;
            _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "Unable to find shared cache %@ in live system nor via dscsym", buf, 0xCu);
          }

          *__error() = v8;
        }

        _Block_object_dispose(&v21, 8);
        _Block_object_dispose(&v25, 8);
      }

      binaryLoadInfos = [v4 binaryLoadInfos];
      v11 = [binaryLoadInfos count] == 0;

      if (v11)
      {
        v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v25 = 0;
        v26 = &v25;
        v27 = 0x2020000000;
        v28 = 0;
        v18 = MEMORY[0x1E69E9820];
        v13 = v12;
        v19 = v13;
        v14 = v4;
        v20 = v14;
        dyld_shared_cache_for_each_image();
        if ((v26[3] & 1) == 0 && [v13 count])
        {
          objc_opt_self();
          [v13 sortUsingComparator:&__block_literal_global_361];
          uuid = [v14 uuid];
          +[SASharedCache applyBinaryLoadInfos:sharedCacheUUID:slide:slidBaseAddress:](SASharedCache, v13, uuid, [v14 slide], objc_msgSend(v14, "slidBaseAddress"));
        }

        _Block_object_dispose(&v25, 8);
      }
    }
  }

  return v4;
}

+ (id)sharedCacheWithCSSymbolicator:(uint64_t)symbolicator dataGatheringOptions:(uint64_t)options
{
  v5 = objc_opt_self();
  SharedCacheUUID = CSSymbolicatorGetSharedCacheUUID();
  if (SharedCacheUUID && (v7 = SharedCacheUUID, !uuid_is_null(SharedCacheUUID)))
  {
    v9 = uuidForBytes(v7);
    if ((options & 0x800) != 0)
    {
      SharedCacheBaseAddress = CSSymbolicatorGetSharedCacheBaseAddress();
      if (SharedCacheBaseAddress)
      {
        v11 = SharedCacheBaseAddress;
        v12 = objc_opt_self();
        v8 = [(SASharedCache *)v12 sharedCacheWithUUID:v9 slide:-1 slidBaseAddress:v11 dataGatheringOptions:options];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      dscsym_iterate();
      if (*(v19 + 24) == 1)
      {
        v8 = [(SASharedCache *)v5 sharedCacheWithUUID:v9 slide:v15[3] slidBaseAddress:v15[3] - 1 dataGatheringOptions:options];
      }

      else
      {
        v8 = 0;
      }

      _Block_object_dispose(&v14, 8);
      _Block_object_dispose(&v18, 8);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)sharedCacheWithUUID:(uint64_t)d slide:(uint64_t)slide slidBaseAddress:(uint64_t)address dataGatheringOptions:
{
  v9 = objc_opt_self();
  if ((slide & d) == 0xFFFFFFFFFFFFFFFFLL)
  {
    v12 = *__error();
    v13 = _sa_logt();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "Trying to find shared cache with unknown slide and unknown slidBaseAddress", buf, 2u);
    }

    *__error() = v12;
    _SASetCrashLogMessage(3708, "Trying to find shared cache with unknown slide and unknown slidBaseAddress");
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *buf = 0;
    v16 = buf;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__2;
    v19 = __Block_byref_object_dispose__2;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __80__SASharedCache_sharedCacheWithUUID_slide_slidBaseAddress_dataGatheringOptions___block_invoke;
    v14[3] = &unk_1E86F6C28;
    v14[6] = d;
    v14[7] = slide;
    v14[4] = a2;
    v14[5] = buf;
    v14[8] = v9;
    v14[9] = address;
    [v9 _doSharedCachesWork:v14];
    v10 = *(v16 + 5);
    _Block_object_dispose(buf, 8);

    return v10;
  }

  return result;
}

uint64_t __68__SASharedCache_sharedCacheWithCSSymbolicator_dataGatheringOptions___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_autoreleasePoolPush();
  SymbolOwnerWithCFUUIDBytesAtTime = CSSymbolicatorGetSymbolOwnerWithCFUUIDBytesAtTime();
  v11 = v10;
  if (CSIsNull())
  {
    v12 = 0;
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__SASharedCache_sharedCacheWithCSSymbolicator_dataGatheringOptions___block_invoke_2;
    v14[3] = &unk_1E86F6BD8;
    v15 = *(a1 + 32);
    v16 = a4;
    v17 = a5;
    SASymbolOwnerForeachSegment(SymbolOwnerWithCFUUIDBytesAtTime, v11, v14);
    v12 = *(*(*(a1 + 32) + 8) + 24);
  }

  objc_autoreleasePoolPop(v8);
  return v12;
}

uint64_t __68__SASharedCache_sharedCacheWithCSSymbolicator_dataGatheringOptions___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    v3 = result;
    result = CSRegionGetName();
    if (result)
    {
      v4 = result;
      v5 = strlen(*(v3 + 48));
      result = strncmp(v4, *(v3 + 48), v5);
      if (!result)
      {
        *(*(*(v3 + 32) + 8) + 24) = 1;
        result = CSRegionGetRange();
        *(*(*(v3 + 40) + 8) + 24) = result - *(v3 + 56);
      }
    }
  }

  return result;
}

+ (void)_applyBaseAddress:(void *)address toSharedCaches:
{
  v52 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(address, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  addressCopy = address;
  v6 = [address copy];
  v7 = [v6 countByEnumeratingWithState:&v37 objects:v51 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        slide = [v11 slide];
        slidBaseAddress = [v11 slidBaseAddress];
        if (slide == -1)
        {
          v15 = slidBaseAddress - a2;
          v16 = 8;
LABEL_12:
          *&v11[v16] = v15;
          goto LABEL_13;
        }

        if (slidBaseAddress == -1)
        {
          v15 = [v11 slide] + a2;
          v16 = 16;
          goto LABEL_12;
        }

        slidBaseAddress2 = [v11 slidBaseAddress];
        if (slidBaseAddress2 - [v11 slide] != a2)
        {
          v20 = *__error();
          v21 = _sa_logt();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            slide2 = [v11 slide];
            slidBaseAddress3 = [v11 slidBaseAddress];
            slidBaseAddress4 = [v11 slidBaseAddress];
            v26 = slidBaseAddress4 - [v11 slide];
            uuid = [v11 uuid];
            uUIDString = [uuid UUIDString];
            uTF8String = [uUIDString UTF8String];
            *buf = 134219010;
            v42 = slide2;
            v43 = 2048;
            v44 = slidBaseAddress3;
            v45 = 2048;
            v46 = v26;
            v47 = 2048;
            v48 = a2;
            v49 = 2080;
            v50 = uTF8String;
            _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, "Mismatch shared cache info: existing slide 0x%llx, slidBaseAddress 0x%llx (base address 0x%llx) vs applied base address 0x%llx for %s", buf, 0x34u);
          }

          *__error() = v20;
          slide3 = [v11 slide];
          slidBaseAddress5 = [v11 slidBaseAddress];
          slidBaseAddress6 = [v11 slidBaseAddress];
          v33 = slidBaseAddress6 - [v11 slide];
          uuid2 = [v11 uuid];
          uUIDString2 = [uuid2 UUIDString];
          _SASetCrashLogMessage(3608, "Mismatch shared cache info: existing slide 0x%llx, slidBaseAddress 0x%llx (base address 0x%llx) vs applied base address 0x%llx for %s", slide3, slidBaseAddress5, v33, a2, [uUIDString2 UTF8String]);

          _os_crash();
          __break(1u);
        }

LABEL_13:
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v11, "slide")}];
        v18 = [v5 containsObject:v17];

        if (v18)
        {
          if (v11)
          {
            v11[24] = 1;
          }

          [addressCopy removeObject:v11];
        }

        else
        {
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v11, "slide")}];
          [v5 addObject:v19];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v37 objects:v51 count:16];
    }

    while (v8);
  }
}

- (void)_applyLoadInfos:(uint64_t)infos withSlide:(uint64_t)slide andSlidBaseAddress:
{
  v80 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  if ((slide & infos) == 0xFFFFFFFFFFFFFFFFLL)
  {
    a2 = *__error();
    selfCopy = _sa_logt();
    if (os_log_type_enabled(selfCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E0E2F000, selfCopy, OS_LOG_TYPE_ERROR, "applying load infos with unknown slide and unknown slidBaseAddress", buf, 2u);
    }

    *__error() = a2;
    _SASetCrashLogMessage(3622, "applying load infos with unknown slide and unknown slidBaseAddress");
    _os_crash();
    __break(1u);
LABEL_70:
    dispatch_once(&qword_1EDD03260, &__block_literal_global_482);
    goto LABEL_8;
  }

  selfCopy = self;
  if ([(objc_class *)self[6].isa count])
  {
    [(objc_class *)selfCopy[6].isa count];

    [a2 count];
    return;
  }

  if (qword_1EDD03260 != -1)
  {
    goto LABEL_70;
  }

LABEL_8:
  v58 = selfCopy;
  if (infos != -1 && _MergedGlobals_5)
  {
    v57 = a2;
    firstObject = [a2 firstObject];
    loadAddress = [firstObject loadAddress];
    if (loadAddress >= 0x300000001)
    {
      firstObject2 = [a2 firstObject];
      if (!([firstObject2 loadAddress] >> 34))
      {

LABEL_13:
        v10 = *__error();
        v11 = _sa_logt();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          firstObject3 = [v57 firstObject];
          v56 = [firstObject3 debugDescription];
          *buf = 138412290;
          v72 = v56;
          _os_log_error_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_ERROR, "Detected bad shared cache load infos (%@) see rdar://93325284", buf, 0xCu);
        }

        *__error() = v10;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v12 = v57;
        v13 = [v12 countByEnumeratingWithState:&v66 objects:v79 count:16];
        if (v13)
        {
          v14 = *v67;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v67 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v66 + 1) + 8 * i);
              loadAddress2 = [v16 loadAddress];
              v18 = *__error();
              v19 = _sa_logt();
              v20 = (infos + ((loadAddress2 - infos) >> 1));
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                v21 = [v16 debugDescription];
                *buf = 134218242;
                v72 = v20;
                v73 = 2112;
                v74 = v21;
                _os_log_debug_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_DEBUG, "0x%llx <- %@", buf, 0x16u);
              }

              *__error() = v18;
              if (v16)
              {
                v16[3] = v20;
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v66 objects:v79 count:16];
          }

          while (v13);
        }

LABEL_40:
        a2 = v57;
        selfCopy = v58;
        goto LABEL_41;
      }
    }

    firstObject4 = [a2 firstObject];
    if ([firstObject4 loadAddress] >> 32 || selfCopy[2].isa == -1)
    {

      if (loadAddress < 0x300000001)
      {
        goto LABEL_36;
      }
    }

    else
    {
      firstObject5 = [a2 firstObject];
      if ([firstObject5 loadAddress] > selfCopy[2].isa + 436207616)
      {
        v24 = loadAddress > 0x300000000;
        firstObject6 = [a2 firstObject];
        loadAddress3 = [firstObject6 loadAddress];
        v27 = v58[2].isa + 2315255808u;

        if (v24)
        {
        }

        if (loadAddress3 < v27)
        {
          goto LABEL_13;
        }

LABEL_37:
        v28 = *__error();
        v29 = _sa_logt();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          firstObject7 = [v57 firstObject];
          v31 = [firstObject7 debugDescription];
          *buf = 138412290;
          v72 = v31;
          _os_log_impl(&dword_1E0E2F000, v29, OS_LOG_TYPE_INFO, "Detected ok shared cache load infos (%@) see rdar://93325284", buf, 0xCu);
        }

        *__error() = v28;
        goto LABEL_40;
      }

      if (loadAddress <= 0x300000000)
      {
LABEL_36:

        goto LABEL_37;
      }
    }

    goto LABEL_36;
  }

LABEL_41:
  if (infos != -1)
  {
    isa = selfCopy[1].isa;
    if (isa != -1)
    {
      v33 = isa - infos;
LABEL_47:
      v60 = selfCopy;
      objc_sync_enter(v60);
      if (v33)
      {
        v35 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a2, "count")}];
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        obj = a2;
        v36 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
        if (v36)
        {
          v37 = *v63;
          do
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v63 != v37)
              {
                objc_enumerationMutation(obj);
              }

              v39 = *(*(&v62 + 1) + 8 * j);
              loadAddress4 = [v39 loadAddress];
              segment = [v39 segment];

              if (segment)
              {
                segment2 = [v39 segment];
                isInKernelAddressSpace = [v39 isInKernelAddressSpace];
                exclave = [v39 exclave];
                [SABinaryLoadInfo binaryLoadInfoWithSegment:segment2 loadAddress:&v33[loadAddress4] isInKernelAddressSpace:isInKernelAddressSpace exclave:exclave];
              }

              else
              {
                segment2 = [v39 binary];
                isInKernelAddressSpace2 = [v39 isInKernelAddressSpace];
                exclave = [v39 exclave];
                [SABinaryLoadInfo binaryLoadInfoWithBinary:segment2 loadAddress:&v33[loadAddress4] isInKernelAddressSpace:isInKernelAddressSpace2 exclave:exclave];
              }
              v46 = ;

              [(objc_class *)v35 addObject:v46];
            }

            v36 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
          }

          while (v36);
        }

        v47 = [(objc_class *)v35 copy];
        v48 = v58[6].isa;
        v58[6].isa = v47;
      }

      else
      {
        v49 = [a2 copy];
        v35 = selfCopy[6].isa;
        selfCopy[6].isa = v49;
      }

      objc_sync_exit(v60);
      return;
    }
  }

  if (slide != -1)
  {
    v34 = selfCopy[2].isa;
    if (v34 != -1)
    {
      v33 = v34 - slide;
      goto LABEL_47;
    }
  }

  v50 = a2;
  v51 = *__error();
  v52 = _sa_logt();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    v53 = [v58 debugDescription];
    v54 = [v50 count];
    *buf = 138413058;
    v72 = v53;
    v73 = 2048;
    v74 = v54;
    v75 = 2048;
    infosCopy = infos;
    v77 = 2048;
    slideCopy = slide;
    _os_log_impl(&dword_1E0E2F000, v52, OS_LOG_TYPE_DEFAULT, "WARNING: Unable to calculate appropriate load addresses for shared cache %@ when applying %lu load infos with slide #%llx and slidbaseAddress 0x%llx", buf, 0x2Au);
  }

  *__error() = v51;
}

char *__62__SASharedCache__applyLoadInfos_withSlide_andSlidBaseAddress___block_invoke()
{
  result = getenv("SA_WORKAROUND_93250769");
  if (result)
  {
    v1 = *result != 48 || result[1] != 0;
    _MergedGlobals_5 = v1;
  }

  return result;
}

+ (void)_applyLoadInfos:(uint64_t)infos withSlide:(uint64_t)slide andSlidBaseAddress:(void *)address toSharedCaches:
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = objc_opt_self();
  if (infos != -1 && slide != -1)
  {
    [(SASharedCache *)v9 _applyBaseAddress:address toSharedCaches:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  addressCopy = address;
  v11 = [addressCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(addressCopy);
        }

        [(SASharedCache *)*(*(&v15 + 1) + 8 * v14++) _applyLoadInfos:a2 withSlide:infos andSlidBaseAddress:slide];
      }

      while (v12 != v14);
      v12 = [addressCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

void __80__SASharedCache_sharedCacheWithUUID_slide_slidBaseAddress_dataGatheringOptions___block_invoke(void *a1, void *a2)
{
  v3 = a1;
  v95 = *MEMORY[0x1E69E9840];
  v4 = [a2 objectForKeyedSubscript:a1[4]];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [a2 setObject:v4 forKeyedSubscript:v3[4]];
  }

  v5 = buf;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v75 objects:v94 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v76;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v76 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v75 + 1) + 8 * v10);
      if (v3[6] != -1 && [*(*(&v75 + 1) + 8 * v10) slide] == v3[6])
      {
        break;
      }

      v12 = v3[7];
      if (v12 != -1 && v11[2] == v12)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v75 objects:v94 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:

    v13 = [[SASharedCache alloc] initWithUUID:v3[6] slide:v3[7] slidBaseAddress:?];
    v14 = *(v3[5] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = [v6 firstObject];
    [v6 addObject:*(*(v3[5] + 8) + 40)];
    if (!v16)
    {
LABEL_32:
      if ((*(v3 + 73) & 8) == 0)
      {
        [(SASharedCache *)v3[8] _findLoadInfosForSharedCaches:v6];
      }

      v16 = 0;
      goto LABEL_58;
    }

    if ([v16 slide] == -1 || objc_msgSend(v16, "slidBaseAddress") == -1)
    {
      goto LABEL_55;
    }

    v17 = [*(*(v3[5] + 8) + 40) slide];
    v18 = [*(*(v3[5] + 8) + 40) slidBaseAddress];
    v19 = v18;
    if (v17 == -1)
    {
      goto LABEL_52;
    }

    if (v18 == -1)
    {
      v64 = [v16 slidBaseAddress];
      v65 = v64 - [v16 slide];
      v62 = v65 + [*(*(v3[5] + 8) + 40) slide];
      v63 = 16;
      goto LABEL_54;
    }

    v20 = [*(*(v3[5] + 8) + 40) slidBaseAddress];
    v21 = v20 - [*(*(v3[5] + 8) + 40) slide];
    v22 = [v16 slidBaseAddress];
    if (v21 == v22 - [v16 slide])
    {
LABEL_55:
      v66 = [v16 binaryLoadInfos];
      if ([v66 count])
      {
        -[SASharedCache _applyLoadInfos:withSlide:andSlidBaseAddress:](*(*(v3[5] + 8) + 40), v66, [v16 slide], objc_msgSend(v16, "slidBaseAddress"));
      }

      goto LABEL_58;
    }

    v70 = *__error();
    v23 = _sa_logt();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v69 = [*(*(v3[5] + 8) + 40) uuid];
      v24 = [v69 UUIDString];
      v68 = [v24 UTF8String];
      v67 = [*(*(v3[5] + 8) + 40) slide];
      v25 = [*(*(v3[5] + 8) + 40) slidBaseAddress];
      v26 = [*(*(v3[5] + 8) + 40) slidBaseAddress];
      v27 = v26 - [*(*(v3[5] + 8) + 40) slide];
      v28 = [v16 slide];
      v29 = [v16 slidBaseAddress];
      v30 = [v16 slidBaseAddress];
      v31 = [v16 slide];
      *buf = 136316674;
      v80 = v68;
      v81 = 2048;
      v82 = v67;
      v83 = 2048;
      v84 = v25;
      v85 = 2048;
      v86 = v27;
      v87 = 2048;
      v88 = v28;
      v89 = 2048;
      v90 = v29;
      v91 = 2048;
      v92 = v30 - v31;
      _os_log_error_impl(&dword_1E0E2F000, v23, OS_LOG_TYPE_ERROR, "Mismatch shared cache %s info: requested slide 0x%llx, slidBaseAddress 0x%llx (base address 0x%llx) vs existing shared cache with slide 0x%llx, slidBaseAddress 0x%llx (base address 0x%llx)", buf, 0x48u);
    }

    *__error() = v70;
    v6 = [*(*(v3[5] + 8) + 40) uuid];
    v11 = [v6 UUIDString];
    v32 = [v11 UTF8String];
    v33 = [*(*(v3[5] + 8) + 40) slide];
    v5 = [*(*(v3[5] + 8) + 40) slidBaseAddress];
    v34 = [*(*(v3[5] + 8) + 40) slidBaseAddress];
    v35 = v34 - [*(*(v3[5] + 8) + 40) slide];
    v3 = [v16 slide];
    _SASetCrashLogMessage(3759, "Mismatch shared cache %s info: requested slide 0x%llx, slidBaseAddress 0x%llx (base address 0x%llx) vs existing shared cache with slide 0x%llx, slidBaseAddress 0x%llx (base address 0x%llx)", v32, v33, v5, v35, v3, [v16 slidBaseAddress], objc_msgSend(v16, "slidBaseAddress") - objc_msgSend(v16, "slide"));

    _os_crash();
    __break(1u);
  }

  objc_storeStrong((*(v3[5] + 8) + 40), v11);
  v16 = v6;
  if (v3[6] == -1)
  {
    goto LABEL_58;
  }

  v16 = v6;
  if (v3[7] == -1)
  {
    goto LABEL_58;
  }

  if ([*(*(v3[5] + 8) + 40) slide] != -1 && objc_msgSend(*(*(v3[5] + 8) + 40), "slidBaseAddress") != -1)
  {
    if ([*(*(v3[5] + 8) + 40) slide] == v3[6])
    {
      v16 = v6;
      if ([*(*(v3[5] + 8) + 40) slidBaseAddress] == v3[7])
      {
        goto LABEL_58;
      }
    }

    v36 = *__error();
    v37 = _sa_logt();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [*(*(v3[5] + 8) + 40) slide];
      v39 = [*(*(v3[5] + 8) + 40) slidBaseAddress];
      v40 = v3[6];
      v41 = v3[7];
      v42 = [v3[4] UUIDString];
      v43 = [v42 UTF8String];
      *buf = 134219010;
      *(v5 + 4) = v38;
      v81 = 2048;
      *(v5 + 14) = v39;
      v83 = 2048;
      v84 = v40;
      v85 = 2048;
      *(v5 + 34) = v41;
      v87 = 2080;
      *(v5 + 44) = v43;
      _os_log_error_impl(&dword_1E0E2F000, v37, OS_LOG_TYPE_ERROR, "Mismatch shared cache info: existing slide 0x%llx, slidBaseAddress 0x%llx vs requested slide 0x%llx, slidBaseAddress 0x%llx for %s", buf, 0x34u);
    }

    *__error() = v36;
    v6 = [*(*(v3[5] + 8) + 40) slide];
    v44 = [*(*(v3[5] + 8) + 40) slidBaseAddress];
    v45 = v3[6];
    v46 = v3[7];
    v3 = [v3[4] UUIDString];
    _SASetCrashLogMessage(3736, "Mismatch shared cache info: existing slide 0x%llx, slidBaseAddress 0x%llx vs requested slide 0x%llx, slidBaseAddress 0x%llx for %s", v6, v44, v45, v46, [v3 UTF8String]);

    _os_crash();
    __break(1u);
    goto LABEL_32;
  }

  [(SASharedCache *)v3[8] _applyBaseAddress:v6 toSharedCaches:?];
  v47 = *(*(v3[5] + 8) + 40);
  v16 = v6;
  if (v47)
  {
    v16 = v6;
    if (*(v47 + 24))
    {
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v16 = v6;
      v48 = [v16 countByEnumeratingWithState:&v71 objects:v93 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v72;
        while (2)
        {
          for (i = 0; i != v49; ++i)
          {
            if (*v72 != v50)
            {
              objc_enumerationMutation(v16);
            }

            v52 = *(*(&v71 + 1) + 8 * i);
            if ([v52 slide] == v3[6])
            {
              objc_storeStrong((*(v3[5] + 8) + 40), v52);
              goto LABEL_47;
            }
          }

          v49 = [v16 countByEnumeratingWithState:&v71 objects:v93 count:16];
          if (v49)
          {
            continue;
          }

          break;
        }
      }

LABEL_47:

      v53 = *(*(v3[5] + 8) + 40);
      if (v53)
      {
        if (*(v53 + 24))
        {
          v54 = *__error();
          v55 = _sa_logt();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v56 = [*(*(v3[5] + 8) + 40) slide];
            v57 = [*(*(v3[5] + 8) + 40) slidBaseAddress];
            v58 = [*(*(v3[5] + 8) + 40) uuid];
            v59 = [v58 UUIDString];
            v60 = [v59 UTF8String];
            *buf = 134218498;
            *(v5 + 4) = v56;
            v81 = 2048;
            *(v5 + 14) = v57;
            v83 = 2080;
            v84 = v60;
            _os_log_error_impl(&dword_1E0E2F000, v55, OS_LOG_TYPE_ERROR, "No matching shared cache for defunct 0x%llx 0x%llx %s", buf, 0x20u);
          }

          *__error() = v54;
          v6 = [*(*(v3[5] + 8) + 40) slide];
          v16 = [*(*(v3[5] + 8) + 40) slidBaseAddress];
          v3 = [*(*(v3[5] + 8) + 40) uuid];
          v19 = [v3 UUIDString];
          _SASetCrashLogMessage(3733, "No matching shared cache for defunct 0x%llx 0x%llx %s", v6, v16, [v19 UTF8String]);

          _os_crash();
          __break(1u);
LABEL_52:
          v61 = [v16 slidBaseAddress];
          v62 = v19 + [v16 slide] - v61;
          v63 = 8;
LABEL_54:
          *(*(*(v3[5] + 8) + 40) + v63) = v62;
          goto LABEL_55;
        }
      }
    }
  }

LABEL_58:
}

uint64_t __69__SASharedCache_sharedCacheWithDyldSharedCache_dataGatheringOptions___block_invoke(uint64_t result, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    v2 = result;
    *uu2 = 0;
    v4 = 0;
    dyld_shared_cache_copy_uuid();
    result = uuid_compare((v2 + 48), uu2);
    if (!result)
    {
      result = dyld_shared_cache_get_base_address();
      *(*(*(v2 + 40) + 8) + 24) = result;
      *(*(*(v2 + 32) + 8) + 24) = 1;
    }
  }

  return result;
}

- (void)setSlide:(void *)result
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if (a2 == -1 || ((v4 = result[1], v4 != a2) ? (v5 = v4 == -1) : (v5 = 1), !v5 || (v6 = result[2], v6 == -1)))
    {
      v7 = *__error();
      v8 = _sa_logt();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v3 debugDescription];
        *buf = 136315394;
        uTF8String = [v9 UTF8String];
        v14 = 2048;
        v15 = a2;
        _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "Changing %s slide to 0x%llx", buf, 0x16u);
      }

      *__error() = v7;
      v10 = [v3 debugDescription];
      _SASetCrashLogMessage(3916, "Changing %s slide to 0x%llx", [v10 UTF8String], a2);

      _os_crash();
      __break(1u);
    }

    if (v4 != a2)
    {
      result[1] = a2;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __26__SASharedCache_setSlide___block_invoke;
      v11[3] = &unk_1E86F6CE8;
      v11[4] = result;
      v11[5] = v6 - a2;
      return [SASharedCache _doSharedCachesWork:v11];
    }
  }

  return result;
}

void __69__SASharedCache_sharedCacheWithDyldSharedCache_dataGatheringOptions___block_invoke_495(uint64_t a1, uint64_t a2)
{
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v3 = [SABinaryLoadInfo addBinaryLoadInfoForDyldImage:a2 toLoadInfos:*(a1 + 32) isKernel:0 dataGatheringOptions:0];
  }
}

+ (uint64_t)applyBinaryLoadInfos:(uint64_t)infos sharedCacheUUID:(uint64_t)d slide:(uint64_t)slide slidBaseAddress:
{
  v9 = objc_opt_self();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__SASharedCache_applyBinaryLoadInfos_sharedCacheUUID_slide_slidBaseAddress___block_invoke;
  v11[3] = &unk_1E86F6DB0;
  v11[6] = d;
  v11[7] = slide;
  v11[4] = infos;
  v11[5] = a2;
  v11[8] = v9;
  return [SASharedCache _doSharedCachesWork:v11];
}

- (BOOL)matchesUUID:(unsigned __int8)d[16] slide:(unint64_t)slide slidBaseAddress:(unint64_t)address
{
  v22 = *MEMORY[0x1E69E9840];
  if ((address & slide) == 0xFFFFFFFFFFFFFFFFLL)
  {
    v17 = *__error();
    v18 = _sa_logt();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *uu1 = 0;
      _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "matching shared cache with both slide and slidBaseAddress unknown", uu1, 2u);
    }

    *__error() = v17;
    _SASetCrashLogMessage(3868, "matching shared cache with both slide and slidBaseAddress unknown");
    _os_crash();
    __break(1u);
  }

  if (slide == -1 || (slide = self->_slide, slide == -1))
  {
    v10 = 0;
    if (address == -1)
    {
      return v10;
    }

    slidBaseAddress = self->_slidBaseAddress;
    if (slidBaseAddress == -1 || slidBaseAddress != address)
    {
      return v10;
    }
  }

  else if (slide != slide)
  {
    return 0;
  }

  *uu1 = 0;
  v21 = 0;
  [(NSUUID *)self->_uuid getUUIDBytes:uu1];
  v13 = uuid_compare(uu1, d);
  v10 = v13 == 0;
  if (slide != -1 && address != -1 && !v13 && (self->_slide == -1 || self->_slidBaseAddress == -1))
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __51__SASharedCache_matchesUUID_slide_slidBaseAddress___block_invoke;
    v19[3] = &unk_1E86F6CC0;
    v19[4] = self;
    v19[5] = address;
    v19[6] = slide;
    [SASharedCache _doSharedCachesWork:v19];
    v14 = self->_slide;
    v15 = self->_slidBaseAddress;
    if (v14 == -1)
    {
      self->_slide = slide - address + v15;
    }

    else if (v15 == -1)
    {
      self->_slidBaseAddress = address - slide + v14;
    }
  }

  return v10;
}

void __51__SASharedCache_matchesUUID_slide_slidBaseAddress___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) uuid];
  v5 = [a2 objectForKeyedSubscript:v4];

  [SASharedCache _applyBaseAddress:v5 toSharedCaches:?];
}

void __26__SASharedCache_setSlide___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) uuid];
  v5 = [a2 objectForKeyedSubscript:v4];

  [SASharedCache _applyBaseAddress:v5 toSharedCaches:?];
}

- (void)setSlidBaseAddress:(void *)result
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if (a2 == -1 || ((v4 = result[2], v4 != a2) ? (v5 = v4 == -1) : (v5 = 1), !v5 || (v6 = result[1], v6 == -1)))
    {
      v7 = *__error();
      v8 = _sa_logt();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v3 debugDescription];
        *buf = 136315394;
        uTF8String = [v9 UTF8String];
        v14 = 2048;
        v15 = a2;
        _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "Changing %s slidBaseAddress to 0x%llx", buf, 0x16u);
      }

      *__error() = v7;
      v10 = [v3 debugDescription];
      _SASetCrashLogMessage(3933, "Changing %s slidBaseAddress to 0x%llx", [v10 UTF8String], a2);

      _os_crash();
      __break(1u);
    }

    if (v4 != a2)
    {
      result[2] = a2;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __36__SASharedCache_setSlidBaseAddress___block_invoke;
      v11[3] = &unk_1E86F6CE8;
      v11[4] = result;
      v11[5] = a2 - v6;
      return [SASharedCache _doSharedCachesWork:v11];
    }
  }

  return result;
}

void __36__SASharedCache_setSlidBaseAddress___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) uuid];
  v5 = [a2 objectForKeyedSubscript:v4];

  [SASharedCache _applyBaseAddress:v5 toSharedCaches:?];
}

uint64_t __47__SASharedCache__findLoadInfosForSharedCaches___block_invoke(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5, NSObject *a6)
{
  v12 = objc_autoreleasePoolPush();
  if (!SAShouldIgnoreSegmentWithCName(a4))
  {
    v13 = uuidForBytes(a2);
    v14 = SAFilepathForCString(a3);
    if ([v14 isAbsolutePath])
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [SABinary binaryWithUUID:v13 absolutePath:v15];
    v17 = SANSStringForCString(a4);
    v18 = [(SABinary *)v16 segmentWithCleanName:v17 length:a6 offsetIntoBinary:0x7FFFFFFFFFFFFFFFLL];

    v19 = [SABinaryLoadInfo binaryLoadInfoWithSegment:v18 loadAddress:*(a1 + 40) + a5 isInKernelAddressSpace:0 exclave:0];
    [*(a1 + 32) addObject:v19];
  }

  objc_autoreleasePoolPop(v12);
  return 0;
}

+ (void)addDSCSymData:(id)data
{
  v34 = *MEMORY[0x1E69E9840];
  *uu = 0;
  v33 = 0;
  v29 = -1;
  dataCopy = data;
  [data bytes];
  [data length];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __31__SASharedCache_addDSCSymData___block_invoke;
  v27[3] = &unk_1E86F6840;
  v27[4] = v28;
  [self _doSharedCachesWork:v27];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2560];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __31__SASharedCache_addDSCSymData___block_invoke_3;
  v24 = &unk_1E86F6D60;
  v26 = v28;
  v7 = v6;
  v25 = v7;
  v8 = dscsym_iterate_buffer();
  if (v8)
  {
    v9 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v31 = v8;
      _os_log_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_DEFAULT, "WARNING: Error parsing dsc buffer: %d", buf, 8u);
    }

    *__error() = v9;
  }

  else if (uuid_is_null(uu))
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_DEFAULT, "WARNING: NULL UUID for dscsym", buf, 2u);
    }

    *__error() = v11;
  }

  else
  {
    objc_opt_self();
    [v7 sortUsingComparator:&__block_literal_global_361];
    v13 = uuidForBytes(uu);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __31__SASharedCache_addDSCSymData___block_invoke_502;
    v15[3] = &unk_1E86F6D88;
    v14 = v13;
    v16 = v14;
    v18 = v28;
    v19 = v29;
    v17 = v7;
    selfCopy = self;
    [SASharedCache _doSharedCachesWork:v15];
  }

  _Block_object_dispose(v28, 8);
}

uint64_t __31__SASharedCache_addDSCSymData___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__SASharedCache_addDSCSymData___block_invoke_2;
  v3[3] = &unk_1E86F6D38;
  v3[4] = *(a1 + 32);
  return [a2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __31__SASharedCache_addDSCSymData___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 slide] != -1)
        {
          *(*(*(a1 + 32) + 8) + 24) = [v11 slide];
          *a4 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

uint64_t __31__SASharedCache_addDSCSymData___block_invoke_3(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5, NSObject *a6)
{
  v12 = objc_autoreleasePoolPush();
  if (!SAShouldIgnoreSegmentWithCName(a4))
  {
    v13 = uuidForBytes(a2);
    v14 = SAFilepathForCString(a3);
    if ([v14 isAbsolutePath])
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [SABinary binaryWithUUID:v13 absolutePath:v15];
    v17 = [v16 path];
    v18 = v17;
    if (a3 && !v17)
    {
      if (!*a3)
      {
LABEL_11:
        v20 = SANSStringForCString(a4);
        v21 = [(SABinary *)v16 segmentWithCleanName:v20 length:a6 offsetIntoBinary:0x7FFFFFFFFFFFFFFFLL];

        v22 = [SABinaryLoadInfo binaryLoadInfoWithSegment:v21 loadAddress:*(*(*(a1 + 40) + 8) + 24) + a5 isInKernelAddressSpace:0 exclave:0];
        [*(a1 + 32) addObject:v22];

        goto LABEL_12;
      }

      v18 = SANSStringForCString(a3);
      if (v16)
      {
        objc_setProperty_atomic_copy(v16, v19, v18, 80);
      }
    }

    goto LABEL_11;
  }

LABEL_12:
  objc_autoreleasePoolPop(v12);
  return 0;
}

void __31__SASharedCache_addDSCSymData___block_invoke_502(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  if (v4)
  {
    v13 = v4;
    v5 = [v4 firstObject];
    v6 = [v5 binaryLoadInfos];
    v7 = [v6 count];

    if (!v7)
    {
      v8 = *(*(*(a1 + 48) + 8) + 24);
      [(SASharedCache *)*(a1 + 64) _applyLoadInfos:v8 withSlide:*(a1 + 56) + v8 andSlidBaseAddress:v13 toSharedCaches:?];
    }
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [a2 setObject:v13 forKeyedSubscript:*(a1 + 32)];
    v9 = [SASharedCache alloc];
    v10 = *(*(*(a1 + 48) + 8) + 24);
    v11 = [(SASharedCache *)v9 initWithUUID:v10 slide:&v10[*(a1 + 56)] slidBaseAddress:?];
    [v13 addObject:v11];
    v12 = [*(a1 + 40) copy];
    [v11 setBinaryLoadInfos:v12];
  }
}

+ (id)sharedCacheWithUUID:(uint64_t)d slide:(uint64_t)slide binaryLoadInfos:
{
  v7 = objc_opt_self();
  [(SASharedCache *)v7 applyBinaryLoadInfos:slide sharedCacheUUID:a2 slide:d slidBaseAddress:-1];
  v8 = objc_opt_self();

  return [(SASharedCache *)v8 sharedCacheWithUUID:a2 slide:d slidBaseAddress:-1 dataGatheringOptions:0];
}

void __76__SASharedCache_applyBinaryLoadInfos_sharedCacheUUID_slide_slidBaseAddress___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  if (v4)
  {
    v7 = v4;
    [(SASharedCache *)*(a1 + 64) _applyLoadInfos:*(a1 + 48) withSlide:*(a1 + 56) andSlidBaseAddress:v4 toSharedCaches:?];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [a2 setObject:v7 forKeyedSubscript:*(a1 + 32)];
    v5 = [[SASharedCache alloc] initWithUUID:*(a1 + 48) slide:*(a1 + 56) slidBaseAddress:?];
    [v7 addObject:v5];
    v6 = [*(a1 + 40) copy];
    [v5 setBinaryLoadInfos:v6];
  }
}

- (NSString)debugDescription
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"0x%llx (slide 0x%llx slidBaseAddress 0x%llx) Shared cache <%@> (%lu binaries)", -[SASharedCache startAddress](self, "startAddress"), self->_slide, self->_slidBaseAddress, self->_uuid, -[NSArray count](self->_binaryLoadInfos, "count")];

  return v2;
}

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  SAJSONWriteDictionaryFirstEntry(stream, @"uuid", uUIDString);

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_slide];
  SAJSONWriteDictionaryEntry(stream, @"slide", v6);

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_slidBaseAddress];
  SAJSONWriteDictionaryEntry(stream, @"slidBaseAddress", v7);
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  *&buffer->var0 = 1025;
  *(&buffer->var3 + 1) = self->_slide;
  [(NSUUID *)self->_uuid getUUIDBytes:buffer->var2];
  if ([(SASharedCache *)self sizeInBytesForSerializedVersion]== length)
  {
    if ([(NSArray *)self->_binaryLoadInfos count]< 0xFFFF)
    {
      v10 = [(NSArray *)self->_binaryLoadInfos count];
      buffer->var3 = v10;
      SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&buffer->var4 + 4, v10, self->_binaryLoadInfos, dictionary);
      var3 = buffer->var3;
      goto LABEL_8;
    }

    v13 = *__error();
    v19 = _sa_logt();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [(SASharedCache *)self debugDescription];
      *buf = 136315394;
      lengthCopy = [v20 UTF8String];
      v24 = 1024;
      LODWORD(v25) = 0xFFFF;
      _os_log_error_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_ERROR, "%s: more than %d binaries", buf, 0x12u);
    }

    *__error() = v13;
    v21 = [(SASharedCache *)self debugDescription];
    _SASetCrashLogMessage(5298, "%s: more than %d binaries", [v21 UTF8String], 0xFFFF);

    v12 = _os_crash();
    __break(1u);
LABEL_12:
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v24 = 2048;
      v25 = 28;
      _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "bufferLength %lu != serialized SASharedCache struct %lu", buf, 0x16u);
    }

    *__error() = v5;
    _SASetCrashLogMessage(5303, "bufferLength %lu != serialized SASharedCache struct %lu", length, 28);
    _os_crash();
    __break(1u);
  }

  v5 = *__error();
  v12 = _sa_logt();
  v13 = v12;
  if (length <= 0x2C)
  {
    goto LABEL_12;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(SASharedCache *)self debugDescription];
    v15 = [(NSArray *)self->_binaryLoadInfos count];
    *buf = 138412546;
    lengthCopy = v14;
    v24 = 2048;
    v25 = v15;
    _os_log_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_DEFAULT, "WARNING: SASharedCache %@ got its %lu binaries after starting serialization!", buf, 0x16u);
  }

  v16 = __error();
  var3 = 0;
  *v16 = v5;
  buffer->var3 = 0;
LABEL_8:
  v17 = &buffer->var4 + 8 * var3 + 4;
  *v17 = self->_slidBaseAddress;
  *(v17 + 1) = self->_flags;
  v17[16] = v17[16] & 0xFE | self->_isExclaveSharedCache;
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v17 = *MEMORY[0x1E69E9840];
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_binaryLoadInfos;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  *&v36[13] = *MEMORY[0x1E69E9840];
  if (*buffer >= 5u)
  {
    goto LABEL_35;
  }

  if (length <= 0x1B)
  {
    v19 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy5 = length;
      v35 = 2048;
      *v36 = 28;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASharedCache struct %lu", buf, 0x16u);
    }

    *__error() = v19;
    _SASetCrashLogMessage(5331, "bufferLength %lu < serialized SASharedCache struct %lu", length, 28);
    _os_crash();
    __break(1u);
    goto LABEL_23;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 9) + 28 > length)
  {
LABEL_23:
    v20 = *__error();
    v21 = _sa_logt();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = *(bufferCopy + 18);
      *buf = 134218496;
      lengthCopy5 = length;
      v35 = 1024;
      *v36 = v22;
      v36[2] = 2048;
      *&v36[3] = 8 * v22 + 28;
      _os_log_error_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASharedCache struct plus %u load infos %lu", buf, 0x1Cu);
    }

    *__error() = v20;
    _SASetCrashLogMessage(5332, "bufferLength %lu < serialized SASharedCache struct plus %u load infos %lu", length, *(bufferCopy + 18), 8 * *(bufferCopy + 18) + 28);
    _os_crash();
    __break(1u);
LABEL_26:
    v23 = *__error();
    v24 = _sa_logt();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *(bufferCopy + 18);
      *buf = 134218496;
      lengthCopy5 = length;
      v35 = 1024;
      *v36 = v25;
      v36[2] = 2048;
      *&v36[3] = 9 * v25 + 28;
      _os_log_error_impl(&dword_1E0E2F000, v24, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASharedCache struct plus %u load infos %lu", buf, 0x1Cu);
    }

    *__error() = v23;
    _SASetCrashLogMessage(5340, "bufferLength %lu < serialized SASharedCache struct plus %u load infos %lu", length, *(bufferCopy + 18), 9 * *(bufferCopy + 18) + 28);
    _os_crash();
    __break(1u);
LABEL_29:
    v26 = *__error();
    v27 = _sa_logt();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = *(bufferCopy + 18);
      *buf = 134218496;
      lengthCopy5 = length;
      v35 = 1024;
      *v36 = v28;
      v36[2] = 2048;
      *&v36[3] = 9 * v28 + 28;
      _os_log_error_impl(&dword_1E0E2F000, v27, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASharedCache struct plus %u load infos %lu", buf, 0x1Cu);
    }

    *__error() = v26;
    _SASetCrashLogMessage(5347, "bufferLength %lu < serialized SASharedCache struct plus %u load infos %lu", length, *(bufferCopy + 18), 9 * *(bufferCopy + 18) + 28);
    _os_crash();
    __break(1u);
LABEL_32:
    v29 = *__error();
    v30 = _sa_logt();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = *(bufferCopy + 18);
      *buf = 134218496;
      lengthCopy5 = length;
      v35 = 1024;
      *v36 = v31;
      v36[2] = 2048;
      *&v36[3] = 9 * v31 + 28;
      _os_log_error_impl(&dword_1E0E2F000, v30, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASharedCache struct plus %u load infos %lu", buf, 0x1Cu);
    }

    *__error() = v29;
    _SASetCrashLogMessage(5353, "bufferLength %lu < serialized SASharedCache struct plus %u load infos %lu", length, *(bufferCopy + 18), 9 * *(bufferCopy + 18) + 28);
    _os_crash();
    __break(1u);
LABEL_35:
    v32 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SASharedCache version" userInfo:0];
    objc_exception_throw(v32);
  }

  v6 = uuidForBytes(buffer + 2);
  v7 = *(bufferCopy + 1);
  if (v7 < 2)
  {
    v14 = 0;
    v11 = -1;
    goto LABEL_9;
  }

  v8 = *(bufferCopy + 18);
  v9 = 8 * v8;
  if (8 * v8 + 36 > length)
  {
    goto LABEL_26;
  }

  v10 = bufferCopy + 8 * v8;
  v13 = *(v10 + 28);
  v12 = v10 + 28;
  v11 = v13;
  if (v7 == 2)
  {
    v14 = 0;
LABEL_9:
    v15 = 1;
    goto LABEL_10;
  }

  if (v9 + 44 > length)
  {
    goto LABEL_29;
  }

  v14 = *(v12 + 8);
  if (v7 < 4)
  {
    goto LABEL_9;
  }

  if (v9 + 45 > length)
  {
    goto LABEL_32;
  }

  v15 = *(v12 + 16) ^ 1;
LABEL_10:
  v16 = [SASharedCache sharedCacheWithUUID:v6 slide:*(bufferCopy + 20) slidBaseAddress:v11 dataGatheringOptions:2048];
  v17 = v16;
  if (v14)
  {
    if (!v16)
    {
      goto LABEL_15;
    }

    *(v16 + 28) = v14;
  }

  if (!(v15 & 1 | (v16 == 0)))
  {
    *(v16 + 25) = 1;
  }

LABEL_15:

  return v17;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  *&v25[13] = *MEMORY[0x1E69E9840];
  if (*buffer >= 5u)
  {
    goto LABEL_14;
  }

  if (length <= 0x1B)
  {
    v15 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v24 = 2048;
      *v25 = 28;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASharedCache struct %lu", buf, 0x16u);
    }

    *__error() = v15;
    _SASetCrashLogMessage(5379, "bufferLength %lu < serialized SASharedCache struct %lu", length, 28);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 9) + 28 > length)
  {
LABEL_11:
    v16 = *__error();
    v17 = _sa_logt();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *(bufferCopy + 18);
      *buf = 134218496;
      lengthCopy2 = length;
      v24 = 1024;
      *v25 = v18;
      v25[2] = 2048;
      *&v25[3] = 8 * v18 + 28;
      _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SASharedCache struct plus %u load infos %lu", buf, 0x1Cu);
    }

    *__error() = v16;
    _SASetCrashLogMessage(5380, "bufferLength %lu < serialized SASharedCache struct plus %u load infos %lu", length, *(bufferCopy + 18), 8 * *(bufferCopy + 18) + 28);
    _os_crash();
    __break(1u);
LABEL_14:
    v19 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAInstruction version" userInfo:0];
    objc_exception_throw(v19);
  }

  if (![(NSArray *)self->_binaryLoadInfos count])
  {
    v11 = *(bufferCopy + 18);
    if (*(bufferCopy + 18))
    {
      v12 = objc_opt_class();
      v13 = SASerializableNewMutableArrayFromIndexList(bufferCopy + 28, v11, dictionary, bufferDictionary, v12);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __128__SASharedCache_Serialization__populateReferencesUsingBuffer_bufferLength_andDeserializationDictionary_andDataBufferDictionary___block_invoke;
      v20[3] = &unk_1E86F6E68;
      v20[4] = self;
      v21 = v13;
      v14 = v13;
      [SASharedCache _doSharedCachesWork:v20];
    }
  }
}

void __128__SASharedCache_Serialization__populateReferencesUsingBuffer_bufferLength_andDeserializationDictionary_andDataBufferDictionary___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) uuid];
  v9 = [a2 objectForKeyedSubscript:v4];

  if (![v9 count])
  {
    v5 = *__error();
    v6 = _sa_logt();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) debugDescription];
      *buf = 136315138;
      v11 = [v7 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_ERROR, "In deserialization, no shared caches in cache for shared cache %s", buf, 0xCu);
    }

    *__error() = v5;
    v8 = [*(a1 + 32) debugDescription];
    _SASetCrashLogMessage(5389, "In deserialization, no shared caches in cache for shared cache %s", [v8 UTF8String]);

    _os_crash();
    __break(1u);
  }

  +[SASharedCache _applyLoadInfos:withSlide:andSlidBaseAddress:toSharedCaches:](SASharedCache, *(a1 + 40), [*(a1 + 32) slide], objc_msgSend(*(a1 + 32), "slidBaseAddress"), v9);
}

@end