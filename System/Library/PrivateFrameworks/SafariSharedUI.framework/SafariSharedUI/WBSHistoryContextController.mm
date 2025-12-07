@interface WBSHistoryContextController
- (WBSHistoryContextController)initWithHistory:(id)history contextClient:(id)client qualityOfService:(unsigned int)service;
- (void)_persistTopicsFromContextResult:(id)result forPageURL:(id)l;
- (void)cachedResponseForURL:(id)l completionHandler:(id)handler;
- (void)contextForPageURL:(id)l content:(id)content contentType:(int64_t)type metadata:(id)metadata isPrivate:(BOOL)private isReaderAvailable:(BOOL)available withCompletionHandler:(id)handler;
- (void)invalidateCachedResults;
@end

@implementation WBSHistoryContextController

- (WBSHistoryContextController)initWithHistory:(id)history contextClient:(id)client qualityOfService:(unsigned int)service
{
  historyCopy = history;
  clientCopy = client;
  v23.receiver = self;
  v23.super_class = WBSHistoryContextController;
  v11 = [(WBSHistoryContextController *)&v23 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_history, history);
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v13 stringWithFormat:@"com.apple.SafariShared.%@.%p.internalQueue", v15, v12];

    uTF8String = [v16 UTF8String];
    v18 = dispatch_queue_attr_make_with_qos_class(0, service, 0);
    v19 = dispatch_queue_create(uTF8String, v18);
    internalQueue = v12->_internalQueue;
    v12->_internalQueue = v19;

    objc_storeStrong(&v12->_client, client);
    v21 = v12;
  }

  return v12;
}

- (void)cachedResponseForURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__WBSHistoryContextController_cachedResponseForURL_completionHandler___block_invoke;
  block[3] = &unk_1E8283058;
  block[4] = self;
  v12 = lCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = lCopy;
  dispatch_async(internalQueue, block);
}

uint64_t __70__WBSHistoryContextController_cachedResponseForURL_completionHandler___block_invoke(void *a1)
{
  [*(a1[4] + 16) isEqual:a1[5]];
  v2 = *(a1[6] + 16);

  return v2();
}

- (void)invalidateCachedResults
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__WBSHistoryContextController_invalidateCachedResults__block_invoke;
  block[3] = &unk_1E8283080;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __54__WBSHistoryContextController_invalidateCachedResults__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;
}

- (void)contextForPageURL:(id)l content:(id)content contentType:(int64_t)type metadata:(id)metadata isPrivate:(BOOL)private isReaderAvailable:(BOOL)available withCompletionHandler:(id)handler
{
  privateCopy = private;
  lCopy = l;
  contentCopy = content;
  metadataCopy = metadata;
  handlerCopy = handler;
  v18 = handlerCopy;
  if (privateCopy)
  {
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }

  else
  {
    if (![contentCopy length])
    {
      v20 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence(0, v19);
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
      if (v21)
      {
        [WBSHistoryContextController contextForPageURL:content:contentType:metadata:isPrivate:isReaderAvailable:withCompletionHandler:];
      }

      v23 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence(v21, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [WBSHistoryContextController contextForPageURL:content:contentType:metadata:isPrivate:isReaderAvailable:withCompletionHandler:];
      }
    }

    internalQueue = self->_internalQueue;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke;
    v25[3] = &unk_1E82830F8;
    v26 = lCopy;
    selfCopy = self;
    v30 = v18;
    v28 = metadataCopy;
    v29 = contentCopy;
    typeCopy = type;
    dispatch_async(internalQueue, v25);
  }
}

