@interface OpticalFlowE5
- (BOOL)buildLibraryForModel:(id)model;
- (BOOL)buildLibraryFromE5BundleForModel:(id)model;
- (BOOL)checkInputResolutions;
- (BOOL)getPortNames;
- (BOOL)initializeModel:(id)model;
- (BOOL)setupAdaptationLayer;
- (BOOL)switchUsageTo:(int64_t)to;
- (BOOL)upscaleFlowWithFlowAdaptationLayerFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame baseFlow:(__CVBuffer *)flow destination:(__CVBuffer *)destination;
- (OpticalFlowE5)initWithModel:(id)model usage:(int64_t)usage;
- (id)createFP16TextureFromIOSurface:(__IOSurface *)surface width:(int64_t)width height:(int64_t)height channels:(int64_t)channels;
- (void)allocateBufferObjects;
- (void)bindPorts;
- (void)checkDefaults;
- (void)dealloc;
- (void)encodeConvertLinearBuffer:(__IOSurface *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer;
- (void)encodeCovnertPixelBuffer:(__CVBuffer *)buffer toLinearBuffer:(__IOSurface *)linearBuffer toCommandBuffer:(id)commandBuffer;
- (void)encodeUnormNormalize:(__CVBuffer *)normalize destination:(__CVBuffer *)destination toCommandBuffer:(id)buffer;
- (void)executeModel;
- (void)opticalFlowFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame flow:(__CVBuffer *)flow;
- (void)opticalFlowFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward reUseFlow:(BOOL)flow;
- (void)opticalFlowFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame originalFirst:(__CVBuffer *)first originalSecond:(__CVBuffer *)second flow:(__CVBuffer *)flow;
- (void)releaseAdaptationLayerStorage;
- (void)releaseBufferObjects;
- (void)resetStream:(e5rt_execution_stream *)stream;
@end

@implementation OpticalFlowE5

- (OpticalFlowE5)initWithModel:(id)model usage:(int64_t)usage
{
  modelCopy = model;
  v14.receiver = self;
  v14.super_class = OpticalFlowE5;
  v7 = [(OpticalFlow *)&v14 initWithMode:usage];
  if (!v7)
  {
    goto LABEL_7;
  }

  if (createLogger_onceToken != -1)
  {
    [OpticalFlowE5 initWithModel:usage:];
  }

  objc_storeStrong(&v7->_logger, createLogger_logger);
  v7->super._usage = usage;
  [(OpticalFlow *)v7 setUseE5RT:1];
  [(OpticalFlowE5 *)v7 checkDefaults];
  if (![(OpticalFlowE5 *)v7 initializeModel:modelCopy])
  {
    if (os_log_type_enabled(v7->_logger, OS_LOG_TYPE_ERROR))
    {
      [OpticalFlowE5 initWithModel:usage:];
    }

    goto LABEL_14;
  }

  v8 = objc_alloc_init(FRCScaler);
  scaler = v7->_scaler;
  v7->_scaler = v8;

  if (!v7->_scaler)
  {
    if (os_log_type_enabled(v7->_logger, OS_LOG_TYPE_ERROR))
    {
      [OpticalFlowE5 initWithModel:usage:];
    }

    goto LABEL_14;
  }

  v10 = objc_alloc_init(Normalization);
  normalization = v7->_normalization;
  v7->_normalization = v10;

  if (!v7->_normalization)
  {
    if (os_log_type_enabled(v7->_logger, OS_LOG_TYPE_ERROR))
    {
      [OpticalFlowE5 initWithModel:usage:];
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

LABEL_7:
  v12 = v7;
LABEL_15:

  return v12;
}

- (BOOL)checkInputResolutions
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = 0uLL;
  FRCGetInputFrameSizeForUsage(self->super._usage, &v9 + 1, &v9);
  p_inputSize = &self->_inputSize;
  if (__PAIR128__(self->_inputSize.width, self->_inputSize.height) == v9)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    logger = self->_logger;
    v4 = os_log_type_enabled(logger, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      width = p_inputSize->width;
      height = p_inputSize->height;
      *buf = 134218752;
      v11 = width;
      v12 = 2048;
      v13 = height;
      v14 = 2048;
      v15 = *(&v9 + 1);
      v16 = 2048;
      v17 = v9;
      _os_log_error_impl(&dword_24A8C8000, logger, OS_LOG_TYPE_ERROR, "Error! Model input resolution does not match with usage (Model expects %ld x %ld, Usage: %ld x %ld", buf, 0x2Au);
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (void)checkDefaults
{
  v6 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.FRC"];
  v3 = [v6 objectForKey:@"E5RTDevice"];
  v4 = v3;
  if (v3 && ![v3 caseInsensitiveCompare:@"GPU"])
  {
    v5 = 2;
  }

  else
  {
    v5 = 4;
  }

  self->_deviceType = v5;
}

- (BOOL)switchUsageTo:(int64_t)to
{
  if (![(OpticalFlow *)self skipLastLevel])
  {
    [(OpticalFlow *)self setUseAdaptationLayer:1];
    [(OpticalFlow *)self setAdaptationLayerOnly:1];
  }

  if (FRCGetNumberOfPixelsForUsage(to) >> 10 >= 0x7E9)
  {
    [(OpticalFlow *)self setDownsampling:1];
  }

  if ([(OpticalFlow *)self downsampling]== 1 || [(OpticalFlow *)self bypassInputNormalization])
  {
    v9 = 0;
    v10 = 0;
    if ([(OpticalFlow *)self downsampling])
    {
      QuarterSizeUsage = getQuarterSizeUsage(to);
      FRCGetInputFrameSizeForUsage(QuarterSizeUsage, &v10, &v9);
      self->super._usage = QuarterSizeUsage;
    }

    else
    {
      FRCGetInputFrameSizeForUsage(to, &v10, &v9);
    }

    self->_subsampledFirst = createPixelBuffer(v10, 3 * v9, 0x4C303068u, 0);
    self->_subsampledSecond = createPixelBuffer(v10, 3 * v9, 0x4C303068u, 0);
    if ([(OpticalFlow *)self bypassInputNormalization])
    {
      self->_subsampledBGRAFirst = createPixelBuffer(v10, v9, 0x42475241u, 0);
      self->_subsampledBGRASecond = createPixelBuffer(v10, v9, 0x42475241u, 0);
      self->_subsampledOriginalFirst = createPixelBuffer(v10, 3 * v9, 0x4C303068u, 0);
      self->_subsampledOriginalSecond = createPixelBuffer(v10, 3 * v9, 0x4C303068u, 0);
    }
  }

  v8.receiver = self;
  v8.super_class = OpticalFlowE5;
  [(OpticalFlow *)&v8 switchUsageTo:to];
  checkInputResolutions = [(OpticalFlowE5 *)self checkInputResolutions];
  if (checkInputResolutions)
  {
    if ([(OpticalFlow *)self useAdaptationLayer])
    {
      [(OpticalFlowE5 *)self setupAdaptationLayer];
    }

    if ([(OpticalFlow *)self useAdaptationLayer]|| [(OpticalFlow *)self upscaleFinalFlow])
    {
      self->_intermediateFlow = createPixelBuffer(self->_outputSize.width, self->_outputSize.height, 0x32433068u, 0);
    }
  }

  else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    [OpticalFlowE5 switchUsageTo:];
  }

  return checkInputResolutions;
}

- (void)dealloc
{
  [(OpticalFlowE5 *)self releaseBufferObjects];
  CVPixelBufferRelease(self->_subsampledFirst);
  CVPixelBufferRelease(self->_subsampledSecond);
  CVPixelBufferRelease(self->_subsampledBGRAFirst);
  CVPixelBufferRelease(self->_subsampledBGRASecond);
  CVPixelBufferRelease(self->_subsampledOriginalFirst);
  CVPixelBufferRelease(self->_subsampledOriginalSecond);
  if (self->_stream)
  {
    e5rt_execution_stream_release();
  }

  if (self->_library)
  {
    e5rt_program_library_release();
  }

  self->_library = 0;
  if (self->_function)
  {
    e5rt_program_function_release();
  }

  self->_function = 0;
  if (self->_operation)
  {
    e5rt_execution_stream_operation_release();
  }

  self->_operation = 0;
  CVPixelBufferRelease(self->_intermediateFlow);
  v3.receiver = self;
  v3.super_class = OpticalFlowE5;
  [(OpticalFlow *)&v3 dealloc];
}

- (BOOL)initializeModel:(id)model
{
  v40 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (modelCopy)
  {
    v5 = modelCopy;
  }

  else
  {
    v5 = @"PWCNet_540p_lv2Flow_9x9corrANE";
  }

  stringByDeletingPathExtension = [(__CFString *)v5 stringByDeletingPathExtension];

  if (![(OpticalFlowE5 *)self buildLibraryFromE5BundleForModel:stringByDeletingPathExtension]&& ![(OpticalFlowE5 *)self buildLibraryForModel:stringByDeletingPathExtension]&& os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    [OpticalFlowE5 initializeModel:];
  }

  v7 = e5rt_program_library_retain_program_function();
  if (v7)
  {
    v28 = v7;
    last_error_message = e5rt_get_last_error_message();
    v30 = "e5rt_program_library_retain_program_function(_library, main, &_function)";
LABEL_29:
    printf("FAILURE: %s returned error = %u. msg = %s\n", v30, v28, last_error_message);
LABEL_23:
    exit(1);
  }

  v35[1] = 0;
  v8 = e5rt_precompiled_compute_op_create_options_create_with_program_function();
  if (v8)
  {
    v28 = v8;
    last_error_message = e5rt_get_last_error_message();
    v30 = "e5rt_precompiled_compute_op_create_options_create_with_program_function(&create_options, _function)";
    goto LABEL_29;
  }

  v31 = stringByDeletingPathExtension;
  precompiled_compute_operation_with_options = e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options();
  if (precompiled_compute_operation_with_options)
  {
    v28 = precompiled_compute_operation_with_options;
    last_error_message = e5rt_get_last_error_message();
    v30 = "e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options(&_operation, create_options)";
    goto LABEL_29;
  }

  e5rt_precompiled_compute_op_create_options_release();
  [(OpticalFlowE5 *)self getPortNames];
  v10 = 0;
  v11 = 1;
  do
  {
    v12 = v11;
    v13 = [(NSMutableArray *)self->_inputPortNames objectAtIndexedSubscript:v10];
    [v13 UTF8String];
    v14 = e5rt_execution_stream_operation_retain_input_port();

    if (v14)
    {
      v27 = e5rt_get_last_error_message();
      printf("FAILURE: %s returned error = %u. msg = %s\n", "e5rt_execution_stream_operation_retain_input_port(_operation, _inputPortNames[inputIdx].UTF8String, &_input_ports[inputIdx])", v14, v27);
      goto LABEL_23;
    }

    v34 = 0;
    v35[0] = 0;
    v33 = 0;
    getPortShape(self->_input_ports[v10], v35, &v34, &v33, &v32);
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      inputPortNames = self->_inputPortNames;
      v17 = logger;
      v18 = [(NSMutableArray *)inputPortNames objectAtIndexedSubscript:v10];
      v19 = v33;
      *buf = 138413058;
      *&buf[4] = v18;
      *&buf[12] = 2048;
      *&buf[14] = v35[0];
      *&buf[22] = 2048;
      v37 = v34;
      v38 = 2048;
      v39 = v33;
      _os_log_impl(&dword_24A8C8000, v17, OS_LOG_TYPE_DEFAULT, "Input image [%@]: %ld x %ld x %ld", buf, 0x2Au);
    }

    else
    {
      v19 = v33;
    }

    TensorSizeMake(v35[0], v34, v19, buf);
    v11 = 0;
    *&self->_inputSize.width = *buf;
    self->_inputSize.channels = *&buf[16];
    v10 = 1;
  }

  while ((v12 & 1) != 0);
  [(NSString *)self->_outputPortName UTF8String];
  v20 = e5rt_execution_stream_operation_retain_output_port();
  if (v20)
  {
    v28 = v20;
    last_error_message = e5rt_get_last_error_message();
    v30 = "e5rt_execution_stream_operation_retain_output_port(_operation, _outputPortName.UTF8String, &_output_port)";
    goto LABEL_29;
  }

  v34 = 0;
  v35[0] = 0;
  v33 = 0;
  getPortShape(self->_output_port, v35, &v34, &v33, &v32);
  v21 = self->_logger;
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  v23 = v33;
  if (v22)
  {
    outputPortName = self->_outputPortName;
    *buf = 138413058;
    *&buf[4] = outputPortName;
    *&buf[12] = 2048;
    *&buf[14] = v35[0];
    *&buf[22] = 2048;
    v37 = v34;
    v38 = 2048;
    v39 = v33;
    _os_log_impl(&dword_24A8C8000, v21, OS_LOG_TYPE_DEFAULT, "Output Flow [%@]: %ld x %ld x %ld", buf, 0x2Au);
  }

  TensorSizeMake(v35[0], v34, v23, buf);
  *&self->_outputSize.width = *buf;
  self->_outputSize.channels = *&buf[16];
  v25 = e5rt_execution_stream_create();
  if (v25)
  {
    v28 = v25;
    last_error_message = e5rt_get_last_error_message();
    v30 = "e5rt_execution_stream_create(&_stream)";
    goto LABEL_29;
  }

  [(OpticalFlowE5 *)self allocateBufferObjects];
  [(OpticalFlowE5 *)self bindPorts];

  return 1;
}

- (BOOL)buildLibraryForModel:(id)model
{
  modelCopy = model;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24A8C8000, logger, OS_LOG_TYPE_DEFAULT, "Runtime Compilation\n", buf, 2u);
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 pathForResource:modelCopy ofType:@"mlmodelc"];
  if (v7 || ([v6 pathForResource:modelCopy ofType:@"mlpackage"], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
  }

  else
  {
    v15 = getInternalBundle(v6);

    v16 = [v15 pathForResource:modelCopy ofType:@"mlmodelc"];
    if (!v16)
    {
      v16 = [v15 pathForResource:modelCopy ofType:@"mlpackage"];
    }

    v8 = v16;
    v6 = v15;
  }

  v9 = [v8 stringByAppendingPathComponent:@"model.mil"];
  *buf = 0;
  v10 = e5rt_e5_compiler_create();
  if (v10)
  {
    v17 = v10;
    last_error_message = e5rt_get_last_error_message();
    v19 = "e5rt_e5_compiler_create (&compiler)";
LABEL_19:
    printf("FAILURE: %s returned error = %u. msg = %s\n", v19, v17, last_error_message);
    goto LABEL_21;
  }

  v11 = e5rt_e5_compiler_options_create();
  if (v11)
  {
    v17 = v11;
    last_error_message = e5rt_get_last_error_message();
    v19 = "e5rt_e5_compiler_options_create(&options)";
    goto LABEL_19;
  }

  v12 = e5rt_e5_compiler_options_set_compute_device_types_mask();
  if (v12)
  {
    v20 = v12;
    v21 = e5rt_get_last_error_message();
    printf("FAILURE: %s returned error = %u. msg = %s\n", "e5rt_e5_compiler_options_set_compute_device_types_mask(options, deviceMask)", v20, v21);
LABEL_21:
    exit(1);
  }

  [v9 UTF8String];
  v13 = e5rt_e5_compiler_compile();
  if (v13)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [OpticalFlowE5 buildLibraryForModel:];
    }
  }

  else
  {
    e5rt_e5_compiler_release();
    e5rt_e5_compiler_options_release();
  }

  return v13 == 0;
}

