@interface VCPImageCaptionAnalyzer
+ (id)sharedCSUCaptionerWithConfig:(id)config identifier:(id)identifier;
+ (id)sharedCVNLPCaptionHandlerWithOptions:(id)options identifier:(id)identifier;
- (BOOL)containPotentialUnsafeContent:(__CVBuffer *)content;
- (VCPImageCaptionAnalyzer)initWithCaptionModelType:(int64_t)type captionSafetyType:(int64_t)safetyType useSharedModel:(BOOL)model;
- (int)analyzeEmbedding:(id)embedding flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel;
- (int)analyzePixelBuffer:(__CVBuffer *)buffer flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel;
- (void)dealloc;
@end

@implementation VCPImageCaptionAnalyzer

- (VCPImageCaptionAnalyzer)initWithCaptionModelType:(int64_t)type captionSafetyType:(int64_t)safetyType useSharedModel:(BOOL)model
{
  v66[5] = *MEMORY[0x1E69E9840];
  v62.receiver = self;
  v62.super_class = VCPImageCaptionAnalyzer;
  v8 = [(VCPImageCaptionAnalyzer *)&v62 init];
  v9 = v8;
  if (!v8)
  {
    v14 = 0;
LABEL_61:
    v29 = v14;
    goto LABEL_62;
  }

  v8->_modelType = type;
  v8->_safetyType = safetyType;
  v8->_rescaledImageBuffer = 0;
  v8->_useSharedModel = model;
  v10 = +[VCPVideoTransformerBackbone revision];
  v9->_backboneRevision = v10;
  modelType = v9->_modelType;
  if (modelType <= 2)
  {
    if (modelType != 1)
    {
      if (modelType != 2)
      {
        goto LABEL_19;
      }

      v15 = +[VCPMobileAssetManager sharedManager];
      v16 = [v15 retrieveAssetOnce:1 petWatchDog:0 cancelBlock:0];

      if (!v16)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] VCPMobileAsset_ImageCaption_AX_CSU model download failed", buf, 2u);
        }

        v21 = 0;
LABEL_57:

        goto LABEL_58;
      }

      v17 = [v16 URLByAppendingPathComponent:@"ImageCaptioning.config.json"];
      v18 = MEMORY[0x1E6999118];
      path = [v17 path];
      v55 = 0;
      v20 = [v18 createCSUImageCaptionerConfigurationWithConfigPath:path error:&v55];
      v21 = v55;
      captionerConfig = v9->_captionerConfig;
      v9->_captionerConfig = v20;

      v23 = @"CSUImageCaptioner_AX_CSU";
LABEL_32:

LABEL_33:
      if (v9->_captionerConfig)
      {
        v33 = v21 == 0;
      }

      else
      {
        v33 = 0;
      }

      if (v33)
      {
        if (v9->_useSharedModel)
        {
          v34 = [objc_opt_class() sharedCSUCaptionerWithConfig:v9->_captionerConfig identifier:v23];
        }

        else
        {
          v34 = [objc_alloc(MEMORY[0x1E6999110]) initWithConfiguration:v9->_captionerConfig];
        }

        imageCaptioner = v9->_imageCaptioner;
        v9->_imageCaptioner = v34;
      }

      if (v9->_imageCaptioner)
      {
        goto LABEL_43;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v36 = [v21 description];
        v37 = v36;
        uTF8String = [v36 UTF8String];
        *buf = 136315138;
        typeCopy = uTF8String;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Failed to create CSUImageCaptioner: (%s)", buf, 0xCu);
      }

      goto LABEL_57;
    }

    if ([objc_opt_class() useVCPMobileAssetAXCaptionModel])
    {
      v28 = +[VCPMobileAssetManager sharedManager];
      v21 = [v28 retrieveAssetOnce:0 petWatchDog:0 cancelBlock:0];
    }

    else
    {
      mEMORY[0x1E6988C48] = [MEMORY[0x1E6988C48] sharedInstance];
      v28 = [mEMORY[0x1E6988C48] modelURLForType:0 timeout:0.5];

      if (!v28)
      {
        if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }

        *buf = 0;
        v53 = MEMORY[0x1E69E9C10];
        v54 = "[ImageCaption] Accessibility image caption model mobile asset not available";
        goto LABEL_75;
      }

      v40 = +[VCPMobileAssetManager sharedManager];
      v21 = [v40 cloneAsset:v28 to:@"ClonedImageCaptionModel"];
    }

    if (v21)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      path2 = [v21 path];
      v43 = [defaultManager fileExistsAtPath:path2];

      if (v43)
      {
        v44 = *MEMORY[0x1E6991F70];
        v65[0] = *MEMORY[0x1E6991F78];
        v65[1] = v44;
        v66[0] = v21;
        v66[1] = @"en-US";
        v45 = *MEMORY[0x1E6991F88];
        v65[2] = *MEMORY[0x1E6991F60];
        v65[3] = v45;
        v46 = *MEMORY[0x1E6991F80];
        v66[2] = &unk_1F49BE650;
        v66[3] = v46;
        v65[4] = *MEMORY[0x1E6991F68];
        v66[4] = MEMORY[0x1E695E110];
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:5];
        v48 = MEMORY[0x1E696AEC0];
        absoluteString = [v21 absoluteString];
        v50 = [v48 stringWithFormat:@"%@_%@", @"CVNLPImageCaptionHandler", absoluteString];

        if (v9->_useSharedModel)
        {
          v51 = [objc_opt_class() sharedCVNLPCaptionHandlerWithOptions:v47 identifier:v50];
        }

        else
        {
          v51 = CVNLPCaptionHandlerCreate();
        }

        v9->_captionHandlerRef = v51;
        if (v51)
        {

LABEL_43:
          v14 = v9;
LABEL_60:

          goto LABEL_61;
        }

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Failed to create CVNLPCaptionHandlerRef", buf, 2u);
        }
      }

      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Local image caption model not exists", buf, 2u);
      }