void __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isEqual:*(*(a1 + 40) + 16)];
  if (v2 && ([*(*(a1 + 40) + 8) results], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5))
  {
    v6 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence(v2, v3);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (v7)
    {
      __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_cold_1();
    }

    v9 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_cold_2();
    }

    v10 = *(a1 + 64);
    if (v10)
    {
      (*(v10 + 16))(v10, *(*(a1 + 40) + 8));
    }
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence(v2, v3);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_cold_3();
    }

    v14 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_cold_2();
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_5;
    aBlock[3] = &unk_1E82830D0;
    v26 = *(a1 + 32);
    v15 = v26.i64[0];
    v32 = vextq_s8(v26, v26, 8uLL);
    v33 = *(a1 + 64);
    v16 = _Block_copy(aBlock);
    v17 = [*(*(a1 + 40) + 32) newRequest];
    v18 = [*(a1 + 48) safari_stringForKey:*MEMORY[0x1E69C9408]];
    [v17 setContentAuthor:v18];

    v19 = [*(a1 + 48) safari_stringForKey:*MEMORY[0x1E69C9410]];
    [v17 setContentDescription:v19];

    v20 = [*(a1 + 48) safari_stringForKey:*MEMORY[0x1E69C9418]];
    [v17 setContentKeywords:v20];

    [v17 setIncludeHigherLevelTopics:1];
    v21 = [*(a1 + 56) safari_bestLanguageTag];
    [v17 setLanguageTag:v21];

    [v17 setText:*(a1 + 56)];
    [v17 setTextIsRaw:*(a1 + 72) == 2];
    v22 = [*(a1 + 48) safari_stringForKey:*MEMORY[0x1E69C9420]];
    [v17 setTitle:v22];

    v23 = [*(a1 + 32) absoluteString];
    [v17 setUrl:v23];

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_7;
    v28[3] = &unk_1E82830D0;
    v27 = *(a1 + 32);
    v24 = v27.i64[0];
    v29 = vextq_s8(v27, v27, 8uLL);
    v30 = v16;
    v25 = v16;
    [v17 executeWithReply:v28];
  }
}

void __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E82830A8;
  v9 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v4, v8);
}

void __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  v4 = v2;
  if (v2)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence(v2, v3);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_2_cold_1(v5, v4);
    }

    v8 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_2_cold_2();
    }

    v9 = 0;
  }

  else
  {
    v9 = *(a1 + 32);
  }

  objc_storeStrong((*(a1 + 48) + 8), v9);
  objc_storeStrong((*(a1 + 48) + 16), *(a1 + 40));
  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, v9);
  }
}

void __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_7(void *a1, void *a2)
{
  v3 = a1[4];
  v6 = a2;
  v4 = [v6 results];
  v5 = [v4 firstObject];
  [v3 _persistTopicsFromContextResult:v5 forPageURL:a1[5]];

  (*(a1[6] + 16))();
}

- (void)_persistTopicsFromContextResult:(id)result forPageURL:(id)l
{
  resultCopy = result;
  lCopy = l;
  topicId = [resultCopy topicId];
  if (topicId)
  {
    title = [resultCopy title];
    safari_stringByRemovingParenthesizedDomain = [title safari_stringByRemovingParenthesizedDomain];

    history = self->_history;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__WBSHistoryContextController__persistTopicsFromContextResult_forPageURL___block_invoke;
    v12[3] = &unk_1E8283120;
    v13 = topicId;
    selfCopy = self;
    [(WBSHistory *)history addTagWithIdentifier:v13 title:safari_stringByRemovingParenthesizedDomain toItemAtURL:lCopy level:200 completionHandler:v12];
  }
}

void __74__WBSHistoryContextController__persistTopicsFromContextResult_forPageURL___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence(v5, v6);
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __74__WBSHistoryContextController__persistTopicsFromContextResult_forPageURL___block_invoke_cold_2();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__WBSHistoryContextController__persistTopicsFromContextResult_forPageURL___block_invoke_8;
    block[3] = &unk_1E8283080;
    block[4] = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __74__WBSHistoryContextController__persistTopicsFromContextResult_forPageURL___block_invoke_cold_1(a1, v8, v5);
  }
}

void __74__WBSHistoryContextController__persistTopicsFromContextResult_forPageURL___block_invoke_8(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"WBSHistoryContextControllerDidAddTagNotification" object:*(a1 + 32)];
}

void __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_2_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1C6968000, v3, OS_LOG_TYPE_ERROR, "Received ContextKit response with error: %{public}@", &v5, 0xCu);
}

void __128__WBSHistoryContextController_contextForPageURL_content_contentType_metadata_isPrivate_isReaderAvailable_withCompletionHandler___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __74__WBSHistoryContextController__persistTopicsFromContextResult_forPageURL___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 safari_privacyPreservingDescription];
  v7 = 138478083;
  v8 = v4;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1C6968000, v5, OS_LOG_TYPE_ERROR, "Could not add tag with topic ID: %{private}@ to history item with error: %{public}@", &v7, 0x16u);
}

void __74__WBSHistoryContextController__persistTopicsFromContextResult_forPageURL___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end