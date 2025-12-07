@interface AMDDODMLEspressoModel
- (AMDDODMLEspressoModel)initWithModelMetadata:(id)metadata withAttachmentProcessor:(id)processor error:(id *)error errorDomain:(id)domain;
- (id)_flattenedWeightsBeforeTraining;
- (id)createBufferDictionary:(id)dictionary;
- (id)finishInitializeManually:(id *)manually errorDomain:(id)domain;
- (id)getNewDeltasContainer:(id)container withError:(id *)error errorDomain:(id)domain;
- (id)trainOnData:(id)data numLocalIterations:(int64_t)iterations error:(id *)error errorDomain:(id)domain;
- (int64_t)_bindBuffers:(id *)buffers errorDomain:(id)domain;
- (int64_t)_buildPlan:(id *)plan errorDomain:(id)domain;
- (int64_t)initializeManually:(id *)manually errorDomain:(id)domain;
- (void)dealloc;
@end

@implementation AMDDODMLEspressoModel

- (AMDDODMLEspressoModel)initWithModelMetadata:(id)metadata withAttachmentProcessor:(id)processor error:(id *)error errorDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, metadata);
  v61 = 0;
  objc_storeStrong(&v61, processor);
  errorCopy = error;
  v59 = 0;
  objc_storeStrong(&v59, domain);
  v6 = selfCopy;
  selfCopy = 0;
  v58.receiver = v6;
  v58.super_class = AMDDODMLEspressoModel;
  v57 = [(AMDDODMLEspressoModel *)&v58 init];
  selfCopy = v57;
  objc_storeStrong(&selfCopy, v57);
  if (!v57)
  {
    v64 = 0;
    goto LABEL_16;
  }

  modelPath = [location[0] modelPath];
  v8 = *(selfCopy + 1);
  *(selfCopy + 1) = modelPath;
  MEMORY[0x277D82BD8](v8);
  batchSize = [location[0] batchSize];
  *(selfCopy + 7) = batchSize;
  inputNames = [location[0] inputNames];
  v11 = *(selfCopy + 2);
  *(selfCopy + 2) = inputNames;
  MEMORY[0x277D82BD8](v11);
  weightNames = [location[0] weightNames];
  v13 = *(selfCopy + 5);
  *(selfCopy + 5) = weightNames;
  MEMORY[0x277D82BD8](v13);
  v14 = [selfCopy createBufferDictionary:*(selfCopy + 2)];
  v15 = *(selfCopy + 3);
  *(selfCopy + 3) = v14;
  MEMORY[0x277D82BD8](v15);
  v52 = selfCopy;
  outputNames = [location[0] outputNames];
  v16 = [v52 createBufferDictionary:?];
  v17 = *(selfCopy + 4);
  *(selfCopy + 4) = v16;
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](outputNames);
  v18 = [selfCopy createBufferDictionary:*(selfCopy + 5)];
  v19 = *(selfCopy + 6);
  *(selfCopy + 6) = v18;
  MEMORY[0x277D82BD8](v19);
  learningRate = [location[0] learningRate];
  v21 = *(selfCopy + 8);
  *(selfCopy + 8) = learningRate;
  MEMORY[0x277D82BD8](v21);
  trainingModeBufferName = [location[0] trainingModeBufferName];
  v23 = *(selfCopy + 14);
  *(selfCopy + 14) = trainingModeBufferName;
  MEMORY[0x277D82BD8](v23);
  learningRateBufferName = [location[0] learningRateBufferName];
  v25 = *(selfCopy + 36);
  *(selfCopy + 36) = learningRateBufferName;
  MEMORY[0x277D82BD8](v25);
  lossName = [location[0] lossName];
  v27 = *(selfCopy + 58);
  *(selfCopy + 58) = lossName;
  MEMORY[0x277D82BD8](v27);
  metricsNames = [location[0] metricsNames];
  v29 = *(selfCopy + 9);
  *(selfCopy + 9) = metricsNames;
  MEMORY[0x277D82BD8](v29);
  shortenedEmbeddingNames = [location[0] shortenedEmbeddingNames];
  v31 = *(selfCopy + 59);
  *(selfCopy + 59) = shortenedEmbeddingNames;
  MEMORY[0x277D82BD8](v31);
  shortenedEmbeddingMappingKeys = [location[0] shortenedEmbeddingMappingKeys];
  v33 = *(selfCopy + 63);
  *(selfCopy + 63) = shortenedEmbeddingMappingKeys;
  MEMORY[0x277D82BD8](v33);
  shortenedEmbeddingNumberVectorsBefore = [location[0] shortenedEmbeddingNumberVectorsBefore];
  v35 = *(selfCopy + 60);
  *(selfCopy + 60) = shortenedEmbeddingNumberVectorsBefore;
  MEMORY[0x277D82BD8](v35);
  shortenedEmbeddingNumberVectorsAfter = [location[0] shortenedEmbeddingNumberVectorsAfter];
  v37 = *(selfCopy + 61);
  *(selfCopy + 61) = shortenedEmbeddingNumberVectorsAfter;
  MEMORY[0x277D82BD8](v37);
  shortenedEmbeddingSize = [location[0] shortenedEmbeddingSize];
  v39 = *(selfCopy + 62);
  *(selfCopy + 62) = shortenedEmbeddingSize;
  MEMORY[0x277D82BD8](v39);
  objc_storeStrong(selfCopy + 64, v61);
  initializeManually = [location[0] initializeManually];
  v41 = *(selfCopy + 65);
  *(selfCopy + 65) = initializeManually;
  MEMORY[0x277D82BD8](v41);
  if ([selfCopy _buildPlan:errorCopy errorDomain:v59])
  {
    if ([selfCopy _bindBuffers:errorCopy errorDomain:v59])
    {
      if ([*(selfCopy + 65) longValue])
      {
        if (![selfCopy initializeManually:errorCopy errorDomain:v59])
        {
          v64 = 0;
          goto LABEL_16;
        }
      }

      else
      {
        initializationFunctionName = [location[0] initializationFunctionName];
        v42 = initializationFunctionName;
        [initializationFunctionName UTF8String];
        v51 = espresso_network_set_function_name();
        MEMORY[0x277D82BD8](initializationFunctionName);
        if (v51)
        {
          v43 = objc_alloc(MEMORY[0x277CCA9B8]);
          v49 = [v43 initWithDomain:v59 code:77 userInfo:0];
          v44 = v49;
          *errorCopy = v49;
          v64 = 0;
          goto LABEL_16;
        }

        if (espresso_plan_execute_sync())
        {
          v45 = objc_alloc(MEMORY[0x277CCA9B8]);
          v48 = [v45 initWithDomain:v59 code:77 userInfo:0];
          v46 = v48;
          *errorCopy = v48;
          v64 = 0;
          goto LABEL_16;
        }
      }

      v64 = MEMORY[0x277D82BE0](selfCopy);
      goto LABEL_16;
    }

    v64 = 0;
  }

  else
  {
    v64 = 0;
  }

