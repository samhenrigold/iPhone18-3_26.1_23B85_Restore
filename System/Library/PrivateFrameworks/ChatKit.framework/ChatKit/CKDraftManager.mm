@interface CKDraftManager
+ (id)sharedInstance;
- (id)_draftForConversationWithChatIdentifier:(id)identifier fetchPolicy:(unsigned __int8)policy;
- (id)_pendingChatIdentifier;
- (id)_pendingChatIdentifierURL;
- (id)_pendingRecipients;
- (id)_pendingRecipientsURL;
- (id)draftForConversation:(id)conversation;
- (id)draftForConversation:(id)conversation fetchPolicy:(unsigned __int8)policy;
- (id)draftForPendingConversationWithRecipients:(id *)recipients chatIdentifier:(id *)identifier;
- (void)_clearDraftForConversation:(id)conversation;
- (void)_setDraft:(id)draft forKey:(id)key;
- (void)_setPendingChatIdentifier:(id)identifier;
- (void)_setPendingRecipients:(id)recipients;
- (void)clearDraftForComposition:(id)composition;
- (void)clearDraftForPendingConversation;
- (void)dealloc;
- (void)preloadAllDraftsInConversations:(id)conversations completion:(id)completion;
- (void)saveCompositionAndFlushCache:(BOOL)cache;
- (void)setDraft:(id)draft forConversation:(id)conversation;
- (void)setDraftForPendingConversation:(id)conversation withRecipients:(id)recipients chatIdentifier:(id)identifier;
@end

@implementation CKDraftManager

+ (id)sharedInstance
{
  if (sDraftManager)
  {
    goto LABEL_2;
  }

  v4 = objc_alloc_init(self);
  v5 = sDraftManager;
  sDraftManager = v4;

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([standardUserDefaults BOOLForKey:@"PendingCleared"])
  {

    goto LABEL_13;
  }

  v7 = CKIsRunningInMessages();

  if (!v7)
  {
LABEL_13:
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "****** Not Clearing pending drafts *******", v11, 2u);
      }
    }

    goto LABEL_2;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "****** Clearing pending drafts *******", buf, 2u);
    }
  }

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults2 setBool:1 forKey:@"PendingCleared"];

  [sDraftManager clearDraftForPendingConversation];
  [sDraftManager saveCompositionAndFlushCache:0];
LABEL_2:
  v2 = sDraftManager;

  return v2;
}

- (void)dealloc
{
  [(CKDraftManager *)self saveCompositionAndFlushCache:1];
  v3.receiver = self;
  v3.super_class = CKDraftManager;
  [(CKDraftManager *)&v3 dealloc];
}

- (void)_clearDraftForConversation:(id)conversation
{
  v17 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(15);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v14 = "[CKDraftManager _clearDraftForConversation:]";
      v15 = 2112;
      v16 = conversationCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "%s conversation:[%@]", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog(0xFu, @"%s conversation:[%@]", v6, v7, v8, v9, v10, v11, "[CKDraftManager _clearDraftForConversation:]");
  }

  uniqueIdentifier = [conversationCopy uniqueIdentifier];
  [(CKDraftManager *)self _setDraft:0 forKey:uniqueIdentifier];
}

- (id)draftForConversation:(id)conversation
{
  v17 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(15);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v16 = conversationCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "draftForConversation: %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog(0xFu, @"draftForConversation: %@", v6, v7, v8, v9, v10, v11, conversationCopy);
  }

  uniqueIdentifier = [conversationCopy uniqueIdentifier];
  v13 = [(CKDraftManager *)self draftForConversationWithChatIdentifier:uniqueIdentifier];

  return v13;
}

- (id)draftForConversation:(id)conversation fetchPolicy:(unsigned __int8)policy
{
  policyCopy = policy;
  v19 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(15);
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v18 = conversationCopy;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "draftForConversation: %@", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog(0xFu, @"draftForConversation: %@", v8, v9, v10, v11, v12, v13, conversationCopy);
  }

  uniqueIdentifier = [conversationCopy uniqueIdentifier];
  v15 = [(CKDraftManager *)self _draftForConversationWithChatIdentifier:uniqueIdentifier fetchPolicy:policyCopy];

  return v15;
}

