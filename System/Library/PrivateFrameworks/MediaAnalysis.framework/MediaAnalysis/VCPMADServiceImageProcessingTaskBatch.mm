@interface VCPMADServiceImageProcessingTaskBatch
+ (id)taskWithCloudIdentifierRequests:(id)requests photoLibrary:(id)library clientBundleID:(id)d clientTeamID:(id)iD cancelBlock:(id)block andCompletionHandler:(id)handler;
- (BOOL)run:(id *)run;
- (VCPMADServiceImageProcessingTaskBatch)initWithCloudIdentifierRequests:(id)requests photoLibrary:(id)library clientBundleID:(id)d clientTeamID:(id)iD cancelBlock:(id)block andCompletionHandler:(id)handler;
- (id)assetWithIdentifier:(id)identifier isCloudIdentifier:(BOOL)cloudIdentifier error:(id *)error;
@end

@implementation VCPMADServiceImageProcessingTaskBatch

- (VCPMADServiceImageProcessingTaskBatch)initWithCloudIdentifierRequests:(id)requests photoLibrary:(id)library clientBundleID:(id)d clientTeamID:(id)iD cancelBlock:(id)block andCompletionHandler:(id)handler
{
  requestsCopy = requests;
  libraryCopy = library;
  dCopy = d;
  iDCopy = iD;
  blockCopy = block;
  handlerCopy = handler;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __147__VCPMADServiceImageProcessingTaskBatch_initWithCloudIdentifierRequests_photoLibrary_clientBundleID_clientTeamID_cancelBlock_andCompletionHandler___block_invoke;
  v27[3] = &unk_1E834C7A0;
  v20 = handlerCopy;
  v28 = v20;
  v26.receiver = self;
  v26.super_class = VCPMADServiceImageProcessingTaskBatch;
  v21 = [(VCPMABaseTask *)&v26 initWithCompletionHandler:v27];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_requests, requests);
    objc_storeStrong(&v22->_photolibrary, library);
    objc_storeStrong(&v22->_clientBundleID, d);
    objc_storeStrong(&v22->_clientTeamID, iD);
    signpostPayload = v22->_signpostPayload;
    v22->_signpostPayload = &stru_1F496CB30;

    [(VCPMABaseTask *)v22 setCancelBlock:blockCopy, requestsCopy];
  }

  return v22;
}

+ (id)taskWithCloudIdentifierRequests:(id)requests photoLibrary:(id)library clientBundleID:(id)d clientTeamID:(id)iD cancelBlock:(id)block andCompletionHandler:(id)handler
{
  requestsCopy = requests;
  libraryCopy = library;
  dCopy = d;
  iDCopy = iD;
  blockCopy = block;
  handlerCopy = handler;
  v19 = [objc_alloc(objc_opt_class()) initWithCloudIdentifierRequests:requestsCopy photoLibrary:libraryCopy clientBundleID:dCopy clientTeamID:iDCopy cancelBlock:blockCopy andCompletionHandler:handlerCopy];

  return v19;
}

- (id)assetWithIdentifier:(id)identifier isCloudIdentifier:(BOOL)cloudIdentifier error:(id *)error
{
  cloudIdentifierCopy = cloudIdentifier;
  v31 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v9 = objc_autoreleasePoolPush();
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v30 = identifierCopy;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPMADServiceImageProcessing] Fetching Photos asset with identifier %@", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E6978838] fetchOptionsWithInclusiveDefaultsForPhotoLibrary:self->_photolibrary];
  [v10 setIncludeHiddenAssets:1];
  [v10 setIncludeTrashedAssets:1];
  [v10 setIncludeGuestAssets:1];
  v11 = *MEMORY[0x1E6978CA0];
  v28[0] = *MEMORY[0x1E6978BF8];
  v28[1] = v11;
  v12 = *MEMORY[0x1E6978C98];
  v28[2] = *MEMORY[0x1E6978CE8];
  v28[3] = v12;
  v28[4] = *MEMORY[0x1E6978D20];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:5];
  [v10 addFetchPropertySets:v13];

  v14 = MEMORY[0x1E6978628];
  if (cloudIdentifierCopy)
  {
    v27 = identifierCopy;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    v16 = [v14 fetchAssetsWithCloudIdentifiers:v15 options:v10];
  }

  else
  {
    v26 = identifierCopy;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v16 = [v14 fetchAssetsWithLocalIdentifiers:v15 options:v10];
  }

  v17 = v16;

  if ([v17 count])
  {
    if ([v17 count] >= 2 && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = identifierCopy;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VCPMADServiceImageProcessing] Fetch returned multiple assets for identifier (%@)", buf, 0xCu);
    }

    error = [v17 objectAtIndexedSubscript:0];
  }

  else if (error)
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[VCPMADServiceImageProcessing] Specified identifier not found (%@)", identifierCopy, *MEMORY[0x1E696A578]];
    v25 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v21 = [v18 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v20];
    v22 = *error;
    *error = v21;

    error = 0;
  }

  objc_autoreleasePoolPop(v9);

  return error;
}

