@interface PPSocialHighlightServerRequestHandler
- (PPSocialHighlightServerRequestHandler)init;
- (void)attributionForIdentifier:(id)identifier completion:(id)completion;
- (void)decayIntervalWithCompletion:(id)completion;
- (void)feedbackForAttribution:(id)attribution type:(unint64_t)type client:(id)client variant:(id)variant completion:(id)completion;
- (void)feedbackForHighlight:(id)highlight type:(unint64_t)type client:(id)client variant:(id)variant completion:(id)completion;
- (void)rankedCollaborationsWithLimit:(unint64_t)limit client:(id)client variant:(id)variant queryId:(unint64_t)id;
- (void)rankedHighlightsForSyncedItems:(id)items client:(id)client variant:(id)variant queryId:(unint64_t)id;
- (void)rankedHighlightsWithLimit:(unint64_t)limit client:(id)client variant:(id)variant queryId:(unint64_t)id;
@end

@implementation PPSocialHighlightServerRequestHandler

- (PPSocialHighlightServerRequestHandler)init
{
  v6.receiver = self;
  v6.super_class = PPSocialHighlightServerRequestHandler;
  v2 = [(PPSocialHighlightServerRequestHandler *)&v6 init];
  if (v2)
  {
    v3 = [[PPXPCServerPipelinedBatchQueryManager alloc] initWithPipelineDepth:2 pipelinedCallTimeoutNsec:10000000000 maxConcurrentRequestsPerConnection:4];
    queryManager = v2->_queryManager;
    v2->_queryManager = v3;
  }

  return v2;
}

- (void)decayIntervalWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightServer: decayInterval", buf, 2u);
  }

  v5 = pp_social_highlights_signpost_handle();
  v6 = os_signpost_id_generate(v5);

  v7 = pp_social_highlights_signpost_handle();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Server.decayInterval", "", v15, 2u);
  }

  v9 = +[PPConfiguration sharedInstance];
  [v9 socialHighlightDecayInterval];
  v11 = v10;

  v12 = pp_social_highlights_signpost_handle();
  v13 = v12;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v6, "Server.decayInterval", " enableTelemetry=YES ", v14, 2u);
  }

  completionCopy[2](completionCopy, 0, v11);
}

- (void)feedbackForAttribution:(id)attribution type:(unint64_t)type client:(id)client variant:(id)variant completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  attributionCopy = attribution;
  clientCopy = client;
  variantCopy = variant;
  completionCopy = completion;
  v15 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v33 = attributionCopy;
    v34 = 2048;
    typeCopy = type;
    v36 = 2112;
    v37 = clientCopy;
    v38 = 2112;
    v39 = variantCopy;
    _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightServer: feedbackForAttribution: %@ type: %lu client: '%@' variant: '%@'", buf, 0x2Au);
  }

  v16 = pp_social_highlights_signpost_handle();
  v17 = os_signpost_id_generate(v16);

  v18 = pp_social_highlights_signpost_handle();
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "Server.feedbackForAttribution", "", buf, 2u);
  }

  v20 = +[PPLocalSocialHighlightStore defaultStore];
  v29 = 0;
  v21 = [v20 feedbackForAttribution:attributionCopy type:type client:clientCopy variant:variantCopy error:&v29];
  v22 = v29;

  v23 = pp_social_highlights_signpost_handle();
  v24 = v23;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v24, OS_SIGNPOST_INTERVAL_END, v17, "Server.feedbackForAttribution", " enableTelemetry=YES ", buf, 2u);
  }

  if (v21)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    v25 = objc_alloc(MEMORY[0x277CCA9B8]);
    v30 = @"PPServerSideErrorInfoKey";
    v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v22];
    v31 = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v28 = [v25 initWithDomain:@"PPServerSideErrorDomain" code:1 userInfo:v27];

    (completionCopy)[2](completionCopy, 0, v28);
  }
}

