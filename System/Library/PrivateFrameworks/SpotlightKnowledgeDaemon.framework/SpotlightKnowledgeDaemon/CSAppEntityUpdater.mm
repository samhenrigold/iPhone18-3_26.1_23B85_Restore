@interface CSAppEntityUpdater
+ (id)sharedInstance;
- (BOOL)_handleJournalUpdateWithDonation:(id)donation orDeletion:(id)deletion cancelBlock:(id)block completion:(id)completion;
- (BOOL)handleDeletion:(id)deletion turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block;
- (BOOL)handleDonation:(id)donation turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block;
- (BOOL)shouldHandleJournalItem:(id)item bundleID:(id)d;
- (CSAppEntityUpdater)init;
- (CSAppEntityUpdater)initWithQueue:(id)queue directory:(id)directory;
- (id)_allBundlesApplicableToCascade;
- (id)_allExistentSetsNotContainedInSpotlightBundles:(id)bundles;
- (id)_countAppEntitiesFromBundle:(id)bundle;
- (id)_disabledTypeIdentifiersClause:(id)clause;
- (id)description;
- (int64_t)_handleFullCascadeDonation:(id)donation withReason:(unsigned __int8)reason ledger:(id)ledger error:(id *)error;
- (int64_t)_handleIncrementalCascadeDonation:(id)donation withReason:(unsigned __int8)reason ledger:(id)ledger donation:(id)a6 deletion:(id)deletion error:(id *)error;
- (void)_allBundlesApplicableToCascade;
- (void)_donateJournalUpdateWithRecursiveRetry:(unint64_t)retry donation:(id)donation deletion:(id)deletion ledger:(id)ledger cancelBlock:(id)block completion:(id)completion;
- (void)_donateToCascadeWithReason:(unsigned __int8)reason ledger:(id)ledger donation:(id)donation deletion:(id)deletion completion:(id)completion;
- (void)_recursivelyCleanupDeletedSets:(id)sets withIndex:(unint64_t)index cancelBlock:(id)block completion:(id)completion;
- (void)_recursivelyDonateNowForAllBundles:(id)bundles withIndex:(unint64_t)index cancelBlock:(id)block completion:(id)completion;
- (void)_recursivelyVerifyAllBundles:(id)bundles withIndex:(unint64_t)index cancelBlock:(id)block completion:(id)completion;
- (void)handleDonateNowNotification:(id)notification completionHandler:(id)handler;
- (void)runNightlyVerification:(id)verification completionHandler:(id)handler;
@end

@implementation CSAppEntityUpdater

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CSAppEntityUpdater sharedInstance];
  }

  v3 = sharedInstance_appEntityUpdater;

  return v3;
}

void __36__CSAppEntityUpdater_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSAppEntityUpdater);
  v1 = sharedInstance_appEntityUpdater;
  sharedInstance_appEntityUpdater = v0;
}

- (CSAppEntityUpdater)init
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("CSAppEntityUpdater", v3);

  v5 = MEMORY[0x277CBEBC0];
  v6 = cascadePath();
  v7 = [v5 fileURLWithPath:v6 isDirectory:1];

  v8 = [(CSAppEntityUpdater *)self initWithQueue:v4 directory:v7];
  return v8;
}

- (CSAppEntityUpdater)initWithQueue:(id)queue directory:(id)directory
{
  queueCopy = queue;
  directoryCopy = directory;
  v14.receiver = self;
  v14.super_class = CSAppEntityUpdater;
  v9 = [(CSAppEntityUpdater *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    v11 = objc_opt_new();
    translator = v10->_translator;
    v10->_translator = v11;

    objc_storeStrong(&v10->_ledgerDirectory, directory);
  }

  return v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  taskName = [(CSAppEntityUpdater *)self taskName];
  v6 = [v3 initWithFormat:@"<%@:%p; %@>", v4, self, taskName];

  return v6;
}

- (BOOL)shouldHandleJournalItem:(id)item bundleID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (([(CSEventDonationJournalItem *)itemCopy flags]& 0x20) == 0)
  {
    goto LABEL_19;
  }

  if (([(CSEventDonationJournalItem *)itemCopy flags]& 1) != 0)
  {
    goto LABEL_19;
  }

  [(CSEventDonationJournalItem *)itemCopy attrDictObj];
  if (_MDPlistGetPlistObjectType() != 241)
  {
    goto LABEL_19;
  }

  v11 = 0uLL;
  v12 = 0;
  [(CSEventDonationJournalItem *)itemCopy attrDictObj];
  if (!_MDPlistDictionaryGetPlistObjectForKey() || (*buf = v11, v14 = v12, _MDPlistGetPlistObjectType() != 244) && (*buf = v11, v14 = v12, _MDPlistGetPlistObjectType() != 245))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v6 = SKGLogInit();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_opt_class();
        *buf = 138412290;
        *&buf[4] = v7;
        v8 = "### %@ missing _kMDItemAppEntityInstanceIdentifier";
LABEL_17:
        _os_log_impl(&dword_231B25000, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
      }

LABEL_18:
    }

LABEL_19:
    v5 = 0;
    goto LABEL_20;
  }

  [(CSEventDonationJournalItem *)itemCopy attrDictObj];
  if (!_MDPlistDictionaryGetPlistObjectForKey() || (*buf = v11, v14 = v12, _MDPlistGetPlistObjectType() != 244) && (*buf = v11, v14 = v12, _MDPlistGetPlistObjectType() != 245))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v6 = SKGLogInit();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        *buf = 138412290;
        *&buf[4] = v9;
        v8 = "### %@ missing _kMDItemAppEntityTypeIdentifier";
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v5 = 1;
LABEL_20:

  return v5;
}

- (void)_donateToCascadeWithReason:(unsigned __int8)reason ledger:(id)ledger donation:(id)donation deletion:(id)deletion completion:(id)completion
{
  reasonCopy = reason;
  v50 = *MEMORY[0x277D85DE8];
  ledgerCopy = ledger;
  donationCopy = donation;
  deletionCopy = deletion;
  completionCopy = completion;
  v15 = MEMORY[0x277CF9500];
  bundleIdentifier = [ledgerCopy bundleIdentifier];
  v42 = 0;
  v17 = [v15 sourceIdentifierWithValue:bundleIdentifier error:&v42];
  v18 = v42;

  if (v17)
  {
    version = [ledgerCopy version];
    if (reasonCopy == 2)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v20 = SKGLogInit();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v32 = objc_opt_class();
          bundleIdentifier2 = [ledgerCopy bundleIdentifier];
          v22 = _donationReasonDescription(2);
          *buf = 138412802;
          v45 = v32;
          v46 = 2112;
          v47 = bundleIdentifier2;
          v48 = 2112;
          v49 = v22;
          _os_log_impl(&dword_231B25000, v20, OS_LOG_TYPE_DEFAULT, "### %@ Resetting version to force full Cascade donation for bundle: %@ with reason: %@", buf, 0x20u);
        }
      }

      v23 = 0;
    }

    else
    {
      v23 = version;
    }

    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v26 = SKGLogInit();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        *buf = 138412802;
        v45 = v27;
        v46 = 2112;
        v47 = v17;
        v48 = 2048;
        v49 = v23;
        _os_log_impl(&dword_231B25000, v26, OS_LOG_TYPE_DEFAULT, "%@ ### Requesting Cascade donation (%@, version: %llu)", buf, 0x20u);
      }
    }

    v28 = MEMORY[0x277CF9508];
    v43 = v17;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __85__CSAppEntityUpdater__donateToCascadeWithReason_ledger_donation_deletion_completion___block_invoke;
    v34[3] = &unk_27893C668;
    v34[4] = self;
    v41 = reasonCopy;
    v35 = ledgerCopy;
    v25 = donationCopy;
    v36 = donationCopy;
    v37 = deletionCopy;
    v38 = v17;
    v40 = v23;
    v39 = completionCopy;
    [v28 incrementalSetDonationWithItemType:47341 descriptors:v29 version:v23 validity:@"Spotlight" completion:v34];
  }

  else
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v24 = SKGLogInit();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v30 = objc_opt_class();
        bundleIdentifier3 = [ledgerCopy bundleIdentifier];
        *buf = 138412802;
        v45 = v30;
        v46 = 2112;
        v47 = bundleIdentifier3;
        v48 = 2112;
        v49 = v18;
        _os_log_error_impl(&dword_231B25000, v24, OS_LOG_TYPE_ERROR, "### %@ Failed to build descriptor from bundle: %@ with error %@", buf, 0x20u);
      }
    }

    (*(completionCopy + 2))(completionCopy, 7, v18);
    v25 = donationCopy;
  }
}

void __85__CSAppEntityUpdater__donateToCascadeWithReason_ledger_donation_deletion_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = *(a1 + 88);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v31 = 0;
    v13 = &v31;
    v14 = [v9 _handleIncrementalCascadeDonation:v5 withReason:v8 ledger:v10 donation:v11 deletion:v12 error:&v31];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = v6;
      isKindOfClass = 1;
      v18 = 6;
      goto LABEL_11;
    }

    v15 = *(a1 + 88);
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v30 = 0;
    v13 = &v30;
    v14 = [v16 _handleFullCascadeDonation:v5 withReason:v15 ledger:v17 error:&v30];
  }

  v18 = v14;
  v19 = *v13;
  v20 = v19;
  if (v18)
  {
LABEL_11:
    [v5 cancel];
    goto LABEL_12;
  }

  v29 = v19;
  v21 = [v5 finish:&v29];
  v22 = v29;

  if (v21)
  {
    v18 = 0;
  }

  else
  {
    v18 = 11;
  }

  v20 = v22;
