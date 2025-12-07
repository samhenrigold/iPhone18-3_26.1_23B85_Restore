@interface PPTopicReadOnlyServerRequestHandler
+ (id)filterQIDDictionary:(id)dictionary withAllowlistOfProcess:(id)process allowlist:(id)allowlist;
+ (id)filterScoredTopicsNotInAllowlist:(id)allowlist withAllowlistOfProcess:(id)process allowlist:(id)a5;
+ (id)filterTopicRecordsNotInAllowlist:(id)allowlist withAllowlistOfProcess:(id)process allowlist:(id)a5;
- (PPTopicReadOnlyServerRequestHandler)init;
- (void)cachePath:(id)path;
- (void)rankedTopicsWithQuery:(id)query queryId:(unint64_t)id;
- (void)registerFeedback:(id)feedback completion:(id)completion;
- (void)registerUniversalSearchSpotlightFeedback:(id)feedback completion:(id)completion;
- (void)scoresForTopicMapping:(id)mapping query:(id)query queryId:(unint64_t)id;
- (void)topicCacheSandboxExtensionToken:(id)token;
- (void)topicExtractionsFromText:(id)text queryId:(unint64_t)id;
- (void)topicRecordsWithQuery:(id)query queryId:(unint64_t)id;
- (void)unmapMappedTopicIdentifier:(id)identifier mappingIdentifier:(id)mappingIdentifier completion:(id)completion;
@end

@implementation PPTopicReadOnlyServerRequestHandler

- (void)topicCacheSandboxExtensionToken:(id)token
{
  tokenCopy = token;
  v4 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: topicCacheSandboxExtensionToken", buf, 2u);
  }

  v5 = +[PPLocalTopicStore defaultStore];
  v8 = 0;
  v6 = [v5 topicCacheSandboxExtensionToken:&v8];
  v7 = v8;

  tokenCopy[2](tokenCopy, v6, v7);
}

- (void)cachePath:(id)path
{
  pathCopy = path;
  v4 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: cachePath", buf, 2u);
  }

  v5 = +[PPLocalTopicStore defaultStore];
  v8 = 0;
  v6 = [v5 cachePath:&v8];
  v7 = v8;

  pathCopy[2](pathCopy, v6, v7);
}

- (void)registerUniversalSearchSpotlightFeedback:(id)feedback completion:(id)completion
{
  completionCopy = completion;
  feedbackCopy = feedback;
  v7 = +[PPLocalTopicStore defaultStore];
  [v7 registerUniversalSearchSpotlightFeedback:feedbackCopy completion:completionCopy];
}

- (void)registerFeedback:(id)feedback completion:(id)completion
{
  completionCopy = completion;
  feedbackCopy = feedback;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: registerFeedback", buf, 2u);
  }

  v8 = +[PPLocalTopicStore defaultStore];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__PPTopicReadOnlyServerRequestHandler_registerFeedback_completion___block_invoke;
  v10[3] = &unk_2789776F8;
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 registerFeedback:feedbackCopy completion:v10];
}