LABEL_59:
      v14 = 0;
      goto LABEL_60;
    }

    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_58:
      v21 = 0;
      goto LABEL_59;
    }

    *buf = 0;
    v53 = MEMORY[0x1E69E9C10];
    v54 = "[ImageCaption] Fail cloning image caption model to local path";
LABEL_75:
    _os_log_impl(&dword_1C9B70000, v53, OS_LOG_TYPE_ERROR, v54, buf, 2u);
    goto LABEL_58;
  }

  switch(modelType)
  {
    case 3:
      if ((v10 - 5) >= 2)
      {
        if (v10 != 7)
        {
          v21 = 0;
          v23 = @"CSUImageCaptioner_MiCa";
          goto LABEL_33;
        }

        v61 = 0;
        v24 = &v61;
        v25 = [MEMORY[0x1E6999118] CSUImageCaptionerConfigurationForRevision:9 error:&v61];
      }

      else
      {
        v60 = 0;
        v24 = &v60;
        v25 = [MEMORY[0x1E6999118] CSUImageCaptionerConfigurationForRevision:6 error:&v60];
      }

      v30 = v25;
      v21 = *v24;
      v16 = v9->_captionerConfig;
      v9->_captionerConfig = v30;
      v23 = @"CSUImageCaptioner_MiCa";
      goto LABEL_32;
    case 4:
      if ((v10 - 5) >= 2)
      {
        if (v10 != 7)
        {
          v21 = 0;
          v23 = @"CSUImageCaptioner_MiCa_SafeCaption";
          goto LABEL_33;
        }

        v59 = 0;
        v26 = &v59;
        v27 = [MEMORY[0x1E6999118] CSUImageCaptionerConfigurationForRevision:10 error:&v59];
      }

      else
      {
        v58 = 0;
        v26 = &v58;
        v27 = [MEMORY[0x1E6999118] CSUImageCaptionerConfigurationForRevision:7 error:&v58];
      }

      v31 = v27;
      v21 = *v26;
      v16 = v9->_captionerConfig;
      v9->_captionerConfig = v31;
      v23 = @"CSUImageCaptioner_MiCa_SafeCaption";
      goto LABEL_32;
    case 5:
      if ((v10 - 5) >= 2)
      {
        if (v10 != 7)
        {
          v21 = 0;
          v23 = @"CSUImageCaptioner_MiCa_GP";
          goto LABEL_33;
        }

        v57 = 0;
        v12 = &v57;
        v13 = [MEMORY[0x1E6999118] CSUImageCaptionerConfigurationForRevision:11 error:&v57];
      }

      else
      {
        v56 = 0;
        v12 = &v56;
        v13 = [MEMORY[0x1E6999118] CSUImageCaptionerConfigurationForRevision:8 error:&v56];
      }

      v32 = v13;
      v21 = *v12;
      v16 = v9->_captionerConfig;
      v9->_captionerConfig = v32;
      v23 = @"CSUImageCaptioner_MiCa_GP";
      goto LABEL_32;
  }

LABEL_19:
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Init fails with unsupported MADImageCaptionModelType: %ld", buf, 0xCu);
  }

  v29 = 0;
LABEL_62:

  return v29;
}

