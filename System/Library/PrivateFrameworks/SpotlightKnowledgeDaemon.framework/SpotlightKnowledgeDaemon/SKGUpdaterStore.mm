@interface SKGUpdaterStore
+ (id)instanceForIndexType:(int)type;
+ (id)lock;
+ (id)stores;
+ (void)flushAndCommitAll;
+ (void)purgeAllWithUUID:(id)d listenerType:(int)type indexType:(int)indexType;
- (BOOL)checkPriorityForBundleID:(const char *)d identifier:(const char *)identifier UUID:(const char *)iD serialNumber:(unint64_t)number defaultIfNotExists:(BOOL)exists;
- (BOOL)enumerateItems:(id)items;
- (BOOL)flushAndCommit;
- (BOOL)markForDeleteDBO:(db_obj *)o purgeContext:(id *)context;
- (BOOL)markPriorityForBundleID:(const char *)d identifier:(const char *)identifier UUID:(const char *)iD serialNumber:(unint64_t)number flag:(BOOL)flag;
- (BOOL)removePriorityForBundleID:(const char *)d identifier:(const char *)identifier UUID:(const char *)iD serialNumber:(unint64_t)number;
- (BOOL)writeLanguageForBundleID:(const char *)d identifier:(const char *)identifier UUID:(const char *)iD serialNumber:(unint64_t)number language:(const char *)language;
- (BOOL)writeSerialNumberToBundleID:(const char *)d identifier:(const char *)identifier UUID:(const char *)iD serialNumber:(unint64_t)number listenerType:(int)type;
- (BOOL)writeUpdaterStatus:(int)status UUID:(const char *)d serialNumber:(unint64_t)number;
- (SKGUpdaterStore)initWithParentFd:(int)fd indexType:(int)type;
- (db_obj)getDBOWithOID:(int64_t)d;
- (id)readLanguageFromBundleID:(const char *)d identifier:(const char *)identifier UUID:(const char *)iD serialNumber:(unint64_t)number;
- (unint64_t)readSerialNumberFromBundleID:(const char *)d identifier:(const char *)identifier UUID:(const char *)iD listenerType:(int)type;
- (unint64_t)readUpdaterStatus:(int)status UUID:(const char *)d;
- (void)closeAndDeleteStore;
- (void)dealloc;
- (void)flushAndCommit;
- (void)purgeAllWithUUID:(id)d listenerType:(int)type;
- (void)purgeAllWithUUIDImpl:(id)impl listenerType:(int)type;
- (void)setProtectionClassForFolder:(int)folder protectionClass:(int)class;
@end

@implementation SKGUpdaterStore

+ (id)stores
{
  if (stores_onceToken != -1)
  {
    +[SKGUpdaterStore stores];
  }

  v3 = stores_stores;

  return v3;
}

void __25__SKGUpdaterStore_stores__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = stores_stores;
  stores_stores = v0;
}

+ (id)lock
{
  if (lock_onceToken != -1)
  {
    +[SKGUpdaterStore lock];
  }

  v3 = lock_lock;

  return v3;
}

void __23__SKGUpdaterStore_lock__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v1 = lock_lock;
  lock_lock = v0;
}

+ (id)instanceForIndexType:(int)type
{
  v3 = *&type;
  lock = [self lock];
  [lock lock];

  stores = [self stores];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v8 = [stores objectForKeyedSubscript:v7];

  if (!v8)
  {
    v12 = sdbFolderPathWithProtectionClass(v3);
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v14 = [defaultManager fileExistsAtPath:v12];

    if ((v14 & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v27 = 0;
      v16 = [defaultManager2 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v27];
      v17 = v27;

      if ((v16 & 1) == 0)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v24 = SKGLogInit();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            +[SKGUpdaterStore instanceForIndexType:];
          }
        }

        lock2 = [self lock];
        [lock2 unlock];

        goto LABEL_22;
      }
    }

    v18 = open([v12 fileSystemRepresentation], 0x100000);
    if (v18 != -1)
    {
      v19 = [[self alloc] initWithParentFd:v18 indexType:v3];
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
      [stores setObject:v19 forKeyedSubscript:v20];

      lock3 = [self lock];
      [lock3 unlock];

      v11 = v19;
LABEL_23:

      goto LABEL_24;
    }

    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v22 = SKGLogInit();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [SKGUpdaterStore instanceForIndexType:v12];
      }
    }

    lock4 = [self lock];
    [lock4 unlock];

LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

  v8[6] = v3;
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v9 = SKGLogInit();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[SKGUpdaterStore instanceForIndexType:];
    }
  }

  lock5 = [self lock];
  [lock5 unlock];

  v11 = v8;
LABEL_24:

  return v11;
}

- (void)purgeAllWithUUID:(id)d listenerType:(int)type
{
  p_purgeInProgress = &self->purgeInProgress;
  if ((atomic_exchange(&self->purgeInProgress._Value, 1u) & 1) == 0)
  {
    [(SKGUpdaterStore *)self purgeAllWithUUIDImpl:d listenerType:*&type];
    atomic_store(0, p_purgeInProgress);
  }
}

- (void)purgeAllWithUUIDImpl:(id)impl listenerType:(int)type
{
  v4 = *&type;
  v77 = *MEMORY[0x277D85DE8];
  implCopy = impl;
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v7 = SKGLogInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_DEFAULT, "SKGUpdaterStore[%@]#purgeAllWithUUID starting purge", buf, 0xCu);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v54 = implCopy;
  v9 = -[SKGUpdaterStore readUpdaterStatus:UUID:](self, "readUpdaterStatus:UUID:", v4, [v54 UTF8String]);
  v10 = v8;
  if (v9)
  {
    v11 = v9;
    v12 = v54;
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3254779904;
    v68[2] = __53__SKGUpdaterStore_purgeAllWithUUIDImpl_listenerType___block_invoke;
    v68[3] = &unk_2846CBCA0;
    v68[4] = self;
    v70 = v11;
    v71 = v4;
    v72 = v12;
    v55 = v72;
    v53 = v10;
    v13 = v10;
    v69 = v13;
    [(SKGUpdaterStore *)self enumerateItems:v68];
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v64 objects:v76 count:16];
    obj = v14;
    if (!v15)
    {
      v21 = 0;
      goto LABEL_44;
    }

    v16 = 0;
    v51 = *v65;
    v17 = MEMORY[0x277D294F8];
    v18 = MEMORY[0x277D29508];
    while (1)
    {
      v19 = 0;
      v50 = v15;
      v20 = v16;
      do
      {
        v21 = v20;
        if (*v65 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v64 + 1) + 8 * v19);
        v63 = 0;
        makeThreadId();
        atomic_fetch_add_explicit(MEMORY[0x277D294F0], 1u, memory_order_relaxed);
        v62 = 0;
        v61 = 0;
        v60 = 0;
        v48 = v17[1];
        v49 = *v17;
        *buf = *v17;
        *&buf[16] = v48;
        v46 = v17[3];
        v47 = v17[2];
        v74 = v47;
        v75 = v46;
        v23 = setThreadIdAndInfo();
        v61 = __PAIR64__(HIDWORD(v23), v24);
        v62 = v23;
        v60 = v25;
        v26 = *(v18 + 72 * v23 + 8) + 320 * HIDWORD(v23);
        *(v26 + 216) = 0;
        v27 = *(v26 + 312);
        v28 = *(v26 + 224);
        if (v28)
        {
          v28(*(v26 + 288));
        }

        *buf = v62;
        v59 = HIDWORD(v61);
        v58 = __PAIR64__(v61, v60);
        if (_setjmp(v26))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [SKGUpdaterStore purgeAllWithUUIDImpl:v57 listenerType:&v57[1]];
          }

          *(v26 + 312) = v27;
          CIOnThreadCleanUpReset();
          dropThreadId();
          CICleanUpReset();
