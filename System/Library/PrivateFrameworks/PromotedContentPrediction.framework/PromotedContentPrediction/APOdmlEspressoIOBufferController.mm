@interface APOdmlEspressoIOBufferController
- (APOdmlEspressoIOBufferController)initWithRequiredFeatures:(id)features recipe:(id)recipe;
- (BOOL)_bindBuffer:(id *)buffer espressoNet:(id *)net bufferName:(id)name bufferType:(int)type;
- (BOOL)_setError:(id *)error errorCode:(int64_t)code;
- (BOOL)_setErrorPtr:(id *)ptr toError:(id)error;
- (BOOL)bindBuffersTo:(id *)to error:(id *)error;
- (BOOL)imputeFeature:(id)feature network:(id *)network offsetIndex:(unint64_t)index error:(id *)error;
- (BOOL)setFeatureDataForRow:(id)row offsetIndex:(unint64_t)index featureName:(id)name error:(id *)error;
- (BOOL)setInputData:(id)data batchSize:(unint64_t)size network:(id *)network reportMissingFeature:(BOOL)feature error:(id *)error;
- (void)dealloc;
- (void)reportMissingFeatureError:(id)error;
@end

@implementation APOdmlEspressoIOBufferController

- (APOdmlEspressoIOBufferController)initWithRequiredFeatures:(id)features recipe:(id)recipe
{
  v31 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  recipeCopy = recipe;
  v29.receiver = self;
  v29.super_class = APOdmlEspressoIOBufferController;
  v6 = [(APOdmlEspressoIOBufferController *)&v29 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recipe, recipe);
    v7->_pTTR = malloc_type_malloc(0xA8uLL, 0x10800403DA0D3ADuLL);
    v7->_loss = malloc_type_malloc(0xA8uLL, 0x10800403DA0D3ADuLL);
    v7->_isTraining = malloc_type_malloc(0xA8uLL, 0x10800403DA0D3ADuLL);
    v7->_learningRate = malloc_type_malloc(0xA8uLL, 0x10800403DA0D3ADuLL);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = featuresCopy;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v10)
    {
      v11 = *v26;
      do
      {
        v12 = 0;
        do
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v25 + 1) + 8 * v12);
          v14 = [MEMORY[0x277CCAE60] valueWithPointer:{malloc_type_malloc(0xA8uLL, 0x10800403DA0D3ADuLL)}];
          [dictionary setObject:v14 forKeyedSubscript:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v10);
    }

    objc_storeStrong(&v7->_inputBuffers, dictionary);
    array = [MEMORY[0x277CBEB18] array];
    for (i = 0; ; ++i)
    {
      recipe = [(APOdmlEspressoIOBufferController *)v7 recipe];
      weightNames = [recipe weightNames];
      v19 = i < [weightNames count];

      if (!v19)
      {
        break;
      }

      v20 = [MEMORY[0x277CCAE60] valueWithPointer:{malloc_type_malloc(0xA8uLL, 0x10800403DA0D3ADuLL)}];
      [(NSArray *)array addObject:v20];
    }

    weightBuffers = v7->_weightBuffers;
    v7->_weightBuffers = array;
  }

  return v7;
}

