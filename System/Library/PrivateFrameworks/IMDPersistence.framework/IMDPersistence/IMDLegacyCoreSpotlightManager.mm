@interface IMDLegacyCoreSpotlightManager
+ (Class)__SLCollaborationHandshakeController;
+ (id)chatAutoDonatingCutomKey;
+ (id)chatAutoDonatingServerDateCustomKey;
+ (id)chatStyleCustomKey;
+ (id)handleToIdentityMapKey;
+ (id)localIdentityKey;
+ (id)localIdentityProofKey;
+ (id)resolvedURLCustomKey;
+ (id)sharedManager;
+ (id)threadIdentifierCustomKey;
- (BOOL)_shouldIndexNextBatchForBatchSize:(unint64_t)size;
- (BOOL)_shouldSkipMessagePartPrefixingForItemDictionary:(id)dictionary;
- (IMDLegacyCoreSpotlightManager)init;
- (NSMutableOrderedSet)blocklistMessageGUIDs;
- (id)_chatDictionaryForChatAtIndex:(unint64_t)index withChats:(id)chats;
- (id)_chatDictionaryForChatGUID:(id)d;
- (id)_copyNewSearchableIndexesForMessagesWithLastRowID:(unint64_t *)d messageRecordCount:(unint64_t *)count messagesWithItemsGeneratedCount:(unint64_t *)generatedCount reason:(int64_t)reason batchSize:(unint64_t)size timingCollection:(id)collection rejectedItems:(id)items;
- (id)_newSearchableChatItemsForChats:(id)chats;
- (id)_personIdentityQueue;
- (id)_scrutinyMessagesQueue;
- (id)chatSearchableItemForGUID:(id)d;
- (id)newChatSearchableItemForChatDictionary:(id)dictionary optionalLastMessageDate:(id)date;
- (id)newChatSearchableItemForChatDictionary:(id)dictionary optionalLastMessageDate:(id)date error:(id *)error;
- (id)newSearchableItemsForMessage:(id)message context:(id)context rejectedItems:(id)items;
- (id)newSearchableItemsForMessageGUID:(id)d context:(id)context rejectedItems:(id)items;
- (id)newSearchableItemsForMessageItemDictionary:(id)dictionary chatDictionary:(id)chatDictionary context:(id)context rejectedItems:(id)items;
- (id)searchableIndex;
- (id)searchableItemIdentifierForChatGUID:(id)d;
- (int64_t)totalMessages;
- (unint64_t)_batchSizeForTargetBatchSize:(unint64_t)size lastIndexedRowID:(unint64_t)d lastBatch:(BOOL *)batch;
- (void)_FPProviderIDForItems:(id)items;
- (void)_enumerateSearchableChatItemsForAllChatsWithBlock:(id)block timingCollection:(id)collection;
- (void)_indexSearchableChatItems:(id)items withReason:(int64_t)reason index:(id)index blocking:(BOOL)blocking;
- (void)_indexSearchableItems:(id)items rejectedItems:(id)rejectedItems clientState:(id)state lastIndexedRowID:(unint64_t)d messagesInBatch:(unint64_t)batch messagesWithItemsGeneratedCount:(unint64_t)count batchSize:(unint64_t)size lastBatch:(BOOL)self0 withIndex:(id)self1 reason:(int64_t)self2;
- (void)_postProcessIndexingForItem:(id)item chatDictionary:(id)dictionary isReindexing:(BOOL)reindexing;
- (void)_resolvedURLForItems:(id)items;
- (void)_sanitizeIndexesForCurrentVersionIfNeeded:(id)needed;
- (void)_suspendReindexingDueToError:(id)error;
- (void)_updateFilteringForSearchableItem:(id)item chatDictionary:(id)dictionary;
- (void)_updateItem:(id)item withFPProviderID:(id)d;
- (void)_updateItem:(id)item withIdentityMap:(id)map localIdentity:(id)identity localIdentityProof:(id)proof completionHandler:(id)handler;
- (void)_updateItem:(id)item withResolvedURL:(id)l;
- (void)addChatSearchableItemForChatGUID:(id)d reason:(int64_t)reason;
- (void)clearMessageGUIDFromScrutiny:(id)scrutiny;
- (void)deleteAllDonationsForAppDeletionWithCompletion:(id)completion;
- (void)deleteAllSearchableItemsWithReason:(int64_t)reason completionHandler:(id)handler;
- (void)deleteChatSearchableItemForChatGUID:(id)d reason:(int64_t)reason;
- (void)indexChatsWithReason:(int64_t)reason;
- (void)indexNextMessageBatchIfNeeded:(unint64_t)needed reason:(int64_t)reason completion:(id)completion;
- (void)reIndexWithLocalProofOfInclusionForItemsAsync:(id)async completionHandler:(id)handler;
- (void)setMessageGUIDUnderScrutiny:(id)scrutiny;
- (void)setNeedsMessageReindexingWithContext:(id)context completion:(id)completion;
@end

@implementation IMDLegacyCoreSpotlightManager

+ (id)sharedManager
{
  if (qword_1EBA53A98 != -1)
  {
    sub_1B7CF90E4();
  }

  v3 = qword_1EBA53A78;

  return v3;
}

- (IMDLegacyCoreSpotlightManager)init
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2, v3);
  isSpotlightRefactorEnabled = objc_msgSend_isSpotlightRefactorEnabled(v5, v6, v7, v8);

  if (isSpotlightRefactorEnabled)
  {
    sub_1B7CF90F8(v10, v11, v12, v13);
  }

  v30.receiver = self;
  v30.super_class = IMDLegacyCoreSpotlightManager;
  v14 = [(IMDLegacyCoreSpotlightManager *)&v30 init];
  if (v14)
  {
    v15 = IMGetCachedDomainValueForKey();
    v19 = objc_msgSend_count(v15, v16, v17, v18);
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v32 = v19;
        _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "Current blocklist size is %lu", buf, 0xCu);
      }
    }

    if (v19 >= 0xC9)
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(v32) = 200;
          _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Blocklist size > %d on load, truncating", buf, 8u);
        }
      }

      v23 = objc_msgSend_subarrayWithRange_(v15, v21, v19 - 200, 200);

      v15 = v23;
    }

    if (v15)
    {
      v24 = objc_alloc(MEMORY[0x1E695DFA0]);
      v27 = objc_msgSend_initWithArray_(v24, v25, v15, v26);
    }

    else
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    }

    blocklistMessageGUIDs = v14->_blocklistMessageGUIDs;
    v14->_blocklistMessageGUIDs = v27;
  }

  return v14;
}