uint64_t __67__PPTopicReadOnlyServerRequestHandler_registerFeedback_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)unmapMappedTopicIdentifier:(id)identifier mappingIdentifier:(id)mappingIdentifier completion:(id)completion
{
  v38[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  mappingIdentifierCopy = mappingIdentifier;
  completionCopy = completion;
  v11 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    clientProcessName = self->_clientProcessName;
    *buf = 138412290;
    v34 = clientProcessName;
    _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: unmapMappedTopicIdentifier process:%@", buf, 0xCu);
  }

  v13 = pp_topics_signpost_handle();
  v14 = os_signpost_id_generate(v13);

  v15 = pp_topics_signpost_handle();
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PPTopicReadOnlyServer.unmapMappedTopicIdentifier", "", buf, 2u);
  }

  v17 = +[PPLocalTopicStore defaultStore];
  v32 = 0;
  v18 = [v17 unmapMappedTopicIdentifier:identifierCopy mappingIdentifier:mappingIdentifierCopy error:&v32];
  v19 = v32;

  v20 = pp_topics_signpost_handle();
  v21 = v20;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v21, OS_SIGNPOST_INTERVAL_END, v14, "PPTopicReadOnlyServer.unmapMappedTopicIdentifier", "", buf, 2u);
  }

  if (v18 || !v19)
  {
    if (v18)
    {
      v26 = objc_opt_class();
      v27 = self->_clientProcessName;
      v28 = +[PPTopicAllowlist sharedInstance];
      v25 = [v26 filterQIDDictionary:v18 withAllowlistOfProcess:v27 allowlist:v28];
    }

    else
    {
      v29 = pp_xpc_server_log_handle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v29, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: received nil unmapped dictionary.", buf, 2u);
      }

      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v25 = MEMORY[0x277CBEC10];
    }

    completionCopy[2](completionCopy, v25, 0);
    v30 = pp_xpc_server_log_handle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = self->_clientProcessName;
      *buf = 138412546;
      v34 = v31;
      v35 = 2112;
      v36 = mappingIdentifierCopy;
      _os_log_impl(&dword_23224A000, v30, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: unmapMappedTopicIdentifier process:%@ mappingIdentifier:%@", buf, 0x16u);
    }
  }

  else
  {
    v22 = objc_alloc(MEMORY[0x277CCA9B8]);
    v37 = @"PPServerSideErrorInfoKey";
    v23 = [v19 description];
    v38[0] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v25 = [v22 initWithDomain:@"PPServerSideErrorDomain" code:1 userInfo:v24];

    (completionCopy)[2](completionCopy, 0, v25);
  }
}

- (void)scoresForTopicMapping:(id)mapping query:(id)query queryId:(unint64_t)id
{
  v33 = *MEMORY[0x277D85DE8];
  mappingCopy = mapping;
  queryCopy = query;
  v11 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    clientProcessName = self->_clientProcessName;
    *buf = 134218242;
    idCopy3 = id;
    v27 = 2112;
    v28 = clientProcessName;
    _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: scoresForTopicMapping queryId:%llu process:%@", buf, 0x16u);
  }

  queryManager = self->_queryManager;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __75__PPTopicReadOnlyServerRequestHandler_scoresForTopicMapping_query_queryId___block_invoke;
  v19[3] = &unk_278975258;
  v14 = mappingCopy;
  v20 = v14;
  v15 = queryCopy;
  v21 = v15;
  selfCopy = self;
  idCopy2 = id;
  v24 = a2;
  [(PPXPCServerPipelinedBatchQueryManager *)queryManager runConcurrentlyWithRequestThrottle:v19];
  v16 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_clientProcessName;
    customizedDescription = [v15 customizedDescription];
    *buf = 134218754;
    idCopy3 = id;
    v27 = 2112;
    v28 = v17;
    v29 = 2112;
    v30 = v14;
    v31 = 2112;
    v32 = customizedDescription;
    _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: scoresForTopicMapping queryId:%llu process:%@ mappingId:%@ query:%@", buf, 0x2Au);
  }
}