LABEL_17:
          atomic_fetch_add_explicit(MEMORY[0x277D294F0], 1u, memory_order_relaxed);
          v62 = 0;
          v61 = 0;
          v60 = 0;
          *buf = v49;
          *&buf[16] = v48;
          v74 = v47;
          v75 = v46;
          v29 = setThreadIdAndInfo();
          v61 = __PAIR64__(HIDWORD(v29), v30);
          v62 = v29;
          v60 = v31;
          v32 = *(v18 + 72 * v29 + 8) + 320 * HIDWORD(v29);
          *(v32 + 216) = 0;
          v33 = *(v32 + 312);
          v34 = *(v32 + 224);
          if (v34)
          {
            v34(*(v32 + 288));
          }

          *buf = v62;
          v59 = HIDWORD(v61);
          v58 = __PAIR64__(v61, v60);
          if (_setjmp(v32))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [SKGUpdaterStore purgeAllWithUUIDImpl:v56 listenerType:&v56[1]];
            }

            *(v32 + 312) = v33;
            CIOnThreadCleanUpReset();
            dropThreadId();
            CICleanUpReset();
            goto LABEL_23;
          }

          v40 = db_delete_obj();
          v41 = *(v18 + 72 * *buf + 8) + 320 * v59;
          *(v41 + 312) = v33;
          v42 = *(v41 + 232);
          if (v42)
          {
            v42(*(v41 + 288));
          }

          dropThreadId();
          if (v40)
          {
            v43 = v40;
            if (SKGLogGetCurrentLoggingLevel() >= 2)
            {
              v44 = SKGLogInit();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                *&buf[4] = self;
                *&buf[12] = 1024;
                *&buf[14] = v43;
                _os_log_error_impl(&dword_231B25000, v44, OS_LOG_TYPE_ERROR, "SKGUpdaterStore[%@]#purgeAllWithUUID failed to delete dbo with rc: %d", buf, 0x12u);
              }
            }
          }

          else
          {
LABEL_23:
            ++v21;
          }

          MEMORY[0x2383779F0](v63);
          goto LABEL_25;
        }

        [v22 longLongValue];
        v35 = db_get_obj();
        v36 = *(v18 + 72 * *buf + 8) + 320 * v59;
        *(v36 + 312) = v27;
        v37 = *(v36 + 232);
        if (v37)
        {
          v37(*(v36 + 288));
        }

        dropThreadId();
        if (!v35)
        {
          goto LABEL_17;
        }

        v38 = v35;
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v39 = SKGLogInit();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = self;
            *&buf[12] = 1024;
            *&buf[14] = v38;
            _os_log_error_impl(&dword_231B25000, v39, OS_LOG_TYPE_ERROR, "SKGUpdaterStore[%@]#purgeAllWithUUID failed to get dbo with rc: %d", buf, 0x12u);
          }
        }

LABEL_25:
        ++v19;
        v20 = v21;
      }

      while (v50 != v19);
      v15 = [obj countByEnumeratingWithState:&v64 objects:v76 count:16];
      v16 = v21;
      if (!v15)
      {
LABEL_44:

        [(SKGUpdaterStore *)self flushAndCommit];
        if (SKGLogGetCurrentLoggingLevel() >= 4)
        {
          v45 = SKGLogInit();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *&buf[4] = self;
            *&buf[12] = 2048;
            *&buf[14] = v21;
            _os_log_impl(&dword_231B25000, v45, OS_LOG_TYPE_DEFAULT, "SKGUpdaterStore[%@]#purgeAllWithUUID deleted %lld dbos", buf, 0x16u);
          }
        }

        v10 = v53;
        break;
      }
    }
  }
}

uint64_t __53__SKGUpdaterStore_purgeAllWithUUIDImpl_listenerType___block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v6 = *(a1 + 64);
  v12 = v6;
  if (v5)
  {
    if ([v5 markForDeleteDBO:a2 purgeContext:&v10])
    {
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x277CCABB0] numberWithLongLong:*a2];
      [v7 addObject:v8];
    }
  }

  else
  {
  }

  objc_autoreleasePoolPop(v4);
  return 1;
}

+ (void)purgeAllWithUUID:(id)d listenerType:(int)type indexType:(int)indexType
{
  v6 = *&type;
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v9 = SKGLogInit();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[SKGUpdaterStore purgeAllWithUUID:listenerType:indexType:];
    }
  }

  lock = [self lock];
  [lock lock];

  stores = [self stores];
  lock2 = [self lock];
  [lock2 unlock];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  allValues = [stores allValues];
  v14 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(allValues);
        }

        v18 = *(*(&v19 + 1) + 8 * v17);
        if (v18 && v18[6] == indexType)
        {
          [v18 purgeAllWithUUID:dCopy listenerType:v6];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }
}

+ (void)flushAndCommitAll
{
  v16 = *MEMORY[0x277D85DE8];
  lock = [self lock];
  [lock lock];

  stores = [self stores];
  lock2 = [self lock];
  [lock2 unlock];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [stores allValues];
  v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v11 + 1) + 8 * v10++) flushAndCommit];
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (SKGUpdaterStore)initWithParentFd:(int)fd indexType:(int)type
{
  v5 = *&fd;
  v49 = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = SKGUpdaterStore;
  v6 = [(SKGUpdaterStore *)&v36 init];
  if (!v6)
  {
    goto LABEL_31;
  }

  v7 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  systemOidLock = v6->systemOidLock;
  v6->systemOidLock = v7;

  atomic_store(0, &v6->purgeInProgress);
  v9 = check_crash_state();
  if (v9)
  {
    v10 = v9;
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v11 = SKGLogInit();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SKGUpdaterStore initWithParentFd:indexType:];
      }
    }

    bzero(v48, 0x400uLL);
    bzero(v47, 0x414uLL);
    faccurate_realpath(v5, v48);
    close(v5);
    __sprintf_chk(v47, 0, 0x414uLL, "%s_corrupt", v48);
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v47];
    [defaultManager removeItemAtPath:v13 error:0];

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v48];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:v47];
    v35 = 0;
    [defaultManager2 moveItemAtPath:v15 toPath:v16 error:&v35];
    v17 = v35;

    if (v17)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v18 = SKGLogInit();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v38 = v48;
          v39 = 2080;
          v40 = v47;
          v41 = 1024;
          typeCopy = type;
          v43 = 1024;
          v44 = v10;
          v45 = 2112;
          v46 = v17;
          _os_log_error_impl(&dword_231B25000, v18, OS_LOG_TYPE_ERROR, "SKGUpdaterStore#initWithParentFd unable to move %s to %s, indexType:%d, crash_state:%d err:%@", buf, 0x2Cu);
        }
      }

      defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:v48];
      [defaultManager3 removeItemAtPath:v20 error:0];
    }

    v21 = sdbFolderPathWithProtectionClass(type);

    defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
    v34 = 0;
    v23 = [defaultManager4 createDirectoryAtPath:v21 withIntermediateDirectories:1 attributes:0 error:&v34];
    v24 = v34;

    if ((v23 & 1) == 0)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v29 = SKGLogInit();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          +[SKGUpdaterStore instanceForIndexType:];
        }
      }

      goto LABEL_24;
    }

    v5 = open([v21 fileSystemRepresentation], 0x100000);
  }

  v6->_parentFd = v5;
  name = v6->_name;
  v6->_name = @"skg_store.db";

  si_init_indexing_zone();
  [(SKGUpdaterStore *)v6 setProtectionClassForFolder:v5 protectionClass:3];
  datastore = db_get_datastore();
  if (datastore)
  {
    v27 = datastore;
    if (SKGLogGetCurrentLoggingLevel() >= 7)
    {
      v28 = SKGLogInit();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [SKGUpdaterStore initWithParentFd:indexType:];
      }

LABEL_29:

      goto LABEL_30;
    }

    goto LABEL_30;
  }

  v27 = db_create_datastore();
  CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
  if (v27)
  {
    if (CurrentLoggingLevel >= 7)
    {
      v28 = SKGLogInit();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [SKGUpdaterStore initWithParentFd:indexType:];
      }

      goto LABEL_29;
    }

