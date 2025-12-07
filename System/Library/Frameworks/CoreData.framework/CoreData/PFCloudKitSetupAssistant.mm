@interface PFCloudKitSetupAssistant
- (PFCloudKitSetupAssistant)initWithSetupRequest:(id)request mirroringOptions:(id)options accountMonitor:(id)monitor observedStore:(id)store;
- (uint64_t)_deleteZone:(void *)zone error:;
- (uint64_t)_initializeCloudKitForObservedStore:(_BYTE *)store andNoteMetadataInitialization:;
- (uint64_t)_saveZone:(void *)zone error:;
- (void)beginActivityForPhase:(uint64_t)phase;
- (void)dealloc;
- (void)endActivityForPhase:(uint64_t)phase withError:;
@end

@implementation PFCloudKitSetupAssistant

- (void)dealloc
{
  self->_container = 0;

  self->_database = 0;
  self->_databaseSubscription = 0;

  self->_largeBlobDirectoryURL = 0;
  cloudKitSemaphore = self->_cloudKitSemaphore;
  if (cloudKitSemaphore)
  {
    dispatch_release(cloudKitSemaphore);
  }

  v4.receiver = self;
  v4.super_class = PFCloudKitSetupAssistant;
  [(PFCloudKitSetupAssistant *)&v4 dealloc];
}

- (PFCloudKitSetupAssistant)initWithSetupRequest:(id)request mirroringOptions:(id)options accountMonitor:(id)monitor observedStore:(id)store
{
  v14.receiver = self;
  v14.super_class = PFCloudKitSetupAssistant;
  v10 = [(PFCloudKitSetupAssistant *)&v14 init];
  if (v10)
  {
    v10->_setupRequest = request;
    v10->_cloudKitSemaphore = dispatch_semaphore_create(0);
    v10->_mirroringOptions = options;
    v10->_accountMonitor = monitor;
    mirroringOptions = v10->_mirroringOptions;
    if (mirroringOptions)
    {
      storeMonitorProvider = mirroringOptions->_storeMonitorProvider;
    }

    else
    {
      storeMonitorProvider = 0;
    }

    v10->_storeMonitor = [PFCloudKitStoreMonitorProvider createMonitorForObservedStore:store inTransactionWithLabel:?];
  }

  return v10;
}

- (uint64_t)_initializeCloudKitForObservedStore:(_BYTE *)store andNoteMetadataInitialization:
{
  v243 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 8);
  if (v6)
  {
    v7 = *(v6 + 12);
  }

  else
  {
    v7 = 0;
  }

  *v204 = 0;
  *&v204[8] = v204;
  *&v204[16] = 0x2020000000;
  v204[24] = 1;
  *v217 = 0;
  *&v217[8] = v217;
  *&v217[16] = 0x3052000000;
  *&v217[24] = __Block_byref_object_copy__27;
  *&v217[32] = __Block_byref_object_dispose__27;
  v218 = 0;
  [(PFCloudKitSetupAssistant *)result beginActivityForPhase:?];
  v8 = *(v5 + 56);
  *v226 = MEMORY[0x1E69E9820];
  *&v226[8] = 3221225472;
  *&v226[16] = __56__PFCloudKitSetupAssistant__checkAndInitializeMetadata___block_invoke;
  *&v226[24] = &unk_1E6EC1A00;
  *&v226[32] = v8;
  v227 = v5;
  v228 = v204;
  v229 = v217;
  [(PFCloudKitStoreMonitor *)v8 performBlock:v226];
  [(PFCloudKitSetupAssistant *)v5 endActivityForPhase:*(*&v217[8] + 40) withError:?];
  if (*(*&v204[8] + 24))
  {
    goto LABEL_5;
  }

  v9 = *(*&v217[8] + 40);
  if (!v9)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *v239 = 136315394;
      *&v239[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
      *&v239[12] = 1024;
      *&v239[14] = 190;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v239, 0x12u);
    }

    v28 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      *v239 = 136315394;
      *&v239[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
      *&v239[12] = 1024;
      *&v239[14] = 190;
      _os_log_fault_impl(&dword_18565F000, v28, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v239, 0x12u);
    }

LABEL_5:
    v9 = 0;
  }

  *(*&v217[8] + 40) = 0;
  v10 = *(*&v204[8] + 24);
  _Block_object_dispose(v217, 8);
  _Block_object_dispose(v204, 8);
  if (v10 != 1)
  {
LABEL_114:
    v29 = v9;
    goto LABEL_115;
  }

  *store = 1;
  if (v7)
  {
    goto LABEL_9;
  }

  v200 = 0;
  v201 = &v200;
  v202 = 0x2020000000;
  v203 = 1;
  *v204 = 0;
  *&v204[8] = v204;
  *&v204[16] = 0x3052000000;
  *&v204[24] = __Block_byref_object_copy__27;
  *&v204[32] = __Block_byref_object_dispose__27;
  v205 = 0;
  v12 = *(v5 + 8);
  if (v12)
  {
    v13 = v12[10];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v13 containerWithIdentifier:objc_msgSend(v12 options:{"containerIdentifier"), objc_msgSend(*(v5 + 8), "containerOptions")}];
  [(PFCloudKitSetupAssistant *)v5 beginActivityForPhase:?];
  *v239 = 0;
  *&v239[8] = v239;
  *&v239[16] = 0x3052000000;
  v240 = __Block_byref_object_copy__27;
  v241 = __Block_byref_object_dispose__27;
  v242 = 0;
  v15 = *(v5 + 56);
  *v217 = MEMORY[0x1E69E9820];
  *&v217[8] = 3221225472;
  *&v217[16] = __48__PFCloudKitSetupAssistant__checkAccountStatus___block_invoke;
  *&v217[24] = &unk_1E6EC3A58;
  *&v217[32] = v15;
  v218 = v204;
  v219 = v239;
  v220 = &v200;
  [(PFCloudKitStoreMonitor *)v15 performBlock:v217];
  if (*(v201 + 24) == 1)
  {
    if (v14)
    {
      v16 = *(v5 + 48);
      useDeviceToDeviceEncryption = [*(v5 + 8) useDeviceToDeviceEncryption];
      v18 = *(v5 + 56);
      if (v18)
      {
        v18 = v18[6];
      }

      v19 = v18;
      [*(v5 + 80) setContainer:v14];
      v20 = *(v5 + 80);
      *v226 = MEMORY[0x1E69E9820];
      *&v226[8] = 3221225472;
      *&v226[16] = __48__PFCloudKitSetupAssistant__checkAccountStatus___block_invoke_23;
      *&v226[24] = &unk_1E6EC3AA8;
      LOBYTE(v232) = useDeviceToDeviceEncryption;
      v230 = v239;
      v231 = v204;
      *&v226[32] = v19;
      v227 = v5;
      v228 = v16;
      v229 = &v200;
      [v20 establishCurrentAccountInfoWithCompletionHandler:v226];
      v21 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v23 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v24 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v24 = 16 * (__ckLoggingOverride == 16);
      }

      if (os_log_type_enabled(Stream, v24))
      {
        requestIdentifier = [*(v5 + 72) requestIdentifier];
        *&buf[4] = "[PFCloudKitSetupAssistant _checkAccountStatus:]";
        *&buf[12] = 1024;
        v26 = @"<null>";
        *buf = 136315906;
        if (requestIdentifier)
        {
          v26 = requestIdentifier;
        }

        *&buf[14] = 439;
        *&buf[18] = 2112;
        *&buf[20] = v19;
        *&buf[28] = 2112;
        *&buf[30] = v26;
        _os_log_impl(&dword_18565F000, v23, v24, "CoreData+CloudKit: %s(%d): Waiting on accountInfoWithCompletionHandler for store %@ and setup request %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v21);
      dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      [*(v5 + 80) setContainer:0];
      *(v201 + 24) = 0;
      v33 = MEMORY[0x1E696ABC0];
      *v237 = *MEMORY[0x1E696A588];
      *v226 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [*(v5 + 8) containerIdentifier]);
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v226 forKeys:v237 count:1];
      v35 = [v33 errorWithDomain:*MEMORY[0x1E696A250] code:134400 userInfo:v34];
      *(*&v204[8] + 40) = v35;
    }
  }

  *(v5 + 16) = v14;
  if (*(v201 + 24) == 1)
  {
    databaseScope = [*(v5 + 8) databaseScope];
    switch(databaseScope)
    {
      case 3:
        sharedCloudDatabase = [*(v5 + 16) sharedCloudDatabase];
        break;
      case 2:
        sharedCloudDatabase = [*(v5 + 16) privateCloudDatabase];
        break;
      case 1:
        sharedCloudDatabase = [*(v5 + 16) publicCloudDatabase];
        break;
      default:
        *(v201 + 24) = 0;
        v38 = MEMORY[0x1E696ABC0];
        *v210 = *MEMORY[0x1E696A588];
        v39 = MEMORY[0x1E696AEC0];
        v40 = softLinkCKDatabaseScopeString([*(v5 + 8) databaseScope]);
        v233 = objc_msgSend_stringWithFormat_(v39, v40);
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v233 forKeys:v210 count:1];
        v42 = [v38 errorWithDomain:*MEMORY[0x1E696A250] code:134400 userInfo:v41];
        *(*&v204[8] + 40) = v42;
        goto LABEL_47;
    }

    *(v5 + 24) = sharedCloudDatabase;
LABEL_47:
    if (*(v201 + 24) == 1 && !*(v5 + 24))
    {
      *(v201 + 24) = 0;
      v43 = MEMORY[0x1E696ABC0];
      zoneID = *MEMORY[0x1E696A588];
      v44 = MEMORY[0x1E696AEC0];
      v45 = softLinkCKDatabaseScopeString([*(v5 + 8) databaseScope]);
      *v214 = objc_msgSend_stringWithFormat_(v44, v45, *(v5 + 16));
      v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v214 forKeys:&zoneID count:1];
      v47 = [v43 errorWithDomain:*MEMORY[0x1E696A250] code:134400 userInfo:v46];
      *(*&v204[8] + 40) = v47;
    }
  }

  [(PFCloudKitSetupAssistant *)v5 endActivityForPhase:*(*&v204[8] + 40) withError:?];
  if (v201[3])
  {
LABEL_51:
    v29 = v9;
    goto LABEL_53;
  }

  v29 = *(*&v204[8] + 40);
  if (!v29)
  {
    v69 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
      *&buf[12] = 1024;
      *&buf[14] = 486;
      _os_log_error_impl(&dword_18565F000, v69, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v70 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
      *&buf[12] = 1024;
      *&buf[14] = 486;
      _os_log_fault_impl(&dword_18565F000, v70, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    }

    goto LABEL_51;
  }

LABEL_53:

  *(*&v239[8] + 40) = 0;
  *(*&v204[8] + 40) = 0;
  v48 = *(v201 + 24);
  _Block_object_dispose(v239, 8);
  _Block_object_dispose(v204, 8);
  _Block_object_dispose(&v200, 8);
  if (v48 != 1)
  {
    goto LABEL_115;
  }

  v200 = 0;
  v201 = &v200;
  v202 = 0x2020000000;
  v203 = 0;
  [(PFCloudKitSetupAssistant *)v5 beginActivityForPhase:?];
  *v204 = 0;
  *&v204[8] = v204;
  *&v204[16] = 0x3052000000;
  *&v204[24] = __Block_byref_object_copy__27;
  *&v204[32] = __Block_byref_object_dispose__27;
  v205 = 0;
  *v239 = 0;
  *&v239[8] = v239;
  *&v239[16] = 0x3052000000;
  v240 = __Block_byref_object_copy__27;
  v241 = __Block_byref_object_dispose__27;
  v242 = 0;
  v49 = *(v5 + 56);
  if (v49)
  {
    v49 = v49[6];
  }

  v50 = *(v5 + 48);
  v51 = v49;
  v52 = *(v5 + 80);
  *v226 = MEMORY[0x1E69E9820];
  *&v226[8] = 3221225472;
  *&v226[16] = __47__PFCloudKitSetupAssistant__checkUserIdentity___block_invoke;
  *&v226[24] = &unk_1E6EC3D00;
  v228 = &v200;
  v229 = v204;
  v230 = v239;
  *&v226[32] = v51;
  v227 = v50;
  [v52 establishCurrentUserRecordIDWithCompletionHandler:v226];
  v53 = objc_autoreleasePoolPush();
  v54 = __PFCloudKitLoggingGetStream();
  v55 = v54;
  if (__ckLoggingOverride == 17)
  {
    v56 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v56 = 16 * (__ckLoggingOverride == 16);
  }

  if (os_log_type_enabled(v54, v56))
  {
    requestIdentifier2 = [*(v5 + 72) requestIdentifier];
    *&v217[4] = "[PFCloudKitSetupAssistant _checkUserIdentity:]";
    *&v217[12] = 1024;
    v58 = @"<null>";
    *v217 = 136315906;
    if (requestIdentifier2)
    {
      v58 = requestIdentifier2;
    }

    *&v217[14] = 1475;
    *&v217[18] = 2112;
    *&v217[20] = v51;
    *&v217[28] = 2112;
    *&v217[30] = v58;
    _os_log_impl(&dword_18565F000, v55, v56, "CoreData+CloudKit: %s(%d): Waiting on fetchUserRecordIDWithCompletionHandler for store %@ and setup request %@", v217, 0x26u);
  }

  objc_autoreleasePoolPop(v53);
  dispatch_semaphore_wait(v50, 0xFFFFFFFFFFFFFFFFLL);
  v59 = *(v5 + 56);
  v60 = v59;
  if (*(v201 + 24) == 1)
  {
    *v217 = MEMORY[0x1E69E9820];
    *&v217[8] = 3221225472;
    *&v217[16] = __47__PFCloudKitSetupAssistant__checkUserIdentity___block_invoke_102;
    *&v217[24] = &unk_1E6EC3D78;
    *&v217[32] = v59;
    v218 = v5;
    v219 = v204;
    v220 = &v200;
    v221 = v239;
    [(PFCloudKitStoreMonitor *)v59 performBlock:v217];
    v61 = *(*&v239[8] + 40);
    if (!v61)
    {
      v9 = 0;
      goto LABEL_90;
    }

    goto LABEL_76;
  }

  domain = [*(*&v239[8] + 40) domain];
  if (![domain isEqualToString:getCloudKitCKErrorDomain()] || objc_msgSend(*(*&v239[8] + 40), "code") != 9)
  {
    v63 = objc_autoreleasePoolPush();
    v64 = __PFCloudKitLoggingGetStream();
    v65 = v64;
    if (__ckLoggingOverride == 17)
    {
      v66 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v66 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v64, v66))
    {
      v67 = *(*&v239[8] + 40);
      *v217 = 136315906;
      *&v217[4] = "[PFCloudKitSetupAssistant _checkUserIdentity:]";
      *&v217[12] = 1024;
      *&v217[14] = 1635;
      *&v217[18] = 2112;
      *&v217[20] = v5;
      *&v217[28] = 2112;
      *&v217[30] = v67;
      _os_log_impl(&dword_18565F000, v65, v66, "CoreData+CloudKit: %s(%d): %@: Identity fetch failed with unknown error: %@", v217, 0x26u);
    }

    objc_autoreleasePoolPop(v63);
    v61 = *(*&v239[8] + 40);
    if (!v61)
    {
      v71 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        *v217 = 0;
        _os_log_error_impl(&dword_18565F000, v71, OS_LOG_TYPE_ERROR, "CoreData: fault: Identity fetch failed but did not set an error.\n", v217, 2u);
      }

      v72 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
      {
        *v217 = 0;
        _os_log_fault_impl(&dword_18565F000, v72, OS_LOG_TYPE_FAULT, "CoreData: Identity fetch failed but did not set an error.", v217, 2u);
      }

      v73 = MEMORY[0x1E696ABC0];
      v74 = *(*&v239[8] + 40);
      if (v74)
      {
        *v237 = *MEMORY[0x1E696AA08];
        *v217 = v74;
        v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v217 forKeys:v237 count:1];
      }

      else
      {
        v75 = 0;
      }

      v68 = [v73 errorWithDomain:*MEMORY[0x1E696A250] code:134400 userInfo:v75];
      goto LABEL_89;
    }

