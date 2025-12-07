@interface CSEmbeddingsUpdater
- (BOOL)handleDonation:(id)donation turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block;
- (BOOL)isAcceptingJournals;
- (BOOL)journalItemHasItemEmbeddingsSN:(id)n;
- (BOOL)journalItemHasNeedsEmbedding:(id)embedding;
- (BOOL)shouldHandleJournalItem:(id)item bundleID:(id)d;
- (CSEmbeddingsUpdater)init;
- (id)allowedBundlesFromUserDefaults;
- (id)description;
- (id)excludeBundleIDs;
- (id)getEmbeddingWithCache2:(id)cache2 key:(id)key bundleId:(id)id;
- (id)getEmbeddingWithCache:(id)cache key:(id)key bundleId:(id)id;
- (uint64_t)activityJournal;
- (uint64_t)asyncIndexProcessors;
- (uint64_t)defaults;
- (uint64_t)skgProcessor;
- (uint64_t)skgProcessorContext;
- (void)setActivityJournal:(uint64_t)journal;
- (void)setAsyncIndexProcessors:(uint64_t)processors;
- (void)setDefaults:(uint64_t)defaults;
- (void)setSkgProcessor:(uint64_t)processor;
- (void)setSkgProcessorContext:(uint64_t)context;
- (void)storeEmbeddingWithCache2:(id)cache2 key:(id)key attributeSet:(id)set bundle:(id)bundle;
- (void)storeEmbeddingWithCache:(id)cache key:(id)key attributeSet:(id)set;
@end

@implementation CSEmbeddingsUpdater

- (CSEmbeddingsUpdater)init
{
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v3 = SKGLogEmbedInit();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231B25000, v3, OS_LOG_TYPE_INFO, "Initializing CSSearchableIndexAsyncProcessors for CSEmbeddingsUpdater", buf, 2u);
    }
  }

  v4 = objc_opt_new();
  v5 = 0;
  do
  {
    v6 = [CSSearchableIndexAsyncProcessor alloc];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%u", "CSEmbeddingsUpdater", v5];
    v8 = [(CSSearchableIndexAsyncProcessor *)v6 initWithName:v7];
    [v4 addObject:v8];

    v5 = (v5 + 1);
  }

  while (v5 != 8);
  v9 = [v4 copy];
  asyncIndexProcessors = self->_asyncIndexProcessors;
  self->_asyncIndexProcessors = v9;

  mEMORY[0x277D65798] = [MEMORY[0x277D65798] sharedProcessor];
  skgProcessor = self->_skgProcessor;
  self->_skgProcessor = mEMORY[0x277D65798];

  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  skgProcessorContext = self->_skgProcessorContext;
  self->_skgProcessorContext = mEMORY[0x277D657A0];

  v15 = +[SKGActivityJournal sharedJournal];
  activityJournal = self->_activityJournal;
  self->_activityJournal = v15;

  v17 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"SKGUpdaters"];
  defaults = self->_defaults;
  self->_defaults = v17;

  return self;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  taskName = [(CSEmbeddingsUpdater *)self taskName];
  v6 = [v3 initWithFormat:@"<%@:%p; %@>", v4, self, taskName];

  return v6;
}

- (BOOL)isAcceptingJournals
{
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  enableEmbeddings = [mEMORY[0x277D657A0] enableEmbeddings];

  return enableEmbeddings;
}

- (id)excludeBundleIDs
{
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  embeddingExcludeBundles = [mEMORY[0x277D657A0] embeddingExcludeBundles];

  return embeddingExcludeBundles;
}

- (BOOL)journalItemHasNeedsEmbedding:(id)embedding
{
  v8 = 0uLL;
  v9 = 0;
  [(CSEventDonationJournalItem *)embedding attrDictObj];
  PlistObjectForKey = _MDPlistDictionaryGetPlistObjectForKey();
  if (PlistObjectForKey)
  {
    v6 = v8;
    v7 = v9;
    PlistObjectType = _MDPlistGetPlistObjectType();
    if ((PlistObjectType - 226) < 2 || PlistObjectType == 51 || PlistObjectType == 35)
    {
      v6 = v8;
      v7 = v9;
      LOBYTE(PlistObjectForKey) = _MDPlistNumberGetIntValue() != 0;
    }

    else
    {
      LOBYTE(PlistObjectForKey) = 0;
    }
  }

  return PlistObjectForKey;
}

- (BOOL)journalItemHasItemEmbeddingsSN:(id)n
{
  v8 = 0uLL;
  v9 = 0;
  [(CSEventDonationJournalItem *)n attrDictObj];
  PlistObjectForKey = _MDPlistDictionaryGetPlistObjectForKey();
  if (PlistObjectForKey)
  {
    v6 = v8;
    v7 = v9;
    PlistObjectType = _MDPlistGetPlistObjectType();
    if ((PlistObjectType - 226) < 2 || PlistObjectType == 51 || PlistObjectType == 35)
    {
      v6 = v8;
      v7 = v9;
      LOBYTE(PlistObjectForKey) = _MDPlistNumberGetIntValue() != 0;
    }

    else
    {
      LOBYTE(PlistObjectForKey) = 0;
    }
  }

  return PlistObjectForKey;
}

