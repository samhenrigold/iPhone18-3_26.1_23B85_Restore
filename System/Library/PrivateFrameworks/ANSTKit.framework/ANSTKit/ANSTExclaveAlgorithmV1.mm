@interface ANSTExclaveAlgorithmV1
- (ANSTExclaveAlgorithmV1)initWithConfiguration:(id)configuration;
- (BOOL)_allocateAndBindOutputBuffers:(id *)buffers;
- (BOOL)_initializePostProcessor:(id *)processor;
- (BOOL)_loadE5ExecutionStreamOperation:(id *)operation;
- (BOOL)bindNetworkInputPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
- (BOOL)prepareWithError:(id *)error;
- (id)_executeInferenceWithFocalLength:(float)length originalInputDimension:(CGSize)dimension error:(id *)error;
- (id)executeInferenceWithFocalLength:(float)length originalInputDimension:(CGSize)dimension error:(id *)error;
- (void)_destroyAcHandles;
- (void)_releaseOutputBuffers;
- (void)dealloc;
@end

@implementation ANSTExclaveAlgorithmV1

- (ANSTExclaveAlgorithmV1)initWithConfiguration:(id)configuration
{
  v30 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v27.receiver = self;
  v27.super_class = ANSTExclaveAlgorithmV1;
  v6 = [(ANSTExclaveAlgorithm *)&v27 initWithConfiguration:configurationCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    if (objc_msgSend_networkResolution(v7->_configuration, v8, v9))
    {
      if (objc_msgSend_networkResolution(v7->_configuration, v10, v11) == 1)
      {
        v14 = 1024;
        v15 = 768;
      }

      else
      {
        if (objc_msgSend_networkResolution(v7->_configuration, v12, v13) != 2)
        {
          v25 = 0;
          goto LABEL_12;
        }

        v15 = 832;
        v14 = 832;
      }
    }

    else
    {
      v14 = 512;
      v15 = 384;
    }

    v16 = [ANSTPixelBufferDescriptor alloc];
    v18 = objc_msgSend_initWithName_width_height_pixelFormatType_pixelBufferAttributes_error_(v16, v17, @"input_image", v14, v15, 1278226488, 0, 0);
    networkInputImageDescriptor = v7->_networkInputImageDescriptor;
    v7->_networkInputImageDescriptor = v18;

    v7->_es = 0;
    v7->_esop = 0;
    *v7->_bo_outputs_array = 0u;
    *&v7->_bo_outputs_array[2] = 0u;
    *&v7->_bo_outputs_array[4] = 0u;
    *&v7->_bo_outputs_array[6] = 0u;
    *&v7->_bo_outputs_array[8] = 0u;
    *&v7->_bmBuffer_outputs[0].data = 0u;
    *&v7->_bmBuffer_outputs[0].rowBytes = 0u;
    *&v7->_bmBuffer_outputs[1].height = 0u;
    *&v7->_bmBuffer_outputs[2].data = 0u;
    *&v7->_bmBuffer_outputs[2].rowBytes = 0u;
    *&v7->_bmBuffer_outputs[3].height = 0u;
    *&v7->_bmBuffer_outputs[4].data = 0u;
    *&v7->_bmBuffer_outputs[4].rowBytes = 0u;
    *&v7->_bmBuffer_outputs[5].height = 0u;
    *&v7->_bmBuffer_outputs[6].data = 0u;
    *&v7->_bmBuffer_outputs[6].rowBytes = 0u;
    *&v7->_bmBuffer_outputs[7].height = 0u;
    *&v7->_bmBuffer_outputs[8].data = 0u;
    *&v7->_bmBuffer_outputs[8].rowBytes = 0u;
    *&v7->_bmBuffer_outputs[9].height = 0u;
    v7->_prepared = 0;
    v7->_inputPixelBufferIsBound = 0;
    v21 = _ANSTLoggingGetOSLogForCategoryANSTKit(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_msgSend_description(v7->_configuration, v22, v23);
      *buf = 138543362;
      v29 = v24;
      _os_log_impl(&dword_22E5D5000, v21, OS_LOG_TYPE_DEFAULT, "ANSTExclaveAlgorithmV1 initialized with config %{public}@.", buf, 0xCu);
    }
  }

  v25 = v7;
LABEL_12:

  return v25;
}

