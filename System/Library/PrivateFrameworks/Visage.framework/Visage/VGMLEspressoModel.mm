@interface VGMLEspressoModel
+ (id)modelVersionWithModelPath:(id)path;
+ (id)modelVersionWithNetworkFilePath:(id)path;
- (VGMLEspressoModel)initWithModelInfo:(id)info;
- (VGMLEspressoModel)initWithModelPath:(id)path;
- (VGMLEspressoModel)initWithNetworkFile:(id)file;
- (const)getInputDimensions:(unint64_t)dimensions;
- (const)getOutputDimensions:(unint64_t)dimensions;
- (id)inferInputs:(id)inputs;
- (unint64_t)getInputSize;
- (unint64_t)getOutputSize;
- (unint64_t)getOutputSize:(unint64_t)size;
- (void)dealloc;
- (void)inferInputs:(id)inputs toOutputs:(id)outputs;
- (void)inferModel;
@end

@implementation VGMLEspressoModel

+ (id)modelVersionWithNetworkFilePath:(id)path
{
  v3 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:path];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v3 options:0 error:0];
    v5 = [v4 objectForKeyedSubscript:@"properties"];
    v6 = [v5 objectForKeyedSubscript:@"network_version"];
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"unknown";
  }

  v8 = v7;

  return v7;
}

+ (id)modelVersionWithModelPath:(id)path
{
  v3 = [path stringByAppendingPathComponent:@"model.espresso.net"];
  v4 = [objc_opt_class() modelVersionWithNetworkFilePath:v3];

  return v4;
}

- (VGMLEspressoModel)initWithModelInfo:(id)info
{
  v60 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v55.receiver = self;
  v55.super_class = VGMLEspressoModel;
  v5 = [(VGMLEspressoModel *)&v55 init];
  if (v5)
  {
    v6 = [infoCopy objectForKeyedSubscript:@"config"];
    v7 = [infoCopy objectForKeyedSubscript:@"model_path"];
    networkFilePath = v5->_networkFilePath;
    v5->_networkFilePath = v7;

    if (v5->_networkFilePath)
    {
      v10 = [v6 valueForKeyPath:@"input_name"];
      inputLayerNames = v5->_inputLayerNames;
      v5->_inputLayerNames = v10;

      v12 = [v6 valueForKeyPath:@"output_name"];
      outputLayerNames = v5->_outputLayerNames;
      v5->_outputLayerNames = v12;

      v5->_numInputs = [(NSMutableArray *)v5->_inputLayerNames count];
      v5->_numOutputs = [(NSMutableArray *)v5->_outputLayerNames count];
      v14 = [v6 valueForKey:@"engine"];
      v15 = 65552;
      if (([v14 isEqualToString:@"ANE"]& 1) != 0)
      {
        v16 = 10007;
      }

      else if (([v14 isEqualToString:@"GPU"]& 1) != 0)
      {
        v16 = 5;
      }

      else
      {
        [v14 isEqualToString:@"CPU"];
        v16 = 0;
        v15 = 65568;
      }

      v5->_engine = v16;
      v5->_storageFormat = v15;
      v5->_context = espresso_create_context();
      v5->_plan_flags = 0;
      v5->_plan = espresso_create_plan();
      [(NSString *)v5->_networkFilePath UTF8String];
      v18 = espresso_plan_add_network();
      if (!v18)
      {
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v21 = v5->_inputLayerNames;
        v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v51 objects:v57 count:16];
        if (v22)
        {
          v23 = *v52;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v52 != v23)
              {
                objc_enumerationMutation(v21);
              }

              [*(*(&v51 + 1) + 8 * i) UTF8String];
              if (espresso_network_declare_input())
              {
                exception = __cxa_allocate_exception(0x10uLL);
                espresso_plan_get_error_info();
                std::runtime_error::runtime_error(exception, v44);
                __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
              }
            }

            v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v51 objects:v57 count:16];
          }

          while (v22);
        }

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v25 = v5->_outputLayerNames;
        v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v47 objects:v56 count:16];
        if (v26)
        {
          v27 = *v48;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v48 != v27)
              {
                objc_enumerationMutation(v25);
              }

              v29 = *(*(&v47 + 1) + 8 * j);
              [v29 UTF8String];
              if (espresso_network_declare_output())
              {
                v45 = __cxa_allocate_exception(0x10uLL);
                espresso_plan_get_error_info();
                std::runtime_error::runtime_error(v45, v46);
                __cxa_throw(v45, MEMORY[0x277D82760], MEMORY[0x277D82600]);
              }
            }

            v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v47 objects:v56 count:16];
          }

          while (v26);
        }

        v30 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v5->_numInputs];
        inputBuffers = v5->_inputBuffers;
        v5->_inputBuffers = v30;

        if (v5->_numInputs)
        {
          v32 = 0;
          do
          {
            v33 = [VGMLEspressoBuffer alloc];
            v34 = [(NSMutableArray *)v5->_inputLayerNames objectAtIndexedSubscript:v32];
            v35 = [(VGMLEspressoBuffer *)v33 initWithNetwork:&v5->_network withLayerName:v34 withMode:0x10000];
            [(NSMutableArray *)v5->_inputBuffers setObject:v35 atIndexedSubscript:v32];

            ++v32;
          }

          while (v32 < v5->_numInputs);
        }

        v36 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v5->_numOutputs];
        outputBuffers = v5->_outputBuffers;
        v5->_outputBuffers = v36;

        if (v5->_numOutputs)
        {
          v38 = 0;
          do
          {
            v39 = [VGMLEspressoBuffer alloc];
            v40 = [(NSMutableArray *)v5->_outputLayerNames objectAtIndexedSubscript:v38];
            v41 = [(VGMLEspressoBuffer *)v39 initWithNetwork:&v5->_network withLayerName:v40 withMode:0x20000];
            [(NSMutableArray *)v5->_outputBuffers setObject:v41 atIndexedSubscript:v38];

            ++v38;
          }

          while (v38 < v5->_numOutputs);
        }

        espresso_plan_build();
        v17 = v5;
        goto LABEL_39;
      }

      v19 = __VGLogSharedInstance(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = v5->_networkFilePath;
        *buf = 138412290;
        v59 = v20;
        _os_log_impl(&dword_270F06000, v19, OS_LOG_TYPE_ERROR, " Espresso error. Failed to load model expected at - %@. ", buf, 0xCu);
      }
    }

    else
    {
      v14 = __VGLogSharedInstance(v9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v59 = infoCopy;
        _os_log_impl(&dword_270F06000, v14, OS_LOG_TYPE_ERROR, " No modelpath with info %@ ", buf, 0xCu);
      }
    }

    v17 = 0;
