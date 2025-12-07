@interface MADServiceVideoSafetyProcessingTask
- (BOOL)configureVideoProcessorWithError:(id *)error;
- (BOOL)fetchCachedAnalysisResults;
- (BOOL)performQRCodeDetectionsForVideoURL:(id)l;
- (BOOL)run:(id *)run;
- (BOOL)validateProcessingSettingsWithError:(id *)error;
- (MADServiceVideoSafetyProcessingTask)initWithRequest:(id)request forAsset:(id)asset cancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (id)classificationResults;
- (id)finalizeSafetyResultsWithError:(id *)error;
- (id)storeSafetyClassificationResultsForSharedAsset;
- (void)_addToDetecionResultsWithSensitivityKey:(id)key sensitivity:(id)sensitivity sensitivityScoreKey:(id)scoreKey sensitivityScore:(id)score;
- (void)_processFrameBuffer:(opaqueCMSampleBuffer *)buffer stop:(BOOL *)stop;
@end

@implementation MADServiceVideoSafetyProcessingTask

- (MADServiceVideoSafetyProcessingTask)initWithRequest:(id)request forAsset:(id)asset cancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  requestCopy = request;
  assetCopy = asset;
  blockCopy = block;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __113__MADServiceVideoSafetyProcessingTask_initWithRequest_forAsset_cancelBlock_progressHandler_andCompletionHandler___block_invoke;
  v31[3] = &unk_1E834CF90;
  v18 = completionHandlerCopy;
  v32 = v18;
  v30.receiver = self;
  v30.super_class = MADServiceVideoSafetyProcessingTask;
  v19 = [(VCPMABaseTask *)&v30 initWithCompletionHandler:v31];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_request, request);
    objc_storeStrong(&v20->_asset, asset);
    v20->_remainingDetections = [(MADVideoSafetyClassificationRequest *)v20->_request enableNudityDetection];
    enableGoreViolenceDetection = [(MADVideoSafetyClassificationRequest *)v20->_request enableGoreViolenceDetection];
    v22 = 2;
    if (!enableGoreViolenceDetection)
    {
      v22 = 0;
    }

    v20->_remainingDetections |= v22;
    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    scoresForLabels = v20->_scoresForLabels;
    v20->_scoresForLabels = v23;

    v25 = _Block_copy(handlerCopy);
    progressHandler = v20->_progressHandler;
    v20->_progressHandler = v25;

    v27 = _Block_copy(v18);
    completionHandler = v20->_completionHandler;
    v20->_completionHandler = v27;

    [(VCPMABaseTask *)v20 setCancelBlock:blockCopy];
    v20->_enablePowerLog = 1;
  }

  return v20;
}

void __113__MADServiceVideoSafetyProcessingTask_initWithRequest_forAsset_cancelBlock_progressHandler_andCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E69AE4E8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setError:v5];

  (*(*(a1 + 32) + 16))();
}

- (void)_addToDetecionResultsWithSensitivityKey:(id)key sensitivity:(id)sensitivity sensitivityScoreKey:(id)scoreKey sensitivityScore:(id)score
{
  v22[4] = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E69CA718];
  detectionResults = self->_detectionResults;
  v21[0] = key;
  v21[1] = scoreKey;
  v22[0] = sensitivity;
  v22[1] = score;
  v12 = *MEMORY[0x1E69CA800];
  v21[2] = *MEMORY[0x1E69CA7F8];
  v21[3] = v12;
  v22[2] = sensitivity;
  v22[3] = score;
  v13 = MEMORY[0x1E695DF20];
  scoreCopy = score;
  scoreKeyCopy = scoreKey;
  sensitivityCopy = sensitivity;
  keyCopy = key;
  v18 = [v13 dictionaryWithObjects:v22 forKeys:v21 count:4];
  v19 = [v10 mad_mergeSensitiveAnalysisResults:detectionResults withSensitiveAnalysisResults:v18];
  v20 = self->_detectionResults;
  self->_detectionResults = v19;
}

