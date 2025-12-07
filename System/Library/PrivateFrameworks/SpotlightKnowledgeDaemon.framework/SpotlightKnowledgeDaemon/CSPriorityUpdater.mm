@interface CSPriorityUpdater
+ (id)feedbackLock;
- (BOOL)handleDonation:(id)donation turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block;
- (BOOL)isAcceptingJournals;
- (BOOL)shouldHandleJournalItem:(id)item bundleID:(id)d;
- (CSPriorityUpdater)init;
- (id)allowedBundlesFromUserDefaults;
- (id)description;
- (id)excludeBundleIDs;
@end

@implementation CSPriorityUpdater

+ (id)feedbackLock
{
  if (feedbackLock_onceToken != -1)
  {
    +[CSPriorityUpdater feedbackLock];
  }

  v3 = feedbackLock_lock;

  return v3;
}

void __33__CSPriorityUpdater_feedbackLock__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v1 = feedbackLock_lock;
  feedbackLock_lock = v0;
}

- (CSPriorityUpdater)init
{
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v3 = SKGLogEmbedInit();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231B25000, v3, OS_LOG_TYPE_INFO, "Initializing CSSearchableIndexAsyncProcessors for CSPriorityUpdater", buf, 2u);
    }
  }

  v4 = objc_opt_new();
  v5 = 0;
  do
  {
    v6 = [CSSearchableIndexAsyncProcessor alloc];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%u", "CSPriorityUpdater", v5];
    v8 = [(CSSearchableIndexAsyncProcessor *)v6 initWithName:v7];
    [v4 addObject:v8];

    v5 = (v5 + 1);
  }

  while (v5 != 8);
  v9 = [v4 copy];
  asyncIndexProcessors = self->_asyncIndexProcessors;
  self->_asyncIndexProcessors = v9;

  v11 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"SKGUpdaters"];
  defaults = self->_defaults;
  self->_defaults = v11;

  return self;
}

- (BOOL)isAcceptingJournals
{
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  enableEmbeddings = [mEMORY[0x277D657A0] enableEmbeddings];

  return enableEmbeddings;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  taskName = [(CSPriorityUpdater *)self taskName];
  v6 = [v3 initWithFormat:@"<%@:%p; %@>", v4, self, taskName];

  return v6;
}

- (id)excludeBundleIDs
{
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  embeddingExcludeBundles = [mEMORY[0x277D657A0] embeddingExcludeBundles];

  return embeddingExcludeBundles;
}

