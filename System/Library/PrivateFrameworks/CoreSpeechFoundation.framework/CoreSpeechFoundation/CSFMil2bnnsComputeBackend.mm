@interface CSFMil2bnnsComputeBackend
+ ($3265B292A9BE2BE95187D95CCBA22C14)_compileWithMilFile:(id)file bnnsIrPath:(id)path separateWeight:(id)weight compilationConfig:(id)config isBnnsIrMapped:(BOOL *)mapped errOut:(id *)out;
+ (id)compileWithMilFile:(id)file bnnsIrPath:(id)path separateWeight:(id)weight;
+ (void)markPurgeableWithBnnsIrFile:(id)file;
- ($3265B292A9BE2BE95187D95CCBA22C14)_mapBnnsIrPath:(id)path errOut:(id *)out;
- (BOOL)_populateModelInterfaceParameters;
- (CSFMil2bnnsComputeBackend)initWithBnnsIrFile:(id)file weightPath:(id)path errOut:(id *)out;
- (CSFMil2bnnsComputeBackend)initWithModelFile:(id)file bnnsIrPath:(id)path errOut:(id *)out;
- (id)_convertOutputBuffer:(id)buffer;
- (id)_fetchTensorPropertiesForName:(id)name;
- (id)_getShapeFromTensorDesc:(id *)desc;
- (id)_runWithMil2bnnsDataInputBuff:(id)buff error:(id *)error;
- (id)predictOutputWithInputs:(id)inputs errOut:(id *)out;
- (unint64_t)_getDataTypeFromTensorDesc:(id *)desc;
- (void)_graphInitWithError:(id *)error;
- (void)_loadGraph:(id *)graph;
- (void)_pointBnnsIrToWeights:(id)weights errOut:(id *)out;
- (void)dealloc;
@end

@implementation CSFMil2bnnsComputeBackend

- (void)dealloc
{
  BNNSGraphContextDestroy_v2();
  data = self->_graph.data;
  if (self->_graphIsMapped)
  {
    if (data != -1)
    {
      munmap(data, self->_graph.size);
      self->_graph.data = -1;
      self->_graph.size = 0;
    }

    self->_graphIsMapped = 0;
  }

  else if (data)
  {
    free(data);
    self->_graph.data = 0;
    self->_graph.size = 0;
  }

  v4.receiver = self;
  v4.super_class = CSFMil2bnnsComputeBackend;
  [(CSFMil2bnnsComputeBackend *)&v4 dealloc];
}

- (id)_runWithMil2bnnsDataInputBuff:(id)buff error:(id *)error
{
  v50[1] = *MEMORY[0x1E69E9840];
  buffCopy = buff;
  if (buffCopy && [buffCopy count])
  {
    InputCount = BNNSGraphGetInputCount();
    std::vector<char const*>::vector[abi:ne200100](v42, InputCount);
    BNNSGraphGetInputNames_v2();
    OutputCount = BNNSGraphGetOutputCount();
    std::vector<char const*>::vector[abi:ne200100](v41, OutputCount);
    v35 = InputCount;
    BNNSGraphGetOutputNames_v2();
    memset(__p, 0, sizeof(__p));
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (OutputCount)
    {
      v8 = 0;
      while (1)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(v41[0] + v8)];
        v10 = [CSFComputeDataBuffer alloc];
        v11 = [(NSDictionary *)self->_bnnsIrOutputTensorsProperty objectForKeyedSubscript:v9];
        v39 = 0;
        v12 = [(CSFComputeDataBuffer *)v10 initWithProperties:v11 name:v9 errOut:&v39];
        v13 = v39;

        if (!v12 || v13 != 0)
        {
          break;
        }

        [v7 setObject:v12 forKey:v9];
        v15 = [v7 objectForKeyedSubscript:v9];
        *&v38 = [v15 getWritableDataPtr];
        v16 = [v7 objectForKeyedSubscript:v9];
        *(&v38 + 1) = 4 * [v16 elementSize];
        std::vector<bnns_graph_argument_t>::push_back[abi:ne200100](__p, &v38);

        if (OutputCount == ++v8)
        {
          goto LABEL_11;
        }
      }

      if (error)
      {
        v31 = v13;
        *error = v13;
      }

      goto LABEL_28;
    }

