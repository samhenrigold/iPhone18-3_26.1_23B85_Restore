@interface SUCoreSpace
+ (BOOL)_isUserVolume:(id)volume;
+ (id)cacheDeleteUrgencyName:(int)name;
+ (id)sharedSpaceManager;
+ (int64_t)cacheDeleteGetReserveSpace:(id *)space withError:(id *)error;
+ (unint64_t)getFreeSpaceAvailableForSoftwareUpdate:(id)update;
+ (unint64_t)getVolumeUsedSpace:(id)space;
+ (void)_checkMinimumRequiredSpace:(unint64_t)space purgingFromBase:(id)base userInitiated:(BOOL)initiated totalRequiredFreeSpace:(unint64_t)freeSpace freeSpaceAvailable:(unint64_t)available checkAvailableSpaceTransaction:(id)transaction withCompletionQueue:(id)queue completion:(id)self0;
+ (void)_issuePurgeCompletion:(id)completion withCompletionQueue:(id)queue haveEnoughSpace:(BOOL)space amountPurged:(unint64_t)purged error:(id)error transaction:(id)transaction transactionName:(id)name;
+ (void)_issuePurgeableCompletion:(id)completion withCompletionQueue:(id)queue haveEnoughSpace:(BOOL)space amountPurgeable:(unint64_t)purgeable error:(id)error transaction:(id)transaction transactionName:(id)name;
+ (void)_issueSpaceCheckCompletion:(id)completion withCompletionQueue:(id)queue haveEnoughSpace:(BOOL)space haveTotalRequired:(BOOL)required freeSpaceAvailable:(unint64_t)available error:(id)error releasingTransaction:(id)transaction;
+ (void)_spaceCheckPhaseError:(id)error checkingFromBase:(id)base withIdentier:(id)identier completion:(id)completion;
+ (void)_trackSpaceBegin:(id)begin withIdentifier:(id)identifier;
+ (void)_trackSpaceEnd:(id)end withIdentifier:(id)identifier withResult:(int64_t)result withError:(id)error;
+ (void)cacheDeleteDisableReserveSpace;
+ (void)cacheDeletePauseReserveSpace:(id)space unentitledSpace:(id)unentitledSpace withPurpose:(id)purpose;
+ (void)cacheDeletePurge:(unint64_t)purge cacheDeleteUrgency:(int)urgency withCompletionQueue:(id)queue completion:(id)completion;
+ (void)cacheDeletePurge:(unint64_t)purge fromBasePath:(id)path cacheDeleteUrgency:(int)urgency timeout:(int)timeout withCompletionQueue:(id)queue completion:(id)completion;
+ (void)cacheDeleteResumeReserveSpace;
+ (void)cacheDeleteSetReserveSpace:(id)space systemGrowthMarginSize:(id)size;
+ (void)cacheDeleteSetReserveSpaceWithInfo:(id)info;
+ (void)checkAvailableFreeSpace:(unint64_t)space checkingFromBase:(id)base withIdentifier:(id)identifier userInitiated:(BOOL)initiated completion:(id)completion;
+ (void)checkAvailableSpace:(unint64_t)space allowPurgeWithUrgency:(int)urgency purgingFromBase:(id)base minimalRequiredFreeSpace:(unint64_t)freeSpace withCompletionQueue:(id)queue completion:(id)completion;
+ (void)checkPurgeableSpaceCacheDelete:(unint64_t)delete cacheDeleteUrgency:(int)urgency withCompletionQueue:(id)queue completion:(id)completion;
+ (void)checkPurgeableSpaceCacheDelete:(unint64_t)delete fromBasePath:(id)path cacheDeleteUrgency:(int)urgency timeout:(int)timeout additionalOptions:(id)options withCompletionQueue:(id)queue completion:(id)completion;
+ (void)checkPurgeableSpaceOffloadApps:(unint64_t)apps cacheDeleteUrgency:(int64_t)urgency withCompletionQueue:(id)queue completion:(id)completion;
+ (void)checkPurgeableSpaceOffloadApps:(unint64_t)apps fromBasePath:(id)path cacheDeleteUrgency:(int64_t)urgency onlyAvailableBySkippingLaunchCheck:(BOOL)check withCompletionQueue:(id)queue completion:(id)completion;
+ (void)mobileAssetEstimateEvictable:(unint64_t)evictable completionQueue:(id)queue completion:(id)completion;
+ (void)mobileAssetResumeWithCompletionQueue:(id)queue completion:(id)completion;
+ (void)mobileAssetSuspend:(unint64_t)suspend completionQueue:(id)queue completion:(id)completion;
+ (void)offloadAppsPurge:(unint64_t)purge cacheDeleteUrgency:(int64_t)urgency withCompletionQueue:(id)queue completion:(id)completion;
+ (void)offloadAppsPurge:(unint64_t)purge fromBasePath:(id)path cacheDeleteUrgency:(int64_t)urgency withCompletionQueue:(id)queue completion:(id)completion;
- (SUCoreSpace)init;
@end

@implementation SUCoreSpace

+ (id)sharedSpaceManager
{
  if (sharedSpaceManager_spaceManagerOnce != -1)
  {
    +[SUCoreSpace sharedSpaceManager];
  }

  v3 = sharedSpaceManager_spaceManager;

  return v3;
}

uint64_t __33__SUCoreSpace_sharedSpaceManager__block_invoke()
{
  v0 = objc_alloc_init(SUCoreSpace);
  v1 = sharedSpaceManager_spaceManager;
  sharedSpaceManager_spaceManager = v0;

  [sharedSpaceManager_spaceManager setReserveSpacePaused:0];
  [sharedSpaceManager_spaceManager setEntitledSpaceDisabled:0];
  [MEMORY[0x277D64430] associateLayer:151 withDomain:@"CacheDeleteErrorDomain"];
  [MEMORY[0x277D64430] attributesOfSUCoreErrorCode:8600 indicating:4];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"CacheDeleteErrorDomain" withCode:1 codeName:@"CacheDeleteErrorConnectionInterrupted"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"CacheDeleteErrorDomain" withCode:2 codeName:@"CacheDeleteErrorConnectionInvalidated"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"CacheDeleteErrorDomain" withCode:3 codeName:@"CacheDeleteErrorConnectionCancelled"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"CacheDeleteErrorDomain" withCode:4 codeName:@"CacheDeleteErrorMissingEntitlement"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"CacheDeleteErrorDomain" withCode:5 codeName:@"CacheDeleteErrorInsufficientPermissions"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"CacheDeleteErrorDomain" withCode:6 codeName:@"CacheDeleteErrorFailedToConnect"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"CacheDeleteErrorDomain" withCode:7 codeName:@"CacheDeleteErrorDuplicateService"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"CacheDeleteErrorDomain" withCode:8 codeName:@"CacheDeleteErrorUnresponsiveService"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"CacheDeleteErrorDomain" withCode:9 codeName:@"CacheDeleteErrorTimeout"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"CacheDeleteErrorDomain" withCode:10 codeName:@"CacheDeleteErrorInvalidVolume"];
  v2 = MEMORY[0x277D64430];

  return [v2 attributesOfErrorForDomain:@"CacheDeleteErrorDomain" withCode:11 codeName:@"CacheDeleteErrorInvalidParams"];
}

- (SUCoreSpace)init
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = SUCoreSpace;
  v2 = [(SUCoreSpace *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    commonDomain = [mEMORY[0x277D643F8] commonDomain];
    v6 = [v3 initWithFormat:@"%@.%@", commonDomain, @"core.space.operation"];

    uTF8String = [v6 UTF8String];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(uTF8String, v8);
    spaceQueue = v2->_spaceQueue;
    v2->_spaceQueue = v9;

    if (v2->_spaceQueue)
    {
      mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
      oslog = [mEMORY[0x277D64460] oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v17 = v6;
        _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SPACE] DISPATCH: created dispatch queue domain(%{public}@)", buf, 0xCu);
      }
    }

    else
    {
      oslog = [MEMORY[0x277D64428] sharedDiag];
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unable to create dispatch queue domain(%@)", v6];
      [oslog trackError:@"[SPACE]" forReason:v13 withResult:8100 withError:0];
    }
  }

  return v2;
}

+ (void)checkAvailableSpace:(unint64_t)space allowPurgeWithUrgency:(int)urgency purgingFromBase:(id)base minimalRequiredFreeSpace:(unint64_t)freeSpace withCompletionQueue:(id)queue completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  baseCopy = base;
  queueCopy = queue;
  completionCopy = completion;
  [SUCoreSpace _trackSpaceBegin:@"checkAvailableSpace" withIdentifier:@"total"];
  v15 = [MEMORY[0x277D643F8] beginTransactionWithName:@"space.CheckAvailableSpace"];
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"NIL";
    if (baseCopy)
    {
      v18 = baseCopy;
    }

    *buf = 138543618;
    v35 = v18;
    v36 = 2048;
    spaceCopy = space;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SPACE] Checking available space from base path %{public}@. Required free space: %lld", buf, 0x16u);
  }

  v19 = urgency == 4;

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __129__SUCoreSpace_checkAvailableSpace_allowPurgeWithUrgency_purgingFromBase_minimalRequiredFreeSpace_withCompletionQueue_completion___block_invoke;
  v25[3] = &unk_27892E898;
  v26 = queueCopy;
  v27 = v15;
  urgencyCopy = urgency;
  spaceCopy2 = space;
  freeSpaceCopy = freeSpace;
  v28 = baseCopy;
  v29 = completionCopy;
  v33 = urgency == 4;
  v20 = baseCopy;
  v21 = v15;
  v22 = queueCopy;
  v23 = completionCopy;
  [SUCoreSpace checkAvailableFreeSpace:space checkingFromBase:v20 withIdentifier:@"total" userInitiated:v19 completion:v25];
}

void __129__SUCoreSpace_checkAvailableSpace_allowPurgeWithUrgency_purgingFromBase_minimalRequiredFreeSpace_withCompletionQueue_completion___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = +[SUCoreSpace sharedSpaceManager];
  v9 = [v8 spaceQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __129__SUCoreSpace_checkAvailableSpace_allowPurgeWithUrgency_purgingFromBase_minimalRequiredFreeSpace_withCompletionQueue_completion___block_invoke_2;
  block[3] = &unk_27892E870;
  v18 = v7;
  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v25 = a2;
  v13 = *(a1 + 72);
  v21 = *(a1 + 64);
  v22 = a3;
  v24 = *(a1 + 80);
  v23 = v13;
  *&v14 = *(a1 + 48);
  *(&v14 + 1) = v10;
  *&v15 = v11;
  *(&v15 + 1) = v12;
  v19 = v15;
  v20 = v14;
  v26 = *(a1 + 84);
  v16 = v7;
  dispatch_async(v9, block);
}

