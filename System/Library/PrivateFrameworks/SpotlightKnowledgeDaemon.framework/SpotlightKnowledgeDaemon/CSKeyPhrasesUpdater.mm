@interface CSKeyPhrasesUpdater
- (BOOL)handleDonation:(id)donation turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block;
- (BOOL)shouldHandleJournalItem:(id)item bundleID:(id)d;
- (id)description;
- (id)excludeBundleIDs;
- (void)didCompleteJournal;
@end

@implementation CSKeyPhrasesUpdater

- (void)didCompleteJournal
{
  mEMORY[0x277D65798] = [MEMORY[0x277D65798] sharedProcessor];
  [mEMORY[0x277D65798] flushKeyphraser];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  taskName = [(CSKeyPhrasesUpdater *)self taskName];
  v6 = [v3 initWithFormat:@"<%@:%p; %@>", v4, self, taskName];

  return v6;
}

- (id)excludeBundleIDs
{
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  keyphraseExcludeBundles = [mEMORY[0x277D657A0] keyphraseExcludeBundles];

  return keyphraseExcludeBundles;
}

- (BOOL)shouldHandleJournalItem:(id)item bundleID:(id)d
{
  itemCopy = item;
  v12 = 0uLL;
  v13 = 0;
  [(CSEventDonationJournalItem *)itemCopy attrDictObj];
  if (_MDPlistDictionaryGetPlistObjectForKey() && ((v10 = v12, v11 = v13, PlistObjectType = _MDPlistGetPlistObjectType(), (PlistObjectType - 226) < 2) || PlistObjectType == 51 || PlistObjectType == 35))
  {
    v10 = v12;
    v11 = v13;
    v6 = _MDPlistNumberGetIntValue() != 0;
  }

  else
  {
    v6 = 0;
  }

  [(CSEventDonationJournalItem *)itemCopy attrDictObj];
  if (_MDPlistDictionaryGetPlistObjectForKey() && ((v10 = v12, v11 = v13, v7 = _MDPlistGetPlistObjectType(), (v7 - 226) < 2) || v7 == 51 || v7 == 35))
  {
    v10 = v12;
    v11 = v13;
    v8 = _MDPlistNumberGetIntValue() == 0;
  }

  else
  {
    v8 = 1;
  }

  return v6 && v8;
}

