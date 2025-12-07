@interface CDMDataDispatcher
+ (void)dispatchCdmPreprocessingWrapperData:(id)data requestId:(id)id;
+ (void)dispatchCdmRequestData:(id)data requestId:(id)id withCurrentServiceGraph:(id)graph dataDispatcherContext:(id)context;
+ (void)dispatchCdmResponseData:(id)data requestId:(id)id dataDispatcherContext:(id)context;
+ (void)dispatchContextUpdateData:(id)data requestId:(id)id dataDispatcherContext:(id)context;
+ (void)dispatchCorrectedUtteranceTokenizationData:(id)data requestId:(id)id dataDispatcherContext:(id)context;
+ (void)dispatchCurrentTurnTokenizationData:(id)data requestId:(id)id dataDispatcherContext:(id)context;
+ (void)dispatchLVCData:(id)data withResponse:(id)response requestId:(id)id;
+ (void)dispatchMDData:(id)data withResponse:(id)response requestId:(id)id;
+ (void)dispatchMRData:(id)data withResponse:(id)response requestId:(id)id;
+ (void)dispatchNLv4Data:(id)data withResponse:(id)response requestId:(id)id;
+ (void)dispatchPSCData:(id)data withResponse:(id)response requestId:(id)id;
+ (void)dispatchPreviousTurnTokenizationData:(id)data requestId:(id)id dataDispatcherContext:(id)context;
+ (void)dispatchSELFRequestLink:(id)link dataDispatcherContext:(id)context;
+ (void)dispatchSNLCData:(id)data withResponse:(id)response requestId:(id)id;
+ (void)dispatchServiceSetupMetrics:(id)metrics selfMetadata:(id)metadata dataDispatcherContext:(id)context;
+ (void)dispatchSpanizationData:(id)data requestId:(id)id dataDispatcherContext:(id)context;
+ (void)dispatchUaaPData:(id)data withResponse:(id)response requestId:(id)id;
+ (void)insertFeatureStore:(id)store requester:(id)requester debugLog:(id)log;
+ (void)waitForQueueCompletion;
@end

@implementation CDMDataDispatcher

+ (void)dispatchUaaPData:(id)data withResponse:(id)response requestId:(id)id
{
  v31 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  responseCopy = response;
  idCopy = id;
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[CDMDataDispatcher dispatchUaaPData:withResponse:requestId:]";
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher is about to dispatch UaaP data.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__340;
  v29 = __Block_byref_object_dispose__341;
  v11 = dataCopy;
  v30 = v11;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__340;
  v24[4] = __Block_byref_object_dispose__341;
  v12 = responseCopy;
  v25 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__CDMDataDispatcher_dispatchUaaPData_withResponse_requestId___block_invoke;
  block[3] = &unk_1E862EFC0;
  block[4] = &buf;
  block[5] = v24;
  v13 = dispatch_block_create(0, block);
  v14 = +[CDMDataDispatcherCompletionQueue getDataDispatcherCompletionQueue];
  dispatch_async(v14, v13);

  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__340;
  v21[4] = __Block_byref_object_dispose__341;
  if (idCopy)
  {
    v15 = [idCopy idA];
  }

  else
  {
    v15 = 0;
  }

  v22 = v15;
  v16 = [MEMORY[0x1E69D1420] extractRequestLinkData:idCopy];
  v17 = v16;
  if (v16)
  {
    targetName = [v16 targetName];
  }

  else
  {
    targetName = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__CDMDataDispatcher_dispatchUaaPData_withResponse_requestId___block_invoke_435;
  aBlock[3] = &unk_1E862E7C8;
  aBlock[4] = &buf;
  aBlock[5] = v21;
  aBlock[6] = v24;
  v19 = _Block_copy(aBlock);
  [objc_opt_class() insertFeatureStore:v19 requester:targetName debugLog:@"CDMDataDispatcher dispatched UaaP data for FeatureStore asynchronously."];

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v24, 8);

  _Block_object_dispose(&buf, 8);
}

void __61__CDMDataDispatcher_dispatchUaaPData_withResponse_requestId___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (+[CDMFeatureFlags isLogNluEnabled])
  {
    v2 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v14 = "+[CDMDataDispatcher dispatchUaaPData:withResponse:requestId:]_block_invoke";
      _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher starting dispatch of UaaP data to disk", buf, 0xCu);
    }

    v3 = [*(*(*(a1 + 32) + 8) + 40) parserRequest];
    v12 = 0;
    v4 = [CDMNluLogUtil writeUaaPRequestToDisk:v3 error:&v12];
    v5 = v12;

    if (!v4)
    {
      v6 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "+[CDMDataDispatcher dispatchUaaPData:withResponse:requestId:]_block_invoke";
        v15 = 2112;
        v16 = v5;
        _os_log_error_impl(&dword_1DC287000, v6, OS_LOG_TYPE_ERROR, "%s [ERR]: Error logging UaaP request to file: %@", buf, 0x16u);
      }
    }

    v7 = [*(*(*(a1 + 40) + 8) + 40) parserResponse];
    v11 = 0;
    v8 = [CDMNluLogUtil writeUaaPResponseToDisk:v7 error:&v11];
    v9 = v11;

    if (!v8)
    {
      v10 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "+[CDMDataDispatcher dispatchUaaPData:withResponse:requestId:]_block_invoke";
        v15 = 2112;
        v16 = v9;
        _os_log_error_impl(&dword_1DC287000, v10, OS_LOG_TYPE_ERROR, "%s [ERR]: Error logging UaaP response to file: %@", buf, 0x16u);
      }
    }
  }
}

void __61__CDMDataDispatcher_dispatchUaaPData_withResponse_requestId___block_invoke_435(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "+[CDMDataDispatcher dispatchUaaPData:withResponse:requestId:]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher starting dispatch of UaaP data to FeatureStore", &v10, 0xCu);
  }

  v3 = os_signpost_id_generate(CDMLogContext);
  v4 = CDMLogContext;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CDMDataDispatcher-FS", "insertUaaPDataToFeatureStore", &v10, 2u);
  }

  v6 = [*(*(a1[4] + 8) + 40) parserRequest];
  [CDMFeatureStoreUtils insertUaaPParserRequestToFeatureStore:v6 interactionId:*(*(a1[5] + 8) + 40)];

  v7 = [*(*(a1[6] + 8) + 40) parserResponse];
  [CDMFeatureStoreUtils insertUaaPParserResponseToFeatureStore:v7 interactionId:*(*(a1[5] + 8) + 40)];

  v8 = CDMLogContext;
  v9 = v8;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v9, OS_SIGNPOST_INTERVAL_END, v3, "CDMDataDispatcher-FS", "", &v10, 2u);
  }
}

+ (void)dispatchMRData:(id)data withResponse:(id)response requestId:(id)id
{
  v28 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  responseCopy = response;
  idCopy = id;
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[CDMDataDispatcher dispatchMRData:withResponse:requestId:]";
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher is about to dispatch mentionResolver data.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__340;
  v26 = __Block_byref_object_dispose__341;
  v11 = dataCopy;
  v27 = v11;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__340;
  v21[4] = __Block_byref_object_dispose__341;
  v12 = responseCopy;
  v22 = v12;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__340;
  v19[4] = __Block_byref_object_dispose__341;
  if (idCopy)
  {
    v13 = [idCopy idA];
  }

  else
  {
    v13 = 0;
  }

  v20 = v13;
  v14 = [MEMORY[0x1E69D1420] extractRequestLinkData:idCopy];
  v15 = v14;
  if (v14)
  {
    targetName = [v14 targetName];
  }

  else
  {
    targetName = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__CDMDataDispatcher_dispatchMRData_withResponse_requestId___block_invoke;
  aBlock[3] = &unk_1E862E7C8;
  aBlock[4] = &buf;
  aBlock[5] = v19;
  aBlock[6] = v21;
  v17 = _Block_copy(aBlock);
  [objc_opt_class() insertFeatureStore:v17 requester:targetName debugLog:@"CDMDataDispatcher dispatched mentionResolver data for FeatureStore asynchronously."];

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);

  _Block_object_dispose(&buf, 8);
}

