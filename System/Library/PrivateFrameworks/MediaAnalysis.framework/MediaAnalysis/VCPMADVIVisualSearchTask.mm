@interface VCPMADVIVisualSearchTask
+ (id)dependencies;
+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (VCPMADVIVisualSearchTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (id)createQueryContextWithError:(id *)error;
- (int)run;
- (void)cancel;
- (void)storeResults:(id)results;
@end

@implementation VCPMADVIVisualSearchTask

- (VCPMADVIVisualSearchTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  v17.receiver = self;
  v17.super_class = VCPMADVIVisualSearchTask;
  v12 = [(VCPMADVIVisualSearchTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_imageAsset, asset);
    objc_storeStrong(&v13->_signpostPayload, payload);
    v14 = dispatch_queue_create("VCPMADVIVisualSearchTask", 0);
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

+ (id)dependencies
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)cancel
{
  cancelQueue = self->_cancelQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__VCPMADVIVisualSearchTask_cancel__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(cancelQueue, block);
}

void *__34__VCPMADVIVisualSearchTask_cancel__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) cancel];
  atomic_store(1u, (*(a1 + 32) + 48));
  return result;
}

- (id)createQueryContextWithError:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  queryID = [(MADVIVisualSearchRequest *)self->_request queryID];

  if (queryID)
  {
    queryID2 = [(MADVIVisualSearchRequest *)self->_request queryID];
    [dictionary setObject:queryID2 forKeyedSubscript:*MEMORY[0x1E69E0510]];
  }

  uiScale = [(MADVIVisualSearchRequest *)self->_request uiScale];

  if (uiScale)
  {
    uiScale2 = [(MADVIVisualSearchRequest *)self->_request uiScale];
    [dictionary setObject:uiScale2 forKeyedSubscript:*MEMORY[0x1E69E0528]];
  }

  location = [(MADVIVisualSearchRequest *)self->_request location];

  v11 = MEMORY[0x1E69E0500];
  if (location)
  {
    location2 = [(MADVIVisualSearchRequest *)self->_request location];
    [dictionary setObject:location2 forKeyedSubscript:*v11];
  }

  imageType = [(MADVIVisualSearchRequest *)self->_request imageType];

  v14 = MEMORY[0x1E69E04F0];
  if (imageType)
  {
    imageType2 = [(MADVIVisualSearchRequest *)self->_request imageType];
    [dictionary setObject:imageType2 forKeyedSubscript:*v14];
  }

  catalogIDs = [(MADVIVisualSearchRequest *)self->_request catalogIDs];

  if (catalogIDs)
  {
    catalogIDs2 = [(MADVIVisualSearchRequest *)self->_request catalogIDs];
    [dictionary setObject:catalogIDs2 forKeyedSubscript:*MEMORY[0x1E69E04D8]];
  }

  featureIdentifier = [(MADVIVisualSearchRequest *)self->_request featureIdentifier];

  if (featureIdentifier)
  {
    featureIdentifier2 = [(MADVIVisualSearchRequest *)self->_request featureIdentifier];
    [dictionary setObject:featureIdentifier2 forKeyedSubscript:*MEMORY[0x1E69E04E8]];
  }

  location3 = [(VCPMADServiceImageAsset *)self->_imageAsset location];

  if (location3)
  {
    location4 = [(VCPMADServiceImageAsset *)self->_imageAsset location];
    [dictionary setObject:location4 forKeyedSubscript:*v11];
  }

  if ([(VCPMADServiceImageAsset *)self->_imageAsset isScreenshot])
  {
    [dictionary setObject:&unk_1F49BDBE8 forKeyedSubscript:*v14];
  }

  clientBundleID = [(VCPMADServiceImageAsset *)self->_imageAsset clientBundleID];

  if (clientBundleID)
  {
    clientBundleID2 = [(VCPMADServiceImageAsset *)self->_imageAsset clientBundleID];
    [dictionary setObject:clientBundleID2 forKeyedSubscript:*MEMORY[0x1E69E04D0]];
  }

  clientTeamID = [(VCPMADServiceImageAsset *)self->_imageAsset clientTeamID];

  if (clientTeamID)
  {
    clientTeamID2 = [(VCPMADServiceImageAsset *)self->_imageAsset clientTeamID];
    [dictionary setObject:clientTeamID2 forKeyedSubscript:*MEMORY[0x1E69E0520]];
  }

  preferredMetalDevice = self->_preferredMetalDevice;
  if (preferredMetalDevice)
  {
    [dictionary setObject:preferredMetalDevice forKeyedSubscript:*MEMORY[0x1E69E0508]];
  }

  imageURL = [(MADVIVisualSearchRequest *)self->_request imageURL];

  v28 = MEMORY[0x1E69E04F8];
  if (imageURL)
  {
    [dictionary setObject:@"<redacted>" forKeyedSubscript:*MEMORY[0x1E69E04F8]];
  }

  referralURL = [(MADVIVisualSearchRequest *)self->_request referralURL];

  v30 = MEMORY[0x1E69E0518];
  if (referralURL)
  {
    [dictionary setObject:@"<redacted>" forKeyedSubscript:*MEMORY[0x1E69E0518]];
  }

  engagementSuggestionType = [(MADVIVisualSearchRequest *)self->_request engagementSuggestionType];

  if (engagementSuggestionType)
  {
    engagementSuggestionType2 = [(MADVIVisualSearchRequest *)self->_request engagementSuggestionType];
    [dictionary setObject:engagementSuggestionType2 forKeyedSubscript:*MEMORY[0x1E69E04E0]];
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v45 = dictionary;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Query context: %@", buf, 0xCu);
  }

  imageURL2 = [(MADVIVisualSearchRequest *)self->_request imageURL];
  v34 = imageURL2 == 0;

  if (!v34)
  {
    imageURL3 = [(MADVIVisualSearchRequest *)self->_request imageURL];
    [dictionary setObject:imageURL3 forKeyedSubscript:*v28];
  }

  referralURL2 = [(MADVIVisualSearchRequest *)self->_request referralURL];
  v37 = referralURL2 == 0;

  if (!v37)
  {
    referralURL3 = [(MADVIVisualSearchRequest *)self->_request referralURL];
    [dictionary setObject:referralURL3 forKeyedSubscript:*v30];
  }

  v43 = 0;
  v39 = [MEMORY[0x1E69E0470] contextWithDictionary:dictionary error:&v43];
  v40 = v43;
  v41 = v43;
  if (error)
  {
    objc_storeStrong(error, v40);
  }

  return v39;
}

