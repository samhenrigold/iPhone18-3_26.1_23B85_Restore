@interface ASDTChangeRequestManager
+ (id)forDelegate:(id)delegate;
- (ASDTChangeRequestManager)initWithDelegate:(id)delegate;
- (ASDTChangeRequestManagerDelegate)delegate;
- (BOOL)configurationChangePendingForObject:(id)object;
- (BOOL)configurationChangeRunningForObject:(id)object;
- (BOOL)requestConfigurationChangeForDevice:(id)device withBlock:(id)block;
- (id)queueForObject:(id)object withName:(id)name;
- (void)doWaitForConfigurationChangesForQueue:(id)queue withTimeout:(ASDTTime *)timeout;
- (void)waitForAllConfigurationChanges;
- (void)waitForConfigurationChangesForDevice:(id)device;
@end

@implementation ASDTChangeRequestManager

- (ASDTChangeRequestManager)initWithDelegate:(id)delegate
{
  v25 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = ASDTChangeRequestManager;
  v5 = [(ASDTChangeRequestManager *)&v23 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  [(ASDTChangeRequestManager *)v5 setDelegate:delegateCopy];
  v7 = delegateCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bundleID = [v7 bundleID];
    [(ASDTChangeRequestManager *)v6 setBundleID:bundleID];
  }

  else
  {
    [(ASDTChangeRequestManager *)v6 setBundleID:@"ASDTChangeRequestManager"];
  }

  v9 = MEMORY[0x277CCACA8];
  bundleID2 = [(ASDTChangeRequestManager *)v6 bundleID];
  v11 = [v9 stringWithFormat:@"%@.changeRequest", bundleID2];

  v12 = [ASDTCondition conditionWithName:v11];
  [(ASDTChangeRequestManager *)v6 setChangeRequestLock:v12];

  v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  [(ASDTChangeRequestManager *)v6 setChangeRequestQueues:v13];

  changeRequestLock = [(ASDTChangeRequestManager *)v6 changeRequestLock];
  v16 = changeRequestLock;
  if (changeRequestLock)
  {
    changeRequestQueues = [(ASDTChangeRequestManager *)v6 changeRequestQueues];
    v18 = changeRequestQueues == 0;

    if (!v18)
    {

LABEL_8:
      v19 = v6;
      goto LABEL_12;
    }
  }

  v20 = ASDTBaseLogType(changeRequestLock, v15);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    bundleID3 = [(ASDTChangeRequestManager *)v6 bundleID];
    [(ASDTChangeRequestManager *)bundleID3 initWithDelegate:buf, v20];
  }

  v19 = 0;
LABEL_12:

  return v19;
}

+ (id)forDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [[ASDTChangeRequestManager alloc] initWithDelegate:delegateCopy];

  return v4;
}

- (id)queueForObject:(id)object withName:(id)name
{
  objectCopy = object;
  nameCopy = name;
  changeRequestQueues = [(ASDTChangeRequestManager *)self changeRequestQueues];
  v9 = [changeRequestQueues objectForKey:nameCopy];

  if (!v9)
  {
    v9 = [ASDTChangeRequestQueue forObject:objectCopy withName:nameCopy andManager:self];
    if (v9)
    {
      changeRequestQueues2 = [(ASDTChangeRequestManager *)self changeRequestQueues];
      [changeRequestQueues2 setObject:v9 forKey:nameCopy];
    }
  }

  return v9;
}

- (BOOL)requestConfigurationChangeForDevice:(id)device withBlock:(id)block
{
  v31 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  blockCopy = block;
  asdtName = [deviceCopy asdtName];
  ++self->_changeIndex;
  v9 = [ASDTChangeRequest withIndex:"withIndex:andBlock:" andBlock:?];
  v11 = ASDTBaseLogType(v9, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [(ASDTChangeRequestManager *)self bundleID];
    v25 = 138412802;
    v26 = bundleID;
    v27 = 1024;
    index = [v9 index];
    v29 = 2112;
    v30 = asdtName;
    _os_log_impl(&dword_241659000, v11, OS_LOG_TYPE_DEFAULT, "%@: Requesting config change %u for device: %@", &v25, 0x1Cu);
  }

  changeRequestLock = [(ASDTChangeRequestManager *)self changeRequestLock];
  [changeRequestLock lock];

  v14 = [(ASDTChangeRequestManager *)self queueForObject:deviceCopy withName:asdtName];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 addChangeRequest:v9];
    changeRequestLock2 = [(ASDTChangeRequestManager *)self changeRequestLock];
    [changeRequestLock2 unlock];

    if (!v16)
    {
      v19 = 1;
      goto LABEL_11;
    }

    delegate = [(ASDTChangeRequestManager *)self delegate];
    v19 = [delegate requestConfigurationChange:v15];
  }

  else
  {
    changeRequestLock3 = [(ASDTChangeRequestManager *)self changeRequestLock];
    [changeRequestLock3 unlock];

    delegate = ASDTBaseLogType(v21, v22);
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
    {
      bundleID2 = [(ASDTChangeRequestManager *)self bundleID];
      [(ASDTChangeRequestManager *)bundleID2 requestConfigurationChangeForDevice:asdtName withBlock:&v25];
    }

    v19 = 0;
  }