- (BOOL)buildLibraryFromE5BundleForModel:(id)model
{
  v16 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  stringByDeletingPathExtension = [modelCopy stringByDeletingPathExtension];
  v7 = [v5 pathForResource:stringByDeletingPathExtension ofType:@"bundle" inDirectory:@"e5Bundles"];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = getInternalBundle(v5);

  stringByDeletingPathExtension2 = [modelCopy stringByDeletingPathExtension];
  v7 = [v8 pathForResource:stringByDeletingPathExtension2 ofType:@"bundle" inDirectory:@"e5Bundles"];

  if (v7)
  {
    v5 = v8;
LABEL_4:
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_24A8C8000, logger, OS_LOG_TYPE_DEFAULT, "Creating library from pre-built bundle at %@", &v14, 0xCu);
    }

    [v7 UTF8String];
    if (e5rt_program_library_create())
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [OpticalFlowE5 buildLibraryFromE5BundleForModel:];
      }

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    v8 = v5;
    goto LABEL_12;
  }

  v13 = self->_logger;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = modelCopy;
    _os_log_impl(&dword_24A8C8000, v13, OS_LOG_TYPE_DEFAULT, "Pre-compiled E5 Bundle for %@ is not available. Switching to runtime compilation.", &v14, 0xCu);
  }

  v7 = 0;
  v11 = 0;