- (void)dealloc
{
  objc_msgSend__destroyAcHandles(self, a2, v2);
  objc_msgSend__releaseOutputBuffers(self, v4, v5);
  if (self->_esop)
  {
    v6 = e5rt_execution_stream_operation_release();
    if (v6)
    {
      v7 = v6;
      last_error_message = e5rt_get_last_error_message();
      v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_release(&_esop)", v7, last_error_message);
      v11 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_22E657468();
      }
    }

    self->_esop = 0;
  }

  if (self->_es)
  {
    v12 = e5rt_execution_stream_release();
    if (v12)
    {
      v13 = v12;
      v14 = e5rt_get_last_error_message();
      v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"%s returned error code %u (%s)", "e5rt_execution_stream_release(&_es)", v13, v14);
      v17 = _ANSTLoggingGetOSLogForCategoryANSTKit(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_22E657468();
      }
    }

    self->_es = 0;
  }

  v18.receiver = self;
  v18.super_class = ANSTExclaveAlgorithmV1;
  [(ANSTExclaveAlgorithmV1 *)&v18 dealloc];
}

- (BOOL)prepareWithError:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (self->_prepared)
  {
    LOBYTE(E5ExecutionStreamOperation) = 1;
  }

  else
  {
    E5ExecutionStreamOperation = objc_msgSend__initializePostProcessor_(self, a2, error);
    if (E5ExecutionStreamOperation)
    {
      if (self->_es || (v8 = e5rt_execution_stream_create(), !v8))
      {
        E5ExecutionStreamOperation = objc_msgSend__loadE5ExecutionStreamOperation_(self, v6, error);
        if (E5ExecutionStreamOperation)
        {
          E5ExecutionStreamOperation = objc_msgSend__allocateAndBindOutputBuffers_(self, v7, error);
          if (E5ExecutionStreamOperation)
          {
            LOBYTE(E5ExecutionStreamOperation) = 1;
            self->_prepared = 1;
          }
        }
      }

      else
      {
        v9 = v8;
        last_error_message = e5rt_get_last_error_message();
        v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s returned error code %u (%s)", "e5rt_execution_stream_create(&_es)", v9, last_error_message);
        v13 = _ANSTLoggingGetOSLogForCategoryANSTKit(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_22E6574DC();
        }

        if (error)
        {
          v15 = MEMORY[0x277CCA9B8];
          v19 = *MEMORY[0x277CCA068];
          v20[0] = v12;
          v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v20, &v19, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v15, v17, @"ANSTErrorDomain", 5, v16);
        }

        LOBYTE(E5ExecutionStreamOperation) = 0;
      }
    }
  }

  return E5ExecutionStreamOperation;
}