LABEL_11:
    if (InputCount == [buffCopy count])
    {
      if (InputCount)
      {
        v17 = 0;
        while (1)
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(v42[0] + v17)];
          v18 = [(NSDictionary *)self->_bnnsIrInputTensorsProperty objectForKeyedSubscript:v9];
          v19 = [buffCopy objectForKeyedSubscript:v9];
          tensorProperties = [v19 tensorProperties];
          v21 = [v18 isEqual:tensorProperties];

          if ((v21 & 1) == 0)
          {
            break;
          }

          v22 = [buffCopy objectForKeyedSubscript:v9];
          *&v38 = [v22 getWritableDataPtr];
          v23 = [buffCopy objectForKeyedSubscript:v9];
          *(&v38 + 1) = 4 * [v23 elementSize];
          std::vector<bnns_graph_argument_t>::push_back[abi:ne200100](__p, &v38);

          if (v35 == ++v17)
          {
            goto LABEL_16;
          }
        }

        if (!error)
        {
          goto LABEL_29;
        }

        v33 = MEMORY[0x1E696ABC0];
        v45 = *MEMORY[0x1E696A578];
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Mismatched input tensor"];
        v46 = v13;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        *error = [v33 errorWithDomain:@"com.apple.corespeech" code:2415 userInfo:v34];

LABEL_28:
LABEL_29:

        goto LABEL_30;
      }

LABEL_16:
      if (!BNNSGraphContextExecute_v2())
      {
        v29 = [v7 copy];
        goto LABEL_31;
      }

      if (error)
      {
        v24 = MEMORY[0x1E696ABC0];
        v43 = *MEMORY[0x1E696A578];
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BNNSGraphContextExecute failed"];
        v44 = v9;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v25 = [v24 errorWithDomain:@"com.apple.corespeech" code:2408 userInfo:v13];
LABEL_24:
        *error = v25;
        goto LABEL_28;
      }
    }

    else if (error)
    {
      v30 = MEMORY[0x1E696ABC0];
      v47 = *MEMORY[0x1E696A578];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"given input length does not match"];
      v48 = v9;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v25 = [v30 errorWithDomain:@"com.apple.corespeech" code:2409 userInfo:v13];
      goto LABEL_24;
    }

LABEL_30:
    v29 = 0;
LABEL_31:

    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (v41[0])
    {
      v41[1] = v41[0];
      operator delete(v41[0]);
    }

    if (v42[0])
    {
      v42[1] = v42[0];
      operator delete(v42[0]);
    }

    goto LABEL_37;
  }

  if (error)
  {
    v26 = MEMORY[0x1E696ABC0];
    v49 = *MEMORY[0x1E696A578];
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputs to model is empty"];
    v50[0] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    *error = [v26 errorWithDomain:@"com.apple.corespeech" code:2401 userInfo:v28];
  }

  v29 = 0;
LABEL_37:

  return v29;
}

