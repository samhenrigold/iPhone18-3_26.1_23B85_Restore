@interface _ANEInMemoryModel
+ (id)inMemoryModelWithDescriptor:(id)descriptor;
+ (void)initialize;
- (BOOL)compileWithQoS:(unsigned int)s options:(id)options error:(id *)error;
- (BOOL)compiledModelExists;
- (BOOL)evaluateWithQoS:(unsigned int)s options:(id)options request:(id)request error:(id *)error;
- (BOOL)loadWithQoS:(unsigned int)s options:(id)options error:(id *)error;
- (BOOL)mapIOSurfacesWithRequest:(id)request cacheInference:(BOOL)inference error:(id *)error;
- (BOOL)unloadWithQoS:(unsigned int)s error:(id *)error;
- (_ANEInMemoryModel)initWithDesctiptor:(id)desctiptor;
- (id)compilerOptionsWithOptions:(id)options isCompiledModelCached:(BOOL)cached;
- (id)localModelPath;
- (id)saveModelFiles;
- (void)dealloc;
- (void)purgeCompiledModel;
- (void)saveModelFiles;
- (void)unmapIOSurfacesWithRequest:(id)request;
@end

@implementation _ANEInMemoryModel

+ (void)initialize
{
  gLogger = +[_ANELog framework];

  MEMORY[0x1EEE66BB8]();
}

- (_ANEInMemoryModel)initWithDesctiptor:(id)desctiptor
{
  desctiptorCopy = desctiptor;
  v22.receiver = self;
  v22.super_class = _ANEInMemoryModel;
  v7 = [(_ANEInMemoryModel *)&v22 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_descriptor, desctiptor);
    hexStringIdentifier = [desctiptorCopy hexStringIdentifier];
    hexStringIdentifier = v8->_hexStringIdentifier;
    v8->_hexStringIdentifier = hexStringIdentifier;

    v8->_isMILModel = [desctiptorCopy isMILModel];
    modelAttributes = v8->_modelAttributes;
    v8->_modelAttributes = MEMORY[0x1E695E0F8];

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(desctiptorCopy, "hash")];
    [v12 UTF8String];
    v13 = kdebug_trace_string();
    v8->_string_id = v13;
    if (v13 == -1)
    {
      v14 = +[_ANELog common];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [_ANEInMemoryModel initWithDesctiptor:a2];
      }
    }

    program = v8->_program;
    v8->_programHandle = 0;
    v8->_program = 0;
    v8->_queueDepth = 0;

    v8->_perfStatsMask = 0;
    v8->_state = 0;
    optionsPlist = [desctiptorCopy optionsPlist];
    v17 = optionsPlist;
    if (optionsPlist)
    {
      optionsPlist = +[_ANEStrings defaultANECIROptionsFileName];
    }

    compilerOptionsFileName = v8->_compilerOptionsFileName;
    v8->_compilerOptionsFileName = optionsPlist;

    v19 = +[_ANEClient sharedConnection];
    sharedConnection = v8->_sharedConnection;
    v8->_sharedConnection = v19;
  }

  return v8;
}

- (void)dealloc
{
  self->_state = 5;
  v4 = kdebug_trace_string();
  self->_string_id = v4;
  if (v4 == -1)
  {
    v5 = +[_ANELog common];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [_ANEInMemoryModel initWithDesctiptor:a2];
    }
  }

  v6.receiver = self;
  v6.super_class = _ANEInMemoryModel;
  [(_ANEInMemoryModel *)&v6 dealloc];
}

- (id)localModelPath
{
  v3 = NSTemporaryDirectory();
  hexStringIdentifier = [(_ANEInMemoryModel *)self hexStringIdentifier];
  v5 = [v3 stringByAppendingPathComponent:hexStringIdentifier];

  return v5;
}