void __75__PPTopicReadOnlyServerRequestHandler_scoresForTopicMapping_query_queryId___block_invoke(void *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = pp_topics_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_topics_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPTopicReadOnlyServer.scoresForTopicMapping", "", &buf, 2u);
  }

  v6 = +[PPLocalTopicStore defaultStore];
  v7 = a1[4];
  v8 = a1[5];
  v34 = 0;
  v9 = [v6 scoresForTopicMapping:v7 query:v8 error:&v34 clientProcessName:*(a1[6] + 24)];
  v10 = v34;

  v11 = pp_topics_signpost_handle();
  v12 = v11;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v11))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_END, v3, "PPTopicReadOnlyServer.scoresForTopicMapping", "", &buf, 2u);
  }

  if (v10)
  {
    v13 = pp_xpc_server_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: scoresForTopicMapping returned an error: %@", &buf, 0xCu);
    }

    [*(a1[6] + 8) scoredMappedTopicBatch:0 isLast:1 error:v10 queryId:a1[7] completion:&__block_literal_global_207];
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{2 * objc_msgSend(v9, "count")}];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __75__PPTopicReadOnlyServerRequestHandler_scoresForTopicMapping_query_queryId___block_invoke_2;
    v32[3] = &unk_2789795B0;
    v15 = v14;
    v33 = v15;
    [v9 enumerateKeysAndObjectsUsingBlock:v32];
    v16 = pp_xpc_server_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v9 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v17;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: scoresForTopicMapping returned %tu results", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v36 = 0x2020000000;
    v37 = 0;
    v18 = *(a1[6] + 16);
    v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-scoresForTopicMapping", *(a1[6] + 24)];
    v20 = a1[7];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __75__PPTopicReadOnlyServerRequestHandler_scoresForTopicMapping_query_queryId___block_invoke_213;
    v27[3] = &unk_278975230;
    v21 = v15;
    v22 = a1[8];
    p_buf = &buf;
    v31 = v22;
    v23 = a1[6];
    v28 = v21;
    v29 = v23;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __75__PPTopicReadOnlyServerRequestHandler_scoresForTopicMapping_query_queryId___block_invoke_2_221;
    v26[3] = &unk_2789776A8;
    v24 = a1[7];
    v26[4] = v23;
    v26[5] = v24;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __75__PPTopicReadOnlyServerRequestHandler_scoresForTopicMapping_query_queryId___block_invoke_4;
    v25[3] = &unk_2789776D0;
    v25[4] = v23;
    v25[5] = v24;
    [v18 sendBatchedResultForQueryWithName:v19 queryId:v20 batchGenerator:v27 sendError:v26 sendBatch:v25];

    _Block_object_dispose(&buf, 8);
  }
}

void __75__PPTopicReadOnlyServerRequestHandler_scoresForTopicMapping_query_queryId___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addObject:a2];
  [*(a1 + 32) addObject:v6];
}

void *__75__PPTopicReadOnlyServerRequestHandler_scoresForTopicMapping_query_queryId___block_invoke_213(uint64_t a1, BOOL *a2)
{
  v4 = [*(a1 + 32) count];
  v5 = *(*(*(a1 + 48) + 8) + 24);
  v6 = v4 - v5;
  if ((v4 - v5) >= 0x32)
  {
    v7 = 50;
  }

  else
  {
    v7 = v4 - v5;
  }

  if (v7)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"PPTopicReadOnlyServer.m" lineNumber:327 description:@"Batch size should never be odd"];
  }

  result = [*(a1 + 32) subarrayWithRange:{v5, v7}];
  *a2 = v6 < 0x33;
  *(*(*(a1 + 48) + 8) + 24) += v7;
  return result;
}

- (void)topicExtractionsFromText:(id)text queryId:(unint64_t)id
{
  v24 = *MEMORY[0x277D85DE8];
  textCopy = text;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    clientProcessName = self->_clientProcessName;
    *buf = 134218242;
    idCopy3 = id;
    v20 = 2112;
    v21 = clientProcessName;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: topicExtractionsFromText queryId:%llu process:%@", buf, 0x16u);
  }

  queryManager = self->_queryManager;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__PPTopicReadOnlyServerRequestHandler_topicExtractionsFromText_queryId___block_invoke;
  v14[3] = &unk_278978A80;
  v10 = textCopy;
  v15 = v10;
  selfCopy = self;
  idCopy2 = id;
  [(PPXPCServerPipelinedBatchQueryManager *)queryManager runConcurrentlyWithRequestThrottle:v14];
  v11 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_clientProcessName;
    v13 = [v10 length];
    *buf = 134218498;
    idCopy3 = id;
    v20 = 2112;
    v21 = v12;
    v22 = 2048;
    v23 = v13;
    _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: topicExtractionsFromText queryId:%llu process:%@ text size:%tu", buf, 0x20u);
  }
}