- (void)setDraft:(id)draft forConversation:(id)conversation
{
  v42 = *MEMORY[0x1E69E9840];
  draftCopy = draft;
  conversationCopy = conversation;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(15);
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v37 = draftCopy;
      v38 = 2112;
      v39 = conversationCopy;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_DEBUG, "setDraft: %@ forConversation: %@", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog(0xFu, @"setDraft: %@ forConversation: %@", v9, v10, v11, v12, v13, v14, draftCopy);
  }

  uniqueIdentifier = [conversationCopy uniqueIdentifier];
  v16 = uniqueIdentifier == 0;

  if (v16)
  {
    v28 = IMLogHandleForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [CKDraftManager setDraft:forConversation:];
    }
  }

  else
  {
    hasRestorableContent = [draftCopy hasRestorableContent];
    v18 = IMOSLoggingEnabled();
    if (hasRestorableContent)
    {
      if (v18)
      {
        CKLogCStringForType(15);
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v37 = "[CKDraftManager setDraft:forConversation:]";
          v38 = 2112;
          v39 = draftCopy;
          v40 = 2112;
          v41 = conversationCopy;
          _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_DEBUG, "%s draft:[%@],conversation:[%@]", buf, 0x20u);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        _CKLog(0xFu, @"%s draft:[%@],conversation:[%@]", v20, v21, v22, v23, v24, v25, "[CKDraftManager setDraft:forConversation:]");
      }

      uniqueIdentifier2 = [conversationCopy uniqueIdentifier];
      [(CKDraftManager *)self _setDraft:draftCopy forKey:uniqueIdentifier2];

      if (IMIsRunningInMessagesExtension())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CKDraftManagerSavedDraft", 0, 0, 1u);
      }
    }

    else
    {
      if (v18)
      {
        CKLogCStringForType(15);
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v37 = conversationCopy;
          _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "Clearing the draft conversation. This is expected if the conversation has NO composition, or the composition lacks content, or the conversation has no unique identifier, or composition was only whitespace, or the composition was expirable (and not an audio message). Conversation: %@", buf, 0xCu);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLogExternal())
      {
        _CKLogExternal(0xFu, @"Clearing the draft conversation. This is expected if the conversation has NO composition, or the composition lacks content, or the conversation has no unique identifier, or composition was only whitespace, or the composition was expirable (and not an audio message). Conversation: %@", v30, v31, v32, v33, v34, v35, conversationCopy);
      }

      [(CKDraftManager *)self _clearDraftForConversation:conversationCopy];
    }
  }
}

- (id)draftForPendingConversationWithRecipients:(id *)recipients chatIdentifier:(id *)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(15);
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v17 = "[CKDraftManager draftForPendingConversationWithRecipients:chatIdentifier:]";
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog(0xFu, @"%s", v8, v9, v10, v11, v12, v13, "[CKDraftManager draftForPendingConversationWithRecipients:chatIdentifier:]");
  }

  v14 = [(CKDraftManager *)self draftForConversationWithChatIdentifier:@"Pending"];
  if (recipients)
  {
    *recipients = [(CKDraftManager *)self _pendingRecipients];
  }

  if (identifier)
  {
    *identifier = [(CKDraftManager *)self _pendingChatIdentifier];
  }

  return v14;
}

- (void)setDraftForPendingConversation:(id)conversation withRecipients:(id)recipients chatIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  recipientsCopy = recipients;
  identifierCopy = identifier;
  if (conversationCopy | recipientsCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = 136315906;
        v13 = "[CKDraftManager setDraftForPendingConversation:withRecipients:chatIdentifier:]";
        v14 = 2112;
        v15 = conversationCopy;
        v16 = 2112;
        v17 = recipientsCopy;
        v18 = 2112;
        v19 = identifierCopy;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "%s draft:[%@],recipients:[%@], chatID:%@", &v12, 0x2Au);
      }
    }

    [(CKDraftManager *)self _setDraft:conversationCopy forKey:@"Pending"];
    [(CKDraftManager *)self _setPendingRecipients:recipientsCopy];
    [(CKDraftManager *)self _setPendingChatIdentifier:identifierCopy];
  }

  else
  {
    [(CKDraftManager *)self clearDraftForPendingConversation];
  }
}