- (BOOL)bindNetworkInputPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  v76[1] = *MEMORY[0x277D85DE8];
  if (!self->_prepared)
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Need to call [prepareWithError:] before binding input pixel buffer.");
    v16 = _ANSTLoggingGetOSLogForCategoryANSTKit(v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_22E657550();
    }

    if (!error)
    {
      goto LABEL_46;
    }

    v18 = MEMORY[0x277CCA9B8];
    v75 = *MEMORY[0x277CCA068];
    v76[0] = v12;
    v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v76, &v75, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v18, v20, @"ANSTErrorDomain", 3, v19);
    goto LABEL_45;
  }

  if ((objc_msgSend_validatePixelBuffer_(self->_networkInputImageDescriptor, a2, buffer) & 1) == 0)
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"Input pixel buffer has unexpected width, height, or pixel format.");
    v21 = _ANSTLoggingGetOSLogForCategoryANSTKit(v12);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_22E657550();
    }

    if (!error)
    {
      goto LABEL_46;
    }

    v23 = MEMORY[0x277CCA9B8];
    v73 = *MEMORY[0x277CCA068];
    v74 = v12;
    v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, &v74, &v73, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v23, v24, @"ANSTErrorDomain", 13, v19);
    goto LABEL_45;
  }

  v8 = e5rt_execution_stream_reset();
  if (v8)
  {
    v9 = v8;
    last_error_message = e5rt_get_last_error_message();
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s returned error code %u (%s)", "e5rt_execution_stream_reset(_es)", v9, last_error_message);
    v13 = _ANSTLoggingGetOSLogForCategoryANSTKit(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22E657550();
    }

    if (!error)
    {
      goto LABEL_46;
    }

    v15 = MEMORY[0x277CCA9B8];
    v71 = *MEMORY[0x277CCA068];
    v72 = v12;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, &v72, &v71, 1);
    goto LABEL_44;
  }

  CVPixelBufferGetIOSurface(buffer);
  v25 = e5rt_surface_object_create_from_iosurface();
  if (v25)
  {
    v26 = v25;
    v27 = e5rt_get_last_error_message();
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, @"%s returned error code %u (%s)", "e5rt_surface_object_create_from_iosurface(&surface_object, surface)", v26, v27);
    v29 = _ANSTLoggingGetOSLogForCategoryANSTKit(v12);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_22E657550();
    }

    if (!error)
    {
      goto LABEL_46;
    }

    v15 = MEMORY[0x277CCA9B8];
    v69 = *MEMORY[0x277CCA068];
    v70 = v12;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, &v70, &v69, 1);
    goto LABEL_44;
  }

  v31 = e5rt_execution_stream_operation_retain_input_port();
  if (v31)
  {
    v32 = v31;
    v33 = e5rt_get_last_error_message();
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v34, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_input_port(_esop, input_image, &input_port)", v32, v33, 0, 0);
    v35 = _ANSTLoggingGetOSLogForCategoryANSTKit(v12);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_22E657550();
    }

    if (!error)
    {
      goto LABEL_46;
    }

    v15 = MEMORY[0x277CCA9B8];
    v67 = *MEMORY[0x277CCA068];
    v68 = v12;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v36, &v68, &v67, 1);
    goto LABEL_44;
  }

  v37 = e5rt_io_port_bind_surface_object();
  if (v37)
  {
    v38 = v37;
    v39 = e5rt_get_last_error_message();
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v40, @"%s returned error code %u (%s)", "e5rt_io_port_bind_surface_object(input_port, surface_object)", v38, v39, 0, 0);
    v41 = _ANSTLoggingGetOSLogForCategoryANSTKit(v12);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_22E657550();
    }

    if (!error)
    {
      goto LABEL_46;
    }

    v15 = MEMORY[0x277CCA9B8];
    v65 = *MEMORY[0x277CCA068];
    v66 = v12;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, &v66, &v65, 1);
    goto LABEL_44;
  }

  v43 = e5rt_io_port_release();
  if (v43)
  {
    v44 = v43;
    v45 = e5rt_get_last_error_message();
    v47 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v46, @"%s returned error code %u (%s)", "e5rt_io_port_release(&input_port)", v44, v45, 0, 0);
    v48 = _ANSTLoggingGetOSLogForCategoryANSTKit(v47);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      sub_22E657550();
    }
  }

  v49 = e5rt_surface_object_release();
  if (v49)
  {
    v50 = v49;
    v51 = e5rt_get_last_error_message();
    v53 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v52, @"%s returned error code %u (%s)", "e5rt_surface_object_release(&surface_object)", v50, v51);
    v54 = _ANSTLoggingGetOSLogForCategoryANSTKit(v53);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      sub_22E657550();
    }
  }

  v55 = e5rt_execution_stream_encode_operation();
  if (v55)
  {
    v56 = v55;
    v57 = e5rt_get_last_error_message();
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v58, @"%s returned error code %u (%s)", "e5rt_execution_stream_encode_operation(_es, _esop)", v56, v57);
    v59 = _ANSTLoggingGetOSLogForCategoryANSTKit(v12);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      sub_22E657550();
    }

    if (!error)
    {
      goto LABEL_46;
    }

    v15 = MEMORY[0x277CCA9B8];
    v63 = *MEMORY[0x277CCA068];
    v64 = v12;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v60, &v64, &v63, 1);
    v19 = LABEL_44:;
    objc_msgSend_errorWithDomain_code_userInfo_(v15, v61, @"ANSTErrorDomain", 5, v19);
    *error = LABEL_45:;

LABEL_46:
    return 0;
  }

  result = 1;
  self->_inputPixelBufferIsBound = 1;
  return result;
}

- (id)executeInferenceWithFocalLength:(float)length originalInputDimension:(CGSize)dimension error:(id *)error
{
  height = dimension.height;
  width = dimension.width;
  v10 = _ANSTLoggingGetOSLogForCategoryANSTKit(self);
  v11 = os_signpost_id_make_with_pointer(v10, self);

  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ANSTExclaveAlgorithmV1_inference", &unk_22E663F87, buf, 2u);
  }

  *&v12 = length;
  v14 = objc_msgSend__executeInferenceWithFocalLength_originalInputDimension_error_(self, v13, error, v12, width, height);
  v15 = os_signpost_id_make_with_pointer(v10, self);

  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v10, OS_SIGNPOST_INTERVAL_END, v15, "ANSTExclaveAlgorithmV1_inference", &unk_22E663F87, v17, 2u);
  }

  return v14;
}

