@interface ANSTFaceAttributeAlgorithm
- (ANSTFaceAttributeAlgorithm)initWithConfiguration:(id)configuration;
- (BOOL)_allocateAndBindInputBuffer:(id *)buffer;
- (BOOL)_allocateAndBindOutputBuffers:(id *)buffers;
- (BOOL)_initializePixelTransferSession:(id *)session;
- (BOOL)_initializePostProcessor:(id *)processor;
- (BOOL)_loadE5ExecutionStreamOperation:(id *)operation;
- (BOOL)_updateFaceAttributesOfAcResult:(id *)result inputImage:(__CVBuffer *)image error:(id *)error;
- (BOOL)prepareWithError:(id *)error;
- (BOOL)updateFaceAttributesOfAcResult:(id *)result inputImage:(__CVBuffer *)image error:(id *)error;
- (void)_destroyAcHandles;
- (void)_releaseInputBuffer;
- (void)_releaseOutputBuffers;
- (void)_releasePixelTransferSession;
- (void)dealloc;
@end

@implementation ANSTFaceAttributeAlgorithm

- (ANSTFaceAttributeAlgorithm)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = ANSTFaceAttributeAlgorithm;
  v6 = [(ANSTAlgorithm *)&v9 initWithConfiguration:configurationCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v7->_prepared = 0;
    v7->_es = 0;
    v7->_esop = 0;
  }

  return v7;
}

- (void)dealloc
{
  objc_msgSend__destroyAcHandles(self, a2, v2);
  objc_msgSend__releaseInputBuffer(self, v4, v5);
  objc_msgSend__releaseOutputBuffers(self, v6, v7);
  objc_msgSend__releasePixelTransferSession(self, v8, v9);
  if (self->_esop)
  {
    v10 = e5rt_execution_stream_operation_release();
    if (v10)
    {
      v11 = v10;
      last_error_message = e5rt_get_last_error_message();
      v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_release(&_esop)", v11, last_error_message);
      v15 = _ANSTLoggingGetOSLogForCategoryANSTKit(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_22E65AA00();
      }
    }

    self->_esop = 0;
  }

  if (self->_es)
  {
    v16 = e5rt_execution_stream_release();
    if (v16)
    {
      v17 = v16;
      v18 = e5rt_get_last_error_message();
      v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"%s returned error code %u (%s)", "e5rt_execution_stream_release(&_es)", v17, v18);
      v21 = _ANSTLoggingGetOSLogForCategoryANSTKit(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_22E65AA00();
      }
    }

    self->_es = 0;
  }

  v22.receiver = self;
  v22.super_class = ANSTFaceAttributeAlgorithm;
  [(ANSTFaceAttributeAlgorithm *)&v22 dealloc];
}

- (BOOL)prepareWithError:(id *)error
{
  v30[1] = *MEMORY[0x277D85DE8];
  if (self->_prepared)
  {
    LOBYTE(E5ExecutionStreamOperation) = 1;
    return E5ExecutionStreamOperation;
  }

  E5ExecutionStreamOperation = objc_msgSend__initializePostProcessor_(self, a2, error);
  if (!E5ExecutionStreamOperation)
  {
    return E5ExecutionStreamOperation;
  }

  if (!self->_es)
  {
    v18 = e5rt_execution_stream_create();
    if (v18)
    {
      v19 = v18;
      last_error_message = e5rt_get_last_error_message();
      v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, @"%s returned error code %u (%s)", "e5rt_execution_stream_create(&_es)", v19, last_error_message);
      v22 = _ANSTLoggingGetOSLogForCategoryANSTKit(v14);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_22E65AA74();
      }

      if (!error)
      {
        goto LABEL_20;
      }

      v17 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA068];
      v30[0] = v14;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, v30, &v29, 1);
      goto LABEL_19;
    }
  }

  E5ExecutionStreamOperation = objc_msgSend__loadE5ExecutionStreamOperation_(self, v6, error);
  if (E5ExecutionStreamOperation)
  {
    E5ExecutionStreamOperation = objc_msgSend__allocateAndBindInputBuffer_(self, v7, error);
    if (E5ExecutionStreamOperation)
    {
      E5ExecutionStreamOperation = objc_msgSend__allocateAndBindOutputBuffers_(self, v8, error);
      if (E5ExecutionStreamOperation)
      {
        E5ExecutionStreamOperation = objc_msgSend__initializePixelTransferSession_(self, v9, error);
        if (E5ExecutionStreamOperation)
        {
          v10 = e5rt_execution_stream_encode_operation();
          if (!v10)
          {
            LOBYTE(E5ExecutionStreamOperation) = 1;
            self->_prepared = 1;
            return E5ExecutionStreamOperation;
          }

          v11 = v10;
          v12 = e5rt_get_last_error_message();
          v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s returned error code %u (%s)", "e5rt_execution_stream_encode_operation(_es, _esop)", v11, v12);
          v15 = _ANSTLoggingGetOSLogForCategoryANSTKit(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_22E65AA74();
          }

          if (!error)
          {
LABEL_20:

            LOBYTE(E5ExecutionStreamOperation) = 0;
            return E5ExecutionStreamOperation;
          }

          v17 = MEMORY[0x277CCA9B8];
          v27 = *MEMORY[0x277CCA068];
          v28 = v14;
          objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, &v28, &v27, 1);
          v24 = LABEL_19:;
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v17, v25, @"ANSTErrorDomain", 5, v24);

          goto LABEL_20;
        }
      }
    }
  }

  return E5ExecutionStreamOperation;
}