LABEL_16:
  objc_storeStrong(&v59, 0);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v64;
}

- (id)createBufferDictionary:(id)dictionary
{
  v18 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v10 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(__b[1] + 8 * v7);
      memset(v12, 0, sizeof(v12));
      v11 = [MEMORY[0x277CBEB28] dataWithBytes:v12 length:168];
      [dictionary setObject:v11 forKey:v14];
      objc_storeStrong(&v11, 0);
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v4 = MEMORY[0x277D82BE0](dictionary);
  objc_storeStrong(&dictionary, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (int64_t)_buildPlan:(id *)plan errorDomain:(id)domain
{
  v39 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v35 = a2;
  planCopy = plan;
  location = 0;
  objc_storeStrong(&location, domain);
  selfCopy->_ctx = espresso_create_context();
  if (selfCopy->_ctx)
  {
    selfCopy->_plan = espresso_create_plan();
    if (selfCopy->_plan)
    {
      [(NSString *)selfCopy->_modelPath UTF8String];
      v8 = espresso_plan_add_network();
      v31 = v8;
      if (v8)
      {
        v9 = objc_alloc(MEMORY[0x277CCA9B8]);
        v26 = [v9 initWithDomain:location code:67 userInfo:0];
        v10 = v26;
        *planCopy = v26;
        v37 = 0;
        v32 = 1;
      }

      else
      {
        memset(__b, 0, sizeof(__b));
        obj = MEMORY[0x277D82BE0](selfCopy->_outputNameBufferMap);
        v25 = [obj countByEnumeratingWithState:__b objects:v38 count:16];
        if (v25)
        {
          v21 = *__b[2];
          v22 = 0;
          v23 = v25;
          while (1)
          {
            v20 = v22;
            if (*__b[2] != v21)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(__b[1] + 8 * v22);
            v19 = v30;
            v11 = v30;
            [v19 UTF8String];
            if (espresso_network_declare_output())
            {
              break;
            }

            ++v22;
            if (v20 + 1 >= v23)
            {
              v22 = 0;
              v23 = [obj countByEnumeratingWithState:__b objects:v38 count:16];
              if (!v23)
              {
                goto LABEL_15;
              }
            }
          }

          v12 = objc_alloc(MEMORY[0x277CCA9B8]);
          v18 = [v12 initWithDomain:location code:70 userInfo:0];
          v13 = v18;
          *planCopy = v18;
          v37 = 0;
          v32 = 1;
        }

        else
        {
LABEL_15:
          v32 = 0;
        }

        MEMORY[0x277D82BD8](obj);
        if (!v32)
        {
          if (espresso_plan_build())
          {
            v14 = objc_alloc(MEMORY[0x277CCA9B8]);
            v17 = [v14 initWithDomain:location code:71 userInfo:0];
            v15 = v17;
            *planCopy = v17;
            v37 = 0;
          }

          else
          {
            v37 = 1;
          }

          v32 = 1;
        }
      }
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x277CCA9B8]);
      v27 = [v6 initWithDomain:location code:69 userInfo:0];
      v7 = v27;
      *planCopy = v27;
      v37 = 0;
      v32 = 1;
    }
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x277CCA9B8]);
    v28 = [v4 initWithDomain:location code:68 userInfo:0];
    v5 = v28;
    *planCopy = v28;
    v37 = 0;
    v32 = 1;
  }

  objc_storeStrong(&location, 0);
  return v37;
}

