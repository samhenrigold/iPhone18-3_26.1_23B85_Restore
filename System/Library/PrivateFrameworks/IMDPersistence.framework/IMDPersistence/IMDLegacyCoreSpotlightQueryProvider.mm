@interface IMDLegacyCoreSpotlightQueryProvider
+ (id)sharedProvider;
- (id)_indexableMessageGUIDsInSpotlight:(id)spotlight chatDictionary:(id)dictionary context:(id)context requireIndexableAttachments:(BOOL)attachments;
- (void)_checkForIndexedGUIDsWithPerformBlock:(id)block completionBlock:(id)completionBlock;
- (void)addChatGUIDs:(id)ds context:(id)context completionHandler:(id)handler;
- (void)addMessageGUIDs:(id)ds context:(id)context completionHandler:(id)handler;
- (void)beginThrottlingForIdentifier:(id)identifier untilDate:(id)date;
- (void)checkForIndexedAttachmentGUIDs:(id)ds completionBlock:(id)block;
- (void)checkForIndexedChatGUIDs:(id)ds completionBlock:(id)block;
- (void)checkForIndexedMessageGUIDs:(id)ds completionBlock:(id)block;
- (void)copyIndexableMessageDictionariesWithLimit:(int64_t)limit requireIndexableAttachments:(BOOL)attachments completionHandler:(id)handler;
- (void)deleteAllDonationsForAppDeletionWithCompletion:(id)completion;
- (void)deleteAttachmentGUIDs:(id)ds context:(id)context completionHandler:(id)handler;
- (void)deleteChatGUIDs:(id)ds context:(id)context completionBlock:(id)block;
- (void)deleteMessageGUIDs:(id)ds context:(id)context completionHandler:(id)handler;
- (void)finishThrottlingForIdentifier:(id)identifier;
- (void)indexNextMessageBatchIfNeeded:(unint64_t)needed reason:(int64_t)reason completion:(id)completion;
- (void)indexableMessageGUIDsFromGUIDs:(id)ds ignoreRejections:(BOOL)rejections completionBlock:(id)block;
- (void)markAttachmentWithFileURL:(id)l sender:(id)sender recipients:(id)recipients isIncoming:(BOOL)incoming completionHandler:(id)handler;
- (void)reindexRecentMessagesWithHandles:(id)handles batchDeferralTime:(int64_t)time messageAge:(double)age reason:(int64_t)reason;
- (void)scheduleUpdateForDeletedMessagesWithReason:(int64_t)reason;
- (void)setNeedsMessageReindexingWithContext:(id)context completion:(id)completion;
@end

@implementation IMDLegacyCoreSpotlightQueryProvider

+ (id)sharedProvider
{
  if (qword_1EBA53A50 != -1)
  {
    sub_1B7CF9E84();
  }

  v3 = qword_1EBA53A40;

  return v3;
}

- (void)addChatGUIDs:(id)ds context:(id)context completionHandler:(id)handler
{
  dsCopy = ds;
  contextCopy = context;
  handlerCopy = handler;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BA8C44;
  block[3] = &unk_1E7CB71C0;
  v16 = dsCopy;
  v17 = contextCopy;
  v18 = handlerCopy;
  v10 = handlerCopy;
  v11 = contextCopy;
  v12 = dsCopy;
  IMDPersistencePerformBlockWithHandoffIfNeeded(block, 0, v13, v14);
}

- (void)addMessageGUIDs:(id)ds context:(id)context completionHandler:(id)handler
{
  dsCopy = ds;
  contextCopy = context;
  handlerCopy = handler;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BA8DDC;
  block[3] = &unk_1E7CB71C0;
  v16 = contextCopy;
  v17 = dsCopy;
  v18 = handlerCopy;
  v10 = handlerCopy;
  v11 = dsCopy;
  v12 = contextCopy;
  IMDPersistencePerformBlockWithHandoffIfNeeded(block, 0, v13, v14);
}

- (void)deleteAllDonationsForAppDeletionWithCompletion:(id)completion
{
  completionCopy = completion;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BA8FBC;
  block[3] = &unk_1E7CB67C0;
  v8 = completionCopy;
  v4 = completionCopy;
  IMDPersistencePerformBlockWithHandoffIfNeeded(block, 0, v5, v6);
}

- (void)deleteAttachmentGUIDs:(id)ds context:(id)context completionHandler:(id)handler
{
  dsCopy = ds;
  contextCopy = context;
  handlerCopy = handler;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BA90F0;
  block[3] = &unk_1E7CB71C0;
  v16 = dsCopy;
  v17 = contextCopy;
  v18 = handlerCopy;
  v10 = handlerCopy;
  v11 = contextCopy;
  v12 = dsCopy;
  IMDPersistencePerformBlockWithHandoffIfNeeded(block, 0, v13, v14);
}

