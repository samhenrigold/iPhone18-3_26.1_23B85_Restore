@interface CSProcessorPipelineJobUpdater
- (BOOL)handleDonation:(id)donation turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block;
- (BOOL)shouldHandleJournalItem:(id)item bundleID:(id)d;
- (CSProcessorPipelineJobUpdater)initWithJournalJob:(id)job;
- (id)description;
- (id)excludeBundleIDs;
- (id)excludeContentTypes;
- (id)includeBundleIDs;
- (id)includeContentTypes;
- (id)taskName;
- (unint64_t)eventFlags;
@end

@implementation CSProcessorPipelineJobUpdater

- (CSProcessorPipelineJobUpdater)initWithJournalJob:(id)job
{
  jobCopy = job;
  v22.receiver = self;
  v22.super_class = CSProcessorPipelineJobUpdater;
  v6 = [(CSProcessorPipelineJobUpdater *)&v22 init];
  if (v6)
  {
    name = [jobCopy name];
    lowercaseString = [name lowercaseString];

    objc_storeStrong(&v6->_job, job);
    v9 = objc_alloc_init(CSEventListenerConfig);
    taskConfig = v6->_taskConfig;
    v6->_taskConfig = v9;

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"task-%@", lowercaseString];
    [(CSEventListenerConfig *)v6->_taskConfig setName:v11];

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.spotlightkowledged.task.%@", lowercaseString];
    [(CSEventListenerConfig *)v6->_taskConfig setTaskIdentifier:v12];

    requiredBundleIDs = [jobCopy requiredBundleIDs];
    [(CSEventListenerConfig *)v6->_taskConfig setIncludeBundleIDs:requiredBundleIDs];

    excludedBundleIDs = [jobCopy excludedBundleIDs];
    [(CSEventListenerConfig *)v6->_taskConfig setExcludeBundleIDs:excludedBundleIDs];

    bgstOptions = [jobCopy bgstOptions];
    v16 = [bgstOptions objectForKeyedSubscript:@"priority"];
    if (v16 && (v17 = v16, [bgstOptions objectForKeyedSubscript:@"priority"], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", @"immediate"), v18, v17, (v19 & 1) != 0))
    {
      v20 = 4;
    }

    else
    {
      v20 = 64;
    }

    [(CSEventListenerConfig *)v6->_taskConfig setEventFlags:v20];
    [(CSEventListenerConfig *)v6->_taskConfig setTaskOptions:bgstOptions];
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  taskName = [(CSProcessorPipelineJobUpdater *)self taskName];
  v6 = [v3 initWithFormat:@"<%@:%p; %@>", v4, self, taskName];

  return v6;
}

- (id)taskName
{
  taskConfig = [(CSProcessorPipelineJobUpdater *)self taskConfig];
  name = [taskConfig name];

  return name;
}

- (unint64_t)eventFlags
{
  taskConfig = [(CSProcessorPipelineJobUpdater *)self taskConfig];
  eventFlags = [taskConfig eventFlags];

  return eventFlags;
}

- (id)includeBundleIDs
{
  taskConfig = [(CSProcessorPipelineJobUpdater *)self taskConfig];
  includeBundleIDs = [taskConfig includeBundleIDs];

  return includeBundleIDs;
}

- (id)excludeBundleIDs
{
  taskConfig = [(CSProcessorPipelineJobUpdater *)self taskConfig];
  excludeBundleIDs = [taskConfig excludeBundleIDs];

  return excludeBundleIDs;
}

- (id)includeContentTypes
{
  taskConfig = [(CSProcessorPipelineJobUpdater *)self taskConfig];
  includeContentTypes = [taskConfig includeContentTypes];

  return includeContentTypes;
}

- (id)excludeContentTypes
{
  taskConfig = [(CSProcessorPipelineJobUpdater *)self taskConfig];
  excludeContentTypes = [taskConfig excludeContentTypes];

  return excludeContentTypes;
}

- (BOOL)shouldHandleJournalItem:(id)item bundleID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  dCopy = d;
  if (dCopy && ([itemCopy isUserActivity] & 1) == 0)
  {
    v9 = self->_job;
    requiredAttributes = [(SKDJournalProcessingJob *)v9 requiredAttributes];
    v11 = [requiredAttributes count];

    if (v11)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      requiredAttributes2 = [(SKDJournalProcessingJob *)v9 requiredAttributes];
      v8 = [requiredAttributes2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v13 = *v17;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(requiredAttributes2);
            }

            if ([itemCopy containsAttribute:*(*(&v16 + 1) + 8 * i)])
            {
              LOBYTE(v8) = 1;
              goto LABEL_15;
            }
          }

          v8 = [requiredAttributes2 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    else
    {
      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)handleDonation:(id)donation turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block
{
  v140 = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  handlerCopy = handler;
  blockCopy = block;
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v10 = SKGLogScheduledReceiverInit();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = donationCopy;
      *&buf[12] = 2080;
      *&buf[14] = [(CSEventListenerManager *)donationCopy journalMap];
      _os_log_impl(&dword_231B25000, v10, OS_LOG_TYPE_DEFAULT, "**** handleDonation for %@ / %s", buf, 0x16u);
    }
  }

  v81 = objc_autoreleasePoolPush();
  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalMap](donationCopy)];
  v13 = [v11 initWithString:v12];

  v14 = objc_alloc(MEMORY[0x277CCACA8]);
  protectionClass = [(CSEventListenerDonation *)donationCopy protectionClass];
  v84 = [v14 initWithString:protectionClass];

  v16 = objc_alloc(MEMORY[0x277CCACA8]);
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalQueue](donationCopy)];
  v18 = [v16 initWithString:v17];

  v19 = self->_job;
  name = [(SKDBaseJob *)v19 name];
  capitalizedString = [name capitalizedString];

  v21 = [SKGUpdaterStore instanceForIndexType:[(CSEventListenerManager *)donationCopy folderFd]];
  v22 = SKGLogEventInit();
  spid = os_signpost_id_generate(v22);

  v23 = SKGLogEventInit();
  v24 = v23;
  v79 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v24, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CSPipelineUpdaterHandleDonation", "", buf, 2u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v137 = __Block_byref_object_copy__5;
  v138 = __Block_byref_object_dispose__5;
  v139 = 0;
  v123 = 0;
  v124 = &v123;
  v125 = 0x2020000000;
  v126 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__CSProcessorPipelineJobUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke;
  aBlock[3] = &unk_27893D638;
  v25 = v21;
  v119 = v25;
  v26 = v13;
  v120 = v26;
  v27 = v18;
  v121 = v27;
  v122 = &v123;
  v28 = _Block_copy(aBlock);
  [(SKDBaseItemProcessingJob *)v19 startBatch];
  v108[0] = MEMORY[0x277D85DD0];
  v108[1] = 3221225472;
  v108[2] = __91__CSProcessorPipelineJobUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2;
  v108[3] = &unk_27893D688;
  v108[4] = self;
  v82 = v26;
  v109 = v82;
  v91 = v25;
  v110 = v91;
  v116 = &v123;
  v95 = v27;
  v111 = v95;
  v112 = donationCopy;
  v29 = v19;
  v113 = v29;
  v80 = v28;
  v114 = v80;
  v117 = buf;
  v86 = blockCopy;
  v115 = v86;
  v88 = v112;
  [v112 iterateItems:v108];
  [(SKDBaseItemProcessingJob *)v29 endBatch];
  v94 = v29;
  if ([*(*&buf[8] + 40) count])
  {
    context = objc_autoreleasePoolPush();
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    obj = *(*&buf[8] + 40);
    v30 = [obj countByEnumeratingWithState:&v104 objects:v135 count:16];
    if (v30)
    {
      v96 = 0;
      v93 = *v105;
      while (2)
      {
        v92 = v30;
        for (i = 0; i != v92; ++i)
        {
          if (*v105 != v93)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v104 + 1) + 8 * i);
          context = [(SKDBaseCSItemProcessingJob *)v94 processCSItemRecord:v32, context];
          if ([context status] == 3)
          {

            v48 = 1;
            goto LABEL_27;
          }

          searchableItem = [context searchableItem];
          if (searchableItem)
          {
            v35 = v96;
            if (!v96)
            {
              v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            v96 = v35;
            [v35 addObject:searchableItem];
          }

          attributes = [context attributes];
          v37 = [attributes objectForKeyedSubscript:@"kMDItemTextContentLanguage"];

          if (v37)
          {
            bundleID = [(SKDCSItemRecord *)v32 bundleID];
            v39 = bundleID;
            uTF8String = [bundleID UTF8String];
            uniqueID = [(SKDCSItemRecord *)v32 uniqueID];
            v42 = uniqueID;
            uTF8String2 = [uniqueID UTF8String];
            v44 = v95;
            uTF8String3 = [v95 UTF8String];
            v46 = v124[3];
            v47 = v37;
            [v91 writeLanguageForBundleID:uTF8String identifier:uTF8String2 UUID:uTF8String3 serialNumber:v46 language:{objc_msgSend(v37, "UTF8String")}];
          }
        }

        v30 = [obj countByEnumeratingWithState:&v104 objects:v135 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }

      v48 = 0;
    }

    else
    {
      v48 = 0;
      v96 = 0;
    }

LABEL_27:

    objc_autoreleasePoolPop(context);
    if (v48)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v96 = 0;
  }

  if (v86[2]())
  {
LABEL_29:
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v49 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        taskConfig = [(CSProcessorPipelineJobUpdater *)self taskConfig];
        name2 = [taskConfig name];
        v52 = name2;
        uTF8String4 = [name2 UTF8String];
        indexTypeName = [(CSEventListenerDonation *)v88 indexTypeName];
        totalJournalSize = [(CSEventListenerManager *)v88 totalJournalSize];
        *v127 = 136315650;
        selfCopy = uTF8String4;
        v129 = 2080;
        v130 = indexTypeName;
        v131 = 2048;
        v132 = totalJournalSize;
        _os_log_impl(&dword_231B25000, v49, OS_LOG_TYPE_DEFAULT, "### cancelling %s due to expiration request while processing type='%s' sn:'%llu'", v127, 0x20u);
      }
    }

    v56 = SKGLogEventInit();
    v57 = v56;
    if (v79 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
    {
      *v127 = 0;
      _os_signpost_emit_with_name_impl(&dword_231B25000, v57, OS_SIGNPOST_INTERVAL_END, spid, "CSUpdaterHandleDonation", "", v127, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
    goto LABEL_69;
  }

  if (v96)
  {
    v58 = [v96 count];
  }

  else
  {
    v58 = 0;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v59 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      indexTypeName2 = [(CSEventListenerDonation *)v88 indexTypeName];
      totalJournalSize2 = [(CSEventListenerManager *)v88 totalJournalSize];
      *v127 = 138413058;
      selfCopy = self;
      v129 = 2080;
      v130 = indexTypeName2;
      v131 = 2048;
      v132 = totalJournalSize2;
      v133 = 2048;
      v134 = v58;
      _os_log_impl(&dword_231B25000, v59, OS_LOG_TYPE_INFO, "### donation %@ %s sn:%llu found %lu items", v127, 0x2Au);
    }
  }

  if ([(CSEventListenerManager *)v88 throttled])
  {
    homePathHash = [(CSEventListenerDonation *)v88 homePathHash];
    v63 = getCSBasePathForId(homePathHash);
    if (v63)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v64 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = v63;
          uTF8String5 = [v63 UTF8String];
          *v127 = 136315138;
          selfCopy = uTF8String5;
          _os_log_impl(&dword_231B25000, v64, OS_LOG_TYPE_DEFAULT, "Creating CSManagedSearchableIndex for path = %s", v127, 0xCu);
        }
      }

      if (v58)
      {
        v67 = [objc_alloc(MEMORY[0x277CC3448]) initWithPath:v63];
LABEL_59:

        goto LABEL_60;
      }
    }

    else if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v68 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        homePathHash2 = [(CSEventListenerDonation *)v88 homePathHash];
        [CSDocumentUnderstandingUpdater handleDonation:v127 turboEnabled:homePathHash2 completionHandler:v68 cancelBlock:?];
      }
    }

    v67 = 0;
    goto LABEL_59;
  }

  if (!v58)
  {
    goto LABEL_65;
  }

  v67 = [objc_alloc(MEMORY[0x277CC34A8]) _initWithName:capitalizedString protectionClass:v84 bundleIdentifier:v82 options:32];