- (void)clearDraftForPendingConversation
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(15);
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v11 = "[CKDraftManager clearDraftForPendingConversation]";
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog(0xFu, @"%s", v4, v5, v6, v7, v8, v9, "[CKDraftManager clearDraftForPendingConversation]");
  }

  [(CKDraftManager *)self _setDraft:0 forKey:@"Pending"];
  [(CKDraftManager *)self _setPendingRecipients:0];
  [(CKDraftManager *)self _setPendingChatIdentifier:0];
}

- (void)clearDraftForComposition:(id)composition
{
  [composition cleanupCKShareFromComposition];

  [(CKDraftManager *)self clearDraftForPendingConversation];
}

- (void)saveCompositionAndFlushCache:(BOOL)cache
{
  cacheCopy = cache;
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = self->_dirtyDraftIDs;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v6)
  {
    v7 = *v34;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        v10 = [(CKDraftManager *)self _draftForConversationWithChatIdentifier:v9 fetchPolicy:2];
        [v10 saveCompositionWithChatIdentifier:v9];
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v6);
  }

  [(NSMutableSet *)self->_dirtyDraftIDs removeAllObjects];
  if (cacheCopy)
  {
    [(CKDraftManager *)self flushCache];
  }

  _pendingRecipientsURL = [(CKDraftManager *)self _pendingRecipientsURL];
  if ([(NSArray *)self->_pendingRecipients count])
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        pendingRecipients = self->_pendingRecipients;
        *buf = 138412290;
        v38 = pendingRecipients;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Saving draft with recipients: %@", buf, 0xCu);
      }
    }

    v14 = MEMORY[0x1E696AE40];
    pendingRecipients = [(CKDraftManager *)self pendingRecipients];
    v32 = 0;
    v16 = [v14 dataWithPropertyList:pendingRecipients format:100 options:0 error:&v32];
    defaultManager = v32;

    if (defaultManager)
    {
      v18 = IMLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CKDraftManager saveCompositionAndFlushCache:];
      }
    }

    v31 = 0;
    v19 = [v16 writeToURL:_pendingRecipientsURL options:1073741825 error:&v31];
    v20 = v31;
    if ((v19 & 1) == 0)
    {
      v21 = IMLogHandleForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CKDraftManager saveCompositionAndFlushCache:];
      }

      [(NSArray *)self->_pendingRecipients writeToURL:_pendingRecipientsURL atomically:1];
    }
  }

  else
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtURL:_pendingRecipientsURL error:0];
  }

  _pendingChatIdentifierURL = [(CKDraftManager *)self _pendingChatIdentifierURL];
  if ([(NSString *)self->_pendingChatIdentifier length])
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        pendingChatIdentifier = self->_pendingChatIdentifier;
        *buf = 138412290;
        v38 = pendingChatIdentifier;
        _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "Saving draft with chatID: %@", buf, 0xCu);
      }
    }

    pendingChatIdentifier = [(CKDraftManager *)self pendingChatIdentifier];
    defaultManager2 = [pendingChatIdentifier dataUsingEncoding:4];

    v30 = 0;
    v27 = [defaultManager2 writeToURL:_pendingChatIdentifierURL options:1073741825 error:&v30];
    v28 = v30;
    if ((v27 & 1) == 0)
    {
      v29 = IMLogHandleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [CKDraftManager saveCompositionAndFlushCache:];
      }

      [(NSArray *)self->_pendingRecipients writeToURL:_pendingChatIdentifierURL atomically:1];
    }
  }

  else
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager2 removeItemAtURL:_pendingChatIdentifierURL error:0];
  }
}

