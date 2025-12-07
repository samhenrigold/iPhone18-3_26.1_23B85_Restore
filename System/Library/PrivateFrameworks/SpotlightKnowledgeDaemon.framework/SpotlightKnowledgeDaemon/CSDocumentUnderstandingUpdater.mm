@interface CSDocumentUnderstandingUpdater
- (BOOL)handleDonation:(id)donation turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block;
- (BOOL)journalItemHasDocUnderstandingSN:(id)n;
- (BOOL)journalItemIsSupportedDocument:(id)document;
- (BOOL)journalItemNeedsDocUnderstanding:(id)understanding;
- (BOOL)shouldHandleJournalItem:(id)item bundleID:(id)d;
- (id)description;
- (id)getStrForDUPersonalIDType:(int64_t)type;
- (id)includeBundleIDs;
- (int64_t)getItemDocumentType:(id)type;
@end

@implementation CSDocumentUnderstandingUpdater

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  taskName = [(CSDocumentUnderstandingUpdater *)self taskName];
  v6 = [v3 initWithFormat:@"<%@:%p; %@>", v4, self, taskName];

  return v6;
}

- (id)includeBundleIDs
{
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  docUnderstandingIncludeBundles = [mEMORY[0x277D657A0] docUnderstandingIncludeBundles];

  return docUnderstandingIncludeBundles;
}

- (BOOL)journalItemNeedsDocUnderstanding:(id)understanding
{
  v8 = 0uLL;
  v9 = 0;
  [(CSEventDonationJournalItem *)understanding attrDictObj];
  PlistObjectForKey = _MDPlistDictionaryGetPlistObjectForKey();
  if (PlistObjectForKey)
  {
    v6 = v8;
    v7 = v9;
    PlistObjectType = _MDPlistGetPlistObjectType();
    LOBYTE(PlistObjectForKey) = ((PlistObjectType - 226) < 2 || PlistObjectType == 51 || PlistObjectType == 35) && (v6 = v8, v7 = v9, _MDPlistNumberGetIntValue());
  }

  return PlistObjectForKey;
}

- (BOOL)journalItemHasDocUnderstandingSN:(id)n
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
    LOBYTE(PlistObjectForKey) = ((PlistObjectType - 226) < 2 || PlistObjectType == 51 || PlistObjectType == 35) && (v6 = v8, v7 = v9, _MDPlistNumberGetIntValue());
  }

  return PlistObjectForKey;
}

- (BOOL)journalItemIsSupportedDocument:(id)document
{
  documentCopy = document;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v8 = 0uLL;
  v9 = 0;
  [(CSEventDonationJournalItem *)documentCopy attrDictObj];
  if (_MDPlistDictionaryGetPlistObjectForKey())
  {
    v6 = v8;
    v7 = v9;
    if (_MDPlistGetPlistObjectType() == 240)
    {
      v6 = v8;
      v7 = v9;
      _MDPlistArrayIterate();
    }
  }

  v4 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v4;
}

uint64_t __65__CSDocumentUnderstandingUpdater_journalItemIsSupportedDocument___block_invoke(uint64_t result, __int128 *a2)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    v2 = result;
    result = _MDPlistNumberGetIntValue();
    if (result <= 11245)
    {
      if (result != 492 && result != 960)
      {
        return result;
      }

LABEL_8:
      *(*(*(v2 + 32) + 8) + 24) = 1;
      return result;
    }

    if (result == 12539 || result == 11246)
    {
      goto LABEL_8;
    }
  }

  return result;
}

