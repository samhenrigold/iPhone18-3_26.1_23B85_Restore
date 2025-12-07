@interface SCMLImageAnalyzer
+ (id)_decodeName:(id)name;
+ (id)_encodeName:(id)name;
+ (id)_readOperatingThresholdsDataUsingModelURL:(id)l error:(id *)error;
+ (id)getOperatingPointDataForClassName:(id)name modelURL:(id)l error:(id *)error;
- (BOOL)isSensitive:(id)sensitive sensitivityScore:(id *)score classificationMode:(unint64_t)mode;
- (BOOL)loadNetworkForURL:(id)l espressoEngine:(int)engine storageType:(int)type deviceId:(int)id;
- (BOOL)shouldProcessDetections;
- (NetworkOutputs)_computeOutputForPixelBuffer:(SEL)buffer error:(__CVBuffer *)error;
- (SCMLImageAnalyzer)initWithModelURL:(id)l options:(id)options error:(id *)error;
- (id)_processNetworkOutput:(NetworkOutputs *)output;
- (id)analyzeImage:(CGImage *)image error:(id *)error;
- (id)analyzePixelBuffer:(__CVBuffer *)buffer error:(id *)error;
- (id)classifyImage:(CGImage *)image error:(id *)error;
- (id)classifyPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
- (id)generateClassificationScoresForImage:(CGImage *)image error:(id *)error;
- (id)generateClassificationScoresForPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
- (id)scaleMethod;
- (vector<SCML::BoxInfo,)_processDetectionOutput:(SCMLImageAnalyzer *)self;
- (void)_extractThresholdForOTGXMain:(id)main;
- (void)dealloc;
@end

@implementation SCMLImageAnalyzer