- (void)deleteChatGUIDs:(id)ds context:(id)context completionBlock:(id)block
{
  dsCopy = ds;
  contextCopy = context;
  blockCopy = block;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BA9210;
  block[3] = &unk_1E7CB71C0;
  v16 = dsCopy;
  v17 = contextCopy;
  v18 = blockCopy;
  v10 = blockCopy;
  v11 = contextCopy;
  v12 = dsCopy;
  IMDPersistencePerformBlockWithHandoffIfNeeded(block, 0, v13, v14);
}

- (void)deleteMessageGUIDs:(id)ds context:(id)context completionHandler:(id)handler
{
  dsCopy = ds;
  contextCopy = context;
  handlerCopy = handler;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BA9330;
  block[3] = &unk_1E7CB71C0;
  v16 = dsCopy;
  v17 = contextCopy;
  v18 = handlerCopy;
  v10 = handlerCopy;
  v11 = contextCopy;
  v12 = dsCopy;
  IMDPersistencePerformBlockWithHandoffIfNeeded(block, 0, v13, v14);
}

- (void)indexNextMessageBatchIfNeeded:(unint64_t)needed reason:(int64_t)reason completion:(id)completion
{
  completionCopy = completion;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BA9410;
  block[3] = &unk_1E7CBBB20;
  neededCopy = needed;
  reasonCopy = reason;
  v12 = completionCopy;
  v8 = completionCopy;
  IMDPersistencePerformBlockWithHandoffIfNeeded(block, 0, v9, v10);
}

- (void)reindexRecentMessagesWithHandles:(id)handles batchDeferralTime:(int64_t)time messageAge:(double)age reason:(int64_t)reason
{
  handlesCopy = handles;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7BA9564;
  v13[3] = &unk_1E7CBBD90;
  v14 = handlesCopy;
  timeCopy = time;
  ageCopy = age;
  reasonCopy = reason;
  v10 = handlesCopy;
  IMDPersistencePerformBlock(v13, 0, v11, v12);
}

- (void)scheduleUpdateForDeletedMessagesWithReason:(int64_t)reason
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BA9634;
  block[3] = &unk_1E7CB6A70;
  block[4] = reason;
  IMDPersistencePerformBlockWithHandoffIfNeeded(block, 0, reason, v3);
}

- (void)setNeedsMessageReindexingWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B7BA96EC;
  v11[3] = &unk_1E7CB7260;
  v12 = contextCopy;
  v13 = completionCopy;
  v7 = completionCopy;
  v8 = contextCopy;
  IMDPersistencePerformBlockWithHandoffIfNeeded(v11, 0, v9, v10);
}

- (void)markAttachmentWithFileURL:(id)l sender:(id)sender recipients:(id)recipients isIncoming:(BOOL)incoming completionHandler:(id)handler
{
  senderCopy = sender;
  recipientsCopy = recipients;
  handlerCopy = handler;
  lCopy = l;
  v17 = objc_msgSend_url(lCopy, v14, v15, v16);
  v21 = objc_msgSend_url(lCopy, v18, v19, v20);

  v25 = objc_msgSend_path(v21, v22, v23, v24);

  if (!objc_msgSend_length(v25, v26, v27, v28) || (objc_msgSend_currentConnection(MEMORY[0x1E696B0B8], v29, v30, v31), v32 = objc_claimAutoreleasedReturnValue(), AccessToPath = IMNSXPCConnectionHasReadAccessToPath(), v32, (AccessToPath & 1) == 0))
  {
LABEL_8:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_9;
  }

  if ((objc_msgSend_startAccessingSecurityScopedResource(v17, v34, v35, v36) & 1) == 0)
  {
    v41 = IMLogHandleForCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF9E98(v17, v41);
    }

    goto LABEL_8;
  }

  v37 = sub_1B7AEDB80();
  objc_msgSend_stopAccessingSecurityScopedResource(v17, v38, v39, v40);
  handlerCopy[2](handlerCopy, v37);
LABEL_9:
}