LABEL_12:
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v23 = SKGLogInit();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v6;
      v24 = objc_opt_class();
      v25 = *(a1 + 64);
      v26 = *(a1 + 80);
      if (v18)
      {
        v27 = _errorDescription(v18, v20);
      }

      else
      {
        v27 = @"Completed";
      }

      *buf = 138413058;
      v33 = v24;
      v34 = 2112;
      v35 = v25;
      v36 = 2048;
      v37 = v26;
      v38 = 2112;
      v39 = v27;
      _os_log_impl(&dword_231B25000, v23, OS_LOG_TYPE_DEFAULT, "### %@ Cascade donation (%@, version: %llu) %@", buf, 0x2Au);
      if (v18)
      {
      }

      v6 = v28;
    }
  }

  if (!(isKindOfClass & 1 | (v18 != 0)))
  {
    [*(a1 + 40) completeFullSetDonationWithVersion:*(a1 + 80)];
  }

  (*(*(a1 + 72) + 16))();
}

- (int64_t)_handleIncrementalCascadeDonation:(id)donation withReason:(unsigned __int8)reason ledger:(id)ledger donation:(id)a6 deletion:(id)deletion error:(id *)error
{
  reasonCopy = reason;
  v53 = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  ledgerCopy = ledger;
  v14 = a6;
  deletionCopy = deletion;
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v16 = SKGLogInit();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      if (reasonCopy == 1)
      {
        v18 = @"Performing";
      }

      else
      {
        v18 = @"Skipping";
      }

      v19 = _donationReasonDescription(reasonCopy);
      bundleIdentifier = [ledgerCopy bundleIdentifier];
      *buf = 138413058;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = v18;
      *&buf[22] = 2112;
      v51 = v19;
      LOWORD(v52) = 2112;
      *(&v52 + 2) = bundleIdentifier;
      _os_log_impl(&dword_231B25000, v16, OS_LOG_TYPE_DEFAULT, "### %@ %@ incremental Cascade donation with reason: %@ for bundle: %@", buf, 0x2Au);
    }
  }

  if (reasonCopy == 1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v51 = __Block_byref_object_copy_;
    *&v52 = __Block_byref_object_dispose_;
    *(&v52 + 1) = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    if (v14)
    {
      v45[0] = 0;
      v45[1] = v45;
      v45[2] = 0x2020000000;
      v45[3] = 0;
      v21 = [SKGUpdaterStore instanceForIndexType:[(CSEventListenerManager *)v14 folderFd]];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __98__CSAppEntityUpdater__handleIncrementalCascadeDonation_withReason_ledger_donation_deletion_error___block_invoke;
      v37[3] = &unk_27893C690;
      v37[4] = self;
      v38 = ledgerCopy;
      v22 = v21;
      v39 = v22;
      v40 = v14;
      v42 = v45;
      v41 = donationCopy;
      v43 = &v46;
      v44 = buf;
      [v40 iterateItems:v37];

      _Block_object_dispose(v45, 8);
    }

    else
    {
      v24 = [SKGUpdaterStore instanceForIndexType:[(CSEventListenerManager *)deletionCopy folderFd]];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __98__CSAppEntityUpdater__handleIncrementalCascadeDonation_withReason_ledger_donation_deletion_error___block_invoke_170;
      v29[3] = &unk_27893C6B8;
      v25 = v24;
      v30 = v25;
      v31 = deletionCopy;
      selfCopy = self;
      v33 = ledgerCopy;
      v34 = donationCopy;
      v35 = &v46;
      v36 = buf;
      [v31 iterateIdentifiers:v29];
    }

    v23 = v47[3];
    if (error && v23)
    {
      *error = *(*&buf[8] + 40);
      v23 = v47[3];
    }

    _Block_object_dispose(&v46, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v23 = 5;
  }

  return v23;
}

uint64_t __98__CSAppEntityUpdater__handleIncrementalCascadeDonation_withReason_ledger_donation_deletion_error___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) bundleIdentifier];
  LODWORD(v5) = [v5 shouldHandleJournalItem:v3 bundleID:v6];

  if (v5)
  {
    [(CSEventDonationJournalItem *)v3 identifier];
    v7 = MDJournalReaderMDPlistObjectCopy();
    v8 = [v7 mutableCopy];

    v9 = *(a1 + 48);
    v10 = [(CSEventListenerManager *)*(a1 + 56) journalMap];
    v11 = [v9 readSerialNumberFromBundleID:v10 identifier:objc_msgSend(v8 UUID:"UTF8String") listenerType:{-[CSEventListenerManager journalQueue](*(a1 + 56)), objc_msgSend(*(a1 + 32), "eventType")}];
    if ([(CSEventListenerManager *)*(a1 + 56) totalJournalSize]>= v11)
    {
      [(CSEventDonationJournalItem *)v3 attrDictObj];
      v12 = _MDPlistContainerCopyObject();
      v17 = [objc_alloc(MEMORY[0x277CC34B8]) initWithAttributes:v12];
      v18 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v8 domainIdentifier:0 attributeSet:v17];
      v19 = *(*(a1 + 32) + 16);
      v20 = [*(a1 + 40) bundleIdentifier];
      v38 = 0;
      v21 = [v19 translateItem:v18 fromBundleId:v20 error:&v38];
      v36 = v38;

      if (v21)
      {
        v34 = v17;
        v22 = *(a1 + 64);
        v37 = 0;
        v23 = [v22 addOrUpdateItem:v21 error:&v37];
        v24 = v37;
        v25 = v37;
        if ((v23 & 1) == 0)
        {
          if (SKGLogGetCurrentLoggingLevel() >= 4)
          {
            log = SKGLogInit();
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
            {
              v30 = objc_opt_class();
              v31 = [v18 uniqueIdentifier];
              *buf = 138412802;
              v40 = v30;
              v41 = 2112;
              v42 = v31;
              v43 = 2112;
              v44 = v25;
              _os_log_impl(&dword_231B25000, log, OS_LOG_TYPE_DEFAULT, "### %@ Failed to add or update item with uniqueID: %@ with error: %@", buf, 0x20u);
            }
          }

          *(*(*(a1 + 80) + 8) + 24) = 8;
          objc_storeStrong((*(*(a1 + 88) + 8) + 40), v24);
        }

        v16 = v23 ^ 1u;

        v17 = v34;
      }

      else
      {
        if (!*(*(*(a1 + 72) + 8) + 24) && SKGLogGetCurrentLoggingLevel() >= 4)
        {
          v26 = SKGLogInit();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            loga = objc_opt_class();
            v27 = [v18 uniqueIdentifier];
            [*(a1 + 40) bundleIdentifier];
            v28 = v35 = v17;
            *buf = 138413058;
            v40 = loga;
            v41 = 2112;
            v42 = v27;
            v43 = 2112;
            v44 = v28;
            v45 = 2112;
            v46 = v36;
            _os_log_impl(&dword_231B25000, v26, OS_LOG_TYPE_DEFAULT, "### %@ Encountered translation error for item %@ from bundle %@ error %@", buf, 0x2Au);

            v17 = v35;
          }
        }

        v16 = 0;
        ++*(*(*(a1 + 72) + 8) + 24);
      }
    }

    else
    {
      if (SKGLogGetCurrentLoggingLevel() < 4)
      {
        v16 = 0;
LABEL_25:

        goto LABEL_26;
      }

      v12 = SKGLogInit();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = [(CSEventListenerManager *)*(a1 + 56) totalJournalSize];
        v15 = [*(a1 + 40) bundleIdentifier];
        *buf = 138413314;
        v40 = v13;
        v41 = 2112;
        v42 = v8;
        v43 = 2048;
        v44 = v14;
        v45 = 2048;
        v46 = v11;
        v47 = 2112;
        v48 = v15;
        _os_log_impl(&dword_231B25000, v12, OS_LOG_TYPE_DEFAULT, "%@ SKIPPING add for item uniqueID: %@ with serialNumber:%llu < latestSerialNumber:%llu from bundle: %@", buf, 0x34u);
      }

      v16 = 0;
    }

    goto LABEL_25;
  }

  v16 = 0;
LABEL_26:
  objc_autoreleasePoolPop(v4);

  return v16;
}