- (int64_t)totalMessages
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = objc_msgSend_synchronousDatabase(IMDDatabase, a2, v2, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7B9E5CC;
  v8[3] = &unk_1E7CB6B98;
  v8[4] = &v9;
  objc_msgSend_fetchCountOfRecordType_completionHandler_(v4, v5, 0, v8);

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (id)searchableIndex
{
  if (objc_msgSend_deviceIsLockedDown(MEMORY[0x1E69A8020], a2, v2, v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = IMCoreSpotlightIndex();
  }

  return v4;
}

- (id)_personIdentityQueue
{
  if (qword_1EBA540D8 != -1)
  {
    sub_1B7CF9184();
  }

  v3 = qword_1EBA540D0;

  return v3;
}

- (id)_scrutinyMessagesQueue
{
  if (qword_1EDBE5BA8 != -1)
  {
    sub_1B7CF9198();
  }

  v3 = qword_1EDBE5B98;

  return v3;
}

+ (Class)__SLCollaborationHandshakeController
{
  if (qword_1EBA540E8 != -1)
  {
    sub_1B7CF91AC();
  }

  v3 = qword_1EBA540E0;

  return v3;
}

- (NSMutableOrderedSet)blocklistMessageGUIDs
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1B7AE1AB0;
  v13 = sub_1B7AE2560;
  v14 = 0;
  v5 = objc_msgSend__scrutinyMessagesQueue(self, a2, v2, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7B9E918;
  v8[3] = &unk_1E7CBB6F0;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(v5, v8);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)setMessageGUIDUnderScrutiny:(id)scrutiny
{
  scrutinyCopy = scrutiny;
  if (objc_msgSend_length(scrutinyCopy, v5, v6, v7))
  {
    v11 = objc_msgSend__scrutinyMessagesQueue(self, v8, v9, v10);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1B7B9EA1C;
    v20[3] = &unk_1E7CB6770;
    v20[4] = self;
    v21 = scrutinyCopy;
    dispatch_barrier_sync(v11, v20);
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF91C0(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }
}

- (void)clearMessageGUIDFromScrutiny:(id)scrutiny
{
  scrutinyCopy = scrutiny;
  if (objc_msgSend_length(scrutinyCopy, v5, v6, v7))
  {
    v11 = objc_msgSend__scrutinyMessagesQueue(self, v8, v9, v10);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1B7B9EB84;
    v20[3] = &unk_1E7CB6770;
    v20[4] = self;
    v21 = scrutinyCopy;
    dispatch_barrier_sync(v11, v20);
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF9238(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }
}

- (id)newSearchableItemsForMessageGUID:(id)d context:(id)context rejectedItems:(id)items
{
  dCopy = d;
  contextCopy = context;
  itemsCopy = items;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1B7AE1AB0;
  v28 = sub_1B7AE2560;
  v29 = 0;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = sub_1B7B9EE4C;
  v21 = &unk_1E7CBB6F0;
  v23 = &v24;
  v11 = dCopy;
  v22 = v11;
  IMDPersistencePerformBlock(&v18, 1, v12, v13);
  v15 = v25[5];
  if (v15)
  {
    v16 = objc_msgSend_newSearchableItemsForMessage_context_rejectedItems_(self, v14, v15, contextCopy, itemsCopy, v18, v19, v20, v21);
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v24, 8);
  return v16;
}

- (id)newSearchableItemsForMessage:(id)message context:(id)context rejectedItems:(id)items
{
  messageCopy = message;
  contextCopy = context;
  itemsCopy = items;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1B7AE1AB0;
  v31 = sub_1B7AE2560;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1B7AE1AB0;
  v25 = sub_1B7AE2560;
  v26 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7B9F048;
  block[3] = &unk_1E7CBBB48;
  v19 = &v27;
  v11 = messageCopy;
  v18 = v11;
  v20 = &v21;
  IMDPersistencePerformBlock(block, 1, v12, v13);
  v15 = objc_msgSend_newSearchableItemsForMessageItemDictionary_chatDictionary_context_rejectedItems_(self, v14, v28[5], v22[5], contextCopy, itemsCopy);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v15;
}

- (id)newSearchableItemsForMessageItemDictionary:(id)dictionary chatDictionary:(id)chatDictionary context:(id)context rejectedItems:(id)items
{
  v421 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  chatDictionaryCopy = chatDictionary;
  contextCopy = context;
  itemsCopy = items;
  if ((IMDCoreSpotlightDisabled(itemsCopy, v9, v10, v11) & 1) == 0)
  {
    IMDPersistenceCheckNotDatabaseThread();
    v16 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], v13, v14, v15);
    isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v16, v17, v18, v19);

    if (isUnderFirstDataProtectionLock)
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, " => Before first unlock, skipping indexing", buf, 2u);
        }
      }

      goto LABEL_2;
    }

    v22 = objc_alloc(MEMORY[0x1E695DF70]);
    v359 = objc_msgSend_initWithCapacity_(v22, v23, 2, v24);
    v358 = objc_msgSend_objectForKey_(dictionaryCopy, v25, @"guid", v26);
    v361 = objc_msgSend_objectForKey_(chatDictionaryCopy, v27, @"guid", v28);
    if (!objc_msgSend_length(v361, v29, v30, v31) || !objc_msgSend_length(v358, v32, v33, v34))
    {
      v48 = IMLogHandleForCategory();
      v49 = v48;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF93A8(dictionaryCopy, chatDictionaryCopy, v48, v50);
        v49 = v48;
      }

      goto LABEL_119;
    }

    v35 = IMDSpotlightPriorityIndexerClassesForIndexingContext(contextCopy);
    v355 = objc_msgSend_objectForKey_(chatDictionaryCopy, v36, @"groupName", v37);
    v39 = objc_msgSend_BOOLValueForKey_withDefault_(chatDictionaryCopy, v38, @"isBlackholed", 0);
    v41 = objc_msgSend_integerValueForKey_withDefault_(chatDictionaryCopy, v40, @"isFiltered", 0);
    v45 = objc_msgSend_blocklistMessageGUIDs(self, v42, v43, v44);
    if ((objc_msgSend_containsObject_(v45, v46, v358, v47) | v39))
    {

LABEL_15:
      if (IMOSLoggingEnabled())
      {
        v51 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v52 = @"NO";
          if (v39)
          {
            v52 = @"YES";
          }

          *buf = 138412546;
          *&buf[4] = v358;
          *&buf[12] = 2112;
          *&buf[14] = v52;
          _os_log_impl(&dword_1B7AD5000, v51, OS_LOG_TYPE_INFO, "IMDCoreSpotlight - Skipping indexing %@, denylisted - isBlackholed: %@", buf, 0x16u);
        }
      }

      v12 = MEMORY[0x1E695E0F0];
      goto LABEL_120;
    }

    if (v41 == 2)
    {
      goto LABEL_15;
    }

    if (IMOSLoggingEnabled())
    {
      v55 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v358;
        _os_log_impl(&dword_1B7AD5000, v55, OS_LOG_TYPE_INFO, "Indexing placing %@ under scrutiny", buf, 0xCu);
      }
    }

    objc_msgSend_setMessageGUIDUnderScrutiny_(self, v53, v358, v54);
    v56 = objc_alloc(MEMORY[0x1E6964E90]);
    v59 = objc_msgSend_initWithItemContentType_(v56, v57, *MEMORY[0x1E6963848], v58);
    v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v420 = 0;
    v409 = 0;
    v410 = &v409;
    v411 = 0x2020000000;
    v412 = 0;
    v61 = objc_alloc_init(IMDSpotlightIndexerTimingProfiler);
    v65 = objc_msgSend_spotlightTimeoutSeconds(MEMORY[0x1E69A7FF8], v62, v63, v64);
    objc_msgSend_startMainTimerWithExpectedTimeoutInterval_(v61, v66, v67, v68, v65);
    if (qword_1EBA540F8 != -1)
    {
      sub_1B7CF92B0();
    }

    v405 = 0;
    v406 = &v405;
    v407 = 0x2020000000;
    v408 = 0;
    v69 = dispatch_group_create();
    dispatch_group_enter(v69);
    v70 = qword_1EBA540F0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7BA058C;
    block[3] = &unk_1E7CBBB70;
    v346 = v35;
    v391 = v346;
    v350 = v61;
    v392 = v350;
    v402 = &v405;
    v71 = dictionaryCopy;
    v393 = v71;
    v354 = v59;
    v394 = v354;
    v366 = chatDictionaryCopy;
    v395 = v366;
    v72 = contextCopy;
    v396 = v72;
    v397 = itemsCopy;
    v352 = v60;
    v398 = v352;
    selfCopy = self;
    v403 = buf;
    v404 = &v409;
    v371 = v358;
    v400 = v371;
    group = v69;
    v401 = group;
    dispatch_async(v70, block);
    v76 = objc_msgSend_spotlightTimeoutSeconds(MEMORY[0x1E69A7FF8], v73, v74, v75);
    v77 = dispatch_time(0, 1000000000 * v76);
    if (dispatch_group_wait(group, v77))
    {
      objc_msgSend_stopMainTimerAndLogAfterFailure(v350, v78, v79, v80, v346);
      if (objc_msgSend_exitOnIndexingTimeout(MEMORY[0x1E69A7FF8], v81, v82, v83))
      {
        v345 = IMLogHandleForCategory();
        if (os_log_type_enabled(v345, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF9340();
        }

        exit(1);
      }

      v84 = IMLogHandleForCategory();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF92D8();
      }
    }

    if ((v406[3] & 1) == 0)
    {
      objc_msgSend_stopMainTimerAndLogAfterSuccess(v350, v78, v79, v80);
    }

    if (v410[3])
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_44;
      }

      v87 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
      {
        *v415 = 138412290;
        *v416 = v371;
        _os_log_impl(&dword_1B7AD5000, v87, OS_LOG_TYPE_INFO, "Indexing NOT removing %@ from scrutiny, exception was thrown", v415, 0xCu);
      }
    }

    else
    {
      objc_msgSend_clearMessageGUIDFromScrutiny_(self, v78, v371, v80);
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_44;
      }

      v87 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
      {
        *v415 = 138412290;
        *v416 = v371;
        _os_log_impl(&dword_1B7AD5000, v87, OS_LOG_TYPE_INFO, "Indexing removing %@ from scrutiny", v415, 0xCu);
      }
    }

LABEL_44:
    v353 = objc_msgSend_objectForKey_(v71, v85, @"threadOriginatorFormattedGUID", v86, v346);
    if ((*(*&buf[8] + 24) & 1) == 0)
    {
      v360 = objc_msgSend_objectForKey_(v71, v88, @"attributedBody", v90);
      v369 = objc_msgSend_objectForKey_(v71, v114, @"time", v115);
      v116 = objc_alloc(MEMORY[0x1E69A8118]);
      v118 = objc_msgSend_initWithMessageBody_messageGUID_(v116, v117, v360, v371);
      if ((objc_msgSend__shouldSkipMessagePartPrefixingForItemDictionary_(self, v119, v71, v120) & 1) != 0 || (objc_msgSend_messageParts(v118, v121, v122, v123), v124 = objc_claimAutoreleasedReturnValue(), v356 = v118, v128 = objc_msgSend_count(v124, v125, v126, v127) > 1, v124, !v128))
      {
        v182 = objc_msgSend_messageBody(v118, v121, v122, v123);
        v186 = objc_msgSend_string(v182, v183, v184, v185);
        objc_msgSend_associateMessageEntityWithIdentifier_displayTitle_displaySubtitle_date_(v354, v187, v371, v186, v355, v369);

        v188 = v353;
        if (!v353)
        {
          v188 = v371;
        }

        v189 = v188;
        v190 = objc_opt_class();
        v194 = objc_msgSend_threadIdentifierCustomKey(v190, v191, v192, v193);
        objc_msgSend_setValue_forCustomKey_(v354, v195, v189, v194);

        v196 = objc_alloc(MEMORY[0x1E6964E80]);
        v351 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v196, v197, v371, v361, v354);
        v201 = objc_msgSend_distantFuture(MEMORY[0x1E695DF00], v198, v199, v200);
        objc_msgSend_setExpirationDate_(v351, v202, v201, v203);

        if (v351 && (objc_msgSend__updateFilteringForSearchableItem_chatDictionary_(self, v204, v351, v366), objc_msgSend_addObject_(v359, v205, v351, v206), (objc_msgSend_isReindexing(v72, v207, v208, v209) & 1) == 0) && (MessageDate = objc_msgSend_newChatSearchableItemForChatDictionary_optionalLastMessageDate_(self, v210, v366, v369)) != 0)
        {
          objc_msgSend_addObject_(v359, v211, MessageDate, v212);
        }

        else
        {
          MessageDate = 0;
        }

        goto LABEL_74;
      }

      v388 = 0u;
      v389 = 0u;
      v386 = 0u;
      v387 = 0u;
      v129 = objc_msgSend_messageParts(v118, v121, v122, v123);
      v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(v129, v130, &v386, v418, 16);
      if (v134)
      {
        v135 = *v387;
        v136 = *MEMORY[0x1E69A5F00];
        v373 = *MEMORY[0x1E69A5F20];
        obj = v129;
        do
        {
          for (i = 0; i != v134; ++i)
          {
            if (*v387 != v135)
            {
              objc_enumerationMutation(obj);
            }

            v138 = *(*(&v386 + 1) + 8 * i);
            v139 = objc_msgSend_messagePartBody(v138, v131, v132, v133);
            v143 = objc_msgSend_string(v139, v140, v141, v142);

            if ((objc_msgSend_isEqualToString_(v143, v144, v136, v145) & 1) == 0 && (objc_msgSend_isEqualToString_(v143, v146, v373, v147) & 1) == 0)
            {
              v151 = objc_msgSend_copy(v354, v148, v149, v150);
              v154 = objc_msgSend_messagePartGUIDForMessageGUID_(v138, v152, v371, v153);
              v158 = objc_msgSend_encodedMessagePartGUID(v154, v155, v156, v157);

              objc_msgSend_associateMessageEntityWithIdentifier_displayTitle_displaySubtitle_date_(v151, v159, v158, v143, v355, v369);
              objc_msgSend_setTextContent_(v151, v160, v143, v161);
              v162 = v353;
              if (!v353)
              {
                v162 = v158;
              }

              v163 = v162;
              v164 = objc_opt_class();
              v168 = objc_msgSend_threadIdentifierCustomKey(v164, v165, v166, v167);
              objc_msgSend_setValue_forCustomKey_(v151, v169, v163, v168);

              v170 = objc_alloc(MEMORY[0x1E6964E80]);
              v172 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v170, v171, v158, v361, v151);
              v176 = objc_msgSend_distantFuture(MEMORY[0x1E695DF00], v173, v174, v175);
              objc_msgSend_setExpirationDate_(v172, v177, v176, v178);

              if (v172)
              {
                objc_msgSend__updateFilteringForSearchableItem_chatDictionary_(self, v179, v172, v366);
                objc_msgSend_addObject_(v359, v180, v172, v181);
              }
            }
          }

          v129 = obj;
          v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v131, &v386, v418, 16);
        }

        while (v134);
      }
    }

    if (!objc_msgSend_count(v352, v88, v89, v90))
    {
      MessageDate = 0;
      v351 = 0;
      goto LABEL_76;
    }

    v94 = v353;
    if (!v353)
    {
      v94 = v371;
    }

    v360 = v94;
    v95 = objc_opt_class();
    v99 = objc_msgSend_threadIdentifierCustomKey(v95, v96, v97, v98);
    objc_msgSend_setValue_forCustomKey_(v354, v100, v360, v99);

    objc_msgSend_setDisableSearchInSpotlight_(v354, v101, MEMORY[0x1E695E118], v102);
    v103 = objc_alloc(MEMORY[0x1E6964E80]);
    v351 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v103, v104, v371, v361, v354);
    v108 = objc_msgSend_distantFuture(MEMORY[0x1E695DF00], v105, v106, v107);
    objc_msgSend_setExpirationDate_(v351, v109, v108, v110);

    objc_msgSend__updateFilteringForSearchableItem_chatDictionary_(self, v111, v351, v366);
    objc_msgSend_addObject_(v359, v112, v351, v113);
    MessageDate = 0;