- (SCMLImageAnalyzer)initWithModelURL:(id)l options:(id)options error:(id *)error
{
  lCopy = l;
  optionsCopy = options;
  v66.receiver = self;
  v66.super_class = SCMLImageAnalyzer;
  v11 = [(SCMLModelBase *)&v66 initWithOptions:optionsCopy];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_80;
  }

  objc_storeStrong(&v11->_modelUrl, l);
  v13 = [optionsCopy objectForKeyedSubscript:SCMLEnableAllClasses[0]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v15 = [optionsCopy objectForKeyedSubscript:SCMLEnableAllClasses[0]];
  }

  else
  {
    v15 = 0;
  }

  v12->_otgxRetrieveAllClasses = [v15 BOOLValue];
  if (isKindOfClass)
  {
  }

  v16 = [optionsCopy objectForKeyedSubscript:SCMLUseMTLDevice[0]];
  v17 = +[SCMLHandler supportsANE];
  v60 = v16;
  if (v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"self ENDSWITH '%@_quantized.espresso.net'", @"1.8.0"];
  v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"self ENDSWITH '%@_quantized_sqdev.espresso.net'", @"1.8.0"];
  v19 = v60;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [lCopy path];
  v61 = [defaultManager contentsOfDirectoryAtPath:path error:0];

  v21 = [MEMORY[0x1E696AE18] predicateWithFormat:v58];
  v62 = v21;
  if (v18)
  {
    v62 = [MEMORY[0x1E696AE18] predicateWithFormat:v59];
  }

  v63 = [v61 filteredArrayUsingPredicate:v21];
  v64 = [v61 filteredArrayUsingPredicate:v62];
  if ([v63 count])
  {
    firstObject = [v63 firstObject];
    v23 = [lCopy URLByAppendingPathComponent:firstObject];
  }

  else
  {
    v24 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [SCMLImageAnalyzer initWithModelURL:v24 options:? error:?];
    }

    if (![v64 count])
    {
      if (error)
      {
        *error = [MEMORY[0x1E696ABC0] errorWithDomain:SCMLErrorDomain code:1 userInfo:0];
      }

      goto LABEL_81;
    }

    v23 = 0;
  }

  if ([v64 count])
  {
    firstObject2 = [v64 firstObject];
    v56 = [lCopy URLByAppendingPathComponent:firstObject2];
  }

  else
  {
    v56 = v23;
    firstObject2 = +[SCMLLog imageAnalyzer];
    if (os_log_type_enabled(firstObject2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8A3C000, firstObject2, OS_LOG_TYPE_DEFAULT, "ANE-specific ivs model files not found. Falling back to the default model.", buf, 2u);
    }
  }

  v26 = [SCMLImageAnalyzer _readOperatingThresholdsDataUsingModelURL:lCopy error:error];
  v55 = v26;
  if (error && *error)
  {
    goto LABEL_24;
  }

  [(SCMLImageAnalyzer *)v12 _extractThresholdForOTGXMain:v26];
  v28 = [optionsCopy objectForKeyedSubscript:SCMLUseAnyAvailableDevice[0]];
  objc_opt_class();
  v29 = objc_opt_isKindOfClass();
  if (v29)
  {
    v30 = [optionsCopy objectForKeyedSubscript:SCMLUseAnyAvailableDevice[0]];
  }

  else
  {
    v30 = 0;
  }

  bOOLValue = [v30 BOOLValue];
  if (v29)
  {
  }

  if (bOOLValue && +[SCMLHandler supportsANE])
  {
    v19 = v60;
    if (!v60)
    {
      v32 = 1;
      bOOLValue4 = 1;
      goto LABEL_61;
    }

LABEL_41:
    v37 = [(SCMLImageAnalyzer *)v12 loadNetworkForURL:v23 espressoEngine:5 storageType:65552 deviceId:espresso_device_id_for_metal_device()];
    v27 = v37;
    if (error)
    {
      v38 = v37;
    }

    else
    {
      v38 = 1;
    }

    if ((v38 & 1) == 0)
    {
      v39 = [MEMORY[0x1E696ABC0] errorWithDomain:SCMLErrorDomain code:5 userInfo:0];
LABEL_78:
      v27 = 0;
      *error = v39;
      goto LABEL_79;
    }

    goto LABEL_79;
  }

  v34 = [optionsCopy objectForKeyedSubscript:SCMLUseANE[0]];
  objc_opt_class();
  v35 = objc_opt_isKindOfClass();
  if (v35)
  {
    v36 = [optionsCopy objectForKeyedSubscript:SCMLUseANE[0]];
  }

  else
  {
    v36 = 0;
  }

  bOOLValue2 = [v36 BOOLValue];
  if (v35)
  {
  }

  if (bOOLValue)
  {
    v32 = 1;
    bOOLValue4 = 1;
    v19 = v60;
    if (v60)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v40 = [optionsCopy objectForKeyedSubscript:SCMLUseGPU[0]];
    objc_opt_class();
    v41 = objc_opt_isKindOfClass();
    if (v41)
    {
      v42 = [optionsCopy objectForKeyedSubscript:SCMLUseGPU[0]];
    }

    else
    {
      v42 = 0;
    }

    bOOLValue3 = [v42 BOOLValue];
    if (v41)
    {
    }

    v53 = bOOLValue3;

    v44 = [optionsCopy objectForKeyedSubscript:SCMLUseCPU[0]];
    objc_opt_class();
    v45 = objc_opt_isKindOfClass();
    if (v45)
    {
      v46 = [optionsCopy objectForKeyedSubscript:SCMLUseCPU[0]];
    }

    else
    {
      v46 = 0;
    }

    bOOLValue4 = [v46 BOOLValue];
    if (v45)
    {
    }

    v19 = v60;
    v32 = v53;
    if (v60)
    {
      goto LABEL_41;
    }
  }

  if (bOOLValue2)
  {
LABEL_61:
    v47 = [(SCMLImageAnalyzer *)v12 loadNetworkForURL:v56 espressoEngine:10007 storageType:65552 deviceId:0xFFFFFFFFLL];
    if (((v47 | v32 | bOOLValue4) & 1) == 0)
    {
      if (error)
      {
        v48 = 2;
LABEL_77:
        v39 = [MEMORY[0x1E696ABC0] errorWithDomain:SCMLErrorDomain code:v48 userInfo:0];
        goto LABEL_78;
      }

LABEL_24:
      v27 = 0;
      goto LABEL_79;
    }

    goto LABEL_65;
  }

  LOBYTE(v47) = 0;
LABEL_65:
  if (!v47)
  {
    if (v32)
    {
      v47 = [(SCMLImageAnalyzer *)v12 loadNetworkForURL:v23 espressoEngine:5 storageType:65552 deviceId:0xFFFFFFFFLL];
      if (((v47 | bOOLValue4) & 1) == 0)
      {
        if (error)
        {
          v48 = 3;
          goto LABEL_77;
        }

        goto LABEL_24;
      }
    }
  }

  v27 = 1;
  if (!v47 && ((bOOLValue4 ^ 1) & 1) == 0)
  {
    v49 = [(SCMLImageAnalyzer *)v12 loadNetworkForURL:v23 espressoEngine:0 storageType:65568 deviceId:0xFFFFFFFFLL];
    v27 = v49;
    v50 = error ? v49 : 1;
    if ((v50 & 1) == 0)
    {
      v48 = 4;
      goto LABEL_77;
    }
  }