LABEL_76:
    v68 = v61;
LABEL_89:
    v9 = v68;
    goto LABEL_90;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  *&buf[24] = __Block_byref_object_copy__27;
  *&buf[32] = __Block_byref_object_dispose__27;
  v213 = 0;
  *v217 = MEMORY[0x1E69E9820];
  *&v217[8] = 3221225472;
  *&v217[16] = __47__PFCloudKitSetupAssistant__checkUserIdentity___block_invoke_107;
  *&v217[24] = &unk_1E6EC3D78;
  v219 = &v200;
  v220 = buf;
  *&v217[32] = v60;
  v218 = v5;
  v221 = v239;
  [(PFCloudKitStoreMonitor *)v60 performBlock:v217];
  if (v201[3])
  {
    v9 = 0;
  }

  else
  {
    v9 = *(*&buf[8] + 40);
  }

  *(*&buf[8] + 40) = 0;
  _Block_object_dispose(buf, 8);
LABEL_90:
  [(PFCloudKitSetupAssistant *)v5 endActivityForPhase:v9 withError:?];
  if (v201[3])
  {
LABEL_91:
    v9 = v29;
    goto LABEL_93;
  }

  if (!v9)
  {
    v113 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
      *&buf[12] = 1024;
      *&buf[14] = 1651;
      _os_log_error_impl(&dword_18565F000, v113, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v114 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v114, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
      *&buf[12] = 1024;
      *&buf[14] = 1651;
      _os_log_fault_impl(&dword_18565F000, v114, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    }

    goto LABEL_91;
  }

LABEL_93:

  *(*&v204[8] + 40) = 0;
  *(*&v239[8] + 40) = 0;

  v76 = *(v201 + 24);
  _Block_object_dispose(v239, 8);
  _Block_object_dispose(v204, 8);
  _Block_object_dispose(&v200, 8);
  if (v76 != 1)
  {
    goto LABEL_114;
  }

  v233 = 0;
  v234 = &v233;
  v235 = 0x2020000000;
  v236 = 1;
  v224 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  *&buf[24] = __Block_byref_object_copy__27;
  *&buf[32] = __Block_byref_object_dispose__27;
  v213 = 0;
  v198 = *(v5 + 56);
  *v210 = 0;
  *&v210[8] = v210;
  *&v210[16] = 0x2020000000;
  v211 = 0;
  databaseScope2 = [*(v5 + 8) databaseScope];
  [(PFCloudKitSetupAssistant *)v5 beginActivityForPhase:?];
  v200 = 0;
  v201 = &v200;
  v202 = 0x2020000000;
  v203 = 1;
  *v239 = 0;
  *&v239[8] = v239;
  *&v239[16] = 0x3052000000;
  v240 = __Block_byref_object_copy__27;
  v241 = __Block_byref_object_dispose__27;
  v242 = 0;
  databaseScope3 = [*(v5 + 8) databaseScope];
  if (databaseScope3 == 3)
  {
    v97 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v98 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v99 = *(v5 + 56);
    *v217 = MEMORY[0x1E69E9820];
    *&v217[8] = 3221225472;
    *&v217[16] = __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_70;
    *&v217[24] = &unk_1E6EC3AF8;
    v221 = 3;
    v219 = v239;
    v220 = &v200;
    *&v217[32] = v99;
    v218 = v98;
    [(PFCloudKitStoreMonitor *)v99 performBlock:v217];

    if (!*(*&v239[8] + 40) && [v98 count])
    {
      v100 = dispatch_semaphore_create(0);
      v101 = [objc_alloc(getCloudKitCKModifyRecordsOperationClass()) initWithRecordsToSave:0 recordIDsToDelete:{objc_msgSend(v98, "allObjects")}];
      -[NSCloudKitMirroringRequestOptions applyToOperation:]([*(v5 + 72) options], v101);
      [v101 setMarkAsParticipantNeedsNewInvitationToken:1];
      *v204 = MEMORY[0x1E69E9820];
      *&v204[8] = 3221225472;
      *&v204[16] = __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_3_75;
      *&v204[24] = &unk_1E6EC3B70;
      v206 = v239;
      *&v204[32] = v100;
      v205 = &v200;
      [v101 setModifyRecordsCompletionBlock:v204];
      [*(v5 + 24) addOperation:v101];

      v102 = objc_autoreleasePoolPush();
      v103 = __PFCloudKitLoggingGetStream();
      v104 = v103;
      if (__ckLoggingOverride == 17)
      {
        v105 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v105 = 16 * (__ckLoggingOverride == 16);
      }

      if (os_log_type_enabled(v103, v105))
      {
        dsema = v100;
        v106 = *(v5 + 56);
        if (v106)
        {
          v107 = *(v106 + 48);
        }

        else
        {
          v107 = 0;
        }

        requestIdentifier3 = [*(v5 + 72) requestIdentifier];
        *&v226[4] = "[PFCloudKitSetupAssistant _recoverFromManateeIdentityLossIfNecessary:]";
        *&v226[12] = 1024;
        v109 = @"<null>";
        *v226 = 136315906;
        if (requestIdentifier3)
        {
          v109 = requestIdentifier3;
        }

        *&v226[14] = 711;
        *&v226[18] = 2112;
        *&v226[20] = v107;
        *&v226[28] = 2112;
        *&v226[30] = v109;
        _os_log_impl(&dword_18565F000, v104, v105, "CoreData+CloudKit: %s(%d): Waiting on mantee recovery shares to delete for store %@ and setup request %@", v226, 0x26u);
        v100 = dsema;
      }

      objc_autoreleasePoolPop(v102);
      dispatch_semaphore_wait(v100, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v100);
    }

    if (!*(*&v239[8] + 40) && [v97 count])
    {
      v110 = *(v5 + 56);
      *v226 = MEMORY[0x1E69E9820];
      *&v226[8] = 3221225472;
      *&v226[16] = __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_76;
      *&v226[24] = &unk_1E6EC3AD0;
      *&v226[32] = v110;
      v227 = v97;
      v230 = &v200;
      v231 = 3;
      v228 = v5;
      v229 = v239;
      [(PFCloudKitStoreMonitor *)v110 performBlock:v226];
    }

    v111 = *(*&v239[8] + 40);
    if (v111)
    {
      v112 = v111;
      if (v112)
      {
        v224 = v112;
      }

      else
      {
        v117 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
        {
          *v237 = 136315394;
          *&v237[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
          *&v237[12] = 1024;
          *&v237[14] = 781;
          _os_log_error_impl(&dword_18565F000, v117, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v237, 0x12u);
        }

        v118 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v118, OS_LOG_TYPE_FAULT))
        {
          *v237 = 136315394;
          *&v237[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
          *&v237[12] = 1024;
          *&v237[14] = 781;
          _os_log_fault_impl(&dword_18565F000, v118, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v237, 0x12u);
        }
      }

      goto LABEL_157;
    }
  }

  else if (databaseScope3 == 2)
  {
    v79 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v80 = *(v5 + 56);
    *v217 = MEMORY[0x1E69E9820];
    *&v217[8] = 3221225472;
    *&v217[16] = __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke;
    *&v217[24] = &unk_1E6EC3AF8;
    v221 = 2;
    v219 = v239;
    v220 = &v200;
    *&v217[32] = v80;
    v218 = v79;
    [(PFCloudKitStoreMonitor *)v80 performBlock:v217];

    if (!*(*&v239[8] + 40) && [v79 count])
    {
      allObjects = [v79 allObjects];
      v82 = dispatch_semaphore_create(0);
      v83 = [objc_alloc(getCloudKitCKModifyRecordZonesOperationClass()) initWithRecordZonesToSave:0 recordZoneIDsToDelete:allObjects];
      -[NSCloudKitMirroringRequestOptions applyToOperation:]([*(v5 + 72) options], v83);
      *v204 = MEMORY[0x1E69E9820];
      *&v204[8] = 3221225472;
      *&v204[16] = __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_3;
      *&v204[24] = &unk_1E6EC3B20;
      v206 = &v200;
      v207 = v239;
      *&v204[32] = allObjects;
      v205 = v82;
      [v83 setModifyRecordZonesCompletionBlock:v204];
      [*(v5 + 24) addOperation:v83];

      v84 = objc_autoreleasePoolPush();
      v85 = __PFCloudKitLoggingGetStream();
      v86 = v85;
      if (__ckLoggingOverride == 17)
      {
        v87 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v87 = 16 * (__ckLoggingOverride == 16);
      }

      if (os_log_type_enabled(v85, v87))
      {
        v88 = *(v5 + 56);
        if (v88)
        {
          v89 = *(v88 + 48);
        }

        else
        {
          v89 = 0;
        }

        requestIdentifier4 = [*(v5 + 72) requestIdentifier];
        *&v226[4] = "[PFCloudKitSetupAssistant _recoverFromManateeIdentityLossIfNecessary:]";
        *&v226[12] = 1024;
        v91 = @"<null>";
        *v226 = 136315906;
        if (requestIdentifier4)
        {
          v91 = requestIdentifier4;
        }

        *&v226[14] = 570;
        *&v226[18] = 2112;
        *&v226[20] = v89;
        *&v226[28] = 2112;
        *&v226[30] = v91;
        _os_log_impl(&dword_18565F000, v86, v87, "CoreData+CloudKit: %s(%d): Waiting on mantee recovery zones to delete for store %@ and setup request %@", v226, 0x26u);
      }

      objc_autoreleasePoolPop(v84);
      dispatch_semaphore_wait(v82, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v82);
    }

    if (!*(*&v239[8] + 40) && [v79 count])
    {
      v92 = *(v5 + 56);
      *v226 = MEMORY[0x1E69E9820];
      *&v226[8] = 3221225472;
      *&v226[16] = __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_65;
      *&v226[24] = &unk_1E6EC3AD0;
      *&v226[32] = v92;
      v227 = v79;
      v230 = &v200;
      v231 = 2;
      v228 = v5;
      v229 = v239;
      [(PFCloudKitStoreMonitor *)v92 performBlock:v226];
    }

    v93 = *(*&v239[8] + 40);
    if (v93)
    {
      v94 = v93;
      if (v94)
      {
        v224 = v94;
      }

      else
      {
        v115 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          *v237 = 136315394;
          *&v237[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
          *&v237[12] = 1024;
          *&v237[14] = 639;
          _os_log_error_impl(&dword_18565F000, v115, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v237, 0x12u);
        }

        v116 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v116, OS_LOG_TYPE_FAULT))
        {
          *v237 = 136315394;
          *&v237[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
          *&v237[12] = 1024;
          *&v237[14] = 639;
          _os_log_fault_impl(&dword_18565F000, v116, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v237, 0x12u);
        }
      }

LABEL_157:

      *(*&v239[8] + 40) = 0;
    }
  }

  v119 = *(v201 + 24);
  _Block_object_dispose(v239, 8);
  _Block_object_dispose(&v200, 8);
  v120 = v234;
  *(v234 + 24) = v119;
  if (v119 == 1)
  {
    if ((databaseScope2 - 1) > 1)
    {
      *(*&v210[8] + 24) = 1;
    }

    else
    {
      *v204 = MEMORY[0x1E69E9820];
      *&v204[8] = 3221225472;
      *&v204[16] = __51__PFCloudKitSetupAssistant__createZoneIfNecessary___block_invoke;
      *&v204[24] = &unk_1E6EC3BC0;
      *&v204[32] = v198;
      v205 = v5;
      v206 = v210;
      v207 = &v233;
      v208 = buf;
      v209 = databaseScope2;
      [(PFCloudKitStoreMonitor *)v198 performBlock:v204];
      v120 = v234;
    }
  }

  if (*(v120 + 24) == 1 && (*(*&v210[8] + 24) & 1) == 0)
  {
    *(v120 + 24) = 0;
    if (databaseScope2 == 3)
    {
      *(v120 + 24) = 1;
      goto LABEL_164;
    }

    if (databaseScope2 != 2)
    {
      v134 = [PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:databaseScope2];
      v135 = [objc_alloc(getCloudKitCKRecordZoneClass()) initWithZoneID:v134];
      v200 = 0;
      v201 = &v200;
      v202 = 0x2020000000;
      v203 = 0;
      *v239 = 0;
      *&v239[8] = v239;
      *&v239[16] = 0x3052000000;
      v240 = __Block_byref_object_copy__27;
      v241 = __Block_byref_object_dispose__27;
      v242 = 0;
      databaseScope4 = [*(v5 + 8) databaseScope];
      dsemaa = *(v5 + 48);
      v137 = objc_alloc(getCloudKitCKFetchRecordZonesOperationClass(databaseScope4));
      zoneID = [v135 zoneID];
      v138 = [v137 initWithRecordZoneIDs:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &zoneID, 1)}];
      -[NSCloudKitMirroringRequestOptions applyToOperation:]([*(v5 + 72) options], v138);
      *v237 = 0;
      *&v237[8] = v237;
      *&v237[16] = 0x2020000000;
      v238 = 0;
      *v226 = MEMORY[0x1E69E9820];
      *&v226[8] = 3221225472;
      *&v226[16] = __53__PFCloudKitSetupAssistant__checkIfZoneExists_error___block_invoke;
      *&v226[24] = &unk_1E6EC3C10;
      v228 = v239;
      v229 = &v200;
      v230 = v237;
      v231 = databaseScope4;
      *&v226[32] = v135;
      v227 = dsemaa;
      [v138 setFetchRecordZonesCompletionBlock:v226];
      [*(v5 + 24) addOperation:v138];
      v139 = objc_autoreleasePoolPush();
      v140 = __PFCloudKitLoggingGetStream();
      v141 = v140;
      if (__ckLoggingOverride == 17)
      {
        v142 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v142 = 16 * (__ckLoggingOverride == 16);
      }

      if (os_log_type_enabled(v140, v142))
      {
        v195 = databaseScope4;
        v143 = v138;
        v144 = v135;
        v145 = v134;
        v146 = *(v5 + 56);
        if (v146)
        {
          v147 = *(v146 + 48);
        }

        else
        {
          v147 = 0;
        }

        requestIdentifier5 = [*(v5 + 72) requestIdentifier];
        *&v217[4] = "[PFCloudKitSetupAssistant _checkIfZoneExists:error:]";
        *&v217[12] = 1024;
        v149 = @"<null>";
        *v217 = 136315906;
        if (requestIdentifier5)
        {
          v149 = requestIdentifier5;
        }

        *&v217[14] = 1096;
        *&v217[18] = 2112;
        *&v217[20] = v147;
        *&v217[28] = 2112;
        *&v217[30] = v149;
        _os_log_impl(&dword_18565F000, v141, v142, "CoreData+CloudKit: %s(%d): Waiting on zone fetch record for store %@ and setup request %@", v217, 0x26u);
        v134 = v145;
        v135 = v144;
        v138 = v143;
        databaseScope4 = v195;
      }

      objc_autoreleasePoolPop(v139);
      dispatch_semaphore_wait(dsemaa, 0xFFFFFFFFFFFFFFFFLL);
      if (*(v201 + 24) == 1)
      {
        v150 = *(v5 + 56);
        *v217 = MEMORY[0x1E69E9820];
        *&v217[8] = 3221225472;
        *&v217[16] = __53__PFCloudKitSetupAssistant__checkIfZoneExists_error___block_invoke_86;
        *&v217[24] = &unk_1E6EC3BC0;
        *&v217[32] = v150;
        v218 = v135;
        v219 = v237;
        v220 = &v200;
        v221 = v239;
        v222 = databaseScope4;
        [(PFCloudKitStoreMonitor *)v150 performBlock:v217];
      }

      else if (databaseScope4 == 1 && [*(*&v239[8] + 40) code] == 9)
      {
        domain2 = [*(*&v239[8] + 40) domain];
        if ([domain2 isEqualToString:getCloudKitCKErrorDomain()])
        {
          v163 = [objc_msgSend(v135 "zoneID")];
          if (([v163 isEqualToString:getCloudKitCKRecordZoneDefaultName()] & 1) == 0)
          {
            v164 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
            {
              *v217 = 0;
              _os_log_error_impl(&dword_18565F000, v164, OS_LOG_TYPE_ERROR, "CoreData: fault: Custom zones aren't supported yet with the public database.\n", v217, 2u);
            }

            v165 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v165, OS_LOG_TYPE_FAULT))
            {
              *v217 = 0;
              _os_log_fault_impl(&dword_18565F000, v165, OS_LOG_TYPE_FAULT, "CoreData: Custom zones aren't supported yet with the public database.", v217, 2u);
            }
          }

          *(v201 + 24) = 1;

          *(*&v239[8] + 40) = 0;
          v166 = *(v5 + 56);
          *v217 = MEMORY[0x1E69E9820];
          *&v217[8] = 3221225472;
          *&v217[16] = __53__PFCloudKitSetupAssistant__checkIfZoneExists_error___block_invoke_87;
          *&v217[24] = &unk_1E6EC3C38;
          *&v217[32] = v166;
          v218 = v135;
          v221 = 1;
          v219 = &v200;
          v220 = v239;
          [(PFCloudKitStoreMonitor *)v166 performBlock:v217];
        }
      }

      if ((v201[3] & 1) == 0)
      {
        v167 = *(*&v239[8] + 40);
        if (v167)
        {
          v224 = v167;
        }

        else
        {
          v185 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
          {
            *v214 = 136315394;
            *&v214[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
            v215 = 1024;
            v216 = 1187;
            _os_log_error_impl(&dword_18565F000, v185, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v214, 0x12u);
          }

          v186 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v186, OS_LOG_TYPE_FAULT))
          {
            *v214 = 136315394;
            *&v214[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
            v215 = 1024;
            v216 = 1187;
            _os_log_fault_impl(&dword_18565F000, v186, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v214, 0x12u);
          }
        }
      }

      *(*&v239[8] + 40) = 0;
      v187 = *(v201 + 24);
      _Block_object_dispose(v237, 8);
      _Block_object_dispose(v239, 8);
      _Block_object_dispose(&v200, 8);
      *(v234 + 24) = v187;

      goto LABEL_164;
    }

    v122 = [PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:2];
    v123 = [objc_alloc(getCloudKitCKRecordZoneClass()) initWithZoneID:v122];
    if ([(PFCloudKitSetupAssistant *)v5 _saveZone:v123 error:&v224])
    {
      *(v234 + 24) = 1;
LABEL_268:

      goto LABEL_164;
    }

    v151 = v224;
    domain3 = [(__CFString *)v224 domain];
    if ([domain3 isEqualToString:getCloudKitCKErrorDomain()])
    {
      if ([(__CFString *)v151 code]== 112)
      {
        goto LABEL_204;
      }

      if ([(__CFString *)v151 code]== 2)
      {
        userInfo = [(__CFString *)v151 userInfo];
        v189 = [objc_msgSend(userInfo objectForKey:{getCloudKitCKPartialErrorsByItemIDKey()), "objectForKey:", objc_msgSend(v123, "zoneID")}];
        domain4 = [v189 domain];
        if ([domain4 isEqualToString:getCloudKitCKErrorDomain()])
        {
          if ([v189 code] == 112)
          {
LABEL_204:
            *v217 = 0;
            if (([(PFCloudKitSetupAssistant *)v5 _deleteZone:v123 error:v217]& 1) == 0)
            {
              if (v234[3])
              {
                goto LABEL_206;
              }

              goto LABEL_261;
            }

LABEL_205:
            v153 = [(PFCloudKitSetupAssistant *)v5 _saveZone:v123 error:v217];
            *(v234 + 24) = v153;
            if (v153)
            {
LABEL_206:
              v154 = 0;
LABEL_267:
              v224 = v154;
              goto LABEL_268;
            }

LABEL_261:
            v191 = objc_autoreleasePoolPush();
            v192 = __PFCloudKitLoggingGetStream();
            v193 = v192;
            if (__ckLoggingOverride == 17)
            {
              v194 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v194 = OS_LOG_TYPE_ERROR;
            }

            if (os_log_type_enabled(v192, v194))
            {
              *v226 = 136316162;
              *&v226[4] = "[PFCloudKitSetupAssistant _createZoneIfNecessary:]";
              *&v226[12] = 1024;
              *&v226[14] = 879;
              *&v226[18] = 2112;
              *&v226[20] = v5;
              *&v226[28] = 2112;
              *&v226[30] = v224;
              *&v226[38] = 2112;
              v227 = *v217;
              _os_log_impl(&dword_18565F000, v193, v194, "CoreData+CloudKit: %s(%d): %@ unable to recover from error: %@\nEncountered subsequent error: %@", v226, 0x30u);
            }

            objc_autoreleasePoolPop(v191);
            v154 = *v217;
            goto LABEL_267;
          }

          if ([v189 code] == 14)
          {
            *v217 = 0;
            goto LABEL_205;
          }
        }
      }
    }

    *(v234 + 24) = 0;
    goto LABEL_268;
  }

