@interface VCPWatchFaceAnalyzer
- (VCPWatchFaceAnalyzer)initWithOptions:(id)options;
- (int)analyzeAsset:(id)asset cancel:(id)cancel results:(id *)results;
@end

@implementation VCPWatchFaceAnalyzer

- (VCPWatchFaceAnalyzer)initWithOptions:(id)options
{
  optionsCopy = options;
  v10.receiver = self;
  v10.super_class = VCPWatchFaceAnalyzer;
  v6 = [(VCPWatchFaceAnalyzer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, options);
    v8 = v7;
  }

  return v7;
}

- (int)analyzeAsset:(id)asset cancel:(id)cancel results:(id *)results
{
  v76 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  cancelCopy = cancel;
  v9 = cancelCopy;
  if (!cancelCopy || ((cancelCopy[2])(cancelCopy) & 1) == 0)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    if ([defaultManager fileExistsAtPath:@"/tmp/com.apple.mediaanalysisd/"])
    {
      v42 = 0;
    }

    else
    {
      v57 = 0;
      v11 = [defaultManager createDirectoryAtPath:@"/tmp/com.apple.mediaanalysisd/" withIntermediateDirectories:1 attributes:0 error:&v57];
      v42 = v57;
      if ((v11 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v31 = [v42 description];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v31;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create resource file cache directory (%@)", &buf, 0xCu);
        }

        v10 = -18;
        goto LABEL_39;
      }
    }

    v12 = MEMORY[0x1E696AEC0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v41 = [v12 stringWithFormat:@"%@wf-%@", @"/tmp/com.apple.mediaanalysisd/", uUIDString];

    v44 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v41 isDirectory:1];
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v56 = 0;
    [defaultManager2 createDirectoryAtURL:v44 withIntermediateDirectories:1 attributes:0 error:&v56];
    v16 = v56;

    if (v16)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v16;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create directory for watchface export: %@", &buf, 0xCu);
      }

      v10 = -36;
      goto LABEL_38;
    }

    resultsCopy = results;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v68 = 0x3032000000;
    v69 = __Block_byref_object_copy__68;
    v70 = __Block_byref_object_dispose__68;
    v71 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__68;
    v54 = __Block_byref_object_dispose__68;
    v55 = 0;
    v18 = dispatch_semaphore_create(0);
    options = self->_options;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __52__VCPWatchFaceAnalyzer_analyzeAsset_cancel_results___block_invoke;
    v46[3] = &unk_1E8351848;
    p_buf = &buf;
    v49 = &v50;
    v20 = v18;
    v47 = v20;
    v21 = assetCopy;
    v22 = v44;
    v23 = options;
    v24 = v46;
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v25 = getPFLGeneratePhotosFaceWithOptionsSymbolLoc(void)::ptr;
    v61 = getPFLGeneratePhotosFaceWithOptionsSymbolLoc(void)::ptr;
    if (!getPFLGeneratePhotosFaceWithOptionsSymbolLoc(void)::ptr)
    {
      *&v72 = MEMORY[0x1E69E9820];
      *(&v72 + 1) = 3221225472;
      v73 = ___ZL44getPFLGeneratePhotosFaceWithOptionsSymbolLocv_block_invoke;
      v74 = &unk_1E834C0F0;
      v75 = &v58;
      v26 = PhotosFaceLayoutLibrary();
      v27 = dlsym(v26, "PFLGeneratePhotosFaceWithOptions");
      *(v75[1] + 24) = v27;
      getPFLGeneratePhotosFaceWithOptionsSymbolLoc(void)::ptr = *(v75[1] + 24);
      v25 = v59[3];
    }

    _Block_object_dispose(&v58, 8);
    if (v25)
    {
      v25(v21, v22, v23, v24);

      v28 = dispatch_time(0, 100000000);
      if (!dispatch_semaphore_wait(v20, v28))
      {
LABEL_19:
        if (*(*(&buf + 1) + 40))
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v30 = [*(*(&buf + 1) + 40) description];
            LODWORD(v72) = 138412290;
            *(&v72 + 4) = v30;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error running exportWatchFaceForAsset: %@", &v72, 0xCu);
          }
        }

        else
        {
          v32 = v51[5];
          if (v32)
          {
            v65 = @"WatchFaceResults";
            v62[0] = @"watchFacePath";
            v62[1] = @"watchFaceData";
            v63[0] = v41;
            v63[1] = v32;
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];
            v64 = v33;
            v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
            v66 = v34;
            *resultsCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];

            v10 = 0;
LABEL_37:

            _Block_object_dispose(&v50, 8);
            _Block_object_dispose(&buf, 8);

LABEL_38:
LABEL_39:

            goto LABEL_40;
          }

          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LOWORD(v72) = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Nil Photo Data for asset", &v72, 2u);
          }
        }

        v10 = -18;
        goto LABEL_37;
      }

      while (!v9 || !v9[2](v9))
      {
        v29 = dispatch_time(0, 100000000);
        if (!dispatch_semaphore_wait(v20, v29))
        {
          goto LABEL_19;
        }
      }

      v35 = v21;
      v58 = 0;
      v59 = &v58;
      v60 = 0x2020000000;
      v36 = getPFLCancelGeneratingPhotosFaceForAssetSymbolLoc(void)::ptr;
      v61 = getPFLCancelGeneratingPhotosFaceForAssetSymbolLoc(void)::ptr;
      if (!getPFLCancelGeneratingPhotosFaceForAssetSymbolLoc(void)::ptr)
      {
        *&v72 = MEMORY[0x1E69E9820];
        *(&v72 + 1) = 3221225472;
        v73 = ___ZL49getPFLCancelGeneratingPhotosFaceForAssetSymbolLocv_block_invoke;
        v74 = &unk_1E834C0F0;
        v75 = &v58;
        v37 = PhotosFaceLayoutLibrary();
        v38 = dlsym(v37, "PFLCancelGeneratingPhotosFaceForAsset");
        *(v75[1] + 24) = v38;
        getPFLCancelGeneratingPhotosFaceForAssetSymbolLoc(void)::ptr = *(v75[1] + 24);
        v36 = v59[3];
      }

      _Block_object_dispose(&v58, 8);
      if (v36)
      {
        v36(v35);

        v10 = -128;
        goto LABEL_37;
      }
    }

    v40 = dlerror();
    abort_report_np("%s", v40);
    __break(1u);
  }

  v10 = -128;
LABEL_40:

  return v10;
}

void __52__VCPWatchFaceAnalyzer_analyzeAsset_cancel_results___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

@end