- (void)_processFrameBuffer:(opaqueCMSampleBuffer *)buffer stop:(BOOL *)stop
{
  v58 = *MEMORY[0x1E69E9840];
  videoAnalyzer = self->_videoAnalyzer;
  v51 = 0;
  v7 = [(SCMLVideoAnalyzer *)videoAnalyzer addFrameBuffer:buffer error:&v51];
  v8 = v51;
  if (v7)
  {
    v9 = self->_videoAnalyzer;
    v50 = v8;
    v10 = [(SCMLVideoAnalyzer *)v9 analyze:&v50];
    v11 = v50;

    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = v13;
        v15 = objc_opt_class();
        v16 = v15;
        v17 = [v11 description];
        *buf = 138412802;
        v53 = v13;
        v54 = 2112;
        v55 = v15;
        v56 = 2112;
        v57 = v17;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to run %@::analyze: %@", buf, 0x20u);
      }

      v18 = [v11 copy];
      processError = self->_processError;
      self->_processError = v18;

      goto LABEL_17;
    }

    remainingDetections = self->_remainingDetections;
    if ((remainingDetections & 1) == 0)
    {
      if ((remainingDetections & 2) == 0)
      {
        goto LABEL_16;
      }

LABEL_27:
      if (([v10 sensitiveGore] & 1) != 0 || objc_msgSend(v10, "sensitiveViolence"))
      {
        if ([(MADServiceVideoAsset *)self->_asset isSharedPhotosAsset])
        {
          v35 = *MEMORY[0x1E69CA7E8];
          v36 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "sensitiveGore")}];
          v37 = *MEMORY[0x1E69CA7F0];
          sensitivityScoreGore = [v10 sensitivityScoreGore];
          [(MADServiceVideoSafetyProcessingTask *)self _addToDetecionResultsWithSensitivityKey:v35 sensitivity:v36 sensitivityScoreKey:v37 sensitivityScore:sensitivityScoreGore];

          v39 = *MEMORY[0x1E69CA808];
          v40 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "sensitiveViolence")}];
          v41 = *MEMORY[0x1E69CA818];
          sensitivityScoreViolence = [v10 sensitivityScoreViolence];
          [(MADServiceVideoSafetyProcessingTask *)self _addToDetecionResultsWithSensitivityKey:v39 sensitivity:v40 sensitivityScoreKey:v41 sensitivityScore:sensitivityScoreViolence];
        }

        if ([(MADVideoSafetyClassificationRequest *)self->_request requiresScoresAndLabels])
        {
          scoresForLabels = [v10 scoresForLabels];
          v44 = *MEMORY[0x1E69CA7A0];
          v45 = [scoresForLabels objectForKeyedSubscript:*MEMORY[0x1E69CA7A0]];
          [(NSMutableDictionary *)self->_scoresForLabels setObject:v45 forKeyedSubscript:v44];

          scoresForLabels2 = [v10 scoresForLabels];
          v47 = *MEMORY[0x1E69CA7C0];
          v48 = [scoresForLabels2 objectForKeyedSubscript:*MEMORY[0x1E69CA7C0]];
          [(NSMutableDictionary *)self->_scoresForLabels setObject:v48 forKeyedSubscript:v47];
        }

        self->_detectedharms |= 2uLL;
        v49 = self->_remainingDetections ^ 2;
        self->_remainingDetections = v49;
        if (v49)
        {
          goto LABEL_17;
        }
      }

      else if (self->_remainingDetections)
      {
        goto LABEL_17;
      }

      goto LABEL_34;
    }

    if ([v10 sensitiveExplicit])
    {
      if ([(MADServiceVideoAsset *)self->_asset isSharedPhotosAsset])
      {
        v25 = *MEMORY[0x1E69CA7D0];
        v26 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "sensitiveExplicit")}];
        v27 = *MEMORY[0x1E69CA7D8];
        sensitivityScoreExplicit = [v10 sensitivityScoreExplicit];
        [(MADServiceVideoSafetyProcessingTask *)self _addToDetecionResultsWithSensitivityKey:v25 sensitivity:v26 sensitivityScoreKey:v27 sensitivityScore:sensitivityScoreExplicit];
      }

      if ([(MADVideoSafetyClassificationRequest *)self->_request requiresScoresAndLabels])
      {
        scoresForLabels3 = [v10 scoresForLabels];
        v30 = *MEMORY[0x1E69CA7B8];
        v31 = [scoresForLabels3 objectForKeyedSubscript:*MEMORY[0x1E69CA7B8]];
        [(NSMutableDictionary *)self->_scoresForLabels setObject:v31 forKeyedSubscript:v30];

        scoresForLabels4 = [v10 scoresForLabels];
        v33 = *MEMORY[0x1E69CA7A8];
        v34 = [scoresForLabels4 objectForKeyedSubscript:*MEMORY[0x1E69CA7A8]];
        [(NSMutableDictionary *)self->_scoresForLabels setObject:v34 forKeyedSubscript:v33];
      }

      self->_detectedharms |= 1uLL;
      remainingDetections = self->_remainingDetections ^ 1;
      self->_remainingDetections = remainingDetections;
      if ((remainingDetections & 2) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      remainingDetections = self->_remainingDetections;
      if ((remainingDetections & 2) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_16:
    if (remainingDetections)
    {
LABEL_17:
      v8 = v11;
      goto LABEL_18;
    }

LABEL_34:
    *stop = 1;
    goto LABEL_17;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = objc_opt_class();
    v21 = v20;
    v22 = [v8 description];
    *buf = 138412546;
    v53 = v20;
    v54 = 2112;
    v55 = v22;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to run %@::addFrameBuffer:error: %@", buf, 0x16u);
  }

  v23 = [v8 copy];
  v10 = self->_processError;
  self->_processError = v23;
LABEL_18:
}

- (BOOL)configureVideoProcessorWithError:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.value) = 138412290;
    *(&buf.value + 4) = objc_opt_class();
    v4 = *(&buf.value + 4);
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Configuring video processor", &buf, 0xCu);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:&unk_1F49BBA28 forKeyedSubscript:*MEMORY[0x1E6966130]];
  [dictionary setObject:&unk_1F49BBA40 forKeyedSubscript:*MEMORY[0x1E6966208]];
  [dictionary setObject:&unk_1F49BBA40 forKeyedSubscript:*MEMORY[0x1E69660B8]];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[MADVideoSafetyClassificationRequest appliesPreferredTrackTransform](self->_request, "appliesPreferredTrackTransform")}];
  [dictionary setObject:v7 forKeyedSubscript:@"AppliesPreferredTrackTransform"];

  sampling = [(MADVideoSafetyClassificationRequest *)self->_request sampling];
  if (sampling)
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = [sampling description];
      LODWORD(buf.value) = 138412546;
      *(&buf.value + 4) = v9;
      LOWORD(buf.flags) = 2112;
      *(&buf.flags + 2) = v11;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Non-default sampling in use: %@", &buf, 0x16u);
    }
  }

  else
  {
    sampling = [objc_alloc(MEMORY[0x1E69AE500]) initWithFramesPerSync:1 frameLimit:30 uniformSampling:1];
  }

  if ([(MADVideoSafetyClassificationRequest *)self->_request requiresBlastdoor])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(sampling, "framesPerSync")}];
    [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x1E6987D38]];

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(sampling, "frameLimit")}];
    [dictionary setObject:v13 forKeyedSubscript:@"FrameLimit"];

    v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(sampling, "uniformSampling")}];
    [dictionary setObject:v14 forKeyedSubscript:@"UniformSampling"];
  }

  else
  {
    [(VCPBlockBasedVideoProcessorProtocol *)self->_videoProcessor videoDuration];
    v30 = v29;
    if (![sampling frameLimit] && objc_msgSend(sampling, "uniformSampling") && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_opt_class();
      LODWORD(buf.value) = 138412290;
      *(&buf.value + 4) = v31;
      v32 = v31;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Unexpected uniformSampling specified when frameLimit is 0, ignoring uniformSampling", &buf, 0xCu);
    }

    if ([sampling framesPerSync])
    {
      v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(sampling, "framesPerSync")}];
      [dictionary setObject:v33 forKeyedSubscript:*MEMORY[0x1E6987D38]];

      if ([sampling frameLimit])
      {
        v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(sampling, "frameLimit")}];
        [dictionary2 setObject:v34 forKeyedSubscript:@"FrameLimit"];

        if ([sampling uniformSampling])
        {
          v35 = v30 / (([sampling frameLimit] - 1) + 0.1);
          if (v35 <= 0.0)
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v40 = objc_opt_class();
              v41 = *MEMORY[0x1E6987C68];
              LODWORD(buf.value) = 138412802;
              *(&buf.value + 4) = v40;
              LOWORD(buf.flags) = 2112;
              *(&buf.flags + 2) = v41;
              HIWORD(buf.epoch) = 2048;
              v49 = v35;
              v42 = v40;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Invalid decoder configuration value (%@ = %f), ignoring", &buf, 0x20u);
            }
          }

          else
          {
            memset(&buf, 0, sizeof(buf));
            CMTimeMakeWithSeconds(&buf, v35, 1000);
            v36 = *MEMORY[0x1E695E480];
            location = buf;
            v37 = CMTimeCopyAsDictionary(&location, v36);
            [dictionary setObject:v37 forKeyedSubscript:*MEMORY[0x1E6987C68]];
          }
        }
      }
    }

    else if ([sampling frameLimit])
    {
      v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(sampling, "frameLimit")}];
      [dictionary2 setObject:v38 forKeyedSubscript:@"FrameLimit"];

      if ([sampling uniformSampling])
      {
        v39 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(sampling, "frameLimit") / v30}];
        [dictionary2 setObject:v39 forKeyedSubscript:@"FramesPerSecond"];
      }
    }
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v15 = objc_opt_class();
    request = self->_request;
    v17 = v15;
    requiresBlastdoor = [(MADVideoSafetyClassificationRequest *)request requiresBlastdoor];
    v19 = @"NO";
    LODWORD(buf.value) = 138413058;
    *(&buf.value + 4) = v15;
    LOWORD(buf.flags) = 2112;
    if (requiresBlastdoor)
    {
      v19 = @"YES";
    }

    *(&buf.flags + 2) = v19;
    HIWORD(buf.epoch) = 2112;
    v49 = *&dictionary;
    v50 = 2112;
    v51 = dictionary2;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] requiresBlastdoor: %@, decoder configuration: %@, request configuration: %@", &buf, 0x2Au);
  }

  [(VCPBlockBasedVideoProcessorProtocol *)self->_videoProcessor setDecoderSettings:dictionary];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__MADServiceVideoSafetyProcessingTask_configureVideoProcessorWithError___block_invoke;
  aBlock[3] = &unk_1E834CFB8;
  objc_copyWeak(&v46, &location);
  v20 = _Block_copy(aBlock);
  videoProcessor = self->_videoProcessor;
  v44 = 0;
  v22 = [(VCPBlockBasedVideoProcessorProtocol *)videoProcessor addFrameProcessingRequest:v20 withConfiguration:dictionary2 error:&v44];
  v23 = v44;
  if ((v22 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v24 = MEMORY[0x1E69E9C10];
      v25 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v27 = [v23 description];
        LODWORD(buf.value) = 138412546;
        *(&buf.value + 4) = v26;
        LOWORD(buf.flags) = 2112;
        *(&buf.flags + 2) = v27;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to add request to video processor (%@)", &buf, 0x16u);
      }
    }

    if (error)
    {
      *error = [v23 copy];
    }
  }

  objc_destroyWeak(&v46);
  objc_destroyWeak(&location);

  return v22;
}