void __98__CSAppEntityUpdater__handleIncrementalCascadeDonation_withReason_ledger_donation_deletion_error___block_invoke_170(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (!*(a1 + 32) || !-[CSEventListenerManager totalJournalSize](*(a1 + 40)) || (v5 = *(a1 + 32), v6 = -[CSEventListenerManager journalMap](*(a1 + 40)), v7 = [v5 readSerialNumberFromBundleID:v6 identifier:objc_msgSend(v3 UUID:"UTF8String") listenerType:{-[CSEventListenerManager journalQueue](*(a1 + 40)), objc_msgSend(*(a1 + 48), "eventType")}], -[CSEventListenerManager totalJournalSize](*(a1 + 40)) >= v7))
  {
    v12 = *(a1 + 64);
    v17 = 0;
    v13 = [v12 removeItemWithSourceItemIdentifier:v3 error:&v17];
    v14 = v17;
    v8 = v17;
    if ((v13 & 1) == 0)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v15 = SKGLogInit();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = objc_opt_class();
          *buf = 138412802;
          v19 = v16;
          v20 = 2112;
          v21 = v3;
          v22 = 2112;
          v23 = v8;
          _os_log_impl(&dword_231B25000, v15, OS_LOG_TYPE_DEFAULT, "### %@ Failed delete item with uniqueID: %@ with error: %@", buf, 0x20u);
        }
      }

      *(*(*(a1 + 72) + 8) + 24) = 9;
      objc_storeStrong((*(*(a1 + 80) + 8) + 40), v14);
    }

    goto LABEL_13;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v8 = SKGLogKeyphraseInit();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = [(CSEventListenerManager *)*(a1 + 40) totalJournalSize];
      v11 = [*(a1 + 56) bundleIdentifier];
      *buf = 138413314;
      v19 = v9;
      v20 = 2112;
      v21 = v3;
      v22 = 2048;
      v23 = v10;
      v24 = 2048;
      v25 = v7;
      v26 = 2112;
      v27 = v11;
      _os_log_debug_impl(&dword_231B25000, v8, OS_LOG_TYPE_DEBUG, "%@ SKIPPING delete for item uniqueID: %@ with serialNumber:%llu < latestSerialNumber:%llu from bundle: %@", buf, 0x34u);
    }

LABEL_13:
  }

  objc_autoreleasePoolPop(v4);
}

- (int64_t)_handleFullCascadeDonation:(id)donation withReason:(unsigned __int8)reason ledger:(id)ledger error:(id *)error
{
  reasonCopy = reason;
  v94[1] = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  ledgerCopy = ledger;
  v11 = ledgerCopy;
  v60 = ledgerCopy;
  if (reasonCopy == 1)
  {
    isInitialFullDonationRequired = [ledgerCopy isInitialFullDonationRequired];
    CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
    if ((isInitialFullDonationRequired & 1) == 0)
    {
      if (CurrentLoggingLevel < 4)
      {
        v26 = 4;
        goto LABEL_36;
      }

      v18 = SKGLogInit();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v51 = objc_opt_class();
        v52 = _donationReasonDescription(1);
        bundleIdentifier = [v60 bundleIdentifier];
        *buf = 138412802;
        *&buf[4] = v51;
        *&buf[12] = 2112;
        *&buf[14] = v52;
        *&buf[22] = 2112;
        *&buf[24] = bundleIdentifier;
        _os_log_impl(&dword_231B25000, v18, OS_LOG_TYPE_DEFAULT, "### %@ Will not attempt full Cascade donation with reason: %@ bundle: %@ because the initial full donation is not required", buf, 0x20u);
      }

LABEL_33:
      v26 = 4;
      goto LABEL_34;
    }

    if (CurrentLoggingLevel >= 4)
    {
      v14 = SKGLogInit();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        bundleIdentifier2 = [v11 bundleIdentifier];
        *buf = 138412546;
        *&buf[4] = v15;
        *&buf[12] = 2112;
        *&buf[14] = bundleIdentifier2;
        _os_log_impl(&dword_231B25000, v14, OS_LOG_TYPE_DEFAULT, "### %@ Initial full set donation is required per ledger for bundle: %@", buf, 0x16u);
      }
    }

    fullSetDonationAttempts = [v11 fullSetDonationAttempts];
    v11 = v60;
    if (fullSetDonationAttempts)
    {
      if (SKGLogGetCurrentLoggingLevel() < 4)
      {
        v26 = 4;
        goto LABEL_35;
      }

      v18 = SKGLogInit();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        v20 = _donationReasonDescription(1);
        bundleIdentifier3 = [v60 bundleIdentifier];
        *buf = 138412802;
        *&buf[4] = v19;
        *&buf[12] = 2112;
        *&buf[14] = v20;
        *&buf[22] = 2112;
        *&buf[24] = bundleIdentifier3;
        _os_log_impl(&dword_231B25000, v18, OS_LOG_TYPE_DEFAULT, "### %@ Will not attempt full Cascade donation with reason: %@ bundle: %@ because the initial full donation has already been attempted once", buf, 0x20u);
      }

      goto LABEL_33;
    }
  }

  v22 = [v11 fullSetDonationAttempts] > 5;
  v23 = SKGLogGetCurrentLoggingLevel();
  if (v22)
  {
    if (v23 < 4)
    {
      v26 = 2;
      goto LABEL_35;
    }

    v18 = SKGLogInit();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      bundleIdentifier4 = [v60 bundleIdentifier];
      *buf = 138412802;
      *&buf[4] = v24;
      *&buf[12] = 1024;
      *&buf[14] = 5;
      *&buf[18] = 2112;
      *&buf[20] = bundleIdentifier4;
      _os_log_impl(&dword_231B25000, v18, OS_LOG_TYPE_DEFAULT, "### %@ Full donation retries exhausted (limit %u). Stopping attempts of full set donations for bundle: %@", buf, 0x1Cu);
    }

    v26 = 2;
  }

  else
  {
    if (v23 >= 4)
    {
      v27 = SKGLogInit();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = objc_opt_class();
        v29 = _donationReasonDescription(reasonCopy);
        bundleIdentifier5 = [v60 bundleIdentifier];
        *buf = 138412802;
        *&buf[4] = v28;
        *&buf[12] = 2112;
        *&buf[14] = v29;
        *&buf[22] = 2112;
        *&buf[24] = bundleIdentifier5;
        _os_log_impl(&dword_231B25000, v27, OS_LOG_TYPE_DEFAULT, "### %@ Performing full Cascade donation with reason: %@ bundle: %@", buf, 0x20u);
      }
    }

    [v60 attemptFullSetDonation];
    bundleIdentifier6 = [v60 bundleIdentifier];
    v58 = objc_opt_new();
    v94[0] = bundleIdentifier6;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:1];
    [v58 setBundleIDs:v32];

    v33 = *MEMORY[0x277D23AA8];
    v93[0] = *MEMORY[0x277D23AB8];
    v93[1] = v33;
    v34 = *MEMORY[0x277D23AD0];
    v93[2] = *MEMORY[0x277D23AD8];
    v93[3] = v34;
    v35 = *MEMORY[0x277D23AB0];
    v93[4] = *MEMORY[0x277D23AE0];
    v93[5] = v35;
    v36 = *MEMORY[0x277D23AC0];
    v93[6] = *MEMORY[0x277D23AC8];
    v93[7] = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:8];
    [v58 setFetchAttributes:v37];

    v38 = MEMORY[0x277CCACA8];
    v39 = _donationReasonDescription(reasonCopy);
    v40 = [v38 stringWithFormat:@"Cascade%@", v39];
    [v58 setReason:v40];

    v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=*", v35];
    v56 = [(LNSpotlightCascadeTranslator *)self->_translator disabledAppEntityTypeIdentifiersForBundleIdentifier:bundleIdentifier6];
    if ([v56 count])
    {
      v41 = [(CSAppEntityUpdater *)self _disabledTypeIdentifiersClause:v56];
      v42 = [v57 stringByAppendingFormat:@" && (%@)", v41];

      v57 = v42;
    }

    v43 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:v57 queryContext:v58];
    v55 = dispatch_semaphore_create(0);
    v44 = [MEMORY[0x277CBEAA8] now];
    objc_initWeak(&location, v43);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy_;
    v91 = __Block_byref_object_dispose_;
    v92 = 0;
    v81 = 0;
    v82 = &v81;
    v83 = 0x2020000000;
    v84 = 0;
    v79[0] = 0;
    v79[1] = v79;
    v79[2] = 0x2020000000;
    v80 = 0;
    v77[0] = 0;
    v77[1] = v77;
    v77[2] = 0x2020000000;
    v78 = 0;
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __73__CSAppEntityUpdater__handleFullCascadeDonation_withReason_ledger_error___block_invoke;
    v69[3] = &unk_27893C708;
    v69[4] = self;
    v45 = bundleIdentifier6;
    v70 = v45;
    v72 = v79;
    objc_copyWeak(&v76, &location);
    v71 = donationCopy;
    v73 = buf;
    v74 = &v81;
    v75 = v77;
    [v43 setFoundItemsHandler:v69];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __73__CSAppEntityUpdater__handleFullCascadeDonation_withReason_ledger_error___block_invoke_185;
    v61[3] = &unk_27893C758;
    v61[4] = self;
    v46 = v44;
    v62 = v46;
    v65 = v79;
    v66 = buf;
    v67 = &v81;
    v18 = v45;
    v63 = v18;
    v68 = v77;
    v47 = v55;
    v64 = v47;
    [v43 setCompletionHandler:v61];
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v48 = SKGLogInit();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = objc_opt_class();
        *v86 = 138412546;
        v87 = v49;
        v88 = 2112;
        v89 = v18;
        _os_log_impl(&dword_231B25000, v48, OS_LOG_TYPE_DEFAULT, "### %@ Starting full set donation Spotlight query for bundle: %@", v86, 0x16u);
      }
    }

    [v43 start];
    dispatch_semaphore_wait(v47, 0xFFFFFFFFFFFFFFFFLL);
    if (error)
    {
      v50 = *(*&buf[8] + 40);
      if (v50)
      {
        *error = v50;
      }
    }

    v26 = v82[3];

    objc_destroyWeak(&v76);
    _Block_object_dispose(v77, 8);
    _Block_object_dispose(v79, 8);
    _Block_object_dispose(&v81, 8);
    _Block_object_dispose(buf, 8);

    objc_destroyWeak(&location);
  }