- (BOOL)updateFaceAttributesOfAcResult:(id *)result inputImage:(__CVBuffer *)image error:(id *)error
{
  v9 = _ANSTLoggingGetOSLogForCategoryANSTKit(self);
  v10 = os_signpost_id_make_with_pointer(v9, self);

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ANSTFaceAttributeAlgorithm", &unk_22E663F87, buf, 2u);
  }

  updated = objc_msgSend__updateFaceAttributesOfAcResult_inputImage_error_(self, v11, result, image, error);
  v13 = os_signpost_id_make_with_pointer(v9, self);

  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v9, OS_SIGNPOST_INTERVAL_END, v13, "ANSTFaceAttributeAlgorithm", &unk_22E663F87, v15, 2u);
  }

  return updated;
}

- (BOOL)_updateFaceAttributesOfAcResult:(id *)result inputImage:(__CVBuffer *)image error:(id *)error
{
  v82[1] = *MEMORY[0x277D85DE8];
  if (!self->_prepared)
  {
    v29 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Need to call [prepareWithError:] before binding input pixel buffer.", image);
    v30 = _ANSTLoggingGetOSLogForCategoryANSTKit(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_22E65AAE8();
    }

    if (error)
    {
      v32 = MEMORY[0x277CCA9B8];
      v81 = *MEMORY[0x277CCA068];
      v82[0] = v29;
      v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, v82, &v81, 1);
      v35 = objc_msgSend_errorWithDomain_code_userInfo_(v32, v34, @"ANSTErrorDomain", 3, v33);
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  CVPixelBufferLockBaseAddress(image, 1uLL);
  v9 = 0;
  input_face_buffers = self->_input_face_buffers;
  do
  {
    CVPixelBufferLockBaseAddress(input_face_buffers[v9++], 0);
  }

  while (v9 != 10);
  LODWORD(var2) = result->var2;
  errorCopy = error;
  resultCopy = result;
  if (!var2)
  {
    goto LABEL_10;
  }

  v12 = 0;
  v13 = *MEMORY[0x277CE28B8];
  p_var3 = &result->var3[0].var3.var3;
  do
  {
    v15 = *(p_var3 - 3);
    v16 = *(p_var3 - 2);
    v17 = *(p_var3 - 1);
    v18 = *p_var3;
    v83.origin.x = v15;
    v83.origin.y = v16;
    v83.size.width = v17;
    v83.size.height = v18;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v83);
    if (VTSessionSetProperty(self->_pixelTransferSession, v13, DictionaryRepresentation))
    {
      v36 = MEMORY[0x277CCACA8];
      v37 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"[X %f, Y %f, W %f, H %f]", *&v15, *&v16, *&v17, *&v18);
      v39 = objc_msgSend_stringWithFormat_(v36, v38, @"Failed to configure VTPixelTransferSession to crop face at index %d bbox %@", v12, v37);

      v41 = _ANSTLoggingGetOSLogForCategoryANSTKit(v40);
      error = errorCopy;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_22E65AAE8();
      }

      if (errorCopy)
      {
        v43 = MEMORY[0x277CCA9B8];
        v79 = *MEMORY[0x277CCA068];
        v80 = v39;
        v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, &v80, &v79, 1);
        objc_msgSend_errorWithDomain_code_userInfo_(v43, v45, @"ANSTErrorDomain", 4, v44);
        *errorCopy = error = errorCopy;
      }

      goto LABEL_28;
    }

    CFRelease(DictionaryRepresentation);
    if (VTPixelTransferSessionTransferImage(self->_pixelTransferSession, image, input_face_buffers[v12]))
    {
      v46 = MEMORY[0x277CCACA8];
      v47 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, @"[X %f, Y %f, W %f, H %f]", *&v15, *&v16, *&v17, *&v18);
      v49 = objc_msgSend_stringWithFormat_(v46, v48, @"Failed to pixel transfer face crop at index %d bbox %@", v12, v47);

      v51 = _ANSTLoggingGetOSLogForCategoryANSTKit(v50);
      error = errorCopy;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        sub_22E65AAE8();
      }

      if (errorCopy)
      {
        v53 = MEMORY[0x277CCA9B8];
        v77 = *MEMORY[0x277CCA068];
        v78 = v49;
        v54 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v52, &v78, &v77, 1);
        objc_msgSend_errorWithDomain_code_userInfo_(v53, v55, @"ANSTErrorDomain", 4, v54);
        *errorCopy = error = errorCopy;
      }