void __72__MADServiceVideoSafetyProcessingTask_configureVideoProcessorWithError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained _processFrameBuffer:a2 stop:a3];
    WeakRetained = v6;
  }
}

- (id)storeSafetyClassificationResultsForSharedAsset
{
  v34 = *MEMORY[0x1E69E9840];
  if (![(NSDictionary *)self->_detectionResults count])
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = objc_opt_class();
      v11 = *&buf[4];
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to obtain analysis result for shared Photos asset.", buf, 0xCu);
    }

    v12 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] Failed to obtain analysis result for shared Photos asset.", objc_opt_class()];
    v30 = v8;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v13 = [v12 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v7];
    goto LABEL_15;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v3 = getSCSensitivityAnalysisClass_softClass;
  v26 = getSCSensitivityAnalysisClass_softClass;
  if (!getSCSensitivityAnalysisClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getSCSensitivityAnalysisClass_block_invoke;
    v32 = &unk_1E834CFE0;
    v33 = &v23;
    __getSCSensitivityAnalysisClass_block_invoke(buf);
    v3 = v24[3];
  }

  v4 = v3;
  _Block_object_dispose(&v23, 8);
  v5 = [v3 alloc];
  detectionResults = self->_detectionResults;
  v22 = 0;
  v7 = [v5 initWithPixelBufferClassificationDictionary:detectionResults error:&v22];
  v8 = v22;
  if (!v7)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      *buf = 138412546;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      v15 = v14;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to instantiate SCSensitivityAnalysis object from ivsResults, error:%@", buf, 0x16u);
    }

    v13 = v8;
    v8 = v13;
LABEL_15:
    v10 = v13;
    goto LABEL_16;
  }

  compactAnalysis = [v7 compactAnalysis];
  if (compactAnalysis)
  {
    [(MADServiceVideoAsset *)self->_asset persistToPhotosWithCompactSCSensitivityAnalysis:compactAnalysis screenTimeDeviceImageSensitivity:SLOWORD(self->_detectedharms)];
    v10 = 0;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      *buf = 138412290;
      *&buf[4] = v17;
      v18 = v17;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] compactSCSensitivityAnalysis is 0", buf, 0xCu);
    }

    v19 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] compactSCSensitivityAnalysis is 0", objc_opt_class()];
    v28 = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v10 = [v19 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v21];
  }

LABEL_16:

  return v10;
}

