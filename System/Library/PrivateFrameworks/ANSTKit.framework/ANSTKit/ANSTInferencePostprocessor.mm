@interface ANSTInferencePostprocessor
+ (id)new;
- (ANSTInferencePostprocessor)init;
- (ANSTInferencePostprocessor)initWithInferenceInputDescriptors:(id)descriptors inferenceOutputDescriptors:(id)outputDescriptors processedOutputDescriptors:(id)processedOutputDescriptors error:(id *)error;
- (BOOL)_validateDescriptor:(id)descriptor usingAllowedDescriptors:(id)descriptors withError:(id *)error;
- (BOOL)_validatePixelBuffer:(id)buffer forDescriptor:(id)descriptor usingAllowedDescriptors:(id)descriptors withError:(id *)error;
- (BOOL)_validateTensorData:(id)data forDescriptor:(id)descriptor usingAllowedDescriptors:(id)descriptors withError:(id *)error;
- (BOOL)bindInputsToNetwork:(id)network error:(id *)error;
- (BOOL)processWithError:(id *)error;
- (BOOL)resetWithError:(id *)error;
- (BOOL)setInputPixelBuffer:(id)buffer forInferenceInputDescriptor:(id)descriptor withError:(id *)error;
- (BOOL)setInputPixelBuffer:(id)buffer forInferenceOutputDescriptor:(id)descriptor withError:(id *)error;
- (BOOL)setInputTensorData:(id)data forInferenceInputDescriptor:(id)descriptor withError:(id *)error;
- (BOOL)setInputTensorData:(id)data forInferenceOutputDescriptor:(id)descriptor withError:(id *)error;
- (BOOL)setOutputPixelBuffer:(id)buffer forProcessedOutputDescriptor:(id)descriptor withError:(id *)error;
- (BOOL)setOutputTensorData:(id)data forProcessedOutputDescriptor:(id)descriptor withError:(id *)error;
- (NSArray)inferenceInputPixelBufferDescriptors;
- (NSArray)inferenceInputTensorDescriptors;
- (NSArray)inferenceOutputPixelBufferDescriptors;
- (NSArray)inferenceOutputTensorDescriptors;
- (NSArray)processedOutputPixelBufferDescriptors;
- (NSArray)processedOutputTensorDescriptors;
@end

@implementation ANSTInferencePostprocessor

- (ANSTInferencePostprocessor)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTInferencePostprocessor)initWithInferenceInputDescriptors:(id)descriptors inferenceOutputDescriptors:(id)outputDescriptors processedOutputDescriptors:(id)processedOutputDescriptors error:(id *)error
{
  descriptorsCopy = descriptors;
  outputDescriptorsCopy = outputDescriptors;
  processedOutputDescriptorsCopy = processedOutputDescriptors;
  v34.receiver = self;
  v34.super_class = ANSTInferencePostprocessor;
  v14 = [(ANSTInferencePostprocessor *)&v34 init];
  if (v14)
  {
    v15 = objc_msgSend_copy(descriptorsCopy, v12, v13);
    inferenceInputDescriptors = v14->_inferenceInputDescriptors;
    v14->_inferenceInputDescriptors = v15;

    v19 = objc_msgSend_copy(outputDescriptorsCopy, v17, v18);
    inferenceOutputDescriptors = v14->_inferenceOutputDescriptors;
    v14->_inferenceOutputDescriptors = v19;

    v23 = objc_msgSend_copy(processedOutputDescriptorsCopy, v21, v22);
    processedOutputDescriptors = v14->_processedOutputDescriptors;
    v14->_processedOutputDescriptors = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    inputTensorData = v14->_inputTensorData;
    v14->_inputTensorData = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
    inputPixelBuffers = v14->_inputPixelBuffers;
    v14->_inputPixelBuffers = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    outputTensorData = v14->_outputTensorData;
    v14->_outputTensorData = v29;

    v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
    outputPixelBuffers = v14->_outputPixelBuffers;
    v14->_outputPixelBuffers = v31;
  }

  return v14;
}