- (BOOL)shouldHandleJournalItem:(id)item bundleID:(id)d
{
  itemCopy = item;
  if ([(CSDocumentUnderstandingUpdater *)self journalItemNeedsDocUnderstanding:itemCopy])
  {
    v6 = ![(CSDocumentUnderstandingUpdater *)self journalItemHasDocUnderstandingSN:itemCopy];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (int64_t)getItemDocumentType:(id)type
{
  typeCopy = type;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v8 = 0uLL;
  v9 = 0;
  [(CSEventDonationJournalItem *)typeCopy attrDictObj];
  if (_MDPlistDictionaryGetPlistObjectForKey())
  {
    v6 = v8;
    v7 = v9;
    if (_MDPlistGetPlistObjectType() == 240)
    {
      v6 = v8;
      v7 = v9;
      _MDPlistArrayIterate();
    }
  }

  v4 = v11[3];
  _Block_object_dispose(&v10, 8);

  return v4;
}

uint64_t __54__CSDocumentUnderstandingUpdater_getItemDocumentType___block_invoke(uint64_t result, __int128 *a2)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v2 = result;
    result = _MDPlistGetPlistObjectType();
    if ((result - 226) < 2 || result == 51 || result == 35)
    {
      result = _MDPlistNumberGetIntValue();
      switch(result)
      {
        case 960:
          v3 = 1;
          break;
        case 12539:
          v3 = 2;
          break;
        case 11246:
          v3 = 3;
          break;
        default:
          return result;
      }

      *(*(*(v2 + 32) + 8) + 24) = v3;
    }
  }

  return result;
}

- (id)getStrForDUPersonalIDType:(int64_t)type
{
  if (type > 0xD)
  {
    return &stru_2846CE8D8;
  }

  else
  {
    return off_27893CB10[type];
  }
}

