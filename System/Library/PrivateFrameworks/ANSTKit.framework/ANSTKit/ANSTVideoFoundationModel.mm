@interface ANSTVideoFoundationModel
- (ANSTVideoFoundationModel)initWithConfiguration:(id)configuration;
- (BOOL)bindInputFrameBuffer:(__CVBuffer *)buffer error:(id *)error;
- (BOOL)executeInferenceWithError:(id *)error;
- (BOOL)prepareWithError:(id *)error;
- (void)dealloc;
@end

@implementation ANSTVideoFoundationModel

- (ANSTVideoFoundationModel)initWithConfiguration:(id)configuration
{
  v22 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v20.receiver = self;
  v20.super_class = ANSTVideoFoundationModel;
  v6 = [(ANSTAlgorithm *)&v20 initWithConfiguration:configurationCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, configuration);
    if (objc_msgSend_version(v7->_config, v8, v9) == 0x10000)
    {
      v10 = 256;
    }

    else
    {
      v10 = 224;
    }

    v11 = [ANSTPixelBufferDescriptor alloc];
    v13 = objc_msgSend_initWithName_width_height_pixelFormatType_pixelBufferAttributes_error_(v11, v12, @"input_image", v10, v10, 1111970369, 0, 0);
    inputImageDescriptor = v7->_inputImageDescriptor;
    v7->_inputImageDescriptor = v13;

    v21 = xmmword_22E661A80;
    v15 = [ANSTTensorDescriptor alloc];
    v17 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v15, v16, @"image_feature", 102, 2, &v21, 64, 0);
    outputFeatureDescriptor = v7->_outputFeatureDescriptor;
    v7->_outputFeatureDescriptor = v17;

    v7->_prepared = 0;
  }

  return v7;
}

- (BOOL)prepareWithError:(id *)error
{
  v100[1] = *MEMORY[0x277D85DE8];
  if (self->_prepared)
  {
    return 1;
  }

  if (!self->_stream)
  {
    v11 = e5rt_execution_stream_create();
    if (v11)
    {
      v12 = v11;
      last_error_message = e5rt_get_last_error_message();
      v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%s returned error code %u (%s)", "e5rt_execution_stream_create(&_stream)", v12, last_error_message);
      v16 = _ANSTLoggingGetOSLogForCategoryANSTKit(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_22E657EDC();
      }

      if (!error)
      {
        goto LABEL_59;
      }

      v18 = MEMORY[0x277CCA9B8];
      v99 = *MEMORY[0x277CCA068];
      v100[0] = v15;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v100, &v99, 1);
      goto LABEL_58;
    }
  }

  if (!self->_operation)
  {
    v6 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], a2, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/vfm.mlmodelc");
    v9 = objc_msgSend_version(self->_config, v7, v8);
    switch(v9)
    {
      case 65536:
        objc_msgSend_URLByAppendingPathComponent_(v6, v10, @"model.mil");
        break;
      case 196609:
        objc_msgSend_URLByAppendingPathComponent_(v6, v10, @"gesture.mil");
        break;
      case 131073:
        objc_msgSend_URLByAppendingPathComponent_(v6, v10, @"fitness.mil");
        break;
      default:
        v72 = _ANSTLoggingGetOSLogForCategoryANSTKit(v9);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          sub_22E657FD0(&self->_config, v72, v73);
        }

        if (error)
        {
          v76 = MEMORY[0x277CCACA8];
          v77 = objc_msgSend_version(self->_config, v74, v75);
          v79 = objc_msgSend_stringWithFormat_(v76, v78, @"Unexpected model version %lu", v77);
          v80 = MEMORY[0x277CCA9B8];
          v97 = *MEMORY[0x277CCA068];
          v98 = v79;
          v82 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v81, &v98, &v97, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v80, v83, @"ANSTErrorDomain", 5, v82);
        }

        return 0;
    }
    v19 = ;

    if (!e5rt_e5_compiler_create() && !e5rt_e5_compiler_options_create())
    {
      v22 = objc_msgSend_relativePath(v19, v20, v21);
      v23 = v22;
      objc_msgSend_UTF8String(v23, v24, v25);
      if (e5rt_e5_compiler_compile() || e5rt_program_library_retain_program_function() || e5rt_precompiled_compute_op_create_options_create_with_program_function())
      {
      }

      else
      {
        precompiled_compute_operation_with_options = e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options();

        if (!precompiled_compute_operation_with_options)
        {
LABEL_26:
          if (error && *error)
          {

            return 0;
          }

          goto LABEL_30;
        }
      }
    }

    v26 = e5rt_get_last_error_message();
    v27 = _ANSTLoggingGetOSLogForCategoryANSTKit(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_22E657F50(v26, v27, v28, v29, v30, v31, v32, v33);
    }

    if (error)
    {
      v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v34, @"MIL compilation failed due to E5 error (%s)", v26);
      v36 = MEMORY[0x277CCA9B8];
      v95 = *MEMORY[0x277CCA068];
      v96 = v35;
      v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, &v96, &v95, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v36, v39, @"ANSTErrorDomain", 5, v38);
    }

    goto LABEL_26;
  }