LABEL_34:

LABEL_35:
  v11 = v60;
LABEL_36:

  return v26;
}

void __73__CSAppEntityUpdater__handleFullCascadeDonation_withReason_ledger_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__CSAppEntityUpdater__handleFullCascadeDonation_withReason_ledger_error___block_invoke_2;
  block[3] = &unk_27893C6E0;
  block[4] = v5;
  v11 = v3;
  v7 = v4;
  v8 = *(a1 + 56);
  v12 = v7;
  v14 = v8;
  v9 = v3;
  objc_copyWeak(&v17, (a1 + 88));
  v13 = *(a1 + 48);
  v15 = *(a1 + 64);
  v16 = *(a1 + 80);
  dispatch_sync(v6, block);

  objc_destroyWeak(&v17);
}

void __73__CSAppEntityUpdater__handleFullCascadeDonation_withReason_ledger_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v3 = SKGLogInit();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = [*(a1 + 40) count];
      v6 = *(a1 + 48);
      *buf = 138412802;
      v44 = v4;
      v45 = 2048;
      *v46 = v5;
      *&v46[8] = 2112;
      *v47 = v6;
      _os_log_impl(&dword_231B25000, v3, OS_LOG_TYPE_DEFAULT, "### %@ Received %ld items from Spotlight in the foundItemsHandler from %@", buf, 0x20u);
    }
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    if (SKGLogGetCurrentLoggingLevel() < 4)
    {
      return;
    }

    v7 = SKGLogInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 48);
      *buf = 138412546;
      v44 = v8;
      v45 = 2112;
      *v46 = v9;
      _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_DEFAULT, "### %@ foundItemsHandler: Query was stopped for bundle: %@", buf, 0x16u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 96));
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = *(a1 + 40);
    v10 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v36 = 0;
      v13 = *v40;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v39 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          v17 = *(*(a1 + 32) + 16);
          v18 = *(a1 + 48);
          v38 = 0;
          v19 = [v17 translateItem:v15 fromBundleId:v18 error:&v38];
          v20 = v38;
          if (v19)
          {
            v21 = v12;
            v22 = *(a1 + 56);
            v23 = *(*(a1 + 72) + 8);
            v37 = *(v23 + 40);
            v24 = [v22 registerItem:v19 error:&v37];
            objc_storeStrong((v23 + 40), v37);
            if ((v24 & 1) == 0)
            {
              v7 = WeakRetained;
              if (SKGLogGetCurrentLoggingLevel() >= 2)
              {
                v29 = SKGLogInit();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  __73__CSAppEntityUpdater__handleFullCascadeDonation_withReason_ledger_error___block_invoke_2_cold_1();
                }
              }

              *(*(*(a1 + 80) + 8) + 24) = 10;
              [WeakRetained cancel];

              objc_autoreleasePoolPop(v16);
              goto LABEL_37;
            }

            v12 = v21 + 1;
          }

          else
          {
            if (!v36 && SKGLogGetCurrentLoggingLevel() >= 2)
            {
              v25 = SKGLogInit();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                v33 = v12;
                v26 = objc_opt_class();
                v27 = [v15 uniqueIdentifier];
                v28 = *(a1 + 48);
                *buf = 138413058;
                v44 = v26;
                v12 = v33;
                v45 = 2112;
                *v46 = v27;
                *&v46[8] = 2112;
                *v47 = v20;
                *&v47[8] = 2112;
                v48 = v28;
                _os_log_error_impl(&dword_231B25000, v25, OS_LOG_TYPE_ERROR, "### %@ Skipping item with unique id %@ from %@ due to translation failure: %@ Subsequent translation errors are silenced for this request.", buf, 0x2Au);
              }
            }

            ++v36;
          }

          objc_autoreleasePoolPop(v16);
        }

        v11 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v12 = 0;
      v36 = 0;
    }

    v7 = WeakRetained;
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v30 = SKGLogInit();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = objc_opt_class();
        v32 = *(a1 + 48);
        *buf = 138413058;
        v44 = v31;
        v45 = 1024;
        *v46 = v12;
        *&v46[4] = 1024;
        *&v46[6] = v36;
        *v47 = 2112;
        *&v47[2] = v32;
        _os_log_impl(&dword_231B25000, v30, OS_LOG_TYPE_DEFAULT, "### %@ Registered %u items with %d translation errors from %@", buf, 0x22u);
      }
    }

    *(*(*(a1 + 88) + 8) + 24) += v12;
  }

LABEL_37:
}

void __73__CSAppEntityUpdater__handleFullCascadeDonation_withReason_ledger_error___block_invoke_185(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__CSAppEntityUpdater__handleFullCascadeDonation_withReason_ledger_error___block_invoke_2_186;
  block[3] = &unk_27893C730;
  v9 = *(a1 + 40);
  v10 = v3;
  v14 = *(a1 + 64);
  v15 = *(a1 + 80);
  v11 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 88);
  v12 = v5;
  v16 = v6;
  v13 = *(a1 + 56);
  v7 = v3;
  dispatch_sync(v4, block);
}

void __73__CSAppEntityUpdater__handleFullCascadeDonation_withReason_ledger_error___block_invoke_2_186(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) timeIntervalSinceNow];
  v3 = v2;
  v4 = *(a1 + 40);
  if (!v4)
  {
    v6 = @"completed";
    goto LABEL_8;
  }

  if ([v4 code] == -2003)
  {
    v5 = a1 + 72;
    v6 = @"was cancelled";
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"hit error: %@", *(a1 + 40)];
    v5 = a1 + 72;
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      goto LABEL_8;
    }

    objc_storeStrong((*(*(a1 + 80) + 8) + 40), *(a1 + 40));
    *(*(*(a1 + 88) + 8) + 24) = 14;
  }

  *(*(*v5 + 8) + 24) = 1;
LABEL_8:
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v7 = SKGLogInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 56);
      v10 = *(*(*(a1 + 96) + 8) + 24);
      *buf = 138413314;
      v12 = v8;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v9;
      v17 = 1024;
      v18 = v10;
      v19 = 2048;
      v20 = -v3;
      _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_DEFAULT, "### %@ Spotlight query %@ for bundle: %@ after registering %u items with Cascade in %.3f seconds", buf, 0x30u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 64));
}

- (id)_disabledTypeIdentifiersClause:(id)clause
{
  v19 = *MEMORY[0x277D85DE8];
  clauseCopy = clause;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(clauseCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = clauseCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = *MEMORY[0x277D23AE0];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@!=%@", v9, *(*(&v14 + 1) + 8 * i), v14];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 componentsJoinedByString:@" || "];

  return v12;
}

- (id)_countAppEntitiesFromBundle:(id)bundle
{
  v46[1] = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  v5 = objc_opt_new();
  _kMDItemAppEntityTypeIdentifier = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@=*)", _kMDItemAppEntityTypeIdentifier];
  [v5 setCounting:1];
  v46[0] = bundleCopy;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
  [v5 setBundleIDs:v7];

  v8 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:_kMDItemAppEntityTypeIdentifier queryContext:v5];
  v9 = dispatch_semaphore_create(0);
  v10 = [MEMORY[0x277CBEAA8] now];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __50__CSAppEntityUpdater__countAppEntitiesFromBundle___block_invoke;
  v35[3] = &unk_27893C780;
  v35[4] = self;
  v11 = bundleCopy;
  v36 = v11;
  v37 = &v38;
  [v8 setCountChangedHandler:v35];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __50__CSAppEntityUpdater__countAppEntitiesFromBundle___block_invoke_207;
  v22[3] = &unk_27893C7A8;
  v12 = v10;
  v23 = v12;
  selfCopy = self;
  v13 = v11;
  v25 = v13;
  v27 = &v29;
  v28 = &v38;
  v14 = v9;
  v26 = v14;
  [v8 setCompletionHandler:v22];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v15 = SKGLogInit();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      *buf = 138412546;
      v43 = v16;
      v44 = 2112;
      v45 = v13;
      _os_log_impl(&dword_231B25000, v15, OS_LOG_TYPE_DEFAULT, "### %@ Starting AppEntity count Spotlight query for bundle: %@", buf, 0x16u);
    }
  }

  [v8 start];
  v17 = dispatch_time(0, 240000000000);
  if (dispatch_semaphore_wait(v14, v17))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v18 = SKGLogInit();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        [(CSAppEntityUpdater *)v19 _countAppEntitiesFromBundle:v13, buf, v18];
      }
    }

    [v8 cancel];
    goto LABEL_12;
  }

  if (v30[5])
  {
LABEL_12:
    v20 = 0;
    goto LABEL_13;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithInteger:v39[3]];
LABEL_13:

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v38, 8);

  return v20;
}

void __50__CSAppEntityUpdater__countAppEntitiesFromBundle___block_invoke(uint64_t a1, uint64_t a2)
{
  if (SKGLogGetCurrentLoggingLevel() >= 6)
  {
    v4 = SKGLogInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __50__CSAppEntityUpdater__countAppEntitiesFromBundle___block_invoke_cold_1();
    }
  }

  *(*(*(a1 + 48) + 8) + 24) += a2;
}