void __59__CDMDataDispatcher_dispatchMRData_withResponse_requestId___block_invoke(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315138;
    v12 = "+[CDMDataDispatcher dispatchMRData:withResponse:requestId:]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher starting dispatch of MR data to FeatureStore", &v11, 0xCu);
  }

  v3 = os_signpost_id_generate(CDMLogContext);
  v4 = CDMLogContext;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CDMDataDispatcher-FS", "insertMRDataToFeatureStore", &v11, 2u);
  }

  v6 = [*(*(a1[4] + 8) + 40) mrRequest];
  [CDMFeatureStoreUtils insertMRRequestToFeatureStore:v6 interactionId:*(*(a1[5] + 8) + 40)];

  v7 = [*(*(a1[6] + 8) + 40) response];

  if (v7)
  {
    v8 = [*(*(a1[6] + 8) + 40) response];
    [CDMFeatureStoreUtils insertMRResponseToFeatureStore:v8 interactionId:*(*(a1[5] + 8) + 40)];
  }

  else
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315138;
      v12 = "+[CDMDataDispatcher dispatchMRData:withResponse:requestId:]_block_invoke";
      _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s MR Service predicts nil response, no need to dispatch MRResponse", &v11, 0xCu);
    }
  }

  v9 = CDMLogContext;
  v10 = v9;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v10, OS_SIGNPOST_INTERVAL_END, v3, "CDMDataDispatcher-FS", "", &v11, 2u);
  }
}

+ (void)dispatchMDData:(id)data withResponse:(id)response requestId:(id)id
{
  v28 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  responseCopy = response;
  idCopy = id;
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[CDMDataDispatcher dispatchMDData:withResponse:requestId:]";
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher is about to dispatch mentionDetector data.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__340;
  v26 = __Block_byref_object_dispose__341;
  v11 = dataCopy;
  v27 = v11;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__340;
  v21[4] = __Block_byref_object_dispose__341;
  v12 = responseCopy;
  v22 = v12;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__340;
  v19[4] = __Block_byref_object_dispose__341;
  if (idCopy)
  {
    v13 = [idCopy idA];
  }

  else
  {
    v13 = 0;
  }

  v20 = v13;
  v14 = [MEMORY[0x1E69D1420] extractRequestLinkData:idCopy];
  v15 = v14;
  if (v14)
  {
    targetName = [v14 targetName];
  }

  else
  {
    targetName = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__CDMDataDispatcher_dispatchMDData_withResponse_requestId___block_invoke;
  aBlock[3] = &unk_1E862E7C8;
  aBlock[4] = &buf;
  aBlock[5] = v19;
  aBlock[6] = v21;
  v17 = _Block_copy(aBlock);
  [objc_opt_class() insertFeatureStore:v17 requester:targetName debugLog:@"CDMDataDispatcher dispatched mentionDetector data for FeatureStore asynchronously."];

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);

  _Block_object_dispose(&buf, 8);
}

void __59__CDMDataDispatcher_dispatchMDData_withResponse_requestId___block_invoke(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315138;
    v12 = "+[CDMDataDispatcher dispatchMDData:withResponse:requestId:]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher starting dispatch of MD data to FeatureStore", &v11, 0xCu);
  }

  v3 = os_signpost_id_generate(CDMLogContext);
  v4 = CDMLogContext;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CDMDataDispatcher-FS", "insertMDDataToFeatureStore", &v11, 2u);
  }

  v6 = [*(*(a1[4] + 8) + 40) mdRequest];
  [CDMFeatureStoreUtils insertMDRequestToFeatureStore:v6 interactionId:*(*(a1[5] + 8) + 40)];

  v7 = [*(*(a1[6] + 8) + 40) response];

  if (v7)
  {
    v8 = [*(*(a1[6] + 8) + 40) response];
    [CDMFeatureStoreUtils insertMDResponseToFeatureStore:v8 interactionId:*(*(a1[5] + 8) + 40)];
  }

  else
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315138;
      v12 = "+[CDMDataDispatcher dispatchMDData:withResponse:requestId:]_block_invoke";
      _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s MD Service predicts nil response, no need to dispatch MDResponse", &v11, 0xCu);
    }
  }

  v9 = CDMLogContext;
  v10 = v9;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v10, OS_SIGNPOST_INTERVAL_END, v3, "CDMDataDispatcher-FS", "", &v11, 2u);
  }
}

+ (void)dispatchLVCData:(id)data withResponse:(id)response requestId:(id)id
{
  v28 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  responseCopy = response;
  idCopy = id;
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[CDMDataDispatcher dispatchLVCData:withResponse:requestId:]";
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher is about to dispatch LVC data.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__340;
  v26 = __Block_byref_object_dispose__341;
  v11 = dataCopy;
  v27 = v11;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__340;
  v21[4] = __Block_byref_object_dispose__341;
  v12 = responseCopy;
  v22 = v12;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__340;
  v19[4] = __Block_byref_object_dispose__341;
  if (idCopy)
  {
    v13 = [idCopy idA];
  }

  else
  {
    v13 = 0;
  }

  v20 = v13;
  v14 = [MEMORY[0x1E69D1420] extractRequestLinkData:idCopy];
  v15 = v14;
  if (v14)
  {
    targetName = [v14 targetName];
  }

  else
  {
    targetName = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__CDMDataDispatcher_dispatchLVCData_withResponse_requestId___block_invoke;
  aBlock[3] = &unk_1E862E7C8;
  aBlock[4] = &buf;
  aBlock[5] = v19;
  aBlock[6] = v21;
  v17 = _Block_copy(aBlock);
  [objc_opt_class() insertFeatureStore:v17 requester:targetName debugLog:@"CDMDataDispatcher dispatched LVC data for FeatureStore asynchronously."];

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);

  _Block_object_dispose(&buf, 8);
}

void __60__CDMDataDispatcher_dispatchLVCData_withResponse_requestId___block_invoke(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "+[CDMDataDispatcher dispatchLVCData:withResponse:requestId:]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher starting dispatch of LVC data to FeatureStore", &v10, 0xCu);
  }

  v3 = os_signpost_id_generate(CDMLogContext);
  v4 = CDMLogContext;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CDMDataDispatcher-FS", "insertLVCDataToFeatureStore", &v10, 2u);
  }

  v6 = [*(*(a1[4] + 8) + 40) parserRequest];
  [CDMFeatureStoreUtils insertLVCRequestToFeatureStore:v6 interactionId:*(*(a1[5] + 8) + 40)];

  v7 = [*(*(a1[6] + 8) + 40) itfmResponse];
  [CDMFeatureStoreUtils insertLVCResponseToFeatureStore:v7 interactionId:*(*(a1[5] + 8) + 40)];

  v8 = CDMLogContext;
  v9 = v8;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v9, OS_SIGNPOST_INTERVAL_END, v3, "CDMDataDispatcher-FS", "", &v10, 2u);
  }
}