void __129__SUCoreSpace_checkAvailableSpace_allowPurgeWithUrgency_purgingFromBase_minimalRequiredFreeSpace_withCompletionQueue_completion___block_invoke_2(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    +[SUCoreSpace _trackSpaceEnd:withIdentifier:withResult:withError:](SUCoreSpace, "_trackSpaceEnd:withIdentifier:withResult:withError:", @"checkAvailableSpace", @"total", [v2 code], *(a1 + 32));
    [SUCoreSpace _issueSpaceCheckCompletion:*(a1 + 64) withCompletionQueue:*(a1 + 40) haveEnoughSpace:0 haveTotalRequired:0 freeSpaceAvailable:0 error:*(a1 + 32) releasingTransaction:*(a1 + 48)];
    return;
  }

  if (*(a1 + 100) == 1)
  {
    [SUCoreSpace _trackSpaceEnd:@"checkAvailableSpace" withIdentifier:@"total" withResult:0 withError:0];
    v3 = [MEMORY[0x277D64460] sharedLogger];
    v4 = [v3 oslog];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 72);
      v6 = *(a1 + 80);
      *buf = 134218240;
      v44 = v5;
      v45 = 2048;
      v46 = v6;
      _os_log_impl(&dword_23193C000, v4, OS_LOG_TYPE_DEFAULT, "[SPACE] total disk space available: need %llu and %llu is available (have enough space)", buf, 0x16u);
    }

    v7 = *(a1 + 64);
    v8 = *(a1 + 80);
    v9 = *(a1 + 40);
    v36 = *(a1 + 48);
    v10 = 1;
LABEL_7:
    [SUCoreSpace _issueSpaceCheckCompletion:v7 withCompletionQueue:v9 haveEnoughSpace:1 haveTotalRequired:v10 freeSpaceAvailable:v8 error:0 releasingTransaction:v36];
    return;
  }

  v11 = [MEMORY[0x277D64460] sharedLogger];
  v12 = [v11 oslog];

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 72);
    v14 = *(a1 + 80);
    *buf = 134218240;
    v44 = v13;
    v45 = 2048;
    v46 = v14;
    _os_log_impl(&dword_23193C000, v12, OS_LOG_TYPE_DEFAULT, "[SPACE] not enough free space for total required: need %llu and %llu is available", buf, 0x16u);
  }

  if (*(a1 + 96) == -1)
  {
    v23 = *(a1 + 88);
    if (v23)
    {
      if (*(a1 + 80) >= v23)
      {
        [SUCoreSpace _trackSpaceEnd:@"checkAvailableSpace" withIdentifier:@"total" withResult:0 withError:0];
        v32 = [MEMORY[0x277D64460] sharedLogger];
        v33 = [v32 oslog];

        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v35 = *(a1 + 80);
          v34 = *(a1 + 88);
          *buf = 134218240;
          v44 = v34;
          v45 = 2048;
          v46 = v35;
          _os_log_impl(&dword_23193C000, v33, OS_LOG_TYPE_DEFAULT, "[SPACE] not enough total but have minimal (did not try cache delete): need %llu and %llu is available", buf, 0x16u);
        }

        v7 = *(a1 + 64);
        v8 = *(a1 + 80);
        v9 = *(a1 + 40);
        v36 = *(a1 + 48);
        v10 = 0;
        goto LABEL_7;
      }

      v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"not enough minimal space (did not try cache delete): need %llu and %llu is available", *(a1 + 88), *(a1 + 80)];
      v25 = [MEMORY[0x277D643F8] sharedCore];
      v26 = [v25 buildError:8600 underlying:0 description:v24];

      +[SUCoreSpace _trackSpaceEnd:withIdentifier:withResult:withError:](SUCoreSpace, "_trackSpaceEnd:withIdentifier:withResult:withError:", @"checkAvailableSpace", @"total", [v26 code], v26);
      v27 = [MEMORY[0x277D64460] sharedLogger];
      v28 = [v27 oslog];

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v44 = v24;
        _os_log_impl(&dword_23193C000, v28, OS_LOG_TYPE_DEFAULT, "[SPACE] %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"not enough total space (did not try cache delete): need %llu and %llu is available", *(a1 + 72), *(a1 + 80)];
      v29 = [MEMORY[0x277D643F8] sharedCore];
      v26 = [v29 buildError:8600 underlying:0 description:v24];

      v30 = [MEMORY[0x277D64460] sharedLogger];
      v31 = [v30 oslog];

      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v44 = v24;
        _os_log_impl(&dword_23193C000, v31, OS_LOG_TYPE_DEFAULT, "[SPACE] %{public}@", buf, 0xCu);
      }

      +[SUCoreSpace _trackSpaceEnd:withIdentifier:withResult:withError:](SUCoreSpace, "_trackSpaceEnd:withIdentifier:withResult:withError:", @"checkAvailableSpace", @"total", [v26 code], v26);
    }

    [SUCoreSpace _issueSpaceCheckCompletion:*(a1 + 64) withCompletionQueue:*(a1 + 40) haveEnoughSpace:0 haveTotalRequired:0 freeSpaceAvailable:*(a1 + 80) error:v26 releasingTransaction:*(a1 + 48)];

    return;
  }

  [SUCoreSpace _trackSpaceEnd:@"checkAvailableSpace" withIdentifier:@"total" withResult:0 withError:0];
  [SUCorePower setPowerAssertion:1 forIdentifierDomain:@"space.CheckAvailableSpace"];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __129__SUCoreSpace_checkAvailableSpace_allowPurgeWithUrgency_purgingFromBase_minimalRequiredFreeSpace_withCompletionQueue_completion___block_invoke_365;
  v37[3] = &unk_27892E848;
  v40 = *(a1 + 72);
  v15 = *(a1 + 64);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v41 = *(a1 + 88);
  *&v18 = *(a1 + 56);
  *(&v18 + 1) = v15;
  *&v19 = v16;
  *(&v19 + 1) = v17;
  v38 = v19;
  v39 = v18;
  v42 = *(a1 + 101);
  v20 = MEMORY[0x2383746D0](v37);
  v21 = *(a1 + 56);
  v22 = *(a1 + 72) - *(a1 + 80);
  if (v21)
  {
    [SUCoreSpace cacheDeletePurge:v22 fromBasePath:v21 cacheDeleteUrgency:*(a1 + 96) completion:v20];
  }

  else
  {
    [SUCoreSpace cacheDeletePurge:v22 cacheDeleteUrgency:*(a1 + 96) withCompletionQueue:0 completion:v20];
  }
}

uint64_t __129__SUCoreSpace_checkAvailableSpace_allowPurgeWithUrgency_purgingFromBase_minimalRequiredFreeSpace_withCompletionQueue_completion___block_invoke_365(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  [SUCorePower setPowerAssertion:0 forIdentifierDomain:@"space.CheckAvailableSpace"];
  v8 = [MEMORY[0x277D64460] sharedLogger];
  v9 = [v8 oslog];

  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (a4 || !a2)
  {
    if (v10)
    {
      v14 = *(a1 + 64);
      v15 = *(a1 + 72);
      *buf = 134218496;
      v17 = v14;
      v18 = 2048;
      v19 = v15;
      v20 = 2048;
      v21 = a3;
      _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "[SPACE] After cache delete: need %llu total: had %llu free space, was able to free up %llu after cache delete.  Not enough space to install update.", buf, 0x20u);
    }

    return [SUCoreSpace _checkMinimumRequiredSpace:*(a1 + 80) purgingFromBase:*(a1 + 48) userInitiated:*(a1 + 88) totalRequiredFreeSpace:*(a1 + 64) freeSpaceAvailable:*(a1 + 72) + a3 checkAvailableSpaceTransaction:*(a1 + 40) withCompletionQueue:*(a1 + 32) completion:*(a1 + 56)];
  }

  else
  {
    if (v10)
    {
      v11 = *(a1 + 64);
      v12 = *(a1 + 72);
      *buf = 134218496;
      v17 = v11;
      v18 = 2048;
      v19 = v12;
      v20 = 2048;
      v21 = a3;
      _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "[SPACE] After cache delete: need %llu total: had %llu free space, was able to free up %llu after cache delete (enough space to install update)", buf, 0x20u);
    }

    return [SUCoreSpace _issueSpaceCheckCompletion:*(a1 + 56) withCompletionQueue:*(a1 + 32) haveEnoughSpace:1 haveTotalRequired:1 freeSpaceAvailable:*(a1 + 72) + a3 error:0 releasingTransaction:*(a1 + 40)];
  }
}

+ (void)checkAvailableFreeSpace:(unint64_t)space checkingFromBase:(id)base withIdentifier:(id)identifier userInitiated:(BOOL)initiated completion:(id)completion
{
  baseCopy = base;
  identifierCopy = identifier;
  completionCopy = completion;
  v13 = +[SUCoreSpace sharedSpaceManager];
  spaceQueue = [v13 spaceQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __96__SUCoreSpace_checkAvailableFreeSpace_checkingFromBase_withIdentifier_userInitiated_completion___block_invoke;
  v18[3] = &unk_27892E8E8;
  v19 = baseCopy;
  v20 = identifierCopy;
  v21 = completionCopy;
  spaceCopy = space;
  v15 = completionCopy;
  v16 = identifierCopy;
  v17 = baseCopy;
  dispatch_async(spaceQueue, v18);
}

void __96__SUCoreSpace_checkAvailableFreeSpace_checkingFromBase_withIdentifier_userInitiated_completion___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = @"/var/mobile/";
  }

  v4 = [SUCoreSpace getFreeSpaceAvailableForSoftwareUpdate:v3];
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 56);
    v7 = v4 >= v6;
    v8 = [MEMORY[0x277D64460] sharedLogger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 56);
      v12 = @"NO";
      if (v5 >= v6)
      {
        v12 = @"YES";
      }

      *buf = 138544386;
      v24 = v3;
      v25 = 2114;
      v26 = v10;
      v27 = 2048;
      v28 = v11;
      v29 = 2048;
      v30 = v5;
      v31 = 2114;
      v32 = v12;
      _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "[SPACE] checked space on %{public}@ (%{public}@): required %llu and %llu is available | haveEnoughSpace:%{public}@", buf, 0x34u);
    }

    v13 = [MEMORY[0x277D643F8] sharedCore];
    v14 = [v13 completionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__SUCoreSpace_checkAvailableFreeSpace_checkingFromBase_withIdentifier_userInitiated_completion___block_invoke_382;
    block[3] = &unk_27892E8C0;
    v15 = *(a1 + 48);
    v22 = v7;
    v20 = v15;
    v21 = v5;
    dispatch_async(v14, block);

    v16 = v20;
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"check for available space failed, basePath=%@", v3];
    v18 = [MEMORY[0x277D643F8] sharedCore];
    v16 = [v18 buildError:8602 underlying:0 description:v17];

    [SUCoreSpace _spaceCheckPhaseError:v16 checkingFromBase:v3 withIdentier:*(a1 + 40) completion:*(a1 + 48)];
  }
}