- (void)storeResults:(id)results
{
  v95 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  array = [MEMORY[0x1E695DF70] array];
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = [resultsCopy regionOfInterestResults];
  v60 = [obj countByEnumeratingWithState:&v87 objects:v94 count:16];
  if (v60)
  {
    v62 = *v88;
    do
    {
      for (i = 0; i != v60; ++i)
      {
        if (*v88 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v87 + 1) + 8 * i);
        array2 = [MEMORY[0x1E695DF70] array];
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v63 = v3;
        resultItems = [v3 resultItems];
        v69 = [resultItems countByEnumeratingWithState:&v83 objects:v93 count:16];
        if (v69)
        {
          v68 = *v84;
          do
          {
            for (j = 0; j != v69; ++j)
            {
              if (*v84 != v68)
              {
                objc_enumerationMutation(resultItems);
              }

              v4 = *(*(&v83 + 1) + 8 * j);
              dictionary = [MEMORY[0x1E695DF90] dictionary];
              v81 = 0u;
              v82 = 0u;
              v79 = 0u;
              v80 = 0u;
              objectKnowledge = [v4 objectKnowledge];
              knowledgeProperties = [objectKnowledge knowledgeProperties];

              v8 = [knowledgeProperties countByEnumeratingWithState:&v79 objects:v92 count:16];
              if (v8)
              {
                v9 = *v80;
                do
                {
                  for (k = 0; k != v8; ++k)
                  {
                    if (*v80 != v9)
                    {
                      objc_enumerationMutation(knowledgeProperties);
                    }

                    v11 = *(*(&v79 + 1) + 8 * k);
                    value = [v11 value];
                    name = [v11 name];
                    [dictionary setObject:value forKeyedSubscript:name];
                  }

                  v8 = [knowledgeProperties countByEnumeratingWithState:&v79 objects:v92 count:16];
                }

                while (v8);
              }

              objectKnowledge2 = [v4 objectKnowledge];
              knowledgeGraphID = [objectKnowledge2 knowledgeGraphID];
              if (knowledgeGraphID)
              {
                [v4 objectKnowledge];
              }

              else
              {
                [v4 ontologyNode];
              }
              v16 = ;
              knowledgeGraphID2 = [v16 knowledgeGraphID];

              thirdPartyObject = [v4 thirdPartyObject];
              v18 = thirdPartyObject == 0;

              if (v18)
              {
                v29 = 0;
              }

              else
              {
                v19 = objc_alloc(MEMORY[0x1E69AE4B8]);
                thirdPartyObject2 = [v4 thirdPartyObject];
                objectIdentifier = [thirdPartyObject2 objectIdentifier];
                thirdPartyObject3 = [v4 thirdPartyObject];
                imageURL = [thirdPartyObject3 imageURL];
                thirdPartyObject4 = [v4 thirdPartyObject];
                thumbnailURL = [thirdPartyObject4 thumbnailURL];
                thirdPartyObject5 = [v4 thirdPartyObject];
                metadata = [thirdPartyObject5 metadata];
                v27 = v19;
                v28 = objectIdentifier;
                v29 = [v27 initWithObjectIdentifier:objectIdentifier imageURL:imageURL thumbnailURL:thumbnailURL metadata:metadata];
              }

              v30 = objc_alloc(MEMORY[0x1E69AE498]);
              domain = [v4 domain];
              objectKnowledge3 = [v4 objectKnowledge];
              title = [objectKnowledge3 title];
              objectKnowledge4 = [v4 objectKnowledge];
              thumbnailURL2 = [objectKnowledge4 thumbnailURL];
              objectKnowledge5 = [v4 objectKnowledge];
              [objectKnowledge5 thumbnailAspectRatio];
              v33 = v32;
              objectKnowledge6 = [v4 objectKnowledge];
              shortDescription = [objectKnowledge6 shortDescription];
              objectKnowledge7 = [v4 objectKnowledge];
              detailedDescription = [objectKnowledge7 detailedDescription];
              objectKnowledge8 = [v4 objectKnowledge];
              webURL = [objectKnowledge8 webURL];
              LODWORD(v40) = v33;
              v41 = [v30 initWithDomain:domain knowledgeGraphID:knowledgeGraphID2 title:title thumbnailURL:thumbnailURL2 thumbnailAspectRatio:shortDescription shortDescription:detailedDescription detailedDescription:v40 webURL:webURL knowledgeProperties:dictionary];
              [array2 addObject:v41];

              lastObject = [array2 lastObject];
              [lastObject setThirdPartyObject:v29];
            }

            v69 = [resultItems countByEnumeratingWithState:&v83 objects:v93 count:16];
          }

          while (v69);
        }

        v43 = objc_alloc(MEMORY[0x1E69AE4B0]);
        [v63 normalizedBoundingBox];
        v45 = v44;
        v47 = v46;
        v49 = v48;
        v51 = v50;
        searchSections = [v63 searchSections];
        v53 = [v43 initWithNormalizedBoundingBox:array2 regionAttributes:searchSections andSearchSections:{v45, v47, v49, v51}];
        [array addObject:v53];
      }

      v60 = [obj countByEnumeratingWithState:&v87 objects:v94 count:16];
    }

    while (v60);
  }

  request = self->_request;
  v55 = objc_alloc(MEMORY[0x1E69AE4A8]);
  userFeedbackPayload = [resultsCopy userFeedbackPayload];
  v57 = [v55 initWithResultItems:array andUserFeedbackPayload:userFeedbackPayload];
  v91 = v57;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
  [(MADVIVisualSearchRequest *)request setResults:v58];
}