void __50__CSAppEntityUpdater__countAppEntitiesFromBundle___block_invoke_207(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = COERCE_DOUBLE(a2);
  [*(a1 + 32) timeIntervalSinceNow];
  v5 = -v4;
  if (v3 == 0.0)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v8 = SKGLogInit();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = *(a1 + 48);
        v16 = *(*(*(a1 + 72) + 8) + 24);
        v22 = 138413058;
        v23 = v14;
        v24 = 2112;
        v25 = v15;
        v26 = 2048;
        v27 = v16;
        v28 = 2048;
        v29 = v5;
        v11 = "### %@ Spotlight AppEntity count query (bundle: %@) completed (result: %ld) after %.3f seconds";
        v12 = v8;
        v13 = 42;
        goto LABEL_9;
      }

LABEL_15:
    }
  }

  else
  {
    v6 = [*&v3 code];
    CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
    if (v6 != -2003)
    {
      if (CurrentLoggingLevel >= 4)
      {
        v17 = SKGLogInit();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = objc_opt_class();
          v19 = *(a1 + 48);
          v22 = 138413058;
          v23 = v18;
          v24 = 2112;
          v25 = v19;
          v26 = 2112;
          v27 = v3;
          v28 = 2048;
          v29 = v5;
          _os_log_impl(&dword_231B25000, v17, OS_LOG_TYPE_DEFAULT, "### %@ Spotlight AppEntity count query (bundle: %@) hit error: %@ after %.3f seconds", &v22, 0x2Au);
        }
      }

      v20 = *(*(a1 + 64) + 8);
      v21 = *&v3;
      v8 = *(v20 + 40);
      *(v20 + 40) = v21;
      goto LABEL_15;
    }

    if (CurrentLoggingLevel >= 4)
    {
      v8 = SKGLogInit();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = *(a1 + 48);
        v22 = 138412802;
        v23 = v9;
        v24 = 2112;
        v25 = v10;
        v26 = 2048;
        v27 = v5;
        v11 = "### %@ Spotlight AppEntity count query (bundle: %@) was cancelled after %.3f seconds";
        v12 = v8;
        v13 = 32;
LABEL_9:
        _os_log_impl(&dword_231B25000, v12, OS_LOG_TYPE_DEFAULT, v11, &v22, v13);
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

- (id)_allBundlesApplicableToCascade
{
  v43 = *MEMORY[0x277D85DE8];
  defaultSearchableIndex = [MEMORY[0x277CC34A8] defaultSearchableIndex];
  v3 = dispatch_semaphore_create(0);
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = objc_opt_new();
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __52__CSAppEntityUpdater__allBundlesApplicableToCascade__block_invoke;
  v29[3] = &unk_27893C7D0;
  v29[4] = self;
  v31 = &v32;
  v4 = v3;
  v30 = v4;
  [defaultSearchableIndex _fetchBundleIDsWithCompletionHandler:v29];
  v23 = v4;
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v5 = SKGLogInit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      *buf = 138412290;
      v39 = v6;
      _os_log_impl(&dword_231B25000, v5, OS_LOG_TYPE_DEFAULT, "### %@ Starting applicable bundle identifiers Spotlight query", buf, 0xCu);
    }

    v4 = v23;
  }

  v7 = dispatch_time(0, 240000000000);
  if (!dispatch_semaphore_wait(v4, v7))
  {
    v10 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = v33[5];
    v11 = [v8 countByEnumeratingWithState:&v25 objects:v42 count:16];
    if (!v11)
    {
      goto LABEL_33;
    }

    v12 = *v26;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        if ([(LNSpotlightCascadeTranslator *)self->_translator isAllowedClientBundleIdentifier:v14, v23])
        {
          v15 = [(CSAppEntityUpdater *)self _countAppEntitiesFromBundle:v14];
          v16 = v15;
          if (v15)
          {
            if (![v15 longValue])
            {
              if (SKGLogGetCurrentLoggingLevel() >= 4)
              {
                v17 = SKGLogInit();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  v18 = objc_opt_class();
                  *buf = 138412546;
                  v39 = v18;
                  v40 = 2112;
                  v41 = v14;
                  _os_log_impl(&dword_231B25000, v17, OS_LOG_TYPE_DEFAULT, "### %@ Excluding bundle after couting zero AppEntities: %@", buf, 0x16u);
                }
              }

              goto LABEL_30;
            }
          }

          else if (SKGLogGetCurrentLoggingLevel() >= 4)
          {
            v20 = SKGLogInit();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = objc_opt_class();
              *buf = 138412546;
              v39 = v21;
              v40 = 2112;
              v41 = v14;
              _os_log_impl(&dword_231B25000, v20, OS_LOG_TYPE_DEFAULT, "### %@ Including bundle despite failed count query: %@", buf, 0x16u);
            }
          }

          [v10 addObject:v14];
        }

        else
        {
          if (SKGLogGetCurrentLoggingLevel() < 4)
          {
            continue;
          }

          v16 = SKGLogInit();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v19 = objc_opt_class();
            *buf = 138412546;
            v39 = v19;
            v40 = 2112;
            v41 = v14;
            _os_log_impl(&dword_231B25000, v16, OS_LOG_TYPE_DEFAULT, "### %@ Excluding bundle based on allow list: %@", buf, 0x16u);
          }
        }

LABEL_30:
      }

      v11 = [v8 countByEnumeratingWithState:&v25 objects:v42 count:16];
      if (!v11)
      {
        goto LABEL_33;
      }
    }
  }

  if (SKGLogGetCurrentLoggingLevel() < 2)
  {
    v10 = 0;
  }

  else
  {
    v8 = SKGLogInit();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      [(CSAppEntityUpdater *)v9 _allBundlesApplicableToCascade];
    }

    v10 = 0;
LABEL_33:
  }

  _Block_object_dispose(&v32, 8);

  return v10;
}

void __52__CSAppEntityUpdater__allBundlesApplicableToCascade__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
  if (v6)
  {
    if (CurrentLoggingLevel >= 4)
    {
      v8 = SKGLogInit();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        v15 = objc_opt_class();
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&dword_231B25000, v8, OS_LOG_TYPE_DEFAULT, "### %@ fetchBundleIds returned error: %@", &v14, 0x16u);
      }
    }

    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  else
  {
    if (CurrentLoggingLevel >= 4)
    {
      v11 = SKGLogInit();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        v15 = objc_opt_class();
        v16 = 2112;
        v17 = v5;
        _os_log_impl(&dword_231B25000, v11, OS_LOG_TYPE_DEFAULT, "### %@ fetchBundleIds returned bundles: [%@]", &v14, 0x16u);
      }
    }

    v12 = *(*(a1 + 48) + 8);
    v13 = v5;
    v10 = *(v12 + 40);
    *(v12 + 40) = v13;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)_allExistentSetsNotContainedInSpotlightBundles:(id)bundles
{
  v26 = *MEMORY[0x277D85DE8];
  bundlesCopy = bundles;
  v4 = [MEMORY[0x277CF94E8] setEnumeratorWithUseCase:@"AppEntityDonation"];
  v24 = 0;
  v5 = [v4 allSetsWithItemType:47341 error:&v24];
  v6 = v24;

  if (v5)
  {
    v7 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v18 = v6;
      v19 = v5;
      v11 = *v21;
      v12 = *MEMORY[0x277CF9498];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v14 descriptorWithKey:{v12, v18, v19, v20}];
          value = [v15 value];

          if (([bundlesCopy containsObject:value] & 1) == 0)
          {
            [v7 addObject:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
      v6 = v18;
      v5 = v19;
    }

LABEL_16:

    goto LABEL_17;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v8 = SKGLogInit();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CSAppEntityUpdater _allExistentSetsNotContainedInSpotlightBundles:];
    }

    v7 = 0;
    goto LABEL_16;
  }

  v7 = 0;
LABEL_17:

  return v7;
}

- (void)_donateJournalUpdateWithRecursiveRetry:(unint64_t)retry donation:(id)donation deletion:(id)deletion ledger:(id)ledger cancelBlock:(id)block completion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  deletionCopy = deletion;
  ledgerCopy = ledger;
  blockCopy = block;
  completionCopy = completion;
  if ([ledgerCopy journalUpdateAttempts] < 3)
  {
    if (blockCopy[2](blockCopy))
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v22 = SKGLogInit();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = objc_opt_class();
          bundleIdentifier = [ledgerCopy bundleIdentifier];
          *buf = 138412802;
          v33 = v23;
          v34 = 2048;
          *v35 = retry;
          *&v35[8] = 2112;
          *&v35[10] = bundleIdentifier;
          _os_log_impl(&dword_231B25000, v22, OS_LOG_TYPE_DEFAULT, "### %@ Asked to cancel. Deferring journal update with serialNumber: %lld bundle: %@", buf, 0x20u);
        }
      }

      completionCopy[2](completionCopy, 3);
    }

    else
    {
      [ledgerCopy attemptJournalUpdate];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __109__CSAppEntityUpdater__donateJournalUpdateWithRecursiveRetry_donation_deletion_ledger_cancelBlock_completion___block_invoke;
      v25[3] = &unk_27893C7F8;
      v25[4] = self;
      retryCopy = retry;
      v26 = ledgerCopy;
      v29 = completionCopy;
      v27 = donationCopy;
      v28 = deletionCopy;
      v30 = blockCopy;
      [(CSAppEntityUpdater *)self _donateToCascadeWithReason:1 ledger:v26 donation:v27 deletion:v28 completion:v25];
    }
  }

  else
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v19 = SKGLogInit();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        bundleIdentifier2 = [ledgerCopy bundleIdentifier];
        *buf = 138413058;
        v33 = v20;
        v34 = 1024;
        *v35 = 3;
        *&v35[4] = 2048;
        *&v35[6] = retry;
        *&v35[14] = 2112;
        *&v35[16] = bundleIdentifier2;
        _os_log_impl(&dword_231B25000, v19, OS_LOG_TYPE_DEFAULT, "### %@ Retries exhausted (limit %u). Abandoning journal update with serialNumber: %lld for bundle: %@", buf, 0x26u);
      }
    }

    completionCopy[2](completionCopy, 0);
  }
}

