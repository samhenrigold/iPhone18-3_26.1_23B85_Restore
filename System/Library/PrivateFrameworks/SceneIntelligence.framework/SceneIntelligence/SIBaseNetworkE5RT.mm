@interface SIBaseNetworkE5RT
- (BOOL)IsPrewiringEnabled;
- (BOOL)IsSurfacePrewiredForCurrentFunctionForBlob:(id)blob surfaceID:(unint64_t)d;
- (BOOL)outputExists:(id)exists;
- (SIBaseNetworkE5RT)initWithNetName:(id)name;
- (SIBaseNetworkE5RT)initWithNetPath:(id)path;
- (SIBaseNetworkE5RT)initWithNetworkConfiguration:(id)configuration;
- (__n128)getOutputShape:(void *)shape;
- (id).cxx_construct;
- (id)getOutputSurface:(id)surface;
- (int)_loadPrecompiledModel:(id)model operation:(e5rt_execution_stream_operation *)operation;
- (int64_t)_loadModel:(id)model operation:(e5rt_execution_stream_operation *)operation;
- (int64_t)_setupMetaDataFromLibrary;
- (int64_t)addPrewiringBuffersToStreamForFunctionName:(id)name inputPools:(id)pools outputPools:(id)outputPools clearWiredBuffer:(BOOL)buffer;
- (int64_t)reset;
- (int64_t)runNetwork;
- (int64_t)runNetwork:(void *)network;
- (int64_t)selectComputeOperationByFunctionName:(id)name;
- (int64_t)setInput:(id)input fromCVPixelBuffer:(__CVBuffer *)buffer;
- (int64_t)setInput:(id)input fromRawPointer:(const void *)pointer;
- (int64_t)setInput:(id)input fromSurface:(id)surface;
- (int64_t)setOutputBlob:(id)blob forOutputSurface:(id)surface;
- (int64_t)unwirePrewiringBuffers;
- (int64_t)unwirePrewiringBuffersForFunctionName:(id)name;
- (unint64_t)getInputBatchNum:(id)num;
- (unint64_t)getInputChannels:(id)channels;
- (unint64_t)getInputHeight:(id)height;
- (unint64_t)getInputLength:(id)length;
- (unint64_t)getInputSizeInBytes:(id)bytes;
- (unint64_t)getInputWidth:(id)width;
- (unint64_t)getOutputBatchNum:(id)num;
- (unint64_t)getOutputBytePerRow:(id)row;
- (unint64_t)getOutputChannels:(id)channels;
- (unint64_t)getOutputComponentSize:(id)size;
- (unint64_t)getOutputHeight:(id)height;
- (unint64_t)getOutputLength:(id)length;
- (unint64_t)getOutputRowElements:(id)elements;
- (unint64_t)getOutputSizeInBytes:(id)bytes;
- (unint64_t)getOutputWidth:(id)width;
- (void)dealloc;
- (void)getInputPtr:(id)ptr;
- (void)getRawOutput:(id)output;
@end

@implementation SIBaseNetworkE5RT

- (int64_t)_setupMetaDataFromLibrary
{
  v41 = *MEMORY[0x277D85DE8];
  [(NSString *)self->_e5Path UTF8String];
  v3 = e5rt_program_library_create();
  if (v3)
  {
    v4 = __SceneIntelligenceLogSharedInstance(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 92);
      *buf = 136381187;
      v36 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v37 = 1025;
      v38 = 92;
      v39 = 2113;
      v40 = v5;
      _os_log_impl(&dword_21DE0D000, v4, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
    }

    v7 = __SceneIntelligenceLogSharedInstance(v6);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    e5Path = self->_e5Path;
    *buf = 136381187;
    v36 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v37 = 1025;
    v38 = 92;
    v39 = 2113;
    v40 = e5Path;
    v9 = " %{private}s:%{private}d *** Failed to create e5rt program library with e5Path=%{private}@ ***";
LABEL_24:
    _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, v9, buf, 0x1Cu);
LABEL_25:

    return 7;
  }

  networkFunction = [(SINetworkConfiguration *)self->_configuration networkFunction];
  v11 = networkFunction;
  [networkFunction UTF8String];
  v12 = e5rt_program_library_get_function_metadata() == 0;

  if (!v12)
  {
    v14 = __SceneIntelligenceLogSharedInstance(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 95);
      *buf = 136381187;
      v36 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v37 = 1025;
      v38 = 95;
      v39 = 2113;
      v40 = v15;
      _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
    }

    v7 = __SceneIntelligenceLogSharedInstance(v16);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v17 = self->_e5Path;
    *buf = 136381187;
    v36 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v37 = 1025;
    v38 = 95;
    v39 = 2113;
    v40 = v17;
    v9 = " %{private}s:%{private}d *** Failed to get e5rt main function metadata with e5Path=%{private}@ ***";
    goto LABEL_24;
  }

  v18 = CFDictionaryGetValue(0, @"UserVersion");
  networkVersion = self->_networkVersion;
  self->_networkVersion = v18;

  CFRelease(@"UserVersion");
  Value = CFDictionaryGetValue(0, @"Ops");
  v21 = CFRetain(Value);
  opsForLibrary = self->_opsForLibrary;
  self->_opsForLibrary = v21;

  v23 = [(NSArray *)self->_opsForLibrary objectAtIndexedSubscript:0];
  v24 = [v23 objectForKeyedSubscript:@"ComputeBackend"];

  if ([v24 isEqualToString:@"ANE"])
  {
    v25 = 0;
    v26 = 1;
LABEL_15:
    self->_bundleBackend = v26;
    goto LABEL_19;
  }

  v27 = [v24 isEqualToString:@"CPU"];
  if (v27)
  {
    v25 = 0;
    v26 = 2;
    goto LABEL_15;
  }

  v28 = __SceneIntelligenceLogSharedInstance(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 136381187;
    v36 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v37 = 1025;
    v38 = 112;
    v39 = 2112;
    v40 = v24;
    _os_log_impl(&dword_21DE0D000, v28, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Unsupported Backend: %@ ***", buf, 0x1Cu);
  }

  v25 = 4;
LABEL_19:

  v29 = e5rt_program_library_release();
  if (v29)
  {
    v30 = __SceneIntelligenceLogSharedInstance(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 124);
      *buf = 136381187;
      v36 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v37 = 1025;
      v38 = 124;
      v39 = 2113;
      v40 = v31;
      _os_log_impl(&dword_21DE0D000, v30, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
    }

    v7 = __SceneIntelligenceLogSharedInstance(v32);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v33 = self->_e5Path;
    *buf = 136381187;
    v36 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v37 = 1025;
    v38 = 124;
    v39 = 2113;
    v40 = v33;
    v9 = " %{private}s:%{private}d *** Failed to get e5rt main function metadata with e5Path=%{private}@ ***";
    goto LABEL_24;
  }

  return v25;
}