LABEL_30:
  if (!self->_outputPort_imageFeature)
  {
    v46 = e5rt_execution_stream_operation_retain_output_port();
    if (v46)
    {
      v47 = v46;
      v48 = e5rt_get_last_error_message();
      v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v49, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_output_port(_operation, image_feature, &_outputPort_imageFeature)", v47, v48);
      v50 = _ANSTLoggingGetOSLogForCategoryANSTKit(v15);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        sub_22E657EDC();
      }

      if (!error)
      {
        goto LABEL_59;
      }

      v18 = MEMORY[0x277CCA9B8];
      v93 = *MEMORY[0x277CCA068];
      v94 = v15;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v51, &v94, &v93, 1);
      goto LABEL_58;
    }
  }

  if (!self->_outputTensorDesc_imageFeature)
  {
    v52 = e5rt_io_port_retain_tensor_desc();
    if (v52)
    {
      v53 = v52;
      v54 = e5rt_get_last_error_message();
      v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v55, @"%s returned error code %u (%s)", "e5rt_io_port_retain_tensor_desc(_outputPort_imageFeature, &_outputTensorDesc_imageFeature)", v53, v54);
      v56 = _ANSTLoggingGetOSLogForCategoryANSTKit(v15);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        sub_22E657EDC();
      }

      if (!error)
      {
        goto LABEL_59;
      }

      v18 = MEMORY[0x277CCA9B8];
      v91 = *MEMORY[0x277CCA068];
      v92 = v15;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v57, &v92, &v91, 1);
      goto LABEL_58;
    }
  }

  if (!self->_outputBufferObject_imageFeature)
  {
    v58 = e5rt_tensor_desc_alloc_buffer_object();
    if (v58)
    {
      v59 = v58;
      v60 = e5rt_get_last_error_message();
      v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v61, @"%s returned error code %u (%s)", "e5rt_tensor_desc_alloc_buffer_object(_outputTensorDesc_imageFeature, E5RT_BUFFER_OBJECT_TYPE_IOSURFACE, 64, &_outputBufferObject_imageFeature)", v59, v60);
      v62 = _ANSTLoggingGetOSLogForCategoryANSTKit(v15);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        sub_22E657EDC();
      }

      if (!error)
      {
        goto LABEL_59;
      }

      v18 = MEMORY[0x277CCA9B8];
      v89 = *MEMORY[0x277CCA068];
      v90 = v15;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v63, &v90, &v89, 1);
      goto LABEL_58;
    }
  }

  v40 = e5rt_io_port_bind_buffer_object();
  if (v40)
  {
    v41 = v40;
    v42 = e5rt_get_last_error_message();
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v43, @"%s returned error code %u (%s)", "e5rt_io_port_bind_buffer_object(_outputPort_imageFeature, _outputBufferObject_imageFeature)", v41, v42);
    v44 = _ANSTLoggingGetOSLogForCategoryANSTKit(v15);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_22E657EDC();
    }

    if (!error)
    {
      goto LABEL_59;
    }

    v18 = MEMORY[0x277CCA9B8];
    v87 = *MEMORY[0x277CCA068];
    v88 = v15;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v45, &v88, &v87, 1);
    v70 = LABEL_58:;
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v18, v71, @"ANSTErrorDomain", 5, v70);