LABEL_12:

  return v11;
}

- (BOOL)getPortNames
{
  v20 = *MEMORY[0x277D85DE8];
  if (e5rt_execution_stream_operation_get_num_inputs())
  {
    puts("failed to obtain input info");
    exit(1);
  }

  num_input_ports = self->_num_input_ports;
  v4 = &buf[-((8 * num_input_ports + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (8 * num_input_ports >= 0x200)
  {
    v5 = 512;
  }

  else
  {
    v5 = 8 * num_input_ports;
  }

  bzero(&buf[-((8 * num_input_ports + 15) & 0xFFFFFFFFFFFFFFF0)], v5);
  e5rt_execution_stream_operation_get_input_names();
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = self->_num_input_ports;
    *buf = 134217984;
    *&buf[4] = v7;
    _os_log_impl(&dword_24A8C8000, logger, OS_LOG_TYPE_DEFAULT, "Number of Input Ports = %ld", buf, 0xCu);
  }

  v8 = self->_num_input_ports;
  if (v8 == 2)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    inputPortNames = self->_inputPortNames;
    self->_inputPortNames = v9;

    if (self->_num_input_ports)
    {
      v11 = 0;
      do
      {
        v12 = self->_inputPortNames;
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:*&v4[8 * v11]];
        [(NSMutableArray *)v12 addObject:v13];

        ++v11;
      }

      while (self->_num_input_ports > v11);
    }

    *buf = 0;
    e5rt_execution_stream_operation_get_num_outputs();
    v14 = *buf;
    if ((8 * *buf) >= 0x200)
    {
      v15 = 512;
    }

    else
    {
      v15 = 8 * *buf;
    }

    bzero(&buf[-((8 * *buf + 15) & 0xFFFFFFFFFFFFFFF0)], v15);
    e5rt_execution_stream_operation_get_output_names();
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:*&buf[-((8 * v14 + 15) & 0xFFFFFFFFFFFFFFF0)]];
    outputPortName = self->_outputPortName;
    self->_outputPortName = v16;
  }

  else
  {
    printf("Error invalid number of input ports (%ld)\n", self->_num_input_ports);
  }

  return v8 == 2;
}