LABEL_39:

    goto LABEL_40;
  }

  v17 = 0;
LABEL_40:

  return v17;
}

- (VGMLEspressoModel)initWithModelPath:(id)path
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = VGMLEspressoModel;
  v5 = [(VGMLEspressoModel *)&v11 init];
  if (v5)
  {
    v6 = [pathCopy stringByAppendingPathComponent:@"config.plist"];
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:v6];
    v8 = [pathCopy stringByAppendingPathComponent:@"model.espresso.net"];
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v9 setObject:v7 forKeyedSubscript:@"config"];
    [v9 setObject:v8 forKeyedSubscript:@"model_path"];
    v5 = [(VGMLEspressoModel *)v5 initWithModelInfo:v9];
  }

  return v5;
}

- (VGMLEspressoModel)initWithNetworkFile:(id)file
{
  v48 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v38.receiver = self;
  v38.super_class = VGMLEspressoModel;
  v5 = [(VGMLEspressoModel *)&v38 init];
  if (v5)
  {
    v37 = 0;
    v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:fileCopy options:0 error:&v37];
    v7 = v37;
    if (v7)
    {
      v8 = v7;
      v9 = __VGLogSharedInstance(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v8 description];
        *buf = 138412290;
        v47 = v10;
        _os_log_impl(&dword_270F06000, v9, OS_LOG_TYPE_ERROR, " Failed to read network file. %@ ", buf, 0xCu);
      }

      v11 = 0;
      goto LABEL_27;
    }

    v36 = 0;
    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v36];
    v8 = v36;
    v12 = [v9 objectForKeyedSubscript:@"properties"];
    v13 = v12;
    if (v8 || !v12)
    {
      v29 = __VGLogSharedInstance(v12);
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v30 = " Properties field is missing in the network file. ";
    }

    else
    {
      v14 = [v12 objectForKey:@"network_version"];
      v15 = v14 == 0;

      if (v15)
      {
        v29 = __VGLogSharedInstance(v16);
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        *buf = 0;
        v30 = " network_version field is missing in the network properties. ";
      }

      else
      {
        v17 = [v13 objectForKey:@"engine"];
        v18 = v17 == 0;

        if (v18)
        {
          v29 = __VGLogSharedInstance(v19);
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_25;
          }

          *buf = 0;
          v30 = " engine field is missing in the network properties. ";
        }

        else
        {
          v20 = [v13 objectForKey:@"input_name"];
          v21 = v20 == 0;

          if (!v21)
          {
            v23 = [v13 objectForKey:@"output_name"];
            v24 = v23 == 0;

            if (!v24)
            {
              v45[0] = fileCopy;
              v44[0] = @"model_path";
              v44[1] = @"config";
              v39[0] = @"version";
              v35 = [v13 objectForKeyedSubscript:@"network_version"];
              v40 = v35;
              v39[1] = @"engine";
              v41 = [v13 objectForKeyedSubscript:@"engine"];
              v39[2] = @"input_name";
              v34 = v41;
              v33 = [v13 objectForKeyedSubscript:@"input_name"];
              v32 = [v33 componentsSeparatedByString:{@", "}];
              v42 = v32;
              v39[3] = @"output_name";
              v26 = [v13 objectForKeyedSubscript:@"output_name"];
              v27 = [v26 componentsSeparatedByString:{@", "}];
              v43 = v27;
              v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:v39 count:4];
              v45[1] = v28;
              v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];

              v5 = [(VGMLEspressoModel *)v5 initWithModelInfo:v29];
              v11 = v5;
LABEL_26:

LABEL_27:
              goto LABEL_28;
            }

            v29 = __VGLogSharedInstance(v25);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v30 = " output_name is missing in the network properties. ";
              goto LABEL_24;
            }