- (void)feedbackForHighlight:(id)highlight type:(unint64_t)type client:(id)client variant:(id)variant completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  clientCopy = client;
  variantCopy = variant;
  completionCopy = completion;
  v15 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v33 = highlightCopy;
    v34 = 2048;
    typeCopy = type;
    v36 = 2112;
    v37 = clientCopy;
    v38 = 2112;
    v39 = variantCopy;
    _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightServer: feedbackForHighlight: %@ type: %lu client: '%@' variant: '%@'", buf, 0x2Au);
  }

  v16 = pp_social_highlights_signpost_handle();
  v17 = os_signpost_id_generate(v16);

  v18 = pp_social_highlights_signpost_handle();
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "Server.feedbackForHighlight", "", buf, 2u);
  }

  v20 = +[PPLocalSocialHighlightStore defaultStore];
  v29 = 0;
  v21 = [v20 feedbackForHighlight:highlightCopy type:type client:clientCopy variant:variantCopy error:&v29];
  v22 = v29;

  v23 = pp_social_highlights_signpost_handle();
  v24 = v23;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v24, OS_SIGNPOST_INTERVAL_END, v17, "Server.feedbackForHighlight", " enableTelemetry=YES ", buf, 2u);
  }

  if (v21)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    v25 = objc_alloc(MEMORY[0x277CCA9B8]);
    v30 = @"PPServerSideErrorInfoKey";
    v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v22];
    v31 = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v28 = [v25 initWithDomain:@"PPServerSideErrorDomain" code:1 userInfo:v27];

    (completionCopy)[2](completionCopy, 0, v28);
  }
}

- (void)attributionForIdentifier:(id)identifier completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = identifierCopy;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightServer: attributionForIdentifier: %@", buf, 0xCu);
  }

  v8 = pp_social_highlights_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_social_highlights_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Server.attributionForIdentifier", "", buf, 2u);
  }

  v12 = +[PPLocalSocialHighlightStore defaultStore];
  v21 = 0;
  v13 = [v12 attributionForIdentifier:identifierCopy error:&v21];
  v14 = v21;

  v15 = pp_social_highlights_signpost_handle();
  v16 = v15;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v16, OS_SIGNPOST_INTERVAL_END, v9, "Server.attributionForIdentifier", " enableTelemetry=YES ", buf, 2u);
  }

  if (v13)
  {
    completionCopy[2](completionCopy, v13, 0);
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x277CCA9B8]);
    v22 = @"PPServerSideErrorInfoKey";
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v14];
    v23 = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v20 = [v17 initWithDomain:@"PPServerSideErrorDomain" code:1 userInfo:v19];

    (completionCopy)[2](completionCopy, 0, v20);
  }
}

- (void)rankedHighlightsForSyncedItems:(id)items client:(id)client variant:(id)variant queryId:(unint64_t)id
{
  v30 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  clientCopy = client;
  variantCopy = variant;
  v13 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v25 = [itemsCopy count];
    v26 = 2112;
    v27 = clientCopy;
    v28 = 2048;
    idCopy = id;
    _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightServer: rankedHighlightsForSyncedItems: %tu client: '%@' queryId: %llu", buf, 0x20u);
  }

  queryManager = self->_queryManager;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __95__PPSocialHighlightServerRequestHandler_rankedHighlightsForSyncedItems_client_variant_queryId___block_invoke;
  v18[3] = &unk_2789774A0;
  v19 = itemsCopy;
  v20 = clientCopy;
  v21 = variantCopy;
  selfCopy = self;
  idCopy2 = id;
  v15 = variantCopy;
  v16 = clientCopy;
  v17 = itemsCopy;
  [(PPXPCServerPipelinedBatchQueryManager *)queryManager runConcurrentlyWithRequestThrottle:v18];
}