- (id)finalizeSafetyResultsWithError:(id *)error
{
  v63 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v58 = objc_opt_class();
    v5 = v58;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Finalizing results", buf, 0xCu);
  }

  v6 = 0x1EC42C000uLL;
  if (self->_remainingDetections)
  {
    videoAnalyzer = self->_videoAnalyzer;
    v55 = 0;
    classificationResults = [(SCMLVideoAnalyzer *)videoAnalyzer finalizeAnalysis:&v55];
    v9 = v55;
    if (classificationResults)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      v11 = v9;
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = v12;
        v14 = objc_opt_class();
        v15 = v14;
        v16 = [v11 description];
        *buf = 138412802;
        v58 = v12;
        v59 = 2112;
        v60 = v14;
        v61 = 2112;
        v62 = v16;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to run %@::finalizeAnalysis: %@", buf, 0x20u);
      }

      if (!error)
      {
        v18 = 0;
        goto LABEL_42;
      }

      v17 = [v11 copy];
      v18 = 0;
      goto LABEL_41;
    }

    remainingDetections = self->_remainingDetections;
    if (remainingDetections)
    {
      if ([(MADServiceVideoAsset *)self->_asset isSharedPhotosAsset])
      {
        v20 = *MEMORY[0x1E69CA7D0];
        v21 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(classificationResults, "sensitiveExplicit")}];
        v22 = *MEMORY[0x1E69CA7D8];
        sensitivityScoreExplicit = [classificationResults sensitivityScoreExplicit];
        v6 = 0x1EC42C000;
        [(MADServiceVideoSafetyProcessingTask *)self _addToDetecionResultsWithSensitivityKey:v20 sensitivity:v21 sensitivityScoreKey:v22 sensitivityScore:sensitivityScoreExplicit];
      }

      if ([(MADVideoSafetyClassificationRequest *)self->_request requiresScoresAndLabels])
      {
        scoresForLabels = [classificationResults scoresForLabels];
        v25 = *MEMORY[0x1E69CA7B8];
        v26 = [scoresForLabels objectForKeyedSubscript:*MEMORY[0x1E69CA7B8]];
        [(NSMutableDictionary *)self->_scoresForLabels setObject:v26 forKeyedSubscript:v25];

        scoresForLabels2 = [classificationResults scoresForLabels];
        v28 = *MEMORY[0x1E69CA7A8];
        v29 = [scoresForLabels2 objectForKeyedSubscript:*MEMORY[0x1E69CA7A8]];
        [(NSMutableDictionary *)self->_scoresForLabels setObject:v29 forKeyedSubscript:v28];

        v6 = 0x1EC42C000uLL;
      }

      self->_detectedharms |= [classificationResults sensitiveExplicit];
      remainingDetections = self->_remainingDetections ^ 1;
      self->_remainingDetections = remainingDetections;
    }

    if ((remainingDetections & 2) != 0)
    {
      if ([*(&self->super.super.super.isa + *(v6 + 2912)) isSharedPhotosAsset])
      {
        v30 = *MEMORY[0x1E69CA7E8];
        v31 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(classificationResults, "sensitiveGore")}];
        v32 = *MEMORY[0x1E69CA7F0];
        sensitivityScoreGore = [classificationResults sensitivityScoreGore];
        [(MADServiceVideoSafetyProcessingTask *)self _addToDetecionResultsWithSensitivityKey:v30 sensitivity:v31 sensitivityScoreKey:v32 sensitivityScore:sensitivityScoreGore];

        v34 = *MEMORY[0x1E69CA808];
        v35 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(classificationResults, "sensitiveViolence")}];
        v36 = *MEMORY[0x1E69CA818];
        sensitivityScoreViolence = [classificationResults sensitivityScoreViolence];
        [(MADServiceVideoSafetyProcessingTask *)self _addToDetecionResultsWithSensitivityKey:v34 sensitivity:v35 sensitivityScoreKey:v36 sensitivityScore:sensitivityScoreViolence];
      }

      if ([(MADVideoSafetyClassificationRequest *)self->_request requiresScoresAndLabels])
      {
        scoresForLabels3 = [classificationResults scoresForLabels];
        v39 = *MEMORY[0x1E69CA7A0];
        v40 = [scoresForLabels3 objectForKeyedSubscript:*MEMORY[0x1E69CA7A0]];
        [(NSMutableDictionary *)self->_scoresForLabels setObject:v40 forKeyedSubscript:v39];

        scoresForLabels4 = [classificationResults scoresForLabels];
        v42 = *MEMORY[0x1E69CA7C0];
        v43 = [scoresForLabels4 objectForKeyedSubscript:*MEMORY[0x1E69CA7C0]];
        [(NSMutableDictionary *)self->_scoresForLabels setObject:v43 forKeyedSubscript:v42];
      }

      if ([classificationResults sensitiveGore])
      {
        v44 = 2;
      }

      else
      {
        sensitiveViolence = [classificationResults sensitiveViolence];
        v44 = 2;
        if (!sensitiveViolence)
        {
          v44 = 0;
        }
      }

      self->_detectedharms |= v44;
      self->_remainingDetections ^= 2uLL;
    }
  }

  v18 = objc_alloc_init(MEMORY[0x1E69AE4E8]);
  classificationResults = [(MADServiceVideoSafetyProcessingTask *)self classificationResults];
  v46 = objc_alloc(MEMORY[0x1E69AE4F8]);
  v47 = [classificationResults objectForKeyedSubscript:*MEMORY[0x1E69AE2E0]];
  v48 = [classificationResults objectForKeyedSubscript:*MEMORY[0x1E69AE2D8]];
  if ([(NSMutableDictionary *)self->_scoresForLabels count])
  {
    scoresForLabels = self->_scoresForLabels;
  }

  else
  {
    scoresForLabels = 0;
  }

  v50 = [v46 initWithIsSensitiveNudity:v47 isSensitiveGoreViolence:v48 scoresForLabels:scoresForLabels];
  v56 = v50;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
  [v18 setResults:v51];

  v52 = *(v6 + 2912);
  if (![*(&self->super.super.super.isa + v52) isSharedPhotosAsset] || objc_msgSend(*(&self->super.super.super.isa + v52), "videoSensitivityAnalysisVersion") == 1)
  {
    v11 = 0;
    goto LABEL_42;
  }

  storeSafetyClassificationResultsForSharedAsset = [(MADServiceVideoSafetyProcessingTask *)self storeSafetyClassificationResultsForSharedAsset];
  v11 = storeSafetyClassificationResultsForSharedAsset;
  if (error && storeSafetyClassificationResultsForSharedAsset)
  {
    v17 = [storeSafetyClassificationResultsForSharedAsset copy];
LABEL_41:
    *error = v17;
  }

LABEL_42:

  return v18;
}

- (BOOL)validateProcessingSettingsWithError:(id *)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (![(MADServiceVideoAsset *)self->_asset userSafetyEligible])
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "User Safety either not entitled for client or not enabled", buf, 2u);
    }

    if (!error)
    {
      return 0;
    }

    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A768];
    v31 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] User Safety either not entitled for client or not enabled", objc_opt_class()];
    v32[0] = v7;
    v8 = MEMORY[0x1E695DF20];
    v9 = v32;
    v10 = &v31;
LABEL_23:
    v16 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:1];
    v17 = v5;
    v18 = v6;
    v19 = -18;
LABEL_24:
    *error = [v17 errorWithDomain:v18 code:v19 userInfo:v16];

    return 0;
  }

  if (+[MADUserSafetyQRCodeDetector enabled]&& [(MADVideoSafetyClassificationRequest *)self->_request requiresScoresAndLabels])
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid request: qrCodeDetectorEnabled=YES and requiresScoresAndLabels=YES", buf, 2u);
    }

    if (!error)
    {
      return 0;
    }

    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A768];
    v29 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] Invalid request: qrCodeDetectorEnabled=YES and requiresScoresAndLabels=YES", objc_opt_class()];
    v30 = v7;
    v8 = MEMORY[0x1E695DF20];
    v9 = &v30;
    v10 = &v29;
    goto LABEL_23;
  }

  if (!self->_remainingDetections)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid request: detections=0", buf, 2u);
    }

    if (!error)
    {
      return 0;
    }

    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A768];
    v27 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] Invalid request: No detection to be performed", objc_opt_class()];
    v28 = v7;
    v8 = MEMORY[0x1E695DF20];
    v9 = &v28;
    v10 = &v27;
    goto LABEL_23;
  }

  sensitiveFrameCountThreshold = [(MADVideoSafetyClassificationRequest *)self->_request sensitiveFrameCountThreshold];
  if (!sensitiveFrameCountThreshold)
  {
    return 1;
  }

  v12 = sensitiveFrameCountThreshold;
  sensitiveFrameCountThreshold2 = [(MADVideoSafetyClassificationRequest *)self->_request sensitiveFrameCountThreshold];
  unsignedIntegerValue = [sensitiveFrameCountThreshold2 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    return 1;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v26 = objc_opt_class();
    v20 = v26;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Invalid configuration, sensitiveFrameCountThreshold must be > 0", buf, 0xCu);
  }

  if (error)
  {
    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A768];
    v23 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] Invalid configuration, sensitiveFrameCountThreshold must be > 0", objc_opt_class()];
    v24 = v7;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v17 = v21;
    v18 = v22;
    v19 = -50;
    goto LABEL_24;
  }

  return 0;
}