void __72__PPTopicReadOnlyServerRequestHandler_topicExtractionsFromText_queryId___block_invoke(void *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = pp_topics_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_topics_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPTopicReadOnlyServer.topicExtractionsFromText", "", &buf, 2u);
  }

  v6 = +[PPLocalTopicStore defaultStore];
  v7 = a1[4];
  v8 = *(a1[5] + 24);
  v27 = 0;
  v9 = [v6 topicExtractionsFromText:v7 clientProcessName:v8 error:&v27];
  v10 = v27;

  v11 = pp_topics_signpost_handle();
  v12 = v11;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v11))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_END, v3, "PPTopicReadOnlyServer.topicExtractionsFromText", "", &buf, 2u);
  }

  v13 = pp_xpc_server_log_handle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v14)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: topicExtractionsFromText returned an error: %@", &buf, 0xCu);
    }

    [*(a1[5] + 8) topicExtractionsFromTextBatch:0 isLast:1 error:v10 queryId:a1[6] completion:&__block_literal_global_198];
  }

  else
  {
    if (v14)
    {
      v15 = [v9 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: topicExtractionsFromText returned %tu results", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x2020000000;
    v30 = 0;
    v16 = *(a1[5] + 16);
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-topicExtractionsFromText", *(a1[5] + 24)];
    v18 = a1[6];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __72__PPTopicReadOnlyServerRequestHandler_topicExtractionsFromText_queryId___block_invoke_202;
    v24[3] = &unk_278977680;
    v25 = v9;
    p_buf = &buf;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __72__PPTopicReadOnlyServerRequestHandler_topicExtractionsFromText_queryId___block_invoke_2;
    v21[3] = &unk_2789776A8;
    v19 = a1[6];
    v22 = a1[5];
    v23 = v19;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __72__PPTopicReadOnlyServerRequestHandler_topicExtractionsFromText_queryId___block_invoke_4;
    v20[3] = &unk_2789776D0;
    v20[4] = v22;
    v20[5] = v19;
    [v16 sendBatchedResultForQueryWithName:v17 queryId:v18 batchGenerator:v24 sendError:v21 sendBatch:v20];

    _Block_object_dispose(&buf, 8);
  }
}

void *__72__PPTopicReadOnlyServerRequestHandler_topicExtractionsFromText_queryId___block_invoke_202(uint64_t a1, BOOL *a2)
{
  v4 = [*(a1 + 32) count];
  v5 = *(*(*(a1 + 40) + 8) + 24);
  v6 = v4 - v5;
  if ((v4 - v5) >= 0x32)
  {
    v7 = 50;
  }

  else
  {
    v7 = v4 - v5;
  }

  result = [*(a1 + 32) subarrayWithRange:?];
  *a2 = v6 < 0x33;
  *(*(*(a1 + 40) + 8) + 24) += v7;
  return result;
}

- (void)topicRecordsWithQuery:(id)query queryId:(unint64_t)id
{
  v24 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    clientProcessName = self->_clientProcessName;
    *buf = 134218242;
    idCopy3 = id;
    v20 = 2112;
    v21 = clientProcessName;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: topicRecordsWithQuery queryId:%llu process:%@", buf, 0x16u);
  }

  queryManager = self->_queryManager;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__PPTopicReadOnlyServerRequestHandler_topicRecordsWithQuery_queryId___block_invoke;
  v14[3] = &unk_278978A80;
  v10 = queryCopy;
  selfCopy = self;
  idCopy2 = id;
  v15 = v10;
  [(PPXPCServerPipelinedBatchQueryManager *)queryManager runConcurrentlyWithRequestThrottle:v14];
  v11 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_clientProcessName;
    customizedDescription = [v10 customizedDescription];
    *buf = 134218498;
    idCopy3 = id;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = customizedDescription;
    _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: topicRecordsWithQuery queryId:%llu process:%@ query:%@", buf, 0x20u);
  }
}