- (BOOL)_validateDescriptor:(id)descriptor usingAllowedDescriptors:(id)descriptors withError:(id *)error
{
  v23[2] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  descriptorsCopy = descriptors;
  v11 = objc_msgSend_name(descriptorCopy, v9, v10);
  v14 = v11;
  if (!v11 || !objc_msgSend_length(v11, v12, v13))
  {
    if (!error)
    {
      goto LABEL_10;
    }

    v16 = MEMORY[0x277CCA9B8];
    v22[0] = *MEMORY[0x277CCA068];
    v22[1] = @"ANSTDescriptor";
    v23[0] = @"Descriptor name should not be empty.";
    v23[1] = descriptorCopy;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v23, v22, 2);
    v17 = LABEL_9:;
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v16, v18, @"ANSTErrorDomain", 10, v17);

    LOBYTE(error) = 0;
    goto LABEL_10;
  }

  if ((objc_msgSend_containsObject_(descriptorsCopy, v12, descriptorCopy) & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_10;
    }

    v16 = MEMORY[0x277CCA9B8];
    v20[0] = *MEMORY[0x277CCA068];
    v20[1] = @"ANSTDescriptor";
    v21[0] = @"Unrecognized descriptor is not allowed.";
    v21[1] = descriptorCopy;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v21, v20, 2);
    goto LABEL_9;
  }

  LOBYTE(error) = 1;
LABEL_10:

  return error;
}

- (BOOL)_validateTensorData:(id)data forDescriptor:(id)descriptor usingAllowedDescriptors:(id)descriptors withError:(id *)error
{
  v24[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  descriptorCopy = descriptor;
  if (!objc_msgSend__validateDescriptor_usingAllowedDescriptors_withError_(self, v12, descriptorCopy, descriptors, error))
  {
    goto LABEL_7;
  }

  if (dataCopy)
  {
    v15 = objc_msgSend_tensorDescriptor(dataCopy, v13, v14);
    isEqual = objc_msgSend_isEqual_(v15, v16, descriptorCopy);

    if ((isEqual & 1) == 0)
    {
      if (!error)
      {
        goto LABEL_8;
      }

      v19 = MEMORY[0x277CCA9B8];
      v23[0] = *MEMORY[0x277CCA068];
      v23[1] = @"ANSTDescriptor";
      v24[0] = @"Tensor does not match its designated descriptor.";
      v24[1] = descriptorCopy;
      v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v24, v23, 2);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v19, v21, @"ANSTErrorDomain", 11, v20);

LABEL_7:
      LOBYTE(error) = 0;
      goto LABEL_8;
    }
  }

  LOBYTE(error) = 1;
LABEL_8:

  return error;
}

- (BOOL)_validatePixelBuffer:(id)buffer forDescriptor:(id)descriptor usingAllowedDescriptors:(id)descriptors withError:(id *)error
{
  v24[2] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  descriptorCopy = descriptor;
  if (!objc_msgSend__validateDescriptor_usingAllowedDescriptors_withError_(self, v12, descriptorCopy, descriptors, error))
  {
    goto LABEL_7;
  }

  if (bufferCopy)
  {
    v15 = objc_msgSend_pixelBufferDescriptor(bufferCopy, v13, v14);
    isEqual = objc_msgSend_isEqual_(v15, v16, descriptorCopy);

    if ((isEqual & 1) == 0)
    {
      if (!error)
      {
        goto LABEL_8;
      }

      v19 = MEMORY[0x277CCA9B8];
      v23[0] = *MEMORY[0x277CCA068];
      v23[1] = @"ANSTDescriptor";
      v24[0] = @"Pixel buffer does not match its designated descriptor.";
      v24[1] = descriptorCopy;
      v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v24, v23, 2);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v19, v21, @"ANSTErrorDomain", 13, v20);

LABEL_7:
      LOBYTE(error) = 0;
      goto LABEL_8;
    }
  }

  LOBYTE(error) = 1;
