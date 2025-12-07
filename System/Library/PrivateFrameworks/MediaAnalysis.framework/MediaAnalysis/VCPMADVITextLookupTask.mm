@interface VCPMADVITextLookupTask
+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (VCPMADVITextLookupTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (id)createQueryContextWithError:(id *)error;
- (int)run;
- (void)cancel;
@end

@implementation VCPMADVITextLookupTask

- (VCPMADVITextLookupTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  v17.receiver = self;
  v17.super_class = VCPMADVITextLookupTask;
  v12 = [(VCPMADVITextLookupTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_imageAsset, asset);
    objc_storeStrong(&v13->_signpostPayload, payload);
    v14 = dispatch_queue_create("VCPMADVITextLookupTask", 0);
    cancelQueue = v13->_cancelQueue;
    v13->_cancelQueue = v14;
  }

  return v13;
}

+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  v21 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  if ([requestCopy isMemberOfClass:objc_opt_class()])
  {
    v11 = [[self alloc] initWithRequest:requestCopy imageAsset:assetCopy andSignpostPayload:payloadCopy];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v17 = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Incompatible request (%@) specified to %@", &v17, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

- (void)cancel
{
  cancelQueue = self->_cancelQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__VCPMADVITextLookupTask_cancel__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(cancelQueue, block);
}

void *__32__VCPMADVITextLookupTask_cancel__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) cancel];
  atomic_store(1u, (*(a1 + 32) + 48));
  return result;
}

- (id)createQueryContextWithError:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  queryID = [(MADVITextLookupRequest *)self->_request queryID];

  if (queryID)
  {
    queryID2 = [(MADVITextLookupRequest *)self->_request queryID];
    [dictionary setObject:queryID2 forKeyedSubscript:*MEMORY[0x1E69E0510]];
  }

  uiScale = [(MADVITextLookupRequest *)self->_request uiScale];

  if (uiScale)
  {
    uiScale2 = [(MADVITextLookupRequest *)self->_request uiScale];
    [dictionary setObject:uiScale2 forKeyedSubscript:*MEMORY[0x1E69E0528]];
  }

  clientBundleID = [(VCPMADServiceImageAsset *)self->_imageAsset clientBundleID];

  if (clientBundleID)
  {
    clientBundleID2 = [(VCPMADServiceImageAsset *)self->_imageAsset clientBundleID];
    [dictionary setObject:clientBundleID2 forKeyedSubscript:*MEMORY[0x1E69E04D0]];
  }

  preferredMetalDevice = self->_preferredMetalDevice;
  if (preferredMetalDevice)
  {
    [dictionary setObject:preferredMetalDevice forKeyedSubscript:*MEMORY[0x1E69E0508]];
  }

  engagementSuggestionType = [(MADVITextLookupRequest *)self->_request engagementSuggestionType];

  if (engagementSuggestionType)
  {
    engagementSuggestionType2 = [(MADVITextLookupRequest *)self->_request engagementSuggestionType];
    [dictionary setObject:engagementSuggestionType2 forKeyedSubscript:*MEMORY[0x1E69E04E0]];
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v21 = dictionary;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Query context: %@", buf, 0xCu);
  }

  v19 = 0;
  v15 = [MEMORY[0x1E69E0470] contextWithDictionary:dictionary error:&v19];
  v16 = v19;
  v17 = v19;
  if (error)
  {
    objc_storeStrong(error, v16);
  }

  return v15;
}

- (int)run
{
  v28 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVITextLookupTask running...", buf, 2u);
  }

  v3 = +[VCPMADVIVisualSearchResource sharedResource];
  v4 = +[VCPMADResourceManager sharedManager];
  v5 = [v4 activateResource:v3];

  *buf = 0;
  v23 = buf;
  v24 = 0x2020000000;
  v25 = 0;
  v6 = dispatch_group_create();
  cancelQueue = self->_cancelQueue;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __29__VCPMADVITextLookupTask_run__block_invoke;
  v17 = &unk_1E834DF40;
  selfCopy = self;
  v21 = buf;
  v8 = v6;
  v19 = v8;
  v9 = v3;
  v20 = v9;
  dispatch_sync(cancelQueue, &v14);
  dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  service = [v9 service];
  [service clearCacheWithOption:56];

  [v5 reset];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v11 = *(v23 + 6);
    *v26 = 67109120;
    v27 = v11;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVITextLookupTask complete (%d)", v26, 8u);
  }

  v12 = *(v23 + 6);

  _Block_object_dispose(buf, 8);
  return v12;
}