- (void)_loadGraph:(id *)graph
{
  v42 = *MEMORY[0x1E69E9840];
  bnnsIrPath = self->_bnnsIrPath;
  if (!bnnsIrPath)
  {
    if (self->_graph.data)
    {
      goto LABEL_20;
    }

LABEL_11:
    milPath = self->_milPath;
    if (milPath)
    {
      v12 = CSLogContextFacilityCoreSpeech;
      v13 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
      v14 = self->_bnnsIrPath;
      if (v13)
      {
        *buf = 136315394;
        v37 = "[CSFMil2bnnsComputeBackend _loadGraph:]";
        v38 = 2112;
        v39 = v14;
        _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s No graph is loaded, compiling to bnnsIr: %@", buf, 0x16u);
        milPath = self->_milPath;
        v14 = self->_bnnsIrPath;
      }

      modelCompilationConfig = self->_modelCompilationConfig;
      v33 = 0;
      v16 = [CSFMil2bnnsComputeBackend _compileWithMilFile:milPath bnnsIrPath:v14 separateWeight:0 compilationConfig:modelCompilationConfig isBnnsIrMapped:&self->_graphIsMapped errOut:&v33];
      v18 = v17;
      milPath = v33;
      self->_graph.data = v16;
      self->_graph.size = v18;
      if (v16)
      {
        v19 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v37 = "[CSFMil2bnnsComputeBackend _loadGraph:]";
          _os_log_impl(&dword_1DDA4B000, v19, OS_LOG_TYPE_DEFAULT, "%s recompilation is successful", buf, 0xCu);
        }

        if (graph)
        {
          *graph = 0;
        }

        goto LABEL_20;
      }

      v28 = self->_milPath;
      if (v28)
      {
        v29 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v37 = "[CSFMil2bnnsComputeBackend _loadGraph:]";
          v38 = 2112;
          v39 = v28;
          v40 = 2112;
          v41 = milPath;
          _os_log_impl(&dword_1DDA4B000, v29, OS_LOG_TYPE_DEFAULT, "%s recompiling milFile: %@ failed with error: %@", buf, 0x20u);
        }

        if (graph)
        {
          v30 = milPath;
          *graph = milPath;
        }
      }
    }

    v31 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v37 = "[CSFMil2bnnsComputeBackend _loadGraph:]";
      _os_log_impl(&dword_1DDA4B000, v31, OS_LOG_TYPE_DEFAULT, "%s bnnsIr loading failed", buf, 0xCu);
    }

    goto LABEL_35;
  }

  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v37 = "[CSFMil2bnnsComputeBackend _loadGraph:]";
    v38 = 2112;
    v39 = bnnsIrPath;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s loading model from bnnsIrPath: %@", buf, 0x16u);
    bnnsIrPath = self->_bnnsIrPath;
  }

  data = [(CSFMil2bnnsComputeBackend *)self _mapBnnsIrPath:bnnsIrPath errOut:graph];
  self->_graph.data = data;
  self->_graph.size = v8;
  if (graph)
  {
    v9 = *graph;
    if (*graph)
    {
      v10 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v37 = "[CSFMil2bnnsComputeBackend _loadGraph:]";
        v38 = 2112;
        v39 = v9;
        _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s error loading bnns ir :%@", buf, 0x16u);
        data = self->_graph.data;
      }
    }
  }

  if (!data)
  {
    goto LABEL_11;
  }

  self->_graphIsMapped = 1;
LABEL_20:
  v20 = BNNSGraphContextMake();
  self->_graphContext.data = v20;
  self->_graphContext.size = v21;
  weight = self->_weight;
  if (weight)
  {
    v32 = 0;
    [(CSFMil2bnnsComputeBackend *)self _pointBnnsIrToWeights:weight errOut:&v32];
    v23 = v32;
    if (v23)
    {
      milPath = v23;
      if (graph)
      {
        v24 = v23;
        *graph = milPath;
      }

      goto LABEL_35;
    }

    v20 = self->_graphContext.data;
  }

  milPath = 0;
  if (graph && !v20)
  {
    v25 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A578];
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BNNSGraphContextMake fail for %@", self->_milPath];
    v35 = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    *graph = [v25 errorWithDomain:@"com.apple.corespeech" code:2262 userInfo:v27];

    milPath = 0;
  }

LABEL_35:
}