LABEL_8:

  return error;
}

- (BOOL)setInputTensorData:(id)data forInferenceInputDescriptor:(id)descriptor withError:(id *)error
{
  dataCopy = data;
  descriptorCopy = descriptor;
  v12 = objc_msgSend_inferenceInputTensorDescriptors(self, v10, v11);
  v14 = objc_msgSend__validateTensorData_forDescriptor_usingAllowedDescriptors_withError_(self, v13, dataCopy, descriptorCopy, v12, error);

  if (v14)
  {
    inputTensorData = self->_inputTensorData;
    v18 = objc_msgSend_name(descriptorCopy, v15, v16);
    objc_msgSend_setObject_forKeyedSubscript_(inputTensorData, v19, dataCopy, v18);
  }

  return v14;
}

- (BOOL)setInputPixelBuffer:(id)buffer forInferenceInputDescriptor:(id)descriptor withError:(id *)error
{
  bufferCopy = buffer;
  descriptorCopy = descriptor;
  v12 = objc_msgSend_inferenceInputPixelBufferDescriptors(self, v10, v11);
  v14 = objc_msgSend__validatePixelBuffer_forDescriptor_usingAllowedDescriptors_withError_(self, v13, bufferCopy, descriptorCopy, v12, error);

  if (v14)
  {
    inputPixelBuffers = self->_inputPixelBuffers;
    v18 = objc_msgSend_name(descriptorCopy, v15, v16);
    objc_msgSend_setObject_forKeyedSubscript_(inputPixelBuffers, v19, bufferCopy, v18);
  }

  return v14;
}

- (BOOL)setInputTensorData:(id)data forInferenceOutputDescriptor:(id)descriptor withError:(id *)error
{
  dataCopy = data;
  descriptorCopy = descriptor;
  v12 = objc_msgSend_inferenceOutputTensorDescriptors(self, v10, v11);
  v14 = objc_msgSend__validateTensorData_forDescriptor_usingAllowedDescriptors_withError_(self, v13, dataCopy, descriptorCopy, v12, error);

  if (v14)
  {
    inputTensorData = self->_inputTensorData;
    v18 = objc_msgSend_name(descriptorCopy, v15, v16);
    objc_msgSend_setObject_forKeyedSubscript_(inputTensorData, v19, dataCopy, v18);
  }

  return v14;
}

- (BOOL)setInputPixelBuffer:(id)buffer forInferenceOutputDescriptor:(id)descriptor withError:(id *)error
{
  bufferCopy = buffer;
  descriptorCopy = descriptor;
  v12 = objc_msgSend_inferenceOutputPixelBufferDescriptors(self, v10, v11);
  v14 = objc_msgSend__validatePixelBuffer_forDescriptor_usingAllowedDescriptors_withError_(self, v13, bufferCopy, descriptorCopy, v12, error);

  if (v14)
  {
    inputPixelBuffers = self->_inputPixelBuffers;
    v18 = objc_msgSend_name(descriptorCopy, v15, v16);
    objc_msgSend_setObject_forKeyedSubscript_(inputPixelBuffers, v19, bufferCopy, v18);
  }

  return v14;
}

- (BOOL)setOutputTensorData:(id)data forProcessedOutputDescriptor:(id)descriptor withError:(id *)error
{
  dataCopy = data;
  descriptorCopy = descriptor;
  v12 = objc_msgSend_processedOutputTensorDescriptors(self, v10, v11);
  v14 = objc_msgSend__validateTensorData_forDescriptor_usingAllowedDescriptors_withError_(self, v13, dataCopy, descriptorCopy, v12, error);

  if (v14)
  {
    outputTensorData = self->_outputTensorData;
    v18 = objc_msgSend_name(descriptorCopy, v15, v16);
    objc_msgSend_setObject_forKeyedSubscript_(outputTensorData, v19, dataCopy, v18);
  }

  return v14;
}