- (BOOL)shouldHandleJournalItem:(id)item bundleID:(id)d
{
  itemCopy = item;
  v14 = 0uLL;
  v15 = 0;
  [(CSEventDonationJournalItem *)itemCopy attrDictObj];
  if (_MDPlistDictionaryGetPlistObjectForKey() && ((v12 = v14, v13 = v15, PlistObjectType = _MDPlistGetPlistObjectType(), (PlistObjectType - 226) < 2) || PlistObjectType == 51 || PlistObjectType == 35))
  {
    v12 = v14;
    v13 = v15;
    v7 = _MDPlistNumberGetIntValue() != 0;
  }

  else
  {
    v7 = 0;
  }

  [(CSEventDonationJournalItem *)itemCopy attrDictObj];
  if (_MDPlistDictionaryGetPlistObjectForKey() && ((v12 = v14, v13 = v15, v8 = _MDPlistGetPlistObjectType(), (v8 - 226) < 2) || v8 == 51 || v8 == 35))
  {
    v12 = v14;
    v13 = v15;
    v9 = _MDPlistNumberGetIntValue() == 0;
  }

  else
  {
    v9 = 1;
  }

  if ([(CSPriorityUpdater *)self isAcceptingJournals])
  {
    v10 = v7 && v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)allowedBundlesFromUserDefaults
{
  if (isAppleInternalInstall() && ([(NSUserDefaults *)self->_defaults objectForKey:@"allowedBundles"], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB98]);
    v5 = [(NSUserDefaults *)self->_defaults stringForKey:@"allowedBundles"];
    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = [v5 componentsSeparatedByString:{@", "}];
    v8 = [v6 initWithArray:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)handleDonation:(id)donation turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block
{
  v111 = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  handlerCopy = handler;
  blockCopy = block;
  [MEMORY[0x277CC33D0] sharedListener];

  v10 = objc_alloc_init(CSEventFeedback);
  [(CSEventFeedback *)v10 setIndexType:[(CSEventListenerManager *)donationCopy folderFd]];
  [(CSEventFeedback *)v10 start];
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v102 = 0;
  [CSEventFeedback elapsedTimeSinceFlushForEvent:14];
  if (v11 > 60.0)
  {
    mEMORY[0x277D65798] = [MEMORY[0x277D65798] sharedProcessor];
    [mEMORY[0x277D65798] loadEmbedder];

    +[CSEventFeedback logEmbeddingPrewarmRequestTime];
  }

  v13 = SKGLogEventInit();
  spid = os_signpost_id_generate(v13);

  v14 = SKGLogEventInit();
  v15 = v14;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v15, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CSPriorityUpdaterHandleDonation", "", buf, 2u);
  }

  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  embeddingFetchAttributes = [mEMORY[0x277D657A0] embeddingFetchAttributes];

  v17 = objc_alloc(MEMORY[0x277CCACA8]);
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalMap](donationCopy)];
  v19 = [v17 initWithString:v18];

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = @"unknown";
  }

  [(CSEventFeedback *)v10 setBundleID:v20];
  allowedBundlesFromUserDefaults = [(CSPriorityUpdater *)self allowedBundlesFromUserDefaults];
  if (allowedBundlesFromUserDefaults && ([allowedBundlesFromUserDefaults containsObject:v19] & 1) == 0)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 7)
    {
      v51 = SKGLogEmbedInit();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        [CSEmbeddingsUpdater handleDonation:v19 turboEnabled:allowedBundlesFromUserDefaults completionHandler:v51 cancelBlock:?];
      }
    }

    v40 = *(v100 + 24);
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x277CCACA8]);
    protectionClass = [(CSEventListenerDonation *)donationCopy protectionClass];
    v23 = [v21 initWithString:protectionClass];

    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[CSEventListenerManager totalJournalSize](donationCopy)];
    *buf = 0;
    v94 = buf;
    v95 = 0x3032000000;
    v96 = __Block_byref_object_copy__4;
    v97 = __Block_byref_object_dispose__4;
    v98 = 0;
    v91[0] = 0;
    v91[1] = v91;
    v91[2] = 0x3032000000;
    v91[3] = __Block_byref_object_copy__4;
    v91[4] = __Block_byref_object_dispose__4;
    v92 = 0;
    v90[0] = 0;
    v90[1] = v90;
    v90[2] = 0x2020000000;
    v90[3] = 0;
    v89 = 0;
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v25 = SKGLogEmbedInit();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        indexTypeName = [(CSEventListenerDonation *)donationCopy indexTypeName];
        totalJournalSize = [(CSEventListenerManager *)donationCopy totalJournalSize];
        getItemCount = [donationCopy getItemCount];
        *v103 = 138413058;
        selfCopy3 = self;
        v105 = 2080;
        v106 = indexTypeName;
        v107 = 2048;
        v108 = totalJournalSize;
        v109 = 1024;
        LODWORD(v110) = getItemCount;
        _os_log_impl(&dword_231B25000, v25, OS_LOG_TYPE_INFO, "### donation %@ %s sn:%llu total incoming %u items", v103, 0x26u);
      }
    }

    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke;
    v76[3] = &unk_27893D598;
    v29 = donationCopy;
    v77 = v29;
    v30 = v19;
    v78 = v30;
    selfCopy2 = self;
    v31 = blockCopy;
    v84 = v31;
    v85 = v90;
    v32 = v10;
    v80 = v32;
    v86 = v91;
    v81 = embeddingFetchAttributes;
    v55 = v23;
    v82 = v55;
    v88 = &v89;
    v56 = v24;
    v83 = v56;
    v87 = buf;
    [v29 iterateItems:v76];
    if (v31[2](v31))
    {
      v33 = +[SKGActivityJournal sharedJournal];
      [v33 addEventForItem:33 bundleID:v30 identifier:v30];

      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v34 = SKGLogEmbedInit();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          taskName = [(CSPriorityUpdater *)self taskName];
          v36 = taskName;
          uTF8String = [taskName UTF8String];
          indexTypeName2 = [(CSEventListenerDonation *)v29 indexTypeName];
          totalJournalSize2 = [(CSEventListenerManager *)v29 totalJournalSize];
          *v103 = 136315650;
          selfCopy3 = uTF8String;
          v105 = 2080;
          v106 = indexTypeName2;
          v107 = 2048;
          v108 = totalJournalSize2;
          _os_log_impl(&dword_231B25000, v34, OS_LOG_TYPE_INFO, "### cancelling %s due to expiration request while processing type='%s' sn:'%llu'", v103, 0x20u);
        }
      }

      [(CSEventFeedback *)v32 end];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
      v40 = 1;
    }

    else
    {
      v41 = [*(v94 + 5) count];
      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v42 = SKGLogEmbedInit();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          indexTypeName3 = [(CSEventListenerDonation *)v29 indexTypeName];
          totalJournalSize3 = [(CSEventListenerManager *)v29 totalJournalSize];
          *v103 = 138413058;
          selfCopy3 = self;
          v105 = 2080;
          v106 = indexTypeName3;
          v107 = 2048;
          v108 = totalJournalSize3;
          v109 = 2048;
          v110 = v41;
          _os_log_impl(&dword_231B25000, v42, OS_LOG_TYPE_INFO, "### donation %@ %s sn:%llu found %lu items", v103, 0x2Au);
        }
      }

      v45 = +[CSEventListenerTasksManager sharedInstance];
      turboMode = [v45 turboMode];

      if (turboMode)
      {
        v47 = 32;
      }

      else
      {
        v47 = 0;
      }

      if (v41 && ([(CSPriorityUpdater *)self getProcessorForIndexType:[(CSEventListenerManager *)v29 folderFd]], (v48 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v53 = v47;
        v54 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CSPriorityUpdater-Indexing-%d", -[CSEventListenerManager folderFd](v29)];
        v49 = +[SKGEventsProfiler sharedInstance];
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_97;
        v62[3] = &unk_27893D5E8;
        v70 = buf;
        v62[4] = self;
        v63 = v29;
        v64 = v56;
        v71 = &v99;
        v72 = v41;
        v50 = v48;
        v65 = v50;
        v66 = v55;
        v67 = v30;
        v73 = v53;
        v68 = v32;
        v74 = spid;
        v69 = handlerCopy;
        v75 = v89;
        [v49 profileCodeWithType:v54 kind:2 block:v62];
      }

      else
      {
        [(CSEventFeedback *)v32 end];
        v50 = 0;
      }

      v40 = *(v100 + 24);
    }

    _Block_object_dispose(v90, 8);
    _Block_object_dispose(v91, 8);

    _Block_object_dispose(buf, 8);
  }

  _Block_object_dispose(&v99, 8);
  return v40 & 1;
}