- ($3265B292A9BE2BE95187D95CCBA22C14)_mapBnnsIrPath:(id)path errOut:(id *)out
{
  v40[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v6 = open([pathCopy UTF8String], 0);
  v7 = v6;
  if (v6 == -1)
  {
    if (out)
    {
      v13 = MEMORY[0x1E696ABC0];
      v39 = *MEMORY[0x1E696A578];
      v14 = MEMORY[0x1E696AEC0];
      v15 = __error();
      v16 = [v14 stringWithFormat:@"Could not read open() BNNSIR: %s", strerror(*v15)];
      v40[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      *out = [v13 errorWithDomain:@"com.apple.corespeech" code:2261 userInfo:v17];
    }
  }

  else if (fstat(v6, &v32))
  {
    if (out)
    {
      v8 = MEMORY[0x1E696ABC0];
      v37 = *MEMORY[0x1E696A578];
      v9 = MEMORY[0x1E696AEC0];
      v10 = __error();
      v11 = [v9 stringWithFormat:@"Could not fstat() BNNSIR: %s", strerror(*v10)];
      v38 = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      *out = [v8 errorWithDomain:@"com.apple.corespeech" code:2261 userInfo:v12];
    }

    close(v7);
  }

  else
  {
    st_size = v32.st_size;
    v18 = mmap(0, v32.st_size, 1, 1, v7, 0);
    close(v7);
    if (v18 == -1)
    {
      if (out)
      {
        v27 = MEMORY[0x1E696ABC0];
        v35 = *MEMORY[0x1E696A578];
        v28 = MEMORY[0x1E696AEC0];
        v29 = __error();
        v30 = [v28 stringWithFormat:@"Could not mmap() BNNSIR: %s", strerror(*v29)];
        v36 = v30;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        *out = [v27 errorWithDomain:@"com.apple.corespeech" code:2261 userInfo:v31];
      }
    }

    else
    {
      if (BNNSGraphGetWorkspaceSize_v2() != -1)
      {
        goto LABEL_9;
      }

      if (out)
      {
        v22 = MEMORY[0x1E696ABC0];
        v33 = *MEMORY[0x1E696A578];
        v23 = MEMORY[0x1E696AEC0];
        v24 = __error();
        v25 = [v23 stringWithFormat:@"Could not BNNSGraphGetWorkspaceSize() BNNSIR: %s", strerror(*v24)];
        v34 = v25;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        *out = [v22 errorWithDomain:@"com.apple.corespeech" code:2261 userInfo:v26];
      }

      munmap(v18, st_size);
    }
  }

  v18 = 0;
  st_size = 0;
LABEL_9:

  v20 = v18;
  v21 = st_size;
  result.var1 = v21;
  result.var0 = v20;
  return result;
}

- (id)_convertOutputBuffer:(id)buffer
{
  v19 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = bufferCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v5 objectForKeyedSubscript:{v9, v14}];
        convertDataToArray = [v10 convertDataToArray];
        [v4 setObject:convertDataToArray forKey:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v4 copy];

  return v12;
}

- (BOOL)_populateModelInterfaceParameters
{
  if (!self->_graph.data)
  {
    return 0;
  }

  InputCount = BNNSGraphGetInputCount();
  std::vector<char const*>::vector[abi:ne200100](&v20, InputCount);
  BNNSGraphGetInputNames_v2();
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = v20;
  v6 = v21;
  if (v20 == v21)
  {
    v9 = 0;
LABEL_9:
    OutputCount = BNNSGraphGetOutputCount();
    std::vector<char const*>::vector[abi:ne200100](&__p, OutputCount);
    BNNSGraphGetOutputNames_v2();
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v13 = __p;
    v14 = v19;
    if (__p == v19)
    {
      v16 = v9;
LABEL_15:
      objc_storeStrong(&self->_bnnsIrInputTensorsProperty, dictionary);
      objc_storeStrong(&self->_bnnsIrOutputTensorsProperty, dictionary2);
      v10 = 1;
      v15 = v16;
    }

    else
    {
      while (1)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v13];
        if (!v9)
        {
          break;
        }

        v16 = [(CSFMil2bnnsComputeBackend *)self _fetchTensorPropertiesForName:v15];

        [dictionary2 setObject:v16 forKey:v15];
        ++v13;
        v9 = v16;
        if (v13 == v14)
        {
          goto LABEL_15;
        }
      }

      v10 = 0;
    }

    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v7 = 0;
    while (1)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v5];
      v9 = [(CSFMil2bnnsComputeBackend *)self _fetchTensorPropertiesForName:v8];

      if (!v9)
      {
        break;
      }

      [dictionary setObject:v9 forKey:v8];

      ++v5;
      v7 = v9;
      if (v5 == v6)
      {
        goto LABEL_9;
      }
    }

    v10 = 0;
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  return v10;
}

- (id)_fetchTensorPropertiesForName:(id)name
{
  v42 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  uTF8String = [nameCopy UTF8String];
  [(NSString *)self->_funcName UTF8String];
  if (BNNSGraphContextGetTensorDescriptor_v2())
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:uTF8String];
      *buf = 136315394;
      *&buf[4] = "[CSFMil2bnnsComputeBackend _fetchTensorPropertiesForName:]";
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, "%s Failed to get desc for tensor %@", buf, 0x16u);
    }