LABEL_164:
  [(PFCloudKitSetupAssistant *)v5 endActivityForPhase:*(*&buf[8] + 40) withError:?];
  if (v234[3])
  {
LABEL_165:
    v29 = v9;
    goto LABEL_174;
  }

  v121 = *(*&buf[8] + 40);
  if (v121)
  {
    v29 = v121;
    v224 = v29;
  }

  else
  {
    v29 = v224;
  }

  if (!v29)
  {
    v130 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
    {
      *v226 = 136315394;
      *&v226[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
      *&v226[12] = 1024;
      *&v226[14] = 908;
      _os_log_error_impl(&dword_18565F000, v130, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v226, 0x12u);
    }

    v131 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v131, OS_LOG_TYPE_FAULT))
    {
      *v226 = 136315394;
      *&v226[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
      *&v226[12] = 1024;
      *&v226[14] = 908;
      _os_log_fault_impl(&dword_18565F000, v131, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v226, 0x12u);
    }

    goto LABEL_165;
  }

LABEL_174:

  *(*&buf[8] + 40) = 0;
  v124 = *(v234 + 24);
  _Block_object_dispose(v210, 8);
  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v233, 8);
  if (v124 != 1)
  {
    goto LABEL_115;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  buf[24] = 1;
  v200 = 0;
  v201 = &v200;
  v202 = 0x2020000000;
  v203 = 0;
  *v239 = 0;
  *&v239[8] = v239;
  *&v239[16] = 0x3052000000;
  v240 = __Block_byref_object_copy__27;
  v241 = __Block_byref_object_dispose__27;
  v242 = 0;
  *v237 = 0;
  *&v237[8] = v237;
  *&v237[16] = 0x2020000000;
  LOBYTE(v238) = 0;
  v233 = 0;
  v234 = &v233;
  v235 = 0x2020000000;
  v236 = 0;
  databaseScope5 = [*(v5 + 8) databaseScope];
  if (databaseScope5 == 1)
  {
    v126 = 1;
    goto LABEL_243;
  }

  [(PFCloudKitSetupAssistant *)v5 beginActivityForPhase:?];
  v127 = *(v5 + 56);
  v128 = v127;
  if (databaseScope5 == 3)
  {
    *v226 = MEMORY[0x1E69E9820];
    *&v226[8] = 3221225472;
    *&v226[16] = __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_3;
    *&v226[24] = &unk_1E6EC3CB0;
    v230 = 3;
    *&v226[32] = v127;
    v227 = v237;
    v228 = buf;
    v229 = v239;
    [(PFCloudKitStoreMonitor *)v127 performBlock:v226];
  }

  else if (databaseScope5 == 2)
  {
    v129 = [PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:2];
    *v226 = MEMORY[0x1E69E9820];
    *&v226[8] = 3221225472;
    *&v226[16] = __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke;
    *&v226[24] = &unk_1E6EC3C88;
    *&v226[32] = v128;
    v227 = v129;
    v232 = 2;
    v228 = &v233;
    v229 = v237;
    v230 = buf;
    v231 = v239;
    [(PFCloudKitStoreMonitor *)v128 performBlock:v226];
  }

  if (*(*&buf[8] + 24) == 1)
  {
    databaseScope6 = [*(v5 + 8) databaseScope];
    switch(databaseScope6)
    {
      case 1:
        v133 = PFPublicDatabaseSubscriptionID;
        break;
      case 2:
        v133 = PFPrivateDatabaseSubscriptionID;
        break;
      case 3:
        v133 = PFSharedDatabaseSubscriptionID;
        break;
      default:
        *(*&buf[8] + 24) = 0;
        v156 = objc_alloc(MEMORY[0x1E696ABC0]);
        zoneID = *MEMORY[0x1E696A588];
        v157 = MEMORY[0x1E696AEC0];
        v158 = softLinkCKDatabaseScopeString([*(v5 + 8) databaseScope]);
        *v214 = objc_msgSend_stringWithFormat_(v157, v158);
        v159 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v214 forKeys:&zoneID count:1];
        v160 = [v156 initWithDomain:*MEMORY[0x1E696A250] code:134400 userInfo:v159];
        v155 = 0;
        *(*&v239[8] + 40) = v160;
LABEL_211:
        if (*(*&buf[8] + 24) == 1)
        {
          *(v5 + 32) = [objc_alloc(getCloudKitCKDatabaseSubscriptionClass()) initWithSubscriptionID:v155];
          v161 = objc_alloc_init(getCloudKitCKNotificationInfoClass());
          [v161 setShouldSendContentAvailable:1];
          [*(v5 + 32) setNotificationInfo:v161];

          if (*(*&v237[8] + 24))
          {
            *(*&buf[8] + 24) = 1;
          }

          else
          {
            *(*&buf[8] + 24) = 0;
            v168 = *(v5 + 32);
            v169 = *(v5 + 48);
            if (*(v234 + 24) == 1)
            {
              v224 = @"com.apple.coredata.cloudkit.zone.subscription";
              v170 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v224 count:1];
            }

            else
            {
              v170 = 0;
            }

            v171 = objc_alloc(getCloudKitCKModifySubscriptionsOperationClass());
            v223 = v168;
            v172 = [v171 initWithSubscriptionsToSave:objc_msgSend(MEMORY[0x1E695DEC8] subscriptionIDsToDelete:{"arrayWithObjects:count:", &v223, 1), v170}];
            -[NSCloudKitMirroringRequestOptions applyToOperation:]([*(v5 + 72) options], v172);
            *v217 = MEMORY[0x1E69E9820];
            *&v217[8] = 3221225472;
            *&v217[16] = __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_5;
            *&v217[24] = &unk_1E6EC3CD8;
            v219 = buf;
            v220 = v239;
            v221 = &v200;
            *&v217[32] = v168;
            v218 = v169;
            [v172 setModifySubscriptionsCompletionBlock:v217];
            [*(v5 + 24) addOperation:v172];
            v173 = objc_autoreleasePoolPush();
            v174 = __PFCloudKitLoggingGetStream();
            v175 = v174;
            if (__ckLoggingOverride == 17)
            {
              v176 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v176 = 16 * (__ckLoggingOverride == 16);
            }

            if (os_log_type_enabled(v174, v176))
            {
              v199 = v169;
              v177 = *(v5 + 56);
              if (v177)
              {
                v178 = *(v177 + 48);
              }

              else
              {
                v178 = 0;
              }

              requestIdentifier6 = [*(v5 + 72) requestIdentifier];
              *&v204[4] = "[PFCloudKitSetupAssistant _setupDatabaseSubscriptionIfNecessary:]";
              *&v204[12] = 1024;
              v180 = @"<null>";
              *v204 = 136315906;
              if (requestIdentifier6)
              {
                v180 = requestIdentifier6;
              }

              *&v204[14] = 1374;
              *&v204[18] = 2112;
              *&v204[20] = v178;
              *&v204[28] = 2112;
              *&v204[30] = v180;
              _os_log_impl(&dword_18565F000, v175, v176, "CoreData+CloudKit: %s(%d): Waiting on database subscription setup for store %@ and setup request %@", v204, 0x26u);
              v169 = v199;
            }

            objc_autoreleasePoolPop(v173);
            dispatch_semaphore_wait(v169, 0xFFFFFFFFFFFFFFFFLL);
            v181 = *(v5 + 56);
            *v204 = MEMORY[0x1E69E9820];
            *&v204[8] = 3221225472;
            *&v204[16] = __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_99;
            *&v204[24] = &unk_1E6EC3CB0;
            *&v204[32] = v181;
            v205 = buf;
            v206 = &v200;
            v207 = v239;
            v208 = databaseScope5;
            [(PFCloudKitStoreMonitor *)v181 performBlock:v204];
          }
        }

        goto LABEL_239;
    }

    v155 = *v133;
    goto LABEL_211;
  }

