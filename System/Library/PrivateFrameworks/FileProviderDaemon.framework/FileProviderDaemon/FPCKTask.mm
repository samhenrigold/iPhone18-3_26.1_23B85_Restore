@interface FPCKTask
+ (id)buildPauseResult:(BOOL)result semaphore:(id)semaphore;
+ (id)sharedManager;
+ (id)xpcServiceConnection;
+ (id)xpcServiceProxyWithConnection:(id)connection;
+ (void)runFPCKForDomain:(id)domain domainUserInfo:(id)info domainRootURL:(id)l databaseBackupPath:(id)path urls:(id)urls volumeRole:(unsigned int)role options:(unint64_t)options reason:(unint64_t)self0 fpfs:(BOOL)self1 iCDPackageDetection:(BOOL)self2 shouldPause:(id)self3 sendDiagnostics:(id)self4 saveCheckpoint:(id)self5 reingestItems:(id)self6 isInvalidated:(id)self7 contentBarrier:(int64_t)self8 completionHandler:(id)self9;
- (FPCKTask)init;
- (unint64_t)_resolveLaunchType:(unint64_t)type;
- (void)_prepareXPCService:(id)service domainUserInfo:(id)info domainRootURL:(id)l databaseBackupPath:(id)path urls:(id)urls volumeRole:(unsigned int)role personaIdentifier:(id)identifier options:(unint64_t)self0 reason:(unint64_t)self1 fpfs:(BOOL)self2 iCDPackageDetection:(BOOL)self3 completionHandler:(id)self4;
- (void)dumpDatabaseAt:(id)at fullDump:(BOOL)dump writeTo:(id)to completionHandler:(id)handler;
- (void)prepareFPCKRun:(id)run domainUserInfo:(id)info domainRootURL:(id)l databaseBackupPath:(id)path urls:(id)urls volumeRole:(unsigned int)role personaIdentifier:(id)identifier options:(unint64_t)self0 reason:(unint64_t)self1 fpfs:(BOOL)self2 iCDPackageDetection:(BOOL)self3 launchType:(unint64_t)self4 runOnWorkQueue:(BOOL)self5 completionHandler:(id)self6;
- (void)scheduleFPCKRun:(id)run domainUserInfo:(id)info domainRootURL:(id)l databaseBackupPath:(id)path urls:(id)urls volumeRole:(unsigned int)role options:(unint64_t)options reason:(unint64_t)self0 fpfs:(BOOL)self1 iCDPackageDetection:(BOOL)self2 launchType:(unint64_t)self3 updateReceiver:(id)self4 shouldPause:(id)self5 contentBarrier:(int64_t)self6 proxy:(id)self7 completionHandler:(id)self8;
@end

@implementation FPCKTask

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[FPCKTask sharedManager];
  }

  v3 = sharedManager_sharedManager_0;

  return v3;
}

void __25__FPCKTask_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(FPCKTask);
  v1 = sharedManager_sharedManager_0;
  sharedManager_sharedManager_0 = v0;
}

- (FPCKTask)init
{
  v7.receiver = self;
  v7.super_class = FPCKTask;
  v2 = [(FPCKTask *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("FPCKTask-queue", v3);
    workQueue = v2->workQueue;
    v2->workQueue = v4;
  }

  return v2;
}

+ (id)xpcServiceConnection
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.FileProviderDaemon.FPCKService"];
  v3 = FPDFPCKServiceXPCInterface();
  [v2 setRemoteObjectInterface:v3];

  [v2 activate];

  return v2;
}

+ (id)xpcServiceProxyWithConnection:(id)connection
{
  v3 = MEMORY[0x1E696B0B8];
  connectionCopy = connection;
  currentConnection = [v3 currentConnection];
  processIdentifier = [currentConnection processIdentifier];

  v7 = [objc_alloc(MEMORY[0x1E69674B0]) initWithConnection:connectionCopy protocol:&unk_1F4C8C450 orError:0 name:@"FPCKServiceProxy" requestPid:processIdentifier];
  synchronousRemoteObjectProxy = [v7 synchronousRemoteObjectProxy];

  return synchronousRemoteObjectProxy;
}