- (BOOL)performQRCodeDetectionsForVideoURL:(id)l
{
  v19 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (+[MADUserSafetyQRCodeDetector enabled])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = objc_alloc_init(MADUserSafetyVideoQRCodeDetector);
    request = self->_request;
    signpostPayload = [(MADServiceVideoProcessingSubtask *)self signpostPayload];
    if ([(MADServiceVideoAsset *)self->_asset isSharedPhotosAsset])
    {
      progressHandler = 0;
    }

    else
    {
      progressHandler = self->_progressHandler;
    }

    v10 = [(MADUserSafetyVideoQRCodeDetector *)v6 sensitivityFromQRCodeForVideoURL:lCopy request:request signpostPayload:signpostPayload progressHandler:progressHandler];

    if (v10)
    {
      unsignedIntegerValue = [v10 unsignedIntegerValue];
      remainingDetections = self->_remainingDetections;
      if (unsignedIntegerValue & remainingDetections)
      {
        if ([(MADServiceVideoAsset *)self->_asset isSharedPhotosAsset])
        {
          [(MADServiceVideoSafetyProcessingTask *)self _addToDetecionResultsWithSensitivityKey:*MEMORY[0x1E69CA7D0] sensitivity:MEMORY[0x1E695E118] sensitivityScoreKey:*MEMORY[0x1E69CA7D8] sensitivityScore:&unk_1F49BB568];
        }

        self->_detectedharms |= 1uLL;
        remainingDetections = self->_remainingDetections ^ 1;
        self->_remainingDetections = remainingDetections;
      }

      if ((unsignedIntegerValue & remainingDetections & 2) != 0)
      {
        if ([(MADServiceVideoAsset *)self->_asset isSharedPhotosAsset])
        {
          v13 = MEMORY[0x1E695E118];
          [(MADServiceVideoSafetyProcessingTask *)self _addToDetecionResultsWithSensitivityKey:*MEMORY[0x1E69CA7E8] sensitivity:MEMORY[0x1E695E118] sensitivityScoreKey:*MEMORY[0x1E69CA7F0] sensitivityScore:&unk_1F49BB568];
          [(MADServiceVideoSafetyProcessingTask *)self _addToDetecionResultsWithSensitivityKey:*MEMORY[0x1E69CA808] sensitivity:v13 sensitivityScoreKey:*MEMORY[0x1E69CA818] sensitivityScore:&unk_1F49BB568];
        }

        self->_detectedharms |= 2uLL;
        self->_remainingDetections ^= 2uLL;
      }
    }

    else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = objc_opt_class();
      v14 = v18;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] processing failed.", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v15 = self->_remainingDetections == 0;

  return v15;
}

- (id)classificationResults
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(MADVideoSafetyClassificationRequest *)self->_request enableNudityDetection])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_detectedharms & 1];
    [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69AE2E0]];
  }

  if ([(MADVideoSafetyClassificationRequest *)self->_request enableGoreViolenceDetection])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:(LODWORD(self->_detectedharms) >> 1) & 1];
    [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69AE2D8]];
  }

  return v3;
}

- (BOOL)fetchCachedAnalysisResults
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = 0x1EC42C000uLL;
  if (![(MADServiceVideoAsset *)self->_asset isSharedPhotosAsset]|| [(MADServiceVideoAsset *)self->_asset videoSensitivityAnalysisVersion]== 1)
  {
    cachedSensitivity = [(MADServiceVideoAsset *)self->_asset cachedSensitivity];
    if ([(MADVideoSafetyClassificationRequest *)self->_request requiresScoresAndLabels])
    {
      safetyScoresForLabels = [(MADServiceVideoAsset *)self->_asset safetyScoresForLabels];
      if (!cachedSensitivity)
      {
        goto LABEL_34;
      }
    }

    else
    {
      safetyScoresForLabels = 0;
      if (!cachedSensitivity)
      {
LABEL_34:

        return *(&self->super.super.super.isa + *(v3 + 2916)) == 0;
      }
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v31 = objc_opt_class();
      v6 = v31;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] Leveraging pre-computed IVS result", buf, 0xCu);
    }

    remainingDetections = self->_remainingDetections;
    v8 = 0x1EC42C000;
    if (remainingDetections)
    {
      if ([(MADServiceVideoAsset *)self->_asset isSharedPhotosAsset])
      {
        v9 = *MEMORY[0x1E69CA7D0];
        v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(cachedSensitivity, "unsignedIntegerValue") & 1}];
        [(MADServiceVideoSafetyProcessingTask *)self _addToDetecionResultsWithSensitivityKey:v9 sensitivity:v10 sensitivityScoreKey:*MEMORY[0x1E69CA7D8] sensitivityScore:&unk_1F49BB568];
      }

      if ([(MADVideoSafetyClassificationRequest *)self->_request requiresScoresAndLabels])
      {
        v11 = *MEMORY[0x1E69CA7B8];
        v12 = [safetyScoresForLabels objectForKeyedSubscript:*MEMORY[0x1E69CA7B8]];
        if (v12)
        {
          v13 = [safetyScoresForLabels objectForKeyedSubscript:v11];
        }

        else
        {
          v13 = &unk_1F49BB578;
        }

        v29 = v13;
        [(NSMutableDictionary *)self->_scoresForLabels setObject:v13 forKeyedSubscript:v11];
        v14 = *MEMORY[0x1E69CA7A8];
        v15 = [safetyScoresForLabels objectForKeyedSubscript:*MEMORY[0x1E69CA7A8]];
        if (v15)
        {
          v16 = [safetyScoresForLabels objectForKeyedSubscript:v14];
        }

        else
        {
          v16 = &unk_1F49BB578;
        }

        [(NSMutableDictionary *)self->_scoresForLabels setObject:v16 forKeyedSubscript:v14];
        v3 = 0x1EC42C000;
        v8 = 0x1EC42C000uLL;
      }

      *(&self->super.super.super.isa + *(v8 + 2948)) = (*(&self->super.super.super.isa + *(v8 + 2948)) | [cachedSensitivity unsignedIntegerValue] & 1);
      remainingDetections = self->_remainingDetections ^ 1;
      self->_remainingDetections = remainingDetections;
    }

    if ((remainingDetections & 2) != 0)
    {
      if ([(MADServiceVideoAsset *)self->_asset isSharedPhotosAsset])
      {
        v17 = *MEMORY[0x1E69CA7E8];
        v18 = [MEMORY[0x1E696AD98] numberWithInt:{(objc_msgSend(cachedSensitivity, "unsignedIntegerValue") >> 1) & 1}];
        [(MADServiceVideoSafetyProcessingTask *)self _addToDetecionResultsWithSensitivityKey:v17 sensitivity:v18 sensitivityScoreKey:*MEMORY[0x1E69CA7F0] sensitivityScore:&unk_1F49BB568];

        v19 = *MEMORY[0x1E69CA808];
        v20 = [MEMORY[0x1E696AD98] numberWithInt:{(objc_msgSend(cachedSensitivity, "unsignedIntegerValue") >> 1) & 1}];
        [(MADServiceVideoSafetyProcessingTask *)self _addToDetecionResultsWithSensitivityKey:v19 sensitivity:v20 sensitivityScoreKey:*MEMORY[0x1E69CA818] sensitivityScore:&unk_1F49BB568];
      }

      if ([(MADVideoSafetyClassificationRequest *)self->_request requiresScoresAndLabels])
      {
        v21 = *MEMORY[0x1E69CA7A0];
        v22 = [safetyScoresForLabels objectForKeyedSubscript:*MEMORY[0x1E69CA7A0]];
        v23 = v8;
        if (v22)
        {
          v24 = [safetyScoresForLabels objectForKeyedSubscript:v21];
        }

        else
        {
          v24 = &unk_1F49BB578;
        }

        [(NSMutableDictionary *)self->_scoresForLabels setObject:v24 forKeyedSubscript:v21];
        v25 = *MEMORY[0x1E69CA7C0];
        v26 = [safetyScoresForLabels objectForKeyedSubscript:*MEMORY[0x1E69CA7C0]];
        if (v26)
        {
          v27 = [safetyScoresForLabels objectForKeyedSubscript:v25];
        }

        else
        {
          v27 = &unk_1F49BB578;
        }

        [(NSMutableDictionary *)self->_scoresForLabels setObject:v27 forKeyedSubscript:v25];
        v3 = 0x1EC42C000uLL;
        v8 = v23;
      }

      *(&self->super.super.super.isa + *(v8 + 2948)) = (*(&self->super.super.super.isa + *(v8 + 2948)) | [cachedSensitivity unsignedIntegerValue] & 2);
      self->_remainingDetections ^= 2uLL;
    }

    goto LABEL_34;
  }

  return *(&self->super.super.super.isa + *(v3 + 2916)) == 0;
}