- (void)preloadAllDraftsInConversations:(id)conversations completion:(id)completion
{
  conversationsCopy = conversations;
  completionCopy = completion;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__29;
  v22[4] = __Block_byref_object_dispose__29;
  v23 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__CKDraftManager_preloadAllDraftsInConversations_completion___block_invoke;
  aBlock[3] = &unk_1E72F1660;
  aBlock[4] = self;
  aBlock[5] = v22;
  v8 = _Block_copy(aBlock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (!conversationsCopy)
    {
      completionCopy[2](completionCopy);
      goto LABEL_7;
    }

    v8[2](v8);
    *(v19 + 24) = 1;
  }

  if (preloadAllDraftsInConversations_completion__onceToken != -1)
  {
    [CKDraftManager preloadAllDraftsInConversations:completion:];
  }

  v9 = preloadAllDraftsInConversations_completion__queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__CKDraftManager_preloadAllDraftsInConversations_completion___block_invoke_3;
  v10[3] = &unk_1E72F1688;
  v15 = &v18;
  v11 = conversationsCopy;
  v13 = completionCopy;
  v16 = v22;
  v14 = v8;
  selfCopy = self;
  dispatch_async(v9, v10);

LABEL_7:
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(v22, 8);
}

void __61__CKDraftManager_preloadAllDraftsInConversations_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __61__CKDraftManager_preloadAllDraftsInConversations_completion___block_invoke_2()
{
  v0 = dispatch_queue_create("com.apple.MobileSMS.CKDraftManager.preload", 0);
  v1 = preloadAllDraftsInConversations_completion__queue;
  preloadAllDraftsInConversations_completion__queue = v0;
}

void __61__CKDraftManager_preloadAllDraftsInConversations_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    goto LABEL_4;
  }

  if (*(a1 + 32))
  {
    dispatch_sync(MEMORY[0x1E69E96A0], *(a1 + 56));
    *(*(*(a1 + 64) + 8) + 24) = 1;
LABEL_4:
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(15);
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v4 = [*(a1 + 32) count];
        *buf = 136315394;
        v36 = "[CKDraftManager preloadAllDraftsInConversations:completion:]_block_invoke_3";
        v37 = 2048;
        v38 = v4;
        _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_DEBUG, "%s %lu conversations", buf, 0x16u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      [*(a1 + 32) count];
      _CKLog(0xFu, @"%s %lu conversations", v5, v6, v7, v8, v9, v10, "[CKDraftManager preloadAllDraftsInConversations:completion:]_block_invoke");
    }

    v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = *(a1 + 32);
    v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v13)
    {
      v14 = *v31;
      do
      {
        v15 = 0;
        do
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = [*(*(&v30 + 1) + 8 * v15) uniqueIdentifier];
          v17 = [*(*(*(a1 + 72) + 8) + 40) objectForKeyedSubscript:v16];
          if (!v17 || ([MEMORY[0x1E695DFB0] null], v18 = objc_claimAutoreleasedReturnValue(), v19 = v17 == v18, v18, v19))
          {
            v20 = [CKComposition savedCompositionDataForChatIdentifier:v16];
            [v11 setObject:v20 forKeyedSubscript:v16];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v13);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__CKDraftManager_preloadAllDraftsInConversations_completion___block_invoke_2_233;
    block[3] = &unk_1E72EDA68;
    v21 = *(a1 + 40);
    v22 = *(a1 + 48);
    v27 = v11;
    v28 = v21;
    v29 = v22;
    v23 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    return;
  }

  v24 = *(a1 + 48);
  v25 = MEMORY[0x1E69E96A0];

  dispatch_async(v25, v24);
}

uint64_t __61__CKDraftManager_preloadAllDraftsInConversations_completion___block_invoke_2_233(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(15);
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [*(a1 + 32) count];
      *buf = 136315394;
      v29 = "[CKDraftManager preloadAllDraftsInConversations:completion:]_block_invoke_2";
      v30 = 2048;
      v31 = v4;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_DEBUG, "%s %lu unloaded conversations found in drafts", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    [*(a1 + 32) count];
    _CKLog(0xFu, @"%s %lu unloaded conversations found in drafts", v5, v6, v7, v8, v9, v10, "[CKDraftManager preloadAllDraftsInConversations:completion:]_block_invoke");
  }

  if (!*(*(a1 + 40) + 8))
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v12 = *(a1 + 40);
    v13 = *(v12 + 8);
    *(v12 + 8) = v11;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = *(a1 + 32);
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        v19 = [*(a1 + 32) objectForKeyedSubscript:v18];
        v20 = [CKComposition savedCompositionFromData:v19];

        if (v20)
        {
          [*(*(a1 + 40) + 8) setObject:v20 forKeyedSubscript:v18];
        }

        else
        {
          v21 = [MEMORY[0x1E695DFB0] null];
          [*(*(a1 + 40) + 8) setObject:v21 forKeyedSubscript:v18];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  return (*(*(a1 + 48) + 16))();
}