LABEL_74:

LABEL_76:
    if (objc_msgSend_count(v352, v91, v92, v93))
    {
      objc_msgSend_addObjectsFromArray_(v359, v213, v352, v215);
    }

    if (objc_msgSend_count(v359, v213, v214, v215))
    {
      v367 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v357 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v384 = 0u;
      v385 = 0u;
      v382 = 0u;
      v383 = 0u;
      obja = v359;
      v217 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v216, &v382, v417, 16);
      if (!v217)
      {
        goto LABEL_102;
      }

      v370 = *v383;
      while (1)
      {
        v372 = v217;
        for (j = 0; j != v372; ++j)
        {
          if (*v383 != v370)
          {
            objc_enumerationMutation(obja);
          }

          v222 = *(*(&v382 + 1) + 8 * j);
          v223 = objc_msgSend_attributeSet(v222, v218, v219, v220);
          v227 = objc_msgSend_messageType(v223, v224, v225, v226);

          if (objc_msgSend_isEqualToString_(v227, v228, @"lnk", v229))
          {
            v233 = objc_msgSend_attributeSet(v222, v230, v231, v232);
            v374 = objc_msgSend_contentCreationDate(v233, v234, v235, v236);

            v240 = objc_msgSend_currentCalendar(MEMORY[0x1E695DEE8], v237, v238, v239);
            v244 = objc_msgSend_now(MEMORY[0x1E695DF00], v241, v242, v243);
            v246 = objc_msgSend_dateByAddingUnit_value_toDate_options_(v240, v245, 16, -30, v244, 0);

            v250 = objc_msgSend_currentCalendar(MEMORY[0x1E695DEE8], v247, v248, v249);
            v253 = objc_msgSend_startOfDayForDate_(v250, v251, v246, v252);

            if (objc_msgSend_compare_(v374, v254, v253, v255) == 1)
            {
              objc_msgSend_addObject_(v367, v256, v222, v257);
            }

            else if (IMOSLoggingEnabled())
            {
              v261 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v261, OS_LOG_TYPE_INFO))
              {
                v265 = objc_msgSend_attributeSet(v222, v262, v263, v264);
                v269 = objc_msgSend_uniqueIdentifier(v265, v266, v267, v268);
                *v415 = 67109378;
                *v416 = 30;
                *&v416[4] = 2112;
                *&v416[6] = v269;
                _os_log_impl(&dword_1B7AD5000, v261, OS_LOG_TYPE_INFO, "Skipping adding resolvedURL since link is older than %d days: %@", v415, 0x12u);
              }
            }

            v270 = objc_msgSend_attributeSet(v222, v258, v259, v260);
            v274 = objc_msgSend_isShared(v270, v271, v272, v273);
            v278 = objc_msgSend_BOOLValue(v274, v275, v276, v277);

            if (v278)
            {
              v282 = objc_msgSend_attributeSet(v222, v279, v280, v281);
              v286 = objc_msgSend_collaborationMetadataKey(IMDSharedWithYouMetadataManager, v283, v284, v285);
              v289 = objc_msgSend_valueForCustomKey_(v282, v287, v286, v288);

              v290 = MEMORY[0x1E696ACD0];
              v291 = MEMORY[0x1E695DFD8];
              v414 = objc_opt_class();
              v293 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v292, &v414, 1);
              v296 = objc_msgSend_setWithArray_(v291, v294, v293, v295);
              v381 = 0;
              v298 = objc_msgSend__strictlyUnarchivedObjectOfClasses_fromData_error_(v290, v297, v296, v289, &v381);
              v299 = v381;

              if (v298)
              {
                v303 = objc_msgSend_collaborationIdentifier(v298, v300, v301, v302);
                if (v303)
                {
                  if (objc_opt_respondsToSelector())
                  {

                    goto LABEL_97;
                  }

                  v309 = objc_msgSend_handleToIdentityMap(v298, v304, v305, v306);
                  v310 = v309 == 0;

                  if (!v310)
                  {
LABEL_97:
                    objc_msgSend_addObject_(v357, v307, v222, v308);
                  }
                }
              }
            }
          }
        }

        v217 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v218, &v382, v417, 16);
        if (!v217)
        {
LABEL_102:

          if (objc_msgSend_count(v357, v311, v312, v313))
          {
            v379 = 0u;
            v380 = 0u;
            v377 = 0u;
            v378 = 0u;
            v317 = v357;
            v321 = objc_msgSend_countByEnumeratingWithState_objects_count_(v317, v318, &v377, v413, 16);
            if (v321)
            {
              v322 = *v378;
              do
              {
                for (k = 0; k != v321; ++k)
                {
                  if (*v378 != v322)
                  {
                    objc_enumerationMutation(v317);
                  }

                  v324 = objc_msgSend_indexOfObject_(obja, v319, *(*(&v377 + 1) + 8 * k), v320);
                  v327 = objc_msgSend_objectAtIndex_(obja, v325, v324, v326);
                  if (IMOSLoggingEnabled())
                  {
                    v330 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v330, OS_LOG_TYPE_INFO))
                    {
                      v334 = objc_msgSend_attributeSet(v327, v331, v332, v333);
                      v338 = objc_msgSend_uniqueIdentifier(v334, v335, v336, v337);
                      *v415 = 138412290;
                      *v416 = v338;
                      _os_log_impl(&dword_1B7AD5000, v330, OS_LOG_TYPE_INFO, "Setting CS Item with uniqueidentifier  %@ to be updatable", v415, 0xCu);
                    }
                  }

                  objc_msgSend_setIsUpdate_(v327, v328, 1, v329);
                }

                v321 = objc_msgSend_countByEnumeratingWithState_objects_count_(v317, v319, &v377, v413, 16);
              }

              while (v321);
            }
          }

          if (objc_msgSend_count(v367, v314, v315, v316))
          {
            objc_msgSend__resolvedURLForItems_(self, v339, v367, v340);
            objc_msgSend__FPProviderIDForItems_(self, v341, v367, v342);
            objc_msgSend_reIndexWithLocalProofOfInclusionForItemsAsync_completionHandler_(self, v343, v367, &unk_1F2FA0EF0);
          }

          break;
        }
      }
    }

    _Block_object_dispose(&v405, 8);
    _Block_object_dispose(&v409, 8);
    _Block_object_dispose(buf, 8);

    v49 = v351;
LABEL_119:

    v12 = v359;
LABEL_120:

    goto LABEL_121;
  }

LABEL_2:
  v12 = 0;
LABEL_121:

  return v12;
}

- (void)_updateFilteringForSearchableItem:(id)item chatDictionary:(id)dictionary
{
  itemCopy = item;
  dictionaryCopy = dictionary;
  v9 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8018], v6, v7, v8);
  v11 = objc_msgSend_getValueFromDomain_forKey_(v9, v10, @"com.apple.MobileSMS", @"spamFiltrationExtensionID");
  if (objc_msgSend_isEqualToString_(v11, v12, @"com.apple.smsFilter.extension", v13))
  {
    v16 = objc_msgSend_objectForKey_(dictionaryCopy, v14, @"properties", v15);
    v19 = objc_msgSend_objectForKey_(v16, v17, @"SMSSubCategory", v18);
    v23 = objc_msgSend_integerValue(v19, v20, v21, v22);

    if (v23 == 4)
    {
      v27 = objc_msgSend_attributeSet(itemCopy, v24, v25, v26);
      objc_msgSend_setPotentialEventMessage_(v27, v28, MEMORY[0x1E695E118], v29);
    }
  }
}

- (void)_postProcessIndexingForItem:(id)item chatDictionary:(id)dictionary isReindexing:(BOOL)reindexing
{
  dictionaryCopy = dictionary;
  v26 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v7, @"guid", v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v9, @"groupPhotoGUID", v10);
  v14 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v12, @"groupPhotoPath", v13);

  if (objc_msgSend_length(v11, v15, v16, v17) && objc_msgSend_length(v14, v18, v19, v20))
  {
    v24 = objc_msgSend__donationManager(self, v21, v22, v23);
    objc_msgSend_copyGroupPhotoToExternalPathIfNecessary_chatGUID_attachmentFilepath_(v24, v25, v11, v26, v14);
  }
}

+ (id)resolvedURLCustomKey
{
  if (qword_1EBA54108 != -1)
  {
    sub_1B7CF9470();
  }

  v3 = qword_1EBA54100;

  return v3;
}

