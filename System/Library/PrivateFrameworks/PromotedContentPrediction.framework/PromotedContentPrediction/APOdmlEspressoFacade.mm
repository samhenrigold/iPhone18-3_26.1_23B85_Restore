@interface APOdmlEspressoFacade
- (APOdmlEspressoFacade)initWithEspressoNetURL:(id)l recipe:(id)recipe error:(id *)error;
- (BOOL)_loadEspressoNet:(const char *)net recipe:(id)recipe error:(id *)error;
- (BOOL)_prepareForTraining:(id *)training;
- (BOOL)_setErrorPtr:(id *)ptr toError:(id)error;
- (BOOL)changeEspressoBatchSize:(unint64_t)size error:(id *)error;
- (BOOL)finalizeEspressoPipeline:(id *)pipeline;
- (BOOL)setError:(id *)error errorCode:(int64_t)code;
- (BOOL)trainWithTrainingSet:(id)set error:(id *)error;
- (float)_retrieveLossValue;
- (float)accuracyInBatchWithError:(id *)error;
- (id)_extractRequiredFeatures;
- (id)computeAccuracyAndLoss:(id)loss error:(id *)error;
- (id)computeClientPttr:(id)pttr error:(id *)error;
- (id)retrieveWeights2D:(id *)d;
- (id)retrieveWeights:(id *)weights;
- (id)setEspressoNetworkFunction;
- (int)_executeEspressoPlan;
- (unint64_t)numWeightsInBuffer:(id *)buffer;
- (vector<unsigned)_getEspressoBlobShape:(APOdmlEspressoFacade *)self;
- (void)_checkModelOutput:(id)output;
- (void)_preTrainingSetup;
- (void)dealloc;
@end

@implementation APOdmlEspressoFacade

- (APOdmlEspressoFacade)initWithEspressoNetURL:(id)l recipe:(id)recipe error:(id *)error
{
  lCopy = l;
  recipeCopy = recipe;
  v18.receiver = self;
  v18.super_class = APOdmlEspressoFacade;
  v10 = [(APOdmlEspressoFacade *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_recipe, recipe);
    relativePath = [lCopy relativePath];
    uTF8String = [relativePath UTF8String];

    if (![(APOdmlEspressoFacade *)v11 _loadEspressoNet:uTF8String recipe:recipeCopy error:error])
    {
      v16 = 0;
      goto LABEL_6;
    }

    _extractRequiredFeatures = [(APOdmlEspressoFacade *)v11 _extractRequiredFeatures];
    requiredFeatures = v11->_requiredFeatures;
    v11->_requiredFeatures = _extractRequiredFeatures;
  }

  v16 = v11;
LABEL_6:

  return v16;
}

- (BOOL)_loadEspressoNet:(const char *)net recipe:(id)recipe error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  recipeCopy = recipe;
  espresso_create_context();
  plan = espresso_create_plan();
  v9 = malloc_type_malloc(0x10uLL, 0x10800409227ACB4uLL);
  v10 = espresso_plan_add_network();
  if (v10)
  {
    v11 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 = 67109120;
      LODWORD(v21) = v10;
      _os_log_impl(&dword_260ECB000, v11, OS_LOG_TYPE_ERROR, "Failed to add network to plan with status: %d", &v20, 8u);
    }

    v12 = &kAPODMLDESPluginFailedToAddNetworkToPlan;
LABEL_9:

    [(APOdmlEspressoFacade *)self setError:error errorCode:*v12];
    goto LABEL_10;
  }

  v13 = espresso_network_declare_output();
  if (v13)
  {
    v11 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "pTTR";
      v22 = 1024;
      v23 = v13;
      _os_log_impl(&dword_260ECB000, v11, OS_LOG_TYPE_ERROR, "Failed to declare output %s with status: %d", &v20, 0x12u);
    }

    v12 = &kAPODMLDESPluginFailedToDeclarePTTROutput;
    goto LABEL_9;
  }

  lossName = [recipeCopy lossName];
  uTF8String = [lossName UTF8String];

  v18 = espresso_network_declare_output();
  if (!v18)
  {
    self->_espressoNet = v9;
    self->_espressoPlan = plan;
    v14 = 1;
    goto LABEL_11;
  }

  v19 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = 136315394;
    v21 = uTF8String;
    v22 = 1024;
    v23 = v18;
    _os_log_impl(&dword_260ECB000, v19, OS_LOG_TYPE_ERROR, "Failed to declare output %s with status: %d", &v20, 0x12u);
  }

  [(APOdmlEspressoFacade *)self setError:error errorCode:8015];