LABEL_59:
    return 0;
  }

  iosurface = e5rt_buffer_object_get_iosurface();
  if (iosurface)
  {
    v65 = iosurface;
    v66 = e5rt_get_last_error_message();
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v67, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(_outputBufferObject_imageFeature, &_outputFeatureSurface)", v65, v66);
    v68 = _ANSTLoggingGetOSLogForCategoryANSTKit(v15);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      sub_22E657EDC();
    }

    if (!error)
    {
      goto LABEL_59;
    }

    v18 = MEMORY[0x277CCA9B8];
    v85 = *MEMORY[0x277CCA068];
    v86 = v15;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v69, &v86, &v85, 1);
    goto LABEL_58;
  }

  result = 1;
  self->_prepared = 1;
  return result;
}

- (void)dealloc
{
  v3 = _ANSTLoggingGetOSLogForCategoryANSTKit(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_22E658074(self, v3);
  }

  if (self->_outputBufferObject_imageFeature)
  {
    v4 = e5rt_buffer_object_release();
    if (v4)
    {
      v5 = v4;
      last_error_message = e5rt_get_last_error_message();
      v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%s returned error code %u (%s)", "e5rt_buffer_object_release(&_outputBufferObject_imageFeature)", v5, last_error_message);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_22E6580EC();
      }
    }
  }

  if (self->_outputTensorDesc_imageFeature)
  {
    v9 = e5rt_tensor_desc_release();
    if (v9)
    {
      v10 = v9;
      v11 = e5rt_get_last_error_message();
      v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%s returned error code %u (%s)", "e5rt_tensor_desc_release(&_outputTensorDesc_imageFeature)", v10, v11);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_22E6580EC();
      }
    }
  }

  if (self->_outputPort_imageFeature)
  {
    v14 = e5rt_io_port_release();
    if (v14)
    {
      v15 = v14;
      v16 = e5rt_get_last_error_message();
      v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%s returned error code %u (%s)", "e5rt_io_port_release(&_outputPort_imageFeature)", v15, v16);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_22E6580EC();
      }
    }
  }

  if (self->_operation)
  {
    v19 = e5rt_execution_stream_operation_release();
    if (v19)
    {
      v20 = v19;
      v21 = e5rt_get_last_error_message();
      v23 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_release(&_operation)", v20, v21);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_22E6580EC();
      }
    }
  }

  if (self->_stream)
  {
    v24 = e5rt_execution_stream_release();
    if (v24)
    {
      v25 = v24;
      v26 = e5rt_get_last_error_message();
      v28 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v27, @"%s returned error code %u (%s)", "e5rt_execution_stream_release(&_stream)", v25, v26);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_22E6580EC();
      }
    }
  }

  v29.receiver = self;
  v29.super_class = ANSTVideoFoundationModel;
  [(ANSTVideoFoundationModel *)&v29 dealloc];
}

- (BOOL)bindInputFrameBuffer:(__CVBuffer *)buffer error:(id *)error
{
  v65[1] = *MEMORY[0x277D85DE8];
  v6 = e5rt_execution_stream_reset();
  if (v6)
  {
    v7 = v6;
    last_error_message = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%s returned error code %u (%s)", "e5rt_execution_stream_reset(_stream)", v7, last_error_message);
    v11 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22E658160();
    }

    if (!error)
    {
      goto LABEL_12;
    }

    v13 = MEMORY[0x277CCA9B8];
    v64 = *MEMORY[0x277CCA068];
    v65[0] = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v65, &v64, 1);
    goto LABEL_11;
  }

  CVPixelBufferGetIOSurface(buffer);
  v14 = e5rt_surface_object_create_from_iosurface();
  if (v14)
  {
    v15 = v14;
    v16 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%s returned error code %u (%s)", "e5rt_surface_object_create_from_iosurface(&input_image_surface_object, input_surface)", v15, v16);
    v18 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_22E658160();
    }

    if (!error)
    {
      goto LABEL_12;
    }

    v13 = MEMORY[0x277CCA9B8];
    v62 = *MEMORY[0x277CCA068];
    v63 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, &v63, &v62, 1);
    v20 = LABEL_11:;
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v13, v21, @"ANSTErrorDomain", 5, v20);