LABEL_239:
  [(PFCloudKitSetupAssistant *)v5 endActivityForPhase:*(*&v239[8] + 40) withError:?];
  if ((*(*&buf[8] + 24) & 1) == 0)
  {
    v182 = *(*&v239[8] + 40);
    if (v182)
    {
      goto LABEL_242;
    }

    v183 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
    {
      *v210 = 136315394;
      *&v210[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
      *&v210[12] = 1024;
      *&v210[14] = 1446;
      _os_log_error_impl(&dword_18565F000, v183, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v210, 0x12u);
    }

    v184 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v184, OS_LOG_TYPE_FAULT))
    {
      *v210 = 136315394;
      *&v210[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
      *&v210[12] = 1024;
      *&v210[14] = 1446;
      _os_log_fault_impl(&dword_18565F000, v184, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v210, 0x12u);
    }
  }

  v182 = v29;
LABEL_242:

  *(*&v239[8] + 40) = 0;
  v126 = *(*&buf[8] + 24);
  v29 = v182;
LABEL_243:
  _Block_object_dispose(&v233, 8);
  _Block_object_dispose(v237, 8);
  _Block_object_dispose(v239, 8);
  _Block_object_dispose(&v200, 8);
  _Block_object_dispose(buf, 8);
  v9 = v29;
  if (v126)
  {
LABEL_9:
    *v239 = 0;
    *&v239[8] = v239;
    *&v239[16] = 0x2020000000;
    LOBYTE(v240) = 1;
    *v217 = 0;
    *&v217[8] = v217;
    *&v217[16] = 0x3052000000;
    *&v217[24] = __Block_byref_object_copy__27;
    *&v217[32] = __Block_byref_object_dispose__27;
    v218 = 0;
    v11 = *(v5 + 56);
    *v204 = 0;
    *&v204[8] = v204;
    *&v204[16] = 0x3052000000;
    *&v204[24] = __Block_byref_object_copy__27;
    *&v204[32] = __Block_byref_object_dispose__27;
    v205 = 0;
    [(PFCloudKitSetupAssistant *)v5 beginActivityForPhase:?];
    *v226 = MEMORY[0x1E69E9820];
    *&v226[8] = 3221225472;
    *&v226[16] = __60__PFCloudKitSetupAssistant__initializeAssetStorageURLError___block_invoke;
    *&v226[24] = &unk_1E6EC3A58;
    *&v226[32] = v11;
    v227 = v204;
    v228 = v239;
    v229 = v217;
    [(PFCloudKitStoreMonitor *)v11 performBlock:v226];
    [(PFCloudKitSetupAssistant *)v5 endActivityForPhase:*(*&v217[8] + 40) withError:?];
    if (*(*&v239[8] + 24) == 1)
    {
      *(v5 + 40) = *(*&v204[8] + 40);
    }

    else
    {
      v29 = *(*&v217[8] + 40);
      if (v29)
      {
        goto LABEL_35;
      }

      v30 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
        *&buf[12] = 1024;
        *&buf[14] = 278;
        _os_log_error_impl(&dword_18565F000, v30, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v31 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
        *&buf[12] = 1024;
        *&buf[14] = 278;
        _os_log_fault_impl(&dword_18565F000, v31, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v29 = v9;
LABEL_35:

    *(*&v204[8] + 40) = 0;
    *(*&v217[8] + 40) = 0;
    v32 = *(*&v239[8] + 24);
    _Block_object_dispose(v204, 8);
    _Block_object_dispose(v217, 8);
    _Block_object_dispose(v239, 8);
    if (v32)
    {
      return 1;
    }
  }

LABEL_115:
  if (v29)
  {
    if (a2)
    {
      result = 0;
      *a2 = v29;
      return result;
    }

    return 0;
  }

  v95 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
  {
    *v226 = 136315394;
    *&v226[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
    *&v226[12] = 1024;
    *&v226[14] = 107;
    _os_log_error_impl(&dword_18565F000, v95, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v226, 0x12u);
  }

  v96 = _PFLogGetLogStream(17);
  result = os_log_type_enabled(v96, OS_LOG_TYPE_FAULT);
  if (result)
  {
    *v226 = 136315394;
    *&v226[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
    *&v226[12] = 1024;
    *&v226[14] = 107;
    _os_log_fault_impl(&dword_18565F000, v96, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v226, 0x12u);
    return 0;
  }

  return result;
}

- (void)beginActivityForPhase:(uint64_t)phase
{
  v3 = *(phase + 72);
  if (v3)
  {
    v4 = *(v3 + 72);
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 beginActivityForPhase:a2];
  [objc_msgSend(*(phase + 8) "progressProvider")];
}

- (void)endActivityForPhase:(uint64_t)phase withError:
{
  v4 = *(self + 72);
  if (v4)
  {
    v5 = *(v4 + 72);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 endActivityForPhase:a2 withError:phase];
  [objc_msgSend(*(self + 8) "progressProvider")];
}

void __56__PFCloudKitSetupAssistant__checkAndInitializeMetadata___block_invoke(uint64_t *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)a1[4] retainedMonitoredStore];
  if (!v2)
  {
    *(*(a1[6] + 8) + 24) = 0;
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v36 = *MEMORY[0x1E696A588];
    v37 = @"The mirroring delegate could not initialize because it's store was removed from the coordinator.";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    *(*(a1[7] + 8) + 40) = [v10 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v11];
    goto LABEL_30;
  }

  v3 = a1[4];
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 32));
    v5 = a1[4];
  }

  else
  {
    v5 = 0;
    WeakRetained = 0;
  }

  v6 = [(PFCloudKitStoreMonitor *)v5 newBackgroundContextForMonitoredCoordinator];
  [(NSManagedObjectContext *)v6 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __56__PFCloudKitSetupAssistant__checkAndInitializeMetadata___block_invoke_2;
  v25[3] = &unk_1E6EC19D8;
  v25[4] = v2;
  v25[5] = v6;
  v25[6] = a1[5];
  [(NSManagedObjectContext *)v6 performBlockAndWait:v25];
  *(*(a1[6] + 8) + 24) = [PFCloudKitMetadataModel checkAndRepairSchemaOfStore:v2 withManagedObjectContext:v6 error:(*(a1[7] + 8) + 40)];
  v7 = *(a1[6] + 8);
  if (*(v7 + 24) == 1)
  {
    if (a1[5])
    {
      v8 = *(a1[7] + 8);
      v30 = 0;
      v31 = &v30;
      v32 = 0x3052000000;
      v33 = __Block_byref_object_copy__27;
      v34 = __Block_byref_object_dispose__27;
      v35 = 0;
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 1;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __96__PFCloudKitSetupAssistant__checkAndTruncateEventHistoryIfNeededWithManagedObjectContext_error___block_invoke;
      *&buf[24] = &unk_1E6EC1EB8;
      v43 = v6;
      v44 = &v30;
      v45 = &v26;
      [(NSManagedObjectContext *)v6 performBlockAndWait:buf];
      if ((v27[3] & 1) == 0)
      {
        v9 = v31[5];
        if (v9)
        {
          *(v8 + 40) = v9;
        }

        else
        {
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *v38 = 136315394;
            v39 = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
            v40 = 1024;
            v41 = 1705;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v38, 0x12u);
          }

          v14 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            *v38 = 136315394;
            v39 = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
            v40 = 1024;
            v41 = 1705;
            _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v38, 0x12u);
          }
        }
      }

      v31[5] = 0;
      v15 = *(v27 + 24);
      _Block_object_dispose(&v26, 8);
      _Block_object_dispose(&v30, 8);
      if (v15)
      {
        v16 = [NSCKEvent beginEventForRequest:a1[4] withMonitor:(*(a1[7] + 8) + 40) error:?];
        v17 = v16;
        if (v16)
        {
          *(a1[5] + 64) = v16;
          [objc_msgSend(*(a1[5] + 8) "progressProvider")];
        }

        else
        {
          *(*(a1[6] + 8) + 24) = 0;
          v19 = *(*(a1[7] + 8) + 40);
        }

        goto LABEL_22;
      }

      v7 = *(a1[6] + 8);
    }

    *(v7 + 24) = 0;
    v18 = *(*(a1[7] + 8) + 40);
  }

  else
  {
    v12 = *(*(a1[7] + 8) + 40);
  }

LABEL_22:
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v20 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v22 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v23 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v23 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v23))
    {
      v24 = *(*(a1[7] + 8) + 40);
      *buf = 136315650;
      *&buf[4] = "[PFCloudKitSetupAssistant _checkAndInitializeMetadata:]_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 174;
      *&buf[18] = 2112;
      *&buf[20] = v24;
      _os_log_impl(&dword_18565F000, v22, v23, "CoreData+CloudKit: %s(%d): Failed to initialize CloudKit metadata: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v20);
  }

LABEL_30:
}

void __56__PFCloudKitSetupAssistant__checkAndInitializeMetadata___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (![_PFRoutines _isInMemoryStore:?])
  {
    v7 = 0;
    if (([*(a1 + 40) setQueryGenerationFromToken:+[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken error:{"currentQueryGenerationToken"), &v7}] & 1) == 0)
    {
      v2 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v4 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v5 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v5 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v5))
      {
        v6 = *(a1 + 48);
        *buf = 136315906;
        v9 = "[PFCloudKitSetupAssistant _checkAndInitializeMetadata:]_block_invoke_2";
        v10 = 1024;
        v11 = 143;
        v12 = 2112;
        v13 = v6;
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&dword_18565F000, v4, v5, "CoreData+CloudKit: %s(%d): %@: Unable to set query generation on moc: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v2);
    }
  }
}

void __60__PFCloudKitSetupAssistant__initializeAssetStorageURLError___block_invoke(uint64_t *a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)a1[4] retainedMonitoredStore];
  if (v2)
  {
    v34 = 0;
    v3 = a1[4];
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained((v3 + 32));
    }

    else
    {
      WeakRetained = 0;
    }

    p_info = &OBJC_METACLASS___NSBatchInsertRequest.info;
    *(*(a1[5] + 8) + 40) = [PFCloudKitSerializer assetStorageDirectoryURLForStore:v2];
    if (!*(*(a1[5] + 8) + 40))
    {
      *(*(a1[6] + 8) + 24) = 0;
      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      v23 = *MEMORY[0x1E696A250];
      v37 = *MEMORY[0x1E696A588];
      v38 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v2);
      *(*(a1[7] + 8) + 40) = [v22 initWithDomain:v23 code:134403 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v38, &v37, 1)}];