LABEL_30:
    v6->_dsi = v27;
    v6->_indexType = type;
LABEL_31:
    v30 = v6;
    goto LABEL_32;
  }

  if (CurrentLoggingLevel >= 2)
  {
    v33 = SKGLogInit();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [SKGUpdaterStore initWithParentFd:indexType:];
    }
  }

LABEL_24:
  v30 = 0;
LABEL_32:

  return v30;
}

- (void)dealloc
{
  if (self->_dsi)
  {
    [(SKGUpdaterStore *)self flushAndCommit];
    db_release_datastore();
  }

  parentFd = self->_parentFd;
  if (parentFd)
  {
    close(parentFd);
  }

  v4.receiver = self;
  v4.super_class = SKGUpdaterStore;
  [(SKGUpdaterStore *)&v4 dealloc];
}

- (BOOL)writeSerialNumberToBundleID:(const char *)d identifier:(const char *)identifier UUID:(const char *)iD serialNumber:(unint64_t)number listenerType:(int)type
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%s:%u", "SerialNumber", iD, *&type];
  obj = db_create_obj();
  v31 = obj;
  if (obj)
  {
    v12 = obj;
    strlen(identifier);
    strlen(d);
    *v12 = si_compute_oid_for_identifier_bundle_id();
    [v10 UTF8String];
    if (db_add_field())
    {
      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v13 = SKGLogInit();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
        if (v14)
        {
          [SKGUpdaterStore writeSerialNumberToBundleID:identifier:UUID:serialNumber:listenerType:];
LABEL_6:
          LOBYTE(v14) = 0;
        }

LABEL_24:
        v27 = v14;

        v15 = v27;
        goto LABEL_26;
      }

LABEL_25:
      v15 = 0;
      goto LABEL_26;
    }

    makeThreadId();
    atomic_fetch_add_explicit(MEMORY[0x277D294F0], 1u, memory_order_relaxed);
    v16 = *(MEMORY[0x277D294F8] + 16);
    *buf = *MEMORY[0x277D294F8];
    *&buf[16] = v16;
    v17 = *(MEMORY[0x277D294F8] + 48);
    v34 = *(MEMORY[0x277D294F8] + 32);
    v35 = v17;
    v18 = setThreadIdAndInfo();
    v30 = v18;
    v19 = MEMORY[0x277D29508];
    v20 = *(MEMORY[0x277D29508] + 72 * v18 + 8) + 320 * HIDWORD(v18);
    v29 = HIDWORD(v18);
    *(v20 + 216) = 0;
    v21 = *(v20 + 312);
    v22 = *(v20 + 224);
    if (v22)
    {
      v22(*(v20 + 288));
    }

    *buf = v30;
    if (_setjmp(v20))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SKGUpdaterStore writeSerialNumberToBundleID:identifier:UUID:serialNumber:listenerType:];
      }

      *(v20 + 312) = v21;
      CIOnThreadCleanUpReset();
      dropThreadId();
      CICleanUpReset();
    }

    else
    {
      v24 = db_store_obj();
      v25 = *(v19 + 72 * *buf + 8) + 320 * v29;
      *(v25 + 312) = v21;
      v26 = *(v25 + 232);
      if (v26)
      {
        v26(*(v25 + 288));
      }

      dropThreadId();
      if (v24)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v13 = SKGLogInit();
          v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
          if (!v14)
          {
            goto LABEL_24;
          }

          [SKGUpdaterStore writeSerialNumberToBundleID:identifier:UUID:serialNumber:listenerType:];
          goto LABEL_6;
        }

        goto LABEL_25;
      }
    }

    if (SKGLogGetCurrentLoggingLevel() < 7)
    {
      v15 = 1;
LABEL_26:
      MEMORY[0x2383779F0](v31);
      goto LABEL_27;
    }

    v23 = SKGLogInit();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218754;
      *&buf[4] = number;
      *&buf[12] = 2080;
      *&buf[14] = d;
      *&buf[22] = 2080;
      *&buf[24] = identifier;
      LOWORD(v34) = 1024;
      *(&v34 + 2) = type;
      _os_log_debug_impl(&dword_231B25000, v23, OS_LOG_TYPE_DEBUG, "SKGUpdaterStore#writeSerialNumberToBundleID written serialNumber: %llu to bundleID: %s, identifier: %s listenerType: %d", buf, 0x26u);
    }

    LOBYTE(v14) = 1;
    v13 = v23;
    goto LABEL_24;
  }

  v15 = 0;
LABEL_27:

  return v15;
}

- (unint64_t)readSerialNumberFromBundleID:(const char *)d identifier:(const char *)identifier UUID:(const char *)iD listenerType:(int)type
{
  v6 = *&type;
  v35 = *MEMORY[0x277D85DE8];
  strlen(identifier);
  strlen(d);
  si_compute_oid_for_identifier_bundle_id();
  makeThreadId();
  atomic_fetch_add_explicit(MEMORY[0x277D294F0], 1u, memory_order_relaxed);
  v10 = *(MEMORY[0x277D294F8] + 16);
  *buf = *MEMORY[0x277D294F8];
  *&buf[16] = v10;
  v11 = *(MEMORY[0x277D294F8] + 48);
  *&buf[32] = *(MEMORY[0x277D294F8] + 32);
  v34 = v11;
  v12 = setThreadIdAndInfo();
  v32 = v12;
  v13 = MEMORY[0x277D29508];
  v14 = *(MEMORY[0x277D29508] + 72 * v12 + 8) + 320 * HIDWORD(v12);
  v31 = HIDWORD(v12);
  *(v14 + 216) = 0;
  v15 = *(v14 + 312);
  v16 = *(v14 + 224);
  if (v16)
  {
    v16(*(v14 + 288));
  }

  *buf = v32;
  if (_setjmp(v14))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SKGUpdaterStore writeSerialNumberToBundleID:identifier:UUID:serialNumber:listenerType:];
    }

    *(v14 + 312) = v15;
    CIOnThreadCleanUpReset();
    dropThreadId();
    CICleanUpReset();