void __109__CSAppEntityUpdater__donateJournalUpdateWithRecursiveRetry_donation_deletion_ledger_cancelBlock_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!a2)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v13 = SKGLogInit();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = *(a1 + 80);
        v16 = [*(a1 + 40) bundleIdentifier];
        v17 = 138412802;
        v18 = v14;
        v19 = 2048;
        v20 = v15;
        v21 = 2112;
        v22 = v16;
        _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEFAULT, "### %@ Successfully donated journal update with serialNumber: %lld for bundle: %@", &v17, 0x20u);
      }
    }

    [*(a1 + 40) completeJournalUpdate];
    goto LABEL_16;
  }

  v6 = [*(a1 + 32) _skipRetryForErrorCode:a2];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v7 = SKGLogInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      if (v6)
      {
        v9 = @"Skipping";
      }

      else
      {
        v9 = @"Proceeding to";
      }

      v10 = _errorDescription(a2, v5);
      v11 = *(a1 + 80);
      v12 = [*(a1 + 40) bundleIdentifier];
      v17 = 138413314;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      v23 = 2048;
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_DEFAULT, "### %@ %@ retry loop after error (%@) for journal update with serialNumber: %lld bundle: %@", &v17, 0x34u);
    }
  }

  if (v6)
  {
LABEL_16:
    (*(*(a1 + 64) + 16))();
    goto LABEL_17;
  }

  [*(a1 + 32) _donateJournalUpdateWithRecursiveRetry:*(a1 + 80) donation:*(a1 + 48) deletion:*(a1 + 56) ledger:*(a1 + 40) cancelBlock:*(a1 + 72) completion:*(a1 + 64)];
LABEL_17:
}

- (BOOL)_handleJournalUpdateWithDonation:(id)donation orDeletion:(id)deletion cancelBlock:(id)block completion:(id)completion
{
  v44 = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  deletionCopy = deletion;
  blockCopy = block;
  completionCopy = completion;
  if (donationCopy)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalMap](donationCopy)];
    totalJournalSize = [(CSEventListenerManager *)donationCopy totalJournalSize];
    indexTypeName = [(CSEventListenerDonation *)donationCopy indexTypeName];
  }

  else
  {
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalMap](deletionCopy)];
    totalJournalSize = [(CSEventListenerManager *)deletionCopy totalJournalSize];
    indexTypeName = [(CSEventListenerDonation *)deletionCopy indexTypeName];
  }

  v17 = indexTypeName;
  v18 = [(LNSpotlightCascadeTranslator *)self->_translator isAllowedClientBundleIdentifier:v14];
  CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
  if (v18)
  {
    if (CurrentLoggingLevel >= 4)
    {
      v20 = SKGLogInit();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        *buf = 138413314;
        v22 = @"donation";
        v35 = v21;
        v36 = 2112;
        if (!donationCopy)
        {
          v22 = @"deletion";
        }

        v37 = v22;
        v38 = 2048;
        v39 = totalJournalSize;
        v40 = 2112;
        v41 = v14;
        v42 = 2080;
        v43 = v17;
        _os_log_impl(&dword_231B25000, v20, OS_LOG_TYPE_DEFAULT, "### %@ handling %@ for journal update with serialNumber: %lld from bundle: %@ indexType: %s", buf, 0x34u);
      }
    }

    v23 = [CSAppEntityCascadeLedger alloc];
    ledgerDirectory = self->_ledgerDirectory;
    v33 = 0;
    v25 = [(CSAppEntityCascadeLedger *)v23 initWithDirectory:ledgerDirectory bundleIdentifier:v14 error:&v33];
    v26 = v33;
    if (v25)
    {
      [(CSAppEntityCascadeLedger *)v25 resetJournalUpdateAttempts];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __89__CSAppEntityUpdater__handleJournalUpdateWithDonation_orDeletion_cancelBlock_completion___block_invoke;
      v30[3] = &unk_27893C820;
      v31 = v25;
      v32 = completionCopy;
      [(CSAppEntityUpdater *)self _donateJournalUpdateWithRecursiveRetry:totalJournalSize donation:donationCopy deletion:deletionCopy ledger:v31 cancelBlock:blockCopy completion:v30];
    }

    else
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v27 = SKGLogInit();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = objc_opt_class();
          *buf = 138412802;
          v35 = v28;
          v36 = 2112;
          v37 = v14;
          v38 = 2112;
          v39 = v26;
          _os_log_impl(&dword_231B25000, v27, OS_LOG_TYPE_DEFAULT, "### %@ Failed to load ledger for bundle: %@ error: %@", buf, 0x20u);
        }
      }

      (*(completionCopy + 2))(completionCopy, v26);
    }

LABEL_22:
    goto LABEL_23;
  }

  if (CurrentLoggingLevel >= 4)
  {
    v26 = SKGLogInit();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v35 = objc_opt_class();
      v36 = 2112;
      v37 = v14;
      _os_log_impl(&dword_231B25000, v26, OS_LOG_TYPE_DEFAULT, "### %@ Cascade donation from bundle is disabled: %@", buf, 0x16u);
    }

    goto LABEL_22;
  }

LABEL_23:

  return v18;
}

void __89__CSAppEntityUpdater__handleJournalUpdateWithDonation_orDeletion_cancelBlock_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) releaseLock];
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSAppEntityUpdaterErrorDomain" code:a2 userInfo:0];
    (*(v4 + 16))(v4, v6);
  }

  else
  {
    v5 = *(v4 + 16);

    v5(v4, 0);
  }
}

- (BOOL)handleDonation:(id)donation turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block
{
  donationCopy = donation;
  handlerCopy = handler;
  blockCopy = block;
  if ([objc_opt_class() isCascadeDonationEnabled])
  {
    v12 = SKGLogEventInit();
    v13 = os_signpost_id_generate(v12);

    v14 = SKGLogEventInit();
    v15 = v14;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_231B25000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CSAppEntityUpdaterHandleDonation", "", buf, 2u);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __80__CSAppEntityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke;
    v18[3] = &unk_27893C848;
    v20 = v13;
    v19 = handlerCopy;
    v16 = [(CSAppEntityUpdater *)self _handleJournalUpdateWithDonation:donationCopy orDeletion:0 cancelBlock:blockCopy completion:v18];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
    v16 = 1;
  }

  return v16;
}

void __80__CSAppEntityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SKGLogEventInit();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v5, OS_SIGNPOST_INTERVAL_END, v6, "CSAppEntityUpdaterHandleDonation", "", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)handleDeletion:(id)deletion turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block
{
  deletionCopy = deletion;
  handlerCopy = handler;
  blockCopy = block;
  if ([objc_opt_class() isCascadeDonationEnabled])
  {
    v12 = SKGLogEventInit();
    v13 = os_signpost_id_generate(v12);

    v14 = SKGLogEventInit();
    v15 = v14;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_231B25000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CSAppEntityUpdaterHandleDeletion", "", buf, 2u);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __80__CSAppEntityUpdater_handleDeletion_turboEnabled_completionHandler_cancelBlock___block_invoke;
    v18[3] = &unk_27893C848;
    v20 = v13;
    v19 = handlerCopy;
    v16 = [(CSAppEntityUpdater *)self _handleJournalUpdateWithDonation:0 orDeletion:deletionCopy cancelBlock:blockCopy completion:v18];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
    v16 = 1;
  }

  return v16;
}