- (void)_updateItem:(id)item withResolvedURL:(id)l
{
  v66[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  lCopy = l;
  if ((IMDCoreSpotlightDisabled(lCopy, v8, v9, v10) & 1) == 0)
  {
    if (objc_msgSend_length(lCopy, v11, v12, v13))
    {
      v14 = objc_alloc(MEMORY[0x1E6964E90]);
      v17 = objc_msgSend_initWithItemContentType_(v14, v15, *MEMORY[0x1E6963848], v16);
      v18 = objc_opt_class();
      v22 = objc_msgSend_resolvedURLCustomKey(v18, v19, v20, v21);
      objc_msgSend_setValue_forCustomKey_(v17, v23, lCopy, v22);

      v27 = objc_msgSend_attributeSet(itemCopy, v24, v25, v26);
      v31 = objc_msgSend_bundleID(v27, v28, v29, v30);
      objc_msgSend_setBundleID_(v17, v32, v31, v33);

      v37 = objc_msgSend_attributeSet(itemCopy, v34, v35, v36);
      v41 = objc_msgSend_identifier(v37, v38, v39, v40);
      objc_msgSend_setIdentifier_(v17, v42, v41, v43);

      v44 = objc_alloc(MEMORY[0x1E6964E80]);
      v48 = objc_msgSend_uniqueIdentifier(itemCopy, v45, v46, v47);
      v52 = objc_msgSend_domainIdentifier(itemCopy, v49, v50, v51);
      v54 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v44, v53, v48, v52, v17);

      objc_msgSend_setIsUpdate_(v54, v55, 1, v56);
      v60 = objc_msgSend_searchableIndex(self, v57, v58, v59);
      v66[0] = v54;
      v62 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v61, v66, 1);
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = sub_1B7BA0D98;
      v64[3] = &unk_1E7CB6C58;
      v65 = itemCopy;
      objc_msgSend_indexSearchableItems_completionHandler_(v60, v63, v62, v64);
    }

    else
    {
      v17 = IMLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF9484();
      }
    }
  }
}

- (void)_updateItem:(id)item withFPProviderID:(id)d
{
  v82[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  dCopy = d;
  if ((IMDCoreSpotlightDisabled(dCopy, v8, v9, v10) & 1) == 0)
  {
    if (objc_msgSend_length(dCopy, v11, v12, v13))
    {
      v14 = objc_alloc(MEMORY[0x1E6964E90]);
      v17 = objc_msgSend_initWithItemContentType_(v14, v15, *MEMORY[0x1E6963848], v16);
      objc_msgSend_setFileProviderID_(v17, v18, dCopy, v19);
      v23 = objc_msgSend_attributeSet(itemCopy, v20, v21, v22);
      v27 = objc_msgSend_bundleID(v23, v24, v25, v26);
      objc_msgSend_setBundleID_(v17, v28, v27, v29);

      v33 = objc_msgSend_attributeSet(itemCopy, v30, v31, v32);
      v37 = objc_msgSend_identifier(v33, v34, v35, v36);
      objc_msgSend_setIdentifier_(v17, v38, v37, v39);

      v43 = objc_msgSend_attributeSet(itemCopy, v40, v41, v42);
      v47 = objc_msgSend_contentType(v43, v44, v45, v46);
      objc_msgSend_setContentType_(v17, v48, v47, v49);

      v53 = objc_msgSend_attributeSet(itemCopy, v50, v51, v52);
      v57 = objc_msgSend_contentTypeTree(v53, v54, v55, v56);
      objc_msgSend_setContentTypeTree_(v17, v58, v57, v59);

      v60 = objc_alloc(MEMORY[0x1E6964E80]);
      v64 = objc_msgSend_uniqueIdentifier(itemCopy, v61, v62, v63);
      v68 = objc_msgSend_domainIdentifier(itemCopy, v65, v66, v67);
      v70 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v60, v69, v64, v68, v17);

      objc_msgSend_setIsUpdate_(v70, v71, 1, v72);
      v76 = objc_msgSend_searchableIndex(self, v73, v74, v75);
      v82[0] = v70;
      v78 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v77, v82, 1);
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = sub_1B7BA1168;
      v80[3] = &unk_1E7CB6C58;
      v81 = itemCopy;
      objc_msgSend_indexSearchableItems_completionHandler_(v76, v79, v78, v80);
    }

    else
    {
      v17 = IMLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF94C0();
      }
    }
  }
}

- (void)_updateItem:(id)item withIdentityMap:(id)map localIdentity:(id)identity localIdentityProof:(id)proof completionHandler:(id)handler
{
  v129 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  mapCopy = map;
  identityCopy = identity;
  proofCopy = proof;
  handlerCopy = handler;
  if (IMDCoreSpotlightDisabled(handlerCopy, v17, v18, v19))
  {
LABEL_12:
    handlerCopy[2](handlerCopy);
    goto LABEL_17;
  }

  if (!mapCopy || !identityCopy || !proofCopy)
  {
    v109 = IMLogHandleForCategory();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v124 = identityCopy;
      v125 = 2112;
      v126 = proofCopy;
      v127 = 2112;
      v128 = mapCopy;
      _os_log_error_impl(&dword_1B7AD5000, v109, OS_LOG_TYPE_ERROR, "Invalid localIdentity: %@, localIdentityProof: %@ or identityMap: %@", buf, 0x20u);
    }

    goto LABEL_12;
  }

  v20 = objc_alloc(MEMORY[0x1E6964E90]);
  v23 = objc_msgSend_initWithItemContentType_(v20, v21, *MEMORY[0x1E6963848], v22);
  v121 = 0;
  v25 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v24, identityCopy, 1, &v121);
  v26 = v121;
  v120 = 0;
  v114 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v27, proofCopy, 1, &v120);
  v115 = v120;
  v119 = 0;
  v29 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v28, mapCopy, 1, &v119);
  v30 = v119;
  v113 = v30;
  if (v26 || v115 || v30)
  {
    v110 = IMLogHandleForCategory();
    if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v124 = v26;
      v125 = 2112;
      v126 = v115;
      v127 = 2112;
      v128 = v113;
      _os_log_error_impl(&dword_1B7AD5000, v110, OS_LOG_TYPE_ERROR, "Archive error for localIdentity: %@, localIdentityProof: %@ or identityMap: %@", buf, 0x20u);
    }

    handlerCopy[2](handlerCopy);
  }

  else
  {
    objc_msgSend_attributeSet(itemCopy, v31, v32, v33);
    v34 = v112 = v29;
    v38 = objc_msgSend_bundleID(v34, v35, v36, v37);
    objc_msgSend_setBundleID_(v23, v39, v38, v40);

    v44 = objc_msgSend_attributeSet(itemCopy, v41, v42, v43);
    v48 = objc_msgSend_identifier(v44, v45, v46, v47);
    objc_msgSend_setIdentifier_(v23, v49, v48, v50);

    v51 = objc_opt_class();
    v55 = objc_msgSend_localIdentityKey(v51, v52, v53, v54);
    objc_msgSend_setValue_forCustomKey_(v23, v56, v25, v55);

    v57 = objc_opt_class();
    v61 = objc_msgSend_localIdentityProofKey(v57, v58, v59, v60);
    objc_msgSend_setValue_forCustomKey_(v23, v62, v114, v61);

    v63 = objc_opt_class();
    v67 = objc_msgSend_handleToIdentityMapKey(v63, v64, v65, v66);
    objc_msgSend_setValue_forCustomKey_(v23, v68, v112, v67);

    v72 = objc_msgSend_attributeSet(itemCopy, v69, v70, v71);
    v76 = objc_msgSend_contentType(v72, v73, v74, v75);
    objc_msgSend_setContentType_(v23, v77, v76, v78);

    v82 = objc_msgSend_attributeSet(itemCopy, v79, v80, v81);
    v86 = objc_msgSend_contentTypeTree(v82, v83, v84, v85);
    objc_msgSend_setContentTypeTree_(v23, v87, v86, v88);

    v89 = objc_alloc(MEMORY[0x1E6964E80]);
    v93 = objc_msgSend_uniqueIdentifier(itemCopy, v90, v91, v92);
    objc_msgSend_domainIdentifier(itemCopy, v94, v95, v96);
    v97 = v111 = v25;
    v99 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v89, v98, v93, v97, v23);

    v26 = 0;
    objc_msgSend_setIsUpdate_(v99, v100, 1, v101);
    v105 = objc_msgSend_searchableIndex(self, v102, v103, v104);
    v122 = v99;
    v107 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v106, &v122, 1);
    v116[0] = MEMORY[0x1E69E9820];
    v116[1] = 3221225472;
    v116[2] = sub_1B7BA17A0;
    v116[3] = &unk_1E7CBB398;
    v117 = itemCopy;
    v118 = handlerCopy;
    objc_msgSend_indexSearchableItems_completionHandler_(v105, v108, v107, v116);

    v25 = v111;
    v29 = v112;
  }

LABEL_17:
}

- (void)_resolvedURLForItems:(id)items
{
  v60 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v56 = objc_msgSend_count(itemsCopy, v5, v6, v7);
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Checking if we need to add resolved URLs for %lu items", buf, 0xCu);
    }
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v8 = itemsCopy;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v51, v59, 16);
  if (v13)
  {
    v15 = *v52;
    *&v14 = 138412546;
    v48 = v14;
    do
    {
      v16 = 0;
      do
      {
        if (*v52 != v15)
        {
          objc_enumerationMutation(v8);
        }

        v17 = *(*(&v51 + 1) + 8 * v16);
        v18 = objc_msgSend_attributeSet(v17, v10, v11, v12, v48);
        v25 = objc_msgSend_URL(v18, v19, v20, v21);
        if (qword_1EBA54178 != -1)
        {
          sub_1B7CF9528();
        }

        isNewsURL = objc_msgSend_nr_isNewsURL(v25, v22, v23, v24);
        isWebURL = objc_msgSend_nr_isWebURL(v25, v27, v28, v29);
        if (IMOSLoggingEnabled())
        {
          v34 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            if (isNewsURL)
            {
              v35 = @"YES";
            }

            else
            {
              v35 = @"NO";
            }

            *buf = v48;
            v56 = v35;
            if (isWebURL)
            {
              v36 = @"YES";
            }

            else
            {
              v36 = @"NO";
            }

            v57 = 2112;
            v58 = v36;
            _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_INFO, "isNewsURL: %@ isWebURL:%@", buf, 0x16u);
          }
        }

        if ((isNewsURL | isWebURL))
        {
          v37 = objc_msgSend_sharedManager(qword_1EBA54110, v31, v32, v33);
          v40 = v37;
          if (isNewsURL)
          {
            objc_msgSend_createResolutionOperationForNewsURL_(v37, v38, v25, v39);
          }

          else
          {
            objc_msgSend_createResolutionOperationForWebURL_(v37, v38, v25, v39);
          }
          v42 = ;

          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = sub_1B7BA1C78;
          v50[3] = &unk_1E7CBB3E8;
          v50[4] = v17;
          v50[5] = self;
          objc_msgSend_setResolutionCompletion_(v42, v43, v50, v44);
          objc_msgSend_start(v42, v45, v46, v47);
        }

        else if (IMOSLoggingEnabled())
        {
          v41 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v41, OS_LOG_TYPE_INFO, "URL was not classified as either WebURL or a News URL", buf, 2u);
          }
        }

        ++v16;
      }

      while (v13 != v16);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v51, v59, 16);
    }

    while (v13);
  }
}

