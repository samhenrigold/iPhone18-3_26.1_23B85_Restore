@interface SIBaseNetworkEspresso
+ (NSDictionary)tracingEntryFormat;
- ($C4732ECC957FA13B9B3DF4A51A95735B)network;
- ($FD4688982923A924290ECB669CAF1EC2)getTensorByName:(const char *)name;
- (BOOL)bindNetworkInputWithEspressoBuffer:(id *)buffer withInputName:(id)name;
- (BOOL)buildPlan;
- (BOOL)initContext;
- (BOOL)initMLNetwork;
- (BOOL)initNetwork;
- (BOOL)initNetworkOutput;
- (BOOL)initPlan;
- (BOOL)isUsingANE;
- (BOOL)prepare;
- (BOOL)validateNetworkOutputDimension;
- (CGSize)getResolutionByBlobName:(const char *)name;
- (NSDictionary)tracingEntry;
- (NSString)description;
- (SIBaseNetworkEspresso)initWithNetworkConfiguration:(id)configuration;
- (SIBaseNetworkEspresso)initWithNetworkPath:(id)path andEngine:(int64_t)engine networkMode:(id)mode;
- (__CVBuffer)getOutPixelBufferByName:(const char *)name;
- (id).cxx_construct;
- (id)getOpsForLibrary;
- (id)networkVersion;
- (int64_t)addPrewiringBuffersToStreamForFunctionName:(id)name inputPools:(id)pools outputPools:(id)outputPools clearWiredBuffer:(BOOL)buffer;
- (int64_t)runNetwork;
- (int64_t)setInput:(id)input fromCVPixelBuffer:(__CVBuffer *)buffer;
- (int64_t)setInput:(id)input fromRawPointer:(const void *)pointer;
- (int64_t)switchConfiguration:(id)configuration;
- (int64_t)unwirePrewiringBuffers;
- (int64_t)unwirePrewiringBuffersForFunctionName:(id)name;
- (unint64_t)getInputBatchNum:(id)num;
- (unint64_t)getInputChannels:(id)channels;
- (unint64_t)getInputHeight:(id)height;
- (unint64_t)getInputLength:(id)length;
- (unint64_t)getInputWidth:(id)width;
- (unint64_t)getOutputBytePerRow:(id)row;
- (unint64_t)getOutputChannels:(id)channels;
- (unint64_t)getOutputComponentSize:(id)size;
- (unint64_t)getOutputHeight:(id)height;
- (unint64_t)getOutputLength:(id)length;
- (unint64_t)getOutputRowElements:(id)elements;
- (unint64_t)getOutputWidth:(id)width;
- (void)bindNetworkInputWithImage:(__CVBuffer *)image withInputName:(id)name;
- (void)bindNetworkOutput:(const char *)output;
- (void)cleanUpOutputPixelBufferMap;
- (void)dealloc;
- (void)getRawOutput:(id)output;
- (void)setPreprocessor:(id *)preprocessor;
- (void)updateOutputBlobMap;
@end

@implementation SIBaseNetworkEspresso

- (SIBaseNetworkEspresso)initWithNetworkConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v20.receiver = self;
  v20.super_class = SIBaseNetworkEspresso;
  v5 = [(SIBaseNetworkEspresso *)&v20 init];
  if (v5)
  {
    networkName = [configurationCopy networkName];
    modelName = v5->_modelName;
    v5->_modelName = networkName;

    networkPath = [configurationCopy networkPath];

    if (networkPath)
    {
      networkPath2 = [configurationCopy networkPath];
      netPath = v5->_netPath;
      v5->_netPath = networkPath2;
    }

    else
    {
      netPath = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      networkName2 = [configurationCopy networkName];
      v12 = SIMLEIRModelPath(netPath, networkName2);
      v13 = v5->_netPath;
      v5->_netPath = v12;
    }

    v5->_engineType = [configurationCopy engineType];
    networkMode = [configurationCopy networkMode];
    networkMode = v5->_networkMode;
    v5->_networkMode = networkMode;

    v5->_isPrepared = 0;
    resources = [configurationCopy resources];
    resources = v5->_resources;
    v5->_resources = resources;

    v18 = v5;
  }

  return v5;
}