uint64_t __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CSPriorityUpdater-%d", -[CSEventListenerManager folderFd](*(a1 + 32))];
  v6 = +[SKGEventsProfiler sharedInstance];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2;
  v24[3] = &unk_27893D570;
  v7 = v3;
  v25 = v7;
  *&v8 = *(a1 + 40);
  *(&v8 + 1) = *(a1 + 48);
  v21 = v8;
  v9 = *(a1 + 88);
  *&v10 = *(a1 + 32);
  *(&v10 + 1) = *(a1 + 56);
  v20 = v10;
  v22 = *(a1 + 96);
  v11 = *(&v10 + 1);
  v26 = v21;
  v27 = v20;
  *&v12 = v22;
  *(&v12 + 1) = *(a1 + 104);
  v23 = v12;
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(a1 + 120);
  *&v16 = *(a1 + 80);
  *(&v16 + 1) = v9;
  *&v17 = v13;
  *(&v17 + 1) = v14;
  v28 = v17;
  v29 = v16;
  *&v16 = *(a1 + 112);
  *(&v16 + 1) = v15;
  v30 = v23;
  v31 = v16;
  v18 = [v6 profileCodeWithType:v5 kind:2 block:v24];

  objc_autoreleasePoolPop(v4);
  return v18;
}

uint64_t __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v107 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [(CSEventDonationJournalItem *)*(a1 + 32) identifier];
  v4 = MDJournalReaderMDPlistObjectCopy();
  v5 = [v4 mutableCopy];

  v6 = +[SKGActivityJournal sharedJournal];
  [v6 addEventForItem:16 bundleID:*(a1 + 40) identifier:v5];

  LODWORD(v6) = [*(a1 + 48) shouldHandleJournalItem:*(a1 + 32) bundleID:*(a1 + 40)];
  v7 = [CSEmbeddingsUpdater alloc];
  v8 = [(CSEmbeddingsUpdater *)v7 shouldHandleJournalItem:*(a1 + 32) bundleID:*(a1 + 40)];

  v9 = [MEMORY[0x277CC33D0] sharedListener];
  v10 = [v9 onBattery];

  if (v6 || ((v10 | !v8) & 1) == 0)
  {
    v13 = [SKGUpdaterStore instanceForIndexType:[(CSEventListenerManager *)*(a1 + 56) folderFd]];
    if (v13)
    {
      v14 = [(CSEventListenerManager *)*(a1 + 56) journalMap];
      *(*(*(a1 + 104) + 8) + 24) = [v13 readSerialNumberFromBundleID:v14 identifier:objc_msgSend(v5 UUID:"UTF8String") listenerType:{-[CSEventListenerManager journalQueue](*(a1 + 56)), objc_msgSend(*(a1 + 48), "eventType")}];
      if ([(CSEventListenerManager *)*(a1 + 56) totalJournalSize]< *(*(*(a1 + 104) + 8) + 24))
      {
        v15 = +[SKGActivityJournal sharedJournal];
        [v15 addEventForItem:20 bundleID:*(a1 + 40) identifier:v5];

        if (SKGLogGetCurrentLoggingLevel() >= 7)
        {
          v16 = SKGLogInit();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v62 = *(a1 + 48);
            v63 = [(CSEventListenerManager *)*(a1 + 56) totalJournalSize];
            v64 = *(*(*(a1 + 104) + 8) + 24);
            v65 = [(CSEventListenerManager *)*(a1 + 56) journalMap];
            *buf = 138413314;
            v98 = v62;
            v99 = 2048;
            v100 = v63;
            v101 = 2048;
            v102 = v64;
            v103 = 2080;
            v104 = v65;
            v105 = 2112;
            v106 = v5;
            _os_log_debug_impl(&dword_231B25000, v16, OS_LOG_TYPE_DEBUG, "%@ SKIPPING item serialNumber:%llu < latestSerialNumber:%llu | bundle:%s identifier:%@", buf, 0x34u);
          }
        }

        v3[2](v3, @"skipped");
        v12 = (*(*(a1 + 96) + 16))();
LABEL_38:

        goto LABEL_39;
      }
    }

    [*(a1 + 64) setNumItemsInBatch:{objc_msgSend(*(a1 + 64), "numItemsInBatch") + 1}];
    v17 = *(*(a1 + 112) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = 0;

    v19 = +[CSPriorityUpdater feedbackLock];
    [v19 lock];

    if (v10)
    {
      v20 = &unk_2846E7860;
    }

    else
    {
      v20 = &unk_2846E7878;
    }

    v21 = [*(a1 + 64) canProcessEvent:v20];
    v22 = [MEMORY[0x277D65798] sharedProcessor];
    LODWORD(v23) = [v22 canProcessEvent] & v21;

    if (v23 == 1 && ([*(a1 + 32) attributesForKeys:*(a1 + 72) bundleID:*(a1 + 40)], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v25 = v24;
      v26 = [MEMORY[0x277D65798] sharedProcessor];
      v27 = [v26 canProcessEventForRecord:v25 bundleIdentifier:*(a1 + 40)];

      v71 = v25;
      if (v27)
      {
        v28 = [MEMORY[0x277D65798] sharedProcessor];
        v29 = [v28 shouldGenerateEmbeddingsForRecord:v25 bundleID:*(a1 + 40)];

        goto LABEL_20;
      }
    }

    else
    {
      v71 = 0;
    }

    v29 = 0;
LABEL_20:
    v30 = [*(a1 + 40) UTF8String];
    v31 = [v5 UTF8String];
    v32 = [(CSEventListenerManager *)*(a1 + 56) journalQueue];
    v33 = [v13 checkPriorityForBundleID:v30 identifier:v31 UUID:v32 serialNumber:-[CSEventListenerManager totalJournalSize](*(a1 + 56)) defaultIfNotExists:1];
    v34 = v33;
    if (v13 && (v33 & 1) == 0)
    {
      v35 = [*(a1 + 40) UTF8String];
      v36 = [v5 UTF8String];
      v23 = [(CSEventListenerManager *)*(a1 + 56) journalQueue];
      [v13 removePriorityForBundleID:v35 identifier:v36 UUID:v23 serialNumber:-[CSEventListenerManager totalJournalSize](*(a1 + 56))];
      LOBYTE(v23) = 0;
    }

    v37 = v71;
    if (v29)
    {
      v38 = objc_alloc_init(MEMORY[0x277CC34B8]);
      v39 = *(*(a1 + 112) + 8);
      v40 = *(v39 + 40);
      *(v39 + 40) = v38;

      [*(*(*(a1 + 112) + 8) + 40) setAttribute:*MEMORY[0x277CBEEE8] forKey:@"_kMDItemNeedsPriority"];
      if (v23)
      {
        v41 = SKGLogEventInit();
        v42 = os_signpost_id_generate(v41);

        v43 = SKGLogEventInit();
        v44 = v43;
        v70 = v42 - 1;
        if (v42 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_231B25000, v44, OS_SIGNPOST_INTERVAL_BEGIN, v42, "CSPriorityUpdaterProcessSingleItem", "", buf, 2u);
        }

        spid = v42;

        v45 = [MEMORY[0x277D65798] sharedProcessor];
        v67 = *(a1 + 80);
        v68 = *(a1 + 40);
        v69 = *(a1 + 128);
        v91[0] = MEMORY[0x277D85DD0];
        v91[1] = 3221225472;
        v91[2] = __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_57;
        v91[3] = &unk_27893CBD8;
        v95 = *(a1 + 96);
        v92 = v13;
        v93 = *(a1 + 56);
        v46 = v5;
        v47 = *(a1 + 104);
        v94 = v46;
        v96 = v47;
        v86[0] = MEMORY[0x277D85DD0];
        v86[1] = 3221225472;
        v86[2] = __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_59;
        v86[3] = &unk_27893CC00;
        v87 = v92;
        v88 = *(a1 + 56);
        v48 = v46;
        v49 = *(a1 + 104);
        v89 = v48;
        v90 = v49;
        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_3;
        v74[3] = &unk_27893D548;
        v83 = *(a1 + 112);
        v75 = *(a1 + 40);
        v76 = v48;
        v77 = v87;
        v84 = v34;
        v50 = *(a1 + 56);
        v51 = *(a1 + 48);
        v78 = v50;
        v79 = v51;
        v80 = *(a1 + 64);
        v85 = v8;
        v81 = *(a1 + 88);
        v82 = v3;
        v72[0] = MEMORY[0x277D85DD0];
        v72[1] = 3221225472;
        v72[2] = __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_88;
        v72[3] = &unk_27893CC50;
        v73 = *(a1 + 96);
        v37 = v71;
        [v45 enumerateProcessedItemsFromRecord:v71 referenceIdentifier:v76 bundleIdentifier:v68 protectionClass:v67 processorFlags:2 workCost:v69 fetchCachedLanguageBlock:v91 cacheLanguageBlock:v86 processedItemBlock:v74 cancelBlock:v72];

        v52 = SKGLogEventInit();
        v53 = v52;
        if (v70 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_231B25000, v53, OS_SIGNPOST_INTERVAL_END, spid, "CSPriorityUpdaterProcessSingleItem", "", buf, 2u);
        }
      }

      else
      {
        [*(a1 + 64) logFlag:10 message:@"ignored"];
        v54 = +[SKGActivityJournal sharedJournal];
        [v54 addEventForItem:20 bundleID:*(a1 + 40) identifier:v5];

        v3[2](v3, @"cannot-process-emb");
      }

      if (*(*(*(a1 + 112) + 8) + 40))
      {
        v55 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v5 domainIdentifier:0 attributeSet:*(*(*(a1 + 112) + 8) + 40)];
        [v55 setBundleID:*(a1 + 40)];
        [v55 setIsUpdate:1];
        v56 = *(*(*(a1 + 120) + 8) + 40);
        if (!v56)
        {
          v57 = objc_opt_new();
          v58 = *(*(a1 + 120) + 8);
          v59 = *(v58 + 40);
          *(v58 + 40) = v57;

          v56 = *(*(*(a1 + 120) + 8) + 40);
        }

        [v56 addObject:v55];
      }
    }

    v60 = +[CSPriorityUpdater feedbackLock];
    [v60 unlock];

    v12 = (*(*(a1 + 96) + 16))();
    goto LABEL_38;
  }

  v11 = +[SKGActivityJournal sharedJournal];
  [v11 addEventForItem:20 bundleID:*(a1 + 40) identifier:v5];

  v3[2](v3, @"skipped");
  v12 = (*(*(a1 + 96) + 16))();