- (BOOL)handleDonation:(id)donation turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block
{
  v111 = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  handlerCopy = handler;
  blockCopy = block;
  context = objc_autoreleasePoolPush();
  v9 = SKGLogEventInit();
  spid = os_signpost_id_generate(v9);

  v10 = SKGLogEventInit();
  v11 = v10;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v11, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CSKeyphraseUpdaterHandleDonation", "", buf, 2u);
  }

  v12 = objc_alloc_init(CSEventFeedback);
  [(CSEventFeedback *)v12 setIndexType:[(CSEventListenerManager *)donationCopy folderFd]];
  [(CSEventFeedback *)v12 start];
  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  keyphraseFetchAttributes = [mEMORY[0x277D657A0] keyphraseFetchAttributes];

  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalMap](donationCopy)];
  v17 = [v15 initWithString:v16];

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = @"unknown";
  }

  [(CSEventFeedback *)v12 setBundleID:v18];
  v19 = objc_alloc(MEMORY[0x277CCACA8]);
  protectionClass = [(CSEventListenerDonation *)donationCopy protectionClass];
  v21 = [v19 initWithString:protectionClass];

  v22 = objc_alloc(MEMORY[0x277CCACA8]);
  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalQueue](donationCopy)];
  v24 = [v22 initWithString:v23];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[CSEventListenerManager totalJournalSize](donationCopy)];
  *buf = 0;
  v98 = buf;
  v99 = 0x3032000000;
  v100 = __Block_byref_object_copy__3;
  v101 = __Block_byref_object_dispose__3;
  v102 = 0;
  v96[0] = 0;
  v96[1] = v96;
  v96[2] = 0x2020000000;
  v96[3] = 0;
  v95 = 0;
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v26 = SKGLogKeyphraseInit();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      indexTypeName = [(CSEventListenerDonation *)donationCopy indexTypeName];
      totalJournalSize = [(CSEventListenerManager *)donationCopy totalJournalSize];
      getItemCount = [donationCopy getItemCount];
      *v103 = 138413058;
      selfCopy2 = self;
      v105 = 2080;
      v106 = indexTypeName;
      v107 = 2048;
      v108 = totalJournalSize;
      v109 = 1024;
      LODWORD(v110) = getItemCount;
      _os_log_impl(&dword_231B25000, v26, OS_LOG_TYPE_DEFAULT, "### donation %@ %s sn:%llu total incoming %u items", v103, 0x26u);
    }
  }

  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke;
  v82[3] = &unk_27893D4F8;
  v82[4] = self;
  v67 = v17;
  v83 = v67;
  v30 = blockCopy;
  v90 = v30;
  v31 = donationCopy;
  v84 = v31;
  v91 = v96;
  v66 = v24;
  v85 = v66;
  v32 = v12;
  v86 = v32;
  enabledCopy = enabled;
  v63 = keyphraseFetchAttributes;
  v87 = v63;
  v33 = v21;
  v88 = v33;
  v34 = v25;
  v89 = v34;
  v92 = buf;
  v93 = &v95;
  [v31 iterateItems:v82];
  v72 = v30[2](v30);
  if (!v72)
  {
    v42 = *(v98 + 5);
    if (v42)
    {
      v62 = [v42 count];
    }

    else
    {
      v62 = 0;
    }

    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v43 = SKGLogKeyphraseInit();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        indexTypeName2 = [(CSEventListenerDonation *)v31 indexTypeName];
        totalJournalSize2 = [(CSEventListenerManager *)v31 totalJournalSize];
        *v103 = 138413058;
        selfCopy2 = self;
        v105 = 2080;
        v106 = indexTypeName2;
        v107 = 2048;
        v108 = totalJournalSize2;
        v109 = 2048;
        v110 = v62;
        _os_log_impl(&dword_231B25000, v43, OS_LOG_TYPE_DEFAULT, "### donation %@ %s sn:%llu found %lu items", v103, 0x2Au);
      }
    }

    if (![(CSEventListenerManager *)v31 throttled])
    {
      if (!v62)
      {
        goto LABEL_45;
      }

      v51 = [objc_alloc(MEMORY[0x277CC34A8]) _initWithName:@"KeyphraseUpdate" protectionClass:v33 bundleIdentifier:v67 options:32];
LABEL_40:
      if (v51)
      {
        v54 = SKGLogEventInit();
        v55 = os_signpost_id_generate(v54);

        v56 = SKGLogEventInit();
        v57 = v56;
        if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
        {
          *v81 = 0;
          _os_signpost_emit_with_name_impl(&dword_231B25000, v57, OS_SIGNPOST_INTERVAL_BEGIN, v55, "CSKeyphraseUpdaterHandleDonation", "", v81, 2u);
        }

        v58 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CSKeyphraseUpdaterTimeout" code:-1 userInfo:0];
        v59 = *(v98 + 5);
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_57;
        v73[3] = &unk_27893D520;
        v74 = v32;
        v75 = v31;
        v77 = v62;
        v78 = v55;
        v79 = spid;
        v76 = handlerCopy;
        v80 = v95;
        [v51 indexSearchableItems:v59 timeout:v58 timeoutError:v73 completion:3.0e11];

        v41 = 1;
LABEL_49:

        goto LABEL_50;
      }

LABEL_45:
      [(CSEventFeedback *)v32 end];
      v60 = SKGLogEventInit();
      v51 = v60;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
      {
        *v81 = 0;
        _os_signpost_emit_with_name_impl(&dword_231B25000, v51, OS_SIGNPOST_INTERVAL_END, spid, "CSKeyphraseUpdaterHandleDonation", "", v81, 2u);
      }

      v41 = 0;
      goto LABEL_49;
    }

    homePathHash = [(CSEventListenerDonation *)v31 homePathHash];
    v47 = getCSBasePathForId(homePathHash);
    if (v47)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v48 = SKGLogKeyphraseInit();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = v47;
          uTF8String = [v47 UTF8String];
          *v103 = 136315138;
          selfCopy2 = uTF8String;
          _os_log_impl(&dword_231B25000, v48, OS_LOG_TYPE_DEFAULT, "Creating CSManagedSearchableIndex for path = %s", v103, 0xCu);
        }
      }

      if (v62)
      {
        v51 = [objc_alloc(MEMORY[0x277CC3448]) initWithPath:v47];
LABEL_39:

        goto LABEL_40;
      }
    }

    else if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v52 = SKGLogKeyphraseInit();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        homePathHash2 = [(CSEventListenerDonation *)v31 homePathHash];
        [CSDocumentUnderstandingUpdater handleDonation:v103 turboEnabled:homePathHash2 completionHandler:v52 cancelBlock:?];
      }
    }

    v51 = 0;
    goto LABEL_39;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v35 = SKGLogKeyphraseInit();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      taskName = [(CSKeyPhrasesUpdater *)self taskName];
      v37 = taskName;
      uTF8String2 = [taskName UTF8String];
      indexTypeName3 = [(CSEventListenerDonation *)v31 indexTypeName];
      totalJournalSize3 = [(CSEventListenerManager *)v31 totalJournalSize];
      *v103 = 136315650;
      selfCopy2 = uTF8String2;
      v105 = 2080;
      v106 = indexTypeName3;
      v107 = 2048;
      v108 = totalJournalSize3;
      _os_log_impl(&dword_231B25000, v35, OS_LOG_TYPE_DEFAULT, "### cancelling %s due to expiration request while processing type='%s' sn:'%llu'", v103, 0x20u);
    }
  }

  [(CSEventFeedback *)v32 end];
  (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
  v41 = 0;
LABEL_50:

  _Block_object_dispose(v96, 8);
  _Block_object_dispose(buf, 8);

  objc_autoreleasePoolPop(context);
  return v72 | v41;
}