- (BOOL)setOutputPixelBuffer:(id)buffer forProcessedOutputDescriptor:(id)descriptor withError:(id *)error
{
  bufferCopy = buffer;
  descriptorCopy = descriptor;
  v12 = objc_msgSend_processedOutputPixelBufferDescriptors(self, v10, v11);
  v14 = objc_msgSend__validatePixelBuffer_forDescriptor_usingAllowedDescriptors_withError_(self, v13, bufferCopy, descriptorCopy, v12, error);

  if (v14)
  {
    outputPixelBuffers = self->_outputPixelBuffers;
    v18 = objc_msgSend_name(descriptorCopy, v15, v16);
    objc_msgSend_setObject_forKeyedSubscript_(outputPixelBuffers, v19, bufferCopy, v18);
  }

  return v14;
}

- (BOOL)processWithError:(id *)error
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], a2, *MEMORY[0x277CBE660], @"A concrete implementation of -processWithError: is required.", 0);
  objc_exception_throw(v3);
}

- (BOOL)resetWithError:(id *)error
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (error)
  {
    v4 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA068];
    v9[0] = @"This specific post processor has not implemented a reset yet. If you need a reset, please file a radar to 'ANST | Implementation'. ";
    v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v9, &v8, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v4, v6, @"ANSTErrorDomain", 0, v5);
  }

  return 0;
}

- (NSArray)inferenceInputTensorDescriptors
{
  v3 = objc_msgSend_inferenceInputDescriptors(self, a2, v2);
  v5 = objc_msgSend_predicateWithBlock_(MEMORY[0x277CCAC30], v4, &unk_28431E228);
  v7 = objc_msgSend_filteredArrayUsingPredicate_(v3, v6, v5);

  return v7;
}

- (NSArray)inferenceInputPixelBufferDescriptors
{
  v3 = objc_msgSend_inferenceInputDescriptors(self, a2, v2);
  v5 = objc_msgSend_predicateWithBlock_(MEMORY[0x277CCAC30], v4, &unk_28431E248);
  v7 = objc_msgSend_filteredArrayUsingPredicate_(v3, v6, v5);

  return v7;
}

- (NSArray)inferenceOutputTensorDescriptors
{
  v3 = objc_msgSend_inferenceOutputDescriptors(self, a2, v2);
  v5 = objc_msgSend_predicateWithBlock_(MEMORY[0x277CCAC30], v4, &unk_28431E1C8);
  v7 = objc_msgSend_filteredArrayUsingPredicate_(v3, v6, v5);

  return v7;
}

- (NSArray)inferenceOutputPixelBufferDescriptors
{
  v3 = objc_msgSend_inferenceOutputDescriptors(self, a2, v2);
  v5 = objc_msgSend_predicateWithBlock_(MEMORY[0x277CCAC30], v4, &unk_28431E1A8);
  v7 = objc_msgSend_filteredArrayUsingPredicate_(v3, v6, v5);

  return v7;
}

- (NSArray)processedOutputTensorDescriptors
{
  v3 = objc_msgSend_processedOutputDescriptors(self, a2, v2);
  v5 = objc_msgSend_predicateWithBlock_(MEMORY[0x277CCAC30], v4, &unk_28431E268);
  v7 = objc_msgSend_filteredArrayUsingPredicate_(v3, v6, v5);

  return v7;
}

- (NSArray)processedOutputPixelBufferDescriptors
{
  v3 = objc_msgSend_processedOutputDescriptors(self, a2, v2);
  v5 = objc_msgSend_predicateWithBlock_(MEMORY[0x277CCAC30], v4, &unk_28431E288);
  v7 = objc_msgSend_filteredArrayUsingPredicate_(v3, v6, v5);

  return v7;
}

