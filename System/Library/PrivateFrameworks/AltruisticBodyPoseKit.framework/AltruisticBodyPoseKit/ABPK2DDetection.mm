@interface ABPK2DDetection
+ (CGSize)inputDimensionsForDeviceOrientation:(id)orientation;
- (ABPK2DDetection)initWithNetworkConfig:(id)config;
- (BOOL)initMLNetwork;
- (id).cxx_construct;
- (id)_createResultDataFromImageDataForNeuralNetwork:(id)network originalImageData:(id)data outputPixelBuffer:(__CVBuffer *)buffer numberOfOutputTensors:(unint64_t)tensors rotationOfResultTensor:(int64_t)tensor;
- (id)createException:(void *)exception forNetwork:(id)network;
- (id)runWithImage:(__CVBuffer *)image abpkOrientation:(int64_t)orientation atTimestamp:(double)timestamp rotationOfResultTensor:(int64_t)tensor;
- (id)runWithImageDataForNeuralNetwork:(id)network originalImageData:(id)data abpkOrientation:(int64_t)orientation atTimestamp:(double)timestamp rotationOfResultTensor:(int64_t)tensor;
- (id)runWithMLImage:(id)image originalImage:(id)originalImage abpkOrientation:(int64_t)orientation atTimestamp:(double)timestamp rotationOfResultTensor:(int64_t)tensor;
- (void)_bindOutputTensor;
- (void)changeEspressoConfig:(id)config;
- (void)dealloc;
@end

@implementation ABPK2DDetection