- (BOOL)shouldHandleJournalItem:(id)item bundleID:(id)d
{
  itemCopy = item;
  if ([(CSEmbeddingsUpdater *)self isAcceptingJournals]&& [(CSEmbeddingsUpdater *)self journalItemHasNeedsEmbedding:itemCopy])
  {
    v6 = ![(CSEmbeddingsUpdater *)self journalItemHasItemEmbeddingsSN:itemCopy];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)storeEmbeddingWithCache:(id)cache key:(id)key attributeSet:(id)set
{
  if (cache)
  {
    keyCopy = key;
    cacheCopy = cache;
    v10 = [EmbeddingCacheUtil serialize:set];
    uTF8String = [keyCopy UTF8String];

    [cacheCopy put:uTF8String value:v10];
  }
}

- (void)storeEmbeddingWithCache2:(id)cache2 key:(id)key attributeSet:(id)set bundle:(id)bundle
{
  if (cache2)
  {
    bundleCopy = bundle;
    keyCopy = key;
    cache2Copy = cache2;
    v14 = [EmbeddingCacheUtil serialize:set];
    uTF8String = [keyCopy UTF8String];

    uTF8String2 = [bundleCopy UTF8String];
    [cache2Copy put:uTF8String value:v14 bundle:uTF8String2];
  }
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

- (id)getEmbeddingWithCache:(id)cache key:(id)key bundleId:(id)id
{
  v5 = 0;
  if (cache && key && id)
  {
    keyCopy = key;
    cacheCopy = cache;
    v10 = [cacheCopy get:{objc_msgSend(key, "UTF8String")}];

    v5 = [EmbeddingCacheUtil deserialize:v10];
  }

  return v5;
}

- (id)getEmbeddingWithCache2:(id)cache2 key:(id)key bundleId:(id)id
{
  v5 = 0;
  if (cache2 && key && id)
  {
    keyCopy = key;
    idCopy = id;
    cache2Copy = cache2;
    uTF8String = [key UTF8String];
    uTF8String2 = [idCopy UTF8String];

    v14 = [cache2Copy get:uTF8String bundle:uTF8String2];

    v5 = [EmbeddingCacheUtil deserialize:v14];
  }

  return v5;
}

- (BOOL)handleDonation:(id)donation turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block
{
  v153[2] = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  handlerCopy = handler;
  blockCopy = block;
  v141 = 0;
  v142 = &v141;
  v143 = 0x2020000000;
  v144 = 0;
  [CSEventFeedback elapsedTimeSinceFlushForEvent:14];
  if (v9 > 60.0)
  {
    [(SKGProcessor *)self->_skgProcessor loadEmbedder];
    +[CSEventFeedback logEmbeddingPrewarmRequestTime];
  }

  context = objc_autoreleasePoolPush();
  v10 = SKGLogEmbedInit();
  v11 = os_signpost_id_generate(v10);

  v12 = SKGLogEmbedInit();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "HandleDonation", "", buf, 2u);
  }

  v14 = objc_alloc_init(CSEventFeedback);
  [(CSEventFeedback *)v14 setIndexType:[(CSEventListenerManager *)donationCopy folderFd]];
  [(CSEventFeedback *)v14 start];
  embeddingFetchAttributes = [(SKGProcessorContext *)self->_skgProcessorContext embeddingFetchAttributes];
  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalMap](donationCopy)];
  v80 = [v15 initWithString:v16];
  v79 = v14;

  if (v80)
  {
    v17 = v80;
  }

  else
  {
    v17 = @"unknown";
  }

  [(CSEventFeedback *)v14 setBundleID:v17];
  allowedBundlesFromUserDefaults = [(CSEmbeddingsUpdater *)self allowedBundlesFromUserDefaults];
  if (allowedBundlesFromUserDefaults && ([allowedBundlesFromUserDefaults containsObject:v80] & 1) == 0)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 7)
    {
      v54 = SKGLogEmbedInit();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        [CSEmbeddingsUpdater handleDonation:v80 turboEnabled:allowedBundlesFromUserDefaults completionHandler:v54 cancelBlock:?];
      }
    }

    v55 = 0;
    v56 = *(v142 + 24);
  }

  else
  {
    v18 = objc_alloc(MEMORY[0x277CCACA8]);
    protectionClass = [(CSEventListenerDonation *)donationCopy protectionClass];
    v20 = [v18 initWithString:protectionClass];

    v21 = [EmbeddingCache sharedInstanceWithType:[(CSEventListenerManager *)donationCopy folderFd]];
    v139[0] = 0;
    v139[1] = v139;
    v139[2] = 0x2020000000;
    v140 = 0;
    *buf = 0;
    v134 = buf;
    v135 = 0x3032000000;
    v136 = __Block_byref_object_copy__1;
    v137 = __Block_byref_object_dispose__1;
    v138 = 0;
    v131[0] = 0;
    v131[1] = v131;
    v131[2] = 0x3032000000;
    v131[3] = __Block_byref_object_copy__1;
    v131[4] = __Block_byref_object_dispose__1;
    v132 = 0;
    v130[0] = 0;
    v130[1] = v130;
    v130[2] = 0x2020000000;
    v130[3] = 0;
    v126 = 0;
    v127 = &v126;
    v128 = 0x2020000000;
    v129 = 0;
    v125[0] = 0;
    v125[1] = v125;
    v125[2] = 0x2020000000;
    v125[3] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke;
    aBlock[3] = &unk_27893CB88;
    v123 = blockCopy;
    v124 = v139;
    v22 = _Block_copy(aBlock);
    v112[0] = MEMORY[0x277D85DD0];
    v112[1] = 3221225472;
    v112[2] = __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2;
    v112[3] = &unk_27893CBB0;
    v23 = v14;
    v121 = v11;
    v113 = v23;
    v117 = v139;
    v24 = v80;
    v114 = v24;
    v25 = donationCopy;
    v115 = v25;
    v118 = &v126;
    v119 = buf;
    v120 = v125;
    v26 = v21;
    v116 = v26;
    v74 = _Block_copy(v112);
    v111 = 0;
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v27 = SKGLogEmbedInit();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        indexTypeName = [(CSEventListenerDonation *)v25 indexTypeName];
        totalJournalSize = [(CSEventListenerManager *)v25 totalJournalSize];
        getItemCount = [v25 getItemCount];
        *v145 = 138413058;
        *v146 = self;
        *&v146[8] = 2080;
        *&v146[10] = indexTypeName;
        *&v146[18] = 2048;
        v147 = totalJournalSize;
        v148 = 1024;
        LODWORD(v149) = getItemCount;
        _os_log_impl(&dword_231B25000, v27, OS_LOG_TYPE_INFO, "### donation %@ %s sn:%llu total incoming %u items", v145, 0x26u);
      }
    }

    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_34;
    v95[3] = &unk_27893CCA0;
    v31 = v25;
    v96 = v31;
    selfCopy = self;
    v69 = v24;
    v98 = v69;
    v104 = &v126;
    v32 = v22;
    v103 = v32;
    v105 = v130;
    v68 = v23;
    v99 = v68;
    v106 = v131;
    enabledCopy = enabled;
    v100 = embeddingFetchAttributes;
    v107 = buf;
    v33 = v26;
    v101 = v33;
    v109 = &v111;
    v70 = v20;
    v102 = v70;
    v108 = v125;
    [v31 iterateItems:v95];
    v34 = objc_opt_new();
    v35 = v127[3];
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalMap](v31)];
    [v34 logEmbeddingDonationItemCounts:v35 bundleId:v36];

    if (v33)
    {
      [v33 flush];
      if (SKGLogGetCurrentLoggingLevel() >= 7)
      {
        v37 = SKGLogEmbedInit();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          hitRate = [v33 hitRate];
          indexTypeName2 = [(CSEventListenerDonation *)v31 indexTypeName];
          itemCount = [v33 itemCount];
          *v145 = 67109634;
          *v146 = hitRate;
          *&v146[4] = 2080;
          *&v146[6] = indexTypeName2;
          *&v146[14] = 1024;
          *&v146[16] = itemCount;
          _os_log_debug_impl(&dword_231B25000, v37, OS_LOG_TYPE_DEBUG, "### EmbeddingCache HitRate = %u%%, (%s) Total Items = %u", v145, 0x18u);
        }
      }

      activityJournal = self->_activityJournal;
      v152[0] = &unk_2846E7638;
      v39 = MEMORY[0x277CCACA8];
      folderFd = [(CSEventListenerManager *)v31 folderFd];
      v41 = [v39 stringWithUTF8String:getCSIndexTypeShortNameCString(folderFd)];
      v152[1] = &unk_2846E7650;
      v153[0] = v41;
      v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v33, "hitRate")}];
      v153[1] = v42;
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v153 forKeys:v152 count:2];
      [(SKGActivityJournal *)activityJournal addEventWithType:53 params:v43];
    }

    v73 = v32[2](v32);
    if (v73)
    {
      v44 = self->_activityJournal;
      v150 = &unk_2846E75C0;
      v151 = v69;
      v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
      [(SKGActivityJournal *)v44 addEventWithType:32 params:v45];

      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v46 = SKGLogEmbedInit();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          taskName = [(CSEmbeddingsUpdater *)self taskName];
          v48 = taskName;
          uTF8String = [taskName UTF8String];
          indexTypeName3 = [(CSEventListenerDonation *)v31 indexTypeName];
          totalJournalSize2 = [(CSEventListenerManager *)v31 totalJournalSize];
          *v145 = 136315650;
          *v146 = uTF8String;
          *&v146[8] = 2080;
          *&v146[10] = indexTypeName3;
          *&v146[18] = 2048;
          v147 = totalJournalSize2;
          _os_log_impl(&dword_231B25000, v46, OS_LOG_TYPE_INFO, "### cancelling %s due to expiration request while processing type='%s' sn:'%llu'", v145, 0x20u);
        }
      }

      v74[2]();
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
    }

    else
    {
      v52 = *(v134 + 5);
      if (v52)
      {
        v53 = [v52 count];
      }

      else
      {
        v53 = 0;
      }

      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v57 = SKGLogEmbedInit();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          indexTypeName4 = [(CSEventListenerDonation *)v31 indexTypeName];
          totalJournalSize3 = [(CSEventListenerManager *)v31 totalJournalSize];
          *v145 = 138413058;
          *v146 = self;
          *&v146[8] = 2080;
          *&v146[10] = indexTypeName4;
          *&v146[18] = 2048;
          v147 = totalJournalSize3;
          v148 = 2048;
          v149 = v53;
          _os_log_impl(&dword_231B25000, v57, OS_LOG_TYPE_INFO, "### donation %@ %s sn:%llu found %lu items", v145, 0x2Au);
        }
      }

      if (v53 && ([(CSEmbeddingsUpdater *)self getProcessorForIndexType:[(CSEventListenerManager *)v31 folderFd]], (v60 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v61 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CSEmbeddingsUpdater-Indexing-%d", -[CSEventListenerManager folderFd](v31)];
        v62 = +[SKGEventsProfiler sharedInstance];
        v82[0] = MEMORY[0x277D85DD0];
        v82[1] = 3221225472;
        v82[2] = __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_101;
        v82[3] = &unk_27893CCF0;
        v82[4] = self;
        v83 = v31;
        v90 = &v141;
        v91 = buf;
        v92 = v53;
        v63 = v60;
        v84 = v63;
        v85 = v70;
        v86 = v69;
        v93 = 32;
        v87 = v68;
        v88 = v74;
        v89 = handlerCopy;
        v94 = v111;
        [v62 profileCodeWithType:v61 kind:1 block:v82];
      }

      else
      {
        v74[2]();
      }
    }

    _Block_object_dispose(v125, 8);
    _Block_object_dispose(&v126, 8);
    _Block_object_dispose(v130, 8);
    _Block_object_dispose(v131, 8);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(v139, 8);

    v55 = v73 ^ 1;
    v56 = 1;
  }

  objc_autoreleasePoolPop(context);
  if (v55)
  {
    v56 = *(v142 + 24);
  }

  _Block_object_dispose(&v141, 8);

  return v56 & 1;
}

