@interface _CDSharedMemoryKeyValueStore
+ (NSObject)readKeyedDataDictionaryFromMemory:(unint64_t)memory size:;
+ (id)defaultName;
+ (id)keyValueStoreWithName:(id)name size:(unint64_t)size;
+ (id)log;
+ (id)sharedInstance;
+ (void)openOrCreateSharedMemoryWithName:(size_t)name size:;
- (BOOL)_persistToShMem;
- (BOOL)removeDataForKey:(id)key;
- (BOOL)removeDataForKeys:(id)keys;
- (BOOL)setData:(id)data forKey:(id)key;
- (BOOL)syncPersistToShMem;
- (id)allKeys;
- (id)dataForKey:(id)key;
- (id)description;
- (id)errorForExceedingSizeLimits;
- (void)_persistToShMem;
- (void)initWithName:(uint64_t)name size:;
- (void)schedulePersistToShMem;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation _CDSharedMemoryKeyValueStore

- (void)schedulePersistToShMem
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    if (!*(self + 24))
    {
      v2 = os_transaction_create();
      v3 = *(self + 24);
      *(self + 24) = v2;

      v4 = *(self + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54___CDSharedMemoryKeyValueStore_schedulePersistToShMem__block_invoke;
      block[3] = &unk_1E7367440;
      block[4] = self;
      dispatch_async(v4, block);
    }
  }
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46___CDSharedMemoryKeyValueStore_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance_theStore;

  return v2;
}

- (id)errorForExceedingSizeLimits
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v1 = MEMORY[0x1E696ABC0];
    v5 = *MEMORY[0x1E696A588];
    v6[0] = @"Serialized size exceeds shared memory capacity";
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    v3 = [v1 errorWithDomain:@"com.apple.coreduet.sharedmemorykeyvaluestore" code:0 userInfo:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_persistToShMem
{
  v38 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    dispatch_assert_queue_V2(*(result + 16));
    kdebug_trace();
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__4;
    v33 = __Block_byref_object_dispose__4;
    v34 = 0;
    if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_DEBUG))
    {
      [_CDSharedMemoryKeyValueStore _persistToShMem];
    }

    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__4;
    v27 = __Block_byref_object_dispose__4;
    v28 = 0;
    v2 = *(v1 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47___CDSharedMemoryKeyValueStore__persistToShMem__block_invoke;
    block[3] = &unk_1E7367ED0;
    block[4] = v1;
    block[5] = &v29;
    block[6] = &v23;
    dispatch_sync(v2, block);
    if (v30[5])
    {
      if ([v1 size] > 0xF)
      {
        **(v1 + 56) = 0;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        obj = v24[5];
        v5 = 0;
        v4 = 0;
        v6 = [obj countByEnumeratingWithState:&v18 objects:v37 count:16];
        if (v6)
        {
          v7 = 16;
          v8 = *v19;
          do
          {
            v9 = 0;
            do
            {
              if (*v19 != v8)
              {
                objc_enumerationMutation(obj);
              }

              v10 = *(*(&v18 + 1) + 8 * v9);
              buf[0] = 0;
              v11 = [(_CDSerializableKeyedData *)v10 serializeTo:*(v1 + 64) - v7 maxSize:buf success:?];
              v12 = v11;
              if (buf[0])
              {
                ++v5;
                v7 += v11;
              }

              else
              {
                errorForExceedingSizeLimits = [(_CDSharedMemoryKeyValueStore *)v1 errorForExceedingSizeLimits];

                v17[0] = MEMORY[0x1E69E9820];
                v17[1] = 3221225472;
                v17[2] = __47___CDSharedMemoryKeyValueStore__persistToShMem__block_invoke_19;
                v17[3] = &unk_1E7367EF8;
                v17[6] = &v23;
                v17[7] = v12;
                v17[8] = v7;
                v17[4] = v10;
                v17[5] = v1;
                if (_persistToShMem_onceToken != -1)
                {
                  dispatch_once(&_persistToShMem_onceToken, v17);
                }

                v4 = errorForExceedingSizeLimits;
              }

              ++v9;
            }

            while (v6 != v9);
            v6 = [obj countByEnumeratingWithState:&v18 objects:v37 count:16];
          }

          while (v6);
        }

        else
        {
          v7 = 16;
        }

        v14 = *(v1 + 56);
        *(v14 + 8) = v5;
        *v14 = 1;
        v15 = +[_CDLogging instrumentationChannel];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          -[_CDSharedMemoryKeyValueStore _persistToShMem].cold.2(buf, v7, [v1 size], v15);
        }

        goto LABEL_28;
      }

      errorForExceedingSizeLimits2 = [(_CDSharedMemoryKeyValueStore *)v1 errorForExceedingSizeLimits];
    }

    else
    {
      if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_DEBUG))
      {
        [_CDSharedMemoryKeyValueStore _persistToShMem];
      }

      errorForExceedingSizeLimits2 = *(v1 + 32);
    }

    v4 = errorForExceedingSizeLimits2;