LABEL_79:

  if ((v27 & 1) == 0)
  {
LABEL_81:
    v51 = 0;
    goto LABEL_82;
  }

LABEL_80:
  v51 = v12;
LABEL_82:

  return v51;
}

- (void)dealloc
{
  espresso_plan_destroy();
  espresso_context_destroy();
  v3.receiver = self;
  v3.super_class = SCMLImageAnalyzer;
  [(SCMLImageAnalyzer *)&v3 dealloc];
}

- (BOOL)loadNetworkForURL:(id)l espressoEngine:(int)engine storageType:(int)type deviceId:(int)id
{
  lCopy = l;
  context = espresso_create_context();
  self->encoderCtx = context;
  if (!context)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v37, engine);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Could not create espresso context for engine: ", &v37, &v38);
    v16 = std::string::append(&v38, " and device id: ", 0x10uLL);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v36, id);
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v36;
    }

    else
    {
      v18 = v36.__r_.__value_.__r.__words[0];
    }

    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v36.__r_.__value_.__l.__size_;
    }

    v20 = std::string::append(&v39, v18, size);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v40);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  self->encoderPlan = espresso_create_plan();
  path = [lCopy path];
  [path UTF8String];
  v13 = espresso_plan_add_network();

  if (v13)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(v22, v23);
    __cxa_throw(v22, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (espresso_plan_build())
  {
    v24 = __cxa_allocate_exception(0x10uLL);
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(v24, v25);
    __cxa_throw(v24, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  memset(&v40, 0, sizeof(v40));
  memset(&v39, 0, sizeof(v39));
  if (c_network_get_input_names())
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(v26, v27);
    __cxa_throw(v26, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (espresso_network_query_blob_dimensions())
  {
    v28 = __cxa_allocate_exception(0x10uLL);
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(v28, v29);
    __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (espresso_network_bind_buffer())
  {
    v30 = __cxa_allocate_exception(0x10uLL);
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(v30, v31);
    __cxa_throw(v30, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if ([(SCMLImageAnalyzer *)self shouldProcessDetections])
  {
    if (espresso_network_bind_buffer())
    {
      v32 = __cxa_allocate_exception(0x10uLL);
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v32, v33);
      __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (espresso_network_bind_buffer())
    {
      v34 = __cxa_allocate_exception(0x10uLL);
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v34, v35);
      __cxa_throw(v34, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  self->__espressoEngine = engine;
  self->__espressoDeviceId = id;
  self->__espressoStorageType = type;
  v38.__r_.__value_.__r.__words[0] = &v39;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v38);
  v39.__r_.__value_.__r.__words[0] = &v40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v39);

  return 1;
}

+ (id)_readOperatingThresholdsDataUsingModelURL:(id)l error:(id *)error
{
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [lCopy path];
  v8 = [defaultManager contentsOfDirectoryAtPath:path error:error];

  if (error && *error)
  {
    error = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self ENDSWITH 'operating_thresholds.json'"];
    v10 = [v8 filteredArrayUsingPredicate:v9];
    firstObject = [v10 firstObject];
    v12 = [lCopy URLByAppendingPathComponent:firstObject];

    v13 = MEMORY[0x1E695DEF0];
    path2 = [v12 path];
    v15 = [v13 dataWithContentsOfFile:path2];

    if (v15)
    {
      v16 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v15 options:0 error:error];
      v17 = v16;
      if (error && *error)
      {
        error = 0;
      }

      else
      {
        error = v16;
      }
    }

    else if (error)
    {
      path3 = [v12 path];
      scml::strFromNSString(__p, path3);
      scml::strCat<char const(&)[38],std::string>("unable to read operating thresholds: ", v24, __p);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v25 & 0x80u) == 0)
      {
        v19 = v24;
      }

      else
      {
        v19 = v24[0];
      }

      if ((v25 & 0x80u) == 0)
      {
        v20 = v25;
      }

      else
      {
        v20 = v24[1];
      }

      *error = scml::error(9u, v19, v20);
      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      error = 0;
    }
  }

  return error;
}

+ (id)_encodeName:(id)name
{
  nameCopy = name;
  v4 = +[SCMLImageLabelCoder instance];
  v5 = [v4 encodeToHex:nameCopy];
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v8, [nameCopy UTF8String]);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Name could not be encoded: ", &v8, &v9);
    std::runtime_error::runtime_error(exception, &v9);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return v5;
}

+ (id)_decodeName:(id)name
{
  nameCopy = name;
  v4 = +[SCMLImageLabelCoder instance];
  v5 = [v4 decodeFromHex:nameCopy];
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v8, [nameCopy UTF8String]);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Name could not be encoded: ", &v8, &v9);
    std::runtime_error::runtime_error(exception, &v9);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return v5;
}

- (void)_extractThresholdForOTGXMain:(id)main
{
  v69 = *MEMORY[0x1E69E9840];
  mainCopy = main;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = [mainCopy objectForKeyedSubscript:@"class_thresholds"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [mainCopy objectForKeyedSubscript:@"class_thresholds"];
  }

  else
  {
    v6 = 0;
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v7)
  {
    v54 = *v64;
    do
    {
      v56 = v7;
      for (i = 0; i != v56; ++i)
      {
        if (*v64 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v63 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"class"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v9 objectForKeyedSubscript:@"class"];
        }

        else
        {
          v11 = 0;
        }

        v12 = [v9 objectForKeyedSubscript:@"index"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v9 objectForKeyedSubscript:@"index"];
        }

        else
        {
          v13 = 0;
        }

        v14 = [v9 objectForKeyedSubscript:@"default"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v15 = [v9 objectForKeyedSubscript:@"default"];
          v3 = v15;
        }

        else
        {
          v15 = 0;
        }

        bOOLValue = [v15 BOOLValue];
        if (isKindOfClass)
        {
        }

        if ([v11 isEqualToString:@"60dc96fd80c33771139d6cf90639a776"])
        {
          v17 = [v9 objectForKeyedSubscript:@"thresholds"];
          v18 = [v17 objectForKeyedSubscript:@"balanced"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v52 = [v9 objectForKeyedSubscript:@"thresholds"];
            v6 = [v52 objectForKeyedSubscript:@"balanced"];
            v19 = v6;
          }

          else
          {
            v19 = 0;
          }

          objc_storeStrong(&self->_otgxMainThreshold, v19);
          if (isKindOfClass)
          {
          }
        }

        if (v13 && ((self->_otgxRetrieveAllClasses | bOOLValue) & 1) != 0)
        {
          v20 = [SCMLImageAnalyzer _decodeName:v11];
          [dictionary setObject:v20 forKeyedSubscript:v13];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
    }

    while (v7);
  }

  v21 = [dictionary copy];
  acceptedOutputIndices = self->_acceptedOutputIndices;
  self->_acceptedOutputIndices = v21;

  if ([(SCMLImageAnalyzer *)self shouldProcessDetections])
  {
    v23 = [mainCopy objectForKeyedSubscript:@"detection_thresholds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = [mainCopy objectForKeyedSubscript:@"detection_thresholds"];
    }

    else
    {
      v46 = 0;
    }

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v49 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v53 = v46;
    v26 = [(NSDictionary *)v53 countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v26)
    {
      v55 = *v60;
      do
      {
        v57 = v26;
        for (j = 0; j != v57; ++j)
        {
          if (*v60 != v55)
          {
            objc_enumerationMutation(v53);
          }

          v28 = *(*(&v59 + 1) + 8 * j);
          v29 = [v28 objectForKeyedSubscript:{@"class", v46}];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = [v28 objectForKeyedSubscript:@"class"];
          }

          else
          {
            v30 = 0;
          }

          v31 = [v28 objectForKeyedSubscript:@"index"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = [v28 objectForKeyedSubscript:@"index"];
          }

          else
          {
            v32 = 0;
          }

          v33 = [v28 objectForKeyedSubscript:@"default"];
          objc_opt_class();
          v34 = objc_opt_isKindOfClass();
          if (v34)
          {
            v35 = [v28 objectForKeyedSubscript:@"default"];
            isKindOfClass = v35;
          }

          else
          {
            v35 = 0;
          }

          bOOLValue2 = [v35 BOOLValue];
          if (v34)
          {
          }

          v37 = [v28 objectForKeyedSubscript:@"thresholds"];
          v38 = [v37 objectForKeyedSubscript:@"balanced"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v40 = 0;
            if (!v32)
            {
              goto LABEL_61;
            }

LABEL_59:
            if ((self->_otgxRetrieveAllClasses | bOOLValue2))
            {
              v41 = [SCMLImageAnalyzer _decodeName:v30];
              [dictionary2 setObject:v41 forKeyedSubscript:v32];
            }

            goto LABEL_61;
          }

          v39 = [v28 objectForKeyedSubscript:@"thresholds"];
          v40 = [v39 objectForKeyedSubscript:@"balanced"];

          if (v40)
          {
            [v49 setObject:v40 forKeyedSubscript:v32];
          }

          if (v32)
          {
            goto LABEL_59;
          }

LABEL_61:
        }

        v26 = [(NSDictionary *)v53 countByEnumeratingWithState:&v59 objects:v67 count:16];
      }

      while (v26);
    }

    v42 = [dictionary2 copy];
    acceptedDetectionOutputIndices = self->_acceptedDetectionOutputIndices;
    self->_acceptedDetectionOutputIndices = v42;

    v44 = [v49 copy];
    detectionThresholdByOutputIndex = self->_detectionThresholdByOutputIndex;
    self->_detectionThresholdByOutputIndex = v44;

    v25 = v53;
  }

  else
  {
    v24 = self->_acceptedDetectionOutputIndices;
    self->_acceptedDetectionOutputIndices = 0;

    v25 = self->_detectionThresholdByOutputIndex;
    self->_detectionThresholdByOutputIndex = 0;
  }
}