uint64_t __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) end];
  v2 = SKGLogEmbedInit();
  v3 = v2;
  v4 = *(a1 + 96);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = *(*(*(a1 + 64) + 8) + 24);
    v13 = *(a1 + 40);
    v6 = [(CSEventListenerManager *)*(a1 + 48) folderFd];
    v7 = [*(a1 + 48) getItemCount];
    v8 = *(*(*(a1 + 72) + 8) + 24);
    v9 = [*(*(*(a1 + 80) + 8) + 40) count];
    v10 = *(*(*(a1 + 88) + 8) + 24);
    v11 = [*(a1 + 56) hitRate];
    v12 = [*(a1 + 56) itemCount];
    *buf = 67111170;
    v15 = v5;
    v16 = 2112;
    v17 = v13;
    v18 = 1024;
    v19 = v6;
    v20 = 1024;
    v21 = v7;
    v22 = 2048;
    v23 = v8;
    v24 = 2048;
    v25 = v9;
    v26 = 2048;
    v27 = v10;
    v28 = 1024;
    v29 = v11;
    v30 = 1024;
    v31 = v12;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v3, OS_SIGNPOST_INTERVAL_END, v4, "HandleDonation", "didCancel=%{BOOL}d bundle=%@ indexType=%d totalItemsCount=%u donationsWithNeedsEmbedding=%lu processedItemsCount=%lu embeddingsCount=%lu cacheHitRate=%u cacheItemCount=%u", buf, 0x48u);
  }
}