- (BOOL)handleDonation:(id)donation turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block
{
  v101 = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  handlerCopy = handler;
  blockCopy = block;
  context = objc_autoreleasePoolPush();
  v11 = SKGLogEventInit();
  spid = os_signpost_id_generate(v11);

  v12 = SKGLogEventInit();
  v13 = v12;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v13, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CSDocUnderstandingUpdaterHandleDonation", "", buf, 2u);
  }

  v14 = objc_alloc_init(CSEventFeedback);
  [(CSEventFeedback *)v14 setIndexType:[(CSEventListenerManager *)donationCopy folderFd]];
  [(CSEventFeedback *)v14 start];
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  docUnderstandingFetchAttributes = [mEMORY[0x277D657A0] docUnderstandingFetchAttributes];

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

  [(CSEventFeedback *)v14 setBundleID:v20, spid - 1];
  v21 = objc_alloc(MEMORY[0x277CCACA8]);
  protectionClass = [(CSEventListenerDonation *)donationCopy protectionClass];
  v59 = [v21 initWithString:protectionClass];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[CSEventListenerManager totalJournalSize](donationCopy)];
  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = 0;
  *buf = 0;
  v84 = buf;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__0;
  v87 = __Block_byref_object_dispose__0;
  v88 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v82[0] = 0;
  v82[1] = v82;
  v82[2] = 0x2020000000;
  v82[3] = 0;
  v56 = dispatch_time(0, 0);
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke;
  v73[3] = &unk_27893CAC8;
  v73[4] = self;
  v24 = v19;
  v74 = v24;
  v25 = blockCopy;
  v79 = v25;
  v26 = donationCopy;
  v75 = v26;
  v80 = v82;
  v27 = v14;
  v76 = v27;
  v57 = docUnderstandingFetchAttributes;
  v77 = v57;
  v28 = v23;
  v78 = v28;
  v81 = buf;
  [v26 iterateItems:v73];
  LODWORD(docUnderstandingFetchAttributes) = v25[2](v25);
  if (!docUnderstandingFetchAttributes)
  {
    v90[3] = dispatch_time(0, 0) - v56;
    v55 = [*(v84 + 5) count];
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v35 = SKGLogDocUnderstandingInit();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        indexTypeName = [(CSEventListenerDonation *)v26 indexTypeName];
        totalJournalSize = [(CSEventListenerManager *)v26 totalJournalSize];
        *v93 = 138413058;
        selfCopy2 = self;
        v95 = 2080;
        v96 = indexTypeName;
        v97 = 2048;
        v98 = totalJournalSize;
        v99 = 2048;
        v100 = v55;
        _os_log_impl(&dword_231B25000, v35, OS_LOG_TYPE_DEFAULT, "### %@ donation %s sn:%llu found %lu items", v93, 0x2Au);
      }
    }

    if (![(CSEventListenerManager *)v26 throttled])
    {
      if (!v55)
      {
        goto LABEL_38;
      }

      v43 = [objc_alloc(MEMORY[0x277CC34A8]) _initWithName:@"DocumentUnderstandingUpdate" protectionClass:v59 bundleIdentifier:v24 options:32];
LABEL_33:
      if (v43)
      {
        v46 = SKGLogEventInit();
        v47 = os_signpost_id_generate(v46);

        v48 = SKGLogEventInit();
        v49 = v48;
        if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
        {
          *v72 = 0;
          _os_signpost_emit_with_name_impl(&dword_231B25000, v49, OS_SIGNPOST_INTERVAL_BEGIN, v47, "CSDocUnderstandingUpdaterIndexItems", "", v72, 2u);
        }

        v50 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CSDocUnderstandingUpdaterTimeout" code:-1 userInfo:0];
        v51 = *(v84 + 5);
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_104;
        v63[3] = &unk_27893CAF0;
        v67 = &v89;
        v68 = v56;
        v64 = v27;
        v65 = v26;
        v69 = v55;
        v70 = v47;
        v71 = spid;
        v66 = handlerCopy;
        [v43 indexSearchableItems:v51 timeout:v50 timeoutError:v63 completion:3.0e11];

        v34 = 1;
LABEL_42:

        goto LABEL_43;
      }

LABEL_38:
      [(CSEventFeedback *)v27 end];
      v52 = SKGLogEventInit();
      v43 = v52;
      if (v54 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
      {
        *v72 = 0;
        _os_signpost_emit_with_name_impl(&dword_231B25000, v43, OS_SIGNPOST_INTERVAL_END, spid, "CSDocUnderstandingUpdaterHandleDonation", "", v72, 2u);
      }

      v34 = 0;
      goto LABEL_42;
    }

    homePathHash = [(CSEventListenerDonation *)v26 homePathHash];
    v39 = getCSBasePathForId(homePathHash);
    if (v39)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v40 = SKGLogDocUnderstandingInit();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v39;
          uTF8String = [v39 UTF8String];
          *v93 = 136315138;
          selfCopy2 = uTF8String;
          _os_log_impl(&dword_231B25000, v40, OS_LOG_TYPE_DEFAULT, "Creating CSManagedSearchableIndex for path = %s", v93, 0xCu);
        }
      }

      if (v55)
      {
        v43 = [objc_alloc(MEMORY[0x277CC3448]) initWithPath:v39 bundleId:v24];
LABEL_32:

        goto LABEL_33;
      }
    }

    else if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v44 = SKGLogDocUnderstandingInit();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        homePathHash2 = [(CSEventListenerDonation *)v26 homePathHash];
        [CSDocumentUnderstandingUpdater handleDonation:v93 turboEnabled:homePathHash2 completionHandler:v44 cancelBlock:?];
      }
    }

    v43 = 0;
    goto LABEL_32;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v29 = SKGLogDocUnderstandingInit();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      spida = docUnderstandingFetchAttributes;
      taskName = [(CSDocumentUnderstandingUpdater *)self taskName];
      v31 = taskName;
      uTF8String2 = [taskName UTF8String];
      docUnderstandingFetchAttributes = [(CSEventListenerDonation *)v26 indexTypeName];
      totalJournalSize2 = [(CSEventListenerManager *)v26 totalJournalSize];
      *v93 = 138413058;
      selfCopy2 = self;
      v95 = 2080;
      v96 = uTF8String2;
      v97 = 2080;
      v98 = docUnderstandingFetchAttributes;
      v99 = 2048;
      v100 = totalJournalSize2;
      _os_log_impl(&dword_231B25000, v29, OS_LOG_TYPE_DEFAULT, "### %@ cancelling %s due to expiration request while processing type='%s' sn:'%llu'", v93, 0x2Au);

      LOBYTE(docUnderstandingFetchAttributes) = spida;
    }
  }

  [(CSEventFeedback *)v27 end];
  (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
  v34 = 0;
LABEL_43:

  _Block_object_dispose(v82, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v89, 8);
  objc_autoreleasePoolPop(context);

  return docUnderstandingFetchAttributes | v34;
}