- (SIBaseNetworkEspresso)initWithNetworkPath:(id)path andEngine:(int64_t)engine networkMode:(id)mode
{
  pathCopy = path;
  modeCopy = mode;
  v10 = objc_alloc_init(SINetworkConfiguration);
  [(SINetworkConfiguration *)v10 setNetworkPath:pathCopy];
  [(SINetworkConfiguration *)v10 setEngineType:engine];
  [(SINetworkConfiguration *)v10 setNetworkMode:modeCopy];
  v11 = [(SIBaseNetworkEspresso *)self initWithNetworkConfiguration:v10];

  return v11;
}

- (BOOL)prepare
{
  v16 = *MEMORY[0x277D85DE8];
  [(SIBaseNetworkEspresso *)self preSetup];
  initMLNetwork = [(SIBaseNetworkEspresso *)self initMLNetwork];
  if (initMLNetwork)
  {
    v4 = __SceneIntelligenceLogSharedInstance([(SIBaseNetworkEspresso *)self postSetup]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      modelName = self->_modelName;
      networkVersion = [(SIBaseNetworkEspresso *)self networkVersion];
      v8 = 136381443;
      v9 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBaseNetworkEspresso.mm";
      v10 = 1025;
      v11 = 94;
      v12 = 2113;
      v13 = modelName;
      v14 = 2113;
      v15 = networkVersion;
      _os_log_impl(&dword_21DE0D000, v4, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** [Initialization] Model: %{private}@. Version: %{private}@ ***", &v8, 0x26u);
    }

    self->_isPrepared = 1;
  }

  return initMLNetwork;
}

- (id)networkVersion
{
  v5 = *MEMORY[0x277D85DE8];
  if (espresso_network_get_version())
  {
    v2 = @"Unknown";
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v4];
  }

  return v2;
}

- (BOOL)isUsingANE
{
  v3 = +[SIBaseNetworkEspresso supportsANE];
  if (v3)
  {
    LOBYTE(v3) = self->_engineType == 1;
  }

  return v3;
}

- (BOOL)initMLNetwork
{
  if (![(SIBaseNetworkEspresso *)self initContext]|| ![(SIBaseNetworkEspresso *)self initPlan]|| ![(SIBaseNetworkEspresso *)self initNetwork]|| ![(SIBaseNetworkEspresso *)self buildPlan]|| ![(SIBaseNetworkEspresso *)self validateNetworkOutputDimension])
  {
    return 0;
  }

  return [(SIBaseNetworkEspresso *)self initNetworkOutput];
}

- (BOOL)buildPlan
{
  if (self->_enablePreprocess)
  {
    [(SIBaseNetworkEspresso *)self initPreprocess];
  }

  espresso_plan_build();
  return 1;
}

- (BOOL)initContext
{
  context = espresso_create_context();
  v5 = context;
  self->_context = context;
  if (context)
  {
    Espresso::get_internal_context(v8, context, v4);
    v6 = v8[1];
    *(v8[0] + 68) = 1;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }

  return v5 != 0;
}

- (BOOL)initPlan
{
  plan = espresso_create_plan();
  self->_plan = plan;
  return plan != 0;
}

- (BOOL)initNetwork
{
  netPath = self->_netPath;
  if (!netPath)
  {
    return 0;
  }

  v4 = [(NSString *)netPath stringByAppendingPathComponent:@"model.espresso.net"];
  [v4 UTF8String];
  espresso_plan_add_network();
  networkMode = self->_networkMode;
  if (networkMode && ![(NSString *)networkMode isEqualToString:&stru_282F2BE40]&& ([(NSString *)self->_networkMode UTF8String], espresso_network_select_configuration()))
  {
    v6 = 0;
  }

  else
  {
    [(SIBaseNetworkEspresso *)self updateOutputBlobMap];
    v6 = 1;
  }

  return v6;
}

- (void)updateOutputBlobMap
{
  std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::clear(&self->_outputBufferMap);
  output_blob_name = espresso_get_output_blob_name();
  if (output_blob_name)
  {
    v4 = output_blob_name;
    v5 = 1;
    do
    {
      std::string::basic_string[abi:nn200100]<0>(v8, v4);
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::string,espresso_buffer_t>(&self->_outputBufferMap.__table_.__bucket_list_.__ptr_, v8, v8, v6);
      if (v9 < 0)
      {
        operator delete(v8[0]);
      }

      v4 = espresso_get_output_blob_name();
      ++v5;
    }

    while (v4);
  }
}