uint64_t __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CSEmbeddingsUpdater-%d", -[CSEventListenerManager folderFd](*(a1 + 32))];
  v6 = +[SKGEventsProfiler sharedInstance];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_39;
  v20[3] = &unk_27893CC78;
  v7 = v3;
  v21 = v7;
  v19 = *(a1 + 40);
  v8 = *(a1 + 48);
  v18 = *(a1 + 88);
  v9 = v18;
  v27 = v18;
  v10 = *(a1 + 32);
  v28 = *(a1 + 104);
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v19;
  *(&v13 + 1) = v8;
  v22 = v13;
  v23 = v12;
  v29 = *(a1 + 112);
  v32 = *(a1 + 144);
  v14 = *(a1 + 64);
  v15 = *(a1 + 120);
  v24 = v14;
  v30 = v15;
  v25 = *(a1 + 72);
  v26 = *(a1 + 80);
  v31 = *(a1 + 128);
  v16 = [v6 profileCodeWithType:v5 kind:1 block:v20];

  objc_autoreleasePoolPop(v4);
  return v16;
}

uint64_t __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_39(uint64_t a1, void *a2)
{
  v149 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [(CSEventDonationJournalItem *)*(a1 + 32) identifier];
  v4 = MDJournalReaderMDPlistObjectCopy();
  v5 = [v4 mutableCopy];

  v6 = (a1 + 48);
  [*(*(a1 + 40) + 32) addEventForItem:15 bundleID:*(a1 + 48) identifier:v5];
  if ([*(a1 + 40) journalItemHasNeedsEmbedding:*(a1 + 32)])
  {
    ++*(*(*(a1 + 104) + 8) + 24);
  }

  if ([*(a1 + 40) shouldHandleJournalItem:*(a1 + 32) bundleID:*(a1 + 48)])
  {
    if (SKGLogGetCurrentLoggingLevel() >= 7)
    {
      v7 = SKGLogEmbedInit();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_39_cold_1((a1 + 32));
      }
    }

    v8 = [SKGUpdaterStore instanceForIndexType:[(CSEventListenerManager *)*(a1 + 56) folderFd]];
    if (v8)
    {
      v9 = [(CSEventListenerManager *)*(a1 + 56) journalMap];
      *(*(*(a1 + 112) + 8) + 24) = [v8 readSerialNumberFromBundleID:v9 identifier:objc_msgSend(v5 UUID:"UTF8String") listenerType:{-[CSEventListenerManager journalQueue](*(a1 + 56)), objc_msgSend(*(a1 + 40), "eventType")}];
      if ([(CSEventListenerManager *)*(a1 + 56) totalJournalSize]< *(*(*(a1 + 112) + 8) + 24))
      {
        if (SKGLogGetCurrentLoggingLevel() >= 7)
        {
          v10 = SKGLogEmbedInit();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v93 = *(a1 + 40);
            v94 = [(CSEventListenerManager *)*(a1 + 56) totalJournalSize];
            v95 = *(*(*(a1 + 112) + 8) + 24);
            v96 = [(CSEventListenerManager *)*(a1 + 56) journalMap];
            *buf = 138413314;
            *&buf[4] = v93;
            v141 = 2048;
            v142 = v94;
            v143 = 2048;
            v144 = v95;
            v145 = 2080;
            v146 = v96;
            v147 = 2112;
            v148 = v5;
            _os_log_debug_impl(&dword_231B25000, v10, OS_LOG_TYPE_DEBUG, "%@ SKIPPING item serialNumber:%llu < latestSerialNumber:%llu | bundle:%s identifier:%@", buf, 0x34u);
          }
        }

        [*(*(a1 + 40) + 32) addEventForItem:30 bundleID:*(a1 + 48) identifier:v5];
        v3[2](v3, @"skipped");
        v11 = (*(*(a1 + 96) + 16))();
        goto LABEL_75;
      }
    }

    [*(a1 + 64) setNumItemsInBatch:{objc_msgSend(*(a1 + 64), "numItemsInBatch") + 1}];
    v12 = *(*(a1 + 120) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;

    v107 = v8;
    if ((*(a1 + 152) & 1) != 0 || [*(*(a1 + 40) + 16) canProcessEvent] && objc_msgSend(*(a1 + 64), "canProcessEvent:", &unk_2846E75A8))
    {
      v14 = [*(a1 + 32) attributesForKeys:*(a1 + 72) bundleID:*(a1 + 48)];
      if (v14)
      {
        v15 = v14;
        v16 = [MEMORY[0x277D65798] sharedProcessor];
        v17 = [v16 canProcessEventForRecord:v15 bundleIdentifier:*v6];

        v106 = v15;
        v18 = v3;
        if (!v17)
        {
          v21 = 0;
          v20 = 1;
          v105 = 1;
          goto LABEL_26;
        }

        v19 = [MEMORY[0x277D65798] sharedProcessor];
        v105 = [v19 shouldGenerateEmbeddingsForRecord:v15 bundleID:*v6];

        v20 = 1;
LABEL_25:
        v21 = 1;
LABEL_26:
        v22 = [*(a1 + 48) UTF8String];
        v23 = [v5 UTF8String];
        v24 = [(CSEventListenerManager *)*(a1 + 56) journalQueue];
        v25 = [v107 checkPriorityForBundleID:v22 identifier:v23 UUID:v24 serialNumber:-[CSEventListenerManager totalJournalSize](*(a1 + 56)) defaultIfNotExists:1];
        v26 = v25;
        if (v107 && (v25 & 1) == 0)
        {
          v27 = [*(a1 + 48) UTF8String];
          v28 = [v5 UTF8String];
          v29 = [(CSEventListenerManager *)*(a1 + 56) journalQueue];
          [v107 removePriorityForBundleID:v27 identifier:v28 UUID:v29 serialNumber:-[CSEventListenerManager totalJournalSize](*(a1 + 56))];
          v20 = 0;
        }

        v3 = v18;
        if (!v21)
        {
          goto LABEL_74;
        }

        v30 = objc_alloc_init(MEMORY[0x277CC34B8]);
        v31 = *(*(a1 + 120) + 8);
        v32 = *(v31 + 40);
        *(v31 + 40) = v30;

        v33 = *MEMORY[0x277CBEEE8];
        [*(*(*(a1 + 120) + 8) + 40) setAttribute:*MEMORY[0x277CBEEE8] forKey:@"_kMDItemNeedsEmbeddings"];
        v34 = 0x277CC3000;
        if ((v20 & v105 & 1) == 0)
        {
          v48 = objc_alloc_init(MEMORY[0x277CC34B8]);
          v49 = *(*(a1 + 120) + 8);
          v50 = *(v49 + 40);
          *(v49 + 40) = v48;

          [*(*(*(a1 + 120) + 8) + 40) setAttribute:v33 forKey:@"_kMDItemNeedsEmbeddings"];
          if (v105)
          {
            v51 = @"cannot-process-emb";
          }

          else
          {
            v57 = *(*(*(a1 + 120) + 8) + 40);
            v58 = MEMORY[0x277CCABB0];
            v59 = [MEMORY[0x277D657A0] sharedContext];
            v60 = [v58 numberWithInteger:{objc_msgSend(v59, "embeddingVersion")}];
            [v57 setAttribute:v60 forKey:@"kMDItemEmbeddingVersion"];

            v61 = *(*(*(a1 + 120) + 8) + 40);
            v62 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[CSEventListenerManager totalJournalSize](*(a1 + 56))];
            updateAttributeSetForEvents(v61, @"_kMDItemEmbeddingsSN", v62);

            v51 = @"marked-emb-complete";
          }

          v42 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v5 domainIdentifier:0 attributeSet:*(*(*(a1 + 120) + 8) + 40)];
          [v42 setBundleID:*(a1 + 48)];
          [v42 setIsUpdate:1];
          v63 = *(*(*(a1 + 128) + 8) + 40);
          if (!v63)
          {
            v64 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v65 = *(*(a1 + 128) + 8);
            v66 = *(v65 + 40);
            *(v65 + 40) = v64;

            v63 = *(*(*(a1 + 128) + 8) + 40);
          }

          [v63 addObject:v42];
          [*(a1 + 64) logFlag:10 message:@"ignored"];
          [*(*(a1 + 40) + 32) addEventForItem:31 bundleID:*(a1 + 48) identifier:v5];
          v3[2](v3, v51);
          goto LABEL_70;
        }

        v35 = SKGLogEventInit();
        v36 = os_signpost_id_generate(v35);

        v37 = SKGLogEventInit();
        v38 = v37;
        v104 = v36 - 1;
        if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_231B25000, v38, OS_SIGNPOST_INTERVAL_BEGIN, v36, "CSEmbeddingsUpdaterProcessSingleItem", "", buf, 2u);
        }

        spid = v36;

        *buf = 2;
        v39 = *(a1 + 48);
        v40 = *(*(a1 + 40) + 16);
        v135 = 0;
        v41 = [v40 extractContentFromRecord:v106 bundleID:v39 content:&v135 maxChunkCountPtr:buf textLength:0];
        v42 = v135;
        if (v41)
        {
          v43 = [MEMORY[0x277D65798] normalizeForEmbeddingGeneration:v42 bundleID:*v6];

          v42 = v43;
        }

        v44 = _os_feature_enabled_impl();
        v45 = *(a1 + 80);
        v46 = *(a1 + 40);
        v47 = *(a1 + 48);
        if (v44)
        {
          [v46 getEmbeddingWithCache2:v45 key:v42 bundleId:v47];
        }

        else
        {
          [v46 getEmbeddingWithCache:v45 key:v42 bundleId:v47];
        }
        v52 = ;
        CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
        v103 = v52;
        if (v52)
        {
          if (CurrentLoggingLevel >= 7)
          {
            v34 = SKGLogEmbedInit();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_39_cold_2(a1 + 48, v42);
            }
          }

          [v52 setAttribute:v33 forKey:@"_kMDItemNeedsEmbeddings"];
          v54 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[CSEventListenerManager totalJournalSize](*(a1 + 56))];
          updateAttributeSetForEvents(v52, @"_kMDItemEmbeddingsSN", v54);

          objc_storeStrong((*(*(a1 + 120) + 8) + 40), v52);
          v55 = [*(*(*(a1 + 120) + 8) + 40) primaryTextEmbedding];
          if (v55)
          {
            v100 = [*(*(*(a1 + 120) + 8) + 40) primaryTextEmbedding];
            v34 = [v100 vectors];
            v56 = [v34 count];
          }

          else
          {
            v56 = 0;
          }

          v75 = [*(*(*(a1 + 120) + 8) + 40) secondaryTextEmbedding];
          if (v75)
          {
            v76 = [*(*(*(a1 + 120) + 8) + 40) secondaryTextEmbedding];
            v77 = [v76 vectors];
            v56 += [v77 count];
          }

          if (v55)
          {
          }

          v78 = *(a1 + 48);
          v79 = *(*(a1 + 40) + 32);
          v138[0] = &unk_2846E75C0;
          v138[1] = &unk_2846E75D8;
          v139[0] = v78;
          v139[1] = v5;
          v138[2] = &unk_2846E75F0;
          v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v56];
          v139[2] = v80;
          v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v139 forKeys:v138 count:3];
          [v79 addEventWithType:28 params:v81];

          if (!v56)
          {
            goto LABEL_66;
          }

          v82 = *(a1 + 64);
          v74 = [*(*(*(a1 + 120) + 8) + 40) bundleIdentifier];
          v136 = &unk_2846E75A8;
          v83 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v56];
          v137 = v83;
          v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
          [v82 logCachedItemForBundleID:v74 counts:v84];
        }

        else
        {
          if (CurrentLoggingLevel >= 7)
          {
            v67 = SKGLogEmbedInit();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_39_cold_3(a1 + 48, v42);
            }
          }

          v97 = *(*(a1 + 40) + 16);
          v98 = *(a1 + 88);
          v99 = *(a1 + 144);
          v101 = *(a1 + 48);
          v129[0] = MEMORY[0x277D85DD0];
          v129[1] = 3221225472;
          v129[2] = __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_76;
          v129[3] = &unk_27893CBD8;
          v133 = *(a1 + 96);
          v130 = v107;
          v131 = *(a1 + 56);
          v68 = v5;
          v69 = *(a1 + 112);
          v132 = v68;
          v134 = v69;
          v124[0] = MEMORY[0x277D85DD0];
          v124[1] = 3221225472;
          v124[2] = __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_78;
          v124[3] = &unk_27893CC00;
          v125 = v130;
          v126 = *(a1 + 56);
          v70 = v68;
          v71 = *(a1 + 112);
          v127 = v70;
          v128 = v71;
          v111[0] = MEMORY[0x277D85DD0];
          v111[1] = 3221225472;
          v111[2] = __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_3;
          v111[3] = &unk_27893CC28;
          v121 = *(a1 + 120);
          v112 = v125;
          v123 = v26;
          v113 = *(a1 + 48);
          v114 = v70;
          v115 = *(a1 + 56);
          v116 = *(a1 + 64);
          v117 = v42;
          v72 = *(a1 + 80);
          v73 = *(a1 + 40);
          v118 = v72;
          v119 = v73;
          v122 = *(a1 + 136);
          v120 = v3;
          v109[0] = MEMORY[0x277D85DD0];
          v109[1] = 3221225472;
          v109[2] = __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_89;
          v109[3] = &unk_27893CC50;
          v110 = *(a1 + 96);
          [v97 enumerateProcessedItemsFromRecord:v106 referenceIdentifier:v114 bundleIdentifier:v101 protectionClass:v98 processorFlags:2 workCost:v99 fetchCachedLanguageBlock:v129 cacheLanguageBlock:v124 processedItemBlock:v111 cancelBlock:v109];

          v74 = v133;
        }