void __95__PPSocialHighlightServerRequestHandler_rankedHighlightsForSyncedItems_client_variant_queryId___block_invoke(void *a1)
{
  v2 = pp_social_highlights_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_social_highlights_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "Server.rankedHighlightsForSyncedItems", "", buf, 2u);
  }

  v6 = +[PPLocalSocialHighlightStore defaultStore];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = *(a1[7] + 32);
  v29 = 0;
  v11 = [v6 rankedHighlightsForSyncedItems:v7 client:v8 variant:v9 applicationIdentifiers:v10 error:&v29];
  v12 = v29;

  v13 = pp_social_highlights_signpost_handle();
  v14 = v13;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v14, OS_SIGNPOST_INTERVAL_END, v3, "Server.rankedHighlightsForSyncedItems", " enableTelemetry=YES ", buf, 2u);
  }

  if (v12)
  {
    [*(a1[7] + 8) rankedHighlightsBatch:0 isLast:1 error:v12 queryId:a1[8] completion:&__block_literal_global_85];
  }

  else
  {
    *buf = 0;
    v26 = buf;
    v27 = 0x2020000000;
    v28 = 0;
    v15 = a1[8];
    v16 = *(a1[7] + 16);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __95__PPSocialHighlightServerRequestHandler_rankedHighlightsForSyncedItems_client_variant_queryId___block_invoke_2;
    v22[3] = &unk_278977680;
    v23 = v11;
    v24 = buf;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __95__PPSocialHighlightServerRequestHandler_rankedHighlightsForSyncedItems_client_variant_queryId___block_invoke_3;
    v19[3] = &unk_2789776A8;
    v17 = a1[8];
    v20 = a1[7];
    v21 = v17;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __95__PPSocialHighlightServerRequestHandler_rankedHighlightsForSyncedItems_client_variant_queryId___block_invoke_5;
    v18[3] = &unk_2789776D0;
    v18[4] = v20;
    v18[5] = v17;
    [v16 sendBatchedResultForQueryWithName:@"rankedHighlightsForSyncedItems" queryId:v15 batchGenerator:v22 sendError:v19 sendBatch:v18];

    _Block_object_dispose(buf, 8);
  }
}

void *__95__PPSocialHighlightServerRequestHandler_rankedHighlightsForSyncedItems_client_variant_queryId___block_invoke_2(uint64_t a1, BOOL *a2)
{
  v4 = [*(a1 + 32) count];
  v5 = *(*(*(a1 + 40) + 8) + 24);
  v6 = v4 - v5;
  if ((v4 - v5) >= 0x1F4)
  {
    v7 = 500;
  }

  else
  {
    v7 = v4 - v5;
  }

  result = [*(a1 + 32) subarrayWithRange:?];
  *a2 = v6 < 0x1F5;
  *(*(*(a1 + 40) + 8) + 24) += v7;
  return result;
}

- (void)rankedCollaborationsWithLimit:(unint64_t)limit client:(id)client variant:(id)variant queryId:(unint64_t)id
{
  applicationIdentifiers = self->_applicationIdentifiers;
  variantCopy = variant;
  clientCopy = client;
  v12 = [(NSArray *)applicationIdentifiers mutableCopy];
  [(NSArray *)v12 addObject:@"portraitCollaborations"];
  v13 = self->_applicationIdentifiers;
  self->_applicationIdentifiers = v12;

  [(PPSocialHighlightServerRequestHandler *)self rankedHighlightsWithLimit:limit client:clientCopy variant:variantCopy queryId:id];
}

- (void)rankedHighlightsWithLimit:(unint64_t)limit client:(id)client variant:(id)variant queryId:(unint64_t)id
{
  v34 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  variantCopy = variant;
  v12 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219010;
    limitCopy = limit;
    v26 = 2112;
    v27 = clientCopy;
    v28 = 2112;
    v29 = variantCopy;
    v30 = 2048;
    idCopy = id;
    v32 = 1024;
    v33 = qos_class_self();
    _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightServer: enqueue rankedHighlightsWithLimit: %tu client: '%@' variant: '%@' queryId: %llu qos: %du", buf, 0x30u);
  }

  if (rankedHighlightsWithLimit_client_variant_queryId___pasOnceToken3 != -1)
  {
    dispatch_once(&rankedHighlightsWithLimit_client_variant_queryId___pasOnceToken3, &__block_literal_global_236);
  }

  v13 = rankedHighlightsWithLimit_client_variant_queryId___pasExprOnceResult;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__PPSocialHighlightServerRequestHandler_rankedHighlightsWithLimit_client_variant_queryId___block_invoke_2;
  block[3] = &unk_278975258;
  v19 = clientCopy;
  v20 = variantCopy;
  limitCopy2 = limit;
  idCopy2 = id;
  selfCopy = self;
  v14 = variantCopy;
  v15 = clientCopy;
  v16 = v13;
  v17 = dispatch_block_create(0, block);
  [(PPXPCServerPipelinedBatchQueryManager *)self->_queryManager waitForBlockWithRequestThrottle:v17];
  dispatch_async(v16, v17);
}