LABEL_10:
  v14 = 0;
LABEL_11:

  return v14;
}

- (id)_extractRequiredFeatures
{
  array = [MEMORY[0x277CBEB18] array];
  for (i = 0; ; ++i)
  {
    [(APOdmlEspressoFacade *)self espressoNet];
    input_blob_name = espresso_get_input_blob_name();
    if (!input_blob_name)
    {
      break;
    }

    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:input_blob_name];
    [array addObject:v6];
  }

  v7 = [array copy];

  return v7;
}

- (BOOL)changeEspressoBatchSize:(unint64_t)size error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  [(APOdmlEspressoFacade *)self setFinalBatchSize:?];
  requiredFeatures = [(APOdmlEspressoFacade *)self requiredFeatures];
  v8 = [requiredFeatures count];
  sub_260EDCE2C(v30, v8);
  sub_260EDCE2C(v29, v8);
  sub_260EDCE2C(v28, v8);
  sub_260EDCE2C(v27, v8);
  sub_260EDCE2C(v26, v8);
  sub_260EDCE2C(v25, v8);
  v9 = malloc_type_malloc(8 * v8, 0x10040436913F5uLL);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v11 = [requiredFeatures objectAtIndexedSubscript:i];
      v12 = v11;
      v9[i] = [v11 UTF8String];
      objc_msgSend__getEspressoBlobShape_(self);
      v13 = *buf;
      **buf = size;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v20 = 0;
      v21 = 0;
      __p = 0;
      sub_260EDCF28(&__p, v13, v32, (v32 - v13) >> 3);
      nd_shape_to_5d_shape(&__p, &v22);
      if (__p)
      {
        v20 = __p;
        operator delete(__p);
      }

      *(v30[0] + i) = v22;
      *(v29[0] + i) = HIDWORD(v22);
      *(v28[0] + i) = v23;
      *(v27[0] + i) = HIDWORD(v23);
      *(v26[0] + i) = v24;
      *(v25[0] + i) = HIDWORD(v24);
      if (*buf)
      {
        v32 = *buf;
        operator delete(*buf);
      }
    }
  }

  [(APOdmlEspressoFacade *)self espressoNet];
  v17 = v26[0];
  v18 = v25[0];
  v14 = espresso_network_change_input_blob_shapes_seq_rank();
  free(v9);
  if (v14)
  {
    v15 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v14;
      _os_log_impl(&dword_260ECB000, v15, OS_LOG_TYPE_ERROR, "Failed to change input shape with status: %d", buf, 8u);
    }

    [(APOdmlEspressoFacade *)self setError:error errorCode:8016, v17, v18];
  }

  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  if (v27[0])
  {
    v27[1] = v27[0];
    operator delete(v27[0]);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  return v14 == 0;
}

- (vector<unsigned)_getEspressoBlobShape:(APOdmlEspressoFacade *)self
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [(APOdmlEspressoFacade *)self espressoNet];
  [v6 UTF8String];
  espresso_network_query_blob_shape();
  sub_260ECFE10(retstr, 0);

  return result;
}

- (BOOL)finalizeEspressoPipeline:(id *)pipeline
{
  v10 = *MEMORY[0x277D85DE8];
  [(APOdmlEspressoFacade *)self espressoPlan];
  v5 = espresso_plan_build();
  if (v5)
  {
    v6 = v5;
    v7 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67109120;
      v9[1] = v6;
      _os_log_impl(&dword_260ECB000, v7, OS_LOG_TYPE_ERROR, "Build plan failed with status: %d", v9, 8u);
    }

    [(APOdmlEspressoFacade *)self setError:pipeline errorCode:8016];
    return 0;
  }

  else
  {

    return MEMORY[0x2821F9670](self, sel__prepareForTraining_);
  }
}