- (BOOL)bindBuffersTo:(id *)to error:(id *)error
{
  errorCopy = error;
  v5 = 0;
  v46 = *MEMORY[0x277D85DE8];
  while (1)
  {
    recipe = [(APOdmlEspressoIOBufferController *)self recipe];
    weightNames = [recipe weightNames];
    v8 = [weightNames count];

    if (v5 >= v8)
    {
      break;
    }

    recipe2 = [(APOdmlEspressoIOBufferController *)self recipe];
    weightNames2 = [recipe2 weightNames];
    v11 = [weightNames2 objectAtIndexedSubscript:v5];
    [v11 UTF8String];
    weightBuffers = [(APOdmlEspressoIOBufferController *)self weightBuffers];
    v13 = [weightBuffers objectAtIndexedSubscript:v5];
    [v13 bufferPointer];
    v14 = espresso_network_bind_buffer_to_global();

    ++v5;
    if (v14)
    {
      v15 = OdmlLogForCategory(0xBuLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v45 = v14;
        _os_log_impl(&dword_260ECB000, v15, OS_LOG_TYPE_ERROR, "Failed initialize weights with status: %d", buf, 8u);
      }

      if (errorCopy)
      {
        v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APODMLDESPluginErrorDomain" code:8025 userInfo:0];
        v17 = v16;
        result = 0;
        *errorCopy = v16;
        return result;
      }

      return 0;
    }
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  inputBuffers = [(APOdmlEspressoIOBufferController *)self inputBuffers];
  v20 = [inputBuffers countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v20)
  {
    v21 = *v40;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v40 != v21)
        {
          objc_enumerationMutation(inputBuffers);
        }

        v23 = *(*(&v39 + 1) + 8 * i);
        inputBuffers2 = [(APOdmlEspressoIOBufferController *)self inputBuffers];
        v25 = [inputBuffers2 objectForKeyedSubscript:v23];
        bufferPointer = [v25 bufferPointer];

        if (![(APOdmlEspressoIOBufferController *)self _bindBuffer:bufferPointer espressoNet:to bufferName:v23 bufferType:0])
        {
          v36 = [MEMORY[0x277CCA9B8] errorForFeatureNotBinded:v23];
          [(APOdmlEspressoIOBufferController *)self _setErrorPtr:errorCopy toError:v36];

          return 0;
        }
      }

      v20 = [inputBuffers countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  if ([(APOdmlEspressoIOBufferController *)self _bindBuffer:[(APOdmlEspressoIOBufferController *)self pTTR] espressoNet:to bufferName:@"pTTR" bufferType:1])
  {
    loss = [(APOdmlEspressoIOBufferController *)self loss];
    recipe3 = [(APOdmlEspressoIOBufferController *)self recipe];
    lossName = [recipe3 lossName];
    LOBYTE(loss) = [(APOdmlEspressoIOBufferController *)self _bindBuffer:loss espressoNet:to bufferName:lossName bufferType:1];

    if (loss)
    {
      isTraining = [(APOdmlEspressoIOBufferController *)self isTraining];
      recipe4 = [(APOdmlEspressoIOBufferController *)self recipe];
      isTrainingName = [recipe4 isTrainingName];
      LOBYTE(isTraining) = [(APOdmlEspressoIOBufferController *)self _bindBuffer:isTraining espressoNet:to bufferName:isTrainingName bufferType:2];

      if (isTraining)
      {
        learningRate = [(APOdmlEspressoIOBufferController *)self learningRate];
        recipe5 = [(APOdmlEspressoIOBufferController *)self recipe];
        learningRateName = [recipe5 learningRateName];
        LOBYTE(learningRate) = [(APOdmlEspressoIOBufferController *)self _bindBuffer:learningRate espressoNet:to bufferName:learningRateName bufferType:2];

        if (learningRate)
        {
          return 1;
        }

        [(APOdmlEspressoIOBufferController *)self _setError:errorCopy errorCode:8024];
      }

      else
      {
        [(APOdmlEspressoIOBufferController *)self _setError:errorCopy errorCode:8023];
      }
    }

    else
    {
      [(APOdmlEspressoIOBufferController *)self _setError:errorCopy errorCode:8022];
    }
  }

  else
  {
    [(APOdmlEspressoIOBufferController *)self _setError:errorCopy errorCode:8021];
  }

  return 0;
}

- (BOOL)_bindBuffer:(id *)buffer espressoNet:(id *)net bufferName:(id)name bufferType:(int)type
{
  nameCopy = name;
  [nameCopy UTF8String];
  if (type < 2)
  {
    v8 = espresso_network_bind_buffer();
  }

  else if (type == 2)
  {
    v8 = espresso_network_bind_buffer_to_global();
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 == 0;

  return v9;
}

- (BOOL)setInputData:(id)data batchSize:(unint64_t)size network:(id *)network reportMissingFeature:(BOOL)feature error:(id *)error
{
  featureCopy = feature;
  v35 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  sizeCopy = size;
  if (size)
  {
    v25 = 0;
    v10 = 0;
    v11 = 0uLL;
    do
    {
      v32 = v11;
      v33 = v11;
      v30 = v11;
      v31 = v11;
      inputBuffers = [(APOdmlEspressoIOBufferController *)self inputBuffers];
      obj = inputBuffers;
      v13 = [inputBuffers countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v13)
      {
        v14 = *v31;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v31 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v30 + 1) + 8 * i);
            v17 = [dataCopy objectAtIndexedSubscript:v10];
            features = [v17 features];
            v19 = [features objectForKey:v16];
            v20 = v19 == 0;

            if (v20)
            {
              if (featureCopy)
              {
                [(APOdmlEspressoIOBufferController *)self reportMissingFeatureError:v16];
              }

              if (![(APOdmlEspressoIOBufferController *)self imputeFeature:v16 network:network offsetIndex:v10 error:error])
              {
LABEL_18:

                goto LABEL_19;
              }
            }

            else
            {
              v21 = [dataCopy objectAtIndexedSubscript:v10];
              v22 = [(APOdmlEspressoIOBufferController *)self setFeatureDataForRow:v21 offsetIndex:v10 featureName:v16 error:error];

              if (!v22)
              {
                goto LABEL_18;
              }
            }
          }

          inputBuffers = obj;
          v13 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v25 = ++v10 >= sizeCopy;
      v11 = 0uLL;
    }

    while (v10 != sizeCopy);
  }

  v25 = 1;
LABEL_19:

  return v25;
}