LABEL_25:
            v11 = 0;
            goto LABEL_26;
          }

          v29 = __VGLogSharedInstance(v22);
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_25;
          }

          *buf = 0;
          v30 = " input_name is missing in the network properties. ";
        }
      }
    }

LABEL_24:
    _os_log_impl(&dword_270F06000, v29, OS_LOG_TYPE_ERROR, v30, buf, 2u);
    goto LABEL_25;
  }

  v11 = 0;
LABEL_28:

  return v11;
}

- (void)dealloc
{
  espresso_plan_destroy();
  espresso_context_destroy();
  v3.receiver = self;
  v3.super_class = VGMLEspressoModel;
  [(VGMLEspressoModel *)&v3 dealloc];
}

- (void)inferModel
{
  v8 = *MEMORY[0x277D85DE8];
  if (espresso_plan_execute_sync())
  {
    error_info = espresso_plan_get_error_info();
    v4 = v3;
    v5 = __VGLogSharedInstance(error_info);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = v4;
      _os_log_impl(&dword_270F06000, v5, OS_LOG_TYPE_ERROR, " Espresso error: %s ", &v6, 0xCu);
    }
  }
}

- (const)getInputDimensions:(unint64_t)dimensions
{
  v3 = [(NSMutableArray *)self->_inputBuffers objectAtIndexedSubscript:dimensions];
  getDimensions = [v3 getDimensions];

  return getDimensions;
}

- (const)getOutputDimensions:(unint64_t)dimensions
{
  v3 = [(NSMutableArray *)self->_outputBuffers objectAtIndexedSubscript:dimensions];
  getDimensions = [v3 getDimensions];

  return getDimensions;
}

- (unint64_t)getInputSize
{
  v2 = [(NSMutableArray *)self->_inputBuffers objectAtIndexedSubscript:0];
  getSize = [v2 getSize];

  return getSize;
}

- (unint64_t)getOutputSize
{
  v2 = [(NSMutableArray *)self->_outputBuffers objectAtIndexedSubscript:0];
  getSize = [v2 getSize];

  return getSize;
}

- (unint64_t)getOutputSize:(unint64_t)size
{
  v3 = [(NSMutableArray *)self->_outputBuffers objectAtIndexedSubscript:size];
  getSize = [v3 getSize];

  return getSize;
}

- (void)inferInputs:(id)inputs toOutputs:(id)outputs
{
  inputsCopy = inputs;
  outputsCopy = outputs;
  for (i = 0; i < [(NSMutableArray *)self->_inputBuffers count]; ++i)
  {
    v8 = [(NSMutableArray *)self->_inputBuffers objectAtIndexedSubscript:i];
    v9 = [inputsCopy objectAtIndexedSubscript:i];
    [v8 bindTensor:v9];
  }

  for (j = 0; j < [(NSMutableArray *)self->_outputBuffers count]; ++j)
  {
    v11 = [(NSMutableArray *)self->_outputBuffers objectAtIndexedSubscript:j];
    v12 = [outputsCopy objectAtIndexedSubscript:j];
    [v11 bindTensor:v12];
  }

  [(VGMLEspressoModel *)self inferModel];
}

- (id)inferInputs:(id)inputs
{
  inputsCopy = inputs;
  numOutputs = [(VGMLEspressoModel *)self numOutputs];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:numOutputs];
  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:numOutputs];
  if (numOutputs)
  {
    for (i = 0; i != numOutputs; ++i)
    {
      v9 = [(NSMutableArray *)self->_outputBuffers objectAtIndexedSubscript:i];
      getSize = [v9 getSize];

      v11 = [MEMORY[0x277CBEB28] dataWithLength:4 * getSize];
      v12 = -[VGMLFloatIOData initWithSize:withData:]([VGMLFloatIOData alloc], "initWithSize:withData:", getSize, [v11 mutableBytes]);
      [v6 setObject:v12 atIndexedSubscript:i];
      v13 = [(NSMutableArray *)self->_outputLayerNames objectAtIndexedSubscript:i];
      [v7 setObject:v12 forKey:v13];
    }
  }

  [(VGMLEspressoModel *)self inferInputs:inputsCopy toOutputs:v6];

  return v7;
}

@end