uint64_t __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v76 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (([*(a1 + 32) shouldHandleJournalItem:v3 bundleID:*(a1 + 40)] & 1) == 0)
  {
    v11 = (*(*(a1 + 80) + 16))();
    objc_autoreleasePoolPop(v4);
    goto LABEL_37;
  }

  [(CSEventDonationJournalItem *)v3 identifier];
  v5 = MDJournalReaderMDPlistObjectCopy();
  v6 = [v5 mutableCopy];

  v7 = [SKGUpdaterStore instanceForIndexType:[(CSEventListenerManager *)*(a1 + 48) folderFd]];
  if (!v7 || (v8 = -[CSEventListenerManager journalMap](*(a1 + 48)), v9 = v6, *(*(*(a1 + 88) + 8) + 24) = [v7 readSerialNumberFromBundleID:v8 identifier:objc_msgSend(v6 UUID:"UTF8String") listenerType:{-[CSEventListenerManager journalQueue](*(a1 + 48)), objc_msgSend(*(a1 + 32), "eventType")}], -[CSEventListenerManager totalJournalSize](*(a1 + 48)) >= *(*(*(a1 + 88) + 8) + 24)))
  {
    [*(a1 + 56) setNumItemsInBatch:{objc_msgSend(*(a1 + 56), "numItemsInBatch") + 1}];
    v12 = [MEMORY[0x277D65798] sharedProcessor];
    if ([v12 canProcessEvent])
    {
      v13 = [*(a1 + 56) canProcessEvent:&unk_2846E7578];

      v63 = 0;
      if (v13)
      {
        v14 = [v3 attributesForKeys:*(a1 + 64) bundleID:*(a1 + 40)];
        if (v14)
        {
          v15 = [MEMORY[0x277D65798] sharedProcessor];
          v16 = [v15 canProcessEventForRecord:v14 bundleIdentifier:*(a1 + 40)];

          if ((v16 & 1) == 0)
          {
LABEL_36:

            objc_autoreleasePoolPop(v4);
            v11 = (*(*(a1 + 80) + 16))();
            goto LABEL_37;
          }

          v17 = [MEMORY[0x277D65798] sharedProcessor];
          v18 = [v17 docUnderstandingRecordNeedsProcessing:v14 bundleID:*(a1 + 40) isUpdate:0 hasTextContent:objc_msgSend(v3 shouldClear:"hasTextContent") shouldMarkComplete:{0, &v63}];

          if ((v63 & 1) == 0 && v18 == 1)
          {
            v19 = SKGLogEventInit();
            spid = os_signpost_id_generate(v19);

            v20 = SKGLogEventInit();
            v21 = v20;
            if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_231B25000, v21, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CSDocUnderstandingUpdaterProcessSingleItem", "", buf, 2u);
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            LOBYTE(v71) = 0;
            v22 = dispatch_group_create();
            dispatch_group_enter(v22);
            v23 = [MEMORY[0x277D65798] sharedProcessor];
            v53 = [v23 copyStringValueFromRecord:v14 key:@"_kMDItemOCRContentLevel1"];

            v24 = [*(a1 + 32) getItemDocumentType:v3];
            v25 = [objc_alloc(MEMORY[0x277D06978]) initWithText:v53 documentType:v24];
            v52 = v25;
            if (SKGLogGetCurrentLoggingLevel() >= 4)
            {
              v26 = SKGLogDocUnderstandingInit();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = [*(a1 + 32) getStrForDUPersonalIDType:v24];
                v28 = CSRedactString();
                *v64 = 138412802;
                v65 = v6;
                v66 = 2112;
                v67 = v27;
                v68 = 2112;
                v69 = v28;
                _os_log_impl(&dword_231B25000, v26, OS_LOG_TYPE_DEFAULT, "### DUInformationExtractor personal ID extraction request started for id: %@, documentType: %@, text: %@", v64, 0x20u);
              }

              v25 = v52;
            }

            v29 = [MEMORY[0x277D06970] sharedExtractor];
            v55[0] = MEMORY[0x277D85DD0];
            v55[1] = 3221225472;
            v55[2] = __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_84;
            v55[3] = &unk_27893CAA0;
            v60 = buf;
            v30 = v22;
            v56 = v30;
            v57 = *(a1 + 72);
            v31 = v6;
            v58 = v31;
            v32 = *(a1 + 40);
            v33 = *(a1 + 96);
            v59 = v32;
            v61 = v33;
            v62 = spid;
            [v29 requestExtractionOfPersonalIDFromDocument:v25 completion:v55];

            if (v30)
            {
              v34 = (*&buf[8] + 24);
              v35 = dispatch_time(0, 600000000000);
              atomic_store(dispatch_group_wait(v30, v35) != 0, v34);
              v36 = atomic_load((*&buf[8] + 24));
              if (v36)
              {
                if (SKGLogGetCurrentLoggingLevel() >= 2)
                {
                  v37 = SKGLogSuggestedEventsInit();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                  {
                    __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_cold_1(v37);
                  }
                }

                v38 = objc_alloc_init(MEMORY[0x277CC34B8]);
                [v38 setAttribute:*MEMORY[0x277CBEEE8] forKey:@"_kMDItemNeedsDocumentUnderstanding"];
                [v38 setAttribute:&unk_2846E7590 forKey:@"kMDItemDocumentUnderstandingErrorCode"];
                v39 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v31 domainIdentifier:0 attributeSet:v38];
                [v39 setBundleID:*(a1 + 40)];
                [v39 setIsUpdate:1];
                v40 = *(*(*(a1 + 96) + 8) + 40);
                objc_sync_enter(v40);
                [*(*(*(a1 + 96) + 8) + 40) addObject:v39];
                objc_sync_exit(v40);
              }
            }

            _Block_object_dispose(buf, 8);
            goto LABEL_36;
          }
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {

      v14 = 0;
      v63 = 0;
    }

    v41 = objc_alloc_init(MEMORY[0x277CC34B8]);
    [v41 setAttribute:*MEMORY[0x277CBEEE8] forKey:@"_kMDItemNeedsDocumentUnderstanding"];
    if (v63 == 1)
    {
      v42 = MEMORY[0x277CCABB0];
      v43 = [MEMORY[0x277D657A0] sharedContext];
      v44 = [v42 numberWithInteger:{objc_msgSend(v43, "documentUnderstandingVersion")}];
      [v41 setAttribute:v44 forKey:@"kMDItemDocumentUnderstandingVersion"];

      updateAttributeSetForEvents(v41, @"_kMDItemDocumentUnderstandingSN", *(a1 + 72));
    }

    v45 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v6 domainIdentifier:0 attributeSet:v41];
    [v45 setBundleID:*(a1 + 40)];
    [v45 setIsUpdate:1];
    v46 = *(*(*(a1 + 96) + 8) + 40);
    objc_sync_enter(v46);
    [*(*(*(a1 + 96) + 8) + 40) addObject:v45];
    objc_sync_exit(v46);

    [*(a1 + 56) logFlag:10 message:@"ignored"];
    goto LABEL_36;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v10 = SKGLogDocUnderstandingInit();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v48 = *(a1 + 32);
      v49 = [(CSEventListenerManager *)*(a1 + 48) totalJournalSize];
      v50 = *(*(*(a1 + 88) + 8) + 24);
      v51 = [(CSEventListenerManager *)*(a1 + 48) journalMap];
      *buf = 138413314;
      *&buf[4] = v48;
      *&buf[12] = 2048;
      *&buf[14] = v49;
      *&buf[22] = 2048;
      v71 = v50;
      v72 = 2080;
      v73 = v51;
      v74 = 2112;
      v75 = v6;
      _os_log_debug_impl(&dword_231B25000, v10, OS_LOG_TYPE_DEBUG, "### %@ SKIPPING item serialNumber:%llu < latestSerialNumber:%llu | bundle:%s identifier:%@", buf, 0x34u);
    }
  }

  v11 = (*(*(a1 + 80) + 16))();

  objc_autoreleasePoolPop(v4);