LABEL_34:

      goto LABEL_35;
    }

    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v33 = 0;
    if ([v6 fileExistsAtPath:objc_msgSend(*(*(a1[5] + 8) + 40) isDirectory:{"path"), &v33}])
    {
      v7 = *(*(a1[5] + 8) + 40);
      if (v33 == 1)
      {
        v26 = WeakRetained;
        v27 = v2;
        v8 = [v6 subpathsAtPath:{objc_msgSend(v7, "path")}];
        v32 = 0;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v28 objects:v51 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v29;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v29 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [*(*(a1[5] + 8) + 40) URLByAppendingPathComponent:*(*(&v28 + 1) + 8 * i)];
              if (([v6 removeItemAtURL:v13 error:&v32] & 1) == 0 && unlink(objc_msgSend(objc_msgSend(v13, "path"), "fileSystemRepresentation")))
              {
                v14 = objc_autoreleasePoolPush();
                Stream = __PFCloudKitLoggingGetStream();
                v16 = Stream;
                if (__ckLoggingOverride == 17)
                {
                  v17 = OS_LOG_TYPE_FAULT;
                }

                else
                {
                  v17 = OS_LOG_TYPE_ERROR;
                }

                if (os_log_type_enabled(Stream, v17))
                {
                  v18 = *__error();
                  *buf = 136316162;
                  v42 = "[PFCloudKitSetupAssistant _initializeAssetStorageURLError:]_block_invoke";
                  v43 = 1024;
                  v44 = 225;
                  v45 = 1024;
                  v46 = v18;
                  v47 = 2112;
                  v48 = v13;
                  v49 = 2112;
                  v50 = v32;
                  _os_log_impl(&dword_18565F000, v16, v17, "CoreData+CloudKit: %s(%d): Failed to asset file (and unlink:%d) at url: %@\n%@", buf, 0x2Cu);
                }

                objc_autoreleasePoolPop(v14);
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v28 objects:v51 count:16];
          }

          while (v10);
        }

        v19 = a1 + 6;
        WeakRetained = v26;
        v2 = v27;
        p_info = (&OBJC_METACLASS___NSBatchInsertRequest + 32);
        if ((*(*(a1[6] + 8) + 24) & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_30;
      }

      *(*(a1[6] + 8) + 24) = [v6 removeItemAtURL:v7 error:&v34];
    }

    v19 = a1 + 6;
    if (*(*(a1[6] + 8) + 24) != 1 || (*(*(a1[6] + 8) + 24) = [v6 createDirectoryAtURL:*(*(a1[5] + 8) + 40) withIntermediateDirectories:1 attributes:0 error:&v34], *(*(a1[6] + 8) + 24) != 1) || (v24 = *(*(a1[5] + 8) + 40), v39 = *MEMORY[0x1E695DB80], v40 = MEMORY[0x1E695E118], *(*(a1[6] + 8) + 24) = objc_msgSend(v24, "setResourceValues:error:", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v40, &v39, 1), &v34), (*(*(a1[6] + 8) + 24) & 1) == 0))
    {
LABEL_32:
      *(*(a1[7] + 8) + 40) = v34;
LABEL_33:

      goto LABEL_34;
    }

LABEL_30:
    v25 = [(PFCloudKitSerializer *)(p_info + 461) oldAssetStorageDirectoryURLForStore:v2];
    if ([v6 fileExistsAtPath:{objc_msgSend(v25, "path")}])
    {
      *(*(*v19 + 8) + 24) = [v6 removeItemAtURL:v25 error:&v34];
    }

    goto LABEL_33;
  }

  *(*(a1[6] + 8) + 24) = 0;
  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E696A250];
  v35 = *MEMORY[0x1E696A580];
  v36 = @"Failed to initialize the asset storage url because the store was removed from the coordinator.";
  *(*(a1[7] + 8) + 40) = [v20 initWithDomain:v21 code:134407 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v36, &v35, 1)}];
LABEL_35:
}

void __48__PFCloudKitSetupAssistant__checkAccountStatus___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__PFCloudKitSetupAssistant__checkAccountStatus___block_invoke_2;
    v6[3] = &unk_1E6EC3A80;
    v6[4] = v2;
    v6[5] = v3;
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    [(NSManagedObjectContext *)v3 performBlockAndWait:v6];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v4 = objc_alloc(MEMORY[0x1E696ABC0]);
    v5 = *MEMORY[0x1E696A250];
    v9 = *MEMORY[0x1E696A588];
    v10[0] = @"The mirroring delegate could not initialize because it's store was removed from the coordinator.";
    *(*(*(a1 + 40) + 8) + 40) = [v4 initWithDomain:v5 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v10, &v9, 1)}];
  }
}

id __48__PFCloudKitSetupAssistant__checkAccountStatus___block_invoke_2(void *a1)
{
  result = [NSCKMetadataEntry entryForKey:a1[4] fromStore:a1[5] inManagedObjectContext:*(a1[6] + 8) + 40 error:?];
  if (result)
  {
    result = [result stringValue];
    *(*(a1[7] + 8) + 40) = result;
  }

  else if (*(*(a1[6] + 8) + 40))
  {
    *(*(a1[8] + 8) + 24) = 0;
    return *(*(a1[6] + 8) + 40);
  }

  return result;
}

intptr_t __48__PFCloudKitSetupAssistant__checkAccountStatus___block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v8 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v9 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v9 = 16 * (__ckLoggingOverride == 16);
  }

  if (os_log_type_enabled(Stream, v9))
  {
    v10 = *(a1 + 32);
    *buf = 136316162;
    v44 = "[PFCloudKitSetupAssistant _checkAccountStatus:]_block_invoke";
    v45 = 1024;
    v46 = 346;
    v47 = 2112;
    v48 = v10;
    v49 = 2112;
    v50 = a2;
    v51 = 2112;
    v52 = a3;
    _os_log_impl(&dword_18565F000, v8, v9, "CoreData+CloudKit: %s(%d): Fetched account info for store %@: %@\n%@", buf, 0x30u);
  }

  objc_autoreleasePoolPop(v6);
  if (!a2)
  {
    v21 = [a3 domain];
    if ([v21 isEqualToString:getCloudKitCKErrorDomain()] && objc_msgSend(a3, "code") == 9)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v12 setObject:@"Unable to initialize without an iCloud account (CKErrorNotAuthenticated)." forKey:*MEMORY[0x1E696A588]];
      [v12 setObject:a3 forKey:*MEMORY[0x1E696AA08]];
      v13 = objc_alloc(MEMORY[0x1E696ABC0]);
      v14 = *MEMORY[0x1E696A250];
      v15 = 134400;
      goto LABEL_22;
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    v23 = a3;
    goto LABEL_24;
  }

  v11 = [a2 accountStatus];
  if (v11 != 1 || ![a2 hasValidCredentials])
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = v16;
    if (a3)
    {
      [v16 setObject:a3 forKey:*MEMORY[0x1E696AA08]];
    }

    if (v11 == 3)
    {
      v17 = *(*(*(a1 + 64) + 8) + 40);
      if (v17)
      {
        [v12 setObject:v17 forKey:@"PFCloudKitOldUserIdentityKey"];
        [v12 setObject:&unk_1EF435D28 forKey:@"NSCloudKitMirroringDelegateResetSyncReasonKey"];
        v18 = MEMORY[0x1E696ABC0];
        v19 = *MEMORY[0x1E696A250];
        v20 = 134405;
LABEL_49:
        v28 = [v18 errorWithDomain:v19 code:v20 userInfo:v12];
        goto LABEL_50;
      }

      if ([*(*(a1 + 40) + 8) databaseScope] == 1)
      {
        v28 = 0;
        *(*(*(a1 + 56) + 8) + 24) = 1;
LABEL_50:
        v22 = v28;
        goto LABEL_51;
      }

      [a2 hasValidCredentials];
      objc_opt_self();
      v31 = *MEMORY[0x1E696A588];
      v27 = @"Unable to initialize without an iCloud account (CKAccountStatusNoAccount).";
LABEL_48:
      [v12 setObject:v27 forKey:v31];
      v18 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A250];
      v20 = 134400;
      goto LABEL_49;
    }

    v24 = [a2 hasValidCredentials];
    objc_opt_self();
    if (v11 > 1)
    {
      if (v11 == 4)
      {
        v27 = @"Unable to initialize without a valid iCloud account (CKAccountStatusTemporarilyUnavailable).";
      }

      else
      {
        if (v11 != 2)
        {
          goto LABEL_40;
        }

        v27 = @"Unable to initialize without a valid iCloud account (CKAccountStatusRestricted).";
      }
    }

    else
    {
      if (v11)
      {
        if (v11 == 1)
        {
          if (v24)
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: failureReasonForAccountStatus was called with an available account and valid credentials.\n", buf, 2u);
            }

            v26 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_18565F000, v26, OS_LOG_TYPE_FAULT, "CoreData: failureReasonForAccountStatus was called with an available account and valid credentials.", buf, 2u);
            }
          }

          v27 = @"Unable to initialize because even though there is an available account it does not have valid credentials. The user will need to enter their password in settings, or via a password prompt.";
          goto LABEL_47;
        }

LABEL_40:
        v29 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v44 = v11;
          _os_log_error_impl(&dword_18565F000, v29, OS_LOG_TYPE_ERROR, "CoreData: fault: Cannot generate a failure reason for an unknown account status: %ld\n", buf, 0xCu);
        }

        v30 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          *buf = 134217984;
          v44 = v11;
          _os_log_fault_impl(&dword_18565F000, v30, OS_LOG_TYPE_FAULT, "CoreData: Cannot generate a failure reason for an unknown account status: %ld", buf, 0xCu);
        }

        v27 = @"Unknown account status";
        goto LABEL_47;
      }

      v27 = @"Unable to determine the status of the iCloud account (CKAccountStatusCouldNotDetermine).";
    }

LABEL_47:
    v31 = *MEMORY[0x1E696A588];
    goto LABEL_48;
  }

  if (*(a1 + 80) != 1 || ([a2 deviceToDeviceEncryptionAvailability] & 1) != 0 && (objc_msgSend(a2, "deviceToDeviceEncryptionAvailability") & 2) != 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    return dispatch_semaphore_signal(*(a1 + 48));
  }

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v12 setObject:*(*(*(a1 + 64) + 8) + 40) forKey:@"PFCloudKitOldUserIdentityKey"];
    [v12 setObject:&unk_1EF435D28 forKey:@"NSCloudKitMirroringDelegateResetSyncReasonKey"];
    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = *MEMORY[0x1E696A250];
    v15 = 134405;
LABEL_22:
    v22 = [v13 initWithDomain:v14 code:v15 userInfo:v12];
LABEL_51:
    *(*(*(a1 + 72) + 8) + 40) = v22;

    return dispatch_semaphore_signal(*(a1 + 48));
  }

  v33 = [a2 deviceToDeviceEncryptionAvailability];
  *(*(*(a1 + 56) + 8) + 24) = 0;
  v34 = objc_alloc(MEMORY[0x1E696ABC0]);
  v35 = *MEMORY[0x1E696A250];
  if (v33)
  {
    v41 = *MEMORY[0x1E696A588];
    v42 = @"Unable to initialize the CloudKit container because this device does not support device to device encryption.";
    v36 = MEMORY[0x1E695DF20];
    v37 = &v42;
    v38 = &v41;
  }

  else
  {
    v39 = *MEMORY[0x1E696A588];
    v40 = @"Unable to initialize the CloudKit container because this account does not support device to device encryption.";
    v36 = MEMORY[0x1E695DF20];
    v37 = &v40;
    v38 = &v39;
  }

  v23 = [v34 initWithDomain:v35 code:134400 userInfo:{objc_msgSend(v36, "dictionaryWithObjects:forKeys:count:", v37, v38, 1, v39, v40, v41, v42)}];
LABEL_24:
  *(*(*(a1 + 72) + 8) + 40) = v23;
  return dispatch_semaphore_signal(*(a1 + 48));
}

void __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_2;
    v7[3] = &unk_1E6EC3AD0;
    v7[4] = v2;
    v7[5] = v3;
    v4 = *(a1 + 64);
    v9 = *(a1 + 56);
    v10 = v4;
    v8 = *(a1 + 40);
    [(NSManagedObjectContext *)v3 performBlockAndWait:v7];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = *MEMORY[0x1E696A250];
    v11 = *MEMORY[0x1E696A588];
    v12[0] = @"The mirroring delegate could not initialize because it's store was removed from the coordinator.";
    *(*(*(a1 + 48) + 8) + 40) = [v5 initWithDomain:v6 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, &v11, 1)}];
  }
}

id __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_2(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v14[0] = 0;
  v2 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
  v16[0] = *(a1 + 32);
  -[NSFetchRequest setAffectedStores:](v2, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1]);
  -[NSFetchRequest setPredicate:](v2, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"database.databaseScopeNum = %@ AND %K == YES", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 72)), @"needsRecoveryFromIdentityLoss"]);
  v3 = [*(a1 + 40) executeFetchRequest:v2 error:v14];
  if (v14[0])
  {
    result = v14[0];
    *(*(*(a1 + 56) + 8) + 40) = result;
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  else
  {
    v5 = v3;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    result = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    v6 = result;
    if (result)
    {
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [objc_alloc(getCloudKitCKRecordZoneIDClass[0]()) initWithZoneName:objc_msgSend(*(*(&v10 + 1) + 8 * v8) ownerName:{"ckRecordZoneName"), objc_msgSend(*(*(&v10 + 1) + 8 * v8), "ckOwnerName")}];
          [*(a1 + 48) addObject:v9];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        result = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
        v6 = result;
      }

      while (result);
    }
  }

  return result;
}

intptr_t __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *(*(*(a1 + 56) + 8) + 40) = a4;
    v6 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v8 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v9 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v9 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v9))
    {
      v10 = *(a1 + 32);
      v12 = 136315906;
      v13 = "[PFCloudKitSetupAssistant _recoverFromManateeIdentityLossIfNecessary:]_block_invoke_3";
      v14 = 1024;
      v15 = 562;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = a4;
      _os_log_impl(&dword_18565F000, v8, v9, "CoreData+CloudKit: %s(%d): Deleting zones %@ in response to Manatee identity loss failed, %@", &v12, 0x26u);
    }

    objc_autoreleasePoolPop(v6);
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

void __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_65(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_2_66;
    v7[3] = &unk_1E6EC3B48;
    v7[4] = *(a1 + 40);
    v7[5] = v2;
    v7[6] = v3;
    v4 = *(a1 + 72);
    v9 = *(a1 + 64);
    v10 = v4;
    v8 = *(a1 + 48);
    [(NSManagedObjectContext *)v3 performBlockAndWait:v7];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = *MEMORY[0x1E696A250];
    v11 = *MEMORY[0x1E696A588];
    v12[0] = @"The mirroring delegate could not recovery from Manatee identity loss because it's store was removed from the coordinator.";
    *(*(*(a1 + 56) + 8) + 40) = [v5 initWithDomain:v6 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, &v11, 1)}];
  }
}