LABEL_28:
      v28 = 0;
      goto LABEL_29;
    }

    ++v12;
    var2 = result->var2;
    p_var3 += 702;
  }

  while (v12 < var2);
  if (var2 > 9)
  {
    goto LABEL_13;
  }

LABEL_10:
  v22 = &self->_input_face_buffers[var2];
  v23 = var2 + 1;
  do
  {
    BaseAddress = CVPixelBufferGetBaseAddress(*v22);
    Height = CVPixelBufferGetHeight(*v22);
    BytesPerRow = CVPixelBufferGetBytesPerRow(*v22);
    bzero(BaseAddress, BytesPerRow * Height);
    ++v22;
  }

  while (v23++ != 10);
LABEL_13:
  v28 = 1;
  error = errorCopy;
LABEL_29:
  CVPixelBufferUnlockBaseAddress(image, 1uLL);
  for (i = 0; i != 10; ++i)
  {
    CVPixelBufferUnlockBaseAddress(input_face_buffers[i], 0);
  }

  if (!v28)
  {
    return 0;
  }

  v57 = e5rt_execution_stream_execute_sync();
  if (v57)
  {
    last_error_message = e5rt_get_last_error_message();
    v29 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v59, @"%s returned error code %u (%s)", "e5rt_execution_stream_execute_sync(_es)", v57, last_error_message);
    v60 = _ANSTLoggingGetOSLogForCategoryANSTKit(v29);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      sub_22E65AAE8();
    }

    if (error)
    {
      v62 = MEMORY[0x277CCA9B8];
      v75 = *MEMORY[0x277CCA068];
      v76 = v29;
      v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v61, &v76, &v75, 1);
      v35 = objc_msgSend_errorWithDomain_code_userInfo_(v62, v63, @"ANSTErrorDomain", 5, v33);
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  self->_detControl.originalImageWidth = CVPixelBufferGetWidth(image);
  self->_detControl.originalImageHeight = CVPixelBufferGetHeight(image);
  v64 = AcAttrPostProcessNetOutputs(self->_det, &self->_detControl, &self->_attrNetOutputBuffers, self->_detState.data, &resultCopy->var0.var0);
  if (!v64)
  {
    return 1;
  }

  v29 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v65, @"%s returned error code %u", "AcAttrPostProcessNetOutputs(_det, &_detControl, &_attrNetOutputBuffers, &_detState, acResult)", v64);
  v66 = _ANSTLoggingGetOSLogForCategoryANSTKit(v29);
  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
  {
    sub_22E65AAE8();
  }

  if (error)
  {
    v68 = MEMORY[0x277CCA9B8];
    v73 = *MEMORY[0x277CCA068];
    v74 = v29;
    v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v67, &v74, &v73, 1);
    v35 = objc_msgSend_errorWithDomain_code_userInfo_(v68, v69, @"ANSTErrorDomain", 3, v33);
LABEL_42:
    *error = v35;
  }

LABEL_43:

  return 0;
}