- (void)allocateBufferObjects
{
  v2 = 1;
  do
  {
    v3 = v2;
    v4 = e5rt_io_port_retain_tensor_desc();
    if (v4)
    {
      v11 = v4;
      last_error_message = e5rt_get_last_error_message();
      v13 = "e5rt_io_port_retain_tensor_desc(_input_ports[inputIdx], &input_tensor_desc)";
      goto LABEL_13;
    }

    v5 = e5rt_tensor_desc_alloc_buffer_object();
    if (v5)
    {
      v11 = v5;
      last_error_message = e5rt_get_last_error_message();
      v13 = "e5rt_tensor_desc_alloc_buffer_object(input_tensor_desc, E5RT_BUFFER_OBJECT_TYPE_IOSURFACE, 1, &_inputBufferObject[inputIdx])";
      goto LABEL_13;
    }

    e5rt_tensor_desc_release();
    v2 = 0;
  }

  while ((v3 & 1) != 0);
  v6 = e5rt_io_port_retain_tensor_desc();
  if (v6)
  {
    v11 = v6;
    last_error_message = e5rt_get_last_error_message();
    v13 = "e5rt_io_port_retain_tensor_desc(_output_port, &output_tensor_desc)";
    goto LABEL_13;
  }

  v7 = e5rt_tensor_desc_alloc_buffer_object();
  if (v7)
  {
    v11 = v7;
    last_error_message = e5rt_get_last_error_message();
    v13 = "e5rt_tensor_desc_alloc_buffer_object(output_tensor_desc, E5RT_BUFFER_OBJECT_TYPE_IOSURFACE, 1, &_outputBufferObject)";
    goto LABEL_13;
  }

  e5rt_tensor_desc_release();
  iosurface = e5rt_buffer_object_get_iosurface();
  if (iosurface)
  {
    v11 = iosurface;
    last_error_message = e5rt_get_last_error_message();
    v13 = "e5rt_buffer_object_get_iosurface(_inputBufferObject[0], &_firstFrameSurface)";
    goto LABEL_13;
  }

  v9 = e5rt_buffer_object_get_iosurface();
  if (v9)
  {
    v11 = v9;
    last_error_message = e5rt_get_last_error_message();
    v13 = "e5rt_buffer_object_get_iosurface(_inputBufferObject[1], &_secondFrameSurface)";
    goto LABEL_13;
  }

  v10 = e5rt_buffer_object_get_iosurface();
  if (v10)
  {
    v11 = v10;
    last_error_message = e5rt_get_last_error_message();
    v13 = "e5rt_buffer_object_get_iosurface(_outputBufferObject, &_outputSurface)";
LABEL_13:
    printf("FAILURE: %s returned error = %u. msg = %s\n", v13, v11, last_error_message);
    exit(1);
  }
}