void __90__PPSocialHighlightServerRequestHandler_rankedHighlightsWithLimit_client_variant_queryId___block_invoke_2(void *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[7];
    v6 = a1[8];
    *buf = 134219010;
    *&buf[4] = v5;
    *&buf[12] = 2112;
    *&buf[14] = v3;
    *&buf[22] = 2112;
    v32 = v4;
    v33 = 2048;
    v34 = v6;
    v35 = 1024;
    v36 = qos_class_self();
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightServer: execute rankedHighlightsWithLimit: %tu client: '%@' variant: '%@' queryId: %llu qos: %du", buf, 0x30u);
  }

  v7 = pp_social_highlights_signpost_handle();
  v8 = os_signpost_id_generate(v7);

  v9 = pp_social_highlights_signpost_handle();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "Server.rankedHighlightsWithLimit", "", buf, 2u);
  }

  v11 = +[PPLocalSocialHighlightStore defaultStore];
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[7];
  v15 = *(a1[6] + 32);
  v30 = 0;
  v16 = [v11 rankedHighlightsWithLimit:v14 client:v12 variant:v13 applicationIdentifiers:v15 error:&v30];
  v17 = v30;

  v18 = pp_social_highlights_signpost_handle();
  v19 = v18;
  if (v8 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v19, OS_SIGNPOST_INTERVAL_END, v8, "Server.rankedHighlightsWithLimit", " enableTelemetry=YES ", buf, 2u);
  }

  if (v17)
  {
    [*(a1[6] + 8) rankedHighlightsBatch:0 isLast:1 error:v17 queryId:a1[8] completion:&__block_literal_global_73];
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v32 = 0;
    v20 = *(a1[6] + 16);
    v21 = a1[8];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __90__PPSocialHighlightServerRequestHandler_rankedHighlightsWithLimit_client_variant_queryId___block_invoke_2_77;
    v27[3] = &unk_278977680;
    v28 = v16;
    v29 = buf;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __90__PPSocialHighlightServerRequestHandler_rankedHighlightsWithLimit_client_variant_queryId___block_invoke_3;
    v24[3] = &unk_2789776A8;
    v22 = a1[8];
    v25 = a1[6];
    v26 = v22;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __90__PPSocialHighlightServerRequestHandler_rankedHighlightsWithLimit_client_variant_queryId___block_invoke_5;
    v23[3] = &unk_2789776D0;
    v23[4] = v25;
    v23[5] = v22;
    [v20 sendBatchedResultForQueryWithName:@"rankedHighlightsWithLimit" queryId:v21 batchGenerator:v27 sendError:v24 sendBatch:v23];

    _Block_object_dispose(buf, 8);
  }
}

void *__90__PPSocialHighlightServerRequestHandler_rankedHighlightsWithLimit_client_variant_queryId___block_invoke_2_77(uint64_t a1, BOOL *a2)
{
  v4 = [*(a1 + 32) count];
  v5 = *(*(*(a1 + 40) + 8) + 24);
  v6 = v4 - v5;
  if ((v4 - v5) >= 0x1F4)
  {
    v7 = 500;
  }

  else
  {
    v7 = v4 - v5;
  }

  result = [*(a1 + 32) subarrayWithRange:?];
  *a2 = v6 < 0x1F5;
  *(*(*(a1 + 40) + 8) + 24) += v7;
  return result;
}

void __90__PPSocialHighlightServerRequestHandler_rankedHighlightsWithLimit_client_variant_queryId___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_workloop_create("rankedHighlightsWithLimit");
  v2 = rankedHighlightsWithLimit_client_variant_queryId___pasExprOnceResult;
  rankedHighlightsWithLimit_client_variant_queryId___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end