- (BOOL)_prepareForTraining:(id *)training
{
  v5 = [[APOdmlEspressoIOBufferController alloc] initWithRequiredFeatures:self->_requiredFeatures recipe:self->_recipe];
  bufferController = self->_bufferController;
  self->_bufferController = v5;

  v7 = [(APOdmlEspressoIOBufferController *)self->_bufferController bindBuffersTo:self->_espressoNet error:training];
  setEspressoNetworkFunction = [(APOdmlEspressoFacade *)self setEspressoNetworkFunction];
  [(APOdmlEspressoFacade *)self _setErrorPtr:training toError:setEspressoNetworkFunction];
  if (setEspressoNetworkFunction)
  {
    v7 = 0;
  }

  return v7;
}

- (id)setEspressoNetworkFunction
{
  v16 = *MEMORY[0x277D85DE8];
  [(APOdmlEspressoFacade *)self espressoNet];
  recipe = [(APOdmlEspressoFacade *)self recipe];
  functionInitName = [recipe functionInitName];
  [functionInitName UTF8String];
  v5 = espresso_network_set_function_name();

  if (v5)
  {
    v6 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v14 = 67109120;
      v15 = v5;
      _os_log_impl(&dword_260ECB000, v6, OS_LOG_TYPE_ERROR, "Failed to set subnetwork function name with status: %d", &v14, 8u);
    }

    v7 = &kAPODMLDESPluginSubnetworkNameFail;
LABEL_13:

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APODMLDESPluginErrorDomain" code:*v7 userInfo:0];
    goto LABEL_14;
  }

  [(APOdmlEspressoFacade *)self espressoPlan];
  v8 = espresso_plan_execute_sync();
  if (v8)
  {
    v9 = v8;
    v6 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v14 = 67109120;
      v15 = v9;
      _os_log_impl(&dword_260ECB000, v6, OS_LOG_TYPE_ERROR, "Failed to execute sync with status: %d", &v14, 8u);
    }

    v7 = &kAPODMLDESPluginExecuteSyncFail;
    goto LABEL_13;
  }

  [(APOdmlEspressoFacade *)self espressoNet];
  get_main_function_name();
  v10 = espresso_network_set_function_name();
  if (v10)
  {
    v11 = v10;
    v6 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v14 = 67109120;
      v15 = v11;
      _os_log_impl(&dword_260ECB000, v6, OS_LOG_TYPE_ERROR, "Failed to set main function name with status: %d", &v14, 8u);
    }

    v7 = &kAPODMLDESPluginMainFunctionNameFail;
    goto LABEL_13;
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (id)retrieveWeights:(id *)weights
{
  v4 = 0;
  v5 = 0;
  v49 = *MEMORY[0x277D85DE8];
  while (1)
  {
    recipe = [(APOdmlEspressoFacade *)self recipe];
    weightNames = [recipe weightNames];
    v8 = v4 < [weightNames count];

    if (!v8)
    {
      break;
    }

    recipe2 = [(APOdmlEspressoFacade *)self recipe];
    weightNames2 = [recipe2 weightNames];
    v11 = [weightNames2 objectAtIndexedSubscript:v4];
    v12 = v11;
    uTF8String = [v11 UTF8String];
    v14 = strlen(uTF8String);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_260EDCE14();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v46 = v14;
    if (v14)
    {
      memmove(__dst, uTF8String, v14);
    }

    *(__dst + v15) = 0;

    v16 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      bufferController = [(APOdmlEspressoFacade *)self bufferController];
      weightBuffers = [bufferController weightBuffers];
      v19 = [weightBuffers objectAtIndexedSubscript:v4];
      print_espresso_buffer(__dst, [v19 bufferPointer], &__p);
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v48 = p_p;
      _os_log_impl(&dword_260ECB000, v16, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    bufferController2 = [(APOdmlEspressoFacade *)self bufferController];
    weightBuffers2 = [bufferController2 weightBuffers];
    v23 = [weightBuffers2 objectAtIndexedSubscript:v4];
    v24 = -[APOdmlEspressoFacade numWeightsInBuffer:](self, "numWeightsInBuffer:", [v23 bufferPointer]);

    if (v46 < 0)
    {
      operator delete(__dst[0]);
    }

    v5 += v24;
    ++v4;
  }

  if (v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    LODWORD(__p.__r_.__value_.__l.__data_) = 0;
    sub_260EDCFA4(__dst, v5, &__p);
    for (i = 0; ; ++i)
    {
      recipe3 = [(APOdmlEspressoFacade *)self recipe];
      weightNames3 = [recipe3 weightNames];
      v29 = i < [weightNames3 count];

      if (!v29)
      {
        break;
      }

      bufferController3 = [(APOdmlEspressoFacade *)self bufferController];
      weightBuffers3 = [bufferController3 weightBuffers];
      v32 = [weightBuffers3 objectAtIndexedSubscript:i];
      v33 = -[APOdmlEspressoFacade numWeightsInBuffer:](self, "numWeightsInBuffer:", [v32 bufferPointer]);

      if (v33)
      {
        for (j = 0; j != v33; ++j)
        {
          v35 = MEMORY[0x277CCABB0];
          bufferController4 = [(APOdmlEspressoFacade *)self bufferController];
          weightBuffers4 = [bufferController4 weightBuffers];
          v38 = [weightBuffers4 objectAtIndexedSubscript:i];
          LODWORD(v39) = *(*[v38 bufferPointer] + 4 * j);
          v40 = [v35 numberWithFloat:v39];
          [array addObject:v40];
        }
      }
    }

    if (__dst[0])
    {
      __dst[1] = __dst[0];
      operator delete(__dst[0]);
    }
  }

  else
  {
    v41 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__dst[0]) = 0;
      _os_log_impl(&dword_260ECB000, v41, OS_LOG_TYPE_ERROR, "Failed to find any weight.", __dst, 2u);
    }

    [(APOdmlEspressoFacade *)self setError:weights errorCode:8029];
    array = 0;
  }

  return array;
}