void __69__PPTopicReadOnlyServerRequestHandler_topicRecordsWithQuery_queryId___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = pp_topics_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_topics_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPTopicReadOnlyServer.topicRecordsWithQuery", "", buf, 2u);
  }

  v6 = [*(a1 + 32) limit];
  v7 = [*(a1 + 32) copy];
  [v7 setLimit:-1];
  v8 = +[PPLocalTopicStore defaultStore];
  v36 = 0;
  v9 = [v8 topicRecordsWithQuery:v7 error:&v36];
  v10 = v36;

  v11 = pp_topics_signpost_handle();
  v12 = v11;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_END, v3, "PPTopicReadOnlyServer.topicRecordsWithQuery", "", buf, 2u);
  }

  if (v9)
  {
    v13 = objc_opt_class();
    v14 = *(*(a1 + 40) + 24);
    v15 = +[PPTopicAllowlist sharedInstance];
    v16 = [v13 filterTopicRecordsNotInAllowlist:v9 withAllowlistOfProcess:v14 allowlist:v15];

    if ([v16 count] > v6)
    {
      v17 = [v16 subarrayWithRange:{0, v6}];

      v16 = v17;
    }

    v18 = pp_xpc_server_log_handle();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v19)
      {
        *buf = 138412290;
        *&buf[4] = v10;
        _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: topicRecordsWithQuery returned an error: %@", buf, 0xCu);
      }

      [*(*(a1 + 40) + 8) topicRecordBatch:0 isLast:1 error:v10 queryId:*(a1 + 48) completion:&__block_literal_global_189];
    }

    else
    {
      if (v19)
      {
        v23 = [v16 count];
        *buf = 134217984;
        *&buf[4] = v23;
        _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: topicRecordsWithQuery returned %tu results", buf, 0xCu);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v38 = 0;
      v24 = *(*(a1 + 40) + 16);
      v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-topicRecordsWithQuery", *(*(a1 + 40) + 24)];
      v26 = *(a1 + 48);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __69__PPTopicReadOnlyServerRequestHandler_topicRecordsWithQuery_queryId___block_invoke_193;
      v33[3] = &unk_278977680;
      v27 = v16;
      v34 = v27;
      v35 = buf;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __69__PPTopicReadOnlyServerRequestHandler_topicRecordsWithQuery_queryId___block_invoke_2;
      v30[3] = &unk_2789776A8;
      v28 = *(a1 + 48);
      v31 = *(a1 + 40);
      v32 = v28;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __69__PPTopicReadOnlyServerRequestHandler_topicRecordsWithQuery_queryId___block_invoke_4;
      v29[3] = &unk_2789776D0;
      v29[4] = v31;
      v29[5] = v28;
      [v24 sendBatchedResultForQueryWithName:v25 queryId:v26 batchGenerator:v33 sendError:v30 sendBatch:v29];

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v20 = pp_xpc_server_log_handle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 48);
      v22 = *(*(a1 + 40) + 24);
      *buf = 134218498;
      *&buf[4] = v21;
      *&buf[12] = 2112;
      *&buf[14] = v22;
      *&buf[22] = 2112;
      v38 = v10;
      _os_log_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: topicRecordsWithQuery queryId:%llu process:%@ returned nil result with error: %@", buf, 0x20u);
    }

    [*(*(a1 + 40) + 8) topicRecordBatch:0 isLast:1 error:v10 queryId:*(a1 + 48) completion:&__block_literal_global_186];
  }
}