uint64_t __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v83 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) shouldHandleJournalItem:v3 bundleID:*(a1 + 40)])
  {
    [(CSEventDonationJournalItem *)v3 identifier];
    v5 = MDJournalReaderMDPlistObjectCopy();
    v6 = [v5 mutableCopy];

    v7 = [SKGUpdaterStore instanceForIndexType:[(CSEventListenerManager *)*(a1 + 48) folderFd]];
    if (v7)
    {
      *(*(*(a1 + 104) + 8) + 24) = [v7 readSerialNumberFromBundleID:-[CSEventListenerManager journalMap](*(a1 + 48)) identifier:objc_msgSend(v6 UUID:"UTF8String") listenerType:{objc_msgSend(*(a1 + 56), "UTF8String"), objc_msgSend(*(a1 + 32), "eventType")}];
      if ([(CSEventListenerManager *)*(a1 + 48) totalJournalSize]< *(*(*(a1 + 104) + 8) + 24))
      {
        if (SKGLogGetCurrentLoggingLevel() >= 7)
        {
          v8 = SKGLogKeyphraseInit();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v42 = *(a1 + 32);
            v43 = [(CSEventListenerManager *)*(a1 + 48) totalJournalSize];
            v44 = *(*(*(a1 + 104) + 8) + 24);
            v45 = *(a1 + 40);
            *buf = 138413314;
            v74 = v42;
            v75 = 2048;
            v76 = v43;
            v77 = 2048;
            v78 = v44;
            v79 = 2112;
            v80 = v45;
            v81 = 2112;
            v82 = v6;
            _os_log_debug_impl(&dword_231B25000, v8, OS_LOG_TYPE_DEBUG, "%@ SKIPPING item serialNumber:%llu < latestSerialNumber:%llu | bundle:%@ identifier:%@", buf, 0x34u);
          }
        }

        v9 = (*(*(a1 + 96) + 16))();

        goto LABEL_10;
      }
    }

    [*(a1 + 64) setNumItemsInBatch:{objc_msgSend(*(a1 + 64), "numItemsInBatch") + 1}];
    if (*(a1 + 128))
    {
      v10 = 0;
    }

    else
    {
      v11 = [MEMORY[0x277D65798] sharedProcessor];
      if ([v11 canProcessEvent])
      {
        v10 = [*(a1 + 64) canProcessEvent:&unk_2846E77E8] ^ 1;
      }

      else
      {
        v10 = 1;
      }
    }

    v12 = [(CSEventDonationJournalItem *)v3 flags];
    v72 = 0;
    if (v10)
    {
      v13 = 0;
    }

    else
    {
      v14 = v12;
      v13 = [v3 attributesForKeys:*(a1 + 72) bundleID:*(a1 + 40)];
      if (v13)
      {
        v15 = [MEMORY[0x277D65798] sharedProcessor];
        v16 = [v15 canProcessEventForRecord:v13 bundleIdentifier:*(a1 + 40)];

        if (!v16)
        {
LABEL_36:

          objc_autoreleasePoolPop(v4);
          v9 = (*(*(a1 + 96) + 16))();
          goto LABEL_37;
        }

        v17 = [MEMORY[0x277D65798] sharedProcessor];
        v18 = [v17 needsSKGJournalKeyphrasesRecord:v13 bundleID:*(a1 + 40) protectionClass:*(a1 + 80) recordHasText:objc_msgSend(v3 shouldMarkComplete:"hasTextContent") isUpdate:{&v72, v14 & 1}];

        if ((v72 & 1) == 0)
        {
          if (v18)
          {
            v19 = SKGLogEventInit();
            v20 = os_signpost_id_generate(v19);

            v21 = SKGLogEventInit();
            v22 = v21;
            v50 = v20 - 1;
            if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_231B25000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "CSKeyphrasesUpdaterProcessSingleItem", "", buf, 2u);
            }

            spid = v20;

            v23 = [MEMORY[0x277D65798] sharedProcessor];
            v47 = *(a1 + 80);
            v48 = *(a1 + 40);
            v49 = *(a1 + 120);
            v65[0] = MEMORY[0x277D85DD0];
            v65[1] = 3221225472;
            v65[2] = __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_30;
            v65[3] = &unk_27893D480;
            v70 = *(a1 + 96);
            v66 = v7;
            v67 = *(a1 + 48);
            v68 = v6;
            v24 = *(a1 + 56);
            v25 = *(a1 + 104);
            v69 = v24;
            v71 = v25;
            v59[0] = MEMORY[0x277D85DD0];
            v59[1] = 3221225472;
            v59[2] = __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2;
            v59[3] = &unk_27893D4A8;
            v60 = v66;
            v61 = *(a1 + 48);
            v62 = v68;
            v26 = *(a1 + 56);
            v27 = *(a1 + 104);
            v63 = v26;
            v64 = v27;
            v53[0] = MEMORY[0x277D85DD0];
            v53[1] = 3221225472;
            v53[2] = __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_3;
            v53[3] = &unk_27893D4D0;
            v54 = *(a1 + 64);
            v55 = *(a1 + 40);
            v56 = *(a1 + 88);
            v28 = v62;
            v29 = *(a1 + 112);
            v57 = v28;
            v58 = v29;
            v51[0] = MEMORY[0x277D85DD0];
            v51[1] = 3221225472;
            v51[2] = __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_45;
            v51[3] = &unk_27893CC50;
            v52 = *(a1 + 96);
            [v23 enumerateProcessedItemsFromRecord:v13 referenceIdentifier:v28 bundleIdentifier:v48 protectionClass:v47 processorFlags:516 workCost:v49 fetchCachedLanguageBlock:v65 cacheLanguageBlock:v59 processedItemBlock:v53 cancelBlock:v51];

            v30 = SKGLogEventInit();
            v31 = v30;
            if (v50 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_231B25000, v31, OS_SIGNPOST_INTERVAL_END, spid, "CSKeyphrasesUpdaterProcessSingleItem", "", buf, 2u);
            }

            v32 = v70;
            goto LABEL_35;
          }
        }
      }
    }

    v32 = objc_alloc_init(MEMORY[0x277CC34B8]);
    [v32 setAttribute:*MEMORY[0x277CBEEE8] forKey:@"_kMDItemNeedsKeyphrases"];
    if (v72 == 1)
    {
      v33 = MEMORY[0x277CCABB0];
      v34 = [MEMORY[0x277D657A0] sharedContext];
      v35 = [v33 numberWithInteger:{objc_msgSend(v34, "keyphraseVersion")}];
      [v32 setAttribute:v35 forKey:@"kMDItemKeyphraseVersion"];

      updateAttributeSetForEvents(v32, @"_kMDItemKeyphrasesSN", *(a1 + 88));
    }

    v36 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v6 domainIdentifier:0 attributeSet:v32];
    [v36 setBundleID:*(a1 + 40)];
    [v36 setIsUpdate:1];
    v37 = *(*(*(a1 + 112) + 8) + 40);
    if (!v37)
    {
      v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v39 = *(*(a1 + 112) + 8);
      v40 = *(v39 + 40);
      *(v39 + 40) = v38;

      v37 = *(*(*(a1 + 112) + 8) + 40);
    }

    [v37 addObject:v36];
    [*(a1 + 64) logFlag:10 message:@"ignored"];