- (int)run
{
  v36[1] = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIVisualSearchTask running...", buf, 2u);
  }

  v32 = 0;
  v31 = 0;
  if ([(VCPMADServiceImageAsset *)self->_imageAsset loadPixelBuffer:&v32 orientation:&v31])
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPMADVIVisualSearchTask image loading failed", buf, 2u);
    }

    request = self->_request;
    v4 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image loading failed"];
    v36[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v7 = [v4 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v6];
    [(MADVIVisualSearchRequest *)request setError:v7];

    v8 = 0;
  }

  else
  {
    v9 = +[VCPMADVIVisualSearchResource sharedResource];
    v10 = +[VCPMADResourceManager sharedManager];
    v6 = [v10 activateResource:v9];

    *buf = 0;
    v28 = buf;
    v29 = 0x2020000000;
    v30 = 0;
    v11 = dispatch_group_create();
    cancelQueue = self->_cancelQueue;
    v17 = MEMORY[0x1E69E9820];
    v18 = 3321888768;
    v19 = __31__VCPMADVIVisualSearchTask_run__block_invoke;
    v20 = &unk_1F4968EC0;
    selfCopy = self;
    v24 = buf;
    v13 = v11;
    v22 = v13;
    v25 = v32;
    if (v32)
    {
      CFRetain(v32);
    }

    v26 = v31;
    v5 = v9;
    v23 = v5;
    dispatch_sync(cancelQueue, &v17);
    dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    service = [v5 service];
    [service clearCacheWithOption:16];

    [v6 reset];
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v15 = *(v28 + 6);
      *v33 = 67109120;
      v34 = v15;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPMADVIVisualSearchTask complete (%d)", v33, 8u);
    }

    v8 = *(v28 + 6);

    CF<__CVBuffer *>::~CF(&v25);
    _Block_object_dispose(buf, 8);
  }

  CF<__CVBuffer *>::~CF(&v32);
  return v8;
}