- (void)_FPProviderIDForItems:(id)items
{
  selfCopy = self;
  v47 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v46 = objc_msgSend_count(itemsCopy, v5, v6, v7);
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Checking if we need to add FileProviderID for %lu items", buf, 0xCu);
    }
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = itemsCopy;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v40, v44, 16);
  if (v12)
  {
    v13 = *v41;
    do
    {
      v14 = 0;
      do
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v40 + 1) + 8 * v14);
        v16 = objc_msgSend_attributeSet(v15, v9, v10, v11, selfCopy);
        v20 = objc_msgSend_URL(v16, v17, v18, v19);
        v24 = objc_msgSend_isShared(v16, v21, v22, v23);
        v28 = objc_msgSend_BOOLValue(v24, v25, v26, v27);

        if (((v20 != 0) & v28) == 1)
        {
          if (qword_1EBA54120 != -1)
          {
            sub_1B7CF95C0();
          }

          v29 = off_1EBA54118;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = sub_1B7BA21E0;
          aBlock[3] = &unk_1E7CBB438;
          v30 = v20;
          v36 = v30;
          v37 = v16;
          v38 = selfCopy;
          v39 = v15;
          v31 = _Block_copy(aBlock);
          v29(v30, 0, v31);
        }

        else if (IMOSLoggingEnabled())
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_INFO, "URL was not classified as a CollaborationURL", buf, 2u);
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v40, v44, 16);
    }

    while (v12);
  }
}

- (void)reIndexWithLocalProofOfInclusionForItemsAsync:(id)async completionHandler:(id)handler
{
  v141 = *MEMORY[0x1E69E9840];
  asyncCopy = async;
  block = handler;
  group = dispatch_group_create();
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = objc_msgSend_count(asyncCopy, v7, v8, v9, block);
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Generating and donating local proof of inclusion for %lu items", &buf, 0xCu);
    }
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  obj = asyncCopy;
  v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v127, v140, 16);
  if (v105)
  {
    v103 = *v128;
    v99 = v114;
    do
    {
      v14 = 0;
      do
      {
        if (*v128 != v103)
        {
          v15 = v14;
          objc_enumerationMutation(obj);
          v14 = v15;
        }

        v108 = v14;
        v16 = *(*(&v127 + 1) + 8 * v14);
        v110 = objc_msgSend_attributeSet(v16, v11, v12, v13, block, v99);
        v109 = objc_msgSend_URL(v110, v17, v18, v19);
        v23 = objc_msgSend_isShared(v110, v20, v21, v22);
        v27 = objc_msgSend_BOOLValue(v23, v24, v25, v26);

        if (((v109 != 0) & v27) == 1)
        {
          v31 = objc_msgSend_attributeSet(v16, v28, v29, v30);
          v104 = objc_msgSend_accountHandles(v31, v32, v33, v34);

          v38 = objc_msgSend_attributeSet(v16, v35, v36, v37);
          v42 = objc_msgSend_collaborationMetadataKey(IMDSharedWithYouMetadataManager, v39, v40, v41);
          v107 = objc_msgSend_valueForCustomKey_(v38, v43, v42, v44);

          v45 = MEMORY[0x1E696ACD0];
          v46 = MEMORY[0x1E695DFD8];
          v139 = objc_opt_class();
          v48 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v47, &v139, 1);
          v51 = objc_msgSend_setWithArray_(v46, v49, v48, v50);
          v126 = 0;
          v53 = objc_msgSend__strictlyUnarchivedObjectOfClasses_fromData_error_(v45, v52, v51, v107, &v126);
          v106 = v126;

          if (v53)
          {
            v57 = objc_msgSend_collaborationIdentifier(v53, v54, v55, v56);
            v58 = v57 == 0;

            if (v58)
            {
              v94 = IMLogHandleForCategory();
              if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
              {
                sub_1B7CF96A0(&v124, v125);
              }
            }

            else
            {
              if (objc_opt_respondsToSelector())
              {
                v62 = objc_msgSend_handleToIdentityMap(v53, v59, v60, v61);
                v63 = v62 == 0;

                if (!v63)
                {
                  *&buf = 0;
                  *(&buf + 1) = &buf;
                  v133 = 0x3032000000;
                  v134 = sub_1B7AE1AB0;
                  v135 = sub_1B7AE2560;
                  v136 = 0;
                  v120 = 0u;
                  v121 = 0u;
                  v122 = 0u;
                  v123 = 0u;
                  v64 = v104;
                  v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v65, &v120, v131, 16);
                  if (v66)
                  {
                    v67 = *v121;
                    do
                    {
                      for (i = 0; i != v66; ++i)
                      {
                        if (*v121 != v67)
                        {
                          objc_enumerationMutation(v64);
                        }

                        v69 = *(*(&v120 + 1) + 8 * i);
                        if (objc_opt_respondsToSelector())
                        {
                          v73 = objc_msgSend_handleToIdentityMap(v53, v70, v71, v72);
                          v76 = objc_msgSend_objectForKey_(v73, v74, v69, v75);

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            objc_storeStrong((*(&buf + 1) + 40), v76);
                          }
                        }
                      }

                      v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v70, &v120, v131, 16);
                    }

                    while (v66);
                  }

                  v80 = objc_alloc(objc_msgSend___SLCollaborationHandshakeController(IMDLegacyCoreSpotlightManager, v77, v78, v79));
                  v84 = objc_msgSend__personIdentityQueue(self, v81, v82, v83);
                  v86 = objc_msgSend_initWithTargetSerialQueue_synchronous_(v80, v85, v84, 1);

                  if (v86)
                  {
                    if (objc_opt_respondsToSelector())
                    {
                      dispatch_group_enter(group);
                      v87 = *(*(&buf + 1) + 40);
                      v91 = objc_msgSend_collaborationIdentifier(v53, v88, v89, v90);
                      v113[0] = MEMORY[0x1E69E9820];
                      v113[1] = 3221225472;
                      v114[0] = sub_1B7BA3068;
                      v114[1] = &unk_1E7CBBB98;
                      p_buf = &buf;
                      v114[2] = self;
                      v114[3] = v16;
                      v115 = v53;
                      v116 = group;
                      objc_msgSend_generateProofForIdentity_collaborationIdentifier_timeout_completion_(v86, v92, v87, v91, v113, 10.0);

                      goto LABEL_49;
                    }

                    v95 = IMLogHandleForCategory();
                    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
                    {
                      sub_1B7CF9638(&v111, v112);
                    }
                  }

                  else
                  {
                    v95 = IMLogHandleForCategory();
                    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
                    {
                      sub_1B7CF966C(&v118, v119);
                    }
                  }

LABEL_49:
                  _Block_object_dispose(&buf, 8);

LABEL_50:
                  goto LABEL_51;
                }
              }

              if (!IMOSLoggingEnabled())
              {
                goto LABEL_50;
              }

              v94 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
              {
                LOWORD(buf) = 0;
                _os_log_impl(&dword_1B7AD5000, v94, OS_LOG_TYPE_INFO, "handleToIdentityMap is required for identity proof lookup. Not indexing proof of inclusion this item. This may not be a generic 3rd party collaboration.", &buf, 2u);
              }
            }
          }

          else
          {
            v94 = IMLogHandleForCategory();
            if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
            {
              sub_1B7CF96D4(v137, v106, &v138, v94);
            }
          }

          goto LABEL_50;
        }

        if (IMOSLoggingEnabled())
        {
          v93 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_1B7AD5000, v93, OS_LOG_TYPE_INFO, "URL was not classified as a CollaborationURL", &buf, 2u);
          }
        }

LABEL_51:

        v14 = v108 + 1;
      }

      while (v108 + 1 != v105);
      v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v127, v140, 16);
    }

    while (v105);
  }

  v97 = IMDIndexingClientRequestQueue(v96);
  dispatch_group_notify(group, v97, block);
}

- (id)newChatSearchableItemForChatDictionary:(id)dictionary optionalLastMessageDate:(id)date
{
  dictionaryCopy = dictionary;
  v13 = 0;
  v8 = objc_msgSend_newChatSearchableItemForChatDictionary_optionalLastMessageDate_error_(self, v7, dictionaryCopy, date, &v13);
  v9 = v13;
  if (v9)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF97E4();
    }

    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF984C();
    }
  }

  return v8;
}

- (id)newChatSearchableItemForChatDictionary:(id)dictionary optionalLastMessageDate:(id)date error:(id *)error
{
  v151 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  dateCopy = date;
  if (dictionaryCopy)
  {
    IMDPersistenceCheckNotDatabaseThread();
    v9 = _IMDCoreSpotlightChatUIDForChatDictionary(dictionaryCopy);
    v12 = objc_msgSend_objectForKey_(dictionaryCopy, v10, @"guid", v11);
    v15 = v12;
    if (!v9 || !v12)
    {
      if (!error)
      {
        v48 = 0;
LABEL_43:

        goto LABEL_44;
      }

      v49 = MEMORY[0x1E696ABC0];
      v148 = *MEMORY[0x1E696A578];
      v50 = MEMORY[0x1E696AEC0];
      v51 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v13, @"chatIdentifier", v14);
      v54 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v52, @"groupID", v53);
      v57 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v55, @"style", v56);
      v140 = v15;
      v60 = objc_msgSend_stringWithFormat_(v50, v58, @"Chat dictionary malformed. unique identifier %@ guid %@ chat identifier %@ group ID %@ style %@", v59, v9, v15, v51, v54, v57);
      v149 = v60;
      v62 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v61, &v149, &v148, 1);
      objc_msgSend_errorWithDomain_code_userInfo_(v49, v63, @"com.apple.Messages.IMDCoreSpotlight", 1, v62);
      *error = v48 = 0;
