@interface SGBloomFilter
- (BOOL)exists:(id)exists;
- (SGBloomFilter)initWithDirectory:(id)directory name:(id)name;
- (SGBloomFilter)initWithHead:(id)head tail:(id)tail;
- (SGBloomFilter)initWithInMemoryStorage;
- (SGBloomFilter)initWithInMemoryStorageSparse;
- (id)counts;
- (void)_rotate;
- (void)_rotateIfNecessary;
- (void)add:(id)add;
- (void)addAsync:(id)async;
- (void)forceRotate;
@end

@implementation SGBloomFilter

- (id)counts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__12806;
  v10 = __Block_byref_object_dispose__12807;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __23__SGBloomFilter_counts__block_invoke;
  v5[3] = &unk_2789561D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __23__SGBloomFilter_counts__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D42648]);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:objc_msgSend_count(*(*(a1 + 32) + 8))];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:objc_msgSend_count(*(*(a1 + 32) + 16))];
  v4 = [v2 initWithFirst:v7 second:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)exists:(id)exists
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9 = 0;
  SGMurmurhashString(exists, 12345, &v8);
  v4 = v8;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __24__SGBloomFilter_exists___block_invoke;
  v7[3] = &unk_278954E28;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = v4;
  dispatch_sync(queue, v7);
  LOBYTE(self) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return self;
}

uint64_t __24__SGBloomFilter_exists___block_invoke(void *a1)
{
  if ([*(a1[4] + 8) exists:a1[6]])
  {
    result = 1;
  }

  else
  {
    result = [*(a1[4] + 16) exists:a1[6]];
  }

  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (void)addAsync:(id)async
{
  asyncCopy = async;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__SGBloomFilter_addAsync___block_invoke;
  v7[3] = &unk_278955830;
  v7[4] = self;
  v8 = asyncCopy;
  v6 = asyncCopy;
  dispatch_async(queue, v7);
}

uint64_t __26__SGBloomFilter_addAsync___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _rotateIfNecessary];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v6[0] = 0;
  v6[1] = 0;
  SGMurmurhashString(v2, 12345, v6);
  v4 = v6[0];

  return [v3 add:v4];
}

- (void)add:(id)add
{
  addCopy = add;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __21__SGBloomFilter_add___block_invoke;
  v7[3] = &unk_278955830;
  v7[4] = self;
  v8 = addCopy;
  v6 = addCopy;
  dispatch_sync(queue, v7);
}

uint64_t __21__SGBloomFilter_add___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _rotateIfNecessary];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v6[0] = 0;
  v6[1] = 0;
  SGMurmurhashString(v2, 12345, v6);
  v4 = v6[0];

  return [v3 add:v4];
}

- (void)forceRotate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__SGBloomFilter_forceRotate__block_invoke;
  block[3] = &unk_278954A30;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_rotate
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v33) = 0;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_INFO, "Rotating bloom filters", &v33, 2u);
  }

  v4 = 0x278948000uLL;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  head = self->_head;
  if ((isKindOfClass & 1) == 0)
  {
    objc_storeStrong(&self->_tail, head);
    objc_opt_class();
    v18 = objc_opt_new();
    v7 = self->_head;
    self->_head = v18;
    goto LABEL_21;
  }

  v7 = head;
  v8 = self->_tail;
  path = [(SGBloomFilterChunk *)v7 path];
  path2 = [(SGBloomFilterChunk *)v8 path];
  v11 = [path hasSuffix:@".bf-head"];
  if (v11)
  {
    v12 = v8;
    v13 = objc_autoreleasePoolPush();
    v14 = [path substringToIndex:{objc_msgSend(path, "length") - 8}];
    v15 = [v14 stringByAppendingString:@".bf2-head"];
    v16 = path;
    v17 = path2;
  }

  else
  {
    if (![path2 hasSuffix:@".bf-tail"])
    {
      v20 = 0;
      v17 = path2;
      v19 = path;
      goto LABEL_11;
    }

    v12 = v8;
    v13 = objc_autoreleasePoolPush();
    v14 = [path2 substringToIndex:{objc_msgSend(path2, "length") - 8}];
    v17 = [v14 stringByAppendingString:@".bf2-tail"];
    v16 = path2;
    v15 = path;
  }

  objc_autoreleasePoolPop(v13);
  v8 = v12;
  v4 = 0x278948000;
  v19 = v15;
  v20 = v11 ^ 1;
