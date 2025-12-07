@interface ENRegionHistoryManager
+ (id)regionHistoryFileStatusToString:(int64_t)string;
- (BOOL)purgeAllRegionHistoryWithError:(id *)error;
- (BOOL)purgeRegionsOlderThanDate:(id)date error:(id *)error;
- (ENRegionHistoryManager)initWithDelegate:(id)delegate queue:(id)queue;
- (ENRegionHistoryManager)initWithDelegate:(id)delegate queue:(id)queue directoryPath:(id)path;
- (ENRegionHistoryManagerDelegate)delegate;
- (id)mergeRegionHistoryOnDisk:(id)disk inMemory:(id)memory;
- (void)addRegionVisit:(id)visit;
- (void)dealloc;
- (void)resetRegionHistory;
- (void)setFileStatus:(int64_t)status;
- (void)setRegionHistory:(id)history;
- (void)setupPersistedRegionHistory;
- (void)updateFileStatus;
@end

@implementation ENRegionHistoryManager

- (void)updateFileStatus
{
  regionHistoryFileWrapper = self->_regionHistoryFileWrapper;
  v5 = 0;
  if ([(ENSecureArchiveFileWrapper *)regionHistoryFileWrapper openWithError:&v5])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [(ENRegionHistoryManager *)self setFileStatus:v4];
}

+ (id)regionHistoryFileStatusToString:(int64_t)string
{
  v3 = @"Unknown";
  if (string == 1)
  {
    v3 = @"Inaccessible";
  }

  if (string == 2)
  {
    return @"Accessible";
  }

  else
  {
    return v3;
  }
}

- (ENRegionHistoryManager)initWithDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  v8 = ENDataVaultPath();
  v9 = [v8 stringByAppendingPathComponent:@"Regions"];

  v10 = [(ENRegionHistoryManager *)self initWithDelegate:delegateCopy queue:queueCopy directoryPath:v9];
  return v10;
}

