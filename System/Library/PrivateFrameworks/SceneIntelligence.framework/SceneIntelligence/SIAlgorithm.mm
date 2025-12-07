@interface SIAlgorithm
+ (Class)inputDataClass;
+ (Class)outputDataClass;
+ (id)initWithNetworkConfiguration:(id)configuration;
- (CGSize)getInputResolution;
- (CGSize)getOutputResolution;
- (SIAlgorithm)initWithNetworkConfiguration:(id)configuration;
- (id)createEmptyInputDataWithExpectedFormat;
- (int64_t)_runWithInput:(id)input output:(id)output;
- (int64_t)runWithInput:(id)input output:(id)output resolutionConfiguration:(int64_t)configuration;
- (int64_t)switchConfiguration:(unint64_t)configuration;
@end

@implementation SIAlgorithm

+ (Class)inputDataClass
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136380931;
    v5 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIAlgorithm.m";
    v6 = 1025;
    v7 = 36;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Expected input class must be overriden ***", &v4, 0x12u);
  }

  return 0;
}

+ (Class)outputDataClass
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136380931;
    v5 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIAlgorithm.m";
    v6 = 1025;
    v7 = 43;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Expected output class must be overriden ***", &v4, 0x12u);
  }

  return 0;
}

+ (id)initWithNetworkConfiguration:(id)configuration
{
  v13 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  algorithmClassName = [configurationCopy algorithmClassName];
  v5 = algorithmClassName;
  if (algorithmClassName)
  {
    v6 = [objc_alloc(NSClassFromString(algorithmClassName)) initWithNetworkConfiguration:configurationCopy];
  }

  else
  {
    v7 = __SceneIntelligenceLogSharedInstance(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136380931;
      v10 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIAlgorithm.m";
      v11 = 1025;
      v12 = 50;
      _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** algorithm name is not specified in the subclass ***", &v9, 0x12u);
    }

    v6 = 0;
  }

  return v6;
}

- (SIAlgorithm)initWithNetworkConfiguration:(id)configuration
{
  v22 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = SIAlgorithm;
  v6 = [(SIAlgorithm *)&v17 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_networkConfiguration, configuration);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v9 substringToIndex:{objc_msgSend(v9, "length") - 20}];

    v11 = [objc_alloc(NSClassFromString(v10)) initWithNetworkConfiguration:configurationCopy];
    v12 = p_isa[2];
    p_isa[2] = v11;

    [p_isa[2] setMappingId:{objc_msgSend(configurationCopy, "signpostMappingID")}];
    if (p_isa[2] || (v13 = [configurationCopy allowDryRunWithoutModel], (v13 & 1) != 0))
    {
      v14 = p_isa;
    }

    else
    {
      v16 = __SceneIntelligenceLogSharedInstance(v13);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v19 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIAlgorithm.m";
        v20 = 1025;
        v21 = 77;
        _os_log_impl(&dword_21DE0D000, v16, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to initialize ML model ***", buf, 0x12u);
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CGSize)getOutputResolution
{
  [(SIModel *)self->_model getOutputResolution];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)getInputResolution
{
  [(SIModel *)self->_model getInputResolution];
  result.height = v3;
  result.width = v2;
  return result;
}

- (int64_t)_runWithInput:(id)input output:(id)output
{
  v28 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  outputCopy = output;
  [(SIModel *)self->_model setFrameTimestamp:CFAbsoluteTimeGetCurrent()];
  [objc_opt_class() inputDataClass];
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v11 = __SceneIntelligenceLogSharedInstance(isKindOfClass);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      inputDataClass = [objc_opt_class() inputDataClass];
      v15 = NSStringFromClass(inputDataClass);
      v20 = 136381443;
      v21 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIAlgorithm.m";
      v22 = 1025;
      v23 = 107;
      v24 = 2113;
      v25 = v13;
      v26 = 2113;
      v27 = v15;
      v16 = " %{private}s:%{private}d *** Unexpected input data: %{private}@. (Expected %{private}@) ***";
LABEL_10:
      _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, v16, &v20, 0x26u);
    }