+ (void)dispatchPSCData:(id)data withResponse:(id)response requestId:(id)id
{
  v28 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  responseCopy = response;
  idCopy = id;
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[CDMDataDispatcher dispatchPSCData:withResponse:requestId:]";
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher is about to dispatch PSC data.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__340;
  v26 = __Block_byref_object_dispose__341;
  v11 = dataCopy;
  v27 = v11;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__340;
  v21[4] = __Block_byref_object_dispose__341;
  v12 = responseCopy;
  v22 = v12;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__340;
  v19[4] = __Block_byref_object_dispose__341;
  if (idCopy)
  {
    v13 = [idCopy idA];
  }

  else
  {
    v13 = 0;
  }

  v20 = v13;
  v14 = [MEMORY[0x1E69D1420] extractRequestLinkData:idCopy];
  v15 = v14;
  if (v14)
  {
    targetName = [v14 targetName];
  }

  else
  {
    targetName = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__CDMDataDispatcher_dispatchPSCData_withResponse_requestId___block_invoke;
  aBlock[3] = &unk_1E862E7C8;
  aBlock[4] = &buf;
  aBlock[5] = v19;
  aBlock[6] = v21;
  v17 = _Block_copy(aBlock);
  [objc_opt_class() insertFeatureStore:v17 requester:targetName debugLog:@"CDMDataDispatcher dispatched PSC data for FeatureStore asynchronously."];

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);

  _Block_object_dispose(&buf, 8);
}

void __60__CDMDataDispatcher_dispatchPSCData_withResponse_requestId___block_invoke(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "+[CDMDataDispatcher dispatchPSCData:withResponse:requestId:]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher starting dispatch of PSC data to FeatureStore", &v10, 0xCu);
  }

  v3 = os_signpost_id_generate(CDMLogContext);
  v4 = CDMLogContext;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CDMDataDispatcher-FS", "insertPSCDataToFeatureStore", &v10, 2u);
  }

  v6 = [*(*(a1[4] + 8) + 40) parserRequest];
  [CDMFeatureStoreUtils insertPSCRequestToFeatureStore:v6 interactionId:*(*(a1[5] + 8) + 40)];

  v7 = [*(*(a1[6] + 8) + 40) pscResponse];
  [CDMFeatureStoreUtils insertPSCResponseToFeatureStore:v7 interactionId:*(*(a1[5] + 8) + 40)];

  v8 = CDMLogContext;
  v9 = v8;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v9, OS_SIGNPOST_INTERVAL_END, v3, "CDMDataDispatcher-FS", "", &v10, 2u);
  }
}

+ (void)dispatchNLv4Data:(id)data withResponse:(id)response requestId:(id)id
{
  v28 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  responseCopy = response;
  idCopy = id;
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[CDMDataDispatcher dispatchNLv4Data:withResponse:requestId:]";
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher is about to dispatch NLv4 data.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__340;
  v26 = __Block_byref_object_dispose__341;
  v11 = dataCopy;
  v27 = v11;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__340;
  v21[4] = __Block_byref_object_dispose__341;
  v12 = responseCopy;
  v22 = v12;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__340;
  v19[4] = __Block_byref_object_dispose__341;
  if (idCopy)
  {
    v13 = [idCopy idA];
  }

  else
  {
    v13 = 0;
  }

  v20 = v13;
  v14 = [MEMORY[0x1E69D1420] extractRequestLinkData:idCopy];
  v15 = v14;
  if (v14)
  {
    targetName = [v14 targetName];
  }

  else
  {
    targetName = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__CDMDataDispatcher_dispatchNLv4Data_withResponse_requestId___block_invoke;
  aBlock[3] = &unk_1E862E7C8;
  aBlock[4] = &buf;
  aBlock[5] = v19;
  aBlock[6] = v21;
  v17 = _Block_copy(aBlock);
  [objc_opt_class() insertFeatureStore:v17 requester:targetName debugLog:@"CDMDataDispatcher dispatched NLv4 data for FeatureStore asynchronously."];

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);

  _Block_object_dispose(&buf, 8);
}

void __61__CDMDataDispatcher_dispatchNLv4Data_withResponse_requestId___block_invoke(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "+[CDMDataDispatcher dispatchNLv4Data:withResponse:requestId:]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher starting dispatch of NLv4 data to FeatureStore", &v10, 0xCu);
  }

  v3 = os_signpost_id_generate(CDMLogContext);
  v4 = CDMLogContext;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CDMDataDispatcher-FS", "insertNLv4DataToFeatureStore", &v10, 2u);
  }

  v6 = [*(*(a1[4] + 8) + 40) parserRequest];
  [CDMFeatureStoreUtils insertNLv4ParserRequestToFeatureStore:v6 interactionId:*(*(a1[5] + 8) + 40)];

  v7 = [*(*(a1[6] + 8) + 40) parserResponse];
  [CDMFeatureStoreUtils insertNLv4ParserResponseToFeatureStore:v7 interactionId:*(*(a1[5] + 8) + 40)];

  v8 = CDMLogContext;
  v9 = v8;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v9, OS_SIGNPOST_INTERVAL_END, v3, "CDMDataDispatcher-FS", "", &v10, 2u);
  }
}

+ (void)dispatchSNLCData:(id)data withResponse:(id)response requestId:(id)id
{
  v28 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  responseCopy = response;
  idCopy = id;
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[CDMDataDispatcher dispatchSNLCData:withResponse:requestId:]";
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher is about to dispatch SNLC data.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__340;
  v26 = __Block_byref_object_dispose__341;
  v11 = dataCopy;
  v27 = v11;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__340;
  v21[4] = __Block_byref_object_dispose__341;
  v12 = responseCopy;
  v22 = v12;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__340;
  v19[4] = __Block_byref_object_dispose__341;
  if (idCopy)
  {
    v13 = [idCopy idA];
  }

  else
  {
    v13 = 0;
  }

  v20 = v13;
  v14 = [MEMORY[0x1E69D1420] extractRequestLinkData:idCopy];
  v15 = v14;
  if (v14)
  {
    targetName = [v14 targetName];
  }

  else
  {
    targetName = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__CDMDataDispatcher_dispatchSNLCData_withResponse_requestId___block_invoke;
  aBlock[3] = &unk_1E862E7C8;
  aBlock[4] = &buf;
  aBlock[5] = v19;
  aBlock[6] = v21;
  v17 = _Block_copy(aBlock);
  [objc_opt_class() insertFeatureStore:v17 requester:targetName debugLog:@"CDMDataDispatcher dispatched SNLC data for FeatureStore asynchronously."];

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);

  _Block_object_dispose(&buf, 8);
}

void __61__CDMDataDispatcher_dispatchSNLCData_withResponse_requestId___block_invoke(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "+[CDMDataDispatcher dispatchSNLCData:withResponse:requestId:]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher starting dispatch of SNLC data to FeatureStore", &v10, 0xCu);
  }

  v3 = os_signpost_id_generate(CDMLogContext);
  v4 = CDMLogContext;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CDMDataDispatcher-FS", "insertSNLCDataToFeatureStore", &v10, 2u);
  }

  v6 = [*(*(a1[4] + 8) + 40) parserRequest];
  [CDMFeatureStoreUtils insertSNLCRequestToFeatureStore:v6 interactionId:*(*(a1[5] + 8) + 40)];

  v7 = [*(*(a1[6] + 8) + 40) snlcResponse];
  [CDMFeatureStoreUtils insertSNLCResponseToFeatureStore:v7 interactionId:*(*(a1[5] + 8) + 40)];

  v8 = CDMLogContext;
  v9 = v8;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v9, OS_SIGNPOST_INTERVAL_END, v3, "CDMDataDispatcher-FS", "", &v10, 2u);
  }
}