LABEL_35:
    goto LABEL_36;
  }

  v9 = (*(*(a1 + 96) + 16))();
LABEL_10:
  objc_autoreleasePoolPop(v4);
LABEL_37:

  return v9;
}

id __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_30(uint64_t a1)
{
  if ((*(*(a1 + 64) + 16))())
  {
    v2 = 0;
  }

  else
  {
    v2 = [*(a1 + 32) readLanguageFromBundleID:-[CSEventListenerManager journalMap](*(a1 + 40)) identifier:objc_msgSend(*(a1 + 48) UUID:"UTF8String") serialNumber:{objc_msgSend(*(a1 + 56), "UTF8String"), *(*(*(a1 + 72) + 8) + 24)}];
  }

  return v2;
}

uint64_t __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [(CSEventListenerManager *)v4 journalMap];
  v7 = [*(a1 + 48) UTF8String];
  v8 = [*(a1 + 56) UTF8String];
  v9 = *(*(*(a1 + 64) + 8) + 24);
  v10 = [v5 UTF8String];

  return [v3 writeLanguageForBundleID:v6 identifier:v7 UUID:v8 serialNumber:v9 language:v10];
}

uint64_t __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 didMakePIRCall] && objc_msgSend(v3, "errorCallingPIR"))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v30 = &unk_2846E7800;
    v31[0] = &unk_2846E7818;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    [v4 logErrorItemForBundleID:v5 counts:v6];
  }

  v7 = attributeSetForProcessedItem(v3);
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x277CC3468] sharedInstance];
    v10 = [v3 bundleIdentifier];
    [v9 logWithBundleID:v10 indexOperation:7 itemCount:1 code:0];

    v11 = [v3 keyphrasesCount];
    v12 = [v3 breadcrumbsCount];
    v13 = [v3 didMakePIRCall];
    v27 = *(a1 + 32);
    v14 = [v3 bundleIdentifier];
    v15 = [v3 textContentLanguage];
    v16 = [v3 textContentSize];
    v28[0] = &unk_2846E77E8;
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
    v29[0] = v17;
    v28[1] = &unk_2846E7830;
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
    v29[1] = v18;
    v28[2] = &unk_2846E7848;
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
    v29[2] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
    [v27 logProcessedItemForBundleID:v14 language:v15 textSize:v16 counts:v20];

    updateAttributeSetForEvents(v8, @"_kMDItemKeyphrasesSN", *(a1 + 48));
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CC34B8]);
    [*(a1 + 32) logFlag:10 message:@"ignored"];
  }

  [v8 setAttribute:*MEMORY[0x277CBEEE8] forKey:@"_kMDItemNeedsKeyphrases"];
  v21 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:*(a1 + 56) domainIdentifier:0 attributeSet:v8];
  [v21 setBundleID:*(a1 + 40)];
  [v21 setIsUpdate:1];
  v22 = *(*(*(a1 + 64) + 8) + 40);
  if (!v22)
  {
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = *(*(a1 + 64) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;

    v22 = *(*(*(a1 + 64) + 8) + 40);
  }

  [v22 addObject:v21];

  return 1;
}