- (id)saveModelFiles
{
  v55 = *MEMORY[0x1E69E9840];
  modelURL = [(_ANEInMemoryModel *)self modelURL];

  if (modelURL)
  {
    modelURL2 = [(_ANEInMemoryModel *)self modelURL];
    goto LABEL_33;
  }

  localModelPath = [(_ANEInMemoryModel *)self localModelPath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v47 = 0;
  v8 = [defaultManager createDirectoryAtPath:localModelPath withIntermediateDirectories:1 attributes:0 error:&v47];
  v9 = v47;
  if ((v8 & 1) == 0)
  {
    v11 = +[_ANELog common];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(a2);
      *buf = 138412802;
      v50 = v39;
      v51 = 2112;
      v52 = localModelPath;
      v53 = 2112;
      v54 = v9;
      _os_log_error_impl(&dword_1AD246000, v11, OS_LOG_TYPE_ERROR, "%@: createDirectoryAtPath:... failed tmp=%@ : lErr=%@", buf, 0x20u);
    }

    modelURL2 = 0;
    goto LABEL_32;
  }

  v10 = +[_ANEStrings defaultANECIRFileName];
  v11 = [localModelPath stringByAppendingPathComponent:v10];

  descriptor = [(_ANEInMemoryModel *)self descriptor];
  networkText = [descriptor networkText];
  v14 = [networkText writeToFile:v11 atomically:1];

  if (v14)
  {
    compilerOptionsFileName = [(_ANEInMemoryModel *)self compilerOptionsFileName];

    if (!compilerOptionsFileName)
    {
LABEL_8:
      v40 = v11;
      v41 = v9;
      v42 = defaultManager;
      descriptor2 = [(_ANEInMemoryModel *)self descriptor];
      weights = [descriptor2 weights];
      allKeys = [weights allKeys];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v17 = allKeys;
      v24 = [v17 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v44;
        while (2)
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v44 != v26)
            {
              objc_enumerationMutation(v17);
            }

            v28 = *(*(&v43 + 1) + 8 * i);
            descriptor3 = [(_ANEInMemoryModel *)self descriptor];
            weights2 = [descriptor3 weights];
            v31 = [weights2 objectForKeyedSubscript:v28];

            allKeys2 = [v31 allKeys];
            firstObject = [allKeys2 firstObject];

            v34 = [v31 objectForKeyedSubscript:firstObject];
            v35 = [localModelPath stringByAppendingPathComponent:firstObject];
            if (([v34 writeToFile:v35 atomically:1] & 1) == 0)
            {
              v36 = +[_ANELog common];
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                [_ANEInMemoryModel saveModelFiles];
              }

              modelURL2 = 0;
              goto LABEL_26;
            }
          }

          v25 = [v17 countByEnumeratingWithState:&v43 objects:v48 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      modelURL2 = [MEMORY[0x1E695DFF8] fileURLWithPath:localModelPath isDirectory:1];
      if (modelURL2)
      {
        [(_ANEInMemoryModel *)self setModelURL:modelURL2];
        [(_ANEInMemoryModel *)self setDescriptor:0];
      }

LABEL_26:
      v9 = v41;
      defaultManager = v42;
      v11 = v40;
      goto LABEL_31;
    }

    compilerOptionsFileName2 = [(_ANEInMemoryModel *)self compilerOptionsFileName];
    v17 = [localModelPath stringByAppendingPathComponent:compilerOptionsFileName2];

    descriptor4 = [(_ANEInMemoryModel *)self descriptor];
    optionsPlist = [descriptor4 optionsPlist];
    v20 = [optionsPlist writeToFile:v17 atomically:1];

    if (v20)
    {

      goto LABEL_8;
    }

    v37 = +[_ANELog common];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [_ANEInMemoryModel saveModelFiles];
    }
  }

  else
  {
    v17 = +[_ANELog common];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_ANEInMemoryModel saveModelFiles];
    }
  }

  modelURL2 = 0;
LABEL_31:

LABEL_32:
LABEL_33:

  return modelURL2;
}

+ (id)inMemoryModelWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [[self alloc] initWithDesctiptor:descriptorCopy];

  return v5;
}