- (BOOL)bindInputsToNetwork:(id)network error:(id *)error
{
  v86 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v9 = objc_msgSend_inferenceInputTensorDescriptors(self, v7, v8);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v78, v85, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v79;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v79 != v15)
      {
        objc_enumerationMutation(v9);
      }

      v17 = *(*(&v78 + 1) + 8 * v16);
      v18 = objc_msgSend_name(v17, v12, v13);
      v20 = objc_msgSend_tensorSurfaceForNetworkInputNamed_error_(networkCopy, v19, v18, error);

      if (!v20)
      {
        break;
      }

      v22 = objc_msgSend_setInputTensorData_forInferenceInputDescriptor_withError_(self, v21, v20, v17, error);

      if (!v22)
      {
        goto LABEL_39;
      }

      if (v14 == ++v16)
      {
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v78, v85, 16);
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v9 = objc_msgSend_inferenceOutputTensorDescriptors(self, v23, v24);
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v25, &v74, v84, 16);
    if (v26)
    {
      v29 = v26;
      v30 = *v75;
LABEL_12:
      v31 = 0;
      while (1)
      {
        if (*v75 != v30)
        {
          objc_enumerationMutation(v9);
        }

        v32 = *(*(&v74 + 1) + 8 * v31);
        v33 = objc_msgSend_name(v32, v27, v28);
        v35 = objc_msgSend_tensorSurfaceForNetworkOutputNamed_error_(networkCopy, v34, v33, error);

        if (!v35)
        {
          break;
        }

        v22 = objc_msgSend_setInputTensorData_forInferenceOutputDescriptor_withError_(self, v36, v35, v32, error);

        if (!v22)
        {
          goto LABEL_39;
        }

        if (v29 == ++v31)
        {
          v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v27, &v74, v84, 16);
          if (v29)
          {
            goto LABEL_12;
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_19:

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v9 = objc_msgSend_inferenceInputPixelBufferDescriptors(self, v37, v38);
      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v39, &v70, v83, 16);
      if (v40)
      {
        v43 = v40;
        v44 = *v71;
LABEL_21:
        v45 = 0;
        while (1)
        {
          if (*v71 != v44)
          {
            objc_enumerationMutation(v9);
          }

          v46 = *(*(&v70 + 1) + 8 * v45);
          v47 = objc_msgSend_name(v46, v41, v42);
          v49 = objc_msgSend_pixelBufferForNetworkInputNamed_error_(networkCopy, v48, v47, error);

          if (!v49)
          {
            break;
          }

          v22 = objc_msgSend_setInputPixelBuffer_forInferenceInputDescriptor_withError_(self, v50, v49, v46, error);

          if (!v22)
          {
            goto LABEL_39;
          }

          if (v43 == ++v45)
          {
            v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v41, &v70, v83, 16);
            if (v43)
            {
              goto LABEL_21;
            }

            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_28:

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v9 = objc_msgSend_inferenceOutputPixelBufferDescriptors(self, v51, v52, 0);
        v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v53, &v66, v82, 16);
        if (!v54)
        {
          LOBYTE(v22) = 1;
          goto LABEL_39;
        }

        v57 = v54;
        v58 = *v67;
LABEL_30:
        v59 = 0;
        while (1)
        {
          if (*v67 != v58)
          {
            objc_enumerationMutation(v9);
          }

          v60 = *(*(&v66 + 1) + 8 * v59);
          v61 = objc_msgSend_name(v60, v55, v56);
          v63 = objc_msgSend_pixelBufferForNetworkOutputNamed_error_(networkCopy, v62, v61, error);

          if (!v63)
          {
            break;
          }

          v22 = objc_msgSend_setInputPixelBuffer_forInferenceOutputDescriptor_withError_(self, v64, v63, v60, error);

          if (!v22)
          {
            goto LABEL_39;
          }

          if (v57 == ++v59)
          {
            v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v55, &v66, v82, 16);
            LOBYTE(v22) = 1;
            if (v57)
            {
              goto LABEL_30;
            }

            goto LABEL_39;
          }
        }
      }
    }
  }

  LOBYTE(v22) = 0;
LABEL_39:

  return v22;
}

@end