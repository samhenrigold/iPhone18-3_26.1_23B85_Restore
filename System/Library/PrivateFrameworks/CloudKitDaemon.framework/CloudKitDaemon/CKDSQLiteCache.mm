@interface CKDSQLiteCache
+ (id)sharedCache;
- (CKDLogicalDeviceContext)deviceContext;
- (CKDSQLiteCache)initWithCacheDir:(id)dir;
- (CKDSQLiteCache)initWithDeviceContext:(id)context;
- (id)initOrExitWithPath:(id)path isSharedCache:(BOOL)cache;
@end

@implementation CKDSQLiteCache

- (id)initOrExitWithPath:(id)path isSharedCache:(BOOL)cache
{
  v45 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v8 = objc_msgSend_initWithCacheDir_(self, v7, pathCopy);
  v38 = 0;
  LOBYTE(self) = objc_msgSend_openWithError_(v8, v9, &v38);
  v10 = v38;
  v12 = v10;
  if (self)
  {
    v13 = v10;
  }

  else
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v18 = objc_msgSend_CKSanitizedPath(pathCopy, v16, v17);
    v19 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = MEMORY[0x277CBC830];
    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v40 = v15;
      v41 = 2112;
      v42 = v18;
      v43 = 2112;
      v44 = v12;
      _os_log_error_impl(&dword_22506F000, v21, OS_LOG_TYPE_ERROR, "%@ failed to open at path %@: %@", buf, 0x20u);
    }

    objc_msgSend_remove(v8, v22, v23);
    v24 = objc_alloc(objc_opt_class());
    v26 = objc_msgSend_initWithCacheDir_(v24, v25, pathCopy);

    v37 = v12;
    v28 = objc_msgSend_openWithError_(v26, v27, &v37);
    v13 = v37;

    if ((v28 & 1) == 0)
    {
      pthread_mutex_unlock(&stru_280D54E50);
      v31 = objc_msgSend_CKIsDiskFullError_(MEMORY[0x277CCA9B8], v30, v13);
      v32 = *MEMORY[0x277CBC878];
      if (v31)
      {
        if (*v19 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v32);
        }

        v33 = *v20;
        if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v40 = v15;
          v41 = 2114;
          v42 = v18;
          v43 = 2114;
          v44 = v13;
          _os_log_error_impl(&dword_22506F000, v33, OS_LOG_TYPE_ERROR, "Exiting due to disk full error creating shared database for %{public}@ at path %{public}@: %{public}@", buf, 0x20u);
        }
      }

      else
      {
        if (*v19 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v32);
        }

        v34 = *v20;
        if (os_log_type_enabled(*v20, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543874;
          v40 = v15;
          v41 = 2114;
          v42 = v18;
          v43 = 2114;
          v44 = v13;
          _os_log_fault_impl(&dword_22506F000, v34, OS_LOG_TYPE_FAULT, "Exiting due to error creating shared database for %{public}@ at path %{public}@: %{public}@", buf, 0x20u);
        }
      }

      exit(1);
    }

    v8 = v26;
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_225162EA4;
  v35[3] = &unk_278546E18;
  cacheCopy = cache;
  objc_msgSend_setInvalidationHandler_(v8, v11, v35);

  return v8;
}

+ (id)sharedCache
{
  pthread_mutex_lock(&stru_280D54E50);
  isSharedCache = objc_msgSend_objectForKey_(qword_280D586D8, v3, self);
  if (!isSharedCache)
  {
    if (!qword_280D586D8)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8 = qword_280D586D8;
      qword_280D586D8 = v7;
    }

    v9 = objc_msgSend_cacheDirectory(self, v4, v5);
    v12 = objc_msgSend_dbFileName(self, v10, v11);
    v14 = objc_msgSend_stringByAppendingPathComponent_(v9, v13, v12);

    v17 = objc_msgSend_currentProcess(CKDDaemonProcess, v15, v16);
    LOBYTE(v12) = objc_msgSend_isSystemInstalledBinary(v17, v18, v19);

    if ((v12 & 1) == 0)
    {
      v21 = objc_msgSend_stringByAppendingString_(v14, v20, @"_debug");

      v14 = v21;
    }

    v22 = [self alloc];
    isSharedCache = objc_msgSend_initOrExitWithPath_isSharedCache_(v22, v23, v14, 1);
    objc_msgSend_setObject_forKey_(qword_280D586D8, v24, isSharedCache, self);
  }

  pthread_mutex_unlock(&stru_280D54E50);

  return isSharedCache;
}

- (CKDSQLiteCache)initWithDeviceContext:(id)context
{
  contextCopy = context;
  v5 = objc_opt_class();
  v8 = objc_msgSend_dbFileName(v5, v6, v7);
  v11 = objc_msgSend_currentProcess(CKDDaemonProcess, v9, v10);
  isSystemInstalledBinary = objc_msgSend_isSystemInstalledBinary(v11, v12, v13);

  if ((isSystemInstalledBinary & 1) == 0)
  {
    v17 = objc_msgSend_stringByAppendingString_(v8, v15, @"_debug");

    v8 = v17;
  }

  v18 = objc_msgSend_cacheDirectory(contextCopy, v15, v16);
  v20 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v18, v19, v8, 0);

  v23 = objc_msgSend_path(v20, v21, v22);
  isSharedCache = objc_msgSend_initOrExitWithPath_isSharedCache_(self, v24, v23, 0);

  objc_msgSend_setDeviceContext_(isSharedCache, v26, contextCopy);
  return isSharedCache;
}

- (CKDSQLiteCache)initWithCacheDir:(id)dir
{
  dirCopy = dir;
  v5 = objc_opt_class();
  v8 = objc_msgSend_cacheDatabaseSchema(v5, v6, v7);
  v11.receiver = self;
  v11.super_class = CKDSQLiteCache;
  v9 = [(CKSQLite *)&v11 initWithPath:dirCopy schema:v8];

  return v9;
}

- (CKDLogicalDeviceContext)deviceContext
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceContext);

  return WeakRetained;
}

@end