- (BOOL)isSensitive:(id)sensitive sensitivityScore:(id *)score classificationMode:(unint64_t)mode
{
  sensitiveCopy = sensitive;
  v8 = [sensitiveCopy objectForKeyedSubscript:SCMLHandlerImageClassificationScores[0]];
  v9 = [SCMLImageAnalyzer _decodeName:@"60dc96fd80c33771139d6cf90639a776"];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = +[SCMLImageModelThresholds instance];
  v12 = +[SCMLHandler currentModelVersion];
  v19 = 0;
  [v11 thresholdForLabel:@"otgx_fyqmjdju" classificationMode:mode modelVersion:v12 error:&v19];
  v14 = v13;
  v15 = v19;

  [v10 floatValue];
  LOBYTE(mode) = v14 <= v16;
  v17 = v10;
  *score = v10;

  return mode;
}

- (id)analyzeImage:(CGImage *)image error:(id *)error
{
  v5 = [(SCMLImageAnalyzer *)self generateClassificationScoresForImage:image error:error];
  if (v5)
  {
    v15 = &unk_1F37518E8;
    v6 = [(SCMLImageAnalyzer *)self isSensitive:v5 sensitivityScore:&v15];
    v7 = v15;
    v8 = [SCMLImageAnalysisResult alloc];
    v9 = [v5 objectForKeyedSubscript:SCMLHandlerImageClassificationScores[0]];
    v10 = [(SCMLAnalysisResult *)v8 initWithSensitive:v6 sensitivityScore:v7 scoresForLabels:v9];

    if ([(SCMLImageAnalyzer *)self shouldProcessDetections])
    {
      v11 = [SCMLImageDetectionResult alloc];
      v12 = [v5 objectForKeyedSubscript:SCMLHandlerImageDetections[0]];
      v13 = [(SCMLImageDetectionResult *)v11 initWithDetections:v12];
      [(SCMLImageAnalysisResult *)v10 setDetectionResult:v13];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)classifyImage:(CGImage *)image error:(id *)error
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v8 = [(SCMLImageAnalyzer *)self generateClassificationScoresForImage:image error:error];
  if (v8)
  {
    v14 = &unk_1F37518E8;
    v9 = [(SCMLImageAnalyzer *)self isSensitive:v8 sensitivityScore:&v14];
    v10 = v14;
    if (v9)
    {
      v11 = &unk_1F3751900;
      [dictionary setObject:&unk_1F3751900 forKeyedSubscript:SCMLImageExplicitSensitivity[0]];
    }

    else
    {
      v11 = &unk_1F3751918;
      [dictionary setObject:&unk_1F3751918 forKeyedSubscript:SCMLImageExplicitSensitivity[0]];
    }

    [dictionary setObject:v11 forKeyedSubscript:SCMLImageSensitivity[0]];
    [dictionary setObject:v10 forKeyedSubscript:SCMLImageExplicitSensitivityScore[0]];
    [dictionary setObject:v10 forKeyedSubscript:SCMLImageSensitivityScore[0]];
    v12 = [dictionary copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)scaleMethod
{
  options = [(SCMLModelBase *)self options];
  v3 = [options objectForKeyedSubscript:SCMLImageScaleMethod[0]];

  v4 = v3 == SCMLImageScaleMethodvImage[0] || v3 == 0;
  v5 = SCMLImageScaleMethodCGInterpolationMedium[0];
  if (!v4)
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

- (id)generateClassificationScoresForImage:(CGImage *)image error:(id *)error
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  scaleMethod = [(SCMLImageAnalyzer *)self scaleMethod];
  perfResults = [(SCMLModelBase *)self perfResults];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __64__SCMLImageAnalyzer_generateClassificationScoresForImage_error___block_invoke;
  v27[3] = &unk_1E7EB3A00;
  v9 = scaleMethod;
  v30 = &v32;
  imageCopy = image;
  v28 = v9;
  selfCopy = self;
  [perfResults run:@"Scale" block:v27];

  if (v33[3])
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy_;
    v25 = __Block_byref_object_dispose_;
    v26 = MEMORY[0x1E695E0F8];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy_;
    v19 = __Block_byref_object_dispose_;
    v20 = 0;
    perfResults2 = [(SCMLModelBase *)self perfResults];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__SCMLImageAnalyzer_generateClassificationScoresForImage_error___block_invoke_78;
    v14[3] = &unk_1E7EB3A28;
    v14[4] = self;
    v14[5] = &v32;
    v14[6] = &v15;
    v14[7] = &v21;
    [perfResults2 run:@"Inference" block:v14];

    CFRelease(v33[3]);
    v11 = v16[5];
    if (v11)
    {
      v12 = 0;
      if (error)
      {
        *error = v11;
      }
    }

    else
    {
      v12 = v22[5];
    }

    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v21, 8);
  }

  else if (error)
  {
    scml::error(7u, "Failed to convert to pixel buffer", 33);
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v32, 8);

  return v12;
}

CVPixelBufferRef __64__SCMLImageAnalyzer_generateClassificationScoresForImage_error___block_invoke(void *a1)
{
  v3 = kCGInterpolationNone;
  interpolationForScaleMethod(a1[4], &v3);
  result = scaledPixelBuffer32BGRAFromCGImage(a1[7], *(a1[5] + 24), *(a1[5] + 32), v3);
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

double __64__SCMLImageAnalyzer_generateClassificationScoresForImage_error___block_invoke_78(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = *(*(a1[5] + 8) + 24);
  v5 = *(a1[6] + 8);
  v8 = *(v5 + 40);
  v7 = (v5 + 40);
  v6 = v8;
  obj = v8;
  if (v3)
  {
    objc_msgSend__computeOutputForPixelBuffer_error_(v3, a2, v4, &obj);
    objc_storeStrong(v7, obj);
    if (*(*(a1[6] + 8) + 40))
    {
      return result;
    }

    goto LABEL_3;
  }

  result = 0.0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  if (!v6)
  {
LABEL_3:
    v10 = a1[4];
    v14[0] = v16;
    v14[1] = v17;
    v14[2] = v18;
    v14[3] = v19;
    v11 = [v10 _processNetworkOutput:v14];
    v12 = *(a1[7] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  return result;
}

- (id)analyzePixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  v5 = [(SCMLImageAnalyzer *)self generateClassificationScoresForPixelBuffer:buffer error:error];
  if (v5)
  {
    v15 = &unk_1F37518E8;
    v6 = [(SCMLImageAnalyzer *)self isSensitive:v5 sensitivityScore:&v15];
    v7 = v15;
    v8 = [SCMLImageAnalysisResult alloc];
    v9 = [v5 objectForKeyedSubscript:SCMLHandlerImageClassificationScores[0]];
    v10 = [(SCMLAnalysisResult *)v8 initWithSensitive:v6 sensitivityScore:v7 scoresForLabels:v9];

    if ([(SCMLImageAnalyzer *)self shouldProcessDetections])
    {
      v11 = [SCMLImageDetectionResult alloc];
      v12 = [v5 objectForKeyedSubscript:SCMLHandlerImageDetections[0]];
      v13 = [(SCMLImageDetectionResult *)v11 initWithDetections:v12];
      [(SCMLImageAnalysisResult *)v10 setDetectionResult:v13];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)classifyPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v8 = [(SCMLImageAnalyzer *)self generateClassificationScoresForPixelBuffer:buffer error:error];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKeyedSubscript:SCMLHandlerImageClassificationScores[0]];
    v11 = [SCMLImageAnalyzer _decodeName:@"60dc96fd80c33771139d6cf90639a776"];
    v12 = [v10 objectForKeyedSubscript:v11];

    [v12 floatValue];
    v14 = v13;
    otgxMainThreshold = [(SCMLImageAnalyzer *)self otgxMainThreshold];
    [otgxMainThreshold floatValue];
    v17 = v16;

    if (v14 >= v17)
    {
      v18 = &unk_1F3751900;
      [dictionary setObject:&unk_1F3751900 forKeyedSubscript:SCMLImageExplicitSensitivity[0]];
    }

    else
    {
      v18 = &unk_1F3751918;
      [dictionary setObject:&unk_1F3751918 forKeyedSubscript:SCMLImageExplicitSensitivity[0]];
    }

    [dictionary setObject:v18 forKeyedSubscript:SCMLImageSensitivity[0]];
    [dictionary setObject:v12 forKeyedSubscript:SCMLImageExplicitSensitivityScore[0]];
    [dictionary setObject:v12 forKeyedSubscript:SCMLImageSensitivityScore[0]];
    v19 = [dictionary copy];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)generateClassificationScoresForPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  perfResults = [(SCMLModelBase *)self perfResults];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __70__SCMLImageAnalyzer_generateClassificationScoresForPixelBuffer_error___block_invoke;
  v36[3] = &unk_1E7EB3A50;
  v36[5] = &v37;
  v36[6] = buffer;
  v36[4] = self;
  [perfResults run:@"Scale" block:v36];

  if (v38[3])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x7012000000;
    v25 = __Block_byref_object_copy__79;
    v26 = __Block_byref_object_dispose__80;
    v27 = "";
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = 0;
    perfResults2 = [(SCMLModelBase *)self perfResults];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70__SCMLImageAnalyzer_generateClassificationScoresForPixelBuffer_error___block_invoke_81;
    v15[3] = &unk_1E7EB3A78;
    v15[4] = self;
    v15[5] = &v22;
    v15[6] = &v37;
    v15[7] = &v16;
    [perfResults2 run:@"Inference" block:v15];

    CVPixelBufferRelease(v38[3]);
    v9 = v17[5];
    if (v9)
    {
      v10 = 0;
      if (error)
      {
        *error = v9;
      }
    }

    else
    {
      v11 = *(v23 + 4);
      v14[0] = *(v23 + 3);
      v14[1] = v11;
      v12 = *(v23 + 6);
      v14[2] = *(v23 + 5);
      v14[3] = v12;
      v10 = [(SCMLImageAnalyzer *)self _processNetworkOutput:v14];
    }

    _Block_object_dispose(&v16, 8);

    _Block_object_dispose(&v22, 8);
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:SCMLErrorDomain code:7 userInfo:0];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v37, 8);

  return v10;
}