LABEL_66:
        v85 = SKGLogEventInit();
        v86 = v85;
        if (v104 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v85))
        {
          *v108 = 0;
          _os_signpost_emit_with_name_impl(&dword_231B25000, v86, OS_SIGNPOST_INTERVAL_END, spid, "CSEmbeddingsUpdaterProcessSingleItem", "", v108, 2u);
        }

LABEL_70:
        if (*(*(*(a1 + 120) + 8) + 40))
        {
          v87 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v5 domainIdentifier:0 attributeSet:*(*(*(a1 + 120) + 8) + 40)];
          [v87 setBundleID:*(a1 + 48)];
          [v87 setIsUpdate:1];
          v88 = *(*(*(a1 + 128) + 8) + 40);
          if (!v88)
          {
            v89 = objc_opt_new();
            v90 = *(*(a1 + 128) + 8);
            v91 = *(v90 + 40);
            *(v90 + 40) = v89;

            v88 = *(*(*(a1 + 128) + 8) + 40);
          }

          [v88 addObject:v87];
        }

LABEL_74:
        v11 = (*(*(a1 + 96) + 16))();

        v8 = v107;
LABEL_75:

        goto LABEL_76;
      }

      v18 = v3;
      v106 = 0;
      v20 = 1;
    }

    else
    {
      v18 = v3;
      v106 = 0;
      v20 = 0;
    }

    v105 = 1;
    goto LABEL_25;
  }

  [*(*(a1 + 40) + 32) addEventForItem:29 bundleID:*(a1 + 48) identifier:v5];
  v3[2](v3, @"skipped");
  v11 = (*(*(a1 + 96) + 16))();