- (int64_t)_bindBuffers:(id *)buffers errorDomain:(id)domain
{
  v84 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v78 = a2;
  buffersCopy = buffers;
  location = 0;
  objc_storeStrong(&location, domain);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](selfCopy->_inputNameBufferMap);
  v61 = [obj countByEnumeratingWithState:__b objects:v83 count:16];
  if (v61)
  {
    v57 = *__b[2];
    v58 = 0;
    v59 = v61;
    while (1)
    {
      v56 = v58;
      if (*__b[2] != v57)
      {
        objc_enumerationMutation(obj);
      }

      v75 = *(__b[1] + 8 * v58);
      v73 = [(NSDictionary *)selfCopy->_inputNameBufferMap objectForKeyedSubscript:v75];
      v54 = v75;
      v4 = v75;
      [v54 UTF8String];
      v55 = v73;
      v5 = v73;
      [v55 mutableBytes];
      v6 = espresso_network_bind_buffer();
      v72 = v6;
      if (v6)
      {
        v7 = objc_alloc(MEMORY[0x277CCA9B8]);
        v53 = [v7 initWithDomain:location code:72 userInfo:0];
        v8 = v53;
        *buffersCopy = v53;
        v80 = 0;
        v71 = 1;
      }

      else
      {
        v71 = 0;
      }

      objc_storeStrong(&v73, 0);
      if (v71)
      {
        break;
      }

      ++v58;
      if (v56 + 1 >= v59)
      {
        v58 = 0;
        v59 = [obj countByEnumeratingWithState:__b objects:v83 count:16];
        if (!v59)
        {
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
LABEL_11:
    v71 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  if (!v71)
  {
    memset(v69, 0, sizeof(v69));
    v51 = MEMORY[0x277D82BE0](selfCopy->_outputNameBufferMap);
    v52 = [v51 countByEnumeratingWithState:v69 objects:v82 count:16];
    if (v52)
    {
      v48 = *v69[2];
      v49 = 0;
      v50 = v52;
      while (1)
      {
        v47 = v49;
        if (*v69[2] != v48)
        {
          objc_enumerationMutation(v51);
        }

        v70 = *(v69[1] + 8 * v49);
        v68 = [(NSDictionary *)selfCopy->_outputNameBufferMap objectForKeyedSubscript:v70];
        v45 = v70;
        v9 = v70;
        [v45 UTF8String];
        v46 = v68;
        v10 = v68;
        [v46 mutableBytes];
        v11 = espresso_network_bind_buffer();
        v67 = v11;
        if (v11)
        {
          v12 = objc_alloc(MEMORY[0x277CCA9B8]);
          v44 = [v12 initWithDomain:location code:73 userInfo:0];
          v13 = v44;
          *buffersCopy = v44;
          v80 = 0;
          v71 = 1;
        }

        else
        {
          v71 = 0;
        }

        objc_storeStrong(&v68, 0);
        if (v71)
        {
          break;
        }

        ++v49;
        if (v47 + 1 >= v50)
        {
          v49 = 0;
          v50 = [v51 countByEnumeratingWithState:v69 objects:v82 count:16];
          if (!v50)
          {
            goto LABEL_23;
          }
        }
      }
    }

    else
    {
LABEL_23:
      v71 = 0;
    }

    MEMORY[0x277D82BD8](v51);
    if (!v71)
    {
      [(NSString *)selfCopy->_trainingModeBufferName UTF8String];
      v14 = espresso_network_bind_buffer_to_global();
      v66 = v14;
      if (v14)
      {
        v15 = objc_alloc(MEMORY[0x277CCA9B8]);
        v43 = [v15 initWithDomain:location code:75 userInfo:0];
        v16 = v43;
        *buffersCopy = v43;
        v80 = 0;
        v71 = 1;
        goto LABEL_46;
      }

      [(NSString *)selfCopy->_learningRateBufferName UTF8String];
      v17 = espresso_network_bind_buffer_to_global();
      v65 = v17;
      if (v17)
      {
        v18 = objc_alloc(MEMORY[0x277CCA9B8]);
        v42 = [v18 initWithDomain:location code:76 userInfo:0];
        v19 = v42;
        *buffersCopy = v42;
        v80 = 0;
        v71 = 1;
        goto LABEL_46;
      }

      *selfCopy->_bufIsTraining.data = 1.0;
      [(NSNumber *)selfCopy->_learningRate floatValue];
      *selfCopy->_bufLR.data = v20;
      memset(v63, 0, sizeof(v63));
      v40 = MEMORY[0x277D82BE0](selfCopy->_weightNameBufferMap);
      v41 = [v40 countByEnumeratingWithState:v63 objects:v81 count:16];
      if (v41)
      {
        v37 = *v63[2];
        v38 = 0;
        v39 = v41;
        while (1)
        {
          v36 = v38;
          if (*v63[2] != v37)
          {
            objc_enumerationMutation(v40);
          }

          v64 = *(v63[1] + 8 * v38);
          v62 = [(NSDictionary *)selfCopy->_weightNameBufferMap objectForKeyedSubscript:v64];
          if ([(NSNumber *)selfCopy->_initializeManually longValue])
          {
            v31 = v64;
            v25 = v64;
            [v31 UTF8String];
            v32 = v62;
            v26 = v62;
            [v32 mutableBytes];
            if (!espresso_network_bind_buffer_to_global())
            {
LABEL_39:
              v71 = 0;
              goto LABEL_40;
            }

            v27 = objc_alloc(MEMORY[0x277CCA9B8]);
            v30 = [v27 initWithDomain:location code:74 userInfo:0];
            v28 = v30;
            *buffersCopy = v30;
            v80 = 0;
            v71 = 1;
          }

          else
          {
            v34 = v64;
            v21 = v64;
            [v34 UTF8String];
            v35 = v62;
            v22 = v62;
            [v35 mutableBytes];
            if (!espresso_network_bind_buffer_to_global())
            {
              goto LABEL_39;
            }

            v23 = objc_alloc(MEMORY[0x277CCA9B8]);
            v33 = [v23 initWithDomain:location code:74 userInfo:0];
            v24 = v33;
            *buffersCopy = v33;
            v80 = 0;
            v71 = 1;
          }

LABEL_40:
          objc_storeStrong(&v62, 0);
          if (v71)
          {
            goto LABEL_44;
          }

          ++v38;
          if (v36 + 1 >= v39)
          {
            v38 = 0;
            v39 = [v40 countByEnumeratingWithState:v63 objects:v81 count:16];
            if (!v39)
            {
              break;
            }
          }
        }
      }

      v71 = 0;
LABEL_44:
      MEMORY[0x277D82BD8](v40);
      if (!v71)
      {
        v80 = 1;
        v71 = 1;
      }
    }
  }

LABEL_46:
  objc_storeStrong(&location, 0);
  return v80;
}

- (id)_flattenedWeightsBeforeTraining
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v14[1] = a2;
  v14[0] = objc_alloc_init(MEMORY[0x277CBEB28]);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](selfCopy->_weightNames);
  v9 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(__b[1] + 8 * v6);
      v11 = [(NSDictionary *)selfCopy->_weightNameBufferMap objectForKeyedSubscript:v13];
      memset(v10, 0, sizeof(v10));
      [v11 getBytes:v10 length:168];
      [v14[0] appendBytes:v10[0] length:4 * v10[2] * v10[3] * v10[4] * v10[5]];
      objc_storeStrong(&v11, 0);
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v3 = MEMORY[0x277D82BE0](v14[0]);
  objc_storeStrong(v14, 0);

  return v3;
}

- (id)trainOnData:(id)data numLocalIterations:(int64_t)iterations error:(id *)error errorDomain:(id)domain
{
  v92 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  iterationsCopy = iterations;
  errorCopy = error;
  v76 = 0;
  objc_storeStrong(&v76, domain);
  get_main_function_name();
  v6 = espresso_network_set_function_name();
  v75 = v6;
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CCA9B8]);
    v42 = [v7 initWithDomain:v76 code:75 userInfo:0];
    v8 = v42;
    *errorCopy = v42;
    v81 = 0;
    v74 = 1;
  }

  else
  {
    _flattenedWeightsBeforeTraining = [(AMDDODMLEspressoModel *)selfCopy _flattenedWeightsBeforeTraining];
    v72 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:?];
    v71 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:0];
    for (i = 0; i < iterationsCopy; ++i)
    {
      v69 = [location[0] bindDataToInputsDirectly:selfCopy->_inputNameBufferMap batchSize:selfCopy->_batchSize error:errorCopy errorDomain:v76];
      if (v69)
      {
        v9 = espresso_plan_execute_sync();
        v68 = v9;
        if (v9)
        {
          v10 = objc_alloc(MEMORY[0x277CCA9B8]);
          v41 = [v10 initWithDomain:v76 code:79 userInfo:0];
          v11 = v41;
          *errorCopy = v41;
          v81 = 0;
          v74 = 1;
        }

        else
        {
          v35 = [(NSDictionary *)selfCopy->_outputNameBufferMap objectForKeyedSubscript:selfCopy->_lossName];
          v12 = v35;
          mutableBytes = [v35 mutableBytes];
          MEMORY[0x277D82BD8](v35);
          v67 = mutableBytes;
          v66 = **mutableBytes;
          v37 = v72;
          *&v13 = v66;
          v38 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
          [v37 addObject:?];
          MEMORY[0x277D82BD8](v38);
          NSLog(&cfstr_Loss4f.isa, v66);
          memset(__b, 0, sizeof(__b));
          v39 = MEMORY[0x277D82BE0](selfCopy->_metricNames);
          v40 = [v39 countByEnumeratingWithState:__b objects:v91 count:16];
          if (v40)
          {
            v32 = *__b[2];
            v33 = 0;
            v34 = v40;
            while (1)
            {
              v31 = v33;
              if (*__b[2] != v32)
              {
                objc_enumerationMutation(v39);
              }

              v65 = *(__b[1] + 8 * v33);
              v29 = [(NSDictionary *)selfCopy->_outputNameBufferMap objectForKeyedSubscript:v65];
              v14 = v29;
              mutableBytes2 = [v29 mutableBytes];
              MEMORY[0x277D82BD8](v29);
              v63 = mutableBytes2;
              v62 = **mutableBytes2;
              v61 = [v71 valueForKey:v65];
              if (!v61)
              {
                v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
                v17 = v61;
                v61 = v16;
                MEMORY[0x277D82BD8](v17);
                [v71 setValue:v61 forKey:v65];
              }

              v27 = v61;
              LODWORD(v15) = v62;
              v28 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
              [v27 addObject:?];
              MEMORY[0x277D82BD8](v28);
              objc_storeStrong(&v61, 0);
              ++v33;
              if (v31 + 1 >= v34)
              {
                v33 = 0;
                v34 = [v39 countByEnumeratingWithState:__b objects:v91 count:16];
                if (!v34)
                {
                  break;
                }
              }
            }
          }

          MEMORY[0x277D82BD8](v39);
          if (!i && [(NSNumber *)selfCopy->_initializeManually longValue]== 1)
          {
            v18 = [(AMDDODMLEspressoModel *)selfCopy finishInitializeManually:errorCopy errorDomain:v76];
          }

          v74 = 0;
        }
      }

      else
      {
        v81 = 0;
        v74 = 1;
      }

      objc_storeStrong(&v69, 0);
      if (v74)
      {
        goto LABEL_38;
      }
    }

    v60 = 0;
    memset(v58, 0, sizeof(v58));
    v25 = MEMORY[0x277D82BE0](selfCopy->_weightNames);
    v26 = [v25 countByEnumeratingWithState:v58 objects:v90 count:16];
    if (v26)
    {
      v22 = *v58[2];
      v23 = 0;
      v24 = v26;
      while (1)
      {
        v21 = v23;
        if (*v58[2] != v22)
        {
          objc_enumerationMutation(v25);
        }

        v59 = *(v58[1] + 8 * v23);
        v57 = [(NSDictionary *)selfCopy->_weightNameBufferMap objectForKeyedSubscript:v59];
        memset(v56, 0, sizeof(v56));
        [v57 getBytes:v56 length:168];
        v55 = v56[2] * v56[3] * v56[4] * v56[5];
        v54 = 0.0;
        v53 = 0.0;
        for (j = 0; j < v55; ++j)
        {
          v87 = v60;
          v86 = 4;
          v88 = v60;
          v89 = 4;
          v50 = v60;
          v51 = 4;
          [_flattenedWeightsBeforeTraining getBytes:&v54 range:{v60, 4}];
          v53 = *(v56[0] + 4 * j);
          v49 = v53 - v54;
          v83 = v60;
          v82 = 4;
          v84 = v60;
          v85 = 4;
          v48[1] = v60;
          v48[2] = 4;
          [_flattenedWeightsBeforeTraining replaceBytesInRange:v60 withBytes:{4, &v49}];
          v60 += 4;
        }

        objc_storeStrong(&v57, 0);
        ++v23;
        if (v21 + 1 >= v24)
        {
          v23 = 0;
          v24 = [v25 countByEnumeratingWithState:v58 objects:v90 count:16];
          if (!v24)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v25);
    if ([(NSNumber *)selfCopy->_initializeManually longValue])
    {
      v47 = [(AMDDODMLEspressoModel *)selfCopy getNewDeltasContainer:_flattenedWeightsBeforeTraining withError:errorCopy errorDomain:v76];
      if (v47)
      {
        v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v46 setObject:v47 forKey:ModelDeltas];
        [v46 setObject:selfCopy->_weightNames forKey:WeightNamesKeyInResponse];
        [v46 setObject:v72 forKey:LossesKeyInResponse];
        [v46 setObject:v71 forKey:ModelMetrics];
        v81 = MEMORY[0x277D82BE0](v46);
        v74 = 1;
        objc_storeStrong(&v46, 0);
      }

      else
      {
        v81 = 0;
        v74 = 1;
      }

      objc_storeStrong(&v47, 0);
    }

    else
    {
      v48[0] = [MEMORY[0x277CBEB38] dictionary];
      [v48[0] setObject:_flattenedWeightsBeforeTraining forKey:ModelDeltas];
      [v48[0] setObject:selfCopy->_weightNames forKey:WeightNamesKeyInResponse];
      [v48[0] setObject:v72 forKey:LossesKeyInResponse];
      [v48[0] setObject:v71 forKey:ModelMetrics];
      v81 = MEMORY[0x277D82BE0](v48[0]);
      v74 = 1;
      objc_storeStrong(v48, 0);
    }

LABEL_38:
    objc_storeStrong(&v71, 0);
    objc_storeStrong(&v72, 0);
    objc_storeStrong(&_flattenedWeightsBeforeTraining, 0);
  }

  objc_storeStrong(&v76, 0);
  objc_storeStrong(location, 0);
  v19 = v81;

  return v19;
}