LABEL_12:
    return 0;
  }

  v23 = e5rt_execution_stream_operation_retain_input_port();
  if (v23)
  {
    v24 = v23;
    v25 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_input_port(_operation, input_image, &input_port)", v24, v25, 0, 0);
    v27 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_22E658160();
    }

    if (!error)
    {
      goto LABEL_12;
    }

    v29 = MEMORY[0x277CCA9B8];
    v60 = *MEMORY[0x277CCA068];
    v61 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, &v61, &v60, 1);
    goto LABEL_36;
  }

  v30 = e5rt_io_port_bind_surface_object();
  if (v30)
  {
    v31 = v30;
    v32 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v33, @"%s returned error code %u (%s)", "e5rt_io_port_bind_surface_object(input_port, input_image_surface_object)", v31, v32, 0, 0);
    v34 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_22E658160();
    }

    if (!error)
    {
      goto LABEL_12;
    }

    v29 = MEMORY[0x277CCA9B8];
    v58 = *MEMORY[0x277CCA068];
    v59 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, &v59, &v58, 1);
    goto LABEL_36;
  }

  v36 = e5rt_io_port_release();
  if (v36)
  {
    v37 = v36;
    v38 = e5rt_get_last_error_message();
    v40 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v39, @"%s returned error code %u (%s)", "e5rt_io_port_release(&input_port)", v37, v38, 0, 0);
    v41 = _ANSTLoggingGetOSLogForCategoryANSTKit(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_22E658160();
    }
  }

  v42 = e5rt_surface_object_release();
  if (v42)
  {
    v43 = v42;
    v44 = e5rt_get_last_error_message();
    v46 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v45, @"%s returned error code %u (%s)", "e5rt_surface_object_release(&input_image_surface_object)", v43, v44);
    v47 = _ANSTLoggingGetOSLogForCategoryANSTKit(v46);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_22E658160();
    }
  }

  v48 = e5rt_execution_stream_encode_operation();
  if (v48)
  {
    v49 = v48;
    v50 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v51, @"%s returned error code %u (%s)", "e5rt_execution_stream_encode_operation(_stream, _operation)", v49, v50);
    v52 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      sub_22E658160();
    }

    if (!error)
    {
      goto LABEL_12;
    }

    v29 = MEMORY[0x277CCA9B8];
    v56 = *MEMORY[0x277CCA068];
    v57 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v53, &v57, &v56, 1);
    v54 = LABEL_36:;
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v29, v55, @"ANSTErrorDomain", 5, v54);

    goto LABEL_12;
  }

  return 1;
}

- (BOOL)executeInferenceWithError:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (!self->_prepared)
  {
    if (!error)
    {
      return 0;
    }

    v14 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA068];
    v20[0] = @"Model was not prepared.";
    v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v20, &v19, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v14, v15, @"ANSTErrorDomain", 3, v8);
LABEL_9:

    return 0;
  }

  v4 = e5rt_execution_stream_execute_sync();
  if (v4)
  {
    v5 = v4;
    last_error_message = e5rt_get_last_error_message();
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%s returned error code %u (%s)", "e5rt_execution_stream_execute_sync(_stream)", v5, last_error_message);
    v9 = _ANSTLoggingGetOSLogForCategoryANSTKit(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22E6581D4();
    }

    if (error)
    {
      v11 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CCA068];
      v18 = v8;
      v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, &v18, &v17, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v11, v13, @"ANSTErrorDomain", 5, v12);
    }

    goto LABEL_9;
  }

  return 1;
}

@end