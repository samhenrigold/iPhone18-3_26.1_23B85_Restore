@interface ANSTISPInferencePostprocessor
+ (BOOL)getInputImageAcOrientation:(int *)orientation fromPixelBuffer:(id)buffer withError:(id *)error;
- (ANSTISPInferencePostprocessor)initWithInferenceInputDescriptors:(id)descriptors inferenceOutputDescriptors:(id)outputDescriptors processedOutputDescriptors:(id)processedOutputDescriptors error:(id *)error;
- (BOOL)prewarmBmBuffersForANSTOutputDescriptors:(id)descriptors error:(id *)error;
- (CGSize)originalImageSize;
- (id)semanticSegmentationMaskDescriptorOfCategory:(id)category;
- (id)trackedObjectsOfCategory:(id)category;
- (void)_recursiveBatchAccessOfANSTTensorOutputDataCurrentIndex:(unint64_t)index skipIndexSet:(id)set block:(id)block;
- (void)accessANSTOutputsAsBmBuffersWithSkipIndexSet:(id)set usingBlock:(id)block;
- (void)dealloc;
@end

@implementation ANSTISPInferencePostprocessor

- (ANSTISPInferencePostprocessor)initWithInferenceInputDescriptors:(id)descriptors inferenceOutputDescriptors:(id)outputDescriptors processedOutputDescriptors:(id)processedOutputDescriptors error:(id *)error
{
  v10.receiver = self;
  v10.super_class = ANSTISPInferencePostprocessor;
  v6 = [(ANSTInferencePostprocessor *)&v10 initWithInferenceInputDescriptors:descriptors inferenceOutputDescriptors:outputDescriptors processedOutputDescriptors:processedOutputDescriptors error:error];
  v7 = v6;
  if (v6)
  {
    anstOutputDescriptors = v6->_anstOutputDescriptors;
    v6->_anstOutputDescriptors = 0;

    v7->_anstOutputs = 0;
    v7->_originalImageSize = *MEMORY[0x277CBF3A8];
    bzero(&v7->_acResult, 0x8110uLL);
  }

  return v7;
}

- (id)trackedObjectsOfCategory:(id)category
{
  categoryCopy = category;
  v5 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v4, *MEMORY[0x277CBE660], @"A concrete implementation of -trackedObjectsOfCategory: is required.", 0);
  objc_exception_throw(v5);
}

- (id)semanticSegmentationMaskDescriptorOfCategory:(id)category
{
  categoryCopy = category;
  v5 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v4, *MEMORY[0x277CBE660], @"A concrete implementation of -semanticSegmentationMaskDescriptorOfCategory: is required.", 0);
  objc_exception_throw(v5);
}