LABEL_7:
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%s:%u", "SerialNumber", iD, v6];
    [v17 UTF8String];
    field = db_get_field();
    CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
    if (field)
    {
      if (CurrentLoggingLevel >= 7)
      {
        v20 = SKGLogInit();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413570;
          *&buf[4] = v17;
          *&buf[12] = 1024;
          *&buf[14] = field;
          *&buf[18] = 2048;
          *&buf[20] = 0;
          *&buf[28] = 2080;
          *&buf[30] = d;
          *&buf[38] = 2080;
          *&buf[40] = identifier;
          LOWORD(v34) = 1024;
          *(&v34 + 2) = v6;
          _os_log_debug_impl(&dword_231B25000, v20, OS_LOG_TYPE_DEBUG, "SKGUpdaterStore#readSerialNumberFromBundleID Could not find field %@ err: %d serialNumber: %llu to bundleID: %s, identifier: %s listenerType: %d", buf, 0x36u);
        }
      }

      v21 = 0;
    }

    else
    {
      if (CurrentLoggingLevel >= 7)
      {
        v27 = SKGLogInit();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218754;
          *&buf[4] = MEMORY[0];
          *&buf[12] = 2080;
          *&buf[14] = d;
          *&buf[22] = 2080;
          *&buf[24] = identifier;
          *&buf[32] = 1024;
          *&buf[34] = v6;
          _os_log_debug_impl(&dword_231B25000, v27, OS_LOG_TYPE_DEBUG, "SKGUpdaterStore#readSerialNumberFromBundleID read serialNumber: %llu to bundleID: %s, identifier: %s listenerType: %d", buf, 0x26u);
        }
      }

      v21 = MEMORY[0];
    }

    v28 = v21;
    MEMORY[0x2383779F0](0);
    v26 = v28;
LABEL_26:
    v29 = v26;

    return v29;
  }

  obj = db_get_obj();
  v23 = *(v13 + 72 * *buf + 8) + 320 * v31;
  *(v23 + 312) = v15;
  v24 = *(v23 + 232);
  if (v24)
  {
    v24(*(v23 + 288));
  }

  dropThreadId();
  if (!obj)
  {
    goto LABEL_7;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v25 = SKGLogInit();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = d;
      *&buf[12] = 2080;
      *&buf[14] = identifier;
      *&buf[22] = 1024;
      *&buf[24] = obj;
      _os_log_debug_impl(&dword_231B25000, v25, OS_LOG_TYPE_DEBUG, "SKGUpdaterStore#readSerialNumberFromBundleID Could not find object-id for bundleID:%s identifier: %s err: %d", buf, 0x1Cu);
    }

    v26 = 0;
    v17 = v25;
    goto LABEL_26;
  }

  return 0;
}

- (BOOL)markPriorityForBundleID:(const char *)d identifier:(const char *)identifier UUID:(const char *)iD serialNumber:(unint64_t)number flag:(BOOL)flag
{
  v48 = *MEMORY[0x277D85DE8];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%s:", "Priority", iD];
  [v10 length];
  obj = db_create_obj();
  v44 = obj;
  if (obj)
  {
    dCopy = d;
    v13 = obj;
    v41 = dCopy;
    numberCopy = number;
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%llu:%s", "Priority", number, dCopy];
    strlen(identifier);
    [dCopy UTF8String];
    strlen([dCopy UTF8String]);
    *v13 = si_compute_oid_for_identifier_bundle_id();
    makeThreadId();
    v15 = MEMORY[0x277D294F0];
    atomic_fetch_add_explicit(MEMORY[0x277D294F0], 1u, memory_order_relaxed);
    v38 = *(MEMORY[0x277D294F8] + 16);
    v39 = *MEMORY[0x277D294F8];
    *buf = *MEMORY[0x277D294F8];
    *&buf[16] = v38;
    v36 = *(MEMORY[0x277D294F8] + 48);
    v37 = *(MEMORY[0x277D294F8] + 32);
    v46 = v37;
    v47 = v36;
    v16 = setThreadIdAndInfo();
    v42 = HIDWORD(v16);
    v43 = v16;
    v17 = MEMORY[0x277D29508];
    v18 = *(MEMORY[0x277D29508] + 72 * v16 + 8) + 320 * HIDWORD(v16);
    *(v18 + 216) = 0;
    v19 = *(v18 + 312);
    v20 = *(v18 + 224);
    if (v20)
    {
      v20(*(v18 + 288));
    }

    v21 = dCopy;
    *buf = v43;
    if (_setjmp(v18))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SKGUpdaterStore writeSerialNumberToBundleID:identifier:UUID:serialNumber:listenerType:];
      }

      *(v18 + 312) = v19;
      CIOnThreadCleanUpReset();
      dropThreadId();
      CICleanUpReset();
    }

    else
    {
      [v10 UTF8String];
      v28 = db_add_field();
      v29 = *(v17 + 72 * *buf + 8) + 320 * v42;
      *(v29 + 312) = v19;
      v30 = *(v29 + 232);
      if (v30)
      {
        v30(*(v29 + 288));
      }

      dropThreadId();
      if (v28)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v26 = SKGLogInit();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [SKGUpdaterStore markPriorityForBundleID:identifier:UUID:serialNumber:flag:];
          }

          goto LABEL_33;
        }

LABEL_35:
        v27 = 0;
        goto LABEL_36;
      }
    }

    atomic_fetch_add_explicit(v15, 1u, memory_order_relaxed);
    *buf = v39;
    *&buf[16] = v38;
    v46 = v37;
    v47 = v36;
    v22 = setThreadIdAndInfo();
    v23 = *(v17 + 72 * v22 + 8) + 320 * HIDWORD(v22);
    *(v23 + 216) = 0;
    v24 = *(v23 + 312);
    v25 = *(v23 + 224);
    if (v25)
    {
      v25(*(v23 + 288));
    }

    *buf = v22;
    if (_setjmp(v23))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SKGUpdaterStore writeSerialNumberToBundleID:identifier:UUID:serialNumber:listenerType:];
      }

      *(v23 + 312) = v24;
      CIOnThreadCleanUpReset();
      dropThreadId();
      CICleanUpReset();
LABEL_14:
      if (SKGLogGetCurrentLoggingLevel() < 7)
      {
        v27 = 1;
LABEL_36:
        MEMORY[0x2383779F0](v44);

        goto LABEL_37;
      }

      v26 = SKGLogInit();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        *&buf[4] = numberCopy;
        *&buf[12] = 2080;
        *&buf[14] = v41;
        *&buf[22] = 2080;
        *&buf[24] = identifier;
        _os_log_debug_impl(&dword_231B25000, v26, OS_LOG_TYPE_DEBUG, "SKGUpdaterStore#markPriorityForBundleID written serialNumber: %llu to bundleID: %s, identifier: %s", buf, 0x20u);
      }

      v27 = 1;