- (void)dealloc
{
  rescaledImageBuffer = self->_rescaledImageBuffer;
  if (rescaledImageBuffer)
  {
    CFRelease(rescaledImageBuffer);
    self->_rescaledImageBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = VCPImageCaptionAnalyzer;
  [(VCPImageCaptionAnalyzer *)&v4 dealloc];
}

+ (id)sharedCSUCaptionerWithConfig:(id)config identifier:(id)identifier
{
  configCopy = config;
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (configCopy && identifierCopy)
  {
    v8 = +[VCPSharedInstanceManager sharedManager];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__VCPImageCaptionAnalyzer_sharedCSUCaptionerWithConfig_identifier___block_invoke;
    v11[3] = &unk_1E83522D8;
    v12 = v7;
    v13 = configCopy;
    v9 = [v8 sharedInstanceWithIdentifier:v12 andCreationBlock:v11];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Initiating captioner with nil config or identifier", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

id __67__VCPImageCaptionAnalyzer_sharedCSUCaptionerWithConfig_identifier___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v6 = 138412546;
    v7 = v2;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[ImageCaption] Initiating captioner:%@ with config:%@", &v6, 0x16u);
  }

  v4 = [objc_alloc(MEMORY[0x1E6999110]) initWithConfiguration:*(a1 + 40)];

  return v4;
}

+ (id)sharedCVNLPCaptionHandlerWithOptions:(id)options identifier:(id)identifier
{
  optionsCopy = options;
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (optionsCopy && identifierCopy)
  {
    v8 = +[VCPSharedInstanceManager sharedManager];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__VCPImageCaptionAnalyzer_sharedCVNLPCaptionHandlerWithOptions_identifier___block_invoke;
    v11[3] = &unk_1E8350188;
    v12 = optionsCopy;
    v9 = [v8 sharedInstanceWithIdentifier:v7 andCreationBlock:v11];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Initiating CVNLPCaptionHandler with nil options or identifier", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

id __75__VCPImageCaptionAnalyzer_sharedCVNLPCaptionHandlerWithOptions_identifier___block_invoke(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[ImageCaption] Initiating CVNLPCaptionHandler", v3, 2u);
  }

  v1 = CVNLPCaptionHandlerCreate();

  return v1;
}

- (BOOL)containPotentialUnsafeContent:(__CVBuffer *)content
{
  v77[2] = *MEMORY[0x1E69E9840];
  if (self->_safetyType != 1)
  {
    return 0;
  }

  v4 = *MEMORY[0x1E69CA830];
  v76[0] = *MEMORY[0x1E69CA820];
  v76[1] = v4;
  v77[0] = MEMORY[0x1E695E118];
  v77[1] = &unk_1F49BE668;
  v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:2];
  v66 = 0;
  v53 = [objc_alloc(MEMORY[0x1E69CA710]) initWithOptions:v55 error:0];
  v5 = [v53 classifyPixelBuffer:content error:&v66];
  v56 = COERCE_DOUBLE(v66);
  if (v56 != 0.0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v69 = v56;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Error calling into SCML: %@", buf, 0xCu);
  }

  if (v5 != 1)
  {
    v52 = objc_alloc_init(MEMORY[0x1E69843F0]);
    [v52 setRevision:2];
    v51 = objc_alloc_init(MEMORY[0x1E69846B0]);
    v6 = objc_alloc_init(MEMORY[0x1E6984440]);
    v65 = 0;
    v7 = [v6 setRevision:3737841669 error:&v65];
    v49 = v65;
    if ((v7 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Failed to set revision for meme identification", buf, 2u);
      }

      v6 = 0;
    }

    v47 = v6;
    v8 = objc_alloc(MEMORY[0x1E69845B8]);
    v48 = [v8 initWithCVPixelBuffer:content orientation:1 options:MEMORY[0x1E695E0F8]];
    v75[0] = v52;
    v75[1] = v51;
    v75[2] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:3];
    [v48 performRequests:v9 error:0];

    array = [MEMORY[0x1E695DF70] array];
    results = [v52 results];
    [array addObjectsFromArray:results];

    results2 = [v51 results];
    [array addObjectsFromArray:results2];

    v12 = *MEMORY[0x1E69849F8];
    v73[0] = *MEMORY[0x1E6984750];
    v73[1] = v12;
    v74[0] = &unk_1F49BB2A8;
    v74[1] = &unk_1F49BB2B8;
    v13 = *MEMORY[0x1E6984848];
    v73[2] = *MEMORY[0x1E6984780];
    v73[3] = v13;
    v74[2] = &unk_1F49BB2C8;
    v74[3] = &unk_1F49BB2D8;
    v14 = *MEMORY[0x1E6984730];
    v73[4] = *MEMORY[0x1E6984A18];
    v73[5] = v14;
    v74[4] = &unk_1F49BB2E8;
    v74[5] = &unk_1F49BB2E8;
    v15 = *MEMORY[0x1E6984748];
    v73[6] = *MEMORY[0x1E6984A38];
    v73[7] = v15;
    v74[6] = &unk_1F49BB2F8;
    v74[7] = &unk_1F49BB2F8;
    v73[8] = *MEMORY[0x1E6984868];
    v74[8] = &unk_1F49BB2D8;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:9];
    allKeys = [v16 allKeys];
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v18 = array;
    v19 = [v18 countByEnumeratingWithState:&v61 objects:v72 count:16];
    if (v19)
    {
      v20 = *v62;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v62 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v61 + 1) + 8 * i);
          identifier = [v22 identifier];
          [v22 confidence];
          v25 = v24;
          v26 = [v16 objectForKeyedSubscript:identifier];
          [v26 floatValue];
          v28 = v27;

          v29 = [allKeys containsObject:identifier];
          if (v25 > v28)
          {
            v30 = v29;
          }

          else
          {
            v30 = 0;
          }

          if (v30)
          {
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              *buf = 134218240;
              v69 = v25;
              v70 = 2048;
              v71 = v28;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[ImageCaption] This image looks unsafe with confidence %f/%f. Don't caption this image.", buf, 0x16u);
            }

            obj = v18;
            goto LABEL_47;
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v61 objects:v72 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    results3 = [v47 results];
    v32 = [results3 countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v32)
    {
      obj = results3;
      v33 = *v58;
LABEL_29:
      v34 = 0;
      while (1)
      {
        if (*v58 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v57 + 1) + 8 * v34);
        identifier = [v35 identifier];
        [v35 confidence];
        v37 = v36;
        v38 = [&unk_1F49BF238 containsObject:identifier];
        v39 = v37 > 0.2 ? v38 : 0;
        if (v39 == 1)
        {
          break;
        }

        v40 = [&unk_1F49BF250 containsObject:identifier];
        if (v37 > 0.15)
        {
          v41 = v40;
        }

        else
        {
          v41 = 0;
        }

        if (v41 == 1)
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            v44 = MEMORY[0x1E69E9C10];
            v45 = "[ImageCaption] The junk filter has determined that this image might be sensitive. Don't caption this image.";
            v46 = 2;
            goto LABEL_59;
          }

          goto LABEL_47;
        }

        if (v32 == ++v34)
        {
          v32 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
          v42 = 1;
          if (v32)
          {
            goto LABEL_29;
          }

          goto LABEL_48;
        }
      }

      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v69 = v37;
        v44 = MEMORY[0x1E69E9C10];
        v45 = "[ImageCaption] This image looks to be of low quality (confidence: %f). Don't caption this image.";
        v46 = 12;