- (BOOL)prewarmBmBuffersForANSTOutputDescriptors:(id)descriptors error:(id *)error
{
  v97[1] = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  v9 = descriptorsCopy;
  if (self->_anstOutputs)
  {
    if (error)
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = descriptorsCopy;
      v96 = *MEMORY[0x277CCA068];
      v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"BmBuffer array has already been prewarmed.");
      v97[0] = v12;
      v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v97, &v96, 1);
      v9 = v11;
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v10, v15, @"ANSTErrorDomain", 3, v14);

      goto LABEL_4;
    }

    goto LABEL_5;
  }

  objc_storeStrong(&self->_anstOutputDescriptors, descriptors);
  v19 = objc_msgSend_count(v9, v17, v18);
  self->_anstOutputs = malloc_type_malloc(24 * v19, 0x1080040468F112EuLL);
  if (!objc_msgSend_count(v9, v20, v21))
  {
LABEL_42:
    v16 = 1;
    goto LABEL_43;
  }

  errorCopy = error;
  v87 = v9;
  v23 = 0;
  selfCopy = self;
  while (1)
  {
    v24 = objc_msgSend_objectAtIndexedSubscript_(v9, v22, v23);
    v25 = &self->_anstOutputs[v23];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v24;
      v28 = objc_msgSend_dataType(v12, v26, v27);
      v31 = objc_msgSend_numberOfDimensions(v12, v29, v30);
      v34 = v31;
      v36 = v28 == 104 || v28 == 102;
      v89 = v31 - 1;
      v37 = v31 > 1 && v36;
      if (v36 && v31 >= 3)
      {
        v52 = v31 - 3;
        v39 = objc_msgSend_lengthOfDimensionAt_(v12, v32, v31 - 3);
        if (v34 != 3)
        {
          v53 = 0;
          do
          {
            v37 = v37 && objc_msgSend_lengthOfDimensionAt_(v12, v32, v53++) == 1;
          }

          while (v52 != v53);
        }

        v9 = v87;
        if (!v37)
        {
LABEL_44:
          if (errorCopy)
          {
            v59 = MEMORY[0x277CCA9B8];
            v94 = *MEMORY[0x277CCA068];
            v60 = MEMORY[0x277CCACA8];
            v61 = objc_msgSend_name(v12, v32, v33);
            v63 = objc_msgSend_stringWithFormat_(v60, v62, @"Invalid tensor for descriptor named: %@", v61);
            v95 = v63;
            v65 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v64, &v95, &v94, 1);
            *errorCopy = objc_msgSend_errorWithDomain_code_userInfo_(v59, v66, @"ANSTErrorDomain", 10, v65);
          }

          anstOutputs = selfCopy->_anstOutputs;
          if (anstOutputs)
          {
            free(anstOutputs);
            selfCopy->_anstOutputs = 0;
          }

LABEL_57:

          goto LABEL_4;
        }
      }

      else
      {
        v39 = 1;
        if (!v37)
        {
          goto LABEL_44;
        }
      }

      v25->var0 = 0;
      v25->var1 = objc_msgSend_lengthOfDimensionAt_(v12, v32, v34 - 2) * v39;
      v25->var2 = objc_msgSend_lengthOfDimensionAt_(v12, v54, v89);
      v25->var3 = objc_msgSend_strideOfDimensionAt_(v12, v55, v34 - 2);
      if (v28 == 104)
      {
        v51 = 7;
      }

      else
      {
        v51 = 6;
      }

      self = selfCopy;
      goto LABEL_41;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    v12 = v24;
    v25->var0 = 0;
    v25->var1 = objc_msgSend_height(v12, v42, v43);
    v25->var2 = objc_msgSend_width(v12, v44, v45);
    v25->var3 = 0;
    v48 = objc_msgSend_pixelFormatType(v12, v46, v47);
    if (v48 == 1278226488)
    {
      v51 = 1;
    }

    else
    {
      if (v48 != 1278226742 && v48 != 1278226536)
      {
        if (errorCopy)
        {
          v77 = MEMORY[0x277CCA9B8];
          v92 = *MEMORY[0x277CCA068];
          v78 = MEMORY[0x277CCACA8];
          v79 = objc_msgSend_name(v12, v49, v50);
          v81 = objc_msgSend_stringWithFormat_(v78, v80, @"Invalid pixel format for descriptor named: %@", v79);
          v93 = v81;
          v83 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v82, &v93, &v92, 1);
          *errorCopy = objc_msgSend_errorWithDomain_code_userInfo_(v77, v84, @"ANSTErrorDomain", 10, v83);
        }

        v85 = self->_anstOutputs;
        if (v85)
        {
          free(v85);
          self->_anstOutputs = 0;
        }

        goto LABEL_57;
      }

      v51 = 7;
    }

LABEL_41:
    v25->var4 = v51;

    if (objc_msgSend_count(v9, v56, v57) <= ++v23)
    {
      goto LABEL_42;
    }
  }

  if (errorCopy)
  {
    v68 = MEMORY[0x277CCA9B8];
    v90 = *MEMORY[0x277CCA068];
    v69 = MEMORY[0x277CCACA8];
    v70 = objc_msgSend_name(v24, v40, v41);
    v72 = objc_msgSend_stringWithFormat_(v69, v71, @"Unexpected descriptor type for descriptor named: %@", v70);
    v91 = v72;
    v74 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v73, &v91, &v90, 1);
    *errorCopy = objc_msgSend_errorWithDomain_code_userInfo_(v68, v75, @"ANSTErrorDomain", 10, v74);
  }

  v76 = self->_anstOutputs;
  if (v76)
  {
    free(v76);
    self->_anstOutputs = 0;
  }

  v12 = v24;