LABEL_76:

  return v11;
}

id __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_76(uint64_t a1)
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

uint64_t __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_78(uint64_t a1, void *a2)
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

uint64_t __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = attributeSetForProcessedItem(v3);
  v5 = *(*(a1 + 104) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = 0x277CCA000uLL;
  if (*(*(*(a1 + 104) + 8) + 40))
  {
    v8 = *(a1 + 32);
    if (v8 && *(a1 + 120) == 1)
    {
      v9 = [*(a1 + 40) UTF8String];
      v10 = [*(a1 + 48) UTF8String];
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

    v25 = *(a1 + 64);
    v26 = [v3 bundleIdentifier];
    v27 = [v3 textContentLanguage];
    v28 = [v3 textContentSize];
    v53 = &unk_2846E75A8;
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
    v54[0] = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
    [v25 logProcessedItemForBundleID:v26 language:v27 textSize:v28 counts:v30];

    if (*(a1 + 72) && *(a1 + 80) && *(*(*(a1 + 104) + 8) + 40) && v18 && ([v3 errorProcessingEmbeddings] & 1) == 0)
    {
      v31 = _os_feature_enabled_impl();
      v33 = *(a1 + 80);
      v32 = *(a1 + 88);
      v34 = *(a1 + 72);
      v35 = *(*(*(a1 + 104) + 8) + 40);
      if (v31)
      {
        [v32 storeEmbeddingWithCache2:v33 key:v34 attributeSet:v35 bundle:*(a1 + 40)];
      }

      else
      {
        [v32 storeEmbeddingWithCache:v33 key:v34 attributeSet:v35];
      }
    }

    if ([v3 errorProcessingEmbeddings])
    {
      v36 = *(a1 + 64);
      v37 = *(a1 + 40);
      v51 = &unk_2846E7608;
      v52 = &unk_2846E7620;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      [v36 logErrorItemForBundleID:v37 counts:v38];

      v7 = 0x277CCA000;
    }

    else
    {
      v39 = *(*(*(a1 + 104) + 8) + 40);
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[CSEventListenerManager totalJournalSize](*(a1 + 56))];
      updateAttributeSetForEvents(v39, @"_kMDItemEmbeddingsSN", v40);

      v7 = 0x277CCA000uLL;
    }
  }

  else
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v19 = SKGLogEmbedInit();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 40);
        v21 = *(a1 + 48);
        *buf = 138412546;
        v48 = v20;
        v49 = 2112;
        v50 = v21;
        _os_log_impl(&dword_231B25000, v19, OS_LOG_TYPE_DEFAULT, "Nil attribute set (_kMDItemNeedsEmbeddings will be cleared) for %@, %@", buf, 0x16u);
      }
    }

    v22 = objc_alloc_init(MEMORY[0x277CC34B8]);
    v23 = *(*(a1 + 104) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    [*(a1 + 64) logFlag:10 message:@"ignored"];
    v18 = 0;
  }

  [*(a1 + 88) recordEmbeddingForThroughput:*(a1 + 40) count:v18];
  v41 = *(*(a1 + 88) + 32);
  v42 = [*(v7 + 2992) numberWithUnsignedInteger:{v18, &unk_2846E75C0, &unk_2846E75D8, &unk_2846E75F0, *(a1 + 40), *(a1 + 48)}];
  v46[2] = v42;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:3];
  [v41 addEventWithType:27 params:v43];

  *(*(*(a1 + 112) + 8) + 24) += v18;
  [*(*(*(a1 + 104) + 8) + 40) setAttribute:*MEMORY[0x277CBEEE8] forKey:@"_kMDItemNeedsEmbeddings"];
  (*(*(a1 + 96) + 16))();

  return 1;
}