LABEL_19:
    v11 = 0;
    goto LABEL_20;
  }

  if (*(&v24 + 1) != 1)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:uTF8String];
      *buf = 136315394;
      *&buf[4] = "[CSFMil2bnnsComputeBackend _fetchTensorPropertiesForName:]";
      *&buf[12] = 2112;
      *&buf[14] = v12;
      _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, "%s Stride not supported for tensor %@", buf, 0x16u);
    }

    goto LABEL_19;
  }

  v39 = v28;
  v40 = v29;
  v41 = v30;
  v35 = v24;
  v36 = v25;
  v37 = v26;
  v38 = v27;
  *buf = v20;
  *&buf[16] = v21;
  v33 = v22;
  v34 = v23;
  [(CSFMil2bnnsComputeBackend *)self _getShapeFromTensorDesc:buf];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v19 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v16 objects:v31 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (![*(*(&v16 + 1) + 8 * i) unsignedLongLongValue])
        {
          v13 = CSLogContextFacilityCoreSpeech;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:uTF8String];
            *buf = 136315394;
            *&buf[4] = "[CSFMil2bnnsComputeBackend _fetchTensorPropertiesForName:]";
            *&buf[12] = 2112;
            *&buf[14] = v15;
            _os_log_error_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_ERROR, "%s Shape not set for tensor %@", buf, 0x16u);
          }

          goto LABEL_19;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v31 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v39 = v28;
  v40 = v29;
  v41 = v30;
  v35 = v24;
  v36 = v25;
  v37 = v26;
  v38 = v27;
  *buf = v20;
  *&buf[16] = v21;
  v33 = v22;
  v34 = v23;
  v11 = [CSFTensorProperties propertyWithShape:v6 dataType:[(CSFMil2bnnsComputeBackend *)self _getDataTypeFromTensorDesc:buf]];
LABEL_20:

  return v11;
}

- (unint64_t)_getDataTypeFromTensorDesc:(id *)desc
{
  var5 = desc->var5;
  if (var5 == 65568)
  {
    return 1;
  }

  else
  {
    return 2 * (var5 != 131104);
  }
}

- (id)_getShapeFromTensorDesc:(id *)desc
{
  Rank = BNNSDataLayoutGetRank();
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (Rank)
  {
    var2 = desc->var2;
    do
    {
      v7 = *var2++;
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v7];
      [v5 addObject:v8];

      --Rank;
    }

    while (Rank);
  }

  return v5;
}

- (void)_pointBnnsIrToWeights:(id)weights errOut:(id *)out
{
  v11[1] = *MEMORY[0x1E69E9840];
  weightsCopy = weights;
  [weightsCopy getWeightData];
  [weightsCopy weightSize];
  v6 = BNNSGraphContextSetWeights();
  if (out && v6)
  {
    v7 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot set weight for graph context"];
    v11[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *out = [v7 errorWithDomain:@"com.apple.corespeech" code:2454 userInfo:v9];
  }
}

- (void)_graphInitWithError:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  self->_graphIsMapped = 0;
  self->_graphContext = 0u;
  self->_graph = 0u;
  v14 = 0;
  [(CSFMil2bnnsComputeBackend *)self _loadGraph:&v14];
  v5 = v14;
  if (v5)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      bnnsIrPath = self->_bnnsIrPath;
      *buf = 136315650;
      v18 = "[CSFMil2bnnsComputeBackend _graphInitWithError:]";
      v19 = 2112;
      v20 = bnnsIrPath;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Error loading mil2bnns graph for bnnsir file: %@ with error: %@", buf, 0x20u);
    }

    if (error)
    {
      v8 = v5;
      *error = v5;
    }
  }

  else
  {
    _populateModelInterfaceParameters = [(CSFMil2bnnsComputeBackend *)self _populateModelInterfaceParameters];
    if (error)
    {
      v10 = _populateModelInterfaceParameters;
    }

    else
    {
      v10 = 1;
    }

    if ((v10 & 1) == 0)
    {
      v11 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A578];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to read tensor descriptors"];
      v16 = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      *error = [v11 errorWithDomain:@"com.apple.corespeech" code:2457 userInfo:v13];
    }
  }
}

