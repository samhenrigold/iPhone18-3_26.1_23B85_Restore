@interface VCPMADVIVisualSearchGatingTask
+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (VCPMADVIVisualSearchGatingTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (id)createQueryContextWithError:(id *)error;
- (int)run;
- (void)cancel;
- (void)storeResults:(id)results;
@end

@implementation VCPMADVIVisualSearchGatingTask

- (VCPMADVIVisualSearchGatingTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  v17.receiver = self;
  v17.super_class = VCPMADVIVisualSearchGatingTask;
  v12 = [(VCPMADVIVisualSearchGatingTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_imageAsset, asset);
    objc_storeStrong(&v13->_signpostPayload, payload);
    v14 = dispatch_queue_create("VCPMADVIVisualSearchGatingTask", 0);
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
  block[2] = __40__VCPMADVIVisualSearchGatingTask_cancel__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(cancelQueue, block);
}

void *__40__VCPMADVIVisualSearchGatingTask_cancel__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) cancel];
  atomic_store(1u, (*(a1 + 32) + 48));
  return result;
}

- (id)createQueryContextWithError:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  queryID = [(MADVIVisualSearchGatingRequest *)self->_request queryID];

  if (queryID)
  {
    queryID2 = [(MADVIVisualSearchGatingRequest *)self->_request queryID];
    [dictionary setObject:queryID2 forKeyedSubscript:*MEMORY[0x1E69E0510]];
  }

  location = [(MADVIVisualSearchGatingRequest *)self->_request location];

  v9 = MEMORY[0x1E69E0500];
  if (location)
  {
    location2 = [(MADVIVisualSearchGatingRequest *)self->_request location];
    [dictionary setObject:location2 forKeyedSubscript:*v9];
  }

  imageType = [(MADVIVisualSearchGatingRequest *)self->_request imageType];

  v12 = MEMORY[0x1E69E04F0];
  if (imageType)
  {
    imageType2 = [(MADVIVisualSearchGatingRequest *)self->_request imageType];
    [dictionary setObject:imageType2 forKeyedSubscript:*v12];
  }

  featureIdentifier = [(MADVIVisualSearchGatingRequest *)self->_request featureIdentifier];

  if (featureIdentifier)
  {
    featureIdentifier2 = [(MADVIVisualSearchGatingRequest *)self->_request featureIdentifier];
    [dictionary setObject:featureIdentifier2 forKeyedSubscript:*MEMORY[0x1E69E04E8]];
  }

  location3 = [(VCPMADServiceImageAsset *)self->_imageAsset location];

  if (location3)
  {
    location4 = [(VCPMADServiceImageAsset *)self->_imageAsset location];
    [dictionary setObject:location4 forKeyedSubscript:*v9];
  }

  if ([(VCPMADServiceImageAsset *)self->_imageAsset isScreenshot])
  {
    [dictionary setObject:&unk_1F49BD9D8 forKeyedSubscript:*v12];
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

  imageURL = [(MADVIVisualSearchGatingRequest *)self->_request imageURL];

  v22 = MEMORY[0x1E69E04F8];
  if (imageURL)
  {
    [dictionary setObject:@"<redacted>" forKeyedSubscript:*MEMORY[0x1E69E04F8]];
  }

  referralURL = [(MADVIVisualSearchGatingRequest *)self->_request referralURL];

  v24 = MEMORY[0x1E69E0518];
  if (referralURL)
  {
    [dictionary setObject:@"<redacted>" forKeyedSubscript:*MEMORY[0x1E69E0518]];
  }

  engagementSuggestionType = [(MADVIVisualSearchGatingRequest *)self->_request engagementSuggestionType];

  if (engagementSuggestionType)
  {
    engagementSuggestionType2 = [(MADVIVisualSearchGatingRequest *)self->_request engagementSuggestionType];
    [dictionary setObject:engagementSuggestionType2 forKeyedSubscript:*MEMORY[0x1E69E04E0]];
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v39 = dictionary;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Query context: %@", buf, 0xCu);
  }

  imageURL2 = [(MADVIVisualSearchGatingRequest *)self->_request imageURL];
  v28 = imageURL2 == 0;

  if (!v28)
  {
    imageURL3 = [(MADVIVisualSearchGatingRequest *)self->_request imageURL];
    [dictionary setObject:imageURL3 forKeyedSubscript:*v22];
  }

  referralURL2 = [(MADVIVisualSearchGatingRequest *)self->_request referralURL];
  v31 = referralURL2 == 0;

  if (!v31)
  {
    referralURL3 = [(MADVIVisualSearchGatingRequest *)self->_request referralURL];
    [dictionary setObject:referralURL3 forKeyedSubscript:*v24];
  }

  v37 = 0;
  v33 = [MEMORY[0x1E69E0470] contextWithDictionary:dictionary error:&v37];
  v34 = v37;
  v35 = v37;
  if (error)
  {
    objc_storeStrong(error, v34);
  }

  return v33;
}