- (BOOL)validateNetworkOutputDimension
{
  v42 = *MEMORY[0x277D85DE8];
  next = self->_expectedDimensions.__table_.__first_node_.__next_;
  if (next)
  {
    *&v2 = 136383235;
    v17 = v2;
    do
    {
      v5 = next + 2;
      v40 = 0u;
      v41 = 0u;
      v6 = next + 2;
      if (*(next + 39) < 0)
      {
        v6 = *v5;
      }

      v7 = [(SIBaseNetworkEspresso *)self getBlobDimensionByName:v6 andDestination:&v40, v17];
      v8 = 0;
      v9 = 1;
      do
      {
        v9 &= *(&v40 + v8) == *(next[5] + v8);
        v8 += 8;
      }

      while (v8 != 32);
      if ((v9 & 1) == 0)
      {
        v10 = __SceneIntelligenceLogSharedInstance(v7);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          if (*(next + 39) < 0)
          {
            v5 = *v5;
          }

          v11 = next[5];
          v12 = *v11;
          v13 = v11[1];
          v15 = v11[2];
          v14 = v11[3];
          *buf = v17;
          v19 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBaseNetworkEspresso.mm";
          v20 = 1025;
          v21 = 259;
          v22 = 2081;
          v23 = v5;
          v24 = 2049;
          v25 = v12;
          v26 = 2049;
          v27 = v13;
          v28 = 2049;
          v29 = v15;
          v30 = 2049;
          v31 = v14;
          v32 = 2048;
          v33 = v40;
          v34 = 2048;
          v35 = *(&v40 + 1);
          v36 = 2048;
          v37 = v41;
          v38 = 2048;
          v39 = *(&v41 + 1);
          _os_log_impl(&dword_21DE0D000, v10, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** The shape of blob %{private}s doesn't match with the expectation in validation. We expect the shape to be (%{private}zu, %{private}zu, %{private}zu, %{private}zu) while the shape is (%zu, %zu, %zu, %zu)\n ***", buf, 0x6Cu);
        }
      }

      next = *next;
    }

    while (next);
  }

  return 1;
}

- (BOOL)initNetworkOutput
{
  for (i = self->_outputBufferMap.__table_.__first_node_.__next_; i; i = *i)
  {
    v4 = i + 16;
    if (i[39] < 0)
    {
      v4 = *v4;
    }

    [(SIBaseNetworkEspresso *)self bindNetworkOutput:v4];
  }

  return 1;
}

- (void)bindNetworkInputWithImage:(__CVBuffer *)image withInputName:(id)name
{
  nameCopy = name;
  PixelFormatType = CVPixelBufferGetPixelFormatType(image);
  isUsingANE = [(SIBaseNetworkEspresso *)self isUsingANE];
  v9 = PixelFormatType != 1278226488 || isUsingANE;
  if (v9)
  {
    [nameCopy UTF8String];
    espresso_network_bind_cvpixelbuffer();
  }

  else
  {
    CVPixelBufferGetWidth(image);
    CVPixelBufferGetHeight(image);
    CVPixelBufferGetBytesPerRow(image);
    CVPixelBufferLockBaseAddress(image, 0);
    CVPixelBufferGetBaseAddress(image);
    CVPixelBufferUnlockBaseAddress(image, 0);
    [nameCopy UTF8String];
    espresso_network_bind_input_vimagebuffer_planar8();
  }
}

- (BOOL)bindNetworkInputWithEspressoBuffer:(id *)buffer withInputName:(id)name
{
  nameCopy = name;
  [nameCopy UTF8String];
  v5 = espresso_network_bind_buffer() == 0;

  return v5;
}

- (void)bindNetworkOutput:(const char *)output
{
  disabledOutputSet = self->_disabledOutputSet;
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  LOBYTE(disabledOutputSet) = [(NSSet *)disabledOutputSet containsObject:v6];

  if ((disabledOutputSet & 1) == 0)
  {
    std::string::basic_string[abi:nn200100]<0>(__p, output);
    if (!std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::find<std::string>(&self->_outputBufferMap.__table_.__bucket_list_.__ptr_, __p))
    {
      abort();
    }

    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    espresso_network_bind_buffer();
  }
}