- (ABPK2DDetection)initWithNetworkConfig:(id)config
{
  configCopy = config;
  v6 = __ABPKLogSharedInstance(configCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v6, OS_LOG_TYPE_DEBUG, " ABPK2DDetection: Initializing ", buf, 2u);
  }

  v19.receiver = self;
  v19.super_class = ABPK2DDetection;
  v7 = [(ABPK2DDetection *)&v19 init];
  v8 = v7;
  if (v7 && (objc_storeStrong(&v7->_config2D, config), [ABPK2DMLModelConfigSelector getModelWithNetworkConfig:v8->_config2D], v9 = objc_claimAutoreleasedReturnValue(), mlConfig = v8->_mlConfig, v8->_mlConfig = v9, mlConfig, [(ABPK2DDetection *)v8 setUseEspressoZeroCopyOutput:1], [(ABPK2DDetection *)v8 initMLNetwork]))
  {
    [(ABPKMLModelConfiguration2D *)v8->_mlConfig inputDimensions];
    v8->_parameters.input.resolution.width = v11;
    v8->_parameters.input.resolution.height = v12;
    [(ABPKMLModelConfiguration2D *)v8->_mlConfig biasR];
    v8->_parameters.input.preprocessor.bias_r = v13;
    [(ABPKMLModelConfiguration2D *)v8->_mlConfig biasG];
    v8->_parameters.input.preprocessor.bias_g = v14;
    [(ABPKMLModelConfiguration2D *)v8->_mlConfig biasB];
    v8->_parameters.input.preprocessor.bias_b = v15;
    [(ABPKMLModelConfiguration2D *)v8->_mlConfig scale];
    v8->_parameters.input.preprocessor.scale = v16;
    v8->_parameters.input.preprocessor.network_wants_bgr = [(ABPKMLModelConfiguration2D *)v8->_mlConfig networkWantsBGR];
    v17 = v8;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (CGSize)inputDimensionsForDeviceOrientation:(id)orientation
{
  [orientation inputDimensions];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)createException:(void *)exception forNetwork:(id)network
{
  networkCopy = network;
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  espresso_plan_get_error_info();
  v7 = [v5 initWithUTF8String:v6];
  v8 = MEMORY[0x277CBEAD8];
  networkCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ in %@", v7, networkCopy];
  v10 = [v8 exceptionWithName:@"EspressoPlanFailure" reason:networkCopy userInfo:0];

  return v10;
}

- (BOOL)initMLNetwork
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = __ABPKLogSharedInstance([(ABPK2DDetection *)self _startLoadingMLModelSignpost]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " ABPK2DDetection: Initializing ML Network ", &buf, 2u);
  }

  inputTensorNames = [(ABPKMLModelConfiguration *)self->_mlConfig inputTensorNames];
  inputTensorNames = self->_inputTensorNames;
  self->_inputTensorNames = inputTensorNames;

  outputTensorNames = [(ABPKMLModelConfiguration *)self->_mlConfig outputTensorNames];
  outputTensorNames = self->_outputTensorNames;
  self->_outputTensorNames = outputTensorNames;

  self->_useEspressoV2 = 0;
  compiledMLModelPath = [(ABPKMLModelConfiguration *)self->_mlConfig compiledMLModelPath];
  if (!compiledMLModelPath)
  {
    v9 = __ABPKLogSharedInstance(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = 0;
      _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_ERROR, " Network path is nil: %@ ", &buf, 0xCu);
    }

    goto LABEL_35;
  }

  v9 = [(ABPKMLModelConfiguration2D *)self->_mlConfig configStringForABPKDeviceOrientation:3];
  v10 = __ABPKLogSharedInstance(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_23EDDC000, v10, OS_LOG_TYPE_DEBUG, " \t Select network config: %@ ", &buf, 0xCu);
  }

  if (![compiledMLModelPath hasSuffix:@".bundle"])
  {
    context = espresso_create_context();
    self->_context = context;
    if (context)
    {
      v18 = "ANE";
    }

    else
    {
      context = espresso_create_context();
      self->_context = context;
      if (!context)
      {
        v42 = __ABPKLogSharedInstance(0);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_23EDDC000, v42, OS_LOG_TYPE_ERROR, " ANE not available. GPU not available. Espresso context creation failed for 2d detection model. ", &buf, 2u);
        }

        goto LABEL_35;
      }

      v18 = "GPU";
    }

    v19 = __ABPKLogSharedInstance(context);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v18;
      _os_log_impl(&dword_23EDDC000, v19, OS_LOG_TYPE_DEFAULT, " \t Deploying 2d detection model on %s ", &buf, 0xCu);
    }

    Espresso::get_internal_context(&buf, self->_context, v20);
    *(buf + 68) = 1;
    v21 = [compiledMLModelPath stringByAppendingPathComponent:@"model.espresso.net"];
    v22 = __ABPKLogSharedInstance(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v60 = 138412290;
      v61 = v21;
      _os_log_impl(&dword_23EDDC000, v22, OS_LOG_TYPE_DEFAULT, " %@ ", v60, 0xCu);
    }

    v23 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v24 = [v23 fileExistsAtPath:v21 isDirectory:0];
    v25 = v24;
    if (v24)
    {
      self->_plan = espresso_create_plan();
      v26 = v21;
      [v21 UTF8String];
      if (!espresso_plan_add_network())
      {
        v27 = v9;
        [v9 UTF8String];
        if (!espresso_network_select_configuration())
        {
          if (!-[ABPKMLModelConfiguration2D applyPreProcessing](self->_mlConfig, "applyPreProcessing") || (-[NSArray objectAtIndexedSubscript:](self->_inputTensorNames, "objectAtIndexedSubscript:", 0), v28 = objc_claimAutoreleasedReturnValue(), v29 = v28, [v28 UTF8String], v30 = espresso_set_image_preprocessing_params() == 0, v28, v30))
          {
            v32 = self->_inputTensorNames;
            v58[0] = MEMORY[0x277D85DD0];
            v58[1] = 3221225472;
            v58[2] = __32__ABPK2DDetection_initMLNetwork__block_invoke;
            v58[3] = &unk_278C71960;
            v58[4] = self;
            v33 = compiledMLModelPath;
            v59 = v33;
            [(NSArray *)v32 enumerateObjectsUsingBlock:v58];
            std::vector<espresso_buffer_t>::resize(&self->_espressoOutputTensors.__begin_, [(NSArray *)self->_outputTensorNames count]);
            std::vector<__CVPixelBufferPool *>::resize(&self->_espressoOutputBufferPools.__begin_, [(NSArray *)self->_outputTensorNames count]);
            std::vector<__CVPixelBufferPool *>::resize(&self->_outputBuffers.__begin_, [(NSArray *)self->_outputTensorNames count]);
            v34 = self->_outputTensorNames;
            v56[0] = MEMORY[0x277D85DD0];
            v56[1] = 3221225472;
            v56[2] = __32__ABPK2DDetection_initMLNetwork__block_invoke_17;
            v56[3] = &unk_278C71960;
            v56[4] = self;
            v35 = v33;
            v57 = v35;
            [(NSArray *)v34 enumerateObjectsUsingBlock:v56];
            v36 = espresso_plan_build();
            if (v36)
            {
              v44 = __ABPKLogSharedInstance(v36);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                *v60 = 0;
                _os_log_impl(&dword_23EDDC000, v44, OS_LOG_TYPE_ERROR, " Could not build plan ", v60, 2u);
              }

              v45 = [(ABPK2DDetection *)self createException:self->_plan forNetwork:v35];
              objc_exception_throw(v45);
            }

            [(ABPK2DDetection *)self _bindOutputTensor];
            v37 = self->_inputTensorNames;
            v54[0] = MEMORY[0x277D85DD0];
            v54[1] = 3221225472;
            v54[2] = __32__ABPK2DDetection_initMLNetwork__block_invoke_18;
            v54[3] = &unk_278C71960;
            v54[4] = self;
            v38 = v35;
            v55 = v38;
            [(NSArray *)v37 enumerateObjectsUsingBlock:v54];
            v39 = self->_outputTensorNames;
            v48 = MEMORY[0x277D85DD0];
            v49 = 3221225472;
            v50 = __32__ABPK2DDetection_initMLNetwork__block_invoke_19;
            v51 = &unk_278C71960;
            selfCopy = self;
            v53 = v38;
            [(NSArray *)v39 enumerateObjectsUsingBlock:&v48];

            goto LABEL_28;
          }

          v46 = __ABPKLogSharedInstance(v31);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *v60 = 0;
            _os_log_impl(&dword_23EDDC000, v46, OS_LOG_TYPE_ERROR, " Could not set preprocessing parameters for the input image ", v60, 2u);
          }
        }
      }

      v47 = [(ABPK2DDetection *)self createException:self->_plan forNetwork:compiledMLModelPath];
      objc_exception_throw(v47);
    }

    v40 = __ABPKLogSharedInstance(v24);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *v60 = 138412290;
      v61 = v21;
      _os_log_impl(&dword_23EDDC000, v40, OS_LOG_TYPE_ERROR, " Network path is invalid: %@ ", v60, 0xCu);
    }