LABEL_59:
        _os_log_impl(&dword_1C9B70000, v44, OS_LOG_TYPE_INFO, v45, buf, v46);
      }

LABEL_47:

      v42 = 0;
LABEL_48:
      results3 = obj;
    }

    else
    {
      v42 = 1;
    }

    return (v42 & 1) == 0;
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[ImageCaption] This image is sensitive per SCML. Don't caption this image.", buf, 2u);
  }

  return 1;
}

- (int)analyzePixelBuffer:(__CVBuffer *)buffer flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel
{
  v160[1] = *MEMORY[0x1E69E9840];
  cancelCopy = cancel;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ImageCaption] Computing image caption with pixelBuffer", buf, 2u);
  }

  if (!cancelCopy || !cancelCopy[2](cancelCopy))
  {
    v11 = [(VCPImageCaptionAnalyzer *)self containPotentialUnsafeContent:buffer];
    if (v11)
    {
      v159 = @"ImageCaptionResults";
      v156 = @"attributes";
      v154 = @"imageCaptionUnsafeContent";
      v12 = [MEMORY[0x1E696AD98] numberWithBool:1];
      v155 = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
      v157 = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
      v158 = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v158 count:1];
      v160[0] = v15;
      *results = [MEMORY[0x1E695DF20] dictionaryWithObjects:v160 forKeys:&v159 count:1];

      v10 = 0;
      goto LABEL_117;
    }

    modelType = self->_modelType;
    if ((modelType - 3) >= 3)
    {
      if (modelType != 2)
      {
        if (modelType == 1)
        {
          resultsCopy3 = results;
          *buf = 0;
          v23 = VCPSignPostLog(v11);
          v24 = os_signpost_id_generate(v23);

          v26 = VCPSignPostLog(v25);
          v27 = v26;
          v28 = v24 - 1;
          if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
          {
            *v129 = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v24, "VCPImageCaptionAnalyzer_AX_CVNLP_Inference", "", v129, 2u);
          }

          v29 = CVNLPCaptionCopyForCVPixelBuffer();
          v30 = [v29 objectForKeyedSubscript:*MEMORY[0x1E6991F90]];
          firstObject = [v30 firstObject];

          if (!firstObject)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v129 = 0;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] No image caption result generated", v129, 2u);
            }

            v35 = 0;
            v33 = 0;
            goto LABEL_81;
          }

          spid = v24;
          caption = [firstObject objectForKeyedSubscript:*MEMORY[0x1E6991F98]];
          v33 = [firstObject objectForKeyedSubscript:*MEMORY[0x1E6991FA8]];
          v34 = [firstObject objectForKeyedSubscript:*MEMORY[0x1E6991FA0]];
          bOOLValue = [v34 BOOLValue];

          v35 = [v29 objectForKeyedSubscript:*MEMORY[0x1E6991FB0]];
          v36 = VCPSignPostLog(v35);
          v37 = v36;
          if (v28 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
          {
            *v129 = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v37, OS_SIGNPOST_INTERVAL_END, spid, "VCPImageCaptionAnalyzer_AX_CVNLP_Inference", "", v129, 2u);
          }