- (id)predictOutputWithInputs:(id)inputs errOut:(id *)out
{
  v31[1] = *MEMORY[0x1E69E9840];
  inputsCopy = inputs;
  v7 = [inputsCopy count];
  if (v7 == [(NSDictionary *)self->_bnnsIrInputTensorsProperty count])
  {
    v21 = 0;
    v8 = [(CSFMil2bnnsComputeBackend *)self _runWithMil2bnnsDataInputBuff:inputsCopy error:&v21];
    v9 = v21;
    if (v9)
    {
      v10 = v9;
      if (out)
      {
        v11 = v9;
        *out = v10;
        v12 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          bnnsIrPath = self->_bnnsIrPath;
          *buf = 136315650;
          v25 = "[CSFMil2bnnsComputeBackend predictOutputWithInputs:errOut:]";
          v26 = 2112;
          v27 = bnnsIrPath;
          v28 = 2112;
          v29 = v10;
          _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s bnnsIr %@ model execution with error: %@", buf, 0x20u);
        }
      }

LABEL_14:
      v15 = 0;
      goto LABEL_15;
    }

    v16 = [v8 count];
    if (v16 != [(NSDictionary *)self->_bnnsIrOutputTensorsProperty count])
    {
      if (out)
      {
        v17 = MEMORY[0x1E696ABC0];
        v22 = *MEMORY[0x1E696A578];
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"config output count does not match with given inputs count"];
        v23 = v18;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        *out = [v17 errorWithDomain:@"com.apple.corespeech" code:2411 userInfo:v19];
      }

      v10 = 0;
      goto LABEL_14;
    }

    v8 = v8;
    v10 = 0;
    v15 = v8;
  }

  else
  {
    if (!out)
    {
      v15 = 0;
      goto LABEL_16;
    }

    v14 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"config input count does not match with given inputs count"];
    v31[0] = v10;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    [v14 errorWithDomain:@"com.apple.corespeech" code:2410 userInfo:v8];
    *out = v15 = 0;
  }

LABEL_15:

LABEL_16:

  return v15;
}

- (CSFMil2bnnsComputeBackend)initWithBnnsIrFile:(id)file weightPath:(id)path errOut:(id *)out
{
  v35 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  pathCopy = path;
  v28.receiver = self;
  v28.super_class = CSFMil2bnnsComputeBackend;
  v11 = [(CSFMil2bnnsComputeBackend *)&v28 init];
  v12 = v11;
  if (v11)
  {
    milPath = v11->_milPath;
    v11->_milPath = 0;

    objc_storeStrong(&v12->_bnnsIrPath, file);
    funcName = v12->_funcName;
    v12->_funcName = @"main";

    if (pathCopy)
    {
      v27 = 0;
      v15 = [[bnnsIrMappedWeight alloc] initWithWeightFile:pathCopy errOut:&v27];
      v16 = v27;
      weight = v12->_weight;
      v12->_weight = v15;

      if (!v12->_weight || v16)
      {
        v23 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v30 = "[CSFMil2bnnsComputeBackend initWithBnnsIrFile:weightPath:errOut:]";
          v31 = 2112;
          v32 = pathCopy;
          v33 = 2112;
          v34 = v16;
          _os_log_impl(&dword_1DDA4B000, v23, OS_LOG_TYPE_DEFAULT, "%s weight init with: %@ failed with error: %@", buf, 0x20u);
        }

        if (out)
        {
          v24 = v16;
          *out = v16;
        }

        goto LABEL_17;
      }
    }

    v26 = 0;
    [(CSFMil2bnnsComputeBackend *)v12 _graphInitWithError:&v26];
    v18 = v26;
    if (v18)
    {
      v19 = v18;
      if (out)
      {
        v20 = v18;
        *out = v19;
      }

      v21 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v30 = "[CSFMil2bnnsComputeBackend initWithBnnsIrFile:weightPath:errOut:]";
        v31 = 2112;
        v32 = fileCopy;
        v33 = 2112;
        v34 = v19;
        _os_log_impl(&dword_1DDA4B000, v21, OS_LOG_TYPE_DEFAULT, "%s model init with bnnsIrFile: %@ failed with error: %@", buf, 0x20u);
      }

LABEL_17:
      v22 = 0;
      goto LABEL_18;
    }
  }

  v22 = v12;
