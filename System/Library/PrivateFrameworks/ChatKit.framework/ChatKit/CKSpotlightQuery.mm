@interface CKSpotlightQuery
- (CKSpotlightQuery)initWithSearchText:(id)text chatRegistryOverride:(id)override startQuery:(BOOL)query completionBlock:(id)block;
- (CKSpotlightQuery)initWithSearchText:(id)text completionBlock:(id)block startQuery:(BOOL)query;
- (id)chatRegistry;
- (void)_callCompletion;
- (void)_cleanup;
- (void)_processSearchResults;
- (void)dealloc;
- (void)searchQuery:(id)query didFailWithError:(id)error;
- (void)searchQuery:(id)query didReturnItems:(id)items;
- (void)searchQuery:(id)query statusChanged:(unint64_t)changed;
@end

@implementation CKSpotlightQuery

- (void)_processSearchResults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CKSpotlightQuery__processSearchResults__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __41__CKSpotlightQuery__processSearchResults__block_invoke(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(*(a1 + 32) + 56);
        *buf = 67109120;
        LODWORD(v39) = v4;
        _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Leaving group %d", buf, 8u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Leaving A - cancel", buf, 2u);
      }
    }
  }

  else
  {
    if (!*(v2 + 48))
    {
      return;
    }

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "_processSearchResults...", buf, 2u);
      }
    }

    v7 = [*(*(a1 + 32) + 40) count];
    v9 = *(a1 + 32);
    if (*(v9 + 32) < v7)
    {
      *&v8 = 138412290;
      v30 = v8;
      do
      {
        v10 = [*(v9 + 40) objectAtIndex:v30];
        v11 = [v10 uniqueIdentifier];
        v12 = [v10 domainIdentifier];
        v13 = [v10 attributeSet];
        v14 = [v13 __ck_itemContentCreationDate];

        v15 = [v10 attributeSet];
        v16 = [v15 __ck_spotlightItemSnippet];

        if (([v11 containsString:@"message_guid"] & 1) != 0 || objc_msgSend(v11, "containsString:", @"chat_guid"))
        {
          ++*(*(a1 + 32) + 32);
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v39 = v11;
              v40 = 2112;
              v41 = v12;
              _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Looking for a message matching message guid: %@ or chat guid: %@", buf, 0x16u);
            }
          }

          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __41__CKSpotlightQuery__processSearchResults__block_invoke_87;
          aBlock[3] = &unk_1E72F5070;
          aBlock[4] = *(a1 + 32);
          v35 = v14;
          v18 = v11;
          v36 = v18;
          v37 = v16;
          v19 = _Block_copy(aBlock);
          if (v12)
          {
            if (IMOSLoggingEnabled())
            {
              v20 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                *buf = v30;
                v39 = v12;
                _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "ChatGUID: %@", buf, 0xCu);
              }
            }

            v21 = [*(a1 + 32) chatRegistry];
            v22 = [v21 existingChatWithGUID:v12];

            v19[2](v19, v22);
          }

          else if (v18)
          {
            if (IMOSLoggingEnabled())
            {
              v23 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                *buf = v30;
                v39 = v18;
                _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "MessageGUID: %@", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v24 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "Entering B", buf, 2u);
              }
            }

            dispatch_group_enter(*(*(a1 + 32) + 56));
            v25 = [MEMORY[0x1E69A5AE8] sharedInstance];
            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 3221225472;
            v32[2] = __41__CKSpotlightQuery__processSearchResults__block_invoke_90;
            v32[3] = &unk_1E72F5098;
            v32[4] = *(a1 + 32);
            v33 = v19;
            [v25 loadMessageWithGUID:v18 completionBlock:v32];
          }

          ++*(*(a1 + 32) + 32);
        }

        v9 = *(a1 + 32);
      }

      while (*(v9 + 32) < v7);
    }

    v26 = *(v9 + 40);
    *(v9 + 40) = 0;

    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = *(*(a1 + 32) + 56);
        *buf = 134218240;
        v39 = v7;
        v40 = 1024;
        LODWORD(v41) = v28;
        _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Count: %lu group: %d", buf, 0x12u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "Leaving A", buf, 2u);
      }
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 56));
}

