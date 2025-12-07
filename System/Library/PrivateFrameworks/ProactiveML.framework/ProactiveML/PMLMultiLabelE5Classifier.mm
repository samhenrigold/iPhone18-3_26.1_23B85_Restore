@interface PMLMultiLabelE5Classifier
+ (id)classifierWithE5File:(id)file;
- (BOOL)initializeNetworkWithE5File:(id)file;
- (PMLMultiLabelE5Classifier)initWithE5File:(id)file;
- (id)predict:(id)predict;
- (void)dealloc;
@end

@implementation PMLMultiLabelE5Classifier

- (id)predict:(id)predict
{
  v17 = *MEMORY[0x277D85DE8];
  [predict sparseVectorToDense:self->_input_ids length:self->_inputNumParameters];
  v4 = e5rt_execution_stream_execute_sync();
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:e5rt_get_last_error_message()];
    v7 = PML_LogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_fault_impl(&dword_260D68000, v7, OS_LOG_TYPE_FAULT, "Unable to execute E5 stream w/ error code %@: %@", &v13, 0x16u);
    }

    v8 = 0;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->_outputNumParameters];
    if (self->_outputNumParameters)
    {
      v10 = 0;
      do
      {
        *&v9 = self->_output_scores[v10];
        v11 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
        [v8 setObject:v11 atIndexedSubscript:v10];

        ++v10;
      }

      while (v10 < self->_outputNumParameters);
    }
  }

  return v8;
}

