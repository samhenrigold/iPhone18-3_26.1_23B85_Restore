@interface BRCFileProviderDaemonUtils
+ (id)sharedInstance;
- (BOOL)boostFileProvider;
- (BOOL)waitForFPToBeReadyToAcceptXPCWithError:(id *)error;
- (id)_initWithSyncBubble:(BOOL)bubble isFPFS:(BOOL)s;
- (void)_signalFPReady;
- (void)_waitIsOver;
- (void)dealloc;
- (void)enableFileProviderBoosting;
- (void)interrupt;
@end

@implementation BRCFileProviderDaemonUtils

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__BRCFileProviderDaemonUtils_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

- (BOOL)boostFileProvider
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  fpReady = selfCopy->_fpReady;
  if (fpReady || !selfCopy->_startedWaitingForFP)
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    shouldBoostFileProvider = selfCopy->_shouldBoostFileProvider;
    objc_sync_exit(selfCopy);

    if (shouldBoostFileProvider)
    {
      v5 = +[BRCStringAdditions _br_currentMobileDocumentsDirForLegacy];
      if (v5)
      {
        v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:1];
        *&buf = 0;
        *(&buf + 1) = &buf;
        v12 = 0x3032000000;
        v13 = __Block_byref_object_copy__56;
        v14 = __Block_byref_object_dispose__56;
        v15 = 0;
        synchronousSharedConnectionProxy = [MEMORY[0x277CC63A8] synchronousSharedConnectionProxy];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __47__BRCFileProviderDaemonUtils_boostFileProvider__block_invoke;
        v10[3] = &unk_278508260;
        v10[4] = selfCopy;
        v10[5] = &buf;
        [synchronousSharedConnectionProxy wakeUpForURL:v6 completionHandler:v10];

        fpReady = *(*(&buf + 1) + 40) == 0;
        _Block_object_dispose(&buf, 8);
      }

      else
      {
        v6 = brc_bread_crumbs();
        v9 = brc_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v6;
          _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't find Mobile Documents path for current persona%@", &buf, 0xCu);
        }

        fpReady = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return fpReady;
}

- (id)_initWithSyncBubble:(BOOL)bubble isFPFS:(BOOL)s
{
  v16.receiver = self;
  v16.super_class = BRCFileProviderDaemonUtils;
  v6 = [(BRCFileProviderDaemonUtils *)&v16 init];
  v7 = v6;
  if (v6)
  {
    v6->_inSyncBubble = bubble;
    v6->_isFPFS = s;
    *&v6->_interrupted = 0;
    *&v6->_startedWaitingForFP = 0;
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v9 = dispatch_queue_attr_make_initially_inactive(v8);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(v9, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("file-provider-ready-queue", v10);

    fileProviderReadyQueue = v7->_fileProviderReadyQueue;
    v7->_fileProviderReadyQueue = v11;

    v13 = dispatch_semaphore_create(0);
    waitForFPSemaphore = v7->_waitForFPSemaphore;
    v7->_waitForFPSemaphore = v13;
  }

  return v7;
}

- (void)dealloc
{
  dispatch_activate(self->_fileProviderReadyQueue);
  v3.receiver = self;
  v3.super_class = BRCFileProviderDaemonUtils;
  [(BRCFileProviderDaemonUtils *)&v3 dealloc];
}

uint64_t __44__BRCFileProviderDaemonUtils_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = +[BRCAccountsManager sharedManager];
  v3 = [v2 isInSyncBubble];

  sharedInstance_sharedInstance = [objc_alloc(*(a1 + 32)) _initWithSyncBubble:v3 isFPFS:1];

  return MEMORY[0x2821F96F8]();
}

- (void)interrupt
{
  v7 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] got interrupted%@", &v5, 0xCu);
  }

  selfCopy->_interrupted = 1;
  dispatch_semaphore_signal(selfCopy->_waitForFPSemaphore);
  objc_sync_exit(selfCopy);
}