- (int64_t)initializeManually:(id *)manually errorDomain:(id)domain
{
  v134 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v120 = a2;
  manuallyCopy = manually;
  location = 0;
  objc_storeStrong(&location, domain);
  if (selfCopy->_attachmentProcessor)
  {
    weightsArray = [(AMDDODMLAttachmentProcessor *)selfCopy->_attachmentProcessor weightsArray];
    if (weightsArray)
    {
      v115 = 0;
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x277D82BE0](selfCopy->_weightNames);
      v72 = [obj countByEnumeratingWithState:__b objects:v133 count:16];
      if (v72)
      {
        v68 = *__b[2];
        v69 = 0;
        v70 = v72;
        while (1)
        {
          v67 = v69;
          if (*__b[2] != v68)
          {
            objc_enumerationMutation(obj);
          }

          v114 = *(__b[1] + 8 * v69);
          v66 = [(NSDictionary *)selfCopy->_shortenedEmbeddingNames objectForKey:v114];
          MEMORY[0x277D82BD8](v66);
          if (v66)
          {
            v112 = [(NSDictionary *)selfCopy->_shortenedEmbeddingSize objectForKey:v114];
            v111 = [(NSDictionary *)selfCopy->_shortenedEmbeddingNumberVectorsBefore objectForKey:v114];
            v110 = [(NSDictionary *)selfCopy->_shortenedEmbeddingNumberVectorsAfter objectForKey:v114];
            v109 = [(NSDictionary *)selfCopy->_shortenedEmbeddingMappingKeys objectForKey:v114];
            if (v112 && v111 && v110 && v109)
            {
              longValue = [v112 longValue];
              longValue2 = [v111 longValue];
              v115 += longValue * longValue2;
              v108 = [(AMDDODMLAttachmentProcessor *)selfCopy->_attachmentProcessor hashMapForKey:v109];
              if (v108)
              {
                v62 = [v108 count];
                if (v62 > [v110 longValue])
                {
                  v13 = objc_alloc(MEMORY[0x277CCA9B8]);
                  v61 = [v13 initWithDomain:location code:119 userInfo:0];
                  v14 = v61;
                  *manuallyCopy = v61;
                  v122 = 0;
                  v117 = 1;
                }

                else
                {
                  v117 = 0;
                }
              }

              else
              {
                v11 = objc_alloc(MEMORY[0x277CCA9B8]);
                v63 = [v11 initWithDomain:location code:118 userInfo:0];
                v12 = v63;
                *manuallyCopy = v63;
                v122 = 0;
                v117 = 1;
              }

              objc_storeStrong(&v108, 0);
            }

            else
            {
              v8 = objc_alloc(MEMORY[0x277CCA9B8]);
              v65 = [v8 initWithDomain:location code:117 userInfo:0];
              v9 = v65;
              *manuallyCopy = v65;
              v122 = 0;
              v117 = 1;
            }

            objc_storeStrong(&v109, 0);
            objc_storeStrong(&v110, 0);
            objc_storeStrong(&v111, 0);
            objc_storeStrong(&v112, 0);
            if (v117)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v107 = [(NSDictionary *)selfCopy->_weightNameBufferMap objectForKeyedSubscript:v114];
            memset(v106, 0, sizeof(v106));
            [v107 getBytes:v106 length:168];
            v105 = v106[2] * v106[3] * v106[4] * v106[5];
            v115 += v105;
            objc_storeStrong(&v107, 0);
          }

          ++v69;
          if (v67 + 1 >= v70)
          {
            v69 = 0;
            v70 = [obj countByEnumeratingWithState:__b objects:v133 count:16];
            if (!v70)
            {
              break;
            }
          }
        }
      }

      v117 = 0;
LABEL_27:
      MEMORY[0x277D82BD8](obj);
      if (!v117)
      {
        v15 = [weightsArray length];
        if (v15 / 4 == v115)
        {
          v104 = 0;
          memset(v102, 0, sizeof(v102));
          v58 = MEMORY[0x277D82BE0](selfCopy->_weightNames);
          v59 = [v58 countByEnumeratingWithState:v102 objects:v132 count:16];
          if (v59)
          {
            v55 = *v102[2];
            v56 = 0;
            v57 = v59;
            while (1)
            {
              v54 = v56;
              if (*v102[2] != v55)
              {
                objc_enumerationMutation(v58);
              }

              v103 = *(v102[1] + 8 * v56);
              v53 = [(NSDictionary *)selfCopy->_shortenedEmbeddingNames objectForKey:v103];
              MEMORY[0x277D82BD8](v53);
              if (v53)
              {
                v101 = [(NSDictionary *)selfCopy->_shortenedEmbeddingSize objectForKey:v103];
                v100 = [(NSDictionary *)selfCopy->_shortenedEmbeddingNumberVectorsBefore objectForKey:v103];
                v99 = [(NSDictionary *)selfCopy->_shortenedEmbeddingNumberVectorsAfter objectForKey:v103];
                v98 = [(NSDictionary *)selfCopy->_shortenedEmbeddingMappingKeys objectForKey:v103];
                if (v101 && v100 && v99 && v98)
                {
                  v97 = [(AMDDODMLAttachmentProcessor *)selfCopy->_attachmentProcessor hashMapForKey:v98];
                  if (v97)
                  {
                    v96 = objc_alloc_init(MEMORY[0x277CBEB38]);
                    memset(v94, 0, sizeof(v94));
                    v49 = MEMORY[0x277D82BE0](v97);
                    v50 = [v49 countByEnumeratingWithState:v94 objects:v131 count:16];
                    if (v50)
                    {
                      v46 = *v94[2];
                      v47 = 0;
                      v48 = v50;
                      while (1)
                      {
                        v45 = v47;
                        if (*v94[2] != v46)
                        {
                          objc_enumerationMutation(v49);
                        }

                        v95 = *(v94[1] + 8 * v47);
                        v43 = v96;
                        v42 = v95;
                        v44 = [v97 objectForKey:v95];
                        [v43 setObject:v42 forKey:?];
                        MEMORY[0x277D82BD8](v44);
                        ++v47;
                        if (v45 + 1 >= v48)
                        {
                          v47 = 0;
                          v48 = [v49 countByEnumeratingWithState:v94 objects:v131 count:16];
                          if (!v48)
                          {
                            break;
                          }
                        }
                      }
                    }

                    MEMORY[0x277D82BD8](v49);
                    v93 = [(NSDictionary *)selfCopy->_weightNameBufferMap objectForKeyedSubscript:v103];
                    memset(v92, 0, sizeof(v92));
                    [v93 getBytes:v92 length:168];
                    v91 = v92[2];
                    v90 = v92[3];
                    longValue3 = [v101 longValue];
                    if (longValue3 == v91 && (v23 = [v99 longValue], v23 == v90))
                    {
                      v89 = v92[0];
                      for (i = 0; ; ++i)
                      {
                        v40 = i;
                        if (v40 >= [v99 longValue])
                        {
                          break;
                        }

                        v38 = v96;
                        v39 = [MEMORY[0x277CCABB0] numberWithInt:i];
                        v87 = [v38 objectForKey:?];
                        MEMORY[0x277D82BD8](v39);
                        if (v87)
                        {
                          for (j = 0; ; ++j)
                          {
                            v37 = j;
                            if (v37 >= [v101 longValue])
                            {
                              break;
                            }

                            v34 = i;
                            longValue4 = [v101 longValue];
                            v85 = v34 * longValue4 + j;
                            v35 = v104;
                            longValue5 = [v87 longValue];
                            longValue6 = [v101 longValue];
                            v84 = v35 + longValue5 * longValue6 + j;
                            v128 = 4 * v84;
                            v127 = 4;
                            v129 = 4 * v84;
                            v130 = 4;
                            v82 = 4 * v84;
                            v83 = 4;
                            [weightsArray getBytes:v89 + 4 * v85 range:{4 * v84, 4}];
                          }
                        }

                        else
                        {
                          for (k = 0; ; ++k)
                          {
                            v33 = k;
                            if (v33 >= [v101 longValue])
                            {
                              break;
                            }

                            v32 = i;
                            longValue7 = [v101 longValue];
                            v80 = v32 * longValue7 + k;
                            *(v89 + 4 * v80) = 0;
                          }
                        }

                        objc_storeStrong(&v87, 0);
                      }

                      longValue8 = [v100 longValue];
                      longValue9 = [v101 longValue];
                      v104 += longValue8 * longValue9;
                      v117 = 0;
                    }

                    else
                    {
                      v24 = objc_alloc(MEMORY[0x277CCA9B8]);
                      v41 = [v24 initWithDomain:location code:121 userInfo:0];
                      v25 = v41;
                      *manuallyCopy = v41;
                      v122 = 0;
                      v117 = 1;
                    }

                    objc_storeStrong(&v93, 0);
                    objc_storeStrong(&v96, 0);
                  }

                  else
                  {
                    v20 = objc_alloc(MEMORY[0x277CCA9B8]);
                    v51 = [v20 initWithDomain:location code:118 userInfo:0];
                    v21 = v51;
                    *manuallyCopy = v51;
                    v122 = 0;
                    v117 = 1;
                  }

                  objc_storeStrong(&v97, 0);
                }

                else
                {
                  v18 = objc_alloc(MEMORY[0x277CCA9B8]);
                  v52 = [v18 initWithDomain:location code:117 userInfo:0];
                  v19 = v52;
                  *manuallyCopy = v52;
                  v122 = 0;
                  v117 = 1;
                }

                objc_storeStrong(&v98, 0);
                objc_storeStrong(&v99, 0);
                objc_storeStrong(&v100, 0);
                objc_storeStrong(&v101, 0);
                if (v117)
                {
                  goto LABEL_74;
                }
              }

              else
              {
                v79 = [(NSDictionary *)selfCopy->_weightNameBufferMap objectForKeyedSubscript:v103];
                memset(v78, 0, sizeof(v78));
                [v79 getBytes:v78 length:168];
                v77 = v78[2] * v78[3] * v78[4] * v78[5];
                for (m = 0; m < v77; ++m)
                {
                  v75 = 0;
                  v124 = 4 * (v104 + m);
                  v123 = 4;
                  v125 = v124;
                  v126 = 4;
                  [weightsArray getBytes:&v75 range:{v124, 4}];
                  *(v78[0] + 4 * m) = v75;
                }

                v104 += v77;
                objc_storeStrong(&v79, 0);
              }

              ++v56;
              if (v54 + 1 >= v57)
              {
                v56 = 0;
                v57 = [v58 countByEnumeratingWithState:v102 objects:v132 count:16];
                if (!v57)
                {
                  break;
                }
              }
            }
          }

          v117 = 0;
LABEL_74:
          MEMORY[0x277D82BD8](v58);
          if (!v117)
          {
            v122 = 1;
            v117 = 1;
          }
        }

        else
        {
          v16 = objc_alloc(MEMORY[0x277CCA9B8]);
          v60 = [v16 initWithDomain:location code:120 userInfo:0];
          v17 = v60;
          *manuallyCopy = v60;
          v122 = 0;
          v117 = 1;
        }
      }
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x277CCA9B8]);
      v73 = [v6 initWithDomain:location code:116 userInfo:0];
      v7 = v73;
      *manuallyCopy = v73;
      v122 = 0;
      v117 = 1;
    }

    objc_storeStrong(&weightsArray, 0);
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x277CCA9B8]);
    v74 = [v4 initWithDomain:location code:116 userInfo:0];
    v5 = v74;
    *manuallyCopy = v74;
    v122 = 0;
    v117 = 1;
  }

  objc_storeStrong(&location, 0);
  return v122;
}