LABEL_28:
    _Block_object_dispose(&v23, 8);

    objc_storeStrong((v1 + 32), v4);
    [v4 code];
    kdebug_trace();
    v35 = v4 == 0;
    _Block_object_dispose(&v29, 8);

    return v35;
  }

  return result;
}

+ (id)defaultName
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (bundleIdentifier)
  {
    v4 = bundleIdentifier;
  }

  else
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];

    if (processName)
    {
      v4 = processName;
    }

    else
    {
      v4 = @"/CDSharedMemoryKeyValueStore";
    }
  }

  return v4;
}

+ (id)log
{
  objc_opt_self();
  if (log_onceToken != -1)
  {
    +[_CDSharedMemoryKeyValueStore log];
  }

  v1 = log_log;

  return v1;
}

+ (void)openOrCreateSharedMemoryWithName:(size_t)name size:
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = objc_opt_self();
  v6 = +[(_CDSharedMemoryKeyValueStore *)v5];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v4;
    _os_log_impl(&dword_191750000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to open %{public}@ in shared memory", buf, 0xCu);
  }

  v7 = shm_open([v4 UTF8String], 2, 384);
  v8 = +[(_CDSharedMemoryKeyValueStore *)v5];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7 == -1)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_191750000, v8, OS_LOG_TYPE_DEFAULT, "Shared memory is not present. Creating it.", buf, 2u);
    }

    v12 = shm_open([v4 UTF8String], 514, 384);
    if (v12 == -1)
    {
      v11 = +[(_CDSharedMemoryKeyValueStore *)v5];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[_CDSharedMemoryKeyValueStore openOrCreateSharedMemoryWithName:size:];
      }

      goto LABEL_17;
    }

    v13 = v12;
    if (ftruncate(v12, name))
    {
      v11 = +[(_CDSharedMemoryKeyValueStore *)v5];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[_CDSharedMemoryKeyValueStore openOrCreateSharedMemoryWithName:size:];
      }

      goto LABEL_17;
    }

    v10 = mmap(0, name, 3, 1, v13, 0);
    close(v13);
    if (v10 != -1)
    {
      goto LABEL_18;
    }

    v11 = +[(_CDSharedMemoryKeyValueStore *)v5];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v8, OS_LOG_TYPE_DEFAULT, "Opened shared memory", buf, 2u);
  }

  v10 = mmap(0, name, 3, 1, v7, 0);
  close(v7);
  if (v10 == -1)
  {
    v11 = +[(_CDSharedMemoryKeyValueStore *)v5];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_17:

      v10 = 0;
      goto LABEL_18;
    }

LABEL_8:
    +[_CDSharedMemoryKeyValueStore openOrCreateSharedMemoryWithName:size:];
    goto LABEL_17;
  }

LABEL_18:

  return v10;
}