- (ENRegionHistoryManager)initWithDelegate:(id)delegate queue:(id)queue directoryPath:(id)path
{
  delegateCopy = delegate;
  queueCopy = queue;
  pathCopy = path;
  if (delegateCopy)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [ENRegionHistoryManager initWithDelegate:queue:directoryPath:];
    if (pathCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [ENRegionHistoryManager initWithDelegate:queue:directoryPath:];
  if (!queueCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (pathCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  [ENRegionHistoryManager initWithDelegate:queue:directoryPath:];
LABEL_4:
  v25.receiver = self;
  v25.super_class = ENRegionHistoryManager;
  v11 = [(ENRegionHistoryManager *)&v25 init];
  if (v11)
  {
    v12 = objc_alloc_init(ENRegionHistory);
    regionHistory = v11->_regionHistory;
    v11->_regionHistory = v12;

    v14 = [pathCopy copy];
    directoryPath = v11->_directoryPath;
    v11->_directoryPath = v14;

    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v11->_queue, queue);
    v11->_fileStatus = 0;
    v11->_resetToken = -1;
    objc_initWeak(&location, v11);
    uTF8String = [*MEMORY[0x277CBFB80] UTF8String];
    queue = v11->_queue;
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __63__ENRegionHistoryManager_initWithDelegate_queue_directoryPath___block_invoke;
    v22 = &unk_278FD2A18;
    objc_copyWeak(&v23, &location);
    notify_register_dispatch(uTF8String, &v11->_resetToken, queue, &v19);
    [(ENRegionHistoryManager *)v11 setupPersistedRegionHistory:v19];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __63__ENRegionHistoryManager_initWithDelegate_queue_directoryPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetRegionHistory];
}

- (void)setupPersistedRegionHistory
{
  v3 = NSStringFromSelector(self);
  defaultManager = [MEMORY[0x277CCAA08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:a2];
  v6 = "no";
  if (v5)
  {
    v6 = "yes";
  }

  LogPrintF_safe(&gLogCategory_ENRegionHistoryManager, "[ENRegionHistoryManager setupPersistedRegionHistory]", 30, "%@, %@ exists, %s", v3, a2, v6);
}

- (void)setFileStatus:(int64_t)status
{
  p_fileStatus = &self->_fileStatus;
  if (self->_fileStatus != status)
  {
    if (gLogCategory_ENRegionHistoryManager <= 30 && (gLogCategory_ENRegionHistoryManager != -1 || _LogCategory_Initialize()))
    {
      [(ENRegionHistoryManager *)self setFileStatus:status];
    }

    *p_fileStatus = status;
    if (status == 2)
    {
      regionHistoryFileWrapper = self->_regionHistoryFileWrapper;
      v12 = 0;
      v11 = 0;
      v7 = [(ENSecureArchiveFileWrapper *)regionHistoryFileWrapper readObject:&v12 ofClass:objc_opt_class() error:&v11];
      v8 = v12;
      v9 = v11;
      if (v7)
      {
        if (!v8)
        {
          if (gLogCategory_ENRegionHistoryManager <= 30 && (gLogCategory_ENRegionHistoryManager != -1 || _LogCategory_Initialize()))
          {
            [ENRegionHistoryManager setFileStatus:?];
          }

          v8 = objc_alloc_init(ENRegionHistory);
        }

        v10 = [(ENRegionHistoryManager *)self mergeRegionHistoryOnDisk:v8 inMemory:self->_regionHistory];
        [(ENRegionHistoryManager *)self setRegionHistory:v10];
      }

      else
      {
        if (gLogCategory_ENRegionHistoryManager > 90 || gLogCategory_ENRegionHistoryManager == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_17;
        }

        [(ENRegionHistoryManager *)self setFileStatus:v9, &v13];
        v10 = v13;
      }

LABEL_17:
    }
  }
}

- (void)dealloc
{
  notify_cancel(self->_resetToken);
  self->_resetToken = -1;
  v3.receiver = self;
  v3.super_class = ENRegionHistoryManager;
  [(ENRegionHistoryManager *)&v3 dealloc];
}

- (void)addRegionVisit:(id)visit
{
  visitCopy = visit;
  if (visitCopy)
  {
    v5 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v5 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed && gLogCategory_ENRegionHistoryManager <= 30 && (gLogCategory_ENRegionHistoryManager != -1 || _LogCategory_Initialize()))
    {
      [ENRegionHistoryManager addRegionVisit:];
    }

    [(ENRegionHistory *)self->_regionHistory addRegionVisit:visitCopy];
    if (self->_fileStatus == 2)
    {
      regionHistoryFileWrapper = self->_regionHistoryFileWrapper;
      regionHistory = self->_regionHistory;
      v11 = 0;
      v9 = [(ENSecureArchiveFileWrapper *)regionHistoryFileWrapper saveObject:regionHistory error:&v11];
      v10 = v11;
      if (!v9 && gLogCategory__ENRegionHistoryManager <= 90 && (gLogCategory__ENRegionHistoryManager != -1 || _LogCategory_Initialize()))
      {
        [ENRegionHistoryManager addRegionVisit:v10];
      }
    }
  }
}

- (BOOL)purgeAllRegionHistoryWithError:(id *)error
{
  if (gLogCategory_ENRegionHistoryManager <= 30 && (gLogCategory_ENRegionHistoryManager != -1 || _LogCategory_Initialize()))
  {
    [ENRegionHistoryManager purgeAllRegionHistoryWithError:?];
  }

  [(ENRegionHistory *)self->_regionHistory removeAllRegionVisits];
  regionHistoryFileWrapper = [(ENRegionHistoryManager *)self regionHistoryFileWrapper];
  [regionHistoryFileWrapper close];

  regionHistoryFileWrapper2 = [(ENRegionHistoryManager *)self regionHistoryFileWrapper];
  path = [regionHistoryFileWrapper2 path];

  defaultManager = [MEMORY[0x277CCAA08] defaultManager];
  if ([defaultManager fileExistsAtPath:path])
  {
    v9 = [defaultManager removeItemAtPath:path error:error];
  }

  else
  {
    v9 = 1;
  }

  [(ENRegionHistoryManager *)self setupPersistedRegionHistory];

  return v9;
}

- (void)resetRegionHistory
{
  v4 = 0;
  v2 = [(ENRegionHistoryManager *)self purgeAllRegionHistoryWithError:&v4];
  v3 = v4;
  if (!v2 && gLogCategory_ENRegionHistoryManager <= 90 && (gLogCategory_ENRegionHistoryManager != -1 || _LogCategory_Initialize()))
  {
    [(ENRegionHistoryManager *)v3 resetRegionHistory];
  }
}

- (BOOL)purgeRegionsOlderThanDate:(id)date error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (self->_fileStatus == 2)
  {
    errorCopy = error;
    selfCopy = self;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    getRegionVisits = [(ENRegionHistory *)self->_regionHistory getRegionVisits];
    v8 = [getRegionVisits countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(getRegionVisits);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          date = [v12 date];
          v14 = [date earlierDate:dateCopy];
          date2 = [v12 date];
          v16 = [v14 isEqualToDate:date2];

          if (v16)
          {
            [(ENRegionHistory *)selfCopy->_regionHistory removeRegionVisit:v12];
          }
        }

        v9 = [getRegionVisits countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v9);
    }

    regionHistoryFileWrapper = selfCopy->_regionHistoryFileWrapper;
    regionHistory = selfCopy->_regionHistory;
    v25 = 0;
    v19 = [(ENSecureArchiveFileWrapper *)regionHistoryFileWrapper saveObject:regionHistory error:&v25];
    v20 = v25;
    if (v19)
    {
      goto LABEL_17;
    }

    if (gLogCategory_ENRegionHistoryManager <= 90 && (gLogCategory_ENRegionHistoryManager != -1 || _LogCategory_Initialize()))
    {
      [ENRegionHistoryManager purgeRegionsOlderThanDate:v20 error:?];
      if (!errorCopy)
      {
        goto LABEL_17;
      }
    }

    else if (!errorCopy)
    {
LABEL_17:

      goto LABEL_22;
    }

    v21 = v20;
    *errorCopy = v20;
    goto LABEL_17;
  }

  if (gLogCategory_ENRegionHistoryManager <= 30 && (gLogCategory_ENRegionHistoryManager != -1 || _LogCategory_Initialize()))
  {
    [ENRegionHistoryManager purgeRegionsOlderThanDate:error:];
  }

  v19 = 0;
LABEL_22:

  return v19;
}

