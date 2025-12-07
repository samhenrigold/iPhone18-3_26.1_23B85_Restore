@interface SIPersonDetectorAlgorithm
- (SIPersonDetectorAlgorithm)initWithComputeEngine:(int64_t)engine andNetworkConfiguration:(int64_t)configuration useE5RT:(BOOL)t;
- (SIPersonDetectorAlgorithm)initWithNetworkConfiguration:(id)configuration;
- (int64_t)_preprocessingInputData:(id)data;
- (int64_t)switchConfiguration:(unint64_t)configuration;
- (void)runWithInput:(__CVBuffer *)input output:(id)output;
@end

@implementation SIPersonDetectorAlgorithm

- (SIPersonDetectorAlgorithm)initWithComputeEngine:(int64_t)engine andNetworkConfiguration:(int64_t)configuration useE5RT:(BOOL)t
{
  tCopy = t;
  v9 = objc_alloc_init(SIPersonDetectorNetworkConfiguration);
  [(SINetworkConfiguration *)v9 setEngineType:engine];
  [(SIPersonDetectorNetworkConfiguration *)v9 setNetworkModeEnum:configuration];
  [(SINetworkConfiguration *)v9 setRunByE5RT:tCopy];
  v10 = [(SIPersonDetectorAlgorithm *)self initWithNetworkConfiguration:v9];

  return v10;
}

- (void)runWithInput:(__CVBuffer *)input output:(id)output
{
  outputCopy = output;
  v7 = objc_alloc_init(SIImageInputData);
  [(SIImageInputData *)v7 setInputImageBuffer:input];
  v8 = objc_alloc_init(SIPersonDetectorData);
  [(SIPersonDetectorData *)v8 setBoundingBoxes:outputCopy];

  v9.receiver = self;
  v9.super_class = SIPersonDetectorAlgorithm;
  [(SIAlgorithm *)&v9 runWithInput:v7 output:v8];
}

- (SIPersonDetectorAlgorithm)initWithNetworkConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v21.receiver = self;
  v21.super_class = SIPersonDetectorAlgorithm;
  v5 = [(SIAlgorithm *)&v21 initWithNetworkConfiguration:configurationCopy];
  v6 = v5;
  if (v5)
  {
    model = [(SIAlgorithm *)v5 model];
    model = v6->_model;
    v6->_model = model;

    v9 = [SIVideoToolboxScaler alloc];
    [(SIPersonDetector *)v6->_model getInputResolution];
    v11 = v10;
    v13 = v12;
    imageScalerIdentifier = [configurationCopy imageScalerIdentifier];
    v15 = [(SIBaseScaler *)v9 initForOutputResolution:1111970369 outputPixelFormat:0 mode:imageScalerIdentifier algorithmKey:v11, v13];
    scaler = v6->_scaler;
    v6->_scaler = v15;

    v17 = objc_alloc_init(SIImageInputData);
    inputData = v6->_inputData;
    v6->_inputData = v17;

    v19 = v6;
  }

  return v6;
}

- (int64_t)switchConfiguration:(unint64_t)configuration
{
  v4.receiver = self;
  v4.super_class = SIPersonDetectorAlgorithm;
  return [(SIAlgorithm *)&v4 switchConfiguration:configuration];
}

- (int64_t)_preprocessingInputData:(id)data
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = -[SIVideoToolboxScaler createScaledImage:](self->_scaler, "createScaledImage:", [data inputImageBuffer]);
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
    v8 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/PersonDetector/SIPersonDetectorAlgorithm.m";
    v9 = 1025;
    v10 = 118;
    _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to scale the input image or input depth ***", &v7, 0x12u);
  }

  return 1;
}

@end