+ (NSObject)readKeyedDataDictionaryFromMemory:(unint64_t)memory size:
{
  v5 = objc_opt_self();
  v6 = v5;
  v7 = *(a2 + 8);
  if (*a2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (!v7)
    {
      goto LABEL_24;
    }

    v9 = 16;
    while (memory > v9)
    {
      v10 = [_CDSerializableKeyedData keyedDataDeserializedFrom:memory - v9 maxSize:?];
      v12 = v10;
      if (!v10)
      {
        v18 = +[(_CDSharedMemoryKeyValueStore *)v6];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          +[_CDSharedMemoryKeyValueStore readKeyedDataDictionaryFromMemory:size:];
        }

        goto LABEL_21;
      }

      if (!objc_getProperty(v10, v11, 24, 1))
      {
        v18 = +[(_CDSharedMemoryKeyValueStore *)v6];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          +[_CDSharedMemoryKeyValueStore readKeyedDataDictionaryFromMemory:size:];
        }

LABEL_21:

        v17 = dictionary;
        goto LABEL_22;
      }

      [dictionary setObject:v12 forKeyedSubscript:objc_getProperty(v12, v13, 24, 1)];
      v14 = [v12[1] length];
      v9 += v14 + [v12[4] length] + 18;

      if (!--v7)
      {
        goto LABEL_24;
      }
    }

    v17 = +[(_CDSharedMemoryKeyValueStore *)v6];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(_CDSharedMemoryKeyValueStore *)v9 readKeyedDataDictionaryFromMemory:memory size:v17];
    }
  }

  else
  {
    v15 = readKeyedDataDictionaryFromMemory_size__invalidHeaderCount++;
    if (v15 == 1)
    {
      v16 = +[(_CDSharedMemoryKeyValueStore *)v5];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [_CDSharedMemoryKeyValueStore readKeyedDataDictionaryFromMemory:v7 size:v16];
      }
    }

    v17 = +[(_CDSharedMemoryKeyValueStore *)v6];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[_CDSharedMemoryKeyValueStore readKeyedDataDictionaryFromMemory:size:];
    }

LABEL_22:
    dictionary = 0;
  }

LABEL_24:

  return dictionary;
}

- (BOOL)syncPersistToShMem
{
  selfCopy = self;
  dispatch_assert_queue_not_V2(self->_queue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  persistQueue = selfCopy->_persistQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50___CDSharedMemoryKeyValueStore_syncPersistToShMem__block_invoke;
  v5[3] = &unk_1E7367398;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(persistQueue, v5);
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)setData:(id)data forKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47___CDSharedMemoryKeyValueStore_setData_forKey___block_invoke;
  v12[3] = &unk_1E7367F20;
  v12[4] = self;
  v13 = keyCopy;
  v14 = dataCopy;
  v15 = &v16;
  v9 = dataCopy;
  v10 = keyCopy;
  dispatch_sync(queue, v12);
  LOBYTE(dataCopy) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return dataCopy;
}

- (BOOL)removeDataForKey:(id)key
{
  v9 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v4 = MEMORY[0x1E695DEC8];
  keyCopy2 = key;
  v6 = [v4 arrayWithObjects:&keyCopy count:1];

  LOBYTE(self) = [(_CDSharedMemoryKeyValueStore *)self removeDataForKeys:v6, keyCopy, v9];
  return self;
}

- (BOOL)removeDataForKeys:(id)keys
{
  keysCopy = keys;
  if ([keysCopy count])
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50___CDSharedMemoryKeyValueStore_removeDataForKeys___block_invoke;
    v7[3] = &unk_1E7367710;
    v7[4] = self;
    v8 = keysCopy;
    dispatch_sync(queue, v7);
  }

  return 1;
}

- (id)dataForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43___CDSharedMemoryKeyValueStore_dataForKey___block_invoke;
  block[3] = &unk_1E7367248;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)allKeys
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = MEMORY[0x1E695E0F0];
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39___CDSharedMemoryKeyValueStore_allKeys__block_invoke;
  v5[3] = &unk_1E7367398;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_CDSharedMemoryKeyValueStore *)self setData:valueCopy forKey:keyCopy];
  }
}

- (id)description
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_dictionary;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = [(NSMutableDictionary *)self->_dictionary objectForKeyedSubscript:v9];
        v11 = v10;
        if (v10)
        {
          v12 = [*(v10 + 8) length];
          v13 = v12 + [v11[4] length] + 18;
        }

        else
        {
          v13 = 0;
        }

        v6 += v13;
        [v3 appendFormat:@"%@: %zu\n", v9, v13];

        ++v8;
      }

      while (v5 != v8);
      v14 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      v5 = v14;
    }

    while (v14);
  }

  else
  {
    v6 = 0;
  }

  [v3 appendFormat:@"totalSize: %zu\n", v6];

  return v3;
}