LABEL_11:
  [(SGBloomFilterChunk *)v7 close];
  [(SGBloomFilterChunk *)v8 close];
  uTF8String = [path UTF8String];
  uTF8String2 = [v17 UTF8String];
  rename(uTF8String, uTF8String2, v23);
  if (v24)
  {
    v25 = sgLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v31 = *__error();
      v33 = 138412802;
      v34 = v19;
      v35 = 2112;
      v36 = v17;
      v37 = 1024;
      v38 = v31;
      _os_log_error_impl(&dword_231E60000, v25, OS_LOG_TYPE_ERROR, "Could not move %@ to %@: errno=%i", &v33, 0x1Cu);
    }
  }

  if (v20 && unlink([path2 UTF8String]))
  {
    v26 = sgLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v32 = *__error();
      v33 = 138412546;
      v34 = path2;
      v35 = 1024;
      LODWORD(v36) = v32;
      _os_log_error_impl(&dword_231E60000, v26, OS_LOG_TYPE_ERROR, "Could not unlink %@: errno=%i", &v33, 0x12u);
    }
  }

  v27 = [objc_alloc(*(v4 + 2224)) initWithPath:v19];
  v28 = self->_head;
  self->_head = v27;

  v29 = [objc_alloc(*(v4 + 2224)) initWithPath:v17];
  tail = self->_tail;
  self->_tail = v29;

LABEL_21:
}

- (void)_rotateIfNecessary
{
  if (objc_msgSend_count(self->_head, a2) >> 3 >= 0xC35)
  {

    [(SGBloomFilter *)self _rotate];
  }
}

- (SGBloomFilter)initWithDirectory:(id)directory name:(id)name
{
  v68 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  nameCopy = name;
  v9 = nameCopy;
  if (directoryCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGBloomFilter.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"dirPath"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGBloomFilter.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"name"}];

LABEL_3:
  if (initWithDirectory_name__onceToken != -1)
  {
    dispatch_once(&initWithDirectory_name__onceToken, &__block_literal_global_12874);
  }

  v10 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:directoryCopy second:v9];
  pthread_mutex_lock(&initWithDirectory_name__lock);
  v11 = [initWithDirectory_name__instances objectForKey:v10];
  if (!v11)
  {
    v13 = objc_autoreleasePoolPush();
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v63 = 0;
    v15 = [defaultManager contentsOfDirectoryAtPath:directoryCopy error:&v63];
    v16 = v63;

    if (!v15)
    {
      v35 = sgLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v65 = directoryCopy;
        v66 = 2112;
        v67 = v16;
        _os_log_error_impl(&dword_231E60000, v35, OS_LOG_TYPE_ERROR, "Error listing contents of directory %@: %@", buf, 0x16u);
      }

      v12 = 0;
      goto LABEL_37;
    }

    v57 = v13;
    selfCopy = self;
    v17 = v16;
    v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v15];
    v19 = [v9 stringByAppendingString:@".bf-head"];
    v20 = [v9 stringByAppendingString:@".bf-tail"];
    v21 = [v9 stringByAppendingString:@".bf2-head"];
    v22 = [v9 stringByAppendingString:@".bf2-tail"];
    v62 = v19;
    v60 = v21;
    if ([v18 containsObject:v19])
    {
      v23 = v19;
    }

    else
    {
      v23 = v21;
    }

    v24 = v22;
    v25 = v23;
    if ([v18 containsObject:v20])
    {
      v26 = v20;
    }

    else
    {
      v26 = v24;
    }

    v27 = v26;
    v59 = v20;
    v58 = v18;
    v54 = v24;
    if ([v18 containsObject:v20])
    {
      v28 = [v18 containsObject:v24];
      v29 = v24;
      v30 = v17;
      if (v28)
      {
        v61 = v29;

        v31 = [directoryCopy stringByAppendingPathComponent:v20];
        v32 = unlink([v31 UTF8String]);

        v33 = selfCopy;
        if (v32)
        {
          v34 = sgLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v47 = [directoryCopy stringByAppendingPathComponent:v20];
            v48 = *__error();
            *buf = 138412546;
            v65 = v47;
            v66 = 1024;
            LODWORD(v67) = v48;
            _os_log_error_impl(&dword_231E60000, v34, OS_LOG_TYPE_ERROR, "Could not unlink %@ while rotating: errno=%i", buf, 0x12u);
          }
        }

        v18 = v58;
        goto LABEL_27;
      }

      v61 = v27;
    }

    else
    {
      v61 = v27;
      v30 = v17;
    }

    v33 = selfCopy;