- ($FD4688982923A924290ECB669CAF1EC2)getTensorByName:(const char *)name
{
  std::string::basic_string[abi:nn200100]<0>(__p, name);
  v8 = __p;
  v4 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputBufferMap.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return (v4 + 5);
}

- (__CVBuffer)getOutPixelBufferByName:(const char *)name
{
  std::string::basic_string[abi:nn200100]<0>(__p, name);
  v8 = __p;
  v4 = std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputPixelBufMap.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v8)[5];
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

- (CGSize)getResolutionByBlobName:(const char *)name
{
  v5[4] = *MEMORY[0x277D85DE8];
  [(SIBaseNetworkEspresso *)self getBlobDimensionByName:name andDestination:v5];
  v3 = v5[0];
  v4 = v5[1];
  result.height = v4;
  result.width = v3;
  return result;
}

- (int64_t)switchConfiguration:(id)configuration
{
  v24 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  networkMode = [(SIBaseNetworkEspresso *)self networkMode];
  v6 = [networkMode isEqualToString:configurationCopy];

  if (v6)
  {
    goto LABEL_2;
  }

  [(SIBaseNetworkEspresso *)self cleanUpOutputPixelBufferMap];
  [(SIBaseNetworkEspresso *)self plan];
  espresso_plan_build_clean();
  [configurationCopy UTF8String];
  v8 = espresso_network_select_configuration();
  if (v8)
  {
    v9 = __SceneIntelligenceLogSharedInstance(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      netPath = self->_netPath;
      v18 = 136381187;
      v19 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBaseNetworkEspresso.mm";
      v20 = 1025;
      v21 = 391;
      v22 = 2113;
      v23 = netPath;
      v11 = " %{private}s:%{private}d *** Could not switch the configuration for the model: %{private}@ ***";
      v12 = v9;
      v13 = 28;
LABEL_17:
      _os_log_impl(&dword_21DE0D000, v12, OS_LOG_TYPE_ERROR, v11, &v18, v13);
    }

LABEL_18:

    v7 = 5;
    goto LABEL_19;
  }

  [(SIBaseNetworkEspresso *)self updateOutputBlobMap];
  buildPlan = [(SIBaseNetworkEspresso *)self buildPlan];
  if ((buildPlan & 1) == 0)
  {
    v9 = __SceneIntelligenceLogSharedInstance(buildPlan);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v18 = 136380931;
    v19 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBaseNetworkEspresso.mm";
    v20 = 1025;
    v21 = 397;
    v11 = " %{private}s:%{private}d *** build plan fail when switching the configuration! ***";
LABEL_16:
    v12 = v9;
    v13 = 18;
    goto LABEL_17;
  }

  validateNetworkOutputDimension = [(SIBaseNetworkEspresso *)self validateNetworkOutputDimension];
  if ((validateNetworkOutputDimension & 1) == 0)
  {
    v9 = __SceneIntelligenceLogSharedInstance(validateNetworkOutputDimension);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v18 = 136380931;
    v19 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBaseNetworkEspresso.mm";
    v20 = 1025;
    v21 = 402;
    v11 = " %{private}s:%{private}d *** validation for network output fail when switching the configuration! ***";
    goto LABEL_16;
  }

  initNetworkOutput = [(SIBaseNetworkEspresso *)self initNetworkOutput];
  if ((initNetworkOutput & 1) == 0)
  {
    v9 = __SceneIntelligenceLogSharedInstance(initNetworkOutput);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v18 = 136380931;
    v19 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBaseNetworkEspresso.mm";
    v20 = 1025;
    v21 = 407;
    v11 = " %{private}s:%{private}d *** initializing the network output buffer fail when switching the configuration! ***";
    goto LABEL_16;
  }

  [(SIBaseNetworkEspresso *)self setNetworkMode:configurationCopy];
LABEL_2:
  v7 = 0;
LABEL_19:

  return v7;
}

- (unint64_t)getInputBatchNum:(id)num
{
  numCopy = num;
  [numCopy UTF8String];
  if (espresso_network_query_blob_dimensions())
  {
    v4 = -1;
  }

  else
  {
    v4 = v6;
  }

  return v4;
}