void __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_57(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    [*(a1 + 32) logFlag:22 message:@"completed"];
  }

  [*(a1 + 32) end];
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v4 = SKGLogKeyphraseInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_57_cold_1(a1, v4);
    }
  }

  v5 = SKGLogEventInit();
  v6 = v5;
  v7 = *(a1 + 64);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v6, OS_SIGNPOST_INTERVAL_END, v7, "CSKeyphraseUpdaterHandleDonation", "", buf, 2u);
  }

  v8 = SKGLogEventInit();
  v9 = v8;
  v10 = *(a1 + 72);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CSKeyphraseUpdaterHandleDonation", "", v11, 2u);
  }

  (*(*(a1 + 48) + 16))();
}

void __81__CSKeyPhrasesUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke_57_cold_1(uint64_t a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [(CSEventListenerDonation *)*(a1 + 40) indexTypeName];
  v5 = [(CSEventListenerManager *)*(a1 + 40) totalJournalSize];
  v6 = *(a1 + 56);
  v7 = 136315650;
  v8 = v4;
  v9 = 2048;
  v10 = v5;
  v11 = 2048;
  v12 = v6;
  _os_log_debug_impl(&dword_231B25000, a2, OS_LOG_TYPE_DEBUG, "### %s sn:%llu updated %lu items", &v7, 0x20u);
}

@end