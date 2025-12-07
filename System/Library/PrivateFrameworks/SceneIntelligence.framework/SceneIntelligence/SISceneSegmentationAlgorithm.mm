@interface SISceneSegmentationAlgorithm
- (SISceneSegmentationAlgorithm)initWithComputeEngine:(int64_t)engine andNetworkConfiguration:(int64_t)configuration uncertaintyThreshold:(float)threshold;
- (SISceneSegmentationAlgorithm)initWithNetworkConfiguration:(id)configuration;
- (int64_t)_postprocessingOutput:(id)output;
- (int64_t)_preprocessingInputData:(id)data;
- (int64_t)runWithInput:(__CVBuffer *)input output:(__IOSurface *)output confidenceOutput:(__IOSurface *)confidenceOutput uncertaintyOutput:(__IOSurface *)uncertaintyOutput resampleOutput:(BOOL)resampleOutput networkConfiguration:(int64_t)configuration;
- (int64_t)switchConfiguration:(unint64_t)configuration;
@end

@implementation SISceneSegmentationAlgorithm

- (SISceneSegmentationAlgorithm)initWithComputeEngine:(int64_t)engine andNetworkConfiguration:(int64_t)configuration uncertaintyThreshold:(float)threshold
{
  v9 = objc_alloc_init(SISceneSegmentationNetworkConfiguration);
  [(SINetworkConfiguration *)v9 setEngineType:engine];
  [(SISceneSegmentationNetworkConfiguration *)v9 setNetworkModeEnum:configuration];
  [(SINetworkConfiguration *)v9 setRunByE5RT:1];
  *&v10 = threshold;
  [(SISceneSegmentationNetworkConfiguration *)v9 setUncertaintyThreshold:v10];
  [(SISceneSegmentationNetworkConfiguration *)v9 setModelConfig:1];
  v11 = [(SISceneSegmentationAlgorithm *)self initWithNetworkConfiguration:v9];

  return v11;
}

- (int64_t)runWithInput:(__CVBuffer *)input output:(__IOSurface *)output confidenceOutput:(__IOSurface *)confidenceOutput uncertaintyOutput:(__IOSurface *)uncertaintyOutput resampleOutput:(BOOL)resampleOutput networkConfiguration:(int64_t)configuration
{
  v29 = *MEMORY[0x277D85DE8];
  v14 = objc_alloc_init(SIImageInputData);
  [(SIImageInputData *)v14 setInputImageBuffer:input];
  [(SIImageInputData *)v14 setInputDepthBuffer:0];
  texture = 0;
  pixelBufferOut = 0;
  v22 = 0;
  v15 = CVPixelBufferCreateWithIOSurface(0, output, 0, &pixelBufferOut);
  if (v15)
  {
    v16 = __SceneIntelligenceLogSharedInstance(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v26 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneSegmentation/SISceneSegmentationAlgorithm.m";
      v27 = 1025;
      v28 = 78;
LABEL_7:
      _os_log_impl(&dword_21DE0D000, v16, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to allocate temp buffer for semantic ***", buf, 0x12u);
    }
  }

  else
  {
    v17 = CVPixelBufferCreateWithIOSurface(0, confidenceOutput, 0, &texture);
    if (v17)
    {
      v16 = __SceneIntelligenceLogSharedInstance(v17);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v26 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneSegmentation/SISceneSegmentationAlgorithm.m";
        v27 = 1025;
        v28 = 80;
        goto LABEL_7;
      }
    }

    else
    {
      if (!uncertaintyOutput || (v20 = CVPixelBufferCreateWithIOSurface(0, uncertaintyOutput, 0, &v22), !v20))
      {
        v21 = [SISceneSegmentationData alloc];
        v16 = [(SISceneSegmentationData *)v21 initWithOutputSemanticBuffer:pixelBufferOut confidenceBuffer:texture uncertaintyBuffer:v22];
        CVPixelBufferRelease(pixelBufferOut);
        CVPixelBufferRelease(texture);
        CVPixelBufferRelease(v22);
        v18 = [(SIAlgorithm *)self runWithInput:v14 output:v16 resolutionConfiguration:configuration];
        goto LABEL_9;
      }

      v16 = __SceneIntelligenceLogSharedInstance(v20);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v26 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneSegmentation/SISceneSegmentationAlgorithm.m";
        v27 = 1025;
        v28 = 83;
        goto LABEL_7;
      }
    }
  }

  v18 = 4;
LABEL_9:

  return v18;
}

- (SISceneSegmentationAlgorithm)initWithNetworkConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = SISceneSegmentationAlgorithm;
  v6 = [(SIAlgorithm *)&v17 initWithNetworkConfiguration:configurationCopy];
  v7 = v6;
  if (v6)
  {
    model = [(SIAlgorithm *)v6 model];
    model = v7->_model;
    v7->_model = model;

    objc_storeStrong(&v7->_configuration, configuration);
    v10 = [SIVideoToolboxScaler alloc];
    [(SISceneSegmentation *)v7->_model getInputResolution];
    v11 = [(SIBaseScaler *)v10 initForOutputResolution:1111970369 outputPixelFormat:0 mode:@"SceneSegmentation" algorithmKey:?];
    scalerOne = v7->_scalerOne;
    v7->_scalerOne = v11;

    v13 = objc_alloc_init(SIImageInputData);
    inputData = v7->_inputData;
    v7->_inputData = v13;

    v15 = v7;
  }

  return v7;
}

- (int64_t)switchConfiguration:(unint64_t)configuration
{
  networkConfiguration = [(SIAlgorithm *)self networkConfiguration];
  networkModeEnum = [networkConfiguration networkModeEnum];

  v13.receiver = self;
  v13.super_class = SISceneSegmentationAlgorithm;
  v7 = [(SIAlgorithm *)&v13 switchConfiguration:configuration];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = networkModeEnum == configuration;
  }

  if (!v8)
  {
    v9 = [SIVideoToolboxScaler alloc];
    [(SISceneSegmentation *)self->_model getInputResolution];
    v10 = [(SIBaseScaler *)v9 initForOutputResolution:1111970369 outputPixelFormat:0 mode:@"SceneSegmentation" algorithmKey:?];
    scalerOne = self->_scalerOne;
    self->_scalerOne = v10;
  }

  return v7;
}

- (int64_t)_preprocessingInputData:(id)data
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = -[SIVideoToolboxScaler createScaledImage:](self->_scalerOne, "createScaledImage:", [data inputImageBuffer]);
  [(SIImageInputData *)self->_inputData setInputImageBuffer:v4];
  CVPixelBufferRelease(v4);
  if ([(SIImageInputData *)self->_inputData inputImageBuffer])
  {
    return 0;
  }

  v6 = __SceneIntelligenceLogSharedInstance(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 136380931;
    v8 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneSegmentation/SISceneSegmentationAlgorithm.m";
    v9 = 1025;
    v10 = 140;
    _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to scale the input image ***", &v7, 0x12u);
  }

  return 1;
}

- (int64_t)_postprocessingOutput:(id)output
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(SISceneSegmentation *)self->_model postprocessingOutput:output];
  v4 = v3;
  if (v3)
  {
    v5 = __SceneIntelligenceLogSharedInstance(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136380931;
      v8 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneSegmentation/SISceneSegmentationAlgorithm.m";
      v9 = 1025;
      v10 = 157;
      _os_log_impl(&dword_21DE0D000, v5, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to do postprocessing for SS result ***", &v7, 0x12u);
    }
  }

  return v4;
}

@end