+ (void)dispatchSpanizationData:(id)data requestId:(id)id dataDispatcherContext:(id)context
{
  v40 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  idCopy = id;
  contextCopy = context;
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[CDMDataDispatcher dispatchSpanizationData:requestId:dataDispatcherContext:]";
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher is about to dispatch spanization data.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__340;
  v38 = __Block_byref_object_dispose__341;
  v11 = dataCopy;
  v39 = v11;
  v12 = [MEMORY[0x1E69D1420] extractRequestLinkData:idCopy];
  v13 = v12;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__340;
  v31[4] = __Block_byref_object_dispose__341;
  if (v12)
  {
    nlId = [v12 nlId];
    trpId = [v13 trpId];
    targetUUID = [v13 targetUUID];
    resultCandidateId = [v13 resultCandidateId];
    targetName = [v13 targetName];
    v32 = [CDMSELFLogUtil createSELFMetadataWithNlId:nlId andWithTrpId:trpId andWithRequestId:targetUUID andWithResultCandidateId:resultCandidateId andWithConnectionId:targetName];
  }

  else
  {
    v32 = 0;
  }

  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__340;
  v29[4] = __Block_byref_object_dispose__341;
  if (idCopy)
  {
    v19 = [idCopy idA];
  }

  else
  {
    v19 = 0;
  }

  v30 = v19;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__340;
  v27[4] = __Block_byref_object_dispose__341;
  v20 = contextCopy;
  v28 = v20;
  v21 = +[CDMDataDispatcherCompletionQueue getDataDispatcherCompletionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__CDMDataDispatcher_dispatchSpanizationData_requestId_dataDispatcherContext___block_invoke;
  block[3] = &unk_1E862E868;
  block[4] = &buf;
  block[5] = v31;
  block[6] = v27;
  block[7] = v29;
  dispatch_async(v21, block);

  v22 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *v33 = 136315138;
    v34 = "+[CDMDataDispatcher dispatchSpanizationData:requestId:dataDispatcherContext:]";
    _os_log_debug_impl(&dword_1DC287000, v22, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher dispatched spanization data for SELF asynchronously.", v33, 0xCu);
  }

  if (v13)
  {
    targetName2 = [v13 targetName];
  }

  else
  {
    targetName2 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__CDMDataDispatcher_dispatchSpanizationData_requestId_dataDispatcherContext___block_invoke_413;
  aBlock[3] = &unk_1E862EFC0;
  aBlock[4] = &buf;
  aBlock[5] = v29;
  v24 = _Block_copy(aBlock);
  [objc_opt_class() insertFeatureStore:v24 requester:targetName2 debugLog:@"CDMDataDispatcher dispatched spanization data for FeatureStore asynchronously."];

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(&buf, 8);
}

void __77__CDMDataDispatcher_dispatchSpanizationData_requestId_dataDispatcherContext___block_invoke(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v17 = "+[CDMDataDispatcher dispatchSpanizationData:requestId:dataDispatcherContext:]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher starting dispatch of Spanization data to SELF", buf, 0xCu);
  }

  v3 = os_signpost_id_generate(CDMLogContext);
  v4 = CDMLogContext;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CDMDataDispatcher-SELF", "dispatchSpanizationData", buf, 2u);
  }

  v6 = [*(*(a1[4] + 8) + 40) spanMatchResponse];
  [CDMSELFLogUtil matchingSpanEnded:v6 metadata:*(*(a1[5] + 8) + 40) logMessage:@"SELF MatchingSpan response message emitted" dataDispatcherContext:*(*(a1[6] + 8) + 40)];

  if (+[CDMFeatureFlags isLogNluEnabled])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cdm_span_match_response_%@.json", *(*(a1[7] + 8) + 40)];
    v8 = +[CDMNluLogUtil getLogBasePath];
    v9 = [v8 stringByAppendingPathComponent:v7];

    v10 = [*(*(a1[4] + 8) + 40) spanMatchResponse];
    v15 = 0;
    LOBYTE(v8) = [CDMNluLogUtil saveSpanMatchResponseToProtobuf:v10 protobufFile:v9 error:&v15];
    v11 = v15;

    if ((v8 & 1) == 0)
    {
      v12 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "+[CDMDataDispatcher dispatchSpanizationData:requestId:dataDispatcherContext:]_block_invoke";
        v18 = 2112;
        v19 = v11;
        _os_log_error_impl(&dword_1DC287000, v12, OS_LOG_TYPE_ERROR, "%s [ERR]: Error logging span match result to file: %@", buf, 0x16u);
      }
    }
  }

  v13 = CDMLogContext;
  v14 = v13;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v14, OS_SIGNPOST_INTERVAL_END, v3, "CDMDataDispatcher-SELF", "", buf, 2u);
  }
}

void __77__CDMDataDispatcher_dispatchSpanizationData_requestId_dataDispatcherContext___block_invoke_413(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = "+[CDMDataDispatcher dispatchSpanizationData:requestId:dataDispatcherContext:]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher starting dispatch of Spanization data to FeatureStore", &v9, 0xCu);
  }

  v3 = os_signpost_id_generate(CDMLogContext);
  v4 = CDMLogContext;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CDMDataDispatcher-FS", "insertSpanMatchResponseToFeatureStore", &v9, 2u);
  }

  v6 = [*(*(*(a1 + 32) + 8) + 40) spanMatchResponse];
  [CDMFeatureStoreUtils insertSpanMatchResponseToFeatureStore:v6 interactionId:*(*(*(a1 + 40) + 8) + 40)];

  v7 = CDMLogContext;
  v8 = v7;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v8, OS_SIGNPOST_INTERVAL_END, v3, "CDMDataDispatcher-FS", "", &v9, 2u);
  }
}

+ (void)dispatchContextUpdateData:(id)data requestId:(id)id dataDispatcherContext:(id)context
{
  v34 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  idCopy = id;
  contextCopy = context;
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[CDMDataDispatcher dispatchContextUpdateData:requestId:dataDispatcherContext:]";
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher is about to dispatch contextUpdate data.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__340;
  v32 = __Block_byref_object_dispose__341;
  v11 = dataCopy;
  v33 = v11;
  v12 = [MEMORY[0x1E69D1420] extractRequestLinkData:idCopy];
  v13 = v12;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__340;
  v25[4] = __Block_byref_object_dispose__341;
  if (v12)
  {
    nlId = [v12 nlId];
    trpId = [v13 trpId];
    targetUUID = [v13 targetUUID];
    resultCandidateId = [v13 resultCandidateId];
    targetName = [v13 targetName];
    v26 = [CDMSELFLogUtil createSELFMetadataWithNlId:nlId andWithTrpId:trpId andWithRequestId:targetUUID andWithResultCandidateId:resultCandidateId andWithConnectionId:targetName];
  }

  else
  {
    v26 = 0;
  }

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__340;
  v23[4] = __Block_byref_object_dispose__341;
  v19 = contextCopy;
  v24 = v19;
  v20 = +[CDMDataDispatcherCompletionQueue getDataDispatcherCompletionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__CDMDataDispatcher_dispatchContextUpdateData_requestId_dataDispatcherContext___block_invoke;
  block[3] = &unk_1E862E7C8;
  block[4] = &buf;
  block[5] = v25;
  block[6] = v23;
  dispatch_async(v20, block);

  v21 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *v27 = 136315138;
    v28 = "+[CDMDataDispatcher dispatchContextUpdateData:requestId:dataDispatcherContext:]";
    _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher dispatched contextUpdate data for SELF asynchronously.", v27, 0xCu);
  }

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v25, 8);

  _Block_object_dispose(&buf, 8);
}

void __79__CDMDataDispatcher_dispatchContextUpdateData_requestId_dataDispatcherContext___block_invoke(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = "+[CDMDataDispatcher dispatchContextUpdateData:requestId:dataDispatcherContext:]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher starting dispatch of ContextUpdate data to SELF", &v9, 0xCu);
  }

  v3 = os_signpost_id_generate(CDMLogContext);
  v4 = CDMLogContext;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CDMDataDispatcher-SELF", "dispatchContextUpdateData", &v9, 2u);
  }

  v6 = [*(*(a1[4] + 8) + 40) ctxUpdateResponse];
  [CDMSELFLogUtil contextUpdateEnded:v6 metadata:*(*(a1[5] + 8) + 40) logMessage:@"SELF ContextUpdate response message emitted" dataDispatcherContext:*(*(a1[6] + 8) + 40)];

  v7 = CDMLogContext;
  v8 = v7;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v8, OS_SIGNPOST_INTERVAL_END, v3, "CDMDataDispatcher-SELF", "", &v9, 2u);
  }
}