LABEL_42:

      v15 = v140;
      goto LABEL_43;
    }

    v138 = v9;
    v16 = objc_msgSend_objectForKey_(dictionaryCopy, v13, @"lastMessageDate", v14);
    v17 = v16;
    v139 = dateCopy;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = dateCopy;
    }

    v19 = v18;

    v20 = objc_alloc(MEMORY[0x1E6964E90]);
    v23 = objc_msgSend_initWithItemContentType_(v20, v21, *MEMORY[0x1E6963848], v22);
    v140 = v15;
    objc_msgSend_setAccountIdentifier_(v23, v24, v15, v25);
    v136 = v23;
    v137 = v19;
    objc_msgSend_setLastUsedDate_(v23, v26, v19, v27);
    v30 = objc_msgSend_objectForKey_(dictionaryCopy, v28, @"participants", v29);
    v143 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v142 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v31 = v30;
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v144, v150, 16);
    obj = v31;
    if (v33)
    {
      v34 = v33;
      LOBYTE(v35) = 0;
      v36 = *v145;
      v37 = MEMORY[0x1E69A7AF0];
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v145 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v144 + 1) + 8 * i);
          v40 = _IMDCoreSpotlightCNContactForAddress(v39);
          if (!((v40 == 0) | v35 & 1))
          {
            objc_opt_class();
            v35 = objc_opt_isKindOfClass() ^ 1;
          }

          v41 = _IMDCoreSpotlightFullNameForContact(v40, 0);
          if (!v41)
          {
            v41 = v39;
          }

          v44 = _IMDCoreSpotlightPerson(v41, v39, v40, *v37);
          if (v44)
          {
            objc_msgSend_addObject_(v143, v42, v44, v43);
            objc_msgSend_addObject_(v142, v45, v39, v46);
          }
        }

        v31 = obj;
        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v47, &v144, v150, 16);
      }

      while (v34);
    }

    else
    {
      LOBYTE(v35) = 0;
    }

    objc_msgSend_setPrimaryRecipients_(v136, v64, v143, v65);
    objc_msgSend_setRecipientAddresses_(v136, v66, v142, v67);
    v69 = objc_msgSend_integerValueForKey_withDefault_(dictionaryCopy, v68, @"isFiltered", 0);
    v74 = objc_msgSend_objectForKey_(dictionaryCopy, v70, @"groupName", v71);
    if (v74 && v35 & 1 | (v69 == 0))
    {
      objc_msgSend_setSubject_(v136, v72, v74, v73);
      objc_msgSend_setDisplayName_(v136, v75, v74, v76);
    }

    v77 = objc_msgSend_valueForKey_(dictionaryCopy, v72, @"style", v73);

    if (v77)
    {
      v80 = objc_msgSend_valueForKey_(dictionaryCopy, v78, @"style", v79);
      v84 = objc_msgSend_charValue(v80, v81, v82, v83);

      v87 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v85, @"%c", v86, v84);
      v88 = objc_opt_class();
      v92 = objc_msgSend_chatStyleCustomKey(v88, v89, v90, v91);
      objc_msgSend_setValue_forCustomKey_(v136, v93, v87, v92);

      v96 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v94, v84 == 43, v95);
      objc_msgSend_setIsGroupThread_(v136, v97, v96, v98);
    }

    v99 = objc_msgSend_objectForKey_(dictionaryCopy, v78, @"syndicationType", v79);

    if (v99 && (objc_msgSend_objectForKey_(dictionaryCopy, v100, @"syndicationType", v101), v102 = objc_claimAutoreleasedReturnValue(), v106 = objc_msgSend_integerValue(v102, v103, v104, v105), v102, (v35 & (v106 < 2)) == 1))
    {
      v107 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v100, 1, v101);
      v108 = objc_opt_class();
      v112 = objc_msgSend_chatAutoDonatingCutomKey(v108, v109, v110, v111);
      objc_msgSend_setValue_forCustomKey_(v136, v113, v107, v112);

      v116 = objc_msgSend_objectForKey_(dictionaryCopy, v114, @"syndicationDate", v115);

      v9 = v138;
      dateCopy = v139;
      v51 = v137;
      if (!v116)
      {
LABEL_39:
        v132 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v117, @"chatIdentifier", v118);
        if (v132)
        {
          objc_msgSend_associateConversationEntityWithIdentifier_displayTitle_(v136, v131, v132, v74);
        }

        v133 = objc_alloc(MEMORY[0x1E6964E80]);
        v54 = v136;
        v48 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v133, v134, v9, @"chatDomain", v136);

        v62 = v142;
        v60 = v143;
        v57 = obj;
        goto LABEL_42;
      }

      v119 = objc_msgSend_objectForKey_(dictionaryCopy, v117, @"syndicationDate", v118);
      if (!v119)
      {
LABEL_38:

        goto LABEL_39;
      }

      v120 = objc_opt_class();
      v124 = objc_msgSend_chatAutoDonatingServerDateCustomKey(v120, v121, v122, v123);
      objc_msgSend_setValue_forCustomKey_(v136, v125, v119, v124);
    }

    else
    {
      v119 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v100, 0, v101);
      v126 = objc_opt_class();
      v124 = objc_msgSend_chatAutoDonatingCutomKey(v126, v127, v128, v129);
      objc_msgSend_setValue_forCustomKey_(v136, v130, v119, v124);
      v9 = v138;
      dateCopy = v139;
      v51 = v137;
    }

    goto LABEL_38;
  }

  v48 = 0;
LABEL_44:

  return v48;
}

+ (id)chatAutoDonatingCutomKey
{
  if (qword_1EDBE5B88 != -1)
  {
    sub_1B7CF98B4();
  }

  v3 = qword_1EDBE5B90;

  return v3;
}

+ (id)chatAutoDonatingServerDateCustomKey
{
  if (qword_1EDBE5B78 != -1)
  {
    sub_1B7CF98C8();
  }

  v3 = qword_1EDBE5B80;

  return v3;
}

+ (id)chatStyleCustomKey
{
  if (qword_1EDBE5EA0 != -1)
  {
    sub_1B7CF98DC();
  }

  v3 = qword_1EDBE5EA8;

  return v3;
}

+ (id)localIdentityProofKey
{
  if (qword_1EBA54150 != -1)
  {
    sub_1B7CF98F0();
  }

  v3 = qword_1EBA54148;

  return v3;
}

+ (id)localIdentityKey
{
  if (qword_1EBA54160 != -1)
  {
    sub_1B7CF9904();
  }

  v3 = qword_1EBA54158;

  return v3;
}

+ (id)handleToIdentityMapKey
{
  if (qword_1EBA54170 != -1)
  {
    sub_1B7CF9918();
  }

  v3 = qword_1EBA54168;

  return v3;
}

+ (id)threadIdentifierCustomKey
{
  if (qword_1EBA53A20 != -1)
  {
    sub_1B7CF992C();
  }

  v3 = qword_1EBA53A28;

  return v3;
}

- (id)chatSearchableItemForGUID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend__chatDictionaryForChatGUID_(self, v5, dCopy, v6);
  v14 = 0;
  v9 = objc_msgSend_newChatSearchableItemForChatDictionary_optionalLastMessageDate_error_(self, v8, v7, 0, &v14);
  v10 = v14;
  if (v10)
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF9940();
    }

    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF99B8();
    }
  }

  return v9;
}

- (void)addChatSearchableItemForChatGUID:(id)d reason:(int64_t)reason
{
  v13[1] = *MEMORY[0x1E69E9840];
  v9 = objc_msgSend_chatSearchableItemForGUID_(self, a2, d, reason);
  if (v9)
  {
    v10 = objc_msgSend_searchableIndex(self, v6, v7, v8);
    v13[0] = v9;
    v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v11, v13, 1);
    sub_1B7BA4008(v10, 0, v12, 0, reason, 0);
  }
}

- (id)searchableItemIdentifierForChatGUID:(id)d
{
  v4 = objc_msgSend__chatDictionaryForChatGUID_(self, a2, d, v3);
  v5 = v4;
  if (v4)
  {
    v6 = _IMDCoreSpotlightChatUIDForChatDictionary(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)deleteChatSearchableItemForChatGUID:(id)d reason:(int64_t)reason
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_searchableItemIdentifierForChatGUID_(self, a2, d, reason);
  if (v5)
  {
    v6 = IMCoreSpotlightCriticalIndex();
    v9[0] = v5;
    v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v9, 1);
    sub_1B7B9B3A8(v6, v8, reason, 0);
  }
}

- (id)_chatDictionaryForChatGUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1B7AE1AB0;
  v16 = sub_1B7AE2560;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BA4B94;
  v9[3] = &unk_1E7CBB6A0;
  v4 = dCopy;
  v10 = v4;
  v11 = &v12;
  IMDPersistencePerformBlock(v9, 1, v5, v6);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)setNeedsMessageReindexingWithContext:(id)context completion:(id)completion
{
  v70 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v11 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v8, v9, v10);
  isSpotlightReindexRefactorEnabled = objc_msgSend_isSpotlightReindexRefactorEnabled(v11, v12, v13, v14);

  if (isSpotlightReindexRefactorEnabled)
  {
    v19 = objc_msgSend_copy(contextCopy, v16, v17, v18);

    objc_msgSend_setReindexing_(v19, v20, 1, v21);
    objc_msgSend_setRunningViaBGST_(v19, v22, 1, v23);
    objc_msgSend_setFullReindex_(v19, v24, 1, v25);
    v26 = [IMDPersistentTaskQueryProvider alloc];
    v29 = objc_msgSend_initWithBlockingDatabaseCalls_(v26, v27, 0, v28);
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = sub_1B7BA5040;
    v62[3] = &unk_1E7CB67C0;
    v63 = completionCopy;
    objc_msgSend_scheduleFullReindexWithContext_completionBlock_(v29, v30, v19, v62);

    contextCopy = v19;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v65 = "[IMDLegacyCoreSpotlightManager setNeedsMessageReindexingWithContext:completion:]";
        _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_INFO, "%s starting reindex", buf, 0xCu);
      }
    }

    v35 = objc_msgSend_maxRowID(self, v31, v32, v33);
    v39 = objc_msgSend_totalMessages(self, v36, v37, v38);
    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v65 = "[IMDLegacyCoreSpotlightManager setNeedsMessageReindexingWithContext:completion:]";
        v66 = 2048;
        v67 = v35;
        v68 = 2048;
        v69 = v39;
        _os_log_impl(&dword_1B7AD5000, v43, OS_LOG_TYPE_INFO, "%s max cmj rowID %lld total messages %lld", buf, 0x20u);
      }
    }

    if (v35 <= 0)
    {
      if (IMOSLoggingEnabled())
      {
        v53 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v53, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Failed to get max cmj row ID for indexing!", buf, 2u);
        }
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }

    else
    {
      v44 = objc_msgSend_sharedNotifier(IMSpotlightEventNotifier, v40, v41, v42);
      v48 = objc_msgSend_reason(contextCopy, v45, v46, v47);
      objc_msgSend_reindexInitiatedWithTotalMessages_reason_(v44, v49, v39, v48);

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_1B7BA5050;
      aBlock[3] = &unk_1E7CBBBC0;
      aBlock[4] = self;
      v50 = completionCopy;
      v59 = v50;
      v60 = v35;
      v61 = v39;
      contextCopy = contextCopy;
      v58 = contextCopy;
      v51 = _Block_copy(aBlock);
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = sub_1B7BA5340;
      v54[3] = &unk_1E7CBBBE8;
      v54[4] = self;
      v55 = v50;
      v56 = v51;
      v52 = v51;
      IMDIndexingClientRequest(v54);
    }
  }
}

