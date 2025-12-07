@interface CSUImageCaptioningDecoderAXKVCacheE1
- (BOOL)compareTensorShapesForShape1:(const void *)shape1 Shape2:(const void *)shape2;
- (BOOL)loadDecoder:(id *)decoder;
- (BOOL)loadDecoderObj:(id *)obj;
- (BOOL)loadPostProcUtilsWithBeamWidth:(int)width error:(id *)error;
- (BOOL)loadResources:(id *)resources;
- (BOOL)populateInputBuffer:(id)buffer WithError:(id *)error;
- (CSUImageCaptioningDecoderAXKVCacheE1)initWithConfiguration:(id)configuration;
- (ModelOutput)nextTokensForInputs:(SEL)inputs KVCache:(const void *)cache AndforMaskPosition:(const void *)position;
- (id).cxx_construct;
- (id)computeDecodedCaptionsForFeatures:(id)features withDecodingMethod:(int64_t)method runDecoderOnly:(BOOL)only error:(id *)error;
- (id)getCaptionsAfterGreedyDecodingOnEncodedFeatures;
- (id)postProcessResults:(id)results error:(id *)error;
@end

@implementation CSUImageCaptioningDecoderAXKVCacheE1

- (CSUImageCaptioningDecoderAXKVCacheE1)initWithConfiguration:(id)configuration
{
  v30 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v28.receiver = self;
  v28.super_class = CSUImageCaptioningDecoderAXKVCacheE1;
  v10 = [(CSUImageCaptioningDecoderAXKVCacheE1 *)&v28 init];
  if (v10)
  {
    objc_msgSend_supportedComputeDevices(configurationCopy, v6, v7, v8, v9);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v11 = v25 = 0u;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v24, v29, 16);
    if (v14)
    {
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          if (v17)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_setComputeDevice_(configurationCopy, v13, v17, v18, v19, v24);

              objc_storeStrong(&v10->_configuration, configuration);
              v22 = v10;
              goto LABEL_16;
            }
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v24, v29, 16);
      }

      while (v14);
    }

    v21 = sub_1AC090E50(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1AC120118(v21);
    }

    v22 = 0;
LABEL_16:
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)loadPostProcUtilsWithBeamWidth:(int)width error:(id *)error
{
  v5 = *&width;
  v7 = [CSUCaptioningProcUtils alloc];
  v9 = objc_msgSend_initWithDecoderConfiguration_beamWidth_beamScorerType_error_(v7, v8, self->_configuration, v5, 1, error);
  procUtils = self->_procUtils;
  self->_procUtils = v9;

  return self->_procUtils != 0;
}

- (BOOL)loadDecoderObj:(id *)obj
{
  v5 = objc_opt_new();
  decoderNetObj = self->_decoderNetObj;
  self->_decoderNetObj = v5;

  v8 = self->_decoderNetObj;
  configuration = self->_configuration;

  return MEMORY[0x1EEE66B58](v8, sel_loadDecoderNetworkfromConfiguration_error_, configuration, obj, v7);
}

- (BOOL)loadDecoder:(id *)decoder
{
  if (self->_decoderNetObj)
  {
    return 1;
  }

  v18 = 0;
  PostProcUtilsWithBeamWidth_error = objc_msgSend_loadPostProcUtilsWithBeamWidth_error_(self, a2, 3, &v18, v3);
  v8 = v18;
  v12 = v8;
  if ((PostProcUtilsWithBeamWidth_error & 1) == 0)
  {
    if (!decoder)
    {
      v15 = 0;
      goto LABEL_11;
    }

LABEL_10:
    v16 = v12;
    v15 = 0;
    *decoder = v12;
    goto LABEL_11;
  }

  v17 = v8;
  DecoderObj = objc_msgSend_loadDecoderObj_(self, v9, &v17, v10, v11);
  v14 = v17;

  if ((DecoderObj & 1) == 0)
  {
    if (!decoder)
    {
      v15 = 0;
      v12 = v14;
      goto LABEL_11;
    }

    v12 = v14;
    goto LABEL_10;
  }

  v15 = 1;
  v12 = v14;
LABEL_11:

  return v15;
}