- (void)storeResults:(id)results
{
  selfCopy = self;
  v52 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  array = [MEMORY[0x1E695DF70] array];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  visualUnderstanding = [resultsCopy visualUnderstanding];
  imageRegions = [visualUnderstanding imageRegions];

  obj = imageRegions;
  v36 = [imageRegions countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v36)
  {
    v34 = *v46;
    do
    {
      v38 = 0;
      do
      {
        if (*v46 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v45 + 1) + 8 * v38);
        array2 = [MEMORY[0x1E695DF70] array];
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v37 = v5;
        domainInfo = [v5 domainInfo];
        v7 = [domainInfo countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v7)
        {
          v8 = *v42;
          v39 = domainInfo;
          do
          {
            v9 = 0;
            do
            {
              if (*v42 != v8)
              {
                objc_enumerationMutation(v39);
              }

              v10 = *(*(&v41 + 1) + 8 * v9);
              v11 = objc_alloc(MEMORY[0x1E69AE478]);
              domainKey = [v10 domainKey];
              labelName = [v10 labelName];
              glyphName = [v10 glyphName];
              hasFocalPoint = [v10 hasFocalPoint];
              [v10 focalPoint];
              v17 = v16;
              v19 = v18;
              displayLabel = [v10 displayLabel];
              displayMessage = [v10 displayMessage];
              v22 = [v11 initWithDomain:domainKey label:labelName glyphName:glyphName hasFocalPoint:hasFocalPoint focalPoint:displayLabel displayLabel:displayMessage displayMessage:{v17, v19}];
              [array2 addObject:v22];

              ++v9;
            }

            while (v7 != v9);
            domainInfo = v39;
            v7 = [v39 countByEnumeratingWithState:&v41 objects:v50 count:16];
          }

          while (v7);
        }

        v23 = objc_alloc(MEMORY[0x1E69AE490]);
        [v37 regionOfInterest];
        v24 = [v23 initWithNormalizedBoundingBox:array2 andDomains:?];
        [array addObject:v24];

        ++v38;
      }

      while (v38 != v36);
      v36 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v36);
  }

  request = selfCopy->_request;
  v26 = objc_alloc(MEMORY[0x1E69AE488]);
  visualUnderstanding2 = [resultsCopy visualUnderstanding];
  payload = [visualUnderstanding2 payload];
  v29 = [v26 initWithResultItems:array andPayload:payload];
  v49 = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  [(MADVIVisualSearchGatingRequest *)request setResults:v30];
}

- (int)run
{
  v62[1] = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIVisualSearchGatingTask running...", &buf, 2u);
  }

  fromGenerativePlayground = [(VCPMADServiceImageAsset *)self->_imageAsset fromGenerativePlayground];
  if (fromGenerativePlayground)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VS] Skipping Generative Playground asset", &buf, 2u);
    }

    request = self->_request;
    v6 = objc_alloc(MEMORY[0x1E69AE488]);
    cachedParseData = [v6 initWithResultItems:MEMORY[0x1E695E0F0] andPayload:0];
    v62[0] = cachedParseData;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:1];
    [(MADVIVisualSearchGatingRequest *)request setResults:v8];

LABEL_9:
    v9 = 0;
    goto LABEL_30;
  }

  if (VCPPhotosParseCachingEnabled(fromGenerativePlayground, v4) && [(VCPMADServiceImageAsset *)self->_imageAsset hasCachedParseData])
  {
    cachedParseData = [(VCPMADServiceImageAsset *)self->_imageAsset cachedParseData];
    if (!cachedParseData)
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VS] Cached parse result empty; returning empty result", &buf, 2u);
      }

      v10 = self->_request;
      v11 = objc_alloc(MEMORY[0x1E69AE488]);
      cachedParseData = [v11 initWithResultItems:MEMORY[0x1E695E0F0] andPayload:0];
      v61 = cachedParseData;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
      [(MADVIVisualSearchGatingRequest *)v10 setResults:v12];

      goto LABEL_9;
    }
  }

  else
  {
    cachedParseData = 0;
  }

  v53 = 0;
  v13 = [(VCPMADVIVisualSearchGatingTask *)self createQueryContextWithError:&v53];
  if (v13)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v57 = 0x2020000000;
    v58 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __37__VCPMADVIVisualSearchGatingTask_run__block_invoke;
    aBlock[3] = &unk_1E834BE08;
    aBlock[4] = self;
    aBlock[5] = &buf;
    v38 = _Block_copy(aBlock);
    v14 = objc_alloc(MEMORY[0x1E69E0460]);
    [(VCPMADServiceImageAsset *)self->_imageAsset resolution];
    v39 = [v14 initWithImageLoader:v38 imageSize:?];
    v40 = [(VCPMADServiceImageAsset *)self->_imageAsset vcp_annotationWithTypes:7];
    v15 = VIAllVisualSearchDomains();
    domains = [(MADVIVisualSearchGatingRequest *)self->_request domains];
    v17 = [domains count] == 0;

    if (!v17)
    {
      v18 = MEMORY[0x1E695DFD8];
      domains2 = [(MADVIVisualSearchGatingRequest *)self->_request domains];
      v20 = [v18 setWithArray:domains2];

      v15 = v20;
    }

    v21 = [objc_alloc(MEMORY[0x1E69E04C8]) initWithImage:v39 annotation:v40 normalizedRegionOfInterest:v15 domainsOfInterest:v13 queryContext:{0.0, 0.0, 1.0, 1.0}];
    v22 = +[VCPMADVIVisualSearchResource sharedResource];
    v23 = +[VCPMADResourceManager sharedManager];
    v24 = [v23 activateResource:v22];

    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v25 = dispatch_group_create();
    cancelQueue = self->_cancelQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__VCPMADVIVisualSearchGatingTask_run__block_invoke_363;
    block[3] = &unk_1E83500C8;
    block[4] = self;
    v46 = &v48;
    v27 = v25;
    v42 = v27;
    v28 = v22;
    v43 = v28;
    v29 = v21;
    v44 = v29;
    v45 = cachedParseData;
    p_buf = &buf;
    dispatch_sync(cancelQueue, block);
    dispatch_group_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
    [v24 reset];
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v30 = *(v49 + 6);
      *v54 = 67109120;
      v55 = v30;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIVisualSearchGatingTask complete (%d)", v54, 8u);
    }

    v9 = *(v49 + 6);

    _Block_object_dispose(&v48, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v53 description];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v31;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADVIVisualSearchGatingTask failed to create visual search query context (%@)", &buf, 0xCu);
    }

    v32 = self->_request;
    v33 = MEMORY[0x1E696ABC0];
    v59 = *MEMORY[0x1E696A578];
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create visual search query context"];
    v60 = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v36 = [v33 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v35];
    [(MADVIVisualSearchGatingRequest *)v32 setError:v36];

    v9 = 0;
  }