void __31__VCPMADVIVisualSearchTask_run__block_invoke(uint64_t a1)
{
  v84[1] = *MEMORY[0x1E69E9840];
  v2 = atomic_load((*(a1 + 32) + 48));
  if (v2)
  {
    *(*(*(a1 + 56) + 8) + 24) = -128;
  }

  else
  {
    v73 = 0;
    v55 = [*(a1 + 32) createQueryContextWithError:&v73];
    v56 = a1;
    if (v55)
    {
      v3 = [*(*(a1 + 32) + 8) documentObservations];
      v4 = v3 == 0;

      if (!v4)
      {
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VisualSearch] Using client provided OCR results", &buf, 2u);
        }

        v5 = [*(*(v56 + 32) + 8) documentObservations];
        [*(*(v56 + 32) + 16) setDocumentObservations:v5];
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v79 = 0x3032000000;
      v80 = __Block_byref_object_copy__44;
      v81 = __Block_byref_object_dispose__44;
      v82 = objc_alloc_init(VCPTimeMeasurement);
      objc_msgSend_start(*(*(&buf + 1) + 40));
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __31__VCPMADVIVisualSearchTask_run__block_invoke_364;
      aBlock[3] = &unk_1E83501F0;
      v6 = *(v56 + 32);
      p_buf = &buf;
      aBlock[4] = v6;
      v72 = *(v56 + 56);
      v70 = *(v56 + 40);
      v54 = _Block_copy(aBlock);
      dispatch_group_enter(*(v56 + 40));
      v7 = [*(*(v56 + 32) + 8) gatingResultItems];
      v8 = [v7 count] == 0;

      if (v8)
      {
        v58 = [*(*(v56 + 32) + 16) vcp_annotationWithTypes:15];
        v27 = [MEMORY[0x1E69E04C8] queryWithPixelBuffer:*(v56 + 64) orientation:*(v56 + 72) normalizedRegionOfInterest:0.0 annotation:0.0 queryContext:{1.0, 1.0}];
        v45 = VCPSignPostLog(v27);
        v46 = os_signpost_id_generate(v45);

        v48 = VCPSignPostLog(v47);
        v49 = v48;
        if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
        {
          v50 = *(*(v56 + 32) + 24);
          *v74 = 138412290;
          v75 = v50;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v49, OS_SIGNPOST_INTERVAL_BEGIN, v46, "VIService_VisualSearch", "%@", v74, 0xCu);
        }

        v35 = [*(v56 + 48) service];
        v36 = v59;
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = __31__VCPMADVIVisualSearchTask_run__block_invoke_371;
        v59[3] = &unk_1E8350218;
        v51 = *(v56 + 32);
        v59[6] = v46;
        v59[7] = 0;
        v59[4] = v51;
        v59[5] = v54;
        v38 = [v35 searchWithVisualQuery:v27 completion:v59];
      }

      else
      {
        v58 = [MEMORY[0x1E695DF70] array];
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v9 = [*(*(v56 + 32) + 8) gatingResultItems];
        obj = v9;
        v10 = [v9 countByEnumeratingWithState:&v65 objects:v77 count:16];
        if (v10)
        {
          v11 = *v66;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v66 != v11)
              {
                objc_enumerationMutation(obj);
              }

              v13 = *(*(&v65 + 1) + 8 * i);
              v14 = [MEMORY[0x1E695DF70] array];
              v63 = 0u;
              v64 = 0u;
              v61 = 0u;
              v62 = 0u;
              v15 = [v13 domains];
              v16 = [v15 countByEnumeratingWithState:&v61 objects:v76 count:16];
              if (v16)
              {
                v17 = *v62;
                do
                {
                  for (j = 0; j != v16; ++j)
                  {
                    if (*v62 != v17)
                    {
                      objc_enumerationMutation(v15);
                    }

                    v19 = [*(*(&v61 + 1) + 8 * j) domain];
                    [v14 addObject:v19];
                  }

                  v16 = [v15 countByEnumeratingWithState:&v61 objects:v76 count:16];
                }

                while (v16);
              }

              v20 = objc_alloc(MEMORY[0x1E69E0458]);
              [v13 normalizedBoundingBox];
              v21 = [v20 initWithRegionOfInterest:v14 domains:?];
              [v58 addObject:v21];
            }

            v9 = obj;
            v10 = [obj countByEnumeratingWithState:&v65 objects:v77 count:16];
          }

          while (v10);
        }

        v22 = MEMORY[0x1E69E0468];
        v23 = *(v56 + 64);
        v24 = *(v56 + 72);
        v25 = [*(*(v56 + 32) + 16) vcp_textAnnotation];
        v26 = [*(*(v56 + 32) + 8) gatingPayload];
        v27 = [v22 queryWithPixelBuffer:v23 orientation:v24 imageRegions:v58 textBlockAnnotation:v25 queryContext:v55 payload:v26];

        v29 = VCPSignPostLog(v28);
        v30 = os_signpost_id_generate(v29);

        v32 = VCPSignPostLog(v31);
        v33 = v32;
        if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
        {
          v34 = *(*(v56 + 32) + 24);
          *v74 = 138412290;
          v75 = v34;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v33, OS_SIGNPOST_INTERVAL_BEGIN, v30, "VIService_ParsedVisualSearch", "%@", v74, 0xCu);
        }

        v35 = [*(v56 + 48) service];
        v36 = v60;
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __31__VCPMADVIVisualSearchTask_run__block_invoke_368;
        v60[3] = &unk_1E8350218;
        v37 = *(v56 + 32);
        v60[6] = v30;
        v60[7] = 0;
        v60[4] = v37;
        v60[5] = v54;
        v38 = [v35 searchWithParsedVisualQuery:v27 completion:v60];
      }

      v52 = *(v56 + 32);
      v53 = *(v52 + 56);
      *(v52 + 56) = v38;

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v39 = [v73 description];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v39;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPMADVIVisualSearchTask failed to create visual search query context (%@)", &buf, 0xCu);
      }

      v40 = *(*(a1 + 32) + 8);
      v41 = MEMORY[0x1E696ABC0];
      v83 = *MEMORY[0x1E696A578];
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create visual search query context"];
      v84[0] = v42;
      v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:&v83 count:1];
      v44 = [v41 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v43];
      [v40 setError:v44];
    }
  }
}