void __29__VCPMADVITextLookupTask_run__block_invoke(uint64_t a1)
{
  v57[1] = *MEMORY[0x1E69E9840];
  v2 = atomic_load((*(a1 + 32) + 48));
  if (v2)
  {
    *(*(*(a1 + 56) + 8) + 24) = -128;
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __29__VCPMADVITextLookupTask_run__block_invoke_2;
    aBlock[3] = &unk_1E834DEC8;
    aBlock[4] = *(a1 + 32);
    v3 = _Block_copy(aBlock);
    v4 = objc_alloc(MEMORY[0x1E69E0460]);
    [*(*(a1 + 32) + 16) resolution];
    v5 = [v4 initWithImageLoader:v3 imageSize:?];
    v6 = [*(*(a1 + 32) + 16) vcp_annotationWithTypes:16];
    v47 = 0;
    v7 = [*(a1 + 32) createQueryContextWithError:&v47];
    if (v7)
    {
      v8 = [*(*(a1 + 32) + 8) surroundingText];
      v9 = v8 == 0;

      if (v9)
      {
        v13 = 0;
      }

      else
      {
        v10 = objc_alloc(MEMORY[0x1E69E04B0]);
        v11 = [*(*(a1 + 32) + 8) surroundingText];
        v12 = [*(*(a1 + 32) + 8) normalizedBoundingBoxes];
        v13 = [v10 initWithSurroundingText:v11 normalizedBoundingBoxes:v12];
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v52 = 0x3032000000;
      v53 = __Block_byref_object_copy__25;
      v54 = __Block_byref_object_dispose__25;
      v55 = objc_alloc_init(VCPTimeMeasurement);
      objc_msgSend_start(*(*(&buf + 1) + 40));
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __29__VCPMADVITextLookupTask_run__block_invoke_354;
      v43[3] = &unk_1E834DEF0;
      v19 = *(a1 + 40);
      v20 = *(a1 + 32);
      p_buf = &buf;
      v43[4] = v20;
      v46 = *(a1 + 56);
      v44 = v19;
      v21 = _Block_copy(v43);
      dispatch_group_enter(*(a1 + 40));
      v22 = objc_alloc(MEMORY[0x1E69E04B8]);
      v23 = [*(*(a1 + 32) + 8) queryTerm];
      v24 = [*(*(a1 + 32) + 8) hintDomain];
      v25 = [v22 initWithQueryTerm:v23 hintDomain:v24 textContext:v13 imageContext:v5 annotation:v6 queryContext:v7];

      v27 = VCPSignPostLog(v26);
      v28 = os_signpost_id_generate(v27);

      v30 = VCPSignPostLog(v29);
      v31 = v30;
      if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
      {
        v32 = *(*(a1 + 32) + 24);
        *v49 = 138412290;
        v50 = v32;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v28, "VIService_TextLookup", "%@", v49, 0xCu);
      }

      v33 = [*(a1 + 48) service];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __29__VCPMADVITextLookupTask_run__block_invoke_359;
      v39[3] = &unk_1E834DF18;
      v34 = *(a1 + 32);
      v41 = v28;
      v42 = 0;
      v39[4] = v34;
      v35 = v21;
      v40 = v35;
      v36 = [v33 lookupTextWithQuery:v25 completion:v39];
      v37 = *(a1 + 32);
      v38 = *(v37 + 56);
      *(v37 + 56) = v36;

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = [v47 description];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v14;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADVITextLookupTask failed to create text lookup query context (%@)", &buf, 0xCu);
      }

      v15 = *(*(a1 + 32) + 8);
      v16 = MEMORY[0x1E696ABC0];
      v56 = *MEMORY[0x1E696A578];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create text lookup query context"];
      v57[0] = v13;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
      v18 = [v16 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v17];
      [v15 setError:v18];
    }
  }
}

id __29__VCPMADVITextLookupTask_run__block_invoke_2(uint64_t a1)
{
  v5 = 0;
  v4 = 0;
  if ([*(*(a1 + 32) + 16) loadPixelBuffer:&v5 orientation:&v4])
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADVITextLookupTask image loading failed", v3, 2u);
    }

    v1 = 0;
  }

  else
  {
    v1 = [MEMORY[0x1E69E0450] imageWithPixelBuffer:v5 orientation:v4];
  }

  CF<__CVBuffer *>::~CF(&v5);

  return v1;
}

void __29__VCPMADVITextLookupTask_run__block_invoke_354(uint64_t a1, void *a2, void *a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(*(*(a1 + 48) + 8) + 40) stop];
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = atomic_load((v7 + 48));
    if (v8)
    {
      *(*(*(a1 + 56) + 8) + 24) = -128;
    }

    else
    {
      [*(*(a1 + 32) + 8) setError:v6];
    }
  }

  else
  {
    v9 = *(v7 + 8);
    v10 = objc_alloc(MEMORY[0x1E69AE460]);
    v11 = [v5 sections];
    v12 = [v10 initWithSearchSections:v11];
    v17[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v9 setResults:v13];

    v14 = [*(*(a1 + 32) + 8) results];
    v15 = [v14 firstObject];
    [*(*(*(a1 + 48) + 8) + 40) elapsedTimeSeconds];
    [v15 setExecutionNanoseconds:(v16 * 1000000000.0)];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __29__VCPMADVITextLookupTask_run__block_invoke_359(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = VCPSignPostLog(v6);
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1[4] + 24);
    v12 = 138412290;
    v13 = v10;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_END, v9, "VIService_TextLookup", "%@", &v12, 0xCu);
  }

  if (a1[7])
  {
    v11 = mach_absolute_time();
    VCPPerformance_LogMeasurement("VIService_TextLookup", v11 - a1[7]);
  }

  (*(a1[5] + 16))();
}

@end