- (id)compilerOptionsWithOptions:(id)options isCompiledModelCached:(BOOL)cached
{
  cachedCopy = cached;
  v6 = [options mutableCopy];
  isMILModel = [(_ANEInMemoryModel *)self isMILModel];
  v8 = kANEFModelMILValue;
  if (!isMILModel)
  {
    v8 = kANEFModelANECIRValue;
  }

  v9 = *v8;
  [v6 setObject:v9 forKeyedSubscript:kANEFModelTypeKey[0]];
  hexStringIdentifier = [(_ANEInMemoryModel *)self hexStringIdentifier];
  [v6 setObject:hexStringIdentifier forKeyedSubscript:kANEFInMemoryModelIdentifierKey];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:cachedCopy];
  [v6 setObject:v11 forKeyedSubscript:kANEFInMemoryModelIsCachedKey];

  compilerOptionsFileName = [(_ANEInMemoryModel *)self compilerOptionsFileName];

  if (compilerOptionsFileName)
  {
    compilerOptionsFileName2 = [(_ANEInMemoryModel *)self compilerOptionsFileName];
    [v6 setObject:compilerOptionsFileName2 forKeyedSubscript:kANEFCompilerOptionsFilenameKey[0]];
  }

  v14 = [v6 copy];

  return v14;
}

- (BOOL)compileWithQoS:(unsigned int)s options:(id)options error:(id *)error
{
  v6 = *&s;
  optionsCopy = options;
  saveModelFiles = [(_ANEInMemoryModel *)self saveModelFiles];
  if (saveModelFiles)
  {
    v11 = [_ANEModel modelAtURL:saveModelFiles key:&stru_1F224D6A0];
    [(_ANEInMemoryModel *)self setModel:v11];
    v12 = [(_ANEInMemoryModel *)self compilerOptionsWithOptions:optionsCopy isCompiledModelCached:0];
    sharedConnection = [(_ANEInMemoryModel *)self sharedConnection];
    v19 = 0;
    v14 = [sharedConnection compileModel:v11 options:v12 qos:v6 error:&v19];
    v15 = v19;

    if ((v14 & 1) == 0)
    {
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
      {
        [_ANEInMemoryModel compileWithQoS:options:error:];
        if (error)
        {
LABEL_5:
          if (v15)
          {
            v16 = v15;
            *error = v15;
          }
        }
      }

      else if (error)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_11;
  }

  v17 = gLogger;
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
  {
    [_ANEInMemoryModel compileWithQoS:v17 options:a2 error:?];
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (BOOL)loadWithQoS:(unsigned int)s options:(id)options error:(id *)error
{
  v6 = *&s;
  optionsCopy = options;
  hexStringIdentifier = [(_ANEInMemoryModel *)self hexStringIdentifier];
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEInMemoryModel loadWithQoS:options:error:];
  }

  compiledModelExists = [(_ANEInMemoryModel *)self compiledModelExists];
  if (compiledModelExists)
  {
    v12 = MEMORY[0x1E695DFF8];
    hexStringIdentifier2 = [(_ANEInMemoryModel *)self hexStringIdentifier];
    saveModelFiles = [v12 fileURLWithPath:hexStringIdentifier2];

    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEInMemoryModel loadWithQoS:options:error:];
    }

LABEL_7:
    v15 = hexStringIdentifier;
    v16 = [_ANEModel modelAtURL:saveModelFiles key:&stru_1F224D6A0];
    [(_ANEInMemoryModel *)self setModel:v16];
    v26 = optionsCopy;
    v17 = [(_ANEInMemoryModel *)self compilerOptionsWithOptions:optionsCopy isCompiledModelCached:compiledModelExists];
    sharedConnection = [(_ANEInMemoryModel *)self sharedConnection];
    v27 = 0;
    v19 = [sharedConnection loadModel:v16 options:v17 qos:v6 error:&v27];
    v20 = v27;

    if (v19)
    {
      -[_ANEInMemoryModel setProgramHandle:](self, "setProgramHandle:", [v16 programHandle]);
      -[_ANEInMemoryModel setIntermediateBufferHandle:](self, "setIntermediateBufferHandle:", [v16 intermediateBufferHandle]);
      -[_ANEInMemoryModel setQueueDepth:](self, "setQueueDepth:", [v16 queueDepth]);
      modelAttributes = [v16 modelAttributes];
      [(_ANEInMemoryModel *)self setModelAttributes:modelAttributes];

      -[_ANEInMemoryModel setPerfStatsMask:](self, "setPerfStatsMask:", [v16 perfStatsMask]);
      program = [v16 program];
      [(_ANEInMemoryModel *)self setProgram:program];

      [(_ANEInMemoryModel *)self setState:3];
      hexStringIdentifier = v15;
LABEL_13:

      optionsCopy = v26;
      goto LABEL_14;
    }

    hexStringIdentifier = v15;
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEInMemoryModel loadWithQoS:options:error:];
      if (!error)
      {
        goto LABEL_13;
      }
    }

    else if (!error)
    {
      goto LABEL_13;
    }

    if (v20)
    {
      v23 = v20;
      *error = v20;
    }

    goto LABEL_13;
  }

  saveModelFiles = [(_ANEInMemoryModel *)self saveModelFiles];
  if (saveModelFiles)
  {
    goto LABEL_7;
  }

  v25 = gLogger;
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
  {
    [_ANEInMemoryModel compileWithQoS:v25 options:a2 error:?];
  }

  LOBYTE(v19) = 0;