- (BOOL)imputeFeature:(id)feature network:(id *)network offsetIndex:(unint64_t)index error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  inputBuffers = [(APOdmlEspressoIOBufferController *)self inputBuffers];
  v11 = [inputBuffers objectForKeyedSubscript:featureCopy];
  bufferPointer = [v11 bufferPointer];

  objc_msgSend_getEspressoBufferShape_(self);
  v13 = *(v20 - 8);
  if (v13)
  {
    v14 = __p;
    v15 = *bufferPointer;
    if (v13 == 1)
    {
      *(v15 + 4 * index) = 2143289344;
    }

    else
    {
      memset_pattern16((v15 + 4 * v13 * index), &unk_260EFB5F0, 4 * v13);
    }

LABEL_9:
    operator delete(v14);
    goto LABEL_10;
  }

  v16 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v22 = featureCopy;
    _os_log_impl(&dword_260ECB000, v16, OS_LOG_TYPE_ERROR, "Unable to resolve feature name %@", buf, 0xCu);
  }

  v17 = [MEMORY[0x277CCA9B8] errorForFeatureNotFound:featureCopy];
  [(APOdmlEspressoIOBufferController *)self _setErrorPtr:error toError:v17];

  v14 = __p;
  if (__p)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v13 != 0;
}

- (BOOL)setFeatureDataForRow:(id)row offsetIndex:(unint64_t)index featureName:(id)name error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  rowCopy = row;
  nameCopy = name;
  features = [rowCopy features];
  v13 = [features objectForKeyedSubscript:nameCopy];
  v14 = [v13 count];

  if (v14)
  {
    inputBuffers = [(APOdmlEspressoIOBufferController *)self inputBuffers];
    v16 = [inputBuffers objectForKeyedSubscript:nameCopy];
    bufferPointer = [v16 bufferPointer];

    objc_msgSend_getEspressoBufferShape_(self);
    v18 = *(v36 - 8);
    v19 = v14 == v18;
    if (v14 == v18)
    {
      if (v14 != 1)
      {
        v28 = 0;
        v29 = 4 * v14 * index;
        do
        {
          features2 = [rowCopy features];
          v31 = [features2 objectForKeyedSubscript:nameCopy];
          v32 = [v31 objectAtIndexedSubscript:v28];

          [v32 floatValue];
          *(*bufferPointer + v29 + 4 * v28) = v33;

          ++v28;
        }

        while (v14 != v28);
LABEL_15:
        if (__p)
        {
          operator delete(__p);
        }

        goto LABEL_17;
      }

      features3 = [rowCopy features];
      v21 = [features3 objectForKeyedSubscript:nameCopy];
      firstObject = [v21 firstObject];

      [firstObject floatValue];
      *(*bufferPointer + 4 * index) = v23;
    }

    else
    {
      v26 = OdmlLogForCategory(0xBuLL);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v38 = nameCopy;
        v39 = 2048;
        v40 = v14;
        v41 = 2048;
        v42 = v18;
        _os_log_impl(&dword_260ECB000, v26, OS_LOG_TYPE_ERROR, "Device has feature %@ with size %lu but model expects size %lu", buf, 0x20u);
      }

      firstObject = [MEMORY[0x277CCA9B8] errorForFeatureShapeMismatch:nameCopy];
      [(APOdmlEspressoIOBufferController *)self _setErrorPtr:error toError:firstObject];
    }

    goto LABEL_15;
  }

  v24 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v38 = nameCopy;
    _os_log_impl(&dword_260ECB000, v24, OS_LOG_TYPE_ERROR, "Unable to resolve feature name %@", buf, 0xCu);
  }

  v25 = [MEMORY[0x277CCA9B8] errorForFeatureNotFound:nameCopy];
  [(APOdmlEspressoIOBufferController *)self _setErrorPtr:error toError:v25];

  v19 = 0;
LABEL_17:

  return v19;
}

- (BOOL)_setError:(id *)error errorCode:(int64_t)code
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

- (void)reportMissingFeatureError:(id)error
{
  errorCopy = error;
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APODMLDESPluginErrorDomain" code:8038 userInfo:0];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setValue:errorCopy forKey:@"featureName"];
  v5 = [dictionary copy];
  [APOdmlAnalyticsModelTraining sendEvent:v3 additionalDetails:v5];
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  free([(APOdmlEspressoIOBufferController *)self pTTR]);
  free([(APOdmlEspressoIOBufferController *)self loss]);
  free([(APOdmlEspressoIOBufferController *)self isTraining]);
  free([(APOdmlEspressoIOBufferController *)self learningRate]);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  weightBuffers = [(APOdmlEspressoIOBufferController *)self weightBuffers];
  v4 = [weightBuffers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(weightBuffers);
        }

        bufferPointer = [*(*(&v12 + 1) + 8 * v6) bufferPointer];
        if (bufferPointer)
        {
          free(bufferPointer);
        }

        else
        {
          v8 = OdmlLogForCategory(0xBuLL);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_260ECB000, v8, OS_LOG_TYPE_ERROR, "Weight buffer is released too early.", buf, 2u);
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [weightBuffers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  inputBuffers = [(APOdmlEspressoIOBufferController *)self inputBuffers];
  [inputBuffers enumerateKeysAndObjectsUsingBlock:&unk_287367660];

  v10.receiver = self;
  v10.super_class = APOdmlEspressoIOBufferController;
  [(APOdmlEspressoIOBufferController *)&v10 dealloc];
}

@end