- (id)finishInitializeManually:(id *)manually errorDomain:(id)domain
{
  v36 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v32 = a2;
  manuallyCopy = manually;
  location = 0;
  objc_storeStrong(&location, domain);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](selfCopy->_weightNameBufferMap);
  v24 = [obj countByEnumeratingWithState:__b objects:v35 count:16];
  if (v24)
  {
    v20 = *__b[2];
    v21 = 0;
    v22 = v24;
    while (1)
    {
      v19 = v21;
      if (*__b[2] != v20)
      {
        objc_enumerationMutation(obj);
      }

      v29 = *(__b[1] + 8 * v21);
      v18 = v29;
      v4 = v29;
      [v18 UTF8String];
      v5 = espresso_network_unbind_buffer_to_global();
      v27 = v5;
      if (v5)
      {
        break;
      }

      v25 = [(NSDictionary *)selfCopy->_weightNameBufferMap objectForKeyedSubscript:v29];
      v15 = v29;
      v8 = v29;
      [v15 UTF8String];
      v16 = v25;
      v9 = v25;
      [v16 mutableBytes];
      if (espresso_network_bind_buffer_to_global())
      {
        v10 = objc_alloc(MEMORY[0x277CCA9B8]);
        v14 = [v10 initWithDomain:location code:74 userInfo:0];
        v11 = v14;
        *manuallyCopy = v14;
        v34 = 0;
        v26 = 1;
      }

      else
      {
        v26 = 0;
      }

      objc_storeStrong(&v25, 0);
      if (v26)
      {
        goto LABEL_14;
      }

      ++v21;
      if (v19 + 1 >= v22)
      {
        v21 = 0;
        v22 = [obj countByEnumeratingWithState:__b objects:v35 count:16];
        if (!v22)
        {
          goto LABEL_13;
        }
      }
    }

    v6 = objc_alloc(MEMORY[0x277CCA9B8]);
    v17 = [v6 initWithDomain:location code:74 userInfo:0];
    v7 = v17;
    *manuallyCopy = v17;
    v34 = 0;
    v26 = 1;
  }

  else
  {
LABEL_13:
    v26 = 0;
  }

