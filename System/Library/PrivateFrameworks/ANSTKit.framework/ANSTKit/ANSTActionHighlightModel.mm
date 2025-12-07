@interface ANSTActionHighlightModel
+ (ANSTActionHighlightModel)new;
- (ANSTActionHighlightModel)init;
- (BOOL)bindInputFrameBuffer:(__CVBuffer *)buffer error:(id *)error;
- (BOOL)executeAndUpdateStateTensorData:(id)data outputDictionary:(id)dictionary outError:(id *)error;
- (BOOL)prepareWithError:(id *)error;
- (id)initForVersion:(unint64_t)version;
- (void)dealloc;
@end

@implementation ANSTActionHighlightModel

- (ANSTActionHighlightModel)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (ANSTActionHighlightModel)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (id)initForVersion:(unint64_t)version
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = ANSTActionHighlightModel;
  v4 = [(ANSTActionHighlightModel *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v4->_version = version;
    v6 = [ANSTPixelBufferDescriptor alloc];
    v8 = objc_msgSend_initWithName_width_height_pixelFormatType_pixelBufferAttributes_error_(v6, v7, @"input_image", 224, 224, 1111970369, 0, 0);
    inputImageDescriptor = v5->_inputImageDescriptor;
    v5->_inputImageDescriptor = v8;

    v16[0] = xmmword_22E661CA8;
    v16[1] = unk_22E661CB8;
    v10 = [ANSTTensorDescriptor alloc];
    v12 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v10, v11, @"ht", 104, 4, v16, 1, 0);
    stateTensorDescriptor = v5->_stateTensorDescriptor;
    v5->_stateTensorDescriptor = v12;
  }

  return v5;
}

- (BOOL)prepareWithError:(id *)error
{
  v159[1] = *MEMORY[0x277D85DE8];
  if (self->_prepared)
  {
    return 1;
  }

  if (!self->_stream)
  {
    v14 = e5rt_execution_stream_create();
    if (v14)
    {
      v15 = v14;
      last_error_message = e5rt_get_last_error_message();
      v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%s returned error code %u (%s)", "e5rt_execution_stream_create(&_stream)", v15, last_error_message);
      v18 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_22E659B6C();
      }

      if (!error)
      {
        goto LABEL_73;
      }

      v13 = MEMORY[0x277CCA9B8];
      v158 = *MEMORY[0x277CCA068];
      v159[0] = v10;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v159, &v158, 1);
      goto LABEL_72;
    }
  }

  if (!self->_operation)
  {
    if (error)
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = ANSTActionDetectorVersionToNSString(self->_version);
      v23 = objc_msgSend_stringWithFormat_(v20, v22, @"Unexpected model version (%@)", v21);

      v24 = MEMORY[0x277CCA9B8];
      v156 = *MEMORY[0x277CCA068];
      v157 = v23;
      v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, &v157, &v156, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v24, v27, @"ANSTErrorDomain", 5, v26);
    }

    return 0;
  }

  v6 = e5rt_execution_stream_operation_retain_input_port();
  if (v6)
  {
    v7 = v6;
    v8 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_input_port(_operation, ht_in, &input_port_ht)", v7, v8);
    v11 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v154 = *MEMORY[0x277CCA068];
    v155 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, &v155, &v154, 1);
    v94 = LABEL_72:;
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v13, v95, @"ANSTErrorDomain", 5, v94);