- (id)_executeInferenceWithFocalLength:(float)length originalInputDimension:(CGSize)dimension error:(id *)error
{
  v52[1] = *MEMORY[0x277D85DE8];
  if (!self->_inputPixelBufferIsBound)
  {
    if (self->_prepared)
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Input pixel buffer not bound. Please call [bindNetworkInputPixelBuffer:error:] before inference.");
    }

    else
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Algorihm not ready for inference. Please do [prepareWithError:] and then [bindNetworkInputPixelBuffer:error:] before inference.");
    }
    v14 = ;
    v20 = _ANSTLoggingGetOSLogForCategoryANSTKit(v14);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_22E6575C4();
    }

    if (!error)
    {
      goto LABEL_21;
    }

    v22 = MEMORY[0x277CCA9B8];
    v51 = *MEMORY[0x277CCA068];
    v52[0] = v14;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v52, &v51, 1);
    v18 = LABEL_15:;
    objc_msgSend_errorWithDomain_code_userInfo_(v22, v23, @"ANSTErrorDomain", 3, v18);
    goto LABEL_20;
  }

  if (length <= 0.0)
  {
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Focal length must be a positive number.");
    v24 = _ANSTLoggingGetOSLogForCategoryANSTKit(v14);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_22E6575C4();
    }

    if (!error)
    {
      goto LABEL_21;
    }

    v26 = MEMORY[0x277CCA9B8];
    v49 = *MEMORY[0x277CCA068];
    v50 = v14;
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, &v50, &v49, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v26, v27, @"ANSTErrorDomain", 2, v18);
    goto LABEL_20;
  }

  height = dimension.height;
  width = dimension.width;
  v10 = e5rt_execution_stream_execute_sync();
  if (v10)
  {
    v11 = v10;
    last_error_message = e5rt_get_last_error_message();
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s returned error code %u (%s)", "e5rt_execution_stream_execute_sync(_es)", v11, last_error_message);
    v15 = _ANSTLoggingGetOSLogForCategoryANSTKit(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_22E6575C4();
    }

    if (!error)
    {
      goto LABEL_21;
    }

    v17 = MEMORY[0x277CCA9B8];
    v47 = *MEMORY[0x277CCA068];
    v48 = v14;
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, &v48, &v47, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v17, v19, @"ANSTErrorDomain", 5, v18);
    *error = LABEL_20:;

LABEL_21:
    v28 = 0;
    goto LABEL_22;
  }

  self->_detControl.focalLength = length;
  self->_detControl.originalImageWidth = width;
  self->_detControl.originalImageHeight = height;
  self->_detControl.besCropInfo.x = 0.0;
  self->_detControl.besCropInfo.y = 0.0;
  self->_detControl.besCropInfo.width = width;
  self->_detControl.besCropInfo.height = height;
  bzero(v46, 0x8110uLL);
  v38 = AcANSTPostProcessNetOutputs(self->_det, &self->_detControl, &self->_detParams, &self->_bmBuffer_outputs[0].data, 10, self->_detState.data, v46, v30, v31, v32, v33, v34, v35, v36, v37);
  if (v38)
  {
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v39, @"%s returned error code %u", "AcANSTPostProcessNetOutputs(_det, &_detControl, &_detParams, _bmBuffer_outputs, kAcANSTNetOutputEKv1Max, &_detState, &acResult)", v38);
    v40 = _ANSTLoggingGetOSLogForCategoryANSTKit(v14);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_22E6575C4();
    }

    if (!error)
    {
      goto LABEL_21;
    }

    v22 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA068];
    v45 = v14;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v41, &v45, &v44, 1);
    goto LABEL_15;
  }

  v42 = [ANSTExclaveAlgorithmResult alloc];
  v28 = objc_msgSend_initWithAcResult_(v42, v43, v46);
LABEL_22:

  return v28;
}