- (BOOL)_initializePostProcessor:(id *)processor
{
  v39[1] = *MEMORY[0x277D85DE8];
  if (self->_det)
  {
    return 1;
  }

  *&self->_detControl.originalImageWidth = 0u;
  *self->_detControl.imagePyramidInfo.heights = 0u;
  *&self->_detControl.imagePyramidInfo.rowBytes[0][0] = 0u;
  *&self->_detControl.imagePyramidInfo.rowBytes[2][0] = 0u;
  self->_detControl.imageOrientation = 0;
  *self->_detControl.imagePyramidInfo.widths = 0u;
  widths = self->_detControl.imagePyramidInfo.widths;
  *&self->_detControl.imagePyramidInfo.format = xmmword_22E661CD0;
  *self->_detControl.imagePyramidInfo.heights = 0x156000002ACLL;
  self->_detControl.imagePyramidInfo.widths[2] = 288;
  self->_detControl.imagePyramidInfo.heights[2] = 171;
  v7 = &self->_detControl.imagePyramidInfo.rowBytes[0][1];
  v8 = -1;
  do
  {
    v9 = *widths++;
    *(v7 - 1) = (v9 + 63) & 0xFFFFFFC0;
    *v7 = ((v9 >> 1) + 63) & 0xFFFFFFC0;
    ++v8;
    v7 += 2;
  }

  while (v8 < 2);
  self->_detControl.imageOrientation = 0;
  v33 = 0;
  v10 = AcAttrCreate(&self->_det, &v33, self->_detState.data);
  if (v10)
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s returned error code %u", "AcAttrCreate(&_det, &detConfig, &_detState)", v10);
    v13 = _ANSTLoggingGetOSLogForCategoryANSTKit(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22E65AB5C();
    }

    if (!processor)
    {
      goto LABEL_21;
    }

    v15 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA068];
    v39[0] = v12;
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v39, &v38, 1);
    v18 = objc_msgSend_errorWithDomain_code_userInfo_(v15, v17, @"ANSTErrorDomain", 3, v16);
    goto LABEL_20;
  }

  Params = AcAttrGetParams(self->_det, &self->_detState, &self->_detParams);
  if (Params)
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"%s returned error code %u", "AcAttrGetParams(_det, &_detState, &_detParams)", Params);
    v21 = _ANSTLoggingGetOSLogForCategoryANSTKit(v12);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_22E65AB5C();
    }

    if (!processor)
    {
      goto LABEL_21;
    }

    v23 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA068];
    v37 = v12;
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, &v37, &v36, 1);
    v18 = objc_msgSend_errorWithDomain_code_userInfo_(v23, v24, @"ANSTErrorDomain", 3, v16);
    goto LABEL_20;
  }

  v25 = AcAttrStart(self->_det);
  if (!v25)
  {
    return 1;
  }

  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"%s returned error code %u", "AcAttrStart(_det, &_detState)", v25);
  v27 = _ANSTLoggingGetOSLogForCategoryANSTKit(v12);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    sub_22E65AB5C();
  }

  if (processor)
  {
    v29 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA068];
    v35 = v12;
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, &v35, &v34, 1);
    v18 = objc_msgSend_errorWithDomain_code_userInfo_(v29, v30, @"ANSTErrorDomain", 3, v16);
LABEL_20:
    *processor = v18;
  }

LABEL_21:

  objc_msgSend__destroyAcHandles(self, v31, v32);
  return 0;
}

- (void)_destroyAcHandles
{
  p_detState = &self->_detState;
  v4 = AcAttrStop(self->_det);
  if (v4)
  {
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"%s returned error code %u", "AcAttrStop(_det, &_detState)", v4);
    v7 = _ANSTLoggingGetOSLogForCategoryANSTKit(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22E65ABD0();
    }
  }

  det = self->_det;
  if (det)
  {
    AcAttrDestroy(det);
    self->_det = 0;
  }

  bzero(&self->_detParams, 0x528uLL);
  *p_detState->data = 0;
  *&self->_detState.data[8] = 0;
  *&self->_detState.data[16] = 0;
  *&self->_detControl.originalImageWidth = 0u;
  *self->_detControl.imagePyramidInfo.widths = 0u;
  *self->_detControl.imagePyramidInfo.heights = 0u;
  *&self->_detControl.imagePyramidInfo.rowBytes[0][0] = 0u;
  *&self->_detControl.imagePyramidInfo.rowBytes[2][0] = 0u;
  self->_detControl.imageOrientation = 0;
}