LABEL_34:

      goto LABEL_36;
    }

    v31 = db_store_obj();
    v32 = *(v17 + 72 * *buf + 8) + 320 * HIDWORD(v22);
    *(v32 + 312) = v24;
    v33 = *(v32 + 232);
    if (v33)
    {
      v33(*(v32 + 288));
    }

    dropThreadId();
    if (!v31)
    {
      goto LABEL_14;
    }

    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v34 = SKGLogInit();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [SKGUpdaterStore markPriorityForBundleID:identifier:UUID:serialNumber:flag:];
      }

      v26 = v34;
LABEL_33:
      v27 = 0;
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v27 = 0;
LABEL_37:

  return v27;
}

- (BOOL)checkPriorityForBundleID:(const char *)d identifier:(const char *)identifier UUID:(const char *)iD serialNumber:(unint64_t)number defaultIfNotExists:(BOOL)exists
{
  v32 = *MEMORY[0x277D85DE8];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%s:", "Priority", iD];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%llu:%s", "Priority", number, d];
  strlen(identifier);
  [v13 UTF8String];
  strlen([v13 UTF8String]);
  v14 = [(SKGUpdaterStore *)self getDBOWithOID:si_compute_oid_for_identifier_bundle_id()];
  if (v14)
  {
    v15 = v14;
    [v12 UTF8String];
    field = db_get_field();
    if (field)
    {
      v17 = field;
      if (SKGLogGetCurrentLoggingLevel() >= 7)
      {
        v18 = SKGLogInit();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413314;
          v23 = v12;
          v24 = 1024;
          v25 = v17;
          v26 = 2048;
          numberCopy = number;
          v28 = 2080;
          dCopy = d;
          v30 = 2080;
          identifierCopy = identifier;
          _os_log_debug_impl(&dword_231B25000, v18, OS_LOG_TYPE_DEBUG, "SKGUpdaterStore#checkPriorityForBundleID Could not find field %@ err: %d serialNumber: %llu to bundleID: %s, identifier: %s", buf, 0x30u);
        }
      }

      MEMORY[0x2383779F0](v15);
    }

    else
    {
      v20 = MEMORY[0];
      MEMORY[0x2383779F0](v15);
      exists = v20 == 1;
    }
  }

  else if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v19 = SKGLogInit();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [SKGUpdaterStore checkPriorityForBundleID:identifier:UUID:serialNumber:defaultIfNotExists:];
    }
  }

  return exists;
}

- (BOOL)removePriorityForBundleID:(const char *)d identifier:(const char *)identifier UUID:(const char *)iD serialNumber:(unint64_t)number
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%llu:%s", identifier, iD, "Priority", number, d];
  strlen(identifier);
  [v8 UTF8String];
  v9 = v8;
  strlen([v8 UTF8String]);
  v10 = si_compute_oid_for_identifier_bundle_id();
  v11 = [(SKGUpdaterStore *)self getDBOWithOID:v10];
  if (v11)
  {
    v12 = v11;
    makeThreadId();
    atomic_fetch_add_explicit(MEMORY[0x277D294F0], 1u, memory_order_relaxed);
    v13 = *(MEMORY[0x277D294F8] + 16);
    *buf = *MEMORY[0x277D294F8];
    *&buf[16] = v13;
    v14 = *(MEMORY[0x277D294F8] + 48);
    v29 = *(MEMORY[0x277D294F8] + 32);
    v30 = v14;
    v15 = setThreadIdAndInfo();
    v27 = v15;
    v16 = MEMORY[0x277D29508];
    v17 = *(MEMORY[0x277D29508] + 72 * v15 + 8) + 320 * HIDWORD(v15);
    v26 = HIDWORD(v15);
    *(v17 + 216) = 0;
    v18 = *(v17 + 312);
    v19 = *(v17 + 224);
    if (v19)
    {
      v19(*(v17 + 288));
    }

    *buf = v27;
    if (_setjmp(v17))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SKGUpdaterStore writeSerialNumberToBundleID:identifier:UUID:serialNumber:listenerType:];
      }

      *(v17 + 312) = v18;
      CIOnThreadCleanUpReset();
      v20 = 1;
      dropThreadId();
      CICleanUpReset();
      MEMORY[0x2383779F0](v12);
    }

    else
    {
      v21 = db_delete_obj();
      v22 = *(v16 + 72 * *buf + 8) + 320 * v26;
      *(v22 + 312) = v18;
      v23 = *(v22 + 232);
      if (v23)
      {
        v23(*(v22 + 288));
      }

      dropThreadId();
      MEMORY[0x2383779F0](v12);
      if (v21)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v24 = SKGLogInit();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            *&buf[4] = self;
            *&buf[12] = 2048;
            *&buf[14] = v10;
            *&buf[22] = 1024;
            *&buf[24] = v21;
            _os_log_error_impl(&dword_231B25000, v24, OS_LOG_TYPE_ERROR, "SKGUpdaterStore[%@]#removePriorityForBundleID failed to delete dbo: %lld with rc: %d", buf, 0x1Cu);
          }
        }

        v20 = 0;
      }

      else
      {
        v20 = 1;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

- (BOOL)writeLanguageForBundleID:(const char *)d identifier:(const char *)identifier UUID:(const char *)iD serialNumber:(unint64_t)number language:(const char *)language
{
  v44 = *MEMORY[0x277D85DE8];
  v42 = 0;
  v43 = 0;
  numberCopy = number;
  if (__strlcpy_chk() < 0x10)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%s", "Language", iD];
    strlen(identifier);
    strlen(d);
    v15 = si_compute_oid_for_identifier_bundle_id();
    obj = [(SKGUpdaterStore *)self getDBOWithOID:v15];
    v37 = obj;
    if (!obj)
    {
      obj = db_create_obj();
      v37 = obj;
      if (!obj)
      {
        LOBYTE(v13) = 0;
        goto LABEL_34;
      }
    }

    obj->var0 = v15;
    [v14 UTF8String];
    if (db_add_field())
    {
      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v17 = SKGLogInit();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
        if (v18)
        {
          [SKGUpdaterStore writeLanguageForBundleID:identifier:UUID:serialNumber:language:];
LABEL_12:
          LOBYTE(v18) = 0;
        }

LABEL_31:
        v32 = v18;

        v28 = v32;
        goto LABEL_33;
      }

LABEL_32:
      v28 = 0;
      goto LABEL_33;
    }

    makeThreadId();
    atomic_fetch_add_explicit(MEMORY[0x277D294F0], 1u, memory_order_relaxed);
    v20 = *(MEMORY[0x277D294F8] + 16);
    *buf = *MEMORY[0x277D294F8];
    *&buf[16] = v20;
    v21 = *(MEMORY[0x277D294F8] + 48);
    v39 = *(MEMORY[0x277D294F8] + 32);
    v40 = v21;
    v22 = setThreadIdAndInfo();
    v36 = v22;
    v23 = MEMORY[0x277D29508];
    v24 = *(MEMORY[0x277D29508] + 72 * v22 + 8) + 320 * HIDWORD(v22);
    v35 = HIDWORD(v22);
    *(v24 + 216) = 0;
    v25 = *(v24 + 312);
    v26 = *(v24 + 224);
    if (v26)
    {
      v26(*(v24 + 288));
    }

    *buf = v36;
    if (_setjmp(v24))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SKGUpdaterStore writeSerialNumberToBundleID:identifier:UUID:serialNumber:listenerType:];
      }

      *(v24 + 312) = v25;
      CIOnThreadCleanUpReset();
      dropThreadId();
      CICleanUpReset();
    }

    else
    {
      v29 = db_store_obj();
      v30 = *(v23 + 72 * *buf + 8) + 320 * v35;
      *(v30 + 312) = v25;
      v31 = *(v30 + 232);
      if (v31)
      {
        v31(*(v30 + 288));
      }

      dropThreadId();
      if (v29)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v17 = SKGLogInit();
          v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
          if (!v18)
          {
            goto LABEL_31;
          }

          [SKGUpdaterStore writeLanguageForBundleID:identifier:UUID:serialNumber:language:];
          goto LABEL_12;
        }

        goto LABEL_32;
      }
    }

    if (SKGLogGetCurrentLoggingLevel() < 7)
    {
      v28 = 1;
LABEL_33:
      v33 = v28;
      MEMORY[0x2383779F0](v37);
      LOBYTE(v13) = v33;
      goto LABEL_34;
    }

    v27 = SKGLogInit();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      *&buf[4] = number;
      *&buf[12] = 2080;
      *&buf[14] = d;
      *&buf[22] = 2080;
      *&buf[24] = identifier;
      _os_log_debug_impl(&dword_231B25000, v27, OS_LOG_TYPE_DEBUG, "SKGUpdaterStore#writeLanguageForBundleID written serialNumber: %llu to bundleID: %s, identifier: %s", buf, 0x20u);
    }

    LOBYTE(v18) = 1;
    v17 = v27;
    goto LABEL_31;
  }

  if (SKGLogGetCurrentLoggingLevel() < 2)
  {
    return 0;
  }

  v12 = SKGLogInit();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (v13)
  {
    [SKGUpdaterStore writeLanguageForBundleID:identifier:UUID:serialNumber:language:];
    LOBYTE(v13) = 0;
  }

  v14 = v12;