+ (void)runFPCKForDomain:(id)domain domainUserInfo:(id)info domainRootURL:(id)l databaseBackupPath:(id)path urls:(id)urls volumeRole:(unsigned int)role options:(unint64_t)options reason:(unint64_t)self0 fpfs:(BOOL)self1 iCDPackageDetection:(BOOL)self2 shouldPause:(id)self3 sendDiagnostics:(id)self4 saveCheckpoint:(id)self5 reingestItems:(id)self6 isInvalidated:(id)self7 contentBarrier:(int64_t)self8 completionHandler:(id)self9
{
  v54[1] = *MEMORY[0x1E69E9840];
  pauseCopy = pause;
  v45 = pauseCopy != 0;
  v24 = &__block_literal_global_12;
  if (pauseCopy)
  {
    v24 = pauseCopy;
  }

  v49 = v24;
  handlerCopy = handler;
  invalidatedCopy = invalidated;
  itemsCopy = items;
  checkpointCopy = checkpoint;
  diagnosticsCopy = diagnostics;
  urlsCopy = urls;
  pathCopy = path;
  lCopy = l;
  infoCopy = info;
  domainCopy = domain;
  v33 = [_TtC18FileProviderDaemon4FPCK alloc];
  path = [lCopy path];

  v53 = path;
  path2 = [pathCopy path];

  v54[0] = path2;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
  BYTE1(v43) = v45;
  LOBYTE(v43) = detection;
  v37 = [(FPCK *)v33 initWithDatabasesBackupsPaths:v36 volumeRole:role providerDomainID:domainCopy domainUserInfo:infoCopy reason:reason usingFPFS:fpfs iCDPackageDetection:v43 useShouldPause:v49 shouldPause:diagnosticsCopy sendDiagnostics:checkpointCopy saveCheckpoint:itemsCopy reingestItems:invalidatedCopy isInvalidated:?];

  string = [MEMORY[0x1E696AD60] string];
  v52 = 0;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __237__FPCKTask_runFPCKForDomain_domainUserInfo_domainRootURL_databaseBackupPath_urls_volumeRole_options_reason_fpfs_iCDPackageDetection_shouldPause_sendDiagnostics_saveCheckpoint_reingestItems_isInvalidated_contentBarrier_completionHandler___block_invoke_2;
  v50[3] = &unk_1E83C1988;
  v51 = string;
  v39 = string;
  [(FPCK *)v37 launchFromURLs:urlsCopy options:options contentBarrier:barrier error:&v52 resultHandler:v50];

  v40 = v52;
  v41 = objc_alloc_init(MEMORY[0x1E69672C8]);
  [v41 setNumberOfFilesChecked:{-[FPCK numberOfFilesChecked](v37, "numberOfFilesChecked")}];
  [v41 setNumberOfBrokenFilesInFSAndFSSnapshotCheck:{-[FPCK numberOfBrokenFilesInFSAndFSSnapshotCheck](v37, "numberOfBrokenFilesInFSAndFSSnapshotCheck")}];
  [v41 setNumberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck:{-[FPCK numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck](v37, "numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck")}];
  [v41 setNumberOfBrokenFilesInReconciliationTableCheck:{-[FPCK numberOfBrokenFilesInReconciliationTableCheck](v37, "numberOfBrokenFilesInReconciliationTableCheck")}];
  [v41 setNumberOfBrokenFilesInBackupManifestCheck:{-[FPCK numberOfBrokenFilesInBackupManifestCheck](v37, "numberOfBrokenFilesInBackupManifestCheck")}];
  telemetryReport = [(FPCK *)v37 telemetryReport];
  handlerCopy[2](handlerCopy, v39, v41, telemetryReport, v40);
}

_TtC18FileProviderDaemon19FPShouldPauseResult *__237__FPCKTask_runFPCKForDomain_domainUserInfo_domainRootURL_databaseBackupPath_urls_volumeRole_options_reason_fpfs_iCDPackageDetection_shouldPause_sendDiagnostics_saveCheckpoint_reingestItems_isInvalidated_contentBarrier_completionHandler___block_invoke()
{
  v0 = [[_TtC18FileProviderDaemon19FPShouldPauseResult alloc] initWithShouldPause:0 semaphore:0];

  return v0;
}