void __41__CKSpotlightQuery__processSearchResults__block_invoke_87(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = v3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Chat: %@", &v17, 0xCu);
    }
  }

  v5 = [v3 guid];

  if (v5)
  {
    v6 = *(a1[4] + 48);
    v7 = [v3 guid];
    v8 = [v6 objectForKey:v7];

    if (!v8 || a1[5] && ([v8 messageDate], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "compare:", a1[5]) == -1, v9, v10))
    {
      v11 = [CKSpotlightSearchResult alloc];
      v12 = a1[6];
      v13 = [v3 guid];
      v14 = [(CKSpotlightSearchResult *)v11 initWithMessageGUID:v12 chatGUID:v13 messageTime:a1[5] summery:a1[7]];

      v15 = *(a1[4] + 48);
      v16 = [v3 guid];
      [v15 setObject:v14 forKey:v16];
    }
  }
}

void __41__CKSpotlightQuery__processSearchResults__block_invoke_90(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Completion called with message; %@", &v11, 0xCu);
    }
  }

  if ((*(*(a1 + 32) + 8) & 1) == 0)
  {
    v8 = *(a1 + 40);
    v9 = [v6 lastObject];
    (*(v8 + 16))(v8, v9);
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Leaving B", &v11, 2u);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 56));
}

- (void)_cleanup
{
  searchResults = self->_searchResults;
  self->_searchResults = 0;

  self->_resultIndex = 0;
  chatGUIDToLatestSearchResult = self->_chatGUIDToLatestSearchResult;
  self->_chatGUIDToLatestSearchResult = 0;

  currentQuery = self->_currentQuery;
  if (currentQuery)
  {
    if ([(MDSearchQuery *)currentQuery status]<= 2)
    {
      [(MDSearchQuery *)self->_currentQuery cancel];
    }

    [(MDSearchQuery *)self->_currentQuery setDelegate:0];
    v6 = self->_currentQuery;
    self->_currentQuery = 0;
  }

  [(CKSpotlightQuery *)self setCompletion:0];
  searchResultLoadingGroup = self->_searchResultLoadingGroup;
  if (searchResultLoadingGroup)
  {
    self->_searchResultLoadingGroup = 0;
  }
}

- (void)_callCompletion
{
  if (self->_completion)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableDictionary count](self->_chatGUIDToLatestSearchResult, "count")}];
    allValues = [(NSMutableDictionary *)self->_chatGUIDToLatestSearchResult allValues];
    [v4 addObjectsFromArray:allValues];

    [v4 sortUsingComparator:&__block_literal_global_95];
    (*(self->_completion + 2))();
  }
}

- (CKSpotlightQuery)initWithSearchText:(id)text completionBlock:(id)block startQuery:(BOOL)query
{
  queryCopy = query;
  v28 = *MEMORY[0x1E69E9840];
  textCopy = text;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = textCopy;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "initWithSearchText:completionBlock: [searchText: %@]", buf, 0xCu);
    }
  }

  v22.receiver = self;
  v22.super_class = CKSpotlightQuery;
  v10 = [(CKSpotlightQuery *)&v22 init];
  v11 = v10;
  if (v10)
  {
    [(CKSpotlightQuery *)v10 setCompletion:blockCopy];
    if ([textCopy length])
    {
      if (setupCoreSpotlight_onceToken != -1)
      {
        [CKSpotlightQuery initWithSearchText:completionBlock:startQuery:];
      }

      if (_CKMDSearchQueryClass && _CKMDSearchQueryOptionFetchAttributes && _CKMDItemAuthors && _CKMDItemAuthorAddresses && _CKMDItemRecipients && _CKMDItemRecipientAddresses && _CKMDItemSubject && _CKMDItemTextContent && _CKMDItemInstantMessageAddresses)
      {
        if (CKEnhancedLegacySearchDisabled())
        {
          [MEMORY[0x1E696AE18] predicateWithFormat:@"(kMDItemAuthors contains[cd] %@) || (kMDItemAuthorAddresses contains[cd] %@) || (kMDItemRecipients contains[cd] %@) || (kMDItemRecipientAddresses contains[cd] %@) || (kMDItemInstantMessageAddresses contains[cd] %@) || (kMDItemSubject contains[cd] %@) || (kMDItemTextContent contains[cd] %@)", textCopy, textCopy, textCopy, textCopy, textCopy, textCopy, textCopy];
        }

        else
        {
          [MEMORY[0x1E696AE18] predicateWithFormat:@"(kMDItemSubject contains[cd] %@) || (kMDItemTextContent contains[cd] %@)", textCopy, textCopy];
        }
        v20 = ;
        v13 = [_CKMDSearchQueryClass alloc];
        v24 = _CKMDSearchQueryOptionFetchAttributes;
        v23[0] = _CKMDItemAuthors;
        v23[1] = _CKMDItemAuthorAddresses;
        v23[2] = _CKMDItemRecipients;
        v23[3] = _CKMDItemRecipientAddresses;
        v23[4] = _CKMDItemInstantMessageAddresses;
        v23[5] = _CKMDItemSubject;
        v23[6] = _CKMDItemTextContent;
        v23[7] = @"kMDItemContentCreationDate";
        v14 = _CKMDItemSnippet;
        if (!_CKMDItemSnippet)
        {
          v14 = kMDSpotlightItemSnippet;
        }

        v23[8] = v14;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:9];
        v25 = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v17 = [v13 initWithPredicate:v20 options:v16];
        currentQuery = v11->_currentQuery;
        v11->_currentQuery = v17;

        [(MDSearchQuery *)v11->_currentQuery setClientBundleID:@"com.apple.MobileSMS"];
        [(MDSearchQuery *)v11->_currentQuery setDelegate:v11];
        if (queryCopy)
        {
          [(MDSearchQuery *)v11->_currentQuery start];
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Couldn't find CoreSpotlight symbols", buf, 2u);
        }
      }
    }
  }

  return v11;
}