LABEL_30:
  return v9;
}

id __37__VCPMADVIVisualSearchGatingTask_run__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v5 = 0;
  v4 = 0;
  if ([*(*(a1 + 32) + 16) loadPixelBuffer:&v5 orientation:&v4])
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADVIVisualSearchGatingTask image loading failed", v3, 2u);
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

void __37__VCPMADVIVisualSearchGatingTask_run__block_invoke_363(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = atomic_load((*(a1 + 32) + 48));
  if (v2)
  {
    *(*(*(a1 + 72) + 8) + 24) = -128;
  }

  else
  {
    dispatch_group_enter(*(a1 + 40));
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__41;
    v27 = __Block_byref_object_dispose__41;
    v28 = objc_alloc_init(VCPTimeMeasurement);
    v3 = objc_msgSend_start(v24[5]);
    v4 = VCPSignPostLog(v3);
    v5 = os_signpost_id_generate(v4);

    v7 = VCPSignPostLog(v6);
    v8 = v7;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v9 = *(*(a1 + 32) + 24);
      *buf = 138412290;
      v30 = v9;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "VIService_VisualSearchGating", "%@", buf, 0xCu);
    }

    v10 = [*(a1 + 48) service];
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __37__VCPMADVIVisualSearchGatingTask_run__block_invoke_365;
    v17[3] = &unk_1E834BE58;
    v21 = v5;
    v22 = 0;
    v13 = *(a1 + 40);
    v17[4] = *(a1 + 32);
    v19 = &v23;
    v20 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
    v18 = v13;
    v14 = [v10 parseWithVisualQuery:v11 cachedResults:v12 completion:v17];
    v15 = *(a1 + 32);
    v16 = *(v15 + 56);
    *(v15 + 56) = v14;

    _Block_object_dispose(&v23, 8);
  }
}

void __37__VCPMADVIVisualSearchGatingTask_run__block_invoke_365(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = VCPSignPostLog(v9);
  v11 = v10;
  v12 = *(a1 + 72);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = *(*(a1 + 32) + 24);
    v23 = 138412290;
    v24 = v13;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_END, v12, "VIService_VisualSearchGating", "%@", &v23, 0xCu);
  }

  if (*(a1 + 80))
  {
    v14 = mach_absolute_time();
    VCPPerformance_LogMeasurement("VIService_VisualSearchGating", v14 - *(a1 + 80));
  }

  [*(*(*(a1 + 48) + 8) + 40) stop];
  v15 = *(a1 + 32);
  if (v9)
  {
    v16 = atomic_load(v15 + 48);
    if (v16)
    {
      *(*(*(a1 + 64) + 8) + 24) = -128;
    }

    else
    {
      [*(*(a1 + 32) + 8) setError:v9];
    }
  }

  else
  {
    [v15 storeResults:v7];
    v17 = [*(*(a1 + 32) + 8) results];
    v18 = [v17 firstObject];
    [*(*(*(a1 + 48) + 8) + 40) elapsedTimeSeconds];
    [v18 setExecutionNanoseconds:(v19 * 1000000000.0)];

    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v20 = [*(*(a1 + 32) + 16) hasValidSceneProcessing];
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    if (VCPPhotosParseCachingEnabled(v20, v21) && v22 & 1 | (([*(*(a1 + 32) + 16) hasCachedParseData] & 1) == 0))
    {
      [*(*(a1 + 32) + 16) setCachedParseData:v8 overwriteExisting:v22];
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

@end