LABEL_37:

  return v11;
}

void __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = atomic_load((*(*(a1 + 64) + 8) + 24));
  if (v8)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v9 = SKGLogDocUnderstandingInit();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_84_cold_2(v9);
      }
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      dispatch_group_leave(v10);
    }
  }

  else
  {
    if (v6)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v11 = SKGLogDocUnderstandingInit();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_84_cold_1(v7, v11);
        }
      }

      v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "code")}];
      [0 setAttribute:v12 forKey:@"kMDItemDocumentUnderstandingErrorCode"];

      v13 = objc_alloc_init(MEMORY[0x277CC34B8]);
    }

    else
    {
      v13 = [v5 spotlightOntologyAttributes];
      if (!v13)
      {
        v13 = objc_alloc_init(MEMORY[0x277CC34B8]);
      }

      v14 = MEMORY[0x277CCABB0];
      v15 = [MEMORY[0x277D657A0] sharedContext];
      v16 = [v14 numberWithInteger:{objc_msgSend(v15, "documentUnderstandingVersion")}];
      [v13 setAttribute:v16 forKey:@"kMDItemDocumentUnderstandingVersion"];

      updateAttributeSetForEvents(v13, @"_kMDItemDocumentUnderstandingSN", *(a1 + 40));
    }

    [v13 setAttribute:*MEMORY[0x277CBEEE8] forKey:@"_kMDItemNeedsDocumentUnderstanding"];
    v17 = getSystemVersionString();
    [v13 setAttribute:v17 forKey:@"kMDItemDocumentUnderstandingBuildVersion"];

    v18 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:*(a1 + 48) domainIdentifier:0 attributeSet:v13];
    [v18 setBundleID:*(a1 + 56)];
    [v18 setIsUpdate:1];
    v19 = *(*(*(a1 + 72) + 8) + 40);
    objc_sync_enter(v19);
    [*(*(*(a1 + 72) + 8) + 40) addObject:v18];
    objc_sync_exit(v19);

    v20 = SKGLogEventInit();
    v21 = v20;
    v22 = *(a1 + 80);
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *v23 = 0;
      _os_signpost_emit_with_name_impl(&dword_231B25000, v21, OS_SIGNPOST_INTERVAL_END, v22, "CSDocUnderstandingUpdaterProcessSingleItem", "", v23, 2u);
    }

    dispatch_group_leave(*(a1 + 32));
  }
}