- (BOOL)run:(id *)run
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = VCPSignPostLog(self);
  spid = os_signpost_id_generate(v4);

  v6 = VCPSignPostLog(v5);
  v7 = v6;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    signpostPayload = self->_signpostPayload;
    *buf = 138412290;
    *v61 = signpostPayload;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v7, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADServiceImageProcessingTaskBatch_Run", "%@", buf, 0xCu);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [(NSDictionary *)self->_requests allKeys];
  v9 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (v9)
  {
    v45 = 0;
    v10 = MEMORY[0x1E69E9C10];
    v43 = *v54;
    v39 = *MEMORY[0x1E696A768];
    v40 = *MEMORY[0x1E696A578];
    while (2)
    {
      v11 = 0;
      v44 = v9;
      do
      {
        if (*v54 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v53 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v52 = 0;
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109378;
          v45 = (v45 + 1);
          *v61 = v45;
          *&v61[4] = 2112;
          *&v61[6] = v12;
          _os_log_impl(&dword_1C9B70000, v10, OS_LOG_TYPE_DEBUG, "[ImageProcessingTask%d] Build task for asset (%@)", buf, 0x12u);
        }

        v14 = [(VCPMADServiceImageProcessingTaskBatch *)self assetWithIdentifier:v12 isCloudIdentifier:1 error:&v52];
        if (v14)
        {
          v15 = [VCPMADServiceImageAsset assetWithPhotosAsset:v14 clientBundleID:self->_clientBundleID clientTeamID:self->_clientTeamID];
          v16 = [(NSDictionary *)self->_requests objectForKeyedSubscript:v12];
          cancelBlock = [(VCPMABaseTask *)self cancelBlock];
          v46[0] = MEMORY[0x1E69E9820];
          v46[1] = 3221225472;
          v46[2] = __45__VCPMADServiceImageProcessingTaskBatch_run___block_invoke;
          v46[3] = &unk_1E834E458;
          v47 = v45;
          v46[4] = v12;
          v18 = [VCPMADServiceImageProcessingTask taskWithRequests:v16 forAsset:v15 cancelBlock:cancelBlock andCompletionHandler:v46];

          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ImageProcessingTask%d] Identifier %@", v45, v12];
          [v18 setSignpostPayload:v19];

          v20 = [v18 run];
          v21 = v20;
          if (v20)
          {
            if (v20 == -128)
            {
              if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_1C9B70000, v10, OS_LOG_TYPE_INFO, "Request canceled", buf, 2u);
              }

              if (run)
              {
                v22 = MEMORY[0x1E696ABC0];
                v57 = v40;
                v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request was canceled"];
                v58 = v23;
                v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
                v25 = [v22 errorWithDomain:v39 code:-128 userInfo:v24];
                v26 = *run;
                *run = v25;
              }

              v21 = 1;
            }

            else
            {
              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                v30 = objc_opt_class();
                v31 = NSStringFromClass(v30);
                *buf = 138412546;
                *v61 = v31;
                *&v61[8] = 1024;
                *&v61[10] = v21;
                _os_log_impl(&dword_1C9B70000, v10, OS_LOG_TYPE_DEFAULT, "%@ returned unexpected status (%d)", buf, 0x12u);
              }

              v21 = 0;
            }
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109634;
            *v61 = v45;
            *&v61[4] = 2112;
            *&v61[6] = v12;
            v62 = 2112;
            v63 = v52;
            _os_log_impl(&dword_1C9B70000, v10, OS_LOG_TYPE_ERROR, "[ImageProcessingTask%d] Failed to fetch asset (%@) - %@", buf, 0x1Cu);
          }

          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v15 = [(NSDictionary *)self->_requests objectForKeyedSubscript:v12];
          v27 = [v15 countByEnumeratingWithState:&v48 objects:v59 count:16];
          if (v27)
          {
            v28 = *v49;
            do
            {
              for (i = 0; i != v27; ++i)
              {
                if (*v49 != v28)
                {
                  objc_enumerationMutation(v15);
                }

                [*(*(&v48 + 1) + 8 * i) setError:v52];
              }

              v27 = [v15 countByEnumeratingWithState:&v48 objects:v59 count:16];
            }

            while (v27);
          }

          v21 = 3;
        }

        objc_autoreleasePoolPop(v13);
        if (v21 != 3 && v21)
        {
          v36 = 0;
          goto LABEL_46;
        }

        ++v11;
      }

      while (v11 != v44);
      v9 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v33 = VCPSignPostLog(v32);
  v34 = v33;
  if (spid - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v33))
  {
    v35 = self->_signpostPayload;
    *buf = 138412290;
    *v61 = v35;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v34, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADServiceImageProcessingTaskBatch_Run", "%@", buf, 0xCu);
  }

  obj = [(VCPMABaseTask *)self completionHandler];
  (*(obj + 2))(obj, 0, 0);
  v36 = 1;
LABEL_46:

  return v36;
}

void __45__VCPMADServiceImageProcessingTaskBatch_run___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 32);
      v12 = 67109634;
      v13 = v4;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v3;
      v6 = MEMORY[0x1E69E9C10];
      v7 = "[ImageProcessingTask%d] Failed to process asset (%@) - %@";
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 28;
LABEL_8:
      _os_log_impl(&dword_1C9B70000, v6, v8, v7, &v12, v9);
    }
  }

  else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 32);
    v12 = 67109378;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "[ImageProcessingTask%d] Finished processing asset (%@)";
    v8 = OS_LOG_TYPE_DEBUG;
    v9 = 18;
    goto LABEL_8;
  }
}

@end