LABEL_28:
    if (*(&buf + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
    }

    if (v25)
    {
      goto LABEL_31;
    }

LABEL_35:
    v41 = 0;
    goto LABEL_36;
  }

  self->_useEspressoV2 = 1;
  v11 = [[ABPKMLNetworkV2 alloc] initWithNetworkPath:compiledMLModelPath networkConfig:v9 inputNames:self->_inputTensorNames outputNames:self->_outputTensorNames useSurface:1];
  networkV2 = self->_networkV2;
  self->_networkV2 = v11;

  inputBuffers = [(ABPKMLNetworkV2 *)self->_networkV2 inputBuffers];
  inputBufferDict = self->_inputBufferDict;
  self->_inputBufferDict = inputBuffers;

  outputBuffers = [(ABPKMLNetworkV2 *)self->_networkV2 outputBuffers];
  outputBufferDict = self->_outputBufferDict;
  self->_outputBufferDict = outputBuffers;

LABEL_31:
  [(ABPK2DDetection *)self _endLoadingMLModelSignpost:v48];
  v41 = 1;
LABEL_36:

  return v41;
}

void __32__ABPK2DDetection_initMLNetwork__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = a2;
  [v6 UTF8String];
  v3 = espresso_network_declare_input();
  if (v3)
  {
    v4 = __ABPKLogSharedInstance(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v6;
      _os_log_impl(&dword_23EDDC000, v4, OS_LOG_TYPE_ERROR, " Could not declare input tensor: %@ ", buf, 0xCu);
    }

    v5 = [*(a1 + 32) createException:*(*(a1 + 32) + 40) forNetwork:*(a1 + 40)];
    objc_exception_throw(v5);
  }
}

void __32__ABPK2DDetection_initMLNetwork__block_invoke_17(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = a2;
  [v6 UTF8String];
  v3 = espresso_network_declare_output();
  if (v3)
  {
    v4 = __ABPKLogSharedInstance(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v6;
      _os_log_impl(&dword_23EDDC000, v4, OS_LOG_TYPE_ERROR, " Could not declare output tensor: %@ ", buf, 0xCu);
    }

    v5 = [*(a1 + 32) createException:*(*(a1 + 32) + 40) forNetwork:*(a1 + 40)];
    objc_exception_throw(v5);
  }
}

void __32__ABPK2DDetection_initMLNetwork__block_invoke_18(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  [v3 UTF8String];
  blob_dimensions = espresso_network_query_blob_dimensions();
  if (blob_dimensions)
  {
    v6 = __ABPKLogSharedInstance(blob_dimensions);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_23EDDC000, v6, OS_LOG_TYPE_ERROR, " Could not obtain dimension for input tensor: %@ ", &v8, 0xCu);
    }

    v7 = [*(a1 + 32) createException:*(*(a1 + 32) + 40) forNetwork:*(a1 + 40)];
    objc_exception_throw(v7);
  }

  v5 = __ABPKLogSharedInstance(blob_dimensions);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138413314;
    v9 = v3;
    v10 = 2048;
    v11 = v18;
    v12 = 2048;
    v13 = *(&v18 + 1);
    v14 = 2048;
    v15 = v19;
    v16 = 2048;
    v17 = *(&v19 + 1);
    _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_DEBUG, " \t Tensor %@ dimensions %zu %zu %zu %zu ", &v8, 0x34u);
  }
}