void *__69__PPTopicReadOnlyServerRequestHandler_topicRecordsWithQuery_queryId___block_invoke_193(uint64_t a1, BOOL *a2)
{
  v4 = [*(a1 + 32) count];
  v5 = *(*(*(a1 + 40) + 8) + 24);
  v6 = v4 - v5;
  if ((v4 - v5) >= 0x32)
  {
    v7 = 50;
  }

  else
  {
    v7 = v4 - v5;
  }

  result = [*(a1 + 32) subarrayWithRange:?];
  *a2 = v6 < 0x33;
  *(*(*(a1 + 40) + 8) + 24) += v7;
  return result;
}

- (void)rankedTopicsWithQuery:(id)query queryId:(unint64_t)id
{
  v23 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    clientProcessName = self->_clientProcessName;
    *buf = 134218242;
    idCopy3 = id;
    v19 = 2112;
    v20 = clientProcessName;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: rankedTopicsWithQuery queryId:%llu process:%@", buf, 0x16u);
  }

  queryManager = self->_queryManager;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__PPTopicReadOnlyServerRequestHandler_rankedTopicsWithQuery_queryId___block_invoke;
  v14[3] = &unk_278978A80;
  v14[4] = self;
  idCopy2 = id;
  v10 = queryCopy;
  v15 = v10;
  [(PPXPCServerPipelinedBatchQueryManager *)queryManager runConcurrentlyWithRequestThrottle:v14];
  v11 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_clientProcessName;
    customizedDescription = [v10 customizedDescription];
    *buf = 134218498;
    idCopy3 = id;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = customizedDescription;
    _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: rankedTopicsWithQuery queryId:%llu process:%@ query:%@", buf, 0x20u);
  }
}