- (BOOL)run:(id *)run
{
  v191[1] = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v181 = objc_opt_class();
    v5 = v181;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] running...", buf, 0xCu);
  }

  v177 = 0;
  v6 = [(MADServiceVideoSafetyProcessingTask *)self validateProcessingSettingsWithError:&v177];
  v7 = v177;
  v8 = v7;
  if (v6)
  {
    v9 = [MEMORY[0x1E695DF00] now];
    [v9 timeIntervalSince1970];
    v11 = v10;

    isSharedPhotosAsset = [(MADServiceVideoAsset *)self->_asset isSharedPhotosAsset];
    asset = self->_asset;
    if (isSharedPhotosAsset)
    {
      progressHandler = self->_progressHandler;
      cancelBlock = [(VCPMABaseTask *)self cancelBlock];
      v16 = [(MADServiceVideoAsset *)asset videoURLWithAllowDownload:1 progressHandler:progressHandler cancelBlock:cancelBlock];

      if (v16)
      {
LABEL_7:
        if ([(MADServiceVideoSafetyProcessingTask *)self performQRCodeDetectionsForVideoURL:v16])
        {
          if (![(MADServiceVideoAsset *)self->_asset isSharedPhotosAsset]|| [(MADServiceVideoAsset *)self->_asset videoSensitivityAnalysisVersion]== 1 || ([(MADServiceVideoSafetyProcessingTask *)self storeSafetyClassificationResultsForSharedAsset], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v40 = v8;
            v41 = objc_alloc_init(MEMORY[0x1E69AE4E8]);
            classificationResults = [(MADServiceVideoSafetyProcessingTask *)self classificationResults];
            v43 = objc_alloc(MEMORY[0x1E69AE4F8]);
            v44 = [classificationResults objectForKeyedSubscript:*MEMORY[0x1E69AE2E0]];
            v45 = [classificationResults objectForKeyedSubscript:*MEMORY[0x1E69AE2D8]];
            v46 = [v43 initWithIsSensitiveNudity:v44 isSensitiveGoreViolence:v45 scoresForLabels:0];
            v189 = v46;
            v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v189 count:1];
            [v41 setResults:v47];

            (*(self->_completionHandler + 2))();
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              v48 = objc_opt_class();
              *buf = 138412290;
              v181 = v48;
              v49 = v48;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] complete", buf, 0xCu);
            }

            v22 = 1;
            v8 = v40;
            goto LABEL_143;
          }

          v18 = v17;
          if (run)
          {
            v19 = [v17 copy];
            v20 = *run;
            *run = v19;
          }

          goto LABEL_23;
        }

        v172 = v8;
        if ([(MADServiceVideoSafetyProcessingTask *)self fetchCachedAnalysisResults])
        {
          v34 = objc_alloc_init(MEMORY[0x1E69AE4E8]);
          classificationResults2 = [(MADServiceVideoSafetyProcessingTask *)self classificationResults];
          v36 = objc_alloc(MEMORY[0x1E69AE4F8]);
          v37 = [classificationResults2 objectForKeyedSubscript:*MEMORY[0x1E69AE2E0]];
          v38 = [classificationResults2 objectForKeyedSubscript:*MEMORY[0x1E69AE2D8]];
          if ([(NSMutableDictionary *)self->_scoresForLabels count])
          {
            scoresForLabels = self->_scoresForLabels;
          }

          else
          {
            scoresForLabels = 0;
          }

          v76 = [v36 initWithIsSensitiveNudity:v37 isSensitiveGoreViolence:v38 scoresForLabels:scoresForLabels];
          v188 = v76;
          v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v188 count:1];
          [v34 setResults:v77];

          (*(self->_completionHandler + 2))();
          if (self->_enablePowerLog)
          {
            clientBundleID = [(MADServiceVideoAsset *)self->_asset clientBundleID];
            MADPLLogIVSProcessing(clientBundleID, 1, [(MADServiceVideoAsset *)self->_asset assetType], v11);
          }

          v8 = v172;
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            v79 = objc_opt_class();
            *buf = 138412290;
            v181 = v79;
            v80 = v79;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] complete", buf, 0xCu);
          }

          v22 = 1;
          goto LABEL_143;
        }

        requiresBlastdoor = [(MADVideoSafetyClassificationRequest *)self->_request requiresBlastdoor];
        v51 = off_1E834A120;
        if (!requiresBlastdoor)
        {
          v51 = &off_1E834A210;
        }

        v52 = [objc_alloc(*v51) initWithURL:v16];
        videoProcessor = self->_videoProcessor;
        self->_videoProcessor = v52;

        if (self->_videoProcessor)
        {
          if (self->_progressHandler && ![(MADServiceVideoAsset *)self->_asset isSharedPhotosAsset])
          {
            [(VCPBlockBasedVideoProcessorProtocol *)self->_videoProcessor setProgressHandler:self->_progressHandler];
          }

          v54 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v54 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69CA820]];
          v55 = self->_remainingDetections & 3;
          v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v55];
          [v54 setObject:v56 forKeyedSubscript:*MEMORY[0x1E69CA830]];

          v57 = MediaAnalysisLogLevel();
          if (v57 >= 5)
          {
            v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
            if (v57)
            {
              v58 = objc_opt_class();
              *buf = 138412546;
              v181 = v58;
              v182 = 1024;
              LODWORD(v183) = v55;
              v59 = v58;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] The safetyModel = %u", buf, 0x12u);
            }
          }

          v60 = VCPSignPostLog(v57);
          v61 = os_signpost_id_generate(v60);

          v63 = VCPSignPostLog(v62);
          v64 = v63;
          if (v61 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v64, OS_SIGNPOST_INTERVAL_BEGIN, v61, "CommSafetyHandler_Init", "", buf, 2u);
          }

          v176 = 0;
          v170 = v54;
          v65 = [objc_alloc(MEMORY[0x1E69CA710]) initWithOptions:v54 error:&v176];
          v171 = v176;
          handler = self->_handler;
          self->_handler = v65;

          v68 = VCPSignPostLog(v67);
          v69 = v68;
          if (v61 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v68))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v69, OS_SIGNPOST_INTERVAL_END, v61, "CommSafetyHandler_Init", "", buf, 2u);
          }

          if (!self->_handler || v171)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v92 = objc_opt_class();
              v93 = v92;
              v94 = objc_opt_class();
              v95 = v94;
              v96 = [v171 description];
              *buf = 138412802;
              v181 = v92;
              v182 = 2112;
              v183 = v94;
              v184 = 2112;
              v185 = v96;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to create %@ (%@)", buf, 0x20u);
            }

            if (run)
            {
              v97 = [v171 copy];
              v22 = 0;
              v73 = *run;
              *run = v97;
LABEL_74:
              v8 = v172;
LABEL_141:

              goto LABEL_142;
            }

            v22 = 0;
            v8 = v172;
          }

          else
          {
            v70 = [objc_alloc(MEMORY[0x1E69CA790]) initWithMLHandler:self->_handler];
            videoAnalyzer = self->_videoAnalyzer;
            self->_videoAnalyzer = v70;

            if (self->_videoAnalyzer)
            {
              v175 = 0;
              v72 = [(MADServiceVideoSafetyProcessingTask *)self configureVideoProcessorWithError:&v175];
              v73 = v175;
              if (v72)
              {
                sensitiveFrameCountThreshold = [(MADVideoSafetyClassificationRequest *)self->_request sensitiveFrameCountThreshold];
                if (sensitiveFrameCountThreshold)
                {
                  sensitiveFrameCountThreshold2 = [(MADVideoSafetyClassificationRequest *)self->_request sensitiveFrameCountThreshold];
                  unsignedIntegerValue = [sensitiveFrameCountThreshold2 unsignedIntegerValue];
                }

                else
                {
                  unsignedIntegerValue = 2;
                }

                if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                {
                  v117 = objc_opt_class();
                  *buf = 138412546;
                  v181 = v117;
                  v182 = 1024;
                  LODWORD(v183) = unsignedIntegerValue;
                  v118 = v117;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Configuring sensitiveFrameCountThreshold: %u", buf, 0x12u);
                }

                v163 = objc_alloc(MEMORY[0x1E69CA788]);
                sampling = [(MADVideoSafetyClassificationRequest *)self->_request sampling];
                framesPerSync = [sampling framesPerSync];
                sampling2 = [(MADVideoSafetyClassificationRequest *)self->_request sampling];
                frameLimit = [sampling2 frameLimit];
                v166 = v73;
                if (frameLimit)
                {
                  v120 = MEMORY[0x1E696AD98];
                  sampling3 = [(MADVideoSafetyClassificationRequest *)self->_request sampling];
                  v121 = [v120 numberWithUnsignedInteger:{objc_msgSend(sampling3, "frameLimit")}];
                }

                else
                {
                  v121 = 0;
                }

                sampling4 = [(MADVideoSafetyClassificationRequest *)self->_request sampling];
                v169 = [v163 initWithOptions:0 framesPerSync:framesPerSync frameLimit:v121 sensitiveFrameCountThreshold:unsignedIntegerValue useUniformSampling:{objc_msgSend(sampling4, "uniformSampling")}];

                if (frameLimit)
                {
                }

                v123 = VCPSignPostLog([(SCMLVideoAnalyzer *)self->_videoAnalyzer startAnalysisWithConfig:v169]);
                v124 = os_signpost_id_generate(v123);

                v126 = VCPSignPostLog(v125);
                v127 = v126;
                if (v124 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v126))
                {
                  signpostPayload = [(MADServiceVideoProcessingSubtask *)self signpostPayload];
                  *buf = 138412290;
                  v181 = signpostPayload;
                  _os_signpost_emit_with_name_impl(&dword_1C9B70000, v127, OS_SIGNPOST_INTERVAL_BEGIN, v124, "VCPVideoProcessor_Analyze", "%@", buf, 0xCu);
                }

                v129 = self->_videoProcessor;
                v174 = 0;
                v130 = [(VCPBlockBasedVideoProcessorProtocol *)v129 analyzeWithError:&v174];
                v131 = v174;
                v132 = v131;
                if (v130)
                {
                  v168 = v131;
                  v133 = VCPSignPostLog(v131);
                  v134 = v133;
                  if (v124 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v133))
                  {
                    signpostPayload2 = [(MADServiceVideoProcessingSubtask *)self signpostPayload];
                    *buf = 138412290;
                    v181 = signpostPayload2;
                    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v134, OS_SIGNPOST_INTERVAL_END, v124, "VCPVideoProcessor_Analyze", "%@", buf, 0xCu);
                  }

                  v73 = v166;
                  if (!self->_processError)
                  {
                    v173 = 0;
                    v147 = [(MADServiceVideoSafetyProcessingTask *)self finalizeSafetyResultsWithError:&v173];
                    v148 = v173;
                    v146 = v148;
                    if (v147)
                    {
                      v149 = v148 == 0;
                    }

                    else
                    {
                      v149 = 0;
                    }

                    v22 = v149;
                    v132 = v168;
                    if (v149)
                    {
                      (*(self->_completionHandler + 2))();
                      if (self->_enablePowerLog)
                      {
                        clientBundleID2 = [(MADServiceVideoAsset *)self->_asset clientBundleID];
                        MADPLLogIVSProcessing(clientBundleID2, 0, [(MADServiceVideoAsset *)self->_asset assetType], v11);
                      }

                      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                      {
                        v151 = objc_opt_class();
                        *buf = 138412290;
                        v181 = v151;
                        v152 = v151;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] complete", buf, 0xCu);
                      }
                    }

                    else
                    {
                      v153 = MediaAnalysisLogLevel();
                      if (v153 >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                      {
                        v154 = objc_opt_class();
                        v155 = v154;
                        [v146 description];
                        v157 = v156 = v147;
                        *buf = 138412546;
                        v181 = v154;
                        v182 = 2112;
                        v183 = v157;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to finalize results (%@)", buf, 0x16u);

                        v147 = v156;
                        v132 = v168;
                      }

                      if (run)
                      {
                        v158 = [v146 copy];
                        v159 = *run;
                        *run = v158;
                      }
                    }

                    goto LABEL_137;
                  }

                  v132 = v168;
                  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    v136 = objc_opt_class();
                    processError = self->_processError;
                    v138 = v136;
                    v139 = [(NSError *)processError description];
                    *buf = 138412546;
                    v181 = v136;
                    v132 = v168;
                    v182 = 2112;
                    v183 = v139;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to process frame buffer (%@)", buf, 0x16u);

                    v73 = v166;
                  }

                  if (!run)
                  {
                    v22 = 0;
LABEL_138:
                    v8 = v172;
                    goto LABEL_139;
                  }

                  v140 = self->_processError;
                }

                else
                {
                  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    v141 = objc_opt_class();
                    v142 = v132;
                    v143 = v141;
                    v144 = [(NSError *)v142 description];
                    *buf = 138412546;
                    v181 = v141;
                    v182 = 2112;
                    v183 = v144;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to process video (%@)", buf, 0x16u);

                    v132 = v142;
                  }

                  v73 = v166;
                  if (!run)
                  {
                    v22 = 0;
LABEL_139:

                    v116 = v169;
                    goto LABEL_140;
                  }

                  v140 = v132;
                }

                v145 = [(NSError *)v140 copy];
                v22 = 0;
                v146 = *run;
                *run = v145;