+ (void)dispatchCorrectedUtteranceTokenizationData:(id)data requestId:(id)id dataDispatcherContext:(id)context
{
  v34 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  idCopy = id;
  contextCopy = context;
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[CDMDataDispatcher dispatchCorrectedUtteranceTokenizationData:requestId:dataDispatcherContext:]";
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher is about to dispatch correctedUtteranceTokenization data.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__340;
  v32 = __Block_byref_object_dispose__341;
  v11 = dataCopy;
  v33 = v11;
  v12 = [MEMORY[0x1E69D1420] extractRequestLinkData:idCopy];
  v13 = v12;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__340;
  v25[4] = __Block_byref_object_dispose__341;
  if (v12)
  {
    nlId = [v12 nlId];
    trpId = [v13 trpId];
    targetUUID = [v13 targetUUID];
    resultCandidateId = [v13 resultCandidateId];
    targetName = [v13 targetName];
    v26 = [CDMSELFLogUtil createSELFMetadataWithNlId:nlId andWithTrpId:trpId andWithRequestId:targetUUID andWithResultCandidateId:resultCandidateId andWithConnectionId:targetName];
  }

  else
  {
    v26 = 0;
  }

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__340;
  v23[4] = __Block_byref_object_dispose__341;
  v19 = contextCopy;
  v24 = v19;
  v20 = +[CDMDataDispatcherCompletionQueue getDataDispatcherCompletionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__CDMDataDispatcher_dispatchCorrectedUtteranceTokenizationData_requestId_dataDispatcherContext___block_invoke;
  block[3] = &unk_1E862E7C8;
  block[4] = &buf;
  block[5] = v25;
  block[6] = v23;
  dispatch_async(v20, block);

  v21 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *v27 = 136315138;
    v28 = "+[CDMDataDispatcher dispatchCorrectedUtteranceTokenizationData:requestId:dataDispatcherContext:]";
    _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher dispatched correctedUtteranceTokenization data for SELF asynchronously.", v27, 0xCu);
  }

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v25, 8);

  _Block_object_dispose(&buf, 8);
}

void __96__CDMDataDispatcher_dispatchCorrectedUtteranceTokenizationData_requestId_dataDispatcherContext___block_invoke(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = "+[CDMDataDispatcher dispatchCorrectedUtteranceTokenizationData:requestId:dataDispatcherContext:]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher starting dispatch of CorrectedUtteranceTokenization data to SELF", &v9, 0xCu);
  }

  v3 = os_signpost_id_generate(CDMLogContext);
  v4 = CDMLogContext;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CDMDataDispatcher-SELF", "dispatchCorrectedUtteranceTokenizationData", &v9, 2u);
  }

  v6 = [*(*(a1[4] + 8) + 40) responses];
  [CDMSELFLogUtil tokenizationEndedWithMultiResponses:v6 inputType:3 metadata:*(*(a1[5] + 8) + 40) logMessage:@"SELF corrected user utterance Tokenization response message emitted" dataDispatcherContext:*(*(a1[6] + 8) + 40)];

  v7 = CDMLogContext;
  v8 = v7;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v8, OS_SIGNPOST_INTERVAL_END, v3, "CDMDataDispatcher-SELF", "", &v9, 2u);
  }
}

+ (void)dispatchPreviousTurnTokenizationData:(id)data requestId:(id)id dataDispatcherContext:(id)context
{
  v34 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  idCopy = id;
  contextCopy = context;
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[CDMDataDispatcher dispatchPreviousTurnTokenizationData:requestId:dataDispatcherContext:]";
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher is about to dispatch previousTurnTokenization data.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__340;
  v32 = __Block_byref_object_dispose__341;
  v11 = dataCopy;
  v33 = v11;
  v12 = [MEMORY[0x1E69D1420] extractRequestLinkData:idCopy];
  v13 = v12;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__340;
  v25[4] = __Block_byref_object_dispose__341;
  if (v12)
  {
    nlId = [v12 nlId];
    trpId = [v13 trpId];
    targetUUID = [v13 targetUUID];
    resultCandidateId = [v13 resultCandidateId];
    targetName = [v13 targetName];
    v26 = [CDMSELFLogUtil createSELFMetadataWithNlId:nlId andWithTrpId:trpId andWithRequestId:targetUUID andWithResultCandidateId:resultCandidateId andWithConnectionId:targetName];
  }

  else
  {
    v26 = 0;
  }

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__340;
  v23[4] = __Block_byref_object_dispose__341;
  v19 = contextCopy;
  v24 = v19;
  v20 = +[CDMDataDispatcherCompletionQueue getDataDispatcherCompletionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__CDMDataDispatcher_dispatchPreviousTurnTokenizationData_requestId_dataDispatcherContext___block_invoke;
  block[3] = &unk_1E862E7C8;
  block[4] = &buf;
  block[5] = v25;
  block[6] = v23;
  dispatch_async(v20, block);

  v21 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *v27 = 136315138;
    v28 = "+[CDMDataDispatcher dispatchPreviousTurnTokenizationData:requestId:dataDispatcherContext:]";
    _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher dispatched previousTurnTokenization data for SELF asynchronously.", v27, 0xCu);
  }

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v25, 8);

  _Block_object_dispose(&buf, 8);
}

void __90__CDMDataDispatcher_dispatchPreviousTurnTokenizationData_requestId_dataDispatcherContext___block_invoke(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v24 = "+[CDMDataDispatcher dispatchPreviousTurnTokenizationData:requestId:dataDispatcherContext:]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher starting dispatch of PreviousTurnTokenization data to SELF", buf, 0xCu);
  }

  v3 = os_signpost_id_generate(CDMLogContext);
  v4 = CDMLogContext;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CDMDataDispatcher-SELF", "dispatchPreviousTurnTokenizationData", buf, 2u);
  }

  v6 = [*(*(a1[4] + 8) + 40) previousSiriResponseTokenResponses];
  if (v6)
  {
    v7 = v6;
    v8 = [*(*(a1[4] + 8) + 40) previousSiriResponseTokenResponses];
    v9 = [v8 lastObject];

    if (v9)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = [*(*(a1[4] + 8) + 40) previousSiriResponseTokenResponses];
      v11 = [v10 lastObject];

      v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v19;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [CDMSELFLogUtil tokenizationEnded:*(*(&v18 + 1) + 8 * i) inputType:2 metadata:*(*(a1[5] + 8) + 40) logMessage:@"SELF previous turn Siri response Tokenization response message emitted" dataDispatcherContext:*(*(a1[6] + 8) + 40)];
          }

          v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v13);
      }
    }
  }

  v16 = CDMLogContext;
  v17 = v16;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v17, OS_SIGNPOST_INTERVAL_END, v3, "CDMDataDispatcher-SELF", "", buf, 2u);
  }
}