id __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_2_66(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = a1[4];
  result = [v2 countByEnumeratingWithState:&v20 objects:v32 count:16];
  v5 = result;
  if (result)
  {
    v6 = *v21;
    *&v4 = 138412290;
    v18 = v4;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        v19 = 0;
        v9 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:v8 inDatabaseWithScope:a1[10] forStore:a1[5] inContext:a1[6] error:&v19];
        v10 = v19;
        if (v19)
        {
          goto LABEL_24;
        }

        if (v9)
        {
          [(NSManagedObject *)v9 setNeedsRecoveryFromIdentityLoss:0];
        }

        else
        {
          *(*(a1[9] + 8) + 24) = 0;
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v25 = v19;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to fetch zone metadata during un-marking zones needing recovery from Manatee identity loss: %@\n", buf, 0xCu);
          }

          v12 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            *buf = v18;
            v25 = v19;
            _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Failed to fetch zone metadata during un-marking zones needing recovery from Manatee identity loss: %@", buf, 0xCu);
          }
        }

        if ([a1[6] hasChanges] && (objc_msgSend(a1[6], "save:", &v19) & 1) == 0)
        {
          v13 = objc_autoreleasePoolPush();
          Stream = __PFCloudKitLoggingGetStream();
          v15 = Stream;
          v16 = __ckLoggingOverride == 17 ? OS_LOG_TYPE_FAULT : OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(Stream, v16))
          {
            v17 = a1[7];
            *buf = 136315906;
            v25 = "[PFCloudKitSetupAssistant _recoverFromManateeIdentityLossIfNecessary:]_block_invoke";
            v26 = 1024;
            v27 = 607;
            v28 = 2112;
            v29 = v17;
            v30 = 2112;
            v31 = v19;
            _os_log_impl(&dword_18565F000, v15, v16, "CoreData+CloudKit: %s(%d): %@: Failed to save metadata while un-marking zones needing recovery from Manatee identity loss: %@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v13);
          v10 = v19;
          if (v19)
          {
LABEL_24:
            result = v10;
            *(*(a1[8] + 8) + 40) = result;
            *(*(a1[9] + 8) + 24) = 0;
            return result;
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [v2 countByEnumeratingWithState:&v20 objects:v32 count:16];
      v5 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_70(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_2_71;
    v7[3] = &unk_1E6EC3AD0;
    v7[4] = v2;
    v7[5] = v3;
    v4 = *(a1 + 64);
    v9 = *(a1 + 56);
    v10 = v4;
    v8 = *(a1 + 40);
    [(NSManagedObjectContext *)v3 performBlockAndWait:v7];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = *MEMORY[0x1E696A250];
    v11 = *MEMORY[0x1E696A588];
    v12[0] = @"The mirroring delegate could not initialize because it's store was removed from the coordinator.";
    *(*(*(a1 + 48) + 8) + 40) = [v5 initWithDomain:v6 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, &v11, 1)}];
  }
}

id __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_2_71(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v2 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
  v18[0] = *(a1 + 32);
  -[NSFetchRequest setAffectedStores:](v2, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1]);
  -[NSFetchRequest setPredicate:](v2, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"database.databaseScopeNum = %@ AND %K == YES", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 72)), @"needsNewShareInvitation"]);
  v3 = [*(a1 + 40) executeFetchRequest:v2 error:v16];
  if (v16[0])
  {
    result = v16[0];
    *(*(*(a1 + 56) + 8) + 40) = result;
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  else
  {
    v5 = v3;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    result = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
    v6 = result;
    if (result)
    {
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [(NSCKRecordZoneMetadata *)*(*(&v12 + 1) + 8 * v8) createRecordZoneID];
          v10 = objc_alloc(getCloudKitCKRecordIDClass());
          v11 = [v10 initWithRecordName:getCloudKitCKRecordNameZoneWideShare() zoneID:v9];
          [*(a1 + 48) addObject:v11];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        result = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
        v6 = result;
      }

      while (result);
    }
  }

  return result;
}

intptr_t __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_3_75(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *(*(*(a1 + 48) + 8) + 40) = a4;
    v7 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v9 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v10 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v10 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v10))
    {
      v12 = 136315906;
      v13 = "[PFCloudKitSetupAssistant _recoverFromManateeIdentityLossIfNecessary:]_block_invoke_3";
      v14 = 1024;
      v15 = 703;
      v16 = 2112;
      v17 = a3;
      v18 = 2112;
      v19 = a4;
      _os_log_impl(&dword_18565F000, v9, v10, "CoreData+CloudKit: %s(%d): Deleting records in Shared database %@ in response to Manatee identity loss failed, %@", &v12, 0x26u);
    }

    objc_autoreleasePoolPop(v7);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_76(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_2_77;
    v7[3] = &unk_1E6EC3B48;
    v7[4] = *(a1 + 40);
    v7[5] = v2;
    v7[6] = v3;
    v4 = *(a1 + 72);
    v9 = *(a1 + 64);
    v10 = v4;
    v8 = *(a1 + 48);
    [(NSManagedObjectContext *)v3 performBlockAndWait:v7];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = *MEMORY[0x1E696A250];
    v11 = *MEMORY[0x1E696A588];
    v12[0] = @"The mirroring delegate could not recovery from Manatee identity loss because it's store was removed from the coordinator.";
    *(*(*(a1 + 56) + 8) + 40) = [v5 initWithDomain:v6 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, &v11, 1)}];
  }
}

id __71__PFCloudKitSetupAssistant__recoverFromManateeIdentityLossIfNecessary___block_invoke_2_77(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = a1[4];
  result = [v2 countByEnumeratingWithState:&v20 objects:v32 count:16];
  v5 = result;
  if (result)
  {
    v6 = *v21;
    *&v4 = 138412290;
    v18 = v4;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        v19 = 0;
        v9 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:v8 inDatabaseWithScope:a1[10] forStore:a1[5] inContext:a1[6] error:&v19];
        v10 = v19;
        if (v19)
        {
          goto LABEL_24;
        }

        if (v9)
        {
          [(NSManagedObject *)v9 setNeedsRecoveryFromIdentityLoss:0];
        }

        else
        {
          *(*(a1[9] + 8) + 24) = 0;
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v25 = v19;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to fetch zone metadata during un-marking zones needing recovery from Manatee identity loss: %@\n", buf, 0xCu);
          }

          v12 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            *buf = v18;
            v25 = v19;
            _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Failed to fetch zone metadata during un-marking zones needing recovery from Manatee identity loss: %@", buf, 0xCu);
          }
        }

        if ([a1[6] hasChanges] && (objc_msgSend(a1[6], "save:", &v19) & 1) == 0)
        {
          v13 = objc_autoreleasePoolPush();
          Stream = __PFCloudKitLoggingGetStream();
          v15 = Stream;
          v16 = __ckLoggingOverride == 17 ? OS_LOG_TYPE_FAULT : OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(Stream, v16))
          {
            v17 = a1[7];
            *buf = 136315906;
            v25 = "[PFCloudKitSetupAssistant _recoverFromManateeIdentityLossIfNecessary:]_block_invoke";
            v26 = 1024;
            v27 = 748;
            v28 = 2112;
            v29 = v17;
            v30 = 2112;
            v31 = v19;
            _os_log_impl(&dword_18565F000, v15, v16, "CoreData+CloudKit: %s(%d): %@: Failed to save metadata while un-marking zones needing recovery from Manatee identity loss: %@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v13);
          v10 = v19;
          if (v19)
          {
LABEL_24:
            result = v10;
            *(*(a1[8] + 8) + 40) = result;
            *(*(a1[9] + 8) + 24) = 0;
            return result;
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [v2 countByEnumeratingWithState:&v20 objects:v32 count:16];
      v5 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void __51__PFCloudKitSetupAssistant__createZoneIfNecessary___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__PFCloudKitSetupAssistant__createZoneIfNecessary___block_invoke_2;
    v7[3] = &unk_1E6EC3B98;
    v7[4] = *(a1 + 40);
    v7[5] = v2;
    v7[6] = v3;
    v8 = *(a1 + 48);
    v4 = *(a1 + 72);
    v9 = *(a1 + 64);
    v10 = v4;
    [(NSManagedObjectContext *)v3 performBlockAndWait:v7];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = *MEMORY[0x1E696A250];
    v11 = *MEMORY[0x1E696A588];
    v12[0] = @"The mirroring delegate could not initialize because it's store was removed from the coordinator.";
    *(*(*(a1 + 64) + 8) + 40) = [v5 initWithDomain:v6 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, &v11, 1)}];
  }
}

void __51__PFCloudKitSetupAssistant__createZoneIfNecessary___block_invoke_2(void *a1)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v2 = [PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:a1[10]];
  v3 = a1[4];
  if (v3)
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, v2, [v4 databaseScope], a1[5], a1[6], v6);
  if (v5)
  {
    *(*(a1[7] + 8) + 24) = [(NSManagedObject *)v5 hasRecordZone];
  }

  else
  {
    *(*(a1[8] + 8) + 24) = 0;
    *(*(a1[9] + 8) + 40) = v6[0];
  }
}

- (uint64_t)_saveZone:(void *)zone error:
{
  v46[1] = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3052000000;
  v31 = __Block_byref_object_copy__27;
  v32 = __Block_byref_object_dispose__27;
  v33 = 0;
  v6 = *(self + 48);
  v7 = objc_alloc(getCloudKitCKModifyRecordZonesOperationClass());
  v46[0] = a2;
  v8 = [v7 initWithRecordZonesToSave:objc_msgSend(MEMORY[0x1E695DEC8] recordZoneIDsToDelete:{"arrayWithObjects:count:", v46, 1), 0}];
  -[NSCloudKitMirroringRequestOptions applyToOperation:]([*(self + 72) options], v8);
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __44__PFCloudKitSetupAssistant__saveZone_error___block_invoke;
  v26[3] = &unk_1E6EC3CD8;
  v26[6] = &v28;
  v26[7] = v27;
  v26[8] = &v34;
  v26[4] = a2;
  v26[5] = v6;
  [v8 setModifyRecordZonesCompletionBlock:v26];
  [*(self + 24) addOperation:v8];
  v9 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v11 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v12 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v12 = 16 * (__ckLoggingOverride == 16);
  }

  if (os_log_type_enabled(Stream, v12))
  {
    v13 = *(self + 56);
    if (v13)
    {
      v14 = *(v13 + 48);
    }

    else
    {
      v14 = 0;
    }

    requestIdentifier = [*(self + 72) requestIdentifier];
    v39 = "[PFCloudKitSetupAssistant _saveZone:error:]";
    v40 = 1024;
    v16 = @"<null>";
    *buf = 136315906;
    if (requestIdentifier)
    {
      v16 = requestIdentifier;
    }

    v41 = 943;
    v42 = 2112;
    v43 = v14;
    v44 = 2112;
    v45 = v16;
    _os_log_impl(&dword_18565F000, v11, v12, "CoreData+CloudKit: %s(%d): Waiting on save zone for store %@ and setup request %@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v9);
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);

  v17 = *(v35 + 24);
  if (v17 == 1)
  {
    databaseScope = [*(self + 8) databaseScope];
    v19 = *(self + 56);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __44__PFCloudKitSetupAssistant__saveZone_error___block_invoke_81;
    v25[3] = &unk_1E6EC3BC0;
    v25[4] = v19;
    v25[5] = a2;
    v25[6] = v27;
    v25[7] = &v34;
    v25[8] = &v28;
    v25[9] = databaseScope;
    [(PFCloudKitStoreMonitor *)v19 performBlock:v25];

    v17 = *(v35 + 24);
  }

  if (!v17)
  {
    v22 = v29[5];
    if (v22)
    {
      if (zone)
      {
        *zone = v22;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v39 = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
        v40 = 1024;
        v41 = 996;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v24 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v39 = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
        v40 = 1024;
        v41 = 996;
        _os_log_fault_impl(&dword_18565F000, v24, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v29[5] = 0;
  v20 = *(v35 + 24);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
  return v20;
}

- (uint64_t)_deleteZone:(void *)zone error:
{
  v42[1] = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__27;
  v28 = __Block_byref_object_dispose__27;
  v29 = 0;
  v6 = *(self + 48);
  v7 = objc_alloc(getCloudKitCKModifyRecordZonesOperationClass());
  v42[0] = [a2 zoneID];
  v8 = [v7 initWithRecordZonesToSave:0 recordZoneIDsToDelete:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v42, 1)}];
  -[NSCloudKitMirroringRequestOptions applyToOperation:]([*(self + 72) options], v8);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __46__PFCloudKitSetupAssistant__deleteZone_error___block_invoke;
  v23[3] = &unk_1E6EC3BE8;
  v23[6] = &v30;
  v23[7] = &v24;
  v23[4] = a2;
  v23[5] = v6;
  [v8 setModifyRecordZonesCompletionBlock:v23];
  [*(self + 24) addOperation:v8];
  v9 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v11 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v12 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v12 = 16 * (__ckLoggingOverride == 16);
  }

  if (os_log_type_enabled(Stream, v12))
  {
    v13 = *(self + 56);
    if (v13)
    {
      v14 = *(v13 + 48);
    }

    else
    {
      v14 = 0;
    }

    requestIdentifier = [*(self + 72) requestIdentifier];
    v16 = @"<null>";
    v35 = "[PFCloudKitSetupAssistant _deleteZone:error:]";
    *buf = 136315906;
    if (requestIdentifier)
    {
      v16 = requestIdentifier;
    }

    v36 = 1024;
    v37 = 1024;
    v38 = 2112;
    v39 = v14;
    v40 = 2112;
    v41 = v16;
    _os_log_impl(&dword_18565F000, v11, v12, "CoreData+CloudKit: %s(%d): Waiting on delete zone for store %@ and setup request %@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v9);
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);

  v17 = v25[5];
  if ((v31[3] & 1) == 0)
  {
    v20 = v25[5];
    if (v20)
    {
      if (zone)
      {
        *zone = v20;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v35 = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
        v36 = 1024;
        v37 = 1031;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v22 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v35 = "/Library/Caches/com.apple.xbs/Sources/Persistence/Classes/Persistency/CloudKit/PFCloudKitSetupAssistant.m";
        v36 = 1024;
        v37 = 1031;
        _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v18 = *(v31 + 24);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
  return v18;
}

intptr_t __44__PFCloudKitSetupAssistant__saveZone_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *(*(*(a1 + 48) + 8) + 40) = a4;
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [a2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(a2);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([objc_msgSend(v10 "zoneID")])
          {
            *(*(*(a1 + 56) + 8) + 24) = [v10 capabilities];
            *(*(*(a1 + 64) + 8) + 24) = 1;
          }
        }

        v7 = [a2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

void __44__PFCloudKitSetupAssistant__saveZone_error___block_invoke_81(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__PFCloudKitSetupAssistant__saveZone_error___block_invoke_2;
    v7[3] = &unk_1E6EC3B98;
    v7[4] = *(a1 + 40);
    v7[5] = v2;
    v7[6] = v3;
    v8 = *(a1 + 48);
    v4 = *(a1 + 72);
    v9 = *(a1 + 64);
    v10 = v4;
    [(NSManagedObjectContext *)v3 performBlockAndWait:v7];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = *MEMORY[0x1E696A250];
    v11 = *MEMORY[0x1E696A588];
    v12[0] = @"The mirroring delegate could not initialize because it's store was removed from the coordinator.";
    *(*(*(a1 + 64) + 8) + 40) = [v5 initWithDomain:v6 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, &v11, 1)}];
  }
}

id __44__PFCloudKitSetupAssistant__saveZone_error___block_invoke_2(uint64_t a1)
{
  v5 = 0;
  v2 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, [*(a1 + 32) zoneID], *(a1 + 80), *(a1 + 40), *(a1 + 48), &v5);
  if (!v2 || (v3 = v2, -[NSManagedObject setSupportsFetchChanges:](v2, "setSupportsFetchChanges:", *(*(*(a1 + 56) + 8) + 24) & 1), -[NSManagedObject setSupportsRecordSharing:](v3, "setSupportsRecordSharing:", (*(*(*(a1 + 56) + 8) + 24) >> 2) & 1), -[NSManagedObject setSupportsAtomicChanges:](v3, "setSupportsAtomicChanges:", (*(*(*(a1 + 56) + 8) + 24) >> 1) & 1), -[NSManagedObject setSupportsZoneSharing:](v3, "setSupportsZoneSharing:", (*(*(*(a1 + 56) + 8) + 24) >> 3) & 1), -[NSManagedObject setHasRecordZone:](v3, "setHasRecordZone:", 1), result = [*(a1 + 48) save:&v5], (result & 1) == 0))
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    result = v5;
    *(*(*(a1 + 72) + 8) + 40) = result;
  }

  return result;
}

intptr_t __46__PFCloudKitSetupAssistant__deleteZone_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if ([a3 containsObject:{objc_msgSend(*(a1 + 32), "zoneID")}])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 40) = a4;
  }

  v6 = *(a1 + 40);

  return dispatch_semaphore_signal(v6);
}