LABEL_137:

                goto LABEL_138;
              }

              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v109 = objc_opt_class();
                v110 = v109;
                v111 = objc_opt_class();
                v112 = v73;
                v113 = v111;
                v114 = [v112 description];
                *buf = 138412802;
                v181 = v109;
                v182 = 2112;
                v183 = v111;
                v184 = 2112;
                v185 = v114;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to configure %@ (%@)", buf, 0x20u);

                v73 = v112;
              }

              if (run)
              {
                v115 = [v73 copy];
                v22 = 0;
                v116 = *run;
                *run = v115;
                v8 = v172;
LABEL_140:

                goto LABEL_141;
              }

              v22 = 0;
              goto LABEL_74;
            }

            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v98 = objc_opt_class();
              v99 = v98;
              v100 = objc_opt_class();
              *buf = 138412546;
              v181 = v98;
              v182 = 2112;
              v183 = v100;
              v101 = v100;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to create %@", buf, 0x16u);
            }

            if (run)
            {
              v102 = MEMORY[0x1E696ABC0];
              v103 = *MEMORY[0x1E696A768];
              v178 = *MEMORY[0x1E696A578];
              v104 = MEMORY[0x1E696AEC0];
              v105 = objc_opt_class();
              v73 = [v104 stringWithFormat:@"[%@] Failed to create %@", v105, objc_opt_class()];
              v179 = v73;
              v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v179 forKeys:&v178 count:1];
              v107 = [v102 errorWithDomain:v103 code:-50 userInfo:v106];
              v108 = *run;
              *run = v107;

              v22 = 0;
              goto LABEL_141;
            }

            v22 = 0;
          }