- (BOOL)_loadE5ExecutionStreamOperation:(id *)operation
{
  v34[1] = *MEMORY[0x277D85DE8];
  if (self->_esop)
  {
    return 1;
  }

  v5 = MEMORY[0x277CCA8D8];
  v6 = objc_opt_class();
  v8 = objc_msgSend_bundleForClass_(v5, v7, v6);
  v10 = objc_msgSend_URLForResource_withExtension_subdirectory_(v8, v9, @"anst_face_attribute", @"mlmodelc", @"Models");
  v12 = objc_msgSend_URLByAppendingPathComponent_(v10, v11, @"model.bundle");

  objc_msgSend_UTF8String(@"anst_face_attr_inference", v13, v14);
  v17 = objc_msgSend_relativePath(v12, v15, v16);
  v18 = v17;
  objc_msgSend_UTF8String(v18, v19, v20);
  objc_msgSend_UTF8String(@"main", v21, v22);
  precompiled_compute_operation = e5rt_execution_stream_operation_create_precompiled_compute_operation();

  v3 = precompiled_compute_operation == 0;
  if (precompiled_compute_operation)
  {
    last_error_message = e5rt_get_last_error_message();
    v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_create_precompiled_compute_operation(&_esop, opName.UTF8String, modelURL.relativePath.UTF8String, opFuncName.UTF8String, 1, true)", precompiled_compute_operation, last_error_message);
    v27 = _ANSTLoggingGetOSLogForCategoryANSTKit(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_22E65AC44();
    }

    if (operation)
    {
      v29 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277CCA068];
      v34[0] = v26;
      v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v34, &v33, 1);
      *operation = objc_msgSend_errorWithDomain_code_userInfo_(v29, v31, @"ANSTErrorDomain", 5, v30);
    }
  }

  return v3;
}

- (BOOL)_allocateAndBindInputBuffer:(id *)buffer
{
  v47[1] = *MEMORY[0x277D85DE8];
  so_inputs_array = self->_so_inputs_array;
  if (self->_so_inputs_array[0])
  {
    return 1;
  }

  input_face_buffers = self->_input_face_buffers;
  v8 = -10;
  v39 = *MEMORY[0x277CCA068];
  while (1)
  {
    PixelBufferWithPixelFormat_width_height_handle = objc_msgSend_createPixelBufferWithPixelFormat_width_height_handle_(ANSTUtility, a2, 1111970369, 128, 128, input_face_buffers);
    if (PixelBufferWithPixelFormat_width_height_handle)
    {
      break;
    }

    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"face%d", v8 + 10);
    CVPixelBufferGetIOSurface(*input_face_buffers);
    v12 = e5rt_surface_object_create_from_iosurface();
    if (v12 || (v13 = v11, objc_msgSend_UTF8String(v13, v14, v15), v12 = e5rt_execution_stream_operation_retain_input_port(), v12) || (v12 = e5rt_io_port_bind_surface_object(), v12))
    {
      v16 = v12;
      last_error_message = e5rt_get_last_error_message();
      v18 = MEMORY[0x277CCACA8];
      v19 = v11;
      v22 = objc_msgSend_UTF8String(v19, v20, v21);
      v24 = objc_msgSend_stringWithFormat_(v18, v23, @"Failed to bind input port named '%s' (code %u: %s)", v22, v16, last_error_message);
      v25 = _ANSTLoggingGetOSLogForCategoryANSTKit(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v43 = "[ANSTFaceAttributeAlgorithm _allocateAndBindInputBuffer:]";
        v44 = 2114;
        v45 = v24;
        _os_log_error_impl(&dword_22E5D5000, v25, OS_LOG_TYPE_ERROR, "%{public}s: %{public}@", buf, 0x16u);
      }

      if (buffer)
      {
        v27 = MEMORY[0x277CCA9B8];
        v40 = v39;
        v41 = v24;
        v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, &v41, &v40, 1);
        *buffer = objc_msgSend_errorWithDomain_code_userInfo_(v27, v29, @"ANSTErrorDomain", 5, v28);
      }

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    if (!v30)
    {
      goto LABEL_23;
    }

    ++so_inputs_array;
    ++input_face_buffers;
    if (__CFADD__(v8++, 1))
    {
      return 1;
    }
  }

  v33 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"Failed to create CVPixelBuffer for face input at index %d (CVReturn %d)", v8 + 10, PixelBufferWithPixelFormat_width_height_handle);
  v34 = _ANSTLoggingGetOSLogForCategoryANSTKit(v33);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    sub_22E65ACB8();
  }

  if (buffer)
  {
    v36 = MEMORY[0x277CCA9B8];
    v46 = v39;
    v47[0] = v33;
    v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, v47, &v46, 1);
    *buffer = objc_msgSend_errorWithDomain_code_userInfo_(v36, v38, @"ANSTErrorDomain", 5, v37);
  }