void __32__ABPK2DDetection_initMLNetwork__block_invoke_19(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  [v3 UTF8String];
  blob_dimensions = espresso_network_query_blob_dimensions();
  if (blob_dimensions)
  {
    v6 = __ABPKLogSharedInstance(blob_dimensions);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_23EDDC000, v6, OS_LOG_TYPE_ERROR, " Could not obtain dimension for output tensor: %@ ", &v8, 0xCu);
    }

    v7 = [*(a1 + 32) createException:*(*(a1 + 32) + 40) forNetwork:*(a1 + 40)];
    objc_exception_throw(v7);
  }

  v5 = __ABPKLogSharedInstance(blob_dimensions);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138413314;
    v9 = v3;
    v10 = 2048;
    v11 = v18;
    v12 = 2048;
    v13 = *(&v18 + 1);
    v14 = 2048;
    v15 = v19;
    v16 = 2048;
    v17 = *(&v19 + 1);
    _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_DEBUG, " \t Tensor %@ dimensions %zu %zu %zu %zu ", &v8, 0x34u);
  }
}

- (void)_bindOutputTensor
{
  outputTensorNames = self->_outputTensorNames;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__ABPK2DDetection__bindOutputTensor__block_invoke;
  v3[3] = &unk_278C718C0;
  v3[4] = self;
  [(NSArray *)outputTensorNames enumerateObjectsUsingBlock:v3];
}

void __36__ABPK2DDetection__bindOutputTensor__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [*(a1 + 32) useEspressoZeroCopyOutput];
  if (v5)
  {
    v6 = __ABPKLogSharedInstance(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_impl(&dword_23EDDC000, v6, OS_LOG_TYPE_DEBUG, " \t Bind Output Tensor %@  ", buf, 0xCu);
    }

    v7 = v4;
    [v4 UTF8String];
    espresso_network_bind_buffer();
    pixelBufferOut = 0;
    v8 = *buf;
    v29 = *MEMORY[0x277CC4E28];
    v30 = MEMORY[0x277CBEC10];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v10 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], v8, v9, &pixelBufferOut);
    IOSurface = CVPixelBufferGetIOSurface(pixelBufferOut);
    if (!IOSurface)
    {
      v12 = __ABPKLogSharedInstance(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = *(a1 + 32);
        *v23 = 138412546;
        v24 = v14;
        v25 = 2048;
        v26 = v15;
        _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_ERROR, " %@ (%p): Could not get IOSurface ", v23, 0x16u);
      }
    }

    if (v10)
    {
      v17 = __ABPKLogSharedInstance(IOSurface);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = *(a1 + 32);
        *v23 = 138412802;
        v24 = v19;
        v25 = 2048;
        v26 = v20;
        v27 = 1024;
        v28 = v10;
        _os_log_impl(&dword_23EDDC000, v17, OS_LOG_TYPE_ERROR, " %@ (%p): Could not create CVPixelBuffer for neural network: %d ", v23, 0x1Cu);
      }

      exception = __cxa_allocate_exception(8uLL);
      *exception = "Error: Could not create CVPixelBuffer for neural network";
      __cxa_throw(exception, MEMORY[0x277D82740], 0);
    }

    v16 = v4;
    [v4 UTF8String];
    espresso_network_bind_direct_cvpixelbuffer();
    CVPixelBufferRelease(pixelBufferOut);
  }

  else
  {
    [v4 UTF8String];
    espresso_network_bind_buffer();
  }
}