LABEL_14:

  return v19;
}

- (BOOL)unloadWithQoS:(unsigned int)s error:(id *)error
{
  v5 = *&s;
  v37[2] = *MEMORY[0x1E69E9840];
  hexStringIdentifier = [(_ANEInMemoryModel *)self hexStringIdentifier];
  isMILModel = [(_ANEInMemoryModel *)self isMILModel];
  v10 = kANEFModelMILValue;
  if (!isMILModel)
  {
    v10 = kANEFModelANECIRValue;
  }

  v11 = *v10;
  v36[0] = kANEFModelTypeKey[0];
  v36[1] = kANEFInMemoryModelIdentifierKey;
  v37[0] = v11;
  v37[1] = hexStringIdentifier;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
  sharedConnection = [(_ANEInMemoryModel *)self sharedConnection];
  model = [(_ANEInMemoryModel *)self model];
  v29 = 0;
  v15 = [sharedConnection unloadModel:model options:v12 qos:v5 error:&v29];
  v16 = v29;

  if ((v15 & 1) == 0 && os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
  {
    [_ANEInMemoryModel unloadWithQoS:error:];
  }

  localModelPath = [(_ANEInMemoryModel *)self localModelPath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v28 = 0;
  if ([defaultManager fileExistsAtPath:localModelPath isDirectory:&v28])
  {
    aSelector = a2;
    v27 = v16;
    v19 = [defaultManager removeItemAtPath:localModelPath error:&v27];
    v20 = v27;

    if ((v19 & 1) == 0)
    {
      v21 = gLogger;
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
      {
        v22 = v21;
        v23 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        v31 = v23;
        v32 = 2112;
        v33 = localModelPath;
        v34 = 2112;
        v35 = v20;
        _os_log_error_impl(&dword_1AD246000, v22, OS_LOG_TYPE_ERROR, "%@: removeItemAtPath: failed! localPath=%@ : lErr=%@", buf, 0x20u);
      }
    }
  }

  else
  {
    v20 = v16;
  }

  if (error && v15 != 1 && v20)
  {
    v24 = v20;
    *error = v20;
  }

  return v15;
}

- (BOOL)evaluateWithQoS:(unsigned int)s options:(id)options request:(id)request error:(id *)error
{
  v8 = *&s;
  optionsCopy = options;
  requestCopy = request;
  v13 = +[_ANEVirtualClient sharedConnection];

  if (v13)
  {
    v14 = +[_ANEVirtualClient sharedConnection];
    model = [(_ANEInMemoryModel *)self model];
    LOBYTE(v8) = [v14 evaluateWithModel:model options:optionsCopy request:requestCopy qos:v8 error:error];

    goto LABEL_13;
  }

  if (+[_ANEDeviceInfo isVirtualMachine])
  {
    v16 = gLogger;
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEInMemoryModel evaluateWithQoS:v16 options:a2 request:? error:?];
      if (!error)
      {
        goto LABEL_7;
      }
    }

    else if (!error)
    {
LABEL_7:
      LOBYTE(v8) = 0;
      goto LABEL_13;
    }

    v17 = NSStringFromSelector(a2);
    *error = [_ANEErrors hostTooOld:v17];

    goto LABEL_7;
  }

  v18 = [_ANEQoSMapper queueIndexForQoS:v8];
  v26 = 0;
  program = [(_ANEInMemoryModel *)self program];
  v25 = 0;
  LODWORD(v8) = [program processRequest:requestCopy model:0 qos:v8 qIndex:v18 modelStringID:-[_ANEInMemoryModel string_id](self options:"string_id") returnValue:optionsCopy error:{&v26, &v25}];
  v20 = v25;

  if (error && !v8 && v20)
  {
    v21 = v20;
    *error = v20;
    sharedConnection = [(_ANEInMemoryModel *)self sharedConnection];
    model2 = [(_ANEInMemoryModel *)self model];
    [sharedConnection reportEvaluateFailure:model2 failureReason:v26 qIdx:v18];
  }

LABEL_13:
  return v8;
}