uint64_t __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_101(uint64_t a1, void *a2)
{
  v3 = a2;
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v4 = SKGLogEmbedInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_101_cold_1(a1);
    }
  }

  v5 = SKGLogEventInit();
  v6 = os_signpost_id_generate(v5);

  v7 = SKGLogEventInit();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "CSEmbeddingsUpdaterIndexItems", "", buf, 2u);
  }

  *(*(*(a1 + 96) + 8) + 24) = 1;
  [*(*(a1 + 32) + 32) addEventForCSSearchableItems:12 items:*(*(*(a1 + 104) + 8) + 40)];
  v9 = *(*(*(a1 + 104) + 8) + 40);
  v11 = *(a1 + 48);
  v10 = *(a1 + 56);
  v12 = *(a1 + 120);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_102;
  v22[3] = &unk_27893CCC8;
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(a1 + 32);
  v23 = v14;
  v24 = v15;
  v29 = *(a1 + 104);
  v26 = v3;
  v27 = *(a1 + 80);
  v16 = *(a1 + 40);
  v17 = *(a1 + 112);
  v25 = v16;
  v30 = v17;
  v31 = v6;
  v18 = *(a1 + 88);
  v19 = *(a1 + 128);
  v28 = v18;
  v32 = v19;
  v20 = v3;
  [v11 indexSearchableItemsAsync:v9 protectionClass:v10 bundleIdentifier:v13 indexOptions:v12 completion:v22];

  return 1;
}