+ (void)dispatchCurrentTurnTokenizationData:(id)data requestId:(id)id dataDispatcherContext:(id)context
{
  v41 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  idCopy = id;
  contextCopy = context;
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[CDMDataDispatcher dispatchCurrentTurnTokenizationData:requestId:dataDispatcherContext:]";
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher is about to dispatch currentTurnTokenization data.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__340;
  v39 = __Block_byref_object_dispose__341;
  v11 = dataCopy;
  v40 = v11;
  v12 = [MEMORY[0x1E69D1420] extractRequestLinkData:idCopy];
  v13 = v12;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__340;
  v29[4] = __Block_byref_object_dispose__341;
  if (v12)
  {
    nlId = [v12 nlId];
    trpId = [v13 trpId];
    targetUUID = [v13 targetUUID];
    resultCandidateId = [v13 resultCandidateId];
    targetName = [v13 targetName];
    v30 = [CDMSELFLogUtil createSELFMetadataWithNlId:nlId andWithTrpId:trpId andWithRequestId:targetUUID andWithResultCandidateId:resultCandidateId andWithConnectionId:targetName];
  }

  else
  {
    v30 = 0;
  }

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__340;
  v27[4] = __Block_byref_object_dispose__341;
  v19 = contextCopy;
  v28 = v19;
  v20 = +[CDMDataDispatcherCompletionQueue getDataDispatcherCompletionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__CDMDataDispatcher_dispatchCurrentTurnTokenizationData_requestId_dataDispatcherContext___block_invoke;
  block[3] = &unk_1E862E7C8;
  block[4] = &buf;
  block[5] = v29;
  block[6] = v27;
  dispatch_async(v20, block);

  v21 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v31) = 136315138;
    *(&v31 + 4) = "+[CDMDataDispatcher dispatchCurrentTurnTokenizationData:requestId:dataDispatcherContext:]";
    _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher dispatched currentTurnTokenization data for SELF asynchronously.", &v31, 0xCu);
  }

  *&v31 = 0;
  *(&v31 + 1) = &v31;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__340;
  v34 = __Block_byref_object_dispose__341;
  if (idCopy)
  {
    v22 = [idCopy idA];
  }

  else
  {
    v22 = 0;
  }

  v35 = v22;
  if (v13)
  {
    targetName2 = [v13 targetName];
  }

  else
  {
    targetName2 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__CDMDataDispatcher_dispatchCurrentTurnTokenizationData_requestId_dataDispatcherContext___block_invoke_391;
  aBlock[3] = &unk_1E862EFC0;
  aBlock[4] = &buf;
  aBlock[5] = &v31;
  v24 = _Block_copy(aBlock);
  [objc_opt_class() insertFeatureStore:v24 requester:targetName2 debugLog:@"CDMDataDispatcher dispatched currentTurnTokenization data for FeatureStore asynchronously."];

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(v27, 8);

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(&buf, 8);
}

void __89__CDMDataDispatcher_dispatchCurrentTurnTokenizationData_requestId_dataDispatcherContext___block_invoke(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = "+[CDMDataDispatcher dispatchCurrentTurnTokenizationData:requestId:dataDispatcherContext:]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher starting dispatch of CurrentTurnTokenization data to SELF", &v9, 0xCu);
  }

  v3 = os_signpost_id_generate(CDMLogContext);
  v4 = CDMLogContext;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CDMDataDispatcher-SELF", "dispatchCurrentTurnTokenizationData", &v9, 2u);
  }

  v6 = [*(*(a1[4] + 8) + 40) responses];
  [CDMSELFLogUtil tokenizationEndedWithMultiResponses:v6 inputType:1 metadata:*(*(a1[5] + 8) + 40) logMessage:@"SELF current turn user utterance Tokenization response message emitted" dataDispatcherContext:*(*(a1[6] + 8) + 40)];

  v7 = CDMLogContext;
  v8 = v7;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v8, OS_SIGNPOST_INTERVAL_END, v3, "CDMDataDispatcher-SELF", "", &v9, 2u);
  }
}

void __89__CDMDataDispatcher_dispatchCurrentTurnTokenizationData_requestId_dataDispatcherContext___block_invoke_391(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = "+[CDMDataDispatcher dispatchCurrentTurnTokenizationData:requestId:dataDispatcherContext:]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher starting dispatch of CurrentTurnTokenization data to FeatureStore", &v9, 0xCu);
  }

  v3 = os_signpost_id_generate(CDMLogContext);
  v4 = CDMLogContext;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CDMDataDispatcher-FS", "insertTokenizerResponseToFeatureStore", &v9, 2u);
  }

  v6 = [*(*(*(a1 + 32) + 8) + 40) response];
  [CDMFeatureStoreUtils insertTokenizerResponseToFeatureStore:v6 interactionId:*(*(*(a1 + 40) + 8) + 40)];

  v7 = CDMLogContext;
  v8 = v7;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v8, OS_SIGNPOST_INTERVAL_END, v3, "CDMDataDispatcher-FS", "", &v9, 2u);
  }
}

+ (void)dispatchCdmPreprocessingWrapperData:(id)data requestId:(id)id
{
  v21 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  idCopy = id;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[CDMDataDispatcher dispatchCdmPreprocessingWrapperData:requestId:]";
    _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher is about to dispatch CDM PreprocessingWrapper data.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__340;
  v19 = __Block_byref_object_dispose__341;
  v8 = dataCopy;
  v20 = v8;
  v9 = [MEMORY[0x1E69D1420] extractRequestLinkData:idCopy];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__340;
  v14[4] = __Block_byref_object_dispose__341;
  if (idCopy)
  {
    v10 = [idCopy idA];
  }

  else
  {
    v10 = 0;
  }

  v15 = v10;
  if (v9)
  {
    targetName = [v9 targetName];
  }

  else
  {
    targetName = 0;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__CDMDataDispatcher_dispatchCdmPreprocessingWrapperData_requestId___block_invoke;
  v13[3] = &unk_1E862EFC0;
  v13[4] = &buf;
  v13[5] = v14;
  v12 = _Block_copy(v13);
  [objc_opt_class() insertFeatureStore:v12 requester:targetName debugLog:@"CDMDataDispatcher dispatched CDM PreprocessingWrapper data for FeatureStore asynchronously."];

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&buf, 8);
}

void __67__CDMDataDispatcher_dispatchCdmPreprocessingWrapperData_requestId___block_invoke(uint64_t a1)
{
  v2 = os_signpost_id_generate(CDMLogContext);
  v3 = CDMLogContext;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "CDMDataDispatcher-FS", "insertPreprocessingWrapperToFeatureStore", buf, 2u);
  }

  [CDMFeatureStoreUtils insertPreprocessingWrapperToFeatureStore:*(*(*(a1 + 32) + 8) + 40) interactionId:*(*(*(a1 + 40) + 8) + 40)];
  v5 = CDMLogContext;
  v6 = v5;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v6, OS_SIGNPOST_INTERVAL_END, v2, "CDMDataDispatcher-FS", "", v7, 2u);
  }
}

+ (void)dispatchCdmResponseData:(id)data requestId:(id)id dataDispatcherContext:(id)context
{
  v37 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  idCopy = id;
  contextCopy = context;
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[CDMDataDispatcher dispatchCdmResponseData:requestId:dataDispatcherContext:]";
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher is about to dispatch CDM Response data.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__340;
  v35 = __Block_byref_object_dispose__341;
  v36 = [dataCopy copy];
  v11 = [MEMORY[0x1E69D1420] extractRequestLinkData:idCopy];
  v12 = v11;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__340;
  v28[4] = __Block_byref_object_dispose__341;
  if (v11)
  {
    nlId = [v11 nlId];
    trpId = [v12 trpId];
    targetUUID = [v12 targetUUID];
    resultCandidateId = [v12 resultCandidateId];
    targetName = [v12 targetName];
    v29 = [CDMSELFLogUtil createSELFMetadataWithNlId:nlId andWithTrpId:trpId andWithRequestId:targetUUID andWithResultCandidateId:resultCandidateId andWithConnectionId:targetName];
  }

  else
  {
    v29 = 0;
  }

  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__340;
  v26[4] = __Block_byref_object_dispose__341;
  v18 = contextCopy;
  v27 = v18;
  v19 = mach_absolute_time();
  v20 = +[CDMDataDispatcherCompletionQueue getDataDispatcherCompletionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__CDMDataDispatcher_dispatchCdmResponseData_requestId_dataDispatcherContext___block_invoke;
  block[3] = &unk_1E862E840;
  block[4] = &buf;
  block[5] = v28;
  block[6] = v26;
  block[7] = v19;
  dispatch_async(v20, block);

  v21 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *v30 = 136315138;
    v31 = "+[CDMDataDispatcher dispatchCdmResponseData:requestId:dataDispatcherContext:]";
    _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher dispatched CDM Response data for SELF asynchronously.", v30, 0xCu);
  }

  if (v12)
  {
    targetName2 = [v12 targetName];
  }

  else
  {
    targetName2 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__CDMDataDispatcher_dispatchCdmResponseData_requestId_dataDispatcherContext___block_invoke_381;
  aBlock[3] = &unk_1E862E818;
  aBlock[4] = &buf;
  v23 = _Block_copy(aBlock);
  [objc_opt_class() insertFeatureStore:v23 requester:targetName2 debugLog:@"CDMDataDispatcher dispatched CDM Response data for FeatureStore asynchronously."];

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v28, 8);

  _Block_object_dispose(&buf, 8);
}