- (id)runWithImageDataForNeuralNetwork:(id)network originalImageData:(id)data abpkOrientation:(int64_t)orientation atTimestamp:(double)timestamp rotationOfResultTensor:(int64_t)tensor
{
  tensorCopy = tensor;
  v67 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  dataCopy = data;
  pixelBuffer = [networkCopy pixelBuffer];
  v12 = pixelBuffer;
  if (!pixelBuffer)
  {
    v17 = __ABPKLogSharedInstance(0);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v34 = " Input image is nil ";
LABEL_23:
    _os_log_impl(&dword_23EDDC000, v17, OS_LOG_TYPE_ERROR, v34, buf, 2u);
    goto LABEL_24;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if (PixelFormatType != 1111970369)
  {
    v17 = __ABPKLogSharedInstance(PixelFormatType);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v34 = " Input image format is not valid ";
    goto LABEL_23;
  }

  IOSurface = CVPixelBufferGetIOSurface(v12);
  if (!IOSurface)
  {
    v17 = __ABPKLogSharedInstance(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v34 = " Input image pixelbuffer not backed by IOSurface ";
      goto LABEL_23;
    }

LABEL_24:
    v35 = 0;
    goto LABEL_25;
  }

  v15 = __ABPKLogSharedInstance(IOSurface);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = convertABPKDeviceOrientationEnumToString(orientation);
    *buf = 138412290;
    *&buf[4] = v16;
    _os_log_impl(&dword_23EDDC000, v15, OS_LOG_TYPE_DEBUG, " \t Device Orientation: %@ ", buf, 0xCu);
  }

  v17 = [(ABPKMLModelConfiguration2D *)self->_mlConfig configStringForABPKDeviceOrientation:orientation];
  v18 = __ABPKLogSharedInstance(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = v17;
    _os_log_impl(&dword_23EDDC000, v18, OS_LOG_TYPE_DEBUG, " \t Selected network mode: %@ ", buf, 0xCu);
  }

  if (!v17)
  {
    v56 = __ABPKLogSharedInstance(v19);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v56, OS_LOG_TYPE_ERROR, " Invalid network mode specified ", buf, 2u);
    }

    v57 = [(ABPK2DDetection *)self createException:self->_plan forNetwork:self->_netSubPath];
    objc_exception_throw(v57);
  }

  v20 = __ABPKLogSharedInstance(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    Height = CVPixelBufferGetHeight(v12);
    Width = CVPixelBufferGetWidth(v12);
    *buf = 134218240;
    *&buf[4] = Height;
    *&buf[12] = 2048;
    *&buf[14] = Width;
    _os_log_impl(&dword_23EDDC000, v20, OS_LOG_TYPE_DEBUG, " \t Binding image with (height,width) = (%zu,%zu) ", buf, 0x16u);
  }

  [(ABPK2DDetection *)self changeEspressoConfig:v17];
  if (self->_useEspressoV2)
  {
    inputBufferDict = self->_inputBufferDict;
    v24 = [(NSArray *)self->_inputTensorNames objectAtIndexedSubscript:0];
    v25 = [(NSMutableDictionary *)inputBufferDict objectForKeyedSubscript:v24];

    CVPixelBufferLockBaseAddress(v12, 0);
    v26 = CVPixelBufferGetIOSurface(v12);
    v27 = [(NSArray *)self->_inputTensorNames objectAtIndexedSubscript:0];
    [v25 setInput:v27 FromIOSurface:v26];

    [(ABPKMLNetworkV2 *)self->_networkV2 execute];
    v28 = CVPixelBufferUnlockBaseAddress(v12, 0);
    v29 = __ABPKLogSharedInstance(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v29, OS_LOG_TYPE_DEBUG, " \t Creating AR2DSkeletonRawEspressoResult with heatmap only ", buf, 2u);
    }

    v30 = 0;
    memset(buf, 0, 24);
    while (v30 < [(NSArray *)self->_outputTensorNames count])
    {
      outputBufferDict = self->_outputBufferDict;
      v32 = [(NSArray *)self->_outputTensorNames objectAtIndexedSubscript:v30];
      v33 = [(NSMutableDictionary *)outputBufferDict objectForKeyedSubscript:v32];

      __p = CVPixelBufferRetain([v33 pixelBuffer]);
      std::vector<__CVBuffer *>::push_back[abi:ne200100](buf, &__p);

      ++v30;
    }

    v35 = [ABPK2DDetection _createResultDataFromImageDataForNeuralNetwork:"_createResultDataFromImageDataForNeuralNetwork:originalImageData:outputPixelBuffer:numberOfOutputTensors:rotationOfResultTensor:" originalImageData:networkCopy outputPixelBuffer:dataCopy numberOfOutputTensors:? rotationOfResultTensor:?];
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    goto LABEL_25;
  }

  CVPixelBufferLockBaseAddress(v12, 0);
  v37 = 0;
  v38 = 0;
  __p = 0;
  v64 = 0;
  v65 = 0;
  while (v38 < [(NSArray *)self->_outputTensorNames count])
  {
    v39 = [(NSArray *)self->_outputTensorNames objectAtIndexedSubscript:v38];
    v40 = v39;
    [v39 UTF8String];
    espresso_network_query_blob_dimensions();

    v41 = *buf;
    v42 = *&buf[8];
    useEspressoZeroCopyOutput = [(ABPK2DDetection *)self useEspressoZeroCopyOutput];
    v44 = (*(&v42 + 1) * v42);
    v45 = v41;
    if (useEspressoZeroCopyOutput)
    {
      v62 = ABPKCreateCVPixelBufferFromPoolWithZeroCopyOption(&self->_espressoOutputBufferPools.__begin_[v37], 1278226536, self, @"Espresso Output", 1, v45, v44);
      std::vector<__CVBuffer *>::push_back[abi:ne200100](&__p, &v62);
      v46 = [(NSArray *)self->_outputTensorNames objectAtIndexedSubscript:v38];
      v47 = v46;
      [v46 UTF8String];
      espresso_network_bind_direct_cvpixelbuffer();
    }

    else
    {
      v62 = ABPKCreateCVPixelBufferFromPoolWithZeroCopyOption(&self->_espressoOutputBufferPools.__begin_[v37], 1278226536, self, @"Espresso Output", 0, v45, v44);
      std::vector<__CVBuffer *>::push_back[abi:ne200100](&__p, &v62);
      v46 = [(NSArray *)self->_outputTensorNames objectAtIndexedSubscript:v38];
      v48 = v46;
      [v46 UTF8String];
      espresso_network_bind_cvpixelbuffer();
    }

    ++v38;
    ++v37;
  }

  v49 = [(NSArray *)self->_inputTensorNames objectAtIndexedSubscript:0];
  v50 = v49;
  [v49 UTF8String];
  v51 = espresso_network_bind_direct_cvpixelbuffer() == 0;

  if (!v51)
  {
    v58 = __ABPKLogSharedInstance(v52);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v58, OS_LOG_TYPE_ERROR, " Could not direct bind input image as CVPixelBuffer ", buf, 2u);
    }