LABEL_14:
  MEMORY[0x277D82BD8](obj);
  if (!v26)
  {
    v34 = [MEMORY[0x277CCABB0] numberWithLong:1];
    v26 = 1;
  }

  objc_storeStrong(&location, 0);
  v12 = v34;

  return v12;
}

- (id)getNewDeltasContainer:(id)container withError:(id *)error errorDomain:(id)domain
{
  v70 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, container);
  errorCopy = error;
  v56 = 0;
  objc_storeStrong(&v56, domain);
  v55 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v54 = 0;
  memset(__b, 0, sizeof(__b));
  v30 = MEMORY[0x277D82BE0](selfCopy->_weightNames);
  v31 = [v30 countByEnumeratingWithState:__b objects:v69 count:16];
  if (v31)
  {
    v25 = *__b[2];
    v26 = 0;
    v27 = v31;
    while (1)
    {
      v24 = v26;
      if (*__b[2] != v25)
      {
        objc_enumerationMutation(v30);
      }

      v53 = *(__b[1] + 8 * v26);
      v23 = [(NSDictionary *)selfCopy->_shortenedEmbeddingNames objectForKey:v53];
      MEMORY[0x277D82BD8](v23);
      if (v23)
      {
        v51 = [(NSDictionary *)selfCopy->_shortenedEmbeddingSize objectForKey:v53];
        v50 = [(NSDictionary *)selfCopy->_shortenedEmbeddingNumberVectorsBefore objectForKey:v53];
        v49 = [(NSDictionary *)selfCopy->_shortenedEmbeddingNumberVectorsAfter objectForKey:v53];
        v48 = [(NSDictionary *)selfCopy->_shortenedEmbeddingMappingKeys objectForKey:v53];
        if (v51 && v50 && v49 && v48)
        {
          v46 = [(AMDDODMLAttachmentProcessor *)selfCopy->_attachmentProcessor hashMapForKey:v48];
          if (v46)
          {
            for (i = 0; ; ++i)
            {
              v20 = i;
              if (v20 >= [v50 longValue])
              {
                break;
              }

              v18 = v46;
              v19 = [MEMORY[0x277CCABB0] numberWithLong:i];
              v44 = [v18 objectForKey:?];
              MEMORY[0x277D82BD8](v19);
              if (v44)
              {
                for (j = 0; ; ++j)
                {
                  v17 = j;
                  if (v17 >= [v51 longValue])
                  {
                    break;
                  }

                  v15 = v54;
                  longValue = [v44 longValue];
                  longValue2 = [v51 longValue];
                  v42 = v15 + 4 * longValue * longValue2 + 4 * j;
                  v41 = 0;
                  v66 = v42;
                  v65 = 4;
                  v67 = v42;
                  v68 = 4;
                  v39 = v42;
                  v40 = 4;
                  [location[0] getBytes:? range:?];
                  [v55 appendBytes:&v41 length:4];
                }
              }

              else
              {
                for (k = 0; ; ++k)
                {
                  v14 = k;
                  if (v14 >= [v51 longValue])
                  {
                    break;
                  }

                  v37 = 0;
                  [v55 appendBytes:&v37 length:4];
                }
              }

              objc_storeStrong(&v44, 0);
            }

            longValue3 = [v51 longValue];
            longValue4 = [v49 longValue];
            v54 += 4 * longValue3 * longValue4;
            v47 = 0;
          }

          else
          {
            v7 = objc_alloc(MEMORY[0x277CCA9B8]);
            v21 = [v7 initWithDomain:v56 code:124 userInfo:0];
            v8 = v21;
            *errorCopy = v21;
            v60 = 0;
            v47 = 1;
          }

          objc_storeStrong(&v46, 0);
        }

        else
        {
          v5 = objc_alloc(MEMORY[0x277CCA9B8]);
          v22 = [v5 initWithDomain:v56 code:123 userInfo:0];
          v6 = v22;
          *errorCopy = v22;
          v60 = 0;
          v47 = 1;
        }

        objc_storeStrong(&v48, 0);
        objc_storeStrong(&v49, 0);
        objc_storeStrong(&v50, 0);
        objc_storeStrong(&v51, 0);
        if (v47)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v36 = [(NSDictionary *)selfCopy->_weightNameBufferMap objectForKeyedSubscript:v53];
        memset(v35, 0, sizeof(v35));
        [v36 getBytes:v35 length:168];
        v34 = v35[2] * v35[3] * v35[4] * v35[5];
        for (m = 0; m < v34; ++m)
        {
          v32 = 0;
          v62 = v54;
          v61 = 4;
          v63 = v54;
          v64 = 4;
          [location[0] getBytes:? range:?];
          [v55 appendBytes:&v32 length:4];
          v54 += 4;
        }

        objc_storeStrong(&v36, 0);
      }

      ++v26;
      if (v24 + 1 >= v27)
      {
        v26 = 0;
        v27 = [v30 countByEnumeratingWithState:__b objects:v69 count:16];
        if (!v27)
        {
          break;
        }
      }
    }
  }

  v47 = 0;
LABEL_35:
  MEMORY[0x277D82BD8](v30);
  if (!v47)
  {
    v60 = MEMORY[0x277D82BE0](v55);
    v47 = 1;
  }

  objc_storeStrong(&v55, 0);
  objc_storeStrong(&v56, 0);
  objc_storeStrong(location, 0);
  v11 = v60;

  return v11;
}

- (void)dealloc
{
  selfCopy = self;
  v5 = a2;
  if (self->_plan)
  {
    v4 = espresso_plan_destroy();
    v3 = espresso_context_destroy();
  }

  v2.receiver = selfCopy;
  v2.super_class = AMDDODMLEspressoModel;
  [(AMDDODMLEspressoModel *)&v2 dealloc];
}

@end