LABEL_28:
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            v38 = self->_modelType;
            *buf = 134218498;
            *&buf[4] = v38;
            v148 = 2112;
            v149 = caption;
            v150 = 2112;
            v151 = v33;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ImageCaption] image caption modelType:%lu, text:%@, score:%@", buf, 0x20u);
          }

          if (caption)
          {
            if (v33)
            {
              v145[0] = @"imageCaptionText";
              v145[1] = @"imageCaptionConfidence";
              v146[0] = caption;
              v146[1] = v33;
              v145[2] = @"imageCaptionUnsafeContent";
              v39 = [MEMORY[0x1E696AD98] numberWithBool:0];
              v146[2] = v39;
              v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v146 forKeys:v145 count:3];
              v41 = [v40 mutableCopy];

              v42 = self->_modelType;
              if ((v42 - 3) >= 3)
              {
                if (v42 == 2)
                {
                  v138 = @"ImageCaptionResults";
                  v135 = @"attributes";
                  v136 = v41;
                  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
                  v137 = v43;
                  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v137 count:1];
                  v139 = v44;
                  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
                }

                else
                {
                  if (v42 != 1)
                  {
LABEL_138:

                    v10 = 0;
                    goto LABEL_116;
                  }

                  v90 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
                  [v41 setObject:v90 forKeyedSubscript:@"imageCaptionLowConfidence"];

                  [v41 setObject:v35 forKeyedSubscript:@"classificationIdentifiers"];
                  v143 = @"ImageCaptionResults";
                  v140 = @"attributes";
                  v141 = v41;
                  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
                  v142 = v43;
                  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v142 count:1];
                  v144 = v44;
                  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
                }
              }

              else
              {
                v133 = @"MiCaImageCaptionResults";
                v130 = @"attributes";
                v131 = v41;
                v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
                v132 = v43;
                v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v132 count:1];
                v134 = v44;
                v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
              }

              *resultsCopy3 = v45;

              goto LABEL_138;
            }

            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] No caption confidence score text generated", buf, 2u);
            }

            v33 = 0;
LABEL_90:
            v10 = -18;
LABEL_116:

            goto LABEL_117;
          }

          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] No caption text generated", buf, 2u);
          }