+ (void)cacheDeletePurge:(unint64_t)purge fromBasePath:(id)path cacheDeleteUrgency:(int)urgency timeout:(int)timeout withCompletionQueue:(id)queue completion:(id)completion
{
  v11 = *&urgency;
  v38[4] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  queueCopy = queue;
  completionCopy = completion;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  if (pathCopy)
  {
    v16 = pathCopy;
  }

  else
  {
    v16 = @"/var/mobile/";
  }

  if (timeout >= 1)
  {
    timeoutCopy = timeout;
  }

  else
  {
    timeoutCopy = 300;
  }

  v18 = MEMORY[0x277CBEB38];
  v38[0] = v16;
  v37[0] = @"CACHE_DELETE_VOLUME";
  v37[1] = @"CACHE_DELETE_AMOUNT";
  v19 = [MEMORY[0x277CCABB0] numberWithLongLong:purge];
  v38[1] = v19;
  v37[2] = @"CACHE_DELETE_URGENCY_LIMIT";
  v20 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  v38[2] = v20;
  v37[3] = @"CACHE_DELETE_PURGE_TIMEOUT";
  v21 = [MEMORY[0x277CCABB0] numberWithInt:timeoutCopy];
  v38[3] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:4];
  v23 = [v18 dictionaryWithDictionary:v22];

  v24 = _os_feature_enabled_impl() ^ 1;
  if (v11 != 4)
  {
    LOBYTE(v24) = 1;
  }

  if ((v24 & 1) == 0)
  {
    [v23 setValue:MEMORY[0x277CBEC38] forKey:@"CACHE_DELETE_RELEASE_SPACE"];
  }

  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v23;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SPACE] triggering CacheDeletePurge with info: %{public}@", buf, 0xCu);
  }

  [SUCoreSpace _trackSpaceBegin:@"CacheDeletePurgeSpaceWithInfo"];
  v27 = [MEMORY[0x277D643F8] beginTransactionWithName:@"space.CacheDeletePurge"];
  v30 = completionCopy;
  v28 = queueCopy;
  v29 = v27;
  v32[3] = CacheDeletePurgeSpaceWithInfo();

  _Block_object_dispose(&v31, 8);
}

void __103__SUCoreSpace_cacheDeletePurge_fromBasePath_cacheDeleteUrgency_timeout_withCompletionQueue_completion___block_invoke(void *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (!a2)
  {
    v11 = @"no results provided on cache delete purge complete";
LABEL_12:
    v12 = 8601;
LABEL_15:
    v3 = [MEMORY[0x277D643F8] sharedCore];
    v14 = [v3 buildError:v12 underlying:0 description:v11];
    v15 = 0;
    goto LABEL_16;
  }

  v3 = a2;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v3))
  {
    v13 = [MEMORY[0x277D64428] sharedDiag];
    [v13 trackAnomaly:@"cacheDeletePurge" forReason:@"result provided by CacheDeletePurgeSpaceWithInfo is not CFDictionary type - ignored" withResult:8112 withError:0];

    v11 = @"invalid results type provided on cache delete purge complete";
    goto LABEL_12;
  }

  v5 = [MEMORY[0x277D64460] sharedLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = v3;
    _os_log_impl(&dword_23193C000, v6, OS_LOG_TYPE_DEFAULT, "[PURGE] cache delete purge results: %{public}@", buf, 0xCu);
  }

  Value = CFDictionaryGetValue(v3, @"CACHE_DELETE_AMOUNT");
  if (!Value)
  {
    v11 = @"no amount of space purged provided on cache delete purge complete";
    v12 = 8601;
    goto LABEL_14;
  }

  CFNumberGetValue(Value, kCFNumberLongLongType, &valuePtr);
  v8 = [MEMORY[0x277D64460] sharedLogger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v22 = valuePtr;
    _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "[SPACE] purged %lld bytes", buf, 0xCu);
  }

  if (valuePtr < a1[8])
  {
    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = [v10 initWithFormat:@"purged %lld but needed to purge %lld (not enough space)", valuePtr, a1[8]];
    v12 = 8600;
LABEL_14:

    goto LABEL_15;
  }

  v17 = [MEMORY[0x277D64460] sharedLogger];
  v18 = [v17 oslog];

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = a1[8];
    *buf = 134218240;
    v22 = valuePtr;
    v23 = 2048;
    v24 = v19;
    _os_log_impl(&dword_23193C000, v18, OS_LOG_TYPE_DEFAULT, "[SPACE] purged %lld when needed to purge %lld (have enough space)", buf, 0x16u);
  }

  v11 = 0;
  v12 = 0;
  v14 = 0;
  v15 = 1;
LABEL_16:

  [SUCoreSpace _trackSpaceEnd:@"CacheDeletePurgeSpaceWithInfo" withResult:v12 withError:v14];
  [SUCoreSpace _issuePurgeCompletion:a1[6] withCompletionQueue:a1[4] haveEnoughSpace:v15 amountPurged:valuePtr error:v14 transaction:a1[5] transactionName:@"space.CacheDeletePurge"];
  v16 = *(*(a1[7] + 8) + 24);
  if (v16)
  {
    CFRelease(v16);
    *(*(a1[7] + 8) + 24) = 0;
  }
}

+ (void)cacheDeletePurge:(unint64_t)purge cacheDeleteUrgency:(int)urgency withCompletionQueue:(id)queue completion:(id)completion
{
  v7 = *&urgency;
  queueCopy = queue;
  completionCopy = completion;
  if ([SUCoreSpace _isUserVolume:@"/var/mobile/"])
  {
    v11 = [MEMORY[0x277D643F8] beginTransactionWithName:@"space.CacheDeletePurge"];
    v12 = +[SUCoreSpace sharedSpaceManager];
    spaceQueue = [v12 spaceQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __82__SUCoreSpace_cacheDeletePurge_cacheDeleteUrgency_withCompletionQueue_completion___block_invoke;
    v15[3] = &unk_27892E938;
    v18 = completionCopy;
    v16 = queueCopy;
    v17 = v11;
    v14 = v11;
    [SUCoreSpace cacheDeletePurge:purge fromBasePath:@"/var/mobile/" cacheDeleteUrgency:v7 timeout:300 withCompletionQueue:spaceQueue completion:v15];
  }

  else
  {
    [SUCoreSpace cacheDeletePurge:purge fromBasePath:@"/var/mobile/" cacheDeleteUrgency:v7 withCompletionQueue:queueCopy completion:completionCopy];
  }
}

+ (unint64_t)getFreeSpaceAvailableForSoftwareUpdate:(id)update
{
  v48 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (updateCopy)
  {
    v4 = updateCopy;
  }

  else
  {
    v4 = @"/";
  }

  if (_os_feature_enabled_impl())
  {
    v41 = 0;
    v42 = 0;
    v5 = [SUCoreSpace cacheDeleteGetReserveSpace:&v42 withError:&v41];
    v6 = v42;
    v7 = v41;
    if (!v5)
    {
      v8 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_ENTITLED_RESERVATION_FREE"];
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        unsignedLongLongValue = [v8 unsignedLongLongValue];
      }

      else
      {
        unsignedLongLongValue = 0;
      }

      v17 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_EXTRA_SHARED_FREE"];
      v39 = v17;
      if (v17 && (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        unsignedLongLongValue2 = [v18 unsignedLongLongValue];
      }

      else
      {
        unsignedLongLongValue2 = 0;
      }

      v19 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_UNENTITLED_RESERVATION"];
      v40 = v8;
      v38 = v19;
      v21 = v19 && (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v20 unsignedLongLongValue] != 0;
      v22 = +[SUCoreSpace sharedSpaceManager];
      entitledSpaceDisabled = [v22 entitledSpaceDisabled];

      if (entitledSpaceDisabled)
      {
        mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
        oslog = [mEMORY[0x277D64460] oslog];

        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          buf.f_bsize = 134217984;
          *&buf.f_iosize = unsignedLongLongValue2;
          _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SPACE] entitled space is already disabled, return sharedFreeSpace as available for software update. sharedFreeSpace= %llu", &buf, 0xCu);
        }
      }

      else
      {
        if (!v21)
        {
          oslog = [v6 objectForKeyedSubscript:@"CACHE_DELETE_UNENTITLED_CD_THRESHOLD"];
          if (!oslog || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v29 = [oslog unsignedLongLongValue]) == 0)
          {
            mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
            oslog2 = [mEMORY[0x277D64460]2 oslog];

            if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.f_bsize) = 0;
              _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[SPACE] unentitled threshold from CD is 0!", &buf, 2u);
            }

            v29 = 0;
          }

          v32 = unsignedLongLongValue2 - v29;
          if (unsignedLongLongValue2 >= v29)
          {
            mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
            oslog3 = [mEMORY[0x277D64460]3 oslog];

            v27 = v40;
            if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
            {
              buf.f_bsize = 134218496;
              *&buf.f_iosize = unsignedLongLongValue2;
              WORD2(buf.f_blocks) = 2048;
              *(&buf.f_blocks + 6) = v29;
              HIWORD(buf.f_bfree) = 2048;
              buf.f_bavail = unsignedLongLongValue2 - v29;
              _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[SPACE] Entitled secured space is empty, let's deduct the unentitled threshold from the shared space, sharedFreeSpace= %llu, unentitledThreshold= %llu, freeSpaceAvilableForSoftwareUpdate= %llu", &buf, 0x20u);
            }
          }

          else
          {
            v33 = +[SUCoreSpace sharedSpaceManager];
            [v33 setEntitledSpaceDisabled:1];

            mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
            oslog3 = [mEMORY[0x277D64460]4 oslog];

            v27 = v40;
            if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
            {
              buf.f_bsize = 134218496;
              *&buf.f_iosize = unsignedLongLongValue2;
              WORD2(buf.f_blocks) = 2048;
              *(&buf.f_blocks + 6) = v29;
              HIWORD(buf.f_bfree) = 2048;
              buf.f_bavail = unsignedLongLongValue2;
              _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[SPACE] free space is less than unentitled threshold, disable setting entitled space for software update. sharedFreeSpace= %llu, unentitledThreshold= %llu, freeSpaceAvilableForSoftwareUpdate= %llu", &buf, 0x20u);
            }

            v32 = unsignedLongLongValue2;
          }

          v28 = v38;

          unsignedLongLongValue2 = v32;
          goto LABEL_47;
        }

        mEMORY[0x277D64460]5 = [MEMORY[0x277D64460] sharedLogger];
        oslog = [mEMORY[0x277D64460]5 oslog];

        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          buf.f_bsize = 134218496;
          *&buf.f_iosize = unsignedLongLongValue2;
          WORD2(buf.f_blocks) = 2048;
          *(&buf.f_blocks + 6) = unsignedLongLongValue;
          HIWORD(buf.f_bfree) = 2048;
          buf.f_bavail = unsignedLongLongValue2 + unsignedLongLongValue;
          _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SPACE] Entitled secured space is taken into account, sharedFreeSpace= %llu, entitledFreeSpace= %llu, freeSpaceAvailableForSoftwareUpdate= %llu", &buf, 0x20u);
        }

        unsignedLongLongValue2 += unsignedLongLongValue;
      }

      v27 = v40;
      v28 = v38;