- (BOOL)_initializePostProcessor:(id *)processor
{
  v62[1] = *MEMORY[0x277D85DE8];
  if (self->_det)
  {
    return 1;
  }

  p_detControl = &self->_detControl;
  *&self->_detControl.originalImageWidth = 0u;
  *&self->_detControl.imageOrientation = 0u;
  *&self->_detControl.initWithDetResults = 0u;
  *&self->_detControl.besCropInfo.height = 0u;
  self->_detControl.networkInputWidth = objc_msgSend_width(self->_networkInputImageDescriptor, a2, processor);
  v9 = objc_msgSend_height(self->_networkInputImageDescriptor, v7, v8);
  p_detControl->networkInputHeight = v9;
  networkInputWidth = p_detControl->networkInputWidth;
  p_detControl->originalImageWidth = networkInputWidth;
  p_detControl->originalImageHeight = v9;
  p_detControl->besCropInfo.x = 0.0;
  p_detControl->besCropInfo.y = 0.0;
  p_detControl->besCropInfo.width = networkInputWidth;
  p_detControl->besCropInfo.height = v9;
  if (objc_msgSend_networkResolution(self->_configuration, v11, v12))
  {
    if (objc_msgSend_networkResolution(self->_configuration, v13, v14) != 2)
    {
      goto LABEL_8;
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  p_detControl->networkInputResolution = v15;
LABEL_8:
  if (objc_msgSend_version(self->_configuration, v13, v14) == 65717)
  {
    v18 = 2;
  }

  else if (objc_msgSend_version(self->_configuration, v16, v17) == 66436)
  {
    v18 = 3;
  }

  else if (objc_msgSend_version(self->_configuration, v19, v20) == 66446)
  {
    v18 = 4;
  }

  else if (objc_msgSend_version(self->_configuration, v21, v22) == 66447)
  {
    v18 = 5;
  }

  else
  {
    if (objc_msgSend_version(self->_configuration, v23, v24) != 66456)
    {
      goto LABEL_19;
    }

    v18 = 6;
  }

  p_detControl->version = v18;
LABEL_19:
  v54 = 0;
  AcANSTCreate(&self->_det, &v54, p_detControl, &self->_detState);
  if (v25)
  {
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"%s returned error code %u", "AcANSTCreate(&_det, &detConfig, &_detControl, &_detState)", v25);
    v28 = _ANSTLoggingGetOSLogForCategoryANSTKit(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_22E657638();
    }

    if (!processor)
    {
      goto LABEL_40;
    }

    v30 = MEMORY[0x277CCA9B8];
    v61 = *MEMORY[0x277CCA068];
    v62[0] = v27;
    v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, v62, &v61, 1);
    v33 = objc_msgSend_errorWithDomain_code_userInfo_(v30, v32, @"ANSTErrorDomain", 3, v31);
    goto LABEL_39;
  }

  v34 = AcANSTStart(self->_det, &self->_detState);
  if (v34)
  {
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v35, @"%s returned error code %u", "AcANSTStart(_det, &_detState)", v34);
    v36 = _ANSTLoggingGetOSLogForCategoryANSTKit(v27);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_22E657638();
    }

    if (!processor)
    {
      goto LABEL_40;
    }

    v38 = MEMORY[0x277CCA9B8];
    v59 = *MEMORY[0x277CCA068];
    v60 = v27;
    v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, &v60, &v59, 1);
    v33 = objc_msgSend_errorWithDomain_code_userInfo_(v38, v39, @"ANSTErrorDomain", 3, v31);
    goto LABEL_39;
  }

  v40 = AcANSTGetParams(self->_det, self->_detState.data, p_detControl, &self->_detParams);
  if (v40)
  {
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v41, @"%s returned error code %u", "AcANSTGetParams(_det, &_detState, &_detControl, &_detParams)", v40);
    v42 = _ANSTLoggingGetOSLogForCategoryANSTKit(v27);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_22E657638();
    }

    if (!processor)
    {
      goto LABEL_40;
    }

    v44 = MEMORY[0x277CCA9B8];
    v57 = *MEMORY[0x277CCA068];
    v58 = v27;
    v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v43, &v58, &v57, 1);
    v33 = objc_msgSend_errorWithDomain_code_userInfo_(v44, v45, @"ANSTErrorDomain", 3, v31);
    goto LABEL_39;
  }

  v46 = AcANSTUseLowThresholds(self->_det);
  if (!v46)
  {
    return 1;
  }

  v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v47, @"%s returned error code %u", "AcANSTUseLowThresholds(_det, true)", v46);
  v48 = _ANSTLoggingGetOSLogForCategoryANSTKit(v27);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    sub_22E657638();
  }

  if (processor)
  {
    v50 = MEMORY[0x277CCA9B8];
    v55 = *MEMORY[0x277CCA068];
    v56 = v27;
    v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v49, &v56, &v55, 1);
    v33 = objc_msgSend_errorWithDomain_code_userInfo_(v50, v51, @"ANSTErrorDomain", 3, v31);