LABEL_60:
  if (v67)
  {
    v70 = SKGLogEventInit();
    v71 = os_signpost_id_generate(v70);

    v72 = SKGLogEventInit();
    v73 = v72;
    if (v71 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
    {
      *v103 = 0;
      _os_signpost_emit_with_name_impl(&dword_231B25000, v73, OS_SIGNPOST_INTERVAL_BEGIN, v71, "CSUpdaterHandleDonation", "", v103, 2u);
    }

    v74 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CSUpdaterTimeout" code:-1 userInfo:0];
    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = __91__CSProcessorPipelineJobUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_38;
    v97[3] = &unk_27893D6B0;
    v98 = v88;
    v100 = v58;
    v101 = v71;
    v102 = spid;
    v99 = handlerCopy;
    [v67 indexSearchableItems:v96 timeout:v74 timeoutError:v97 completion:3.0e11];

    goto LABEL_69;
  }

LABEL_65:
  v75 = SKGLogEventInit();
  v76 = v75;
  if (v79 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
  {
    *v103 = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v76, OS_SIGNPOST_INTERVAL_END, spid, "CSUpdaterHandleDonation", "", v103, 2u);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
LABEL_69:

  _Block_object_dispose(&v123, 8);
  _Block_object_dispose(buf, 8);

  objc_autoreleasePoolPop(v81);
  return 1;
}

id __91__CSProcessorPipelineJobUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v9 isEqualToString:@"kMDItemTextContentLanguage"])
  {
    v10 = [*(a1 + 32) readLanguageFromBundleID:objc_msgSend(*(a1 + 40) identifier:"UTF8String") UUID:objc_msgSend(v8 serialNumber:{"UTF8String"), objc_msgSend(*(a1 + 48), "UTF8String"), *(*(*(a1 + 56) + 8) + 24)}];
LABEL_17:
    v11 = v10;
    goto LABEL_19;
  }

  if ([v9 isEqualToString:@"kMDItemHTMLContentData"])
  {
    if ([v7 hasHTMLContent])
    {
      [(CSEventDonationJournalItem *)v7 htmlObj];
LABEL_9:
      v10 = MDJournalReaderMDPlistObjectCopy();
      goto LABEL_17;
    }
  }

  else if ([v9 isEqualToString:@"kMDItemTextContent"])
  {
    if ([v7 hasTextContent])
    {
      [(CSEventDonationJournalItem *)v7 contentObj];
      goto LABEL_9;
    }
  }

  else
  {
    if ([v9 isEqualToString:@"kMDItemExtraData"])
    {
      v17 = 0uLL;
      v18 = 0;
      [(CSEventDonationJournalItem *)v7 customDictObj];
      if (!v16 || !SKGBundleIsWallet())
      {
        goto LABEL_18;
      }

      [(CSEventDonationJournalItem *)v7 customDictObj];
    }

    else
    {
      v17 = 0uLL;
      v18 = 0;
      [(CSEventDonationJournalItem *)v7 attrDictObj];
    }

    [v9 UTF8String];
    strlen([v9 UTF8String]);
    if (_MDPlistDictionaryGetPlistObjectForKey())
    {
      v13 = v17;
      v14 = v18;
      v10 = _MDPlistContainerCopyObject();
      goto LABEL_17;
    }
  }