void __69__PPTopicReadOnlyServerRequestHandler_rankedTopicsWithQuery_queryId___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = pp_topics_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_topics_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPTopicReadOnlyServer.rankedTopicsWithQuery", "", buf, 2u);
  }

  if (![*(*(a1 + 32) + 24) isEqualToString:@"Apple Store"])
  {
    goto LABEL_37;
  }

  v6 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "checking client blocklist on behalf of Apple Store", buf, 2u);
  }

  v7 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v8 = [v7 containsObject:@"com.apple.store.Jolly"];

  if (v8)
  {
    v9 = pp_xpc_server_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "refusing connection from Apple Store due to client blocklist", buf, 2u);
    }

    [*(*(a1 + 32) + 8) topicBatch:0 isLast:1 error:0 queryId:*(a1 + 48) completion:&__block_literal_global_13963];
  }

  else
  {
    if (![*(*(a1 + 32) + 24) isEqualToString:@"pptool"])
    {
      goto LABEL_18;
    }

LABEL_37:
    v10 = pp_xpc_server_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "checking client blocklist on behalf of pptool", buf, 2u);
    }

    v11 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
    v12 = [v11 containsObject:@"com.apple.proactive.PersonalizationPortrait.pptool"];

    if (v12)
    {
      v13 = pp_xpc_server_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "refusing connection from pptool due to client blocklist", buf, 2u);
      }

      [*(*(a1 + 32) + 8) topicBatch:0 isLast:1 error:0 queryId:*(a1 + 48) completion:&__block_literal_global_165];
    }

    else
    {
LABEL_18:
      v14 = [*(a1 + 40) limit];
      v15 = [*(a1 + 40) copy];
      [v15 setLimit:-1];
      v16 = +[PPLocalTopicStore defaultStore];
      v44 = 0;
      v17 = [v16 rankedTopicsWithQuery:v15 error:&v44 clientProcessName:*(*(a1 + 32) + 24)];
      v18 = v44;

      v19 = pp_topics_signpost_handle();
      v20 = v19;
      if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v19))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_23224A000, v20, OS_SIGNPOST_INTERVAL_END, v3, "PPTopicReadOnlyServer.rankedTopicsWithQuery", "", buf, 2u);
      }

      if (v17)
      {
        v21 = objc_opt_class();
        v22 = *(*(a1 + 32) + 24);
        v23 = +[PPTopicAllowlist sharedInstance];
        v24 = [v21 filterScoredTopicsNotInAllowlist:v17 withAllowlistOfProcess:v22 allowlist:v23];

        if ([v24 count] > v14)
        {
          v25 = [v24 subarrayWithRange:{0, v14}];

          v24 = v25;
        }

        v26 = pp_xpc_server_log_handle();
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
        if (v24)
        {
          if (v27)
          {
            v28 = [v24 count];
            *buf = 134217984;
            *&buf[4] = v28;
            _os_log_impl(&dword_23224A000, v26, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: rankedTopicsWithQuery returned %tu results", buf, 0xCu);
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v46 = 0;
          v29 = *(*(a1 + 32) + 16);
          v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-rankedTopicsWithQuery", *(*(a1 + 32) + 24)];
          v31 = *(a1 + 48);
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __69__PPTopicReadOnlyServerRequestHandler_rankedTopicsWithQuery_queryId___block_invoke_178;
          v41[3] = &unk_278977680;
          v32 = v24;
          v42 = v32;
          v43 = buf;
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __69__PPTopicReadOnlyServerRequestHandler_rankedTopicsWithQuery_queryId___block_invoke_2;
          v38[3] = &unk_2789776A8;
          v33 = *(a1 + 48);
          v39 = *(a1 + 32);
          v40 = v33;
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = __69__PPTopicReadOnlyServerRequestHandler_rankedTopicsWithQuery_queryId___block_invoke_4;
          v37[3] = &unk_2789776D0;
          v37[4] = v39;
          v37[5] = v33;
          [v29 sendBatchedResultForQueryWithName:v30 queryId:v31 batchGenerator:v41 sendError:v38 sendBatch:v37];

          _Block_object_dispose(buf, 8);
        }

        else
        {
          if (v27)
          {
            *buf = 138412290;
            *&buf[4] = v18;
            _os_log_impl(&dword_23224A000, v26, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer: rankedTopicsWithQuery returned an error: %@", buf, 0xCu);
          }

          [*(*(a1 + 32) + 8) topicBatch:0 isLast:1 error:v18 queryId:*(a1 + 48) completion:&__block_literal_global_173];
        }
      }

      else
      {
        v34 = pp_xpc_server_log_handle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = *(a1 + 48);
          v36 = *(*(a1 + 32) + 24);
          *buf = 134218498;
          *&buf[4] = v35;
          *&buf[12] = 2112;
          *&buf[14] = v36;
          *&buf[22] = 2112;
          v46 = v18;
          _os_log_impl(&dword_23224A000, v34, OS_LOG_TYPE_DEFAULT, "rankedTopicsWithQuery queryId:%llu process:%@ returned nil result with error: %@", buf, 0x20u);
        }

        [*(*(a1 + 32) + 8) topicBatch:0 isLast:1 error:v18 queryId:*(a1 + 48) completion:&__block_literal_global_169_13971];
      }
    }
  }
}

void *__69__PPTopicReadOnlyServerRequestHandler_rankedTopicsWithQuery_queryId___block_invoke_178(uint64_t a1, BOOL *a2)
{
  v4 = [*(a1 + 32) count];
  v5 = *(*(*(a1 + 40) + 8) + 24);
  v6 = v4 - v5;
  if ((v4 - v5) >= 0x32)
  {
    v7 = 50;
  }

  else
  {
    v7 = v4 - v5;
  }

  result = [*(a1 + 32) subarrayWithRange:?];
  *a2 = v6 < 0x33;
  *(*(*(a1 + 40) + 8) + 24) += v7;
  return result;
}

- (PPTopicReadOnlyServerRequestHandler)init
{
  v6.receiver = self;
  v6.super_class = PPTopicReadOnlyServerRequestHandler;
  v2 = [(PPTopicReadOnlyServerRequestHandler *)&v6 init];
  if (v2)
  {
    v3 = [[PPXPCServerPipelinedBatchQueryManager alloc] initWithPipelineDepth:2 pipelinedCallTimeoutNsec:10000000000 maxConcurrentRequestsPerConnection:4];
    queryManager = v2->_queryManager;
    v2->_queryManager = v3;
  }

  return v2;
}