LABEL_81:
          caption = 0;
          goto LABEL_90;
        }

        v22 = 0;
        v21 = 0;
        goto LABEL_52;
      }

      resultsCopy3 = results;
      rescaledImageBuffer = self->_rescaledImageBuffer;
      if (rescaledImageBuffer)
      {
        goto LABEL_46;
      }

      captioningEncoderConfiguration = [(CSUImageCaptionerConfiguration *)self->_captionerConfig captioningEncoderConfiguration];
      inputPixelBufferDescriptor = [captioningEncoderConfiguration inputPixelBufferDescriptor];

      width = [inputPixelBufferDescriptor width];
      height = [inputPixelBufferDescriptor height];
      LODWORD(captioningEncoderConfiguration) = [inputPixelBufferDescriptor pixelFormat];
      bytesPerRowAlignment = [inputPixelBufferDescriptor bytesPerRowAlignment];
      [inputPixelBufferDescriptor isIOSurfaceBacked];
      v60 = *MEMORY[0x1E6966020];
      v152[0] = *MEMORY[0x1E69660D8];
      v152[1] = v60;
      v153[0] = MEMORY[0x1E695E0F8];
      v61 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:bytesPerRowAlignment];
      v153[1] = v61;
      v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v153 forKeys:v152 count:2];

      if (CVPixelBufferCreate(0, width, height, captioningEncoderConfiguration, v62, &self->_rescaledImageBuffer))
      {
        v63 = self->_rescaledImageBuffer;
        if (v63)
        {
          CFRelease(v63);
          self->_rescaledImageBuffer = 0;
        }
      }

      rescaledImageBuffer = self->_rescaledImageBuffer;
      if (rescaledImageBuffer)
      {
LABEL_46:
        imageCaptioner = self->_imageCaptioner;
        v128 = 0;
        [(CSUImageCaptioner *)imageCaptioner resampleImage:buffer intoInputImage:rescaledImageBuffer error:&v128];
        v65 = v128;
        if (v65)
        {
          v22 = v65;
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v66 = [v22 description];
            v67 = v66;
            uTF8String = [v66 UTF8String];
            *buf = 136315138;
            *&buf[4] = uTF8String;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Failed to resample input pixelBuffer: (%s)", buf, 0xCu);
          }

          v21 = 0;
          goto LABEL_96;
        }

        if (cancelCopy)
        {
          v65 = cancelCopy[2](cancelCopy);
          if (v65)
          {
LABEL_17:
            v21 = 0;
            v22 = 0;
            v10 = -128;
LABEL_115:

            v35 = 0;
            v33 = 0;
            caption = 0;
            goto LABEL_116;
          }
        }

        v82 = VCPSignPostLog(v65);
        v83 = os_signpost_id_generate(v82);

        v85 = VCPSignPostLog(v84);
        v86 = v85;
        if (v83 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v85))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v86, OS_SIGNPOST_INTERVAL_BEGIN, v83, "VCPImageCaptionAnalyzer_AX_CSU_Inference", "", buf, 2u);
        }

        v87 = self->_imageCaptioner;
        v88 = self->_rescaledImageBuffer;
        v127 = 0;
        v21 = [(CSUImageCaptioner *)v87 computeCaptionForImage:v88 withDecodingMethod:1 error:&v127];
        v22 = v127;
        v89 = VCPSignPostLog(v22);
        v53 = v89;
        if (v83 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v89))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v53, OS_SIGNPOST_INTERVAL_END, v83, "VCPImageCaptionAnalyzer_AX_CSU_Inference", "", buf, 2u);
        }

LABEL_128:

        if (v21 && !v22)
        {
          results = [v21 results];
          if (results)
          {
            results2 = [v21 results];
            v113 = [results2 count] == 0;

            if (!v113)
            {
              results3 = [v21 results];
              v115 = [results3 objectAtIndexedSubscript:0];
              caption = [v115 caption];

              v116 = MEMORY[0x1E696AD98];
              results4 = [v21 results];
              v118 = [results4 objectAtIndexedSubscript:0];
              [v118 score];
              v33 = [v116 numberWithFloat:?];

              v35 = 0;
              bOOLValue = 0;
              goto LABEL_28;
            }
          }

          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] [ERROR] CSUCaptionResults has no results", buf, 2u);
          }

          goto LABEL_95;
        }