- (unint64_t)getInputChannels:(id)channels
{
  channelsCopy = channels;
  [channelsCopy UTF8String];
  if (espresso_network_query_blob_dimensions())
  {
    v4 = -1;
  }

  else
  {
    v4 = v6;
  }

  return v4;
}

- (unint64_t)getInputHeight:(id)height
{
  heightCopy = height;
  [heightCopy UTF8String];
  if (espresso_network_query_blob_dimensions())
  {
    v4 = -1;
  }

  else
  {
    v4 = v6;
  }

  return v4;
}

- (unint64_t)getInputWidth:(id)width
{
  widthCopy = width;
  [widthCopy UTF8String];
  if (espresso_network_query_blob_dimensions())
  {
    v4 = -1;
  }

  else
  {
    v4 = v6;
  }

  return v4;
}

- (unint64_t)getInputLength:(id)length
{
  v19 = *MEMORY[0x277D85DE8];
  lengthCopy = length;
  std::string::basic_string[abi:nn200100]<0>(__p, [lengthCopy UTF8String]);
  *buf = __p;
  std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_input_espresso_buffer.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, buf);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = espresso_buffer_unpack_tensor_shape();
  v6 = v5;
  if (v5)
  {
    v7 = __SceneIntelligenceLogSharedInstance(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136381443;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBaseNetworkEspresso.mm";
      v11 = 1025;
      v12 = 446;
      v13 = 1024;
      v14 = v6;
      v15 = 2113;
      v16 = lengthCopy;
      _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** getInputLength failed with status: %d for name %{private}@ ***", buf, 0x22u);
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (unint64_t)getOutputChannels:(id)channels
{
  channelsCopy = channels;
  [channelsCopy UTF8String];
  if (espresso_network_query_blob_dimensions())
  {
    v4 = -1;
  }

  else
  {
    v4 = v6;
  }

  return v4;
}

- (unint64_t)getOutputHeight:(id)height
{
  heightCopy = height;
  std::string::basic_string[abi:nn200100]<0>(__p, [heightCopy UTF8String]);
  v9 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputBufferMap.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v9)[16];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

- (unint64_t)getOutputRowElements:(id)elements
{
  elementsCopy = elements;
  std::string::basic_string[abi:nn200100]<0>(__p, [elementsCopy UTF8String]);
  v9 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputBufferMap.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v9)[15];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

- (unint64_t)getOutputWidth:(id)width
{
  widthCopy = width;
  std::string::basic_string[abi:nn200100]<0>(__p, [widthCopy UTF8String]);
  v9 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputBufferMap.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v9)[15];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

- (void)getRawOutput:(id)output
{
  outputCopy = output;
  v5 = *-[SIBaseNetworkEspresso getTensorByName:](self, "getTensorByName:", [outputCopy UTF8String]);

  return v5;
}

- (unint64_t)getOutputBytePerRow:(id)row
{
  rowCopy = row;
  std::string::basic_string[abi:nn200100]<0>(__p, [rowCopy UTF8String]);
  v9 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputBufferMap.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v9)[11];
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

- (unint64_t)getOutputComponentSize:(id)size
{
  v14 = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  std::string::basic_string[abi:nn200100]<0>(__p, [sizeCopy UTF8String]);
  v9 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputBufferMap.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v9);
  v6 = *(v5 + 50);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  if (v6 != 65568)
  {
    v7 = __SceneIntelligenceLogSharedInstance(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *__p = 136380931;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBaseNetworkEspresso.mm";
      v11 = 1025;
      v12 = 490;
      _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Got unexpected storage type when querying the componentSize in espressoV1. ***", __p, 0x12u);
    }
  }

  return 4;
}

- (unint64_t)getOutputLength:(id)length
{
  v18 = *MEMORY[0x277D85DE8];
  lengthCopy = length;
  -[SIBaseNetworkEspresso getTensorByName:](self, "getTensorByName:", [lengthCopy UTF8String]);
  v5 = espresso_buffer_unpack_tensor_shape();
  v6 = v5;
  if (v5)
  {
    v7 = __SceneIntelligenceLogSharedInstance(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136381443;
      v11 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBaseNetworkEspresso.mm";
      v12 = 1025;
      v13 = 500;
      v14 = 1024;
      v15 = v6;
      v16 = 2113;
      v17 = lengthCopy;
      _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** getOutputLength failed with status: %d for name %{private}@ ***", buf, 0x22u);
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)getOpsForLibrary
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136380931;
    v5 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBaseNetworkEspresso.mm";
    v6 = 1025;
    v7 = 513;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Backend library does not support getOpsForLibrary. (You are probably not running with E5RT) ***", &v4, 0x12u);
  }

  return 0;
}

- (int64_t)runNetwork
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = espresso_plan_execute_sync();
  if (!v2)
  {
    return 0;
  }

  v3 = __SceneIntelligenceLogSharedInstance(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136380931;
    v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBaseNetworkEspresso.mm";
    v7 = 1025;
    v8 = 520;
    _os_log_impl(&dword_21DE0D000, v3, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failure to run network for MS ***", &v5, 0x12u);
  }

  return 4;
}

- (int64_t)setInput:(id)input fromCVPixelBuffer:(__CVBuffer *)buffer
{
  v19 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v7 = inputCopy;
  if (!self->_isPrepared)
  {
    v9 = __SceneIntelligenceLogSharedInstance(inputCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBaseNetworkEspresso.mm";
      *&buf[12] = 1025;
      *&buf[14] = 535;
      _os_log_impl(&dword_21DE0D000, v9, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Model is not prepared before setting the input ***", buf, 0x12u);
    }

    goto LABEL_9;
  }

  if (CVPixelBufferGetPixelFormatType(buffer) != 1111970369 && CVPixelBufferGetPixelFormatType(buffer) != 1278226488)
  {
    std::string::basic_string[abi:nn200100]<0>(__p, [v7 UTF8String]);
    if (std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::find<std::string>(&self->_input_espresso_buffer.__table_.__bucket_list_.__ptr_, __p) || (*buf = __p, *(std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&self->_input_espresso_buffer.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, buf, v17) + 50) = 65568, v12 = v7, -[SIBaseNetworkEspresso getBlobDimensionByName:andDestination:](self, "getBlobDimensionByName:andDestination:", [v7 UTF8String], buf), v17[0] = vextq_s8(*&buf[16], *&buf[16], 8uLL), v17[1] = vextq_s8(*buf, *buf, 8uLL), v16 = __p, std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&self->_input_espresso_buffer.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v16, &v15), !espresso_buffer_pack_tensor_shape()))
    {
      CVPixelBufferLockBaseAddress(buffer, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(buffer);
      *buf = __p;
      std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&self->_input_espresso_buffer.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, buf, v17)[5] = BaseAddress;
      *buf = __p;
      [(SIBaseNetworkEspresso *)self bindNetworkInputWithEspressoBuffer:std::__hash_table<std::__hash_value_type<std::string withInputName:espresso_buffer_t>, std::__unordered_map_hasher<std::string, std::__hash_value_type<std::string, espresso_buffer_t>, std::hash<std::string>, std::equal_to<std::string>, true>, std::__unordered_map_equal<std::string, std::__hash_value_type<std::string, espresso_buffer_t>, std::equal_to<std::string>, std::hash<std::string>, true>, std::allocator<std::__hash_value_type<std::string, espresso_buffer_t>>>::__emplace_unique_key_args<std::string, std::piecewise_construct_t const&, std::tuple<std::string const&>, std::tuple<>>(&self->_input_espresso_buffer.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, buf, v17) + 5, v7];
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_5;
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_9:
    v8 = 3;
    goto LABEL_10;
  }

  [(SIBaseNetworkEspresso *)self bindNetworkInputWithImage:buffer withInputName:v7];
LABEL_5:
  v8 = 0;
LABEL_10:

  return v8;
}

- (int64_t)setInput:(id)input fromRawPointer:(const void *)pointer
{
  v21 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v7 = inputCopy;
  if (self->_isPrepared)
  {
    std::string::basic_string[abi:nn200100]<0>(__p, [inputCopy UTF8String]);
    v8 = std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::find<std::string>(&self->_input_espresso_buffer.__table_.__bucket_list_.__ptr_, __p);
    if (v8)
    {
      v9 = 0;
      v8[5] = pointer;
    }

    else
    {
      v11 = __SceneIntelligenceLogSharedInstance(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136381187;
        v16 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBaseNetworkEspresso.mm";
        v17 = 1025;
        v18 = 583;
        v19 = 2113;
        v20 = v7;
        _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Input %{private}@ does not exist ***", buf, 0x1Cu);
      }

      v9 = 3;
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v10 = __SceneIntelligenceLogSharedInstance(inputCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v16 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBaseNetworkEspresso.mm";
      v17 = 1025;
      v18 = 576;
      _os_log_impl(&dword_21DE0D000, v10, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Model is not prepared before setting the input ***", buf, 0x12u);
    }

    v9 = 3;
  }

  return v9;
}

- (void)cleanUpOutputPixelBufferMap
{
  for (i = self->_outputPixelBufMap.__table_.__first_node_.__next_; i; i = *i)
  {
    CVPixelBufferRelease(*(i + 5));
  }

  std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::clear(&self->_outputPixelBufMap);
}

- (int64_t)addPrewiringBuffersToStreamForFunctionName:(id)name inputPools:(id)pools outputPools:(id)outputPools clearWiredBuffer:(BOOL)buffer
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 136380931;
    v9 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBaseNetworkEspresso.mm";
    v10 = 1025;
    v11 = 626;
    _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** ANEP is not supported in EspressoV1 ***", &v8, 0x12u);
  }

  return 4;
}

- (int64_t)unwirePrewiringBuffersForFunctionName:(id)name
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136380931;
    v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBaseNetworkEspresso.mm";
    v7 = 1025;
    v8 = 632;
    _os_log_impl(&dword_21DE0D000, v3, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** ANEP is not supported in EspressoV1 ***", &v5, 0x12u);
  }

  return 4;
}