LABEL_27:
    v55 = v30;
    v56 = v15;
    if ([v18 containsObject:v62]&& [v18 containsObject:v60])
    {
      v36 = v60;

      v37 = [directoryCopy stringByAppendingPathComponent:v62];
      v38 = unlink([v37 UTF8String]);

      if (v38)
      {
        v39 = sgLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v49 = [directoryCopy stringByAppendingPathComponent:v62];
          v50 = *__error();
          *buf = 138412546;
          v65 = v49;
          v66 = 1024;
          LODWORD(v67) = v50;
          _os_log_error_impl(&dword_231E60000, v39, OS_LOG_TYPE_ERROR, "Could not unlink %@ while rotating: errno=%i", buf, 0x12u);
        }
      }
    }

    else
    {
      v36 = v25;
    }

    v40 = [SGBloomFilterChunkMmap alloc];
    v41 = [directoryCopy stringByAppendingPathComponent:v36];
    v42 = [(SGBloomFilterChunkMmap *)v40 initWithPath:v41];
    v43 = [SGBloomFilterChunkMmap alloc];
    v44 = [directoryCopy stringByAppendingPathComponent:v61];
    v45 = [(SGBloomFilterChunkMmap *)v43 initWithPath:v44];
    v12 = [(SGBloomFilter *)v33 initWithHead:v42 tail:v45];

    if ([v36 isEqualToString:v62])
    {
      [(SGBloomFilter *)v12 _rotate];
    }

    [initWithDirectory_name__instances setObject:v12 forKey:v10];

    self = v12;
    v15 = v56;
    v13 = v57;
    v16 = v55;
    v35 = v58;
LABEL_37:

    objc_autoreleasePoolPop(v13);
    goto LABEL_38;
  }

  v12 = v11;
LABEL_38:
  pthread_mutex_unlock(&initWithDirectory_name__lock);

  return v12;
}

uint64_t __40__SGBloomFilter_initWithDirectory_name___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:5 capacity:1];
  v1 = initWithDirectory_name__instances;
  initWithDirectory_name__instances = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SGBloomFilter)initWithInMemoryStorageSparse
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(SGBloomFilter *)self initWithHead:v3 tail:v4];

  return v5;
}

- (SGBloomFilter)initWithInMemoryStorage
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(SGBloomFilter *)self initWithHead:v3 tail:v4];

  return v5;
}

- (SGBloomFilter)initWithHead:(id)head tail:(id)tail
{
  headCopy = head;
  tailCopy = tail;
  v15.receiver = self;
  v15.super_class = SGBloomFilter;
  v9 = [(SGBloomFilter *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_head, head);
    objc_storeStrong(&v10->_tail, tail);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.suggestions.SGBloomFilter", v11);
    queue = v10->_queue;
    v10->_queue = v12;
  }

  return v10;
}

@end