LABEL_52:
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v69 = [v22 description];
          v70 = v69;
          uTF8String2 = [v69 UTF8String];
          *buf = 136315138;
          *&buf[4] = uTF8String2;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Failed to generate CSUCaptionResults: (%s)", buf, 0xCu);
        }

        goto LABEL_96;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v72 = MEMORY[0x1E69E9C10];
        v73 = "[ImageCaption] Failed to create rescaledImageBuffer";
        goto LABEL_58;
      }
    }

    else
    {
      if (!self->_imageBackboneAnalyzer)
      {
        v17 = [VCPImageBackboneAnalyzer alloc];
        v18 = [MEMORY[0x1E696AD98] numberWithInteger:self->_backboneRevision];
        v19 = [(VCPImageBackboneAnalyzer *)v17 initWithRequestedAnalyses:0x1000000000000 andRevision:v18 useSharedModel:self->_useSharedModel];
        imageBackboneAnalyzer = self->_imageBackboneAnalyzer;
        self->_imageBackboneAnalyzer = v19;
      }

      if (cancelCopy)
      {
        v11 = cancelCopy[2](cancelCopy);
        if (v11)
        {
          goto LABEL_17;
        }
      }

      if (self->_imageBackboneAnalyzer)
      {
        resultsCopy3 = results;
        v46 = VCPSignPostLog(v11);
        v47 = os_signpost_id_generate(v46);

        v49 = VCPSignPostLog(v48);
        v50 = v49;
        if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v50, OS_SIGNPOST_INTERVAL_BEGIN, v47, "VCPImageCaptionAnalyzer_MiCa_EmbeddingInference", "", buf, 2u);
        }

        v51 = self->_imageBackboneAnalyzer;
        v126 = 0;
        v10 = [(VCPImageBackboneAnalyzer *)v51 analyzePixelBuffer:buffer flags:0 results:&v126 cancel:cancelCopy];
        v52 = v126;
        v53 = v52;
        if (v10)
        {

LABEL_114:
          v21 = 0;
          v22 = 0;
          goto LABEL_115;
        }

        spatialEmbedding = [(VCPImageBackboneAnalyzer *)self->_imageBackboneAnalyzer spatialEmbedding];
        v75 = VCPSignPostLog(spatialEmbedding);
        v76 = v75;
        if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v76, OS_SIGNPOST_INTERVAL_END, v47, "VCPImageCaptionAnalyzer_MiCa_EmbeddingInference", "", buf, 2u);
        }

        if (!spatialEmbedding)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Image embedding for caption generation is nil", buf, 2u);
          }

          v10 = -18;
          goto LABEL_113;
        }

        if ([objc_opt_class() writeSpatialEmbeddingToFile])
        {
          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          v78 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/tmp/com.apple.mediaanalysisd/" isDirectory:1];
          path = [v78 path];
          v80 = [defaultManager fileExistsAtPath:path];

          if (v80)
          {
            v81 = 0;
          }

          else
          {
            path2 = [v78 path];
            v125 = 0;
            v92 = [defaultManager createDirectoryAtPath:path2 withIntermediateDirectories:1 attributes:0 error:&v125];
            v81 = v125;

            if ((v92 & 1) == 0)
            {
              localizedDescription = [v81 localizedDescription];
              NSLog(&cfstr_ImagecaptionFa.isa, v78, localizedDescription);
            }
          }

          v94 = [v78 URLByAppendingPathComponent:@"imageSpatialEmbedding.dat" isDirectory:0];

          v124 = v81;
          v95 = [spatialEmbedding writeToURL:v94 options:1 error:&v124];
          v96 = v124;

          if (v95)
          {
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v94;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[ImageCaption] Image spatial embedding successfully saved to %@", buf, 0xCu);
            }
          }

          else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            localizedDescription2 = [v96 localizedDescription];
            *buf = 138412546;
            *&buf[4] = v94;
            v148 = 2112;
            v149 = localizedDescription2;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Failed to save image spatial embedding to %@ with error: %@", buf, 0x16u);
          }
        }

        if (cancelCopy && (cancelCopy[2](cancelCopy) & 1) != 0)
        {
          v10 = -128;
LABEL_113:

          goto LABEL_114;
        }

        v99 = objc_autoreleasePoolPush();
        v100 = VCPSignPostLog(v99);
        v101 = os_signpost_id_generate(v100);

        v103 = VCPSignPostLog(v102);
        v104 = v103;
        if (v101 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v103))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v104, OS_SIGNPOST_INTERVAL_BEGIN, v101, "VCPImageCaptionAnalyzer_MiCa_CaptionInference", "", buf, 2u);
        }

        greedySearchEnabled = [objc_opt_class() greedySearchEnabled];
        v106 = self->_imageCaptioner;
        if (greedySearchEnabled)
        {
          v122 = 0;
          v107 = &v122;
          v108 = [(CSUImageCaptioner *)v106 computeCaptionForEmbedding:spatialEmbedding withDecodingMethod:0 error:&v122];
        }

        else
        {
          v123 = 0;
          v107 = &v123;
          v108 = [(CSUImageCaptioner *)v106 computeCaptionForEmbedding:spatialEmbedding withDecodingMethod:1 error:&v123];
        }

        v21 = v108;
        v22 = *v107;
        v109 = VCPSignPostLog(v22);
        v110 = v109;
        if (v101 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v109))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v110, OS_SIGNPOST_INTERVAL_END, v101, "VCPImageCaptionAnalyzer_MiCa_CaptionInference", "", buf, 2u);
        }

        objc_autoreleasePoolPop(v99);
        goto LABEL_128;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v72 = MEMORY[0x1E69E9C10];
        v73 = "[ImageCaption] Failed to init VCPImageBackboneAnalyzer";
LABEL_58:
        _os_log_impl(&dword_1C9B70000, v72, OS_LOG_TYPE_ERROR, v73, buf, 2u);
      }
    }

    v21 = 0;
LABEL_95:
    v22 = 0;
LABEL_96:
    v10 = -18;
    goto LABEL_115;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Image caption analysis cancelled", buf, 2u);
  }

  v10 = -128;
LABEL_117:

  return v10;
}