- (void)releaseBufferObjects
{
  v3 = 0;
  inputBufferObject = self->_inputBufferObject;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = &inputBufferObject[v3];
    if (*v7)
    {
      e5rt_buffer_object_release();
      *v7 = 0;
    }

    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  if (self->_outputBufferObject)
  {
    e5rt_buffer_object_release();
    self->_outputBufferObject = 0;
  }

  e5rt_io_port_release();
  e5rt_io_port_release();
  e5rt_io_port_release();
  if ([(OpticalFlow *)self useAdaptationLayer])
  {

    [(OpticalFlowE5 *)self releaseAdaptationLayerStorage];
  }
}

- (void)opticalFlowFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame flow:(__CVBuffer *)flow
{
  originalFirst = [(OpticalFlow *)self originalFirst];
  originalSecond = [(OpticalFlow *)self originalSecond];

  [(OpticalFlowE5 *)self opticalFlowFirstFrame:frame secondFrame:secondFrame originalFirst:originalFirst originalSecond:originalSecond flow:flow];
}

- (void)opticalFlowFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame originalFirst:(__CVBuffer *)first originalSecond:(__CVBuffer *)second flow:(__CVBuffer *)flow
{
  if ([(OpticalFlow *)self bypassInputNormalization])
  {
    v13 = [(OpticalFlowE5 *)self rotationForBuffer:[(OpticalFlow *)self originalFirst]];
    [(FRCScaler *)self->_scaler downScaleFrameSource:first destination:self->_subsampledBGRAFirst rotate:v13 waitForCompletion:0];
    [(FRCScaler *)self->_scaler downScaleFrameSource:second destination:self->_subsampledBGRASecond rotate:v13 waitForCompletion:0];
  }

  commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
  if ([(OpticalFlow *)self bypassInputNormalization])
  {
    p_subsampledOriginalFirst = &self->_subsampledOriginalFirst;
    [(OpticalFlowE5 *)self encodeUnormNormalize:self->_subsampledBGRAFirst destination:self->_subsampledOriginalFirst toCommandBuffer:commandBuffer];
    p_subsampledOriginalSecond = &self->_subsampledOriginalSecond;
    [(OpticalFlowE5 *)self encodeUnormNormalize:self->_subsampledBGRASecond destination:self->_subsampledOriginalSecond toCommandBuffer:commandBuffer];
LABEL_7:
    frameCopy = *p_subsampledOriginalFirst;
    secondFrameCopy = *p_subsampledOriginalSecond;
    goto LABEL_8;
  }

  downsampling = [(OpticalFlow *)self downsampling];
  secondFrameCopy = secondFrame;
  frameCopy = frame;
  if (downsampling == 1)
  {
    p_subsampledOriginalFirst = &self->_subsampledFirst;
    [(OpticalFlow *)self subsampleBuffer:frame destination:self->_subsampledFirst toCommandBuffer:commandBuffer];
    p_subsampledOriginalSecond = &self->_subsampledSecond;
    [(OpticalFlow *)self subsampleBuffer:secondFrame destination:self->_subsampledSecond toCommandBuffer:commandBuffer];
    goto LABEL_7;
  }

LABEL_8:
  [(OpticalFlowE5 *)self encodeCovnertPixelBuffer:frameCopy toLinearBuffer:self->_firstFrameSurface toCommandBuffer:commandBuffer];
  [(OpticalFlowE5 *)self encodeCovnertPixelBuffer:secondFrameCopy toLinearBuffer:self->_secondFrameSurface toCommandBuffer:commandBuffer];
  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];
  [(OpticalFlowE5 *)self executeModel];
  if ([(OpticalFlow *)self useAdaptationLayer]|| (intermediateFlow = flow, [(OpticalFlow *)self upscaleFinalFlow]))
  {
    intermediateFlow = self->_intermediateFlow;
  }

  [(OpticalFlowE5 *)self encodeConvertLinearBuffer:self->_outputSurface toPixelBuffer:intermediateFlow];
  if ([(OpticalFlow *)self useAdaptationLayer])
  {
    [(OpticalFlowE5 *)self upscaleFlowWithFlowAdaptationLayerFirstFrame:frame secondFrame:secondFrame baseFlow:intermediateFlow destination:flow];
  }

  else if ([(OpticalFlow *)self upscaleFinalFlow])
  {
    [(OpticalFlow *)self upscaleInputFlow:intermediateFlow outFlow:flow];
  }
}