void __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_102(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = [v5 isEqual:@"CSEmbeddingsUpdaterTimeout"];

    if (v6)
    {
      v7 = 25;
    }

    else
    {
      v7 = 26;
    }

    [*(*(a1 + 40) + 32) addEventForCSSearchableItems:v7 items:*(*(*(a1 + 80) + 8) + 40)];
  }

  else
  {
    [*(a1 + 32) logFlag:22 message:@"completed"];
    [*(*(a1 + 40) + 32) addEventForCSSearchableItems:13 items:*(*(*(a1 + 80) + 8) + 40)];
  }

  (*(*(a1 + 56) + 16))();
  (*(*(a1 + 64) + 16))();
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v8 = SKGLogEmbedInit();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_102_cold_1(a1);
    }
  }

  v9 = SKGLogEventInit();
  v10 = v9;
  v11 = *(a1 + 96);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v10, OS_SIGNPOST_INTERVAL_END, v11, "CSEmbeddingsUpdaterIndexItems", "", v12, 2u);
  }

  (*(*(a1 + 72) + 16))();
}

- (uint64_t)asyncIndexProcessors
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (void)setAsyncIndexProcessors:(uint64_t)processors
{
  if (processors)
  {
    objc_storeStrong((processors + 8), a2);
  }
}

- (uint64_t)skgProcessor
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (void)setSkgProcessor:(uint64_t)processor
{
  if (processor)
  {
    objc_storeStrong((processor + 16), a2);
  }
}

- (uint64_t)skgProcessorContext
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (void)setSkgProcessorContext:(uint64_t)context
{
  if (context)
  {
    objc_storeStrong((context + 24), a2);
  }
}

- (uint64_t)activityJournal
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (void)setActivityJournal:(uint64_t)journal
{
  if (journal)
  {
    objc_storeStrong((journal + 32), a2);
  }
}

- (uint64_t)defaults
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (void)setDefaults:(uint64_t)defaults
{
  if (defaults)
  {
    objc_storeStrong((defaults + 40), a2);
  }
}

- (void)handleDonation:(os_log_t)log turboEnabled:completionHandler:cancelBlock:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_231B25000, log, OS_LOG_TYPE_DEBUG, "### skipping item for bundleID %@ as not in allowed set of bundles %@", &v3, 0x16u);
}

void __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_39_cold_1(uint64_t *a1)
{
  [(CSEventDonationJournalItem *)*a1 flags];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_39_cold_2(uint64_t a1, void *a2)
{
  [a2 length];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2_39_cold_3(uint64_t a1, void *a2)
{
  [a2 length];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_101_cold_1(uint64_t a1)
{
  [(CSEventListenerDonation *)*(a1 + 40) indexTypeName];
  [(CSEventListenerManager *)*(a1 + 40) totalJournalSize];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);
}

void __81__CSEmbeddingsUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_102_cold_1(uint64_t a1)
{
  [(CSEventListenerDonation *)*(a1 + 48) indexTypeName];
  [(CSEventListenerManager *)*(a1 + 48) totalJournalSize];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

@end