LABEL_18:

  return v22;
}

- (CSFMil2bnnsComputeBackend)initWithModelFile:(id)file bnnsIrPath:(id)path errOut:(id *)out
{
  v35 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  pathCopy = path;
  v28.receiver = self;
  v28.super_class = CSFMil2bnnsComputeBackend;
  v11 = [(CSFMil2bnnsComputeBackend *)&v28 init];
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = [fileCopy stringByAppendingPathExtension:@"config.json"];
  objc_storeStrong(&v11->_milPath, file);
  objc_storeStrong(&v11->_bnnsIrPath, path);
  v27 = 0;
  v13 = [[CSFMil2bnnsCompilationConfig alloc] initWithConfigPath:v12 errOut:&v27];
  v14 = v27;
  modelCompilationConfig = v11->_modelCompilationConfig;
  v11->_modelCompilationConfig = v13;

  v16 = v11->_modelCompilationConfig;
  if (!v16)
  {
    if (out)
    {
      v23 = v14;
      *out = v14;
    }

    goto LABEL_12;
  }

  funcName = [(CSFMil2bnnsCompilationConfig *)v16 funcName];
  funcName = v11->_funcName;
  v11->_funcName = funcName;

  v26 = 0;
  [(CSFMil2bnnsComputeBackend *)v11 _graphInitWithError:&v26];
  v19 = v26;
  if (!v19)
  {

LABEL_14:
    v24 = v11;
    goto LABEL_15;
  }

  v20 = v19;
  if (out)
  {
    v21 = v19;
    *out = v20;
  }

  v22 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v30 = "[CSFMil2bnnsComputeBackend initWithModelFile:bnnsIrPath:errOut:]";
    v31 = 2112;
    v32 = pathCopy;
    v33 = 2112;
    v34 = v20;
    _os_log_impl(&dword_1DDA4B000, v22, OS_LOG_TYPE_DEFAULT, "%s model init with bnnsIrFile: %@ failed with error: %@", buf, 0x20u);
  }

LABEL_12:
  v24 = 0;
LABEL_15:

  return v24;
}