- (id)_indexableMessageGUIDsInSpotlight:(id)spotlight chatDictionary:(id)dictionary context:(id)context requireIndexableAttachments:(BOOL)attachments
{
  attachmentsCopy = attachments;
  v54 = *MEMORY[0x1E69E9840];
  spotlightCopy = spotlight;
  dictionaryCopy = dictionary;
  contextCopy = context;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = objc_msgSend_sharedManager(IMDLegacyCoreSpotlightManager, v13, v14, v15);
  v18 = objc_msgSend_newSearchableItemsForMessageItemDictionary_chatDictionary_context_rejectedItems_(v16, v17, spotlightCopy, dictionaryCopy, contextCopy, v12);

  if (objc_msgSend_count(v18, v19, v20, v21))
  {
    v44 = attachmentsCopy;
    v45 = v12;
    v46 = contextCopy;
    v47 = dictionaryCopy;
    v48 = spotlightCopy;
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v43 = v18;
    v23 = v18;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v49, v53, 16);
    if (v25)
    {
      v29 = v25;
      v30 = 0;
      v31 = *v50;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v50 != v31)
          {
            objc_enumerationMutation(v23);
          }

          v33 = *(*(&v49 + 1) + 8 * i);
          v34 = objc_msgSend_domainIdentifier(v33, v26, v27, v28, v43);
          isEqualToString = objc_msgSend_isEqualToString_(v34, v35, @"attachmentDomain", v36);

          if (isEqualToString)
          {
            v30 = 1;
          }

          else
          {
            v38 = objc_msgSend_uniqueIdentifier(v33, v26, v27, v28);
            objc_msgSend_addObject_(v22, v39, v38, v40);
          }
        }

        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v49, v53, 16);
      }

      while (v29);
    }

    else
    {
      v30 = 0;
    }

    if (!v44 || (v30 & 1) != 0)
    {
      v41 = v22;
    }

    else
    {
      v41 = 0;
    }

    dictionaryCopy = v47;
    spotlightCopy = v48;
    v12 = v45;
    v18 = v43;

    contextCopy = v46;
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

- (void)copyIndexableMessageDictionariesWithLimit:(int64_t)limit requireIndexableAttachments:(BOOL)attachments completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = IMDIndexingClientRequestQueue(handlerCopy);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7BA9C0C;
  v13[3] = &unk_1E7CBBDE0;
  v14 = handlerCopy;
  limitCopy = limit;
  attachmentsCopy = attachments;
  v13[4] = self;
  v10 = handlerCopy;
  IMDPersistenceDispatchAsyncWithHandoffIfNeeded(v9, v13, v11, v12);
}

- (void)indexableMessageGUIDsFromGUIDs:(id)ds ignoreRejections:(BOOL)rejections completionBlock:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  v10 = IMDIndexingClientRequestQueue(blockCopy);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B7BA9E28;
  v15[3] = &unk_1E7CBBE58;
  rejectionsCopy = rejections;
  v16 = dsCopy;
  selfCopy = self;
  v18 = blockCopy;
  v11 = blockCopy;
  v12 = dsCopy;
  IMDPersistenceDispatchAsyncWithHandoffIfNeeded(v10, v15, v13, v14);
}

- (void)_checkForIndexedGUIDsWithPerformBlock:(id)block completionBlock:(id)completionBlock
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_1B7AE1AC0;
  v19[4] = sub_1B7AE2568;
  v20 = 0;
  v8 = dispatch_group_create();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7BAA294;
  v13[3] = &unk_1E7CBBEF8;
  v9 = blockCopy;
  v16 = v9;
  v10 = v8;
  v14 = v10;
  v18 = v19;
  v11 = v7;
  v15 = v11;
  v12 = completionBlockCopy;
  v17 = v12;
  IMDIndexingClientRequest(v13);

  _Block_object_dispose(v19, 8);
}

- (void)checkForIndexedChatGUIDs:(id)ds completionBlock:(id)block
{
  dsCopy = ds;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BAA698;
  v9[3] = &unk_1E7CBBF48;
  v10 = dsCopy;
  v7 = dsCopy;
  objc_msgSend__checkForIndexedGUIDsWithPerformBlock_completionBlock_(self, v8, v9, block);
}

- (void)checkForIndexedMessageGUIDs:(id)ds completionBlock:(id)block
{
  dsCopy = ds;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BAA818;
  v9[3] = &unk_1E7CBBF48;
  v10 = dsCopy;
  v7 = dsCopy;
  objc_msgSend__checkForIndexedGUIDsWithPerformBlock_completionBlock_(self, v8, v9, block);
}

- (void)checkForIndexedAttachmentGUIDs:(id)ds completionBlock:(id)block
{
  dsCopy = ds;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BAA998;
  v9[3] = &unk_1E7CBBF48;
  v10 = dsCopy;
  v7 = dsCopy;
  objc_msgSend__checkForIndexedGUIDsWithPerformBlock_completionBlock_(self, v8, v9, block);
}

- (void)beginThrottlingForIdentifier:(id)identifier untilDate:(id)date
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[IMDLegacyCoreSpotlightQueryProvider beginThrottlingForIdentifier:untilDate:]";
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "%s no-op in legacy system", &v5, 0xCu);
  }
}

- (void)finishThrottlingForIdentifier:(id)identifier
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[IMDLegacyCoreSpotlightQueryProvider finishThrottlingForIdentifier:]";
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "%s no-op in legacy system", &v4, 0xCu);
  }
}

@end