LABEL_47:

      goto LABEL_48;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  mEMORY[0x277D64460]6 = [MEMORY[0x277D64460] sharedLogger];
  oslog4 = [mEMORY[0x277D64460]6 oslog];

  if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.f_bsize) = 0;
    _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "[SPACE] Calculating Free space using statfs", &buf, 2u);
  }

  bzero(&buf, 0x878uLL);
  if (statfs([(__CFString *)v4 fileSystemRepresentation], &buf))
  {
    mEMORY[0x277D64460]7 = [MEMORY[0x277D64460] sharedLogger];
    oslog5 = [mEMORY[0x277D64460]7 oslog];

    if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = __error();
      v15 = strerror(*v14);
      *v43 = 136446466;
      v44 = "/";
      v45 = 2082;
      v46 = v15;
      _os_log_impl(&dword_23193C000, oslog5, OS_LOG_TYPE_DEFAULT, "unable to stat volume: %{public}s : %{public}s", v43, 0x16u);
    }

    unsignedLongLongValue2 = 0;
  }

  else
  {
    unsignedLongLongValue2 = buf.f_bavail * buf.f_bsize;
  }

LABEL_48:

  return unsignedLongLongValue2;
}

+ (int64_t)cacheDeleteGetReserveSpace:(id *)space withError:(id *)error
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v6 = CacheDeleteGetReserveSpace();
  if (v6)
  {
    v7 = v6;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v7))
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      if (!error)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v12 = @"not CFDictionaryRef";
  }

  else
  {
    v12 = @"nil";
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"result provided by CacheDeleteGetReserveSpace is %@ - ignored", v12];
  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  v10 = 8112;
  v11 = [mEMORY[0x277D643F8] buildError:8112 underlying:0 description:v9];

  v7 = 0;
  if (error)
  {
LABEL_10:
    v14 = v11;
    *error = v11;
  }

LABEL_11:
  if (space)
  {
    v15 = v7;
    *space = v7;
  }

  return v10;
}

+ (void)cacheDeleteDisableReserveSpace
{
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SPACE] Disabling reserve space", v4, 2u);
  }

  CacheDeleteDisableReserveSpace();
}

+ (void)cacheDeleteSetReserveSpace:(id)space systemGrowthMarginSize:(id)size
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"CACHE_DELETE_RESERVE_SPACE_AMOUNT";
  v9[1] = @"CACHE_DELETE_EXPECTED_SYSTEM_GROWTH_AMOUNT";
  v10[0] = space;
  v10[1] = size;
  v5 = MEMORY[0x277CBEAC0];
  sizeCopy = size;
  spaceCopy = space;
  v8 = [v5 dictionaryWithObjects:v10 forKeys:v9 count:2];
  [SUCoreSpace cacheDeleteSetReserveSpaceWithInfo:v8];
}

+ (void)cacheDeleteSetReserveSpaceWithInfo:(id)info
{
  v12 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (_os_feature_enabled_impl())
  {
    v4 = +[SUCoreSpace sharedSpaceManager];
    reserveSpacePaused = [v4 reserveSpacePaused];

    if (reserveSpacePaused)
    {
      mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
      oslog = [mEMORY[0x277D64460] oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136446466;
        v9 = "+[SUCoreSpace cacheDeleteSetReserveSpaceWithInfo:]";
        v10 = 2114;
        v11 = infoCopy;
        _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SPACE] %{public}s: trying to set reserve space while in paused state, %{public}@", &v8, 0x16u);
      }
    }

    else
    {
      [SUCoreSpace _trackSpaceBegin:@"CacheDeleteSetReserveSpace"];
      CacheDeleteSetReserveSpaceWithInfo();
      [SUCoreSpace _trackSpaceEnd:@"CacheDeleteSetReserveSpace" withResult:0 withError:0];
    }
  }
}

+ (void)cacheDeleteResumeReserveSpace
{
  v9 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    v2 = +[SUCoreSpace sharedSpaceManager];
    reserveSpacePaused = [v2 reserveSpacePaused];

    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    v6 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
    if (reserveSpacePaused)
    {
      if (v6)
      {
        v7 = 136315138;
        v8 = "+[SUCoreSpace cacheDeleteResumeReserveSpace]";
        _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SPACE] %s: resuming CacheDelete purgeable monitor", &v7, 0xCu);
      }

      CacheDeleteSetEntitledReservation();
      oslog = +[SUCoreSpace sharedSpaceManager];
      [oslog setReserveSpacePaused:0];
    }

    else if (v6)
    {
      v7 = 136315138;
      v8 = "+[SUCoreSpace cacheDeleteResumeReserveSpace]";
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SPACE] %s: trying to resume reserve space while the monitor is not paused", &v7, 0xCu);
    }
  }
}

+ (void)cacheDeletePauseReserveSpace:(id)space unentitledSpace:(id)unentitledSpace withPurpose:(id)purpose
{
  v37 = *MEMORY[0x277D85DE8];
  spaceCopy = space;
  unentitledSpaceCopy = unentitledSpace;
  purposeCopy = purpose;
  if (_os_feature_enabled_impl())
  {
    v10 = +[SUCoreSpace sharedSpaceManager];
    entitledSpaceDisabled = [v10 entitledSpaceDisabled];

    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"Enabled";
      if (entitledSpaceDisabled)
      {
        v14 = @"Disabled";
      }

      *buf = 136315394;
      v32 = "+[SUCoreSpace cacheDeletePauseReserveSpace:unentitledSpace:withPurpose:]";
      v33 = 2114;
      v34 = v14;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SPACE] %s: APFS entitled space is %{public}@", buf, 0x16u);
    }

    if (spaceCopy)
    {
      v15 = entitledSpaceDisabled;
    }

    else
    {
      v15 = 1;
    }

    if ((v15 & 1) != 0 || ![(__CFString *)spaceCopy unsignedLongLongValue])
    {
      mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
      oslog2 = [mEMORY[0x277D64460]2 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[SPACE] Pause cache delete reserve space monitoring", buf, 2u);
      }

      CacheDeletePauseReserveSpaceMonitoring();
      goto LABEL_32;
    }

    if (!purposeCopy)
    {
      purposeCopy = @"com.apple.SUCore:totalRequired";
    }

    v29 = 0;
    v30 = 0;
    v16 = [SUCoreSpace cacheDeleteGetReserveSpace:&v30 withError:&v29];
    v17 = v30;
    v18 = v29;
    if (v16)
    {
      mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
      oslog3 = [mEMORY[0x277D64460]3 oslog];

      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v18;
        _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[SPACE] Unable to get reserve space info from cache delete, Error: %@", buf, 0xCu);
      }
    }

    else
    {
      oslog3 = [v17 objectForKeyedSubscript:@"CACHE_DELETE_ENTITLED_RESERVATION"];
      if (oslog3)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          unsignedLongLongValue = [oslog3 unsignedLongLongValue];
          if (unsignedLongLongValue && [(__CFString *)spaceCopy unsignedLongLongValue]> unsignedLongLongValue)
          {
            mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
            oslog = [mEMORY[0x277D64460]4 oslog];

            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v32 = oslog3;
              v33 = 2112;
              v34 = spaceCopy;
              _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SPACE] Clearing APFS entitled reserve space because we got a bigger space to reserve, existingEntitledSpace:%@, entitledSpace:%@", buf, 0x16u);
            }

            CacheDeleteSetEntitledReservation();
          }

          goto LABEL_27;
        }
      }
    }

    unsignedLongLongValue = 0;
LABEL_27:

    if ([(__CFString *)spaceCopy unsignedLongLongValue]> unsignedLongLongValue)
    {
      mEMORY[0x277D64460]5 = [MEMORY[0x277D64460] sharedLogger];
      oslog4 = [mEMORY[0x277D64460]5 oslog];

      if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v32 = unsignedLongLongValue;
        v33 = 2112;
        v34 = spaceCopy;
        v35 = 2112;
        v36 = purposeCopy;
        _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "[SPACE] Pause cache delete reserve space monitoring and set entitled reservation, existingEntitledSpace:%llu entitledSpace:%@ with purpose:%@", buf, 0x20u);
      }

      [(__CFString *)purposeCopy UTF8String];
      CacheDeleteSetEntitledAndUnentitledReservation();
    }

LABEL_32:
    v27 = +[SUCoreSpace sharedSpaceManager];
    [v27 setReserveSpacePaused:1];
  }
}