intptr_t __53__PFCloudKitSetupAssistant__checkIfZoneExists_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
LABEL_13:
    *(*(*(a1 + 48) + 8) + 40) = v4;
    return dispatch_semaphore_signal(*(a1 + 40));
  }

  if (!a2)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Zone fetch didn't return an error or a dictionary of zones\n", buf, 2u);
    }

    v7 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: Zone fetch didn't return an error or a dictionary of zones", buf, 2u);
    }

    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v9 = *MEMORY[0x1E696A250];
    v19 = *MEMORY[0x1E696A588];
    v10 = MEMORY[0x1E696AEC0];
    v11 = softLinkCKDatabaseScopeString(*(a1 + 72));
    v20 = objc_msgSend_stringWithFormat_(v10, v11, [*(a1 + 32) zoneID]);
    v12 = MEMORY[0x1E695DF20];
    v13 = &v20;
    v14 = &v19;
    goto LABEL_12;
  }

  v5 = [a2 objectForKey:{objc_msgSend(*(a1 + 32), "zoneID")}];
  if (!v5)
  {
    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v9 = *MEMORY[0x1E696A250];
    v21 = *MEMORY[0x1E696A588];
    v15 = MEMORY[0x1E696AEC0];
    v16 = softLinkCKDatabaseScopeString(*(a1 + 72));
    v22[0] = objc_msgSend_stringWithFormat_(v15, v16, [*(a1 + 32) zoneID]);
    v12 = MEMORY[0x1E695DF20];
    v13 = v22;
    v14 = &v21;
LABEL_12:
    v4 = [v8 initWithDomain:v9 code:134400 userInfo:{objc_msgSend(v12, "dictionaryWithObjects:forKeys:count:", v13, v14, 1)}];
    goto LABEL_13;
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
  *(*(*(a1 + 64) + 8) + 24) = [v5 capabilities];
  return dispatch_semaphore_signal(*(a1 + 40));
}

void __53__PFCloudKitSetupAssistant__checkIfZoneExists_error___block_invoke_86(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__PFCloudKitSetupAssistant__checkIfZoneExists_error___block_invoke_2;
    v7[3] = &unk_1E6EC3B98;
    v7[4] = *(a1 + 40);
    v7[5] = v2;
    v7[6] = v3;
    v8 = *(a1 + 48);
    v4 = *(a1 + 72);
    v9 = *(a1 + 64);
    v10 = v4;
    [(NSManagedObjectContext *)v3 performBlockAndWait:v7];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = *MEMORY[0x1E696A250];
    v11 = *MEMORY[0x1E696A588];
    v12[0] = @"The mirroring delegate could not initialize because it's store was removed from the coordinator.";
    *(*(*(a1 + 64) + 8) + 40) = [v5 initWithDomain:v6 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, &v11, 1)}];
  }
}

id __53__PFCloudKitSetupAssistant__checkIfZoneExists_error___block_invoke_2(uint64_t a1)
{
  v5 = 0;
  v2 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, [*(a1 + 32) zoneID], *(a1 + 80), *(a1 + 40), *(a1 + 48), &v5);
  if (!v2 || (v3 = v2, -[NSManagedObject setSupportsFetchChanges:](v2, "setSupportsFetchChanges:", *(*(*(a1 + 56) + 8) + 24) & 1), -[NSManagedObject setSupportsRecordSharing:](v3, "setSupportsRecordSharing:", (*(*(*(a1 + 56) + 8) + 24) >> 2) & 1), -[NSManagedObject setSupportsAtomicChanges:](v3, "setSupportsAtomicChanges:", (*(*(*(a1 + 56) + 8) + 24) >> 1) & 1), -[NSManagedObject setHasRecordZone:](v3, "setHasRecordZone:", 1), result = [*(a1 + 48) save:&v5], (result & 1) == 0))
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    result = v5;
    *(*(*(a1 + 72) + 8) + 40) = result;
  }

  return result;
}

void __53__PFCloudKitSetupAssistant__checkIfZoneExists_error___block_invoke_87(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__PFCloudKitSetupAssistant__checkIfZoneExists_error___block_invoke_2_88;
    v7[3] = &unk_1E6EC3978;
    v4 = *(a1 + 40);
    v9 = *(a1 + 64);
    v7[4] = v4;
    v7[5] = v2;
    v7[6] = v3;
    v8 = *(a1 + 48);
    [(NSManagedObjectContext *)v3 performBlockAndWait:v7];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = *MEMORY[0x1E696A250];
    v10 = *MEMORY[0x1E696A588];
    v11[0] = @"The mirroring delegate could not initialize because it's store was removed from the coordinator.";
    *(*(*(a1 + 56) + 8) + 40) = [v5 initWithDomain:v6 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}];
  }
}

id __53__PFCloudKitSetupAssistant__checkIfZoneExists_error___block_invoke_2_88(uint64_t a1)
{
  v5 = 0;
  v2 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, [*(a1 + 32) zoneID], *(a1 + 72), *(a1 + 40), *(a1 + 48), &v5);
  if (!v2 || (v3 = v2, -[NSManagedObject setSupportsFetchChanges:](v2, "setSupportsFetchChanges:", 0), -[NSManagedObject setSupportsRecordSharing:](v3, "setSupportsRecordSharing:", 0), -[NSManagedObject setSupportsAtomicChanges:](v3, "setSupportsAtomicChanges:", 1), -[NSManagedObject setHasRecordZone:](v3, "setHasRecordZone:", 1), result = [*(a1 + 48) save:&v5], (result & 1) == 0))
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    result = v5;
    *(*(*(a1 + 64) + 8) + 40) = result;
  }

  return result;
}

void __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v4 = *(a1 + 64);
    v9 = *(a1 + 48);
    v10 = v4;
    v8[2] = __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_2;
    v8[3] = &unk_1E6EC3C60;
    v5 = *(a1 + 40);
    v11 = *(a1 + 80);
    v8[4] = v5;
    v8[5] = v2;
    v8[6] = v3;
    [(NSManagedObjectContext *)v3 performBlockAndWait:v8];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v6 = objc_alloc(MEMORY[0x1E696ABC0]);
    v7 = *MEMORY[0x1E696A250];
    v12 = *MEMORY[0x1E696A588];
    v13[0] = @"The mirroring delegate could not initialize because it's store was removed from the coordinator.";
    *(*(*(a1 + 72) + 8) + 40) = [v6 initWithDomain:v7 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, &v12, 1)}];
  }
}

id __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_2(uint64_t *a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v2 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:a1[11] inDatabaseWithScope:a1[5] forStore:a1[6] inContext:v5 error:?];
  v3 = v2;
  if (!v2 || (*(*(a1[7] + 8) + 24) = -[NSManagedObject hasSubscription](v2, "hasSubscription"), *(*(a1[8] + 8) + 24) = [-[NSManagedObject database](v3 "database")], result = objc_msgSend(a1[6], "save:", v5), (result & 1) == 0))
  {
    *(*(a1[9] + 8) + 24) = 0;
    result = v5[0];
    *(*(a1[10] + 8) + 40) = result;
  }

  return result;
}

void __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_3(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_4;
    v7[3] = &unk_1E6EC3BC0;
    v7[4] = v2;
    v7[5] = v3;
    v8 = *(a1 + 40);
    v4 = *(a1 + 64);
    v9 = *(a1 + 56);
    v10 = v4;
    [(NSManagedObjectContext *)v3 performBlockAndWait:v7];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = *MEMORY[0x1E696A250];
    v11 = *MEMORY[0x1E696A588];
    v12[0] = @"The mirroring delegate could not initialize because it's store was removed from the coordinator.";
    *(*(*(a1 + 56) + 8) + 40) = [v5 initWithDomain:v6 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, &v11, 1)}];
  }
}

id __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_4(uint64_t a1)
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v2 = [NSCKDatabaseMetadata databaseMetadataForScope:*(a1 + 32) forStore:*(a1 + 40) inContext:v4 error:?];
  if (!v2 || (*(*(*(a1 + 48) + 8) + 24) = -[NSManagedObject hasSubscription](v2, "hasSubscription"), result = [*(a1 + 40) save:v4], (result & 1) == 0))
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    result = v4[0];
    *(*(*(a1 + 64) + 8) + 40) = result;
  }

  return result;
}

intptr_t __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [a2 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v28 != v10)
      {
        objc_enumerationMutation(a2);
      }

      if ([objc_msgSend(*(*(&v27 + 1) + 8 * v11) "subscriptionID")])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [a2 countByEnumeratingWithState:&v27 objects:v37 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = 1;
    if (a2)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_9:
    v12 = 0;
    if (a2)
    {
      goto LABEL_15;
    }
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Saved subscriptions was unexpectedly nil.\n", buf, 2u);
  }

  v14 = _PFLogGetLogStream(17);
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
LABEL_15:
    if (a4)
    {
      goto LABEL_16;
    }

LABEL_30:
    if (v12)
    {
LABEL_31:
      *(*(*(a1 + 48) + 8) + 24) = 1;
      goto LABEL_34;
    }

    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v24 = *MEMORY[0x1E696A250];
    v31 = *MEMORY[0x1E696A588];
    v32 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [*(a1 + 32) subscriptionID]);
    v22 = [v23 initWithDomain:v24 code:134400 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v32, &v31, 1)}];
LABEL_33:
    *(*(*(a1 + 56) + 8) + 40) = v22;
    goto LABEL_34;
  }

  *buf = 0;
  _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: Saved subscriptions was unexpectedly nil.", buf, 2u);
  if (!a4)
  {
    goto LABEL_30;
  }

LABEL_16:
  if (v12)
  {
    v15 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v17 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v18 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v18 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v18))
    {
      *buf = 136315650;
      v34 = "[PFCloudKitSetupAssistant _setupDatabaseSubscriptionIfNecessary:]_block_invoke";
      v35 = 1024;
      *v36 = 1350;
      *&v36[4] = 2112;
      *&v36[6] = a4;
      _os_log_impl(&dword_18565F000, v17, v18, "CoreData+CloudKit: %s(%d): Failed to save our subscription and had an operation error, %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v15);
    goto LABEL_31;
  }

  if (![a2 count])
  {
    v22 = a4;
    goto LABEL_33;
  }

  v19 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v26 = [a2 count];
    *buf = 134218498;
    v34 = v26;
    v35 = 2112;
    *v36 = a2;
    *&v36[8] = 2112;
    *&v36[10] = a4;
    _os_log_error_impl(&dword_18565F000, v19, OS_LOG_TYPE_ERROR, "CoreData: fault: Saved some subscriptions (%lu) %@, but had an operation error, %@\n", buf, 0x20u);
  }

  v20 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    v21 = [a2 count];
    *buf = 134218498;
    v34 = v21;
    v35 = 2112;
    *v36 = a2;
    *&v36[8] = 2112;
    *&v36[10] = a4;
    _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: Saved some subscriptions (%lu) %@, but had an operation error, %@", buf, 0x20u);
  }

LABEL_34:
  *(*(*(a1 + 64) + 8) + 24) = [a3 containsObject:@"com.apple.coredata.cloudkit.zone.subscription"];
  return dispatch_semaphore_signal(*(a1 + 40));
}

void __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_99(uint64_t a1)
{
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_2_100;
    v5[3] = &unk_1E6EC3BC0;
    v5[4] = v2;
    v5[5] = v3;
    v6 = *(a1 + 40);
    v4 = *(a1 + 64);
    v7 = *(a1 + 56);
    v8 = v4;
    [(NSManagedObjectContext *)v3 performBlockAndWait:v5];
  }
}