LABEL_34:
  v34 = v13;

  return v34;
}

- (id)readLanguageFromBundleID:(const char *)d identifier:(const char *)identifier UUID:(const char *)iD serialNumber:(unint64_t)number
{
  v38 = *MEMORY[0x277D85DE8];
  strlen(identifier);
  strlen(d);
  si_compute_oid_for_identifier_bundle_id();
  makeThreadId();
  atomic_fetch_add_explicit(MEMORY[0x277D294F0], 1u, memory_order_relaxed);
  v10 = *(MEMORY[0x277D294F8] + 16);
  *buf = *MEMORY[0x277D294F8];
  *&buf[16] = v10;
  v11 = *(MEMORY[0x277D294F8] + 48);
  *&buf[32] = *(MEMORY[0x277D294F8] + 32);
  v37 = v11;
  v12 = setThreadIdAndInfo();
  LODWORD(v34) = v12;
  v13 = MEMORY[0x277D29508];
  v14 = *(MEMORY[0x277D29508] + 72 * v12 + 8) + 320 * HIDWORD(v12);
  v33 = HIDWORD(v12);
  *(v14 + 216) = 0;
  v15 = *(v14 + 312);
  v16 = *(v14 + 224);
  if (v16)
  {
    v16(*(v14 + 288));
  }

  *buf = v34;
  if (_setjmp(v14))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SKGUpdaterStore writeSerialNumberToBundleID:identifier:UUID:serialNumber:listenerType:];
    }

    *(v14 + 312) = v15;
    CIOnThreadCleanUpReset();
    dropThreadId();
    CICleanUpReset();
    goto LABEL_7;
  }

  obj = db_get_obj();
  v22 = *(v13 + 72 * *buf + 8) + 320 * v33;
  *(v22 + 312) = v15;
  v23 = *(v22 + 232);
  if (v23)
  {
    v23(*(v22 + 288));
  }

  dropThreadId();
  if (!obj)
  {
LABEL_7:
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%s", "Language", iD];
    [v17 UTF8String];
    field = db_get_field();
    if (field)
    {
      v19 = field;
      if (SKGLogGetCurrentLoggingLevel() >= 7)
      {
        v20 = SKGLogInit();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413314;
          *&buf[4] = v17;
          *&buf[12] = 1024;
          *&buf[14] = v19;
          *&buf[18] = 2048;
          *&buf[20] = number;
          *&buf[28] = 2080;
          *&buf[30] = d;
          *&buf[38] = 2080;
          *&buf[40] = identifier;
          _os_log_debug_impl(&dword_231B25000, v20, OS_LOG_TYPE_DEBUG, "SKGUpdaterStore#readLanguageFromBundleID Could not find field %@ err: %d serialNumber: %llu to bundleID: %s, identifier: %s", buf, 0x30u);
        }
      }

      MEMORY[0x2383779F0](0);
      goto LABEL_33;
    }

    v26 = MEMORY[8];
    CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
    if (v26 == 24)
    {
      if (CurrentLoggingLevel >= 7)
      {
        v28 = SKGLogInit();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [SKGUpdaterStore readLanguageFromBundleID:identifier:UUID:serialNumber:];
        }
      }

      v34 = MEMORY[0];
      v35 = MEMORY[0x10];
      MEMORY[0x2383779F0](0);
      if (HIBYTE(v35))
      {
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v29 = SKGLogInit();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            [SKGUpdaterStore readLanguageFromBundleID:identifier:UUID:serialNumber:];
          }

LABEL_32:
        }
      }

      else
      {
        if (v34 == number)
        {
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v34 + 8];
          goto LABEL_34;
        }

        if (SKGLogGetCurrentLoggingLevel() >= 7)
        {
          v29 = SKGLogInit();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            *&buf[4] = &v34 + 8;
            *&buf[12] = 2080;
            *&buf[14] = d;
            *&buf[22] = 2080;
            *&buf[24] = identifier;
            _os_log_debug_impl(&dword_231B25000, v29, OS_LOG_TYPE_DEBUG, "SKGUpdaterStore#readLanguageFromBundleID illegal language: %s to bundleID: %s, identifier: %s", buf, 0x20u);
          }

          goto LABEL_32;
        }
      }
    }

    else if (CurrentLoggingLevel >= 7)
    {
      v29 = SKGLogInit();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [SKGUpdaterStore readLanguageFromBundleID:identifier:UUID:serialNumber:];
      }

      goto LABEL_32;
    }

LABEL_33:
    v25 = 0;
LABEL_34:
    v30 = v25;

    v31 = v30;
    goto LABEL_35;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v24 = SKGLogInit();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = d;
      *&buf[12] = 2080;
      *&buf[14] = identifier;
      *&buf[22] = 1024;
      *&buf[24] = obj;
      _os_log_debug_impl(&dword_231B25000, v24, OS_LOG_TYPE_DEBUG, "SKGUpdaterStore#readLanguageFromBundleID Could not find object-id for bundleID:%s identifier: %s err: %d", buf, 0x1Cu);
    }

    v25 = 0;
    v17 = v24;
    goto LABEL_34;
  }

  v31 = 0;
LABEL_35:

  return v31;
}