void __77__CDMDataDispatcher_dispatchCdmResponseData_requestId_dataDispatcherContext___block_invoke(void *a1)
{
  v2 = os_signpost_id_generate(CDMLogContext);
  v3 = CDMLogContext;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "CDMDataDispatcher-SELF", "dispatchCdmResponseData", buf, 2u);
  }

  [CDMSELFLogUtil cdmEnded:*(*(a1[4] + 8) + 40) metadata:*(*(a1[5] + 8) + 40) logMessage:@"SELF CDM Request ended message emitted" machAbsoluteTime:a1[7] dataDispatcherContext:*(*(a1[6] + 8) + 40)];
  v5 = CDMLogContext;
  v6 = v5;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v6, OS_SIGNPOST_INTERVAL_END, v2, "CDMDataDispatcher-SELF", "", v7, 2u);
  }
}

void __77__CDMDataDispatcher_dispatchCdmResponseData_requestId_dataDispatcherContext___block_invoke_381(uint64_t a1)
{
  v2 = os_signpost_id_generate(CDMLogContext);
  v3 = CDMLogContext;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "CDMDataDispatcher-FS", "insertResponseToFeatureStoreAsJson", buf, 2u);
  }

  [CDMFeatureStoreUtils insertResponseToFeatureStoreAsJson:*(*(*(a1 + 32) + 8) + 40)];
  v5 = CDMLogContext;
  v6 = v5;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v6, OS_SIGNPOST_INTERVAL_END, v2, "CDMDataDispatcher-FS", "", v7, 2u);
  }
}

+ (void)dispatchCdmRequestData:(id)data requestId:(id)id withCurrentServiceGraph:(id)graph dataDispatcherContext:(id)context
{
  v67 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  idCopy = id;
  graphCopy = graph;
  contextCopy = context;
  v12 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v56 = "+[CDMDataDispatcher dispatchCdmRequestData:requestId:withCurrentServiceGraph:dataDispatcherContext:]";
    _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher is about to dispatch CDM Request data.", buf, 0xCu);
  }

  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x3032000000;
  v53[3] = __Block_byref_object_copy__340;
  v53[4] = __Block_byref_object_dispose__341;
  v54 = [dataCopy copy];
  v13 = [MEMORY[0x1E69D1420] extractRequestLinkData:idCopy];
  v14 = v13;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3032000000;
  v51[3] = __Block_byref_object_copy__340;
  v51[4] = __Block_byref_object_dispose__341;
  if (v13)
  {
    v15 = idCopy;
    v16 = graphCopy;
    nlId = [v13 nlId];
    trpId = [v14 trpId];
    targetUUID = [v14 targetUUID];
    resultCandidateId = [v14 resultCandidateId];
    targetName = [v14 targetName];
    v52 = [CDMSELFLogUtil createSELFMetadataWithNlId:nlId andWithTrpId:trpId andWithRequestId:targetUUID andWithResultCandidateId:resultCandidateId andWithConnectionId:targetName];

    graphCopy = v16;
    idCopy = v15;
  }

  else
  {
    v52 = 0;
  }

  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy__340;
  v49[4] = __Block_byref_object_dispose__341;
  v22 = contextCopy;
  v50 = v22;
  v23 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v30 = MEMORY[0x1E69D1420];
    nlId2 = [v14 nlId];
    v38 = [v30 convertUUID:nlId2];
    toSafeNSUUID = [v38 toSafeNSUUID];
    resultCandidateId2 = [v14 resultCandidateId];
    v32 = MEMORY[0x1E69D1420];
    trpId2 = [v14 trpId];
    v33 = [v32 convertUUID:trpId2];
    toSafeNSUUID2 = [v33 toSafeNSUUID];
    targetName2 = [v14 targetName];
    targetUUID2 = [v14 targetUUID];
    *buf = 136316418;
    v56 = "+[CDMDataDispatcher dispatchCdmRequestData:requestId:withCurrentServiceGraph:dataDispatcherContext:]";
    v57 = 2112;
    v58 = toSafeNSUUID;
    v59 = 2112;
    v60 = resultCandidateId2;
    v61 = 2112;
    v62 = toSafeNSUUID2;
    v63 = 2112;
    v64 = targetName2;
    v65 = 2112;
    v66 = targetUUID2;
    _os_log_debug_impl(&dword_1DC287000, v23, OS_LOG_TYPE_DEBUG, "%s SELF RequestLinkData for dispatchCdmRequestData: \n RequestLinkData.nlId: %@ \n RequestLinkData.resultCandidateId: %@ \n RequestLinkData.trpId: %@ \n RequestLinkData.tragetName: %@ \n RequestLinkData.targetUUID: %@", buf, 0x3Eu);
  }

  v24 = mach_absolute_time();
  v25 = +[CDMDataDispatcherCompletionQueue getDataDispatcherCompletionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__CDMDataDispatcher_dispatchCdmRequestData_requestId_withCurrentServiceGraph_dataDispatcherContext___block_invoke;
  block[3] = &unk_1E862E7F0;
  v26 = graphCopy;
  v44 = v26;
  v45 = v53;
  v46 = v51;
  v47 = v49;
  v48 = v24;
  dispatch_async(v25, block);

  v27 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v56 = "+[CDMDataDispatcher dispatchCdmRequestData:requestId:withCurrentServiceGraph:dataDispatcherContext:]";
    _os_log_debug_impl(&dword_1DC287000, v27, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher dispatched CDM Request data for SELF asynchronously.", buf, 0xCu);
  }

  if (v14)
  {
    targetName3 = [v14 targetName];
  }

  else
  {
    targetName3 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__CDMDataDispatcher_dispatchCdmRequestData_requestId_withCurrentServiceGraph_dataDispatcherContext___block_invoke_373;
  aBlock[3] = &unk_1E862E818;
  aBlock[4] = v53;
  v29 = _Block_copy(aBlock);
  [objc_opt_class() insertFeatureStore:v29 requester:targetName3 debugLog:@"CDMDataDispatcher dispatched CDM Request data for FeatureStore asynchronously."];

  _Block_object_dispose(v49, 8);
  _Block_object_dispose(v51, 8);

  _Block_object_dispose(v53, 8);
}

void __100__CDMDataDispatcher_dispatchCdmRequestData_requestId_withCurrentServiceGraph_dataDispatcherContext___block_invoke(uint64_t a1)
{
  v2 = os_signpost_id_generate(CDMLogContext);
  v3 = CDMLogContext;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "CDMDataDispatcher-SELF", "dispatchCdmRequestData", buf, 2u);
  }

  [CDMSELFLogUtil cdmStarted:*(*(*(a1 + 40) + 8) + 40) metadata:*(*(*(a1 + 48) + 8) + 40) logMessage:@"SELF CDM Request started message emitted" machAbsoluteTime:*(a1 + 64) currentServiceGraph:[NSClassFromString(*(a1 + 32)) getNLXSchemaCDMServiceGraphName] dataDispatcherContext:*(*(*(a1 + 56) + 8) + 40)];
  v5 = CDMLogContext;
  v6 = v5;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v6, OS_SIGNPOST_INTERVAL_END, v2, "CDMDataDispatcher-SELF", "", v7, 2u);
  }
}