+ (void)checkPurgeableSpaceCacheDelete:(unint64_t)delete fromBasePath:(id)path cacheDeleteUrgency:(int)urgency timeout:(int)timeout additionalOptions:(id)options withCompletionQueue:(id)queue completion:(id)completion
{
  v63[3] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  optionsCopy = options;
  completionCopy = completion;
  queueCopy = queue;
  [SUCoreSpace _trackSpaceBegin:@"CacheDeleteCopyPurgeableSpaceWithInfo"];
  v16 = [MEMORY[0x277D643F8] beginTransactionWithName:@"space.CacheDeletePurgeable"];
  v17 = _os_feature_enabled_impl();
  unsignedLongLongValue = 0;
  deleteCopy = delete;
  if (urgency == 4 && v17)
  {
    v19 = v16;
    v20 = queueCopy;
    v21 = completionCopy;
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SPACE] Checking reserved space in the update volume from CacheDelete", buf, 2u);
    }

    v56 = 0;
    v57 = 0;
    v24 = [SUCoreSpace cacheDeleteGetReserveSpace:&v57 withError:&v56];
    v25 = v57;
    v26 = v56;
    if (v24)
    {
      mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
      oslog2 = [mEMORY[0x277D64460]2 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v59 = v26;
        _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[SPACE] Unable to get reserve space, error: %@", buf, 0xCu);
      }
    }

    else
    {
      oslog2 = [v25 objectForKey:@"CACHE_DELETE_RESERVE_SPACE_FILESYSTEM_AMOUNT"];
      if (oslog2)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          unsignedLongLongValue = [oslog2 unsignedLongLongValue];
LABEL_15:
          completionCopy = v21;

          queueCopy = v20;
          v16 = v19;
          delete = deleteCopy;
          goto LABEL_16;
        }
      }

      mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
      oslog3 = [mEMORY[0x277D64460]3 oslog];

      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[SPACE] Invalid reserved type", buf, 2u);
      }
    }

    unsignedLongLongValue = 0;
    goto LABEL_15;
  }

LABEL_16:
  if (unsignedLongLongValue >= delete)
  {
    mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
    oslog4 = [mEMORY[0x277D64460]4 oslog];

    if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "[SPACE] reserved space is enough, skip checking for purgeable content", buf, 2u);
    }

    deleteCopy = 0;
    v45 = 0;
    v47 = 0;
    v48 = 1;
    goto LABEL_41;
  }

  v52 = completionCopy;
  if (timeout >= 1)
  {
    timeoutCopy = timeout;
  }

  else
  {
    timeoutCopy = 300;
  }

  v63[0] = pathCopy;
  v62[0] = @"CACHE_DELETE_VOLUME";
  v62[1] = @"CACHE_DELETE_URGENCY";
  v32 = [MEMORY[0x277CCABB0] numberWithLongLong:urgency];
  v63[1] = v32;
  v62[2] = @"CACHE_DELETE_PURGE_TIMEOUT";
  v33 = [MEMORY[0x277CCABB0] numberWithInt:timeoutCopy];
  v63[2] = v33;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:3];
  oslog4 = [v34 mutableCopy];

  if (optionsCopy)
  {
    [oslog4 addEntriesFromDictionary:?];
  }

  mEMORY[0x277D64460]5 = [MEMORY[0x277D64460] sharedLogger];
  oslog5 = [mEMORY[0x277D64460]5 oslog];

  if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v59 = oslog4;
    _os_log_impl(&dword_23193C000, oslog5, OS_LOG_TYPE_DEFAULT, "[SPACE] triggering cache delete purgeable check with options: %{public}@", buf, 0xCu);
  }

  v38 = CacheDeleteCopyPurgeableSpaceWithInfo();
  if (!v38)
  {
    deleteCopy = @"no results provided on cache delete purgeable complete";
LABEL_37:
    v45 = 8603;
LABEL_40:
    completionCopy = v52;

    oslog4 = [MEMORY[0x277D643F8] sharedCore];
    v47 = [oslog4 buildError:v45 underlying:0 description:deleteCopy];
    v48 = 0;
    goto LABEL_41;
  }

  v39 = v38;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v39))
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackAnomaly:@"cacheDeletePurgeable" forReason:@"result provided by CacheDeleteCopyPurgeableSpaceWithInfo is not CFDictionary type - ignored" withResult:8112 withError:0];

    CFRelease(v39);
    deleteCopy = @"invalid results type provided on cache delete purgeable complete";
    goto LABEL_37;
  }

  mEMORY[0x277D64460]6 = [MEMORY[0x277D64460] sharedLogger];
  oslog6 = [mEMORY[0x277D64460]6 oslog];

  if (os_log_type_enabled(oslog6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v59 = v39;
    _os_log_impl(&dword_23193C000, oslog6, OS_LOG_TYPE_DEFAULT, "[SPACE] cache delete purgeable results: %@", buf, 0xCu);
  }

  v43 = [v39 objectForKey:@"CACHE_DELETE_AMOUNT"];
  if (!v43 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    deleteCopy = @"no amount of purgeable space provided on cache delete purgeable complete";
    v45 = 8603;
    goto LABEL_39;
  }

  unsignedLongLongValue += [v43 unsignedLongLongValue];
  if (unsignedLongLongValue < deleteCopy)
  {
    deleteCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"purgeable %lld but needed to purge %lld (not enough space)", unsignedLongLongValue, deleteCopy];
    v45 = 8600;
LABEL_39:

    goto LABEL_40;
  }

  mEMORY[0x277D64460]7 = [MEMORY[0x277D64460] sharedLogger];
  oslog7 = [mEMORY[0x277D64460]7 oslog];

  if (os_log_type_enabled(oslog7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v59 = unsignedLongLongValue;
    v60 = 2048;
    v61 = deleteCopy;
    _os_log_impl(&dword_23193C000, oslog7, OS_LOG_TYPE_DEFAULT, "[SPACE] purgeable %lld when needed to purge %lld (have enough space)", buf, 0x16u);
  }

  deleteCopy = 0;
  v45 = 0;
  v47 = 0;
  v48 = 1;
  completionCopy = v52;
LABEL_41:

  [SUCoreSpace _trackSpaceEnd:@"CacheDeleteCopyPurgeableSpaceWithInfo" withResult:v45 withError:v47];
  [SUCoreSpace _issuePurgeableCompletion:completionCopy withCompletionQueue:queueCopy haveEnoughSpace:v48 amountPurgeable:unsignedLongLongValue error:v47 transaction:v16 transactionName:@"space.CacheDeletePurgeable"];
}

+ (void)checkPurgeableSpaceCacheDelete:(unint64_t)delete cacheDeleteUrgency:(int)urgency withCompletionQueue:(id)queue completion:(id)completion
{
  v7 = *&urgency;
  queueCopy = queue;
  completionCopy = completion;
  if ([SUCoreSpace _isUserVolume:@"/var/mobile/"])
  {
    v11 = [MEMORY[0x277D643F8] beginTransactionWithName:@"space.CacheDeletePurgeable"];
    v12 = +[SUCoreSpace sharedSpaceManager];
    spaceQueue = [v12 spaceQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __96__SUCoreSpace_checkPurgeableSpaceCacheDelete_cacheDeleteUrgency_withCompletionQueue_completion___block_invoke;
    v15[3] = &unk_27892E938;
    v18 = completionCopy;
    v16 = queueCopy;
    v17 = v11;
    v14 = v11;
    [SUCoreSpace checkPurgeableSpaceCacheDelete:delete fromBasePath:@"/var/mobile/" cacheDeleteUrgency:v7 timeout:300 additionalOptions:0 withCompletionQueue:spaceQueue completion:v15];
  }

  else
  {
    [SUCoreSpace checkPurgeableSpaceCacheDelete:delete fromBasePath:@"/var/mobile/" cacheDeleteUrgency:v7 withCompletionQueue:queueCopy completion:completionCopy];
  }
}

+ (id)cacheDeleteUrgencyName:(int)name
{
  if ((name + 1) > 5)
  {
    return @"UNKNOWN TYPE";
  }

  else
  {
    return off_27892EAC0[name + 1];
  }
}

+ (unint64_t)getVolumeUsedSpace:(id)space
{
  v11 = *MEMORY[0x277D85DE8];
  spaceCopy = space;
  bzero(&v10, 0x878uLL);
  if (statfs([spaceCopy fileSystemRepresentation], &v10))
  {
    spaceCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"check for available space failed (unable to statfs basePath=%@)", spaceCopy];
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v6 = [mEMORY[0x277D643F8] buildError:8602 underlying:0 description:spaceCopy];

    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackError:@"[SPACE]" forReason:spaceCopy withResult:objc_msgSend(v6 withError:{"code"), v6}];

    v8 = 0;
  }

  else
  {
    v8 = (v10.f_blocks - v10.f_bfree) * v10.f_bsize;
  }

  return v8;
}

+ (void)checkPurgeableSpaceOffloadApps:(unint64_t)apps fromBasePath:(id)path cacheDeleteUrgency:(int64_t)urgency onlyAvailableBySkippingLaunchCheck:(BOOL)check withCompletionQueue:(id)queue completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  completionCopy = completion;
  pathCopy = path;
  [SUCoreSpace _trackSpaceBegin:@"ASDPurgeableAppRequest"];
  v16 = [MEMORY[0x277D643F8] beginTransactionWithName:@"space.AppOffloadPurgeable"];
  v17 = objc_alloc(MEMORY[0x277CEC470]);
  if (pathCopy)
  {
    v18 = pathCopy;
  }

  else
  {
    v18 = @"/var/mobile/";
  }

  v19 = [v17 initWithVolume:v18 urgency:urgency];

  [v19 setSkipLaunchCheck:1];
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = v19;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SPACE] triggering app offload purgeable check with options: %{public}@", buf, 0xCu);
  }

  v22 = [objc_alloc(MEMORY[0x277CEC468]) initWithOptions:v19];
  if (v22)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __144__SUCoreSpace_checkPurgeableSpaceOffloadApps_fromBasePath_cacheDeleteUrgency_onlyAvailableBySkippingLaunchCheck_withCompletionQueue_completion___block_invoke;
    v26[3] = &unk_27892E960;
    checkCopy = check;
    appsCopy = apps;
    v29 = completionCopy;
    v27 = queueCopy;
    v28 = v16;
    [v22 startWithCompletionBlock:v26];

    v23 = v29;
  }

  else
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackAnomaly:@"ASDPurgeableAppRequest" forReason:@"Failed to create ASDPurgeableAppRequest instance" withResult:8100 withError:0];

    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v23 = [mEMORY[0x277D643F8] buildError:8605 underlying:0 description:@"Failed to create ASDPurgeAppsRequest instance"];

    [SUCoreSpace _trackSpaceEnd:@"ASDPurgeAppsRequest" withResult:8605 withError:v23];
    [SUCoreSpace _issuePurgeableCompletion:completionCopy withCompletionQueue:queueCopy haveEnoughSpace:0 amountPurgeable:0 error:v23 transaction:v16 transactionName:@"space.AppOffloadPurgeable"];
  }
}