LABEL_4:

LABEL_5:
  v16 = 0;
LABEL_43:

  return v16;
}

- (void)accessANSTOutputsAsBmBuffersWithSkipIndexSet:(id)set usingBlock:(id)block
{
  v19[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v8 = blockCopy;
  if (self->_anstOutputs)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22E5F47F0;
    v16[3] = &unk_27884FB08;
    v16[4] = self;
    v17 = blockCopy;
    objc_msgSend__recursiveBatchAccessOfANSTTensorOutputDataCurrentIndex_skipIndexSet_block_(self, v9, 0, set, v16);
    v10 = v17;
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA068];
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"BmBuffer array has not been prewarmed. Please run [prewarmBmBuffersForANSTOutputDescriptors:error:] first.");
    v19[0] = v12;
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v19, &v18, 1);
    v10 = objc_msgSend_errorWithDomain_code_userInfo_(v11, v15, @"ANSTErrorDomain", 3, v14);

    (v8)[2](v8, 0, 0, v10);
  }
}

- (void)_recursiveBatchAccessOfANSTTensorOutputDataCurrentIndex:(unint64_t)index skipIndexSet:(id)set block:(id)block
{
  v85[1] = *MEMORY[0x277D85DE8];
  setCopy = set;
  blockCopy = block;
  if (objc_msgSend_count(self->_anstOutputDescriptors, v10, v11) <= index)
  {
    blockCopy[2](blockCopy, 0);
  }

  else if (objc_msgSend_containsIndex_(setCopy, v12, index))
  {
    self->_anstOutputs[index].var0 = 0;
    objc_msgSend__recursiveBatchAccessOfANSTTensorOutputDataCurrentIndex_skipIndexSet_block_(self, v13, index + 1, setCopy, blockCopy);
  }

  else
  {
    v14 = objc_msgSend_objectAtIndexedSubscript_(self->_anstOutputDescriptors, v13, index);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = objc_msgSend_name(v14, v15, v16);
      v19 = objc_msgSend_inputTensorDataForDescriptorNamed_(self, v18, v17);

      if (v19)
      {
        v76 = 0;
        v77 = &v76;
        v78 = 0x2020000000;
        v79 = 0;
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = sub_22E5F4E34;
        v71[3] = &unk_27884FB30;
        v71[4] = self;
        indexCopy = index;
        v72 = setCopy;
        v22 = blockCopy;
        v73 = v22;
        v74 = &v76;
        v70 = 0;
        objc_msgSend_performDataAccessWithOptions_usingBlock_error_(v19, v23, 0, v71, &v70);
        v24 = v70;
        v25 = v24;
        self->_anstOutputs[index].var0 = 0;
        if (v24)
        {
          if (*(v77 + 24) == 1)
          {
            v26 = _ANSTLoggingGetOSLogForCategoryANSTKit(v24);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
            {
              sub_22E659498(v25, v26);
            }
          }

          else
          {
            (v22)[2](v22, v24);
          }
        }

        _Block_object_dispose(&v76, 8);
      }

      else
      {
        v54 = MEMORY[0x277CCA9B8];
        v84 = *MEMORY[0x277CCA068];
        v55 = MEMORY[0x277CCACA8];
        v56 = objc_msgSend_name(v14, v20, v21);
        v58 = objc_msgSend_stringWithFormat_(v55, v57, @"Tensor data not bound for descriptor named: %@", v56);
        v85[0] = v58;
        v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v59, v85, &v84, 1);
        v25 = objc_msgSend_errorWithDomain_code_userInfo_(v54, v61, @"ANSTErrorDomain", 11, v60);

        (blockCopy)[2](blockCopy, v25);
      }
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v30 = objc_msgSend_name(v14, v28, v29);
        v32 = objc_msgSend_inputPixelBufferForDescriptorNamed_(self, v31, v30);

        if (v32)
        {
          v35 = objc_msgSend_pixelBuffer(v32, v33, v34);
          CVPixelBufferLockBaseAddress(v35, 1uLL);
          v38 = objc_msgSend_pixelBuffer(v32, v36, v37);
          self->_anstOutputs[index].var0 = CVPixelBufferGetBaseAddress(v38);
          objc_msgSend__recursiveBatchAccessOfANSTTensorOutputDataCurrentIndex_skipIndexSet_block_(self, v39, index + 1, setCopy, blockCopy);
          self->_anstOutputs[index].var0 = 0;
          v42 = objc_msgSend_pixelBuffer(v32, v40, v41);
          CVPixelBufferUnlockBaseAddress(v42, 1uLL);
          v25 = 0;
        }

        else
        {
          v62 = MEMORY[0x277CCA9B8];
          v82 = *MEMORY[0x277CCA068];
          v63 = MEMORY[0x277CCACA8];
          v64 = objc_msgSend_name(v14, v33, v34);
          v66 = objc_msgSend_stringWithFormat_(v63, v65, @"Pixel buffer data not bound for descriptor named: %@", v64);
          v83 = v66;
          v68 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v67, &v83, &v82, 1);
          v25 = objc_msgSend_errorWithDomain_code_userInfo_(v62, v69, @"ANSTErrorDomain", 13, v68);

          (blockCopy)[2](blockCopy, v25);
        }
      }

      else
      {
        v43 = _ANSTLoggingGetOSLogForCategoryANSTKit(isKindOfClass);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          sub_22E659420(v14, v43);
        }

        v44 = MEMORY[0x277CCA9B8];
        v80 = *MEMORY[0x277CCA068];
        v45 = MEMORY[0x277CCACA8];
        v48 = objc_msgSend_name(v14, v46, v47);
        v50 = objc_msgSend_stringWithFormat_(v45, v49, @"Unexpected type (neither tensor nor pixel buffer) for descriptor named: %@", v48);
        v81 = v50;
        v52 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v51, &v81, &v80, 1);
        v25 = objc_msgSend_errorWithDomain_code_userInfo_(v44, v53, @"ANSTErrorDomain", 10, v52);

        (blockCopy)[2](blockCopy, v25);
      }
    }
  }
}