void __80__CSAppEntityUpdater_handleDeletion_turboEnabled_completionHandler_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SKGLogEventInit();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v5, OS_SIGNPOST_INTERVAL_END, v6, "CSAppEntityUpdaterHandleDeletion", "", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_recursivelyVerifyAllBundles:(id)bundles withIndex:(unint64_t)index cancelBlock:(id)block completion:(id)completion
{
  v50 = *MEMORY[0x277D85DE8];
  bundlesCopy = bundles;
  blockCopy = block;
  completionCopy = completion;
  if ([bundlesCopy count] > index)
  {
    if (blockCopy[2](blockCopy))
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v13 = SKGLogInit();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v47 = objc_opt_class();
          v48 = 2048;
          *v49 = index + 1;
          *&v49[8] = 2048;
          *&v49[10] = [bundlesCopy count];
          _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEFAULT, "### %@ Asked to cancel verification at bundle %ld / %ld", buf, 0x20u);
        }
      }

      completionCopy[2](completionCopy, 3);
      goto LABEL_39;
    }

    v15 = [bundlesCopy objectAtIndex:index];
    v16 = [CSAppEntityCascadeLedger alloc];
    ledgerDirectory = self->_ledgerDirectory;
    v45 = 0;
    v18 = [(CSAppEntityCascadeLedger *)v16 initWithDirectory:ledgerDirectory bundleIdentifier:v15 error:&v45];
    v19 = v45;
    if (v18)
    {
      if ([(CSAppEntityCascadeLedger *)v18 isInitialFullDonationRequired]|| [(CSAppEntityCascadeLedger *)v18 isRecoveryFullDonationRequired])
      {
        if (SKGLogGetCurrentLoggingLevel() >= 4)
        {
          v20 = SKGLogInit();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = objc_opt_class();
            *buf = 138412546;
            v47 = v21;
            v48 = 2112;
            *v49 = v18;
            _os_log_impl(&dword_231B25000, v20, OS_LOG_TYPE_DEFAULT, "### %@ Ledger indicates full donation is required: %@", buf, 0x16u);
          }
        }

        if ([(CSAppEntityCascadeLedger *)v18 fullSetDonationAttempts]< 6)
        {
          v28 = 0;
LABEL_35:
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __84__CSAppEntityUpdater__recursivelyVerifyAllBundles_withIndex_cancelBlock_completion___block_invoke;
          aBlock[3] = &unk_27893C870;
          v31 = v18;
          v39 = v31;
          selfCopy = self;
          v41 = bundlesCopy;
          indexCopy = index;
          v42 = blockCopy;
          v43 = completionCopy;
          v32 = _Block_copy(aBlock);
          v33 = v32;
          if (v28)
          {
            (*(v32 + 2))(v32);
          }

          else
          {
            v35[0] = MEMORY[0x277D85DD0];
            v35[1] = 3221225472;
            v35[2] = __84__CSAppEntityUpdater__recursivelyVerifyAllBundles_withIndex_cancelBlock_completion___block_invoke_2;
            v35[3] = &unk_27893C898;
            v35[4] = self;
            v36 = v15;
            v37 = v33;
            [(CSAppEntityUpdater *)self _donateToCascadeWithReason:2 ledger:v31 donation:0 deletion:0 completion:v35];
          }

          goto LABEL_39;
        }

        if (SKGLogGetCurrentLoggingLevel() >= 4)
        {
          v22 = SKGLogInit();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = objc_opt_class();
            *buf = 138412802;
            v47 = v23;
            v48 = 1024;
            *v49 = 5;
            *&v49[4] = 2112;
            *&v49[6] = v15;
            v24 = "### %@ Full donation retries exhausted (limit %u). Skipping nightly verification for bundle: %@";
            v25 = v22;
            v26 = 28;
LABEL_28:
            _os_log_impl(&dword_231B25000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
            goto LABEL_33;
          }

          goto LABEL_33;
        }
      }

      else if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v22 = SKGLogInit();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v34 = objc_opt_class();
          bundleIdentifier = [(CSAppEntityCascadeLedger *)v18 bundleIdentifier];
          *buf = 138412546;
          v47 = v34;
          v48 = 2112;
          *v49 = bundleIdentifier;
          v30 = bundleIdentifier;
          _os_log_impl(&dword_231B25000, v22, OS_LOG_TYPE_DEFAULT, "### %@ No action is required for bundle: %@", buf, 0x16u);
        }

        goto LABEL_33;
      }
    }

    else if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v22 = SKGLogInit();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        *buf = 138412802;
        v47 = v27;
        v48 = 2112;
        *v49 = v15;
        *&v49[8] = 2112;
        *&v49[10] = v19;
        v24 = "### %@ Failed to load ledger for bundle: %@ error: %@";
        v25 = v22;
        v26 = 32;
        goto LABEL_28;
      }

LABEL_33:
    }

    v28 = 1;
    goto LABEL_35;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v14 = SKGLogInit();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v47 = objc_opt_class();
      v48 = 2048;
      *v49 = [bundlesCopy count];
      _os_log_impl(&dword_231B25000, v14, OS_LOG_TYPE_DEFAULT, "### %@ Finished verifying %ld bundles", buf, 0x16u);
    }
  }

  completionCopy[2](completionCopy, 0);
LABEL_39:
}

uint64_t __84__CSAppEntityUpdater__recursivelyVerifyAllBundles_withIndex_cancelBlock_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) releaseLock];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v5 = *(a1 + 56);
  v6 = *(a1 + 72) + 1;

  return [v2 _recursivelyVerifyAllBundles:v3 withIndex:v6 cancelBlock:v5 completion:v4];
}

uint64_t __84__CSAppEntityUpdater__recursivelyVerifyAllBundles_withIndex_cancelBlock_completion___block_invoke_2(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a2 && SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v3 = SKGLogInit();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = a1[5];
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_231B25000, v3, OS_LOG_TYPE_DEFAULT, "### %@ Nightly verification successfully recovered bundle: %@", &v7, 0x16u);
    }
  }

  return (*(a1[6] + 16))();
}

- (void)_recursivelyDonateNowForAllBundles:(id)bundles withIndex:(unint64_t)index cancelBlock:(id)block completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  bundlesCopy = bundles;
  blockCopy = block;
  completionCopy = completion;
  if ([bundlesCopy count] <= index)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v14 = SKGLogInit();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v35 = objc_opt_class();
        v36 = 2048;
        v37 = [bundlesCopy count];
        _os_log_impl(&dword_231B25000, v14, OS_LOG_TYPE_DEFAULT, "### %@ Finished DonateNow for %ld bundles", buf, 0x16u);
      }
    }

    completionCopy[2](completionCopy, 0);
  }

  else if (blockCopy[2](blockCopy))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v13 = SKGLogInit();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v35 = objc_opt_class();
        v36 = 2048;
        v37 = index + 1;
        v38 = 2048;
        v39 = [bundlesCopy count];
        _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEFAULT, "### %@ Asked to cancel DonateNow at bundle %ld / %ld", buf, 0x20u);
      }
    }

    completionCopy[2](completionCopy, 3);
  }

  else
  {
    v15 = [bundlesCopy objectAtIndex:index];
    v16 = [CSAppEntityCascadeLedger alloc];
    ledgerDirectory = self->_ledgerDirectory;
    v33 = 0;
    v18 = [(CSAppEntityCascadeLedger *)v16 initWithDirectory:ledgerDirectory bundleIdentifier:v15 error:&v33];
    v19 = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __90__CSAppEntityUpdater__recursivelyDonateNowForAllBundles_withIndex_cancelBlock_completion___block_invoke;
    aBlock[3] = &unk_27893C870;
    v20 = v18;
    v27 = v20;
    selfCopy = self;
    v29 = bundlesCopy;
    indexCopy = index;
    v30 = blockCopy;
    v31 = completionCopy;
    v21 = _Block_copy(aBlock);
    if (v20)
    {
      [(CSAppEntityCascadeLedger *)v20 incrementVersion];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __90__CSAppEntityUpdater__recursivelyDonateNowForAllBundles_withIndex_cancelBlock_completion___block_invoke_221;
      v24[3] = &unk_27893C8C0;
      v25 = v21;
      [(CSAppEntityUpdater *)self _donateToCascadeWithReason:3 ledger:v20 donation:0 deletion:0 completion:v24];
    }

    else
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v22 = SKGLogInit();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = objc_opt_class();
          *buf = 138412802;
          v35 = v23;
          v36 = 2112;
          v37 = v15;
          v38 = 2112;
          v39 = v19;
          _os_log_impl(&dword_231B25000, v22, OS_LOG_TYPE_DEFAULT, "### %@ Failed to load ledger for bundle: %@ error: %@", buf, 0x20u);
        }
      }

      v21[2](v21);
    }
  }
}

uint64_t __90__CSAppEntityUpdater__recursivelyDonateNowForAllBundles_withIndex_cancelBlock_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) releaseLock];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v5 = *(a1 + 56);
  v6 = *(a1 + 72) + 1;

  return [v2 _recursivelyDonateNowForAllBundles:v3 withIndex:v6 cancelBlock:v5 completion:v4];
}

- (void)_recursivelyCleanupDeletedSets:(id)sets withIndex:(unint64_t)index cancelBlock:(id)block completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  blockCopy = block;
  completionCopy = completion;
  if ([setsCopy count] <= index)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v14 = SKGLogInit();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v27 = objc_opt_class();
        v28 = 2048;
        v29 = [setsCopy count];
        _os_log_impl(&dword_231B25000, v14, OS_LOG_TYPE_DEFAULT, "### %@ Finished cleaning up %ld sets", buf, 0x16u);
      }
    }

    completionCopy[2](completionCopy, 0);
  }

  else if (blockCopy[2](blockCopy))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v13 = SKGLogInit();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v27 = objc_opt_class();
        v28 = 2048;
        v29 = index + 1;
        v30 = 2048;
        v31 = [setsCopy count];
        _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEFAULT, "### %@ Asked to cancel verification at set %ld / %ld", buf, 0x20u);
      }
    }

    completionCopy[2](completionCopy, 3);
  }

  else
  {
    v15 = [setsCopy objectAtIndex:index];
    v16 = MEMORY[0x277CF9508];
    itemType = [v15 itemType];
    descriptors = [v15 descriptors];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __86__CSAppEntityUpdater__recursivelyCleanupDeletedSets_withIndex_cancelBlock_completion___block_invoke;
    v20[3] = &unk_27893C8E8;
    v20[4] = self;
    v21 = v15;
    v22 = setsCopy;
    indexCopy = index;
    v23 = blockCopy;
    v24 = completionCopy;
    v19 = v15;
    [v16 deleteSetWithItemType:itemType descriptors:descriptors completion:v20];
  }
}