void __144__SUCoreSpace_checkPurgeableSpaceOffloadApps_fromBasePath_cacheDeleteUrgency_onlyAvailableBySkippingLaunchCheck_withCompletionQueue_completion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v12 = 0;
    v16 = @"ASDPurgeableAppRequest returned null response";
    v17 = 8605;
LABEL_27:
    v22 = [MEMORY[0x277D643F8] sharedCore];
    v24 = [v22 buildError:v17 underlying:v8 description:v16];
    v25 = 0;
    goto LABEL_28;
  }

  if (*(a1 + 64) == 1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = [v7 purgeableApps];
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          if ([v15 purgeableType] == 5 && objc_msgSend(v15, "staticDiskUsage") >= 1)
          {
            v12 += [v15 staticDiskUsage];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [v7 purgeableSize];
  }

  v18 = [MEMORY[0x277D64460] sharedLogger];
  v19 = [v18 oslog];

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 64);
    *buf = 67109376;
    *v31 = v20;
    *&v31[4] = 2048;
    *&v31[6] = v12;
    _os_log_impl(&dword_23193C000, v19, OS_LOG_TYPE_DEFAULT, "[SPACE] app offload purgeable (onlyAvailableBySkippingLaunchCheck:%d) space %lld bytes", buf, 0x12u);
  }

  if (v12 < *(a1 + 56))
  {
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"purgeable %lld is less than requested %lld (not enough space)", v12, *(a1 + 56)];
    v17 = 8600;
    goto LABEL_27;
  }

  if (!a2)
  {
    v16 = @"ASDPurgeableAppRequest returned result=NO";
    v17 = 8606;
    goto LABEL_27;
  }

  v21 = [MEMORY[0x277D64460] sharedLogger];
  v22 = [v21 oslog];

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(a1 + 56);
    *buf = 134218240;
    *v31 = v12;
    *&v31[8] = 2048;
    *&v31[10] = v23;
    _os_log_impl(&dword_23193C000, v22, OS_LOG_TYPE_DEFAULT, "[SPACE] app offload purgeable %lld when needed to purge %lld (have enough space)", buf, 0x16u);
  }

  v16 = 0;
  v17 = 0;
  v24 = 0;
  v25 = 1;
LABEL_28:

  [SUCoreSpace _trackSpaceEnd:@"ASDPurgeableAppRequest" withResult:v17 withError:v24];
  [SUCoreSpace _issuePurgeableCompletion:*(a1 + 48) withCompletionQueue:*(a1 + 32) haveEnoughSpace:v25 amountPurgeable:v12 error:v24 transaction:*(a1 + 40) transactionName:@"space.AppOffloadPurgeable"];
}

+ (void)checkPurgeableSpaceOffloadApps:(unint64_t)apps cacheDeleteUrgency:(int64_t)urgency withCompletionQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  if ([SUCoreSpace _isUserVolume:@"/var/mobile/"])
  {
    v11 = [MEMORY[0x277D643F8] beginTransactionWithName:@"space.AppOffloadPurgeable"];
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v13 = [mEMORY[0x277D643F8] selectCompletionQueue:queueCopy];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __96__SUCoreSpace_checkPurgeableSpaceOffloadApps_cacheDeleteUrgency_withCompletionQueue_completion___block_invoke;
    v15[3] = &unk_27892E938;
    v18 = completionCopy;
    v16 = queueCopy;
    v17 = v11;
    v14 = v11;
    [SUCoreSpace checkPurgeableSpaceOffloadApps:apps fromBasePath:@"/var/mobile/" cacheDeleteUrgency:urgency withCompletionQueue:v13 completion:v15];
  }

  else
  {
    [SUCoreSpace checkPurgeableSpaceOffloadApps:apps cacheDeleteUrgency:urgency withCompletionQueue:queueCopy completion:completionCopy];
  }
}

+ (void)offloadAppsPurge:(unint64_t)purge fromBasePath:(id)path cacheDeleteUrgency:(int64_t)urgency withCompletionQueue:(id)queue completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  completionCopy = completion;
  pathCopy = path;
  [SUCoreSpace _trackSpaceBegin:@"ASDPurgeAppsRequest"];
  v14 = [MEMORY[0x277D643F8] beginTransactionWithName:@"space.AppOffloadPurge"];
  v15 = objc_alloc(MEMORY[0x277CEC460]);
  if (pathCopy)
  {
    v16 = pathCopy;
  }

  else
  {
    v16 = @"/var/mobile/";
  }

  v17 = [v15 initWithVolume:v16 urgency:urgency];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:purge];
  [v17 setDesiredPurgeAmount:v18];

  [v17 setSkipLaunchCheck:1];
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v17;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SPACE] triggering app offload purge with options: %{public}@", buf, 0xCu);
  }

  v21 = [objc_alloc(MEMORY[0x277CEC458]) initWithOptions:v17];
  if (v21)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __95__SUCoreSpace_offloadAppsPurge_fromBasePath_cacheDeleteUrgency_withCompletionQueue_completion___block_invoke;
    v25[3] = &unk_27892E988;
    purgeCopy = purge;
    v28 = completionCopy;
    v26 = queueCopy;
    v27 = v14;
    [v21 startWithCompletionBlock:v25];

    v22 = v28;
  }

  else
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackAnomaly:@"ASDPurgeAppsRequest" forReason:@"Failed to create ASDPurgeAppsRequest instance" withResult:8100 withError:0];

    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v22 = [mEMORY[0x277D643F8] buildError:8607 underlying:0 description:@"Failed to create ASDPurgeAppsRequest instance"];

    [SUCoreSpace _trackSpaceEnd:@"ASDPurgeAppsRequest" withResult:8607 withError:v22];
    [SUCoreSpace _issuePurgeCompletion:completionCopy withCompletionQueue:queueCopy haveEnoughSpace:0 amountPurged:0 error:v22 transaction:v14 transactionName:@"space.AppOffloadPurge"];
  }
}

void __95__SUCoreSpace_offloadAppsPurge_fromBasePath_cacheDeleteUrgency_withCompletionQueue_completion___block_invoke(void *a1, int a2, void *a3, void *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277D64460] sharedLogger];
  v10 = [v9 oslog];

  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (v11)
    {
      *buf = 138412290;
      v46 = @"ASDPurgeAppsRequest returned null response";
      _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "[SPACE] App Offload callback: %@", buf, 0xCu);
    }

    v29 = 0;
    v30 = @"ASDPurgeAppsRequest returned null response";
    v31 = 8607;
    goto LABEL_27;
  }

  if (v11)
  {
    *buf = 134217984;
    v46 = [v7 purgedSize];
    _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "[SPACE] App Offload callback: purged size %lld bytes", buf, 0xCu);
  }

  v37 = a2;
  v38 = a1;
  v39 = v8;

  v12 = [MEMORY[0x277D64460] sharedLogger];
  v13 = [v12 oslog];

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v7 purgedApps];
    v15 = [v14 count];
    *buf = 67109120;
    LODWORD(v46) = v15;
    _os_log_impl(&dword_23193C000, v13, OS_LOG_TYPE_DEFAULT, "[SPACE] App Offload callback: number of purgedApps: %d", buf, 8u);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = v7;
  v16 = [v7 purgedApps];
  v17 = [v16 countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v42;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v42 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v41 + 1) + 8 * i);
        v22 = [v21 bundleID];

        if (v22)
        {
          v23 = [MEMORY[0x277D64460] sharedLogger];
          v24 = [v23 oslog];

          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v21 bundleID];
            v26 = [v21 purgeableReason];
            v27 = [v21 purgeableType];
            v28 = [v21 staticDiskUsage];
            *buf = 138413058;
            v46 = v25;
            v47 = 2112;
            v48 = v26;
            v49 = 1024;
            v50 = v27;
            v51 = 2048;
            v52 = v28;
            _os_log_impl(&dword_23193C000, v24, OS_LOG_TYPE_DEFAULT, "[SPACE] App Offload purged app bundleID: '%@'; reason: '%@'; purgeableType: '%d'; diskUsage: '%lld'", buf, 0x26u);
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v18);
  }

  v7 = v40;
  v29 = [v40 purgedSize];
  a1 = v38;
  if (v29 < v38[7])
  {
    v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"purged %lld but needed to purge %lld (not enough space)", v29, v38[7]];
    v31 = 8600;
    v8 = v39;
LABEL_27:
    v33 = [MEMORY[0x277D643F8] sharedCore];
    v35 = [v33 buildError:v31 underlying:v8 description:v30];
    v36 = 0;
    goto LABEL_28;
  }

  v8 = v39;
  if (!v37)
  {
    v30 = @"ASDPurgeAppsRequest returned result=NO";
    v31 = 8608;
    goto LABEL_27;
  }

  v32 = [MEMORY[0x277D64460] sharedLogger];
  v33 = [v32 oslog];

  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = v38[7];
    *buf = 134218240;
    v46 = v29;
    v47 = 2048;
    v48 = v34;
    _os_log_impl(&dword_23193C000, v33, OS_LOG_TYPE_DEFAULT, "[SPACE] purged %lld when needed to purge %lld (have enough space)", buf, 0x16u);
  }

  v30 = 0;
  v31 = 0;
  v35 = 0;
  v36 = 1;
LABEL_28:

  [SUCoreSpace _trackSpaceEnd:@"ASDPurgeAppsRequest" withResult:v31 withError:v35];
  [SUCoreSpace _issuePurgeCompletion:a1[6] withCompletionQueue:a1[4] haveEnoughSpace:v36 amountPurged:v29 error:v35 transaction:a1[5] transactionName:@"space.AppOffloadPurge"];
}