- (void)_sanitizeIndexesForCurrentVersionIfNeeded:(id)needed
{
  v65 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = sub_1B7AE1AB0;
  v59 = sub_1B7AE2560;
  v60 = 0;
  v8 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, v5, v6, v7);
  v9 = (v56 + 5);
  obj = v56[5];
  v12 = objc_msgSend_currentClientStateWithError_(v8, v10, &obj, v11);
  objc_storeStrong(v9, obj);

  if (!v56[5])
  {
    if ((objc_msgSend_needsIndexDrop(v12, 0, v13, v14) & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v41, OS_LOG_TYPE_INFO, "Bypassing index version comparisons. **NOT** deleting indexes", buf, 2u);
        }
      }

      goto LABEL_24;
    }

    if (objc_msgSend_needsReindex(v12, v15, v16, v17))
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v25 = objc_msgSend_indexRevision(v12, v22, v23, v24);
          v29 = objc_msgSend__latestIndexRevision(MEMORY[0x1E69A82A8], v26, v27, v28);
          *buf = 134218240;
          v62 = v25;
          v63 = 2048;
          v64 = v29;
          _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Current idx version is %llu, expected is %llu, deleting prior indexes", buf, 0x16u);
        }
      }

      v30 = objc_msgSend_searchableIndex(self, v18, v19, v20);
      v31 = v30 == 0;

      if (!v31)
      {
        v32 = objc_alloc_init(MEMORY[0x1E69A6170]);
        objc_msgSend_startTimingForKey_(v32, v33, @"CSDeleteAllIndexes", v34);
        v35 = dispatch_group_create();
        dispatch_group_enter(v35);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = sub_1B7BA590C;
        aBlock[3] = &unk_1E7CBBC10;
        v36 = v32;
        v51 = v36;
        v53 = &v55;
        v37 = v35;
        v52 = v37;
        v38 = _Block_copy(aBlock);
        objc_msgSend_deleteAllSearchableItemsWithReason_completionHandler_(self, v39, 4, v38);
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = sub_1B7BA5A9C;
        v47[3] = &unk_1E7CB8F20;
        v48 = neededCopy;
        v49 = &v55;
        v40 = _Block_copy(v47);
        dispatch_group_notify(v37, MEMORY[0x1E69E96A0], v40);

        goto LABEL_25;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_23;
      }

      v42 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v42, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Failed to create index!", buf, 2u);
      }
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_23;
      }

      v42 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v46 = objc_msgSend_indexRevision(v12, v43, v44, v45);
        *buf = 134217984;
        v62 = v46;
        _os_log_impl(&dword_1B7AD5000, v42, OS_LOG_TYPE_INFO, "Current idx version is %llu, index does not need deletion", buf, 0xCu);
      }
    }

LABEL_23:
    if (!neededCopy)
    {
      goto LABEL_25;
    }

LABEL_24:
    (*(neededCopy + 2))(neededCopy, 0);
    goto LABEL_25;
  }

  (*(neededCopy + 2))(neededCopy);
LABEL_25:

  _Block_object_dispose(&v55, 8);
}

- (void)_enumerateSearchableChatItemsForAllChatsWithBlock:(id)block timingCollection:(id)collection
{
  v54 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  collectionCopy = collection;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_1B7AE1AB0;
  v48 = sub_1B7AE2560;
  v49 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BA5ED8;
  block[3] = &unk_1E7CBB6A0;
  v7 = collectionCopy;
  v42 = v7;
  v43 = &v44;
  IMDPersistencePerformBlock(block, 1, v8, v9);
  v40 = objc_msgSend_count(v45[5], v10, v11, v12);
  if (v45[5])
  {
    v16 = objc_msgSend_chatBatchSize(MEMORY[0x1E69A7FF8], v13, v14, v15);
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v51 = v40;
        v52 = 2048;
        v53 = v16;
        _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "About to index %lu chats in batches of %lu", buf, 0x16u);
      }
    }

    if (v40)
    {
      v19 = 0;
      *&v17 = 134218240;
      v38 = v17;
      v20 = v40;
      do
      {
        if (v16 >= v20)
        {
          v21 = v20;
        }

        else
        {
          v21 = v16;
        }

        v22 = objc_autoreleasePoolPush();
        objc_msgSend_startTimingForKey_(v7, v23, @"generateItems", v24);
        if (v16 >= v20)
        {
          v26 = v20;
        }

        else
        {
          v26 = v16;
        }

        v27 = v45[5];
        v28 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v25, v19, v26, v38);
        v31 = objc_msgSend_objectsAtIndexes_(v27, v29, v28, v30);

        v34 = objc_msgSend__newSearchableChatItemsForChats_(self, v32, v31, v33);
        blockCopy[2](blockCopy, v34);

        objc_msgSend_stopTimingForKey_(v7, v35, @"generateItems", v36);
        if (IMOSLoggingEnabled())
        {
          v37 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *buf = v38;
            v51 = v21 + v19;
            v52 = 2048;
            v53 = v20;
            _os_log_impl(&dword_1B7AD5000, v37, OS_LOG_TYPE_INFO, "Finished indexing a batch of chats, indexed %lu, %lu to go", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v22);
        v19 += v16;
        v20 -= v16;
      }

      while (v19 < v40);
    }
  }

  _Block_object_dispose(&v44, 8);
}

- (void)indexChatsWithReason:(int64_t)reason
{
  v22 = *MEMORY[0x1E69E9840];
  if ((IMDCoreSpotlightDisabled(self, a2, reason, v3) & 1) == 0)
  {
    v9 = objc_msgSend_searchableIndex(self, v6, v7, v8);

    if (v9)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = objc_alloc_init(MEMORY[0x1E69A6170]);
      objc_msgSend_startTimingForKey_(v11, v12, @"totalTime", v13);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1B7BA616C;
      v19[3] = &unk_1E7CBBC38;
      v19[4] = self;
      v19[5] = reason;
      objc_msgSend__enumerateSearchableChatItemsForAllChatsWithBlock_timingCollection_(self, v14, v19, v11);
      objc_msgSend_stopTimingForKey_(v11, v15, @"totalTime", v16);
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v20 = 138412290;
          v21 = v11;
          _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "indexChats timing %@", &v20, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v10);
    }

    else if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Failed to create index!", &v20, 2u);
      }
    }
  }
}

- (id)_newSearchableChatItemsForChats:(id)chats
{
  v46 = *MEMORY[0x1E69E9840];
  chatsCopy = chats;
  v7 = objc_msgSend__chatCountForChats_(self, v5, chatsCopy, v6);
  v8 = objc_alloc(MEMORY[0x1E695DF90]);
  v14 = objc_msgSend_initWithCapacity_(v8, v9, v7, v10);
  if (v7 >= 1)
  {
    v16 = 0;
    *&v15 = 138412290;
    v43 = v15;
    while (1)
    {
      v17 = objc_msgSend__chatDictionaryForChatAtIndex_withChats_(self, v11, v16, chatsCopy, v43);
      v20 = _IMDCoreSpotlightChatUIDForChatDictionary(v17);
      if (v20)
      {
        break;
      }

LABEL_15:

      if (v7 == ++v16)
      {
        goto LABEL_16;
      }
    }

    v21 = objc_msgSend_objectForKey_(v14, v18, v20, v19);
    v25 = objc_msgSend_attributeSet(v21, v22, v23, v24);
    v29 = objc_msgSend_lastUsedDate(v25, v26, v27, v28);

    v34 = objc_msgSend_objectForKey_(v17, v30, @"lastMessageDate", v31);
    if (v34 && v29 && objc_msgSend_compare_(v29, v32, v34, v33) == 1)
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_14:

        goto LABEL_15;
      }

      MessageDate = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(MessageDate, OS_LOG_TYPE_INFO))
      {
        *buf = v43;
        v45 = v20;
        _os_log_impl(&dword_1B7AD5000, MessageDate, OS_LOG_TYPE_INFO, "Not indexing UID %@, already indexed newer record", buf, 0xCu);
      }
    }

    else
    {
      MessageDate = objc_msgSend_newChatSearchableItemForChatDictionary_optionalLastMessageDate_(self, v32, v17, 0);
      if (MessageDate)
      {
        objc_msgSend_setObject_forKey_(v14, v36, MessageDate, v20);
      }
    }

    goto LABEL_14;
  }

LABEL_16:
  v37 = objc_msgSend_allValues(v14, v11, v12, v13);
  v41 = objc_msgSend_copy(v37, v38, v39, v40);

  return v41;
}

- (id)_chatDictionaryForChatAtIndex:(unint64_t)index withChats:(id)chats
{
  chatsCopy = chats;
  v8 = objc_msgSend_objectAtIndexedSubscript_(chatsCopy, v6, index, v7);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1B7AE1AB0;
  v21 = sub_1B7AE2560;
  v22 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B7BA6674;
  v14[3] = &unk_1E7CBB6F0;
  v16 = &v17;
  v9 = v8;
  v15 = v9;
  IMDPersistencePerformBlock(v14, 1, v10, v11);
  v12 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v12;
}

- (void)_indexSearchableChatItems:(id)items withReason:(int64_t)reason index:(id)index blocking:(BOOL)blocking
{
  if (blocking)
  {
    v8 = MEMORY[0x1E69A7FF8];
    indexCopy = index;
    itemsCopy = items;
    v14 = objc_msgSend_extendedSpotlightTimeoutSeconds(v8, v11, v12, v13);
    sub_1B7BA6798(indexCopy, 0, itemsCopy, 0, reason, 1000000000 * v14);
  }

  else
  {
    sub_1B7BA4008(index, 0, items, 0, reason, 0);
  }
}