- (id)retrieveWeights2D:(id *)d
{
  array = [MEMORY[0x277CBEB18] array];
  for (i = 0; ; ++i)
  {
    recipe = [(APOdmlEspressoFacade *)self recipe];
    weightNames = [recipe weightNames];
    v7 = [weightNames count];

    if (i >= v7)
    {
      break;
    }

    bufferController = [(APOdmlEspressoFacade *)self bufferController];
    weightBuffers = [bufferController weightBuffers];
    v10 = [weightBuffers objectAtIndexedSubscript:i];
    v11 = -[APOdmlEspressoFacade numWeightsInBuffer:](self, "numWeightsInBuffer:", [v10 bufferPointer]);

    array2 = [MEMORY[0x277CBEB18] array];
    if (v11)
    {
      for (j = 0; j != v11; ++j)
      {
        v14 = MEMORY[0x277CCABB0];
        bufferController2 = [(APOdmlEspressoFacade *)self bufferController];
        weightBuffers2 = [bufferController2 weightBuffers];
        v17 = [weightBuffers2 objectAtIndexedSubscript:i];
        LODWORD(v18) = *(*[v17 bufferPointer] + 4 * j);
        v19 = [v14 numberWithFloat:v18];
        [array2 addObject:v19];
      }
    }

    [array addObject:array2];
  }

  return array;
}