- (SIBaseNetworkE5RT)initWithNetName:(id)name
{
  v4 = objc_alloc_init(SINetworkConfiguration);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  networkName = [(SINetworkConfiguration *)v4 networkName];
  v7 = SIMLE5RTBundlePath(v5, networkName);
  [(SINetworkConfiguration *)v4 setNetworkPath:v7];

  v8 = [(SIBaseNetworkE5RT *)self initWithNetworkConfiguration:v4];
  return v8;
}

- (SIBaseNetworkE5RT)initWithNetPath:(id)path
{
  pathCopy = path;
  v5 = objc_alloc_init(SINetworkConfiguration);
  [(SINetworkConfiguration *)v5 setNetworkPath:pathCopy];
  v6 = [(SIBaseNetworkE5RT *)self initWithNetworkConfiguration:v5];

  return v6;
}

- (SIBaseNetworkE5RT)initWithNetworkConfiguration:(id)configuration
{
  v46 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v39.receiver = self;
  v39.super_class = SIBaseNetworkE5RT;
  v6 = [(SIBaseNetworkE5RT *)&v39 init];
  if (v6)
  {
    networkPath = [configurationCopy networkPath];
    v8 = networkPath == 0;

    if (v8)
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      networkName = [configurationCopy networkName];
      networkNameExtraPostfix = [configurationCopy networkNameExtraPostfix];
      v14 = networkNameExtraPostfix == 0;

      if (!v14)
      {
        v15 = MEMORY[0x277CCACA8];
        networkNameExtraPostfix2 = [configurationCopy networkNameExtraPostfix];
        v17 = [v15 stringWithFormat:@"%@_%@", networkName, networkNameExtraPostfix2];

        networkName = v17;
      }

      networkPath2 = SIMLE5RTBundlePath(v11, networkName);
    }

    else
    {
      networkPath2 = [configurationCopy networkPath];
    }

    objc_storeStrong(&v6->_configuration, configuration);
    networkName2 = [(SINetworkConfiguration *)v6->_configuration networkName];
    networkName = v6->_networkName;
    v6->_networkName = networkName2;

    objc_storeStrong(&v6->_e5Path, networkPath2);
    v6->_isModelCompiledInRuntime = 0;
    v20 = e5rt_execution_stream_create();
    if (v20)
    {
      v21 = __SceneIntelligenceLogSharedInstance(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 174);
        *buf = 136381187;
        v41 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
        v42 = 1025;
        v43 = 174;
        v44 = 2113;
        configurationCopy2 = v22;
        _os_log_impl(&dword_21DE0D000, v21, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v24 = __SceneIntelligenceLogSharedInstance(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        configuration = v6->_configuration;
        *buf = 136381187;
        v41 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
        v42 = 1025;
        v43 = 174;
        v44 = 2113;
        configurationCopy2 = configuration;
        _os_log_impl(&dword_21DE0D000, v24, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to init the model with networkConfiguration: %{private}@ ***", buf, 0x1Cu);
      }
    }

    else
    {
      v26 = e5rt_execution_stream_create();
      if (!v26)
      {
        v31 = objc_alloc_init(SIIOSurfaceAllocator);
        surfaceAllocator = v6->_surfaceAllocator;
        v6->_surfaceAllocator = v31;

        v6->_aneService = 0;
        _setupMetaDataFromLibrary = [(SIBaseNetworkE5RT *)v6 _setupMetaDataFromLibrary];
        if (_setupMetaDataFromLibrary)
        {
          v34 = __SceneIntelligenceLogSharedInstance(_setupMetaDataFromLibrary);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = v6->_networkName;
            *buf = 136381187;
            v41 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
            v42 = 1025;
            v43 = 198;
            v44 = 2112;
            configurationCopy2 = v35;
            _os_log_impl(&dword_21DE0D000, v34, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** [Warning] Failed to get metadata for E5 Bundle (%@) ***", buf, 0x1Cu);
          }
        }

        networkMode = [configurationCopy networkMode];
        v37 = [(SIBaseNetworkE5RT *)v6 selectComputeOperationByFunctionName:networkMode]== 0;

        if (v37)
        {
          v10 = v6;
          goto LABEL_26;
        }

LABEL_25:
        v10 = 0;
LABEL_26:

        goto LABEL_27;
      }

      v27 = __SceneIntelligenceLogSharedInstance(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 176);
        *buf = 136381187;
        v41 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
        v42 = 1025;
        v43 = 176;
        v44 = 2113;
        configurationCopy2 = v28;
        _os_log_impl(&dword_21DE0D000, v27, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v24 = __SceneIntelligenceLogSharedInstance(v29);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v30 = v6->_configuration;
        *buf = 136381187;
        v41 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
        v42 = 1025;
        v43 = 176;
        v44 = 2113;
        configurationCopy2 = v30;
        _os_log_impl(&dword_21DE0D000, v24, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to init the model with networkConfiguration: %{private}@ ***", buf, 0x1Cu);
      }
    }

    goto LABEL_25;
  }

  v10 = 0;
LABEL_27:

  return v10;
}

- (int)_loadPrecompiledModel:(id)model operation:(e5rt_execution_stream_operation *)operation
{
  modelCopy = model;
  v6 = modelCopy;
  if (self->_aneService)
  {
    __assert_rtn("[SIBaseNetworkE5RT _loadPrecompiledModel:operation:]", "SIBaseNetworkE5RT.mm", 245, "!_aneService");
  }

  [modelCopy UTF8String];
  [(NSString *)self->_e5Path UTF8String];
  [v6 UTF8String];
  precompiled_compute_operation = e5rt_execution_stream_operation_create_precompiled_compute_operation();

  return precompiled_compute_operation;
}

- (int64_t)_loadModel:(id)model operation:(e5rt_execution_stream_operation *)operation
{
  if ([(SIBaseNetworkE5RT *)self _loadPrecompiledModel:model operation:operation])
  {
    return 7;
  }

  else
  {
    return 0;
  }
}

- (int64_t)selectComputeOperationByFunctionName:(id)name
{
  v64 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([(__CFString *)nameCopy isEqualToString:&stru_282F2BE40])
  {
    v5 = @"main";
  }

  else
  {
    v5 = nameCopy;
  }

  v6 = v5;

  v7 = v6;
  std::string::basic_string[abi:nn200100]<0>(__p, -[__CFString UTF8String](v6, "UTF8String"));
  v8 = std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::find<std::string>(&self->_e5rt_loaded_operations.__table_.__bucket_list_.__ptr_, __p);
  v9 = v8;
  if (SBYTE3(v61) < 0)
  {
    operator delete(*__p);
    if (v9)
    {
      goto LABEL_8;
    }
  }

  else if (v8)
  {
    goto LABEL_8;
  }

  v56 = 0;
  v16 = [(SIBaseNetworkE5RT *)self _loadModel:v7 operation:&v56];
  if (v16)
  {
    v17 = __SceneIntelligenceLogSharedInstance(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      e5Path = self->_e5Path;
      *__p = 136381443;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v58 = 1025;
      v59 = 288;
      v60 = 2113;
      v61 = v7;
      v62 = 2113;
      v63 = e5Path;
      _os_log_impl(&dword_21DE0D000, v17, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to create compute operation for function name: %{private}@, e5Path: %{private}@ ***", __p, 0x26u);
    }

    goto LABEL_34;
  }

  v54 = 0;
  v55 = 0;
  num_inputs = e5rt_execution_stream_operation_get_num_inputs();
  if (num_inputs)
  {
    v20 = __SceneIntelligenceLogSharedInstance(num_inputs);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 294);
      *__p = 136381187;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v58 = 1025;
      v59 = 294;
      v60 = 2113;
      v61 = v21;
      _os_log_impl(&dword_21DE0D000, v20, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", __p, 0x1Cu);
    }

    v17 = __SceneIntelligenceLogSharedInstance(v22);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v23 = self->_e5Path;
    *__p = 136381443;
    *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v58 = 1025;
    v59 = 294;
    v60 = 2113;
    v61 = v7;
    v62 = 2113;
    v63 = v23;
    v24 = " %{private}s:%{private}d *** Failed to get #inputs for function name: %{private}@, e5Path: %{private}@ ***";
    goto LABEL_33;
  }

  num_outputs = e5rt_execution_stream_operation_get_num_outputs();
  if (num_outputs)
  {
    v26 = __SceneIntelligenceLogSharedInstance(num_outputs);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 297);
      *__p = 136381187;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v58 = 1025;
      v59 = 297;
      v60 = 2113;
      v61 = v27;
      _os_log_impl(&dword_21DE0D000, v26, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", __p, 0x1Cu);
    }

    v17 = __SceneIntelligenceLogSharedInstance(v28);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v29 = self->_e5Path;
    *__p = 136381443;
    *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v58 = 1025;
    v59 = 297;
    v60 = 2113;
    v61 = v7;
    v62 = 2113;
    v63 = v29;
    v24 = " %{private}s:%{private}d *** Failed to get #outputs for function name: %{private}@, e5Path: %{private}@ ***";
LABEL_33:
    _os_log_impl(&dword_21DE0D000, v17, OS_LOG_TYPE_ERROR, v24, __p, 0x26u);
LABEL_34:

LABEL_35:
    v15 = 7;
    goto LABEL_36;
  }

  v52 = 0;
  v53 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  obj = objc_alloc_init(MEMORY[0x277CBEB18]);
  v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
  input_names = e5rt_execution_stream_operation_get_input_names();
  if (input_names)
  {
    v32 = __SceneIntelligenceLogSharedInstance(input_names);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 308);
      *__p = 136381187;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v58 = 1025;
      v59 = 308;
      v60 = 2113;
      v61 = v33;
      _os_log_impl(&dword_21DE0D000, v32, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", __p, 0x1Cu);
    }

    v35 = __SceneIntelligenceLogSharedInstance(v34);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v36 = self->_e5Path;
    *__p = 136381443;
    *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v58 = 1025;
    v59 = 308;
    v60 = 2113;
    v61 = v7;
    v62 = 2113;
    v63 = v36;
    v37 = " %{private}s:%{private}d *** Failed to get input blob names for function name: %{private}@, e5Path: %{private}@ ***";
LABEL_47:
    _os_log_impl(&dword_21DE0D000, v35, OS_LOG_TYPE_ERROR, v37, __p, 0x26u);
LABEL_48:

    goto LABEL_35;
  }

  output_names = e5rt_execution_stream_operation_get_output_names();
  if (output_names)
  {
    v39 = __SceneIntelligenceLogSharedInstance(output_names);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 311);
      *__p = 136381187;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v58 = 1025;
      v59 = 311;
      v60 = 2113;
      v61 = v40;
      _os_log_impl(&dword_21DE0D000, v39, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", __p, 0x1Cu);
    }

    v35 = __SceneIntelligenceLogSharedInstance(v41);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_48;
    }

    v42 = self->_e5Path;
    *__p = 136381443;
    *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v58 = 1025;
    v59 = 311;
    v60 = 2113;
    v61 = v7;
    v62 = 2113;
    v63 = v42;
    v37 = " %{private}s:%{private}d *** Failed to get output blob names for function name: %{private}@, e5Path: %{private}@ ***";
    goto LABEL_47;
  }

  objc_storeStrong(&self->_networkInputNames, obj);
  objc_storeStrong(&self->_networkOutputNames, v45);
  v43 = v56;
  v44 = v7;
  std::string::basic_string[abi:nn200100]<0>(__p, -[__CFString UTF8String](v7, "UTF8String"));
  v47 = __p;
  std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_e5rt_loaded_operations.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v47)[5] = v43;
  if (SBYTE3(v61) < 0)
  {
    operator delete(*__p);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

LABEL_8:
  v10 = v7;
  std::string::basic_string[abi:nn200100]<0>(__p, -[__CFString UTF8String](v7, "UTF8String"));
  v51 = __p;
  self->_enabled_e5rt_operation = std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_e5rt_loaded_operations.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v51)[5];
  if (SBYTE3(v61) < 0)
  {
    operator delete(*__p);
  }

  objc_storeStrong(&self->_enabled_e5rt_function_name, v5);
  v11 = v7;
  std::string::basic_string[abi:nn200100]<0>(__p, -[__CFString UTF8String](v7, "UTF8String"));
  v51 = __p;
  v12 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_inputsForOperations.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v51);
  if (&self->_inputs != (v12 + 5))
  {
    self->_inputs.__table_.__max_load_factor_ = *(v12 + 18);
    std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,void *> *>>(&self->_inputs.__table_.__bucket_list_.__ptr_, v12[7], 0);
  }

  if (SBYTE3(v61) < 0)
  {
    operator delete(*__p);
  }

  v13 = v7;
  std::string::basic_string[abi:nn200100]<0>(__p, -[__CFString UTF8String](v7, "UTF8String"));
  v51 = __p;
  v14 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,SIE5RTPort * {__strong}>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputsForOperations.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v51);
  if (&self->_outputs != (v14 + 5))
  {
    self->_outputs.__table_.__max_load_factor_ = *(v14 + 18);
    std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,void *> *>>(&self->_outputs.__table_.__bucket_list_.__ptr_, v14[7], 0);
  }

  if (SBYTE3(v61) < 0)
  {
    operator delete(*__p);
  }

  v15 = 0;