+ (void)offloadAppsPurge:(unint64_t)purge cacheDeleteUrgency:(int64_t)urgency withCompletionQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  if ([SUCoreSpace _isUserVolume:@"/var/mobile/"])
  {
    v11 = [MEMORY[0x277D643F8] beginTransactionWithName:@"space.AppOffloadPurge"];
    v12 = +[SUCoreSpace sharedSpaceManager];
    spaceQueue = [v12 spaceQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __82__SUCoreSpace_offloadAppsPurge_cacheDeleteUrgency_withCompletionQueue_completion___block_invoke;
    v15[3] = &unk_27892E938;
    v18 = completionCopy;
    v16 = queueCopy;
    v17 = v11;
    v14 = v11;
    [SUCoreSpace offloadAppsPurge:purge fromBasePath:@"/var/mobile/" cacheDeleteUrgency:urgency withCompletionQueue:spaceQueue completion:v15];
  }

  else
  {
    [SUCoreSpace offloadAppsPurge:purge fromBasePath:@"/var/mobile/" cacheDeleteUrgency:urgency withCompletionQueue:queueCopy completion:completionCopy];
  }
}

+ (void)_checkMinimumRequiredSpace:(unint64_t)space purgingFromBase:(id)base userInitiated:(BOOL)initiated totalRequiredFreeSpace:(unint64_t)freeSpace freeSpaceAvailable:(unint64_t)available checkAvailableSpaceTransaction:(id)transaction withCompletionQueue:(id)queue completion:(id)self0
{
  initiatedCopy = initiated;
  v33 = *MEMORY[0x277D85DE8];
  baseCopy = base;
  transactionCopy = transaction;
  queueCopy = queue;
  completionCopy = completion;
  if (space)
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      spaceCopy = space;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SPACE] checking minimal disk space available: need %llu", buf, 0xCu);
    }

    [SUCoreSpace _trackSpaceBegin:@"checkAvailableSpace" withIdentifier:@"minimal"];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __176__SUCoreSpace__checkMinimumRequiredSpace_purgingFromBase_userInitiated_totalRequiredFreeSpace_freeSpaceAvailable_checkAvailableSpaceTransaction_withCompletionQueue_completion___block_invoke;
    v26[3] = &unk_27892E9D8;
    v29 = completionCopy;
    v27 = queueCopy;
    v28 = transactionCopy;
    spaceCopy2 = space;
    [SUCoreSpace checkAvailableFreeSpace:space checkingFromBase:baseCopy withIdentifier:@"minimal" userInitiated:initiatedCopy completion:v26];

    available = v29;
  }

  else
  {
    available = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"not enough total space (no minimal): need %llu and %llu is available", freeSpace, available];
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v23 = [mEMORY[0x277D643F8] buildError:8600 underlying:0 description:available];

    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      spaceCopy = available;
      _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[SPACE] %{public}@", buf, 0xCu);
    }

    [SUCoreSpace _issueSpaceCheckCompletion:completionCopy withCompletionQueue:queueCopy haveEnoughSpace:0 haveTotalRequired:0 freeSpaceAvailable:available error:v23 releasingTransaction:transactionCopy];
  }
}

void __176__SUCoreSpace__checkMinimumRequiredSpace_purgingFromBase_userInitiated_totalRequiredFreeSpace_freeSpaceAvailable_checkAvailableSpaceTransaction_withCompletionQueue_completion___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = +[SUCoreSpace sharedSpaceManager];
  v9 = [v8 spaceQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __176__SUCoreSpace__checkMinimumRequiredSpace_purgingFromBase_userInitiated_totalRequiredFreeSpace_freeSpaceAvailable_checkAvailableSpaceTransaction_withCompletionQueue_completion___block_invoke_2;
  block[3] = &unk_27892E9B0;
  v14 = v7;
  v17 = *(a1 + 48);
  v15 = *(a1 + 32);
  v10 = *(a1 + 40);
  v20 = a2;
  v11 = *(a1 + 56);
  v16 = v10;
  v18 = v11;
  v19 = a3;
  v12 = v7;
  dispatch_async(v9, block);
}

void __176__SUCoreSpace__checkMinimumRequiredSpace_purgingFromBase_userInitiated_totalRequiredFreeSpace_freeSpaceAvailable_checkAvailableSpaceTransaction_withCompletionQueue_completion___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    +[SUCoreSpace _trackSpaceEnd:withIdentifier:withResult:withError:](SUCoreSpace, "_trackSpaceEnd:withIdentifier:withResult:withError:", @"checkAvailableSpace", @"minimal", [v2 code], *(a1 + 32));
    [SUCoreSpace _issueSpaceCheckCompletion:*(a1 + 56) withCompletionQueue:*(a1 + 40) haveEnoughSpace:0 haveTotalRequired:0 freeSpaceAvailable:0 error:*(a1 + 32) releasingTransaction:*(a1 + 48)];
  }

  else if (*(a1 + 80) == 1)
  {
    [SUCoreSpace _trackSpaceEnd:@"checkAvailableSpace" withIdentifier:@"minimal" withResult:0 withError:0];
    v3 = [MEMORY[0x277D64460] sharedLogger];
    v4 = [v3 oslog];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 64);
      v6 = *(a1 + 72);
      *buf = 134218240;
      v13 = v5;
      v14 = 2048;
      v15 = v6;
      _os_log_impl(&dword_23193C000, v4, OS_LOG_TYPE_DEFAULT, "[SPACE] minimal disk space available: need %llu and %llu is available (have enough space)", buf, 0x16u);
    }

    [SUCoreSpace _issueSpaceCheckCompletion:*(a1 + 56) withCompletionQueue:*(a1 + 40) haveEnoughSpace:1 haveTotalRequired:0 freeSpaceAvailable:*(a1 + 72) error:0 releasingTransaction:*(a1 + 48)];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"not enough minimal space to install update: need %llu and %llu is available", *(a1 + 64), *(a1 + 72)];
    v8 = [MEMORY[0x277D64460] sharedLogger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "[SPACE] %{public}@", buf, 0xCu);
    }

    v10 = [MEMORY[0x277D643F8] sharedCore];
    v11 = [v10 buildError:8600 underlying:0 description:v7];

    +[SUCoreSpace _trackSpaceEnd:withIdentifier:withResult:withError:](SUCoreSpace, "_trackSpaceEnd:withIdentifier:withResult:withError:", @"checkAvailableSpace", @"minimal", [v11 code], v11);
    [SUCoreSpace _issueSpaceCheckCompletion:*(a1 + 56) withCompletionQueue:*(a1 + 40) haveEnoughSpace:0 haveTotalRequired:0 freeSpaceAvailable:*(a1 + 72) error:v11 releasingTransaction:*(a1 + 48)];
  }
}

+ (void)_spaceCheckPhaseError:(id)error checkingFromBase:(id)base withIdentier:(id)identier completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  v11 = MEMORY[0x277D64428];
  identierCopy = identier;
  baseCopy = base;
  sharedDiag = [v11 sharedDiag];
  identierCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"space check from base(%@) phase(%@) failed", baseCopy, identierCopy];

  [sharedDiag trackError:@"[SPACE]" forReason:identierCopy withResult:objc_msgSend(errorCopy withError:{"code"), errorCopy}];
  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  completionQueue = [mEMORY[0x277D643F8] completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__SUCoreSpace__spaceCheckPhaseError_checkingFromBase_withIdentier_completion___block_invoke;
  block[3] = &unk_27892CA88;
  v21 = errorCopy;
  v22 = completionCopy;
  v18 = errorCopy;
  v19 = completionCopy;
  dispatch_async(completionQueue, block);
}

+ (BOOL)_isUserVolume:(id)volume
{
  v10 = *MEMORY[0x277D85DE8];
  bzero(v8, 0x40CuLL);
  v7[2] = 0;
  v7[0] = 5;
  v7[1] = 2147491840;
  result = 0;
  if (getattrlist([volume fileSystemRepresentation], v7, v8, 0x40CuLL, 0) != -1)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithCString:v9 + v9[0] encoding:4];
    v5 = [v4 isEqualToString:@"User"];

    if (v5)
    {
      return 1;
    }
  }

  return result;
}

+ (void)mobileAssetEstimateEvictable:(unint64_t)evictable completionQueue:(id)queue completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  completionCopy = completion;
  if (completionCopy)
  {
    [SUCoreSpace _trackSpaceBegin:@"MobileAssetEstimateEvictable"];
    v9 = [MEMORY[0x277D643F8] beginTransactionWithName:@"space.MobileAssetEstimateEvictable"];
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "+[SUCoreSpace mobileAssetEstimateEvictable:completionQueue:completion:]";
      v22 = 2048;
      evictableCopy = evictable;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SPACE] %s: requesting MA to estimate evictable bytes: bytesNeeded = %llu", buf, 0x16u);
    }

    v12 = MEMORY[0x277D289E0];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __71__SUCoreSpace_mobileAssetEstimateEvictable_completionQueue_completion___block_invoke;
    v15[3] = &unk_27892E9D8;
    evictableCopy2 = evictable;
    v18 = completionCopy;
    v16 = queueCopy;
    v17 = v9;
    oslog2 = v9;
    [v12 estimateEvictableBytesForSoftwareUpdateWithCompletion:v15];
  }

  else
  {
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
    {
      [SUCoreSpace mobileAssetEstimateEvictable:oslog2 completionQueue:? completion:?];
    }
  }
}

void __71__SUCoreSpace_mobileAssetEstimateEvictable_completionQueue_completion___block_invoke(void *a1, int a2, unint64_t a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [MEMORY[0x277D64460] sharedLogger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v15 = "+[SUCoreSpace mobileAssetEstimateEvictable:completionQueue:completion:]_block_invoke";
    v16 = 1024;
    v17 = a2;
    v18 = 2048;
    v19 = a3;
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "[SPACE] %s: MA estimated evictable bytes: success = %d, evictableBytes = %llu, error = %{public}@", buf, 0x26u);
  }

  if (v7 || !a2)
  {
    v10 = [MEMORY[0x277D643F8] sharedCore];
    v12 = [v10 buildError:8609 underlying:v7 description:@"Failed to estimate evictable bytes"];
    a3 = 0;
  }

  else
  {
    if (a1[7] <= a3)
    {
      v12 = 0;
      v13 = 1;
      goto LABEL_10;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"neededBytes=%llu evictableBytes=%llu", a1[7], a3];;
    v11 = [MEMORY[0x277D643F8] sharedCore];
    v12 = [v11 buildError:8600 underlying:0 description:v10];
  }

  v13 = 0;