LABEL_11:
  return v19;
}

- (BOOL)configurationChangePendingForObject:(id)object
{
  asdtName = [object asdtName];
  changeRequestLock = [(ASDTChangeRequestManager *)self changeRequestLock];
  [changeRequestLock lock];

  changeRequestQueues = [(ASDTChangeRequestManager *)self changeRequestQueues];
  v7 = [changeRequestQueues objectForKey:asdtName];

  LOBYTE(changeRequestQueues) = [v7 flags];
  changeRequestLock2 = [(ASDTChangeRequestManager *)self changeRequestLock];
  [changeRequestLock2 unlock];

  return changeRequestQueues & 1;
}

- (BOOL)configurationChangeRunningForObject:(id)object
{
  asdtName = [object asdtName];
  changeRequestLock = [(ASDTChangeRequestManager *)self changeRequestLock];
  [changeRequestLock lock];

  changeRequestQueues = [(ASDTChangeRequestManager *)self changeRequestQueues];
  v7 = [changeRequestQueues objectForKey:asdtName];

  flags = [v7 flags];
  changeRequestLock2 = [(ASDTChangeRequestManager *)self changeRequestLock];
  [changeRequestLock2 unlock];

  return (flags >> 1) & 1;
}

- (void)doWaitForConfigurationChangesForQueue:(id)queue withTimeout:(ASDTTime *)timeout
{
  v16 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  while (([queueCopy flags] & 3) != 0)
  {
    changeRequestLock = [(ASDTChangeRequestManager *)self changeRequestLock];
    v14 = *&timeout->nsec;
    v15 = *&timeout->hostFrac;
    v8 = [changeRequestLock waitUntilTime:&v14];

    if ((v8 & 1) == 0)
    {
      v11 = ASDTBaseLogType(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        bundleID = [(ASDTChangeRequestManager *)self bundleID];
        name = [queueCopy name];
        [(ASDTChangeRequestManager *)bundleID doWaitForConfigurationChangesForQueue:name withTimeout:&v14];
      }

      break;
    }
  }
}

- (void)waitForConfigurationChangesForDevice:(id)device
{
  asdtName = [device asdtName];
  ASDTTime::futureSecs(&v11, 5);
  changeRequestLock = [(ASDTChangeRequestManager *)self changeRequestLock];
  [changeRequestLock lock];

  changeRequestQueues = [(ASDTChangeRequestManager *)self changeRequestQueues];
  v7 = [changeRequestQueues objectForKey:asdtName];

  v9 = v11;
  v10 = v12;
  [(ASDTChangeRequestManager *)self doWaitForConfigurationChangesForQueue:v7 withTimeout:&v9];
  changeRequestLock2 = [(ASDTChangeRequestManager *)self changeRequestLock];
  [changeRequestLock2 unlock];
}

- (void)waitForAllConfigurationChanges
{
  ASDTTime::futureSecs(&v15, 0xA);
  ASDTTime::machAbsoluteTime(&v13);
  changeRequestLock = [(ASDTChangeRequestManager *)self changeRequestLock];
  [changeRequestLock lock];

  for (i = 0; ; i = firstObject)
  {
    changeRequestQueues = [(ASDTChangeRequestManager *)self changeRequestQueues];
    allValues = [changeRequestQueues allValues];
    firstObject = [allValues firstObject];

    if (!firstObject)
    {
      break;
    }

    v8 = v13;
    v9 = v15;

    if (v8 >= v9)
    {
      goto LABEL_6;
    }

    v11 = v15;
    v12 = v16;
    [(ASDTChangeRequestManager *)self doWaitForConfigurationChangesForQueue:firstObject withTimeout:&v11];
    ASDTTime::machAbsoluteTime(&v11);
    v13 = v11;
    v14 = v12;
  }

LABEL_6:
  changeRequestLock2 = [(ASDTChangeRequestManager *)self changeRequestLock];
  [changeRequestLock2 unlock];
}

- (ASDTChangeRequestManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithDelegate:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "%@: Memory allocation error.", buf, 0xCu);
}

- (void)requestConfigurationChangeForDevice:(uint64_t)a3 withBlock:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_10(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&dword_241659000, v5, OS_LOG_TYPE_ERROR, "%@: Failed to create change request queue for %@", v4, 0x16u);
}

- (void)doWaitForConfigurationChangesForQueue:(uint64_t)a3 withTimeout:.cold.1(void *a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_10(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&dword_241659000, v6, OS_LOG_TYPE_ERROR, "%@: Timeout waiting for config changes on %@", v5, 0x16u);
}

@end