- (BOOL)loadResources:(id *)resources
{
  if (self->_decoderNetObj)
  {
    return 1;
  }

  else
  {
    return objc_msgSend_loadDecoder_(self, a2, resources, v3, v4);
  }
}

- (BOOL)compareTensorShapesForShape1:(const void *)shape1 Shape2:(const void *)shape2
{
  v4 = *shape1;
  v5 = *(shape1 + 1) - *shape1;
  if (!v5)
  {
    return 1;
  }

  v6 = v5 >> 3;
  v7 = *shape2;
  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  if (*v4 != *v7)
  {
    return 0;
  }

  v9 = 1;
  do
  {
    v10 = v9;
    if (v8 == v9)
    {
      break;
    }

    v11 = v4[v9];
    v12 = v7[v9++];
  }

  while (v11 == v12);
  return v10 >= v6;
}

- (ModelOutput)nextTokensForInputs:(SEL)inputs KVCache:(const void *)cache AndforMaskPosition:(const void *)position
{
  decoderNetObj = self->_decoderNetObj;
  v11 = a6;
  v23 = 0;
  objc_msgSend_buildNetworkForSequenceLength_error_(decoderNetObj, inputs, a6, &v23, *&a6);
  v15 = v23;
  if (v15)
  {
    objc_msgSend_logInternalError_(CSUError, v12, v15, v13, v14);
    v16 = 0uLL;
    *(&retstr->var1 + 1) = 0u;
  }

  else
  {
    objc_msgSend_copyInputContextIDs_EncoderFeatures_KVCache_MaskPosition_(self->_decoderNetObj, v12, cache, &self->_encodedFeaturesBuffer, position, v11);
    v21 = self->_decoderNetObj;
    if (v21)
    {
      objc_msgSend_predict(v21, v17, v18, v19, v20);
      goto LABEL_6;
    }

    v16 = 0uLL;
    *&retstr->var1.var1 = 0u;
  }

  *&retstr->var0.__begin_ = v16;
  *&retstr->var0.__cap_ = v16;
LABEL_6:

  return result;
}

- (BOOL)populateInputBuffer:(id)buffer WithError:(id *)error
{
  v13[8] = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  if (bufferCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = objc_msgSend_espressoBuffer(bufferCopy, v5, v6, v7, v8);

      LOWORD(v12) = 1;
      sub_1AC06910C(v13, v9);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "The given CSUBuffer is not an instance of CSUEspressoBuffer.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "The given CSUBuffer instance is nil.");
  }

  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

- (id)computeDecodedCaptionsForFeatures:(id)features withDecodingMethod:(int64_t)method runDecoderOnly:(BOOL)only error:(id *)error
{
  featuresCopy = features;
  if ((objc_msgSend_loadResources_(self, v10, error, v11, v12) & 1) != 0 && objc_msgSend_populateInputBuffer_WithError_(self, v13, featuresCopy, error, v14))
  {
    if (method)
    {
      objc_msgSend_getCaptionsAfterBeamSearchDecodingOnEncodedFeatures(self, v15, v16, v17, v18);
    }

    else
    {
      objc_msgSend_getCaptionsAfterGreedyDecodingOnEncodedFeatures(self, v15, v16, v17, v18);
    }
    v19 = ;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)getCaptionsAfterGreedyDecodingOnEncodedFeatures
{
  v2 = sub_1AC090E50(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1AC12015C(v2);
  }

  return 0;
}

- (id)postProcessResults:(id)results error:(id *)error
{
  resultsCopy = results;
  v11 = objc_msgSend_postProcessingHandler(self->_procUtils, v7, v8, v9, v10);

  if (v11)
  {
    v17 = objc_msgSend_postProcessingHandler(self->_procUtils, v13, v14, v15, v16);
    v22 = objc_msgSend_genderOptionForBeamSearch(self->_procUtils, v18, v19, v20, v21);
    v24 = objc_msgSend_postProcessResults_genderOption_error_(v17, v23, resultsCopy, v22, error);
  }

  else
  {
    v25 = sub_1AC090E50(v12);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_1AC1201A0(v25);
    }

    v24 = resultsCopy;
  }

  return v24;
}

- (id).cxx_construct
{
  *(self + 4) = 4;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 7) = 0;
  *(self + 1) = &unk_1F20D0320;
  return self;
}

@end