LABEL_18:
  v11 = 0;
LABEL_19:

  return v11;
}

uint64_t __91__CSProcessorPipelineJobUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (![*(a1 + 32) shouldHandleJournalItem:v3 bundleID:*(a1 + 40)])
  {
LABEL_9:
    objc_autoreleasePoolPop(v4);
    v9 = 0;
    goto LABEL_13;
  }

  [(CSEventDonationJournalItem *)v3 identifier];
  v5 = MDJournalReaderMDPlistObjectCopy();
  v6 = [v5 mutableCopy];

  v7 = *(a1 + 48);
  if (v7)
  {
    *(*(*(a1 + 96) + 8) + 24) = [v7 readSerialNumberFromBundleID:objc_msgSend(*(a1 + 40) identifier:"UTF8String") UUID:objc_msgSend(v6 listenerType:{"UTF8String"), objc_msgSend(*(a1 + 56), "UTF8String"), objc_msgSend(*(a1 + 32), "eventType")}];
    if ([(CSEventListenerManager *)*(a1 + 64) totalJournalSize]< *(*(*(a1 + 96) + 8) + 24))
    {
      if (SKGLogGetCurrentLoggingLevel() >= 7)
      {
        v8 = SKGLogScheduledReceiverInit();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v19 = *(a1 + 32);
          v20 = [(CSEventListenerManager *)*(a1 + 64) totalJournalSize];
          v21 = *(*(*(a1 + 96) + 8) + 24);
          v22 = [(CSEventListenerManager *)*(a1 + 64) journalMap];
          *buf = 138413314;
          v28 = v19;
          v29 = 2048;
          v30 = v20;
          v31 = 2048;
          v32 = v21;
          v33 = 2080;
          v34 = v22;
          v35 = 2112;
          v36 = v6;
          _os_log_debug_impl(&dword_231B25000, v8, OS_LOG_TYPE_DEBUG, "%@ SKIPPING item serialNumber:%llu < latestSerialNumber:%llu | bundle:%s identifier:%@", buf, 0x34u);
        }
      }

      goto LABEL_9;
    }
  }

  v10 = *(a1 + 40);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __91__CSProcessorPipelineJobUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_28;
  v23[3] = &unk_27893D660;
  v11 = *(a1 + 72);
  v26 = *(a1 + 80);
  v24 = v3;
  v12 = v6;
  v25 = v12;
  v13 = [v11 itemRecordForUniqueID:v12 bundleID:v10 attributeProviderBlock:v23];
  v14 = *(*(*(a1 + 104) + 8) + 40);
  if (!v14)
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = *(*(a1 + 104) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v14 = *(*(*(a1 + 104) + 8) + 40);
  }

  [v14 addObject:v13];

  objc_autoreleasePoolPop(v4);
  v9 = (*(*(a1 + 88) + 16))();