- (void)_prepareXPCService:(id)service domainUserInfo:(id)info domainRootURL:(id)l databaseBackupPath:(id)path urls:(id)urls volumeRole:(unsigned int)role personaIdentifier:(id)identifier options:(unint64_t)self0 reason:(unint64_t)self1 fpfs:(BOOL)self2 iCDPackageDetection:(BOOL)self3 completionHandler:(id)self4
{
  v99 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  infoCopy = info;
  lCopy = l;
  pathCopy = path;
  urlsCopy = urls;
  identifierCopy = identifier;
  handlerCopy = handler;
  v82 = +[FPCKTask xpcServiceConnection];
  v81 = [FPCKTask xpcServiceProxyWithConnection:?];
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v20 = urlsCopy;
  v21 = [v20 countByEnumeratingWithState:&v93 objects:v98 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = 0;
    v24 = *v94;
    while (2)
    {
      v25 = 0;
      v26 = v23;
      do
      {
        if (*v94 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v27 = *(*(&v93 + 1) + 8 * v25);
        v92 = v26;
        v28 = [MEMORY[0x1E6967408] wrapperWithURL:v27 readonly:0 error:&v92];
        v23 = v92;

        if (!v28)
        {
          v29 = fp_current_or_default_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            [FPCKTask _prepareXPCService:v27 domainUserInfo:? domainRootURL:? databaseBackupPath:? urls:? volumeRole:? personaIdentifier:? options:? reason:? fpfs:? iCDPackageDetection:? completionHandler:?];
          }

          v30 = handlerCopy;
          v31 = v81;
          v32 = v82;
          (*(handlerCopy + 2))(handlerCopy, v81, v82, v23);
          v33 = v20;
          v34 = serviceCopy;
          v35 = pathCopy;
          v36 = lCopy;
          v37 = identifierCopy;
          goto LABEL_34;
        }

        [v19 addObject:v28];

        ++v25;
        v26 = v23;
      }

      while (v22 != v25);
      v22 = [v20 countByEnumeratingWithState:&v93 objects:v98 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v23 = 0;
  }

  v38 = v23;

  v91 = v23;
  v36 = lCopy;
  v39 = [MEMORY[0x1E6967408] wrapperWithURL:lCopy readonly:0 error:&v91];
  v23 = v91;

  v73 = v39;
  if (v39)
  {
    v90 = v23;
    v35 = pathCopy;
    v40 = [MEMORY[0x1E6967408] wrapperWithURL:pathCopy readonly:0 error:&v90];
    v41 = v90;

    if (!v40)
    {
      v30 = handlerCopy;
      (*(handlerCopy + 2))(handlerCopy, v81, v82, v41);
      v34 = serviceCopy;
      v37 = identifierCopy;
LABEL_32:

      v23 = v41;
      v31 = v81;
      v32 = v82;
      goto LABEL_33;
    }

    v42 = MEMORY[0x1E6967408];
    uRLByDeletingLastPathComponent = [pathCopy URLByDeletingLastPathComponent];
    v89 = v41;
    v44 = [v42 wrapperWithURL:uRLByDeletingLastPathComponent readonly:0 error:&v89];
    v45 = v89;

    v72 = v44;
    if (!v44)
    {
      v30 = handlerCopy;
      (*(handlerCopy + 2))(handlerCopy, v81, v82, v45);
      v34 = serviceCopy;
      v37 = identifierCopy;
      v41 = v45;
LABEL_31:

      goto LABEL_32;
    }

    v71 = v45;
    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    currentPersona = [mEMORY[0x1E69DF068] currentPersona];

    userPersonaUniqueString = [currentPersona userPersonaUniqueString];
    v37 = identifierCopy;
    v69 = userPersonaUniqueString;
    if (!identifierCopy || userPersonaUniqueString && ([userPersonaUniqueString isEqualToString:identifierCopy] & 1) != 0)
    {
      v68 = currentPersona;
      v49 = [MEMORY[0x1E695DFF8] fp_supportDirectoryForVolume:lCopy];
      v50 = +[_TtC18FileProviderDaemon20InternalPathsManager purgatoryPrefix];
      v51 = [v49 URLByAppendingPathComponent:v50 isDirectory:1];

      v52 = v51;
    }

    else
    {
      v88 = 0;
      v55 = [currentPersona copyCurrentPersonaContextWithError:&v88];
      v57 = v88;
      if (v57)
      {
        v58 = v57;
        (*(handlerCopy + 2))(handlerCopy, v81, v82, v57);
        v70 = v58;
        v30 = handlerCopy;
        v34 = serviceCopy;
LABEL_30:

        v41 = v71;
        goto LABEL_31;
      }

      v70 = v55;
      v59 = [currentPersona generateAndRestorePersonaContextWithIdentityString:identifierCopy];
      if (v59)
      {
        v55 = v59;
        v60 = fp_current_or_default_log();
        v34 = serviceCopy;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          [FPCKTask _prepareXPCService:v55 domainUserInfo:? domainRootURL:? databaseBackupPath:? urls:? volumeRole:? personaIdentifier:? options:? reason:? fpfs:? iCDPackageDetection:? completionHandler:?];
        }

        v30 = handlerCopy;
        (*(handlerCopy + 2))(handlerCopy, v81, v82, v55);
        goto LABEL_30;
      }

      v61 = [MEMORY[0x1E695DFF8] fp_supportDirectoryForVolume:lCopy];
      v62 = +[_TtC18FileProviderDaemon20InternalPathsManager purgatoryPrefix];
      v67 = [v61 URLByAppendingPathComponent:v62 isDirectory:1];

      v63 = [currentPersona restorePersonaWithSavedPersonaContext:v55];
      if (v63)
      {
        v55 = v63;
        v64 = fp_current_or_default_log();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          [FPCKTask _prepareXPCService:v55 domainUserInfo:? domainRootURL:? databaseBackupPath:? urls:? volumeRole:? personaIdentifier:? options:? reason:? fpfs:? iCDPackageDetection:? completionHandler:?];
        }

        (*(handlerCopy + 2))(handlerCopy, v81, v82, v55);
        v30 = handlerCopy;
        v34 = serviceCopy;
        v37 = identifierCopy;
        goto LABEL_30;
      }

      v68 = currentPersona;
      v49 = v55;
      v52 = v67;
      v37 = identifierCopy;
    }

    v87 = v71;
    v70 = v52;
    v53 = [MEMORY[0x1E6967408] wrapperWithURL:v52 readonly:0 error:&v87];
    v54 = v87;

    v55 = v53;
    if (v53)
    {
      v71 = v54;
      v97[0] = v72;
      v97[1] = v53;
      v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:2];
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __171__FPCKTask__prepareXPCService_domainUserInfo_domainRootURL_databaseBackupPath_urls_volumeRole_personaIdentifier_options_reason_fpfs_iCDPackageDetection_completionHandler___block_invoke;
      v83[3] = &unk_1E83C19B0;
      v30 = handlerCopy;
      v86 = handlerCopy;
      v84 = v81;
      v85 = v82;
      LOWORD(v66) = __PAIR16__(detection, fpfs);
      v35 = pathCopy;
      v36 = lCopy;
      LODWORD(v65) = role;
      v37 = identifierCopy;
      v34 = serviceCopy;
      [v84 prepareFPCKForDomain:serviceCopy domainUserInfo:infoCopy domainRootURL:v73 databaseBackupPath:v40 accessingPaths:v56 urls:v19 volumeRole:v65 options:options reason:reason fpfs:v66 iCDPackageDetection:v83 completionHandler:?];
    }

    else
    {
      v30 = handlerCopy;
      (*(handlerCopy + 2))(handlerCopy, v81, v82, v54);
      v71 = v54;
      v34 = serviceCopy;
    }

    currentPersona = v68;
    goto LABEL_30;
  }

  v30 = handlerCopy;
  v31 = v81;
  v32 = v82;
  (*(handlerCopy + 2))(handlerCopy, v81, v82, v23);
  v34 = serviceCopy;
  v35 = pathCopy;
  v37 = identifierCopy;