- (void)setRegionHistory:(id)history
{
  historyCopy = history;
  objc_storeStrong(&self->_regionHistory, history);
  regionHistoryFileWrapper = self->_regionHistoryFileWrapper;
  regionHistory = self->_regionHistory;
  v15 = 0;
  v8 = [(ENSecureArchiveFileWrapper *)regionHistoryFileWrapper saveObject:regionHistory error:&v15];
  v9 = v15;
  if (!v8 && gLogCategory_ENRegionHistoryManager <= 90 && (gLogCategory_ENRegionHistoryManager != -1 || _LogCategory_Initialize()))
  {
    [ENRegionHistoryManager setRegionHistory:v9];
  }

  getRegionVisits = [(ENRegionHistory *)self->_regionHistory getRegionVisits];
  lastObject = [getRegionVisits lastObject];

  v12 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v12 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && gLogCategory_ENRegionHistoryManager <= 30 && (gLogCategory_ENRegionHistoryManager != -1 || _LogCategory_Initialize()))
  {
    [ENRegionHistoryManager setRegionHistory:lastObject];
  }

  delegate = [(ENRegionHistoryManager *)self delegate];
  [delegate currentRegionVisitDidChange:lastObject];
}

- (id)mergeRegionHistoryOnDisk:(id)disk inMemory:(id)memory
{
  v25 = *MEMORY[0x277D85DE8];
  diskCopy = disk;
  memoryCopy = memory;
  v7 = memoryCopy;
  if (!diskCopy)
  {
    [ENRegionHistoryManager mergeRegionHistoryOnDisk:inMemory:];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_24:
    [ENRegionHistoryManager mergeRegionHistoryOnDisk:inMemory:];
    goto LABEL_3;
  }

  if (!memoryCopy)
  {
    goto LABEL_24;
  }

LABEL_3:
  v8 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v8 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && gLogCategory_ENRegionHistoryManager <= 30 && (gLogCategory_ENRegionHistoryManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&gLogCategory_ENRegionHistoryManager, "[ENRegionHistoryManager mergeRegionHistoryOnDisk:inMemory:]", 30, "Merging region history, onDisk, <%@>, inMemory, <%@>", diskCopy, v7);
  }

  getRegionVisits = [v7 getRegionVisits];
  v11 = [diskCopy copy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = getRegionVisits;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v11 addRegionVisit:*(*(&v20 + 1) + 8 * i)];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v17 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed2 = [v17 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed2 && gLogCategory_ENRegionHistoryManager <= 30 && (gLogCategory_ENRegionHistoryManager != -1 || _LogCategory_Initialize()))
  {
    [ENRegionHistoryManager mergeRegionHistoryOnDisk:v11 inMemory:?];
  }

  return v11;
}