LABEL_73:
    return 0;
  }

  v28 = e5rt_io_port_retain_tensor_desc();
  if (v28)
  {
    v29 = v28;
    v30 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v31, @"%s returned error code %u (%s)", "e5rt_io_port_retain_tensor_desc(input_port_ht, &tensor_desc_ht_in)", v29, v30);
    v32 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v152 = *MEMORY[0x277CCA068];
    v153 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, &v153, &v152, 1);
    goto LABEL_72;
  }

  v34 = e5rt_tensor_desc_alloc_buffer_object();
  if (v34)
  {
    v35 = v34;
    v36 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v37, @"%s returned error code %u (%s)", "e5rt_tensor_desc_alloc_buffer_object(tensor_desc_ht_in, E5RT_BUFFER_OBJECT_TYPE_IOSURFACE, 1, &_inputBufferObject_ht)", v35, v36);
    v38 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v150 = *MEMORY[0x277CCA068];
    v151 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, &v151, &v150, 1);
    goto LABEL_72;
  }

  v40 = e5rt_execution_stream_operation_retain_output_port();
  if (v40)
  {
    v41 = v40;
    v42 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v43, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_output_port(_operation, ht_out, &output_port_ht)", v41, v42);
    v44 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v148 = *MEMORY[0x277CCA068];
    v149 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v45, &v149, &v148, 1);
    goto LABEL_72;
  }

  v46 = e5rt_io_port_retain_tensor_desc();
  if (v46)
  {
    v47 = v46;
    v48 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v49, @"%s returned error code %u (%s)", "e5rt_io_port_retain_tensor_desc(output_port_ht, &tensor_desc_ht_out)", v47, v48);
    v50 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v146 = *MEMORY[0x277CCA068];
    v147 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v51, &v147, &v146, 1);
    goto LABEL_72;
  }

  v52 = e5rt_tensor_desc_alloc_buffer_object();
  if (v52)
  {
    v53 = v52;
    v54 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v55, @"%s returned error code %u (%s)", "e5rt_tensor_desc_alloc_buffer_object(tensor_desc_ht_out, E5RT_BUFFER_OBJECT_TYPE_IOSURFACE, 1, &_outputBufferObject_ht)", v53, v54);
    v56 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v144 = *MEMORY[0x277CCA068];
    v145 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v57, &v145, &v144, 1);
    goto LABEL_72;
  }

  v58 = e5rt_execution_stream_operation_retain_output_port();
  if (v58)
  {
    v59 = v58;
    v60 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v61, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_output_port(_operation, action, &output_port_action)", v59, v60);
    v62 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v142 = *MEMORY[0x277CCA068];
    v143 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v63, &v143, &v142, 1);
    goto LABEL_72;
  }

  v64 = e5rt_io_port_retain_tensor_desc();
  if (v64)
  {
    v65 = v64;
    v66 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v67, @"%s returned error code %u (%s)", "e5rt_io_port_retain_tensor_desc(output_port_action, &tensor_desc_action)", v65, v66, 0, 0, 0, 0, 0, 0);
    v68 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v140 = *MEMORY[0x277CCA068];
    v141 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v69, &v141, &v140, 1);
    goto LABEL_72;
  }

  v70 = e5rt_tensor_desc_alloc_buffer_object();
  if (v70)
  {
    v71 = v70;
    v72 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v73, @"%s returned error code %u (%s)", "e5rt_tensor_desc_alloc_buffer_object(tensor_desc_action, E5RT_BUFFER_OBJECT_TYPE_IOSURFACE, 1, &_outputBufferObject_action)", v71, v72, 0, 0, 0, 0, 0, 0);
    v74 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v138 = *MEMORY[0x277CCA068];
    v139 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v75, &v139, &v138, 1);
    goto LABEL_72;
  }

  v76 = e5rt_io_port_bind_buffer_object();
  if (v76)
  {
    v77 = v76;
    v78 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v79, @"%s returned error code %u (%s)", "e5rt_io_port_bind_buffer_object(input_port_ht, _inputBufferObject_ht)", v77, v78, 0, 0, 0, 0, 0, 0);
    v80 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v136 = *MEMORY[0x277CCA068];
    v137 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v81, &v137, &v136, 1);
    goto LABEL_72;
  }

  v82 = e5rt_io_port_bind_buffer_object();
  if (v82)
  {
    v83 = v82;
    v84 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v85, @"%s returned error code %u (%s)", "e5rt_io_port_bind_buffer_object(output_port_ht, _outputBufferObject_ht)", v83, v84, 0, 0, 0, 0, 0, 0);
    v86 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v134 = *MEMORY[0x277CCA068];
    v135 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v87, &v135, &v134, 1);
    goto LABEL_72;
  }

  v88 = e5rt_io_port_bind_buffer_object();
  if (v88)
  {
    v89 = v88;
    v90 = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v91, @"%s returned error code %u (%s)", "e5rt_io_port_bind_buffer_object(output_port_action, _outputBufferObject_action)", v89, v90, 0, 0, 0, 0, 0, 0);
    v92 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v13 = MEMORY[0x277CCA9B8];
    v132 = *MEMORY[0x277CCA068];
    v133 = v10;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v93, &v133, &v132, 1);
    goto LABEL_72;
  }

  v96 = e5rt_io_port_release();
  if (v96)
  {
    v97 = v96;
    v98 = e5rt_get_last_error_message();
    v100 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v99, @"%s returned error code %u (%s)", "e5rt_io_port_release(&input_port_ht)", v97, v98, 0, 0, 0, 0, 0, 0);
    v101 = _ANSTLoggingGetOSLogForCategoryANSTKit(v100);
    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }
  }

  v102 = e5rt_io_port_release();
  if (v102)
  {
    v103 = v102;
    v104 = e5rt_get_last_error_message();
    v106 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v105, @"%s returned error code %u (%s)", "e5rt_io_port_release(&output_port_ht)", v103, v104);
    v107 = _ANSTLoggingGetOSLogForCategoryANSTKit(v106);
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }
  }

  v108 = e5rt_io_port_release();
  if (v108)
  {
    v109 = v108;
    v110 = e5rt_get_last_error_message();
    v112 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v111, @"%s returned error code %u (%s)", "e5rt_io_port_release(&output_port_action)", v109, v110);
    v113 = _ANSTLoggingGetOSLogForCategoryANSTKit(v112);
    if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }
  }

  v114 = e5rt_tensor_desc_release();
  if (v114)
  {
    v115 = v114;
    v116 = e5rt_get_last_error_message();
    v118 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v117, @"%s returned error code %u (%s)", "e5rt_tensor_desc_release(&tensor_desc_ht_in)", v115, v116);
    v119 = _ANSTLoggingGetOSLogForCategoryANSTKit(v118);
    if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }
  }

  v120 = e5rt_tensor_desc_release();
  if (v120)
  {
    v121 = v120;
    v122 = e5rt_get_last_error_message();
    v124 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v123, @"%s returned error code %u (%s)", "e5rt_tensor_desc_release(&tensor_desc_ht_out)", v121, v122);
    v125 = _ANSTLoggingGetOSLogForCategoryANSTKit(v124);
    if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }
  }

  v126 = e5rt_tensor_desc_release();
  if (v126)
  {
    v127 = v126;
    v128 = e5rt_get_last_error_message();
    v130 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v129, @"%s returned error code %u (%s)", "e5rt_tensor_desc_release(&tensor_desc_action)", v127, v128);
    v131 = _ANSTLoggingGetOSLogForCategoryANSTKit(v130);
    if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
    {
      sub_22E659B6C();
    }
  }

  result = 1;
  self->_prepared = 1;
  return result;
}