LABEL_33:
  v33 = v73;
LABEL_34:
}

- (unint64_t)_resolveLaunchType:(unint64_t)type
{
  if (type == 2)
  {
    return 1;
  }

  else
  {
    return type;
  }
}

- (void)prepareFPCKRun:(id)run domainUserInfo:(id)info domainRootURL:(id)l databaseBackupPath:(id)path urls:(id)urls volumeRole:(unsigned int)role personaIdentifier:(id)identifier options:(unint64_t)self0 reason:(unint64_t)self1 fpfs:(BOOL)self2 iCDPackageDetection:(BOOL)self3 launchType:(unint64_t)self4 runOnWorkQueue:(BOOL)self5 completionHandler:(id)self6
{
  runCopy = run;
  infoCopy = info;
  lCopy = l;
  pathCopy = path;
  urlsCopy = urls;
  identifierCopy = identifier;
  handlerCopy = handler;
  v28 = [(FPCKTask *)self _resolveLaunchType:type];
  if (queue)
  {
    workQueue = self->workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __193__FPCKTask_prepareFPCKRun_domainUserInfo_domainRootURL_databaseBackupPath_urls_volumeRole_personaIdentifier_options_reason_fpfs_iCDPackageDetection_launchType_runOnWorkQueue_completionHandler___block_invoke;
    block[3] = &unk_1E83C19D8;
    v40 = v28;
    v39 = handlerCopy;
    block[4] = self;
    v33 = runCopy;
    v34 = infoCopy;
    v35 = lCopy;
    v36 = pathCopy;
    v37 = urlsCopy;
    roleCopy = role;
    v38 = identifierCopy;
    optionsCopy = options;
    reasonCopy = reason;
    fpfsCopy = fpfs;
    detectionCopy = detection;
    dispatch_async(workQueue, block);
  }

  else if (v28)
  {
    LOWORD(v30) = __PAIR16__(detection, fpfs);
    [(FPCKTask *)self _prepareXPCService:runCopy domainUserInfo:infoCopy domainRootURL:lCopy databaseBackupPath:pathCopy urls:urlsCopy volumeRole:role personaIdentifier:identifierCopy options:options reason:reason fpfs:v30 iCDPackageDetection:handlerCopy completionHandler:?];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
  }
}