- (ENRegionHistoryManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithDelegate:queue:directoryPath:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA888] currentHandler];
  OUTLINED_FUNCTION_0_8();
  [v0 handleFailureInMethod:@"delegate" object:? file:? lineNumber:? description:?];
}

- (void)initWithDelegate:queue:directoryPath:.cold.2()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA888] currentHandler];
  OUTLINED_FUNCTION_0_8();
  [v0 handleFailureInMethod:@"queue" object:? file:? lineNumber:? description:?];
}

- (void)initWithDelegate:queue:directoryPath:.cold.3()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA888] currentHandler];
  OUTLINED_FUNCTION_0_8();
  [v0 handleFailureInMethod:@"directoryPath != nil" object:? file:? lineNumber:? description:?];
}

- (void)setFileStatus:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v8 = [a1 regionHistoryFileWrapper];
  v5 = [v8 path];
  v6 = [objc_opt_class() regionHistoryFileStatusToString:*a2];
  v7 = [objc_opt_class() regionHistoryFileStatusToString:a3];
  LogPrintF_safe(&gLogCategory_ENRegionHistoryManager, "[ENRegionHistoryManager setFileStatus:]", 30, "%@, file status changed from, %@, to %@", v5, v6, v7);
}

- (void)setFileStatus:(void *)a3 .cold.2(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 regionHistoryFileWrapper];
  *a3 = v5;
  v6 = [v5 path];
  LogPrintF_safe(&gLogCategory_ENRegionHistoryManager, "[ENRegionHistoryManager setFileStatus:]", 90, "unable to read on disk cache, %@, error,%@", v6, a2);
}

- (void)setFileStatus:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 regionHistoryFileWrapper];
  v2 = [v1 path];
  LogPrintF_safe(&gLogCategory_ENRegionHistoryManager, "[ENRegionHistoryManager setFileStatus:]", 30, "%@, onDisk region history empty", v2);
}

- (void)addRegionVisit:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  v2 = [objc_opt_class() regionHistoryFileStatusToString:{objc_msgSend(v1, "fileStatus")}];
  LogPrintF_safe(&gLogCategory_ENRegionHistoryManager, "[ENRegionHistoryManager addRegionVisit:]", 30, "adding region to cache, %@, on disk file status, %@", v0, v2);
}

- (void)purgeAllRegionHistoryWithError:(void *)a1 .cold.1(void *a1)
{
  v1 = [objc_opt_class() regionHistoryFileStatusToString:{objc_msgSend(a1, "fileStatus")}];
  LogPrintF_safe(&gLogCategory_ENRegionHistoryManager, "[ENRegionHistoryManager purgeAllRegionHistoryWithError:]", 30, "purging region history, on disk file status, %@", v1);
}

- (void)mergeRegionHistoryOnDisk:inMemory:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA888] currentHandler];
  OUTLINED_FUNCTION_0_8();
  [v0 handleFailureInMethod:@"onDiskHistory" object:? file:? lineNumber:? description:?];
}

- (void)mergeRegionHistoryOnDisk:inMemory:.cold.2()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA888] currentHandler];
  OUTLINED_FUNCTION_0_8();
  [v0 handleFailureInMethod:@"inMemoryHistory" object:? file:? lineNumber:? description:?];
}

@end