- (unint64_t)numWeightsInBuffer:(id *)buffer
{
  bufferController = [(APOdmlEspressoFacade *)self bufferController];
  v4 = bufferController;
  if (bufferController)
  {
    objc_msgSend_getEspressoBufferShape_(bufferController);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v5 = v13 - v12;
  if (v13 != v12)
  {
    v6 = *v12;
    if ((v5 >> 3) >= 2 && *(v13 - 1) >= 2)
    {
      v7 = (v5 >> 3) - 1;
      v8 = v12 + 1;
      do
      {
        v10 = *v8++;
        v9 = v10;
        if (v10 <= 1)
        {
          v9 = 1;
        }

        v6 *= v9;
        --v7;
      }

      while (v7);
    }

    goto LABEL_13;
  }

  v6 = 0;
  if (v13)
  {
LABEL_13:
    operator delete(v12);
  }

  return v6;
}

- (id)computeClientPttr:(id)pttr error:(id *)error
{
  pttrCopy = pttr;
  bufferController = [(APOdmlEspressoFacade *)self bufferController];
  **[bufferController isTraining] = 0;

  bufferController2 = [(APOdmlEspressoFacade *)self bufferController];
  v9 = [pttrCopy copy];
  LOBYTE(error) = [bufferController2 setInputData:v9 batchSize:1 network:-[APOdmlEspressoFacade espressoNet](self reportMissingFeature:"espressoNet") error:{0, error}];

  if (error)
  {
    [(APOdmlEspressoFacade *)self espressoPlan];
    espresso_plan_execute_sync();
    bufferController3 = [(APOdmlEspressoFacade *)self bufferController];
    v11 = *[bufferController3 pTTR];

    LODWORD(v12) = *v11;
    v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
    [(APOdmlEspressoFacade *)self _checkModelOutput:v13];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_checkModelOutput:(id)output
{
  v41 = *MEMORY[0x277D85DE8];
  outputCopy = output;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setValue:@"modelOutput" forKey:@"featureName"];
  if (outputCopy)
  {
    stringValue = [outputCopy stringValue];
    [dictionary setValue:stringValue forKey:@"featureValue"];

    recipe = [(APOdmlEspressoFacade *)self recipe];
    v31 = [recipe rangeBoundaryForOutput:0];

    recipe2 = [(APOdmlEspressoFacade *)self recipe];
    v33 = [recipe2 rangeBoundaryForOutput:1];

    if (v31)
    {
      [outputCopy floatValue];
      v8 = v7;
      [v31 floatValue];
      if (v8 < v9)
      {
        v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APODMLDESPluginErrorDomain" code:8040 userInfo:0];
        v11 = [dictionary copy];
        [APOdmlAnalyticsModelTraining sendEvent:v10 additionalDetails:v11];
      }
    }

    if (v33)
    {
      [outputCopy floatValue];
      v13 = v12;
      [v33 floatValue];
      if (v13 > v14)
      {
        v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APODMLDESPluginErrorDomain" code:8039 userInfo:0];
        v16 = [dictionary copy];
        [APOdmlAnalyticsModelTraining sendEvent:v15 additionalDetails:v16];
      }
    }

    recipe3 = [(APOdmlEspressoFacade *)self recipe];
    sentinelValuesForOutput = [recipe3 sentinelValuesForOutput];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = sentinelValuesForOutput;
    v20 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v20)
    {
      v21 = *v37;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v36 + 1) + 8 * i);
          [outputCopy floatValue];
          v25 = v24;
          [v23 floatValue];
          if (v25 == v26)
          {
            v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APODMLDESPluginErrorDomain" code:8041 userInfo:0];
            v28 = [dictionary copy];
            [APOdmlAnalyticsModelTraining sendEvent:v27 additionalDetails:v28];
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APODMLDESPluginErrorDomain" code:8041 userInfo:0];
    v30 = [dictionary copy];
    [APOdmlAnalyticsModelTraining sendEvent:v29 additionalDetails:v30];
  }
}

- (id)computeAccuracyAndLoss:(id)loss error:(id *)error
{
  v33[2] = *MEMORY[0x277D85DE8];
  lossCopy = loss;
  bufferController = [(APOdmlEspressoFacade *)self bufferController];
  **[bufferController isTraining] = 0;

  finalBatchSize = [(APOdmlEspressoFacade *)self finalBatchSize];
  v9 = [lossCopy count];
  v11 = 0.0;
  v12 = 0.0;
  v32 = v9 / finalBatchSize;
  if (finalBatchSize > v9)
  {
LABEL_12:
    *&v10 = v12 / v32;
    v26 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
    v33[0] = v26;
    *&v27 = v11 / v32;
    v28 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
    v33[1] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  }

  else
  {
    v13 = 0;
    v14 = 0;
    if (finalBatchSize <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = finalBatchSize;
    }

    v31 = v15;
    while (1)
    {
      array = [MEMORY[0x277CBEB18] array];
      v17 = v13;
      v18 = v31;
      do
      {
        v19 = [lossCopy objectAtIndexedSubscript:v17];
        [array addObject:v19];

        ++v17;
        --v18;
      }

      while (v18);
      bufferController2 = [(APOdmlEspressoFacade *)self bufferController];
      v21 = [array copy];
      v22 = [bufferController2 setInputData:v21 batchSize:finalBatchSize network:-[APOdmlEspressoFacade espressoNet](self reportMissingFeature:"espressoNet") error:{0, error}];

      if ((v22 & 1) == 0)
      {
        break;
      }

      [(APOdmlEspressoFacade *)self espressoPlan];
      espresso_plan_execute_sync();
      [(APOdmlEspressoFacade *)self accuracyInBatchWithError:error];
      v24 = v23;
      if (error)
      {
        if (*error)
        {
          break;
        }
      }

      bufferController3 = [(APOdmlEspressoFacade *)self bufferController];
      v12 = v12 + v24;
      v11 = v11 + **[bufferController3 loss];

      ++v14;
      v13 += finalBatchSize;
      if (v14 >= v32)
      {
        goto LABEL_12;
      }
    }

    v29 = 0;
  }

  return v29;
}

- (float)accuracyInBatchWithError:(id *)error
{
  bufferController = [(APOdmlEspressoFacade *)self bufferController];
  bufferController2 = [(APOdmlEspressoFacade *)self bufferController];
  [bufferController2 pTTR];
  if (bufferController)
  {
    objc_msgSend_getEspressoBufferShape_(bufferController);
  }

  else
  {
    __p = 0;
    v31 = 0;
  }

  bufferController3 = [(APOdmlEspressoFacade *)self bufferController];
  inputBuffers = [bufferController3 inputBuffers];
  v9 = [inputBuffers objectForKeyedSubscript:@"Tapped"];

  if (!v9)
  {
    bufferController4 = [(APOdmlEspressoFacade *)self bufferController];
    inputBuffers2 = [bufferController4 inputBuffers];
    v9 = [inputBuffers2 objectForKeyedSubscript:@"Tap"];
  }

  bufferPointer = [v9 bufferPointer];
  if (bufferPointer)
  {
    v13 = 0.0;
    if ((v31 - __p) >= 9)
    {
      v14 = *__p;
      if (*__p)
      {
        v15 = 0;
        v16 = 0;
        v17 = __p[1];
        do
        {
          bufferController5 = [(APOdmlEspressoFacade *)self bufferController];
          v19 = (*[bufferController5 pTTR] + 4 * v15 * v17);

          if (v17 >= 2)
          {
            v21 = v19 + 1;
            v22 = *v19;
            v23 = 4 * v17 - 4;
            v20 = v19;
            v24 = v19 + 1;
            do
            {
              v25 = *v24++;
              v26 = v25;
              if (v22 < v25)
              {
                v22 = v26;
                v20 = v21;
              }

              v21 = v24;
              v23 -= 4;
            }

            while (v23);
          }

          else
          {
            v20 = v19;
          }

          if (((v20 - v19) >> 2) == llroundf(*(*bufferPointer + 4 * v15)))
          {
            ++v16;
          }

          ++v15;
        }

        while (v15 != v14);
        v27 = v16;
      }

      else
      {
        v27 = 0.0;
      }

      v13 = v27 / v14;
    }
  }

  else
  {
    v28 = [MEMORY[0x277CCA9B8] errorForFeatureNotBinded:@"Tapped"];
    [(APOdmlEspressoFacade *)self _setErrorPtr:error toError:v28];

    v13 = 0.0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v13;
}

- (BOOL)trainWithTrainingSet:(id)set error:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  setCopy = set;
  v5 = [setCopy countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v5)
  {
    v6 = *v46;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v46 != v6)
        {
          objc_enumerationMutation(setCopy);
        }

        [APOdmlLogUtility logTrainingRowFeatures:*(*(&v45 + 1) + 8 * i)];
      }

      v5 = [setCopy countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v5);
  }

  [(APOdmlEspressoFacade *)self _preTrainingSetup];
  finalBatchSize = [(APOdmlEspressoFacade *)self finalBatchSize];
  v38 = [setCopy count];
  recipe = [(APOdmlEspressoFacade *)self recipe];
  localIterationsCount = [recipe localIterationsCount];
  unsignedIntegerValue = [localIterationsCount unsignedIntegerValue];

  v10 = [setCopy mutableCopy];
  [APOdmlLogUtility printDESRecordRowOrder:v10 iterationNumber:&unk_28736F200];
  if (unsignedIntegerValue)
  {
    v37 = 0;
    v39 = 0;
    v35 = 8027;
    if (finalBatchSize <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = finalBatchSize;
    }

    v41 = v11;
    v12 = 1;
    while (1)
    {
      recipe2 = [(APOdmlEspressoFacade *)self recipe];
      shouldShuffle = [recipe2 shouldShuffle];
      bOOLValue = [shouldShuffle BOOLValue];

      if (bOOLValue)
      {
        [v10 shuffle];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v39];
        [APOdmlLogUtility printDESRecordRowOrder:v10 iterationNumber:v16];
      }

      if (finalBatchSize <= v38)
      {
        break;
      }

      v17 = v12;
LABEL_33:
      v12 = v17;
      v37 = ++v39 >= unsignedIntegerValue;
      if (v39 == unsignedIntegerValue)
      {
        goto LABEL_34;
      }
    }

    v18 = 0;
    v19 = 0;
    v21 = __ROR8__(0xCCCCCCCCCCCCCCCDLL * v39, 1) < 0x199999999999999AuLL || v39 == unsignedIntegerValue - 1;
    v40 = v21;
    while (1)
    {
      array = [MEMORY[0x277CBEB18] array];
      v23 = v18;
      v24 = v41;
      do
      {
        v25 = [v10 objectAtIndexedSubscript:v23];
        [array addObject:v25];

        ++v23;
        --v24;
      }

      while (v24);
      bufferController = [(APOdmlEspressoFacade *)self bufferController];
      v27 = [array copy];
      v28 = [bufferController setInputData:v27 batchSize:finalBatchSize network:-[APOdmlEspressoFacade espressoNet](self reportMissingFeature:"espressoNet") error:{v12 & 1, error}];

      if ((v28 & 1) == 0)
      {
        break;
      }

      _executeEspressoPlan = [(APOdmlEspressoFacade *)self _executeEspressoPlan];
      if (_executeEspressoPlan)
      {
        v33 = OdmlLogForCategory(0xBuLL);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v50 = v39;
          v51 = 1024;
          LODWORD(v52) = _executeEspressoPlan;
          _os_log_impl(&dword_260ECB000, v33, OS_LOG_TYPE_ERROR, "Failed to execute espresso plan for iter %zu due to %d.", buf, 0x12u);
        }

        [(APOdmlEspressoFacade *)self setError:error errorCode:v35];
        break;
      }

      [(APOdmlEspressoFacade *)self _retrieveLossValue];
      if (v40)
      {
        v31 = v30;
        v32 = OdmlLogForCategory(0xBuLL);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v50 = v39;
          v51 = 2048;
          v52 = v19;
          v53 = 2048;
          v54 = v31;
          _os_log_impl(&dword_260ECB000, v32, OS_LOG_TYPE_DEFAULT, "iter %04lu batch_num %04lu:\t loss = %f\n", buf, 0x20u);
        }
      }

      LOBYTE(v12) = 0;
      v17 = 0;
      ++v19;
      v18 += finalBatchSize;
      if (v19 >= v38 / finalBatchSize)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