- (void)opticalFlowFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame flowForward:(__CVBuffer *)forward flowBackward:(__CVBuffer *)backward reUseFlow:(BOOL)flow
{
  [(OpticalFlowE5 *)self opticalFlowFirstFrame:frame secondFrame:secondFrame originalFirst:[(OpticalFlow *)self originalFirst:frame] originalSecond:[(OpticalFlow *)self originalSecond] flow:forward];
  originalSecond = [(OpticalFlow *)self originalSecond];
  originalFirst = [(OpticalFlow *)self originalFirst];

  [(OpticalFlowE5 *)self opticalFlowFirstFrame:secondFrame secondFrame:frame originalFirst:originalSecond originalSecond:originalFirst flow:backward];
}

- (void)executeModel
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2080;
  selfCopy = self;
  _os_log_error_impl(&dword_24A8C8000, log, OS_LOG_TYPE_ERROR, "Execution failed. returned error = %u. msg = %s\n", v3, 0x12u);
}

- (void)bindPorts
{
  v2 = 1;
  do
  {
    v3 = v2;
    v4 = e5rt_io_port_bind_buffer_object();
    if (v4)
    {
      v6 = v4;
      last_error_message = e5rt_get_last_error_message();
      v8 = "e5rt_io_port_bind_buffer_object(_input_ports[i], _inputBufferObject[i])";
      goto LABEL_7;
    }

    v2 = 0;
  }

  while ((v3 & 1) != 0);
  v5 = e5rt_io_port_bind_buffer_object();
  if (v5)
  {
    v6 = v5;
    last_error_message = e5rt_get_last_error_message();
    v8 = "e5rt_io_port_bind_buffer_object(_output_port, _outputBufferObject)";
LABEL_7:
    printf("FAILURE: %s returned error = %u. msg = %s\n", v8, v6, last_error_message);
    exit(1);
  }
}