+ ($3265B292A9BE2BE95187D95CCBA22C14)_compileWithMilFile:(id)file bnnsIrPath:(id)path separateWeight:(id)weight compilationConfig:(id)config isBnnsIrMapped:(BOOL *)mapped errOut:(id *)out
{
  v44[1] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  pathCopy = path;
  weightCopy = weight;
  configCopy = config;
  if (mapped)
  {
    *mapped = 0;
  }

  BNNSGraphCompileOptionsMakeDefault();
  [configCopy singleThread];
  BNNSGraphCompileOptionsSetTargetSingleThread();
  [configCopy debugInfo];
  BNNSGraphCompileOptionsSetGenerateDebugInfo();
  [configCopy predefinedOptimizations];
  BNNSGraphCompileOptionsSetPredefinedOptimizations();
  if ([configCopy optimizeForSize])
  {
    BNNSGraphCompileOptionsSetOptimizationPreference();
  }

  if (pathCopy)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
    if (([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent] & 1) == 0)
    {
      v40 = 0;
      [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v40];
      v16 = v40;
      if (v16)
      {
        v17 = v16;
        if (out)
        {
          v18 = v16;
          v19 = 0;
          v20 = 0;
          *out = v17;
LABEL_28:

          goto LABEL_29;
        }

LABEL_27:
        v19 = 0;
        v20 = 0;
        goto LABEL_28;
      }
    }

    BNNSGraphCompileOptionsSetFileWriteFSyncBarrier();
    v21 = pathCopy;
    [pathCopy UTF8String];
    BNNSGraphCompileOptionsSetOutputPathWithPermissionsAndProtectionClass();
    if (weightCopy)
    {
      stringByDeletingLastPathComponent2 = [weightCopy stringByDeletingLastPathComponent];
      if (([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent2] & 1) == 0)
      {
        v39 = 0;
        [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent2 withIntermediateDirectories:1 attributes:0 error:&v39];
        v23 = v39;
        if (v23)
        {
          v17 = v23;
          if (out)
          {
            v24 = v23;
            *out = v17;
          }

          goto LABEL_27;
        }
      }

      v26 = weightCopy;
      [weightCopy UTF8String];
      BNNSGraphCompileOptionsSetWeightsPathWithPermissions();
    }

    v27 = fileCopy;
    [fileCopy UTF8String];
    funcName = [configCopy funcName];
    v29 = funcName;
    [funcName UTF8String];
    v19 = BNNSGraphCompileFromFile_v2();
    v20 = v30;

    BNNSGraphCompileOptionsDestroy();
    if (v19)
    {
      if (mapped)
      {
        *mapped = 1;
      }

      [CSFMil2bnnsComputeBackend markPurgeableWithBnnsIrFile:pathCopy, out];
      v17 = 0;
      goto LABEL_28;
    }

    if (out)
    {
      v31 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696A578];
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"graph data nil"];
      v42 = v32;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      *out = [v31 errorWithDomain:@"com.apple.corespeech" code:2260 userInfo:v33];
    }

    v17 = 0;
    goto LABEL_27;
  }

  if (out)
  {
    v25 = MEMORY[0x1E696ABC0];
    v43 = *MEMORY[0x1E696A578];
    defaultManager = [MEMORY[0x1E696AEC0] stringWithFormat:@"bnnsIrPath nil"];
    v44[0] = defaultManager;
    stringByDeletingLastPathComponent = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    [v25 errorWithDomain:@"com.apple.corespeech" code:2258 userInfo:stringByDeletingLastPathComponent];
    v19 = 0;
    *out = v20 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v19 = 0;
  v20 = 0;
LABEL_30:

  v34 = v19;
  v35 = v20;
  result.var1 = v35;
  result.var0 = v34;
  return result;
}

+ (void)markPurgeableWithBnnsIrFile:(id)file
{
  v18 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  if (fileCopy)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [defaultManager fileExistsAtPath:fileCopy];

    if (v5)
    {
      v11 = 67589;
      v6 = fsctl([fileCopy UTF8String], 0xC0084A44uLL, &v11, 0);
      v7 = CSLogContextFacilityCoreSpeech;
      if (v6)
      {
        v8 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = __error();
          v10 = strerror(*v9);
          *buf = 136315650;
          v13 = "+[CSFMil2bnnsComputeBackend markPurgeableWithBnnsIrFile:]";
          v14 = 2112;
          v15 = fileCopy;
          v16 = 2080;
          v17 = v10;
          _os_log_error_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_ERROR, "%s Fail to mark bnnsIrFile: %@ as purgeable: error: %s", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "+[CSFMil2bnnsComputeBackend markPurgeableWithBnnsIrFile:]";
        v14 = 2112;
        v15 = fileCopy;
        _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Mark bnnsIrFile: %@ as purgeable is successful!", buf, 0x16u);
      }
    }
  }
}

+ (id)compileWithMilFile:(id)file bnnsIrPath:(id)path separateWeight:(id)weight
{
  fileCopy = file;
  pathCopy = path;
  weightCopy = weight;
  v10 = [fileCopy stringByAppendingPathExtension:@"config.json"];
  v22 = 0;
  v11 = [[CSFMil2bnnsCompilationConfig alloc] initWithConfigPath:v10 errOut:&v22];
  v12 = v22;
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v14 = [CSFMil2bnnsComputeBackend _compileWithMilFile:fileCopy bnnsIrPath:pathCopy separateWeight:weightCopy compilationConfig:v11 isBnnsIrMapped:&v21 errOut:&v20];
    v16 = v15;
    v17 = v20;
    if (v21 == 1)
    {
      if (v14 != -1)
      {
        munmap(v14, v16);
      }
    }

    else if (v14)
    {
      free(v14);
    }

    v13 = v17;
  }

  v18 = v13;

  return v18;
}

@end