LABEL_56:

    v59 = [(ABPK2DDetection *)self createException:self->_plan forNetwork:self->_netSubPath];
    objc_exception_throw(v59);
  }

  v53 = espresso_plan_execute_sync();
  if (v53)
  {
    v58 = __ABPKLogSharedInstance(v53);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v58, OS_LOG_TYPE_ERROR, " Could not execute plan ", buf, 2u);
    }

    goto LABEL_56;
  }

  CVPixelBufferUnlockBaseAddress(v12, 0);
  for (i = 0; i < [(NSArray *)self->_outputTensorNames count]; ++i)
  {
    self->_outputBuffers.__begin_[i] = CVPixelBufferRetain(*(__p + i));
  }

  v35 = [ABPK2DDetection _createResultDataFromImageDataForNeuralNetwork:"_createResultDataFromImageDataForNeuralNetwork:originalImageData:outputPixelBuffer:numberOfOutputTensors:rotationOfResultTensor:" originalImageData:networkCopy outputPixelBuffer:dataCopy numberOfOutputTensors:? rotationOfResultTensor:?];
  if ([(ABPK2DDetection *)self useEspressoZeroCopyOutput])
  {
    for (j = 0; j < [(NSArray *)self->_outputTensorNames count]; ++j)
    {
      CVPixelBufferRelease(*(__p + j));
    }
  }

  if (__p)
  {
    v64 = __p;
    operator delete(__p);
  }

LABEL_25:

  return v35;
}

- (id)runWithMLImage:(id)image originalImage:(id)originalImage abpkOrientation:(int64_t)orientation atTimestamp:(double)timestamp rotationOfResultTensor:(int64_t)tensor
{
  v20 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  originalImageCopy = originalImage;
  [(ABPK2DDetection *)self _startEvaluateBodyPoseForImageSignpostWithTimestamp:timestamp];
  v14 = CVPixelBufferRetain([imageCopy pixelBuffer]);
  v15 = __ABPKLogSharedInstance(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v18 = 134217984;
    timestampCopy = timestamp;
    _os_log_impl(&dword_23EDDC000, v15, OS_LOG_TYPE_DEBUG, " %f ABPK2DDetection: runWithImage ", &v18, 0xCu);
  }

  v16 = [(ABPK2DDetection *)self runWithImageDataForNeuralNetwork:imageCopy originalImageData:originalImageCopy abpkOrientation:orientation atTimestamp:tensor rotationOfResultTensor:timestamp];
  [(ABPK2DDetection *)self _endEvaluateBodyPoseForImageSignpostWithTimestamp:timestamp];
  CVPixelBufferRelease([imageCopy pixelBuffer]);

  return v16;
}

- (id)runWithImage:(__CVBuffer *)image abpkOrientation:(int64_t)orientation atTimestamp:(double)timestamp rotationOfResultTensor:(int64_t)tensor
{
  v11 = __ABPKLogSharedInstance([(ABPK2DDetection *)self _startEvaluateBodyPoseForImageSignpostWithTimestamp:?]);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *v15 = 0;
    _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_DEBUG, " ABPK2DDetection: runWithImage ", v15, 2u);
  }

  v12 = [[ABPKMLImageData alloc] initWithPixelBuffer:image timestamp:orientation abpkDeviceOrientation:0 preprocessingParameters:timestamp];
  v13 = [(ABPK2DDetection *)self runWithImageDataForNeuralNetwork:v12 originalImageData:0 abpkOrientation:orientation atTimestamp:tensor rotationOfResultTensor:timestamp];
  [(ABPK2DDetection *)self _endEvaluateBodyPoseForImageSignpostWithTimestamp:timestamp];

  return v13;
}