LABEL_39:
    *processor = v33;
  }

LABEL_40:

  objc_msgSend__destroyAcHandles(self, v52, v53);
  return 0;
}

- (BOOL)_loadE5ExecutionStreamOperation:(id *)operation
{
  v46[1] = *MEMORY[0x277D85DE8];
  if (!self->_esop)
  {
    v6 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], a2, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/anst4ek.mlmodelc");
    if (objc_msgSend_version(self->_configuration, v7, v8) == 65717 && objc_msgSend_networkResolution(self->_configuration, v9, v10) == 2)
    {
      objc_msgSend_URLByAppendingPathComponent_(v6, v9, @"anst4ek_v1dot8dot1_2x.bundle");
    }

    else if (objc_msgSend_version(self->_configuration, v9, v10) == 66436 && objc_msgSend_networkResolution(self->_configuration, v11, v12) == 2)
    {
      objc_msgSend_URLByAppendingPathComponent_(v6, v11, @"anst4ek_v1dot9_2x.bundle");
    }

    else if ((objc_msgSend_version(self->_configuration, v11, v12) == 66446 || objc_msgSend_version(self->_configuration, v13, v14) == 66447) && objc_msgSend_networkResolution(self->_configuration, v13, v14) == 2)
    {
      objc_msgSend_URLByAppendingPathComponent_(v6, v13, @"anst4ek_v1dot9dot1_2x.bundle");
    }

    else
    {
      if (objc_msgSend_version(self->_configuration, v13, v14) != 66456 || objc_msgSend_networkResolution(self->_configuration, v15, v16) != 2)
      {

        goto LABEL_23;
      }

      objc_msgSend_URLByAppendingPathComponent_(v6, v17, @"anst4ek_v1dot9dot2_2x.bundle");
    }
    v18 = ;

    if (v18)
    {
      objc_msgSend_UTF8String(@"anst4ek", v19, v20);
      v23 = objc_msgSend_relativePath(v18, v21, v22);
      v24 = v23;
      objc_msgSend_UTF8String(v24, v25, v26);
      objc_msgSend_UTF8String(@"main", v27, v28);
      precompiled_compute_operation = e5rt_execution_stream_operation_create_precompiled_compute_operation();

      v3 = precompiled_compute_operation == 0;
      if (!precompiled_compute_operation)
      {
LABEL_29:

        return v3;
      }

      last_error_message = e5rt_get_last_error_message();
      v32 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v31, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_create_precompiled_compute_operation(&_esop, opName.UTF8String, modelURL.relativePath.UTF8String, opFuncName.UTF8String, 1, true)", precompiled_compute_operation, last_error_message);
      v33 = _ANSTLoggingGetOSLogForCategoryANSTKit(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_22E6576AC();
      }

      if (operation)
      {
        v35 = MEMORY[0x277CCA9B8];
        v43 = *MEMORY[0x277CCA068];
        v44 = v32;
        v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v34, &v44, &v43, 1);
        *operation = objc_msgSend_errorWithDomain_code_userInfo_(v35, v37, @"ANSTErrorDomain", 5, v36);
      }

      goto LABEL_27;
    }

LABEL_23:
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"Unsupported configuration combo. ANSTKit currently only ships [v1.8.1/v1.9/v1.9.1/v1.9.1.1 832x832] ANST4EK models.");
    v38 = _ANSTLoggingGetOSLogForCategoryANSTKit(v18);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_22E6576AC();
    }

    if (!operation)
    {
      goto LABEL_28;
    }

    v40 = MEMORY[0x277CCA9B8];
    v45 = *MEMORY[0x277CCA068];
    v46[0] = v18;
    v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, v46, &v45, 1);
    *operation = objc_msgSend_errorWithDomain_code_userInfo_(v40, v41, @"ANSTErrorDomain", 3, v32);
LABEL_27:

LABEL_28:
    v3 = 0;
    goto LABEL_29;
  }

  return 1;
}