LABEL_36:

  return v15;
}

- (void)dealloc
{
  [(SIBaseNetworkE5RT *)self reset];
  opsForLibrary = self->_opsForLibrary;
  if (opsForLibrary)
  {
    CFRelease(opsForLibrary);
  }

  v4.receiver = self;
  v4.super_class = SIBaseNetworkE5RT;
  [(SIBaseNetworkE5RT *)&v4 dealloc];
}

- (int64_t)reset
{
  v28 = *MEMORY[0x277D85DE8];
  [(SIBaseNetworkE5RT *)self unwirePrewiringBuffers];
  p_first_node = &self->_e5rt_loaded_operations.__table_.__first_node_;
  while (1)
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    v4 = e5rt_execution_stream_operation_release();
    if (v4)
    {
      v5 = __SceneIntelligenceLogSharedInstance(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 361);
        v22 = 136381187;
        v23 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
        v24 = 1025;
        v25 = 361;
        v26 = 2113;
        v27 = v6;
        _os_log_impl(&dword_21DE0D000, v5, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v22, 0x1Cu);
      }

      v8 = __SceneIntelligenceLogSharedInstance(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = p_first_node + 2;
        if (SHIBYTE(p_first_node[4].__next_) < 0)
        {
          v9 = v9->__next_;
        }

        v22 = 136381187;
        v23 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
        v24 = 1025;
        v25 = 361;
        v26 = 2081;
        v27 = v9;
        v10 = " %{private}s:%{private}d *** Failed to release loaded operation: %{private}s ***";
        v11 = v8;
        v12 = 28;
LABEL_23:
        _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, v10, &v22, v12);
      }