- (void)changeEspressoConfig:(id)config
{
  v22 = *MEMORY[0x277D85DE8];
  configCopy = config;
  previous_network_configuration = self->_previous_network_configuration;
  if (previous_network_configuration != configCopy && ![(NSString *)previous_network_configuration isEqualToString:configCopy])
  {
    if (self->_useEspressoV2)
    {
      [(ABPKMLNetworkV2 *)self->_networkV2 changeNetWorkConfig:configCopy];
      goto LABEL_10;
    }

    v6 = __ABPKLogSharedInstance([(ABPK2DDetection *)self _startLoadingMLModelSignpost]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v21 = configCopy;
      _os_log_impl(&dword_23EDDC000, v6, OS_LOG_TYPE_DEBUG, " \t Changing network config to: %@ ", buf, 0xCu);
    }

    espresso_plan_build_clean();
    v7 = configCopy;
    [(NSString *)configCopy UTF8String];
    v8 = espresso_network_select_configuration();
    if (v8)
    {
      v13 = __ABPKLogSharedInstance(v8);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      *buf = 138412290;
      v21 = configCopy;
      v14 = " Could not select network configuration: %@ ";
      v15 = v13;
      v16 = 12;
    }

    else
    {
      v9 = espresso_plan_build();
      if (!v9)
      {
        [(ABPK2DDetection *)self _bindOutputTensor];
        inputTensorNames = self->_inputTensorNames;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __40__ABPK2DDetection_changeEspressoConfig___block_invoke;
        v19[3] = &unk_278C718C0;
        v19[4] = self;
        [(NSArray *)inputTensorNames enumerateObjectsUsingBlock:v19];
        outputTensorNames = self->_outputTensorNames;
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __40__ABPK2DDetection_changeEspressoConfig___block_invoke_26;
        v18[3] = &unk_278C718C0;
        v18[4] = self;
        [(NSArray *)outputTensorNames enumerateObjectsUsingBlock:v18];
        [(ABPK2DDetection *)self _endLoadingMLModelSignpost];
        goto LABEL_10;
      }

      v13 = __ABPKLogSharedInstance(v9);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        v17 = [(ABPK2DDetection *)self createException:self->_plan forNetwork:self->_netSubPath];
        objc_exception_throw(v17);
      }

      *buf = 0;
      v14 = " Could not build plan ";
      v15 = v13;
      v16 = 2;
    }

    _os_log_impl(&dword_23EDDC000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
    goto LABEL_16;
  }

LABEL_10:
  v12 = self->_previous_network_configuration;
  self->_previous_network_configuration = configCopy;
}

void __40__ABPK2DDetection_changeEspressoConfig___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  [v3 UTF8String];
  blob_dimensions = espresso_network_query_blob_dimensions();
  if (blob_dimensions)
  {
    v6 = __ABPKLogSharedInstance(blob_dimensions);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_23EDDC000, v6, OS_LOG_TYPE_ERROR, " Could not obtain dimension for input tensor: %@ ", &v8, 0xCu);
    }

    v7 = [*(a1 + 32) createException:*(*(a1 + 32) + 40) forNetwork:*(*(a1 + 32) + 464)];
    objc_exception_throw(v7);
  }

  v5 = __ABPKLogSharedInstance(blob_dimensions);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138413314;
    v9 = v3;
    v10 = 2048;
    v11 = v18;
    v12 = 2048;
    v13 = *(&v18 + 1);
    v14 = 2048;
    v15 = v19;
    v16 = 2048;
    v17 = *(&v19 + 1);
    _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_DEBUG, " \t Tensor %@ dimensions %zu %zu %zu %zu ", &v8, 0x34u);
  }
}

void __40__ABPK2DDetection_changeEspressoConfig___block_invoke_26(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  [v3 UTF8String];
  blob_dimensions = espresso_network_query_blob_dimensions();
  if (blob_dimensions)
  {
    v6 = __ABPKLogSharedInstance(blob_dimensions);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_23EDDC000, v6, OS_LOG_TYPE_ERROR, " Could not obtain dimension for output tensor: %@ ", &v8, 0xCu);
    }

    v7 = [*(a1 + 32) createException:*(*(a1 + 32) + 40) forNetwork:*(*(a1 + 32) + 464)];
    objc_exception_throw(v7);
  }

  v5 = __ABPKLogSharedInstance(blob_dimensions);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138413314;
    v9 = v3;
    v10 = 2048;
    v11 = v18;
    v12 = 2048;
    v13 = *(&v18 + 1);
    v14 = 2048;
    v15 = v19;
    v16 = 2048;
    v17 = *(&v19 + 1);
    _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_DEBUG, " \t Tensor %@ dimensions %zu %zu %zu %zu ", &v8, 0x34u);
  }
}