LABEL_23:
  objc_msgSend__releaseInputBuffer(self, a2, v31);
  return 0;
}

- (void)_releaseInputBuffer
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = 10;
  do
  {
    CVPixelBufferRelease(self->_input_face_buffers[0]);
    self->_input_face_buffers[0] = 0;
    v4 = e5rt_surface_object_release();
    if (v4)
    {
      v5 = v4;
      last_error_message = e5rt_get_last_error_message();
      v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%s returned error code %u (%s)", "e5rt_surface_object_release(&(_so_inputs_array[i]))", v5, last_error_message);
      v9 = _ANSTLoggingGetOSLogForCategoryANSTKit(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v11 = "[ANSTFaceAttributeAlgorithm _releaseInputBuffer]";
        v12 = 2114;
        v13 = v8;
        _os_log_error_impl(&dword_22E5D5000, v9, OS_LOG_TYPE_ERROR, "%{public}s: %{public}@", buf, 0x16u);
      }
    }

    self->_so_inputs_array[0] = 0;
    self = (self + 8);
    --v3;
  }

  while (v3);
}

- (BOOL)_allocateAndBindOutputBuffers:(id *)buffers
{
  v65 = *MEMORY[0x277D85DE8];
  if (self->_bo_outputs_array[0])
  {
    return 1;
  }

  v6 = 0;
  netOutputNames = self->_detParams.netOutputNames;
  netOutputHeights = self->_detParams.netOutputHeights;
  netOutputWidths = self->_detParams.netOutputWidths;
  netOutputChannels = self->_detParams.netOutputChannels;
  v53 = *MEMORY[0x277CCA068];
  for (i = self; ; i = (i + 24))
  {
    v9 = e5rt_execution_stream_operation_retain_output_port();
    if (!v9)
    {
      v9 = e5rt_io_port_retain_tensor_desc();
      if (!v9)
      {
        v9 = e5rt_tensor_desc_alloc_buffer_object();
        if (!v9)
        {
          v9 = e5rt_io_port_bind_buffer_object();
          if (!v9)
          {
            break;
          }
        }
      }
    }

    v10 = v9;
    last_error_message = e5rt_get_last_error_message();
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"Failed to bind output port named '%s' (code %u: %s)", netOutputNames[v6], v10, last_error_message);
    v14 = _ANSTLoggingGetOSLogForCategoryANSTKit(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "[ANSTFaceAttributeAlgorithm _allocateAndBindOutputBuffers:]";
      v63 = 2114;
      v64 = v13;
      _os_log_error_impl(&dword_22E5D5000, v14, OS_LOG_TYPE_ERROR, "%{public}s: %{public}@", buf, 0x16u);
    }

    if (buffers)
    {
      v16 = MEMORY[0x277CCA9B8];
      v60 = v53;
      v61 = v13;
      v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, &v61, &v60, 1);
      *buffers = objc_msgSend_errorWithDomain_code_userInfo_(v16, v18, @"ANSTErrorDomain", 5, v17);
    }

    v21 = 0;