uint64_t __193__FPCKTask_prepareFPCKRun_domainUserInfo_domainRootURL_databaseBackupPath_urls_volumeRole_personaIdentifier_options_reason_fpfs_iCDPackageDetection_launchType_runOnWorkQueue_completionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 96))
  {
    LOWORD(v4) = *(a1 + 124);
    return [*(a1 + 32) _prepareXPCService:*(a1 + 40) domainUserInfo:*(a1 + 48) domainRootURL:*(a1 + 56) databaseBackupPath:*(a1 + 64) urls:*(a1 + 72) volumeRole:*(a1 + 120) personaIdentifier:*(a1 + 80) options:*(a1 + 104) reason:*(a1 + 112) fpfs:v4 iCDPackageDetection:*(a1 + 88) completionHandler:?];
  }

  else
  {
    v3 = *(*(a1 + 88) + 16);

    return v3();
  }
}

- (void)scheduleFPCKRun:(id)run domainUserInfo:(id)info domainRootURL:(id)l databaseBackupPath:(id)path urls:(id)urls volumeRole:(unsigned int)role options:(unint64_t)options reason:(unint64_t)self0 fpfs:(BOOL)self1 iCDPackageDetection:(BOOL)self2 launchType:(unint64_t)self3 updateReceiver:(id)self4 shouldPause:(id)self5 contentBarrier:(int64_t)self6 proxy:(id)self7 completionHandler:(id)self8
{
  runCopy = run;
  infoCopy = info;
  lCopy = l;
  pathCopy = path;
  urlsCopy = urls;
  receiverCopy = receiver;
  pauseCopy = pause;
  proxyCopy = proxy;
  handlerCopy = handler;
  v31 = [(FPCKTask *)self _resolveLaunchType:type];
  switch(v31)
  {
    case 2uLL:
      v39 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v39);

      break;
    case 1uLL:
      [(FPCKTask *)self _launchXPCServiceWithUpdateReceiver:receiverCopy contentBarrier:barrier proxy:proxyCopy completionHandler:handlerCopy];
      break;
    case 0uLL:
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __209__FPCKTask_scheduleFPCKRun_domainUserInfo_domainRootURL_databaseBackupPath_urls_volumeRole_options_reason_fpfs_iCDPackageDetection_launchType_updateReceiver_shouldPause_contentBarrier_proxy_completionHandler___block_invoke_2;
      aBlock[3] = &unk_1E83C1A20;
      v32 = receiverCopy;
      v50 = v32;
      v41 = _Block_copy(aBlock);
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __209__FPCKTask_scheduleFPCKRun_domainUserInfo_domainRootURL_databaseBackupPath_urls_volumeRole_options_reason_fpfs_iCDPackageDetection_launchType_updateReceiver_shouldPause_contentBarrier_proxy_completionHandler___block_invoke_3;
      v47[3] = &unk_1E83C1A48;
      v42 = urlsCopy;
      v33 = pathCopy;
      v34 = lCopy;
      v35 = infoCopy;
      v36 = v32;
      v48 = v36;
      v37 = _Block_copy(v47);
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __209__FPCKTask_scheduleFPCKRun_domainUserInfo_domainRootURL_databaseBackupPath_urls_volumeRole_options_reason_fpfs_iCDPackageDetection_launchType_updateReceiver_shouldPause_contentBarrier_proxy_completionHandler___block_invoke_4;
      v45[3] = &unk_1E83C1A48;
      v46 = v36;
      v38 = _Block_copy(v45);
      LOWORD(v40) = __PAIR16__(detection, fpfs);
      [FPCKTask runFPCKForDomain:runCopy domainUserInfo:v35 domainRootURL:v34 databaseBackupPath:v33 urls:v42 volumeRole:role options:options reason:reason fpfs:v40 iCDPackageDetection:pauseCopy shouldPause:v37 sendDiagnostics:v41 saveCheckpoint:v38 reingestItems:&__block_literal_global_28_0 isInvalidated:barrier contentBarrier:handlerCopy completionHandler:?];

      infoCopy = v35;
      lCopy = v34;
      pathCopy = v33;
      urlsCopy = v42;

      break;
  }
}