- (id)_pendingRecipientsURL
{
  if (_pendingRecipientsURL_onceToken != -1)
  {
    [CKDraftManager _pendingRecipientsURL];
  }

  v3 = _pendingRecipientsURL_sPendingRecipientsURL;

  return v3;
}

void __39__CKDraftManager__pendingRecipientsURL__block_invoke()
{
  v8[3] = *MEMORY[0x1E69E9840];
  v0 = CKDraftsDirectoryURL();
  v1 = [v0 path];
  v8[0] = v1;
  v8[1] = @"Pending";
  v8[2] = @"recipients.plist";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v3 = [MEMORY[0x1E696AEC0] pathWithComponents:v2];
  v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v3 isDirectory:0];
  v5 = _pendingRecipientsURL_sPendingRecipientsURL;
  _pendingRecipientsURL_sPendingRecipientsURL = v4;

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [_pendingRecipientsURL_sPendingRecipientsURL URLByDeletingLastPathComponent];
  [v6 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:0];
}

- (id)_pendingChatIdentifierURL
{
  if (_pendingChatIdentifierURL_onceToken != -1)
  {
    [CKDraftManager _pendingChatIdentifierURL];
  }

  v3 = _pendingChatIdentifierURL_sPendingChatIdentifierURL;

  return v3;
}

void __43__CKDraftManager__pendingChatIdentifierURL__block_invoke()
{
  v8[3] = *MEMORY[0x1E69E9840];
  v0 = CKDraftsDirectoryURL();
  v1 = [v0 path];
  v8[0] = v1;
  v8[1] = @"Pending";
  v8[2] = @"chatid";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v3 = [MEMORY[0x1E696AEC0] pathWithComponents:v2];
  v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v3 isDirectory:0];
  v5 = _pendingChatIdentifierURL_sPendingChatIdentifierURL;
  _pendingChatIdentifierURL_sPendingChatIdentifierURL = v4;

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [_pendingChatIdentifierURL_sPendingChatIdentifierURL URLByDeletingLastPathComponent];
  [v6 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:0];
}

- (id)_draftForConversationWithChatIdentifier:(id)identifier fetchPolicy:(unsigned __int8)policy
{
  policyCopy = policy;
  identifierCopy = identifier;
  if (policyCopy == 1)
  {
    null2 = 0;
  }

  else
  {
    null2 = [(NSMutableDictionary *)self->_cachedDrafts objectForKey:identifierCopy];
  }

  if (policyCopy == 2 || null2)
  {
    null = [MEMORY[0x1E695DFB0] null];

    if (null2 != null)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = [CKComposition savedCompositionForChatIdentifier:identifierCopy];
    null2 = v8;
    cachedDrafts = self->_cachedDrafts;
    if (cachedDrafts)
    {
      if (v8)
      {
LABEL_8:
        [(NSMutableDictionary *)cachedDrafts setObject:null2 forKey:identifierCopy];
        goto LABEL_14;
      }
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v12 = self->_cachedDrafts;
      self->_cachedDrafts = v11;

      cachedDrafts = self->_cachedDrafts;
      if (null2)
      {
        goto LABEL_8;
      }
    }

    null2 = [MEMORY[0x1E695DFB0] null];
    [(NSMutableDictionary *)cachedDrafts setObject:null2 forKey:identifierCopy];
  }

  null2 = 0;
LABEL_14:

  return null2;
}