void __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_104(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 56) + 8) + 24) = dispatch_time(0, 0) - *(a1 + 64);
  if (!v3)
  {
    [*(a1 + 32) logFlag:22 message:@"completed"];
  }

  [*(a1 + 32) end];
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v4 = SKGLogDocUnderstandingInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_104_cold_1(a1, v4);
    }
  }

  v5 = SKGLogEventInit();
  v6 = v5;
  v7 = *(a1 + 80);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v6, OS_SIGNPOST_INTERVAL_END, v7, "CSDocUnderstandingUpdaterIndexItems", "", buf, 2u);
  }

  v8 = SKGLogEventInit();
  v9 = v8;
  v10 = *(a1 + 88);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CSDocUnderstandingUpdaterHandleDonation", "", v11, 2u);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)handleDonation:(os_log_t)log turboEnabled:completionHandler:cancelBlock:.cold.1(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&dword_231B25000, log, OS_LOG_TYPE_ERROR, "Error fetching CSManagedSearchableIndex path for id %d", buf, 8u);
}

void __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_84_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_231B25000, a2, OS_LOG_TYPE_ERROR, "### DUInformationExtractor personal ID extraction request failed with error: %@", &v2, 0xCu);
}

void __92__CSDocumentUnderstandingUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_104_cold_1(uint64_t a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [(CSEventListenerDonation *)*(a1 + 40) indexTypeName];
  v5 = [(CSEventListenerManager *)*(a1 + 40) totalJournalSize];
  v6 = *(a1 + 72);
  v7 = 136315650;
  v8 = v4;
  v9 = 2048;
  v10 = v5;
  v11 = 2048;
  v12 = v6;
  _os_log_debug_impl(&dword_231B25000, a2, OS_LOG_TYPE_DEBUG, "### %s sn:%llu updated %lu items", &v7, 0x20u);
}

@end