__CVBuffer *__70__SCMLImageAnalyzer_generateClassificationScoresForPixelBuffer_error___block_invoke(uint64_t a1)
{
  result = scaleCVPixelBuffer(*(a1 + 48), (*(a1 + 32) + 24));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

double __70__SCMLImageAnalyzer_generateClassificationScoresForPixelBuffer_error___block_invoke_81(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = *(*(a1[6] + 8) + 24);
  v5 = *(a1[7] + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  obj = v7;
  if (v3)
  {
    objc_msgSend__computeOutputForPixelBuffer_error_(v3, a2, v4, &obj);
    objc_storeStrong(v6, obj);
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
  }

  v8 = *(a1[5] + 8);
  result = *&v14;
  v10 = v15;
  v12 = v16;
  v11 = v17;
  v8[3] = v14;
  v8[4] = v10;
  v8[5] = v12;
  v8[6] = v11;
  return result;
}

- (NetworkOutputs)_computeOutputForPixelBuffer:(SEL)buffer error:(__CVBuffer *)error
{
  if (espresso_network_bind_cvpixelbuffer())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(exception, v12);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (espresso_plan_execute_sync())
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(v13, v14);
    __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if ([(SCMLImageAnalyzer *)self shouldProcessDetections])
  {
  }

  else
  {
    v17 = 0uLL;
    v18 = 0;
  }

  result = [(SCMLImageAnalyzer *)self shouldProcessDetections];
  if (result)
  {
  }

  else
  {
    v15 = 0uLL;
    v16 = 0;
  }

  if (self->leafProbabilities.sequence_length != 1)
  {
    v9 = "buf->sequence_length == 1";
    v10 = 491;
    goto LABEL_18;
  }

  if (self->leafProbabilities.batch_number != 1)
  {
    v9 = "buf->batch_number == 1";
    v10 = 492;
    goto LABEL_18;
  }

  if (self->leafProbabilities.height != 1)
  {
    v9 = "buf->height == 1";
    v10 = 493;
    goto LABEL_18;
  }

  if (self->leafProbabilities.width != 1)
  {
    v9 = "buf->width == 1";
    v10 = 494;
LABEL_18:
    __assert_rtn("tensorViewC", "SCMLImageAnalyzer.mm", v10, v9);
  }

  channels = self->leafProbabilities.channels;
  retstr->var0.var0 = self->leafProbabilities.data;
  retstr->var0.var1.var0[0] = channels;
  *&retstr->var1.var0 = v17;
  retstr->var1.var1.var0[2] = v18;
  *&retstr->var2.var0 = v15;
  retstr->var2.var1.var0[2] = v16;
  return result;
}

- (vector<SCML::BoxInfo,)_processDetectionOutput:(SCMLImageAnalyzer *)self
{
  v6 = *a4->var1.var1.var0;
  v7 = a4->var1.var1.var0[2];
  var0 = a4->var1.var0;
  v14 = v6;
  v15 = v7;
  SCML::extractLocalPeaks(&var0, 3, __p);
  var0 = __p[0];
  v14 = v6;
  v15 = v7;
  v8 = *a4->var2.var1.var0;
  v9 = a4->var2.var1.var0[2];
  v11[0] = a4->var2.var0;
  v11[1] = v8;
  v12 = v9;
  SCML::topDetections(&var0, v11, 100, &retstr->var0);
  result = __p[0];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return result;
}

- (BOOL)shouldProcessDetections
{
  selfCopy = self;
  options = [(SCMLModelBase *)self options];
  v4 = [options objectForKeyedSubscript:SCMLEnableImageDetection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    selfCopy = [selfCopy options];
    v6 = [selfCopy objectForKeyedSubscript:SCMLEnableImageDetection];
  }

  else
  {
    v6 = 0;
  }

  bOOLValue = [v6 BOOLValue];
  if (isKindOfClass)
  {
  }

  return bOOLValue;
}

- (id)_processNetworkOutput:(NetworkOutputs *)output
{
  v43 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  acceptedOutputIndices = [(SCMLImageAnalyzer *)self acceptedOutputIndices];
  allKeys = [acceptedOutputIndices allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v7)
  {
    v8 = *v39;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        v11 = MEMORY[0x1E696AD98];
        *&v12 = output->var0.var0[[v10 intValue]];
        v13 = [v11 numberWithFloat:v12];
        acceptedOutputIndices2 = [(SCMLImageAnalyzer *)self acceptedOutputIndices];
        v15 = [acceptedOutputIndices2 objectForKeyedSubscript:v10];
        [dictionary setObject:v13 forKeyedSubscript:v15];
      }

      v7 = [allKeys countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v7);
  }

  v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = [dictionary copy];
  [v34 setObject:v16 forKeyedSubscript:SCMLHandlerImageClassificationScores[0]];

  if ([(SCMLImageAnalyzer *)self shouldProcessDetections])
  {
    objc_msgSend__processDetectionOutput_(self);
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    for (j = __p; j != v37; j += 10)
    {
      acceptedDetectionOutputIndices = [(SCMLImageAnalyzer *)self acceptedDetectionOutputIndices];
      v20 = [MEMORY[0x1E696AD98] numberWithInt:*(j + 1)];
      v21 = [acceptedDetectionOutputIndices objectForKeyedSubscript:v20];

      if (v21)
      {
        v22 = *j;
        detectionThresholdByOutputIndex = [(SCMLImageAnalyzer *)self detectionThresholdByOutputIndex];
        v24 = [MEMORY[0x1E696AD98] numberWithInt:*(j + 1)];
        v25 = [detectionThresholdByOutputIndex objectForKeyedSubscript:v24];
        [v25 floatValue];
        v27 = v22 < v26;

        if (!v27)
        {
          v28 = +[SCMLImageLabelCoder instance];
          v29 = [v28 encodeToP1:v21];

          v30 = [SCMLDetectionBox alloc];
          *&v31 = *j;
          v32 = [(SCMLDetectionBox *)v30 initWithScore:v29 label:v31 rect:*(j + 1), *(j + 2), *(j + 3), *(j + 4)];
          [v17 addObject:v32];
        }
      }
    }

    [v34 setObject:v17 forKeyedSubscript:SCMLHandlerImageDetections[0]];

    if (__p)
    {
      operator delete(__p);
    }
  }

  return v34;
}

+ (id)getOperatingPointDataForClassName:(id)name modelURL:(id)l error:(id *)error
{
  nameCopy = name;
  lCopy = l;
  v10 = [self _readOperatingThresholdsDataUsingModelURL:lCopy error:error];
  v11 = v10;
  if (error && *error)
  {
    v12 = 0;
  }

  else
  {
    v13 = [v10 objectForKeyedSubscript:@"precision_recall_data"];
    v14 = [self _encodeName:nameCopy];
    v12 = [v13 objectForKey:v14];
  }

  return v12;
}

- (void)loadNetworkForURL:(const std::runtime_error *)a1 espressoEngine:storageType:deviceId:.cold.1(const std::runtime_error *a1)
{
  std::runtime_error::what(a1);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

- (void)_computeOutputForPixelBuffer:(const std::runtime_error *)a1 error:.cold.1(const std::runtime_error *a1)
{
  std::runtime_error::what(a1);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

+ (void)getOperatingPointDataForClassName:(const std::runtime_error *)a1 modelURL:error:.cold.1(const std::runtime_error *a1)
{
  std::runtime_error::what(a1);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end