void __66__PFCloudKitSetupAssistant__setupDatabaseSubscriptionIfNecessary___block_invoke_2_100(uint64_t *a1)
{
  v9 = 0;
  v2 = a1[9];
  if (v2 == 2)
  {
    v3 = [PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:2];
    v4 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:v3 inDatabaseWithScope:a1[9] forStore:a1[4] inContext:a1[5] error:&v9];
    v5 = (*(a1[6] + 8) + 24);
    if (v4)
    {
      v6 = v4;
      if (*v5 == 1)
      {
        [-[NSManagedObject database](v4 "database")];
      }

      if (*(*(a1[7] + 8) + 24) == 1)
      {
        [(NSManagedObject *)v6 setHasSubscription:0];
      }

      if ([a1[5] save:&v9])
      {
        goto LABEL_10;
      }

      v5 = (*(a1[6] + 8) + 24);
    }

    *v5 = 0;
    *(*(a1[8] + 8) + 40) = v9;
LABEL_10:

    return;
  }

  v7 = [NSCKDatabaseMetadata databaseMetadataForScope:v2 forStore:a1[4] inContext:a1[5] error:&v9];
  v8 = *(a1[6] + 8);
  if (!v7)
  {
    goto LABEL_15;
  }

  if (*(v8 + 24) == 1)
  {
    [(NSManagedObject *)v7 setHasSubscription:1];
    if (([a1[5] save:&v9] & 1) == 0)
    {
      v8 = *(a1[6] + 8);
LABEL_15:
      *(v8 + 24) = 0;
      *(*(a1[8] + 8) + 40) = v9;
    }
  }
}

intptr_t __47__PFCloudKitSetupAssistant__checkUserIdentity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v8 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v9 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v9 = 16 * (__ckLoggingOverride == 16);
  }

  if (os_log_type_enabled(Stream, v9))
  {
    v10 = *(a1 + 32);
    v14 = 136316162;
    v15 = "[PFCloudKitSetupAssistant _checkUserIdentity:]_block_invoke";
    v16 = 1024;
    v17 = 1465;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = a2;
    v22 = 2112;
    v23 = a3;
    _os_log_impl(&dword_18565F000, v8, v9, "CoreData+CloudKit: %s(%d): Fetched user recordID for store %@: %@\n%@", &v14, 0x30u);
  }

  objc_autoreleasePoolPop(v6);
  if (a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v11 = a2;
    v12 = 56;
  }

  else
  {
    v11 = a3;
    v12 = 64;
  }

  *(*(*(a1 + v12) + 8) + 40) = v11;
  return dispatch_semaphore_signal(*(a1 + 40));
}

void __47__PFCloudKitSetupAssistant__checkUserIdentity___block_invoke_102(uint64_t a1)
{
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47__PFCloudKitSetupAssistant__checkUserIdentity___block_invoke_2;
    v5[3] = &unk_1E6EC3D28;
    v5[4] = v2;
    v5[5] = v3;
    v4 = *(a1 + 56);
    v6 = *(a1 + 40);
    v7 = v4;
    [(NSManagedObjectContext *)v3 performBlockAndWait:v5];
  }
}

void __47__PFCloudKitSetupAssistant__checkUserIdentity___block_invoke_2(uint64_t a1)
{
  v46[2] = *MEMORY[0x1E69E9840];
  v31[0] = 0;
  v46[0] = @"NSCloudKitMirroringDelegateCheckedCKIdentityDefaultsKey";
  v46[1] = @"NSCloudKitMirroringDelegateCKIdentityRecordNameDefaultsKey";
  v2 = +[NSCKMetadataEntry entriesForKeys:fromStore:inManagedObjectContext:error:](NSCKMetadataEntry, [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2], *(a1 + 32), *(a1 + 40), v31);
  v3 = v2;
  if (!v2)
  {
    v14 = a1 + 64;
LABEL_31:
    *(*(*v14 + 8) + 24) = 0;
    *(*(*(a1 + 72) + 8) + 40) = v31[0];
    return;
  }

  v4 = [v2 objectForKey:@"NSCloudKitMirroringDelegateCheckedCKIdentityDefaultsKey"];
  if (!v4)
  {
    v4 = [NSCKMetadataEntry insertMetadataEntryWithKey:0 BOOLValue:*(a1 + 32) forStore:*(a1 + 40) intoManagedObjectContext:?];
  }

  if (![(NSManagedObject *)v4 BOOLValue])
  {
    [(NSManagedObject *)v4 setBoolValue:1];
    +[NSCKMetadataEntry insertMetadataEntryWithKey:stringValue:forStore:intoManagedObjectContext:](NSCKMetadataEntry, @"NSCloudKitMirroringDelegateCKIdentityRecordNameDefaultsKey", [*(*(*(a1 + 56) + 8) + 40) recordName], *(a1 + 32), *(a1 + 40));
    goto LABEL_29;
  }

  v5 = [v3 objectForKey:@"NSCloudKitMirroringDelegateCKIdentityRecordNameDefaultsKey"];
  v6 = v5;
  if (!v5)
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v15 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v17 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v18 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v18 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(Stream, v18))
    {
      v19 = *(a1 + 48);
      v20 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 136315906;
      v37 = "[PFCloudKitSetupAssistant _checkUserIdentity:]_block_invoke";
      v38 = 1024;
      v39 = 1520;
      v40 = 2112;
      v41 = v19;
      v42 = 2112;
      v43 = v20;
      _os_log_impl(&dword_18565F000, v17, v18, "CoreData+CloudKit: %s(%d): %@: CKIdentity record changed from nil to %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v15);
    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    v32[0] = @"PFCloudKitNewUserIdentityKey";
    v22 = [*(*(*(a1 + 56) + 8) + 40) recordName];
    v32[1] = @"NSCloudKitMirroringDelegateResetSyncReasonKey";
    v33[0] = v22;
    v33[1] = &unk_1EF435D58;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
    goto LABEL_28;
  }

  v7 = [objc_msgSend(v5 "stringValue")];
  v8 = objc_autoreleasePoolPush();
  if ((v7 & 1) == 0)
  {
    v24 = __PFCloudKitLoggingGetStream();
    v25 = v24;
    if (__ckLoggingOverride == 17)
    {
      v26 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v26 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(v24, v26))
    {
      v27 = *(a1 + 48);
      v28 = [v6 stringValue];
      v29 = [*(*(*(a1 + 56) + 8) + 40) recordName];
      *buf = 136316162;
      v37 = "[PFCloudKitSetupAssistant _checkUserIdentity:]_block_invoke_2";
      v38 = 1024;
      v39 = 1508;
      v40 = 2112;
      v41 = v27;
      v42 = 2112;
      v43 = v28;
      v44 = 2112;
      v45 = v29;
      _os_log_impl(&dword_18565F000, v25, v26, "CoreData+CloudKit: %s(%d): %@: CKIdentity record has changed from %@ to %@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v8);
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    v34[0] = @"PFCloudKitOldUserIdentityKey";
    v35[0] = [v6 stringValue];
    v34[1] = @"PFCloudKitNewUserIdentityKey";
    v30 = [*(*(*(a1 + 56) + 8) + 40) recordName];
    v34[2] = @"NSCloudKitMirroringDelegateResetSyncReasonKey";
    v35[1] = v30;
    v35[2] = &unk_1EF435D40;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:3];
LABEL_28:
    *(*(*(a1 + 72) + 8) + 40) = [v21 initWithDomain:*MEMORY[0x1E696A250] code:134405 userInfo:v23];
    goto LABEL_29;
  }

  v9 = __PFCloudKitLoggingGetStream();
  v10 = v9;
  v11 = __ckLoggingOverride;
  if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
  {
    v11 = OS_LOG_TYPE_INFO;
  }

  if (os_log_type_enabled(v9, v11))
  {
    v12 = *(a1 + 48);
    v13 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 136315906;
    v37 = "[PFCloudKitSetupAssistant _checkUserIdentity:]_block_invoke";
    v38 = 1024;
    v39 = 1516;
    v40 = 2112;
    v41 = v12;
    v42 = 2112;
    v43 = v13;
    _os_log_impl(&dword_18565F000, v10, v11, "CoreData+CloudKit: %s(%d): %@: CKIdentity record matches store: %@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v8);
LABEL_29:
  v14 = a1 + 64;
  if (*(*(*(a1 + 64) + 8) + 24) == 1 && ([*(a1 + 40) save:v31] & 1) == 0)
  {
    goto LABEL_31;
  }
}

void __47__PFCloudKitSetupAssistant__checkUserIdentity___block_invoke_107(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)*(a1 + 32) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v3 setTransactionAuthor:@"NSCloudKitMirroringDelegate.setup"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__PFCloudKitSetupAssistant__checkUserIdentity___block_invoke_2_108;
    v7[3] = &unk_1E6EC3D50;
    v7[4] = v2;
    v7[5] = v3;
    v4 = *(a1 + 56);
    v8 = *(a1 + 40);
    v9 = v4;
    [(NSManagedObjectContext *)v3 performBlockAndWait:v7];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = *MEMORY[0x1E696A250];
    v10 = *MEMORY[0x1E696A588];
    v11[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0]);
    *(*(*(a1 + 56) + 8) + 40) = [v5 initWithDomain:v6 code:134407 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}];
  }
}

void __47__PFCloudKitSetupAssistant__checkUserIdentity___block_invoke_2_108(uint64_t a1)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v26 = 0;
  v37[0] = @"NSCloudKitMirroringDelegateCheckedCKIdentityDefaultsKey";
  v37[1] = @"NSCloudKitMirroringDelegateCKIdentityRecordNameDefaultsKey";
  v2 = +[NSCKMetadataEntry entriesForKeys:fromStore:inManagedObjectContext:error:](NSCKMetadataEntry, [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2], *(a1 + 32), *(a1 + 40), &v26);
  if (!v2)
  {
    goto LABEL_30;
  }

  v3 = v2;
  if (![objc_msgSend(v2 objectForKey:{@"NSCloudKitMirroringDelegateCheckedCKIdentityDefaultsKey", "BOOLValue"}])
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v11 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v13 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v14 = 17;
    }

    else
    {
      v14 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v14 = 16;
    }

    if (__ckLoggingOverride)
    {
      v15 = v14;
    }

    else
    {
      v15 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v15))
    {
      v16 = *(a1 + 48);
      v17 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 136315906;
      v28 = "[PFCloudKitSetupAssistant _checkUserIdentity:]_block_invoke";
      v29 = 1024;
      v30 = 1597;
      v31 = 2112;
      v32 = v16;
      v33 = 2112;
      v34 = v17;
      _os_log_impl(&dword_18565F000, v13, v15, "CoreData+CloudKit: %s(%d): %@: First identity fetch failed due to authentication but store was never assigned to a user record: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v11);
    v18 = [v3 objectForKey:@"NSCloudKitMirroringDelegateCheckedCKIdentityDefaultsKey"];
    if (v18)
    {
      [v18 setBoolValue:1];
    }

    else
    {
      [NSCKMetadataEntry insertMetadataEntryWithKey:1 BOOLValue:*(a1 + 32) forStore:*(a1 + 40) intoManagedObjectContext:?];
    }

    if ([*(a1 + 40) save:&v26])
    {
      return;
    }

LABEL_30:
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v10 = v26;
    goto LABEL_31;
  }

  v4 = [v3 objectForKey:@"NSCloudKitMirroringDelegateCKIdentityRecordNameDefaultsKey"];
  v5 = *(*(a1 + 56) + 8);
  if (v4)
  {
    v6 = v4;
    *(v5 + 24) = 0;
    v7 = objc_alloc(MEMORY[0x1E696ABC0]);
    v8 = *MEMORY[0x1E696A250];
    v35[0] = @"PFCloudKitOldUserIdentityKey";
    v9 = [v6 stringValue];
    v35[1] = @"NSCloudKitMirroringDelegateResetSyncReasonKey";
    v36[0] = v9;
    v36[1] = &unk_1EF435D28;
    v10 = [v7 initWithDomain:v8 code:134405 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v36, v35, 2)}];
LABEL_31:
    *(*(*(a1 + 64) + 8) + 40) = v10;
    return;
  }

  *(v5 + 24) = 1;
  v19 = objc_autoreleasePoolPush();
  v20 = __PFCloudKitLoggingGetStream();
  v21 = v20;
  if (__ckLoggingOverride == 17)
  {
    v22 = 17;
  }

  else
  {
    v22 = 1;
  }

  if (__ckLoggingOverride == 16)
  {
    v22 = 16;
  }

  if (__ckLoggingOverride)
  {
    v23 = v22;
  }

  else
  {
    v23 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(v20, v23))
  {
    v24 = *(a1 + 48);
    v25 = *(*(*(a1 + 72) + 8) + 40);
    *buf = 136315906;
    v28 = "[PFCloudKitSetupAssistant _checkUserIdentity:]_block_invoke_2";
    v29 = 1024;
    v30 = 1593;
    v31 = 2112;
    v32 = v24;
    v33 = 2112;
    v34 = v25;
    _os_log_impl(&dword_18565F000, v21, v23, "CoreData+CloudKit: %s(%d): %@: Identity fetch failed due to authentication but store was never assigned to a user record: %@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v19);
}

void __96__PFCloudKitSetupAssistant__checkAndTruncateEventHistoryIfNeededWithManagedObjectContext_error___block_invoke(uint64_t *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKEvent entityPath]);
  v3 = a1[4];
  if (v3)
  {
    v4 = [(NSManagedObjectContext *)v3 _countForFetchRequest_:v2 error:(*(a1[5] + 8) + 40)];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(*(a1[6] + 8) + 24) = 0;
      v5 = *(*(a1[5] + 8) + 40);
    }

    else if (v4 >= 0x4E21)
    {
      [(NSFetchRequest *)v2 setFetchLimit:v4 - 10000];
      [(NSFetchRequest *)v2 setResultType:1];
      v10[0] = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"SELF" ascending:1];
      -[NSFetchRequest setSortDescriptors:](v2, "setSortDescriptors:", [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1]);
      v6 = [a1[4] executeFetchRequest:v2 error:*(a1[5] + 8) + 40];
      if (v6)
      {
        v7 = [[NSBatchDeleteRequest alloc] initWithObjectIDs:v6];
        [(NSBatchDeleteRequest *)v7 setResultType:0];
        *(*(a1[6] + 8) + 24) = [objc_msgSend(objc_msgSend(a1[4] executeRequest:v7 error:{*(a1[5] + 8) + 40), "result"), "BOOLValue"}];
        if ((*(*(a1[6] + 8) + 24) & 1) == 0)
        {
          v8 = *(*(a1[5] + 8) + 40);
        }
      }

      else
      {
        *(*(a1[6] + 8) + 24) = 0;
        v9 = *(*(a1[5] + 8) + 40);
      }
    }
  }
}

@end