- (int)analyzeEmbedding:(id)embedding flags:(unint64_t *)flags results:(id *)results cancel:(id)cancel
{
  v64 = *MEMORY[0x1E69E9840];
  embeddingCopy = embedding;
  cancelCopy = cancel;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ImageCaption] Computing MiCa image caption with embedding", buf, 2u);
  }

  if (cancelCopy && cancelCopy[2](cancelCopy))
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ImageCaption] Image caption analysis cancelled", buf, 2u);
    }

    v11 = -128;
    goto LABEL_30;
  }

  if (!embeddingCopy)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v21 = MEMORY[0x1E69E9C10];
    v22 = "[ImageCaption] Image embedding for caption generation is nil";
LABEL_24:
    v23 = 2;
    goto LABEL_25;
  }

  if (self->_modelType != 3)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v21 = MEMORY[0x1E69E9C10];
    v22 = "analyzeEmbedding only support MADImageCaptionModelType_Mica";
    goto LABEL_24;
  }

  if ([embeddingCopy length] != 374784)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    v24 = [embeddingCopy length];
    *buf = 134218240;
    v59 = v24;
    v60 = 2048;
    v61 = 374784;
    v21 = MEMORY[0x1E69E9C10];
    v22 = "Embedding size mismatch (current embedding size in byte: %lu, expected size in byte with float: %lu) analyzeEmbedding only supports VCPMUBBRevision_V4 and VCPMUBBRevision_V5";
    v23 = 22;
LABEL_25:
    _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_ERROR, v22, buf, v23);
LABEL_29:
    v11 = -18;
    goto LABEL_30;
  }

  context = objc_autoreleasePoolPush();
  v12 = VCPSignPostLog(context);
  v13 = os_signpost_id_generate(v12);

  v15 = VCPSignPostLog(v14);
  v16 = v15;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VCPImageCaptionAnalyzer_MiCa_CaptionInference", "", buf, 2u);
  }

  greedySearchEnabled = [objc_opt_class() greedySearchEnabled];
  imageCaptioner = self->_imageCaptioner;
  if (greedySearchEnabled)
  {
    v49 = 0;
    v19 = &v49;
    v20 = [(CSUImageCaptioner *)imageCaptioner computeCaptionForEmbedding:embeddingCopy withDecodingMethod:0 error:&v49];
  }

  else
  {
    v50 = 0;
    v19 = &v50;
    v20 = [(CSUImageCaptioner *)imageCaptioner computeCaptionForEmbedding:embeddingCopy withDecodingMethod:1 error:&v50];
  }

  v26 = v20;
  v48 = *v19;
  v27 = VCPSignPostLog(v48);
  v28 = v27;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_INTERVAL_END, v13, "VCPImageCaptionAnalyzer_MiCa_CaptionInference", "", buf, 2u);
  }

  if (!v26 || v48)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v40 = [v48 description];
      v41 = v40;
      uTF8String = [v40 UTF8String];
      *buf = 136315138;
      v59 = uTF8String;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ERROR] Failed to generate CSUCaptionResults: (%s)", buf, 0xCu);
    }

    goto LABEL_46;
  }

  results = [v26 results];
  if (!results || ([v26 results], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "count") == 0, v30, results, v31))
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ERROR] CSUCaptionResults has no results", buf, 2u);
    }

LABEL_46:
    v38 = 0;
    caption = 0;
    v39 = 0;
    goto LABEL_47;
  }

  results2 = [v26 results];
  v33 = [results2 objectAtIndexedSubscript:0];
  caption = [v33 caption];

  v35 = MEMORY[0x1E696AD98];
  results3 = [v26 results];
  v37 = [results3 objectAtIndexedSubscript:0];
  [v37 score];
  v38 = [v35 numberWithFloat:?];

  v39 = 1;
LABEL_47:

  objc_autoreleasePoolPop(context);
  if (v39)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      modelType = self->_modelType;
      *buf = 134218498;
      v59 = modelType;
      v60 = 2112;
      v61 = caption;
      v62 = 2112;
      v63 = v38;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ImageCaption] image caption modelType:%lu, text:%@, score:%@", buf, 0x20u);
    }

    v56 = @"MiCaImageCaptionResults";
    v53 = @"attributes";
    v51[0] = @"imageCaptionText";
    v51[1] = @"imageCaptionConfidence";
    v52[0] = caption;
    v52[1] = v38;
    v51[2] = @"imageCaptionUnsafeContent";
    v52[2] = MEMORY[0x1E695E110];
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:3];
    v54 = v44;
    v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v55 = v45;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
    v57 = v46;
    *results = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];

    v11 = 0;
  }

  else
  {
    v11 = -18;
  }

LABEL_30:
  return v11;
}

@end