- (void)dealloc
{
  if (self->_inputBufferObject_ht)
  {
    v3 = e5rt_buffer_object_release();
    if (v3)
    {
      v4 = v3;
      last_error_message = e5rt_get_last_error_message();
      v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"%s returned error code %u (%s)", "e5rt_buffer_object_release(&_inputBufferObject_ht)", v4, last_error_message);
      v8 = _ANSTLoggingGetOSLogForCategoryANSTKit(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_22E659BE0();
      }
    }
  }

  if (self->_outputBufferObject_ht)
  {
    v9 = e5rt_buffer_object_release();
    if (v9)
    {
      v10 = v9;
      v11 = e5rt_get_last_error_message();
      v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%s returned error code %u (%s)", "e5rt_buffer_object_release(&_outputBufferObject_ht)", v10, v11);
      v14 = _ANSTLoggingGetOSLogForCategoryANSTKit(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_22E659BE0();
      }
    }
  }

  if (self->_outputBufferObject_action)
  {
    v15 = e5rt_buffer_object_release();
    if (v15)
    {
      v16 = v15;
      v17 = e5rt_get_last_error_message();
      v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"%s returned error code %u (%s)", "e5rt_buffer_object_release(&_outputBufferObject_action)", v16, v17);
      v20 = _ANSTLoggingGetOSLogForCategoryANSTKit(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_22E659BE0();
      }
    }
  }

  if (self->_operation)
  {
    v21 = e5rt_execution_stream_operation_release();
    if (v21)
    {
      v22 = v21;
      v23 = e5rt_get_last_error_message();
      v25 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v24, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_release(&_operation)", v22, v23);
      v26 = _ANSTLoggingGetOSLogForCategoryANSTKit(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_22E659BE0();
      }
    }
  }

  if (self->_stream)
  {
    v27 = e5rt_execution_stream_release();
    if (v27)
    {
      v28 = v27;
      v29 = e5rt_get_last_error_message();
      v31 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v30, @"%s returned error code %u (%s)", "e5rt_execution_stream_release(&_stream)", v28, v29);
      v32 = _ANSTLoggingGetOSLogForCategoryANSTKit(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_22E659BE0();
      }
    }
  }

  v33.receiver = self;
  v33.super_class = ANSTActionHighlightModel;
  [(ANSTActionHighlightModel *)&v33 dealloc];
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
      sub_22E659C54();
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
      sub_22E659C54();
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
      sub_22E659C54();
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
      sub_22E659C54();
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
      sub_22E659C54();
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
      sub_22E659C54();
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
      sub_22E659C54();
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