LABEL_13:

  return v9;
}

void __91__CSProcessorPipelineJobUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_38(void *a1, void *a2)
{
  v3 = a2;
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v4 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __91__CSProcessorPipelineJobUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_38_cold_1(a1, v4);
    }
  }

  v5 = SKGLogEventInit();
  v6 = v5;
  v7 = a1[7];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v6, OS_SIGNPOST_INTERVAL_END, v7, "CSUpdaterHandleDonation", "", buf, 2u);
  }

  v8 = SKGLogEventInit();
  v9 = v8;
  v10 = a1[8];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CSUpdaterHandleDonation", "", v11, 2u);
  }

  (*(a1[5] + 16))();
}

void __91__CSProcessorPipelineJobUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_38_cold_1(uint64_t a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [(CSEventListenerDonation *)*(a1 + 32) indexTypeName];
  v5 = [(CSEventListenerManager *)*(a1 + 32) totalJournalSize];
  v6 = *(a1 + 48);
  v7 = 136315650;
  v8 = v4;
  v9 = 2048;
  v10 = v5;
  v11 = 2048;
  v12 = v6;
  _os_log_debug_impl(&dword_231B25000, a2, OS_LOG_TYPE_DEBUG, "### %s sn:%llu updated %lu items", &v7, 0x20u);
}

@end