- (id)_createResultDataFromImageDataForNeuralNetwork:(id)network originalImageData:(id)data outputPixelBuffer:(__CVBuffer *)buffer numberOfOutputTensors:(unint64_t)tensors rotationOfResultTensor:(int64_t)tensor
{
  networkCopy = network;
  dataCopy = data;
  v13 = __ABPKLogSharedInstance(dataCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_DEBUG, " ABPK2DDetection: Create result data ", buf, 2u);
  }

  networkEstimatesAffinityMaps = [(ABPKMLModelConfiguration2D *)self->_mlConfig networkEstimatesAffinityMaps];
  mlConfig = self->_mlConfig;
  if (networkEstimatesAffinityMaps)
  {
    v40 = networkCopy;
    heatMapChannels = [(ABPKMLModelConfiguration2D *)mlConfig heatMapChannels];
    affinityMapChannels = [(ABPKMLModelConfiguration2D *)self->_mlConfig affinityMapChannels];
    Width = CVPixelBufferGetWidth(*buffer);
    Height = CVPixelBufferGetHeight(*buffer);
    tensorCopy = tensor;
    v21 = CVPixelBufferGetWidth(buffer[1]);
    v22 = CVPixelBufferGetHeight(buffer[1]);
    v23 = v22;
    v24 = __ABPKLogSharedInstance(v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *v42 = 0;
      _os_log_impl(&dword_23EDDC000, v24, OS_LOG_TYPE_DEBUG, " \t Creating AR2DSkeletonRawEspressoResult with heatmap and affinitymap ", v42, 2u);
    }

    v25 = [ABPK2DSkeletonRawEspressoResult alloc];
    LODWORD(v26) = Width;
    LODWORD(v27) = 1;
    LODWORD(v28) = v21;
    HIDWORD(v26) = Height / heatMapChannels;
    LODWORD(v29) = 1;
    HIDWORD(v29) = Width;
    HIDWORD(v28) = v23 / affinityMapChannels;
    HIDWORD(v27) = v21;
    v30 = [(ABPK2DSkeletonRawEspressoResult *)v25 initWithMLImage:v40 originalImageData:dataCopy heatMapBuffer:*buffer heatMapShape:buffer[1] heatMapStrides:tensorCopy affinityMapBuffer:v26 affinityMapShape:v29 affinityMapStrides:v28 rotationNeeded:v27];
    networkCopy = v40;
  }

  else
  {
    heatMapChannels2 = [(ABPKMLModelConfiguration2D *)mlConfig heatMapChannels];
    v32 = CVPixelBufferGetWidth(*buffer);
    v33 = CVPixelBufferGetHeight(*buffer);
    v34 = v33;
    v35 = __ABPKLogSharedInstance(v33);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      *v41 = 0;
      _os_log_impl(&dword_23EDDC000, v35, OS_LOG_TYPE_DEBUG, " \t Creating AR2DSkeletonRawEspressoResult with heatmap only ", v41, 2u);
    }

    v36 = [ABPK2DSkeletonRawEspressoResult alloc];
    LODWORD(v37) = v32;
    LODWORD(v38) = 1;
    HIDWORD(v37) = v34 / heatMapChannels2;
    HIDWORD(v38) = v32;
    v30 = [(ABPK2DSkeletonRawEspressoResult *)v36 initWithMLImage:networkCopy originalImageData:dataCopy heatMapBuffer:*buffer heatMapShape:tensor heatMapStrides:v37 rotationNeeded:v38];
  }

  return v30;
}

- (void)dealloc
{
  espresso_plan_destroy();
  espresso_context_destroy();
  begin = self->_espressoOutputBufferPools.__begin_;
  end = self->_espressoOutputBufferPools.__end_;
  while (begin != end)
  {
    if (*begin)
    {
      CVPixelBufferPoolRelease(*begin);
    }

    ++begin;
  }

  v5.receiver = self;
  v5.super_class = ABPK2DDetection;
  [(ABPK2DDetection *)&v5 dealloc];
}

- (id).cxx_construct
{
  *(self + 68) = 0;
  *(self + 32) = 0u;
  *(self + 33) = 0u;
  *(self + 30) = 0u;
  *(self + 31) = 0u;
  return self;
}

@end