- (BOOL)compiledModelExists
{
  hexStringIdentifier = [(_ANEInMemoryModel *)self hexStringIdentifier];
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEInMemoryModel loadWithQoS:options:error:];
  }

  sharedConnection = [(_ANEInMemoryModel *)self sharedConnection];
  v5 = [sharedConnection compiledModelExistsMatchingHash:hexStringIdentifier];

  return v5;
}

- (void)purgeCompiledModel
{
  hexStringIdentifier = [(_ANEInMemoryModel *)self hexStringIdentifier];
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEInMemoryModel loadWithQoS:options:error:];
  }

  sharedConnection = [(_ANEInMemoryModel *)self sharedConnection];
  [sharedConnection purgeCompiledModelMatchingHash:hexStringIdentifier];
}

- (BOOL)mapIOSurfacesWithRequest:(id)request cacheInference:(BOOL)inference error:(id *)error
{
  inferenceCopy = inference;
  requestCopy = request;
  sharedConnection = [(_ANEInMemoryModel *)self sharedConnection];
  model = [(_ANEInMemoryModel *)self model];
  LOBYTE(error) = [sharedConnection mapIOSurfacesWithModel:model request:requestCopy cacheInference:inferenceCopy error:error];

  return error;
}

- (void)unmapIOSurfacesWithRequest:(id)request
{
  requestCopy = request;
  sharedConnection = [(_ANEInMemoryModel *)self sharedConnection];
  model = [(_ANEInMemoryModel *)self model];
  [sharedConnection unmapIOSurfacesWithModel:model request:requestCopy];
}

- (void)initWithDesctiptor:(const char *)a1 .cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  __error();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_9(&dword_1AD246000, v2, v3, "%@: kdebug_trace_string() failed errno=%d", v4, v5, v6, v7);
}

- (void)saveModelFiles
{
  OUTLINED_FUNCTION_2();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5_1(&dword_1AD246000, v2, v3, "%@:  Write weightsFilePath=%@ failed", v4, v5, v6, v7);
}

- (void)compileWithQoS:options:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_4_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_7(&dword_1AD246000, v5, v6, "%@: compileModel:options:qos:error: failed! lErr=%@", v7, v8, v9, v10);
}

- (void)compileWithQoS:(void *)a1 options:(const char *)a2 error:.cold.2(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  LODWORD(v11) = 138412290;
  *(&v11 + 4) = v4;
  OUTLINED_FUNCTION_6_0(&dword_1AD246000, v5, v6, "%@: saveModelFiles failed", v7, v8, v9, v10, v11, DWORD2(v11));
}

- (void)loadWithQoS:options:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_4_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_3_1(&dword_1AD246000, v5, v6, "%@: modelIdentifier=%@", v7, v8, v9, v10);
}

- (void)loadWithQoS:options:error:.cold.3()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_4_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_3_1(&dword_1AD246000, v5, v6, "%@: modelURL=%@", v7, v8, v9, v10);
}

- (void)loadWithQoS:options:error:.cold.4()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_4_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_7(&dword_1AD246000, v5, v6, "%@: loadModel:options:qos:error: failed! lErr=%@", v7, v8, v9, v10);
}

- (void)unloadWithQoS:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_4_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_7(&dword_1AD246000, v5, v6, "%@: unLoadModel:options:qos:error: failed! lErr=%@", v7, v8, v9, v10);
}

- (void)evaluateWithQoS:(void *)a1 options:(const char *)a2 request:error:.cold.1(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  LODWORD(v11) = 138412290;
  *(&v11 + 4) = v4;
  OUTLINED_FUNCTION_6_0(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10, v11, DWORD2(v11));
}

@end