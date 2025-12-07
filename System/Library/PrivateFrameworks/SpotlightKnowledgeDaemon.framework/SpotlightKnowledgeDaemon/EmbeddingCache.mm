@interface EmbeddingCache
+ (id)embeddingCaches;
+ (id)initInstanceWithType:(int)type name:(id)name;
+ (id)initInstanceWithType:(int)type name:(id)name cacheOptions:(int64_t)options;
+ (id)sharedInstanceWithType:(int)type;
- (BOOL)dbWriteValueWithKey:(int64_t)key data:(const void *)data dataLen:(int)len;
- (BOOL)put:(const char *)put value:(id)value;
- (BOOL)put:(const char *)put value:(id)value bundle:(const char *)bundle;
- (EmbeddingCache)initWithParentFd:(int)fd indexType:(int)type dbName:(id)name;
- (EmbeddingCache)initWithParentFd:(int)fd indexType:(int)type dbName:(id)name cacheOptions:(int64_t)options;
- (id)dbFetchValueWithKey:(int64_t)key;
- (id)get:(const char *)get;
- (id)get:(const char *)get bundle:(const char *)bundle;
- (unsigned)hitRate;
- (void)closeAndDeleteStore:(id)store;
- (void)flush;
@end

@implementation EmbeddingCache

+ (id)embeddingCaches
{
  if (embeddingCaches_onceToken != -1)
  {
    +[EmbeddingCache embeddingCaches];
  }

  v3 = embeddingCaches_stores;

  return v3;
}

void __33__EmbeddingCache_embeddingCaches__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = embeddingCaches_stores;
  embeddingCaches_stores = v0;
}

- (BOOL)dbWriteValueWithKey:(int64_t)key data:(const void *)data dataLen:(int)len
{
  obj = db_create_obj();
  v10 = obj;
  if (obj)
  {
    *obj = key;
    if (db_add_field())
    {
      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v7 = SKGLogInit();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [EmbeddingCache dbWriteValueWithKey:data:dataLen:];
        }

LABEL_11:
      }
    }

    else
    {
      if (!db_store_obj())
      {
        v8 = 1;
        goto LABEL_13;
      }

      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v7 = SKGLogInit();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [EmbeddingCache dbWriteValueWithKey:data:dataLen:];
        }

        goto LABEL_11;
      }
    }

    v8 = 0;
LABEL_13:
    MEMORY[0x2383779F0](v10);
    return v8;
  }

  return 0;
}

- (id)dbFetchValueWithKey:(int64_t)key
{
  db_get_obj();
  data = [MEMORY[0x277CBEA90] data];

  return data;
}

BOOL __35__EmbeddingCache_populateFifoStore__block_invoke(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 32);
  v4 = *(v3 + 400056);
  *(v3 + 400056) = v4 + 1;
  *(v3 + 4 * v4 + 56) = v2;
  return *(*(a1 + 32) + 400056) < 100000;
}

- (EmbeddingCache)initWithParentFd:(int)fd indexType:(int)type dbName:(id)name
{
  v7 = *&fd;
  nameCopy = name;
  si_init_indexing_zone();
  [(EmbeddingCache *)self setProtectionClassForFolder:v7 protectionClass:3];
  Db = createOrGetDb(v7, [nameCopy UTF8String]);
  if (Db)
  {
    self->_parentDirFd = v7;
    self->_indexType = type;
    self->_dsi = Db;
    objc_storeStrong(&self->_dbName, name);
    self->_stats = 0;
    [(EmbeddingCache *)self populateFifoStore];
    selfCopy = self;
  }

  else
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v12 = SKGLogInit();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [EmbeddingCache initWithParentFd:indexType:dbName:];
      }
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)closeAndDeleteStore:(id)store
{
  storeCopy = store;
  db_release_datastore();
  parentDirFd = self->_parentDirFd;
  uTF8String = [storeCopy UTF8String];

  MEMORY[0x282187490](parentDirFd, uTF8String, 270336);
}

- (void)flush
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

+ (id)sharedInstanceWithType:(int)type
{
  v3 = *&type;
  embeddingCaches = [self embeddingCaches];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v6 = [embeddingCaches objectForKeyedSubscript:v5];

  return v6;
}