- (BOOL)writeUpdaterStatus:(int)status UUID:(const char *)d serialNumber:(unint64_t)number
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%u", d, *&status];
  [(NSLock *)self->systemOidLock lock];
  v28 = [(SKGUpdaterStore *)self getDBOWithOID:0];
  if (!v28)
  {
    [v8 length];
    obj = db_create_obj();
    v28 = obj;
    if (!obj)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v21 = SKGLogInit();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [SKGUpdaterStore writeUpdaterStatus:UUID:serialNumber:];
        }
      }

      goto LABEL_10;
    }

    obj->var0 = 0;
  }

  [v8 UTF8String];
  LODWORD(v25) = 8;
  if (db_add_field())
  {
    if (SKGLogGetCurrentLoggingLevel() < 2)
    {
LABEL_9:
      MEMORY[0x2383779F0](v28);
LABEL_10:
      [(NSLock *)self->systemOidLock unlock];
      v11 = 0;
      goto LABEL_22;
    }

    v10 = SKGLogInit();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SKGUpdaterStore writeUpdaterStatus:v8 UUID:? serialNumber:?];
    }

LABEL_8:

    goto LABEL_9;
  }

  makeThreadId();
  atomic_fetch_add_explicit(MEMORY[0x277D294F0], 1u, memory_order_relaxed);
  v12 = *(MEMORY[0x277D294F8] + 16);
  *buf = *MEMORY[0x277D294F8];
  *&buf[16] = v12;
  v13 = *(MEMORY[0x277D294F8] + 48);
  v31 = *(MEMORY[0x277D294F8] + 32);
  v32 = v13;
  v14 = setThreadIdAndInfo();
  v27 = v14;
  v15 = MEMORY[0x277D29508];
  v16 = *(MEMORY[0x277D29508] + 72 * v14 + 8) + 320 * HIDWORD(v14);
  v26 = HIDWORD(v14);
  *(v16 + 216) = 0;
  v17 = *(v16 + 312);
  v18 = *(v16 + 224);
  if (v18)
  {
    v18(*(v16 + 288));
  }

  *buf = v27;
  if (_setjmp(v16))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SKGUpdaterStore writeSerialNumberToBundleID:identifier:UUID:serialNumber:listenerType:];
    }

    *(v16 + 312) = v17;
    CIOnThreadCleanUpReset();
    dropThreadId();
    CICleanUpReset();
  }

  else
  {
    v22 = db_store_obj();
    v23 = *(v15 + 72 * *buf + 8) + 320 * v26;
    *(v23 + 312) = v17;
    v24 = *(v23 + 232);
    if (v24)
    {
      v24(*(v23 + 288));
    }

    dropThreadId();
    if (v22)
    {
      if (SKGLogGetCurrentLoggingLevel() < 2)
      {
        goto LABEL_9;
      }

      v10 = SKGLogInit();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SKGUpdaterStore writeUpdaterStatus:UUID:serialNumber:];
      }

      goto LABEL_8;
    }
  }

  [(NSLock *)self->systemOidLock unlock];
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v19 = SKGLogInit();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = d;
      *&buf[12] = 1024;
      *&buf[14] = status;
      *&buf[18] = 2048;
      *&buf[20] = number;
      _os_log_debug_impl(&dword_231B25000, v19, OS_LOG_TYPE_DEBUG, "SKGUpdaterStore#writeUpdaterStatus for uuid: %s listenerType: %u serialNumber: %llu", buf, 0x1Cu);
    }
  }

  MEMORY[0x2383779F0](v28);
  v11 = 1;
LABEL_22:

  return v11;
}

- (unint64_t)readUpdaterStatus:(int)status UUID:(const char *)d
{
  v5 = *&status;
  v21 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->systemOidLock lock];
  v7 = [(SKGUpdaterStore *)self getDBOWithOID:0];
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%u", d, v5];
    [v9 UTF8String];
    if (db_get_field())
    {
      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v10 = SKGLogInit();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [SKGUpdaterStore readUpdaterStatus:UUID:];
        }
      }

      MEMORY[0x2383779F0](v8);
      [(NSLock *)self->systemOidLock unlock];
      v11 = 0;
    }

    else
    {
      [(NSLock *)self->systemOidLock unlock];
      if (SKGLogGetCurrentLoggingLevel() >= 7)
      {
        v13 = SKGLogInit();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218498;
          v16 = MEMORY[0];
          v17 = 2080;
          dCopy = d;
          v19 = 1024;
          v20 = v5;
          _os_log_debug_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEBUG, "SKGUpdaterStore#readUpdaterStatus read serialNumber: %llu to uuid: %s listenerType: %d", buf, 0x1Cu);
        }
      }

      v11 = MEMORY[0];
      MEMORY[0x2383779F0](v8);
    }
  }

  else
  {
    if (SKGLogGetCurrentLoggingLevel() >= 7)
    {
      v12 = SKGLogInit();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [SKGUpdaterStore readUpdaterStatus:UUID:];
      }
    }

    [(NSLock *)self->systemOidLock unlock];
    return 0;
  }

  return v11;
}

- (BOOL)flushAndCommit
{
  db_lock_datastore();
  if (db_flush_datastore())
  {
    if (SKGLogGetCurrentLoggingLevel() < 2)
    {
      v3 = 0;
      goto LABEL_9;
    }

    v2 = SKGLogInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [EmbeddingCache flush];
    }

    v3 = 0;
  }

  else
  {
    db_downgrade_datastore();
    if (SKGLogGetCurrentLoggingLevel() < 7)
    {
      v3 = 1;
      goto LABEL_9;
    }

    v2 = SKGLogInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      [SKGUpdaterStore flushAndCommit];
    }

    v3 = 1;
  }

LABEL_9:
  db_unlock_datastore();
  return v3;
}

- (db_obj)getDBOWithOID:(int64_t)d
{
  makeThreadId();
  atomic_fetch_add_explicit(MEMORY[0x277D294F0], 1u, memory_order_relaxed);
  v3 = setThreadIdAndInfo();
  v14 = v3;
  v4 = MEMORY[0x277D29508];
  v5 = *(MEMORY[0x277D29508] + 72 * v3 + 8) + 320 * HIDWORD(v3);
  v13 = HIDWORD(v3);
  *(v5 + 216) = 0;
  v6 = *(v5 + 312);
  v7 = *(v5 + 224);
  if (v7)
  {
    v7(*(v5 + 288));
  }

  if (_setjmp(v5))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SKGUpdaterStore writeSerialNumberToBundleID:identifier:UUID:serialNumber:listenerType:];
    }

    *(v5 + 312) = v6;
    CIOnThreadCleanUpReset();
    dropThreadId();
    CICleanUpReset();
    return 0;
  }

  obj = db_get_obj();
  v10 = *(v4 + 72 * v14 + 8) + 320 * v13;
  *(v10 + 312) = v6;
  v11 = *(v10 + 232);
  if (v11)
  {
    v11(*(v10 + 288));
  }

  dropThreadId();
  if (obj)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v12 = SKGLogInit();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SKGUpdaterStore getDBOWithOID:];
      }
    }

    return 0;
  }

  return 0;
}