- (BOOL)_allocateAndBindOutputBuffers:(id *)buffers
{
  v31 = *MEMORY[0x277D85DE8];
  if (self->_bo_outputs_array[0])
  {
    return 1;
  }

  v22 = *MEMORY[0x277CCA068];
  v6 = e5rt_execution_stream_operation_retain_output_port();
  if (v6 || (v6 = e5rt_io_port_retain_tensor_desc(), v6) || (v6 = e5rt_tensor_desc_alloc_buffer_object(), v6) || (v6 = e5rt_io_port_bind_buffer_object(), v6))
  {
    v7 = v6;
    last_error_message = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"Failed to bind output port named '%s' (code %u: %s)", self->_detParams.netOutputNames, v7, last_error_message);
    v11 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v28 = "[ANSTExclaveAlgorithmV1 _allocateAndBindOutputBuffers:]";
      v29 = 2114;
      v30 = v10;
      _os_log_error_impl(&dword_22E5D5000, v11, OS_LOG_TYPE_ERROR, "%{public}s: %{public}@", buf, 0x16u);
    }

    if (buffers)
    {
      v13 = MEMORY[0x277CCA9B8];
      v23 = v22;
      v24 = v10;
      v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, &v24, &v23, 1);
      *buffers = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"ANSTErrorDomain", 5, v14);
    }
  }

  else
  {
    v18 = _ANSTLoggingGetOSLogForCategoryANSTKit(v6);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v28 = "BOOL setBmBufferByE5TensorDescriptor(BmBuffer * _Nonnull, e5rt_tensor_desc_t _Nonnull, NSError * _Nullable __autoreleasing * _Nullable)";
      v29 = 2114;
      v30 = @"Null input";
      _os_log_error_impl(&dword_22E5D5000, v18, OS_LOG_TYPE_ERROR, "%{public}s: %{public}@", buf, 0x16u);
    }

    if (buffers)
    {
      v19 = MEMORY[0x277CCA9B8];
      v25 = v22;
      v26 = @"Null input";
      v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, &v26, &v25, 1);
      *buffers = objc_msgSend_errorWithDomain_code_userInfo_(v19, v21, @"ANSTErrorDomain", 2, v20);
    }
  }

  objc_msgSend__releaseOutputBuffers(self, v16, v17);
  return 0;
}

- (void)_releaseOutputBuffers
{
  v15 = *MEMORY[0x277D85DE8];
  bo_outputs_array = self->_bo_outputs_array;
  v4 = 10;
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
          v12 = "[ANSTExclaveAlgorithmV1 _releaseOutputBuffers]";
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
  *&self->_bmBuffer_outputs[0].data = 0u;
  *&self->_bmBuffer_outputs[0].rowBytes = 0u;
  *&self->_bmBuffer_outputs[1].height = 0u;
  *&self->_bmBuffer_outputs[2].data = 0u;
  *&self->_bmBuffer_outputs[2].rowBytes = 0u;
  *&self->_bmBuffer_outputs[3].height = 0u;
  *&self->_bmBuffer_outputs[4].data = 0u;
  *&self->_bmBuffer_outputs[4].rowBytes = 0u;
  *&self->_bmBuffer_outputs[5].height = 0u;
  *&self->_bmBuffer_outputs[6].data = 0u;
  *&self->_bmBuffer_outputs[6].rowBytes = 0u;
  *&self->_bmBuffer_outputs[7].height = 0u;
  *&self->_bmBuffer_outputs[8].data = 0u;
  *&self->_bmBuffer_outputs[8].rowBytes = 0u;
  *&self->_bmBuffer_outputs[9].height = 0u;
}

- (void)_destroyAcHandles
{
  v3 = AcANSTStop(self->_det);
  if (v3)
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"%s returned error code %u", "AcANSTStop(_det, &_detState)", v3);
    v6 = _ANSTLoggingGetOSLogForCategoryANSTKit(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_22E657720();
    }
  }

  det = self->_det;
  if (det)
  {
    AcANSTDestroy(det);
    self->_det = 0;
  }

  bzero(&self->_detParams, 0xE88uLL);
  bzero(&self->_detState, 0x32EA0uLL);
  *&self->_detControl.originalImageWidth = 0u;
  *&self->_detControl.imageOrientation = 0u;
  *&self->_detControl.initWithDetResults = 0u;
  *&self->_detControl.besCropInfo.height = 0u;
}

@end