+ (id)initInstanceWithType:(int)type name:(id)name
{
  v4 = *&type;
  nameCopy = name;
  embeddingCaches = [self embeddingCaches];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  v9 = [embeddingCaches objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = v9;
    goto LABEL_27;
  }

  v11 = embeddingCacheParentFolderPath(v4);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [defaultManager fileExistsAtPath:v11];

  if ((v13 & 1) == 0)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v14 = SKGLogInit();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [EmbeddingCache initInstanceWithType:v11 name:?];
      }
    }

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v26 = 0;
    v16 = [defaultManager2 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v26];
    v17 = v26;

    CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
    if ((v16 & 1) == 0)
    {
      if (CurrentLoggingLevel >= 2)
      {
        v24 = SKGLogInit();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          +[EmbeddingCache initInstanceWithType:name:];
        }
      }

      goto LABEL_25;
    }

    if (CurrentLoggingLevel >= 2)
    {
      v19 = SKGLogInit();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [EmbeddingCache initInstanceWithType:v11 name:?];
      }
    }
  }

  v20 = open([v11 fileSystemRepresentation], 0x100000);
  if (v20 == -1)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v23 = SKGLogInit();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [EmbeddingCache initInstanceWithType:v11 name:?];
      }
    }

LABEL_25:
    v10 = 0;
    goto LABEL_26;
  }

  v21 = [[self alloc] initWithParentFd:v20 indexType:v4 dbName:nameCopy];
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  [embeddingCaches setObject:v21 forKeyedSubscript:v22];

  v10 = v21;
LABEL_26:

LABEL_27:

  return v10;
}

- (BOOL)put:(const char *)put value:(id)value
{
  valueCopy = value;
  if (put && (v7 = strlen(put), v8 = MurmurHash3_x86_32(put, v7), -[EmbeddingCache dbWriteValueWithKey:data:dataLen:](self, "dbWriteValueWithKey:data:dataLen:", v8, [valueCopy bytes], objc_msgSend(valueCopy, "length"))))
  {
    p_fifo = &self->_fifo;
    self->_fifo.index %= 100000;
    if ([(EmbeddingCache *)self itemCount]>> 5 >= 0xC35)
    {
      [(EmbeddingCache *)self deleteFromDb:p_fifo->_data[self->_fifo.index]];
    }

    p_fifo->_data[self->_fifo.index++] = v8;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)get:(const char *)get
{
  if (get)
  {
    v5 = strlen(get);
    data = [(EmbeddingCache *)self dbFetchValueWithKey:MurmurHash3_x86_32(get, v5)];
    v7 = [data length];
    v8 = 40;
    if (!v7)
    {
      v8 = 44;
    }

    ++*(&self->super.isa + v8);
  }

  else
  {
    data = [MEMORY[0x277CBEA90] data];
  }

  return data;
}

- (unsigned)hitRate
{
  hitCount = self->_stats.hitCount;
  v3 = self->_stats.missCount + hitCount;
  if (v3)
  {
    return 100 * hitCount / v3;
  }

  else
  {
    return 0;
  }
}

- (EmbeddingCache)initWithParentFd:(int)fd indexType:(int)type dbName:(id)name cacheOptions:(int64_t)options
{
  optionsCopy = options;
  v9 = *&fd;
  nameCopy = name;
  si_init_indexing_zone();
  [(EmbeddingCache *)self setProtectionClassForFolder:v9 protectionClass:3];
  Db = createOrGetDb(v9, [nameCopy UTF8String]);
  if (Db)
  {
    self->_parentDirFd = v9;
    self->_indexType = type;
    self->_dsi = Db;
    objc_storeStrong(&self->_dbName, name);
    self->_stats = 0;
    if (optionsCopy)
    {
      nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_debug.log", nameCopy];
      [nameCopy UTF8String];
      self->_stringFd = fd_create_protected();

      if ((optionsCopy & 2) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      self->_stringFd = 0;
      if ((optionsCopy & 2) != 0)
      {
LABEL_4:
        self->_unlimitedCapacity = 1;
LABEL_12:
        selfCopy = self;
        goto LABEL_13;
      }
    }

    self->_unlimitedCapacity = 0;
    [(EmbeddingCache *)self populateFifoStore];
    goto LABEL_12;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v13 = SKGLogInit();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [EmbeddingCache initWithParentFd:indexType:dbName:];
    }
  }

  selfCopy = 0;
LABEL_13:

  return selfCopy;
}

+ (id)initInstanceWithType:(int)type name:(id)name cacheOptions:(int64_t)options
{
  v6 = *&type;
  nameCopy = name;
  embeddingCaches = [self embeddingCaches];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
  v11 = [embeddingCaches objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = v11;
    goto LABEL_27;
  }

  v13 = embeddingCacheParentFolderPath(v6);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [defaultManager fileExistsAtPath:v13];

  if ((v15 & 1) == 0)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v16 = SKGLogInit();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [EmbeddingCache initInstanceWithType:v13 name:?];
      }
    }

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v28 = 0;
    v18 = [defaultManager2 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:&v28];
    v19 = v28;

    CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
    if ((v18 & 1) == 0)
    {
      if (CurrentLoggingLevel >= 2)
      {
        v26 = SKGLogInit();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          +[EmbeddingCache initInstanceWithType:name:cacheOptions:];
        }
      }

      goto LABEL_25;
    }

    if (CurrentLoggingLevel >= 2)
    {
      v21 = SKGLogInit();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [EmbeddingCache initInstanceWithType:v13 name:?];
      }
    }
  }

  v22 = open([v13 fileSystemRepresentation], 0x100000);
  if (v22 == -1)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v25 = SKGLogInit();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [EmbeddingCache initInstanceWithType:v13 name:? cacheOptions:?];
      }
    }