- (BOOL)markForDeleteDBO:(db_obj *)o purgeContext:(id *)context
{
  if (!o->var0)
  {
    v14 = 0;
    goto LABEL_22;
  }

  v17 = 1;
  contextCopy = context;
  while (db_next_field() == 35)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:0];
    if ([v4 rangeOfString:@":"] != 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend(v4, "isEqual:", @"kMDItemAttributeChangeDate") & 1) == 0)
    {
      v5 = [v4 componentsSeparatedByString:@":"];
      if ([v5 count] == 2)
      {
        v6 = [v5 objectAtIndexedSubscript:0];
        if ([v6 isEqual:@"Priority"])
        {
          v7 = [v5 objectAtIndexedSubscript:1];
          var2 = contextCopy->var2;

          if (v7 == var2)
          {
            v17 = 0;
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      if ([v5 count] == 3)
      {
        v9 = [v5 objectAtIndexedSubscript:0];
        if ([v9 isEqual:@"SerialNumber"])
        {
          v10 = [v5 objectAtIndexedSubscript:1];
          v11 = v10;
          if (v10 == contextCopy->var2)
          {
            v12 = [v5 objectAtIndexedSubscript:2];
            intValue = [v12 intValue];
            var1 = contextCopy->var1;

            if (intValue == var1)
            {
              v17 &= contextCopy->var0 >= MEMORY[0xD];
            }

            goto LABEL_16;
          }
        }
      }

LABEL_16:
    }
  }

  v14 = v17;
  context = contextCopy;
LABEL_22:

  return v14 & 1;
}

- (void)setProtectionClassForFolder:(int)folder protectionClass:(int)class
{
  v4 = *&class;
  v29 = *MEMORY[0x277D85DE8];
  bzero(__s, 0x400uLL);
  if (!faccurate_realpath(folder, __s) && SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v6 = SKGLogInit();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SKGUpdaterStore setProtectionClassForFolder:protectionClass:];
    }
  }

  v7 = strlen(__s);
  v8 = opendir(__s);
  if (!v8 && SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v9 = SKGLogInit();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SKGUpdaterStore setProtectionClassForFolder:protectionClass:];
    }
  }

  v10 = fcntl(folder, 63);
  if (v10 != v4)
  {
    v11 = v10;
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v12 = SKGLogInit();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v23 = __s;
        v24 = 1024;
        v25 = v11;
        v26 = 1024;
        v27 = v4;
        _os_log_error_impl(&dword_231B25000, v12, OS_LOG_TYPE_ERROR, "SKGUpdaterStore#setProtectionClassForFolder Parent directory at path %s has pc %d. Setting pc to %d", buf, 0x18u);
      }
    }

    fcntl(folder, 64, v4);
  }

  for (i = readdir(v8); i; i = readdir(v8))
  {
    d_type = i->d_type;
    if (d_type == 8 || d_type == 4)
    {
      d_name = i->d_name;
      if ((i->d_name[0] != 46 || i->d_name[1] && (i->d_name[1] != 46 || i->d_name[2])) && v7 - 1023 + i->d_namlen >= 0xFFFFFFFFFFFFFC00)
      {
        v17 = openat(v8->__dd_fd, d_name, 0x8000);
        if (v17 != -1)
        {
          v18 = v17;
          v19 = fcntl(v17, 63);
          if (v19 != v4)
          {
            v20 = v19;
            if (SKGLogGetCurrentLoggingLevel() >= 2)
            {
              v21 = SKGLogInit();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v23 = d_name;
                v24 = 1024;
                v25 = v20;
                v26 = 1024;
                v27 = v4;
                _os_log_error_impl(&dword_231B25000, v21, OS_LOG_TYPE_ERROR, "SKGUpdaterStore#setProtectionClassForFolder File with name %s has pc %d. Setting pc to %d", buf, 0x18u);
              }
            }

            fcntl(v18, 64, v4);
          }

          close(v18);
        }
      }
    }
  }

  closedir(v8);
}

- (BOOL)enumerateItems:(id)items
{
  itemsCopy = items;
  makeThreadId();
  atomic_fetch_add_explicit(MEMORY[0x277D294F0], 1u, memory_order_relaxed);
  v4 = setThreadIdAndInfo();
  v13 = v4;
  v5 = MEMORY[0x277D29508];
  v6 = *(MEMORY[0x277D29508] + 72 * v4 + 8) + 320 * HIDWORD(v4);
  v12 = HIDWORD(v4);
  *(v6 + 216) = 0;
  v7 = *(v6 + 312);
  v8 = *(v6 + 224);
  if (v8)
  {
    v8(*(v6 + 288));
  }

  if (_setjmp(v6))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SKGUpdaterStore writeSerialNumberToBundleID:identifier:UUID:serialNumber:listenerType:];
    }

    *(v6 + 312) = v7;
    CIOnThreadCleanUpReset();
    dropThreadId();
    CICleanUpReset();
  }

  else
  {
    db_iterate_objects_in_range();
    v9 = *(v5 + 72 * v13 + 8) + 320 * v12;
    *(v9 + 312) = v7;
    v10 = *(v9 + 232);
    if (v10)
    {
      v10(*(v9 + 288));
    }

    dropThreadId();
  }

  return 1;
}

- (void)closeAndDeleteStore
{
  db_release_datastore();
  parentFd = self->_parentFd;

  MEMORY[0x282187490](parentFd, "skg_store.db", 270336);
}

+ (void)instanceForIndexType:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

+ (void)instanceForIndexType:.cold.2()
{
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)instanceForIndexType:(void *)a1 .cold.3(void *a1)
{
  __error();
  [a1 fileSystemRepresentation];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)purgeAllWithUUIDImpl:(uint8_t *)buf listenerType:(_BYTE *)a2 .cold.1(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
}

+ (void)purgeAllWithUUID:listenerType:indexType:.cold.1()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithParentFd:indexType:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)initWithParentFd:indexType:.cold.3()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_2();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x18u);
}

- (void)initWithParentFd:indexType:.cold.4()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_2();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x18u);
}

- (void)initWithParentFd:indexType:.cold.5()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)writeSerialNumberToBundleID:identifier:UUID:serialNumber:listenerType:.cold.1()
{
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)writeSerialNumberToBundleID:identifier:UUID:serialNumber:listenerType:.cold.3()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)markPriorityForBundleID:identifier:UUID:serialNumber:flag:.cold.2()
{
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)markPriorityForBundleID:identifier:UUID:serialNumber:flag:.cold.4()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)checkPriorityForBundleID:identifier:UUID:serialNumber:defaultIfNotExists:.cold.1()
{
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)writeLanguageForBundleID:identifier:UUID:serialNumber:language:.cold.1()
{
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)writeLanguageForBundleID:identifier:UUID:serialNumber:language:.cold.3()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)writeLanguageForBundleID:identifier:UUID:serialNumber:language:.cold.4()
{
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)readLanguageFromBundleID:identifier:UUID:serialNumber:.cold.2()
{
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_5_2();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

- (void)readLanguageFromBundleID:identifier:UUID:serialNumber:.cold.3()
{
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_5_2();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

- (void)readLanguageFromBundleID:identifier:UUID:serialNumber:.cold.4()
{
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)writeUpdaterStatus:(void *)a1 UUID:serialNumber:.cold.1(void *a1)
{
  [a1 UTF8String];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

- (void)writeUpdaterStatus:UUID:serialNumber:.cold.3()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)writeUpdaterStatus:UUID:serialNumber:.cold.4()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)readUpdaterStatus:UUID:.cold.1()
{
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)readUpdaterStatus:UUID:.cold.2()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)flushAndCommit
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getDBOWithOID:.cold.2()
{
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)setProtectionClassForFolder:protectionClass:.cold.1()
{
  __error();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

@end