LABEL_39:

  return v12;
}

id __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_57(uint64_t a1)
{
  if ((*(*(a1 + 56) + 16))())
  {
    v2 = 0;
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = [(CSEventListenerManager *)*(a1 + 40) journalMap];
    v2 = [v3 readLanguageFromBundleID:v4 identifier:objc_msgSend(*(a1 + 48) UUID:"UTF8String") serialNumber:{-[CSEventListenerManager journalQueue](*(a1 + 40)), *(*(*(a1 + 64) + 8) + 24)}];
  }

  return v2;
}

uint64_t __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_59(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [(CSEventListenerManager *)v4 journalMap];
  v7 = [*(a1 + 48) UTF8String];
  v8 = [(CSEventListenerManager *)*(a1 + 40) journalQueue];
  v9 = *(*(*(a1 + 56) + 8) + 24);
  v10 = [v5 UTF8String];

  return [v3 writeLanguageForBundleID:v6 identifier:v7 UUID:v8 serialNumber:v9 language:v10];
}

uint64_t __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v53[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = attributeSetForProcessedItem(v3);
  v5 = *(*(a1 + 96) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = +[SKGActivityJournal sharedJournal];
  [v7 addEventForItem:17 bundleID:*(a1 + 32) identifier:*(a1 + 40)];

  if (*(*(*(a1 + 96) + 8) + 40))
  {
    v8 = *(a1 + 48);
    if (v8 && *(a1 + 104) == 1)
    {
      v9 = [*(a1 + 32) UTF8String];
      v10 = [*(a1 + 40) UTF8String];
      v11 = [(CSEventListenerManager *)*(a1 + 56) journalQueue];
      [v8 markPriorityForBundleID:v9 identifier:v10 UUID:v11 serialNumber:-[CSEventListenerManager totalJournalSize](*(a1 + 56)) flag:0];
    }

    v12 = [v3 embedding];
    if (v12)
    {
      v13 = [v3 embedding];
      v14 = [v13 primaryEmbeddings];
      v15 = [v14 count];
      v16 = [v3 embedding];
      v17 = [v16 secondaryEmbeddings];
      v18 = [v17 count] + v15;
    }

    else
    {
      v18 = 0;
    }

    v23 = [MEMORY[0x277CC33D0] sharedListener];
    if ([v23 onBattery])
    {
      v24 = v18;
    }

    else
    {
      v24 = 0;
    }

    v25 = +[SKGActivityJournal sharedJournal];
    v52[0] = &unk_2846E7890;
    v52[1] = &unk_2846E78A8;
    v26 = *(a1 + 40);
    v53[0] = *(a1 + 32);
    v53[1] = v26;
    v52[2] = &unk_2846E78C0;
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
    v53[2] = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:3];
    [v25 addEventWithType:21 params:v28];

    v29 = +[SKGActivityJournal sharedJournal];
    v50[0] = &unk_2846E7890;
    v50[1] = &unk_2846E78A8;
    v30 = *(a1 + 40);
    v51[0] = *(a1 + 32);
    v51[1] = v30;
    v50[2] = &unk_2846E78C0;
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
    v51[2] = v31;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:3];
    [v29 addEventWithType:22 params:v32];

    [*(a1 + 64) recordEmbeddingForThroughput:*(a1 + 32) count:v18];
    v45 = *(a1 + 72);
    v33 = [v3 bundleIdentifier];
    v34 = [v3 textContentLanguage];
    v35 = [v3 textContentSize];
    v48[0] = &unk_2846E78D8;
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
    v49[0] = v36;
    v48[1] = &unk_2846E7878;
    v37 = *(a1 + 105);
    if (v37 == 1)
    {
      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
    }

    else
    {
      v38 = &unk_2846E78F0;
    }

    v49[1] = v38;
    v48[2] = &unk_2846E7860;
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
    v49[2] = v39;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];
    [v45 logProcessedItemForBundleID:v33 language:v34 textSize:v35 counts:v40];

    if (v37)
    {
    }

    if ([v3 errorProcessingEmbeddings])
    {
      v41 = *(a1 + 72);
      v42 = *(a1 + 32);
      v46 = &unk_2846E7908;
      v47 = &unk_2846E7920;
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      [v41 logErrorItemForBundleID:v42 counts:v43];
    }

    else
    {
      updateAttributeSetForEvents(*(*(*(a1 + 96) + 8) + 40), @"_kMDItemPrioritySN", *(a1 + 80));
    }

    v22 = *MEMORY[0x277CBEEE8];
    [*(*(*(a1 + 96) + 8) + 40) setAttribute:*MEMORY[0x277CBEEE8] forKey:@"_kMDItemNeedsEmbeddings"];
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x277CC34B8]);
    v20 = *(*(a1 + 96) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    [*(a1 + 72) logFlag:10 message:@"ignored"];
    v22 = *MEMORY[0x277CBEEE8];
  }

  [*(*(*(a1 + 96) + 8) + 40) setAttribute:v22 forKey:@"_kMDItemNeedsPriority"];
  (*(*(a1 + 88) + 16))();

  return 1;
}