LABEL_25:
    v12 = 0;
    goto LABEL_26;
  }

  v23 = [[self alloc] initWithParentFd:v22 indexType:v6 dbName:nameCopy cacheOptions:options];
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
  [embeddingCaches setObject:v23 forKeyedSubscript:v24];

  v12 = v23;
LABEL_26:

LABEL_27:

  return v12;
}

- (BOOL)put:(const char *)put value:(id)value bundle:(const char *)bundle
{
  v16 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (put && (v9 = strlen(put), v10 = MurmurHash3_x86_32(put, v9), -[EmbeddingCache dbWriteValueWithKey:data:dataLen:](self, "dbWriteValueWithKey:data:dataLen:", v10, [valueCopy bytes], objc_msgSend(valueCopy, "length"))))
  {
    if (!self->_unlimitedCapacity)
    {
      p_fifo = &self->_fifo;
      self->_fifo.index %= 100000;
      if ([(EmbeddingCache *)self itemCount]>= 0x186A1)
      {
        [(EmbeddingCache *)self deleteFromDbForOid:p_fifo->_data[self->_fifo.index]];
      }

      p_fifo->_data[self->_fifo.index++] = v10;
    }

    if (self->_stringFd)
    {
      *__str = 0u;
      v15 = 0u;
      snprintf(__str, 0x20uLL, "#ADD 0x%016llx\n", v10);
      strlen(__str);
      fd_write();
      strlen(bundle);
      fd_write();
      v12 = 1;
      fd_write();
      strlen(put);
      fd_write();
      fd_write();
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)get:(const char *)get bundle:(const char *)bundle
{
  v11 = *MEMORY[0x277D85DE8];
  if (!get)
  {
    data = [MEMORY[0x277CBEA90] data];
    goto LABEL_9;
  }

  v6 = strlen(get);
  data = [(EmbeddingCache *)self dbFetchValueWithKey:MurmurHash3_x86_32(get, v6)];
  if ([data length])
  {
    ++self->_stats.hitCount;
    if (!self->_stringFd)
    {
      goto LABEL_9;
    }

    *__str = 0u;
    v10 = 0u;
    snprintf(__str, 0x20uLL, "#HIT 0x%016llx\n");
  }

  else
  {
    ++self->_stats.missCount;
    if (!self->_stringFd)
    {
      goto LABEL_9;
    }

    *__str = 0u;
    v10 = 0u;
    snprintf(__str, 0x20uLL, "#MISS 0x%016llx\n");
  }

  strlen(__str);
  fd_write();
LABEL_9:

  return data;
}

- (void)dbWriteValueWithKey:data:dataLen:.cold.1()
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)dbWriteValueWithKey:data:dataLen:.cold.2()
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)dbFetchValueWithKey:.cold.1()
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

+ (void)initInstanceWithType:(void *)a1 name:.cold.1(void *a1)
{
  [a1 UTF8String];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

+ (void)initInstanceWithType:name:.cold.2()
{
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)initInstanceWithType:(void *)a1 name:.cold.3(void *a1)
{
  [a1 UTF8String];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

+ (void)initInstanceWithType:(void *)a1 name:.cold.4(void *a1)
{
  __error();
  [a1 fileSystemRepresentation];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)deleteFromDb:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

+ (void)initInstanceWithType:name:cacheOptions:.cold.2()
{
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)initInstanceWithType:(void *)a1 name:cacheOptions:.cold.4(void *a1)
{
  __error();
  [a1 fileSystemRepresentation];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)deleteFromDbForOid:.cold.1()
{
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end