LABEL_24:

      return 7;
    }
  }

  if (self->_stream)
  {
    v13 = e5rt_execution_stream_release();
    if (v13)
    {
      v14 = __SceneIntelligenceLogSharedInstance(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 366);
        v22 = 136381187;
        v23 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
        v24 = 1025;
        v25 = 366;
        v26 = 2113;
        v27 = v15;
        _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v22, 0x1Cu);
      }

      v8 = __SceneIntelligenceLogSharedInstance(v16);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v22 = 136380931;
      v23 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v24 = 1025;
      v25 = 366;
      v10 = " %{private}s:%{private}d *** Failed to release E5RT inference stream ***";
LABEL_22:
      v11 = v8;
      v12 = 18;
      goto LABEL_23;
    }
  }

  if (self->_initPrewiringStream)
  {
    v17 = e5rt_execution_stream_release();
    if (v17)
    {
      v18 = __SceneIntelligenceLogSharedInstance(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 372);
        v22 = 136381187;
        v23 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
        v24 = 1025;
        v25 = 372;
        v26 = 2113;
        v27 = v19;
        _os_log_impl(&dword_21DE0D000, v18, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v22, 0x1Cu);
      }

      v8 = __SceneIntelligenceLogSharedInstance(v20);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v22 = 136380931;
      v23 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v24 = 1025;
      v25 = 372;
      v10 = " %{private}s:%{private}d *** Failed to release E5RT ANEP stream ***";
      goto LABEL_22;
    }
  }

  return 0;
}

- (int64_t)setInput:(id)input fromCVPixelBuffer:(__CVBuffer *)buffer
{
  inputCopy = input;
  v7 = [[SIIOSurface alloc] initFromPixelBuffer:buffer];
  v8 = [(SIBaseNetworkE5RT *)self setInput:inputCopy fromSurface:v7];

  return v8;
}

- (int64_t)setInput:(id)input fromSurface:(id)surface
{
  v20 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  surfaceCopy = surface;
  if (-[SIBaseNetworkE5RT IsPrewiringEnabled](self, "IsPrewiringEnabled") && (v8 = -[SIBaseNetworkE5RT IsSurfacePrewiredForCurrentFunctionForBlob:surfaceID:](self, "IsSurfacePrewiredForCurrentFunctionForBlob:surfaceID:", inputCopy, [surfaceCopy identifier]), (v8 & 1) == 0))
  {
    v11 = __SceneIntelligenceLogSharedInstance(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *__p = 136381443;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v14 = 1025;
      v15 = 385;
      v16 = 2048;
      identifier = [surfaceCopy identifier];
      v18 = 2113;
      v19 = inputCopy;
      _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Trying to bind the buffer (id= %lld) for blob (%{private}@) that was not ANEP ready ***", __p, 0x26u);
    }

    v10 = 3;
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(__p, [inputCopy UTF8String]);
    v9 = std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::find<std::string>(&self->_inputs.__table_.__bucket_list_.__ptr_, __p);
    if (!v9)
    {
      abort();
    }

    if (SBYTE3(identifier) < 0)
    {
      operator delete(*__p);
    }

    v10 = [v9[5] bindSurface:surfaceCopy];
  }

  return v10;
}

- (int64_t)setInput:(id)input fromRawPointer:(const void *)pointer
{
  inputCopy = input;
  std::string::basic_string[abi:nn200100]<0>(__p, [inputCopy UTF8String]);
  v12 = __p;
  v7 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_inputs.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = [v7[5] bindRawPointer:pointer];

  return v8;
}