uint64_t __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_97(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKGActivityJournal sharedJournal];
  [v4 addEventForCSSearchableItems:18 items:*(*(*(a1 + 96) + 8) + 40)];

  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v5 = SKGLogInit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_97_cold_1(a1, v5);
    }
  }

  v6 = SKGLogEventInit();
  v7 = os_signpost_id_generate(v6);

  v8 = SKGLogEventInit();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CSPriorityUpdaterIndexItems", "", buf, 2u);
  }

  *(*(*(a1 + 104) + 8) + 24) = 1;
  v10 = *(*(*(a1 + 96) + 8) + 40);
  v12 = *(a1 + 56);
  v11 = *(a1 + 64);
  v13 = *(a1 + 120);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_98;
  v22[3] = &unk_27893D5C0;
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v28 = *(a1 + 96);
  v23 = v15;
  v26 = v3;
  v24 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 112);
  v25 = v16;
  v29 = v17;
  v30 = v7;
  v31 = *(a1 + 128);
  v18 = *(a1 + 88);
  v19 = *(a1 + 136);
  v27 = v18;
  v32 = v19;
  v20 = v3;
  [v12 indexSearchableItemsAsync:v10 protectionClass:v11 bundleIdentifier:v14 indexOptions:v13 completion:v22];

  return 1;
}