LABEL_13:
    if ((v21 & 1) == 0)
    {
      objc_msgSend__releaseOutputBuffers(self, v19, v20);
      return 0;
    }

    if (++v6 == 7)
    {
      return 1;
    }
  }

  *buf = 0;
  iosurface = e5rt_buffer_object_get_iosurface();
  if (iosurface)
  {
    v31 = iosurface;
    v32 = e5rt_get_last_error_message();
    v34 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v33, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(_bo_outputs_array[outBufInd], &surface)", v31, v32);
    v35 = _ANSTLoggingGetOSLogForCategoryANSTKit(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_22E65AD2C();
    }

    if (!buffers)
    {
      goto LABEL_37;
    }

    v37 = MEMORY[0x277CCA9B8];
    v58 = v53;
    v59 = v34;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v36, &v59, &v58, 1);
    goto LABEL_36;
  }

  BaseAddress = IOSurfaceGetBaseAddress(*buf);
  shape = e5rt_tensor_desc_get_shape();
  if (shape)
  {
    v38 = shape;
    v39 = e5rt_get_last_error_message();
    v34 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v40, @"%s returned error code %u (%s)", "e5rt_tensor_desc_get_shape(desc, &rank, &shape)", v38, v39);
    v41 = _ANSTLoggingGetOSLogForCategoryANSTKit(v34);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_22E65AD2C();
    }

    if (!buffers)
    {
      goto LABEL_37;
    }

    v37 = MEMORY[0x277CCA9B8];
    v56 = v53;
    v57 = v34;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, &v57, &v56, 1);
    v48 = LABEL_36:;
    *buffers = objc_msgSend_errorWithDomain_code_userInfo_(v37, v49, @"ANSTErrorDomain", 5, v48);

    goto LABEL_37;
  }

  strides = e5rt_tensor_desc_get_strides();
  if (!strides)
  {
    v26 = netOutputWidths[v6];
    v27 = MEMORY[0x10];
    v28 = netOutputChannels[v6] * netOutputHeights[v6];
    v29 = -1680;
    do
    {
      v30 = &i->_attrNetOutputBuffers + v29;
      *(v30 + 240) = BaseAddress;
      *(v30 + 483) = v26;
      *(v30 + 482) = v28;
      *(v30 + 485) = 6;
      BaseAddress += (v28 * v27);
      *(v30 + 484) = v27;
      v29 += 168;
    }

    while (v29);
    v21 = 1;
    goto LABEL_13;
  }

  v43 = strides;
  v44 = e5rt_get_last_error_message();
  v34 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v45, @"%s returned error code %u (%s)", "e5rt_tensor_desc_get_strides(desc, &rank, &strides)", v43, v44);
  v46 = _ANSTLoggingGetOSLogForCategoryANSTKit(v34);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    sub_22E65AD2C();
  }

  if (buffers)
  {
    v37 = MEMORY[0x277CCA9B8];
    v54 = v53;
    v55 = v34;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v47, &v55, &v54, 1);
    goto LABEL_36;
  }

LABEL_37:

  return 0;
}

- (void)_releaseOutputBuffers
{
  v15 = *MEMORY[0x277D85DE8];
  bo_outputs_array = self->_bo_outputs_array;
  v4 = 7;
  do
  {
    if (*bo_outputs_array)
    {
      v5 = e5rt_buffer_object_release();
      if (v5)
      {
        v6 = v5;
        last_error_message = e5rt_get_last_error_message();
        v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"%s returned error code %u (%s)", "e5rt_buffer_object_release(&(_bo_outputs_array[i]))", v6, last_error_message);
        v10 = _ANSTLoggingGetOSLogForCategoryANSTKit(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v12 = "[ANSTFaceAttributeAlgorithm _releaseOutputBuffers]";
          v13 = 2114;
          v14 = v9;
          _os_log_error_impl(&dword_22E5D5000, v10, OS_LOG_TYPE_ERROR, "%{public}s: %{public}@", buf, 0x16u);
        }
      }

      *bo_outputs_array = 0;
    }

    ++bo_outputs_array;
    --v4;
  }

  while (v4);
  bzero(&self->_attrNetOutputBuffers, 0x780uLL);
}

- (BOOL)_initializePixelTransferSession:(id *)session
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (self->_pixelTransferSession)
  {
    return 1;
  }

  v6 = VTPixelTransferSessionCreate(0, &self->_pixelTransferSession);
  if (!v6)
  {
    v6 = VTSessionSetProperty(self->_pixelTransferSession, *MEMORY[0x277CE28B0], *MEMORY[0x277CE2A78]);
    if (!v6)
    {
      v6 = VTSessionSetProperty(self->_pixelTransferSession, *MEMORY[0x277CE28A8], *MEMORY[0x277CBED28]);
      if (!v6)
      {
        return 1;
      }
    }
  }

  v7 = _ANSTLoggingGetOSLogForCategoryANSTKit(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_22E65ADA0(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  if (session)
  {
    v17 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA068];
    v21[0] = @"Failed to prepare VTPixelTransferSession";
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v21, &v20, 1);
    *session = objc_msgSend_errorWithDomain_code_userInfo_(v17, v19, @"ANSTErrorDomain", 3, v18);
  }

  objc_msgSend__releasePixelTransferSession(self, v15, v16);
  return 0;
}

- (void)_releasePixelTransferSession
{
  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(self->_pixelTransferSession);
    CFRelease(pixelTransferSession);
  }

  self->_pixelTransferSession = 0;
}

@end