LABEL_142:

          goto LABEL_143;
        }

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v81 = objc_opt_class();
          request = self->_request;
          v83 = v81;
          requiresBlastdoor2 = [(MADVideoSafetyClassificationRequest *)request requiresBlastdoor];
          v85 = @"NO";
          if (requiresBlastdoor2)
          {
            v85 = @"YES";
          }

          *buf = 138412546;
          v181 = v81;
          v182 = 2112;
          v183 = v85;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to create video processor (requiresBlastdoor: %@)", buf, 0x16u);
        }

        if (!run)
        {
LABEL_23:
          v22 = 0;
          goto LABEL_143;
        }

        v86 = MEMORY[0x1E696ABC0];
        v87 = *MEMORY[0x1E696A768];
        v186 = *MEMORY[0x1E696A578];
        v88 = MEMORY[0x1E696AEC0];
        v89 = objc_opt_class();
        requiresBlastdoor3 = [(MADVideoSafetyClassificationRequest *)self->_request requiresBlastdoor];
        v91 = @"NO";
        if (requiresBlastdoor3)
        {
          v91 = @"YES";
        }

        v27 = [v88 stringWithFormat:@"[%@] Failed to create video processor (requiresBlastdoor: %@)", v89, v91];
        v187 = v27;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v187 forKeys:&v186 count:1];
        v29 = v86;
        v30 = v87;
        v31 = -50;
LABEL_22:
        v32 = [v29 errorWithDomain:v30 code:v31 userInfo:v28];
        v33 = *run;
        *run = v32;

        goto LABEL_23;
      }
    }

    else
    {
      v16 = [(MADServiceVideoAsset *)self->_asset url];
      if (v16)
      {
        goto LABEL_7;
      }
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      *buf = 138412290;
      v181 = v23;
      v24 = v23;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to obtain video resource", buf, 0xCu);
    }

    if (!run)
    {
      goto LABEL_23;
    }

    v25 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A768];
    v190 = *MEMORY[0x1E696A578];
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] Failed to obtain video resource", objc_opt_class()];
    v191[0] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v191 forKeys:&v190 count:1];
    v29 = v25;
    v30 = v26;
    v31 = -18;
    goto LABEL_22;
  }

  if (run)
  {
    v21 = [v7 copy];
    v22 = 0;
    v16 = *run;
    *run = v21;
LABEL_143:

    goto LABEL_144;
  }

  v22 = 0;
LABEL_144:

  return v22;
}

@end