- (void)_signalFPReady
{
  v7 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_fpReady)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] FP is now ready to accept xpc connections%@", &v5, 0xCu);
    }

    selfCopy->_fpReady = 1;
    dispatch_semaphore_signal(selfCopy->_waitForFPSemaphore);
  }

  objc_sync_exit(selfCopy);
}

- (void)_waitIsOver
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (!obj->_fpReady)
  {
    if (obj->_interrupted)
    {
      [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:4 description:@"BRCFileProviderDaemonUtils was interrupted while waiting for FP to accept xpc connections"];
    }

    else
    {
      [MEMORY[0x277CCA9B8] brc_unkownErrorWithDescription:@"Waiting without success for FP to accept xpc connections"];
    }
    v3 = ;
    fpReadyError = obj->_fpReadyError;
    obj->_fpReadyError = v3;

    v2 = obj;
  }

  dispatch_activate(v2->_fileProviderReadyQueue);
  objc_sync_exit(obj);
}

- (void)enableFileProviderBoosting
{
  obj = self;
  objc_sync_enter(obj);
  obj->_shouldBoostFileProvider = 1;
  objc_sync_exit(obj);
}

- (BOOL)waitForFPToBeReadyToAcceptXPCWithError:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  if (!self->_isFPFS && self->_inSyncBubble)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] Device is in sync bubble%@", buf, 0xCu);
    }

    brc_errorCantCallFPInSyncBubble = [MEMORY[0x277CCA9B8] brc_errorCantCallFPInSyncBubble];
    fpReady = brc_errorCantCallFPInSyncBubble == 0;
    if (brc_errorCantCallFPInSyncBubble)
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, 0x90u))
      {
        v39 = "(passed to caller)";
        *buf = 136315906;
        v44 = "[BRCFileProviderDaemonUtils waitForFPToBeReadyToAcceptXPCWithError:]";
        v45 = 2080;
        if (!error)
        {
          v39 = "(ignored by caller)";
        }

        v46 = v39;
        v47 = 2112;
        v48 = brc_errorCantCallFPInSyncBubble;
        v49 = 2112;
        v50 = v8;
        _os_log_error_impl(&dword_223E7A000, v9, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v10 = brc_errorCantCallFPInSyncBubble;
      *error = brc_errorCantCallFPInSyncBubble;
    }

    goto LABEL_27;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  startedWaitingForFP = selfCopy->_startedWaitingForFP;
  selfCopy->_startedWaitingForFP = 1;
  objc_sync_exit(selfCopy);

  if (!startedWaitingForFP)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(BRCFileProviderDaemonUtils *)v13 waitForFPToBeReadyToAcceptXPCWithError:v14];
    }

    if ([(BRCFileProviderDaemonUtils *)selfCopy boostFileProvider])
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [(BRCFileProviderDaemonUtils *)v15 waitForFPToBeReadyToAcceptXPCWithError:v16];
      }
    }

    else
    {
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __69__BRCFileProviderDaemonUtils_waitForFPToBeReadyToAcceptXPCWithError___block_invoke;
      v42[3] = &unk_278500DC8;
      v42[4] = selfCopy;
      v17 = [MEMORY[0x277CC6420] beginMonitoringProviderDomainChangesWithHandler:v42];
      v18 = [BRCUserDefaults defaultsForMangledID:0];
      fpReadyForXpcCheckMaxWaitTimeInSec = [v18 fpReadyForXpcCheckMaxWaitTimeInSec];

      waitForFPSemaphore = selfCopy->_waitForFPSemaphore;
      v21 = dispatch_time(0, 1000000000 * fpReadyForXpcCheckMaxWaitTimeInSec);
      dispatch_semaphore_wait(waitForFPSemaphore, v21);
      [MEMORY[0x277CC6420] endMonitoringProviderDomainChanges:v17];
    }

    [(BRCFileProviderDaemonUtils *)selfCopy _waitIsOver];
  }

  brc_errorCantCallFPInSyncBubble = selfCopy;
  objc_sync_enter(brc_errorCantCallFPInSyncBubble);
  fpReady = brc_errorCantCallFPInSyncBubble->_fpReady;
  if (fpReady)
  {
LABEL_26:
    objc_sync_exit(brc_errorCantCallFPInSyncBubble);
    goto LABEL_27;
  }

  fpReadyError = brc_errorCantCallFPInSyncBubble->_fpReadyError;
  if (fpReadyError)
  {
    v23 = fpReadyError;
    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, 0x90u))
    {
      v38 = "(passed to caller)";
      *buf = 136315906;
      v44 = "[BRCFileProviderDaemonUtils waitForFPToBeReadyToAcceptXPCWithError:]";
      v45 = 2080;
      if (!error)
      {
        v38 = "(ignored by caller)";
      }

      v46 = v38;
      v47 = 2112;
      v48 = v23;
      v49 = 2112;
      v50 = v24;
      _os_log_error_impl(&dword_223E7A000, v25, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }

    if (error)
    {
      v26 = v23;
      *error = v23;
    }

    goto LABEL_26;
  }

  objc_sync_exit(brc_errorCantCallFPInSyncBubble);

  dispatch_sync(brc_errorCantCallFPInSyncBubble->_fileProviderReadyQueue, &__block_literal_global_76);
  v28 = brc_errorCantCallFPInSyncBubble;
  objc_sync_enter(v28);
  if (brc_errorCantCallFPInSyncBubble->_fpReady)
  {
    fpReady = 1;
  }

  else
  {
    v29 = brc_errorCantCallFPInSyncBubble->_fpReadyError;
    if (v29)
    {
      v30 = v29;
      v31 = brc_bread_crumbs();
      v32 = brc_default_log();
      if (os_log_type_enabled(v32, 0x90u))
      {
        v40 = "(passed to caller)";
        *buf = 136315906;
        v44 = "[BRCFileProviderDaemonUtils waitForFPToBeReadyToAcceptXPCWithError:]";
        v45 = 2080;
        if (!error)
        {
          v40 = "(ignored by caller)";
        }

        v46 = v40;
        v47 = 2112;
        v48 = v30;
        v49 = 2112;
        v50 = v31;
        _os_log_error_impl(&dword_223E7A000, v32, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }

      fpReady = 0;
    }

    else
    {
      v33 = brc_bread_crumbs();
      v34 = brc_default_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        [(BRCFileProviderDaemonUtils *)v33 waitForFPToBeReadyToAcceptXPCWithError:v34];
      }

      v30 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: FP is not ready but we don't have an error"];
      fpReady = v30 == 0;
      if (v30)
      {
        v35 = brc_bread_crumbs();
        v36 = brc_default_log();
        if (os_log_type_enabled(v36, 0x90u))
        {
          v41 = "(passed to caller)";
          *buf = 136315906;
          v44 = "[BRCFileProviderDaemonUtils waitForFPToBeReadyToAcceptXPCWithError:]";
          v45 = 2080;
          if (!error)
          {
            v41 = "(ignored by caller)";
          }

          v46 = v41;
          v47 = 2112;
          v48 = v30;
          v49 = 2112;
          v50 = v35;
          _os_log_error_impl(&dword_223E7A000, v36, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }
    }

    if (error)
    {
      v37 = v30;
      *error = v30;
    }
  }

  objc_sync_exit(v28);
  brc_errorCantCallFPInSyncBubble = v28;
LABEL_27:

  return fpReady;
}

id *__69__BRCFileProviderDaemonUtils_waitForFPToBeReadyToAcceptXPCWithError___block_invoke(id *result, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v3 = result;
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] Got com.apple.fileprovider.providers-changed notification. FP is ready to accept XPC calls%@", &v6, 0xCu);
    }

    return [v3[4] _signalFPReady];
  }

  return result;
}

void __47__BRCFileProviderDaemonUtils_boostFileProvider__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = v5;
  if (!v5)
  {
    [*(a1 + 32) _signalFPReady];
    v4 = 0;
  }
}

@end