- (BOOL)executeAndUpdateStateTensorData:(id)data outputDictionary:(id)dictionary outError:(id *)error
{
  v84[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dictionaryCopy = dictionary;
  if (self->_prepared)
  {
    buffer = 0;
    iosurface = e5rt_buffer_object_get_iosurface();
    if (iosurface)
    {
      v12 = iosurface;
      last_error_message = e5rt_get_last_error_message();
      v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(_inputBufferObject_ht, &ht_in)", v12, last_error_message);
      v16 = _ANSTLoggingGetOSLogForCategoryANSTKit(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_22E659CC8();
      }

      if (error)
      {
        v18 = MEMORY[0x277CCA9B8];
        v81 = *MEMORY[0x277CCA068];
        v82 = v15;
        v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, &v82, &v81, 1);
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v18, v20, @"ANSTErrorDomain", 5, v19);
      }

      v21 = 0;
    }

    else
    {
      IOSurfaceLock(buffer, 0, 0);
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = sub_22E604268;
      v71[3] = &unk_27884FCC0;
      v73 = buffer;
      v25 = dataCopy;
      v72 = v25;
      objc_msgSend_performDataAccessWithOptions_usingBlock_error_(v25, v26, 0, v71, error);
      IOSurfaceUnlock(buffer, 0, 0);
      v27 = e5rt_execution_stream_execute_sync();
      if (v27)
      {
        v28 = v27;
        v29 = e5rt_get_last_error_message();
        v31 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v30, @"%s returned error code %u (%s)", "e5rt_execution_stream_execute_sync(_stream)", v28, v29);
        v32 = _ANSTLoggingGetOSLogForCategoryANSTKit(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_22E659CC8();
        }

        if (error)
        {
          v34 = MEMORY[0x277CCA9B8];
          v79 = *MEMORY[0x277CCA068];
          v80 = v31;
          v35 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, &v80, &v79, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v34, v36, @"ANSTErrorDomain", 5, v35);
        }

        v21 = 0;
      }

      else
      {
        v70 = 0;
        v37 = e5rt_buffer_object_get_iosurface();
        if (v37)
        {
          v38 = v37;
          v39 = e5rt_get_last_error_message();
          v41 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v40, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(_outputBufferObject_ht, &ht_out)", v38, v39);
          v42 = _ANSTLoggingGetOSLogForCategoryANSTKit(v41);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            sub_22E659CC8();
          }

          if (error)
          {
            v44 = MEMORY[0x277CCA9B8];
            v77 = *MEMORY[0x277CCA068];
            v78 = v41;
            v45 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v43, &v78, &v77, 1);
            *error = objc_msgSend_errorWithDomain_code_userInfo_(v44, v46, @"ANSTErrorDomain", 5, v45);
          }

          v21 = 0;
        }

        else
        {
          IOSurfaceLock(v70, 1u, 0);
          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v67[2] = sub_22E6042E0;
          v67[3] = &unk_27884FB70;
          v69 = v70;
          v68 = v25;
          objc_msgSend_performMutableDataAccessWithOptions_usingBlock_error_(v68, v47, 0, v67, error);
          IOSurfaceUnlock(v70, 1u, 0);
          v49 = objc_msgSend_supportedActionTypesOfDetectorVersion_(ANSTActionDetector, v48, self->_version);
          v66 = 0;
          v50 = e5rt_buffer_object_get_iosurface();
          v21 = v50 == 0;
          if (v50)
          {
            v51 = v50;
            v52 = e5rt_get_last_error_message();
            v54 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v53, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(_outputBufferObject_action, &action)", v51, v52);
            v55 = _ANSTLoggingGetOSLogForCategoryANSTKit(v54);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              sub_22E659CC8();
            }

            if (error)
            {
              v57 = MEMORY[0x277CCA9B8];
              v75 = *MEMORY[0x277CCA068];
              v76 = v54;
              v58 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v56, &v76, &v75, 1);
              *error = objc_msgSend_errorWithDomain_code_userInfo_(v57, v59, @"ANSTErrorDomain", 5, v58);
            }
          }

          else
          {
            IOSurfaceLock(v66, 1u, 0);
            BaseAddress = IOSurfaceGetBaseAddress(v66);
            v63[0] = MEMORY[0x277D85DD0];
            v63[1] = 3221225472;
            v63[2] = sub_22E604358;
            v63[3] = &unk_27884FCE8;
            v65 = BaseAddress;
            v63[4] = self;
            v64 = dictionaryCopy;
            objc_msgSend_enumerateObjectsUsingBlock_(v49, v61, v63);
            IOSurfaceUnlock(v66, 1u, 0);
          }

          v41 = v68;
        }
      }

      v15 = v72;
    }
  }

  else
  {
    if (error)
    {
      v22 = MEMORY[0x277CCA9B8];
      v83 = *MEMORY[0x277CCA068];
      v84[0] = @"Model was not prepared.";
      v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v84, &v83, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v22, v24, @"ANSTErrorDomain", 3, v23);
    }

    v21 = 0;
  }

  return v21;
}

@end