- (void)initWithName:(uint64_t)name size:
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (!self || ![v5 length])
  {
    goto LABEL_18;
  }

  v38.receiver = self;
  v38.super_class = _CDSharedMemoryKeyValueStore;
  v7 = objc_msgSendSuper2(&v38, sel_init);
  self = v7;
  if (v7)
  {
    v7[7] = 0;
    if (!name)
    {
      name = [objc_opt_class() defaultSize];
    }

    self[8] = name;
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.CoreDuet.SharedMemoryKeyValueStore", v8);
    v10 = self[1];
    self[1] = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_BACKGROUND, 0);

    v13 = dispatch_queue_create("com.apple.CoreDuet.SharedMemoryKeyValueStore.Persistence", v12);
    v14 = self[2];
    self[2] = v13;

    v15 = +[_CDSharedMemoryKeyValueStore log];
    v16 = self[5];
    self[5] = v15;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v18 = self[6];
    self[6] = dictionary;

    v19 = [_CDSharedMemoryKeyValueStore openOrCreateSharedMemoryWithName:v6 size:self[8]];
    self[7] = v19;
    if (v19)
    {
      v20 = [_CDSharedMemoryKeyValueStore readKeyedDataDictionaryFromMemory:v19 size:self[8]];
      v21 = self[6];
      self[6] = v20;

      if (!self[6])
      {
        v22 = self[5];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v35 = v6;
          v36 = v22;
          uTF8String = [v6 UTF8String];
          *buf = 136315138;
          v40 = uTF8String;
          _os_log_error_impl(&dword_191750000, v36, OS_LOG_TYPE_ERROR, "Failed to read/load store with name %s", buf, 0xCu);
        }

        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        v24 = self[6];
        self[6] = dictionary2;
      }

      v25 = self[5];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v27 = self[7];
        v26 = self[8];
        *buf = 138412802;
        v40 = v6;
        v41 = 1024;
        v42 = v26;
        v43 = 2048;
        v44 = v27;
        _os_log_impl(&dword_191750000, v25, OS_LOG_TYPE_DEFAULT, "Created store with name %@, size %d, address %p", buf, 0x1Cu);
      }

      goto LABEL_14;
    }

    v29 = self[5];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v31 = v6;
      v32 = v29;
      uTF8String2 = [v6 UTF8String];
      v34 = self[8];
      *buf = 136315394;
      v40 = uTF8String2;
      v41 = 1024;
      v42 = v34;
      _os_log_error_impl(&dword_191750000, v32, OS_LOG_TYPE_ERROR, "Failed to create store with name %s, size %d", buf, 0x12u);
    }

LABEL_18:
    selfCopy = 0;
    goto LABEL_19;
  }

LABEL_14:
  self = self;
  selfCopy = self;
LABEL_19:

  return selfCopy;
}

+ (id)keyValueStoreWithName:(id)name size:(unint64_t)size
{
  nameCopy = name;
  v7 = [(_CDSharedMemoryKeyValueStore *)[self alloc] initWithName:nameCopy size:size];

  return v7;
}

+ (void)openOrCreateSharedMemoryWithName:size:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6(&dword_191750000, v1, v2, "mmap failed for name %{public}@ Error: %{public}s", v3, v4, v5, v6);
}

+ (void)openOrCreateSharedMemoryWithName:size:.cold.2()
{
  OUTLINED_FUNCTION_6();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6(&dword_191750000, v1, v2, "Failed to truncate shared memory with name %{public}@ Error: %{public}s", v3, v4, v5, v6);
}

+ (void)openOrCreateSharedMemoryWithName:size:.cold.4()
{
  OUTLINED_FUNCTION_6();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_6(&dword_191750000, v1, v2, "Failed to open shared memory with name: %{public}@ Error: %{public}s", v3, v4, v5, v6);
}

+ (void)readKeyedDataDictionaryFromMemory:(uint64_t)a1 size:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&dword_191750000, a2, OS_LOG_TYPE_FAULT, "Encountered invalid header: {isValid=0; size=%zu}", &v2, 0xCu);
}

+ (void)readKeyedDataDictionaryFromMemory:size:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)readKeyedDataDictionaryFromMemory:(os_log_t)log size:.cold.3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_191750000, log, OS_LOG_TYPE_ERROR, "Attempt to read offset %lu > %lu", &v3, 0x16u);
}

+ (void)readKeyedDataDictionaryFromMemory:size:.cold.4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)readKeyedDataDictionaryFromMemory:size:.cold.5()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_persistToShMem
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end