void *__209__FPCKTask_scheduleFPCKRun_domainUserInfo_domainRootURL_databaseBackupPath_urls_volumeRole_options_reason_fpfs_iCDPackageDetection_launchType_updateReceiver_shouldPause_contentBarrier_proxy_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return [result saveCheckpointWithReport:a2];
  }

  return result;
}

void *__209__FPCKTask_scheduleFPCKRun_domainUserInfo_domainRootURL_databaseBackupPath_urls_volumeRole_options_reason_fpfs_iCDPackageDetection_launchType_updateReceiver_shouldPause_contentBarrier_proxy_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return [result sendDiagnosticsForItemIDs:a2];
  }

  return result;
}

void *__209__FPCKTask_scheduleFPCKRun_domainUserInfo_domainRootURL_databaseBackupPath_urls_volumeRole_options_reason_fpfs_iCDPackageDetection_launchType_updateReceiver_shouldPause_contentBarrier_proxy_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return [result reingestItemIDs:a2];
  }

  return result;
}

- (void)dumpDatabaseAt:(id)at fullDump:(BOOL)dump writeTo:(id)to completionHandler:(id)handler
{
  atCopy = at;
  toCopy = to;
  handlerCopy = handler;
  workQueue = self->workQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__FPCKTask_dumpDatabaseAt_fullDump_writeTo_completionHandler___block_invoke;
  v17[3] = &unk_1E83BF850;
  dumpCopy = dump;
  v18 = atCopy;
  v19 = toCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = toCopy;
  v16 = atCopy;
  dispatch_async(workQueue, v17);
}

void __62__FPCKTask_dumpDatabaseAt_fullDump_writeTo_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = 0;
  [_TtC18FileProviderDaemon4FPCK dumpDatabaseAt:v3 fullDump:v2 writeTo:v4 error:&v6];
  v5 = v6;
  (*(*(a1 + 48) + 16))();
}

+ (id)buildPauseResult:(BOOL)result semaphore:(id)semaphore
{
  resultCopy = result;
  semaphoreCopy = semaphore;
  v6 = [[_TtC18FileProviderDaemon19FPShouldPauseResult alloc] initWithShouldPause:resultCopy semaphore:semaphoreCopy];

  return v6;
}

- (void)_prepareXPCService:(void *)a1 domainUserInfo:domainRootURL:databaseBackupPath:urls:volumeRole:personaIdentifier:options:reason:fpfs:iCDPackageDetection:completionHandler:.cold.1(void *a1)
{
  v1 = [a1 fp_shortDescription];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_4_5(&dword_1CEFC7000, v2, v3, "[ERROR] Unable to launch FPCK, unable to sandbox wrap URL: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)_prepareXPCService:(void *)a1 domainUserInfo:domainRootURL:databaseBackupPath:urls:volumeRole:personaIdentifier:options:reason:fpfs:iCDPackageDetection:completionHandler:.cold.2(void *a1)
{
  v1 = [a1 fp_prettyDescription];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_4_5(&dword_1CEFC7000, v2, v3, "[ERROR] 🧹 FPCK error adopting persona during XPC Service preparation %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)_prepareXPCService:(void *)a1 domainUserInfo:domainRootURL:databaseBackupPath:urls:volumeRole:personaIdentifier:options:reason:fpfs:iCDPackageDetection:completionHandler:.cold.3(void *a1)
{
  v1 = [a1 fp_prettyDescription];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_4_5(&dword_1CEFC7000, v2, v3, "[ERROR] 🧹 FPCK error restoring persona during XPC Service preparation %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end