- (void)dealloc
{
  [(CKSpotlightQuery *)self _cleanup];
  v3.receiver = self;
  v3.super_class = CKSpotlightQuery;
  [(CKSpotlightQuery *)&v3 dealloc];
}

- (void)searchQuery:(id)query didReturnItems:(id)items
{
  queryCopy = query;
  itemsCopy = items;
  if (self->_currentQuery == queryCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "did return items", buf, 2u);
      }
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__CKSpotlightQuery_searchQuery_didReturnItems___block_invoke;
    v9[3] = &unk_1E72EB8D0;
    v9[4] = self;
    v10 = itemsCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }
}

void __47__CKSpotlightQuery_searchQuery_didReturnItems___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 40);
  if (v3)
  {
    v4 = [v3 arrayByAddingObjectsFromArray:v2];
  }

  else
  {
    v4 = [v2 copy];
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(*(a1 + 32) + 40) count];
      v9 = 134217984;
      v10 = v8;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Added results with count %lu", &v9, 0xCu);
    }
  }
}

- (void)searchQuery:(id)query statusChanged:(unint64_t)changed
{
  v11 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      changedCopy = changed;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "statusChanged: %lu", buf, 0xCu);
    }
  }

  if (changed == 3 && self->_currentQuery == queryCopy)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__CKSpotlightQuery_searchQuery_statusChanged___block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __46__CKSpotlightQuery_searchQuery_statusChanged___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  v5 = *(a1 + 32);
  if (!v5[7])
  {
    v6 = dispatch_group_create();
    v7 = *(a1 + 32);
    v8 = *(v7 + 56);
    *(v7 + 56) = v6;

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Entering A", buf, 2u);
      }
    }

    dispatch_group_enter(*(*(a1 + 32) + 56));
    v10 = *(a1 + 32);
    v11 = *(v10 + 56);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__CKSpotlightQuery_searchQuery_statusChanged___block_invoke_115;
    block[3] = &unk_1E72EBA18;
    block[4] = v10;
    dispatch_group_notify(v11, MEMORY[0x1E69E96A0], block);
    v5 = *(a1 + 32);
  }

  return [v5 _processSearchResults];
}

uint64_t __46__CKSpotlightQuery_searchQuery_statusChanged___block_invoke_115(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Notify triggered!", v6, 2u);
    }
  }

  v4 = *(a1 + 32);
  if ((v4[8] & 1) == 0)
  {
    [v4 _callCompletion];
    v4 = *(a1 + 32);
  }

  return [v4 _cleanup];
}

- (void)searchQuery:(id)query didFailWithError:(id)error
{
  v11 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  errorCopy = error;
  if (self->_currentQuery == queryCopy && IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = errorCopy;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Spotlight query failed with error: %@", &v9, 0xCu);
    }
  }
}

- (CKSpotlightQuery)initWithSearchText:(id)text chatRegistryOverride:(id)override startQuery:(BOOL)query completionBlock:(id)block
{
  queryCopy = query;
  overrideCopy = override;
  v11 = [(CKSpotlightQuery *)self initWithSearchText:text completionBlock:block startQuery:queryCopy];
  v12 = v11;
  if (v11)
  {
    [(CKSpotlightQuery *)v11 setChatRegisteryOverride:overrideCopy];
  }

  return v12;
}

- (id)chatRegistry
{
  chatRegisteryOverride = self->_chatRegisteryOverride;
  if (chatRegisteryOverride)
  {
    mEMORY[0x1E69A5AF8] = chatRegisteryOverride;
  }

  else
  {
    mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  }

  return mEMORY[0x1E69A5AF8];
}

@end