- (void)resetStream:(e5rt_execution_stream *)stream
{
  v3 = e5rt_execution_stream_reset();
  if (v3)
  {
    v4 = v3;
    last_error_message = e5rt_get_last_error_message();
    printf("FAILURE: %s returned error = %u. msg = %s\n", "e5rt_execution_stream_reset(stream)", v4, last_error_message);
    exit(1);
  }
}

- (void)encodeCovnertPixelBuffer:(__CVBuffer *)buffer toLinearBuffer:(__IOSurface *)linearBuffer toCommandBuffer:(id)commandBuffer
{
  commandBufferCopy = commandBuffer;
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  device = [(OpticalFlow *)self device];
  if (PixelFormatType == 1111970369)
  {
    createRGBATextureFromCVPixelBuffer(buffer, device);
  }

  else
  {
    createTexturesFromCVPixelBuffer(buffer, device, 1, 3uLL);
  }
  v13 = ;

  if (IOSurfaceGetPixelFormat(linearBuffer) == 1278226488)
  {
    v14 = [(OpticalFlowE5 *)self createFP16TextureFromIOSurface:linearBuffer width:Width height:Height / 3 channels:3];
  }

  else
  {
    v14 = 0;
  }

  blitCommandEncoder = [commandBufferCopy blitCommandEncoder];
  width = [v14 width];
  height = [v14 height];
  if ([v13 arrayLength])
  {
    v18 = 0;
    do
    {
      memset(v21, 0, sizeof(v21));
      v20[0] = width;
      v20[1] = height;
      v20[2] = 1;
      memset(v19, 0, sizeof(v19));
      [blitCommandEncoder copyFromTexture:v13 sourceSlice:v18 sourceLevel:0 sourceOrigin:v21 sourceSize:v20 toTexture:v14 destinationSlice:v18 destinationLevel:0 destinationOrigin:v19];
      ++v18;
    }

    while ([v13 arrayLength] > v18);
  }

  [blitCommandEncoder endEncoding];
}

- (void)encodeConvertLinearBuffer:(__IOSurface *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v10 = Height >> (PixelFormatType == 1278226536);
  if (PixelFormatType == 843264104 || (v10 >= 0x80 ? (v11 = ((v10 * Width) & 0x3F) == 0) : (v11 = 0), !v11 || Width <= 0x7F))
  {
    v20 = CVPixelBufferGetBytesPerRow(pixelBuffer) >> 1;
    IOSurfaceLock(buffer, 1u, 0);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    BaseAddress = IOSurfaceGetBaseAddress(buffer);
    v22 = CVPixelBufferGetBaseAddress(pixelBuffer);
    if (PixelFormatType == 1278226536)
    {
      v23 = 0;
      v24 = 1;
      do
      {
        v25 = v24;
        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            if (Width)
            {
              v27 = 0;
              v28 = &BaseAddress[2 * v23];
              v23 += Width;
              v29 = Width;
              do
              {
                *&v22[v27] = *&v28[v27];
                v27 += 2;
                --v29;
              }

              while (v29);
            }

            v22 += 2 * v20;
          }
        }

        v24 = 0;
      }

      while ((v25 & 1) != 0);
    }

    else if (PixelFormatType == 843264104 && v10)
    {
      v30 = 0;
      v31 = 0;
      v32 = v22 + 2;
      do
      {
        if (Width)
        {
          v33 = &BaseAddress[2 * v31];
          v31 += Width;
          v34 = v32;
          v35 = Width;
          do
          {
            *(v34 - 1) = *v33;
            *v34 = *&v33[2 * Width * v10];
            v33 += 2;
            v34 += 2;
            --v35;
          }

          while (v35);
        }

        ++v30;
        v32 += v20;
      }

      while (v30 != v10);
    }

    IOSurfaceUnlock(buffer, 1u, 0);

    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  }

  else
  {
    commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
    v13 = [(OpticalFlowE5 *)self createFP16TextureFromIOSurface:buffer width:Width height:v10 channels:2];
    device = [(OpticalFlow *)self device];
    v15 = createTexturesFromCVPixelBuffer(pixelBuffer, device, 1, 2uLL);

    blitCommandEncoder = [commandBuffer blitCommandEncoder];
    width = [v15 width];
    height = [v15 height];
    if ([v13 arrayLength])
    {
      v19 = 0;
      do
      {
        memset(v38, 0, sizeof(v38));
        v37[0] = width;
        v37[1] = height;
        v37[2] = 1;
        memset(v36, 0, sizeof(v36));
        [blitCommandEncoder copyFromTexture:v13 sourceSlice:v19 sourceLevel:0 sourceOrigin:v38 sourceSize:v37 toTexture:v15 destinationSlice:v19 destinationLevel:0 destinationOrigin:v36];
        ++v19;
      }

      while ([v13 arrayLength] > v19);
    }

    [blitCommandEncoder endEncoding];
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
  }
}