LABEL_34:
    v37 = 1;
  }

  return v37;
}

- (float)_retrieveLossValue
{
  bufferController = [(APOdmlEspressoFacade *)self bufferController];
  v3 = **[bufferController loss];

  return v3;
}

- (void)_preTrainingSetup
{
  recipe = [(APOdmlEspressoFacade *)self recipe];
  learningRate = [recipe learningRate];
  [learningRate floatValue];
  v5 = v4;
  bufferController = [(APOdmlEspressoFacade *)self bufferController];
  **[bufferController learningRate] = v5;

  bufferController2 = [(APOdmlEspressoFacade *)self bufferController];
  **[bufferController2 isTraining] = 1065353216;
}

- (int)_executeEspressoPlan
{
  [(APOdmlEspressoFacade *)self espressoPlan];

  return espresso_plan_execute_sync();
}

- (BOOL)setError:(id *)error errorCode:(int64_t)code
{
  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"APODMLDESPluginErrorDomain" code:code userInfo:0];
  }

  return error != 0;
}

- (BOOL)_setErrorPtr:(id *)ptr toError:(id)error
{
  if (ptr)
  {
    *ptr = error;
  }

  return ptr != 0;
}

- (void)dealloc
{
  [(APOdmlEspressoFacade *)self espressoPlan];
  espresso_plan_destroy();
  free([(APOdmlEspressoFacade *)self espressoNet]);
  v3.receiver = self;
  v3.super_class = APOdmlEspressoFacade;
  [(APOdmlEspressoFacade *)&v3 dealloc];
}

@end