void __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = [v5 isEqual:@"CSEmbeddingsUpdaterTimeout"];

    v7 = +[SKGActivityJournal sharedJournal];
    v8 = v7;
    if (v6)
    {
      v9 = 23;
    }

    else
    {
      v9 = 24;
    }

    [v7 addEventForCSSearchableItems:v9 items:*(*(*(a1 + 72) + 8) + 40)];
  }

  else
  {
    [*(a1 + 32) logFlag:22 message:@"completed"];
    v8 = +[SKGActivityJournal sharedJournal];
    [v8 addEventForCSSearchableItems:19 items:*(*(*(a1 + 72) + 8) + 40)];
  }

  (*(*(a1 + 56) + 16))();
  [*(a1 + 32) end];
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v10 = SKGLogInit();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_98_cold_1(a1, v10);
    }
  }

  v11 = SKGLogEventInit();
  v12 = v11;
  v13 = *(a1 + 88);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v12, OS_SIGNPOST_INTERVAL_END, v13, "CSPriorityUpdaterIndexItems", "", buf, 2u);
  }

  v14 = SKGLogEventInit();
  v15 = v14;
  v16 = *(a1 + 96);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v15, OS_SIGNPOST_INTERVAL_END, v16, "CSPriorityUpdaterHandleDonation", "", v17, 2u);
  }

  (*(*(a1 + 64) + 16))();
}

void __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_97_cold_1(void *a1, NSObject *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v5 = [(CSEventListenerDonation *)a1[5] indexTypeName];
  v6 = a1[6];
  v7 = a1[14];
  v8 = 138413058;
  v9 = v4;
  v10 = 2080;
  v11 = v5;
  v12 = 2112;
  v13 = v6;
  v14 = 2048;
  v15 = v7;
  _os_log_debug_impl(&dword_231B25000, a2, OS_LOG_TYPE_DEBUG, "### %@ %s sn: %@ found %lu items", &v8, 0x2Au);
}

void __79__CSPriorityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_98_cold_1(uint64_t *a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [(CSEventListenerDonation *)a1[5] indexTypeName];
  v5 = a1[6];
  v6 = a1[10];
  v7 = 136315650;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  v11 = 2048;
  v12 = v6;
  _os_log_debug_impl(&dword_231B25000, a2, OS_LOG_TYPE_DEBUG, "### %s sn: %@ updated %lu items", &v7, 0x20u);
}

@end