void __86__CSAppEntityUpdater__recursivelyCleanupDeletedSets_withIndex_cancelBlock_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v4 = SKGLogInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = *(a1 + 40);
      v7 = @"Success";
      *v8 = 138412802;
      if (v3)
      {
        v7 = v3;
      }

      *&v8[4] = v5;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_DEFAULT, "### %@ Delete for Cascade set: %@ result: %@", v8, 0x20u);
    }
  }

  [*(a1 + 32) _recursivelyCleanupDeletedSets:*(a1 + 48) withIndex:*(a1 + 72) + 1 cancelBlock:*(a1 + 56) completion:{*(a1 + 64), *v8}];
}

- (void)runNightlyVerification:(id)verification completionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  verificationCopy = verification;
  handlerCopy = handler;
  if ([objc_opt_class() isCascadeDonationEnabled])
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v8 = SKGLogInit();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = objc_opt_class();
        _os_log_impl(&dword_231B25000, v8, OS_LOG_TYPE_DEFAULT, "### %@ Starting nightly verification", buf, 0xCu);
      }
    }

    _allBundlesApplicableToCascade = [(CSAppEntityUpdater *)self _allBundlesApplicableToCascade];
    v10 = _allBundlesApplicableToCascade;
    if (_allBundlesApplicableToCascade)
    {
      allObjects = [_allBundlesApplicableToCascade allObjects];
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v12 = SKGLogInit();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = objc_opt_class();
          *buf = 138412546;
          *&buf[4] = v13;
          *&buf[12] = 2112;
          *&buf[14] = allObjects;
          _os_log_impl(&dword_231B25000, v12, OS_LOG_TYPE_DEFAULT, "### %@ Verifying all applicable bundles: %@", buf, 0x16u);
        }
      }

      v14 = dispatch_group_create();
      dispatch_group_enter(v14);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v34 = 0;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __63__CSAppEntityUpdater_runNightlyVerification_completionHandler___block_invoke;
      v30[3] = &unk_27893C910;
      v32 = buf;
      v15 = v14;
      v31 = v15;
      [(CSAppEntityUpdater *)self _recursivelyVerifyAllBundles:allObjects withIndex:0 cancelBlock:verificationCopy completion:v30];
      v16 = dispatch_group_create();
      dispatch_group_enter(v16);
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__CSAppEntityUpdater_runNightlyVerification_completionHandler___block_invoke_2;
      block[3] = &unk_27893C938;
      v29 = buf;
      block[4] = self;
      v26 = v16;
      v18 = v10;
      v27 = v18;
      v28 = verificationCopy;
      v19 = v16;
      dispatch_group_notify(v15, queue, block);
      v20 = self->_queue;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __63__CSAppEntityUpdater_runNightlyVerification_completionHandler___block_invoke_2_226;
      v21[3] = &unk_27893C960;
      v24 = buf;
      v21[4] = self;
      v23 = handlerCopy;
      v22 = v18;
      dispatch_group_notify(v19, v20, v21);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __63__CSAppEntityUpdater_runNightlyVerification_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __63__CSAppEntityUpdater_runNightlyVerification_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v3 = SKGLogInit();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = objc_opt_class();
        _os_log_impl(&dword_231B25000, v3, OS_LOG_TYPE_DEFAULT, "### %@ Asked to cancel - skipping deleted bundle cleanup", buf, 0xCu);
      }
    }

    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    v4 = [*(a1 + 32) _allExistentSetsNotContainedInSpotlightBundles:*(a1 + 48)];
    v5 = [v4 count];
    CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
    if (v5)
    {
      if (CurrentLoggingLevel >= 4)
      {
        v7 = SKGLogInit();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v15 = objc_opt_class();
          v16 = 2048;
          v17 = [v4 count];
          v18 = 2112;
          v19 = v4;
          _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_DEFAULT, "### %@ Deleting %ld Cascade sets with bundle identifiers not contained in spotlight: %@", buf, 0x20u);
        }
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __63__CSAppEntityUpdater_runNightlyVerification_completionHandler___block_invoke_225;
      v11[3] = &unk_27893C910;
      v8 = *(a1 + 56);
      v13 = *(a1 + 64);
      v9 = *(a1 + 32);
      v12 = *(a1 + 40);
      [v9 _recursivelyCleanupDeletedSets:v4 withIndex:0 cancelBlock:v8 completion:v11];
    }

    else
    {
      if (CurrentLoggingLevel >= 4)
      {
        v10 = SKGLogInit();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v15 = objc_opt_class();
          _os_log_impl(&dword_231B25000, v10, OS_LOG_TYPE_DEFAULT, "### %@ No Cascade sets to delete", buf, 0xCu);
        }
      }

      dispatch_group_leave(*(a1 + 40));
    }
  }
}

void __63__CSAppEntityUpdater_runNightlyVerification_completionHandler___block_invoke_225(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __63__CSAppEntityUpdater_runNightlyVerification_completionHandler___block_invoke_2_226(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1[7] + 8) + 24);
  CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
  if (v3 == 1)
  {
    if (CurrentLoggingLevel >= 4)
    {
      v5 = SKGLogInit();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = objc_opt_class();
        v6 = "### %@ Asked to cancel - skipping ledger directory cleanup";
LABEL_12:
        _os_log_impl(&dword_231B25000, v5, OS_LOG_TYPE_DEFAULT, v6, &v10, 0xCu);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (CurrentLoggingLevel >= 4)
    {
      v7 = SKGLogInit();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = objc_opt_class();
        _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_DEFAULT, "### %@ Cleaning up ledger directory", &v10, 0xCu);
      }
    }

    [CSAppEntityCascadeLedger deleteLedgerFilesInDirectory:*(a1[4] + 24) notContainedInActiveBundles:a1[5]];
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v5 = SKGLogInit();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        v10 = 138412290;
        v11 = v8;
        v6 = "### %@ Finished nightly verification";
        goto LABEL_12;
      }

LABEL_13:
    }
  }

  return (*(a1[6] + 16))();
}

- (void)handleDonateNowNotification:(id)notification completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  handlerCopy = handler;
  if ([objc_opt_class() isCascadeDonationEnabled])
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v8 = SKGLogInit();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = objc_opt_class();
        _os_log_impl(&dword_231B25000, v8, OS_LOG_TYPE_DEFAULT, "### %@ handling DonateNow notification", buf, 0xCu);
      }
    }

    _allBundlesApplicableToCascade = [(CSAppEntityUpdater *)self _allBundlesApplicableToCascade];
    allObjects = [_allBundlesApplicableToCascade allObjects];

    if (allObjects)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v11 = SKGLogInit();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = objc_opt_class();
          *buf = 138412546;
          *&buf[4] = v12;
          *&buf[12] = 2112;
          *&buf[14] = allObjects;
          _os_log_impl(&dword_231B25000, v11, OS_LOG_TYPE_DEFAULT, "### %@ Performing DonateNow for all allowed bundles: %@", buf, 0x16u);
        }
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v24 = 0;
      v13 = dispatch_group_create();
      dispatch_group_enter(v13);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __68__CSAppEntityUpdater_handleDonateNowNotification_completionHandler___block_invoke;
      v19[3] = &unk_27893C988;
      v19[4] = self;
      v22 = buf;
      v20 = allObjects;
      v14 = v13;
      v21 = v14;
      [(CSAppEntityUpdater *)self _recursivelyDonateNowForAllBundles:v20 withIndex:0 cancelBlock:notificationCopy completion:v19];
      queue = self->_queue;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __68__CSAppEntityUpdater_handleDonateNowNotification_completionHandler___block_invoke_227;
      v16[3] = &unk_27893C9B0;
      v17 = handlerCopy;
      v18 = buf;
      dispatch_group_notify(v14, queue, v16);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __68__CSAppEntityUpdater_handleDonateNowNotification_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
  if (a2 == 3)
  {
    if (CurrentLoggingLevel >= 4)
    {
      v5 = SKGLogInit();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = objc_opt_class();
        _os_log_impl(&dword_231B25000, v5, OS_LOG_TYPE_DEFAULT, "### %@ Exited donate now loop after being asked to cancel", &v9, 0xCu);
      }
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else if (CurrentLoggingLevel >= 4)
  {
    v6 = SKGLogInit();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = [*(a1 + 40) count];
      v9 = 138412546;
      v10 = v7;
      v11 = 2048;
      v12 = v8;
      _os_log_impl(&dword_231B25000, v6, OS_LOG_TYPE_DEFAULT, "### %@ Finished DonateNow for all %ld bundles", &v9, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void __73__CSAppEntityUpdater__handleFullCascadeDonation_withReason_ledger_error___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  objc_opt_class();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_countAppEntitiesFromBundle:(uint8_t *)buf .cold.1(uint64_t a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412802;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  *(buf + 11) = 1024;
  *(buf + 6) = 240;
  _os_log_error_impl(&dword_231B25000, log, OS_LOG_TYPE_ERROR, "### %@ Exceeded timeout for AppEntity count Spotlight query for bundle: %@ (%u seconds)", buf, 0x1Cu);
}

void __50__CSAppEntityUpdater__countAppEntitiesFromBundle___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  objc_opt_class();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)_allBundlesApplicableToCascade
{
  *buf = 138412546;
  *(buf + 4) = self;
  *(buf + 6) = 1024;
  *(buf + 14) = 240;
  _os_log_error_impl(&dword_231B25000, log, OS_LOG_TYPE_ERROR, "### %@ Exceeded timeout for applicable bundle identifiers Spotlight query (%u seconds)", buf, 0x12u);
}

- (void)_allExistentSetsNotContainedInSpotlightBundles:.cold.1()
{
  OUTLINED_FUNCTION_5();
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end