- (id)createFP16TextureFromIOSurface:(__IOSurface *)surface width:(int64_t)width height:(int64_t)height channels:(int64_t)channels
{
  device = [(OpticalFlow *)self device];
  v11 = [device newBufferWithIOSurface:surface];

  v12 = 2 * width * height;
  v13 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:25 width:width height:height mipmapped:0];
  [v13 setTextureType:3];
  [v13 setArrayLength:channels];
  [v13 setUsage:3];
  [v13 setStorageMode:0];
  v14 = [v11 newLinearTextureWithDescriptor:v13 offset:0 bytesPerRow:2 * width bytesPerImage:v12];

  return v14;
}

- (BOOL)setupAdaptationLayer
{
  [(OpticalFlow *)self setNumLevels:1];
  [(OpticalFlow *)self setResourcePreAllocated:1];
  [(OpticalFlow *)self allocateIntermediateStageStorage:&self->_opticalFlowStorage baseStage:0];
  if ([(OpticalFlow *)self upscaleFinalFlow])
  {
    self->_opticalFlowStorage.flows[0] = createPixelBuffer([(OpticalFlow *)self flowWidth]>> 1, [(OpticalFlow *)self flowHeight]>> 1, 0x32433068u, 0);
  }

  [(OpticalFlow *)self allocateFeatureBuffers:self->_features];
  [(OpticalFlow *)self allocateFeatureBuffers:&self->_features[1]];
  v4.receiver = self;
  v4.super_class = OpticalFlowE5;
  [(OpticalFlow *)&v4 createModules];
  return 1;
}

- (void)releaseAdaptationLayerStorage
{
  features = self->_features;
  [(OpticalFlow *)self releaseFeatureBuffers:self->_features];
  [(OpticalFlow *)self releaseFeatureBuffers:&features[1]];

  [(OpticalFlow *)self releaseIntermediateStageStorage:&self->_opticalFlowStorage];
}

- (BOOL)upscaleFlowWithFlowAdaptationLayerFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame baseFlow:(__CVBuffer *)flow destination:(__CVBuffer *)destination
{
  features = self->_features;
  [(OpticalFlow *)self extractFeaturesFromImage:frame outputFeatures:self->_features];
  [(OpticalFlow *)self extractFeaturesFromImage:secondFrame outputFeatures:&features[1]];
  [(OpticalFlow *)self adaptFlowFromFirstFeatures:features secondFeature:&features[1] storage:&self->_opticalFlowStorage inputFlow:flow outputFlow:destination];
  return 0;
}

- (void)encodeUnormNormalize:(__CVBuffer *)normalize destination:(__CVBuffer *)destination toCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  device = [(OpticalFlow *)self device];
  v13 = createRGBATextureFromCVPixelBuffer(normalize, device);

  device2 = [(OpticalFlow *)self device];
  v11 = createTexturesFromCVPixelBuffer(destination, device2, 1, 3uLL);

  LODWORD(v12) = 1.0;
  [(Normalization *)self->_normalization encodeNormalizationToCommandBuffer:bufferCopy source:v13 destination:v11 params:0.0, v12];
}

- (void)initWithModel:usage:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithModel:usage:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithModel:usage:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)switchUsageTo:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initializeModel:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end