- (void)_setDraft:(id)draft forKey:(id)key
{
  v19 = *MEMORY[0x1E69E9840];
  draftCopy = draft;
  keyCopy = key;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v15 = 138412546;
      v16 = keyCopy;
      v17 = 2112;
      v18 = draftCopy;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "_setDraft: %@, %@", &v15, 0x16u);
    }
  }

  if (keyCopy)
  {
    if (draftCopy)
    {
      if (!self->_cachedDrafts)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
        cachedDrafts = self->_cachedDrafts;
        self->_cachedDrafts = v9;
      }

      if (!self->_dirtyDraftIDs)
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        dirtyDraftIDs = self->_dirtyDraftIDs;
        self->_dirtyDraftIDs = v11;
      }

      v13 = [(CKDraftManager *)self _cachedDraftForConversationWithChatIdentifier:keyCopy];
      if (v13 != draftCopy)
      {
        [(NSMutableDictionary *)self->_cachedDrafts setObject:draftCopy forKey:keyCopy];
        [(NSMutableSet *)self->_dirtyDraftIDs addObject:keyCopy];
      }
    }

    else
    {
      [CKComposition deleteCompositionWithChatIdentifier:keyCopy];
      [(NSMutableDictionary *)self->_cachedDrafts removeObjectForKey:keyCopy];
      [(NSMutableSet *)self->_dirtyDraftIDs removeObject:keyCopy];
    }
  }

  else
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CKDraftManager _setDraft:v14 forKey:?];
    }
  }
}

- (void)_setPendingRecipients:(id)recipients
{
  recipientsCopy = recipients;
  if (self->_pendingRecipients != recipientsCopy)
  {
    v9 = recipientsCopy;
    objc_storeStrong(&self->_pendingRecipients, recipients);
    v6 = [(NSArray *)self->_pendingRecipients count];
    recipientsCopy = v9;
    if (!v6)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      _pendingRecipientsURL = [(CKDraftManager *)self _pendingRecipientsURL];
      [defaultManager removeItemAtURL:_pendingRecipientsURL error:0];

      recipientsCopy = v9;
    }
  }
}

- (id)_pendingRecipients
{
  pendingRecipients = self->_pendingRecipients;
  if (!pendingRecipients)
  {
    v4 = objc_alloc(MEMORY[0x1E695DEC8]);
    _pendingRecipientsURL = [(CKDraftManager *)self _pendingRecipientsURL];
    v6 = [v4 initWithContentsOfURL:_pendingRecipientsURL];
    v7 = self->_pendingRecipients;
    self->_pendingRecipients = v6;

    pendingRecipients = self->_pendingRecipients;
  }

  return pendingRecipients;
}

- (void)_setPendingChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self->_pendingChatIdentifier != identifierCopy)
  {
    v9 = identifierCopy;
    objc_storeStrong(&self->_pendingChatIdentifier, identifier);
    v6 = [(NSString *)self->_pendingChatIdentifier length];
    identifierCopy = v9;
    if (!v6)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      _pendingChatIdentifierURL = [(CKDraftManager *)self _pendingChatIdentifierURL];
      [defaultManager removeItemAtURL:_pendingChatIdentifierURL error:0];

      identifierCopy = v9;
    }
  }
}

- (id)_pendingChatIdentifier
{
  v17 = *MEMORY[0x1E69E9840];
  pendingChatIdentifier = self->_pendingChatIdentifier;
  if (!pendingChatIdentifier)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    _pendingChatIdentifierURL = [(CKDraftManager *)self _pendingChatIdentifierURL];
    v12 = 0;
    v6 = [v4 initWithContentsOfURL:_pendingChatIdentifierURL encoding:4 error:&v12];
    v7 = v12;
    v8 = self->_pendingChatIdentifier;
    self->_pendingChatIdentifier = v6;

    if (v7 && IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        _pendingChatIdentifierURL2 = [(CKDraftManager *)self _pendingChatIdentifierURL];
        *buf = 138412546;
        v14 = v7;
        v15 = 2112;
        v16 = _pendingChatIdentifierURL2;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Got error while decoding _pendingChatIdentifier: %@, at: %@.", buf, 0x16u);
      }
    }

    pendingChatIdentifier = self->_pendingChatIdentifier;
  }

  return pendingChatIdentifier;
}

@end