void __31__VCPMADVIVisualSearchTask_run__block_invoke_364(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  [*(*(*(a1 + 48) + 8) + 40) stop];
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = atomic_load(v6 + 48);
    if (v7)
    {
      *(*(*(a1 + 56) + 8) + 24) = -128;
    }

    else
    {
      [*(*(a1 + 32) + 8) setError:v5];
    }
  }

  else
  {
    [v6 storeResults:v11];
    v8 = [*(*(a1 + 32) + 8) results];
    v9 = [v8 firstObject];
    [*(*(*(a1 + 48) + 8) + 40) elapsedTimeSeconds];
    [v9 setExecutionNanoseconds:(v10 * 1000000000.0)];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __31__VCPMADVIVisualSearchTask_run__block_invoke_368(void *a1, void *a2, void *a3)
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
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_END, v9, "VIService_ParsedVisualSearch", "%@", &v12, 0xCu);
  }

  if (a1[7])
  {
    v11 = mach_absolute_time();
    VCPPerformance_LogMeasurement("VIService_ParsedVisualSearch", v11 - a1[7]);
  }

  (*(a1[5] + 16))();
}

void __31__VCPMADVIVisualSearchTask_run__block_invoke_371(void *a1, void *a2, void *a3)
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
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_END, v9, "VIService_VisualSearch", "%@", &v12, 0xCu);
  }

  if (a1[7])
  {
    v11 = mach_absolute_time();
    VCPPerformance_LogMeasurement("VIService_VisualSearch", v11 - a1[7]);
  }

  (*(a1[5] + 16))();
}

@end