void __100__CDMDataDispatcher_dispatchCdmRequestData_requestId_withCurrentServiceGraph_dataDispatcherContext___block_invoke_373(uint64_t a1)
{
  v2 = os_signpost_id_generate(CDMLogContext);
  v3 = CDMLogContext;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "CDMDataDispatcher-FS", "insertRequestToFeatureStoreAsJson", buf, 2u);
  }

  [CDMFeatureStoreUtils insertRequestToFeatureStoreAsJson:*(*(*(a1 + 32) + 8) + 40)];
  v5 = CDMLogContext;
  v6 = v5;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v6, OS_SIGNPOST_INTERVAL_END, v2, "CDMDataDispatcher-FS", "", v7, 2u);
  }
}

+ (void)dispatchServiceSetupMetrics:(id)metrics selfMetadata:(id)metadata dataDispatcherContext:(id)context
{
  v27 = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  metadataCopy = metadata;
  contextCopy = context;
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[CDMDataDispatcher dispatchServiceSetupMetrics:selfMetadata:dataDispatcherContext:]";
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher is about to dispatch CDM service setup metrics data.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__340;
  v25 = __Block_byref_object_dispose__341;
  allValues = [metricsCopy allValues];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__340;
  v18[4] = __Block_byref_object_dispose__341;
  v11 = metadataCopy;
  v19 = v11;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__340;
  v16[4] = __Block_byref_object_dispose__341;
  v12 = contextCopy;
  v17 = v12;
  v13 = +[CDMDataDispatcherCompletionQueue getDataDispatcherCompletionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__CDMDataDispatcher_dispatchServiceSetupMetrics_selfMetadata_dataDispatcherContext___block_invoke;
  block[3] = &unk_1E862E7C8;
  block[4] = &buf;
  block[5] = v18;
  block[6] = v16;
  dispatch_async(v13, block);

  v14 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *v20 = 136315138;
    v21 = "+[CDMDataDispatcher dispatchServiceSetupMetrics:selfMetadata:dataDispatcherContext:]";
    _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher dispatched CDM service setup metrics data for SELF asynchronously.", v20, 0xCu);
  }

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);

  _Block_object_dispose(&buf, 8);
}

void __84__CDMDataDispatcher_dispatchServiceSetupMetrics_selfMetadata_dataDispatcherContext___block_invoke(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = os_signpost_id_generate(CDMLogContext);
  v3 = CDMLogContext;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "CDMDataDispatcher-SELF", "dispatchCdmServiceSetupMetricsData", buf, 2u);
  }

  v5 = objc_alloc_init(MEMORY[0x1E69CF178]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = *(*(a1[4] + 8) + 40);
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addSetupMetrics:{*(*(&v15 + 1) + 8 * i), v15}];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);
  }

  v11 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v11 setCdmServiceSetupMetricsReported:v5];
  [v11 setEventMetadata:*(*(a1[5] + 8) + 40)];
  v12 = objc_alloc_init(MEMORY[0x1E69D13F0]);
  [v12 setMainEvent:v11];
  [CDMSELFLogUtil emitEventsFromContainer:v12 mainEventLogMessage:@"Emitting CDMServiceSetupMetricsReported event" dataDispatcherContext:*(*(a1[6] + 8) + 40)];
  v13 = CDMLogContext;
  v14 = v13;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v14, OS_SIGNPOST_INTERVAL_END, v2, "CDMDataDispatcher-SELF", "", buf, 2u);
  }
}

+ (void)dispatchSELFRequestLink:(id)link dataDispatcherContext:(id)context
{
  v29 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  contextCopy = context;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[CDMDataDispatcher dispatchSELFRequestLink:dataDispatcherContext:]";
    _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher is about to dispatch SELF RequestLink.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__340;
  v27 = __Block_byref_object_dispose__341;
  v28 = [MEMORY[0x1E69D1420] extractRequestLinkData:linkCopy];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__340;
  v20[4] = __Block_byref_object_dispose__341;
  v8 = *(*(&buf + 1) + 40);
  if (v8)
  {
    nlId = [v8 nlId];
    trpId = [*(*(&buf + 1) + 40) trpId];
    targetUUID = [*(*(&buf + 1) + 40) targetUUID];
    resultCandidateId = [*(*(&buf + 1) + 40) resultCandidateId];
    targetName = [*(*(&buf + 1) + 40) targetName];
    v21 = [CDMSELFLogUtil createSELFMetadataWithNlId:nlId andWithTrpId:trpId andWithRequestId:targetUUID andWithResultCandidateId:resultCandidateId andWithConnectionId:targetName];
  }

  else
  {
    v21 = 0;
  }

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__340;
  v18[4] = __Block_byref_object_dispose__341;
  v14 = contextCopy;
  v19 = v14;
  v15 = +[CDMDataDispatcherCompletionQueue getDataDispatcherCompletionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__CDMDataDispatcher_dispatchSELFRequestLink_dataDispatcherContext___block_invoke;
  block[3] = &unk_1E862E7C8;
  block[4] = &buf;
  block[5] = v20;
  block[6] = v18;
  dispatch_async(v15, block);

  v16 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *v22 = 136315138;
    v23 = "+[CDMDataDispatcher dispatchSELFRequestLink:dataDispatcherContext:]";
    _os_log_debug_impl(&dword_1DC287000, v16, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher dispatched SELF RequestLink asynchronously.", v22, 0xCu);
  }

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);

  _Block_object_dispose(&buf, 8);
}

void __67__CDMDataDispatcher_dispatchSELFRequestLink_dataDispatcherContext___block_invoke(void *a1)
{
  v2 = os_signpost_id_generate(CDMLogContext);
  v3 = CDMLogContext;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "CDMDataDispatcher-SELF", "dispatchSELFRequestLink", buf, 2u);
  }

  [CDMSELFLogUtil emitRequestLink:*(*(a1[4] + 8) + 40) metadata:*(*(a1[5] + 8) + 40) dataDispatcherContext:*(*(a1[6] + 8) + 40)];
  v5 = CDMLogContext;
  v6 = v5;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v6, OS_SIGNPOST_INTERVAL_END, v2, "CDMDataDispatcher-SELF", "", v7, 2u);
  }
}

+ (void)waitForQueueCompletion
{
  v2 = +[CDMDataDispatcherCompletionQueue getDataDispatcherCompletionQueue];
  dispatch_barrier_async_and_wait(v2, &__block_literal_global_449);
}

+ (void)insertFeatureStore:(id)store requester:(id)requester debugLog:(id)log
{
  v27 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  requesterCopy = requester;
  logCopy = log;
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __59__CDMDataDispatcher_insertFeatureStore_requester_debugLog___block_invoke;
  v20 = &unk_1E862F240;
  v11 = storeCopy;
  v22 = v11;
  v12 = v10;
  v21 = v12;
  v13 = dispatch_block_create(0, &v17);
  v14 = [CDMDataDispatcherCompletionQueue getDataDispatcherCompletionQueue:v17];
  dispatch_async(v14, v13);

  v15 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v24 = "+[CDMDataDispatcher insertFeatureStore:requester:debugLog:]";
    v25 = 2112;
    v26 = logCopy;
    _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
  }

  if (([requesterCopy isEqualToString:@"CURARE"] & 1) != 0 || objc_msgSend(requesterCopy, "isEqualToString:", @"LIGHTHOUSE"))
  {
    v16 = dispatch_time(0, 3000000000);
    dispatch_group_wait(v12, v16);
  }
}

void __59__CDMDataDispatcher_insertFeatureStore_requester_debugLog___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

@end