- (int64_t)unwirePrewiringBuffers
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136380931;
    v5 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIBaseNetworkEspresso.mm";
    v6 = 1025;
    v7 = 638;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** ANEP is not supported in EspressoV1 ***", &v4, 0x12u);
  }

  return 4;
}

- (void)dealloc
{
  espresso_plan_destroy();
  espresso_context_destroy();
  [(SIBaseNetworkEspresso *)self cleanUpOutputPixelBufferMap];
  v3.receiver = self;
  v3.super_class = SIBaseNetworkEspresso;
  [(SIBaseNetworkEspresso *)&v3 dealloc];
}

- (NSString)description
{
  tracingEntry = [(SIBaseNetworkEspresso *)self tracingEntry];
  v3 = [tracingEntry description];

  return v3;
}

- (NSDictionary)tracingEntry
{
  v10[6] = *MEMORY[0x277D85DE8];
  v10[0] = self->_netPath;
  v9[0] = @"netPath";
  v9[1] = @"engineType";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_engineType];
  v10[1] = v3;
  v10[2] = self->_modelName;
  v9[2] = @"modelName";
  v9[3] = @"enablePreprocess";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_enablePreprocess];
  v10[3] = v4;
  v9[4] = @"networkVersion";
  networkVersion = [(SIBaseNetworkEspresso *)self networkVersion];
  v10[4] = networkVersion;
  v9[5] = @"networkMode";
  networkMode = [(SIBaseNetworkEspresso *)self networkMode];
  v10[5] = networkMode;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:6];

  return v7;
}

+ (NSDictionary)tracingEntryFormat
{
  if (+[SIBaseNetworkEspresso tracingEntryFormat]::onceToken != -1)
  {
    +[SIBaseNetworkEspresso tracingEntryFormat];
  }

  v3 = +[SIBaseNetworkEspresso tracingEntryFormat]::entryFormat;

  return v3;
}

void __43__SIBaseNetworkEspresso_tracingEntryFormat__block_invoke()
{
  v0 = +[SIBaseNetworkEspresso tracingEntryFormat]::entryFormat;
  +[SIBaseNetworkEspresso tracingEntryFormat]::entryFormat = &unk_282F35E58;
}

- ($C4732ECC957FA13B9B3DF4A51A95735B)network
{
  v2 = *&self->_network.network_index;
  plan = self->_network.plan;
  result.var1 = v2;
  result.var0 = plan;
  return result;
}

- (void)setPreprocessor:(id *)preprocessor
{
  v3 = *&preprocessor->var0;
  *&self->_preprocessor.network_wants_bgr = *&preprocessor->var4;
  *&self->_preprocessor.bias_r = v3;
}

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 1065353216;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 22) = 1065353216;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 32) = 1065353216;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 42) = 1065353216;
  return self;
}

@end