LABEL_11:

    v10 = 6;
    goto LABEL_12;
  }

  [objc_opt_class() outputDataClass];
  v9 = objc_opt_isKindOfClass();
  if ((v9 & 1) == 0)
  {
    v11 = __SceneIntelligenceLogSharedInstance(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v13 = NSStringFromClass(v17);
      outputDataClass = [objc_opt_class() outputDataClass];
      v15 = NSStringFromClass(outputDataClass);
      v20 = 136381443;
      v21 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIAlgorithm.m";
      v22 = 1025;
      v23 = 113;
      v24 = 2113;
      v25 = v13;
      v26 = 2113;
      v27 = v15;
      v16 = " %{private}s:%{private}d *** Unexpected output data: %{private}@. (Expected %{private}@) ***";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  [(SIModel *)self->_model algorithmNameHash];
  [(SIModel *)self->_model mappingId];
  kdebug_trace();
  v10 = [(SIAlgorithm *)self _preprocessingInputData:inputCopy];
  [(SIModel *)self->_model algorithmNameHash];
  [(SIModel *)self->_model mappingId];
  kdebug_trace();
  if (!v10)
  {
    [(SIModel *)self->_model algorithmNameHash];
    [(SIModel *)self->_model mappingId];
    kdebug_trace();
    v10 = [(SIAlgorithm *)self _inferenceWithInput:inputCopy output:outputCopy];
    [(SIModel *)self->_model algorithmNameHash];
    [(SIModel *)self->_model mappingId];
    kdebug_trace();
    if (!v10)
    {
      [(SIModel *)self->_model algorithmNameHash];
      [(SIModel *)self->_model mappingId];
      kdebug_trace();
      v10 = [(SIAlgorithm *)self _postprocessingOutput:outputCopy];
      [(SIModel *)self->_model algorithmNameHash];
      [(SIModel *)self->_model mappingId];
      kdebug_trace();
    }
  }

LABEL_12:

  return v10;
}

- (int64_t)runWithInput:(id)input output:(id)output resolutionConfiguration:(int64_t)configuration
{
  v18 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  outputCopy = output;
  [(SIModel *)self->_model algorithmNameHash];
  [(SIModel *)self->_model mappingId];
  kdebug_trace();
  if (configuration < 0 || ([(SIModel *)self->_model algorithmNameHash], [(SIModel *)self->_model mappingId], kdebug_trace(), v10 = [(SIAlgorithm *)self switchConfiguration:configuration], [(SIModel *)self->_model algorithmNameHash], [(SIModel *)self->_model mappingId], v11 = kdebug_trace(), !v10))
  {
    v10 = [(SIAlgorithm *)self _runWithInput:inputCopy output:outputCopy];
    [(SIModel *)self->_model algorithmNameHash];
    [(SIModel *)self->_model mappingId];
    kdebug_trace();
  }

  else
  {
    v12 = __SceneIntelligenceLogSharedInstance(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136380931;
      v15 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIAlgorithm.m";
      v16 = 1025;
      v17 = 164;
      _os_log_impl(&dword_21DE0D000, v12, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to switch configuration! ***", &v14, 0x12u);
    }
  }

  return v10;
}

- (int64_t)switchConfiguration:(unint64_t)configuration
{
  v9 = *MEMORY[0x277D85DE8];
  result = [(SIModel *)self->_model switchNetworkConfiguration:configuration];
  if (result)
  {
    v4 = __SceneIntelligenceLogSharedInstance(result);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136380931;
      v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIAlgorithm.m";
      v7 = 1025;
      v8 = 184;
      _os_log_impl(&dword_21DE0D000, v4, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** fail to switch the configuration! The output is not updated ***", &v5, 0x12u);
    }

    return 5;
  }

  return result;
}

- (id)createEmptyInputDataWithExpectedFormat
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136380931;
    v5 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIAlgorithm.m";
    v6 = 1025;
    v7 = 217;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Must be implemented by the subclass ***", &v4, 0x12u);
  }

  return 0;
}

@end