- (BOOL)initializeNetworkWithE5File:(id)file
{
  v46 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v5 = PML_LogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v44 = 138412290;
    v45 = fileCopy;
    _os_log_impl(&dword_260D68000, v5, OS_LOG_TYPE_DEFAULT, "Initializing E5 model using %@", &v44, 0xCu);
  }

  [(__CFString *)fileCopy UTF8String];
  if (e5rt_execution_stream_operation_create_precompiled_compute_operation())
  {
    last_error_message = e5rt_get_last_error_message();
    v7 = PML_LogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v44) = 0;
      _os_log_error_impl(&dword_260D68000, v7, OS_LOG_TYPE_ERROR, "Failed to create execution stream operation", &v44, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v44 = 136315138;
    v45 = last_error_message;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  [@"inputSequence" UTF8String];
  if (e5rt_execution_stream_operation_retain_input_port())
  {
    v10 = e5rt_get_last_error_message();
    v11 = PML_LogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v44 = 138412290;
      v45 = @"inputSequence";
      _os_log_error_impl(&dword_260D68000, v11, OS_LOG_TYPE_ERROR, "Failed to retain handle to input port %@", &v44, 0xCu);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v44 = 136315138;
    v45 = v10;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  if (e5rt_io_port_retain_tensor_desc())
  {
    v12 = e5rt_get_last_error_message();
    v13 = PML_LogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v44) = 0;
      _os_log_error_impl(&dword_260D68000, v13, OS_LOG_TYPE_ERROR, "Unable to retain E5 input tensor descriptor", &v44, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v44 = 136315138;
    v45 = v12;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  if (e5rt_tensor_desc_retain_dtype())
  {
    v14 = e5rt_get_last_error_message();
    v15 = PML_LogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v44) = 0;
      _os_log_error_impl(&dword_260D68000, v15, OS_LOG_TYPE_ERROR, "Unable to retain E5 input tensor dtype", &v44, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v44 = 136315138;
    v45 = v14;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  v20 = DescribeTensorDescriptor([@"inputSequence" UTF8String], self->_input_tensor, self->_input_tensor_dtype);
  if (v20 == -1)
  {
    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    LOWORD(v44) = 0;
    v9 = "Something went wrong while trying to introspect the E5 input tensor";
    goto LABEL_35;
  }

  self->_inputNumParameters = v20;
  if (e5rt_tensor_desc_alloc_buffer_object())
  {
    v21 = e5rt_get_last_error_message();
    v22 = PML_LogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v44) = 0;
      _os_log_error_impl(&dword_260D68000, v22, OS_LOG_TYPE_ERROR, "Unable to allocate E5 input buffer object", &v44, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v44 = 136315138;
    v45 = v21;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  if (e5rt_io_port_bind_buffer_object())
  {
    v23 = e5rt_get_last_error_message();
    v24 = PML_LogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v44) = 0;
      _os_log_error_impl(&dword_260D68000, v24, OS_LOG_TYPE_ERROR, "Unable to bind E5 input buffer to input port", &v44, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v44 = 136315138;
    v45 = v23;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  [@"outputLabels" UTF8String];
  if (e5rt_execution_stream_operation_retain_output_port())
  {
    v25 = e5rt_get_last_error_message();
    v26 = PML_LogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v44) = 0;
      _os_log_error_impl(&dword_260D68000, v26, OS_LOG_TYPE_ERROR, "Unable to retain E5 output port", &v44, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v44 = 136315138;
    v45 = v25;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  if (e5rt_io_port_retain_tensor_desc())
  {
    v27 = e5rt_get_last_error_message();
    v28 = PML_LogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v44) = 0;
      _os_log_error_impl(&dword_260D68000, v28, OS_LOG_TYPE_ERROR, "Unable to retain E5 output tensor descriptor", &v44, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v44 = 136315138;
    v45 = v27;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  if (e5rt_tensor_desc_retain_dtype())
  {
    v29 = e5rt_get_last_error_message();
    v30 = PML_LogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v44) = 0;
      _os_log_error_impl(&dword_260D68000, v30, OS_LOG_TYPE_ERROR, "Unable to retain E5 output tensor dtype", &v44, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v44 = 136315138;
    v45 = v29;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  v31 = DescribeTensorDescriptor([@"outputLabels" UTF8String], self->_output_tensor, self->_output_tensor_dtype);
  if (v31 == -1)
  {
    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    LOWORD(v44) = 0;
    v9 = "Something went wrong while trying to introspect the E5 output tensor";
LABEL_35:
    v16 = v8;
    v17 = 2;
    goto LABEL_24;
  }

  self->_outputNumParameters = v31;
  if (e5rt_tensor_desc_alloc_buffer_object())
  {
    v32 = e5rt_get_last_error_message();
    v33 = PML_LogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v44) = 0;
      _os_log_error_impl(&dword_260D68000, v33, OS_LOG_TYPE_ERROR, "Unable to allocate E5 output buffer object", &v44, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v44 = 136315138;
    v45 = v32;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  if (e5rt_io_port_bind_buffer_object())
  {
    v34 = e5rt_get_last_error_message();
    v35 = PML_LogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v44) = 0;
      _os_log_error_impl(&dword_260D68000, v35, OS_LOG_TYPE_ERROR, "Unable to bind E5 output buffer to output port", &v44, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v44 = 136315138;
    v45 = v34;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  if (e5rt_execution_stream_create())
  {
    v36 = e5rt_get_last_error_message();
    v37 = PML_LogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v44) = 0;
      _os_log_error_impl(&dword_260D68000, v37, OS_LOG_TYPE_ERROR, "Unable to create E5 execution handle", &v44, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v44 = 136315138;
    v45 = v36;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  if (e5rt_execution_stream_encode_operation())
  {
    v38 = e5rt_get_last_error_message();
    v39 = PML_LogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v44) = 0;
      _os_log_error_impl(&dword_260D68000, v39, OS_LOG_TYPE_ERROR, "Unable to encode E5 execution stream", &v44, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v44 = 136315138;
    v45 = v38;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  if (e5rt_buffer_object_get_data_ptr())
  {
    v40 = e5rt_get_last_error_message();
    v41 = PML_LogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v44) = 0;
      _os_log_error_impl(&dword_260D68000, v41, OS_LOG_TYPE_ERROR, "Unable to get data pointer to input buffer", &v44, 2u);
    }

    v8 = PML_LogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    v44 = 136315138;
    v45 = v40;
    v9 = "E5RT operation failed with message: %s";
    goto LABEL_23;
  }

  if (!e5rt_buffer_object_get_data_ptr())
  {
    v18 = 1;
    goto LABEL_26;
  }

  v42 = e5rt_get_last_error_message();
  v43 = PML_LogHandle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v44) = 0;
    _os_log_error_impl(&dword_260D68000, v43, OS_LOG_TYPE_ERROR, "Unable to get data pointer to output buffer", &v44, 2u);
  }

  v8 = PML_LogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    v44 = 136315138;
    v45 = v42;
    v9 = "E5RT operation failed with message: %s";
LABEL_23:
    v16 = v8;
    v17 = 12;
LABEL_24:
    _os_log_fault_impl(&dword_260D68000, v16, OS_LOG_TYPE_FAULT, v9, &v44, v17);
  }

LABEL_25:

  v18 = 0;
LABEL_26:

  return v18;
}

- (PMLMultiLabelE5Classifier)initWithE5File:(id)file
{
  v8.receiver = self;
  v8.super_class = PMLMultiLabelE5Classifier;
  fileCopy = file;
  v4 = [(PMLMultiLabelE5Classifier *)&v8 init];
  v5 = [(PMLMultiLabelE5Classifier *)v4 initializeNetworkWithE5File:fileCopy, v8.receiver, v8.super_class];

  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)dealloc
{
  if (self->_main_esop)
  {
    e5rt_execution_stream_operation_release();
  }

  if (self->_input_port)
  {
    e5rt_io_port_release();
  }

  if (self->_input_tensor)
  {
    e5rt_tensor_desc_release();
  }

  if (self->_input_tensor_dtype)
  {
    e5rt_tensor_desc_dtype_release();
  }

  if (self->_input_buffer)
  {
    e5rt_buffer_object_release();
  }

  if (self->_output_port)
  {
    e5rt_io_port_release();
  }

  if (self->_output_tensor)
  {
    e5rt_tensor_desc_release();
  }

  if (self->_output_tensor_dtype)
  {
    e5rt_tensor_desc_dtype_release();
  }

  if (self->_output_buffer)
  {
    e5rt_buffer_object_release();
  }

  if (self->_execution_stream)
  {
    e5rt_execution_stream_release();
  }

  v3.receiver = self;
  v3.super_class = PMLMultiLabelE5Classifier;
  [(PMLMultiLabelE5Classifier *)&v3 dealloc];
}

+ (id)classifierWithE5File:(id)file
{
  fileCopy = file;
  v4 = [[PMLMultiLabelE5Classifier alloc] initWithE5File:fileCopy];

  return v4;
}

@end