- (void)dealloc
{
  anstOutputs = self->_anstOutputs;
  if (anstOutputs)
  {
    free(anstOutputs);
    self->_anstOutputs = 0;
  }

  v4.receiver = self;
  v4.super_class = ANSTISPInferencePostprocessor;
  [(ANSTISPInferencePostprocessor *)&v4 dealloc];
}

+ (BOOL)getInputImageAcOrientation:(int *)orientation fromPixelBuffer:(id)buffer withError:(id *)error
{
  LODWORD(v7) = objc_msgSend_orientation(buffer, a2, orientation);
  if (v7 <= 3)
  {
    if (v7 == 1)
    {
      *orientation = 0;
      return v7;
    }

    if (v7 != 2)
    {
      if (v7 == 3)
      {
        v9 = 2;
        goto LABEL_10;
      }

LABEL_18:
      if (error)
      {
        objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v8, @"ANSTErrorDomain", 16, 0);
        goto LABEL_16;
      }

      goto LABEL_20;
    }

LABEL_14:
    if (error)
    {
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v8, @"ANSTErrorDomain", 17, 0);
      v10 = LABEL_16:;
      v7 = v10;
      LOBYTE(v7) = 0;
      *error = v10;
      return v7;
    }

LABEL_20:
    LOBYTE(v7) = 0;
    return v7;
  }

  if (v7 > 6)
  {
    if (v7 != 7)
    {
      if (v7 == 8)
      {
        LOBYTE(v7) = 1;
        *orientation = 1;
        return v7;
      }

      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if ((v7 - 4) < 2)
  {
    goto LABEL_14;
  }

  if (v7 != 6)
  {
    goto LABEL_18;
  }

  v9 = 3;
LABEL_10:
  *orientation = v9;
  LOBYTE(v7) = 1;
  return v7;
}

- (CGSize)originalImageSize
{
  width = self->_originalImageSize.width;
  height = self->_originalImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end