+ (id)filterQIDDictionary:(id)dictionary withAllowlistOfProcess:(id)process allowlist:(id)allowlist
{
  v25 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  processCopy = process;
  allowlistCopy = allowlist;
  if (processCopy)
  {
    if ([dictionaryCopy count] && !objc_msgSend(allowlistCopy, "shouldBypassAllowlist:", processCopy))
    {
      v11 = [allowlistCopy filterTopicDictionary:dictionaryCopy clientProcess:processCopy];
      v12 = [v11 count];
      v13 = [dictionaryCopy count];
      v14 = dictionaryCopy;
      if (v12 < v13)
      {
        v15 = [dictionaryCopy count];
        v16 = [v11 count];
        v17 = pp_topics_log_handle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 134218498;
          v20 = v15 - v16;
          v21 = 2048;
          v22 = [dictionaryCopy count];
          v23 = 2112;
          v24 = processCopy;
          _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer filtered out %tu of %tu qid records from mapping due to allowlist for client process %@", &v19, 0x20u);
        }

        v14 = v11;
      }

      v10 = v14;
    }

    else
    {
      v10 = dictionaryCopy;
    }
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  return v10;
}

+ (id)filterTopicRecordsNotInAllowlist:(id)allowlist withAllowlistOfProcess:(id)process allowlist:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  allowlistCopy = allowlist;
  processCopy = process;
  v9 = a5;
  if (processCopy)
  {
    if ([allowlistCopy count] && !objc_msgSend(v9, "shouldBypassAllowlist:", processCopy))
    {
      v11 = [v9 indicesOfAllowedTopicsInRecordArray:allowlistCopy clientProcess:processCopy];
      v12 = [v11 count];
      if (v12 >= [allowlistCopy count])
      {
        v16 = allowlistCopy;
      }

      else
      {
        v13 = [allowlistCopy count];
        v14 = [v11 count];
        v15 = pp_topics_log_handle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 134218498;
          v19 = v13 - v14;
          v20 = 2048;
          v21 = [allowlistCopy count];
          v22 = 2112;
          v23 = processCopy;
          _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer filtered out %tu of %tu topic records due to allowance policy for client process %@", &v18, 0x20u);
        }

        v16 = [allowlistCopy objectsAtIndexes:v11];
      }

      v10 = v16;
    }

    else
    {
      v10 = allowlistCopy;
    }
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

+ (id)filterScoredTopicsNotInAllowlist:(id)allowlist withAllowlistOfProcess:(id)process allowlist:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  allowlistCopy = allowlist;
  processCopy = process;
  v9 = a5;
  if (processCopy)
  {
    if ([allowlistCopy count] && !objc_msgSend(v9, "shouldBypassAllowlist:", processCopy))
    {
      v11 = [v9 indicesOfAllowedTopicsInScoredTopicArray:allowlistCopy clientProcess:processCopy];
      v12 = [v11 count];
      if (v12 >= [allowlistCopy count])
      {
        v16 = allowlistCopy;
      }

      else
      {
        v13 = [allowlistCopy count];
        v14 = [v11 count];
        v15 = pp_topics_log_handle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 134218498;
          v19 = v13 - v14;
          v20 = 2048;
          v21 = [allowlistCopy count];
          v22 = 2112;
          v23 = processCopy;
          _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "PPTopicReadOnlyServer filtered out %tu of %tu scored topic due to allowlist for client process %@", &v18, 0x20u);
        }

        v16 = [allowlistCopy objectsAtIndexes:v11];
      }

      v10 = v16;
    }

    else
    {
      v10 = allowlistCopy;
    }
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

@end