LABEL_10:
  +[SUCoreSpace _trackSpaceEnd:withResult:withError:](SUCoreSpace, "_trackSpaceEnd:withResult:withError:", @"MobileAssetEstimateEvictable", [v12 code], v12);
  [SUCoreSpace _issuePurgeableCompletion:a1[6] withCompletionQueue:a1[4] haveEnoughSpace:v13 amountPurgeable:a3 error:v12 transaction:a1[5] transactionName:@"space.MobileAssetEstimateEvictable"];
}

+ (void)mobileAssetSuspend:(unint64_t)suspend completionQueue:(id)queue completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  completionCopy = completion;
  [SUCoreSpace _trackSpaceBegin:@"MobileAssetSuspend"];
  v9 = [MEMORY[0x277D643F8] beginTransactionWithName:@"space.MobileAssetSuspend"];
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "+[SUCoreSpace mobileAssetSuspend:completionQueue:completion:]";
    v23 = 2048;
    suspendCopy = suspend;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SPACE] %s: requesting MA to suspend: bytesNeeded = %llu", buf, 0x16u);
  }

  v12 = MEMORY[0x277D289E0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__SUCoreSpace_mobileAssetSuspend_completionQueue_completion___block_invoke;
  v16[3] = &unk_27892EA00;
  v19 = completionCopy;
  suspendCopy2 = suspend;
  v17 = queueCopy;
  v18 = v9;
  v13 = v9;
  v14 = queueCopy;
  v15 = completionCopy;
  [v12 suspendForSoftwareUpdateWithNeededBytes:suspend completion:v16];
}

void __61__SUCoreSpace_mobileAssetSuspend_completionQueue_completion___block_invoke(void *a1, int a2, void *a3)
{
  LODWORD(v3) = a2;
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D64460] sharedLogger];
  v7 = [v6 oslog];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "+[SUCoreSpace mobileAssetSuspend:completionQueue:completion:]_block_invoke";
    v13 = 1024;
    v14 = v3;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_23193C000, v7, OS_LOG_TYPE_DEFAULT, "[SPACE] %s: MA suspended: success = %d, error = %{public}@", buf, 0x1Cu);
  }

  if (v5)
  {
    v3 = 0;
  }

  else
  {
    v3 = v3;
  }

  if (v3 == 1)
  {
    v8 = 0;
    v9 = a1[7];
  }

  else
  {
    v10 = [MEMORY[0x277D643F8] sharedCore];
    v8 = [v10 buildError:8610 underlying:v5 description:0];

    v9 = 0;
  }

  +[SUCoreSpace _trackSpaceEnd:withResult:withError:](SUCoreSpace, "_trackSpaceEnd:withResult:withError:", @"MobileAssetSuspend", [v8 code], v8);
  [SUCoreSpace _issuePurgeCompletion:a1[6] withCompletionQueue:a1[4] haveEnoughSpace:v3 amountPurged:v9 error:v8 transaction:a1[5] transactionName:@"space.MobileAssetSuspend"];
}

+ (void)mobileAssetResumeWithCompletionQueue:(id)queue completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  completionCopy = completion;
  [SUCoreSpace _trackSpaceBegin:@"MobileAssetResume"];
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "+[SUCoreSpace mobileAssetResumeWithCompletionQueue:completion:]";
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SPACE] %s: requesting MA to resume", buf, 0xCu);
  }

  v9 = MEMORY[0x277D289E0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__SUCoreSpace_mobileAssetResumeWithCompletionQueue_completion___block_invoke;
  v12[3] = &unk_27892EA50;
  v13 = queueCopy;
  v14 = completionCopy;
  v10 = queueCopy;
  v11 = completionCopy;
  [v9 resumeFromSoftwareUpdateWithCompletion:v12];
}

void __63__SUCoreSpace_mobileAssetResumeWithCompletionQueue_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D64460] sharedLogger];
  v7 = [v6 oslog];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v18 = "+[SUCoreSpace mobileAssetResumeWithCompletionQueue:completion:]_block_invoke";
    v19 = 1024;
    v20 = a2;
    v21 = 2114;
    v22 = v5;
    _os_log_impl(&dword_23193C000, v7, OS_LOG_TYPE_DEFAULT, "[SPACE] %s: MA resumed: success = %d, error = %{public}@", buf, 0x1Cu);
  }

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277D643F8] sharedCore];
    v9 = [v10 buildError:8611 underlying:v5 description:0];
  }

  +[SUCoreSpace _trackSpaceEnd:withResult:withError:](SUCoreSpace, "_trackSpaceEnd:withResult:withError:", @"MobileAssetResume", [v9 code], v9);
  if (*(a1 + 40))
  {
    v11 = [MEMORY[0x277D643F8] sharedCore];
    v12 = [v11 selectCompletionQueue:*(a1 + 32)];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__SUCoreSpace_mobileAssetResumeWithCompletionQueue_completion___block_invoke_572;
    block[3] = &unk_27892EA28;
    v15 = *(a1 + 40);
    v16 = v8;
    v14 = v9;
    dispatch_async(v12, block);
  }
}

+ (void)_issueSpaceCheckCompletion:(id)completion withCompletionQueue:(id)queue haveEnoughSpace:(BOOL)space haveTotalRequired:(BOOL)required freeSpaceAvailable:(unint64_t)available error:(id)error releasingTransaction:(id)transaction
{
  completionCopy = completion;
  queueCopy = queue;
  errorCopy = error;
  transactionCopy = transaction;
  v18 = transactionCopy;
  if (completionCopy)
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v20 = [mEMORY[0x277D643F8] selectCompletionQueue:queueCopy];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __142__SUCoreSpace__issueSpaceCheckCompletion_withCompletionQueue_haveEnoughSpace_haveTotalRequired_freeSpaceAvailable_error_releasingTransaction___block_invoke;
    block[3] = &unk_27892EA78;
    spaceCopy = space;
    requiredCopy = required;
    v24 = completionCopy;
    availableCopy = available;
    v22 = errorCopy;
    v23 = v18;
    dispatch_async(v20, block);
  }

  else if (transactionCopy)
  {
    [MEMORY[0x277D643F8] endTransaction:transactionCopy withName:@"space.CheckAvailableSpace"];
  }
}

void *__142__SUCoreSpace__issueSpaceCheckCompletion_withCompletionQueue_haveEnoughSpace_haveTotalRequired_freeSpaceAvailable_error_releasingTransaction___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 48) + 16))();
  if (*(a1 + 40))
  {
    v3 = MEMORY[0x277D643F8];

    return [v3 endTransaction:? withName:?];
  }

  return result;
}

+ (void)_issuePurgeableCompletion:(id)completion withCompletionQueue:(id)queue haveEnoughSpace:(BOOL)space amountPurgeable:(unint64_t)purgeable error:(id)error transaction:(id)transaction transactionName:(id)name
{
  completionCopy = completion;
  queueCopy = queue;
  errorCopy = error;
  transactionCopy = transaction;
  nameCopy = name;
  if (completionCopy)
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v20 = [mEMORY[0x277D643F8] selectCompletionQueue:queueCopy];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __127__SUCoreSpace__issuePurgeableCompletion_withCompletionQueue_haveEnoughSpace_amountPurgeable_error_transaction_transactionName___block_invoke;
    v21[3] = &unk_27892EAA0;
    spaceCopy = space;
    v25 = completionCopy;
    purgeableCopy = purgeable;
    v22 = errorCopy;
    v23 = transactionCopy;
    v24 = nameCopy;
    dispatch_async(v20, v21);
  }

  else if (transactionCopy)
  {
    [MEMORY[0x277D643F8] endTransaction:transactionCopy withName:nameCopy];
  }
}

void *__127__SUCoreSpace__issuePurgeableCompletion_withCompletionQueue_haveEnoughSpace_amountPurgeable_error_transaction_transactionName___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 56) + 16))();
  if (*(a1 + 40))
  {
    v3 = MEMORY[0x277D643F8];

    return [v3 endTransaction:? withName:?];
  }

  return result;
}

+ (void)_issuePurgeCompletion:(id)completion withCompletionQueue:(id)queue haveEnoughSpace:(BOOL)space amountPurged:(unint64_t)purged error:(id)error transaction:(id)transaction transactionName:(id)name
{
  completionCopy = completion;
  queueCopy = queue;
  errorCopy = error;
  transactionCopy = transaction;
  nameCopy = name;
  if (completionCopy)
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v20 = [mEMORY[0x277D643F8] selectCompletionQueue:queueCopy];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __120__SUCoreSpace__issuePurgeCompletion_withCompletionQueue_haveEnoughSpace_amountPurged_error_transaction_transactionName___block_invoke;
    v21[3] = &unk_27892EAA0;
    spaceCopy = space;
    v25 = completionCopy;
    purgedCopy = purged;
    v22 = errorCopy;
    v23 = transactionCopy;
    v24 = nameCopy;
    dispatch_async(v20, v21);
  }

  else if (transactionCopy)
  {
    [MEMORY[0x277D643F8] endTransaction:transactionCopy withName:nameCopy];
  }
}

void *__120__SUCoreSpace__issuePurgeCompletion_withCompletionQueue_haveEnoughSpace_amountPurged_error_transaction_transactionName___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 56) + 16))();
  if (*(a1 + 40))
  {
    v3 = MEMORY[0x277D643F8];

    return [v3 endTransaction:? withName:?];
  }

  return result;
}

+ (void)_trackSpaceBegin:(id)begin withIdentifier:(id)identifier
{
  v5 = MEMORY[0x277D64428];
  identifierCopy = identifier;
  beginCopy = begin;
  sharedDiag = [v5 sharedDiag];
  [sharedDiag trackBegin:beginCopy atLevel:1 forModule:@"space" withIdentifier:identifierCopy];
}

+ (void)_trackSpaceEnd:(id)end withIdentifier:(id)identifier withResult:(int64_t)result withError:(id)error
{
  v9 = MEMORY[0x277D64428];
  errorCopy = error;
  identifierCopy = identifier;
  endCopy = end;
  sharedDiag = [v9 sharedDiag];
  [sharedDiag trackEnd:endCopy atLevel:1 forModule:@"space" withIdentifier:identifierCopy withResult:result withError:errorCopy];
}

+ (void)mobileAssetEstimateEvictable:(os_log_t)log completionQueue:completion:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "+[SUCoreSpace mobileAssetEstimateEvictable:completionQueue:completion:]";
  _os_log_error_impl(&dword_23193C000, log, OS_LOG_TYPE_ERROR, "[SPACE] %s called with no completion", &v1, 0xCu);
}

@end