- (void)indexNextMessageBatchIfNeeded:(unint64_t)needed reason:(int64_t)reason completion:(id)completion
{
  v69 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v12 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v9, v10, v11);
  isSpotlightReindexRefactorEnabled = objc_msgSend_isSpotlightReindexRefactorEnabled(v12, v13, v14, v15);

  if (isSpotlightReindexRefactorEnabled)
  {
    completionCopy[2](completionCopy);
    goto LABEL_51;
  }

  v17 = IMOSLoggingEnabled();
  if (v17)
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      neededCopy = needed;
      _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Indexing next batch of messages. Batch size of %lu", buf, 0xCu);
    }
  }

  if (IMDCoreSpotlightDisabled(v17, v18, v19, v20))
  {
    if (!completionCopy)
    {
      goto LABEL_51;
    }

LABEL_43:
    completionCopy[2](completionCopy);
    goto LABEL_51;
  }

  if (objc_msgSend_skipIndexing(MEMORY[0x1E69A7FF8], v22, v23, v24))
  {
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v31 = objc_msgSend_skipIndexing(MEMORY[0x1E69A7FF8], v28, v29, v30);
        v32 = @"NO";
        if (v31)
        {
          v32 = @"YES";
        }

        *buf = 138412290;
        neededCopy = v32;
        _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_INFO, "Skipping indexing next batch since skipIndexing is set to %@", buf, 0xCu);
      }
    }

    if (completionCopy)
    {
      goto LABEL_43;
    }
  }

  else if (objc_msgSend__shouldIndexNextBatchForBatchSize_(self, v25, needed, v26))
  {
    v36 = objc_msgSend_searchableIndex(self, v33, v34, v35);
    if (v36)
    {
      v37 = objc_alloc_init(MEMORY[0x1E69A6170]);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_1B7BA6DD4;
      aBlock[3] = &unk_1E7CBBC60;
      neededCopy2 = needed;
      reasonCopy = reason;
      aBlock[4] = self;
      v38 = v37;
      v57 = v38;
      v58 = v36;
      v41 = _Block_copy(aBlock);
      v55 = 0;
      if (needed)
      {
        do
        {
          v42 = objc_autoreleasePoolPush();
          v43 = v41[2](v41, &v55);
          objc_autoreleasePoolPop(v42);
          if (v55 < needed)
          {
            v44 = v43;
          }

          else
          {
            v44 = 0;
          }
        }

        while ((v44 & 1) != 0);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }

      objc_msgSend_stopTimingForKey_(v38, v39, @"totalTime", v40);
      if (IMOSLoggingEnabled())
      {
        v45 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          neededCopy = v38;
          _os_log_impl(&dword_1B7AD5000, v45, OS_LOG_TYPE_INFO, "Timing %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v54 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v54, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Failed to create index!", buf, 2u);
        }
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v46 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v50 = objc_msgSend_needsIndexing(MEMORY[0x1E69A7FF8], v47, v48, v49);
        v51 = IMDSystemMigrationOccurred();
        v52 = @"NO";
        neededCopy = "[IMDLegacyCoreSpotlightManager indexNextMessageBatchIfNeeded:reason:completion:]";
        v63 = 2048;
        if (v50)
        {
          v53 = @"YES";
        }

        else
        {
          v53 = @"NO";
        }

        *buf = 136315906;
        neededCopy3 = needed;
        v65 = 2112;
        if (v51)
        {
          v52 = @"YES";
        }

        v66 = v53;
        v67 = 2112;
        v68 = v52;
        _os_log_impl(&dword_1B7AD5000, v46, OS_LOG_TYPE_INFO, "IMDCoreSpotlight %s - Not indexing. Batch size %lu needsIndexing %@ hasMigrated %@", buf, 0x2Au);
      }
    }

    if (completionCopy)
    {
      goto LABEL_43;
    }
  }

LABEL_51:
}

- (id)_copyNewSearchableIndexesForMessagesWithLastRowID:(unint64_t *)d messageRecordCount:(unint64_t *)count messagesWithItemsGeneratedCount:(unint64_t *)generatedCount reason:(int64_t)reason batchSize:(unint64_t)size timingCollection:(id)collection rejectedItems:(id)items
{
  itemsCopy = items;
  collectionCopy = collection;
  v18 = [IMDIndexingContext alloc];
  v20 = objc_msgSend_initForReindexing_reason_(v18, v19, 1, reason);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1B7BA7220;
  v25[3] = &unk_1E7CBBC88;
  v25[4] = self;
  v26 = v20;
  v27 = itemsCopy;
  generatedCountCopy = generatedCount;
  v21 = itemsCopy;
  v22 = v20;
  v23 = sub_1B7B995F0(d, count, size, collectionCopy, v25);

  return v23;
}

- (void)_indexSearchableItems:(id)items rejectedItems:(id)rejectedItems clientState:(id)state lastIndexedRowID:(unint64_t)d messagesInBatch:(unint64_t)batch messagesWithItemsGeneratedCount:(unint64_t)count batchSize:(unint64_t)size lastBatch:(BOOL)self0 withIndex:(id)self1 reason:(int64_t)self2
{
  v66 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  rejectedItemsCopy = rejectedItems;
  stateCopy = state;
  indexCopy = index;
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v61 = "[IMDLegacyCoreSpotlightManager _indexSearchableItems:rejectedItems:clientState:lastIndexedRowID:messagesInBatch:messagesWithItemsGeneratedCount:batchSize:lastBatch:withIndex:reason:]";
      v62 = 2048;
      v63 = objc_msgSend_count(itemsCopy, v22, v23, v24);
      v64 = 2112;
      v65 = indexCopy;
      _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "%s Generated %lu items to index!. Using Index %@", buf, 0x20u);
    }
  }

  aBlock = MEMORY[0x1E69E9820];
  v52 = 3221225472;
  v53 = sub_1B7BA7554;
  v54 = &unk_1E7CBBCB0;
  lastBatchCopy = lastBatch;
  selfCopy = self;
  v25 = stateCopy;
  v56 = v25;
  reasonCopy = reason;
  dCopy = d;
  v28 = _Block_copy(&aBlock);
  if (lastBatch)
  {
    objc_msgSend_setLastIndexedRowID_(v25, v26, 1, v27, rejectedItemsCopy, aBlock, v52, v53, v54, selfCopy);
  }

  else
  {
    objc_msgSend_setLastIndexedRowID_(v25, v26, d, v27, rejectedItemsCopy, aBlock, v52, v53, v54, selfCopy);
  }

  v32 = objc_msgSend_initialIndexedMessages(v25, v29, v30, v31);
  objc_msgSend_setInitialIndexedMessages_(v25, v33, v32 + count, v34);
  v38 = objc_msgSend_processedMessageRecords(v25, v35, v36, v37);
  objc_msgSend_setProcessedMessageRecords_(v25, v39, v38 + batch, v40);
  if ((objc_msgSend__shouldBypassForTesting(self, v41, v42, v43) & 1) == 0)
  {
    v47 = objc_msgSend_extendedSpotlightTimeoutSeconds(MEMORY[0x1E69A7FF8], v44, v45, v46);
    if (sub_1B7BA6798(indexCopy, v25, itemsCopy, v50, reason, 1000000000 * v47))
    {
      if (IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v48, OS_LOG_TYPE_INFO, "Timed out waiting for CoreSpotlight to finish indexing message items!", buf, 2u);
        }
      }
    }
  }

  v28[2](v28);
}

- (void)deleteAllSearchableItemsWithReason:(int64_t)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  v11 = objc_msgSend_searchableIndex(self, v6, v7, v8);
  v9 = IMCSIndexReasonFromIMIndexReason();
  objc_msgSend_deleteAllSearchableItemsWithReason_completionHandler_(v11, v10, v9, handlerCopy);
}

- (void)_suspendReindexingDueToError:(id)error
{
  errorCopy = error;
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF9BA0();
  }

  v8 = objc_msgSend_now(MEMORY[0x1E695DF00], v5, v6, v7);
  v12 = objc_msgSend_dateByAddingTimeInterval_(v8, v9, v10, v11, 1800.0);

  objc_msgSend_setReindexingSuspendedUntilDate_(MEMORY[0x1E69A7FF8], v13, v12, v14);
  v18 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], v15, v16, v17);
  isInternalInstall = objc_msgSend_isInternalInstall(v18, v19, v20, v21);

  if (isInternalInstall)
  {
    v26 = objc_msgSend_debugDescription(errorCopy, v23, v24, v25);
    objc_msgSend_setReindexingSuspensionReason_(MEMORY[0x1E69A7FF8], v27, v26, v28);
  }

  v29 = objc_msgSend_sharedNotifier(IMSpotlightEventNotifier, v23, v24, v25);
  objc_msgSend_reindexSuspendedUntilDate_withError_(v29, v30, v12, errorCopy);
}

- (BOOL)_shouldIndexNextBatchForBatchSize:(unint64_t)size
{
  if (!size || !objc_msgSend_needsIndexing(MEMORY[0x1E69A7FF8], a2, size, v3))
  {
    return 0;
  }

  return IMDSystemMigrationOccurred();
}

- (BOOL)_shouldSkipMessagePartPrefixingForItemDictionary:(id)dictionary
{
  v4 = objc_msgSend_objectForKey_(dictionary, a2, @"associatedMessageType", v3);
  v8 = v4;
  if (v4)
  {
    v9 = objc_msgSend_integerValue(v4, v5, v6, v7) == 2007;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)deleteAllDonationsForAppDeletionWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6, v7);
  isMessagesAppDeletionEnabled = objc_msgSend_isMessagesAppDeletionEnabled(v8, v9, v10, v11);

  if (isMessagesAppDeletionEnabled)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Deleting all spotlight data because the app is being uninstalled.", buf, 2u);
      }
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1B7BA7B00;
    v14[3] = &unk_1E7CB7260;
    v14[4] = self;
    v15 = completionCopy;
    IMDIndexingClientRequest(v14);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (unint64_t)_batchSizeForTargetBatchSize:(unint64_t)size lastIndexedRowID:(unint64_t)d lastBatch:(BOOL *)batch
{
  v13 = *MEMORY[0x1E69E9840];
  result = size;
  if (d < size)
  {
    v9 = IMOSLoggingEnabled();
    result = d;
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 134217984;
        dCopy = d;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Reducing batch size to %lu, last batch?", &v11, 0xCu);
      }

      result = d;
    }
  }

  if (batch)
  {
    *batch = d < size;
  }

  return result;
}

@end