- (void)getInputPtr:(id)ptr
{
  ptrCopy = ptr;
  std::string::basic_string[abi:nn200100]<0>(__p, [ptrCopy UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_inputs.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  getDataPtr = [v5[5] getDataPtr];

  return getDataPtr;
}

- (unint64_t)getInputWidth:(id)width
{
  widthCopy = width;
  std::string::basic_string[abi:nn200100]<0>(__p, [widthCopy UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_inputs.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  getWidth = [v5[5] getWidth];

  return getWidth;
}

- (unint64_t)getInputHeight:(id)height
{
  heightCopy = height;
  std::string::basic_string[abi:nn200100]<0>(__p, [heightCopy UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_inputs.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  getHeight = [v5[5] getHeight];

  return getHeight;
}

- (unint64_t)getInputChannels:(id)channels
{
  channelsCopy = channels;
  std::string::basic_string[abi:nn200100]<0>(__p, [channelsCopy UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_inputs.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  getChannels = [v5[5] getChannels];

  return getChannels;
}

- (unint64_t)getInputBatchNum:(id)num
{
  numCopy = num;
  std::string::basic_string[abi:nn200100]<0>(__p, [numCopy UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_inputs.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  getBatchnum = [v5[5] getBatchnum];

  return getBatchnum;
}

- (unint64_t)getInputLength:(id)length
{
  lengthCopy = length;
  std::string::basic_string[abi:nn200100]<0>(__p, [lengthCopy UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_inputs.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  getNumberOfElements = [v5[5] getNumberOfElements];

  return getNumberOfElements;
}

- (unint64_t)getInputSizeInBytes:(id)bytes
{
  bytesCopy = bytes;
  std::string::basic_string[abi:nn200100]<0>(__p, [bytesCopy UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_inputs.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  getSizeInBytes = [v5[5] getSizeInBytes];

  return getSizeInBytes;
}

- (int64_t)setOutputBlob:(id)blob forOutputSurface:(id)surface
{
  v21 = *MEMORY[0x277D85DE8];
  blobCopy = blob;
  surfaceCopy = surface;
  identifier = [surfaceCopy identifier];
  if ([(SIBaseNetworkE5RT *)self IsPrewiringEnabled]&& (v9 = [(SIBaseNetworkE5RT *)self IsSurfacePrewiredForCurrentFunctionForBlob:blobCopy surfaceID:identifier], (v9 & 1) == 0))
  {
    v12 = __SceneIntelligenceLogSharedInstance(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *__p = 136381443;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v15 = 1025;
      v16 = 444;
      v17 = 2048;
      v18 = identifier;
      v19 = 2113;
      v20 = blobCopy;
      _os_log_impl(&dword_21DE0D000, v12, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Trying to bind the buffer (id= %lld) for blob (%{private}@) that was not ANEP ready ***", __p, 0x26u);
    }

    v11 = 3;
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(__p, [blobCopy UTF8String]);
    v10 = std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::find<std::string>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p);
    if (!v10)
    {
      abort();
    }

    if (SBYTE3(v18) < 0)
    {
      operator delete(*__p);
    }

    v11 = [v10[5] bindSurface:surfaceCopy];
  }

  return v11;
}

- (void)getRawOutput:(id)output
{
  outputCopy = output;
  std::string::basic_string[abi:nn200100]<0>(__p, [outputCopy UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  getDataPtr = [v5[5] getDataPtr];

  return getDataPtr;
}

- (id)getOutputSurface:(id)surface
{
  surfaceCopy = surface;
  std::string::basic_string[abi:nn200100]<0>(__p, [surfaceCopy UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  getSurface = [v5[5] getSurface];

  return getSurface;
}

- (__n128)getOutputShape:(void *)shape
{
  shapeCopy = shape;
  std::string::basic_string[abi:nn200100]<0>(__p, [shapeCopy UTF8String]);
  v13 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((self + 256), __p, &std::piecewise_construct, &v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  getShape = [v5[5] getShape];
  v7 = vuzp1q_s32(*getShape, getShape[1]);
  v8 = vrev64q_s32(v7);
  v8.i64[0] = v7.i64[0];
  v10 = v8;

  return v10;
}

- (unint64_t)getOutputWidth:(id)width
{
  widthCopy = width;
  std::string::basic_string[abi:nn200100]<0>(__p, [widthCopy UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  getWidth = [v5[5] getWidth];

  return getWidth;
}

- (unint64_t)getOutputHeight:(id)height
{
  heightCopy = height;
  std::string::basic_string[abi:nn200100]<0>(__p, [heightCopy UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  getHeight = [v5[5] getHeight];

  return getHeight;
}

- (unint64_t)getOutputChannels:(id)channels
{
  channelsCopy = channels;
  std::string::basic_string[abi:nn200100]<0>(__p, [channelsCopy UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  getChannels = [v5[5] getChannels];

  return getChannels;
}

- (unint64_t)getOutputBatchNum:(id)num
{
  numCopy = num;
  std::string::basic_string[abi:nn200100]<0>(__p, [numCopy UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  getBatchnum = [v5[5] getBatchnum];

  return getBatchnum;
}

- (unint64_t)getOutputLength:(id)length
{
  lengthCopy = length;
  std::string::basic_string[abi:nn200100]<0>(__p, [lengthCopy UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  getNumberOfElements = [v5[5] getNumberOfElements];

  return getNumberOfElements;
}

- (unint64_t)getOutputSizeInBytes:(id)bytes
{
  bytesCopy = bytes;
  std::string::basic_string[abi:nn200100]<0>(__p, [bytesCopy UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  getSizeInBytes = [v5[5] getSizeInBytes];

  return getSizeInBytes;
}

- (unint64_t)getOutputRowElements:(id)elements
{
  elementsCopy = elements;
  std::string::basic_string[abi:nn200100]<0>(__p, [elementsCopy UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  getRowElements = [v5[5] getRowElements];

  return getRowElements;
}

- (unint64_t)getOutputBytePerRow:(id)row
{
  rowCopy = row;
  std::string::basic_string[abi:nn200100]<0>(__p, [rowCopy UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  getBytePerRow = [v5[5] getBytePerRow];

  return getBytePerRow;
}

- (unint64_t)getOutputComponentSize:(id)size
{
  sizeCopy = size;
  std::string::basic_string[abi:nn200100]<0>(__p, [sizeCopy UTF8String]);
  v10 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  getComponentSize = [v5[5] getComponentSize];

  return getComponentSize;
}

- (BOOL)outputExists:(id)exists
{
  existsCopy = exists;
  std::string::basic_string[abi:nn200100]<0>(__p, [existsCopy UTF8String]);
  v5 = std::__hash_table<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SIE5RTPort * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SIE5RTPort * {__strong}>>>::find<std::string>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5 != 0;
}

- (int64_t)runNetwork
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = e5rt_execution_stream_encode_operation();
  if (v2)
  {
    v3 = __SceneIntelligenceLogSharedInstance(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 548);
      v17 = 136381187;
      v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v19 = 1025;
      v20 = 548;
      v21 = 2113;
      v22 = v4;
      _os_log_impl(&dword_21DE0D000, v3, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v17, 0x1Cu);
    }

    v6 = __SceneIntelligenceLogSharedInstance(v5);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v17 = 136380931;
    v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v19 = 1025;
    v20 = 548;
    v7 = " %{private}s:%{private}d *** Failed to encode E5RT operation into execution stream. ***";
    goto LABEL_16;
  }

  v8 = e5rt_execution_stream_execute_sync();
  if (v8)
  {
    v9 = __SceneIntelligenceLogSharedInstance(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 551);
      v17 = 136381187;
      v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v19 = 1025;
      v20 = 551;
      v21 = 2113;
      v22 = v10;
      _os_log_impl(&dword_21DE0D000, v9, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v17, 0x1Cu);
    }

    v6 = __SceneIntelligenceLogSharedInstance(v11);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v17 = 136380931;
    v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v19 = 1025;
    v20 = 551;
    v7 = " %{private}s:%{private}d *** Failed to run execution stream. ***";
    goto LABEL_16;
  }

  v12 = e5rt_execution_stream_reset();
  if (!v12)
  {
    return 0;
  }

  v13 = __SceneIntelligenceLogSharedInstance(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 554);
    v17 = 136381187;
    v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v19 = 1025;
    v20 = 554;
    v21 = 2113;
    v22 = v14;
    _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v17, 0x1Cu);
  }

  v6 = __SceneIntelligenceLogSharedInstance(v15);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v17 = 136380931;
    v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v19 = 1025;
    v20 = 554;
    v7 = " %{private}s:%{private}d *** Failed to reset execution stream. ***";
LABEL_16:
    _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_ERROR, v7, &v17, 0x12u);
  }

LABEL_17:

  return 7;
}

- (int64_t)runNetwork:(void *)network
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = e5rt_execution_stream_encode_operation();
  if (v4)
  {
    v5 = __SceneIntelligenceLogSharedInstance(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 563);
      v23 = 136381187;
      v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v25 = 1025;
      v26 = 563;
      v27 = 2113;
      v28 = v6;
      _os_log_impl(&dword_21DE0D000, v5, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v23, 0x1Cu);
    }

    v8 = __SceneIntelligenceLogSharedInstance(v7);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v23 = 136380931;
    v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v25 = 1025;
    v26 = 563;
    v9 = " %{private}s:%{private}d *** Failed to encode E5RT operation into execution stream. ***";
    goto LABEL_6;
  }

  if (network)
  {
    v11 = ps_e5rt_execution_stream_execute_sync();
    if (v11)
    {
      v12 = __SceneIntelligenceLogSharedInstance(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 571);
        v23 = 136381187;
        v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
        v25 = 1025;
        v26 = 571;
        v27 = 2113;
        v28 = v13;
        _os_log_impl(&dword_21DE0D000, v12, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v23, 0x1Cu);
      }

      v8 = __SceneIntelligenceLogSharedInstance(v14);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v23 = 136380931;
      v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v25 = 1025;
      v26 = 571;
      v9 = " %{private}s:%{private}d *** Failed to run execution stream with polaris handle. ***";
      goto LABEL_6;
    }
  }

  else
  {
    v15 = e5rt_execution_stream_execute_sync();
    if (v15)
    {
      v16 = __SceneIntelligenceLogSharedInstance(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 567);
        v23 = 136381187;
        v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
        v25 = 1025;
        v26 = 567;
        v27 = 2113;
        v28 = v17;
        _os_log_impl(&dword_21DE0D000, v16, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v23, 0x1Cu);
      }

      v8 = __SceneIntelligenceLogSharedInstance(v18);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v23 = 136380931;
      v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v25 = 1025;
      v26 = 567;
      v9 = " %{private}s:%{private}d *** Failed to run execution stream. ***";
      goto LABEL_6;
    }
  }

  v19 = e5rt_execution_stream_reset();
  if (!v19)
  {
    return 0;
  }

  v20 = __SceneIntelligenceLogSharedInstance(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 575);
    v23 = 136381187;
    v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v25 = 1025;
    v26 = 575;
    v27 = 2113;
    v28 = v21;
    _os_log_impl(&dword_21DE0D000, v20, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v23, 0x1Cu);
  }

  v8 = __SceneIntelligenceLogSharedInstance(v22);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v23 = 136380931;
    v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v25 = 1025;
    v26 = 575;
    v9 = " %{private}s:%{private}d *** Failed to reset execution stream. ***";
LABEL_6:
    _os_log_impl(&dword_21DE0D000, v8, OS_LOG_TYPE_ERROR, v9, &v23, 0x12u);
  }

LABEL_7:

  return 7;
}

- (int64_t)addPrewiringBuffersToStreamForFunctionName:(id)name inputPools:(id)pools outputPools:(id)outputPools clearWiredBuffer:(BOOL)buffer
{
  bufferCopy = buffer;
  v143 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  poolsCopy = pools;
  outputPoolsCopy = outputPools;
  if (bufferCopy)
  {
    [(SIBaseNetworkE5RT *)self unwirePrewiringBuffersForFunctionName:nameCopy];
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = poolsCopy;
  v11 = 0;
  v12 = [obj countByEnumeratingWithState:&v120 objects:v142 count:16];
  if (v12)
  {
    v13 = *v121;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v121 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v120 + 1) + 8 * i);
        v16 = [obj objectForKeyedSubscript:v15];
        v17 = [v16 count];
        if (v11 <= v17)
        {
          v11 = v17;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v120 objects:v142 count:16];
    }

    while (v12);
  }

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v105 = outputPoolsCopy;
  v18 = [v105 countByEnumeratingWithState:&v116 objects:v141 count:16];
  if (v18)
  {
    v19 = *v117;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v117 != v19)
        {
          objc_enumerationMutation(v105);
        }

        v21 = *(*(&v116 + 1) + 8 * j);
        v22 = [v105 objectForKeyedSubscript:v21];
        v23 = [v22 count];
        if (v11 <= v23)
        {
          v11 = v23;
        }
      }

      v18 = [v105 countByEnumeratingWithState:&v116 objects:v141 count:16];
    }

    while (v18);
  }

  v24 = nameCopy;
  std::string::basic_string[abi:nn200100]<0>(__p, [nameCopy UTF8String]);
  *buf = __p;
  v25 = std::__hash_table<std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PrewiredFunctionInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_prewiredFunctionTable.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, buf);
  if (SBYTE3(v135) < 0)
  {
    operator delete(*__p);
    if (!v11)
    {
      goto LABEL_78;
    }

    goto LABEL_25;
  }

  if (v11)
  {
LABEL_25:
    v26 = 0;
    v99 = 7;
    while (1)
    {
      context = objc_autoreleasePoolPush();
      v115 = 0;
      [(NSString *)self->_e5Path UTF8String];
      [(NSString *)self->_e5Path UTF8String];
      v27 = nameCopy;
      [nameCopy UTF8String];
      precompiled_compute_operation = e5rt_execution_stream_operation_create_precompiled_compute_operation();
      if (precompiled_compute_operation)
      {
        break;
      }

      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v102 = self->_networkInputNames;
      v37 = [(NSArray *)v102 countByEnumeratingWithState:&v111 objects:v140 count:16];
      if (v37)
      {
        v38 = *v112;
        do
        {
          for (k = 0; k != v37; ++k)
          {
            if (*v112 != v38)
            {
              objc_enumerationMutation(v102);
            }

            v40 = *(*(&v111 + 1) + 8 * k);
            v41 = [obj objectForKeyedSubscript:v40];
            v42 = [v41 count];

            v43 = [obj objectForKeyedSubscript:v40];
            v44 = [v43 objectAtIndexedSubscript:v26 % v42];

            v45 = [SIE5RTPort alloc];
            v110 = [(SIE5RTPort *)v45 initPortWithE5RTStreamOperation:v115 blobName:v40 portType:0 operationBackend:self->_bundleBackend surfaceAllocator:self->_surfaceAllocator];
            [v110 bindSurface:v44];
            std::vector<SIE5RTPort * {__strong}>::push_back[abi:nn200100](v25 + 13, &v110);
            v46 = v40;
            std::string::basic_string[abi:nn200100]<0>(__p, [v40 UTF8String]);
            *buf = __p;
            v47 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v25 + 8, __p, &std::piecewise_construct, buf);
            *buf = [v44 identifier];
            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(v47 + 5, buf, buf);
            if (SBYTE3(v135) < 0)
            {
              operator delete(*__p);
            }
          }

          v37 = [(NSArray *)v102 countByEnumeratingWithState:&v111 objects:v140 count:16];
        }

        while (v37);
      }

      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v103 = self->_networkOutputNames;
      v48 = [(NSArray *)v103 countByEnumeratingWithState:&v106 objects:v139 count:16];
      if (v48)
      {
        v49 = *v107;
        do
        {
          for (m = 0; m != v48; ++m)
          {
            if (*v107 != v49)
            {
              objc_enumerationMutation(v103);
            }

            v51 = *(*(&v106 + 1) + 8 * m);
            v52 = [v105 objectForKey:v51];
            v53 = v52 == 0;

            if (v53)
            {
              v58 = v51;
              std::string::basic_string[abi:nn200100]<0>(__p, [v51 UTF8String]);
              *buf = __p;
              v57 = [std::__hash_table<std::__hash_value_type<std::string SIE5RTPort * {:std::__unordered_map_hasher<std::string :{std::__hash_value_type<std::string, SIE5RTPort * {__strong}>, std::hash<std::string>, std::equal_to<std::string>, true>, std::__unordered_map_equal<std::string, std::__hash_value_type<std::string, SIE5RTPort * {__strong}>, std::equal_to<std::string>, std::hash<std::string>, true>, std::allocator<std::__hash_value_type<std::string, SIE5RTPort * {__strong}>>>::__emplace_unique_key_args<std::string, std::piecewise_construct_t const&, std::tuple<std::string&&>, std::tuple<>>(&self->_outputs.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, buf)[5], "getSurface"}strong}>];
              if (SBYTE3(v135) < 0)
              {
                operator delete(*__p);
              }
            }

            else
            {
              v54 = [v105 objectForKeyedSubscript:v51];
              v55 = [v54 count];

              v56 = [v105 objectForKeyedSubscript:v51];
              v57 = [v56 objectAtIndexedSubscript:v26 % v55];
            }

            v59 = [SIE5RTPort alloc];
            v110 = [(SIE5RTPort *)v59 initPortWithE5RTStreamOperation:v115 blobName:v51 portType:1 operationBackend:self->_bundleBackend surfaceAllocator:self->_surfaceAllocator];
            [v110 bindSurface:v57];
            std::vector<SIE5RTPort * {__strong}>::push_back[abi:nn200100](v25 + 13, &v110);
            v60 = v51;
            std::string::basic_string[abi:nn200100]<0>(__p, [v51 UTF8String]);
            *buf = __p;
            v61 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v25 + 8, __p, &std::piecewise_construct, buf);
            *buf = [v57 identifier];
            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(v61 + 5, buf, buf);
            if (SBYTE3(v135) < 0)
            {
              operator delete(*__p);
            }
          }

          v48 = [(NSArray *)v103 countByEnumeratingWithState:&v106 objects:v139 count:16];
        }

        while (v48);
      }

      v63 = v25[6];
      v62 = v25[7];
      if (v63 >= v62)
      {
        v65 = v25[5];
        v66 = (v63 - v65) >> 3;
        if ((v66 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v67 = v62 - v65;
        v68 = v67 >> 2;
        if (v67 >> 2 <= (v66 + 1))
        {
          v68 = v66 + 1;
        }

        if (v67 >= 0x7FFFFFFFFFFFFFF8)
        {
          v69 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v69 = v68;
        }

        if (v69)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<e5rt_execution_stream_operation *>>((v25 + 5), v69);
        }

        *(8 * v66) = v115;
        v64 = 8 * v66 + 8;
        v70 = v25[5];
        v71 = v25[6] - v70;
        v72 = (8 * v66 - v71);
        memcpy(v72, v70, v71);
        v73 = v25[5];
        v25[5] = v72;
        v25[6] = v64;
        v25[7] = 0;
        if (v73)
        {
          operator delete(v73);
        }
      }

      else
      {
        *v63 = v115;
        v64 = (v63 + 8);
      }

      v25[6] = v64;
      v74 = e5rt_execution_stream_encode_operation();
      if (!v74)
      {
        v79 = 1;
        goto LABEL_74;
      }

      v75 = __SceneIntelligenceLogSharedInstance(v74);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        v76 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 683);
        *__p = 136381187;
        *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
        v132 = 1025;
        v133 = 683;
        v134 = 2113;
        v135 = v76;
        _os_log_impl(&dword_21DE0D000, v75, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", __p, 0x1Cu);
      }

      v32 = __SceneIntelligenceLogSharedInstance(v77);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v78 = "YES";
        if (!self->_initPrewiringStream)
        {
          v78 = "NO";
        }

        *__p = 136381187;
        *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
        v132 = 1025;
        v133 = 683;
        v134 = 2081;
        v135 = v78;
        v34 = v32;
        v35 = " %{private}s:%{private}d *** Failed to encode operation into execution stream for ANEP. Has ANEP Stream init: %{private}s ***";
        v36 = 28;
LABEL_72:
        _os_log_impl(&dword_21DE0D000, v34, OS_LOG_TYPE_ERROR, v35, __p, v36);
      }

LABEL_73:

      v79 = 0;
LABEL_74:
      objc_autoreleasePoolPop(context);
      if ((v79 & 1) == 0)
      {
        goto LABEL_100;
      }

      if (++v26 == v11)
      {
        goto LABEL_78;
      }
    }

    v29 = __SceneIntelligenceLogSharedInstance(precompiled_compute_operation);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 647);
      *__p = 136381187;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v132 = 1025;
      v133 = 647;
      v134 = 2113;
      v135 = v30;
      _os_log_impl(&dword_21DE0D000, v29, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", __p, 0x1Cu);
    }

    v32 = __SceneIntelligenceLogSharedInstance(v31);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }

    e5Path = self->_e5Path;
    *__p = 136381443;
    *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v132 = 1025;
    v133 = 647;
    v134 = 2113;
    v135 = nameCopy;
    v136 = 2113;
    v137 = e5Path;
    v34 = v32;
    v35 = " %{private}s:%{private}d *** Failed to create compute operation for function name: %{private}@, e5Path: %{private}@ ***";
    v36 = 38;
    goto LABEL_72;
  }

LABEL_78:
  v80 = e5rt_execution_stream_prewire_in_use_allocations();
  if (v80)
  {
    v81 = __SceneIntelligenceLogSharedInstance(v80);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      v82 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 688);
      *__p = 136381187;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v132 = 1025;
      v133 = 688;
      v134 = 2113;
      v135 = v82;
      _os_log_impl(&dword_21DE0D000, v81, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", __p, 0x1Cu);
    }

    v84 = __SceneIntelligenceLogSharedInstance(v83);
    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      v85 = "YES";
      initPrewiringStream = self->_initPrewiringStream;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      *__p = 136381187;
      if (!initPrewiringStream)
      {
        v85 = "NO";
      }

      v132 = 1025;
      v133 = 688;
      v134 = 2081;
      v135 = v85;
      _os_log_impl(&dword_21DE0D000, v84, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to prewire collected buffers. Has ANEP Stream init: %{private}s ***", __p, 0x1Cu);
    }

    v99 = 7;
  }

  else
  {
    v87 = __SceneIntelligenceLogSharedInstance(v80);
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
    {
      networkName = self->_networkName;
      *__p = 136381443;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v132 = 1025;
      v133 = 691;
      v134 = 2113;
      v135 = networkName;
      v136 = 2113;
      v137 = nameCopy;
      _os_log_impl(&dword_21DE0D000, v87, OS_LOG_TYPE_DEBUG, " %{private}s:%{private}d *** ANEP info for %{private}@, function:%{private}@ ***", __p, 0x26u);
    }

    for (n = v25[10]; n; n = *n)
    {
      std::pair<std::string const,std::unordered_set<unsigned long long>>::pair[abi:nn200100](__p, n + 1);
      v90 = objc_alloc(MEMORY[0x277CCACA8]);
      if (SBYTE3(v135) >= 0)
      {
        v91 = __p;
      }

      else
      {
        v91 = *__p;
      }

      v92 = [v90 initWithUTF8String:v91];
      v93 = v92;
      for (ii = v138; ii; ii = *ii)
      {
        v95 = ii[2];
        v96 = __SceneIntelligenceLogSharedInstance(v92);
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136381443;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
          v125 = 1025;
          v126 = 695;
          v127 = 2113;
          v128 = v93;
          v129 = 2048;
          v130 = v95;
          _os_log_impl(&dword_21DE0D000, v96, OS_LOG_TYPE_DEBUG, " %{private}s:%{private}d *** %{private}@ - %lld ***", buf, 0x26u);
        }
      }

      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v135 + 4);
      if (SBYTE3(v135) < 0)
      {
        operator delete(*__p);
      }
    }

    v99 = 0;
  }

LABEL_100:

  return v99;
}

- (int64_t)unwirePrewiringBuffersForFunctionName:(id)name
{
  v24 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  std::string::basic_string[abi:nn200100]<0>(__p, [nameCopy UTF8String]);
  v18 = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PrewiredFunctionInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_prewiredFunctionTable.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v18);
  if (SBYTE3(v23) < 0)
  {
    operator delete(*__p);
  }

  v6 = v5[5];
  v7 = v5[6];
  if (v6 == v7)
  {
LABEL_7:
    v5[6] = v6;
    v9 = v5[13];
    for (i = v5[14]; i != v9; i -= 8)
    {
      v11 = *(i - 1);
    }

    v5[14] = v9;
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::clear((v5 + 8));
    v12 = 0;
  }

  else
  {
    while (1)
    {
      v18 = *v6;
      v8 = e5rt_execution_stream_operation_release();
      if (v8)
      {
        break;
      }

      if (++v6 == v7)
      {
        v6 = v5[5];
        goto LABEL_7;
      }
    }

    v13 = __SceneIntelligenceLogSharedInstance(v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 707);
      *__p = 136381187;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v20 = 1025;
      v21 = 707;
      v22 = 2113;
      v23 = v14;
      _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", __p, 0x1Cu);
    }

    v16 = __SceneIntelligenceLogSharedInstance(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *__p = 136381187;
      *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v20 = 1025;
      v21 = 707;
      v22 = 2113;
      v23 = nameCopy;
      _os_log_impl(&dword_21DE0D000, v16, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to release ANEP for function: %{private}@ ***", __p, 0x1Cu);
    }

    v12 = 7;
  }

  return v12;
}

- (BOOL)IsPrewiringEnabled
{
  std::string::basic_string[abi:nn200100]<0>(__p, -[NSString UTF8String](self->_enabled_e5rt_function_name, "UTF8String"));
  v7 = __p;
  v3 = std::__hash_table<std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PrewiredFunctionInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_prewiredFunctionTable.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3[11] != 0;
}

- (BOOL)IsSurfacePrewiredForCurrentFunctionForBlob:(id)blob surfaceID:(unint64_t)d
{
  blobCopy = blob;
  dCopy = d;
  std::string::basic_string[abi:nn200100]<0>(__p, -[NSString UTF8String](self->_enabled_e5rt_function_name, "UTF8String"));
  v14[0] = __p;
  v7 = std::__hash_table<std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PrewiredFunctionInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_prewiredFunctionTable.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, v14);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, [blobCopy UTF8String]);
  if (std::__hash_table<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,e5rt_execution_stream_operation *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,e5rt_execution_stream_operation *>>>::find<std::string>(v7 + 8, __p))
  {
    std::string::basic_string[abi:nn200100]<0>(v14, [blobCopy UTF8String]);
    v12[0] = v14;
    v8 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v7 + 8, v14, &std::piecewise_construct, v12);
    v9 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v8 + 5, &dCopy);
    std::string::basic_string[abi:nn200100]<0>(v12, [blobCopy UTF8String]);
    v19 = v12;
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v7 + 8, v12, &std::piecewise_construct, &v19);
    v10 = v9 != 0;
    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }
  }

  else
  {
    v10 = 0;
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

- (int64_t)unwirePrewiringBuffers
{
  v24 = *MEMORY[0x277D85DE8];
  for (i = self->_prewiredFunctionTable.__table_.__first_node_.__next_; i; i = *i)
  {
    v4 = i + 16;
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    if (i[39] < 0)
    {
      v4 = *v4;
    }

    v6 = [v5 initWithUTF8String:v4];
    [(SIBaseNetworkE5RT *)self unwirePrewiringBuffersForFunctionName:v6];
  }

  std::__hash_table<std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PrewiredFunctionInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PrewiredFunctionInfo>>>::clear(&self->_prewiredFunctionTable);
  v7 = e5rt_execution_stream_release();
  if (v7)
  {
    v8 = __SceneIntelligenceLogSharedInstance(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 739);
      v18 = 136381187;
      v19 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
      v20 = 1025;
      v21 = 739;
      v22 = 2113;
      v23 = v9;
      _os_log_impl(&dword_21DE0D000, v8, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v18, 0x1Cu);
    }

    v11 = __SceneIntelligenceLogSharedInstance(v10);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v18 = 136380931;
    v19 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v20 = 1025;
    v21 = 739;
    v12 = " %{private}s:%{private}d *** Failed to release E5RT ANEP stream ***";
    goto LABEL_15;
  }

  v13 = e5rt_execution_stream_create();
  if (!v13)
  {
    return 0;
  }

  v14 = __SceneIntelligenceLogSharedInstance(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm", 742);
    v18 = 136381187;
    v19 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v20 = 1025;
    v21 = 742;
    v22 = 2113;
    v23 = v15;
    _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", &v18, 0x1Cu);
  }

  v11 = __SceneIntelligenceLogSharedInstance(v16);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v18 = 136380931;
    v19 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIBaseNetworkE5RT.mm";
    v20 = 1025;
    v21 = 742;
    v12 = " %{private}s:%{private}d *** Failed to create E5RT ANEP stream ***";
LABEL_15:
    _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, v12, &v18, 0x12u);
  }

LABEL_16:

  return 7;
}

- (id).cxx_construct
{
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 28) = 1065353216;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 38) = 1065353216;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 48) = 1065353216;
  *(self + 216) = 0u;
  *(self + 232) = 0u;
  *(self + 62) = 1065353216;
  *(self + 16) = 0u;
  *(self + 17) = 0u;
  *(self + 72) = 1065353216;
  *(self + 296) = 0u;
  *(self + 312) = 0u;
  *(self + 82) = 1065353216;
  return self;
}

@end