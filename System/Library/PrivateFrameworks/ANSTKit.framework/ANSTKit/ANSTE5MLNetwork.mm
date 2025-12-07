@interface ANSTE5MLNetwork
- (ANSTE5MLNetwork)initWithE5BundlePath:(id)path e5FunctionName:(id)name;
- (ANSTE5MLNetwork)initWithInferenceDescriptor:(id)descriptor error:(id *)p_isa;
- (ANSTE5MLNetwork)initWithMILPath:(id)path e5FunctionName:(id)name;
- (BOOL)_allocateAndBindBufferPort:(e5rt_io_port *)port error:(id *)error;
- (BOOL)_allocateAndBindNetworkInputsExcept:(id)except error:(id *)error;
- (BOOL)_allocateAndBindNetworkOutputsExcept:(id)except error:(id *)error;
- (BOOL)_allocateAndBindPort:(e5rt_io_port *)port portName:(const char *)name error:(id *)error;
- (BOOL)_allocateAndBindSurfacePort:(e5rt_io_port *)port error:(id *)error;
- (BOOL)_bindBufferPort:(e5rt_io_port *)port toTensor:(id)tensor error:(id *)error;
- (BOOL)_bindNetworkInputsToExistingNetwork:(id)network error:(id *)error;
- (BOOL)_bindNetworkOutputsToExistingNetwork:(id)network error:(id *)error;
- (BOOL)_bindSurfacePort:(e5rt_io_port *)port toPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
- (BOOL)_loadExecutionStreamOperationWithError:(id *)error;
- (BOOL)allocateAndBindNetworkIOExceptInputsNamed:(id)named outputsNamed:(id)outputsNamed error:(id *)error;
- (BOOL)bindNetworkIOToExistingNetwork:(id)network error:(id *)error;
- (BOOL)bindNetworkInputNamed:(id)named toPixelBuffer:(id)buffer error:(id *)error;
- (BOOL)bindNetworkInputNamed:(id)named toTensor:(id)tensor error:(id *)error;
- (BOOL)bindNetworkOutputNamed:(id)named toPixelBuffer:(id)buffer error:(id *)error;
- (BOOL)bindNetworkOutputNamed:(id)named toTensor:(id)tensor error:(id *)error;
- (BOOL)commitNetworkIOBindingsWithError:(id *)error;
- (BOOL)executeInferenceWithError:(id *)error;
- (BOOL)loadNetworkWithError:(id *)error;
- (BOOL)registerNetworkOutputNamed:(id)named asDataSourceForNetworkInputNamed:(id)inputNamed error:(id *)error;
- (id)_pixelBufferForPort:(e5rt_io_port *)port name:(id)name error:(id *)error;
- (id)_tensorSurfaceForPort:(e5rt_io_port *)port name:(id)name error:(id *)error;
- (id)pixelBufferForNetworkInputNamed:(id)named error:(id *)error;
- (id)pixelBufferForNetworkOutputNamed:(id)named error:(id *)error;
- (id)tensorSurfaceForNetworkInputNamed:(id)named error:(id *)error;
- (id)tensorSurfaceForNetworkOutputNamed:(id)named error:(id *)error;
- (void)dealloc;
@end

@implementation ANSTE5MLNetwork

- (ANSTE5MLNetwork)initWithMILPath:(id)path e5FunctionName:(id)name
{
  pathCopy = path;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = ANSTE5MLNetwork;
  v9 = [(ANSTE5MLNetwork *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_assetType = 1;
    objc_storeStrong(&v9->_assetURL, path);
    objc_storeStrong(&v10->_e5FunctionName, name);
    stateTensorTuples = v10->_stateTensorTuples;
    v10->_stateTensorTuples = 0;
  }

  return v10;
}

- (ANSTE5MLNetwork)initWithE5BundlePath:(id)path e5FunctionName:(id)name
{
  pathCopy = path;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = ANSTE5MLNetwork;
  v9 = [(ANSTE5MLNetwork *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_assetType = 0;
    objc_storeStrong(&v9->_assetURL, path);
    objc_storeStrong(&v10->_e5FunctionName, name);
    stateTensorTuples = v10->_stateTensorTuples;
    v10->_stateTensorTuples = 0;
  }

  return v10;
}

- (ANSTE5MLNetwork)initWithInferenceDescriptor:(id)descriptor error:(id *)p_isa
{
  v52[1] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v9 = objc_msgSend_e5FunctionName(descriptorCopy, v7, v8);

  if (v9)
  {
    if (objc_msgSend_assetType(descriptorCopy, v11, v12) == 1)
    {
      v15 = objc_msgSend_assetURL(descriptorCopy, v13, v14);
      v18 = objc_msgSend_e5FunctionName(descriptorCopy, v16, v17);
      v20 = objc_msgSend_initWithMILPath_e5FunctionName_(self, v19, v15, v18);
LABEL_15:
      self = v20;

      p_isa = &self->super.isa;
      goto LABEL_16;
    }

    v31 = objc_msgSend_assetType(descriptorCopy, v13, v14);
    if (!v31)
    {
      v15 = objc_msgSend_assetURL(descriptorCopy, v32, v33);
      v18 = objc_msgSend_e5FunctionName(descriptorCopy, v45, v46);
      v20 = objc_msgSend_initWithE5BundlePath_e5FunctionName_(self, v47, v15, v18);
      goto LABEL_15;
    }

    v34 = _ANSTLoggingGetOSLogForCategoryANSTKit(v31);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_22E65867C(v34, v35, v36, v37, v38, v39, v40, v41);
    }

    if (p_isa)
    {
      v30 = MEMORY[0x277CCA9B8];
      v49 = *MEMORY[0x277CCA068];
      v50 = @"The provided descriptor's asset type is neither MIL nor E5 Bundle.";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, &v50, &v49, 1);
      goto LABEL_13;
    }
  }

  else
  {
    v21 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_22E658708(v21, v22, v23, v24, v25, v26, v27, v28);
    }

    if (p_isa)
    {
      v30 = MEMORY[0x277CCA9B8];
      v51 = *MEMORY[0x277CCA068];
      v52[0] = @"The provided inference descriptor is missing a valid E5 function name.";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, v52, &v51, 1);
      v43 = LABEL_13:;
      *p_isa = objc_msgSend_errorWithDomain_code_userInfo_(v30, v44, @"ANSTErrorDomain", 10, v43);

      p_isa = 0;
    }
  }

LABEL_16:

  return p_isa;
}

- (void)dealloc
{
  p_stream = &self->_stream;
  if (self->_stream)
  {
    v4 = e5rt_execution_stream_reset();
    if (v4)
    {
      v5 = v4;
      last_error_message = e5rt_get_last_error_message();
      v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%s returned error code %u (%s)", "e5rt_execution_stream_reset(_stream)", v5, last_error_message);
      v9 = _ANSTLoggingGetOSLogForCategoryANSTKit(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_22E658794();
      }
    }

    v10 = e5rt_execution_stream_release();
    if (v10)
    {
      v11 = v10;
      v12 = e5rt_get_last_error_message();
      v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s returned error code %u (%s)", "e5rt_execution_stream_release(&_stream)", v11, v12);
      v15 = _ANSTLoggingGetOSLogForCategoryANSTKit(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_22E658794();
      }
    }

    *p_stream = 0;
  }

  if (self->_operation)
  {
    v16 = e5rt_execution_stream_operation_release();
    if (v16)
    {
      v17 = v16;
      v18 = e5rt_get_last_error_message();
      v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_release(&_operation)", v17, v18);
      v21 = _ANSTLoggingGetOSLogForCategoryANSTKit(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_22E658794();
      }
    }

    self->_operation = 0;
  }

  v22.receiver = self;
  v22.super_class = ANSTE5MLNetwork;
  [(ANSTE5MLNetwork *)&v22 dealloc];
}

- (BOOL)loadNetworkWithError:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  ExecutionStreamOperationWithError = objc_msgSend__loadExecutionStreamOperationWithError_(self, a2, error);
  if (ExecutionStreamOperationWithError)
  {
    if (self->_stream || (v6 = e5rt_execution_stream_create(), !v6))
    {
      LOBYTE(ExecutionStreamOperationWithError) = 1;
    }

    else
    {
      v7 = v6;
      last_error_message = e5rt_get_last_error_message();
      v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%s returned error code %u (%s)", "e5rt_execution_stream_create(&_stream)", v7, last_error_message);
      v11 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_22E658808();
      }

      if (error)
      {
        v13 = MEMORY[0x277CCA9B8];
        v17 = *MEMORY[0x277CCA068];
        v18[0] = v10;
        v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v18, &v17, 1);
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"ANSTErrorDomain", 5, v14);
      }

      LOBYTE(ExecutionStreamOperationWithError) = 0;
    }
  }

  return ExecutionStreamOperationWithError;
}

- (BOOL)allocateAndBindNetworkIOExceptInputsNamed:(id)named outputsNamed:(id)outputsNamed error:(id *)error
{
  outputsNamedCopy = outputsNamed;
  if (objc_msgSend__allocateAndBindNetworkInputsExcept_error_(self, v9, named, error))
  {
    v11 = objc_msgSend__allocateAndBindNetworkOutputsExcept_error_(self, v10, outputsNamedCopy, error);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)bindNetworkIOToExistingNetwork:(id)network error:(id *)error
{
  networkCopy = network;
  if (objc_msgSend__bindNetworkInputsToExistingNetwork_error_(self, v7, networkCopy, error))
  {
    v9 = objc_msgSend__bindNetworkOutputsToExistingNetwork_error_(self, v8, networkCopy, error);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)registerNetworkOutputNamed:(id)named asDataSourceForNetworkInputNamed:(id)inputNamed error:(id *)error
{
  v64[1] = *MEMORY[0x277D85DE8];
  namedCopy = named;
  inputNamedCopy = inputNamed;
  v12 = objc_msgSend_tensorSurfaceForNetworkOutputNamed_error_(self, v10, namedCopy, error);
  if (v12)
  {
    v15 = objc_msgSend_tensorSurfaceForNetworkInputNamed_error_(self, v11, inputNamedCopy, error);
    if (v15)
    {
      v16 = objc_msgSend_tensorDescriptor(v12, v13, v14);
      v19 = objc_msgSend_tensorDescriptor(v15, v17, v18);
      hasSameMemoryLayoutAs = objc_msgSend_hasSameMemoryLayoutAs_(v16, v20, v19);

      if (hasSameMemoryLayoutAs)
      {
        v24 = objc_msgSend_surface(v15, v22, v23);
        AllocSize = IOSurfaceGetAllocSize(v24);
        v28 = objc_msgSend_surface(v12, v26, v27);
        v29 = IOSurfaceGetAllocSize(v28);
        if (AllocSize == v29)
        {
          v32 = [_ANSTE5MLNetworkStateTensorTuple alloc];
          error = objc_msgSend_initWithInputTensor_outputTensor_(v32, v33, v15, v12);
          stateTensorTuples = self->_stateTensorTuples;
          if (!stateTensorTuples)
          {
            v36 = objc_opt_new();
            v37 = self->_stateTensorTuples;
            self->_stateTensorTuples = v36;

            stateTensorTuples = self->_stateTensorTuples;
          }

          objc_msgSend_addObject_(stateTensorTuples, v34, error);

          LOBYTE(error) = 1;
          goto LABEL_23;
        }

        v41 = v29;
        v42 = objc_msgSend_tensorDescriptor(v15, v30, v31);
        v45 = objc_msgSend_sizeInBytes(v42, v43, v44);

        if (AllocSize != v45)
        {
          v49 = _ANSTLoggingGetOSLogForCategoryANSTKit(v46);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
          {
            sub_22E65887C(v15, AllocSize, v49);
          }
        }

        v50 = objc_msgSend_tensorDescriptor(v12, v47, v48);
        v53 = objc_msgSend_sizeInBytes(v50, v51, v52);

        if (v41 != v53)
        {
          v56 = _ANSTLoggingGetOSLogForCategoryANSTKit(v54);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
          {
            sub_22E65887C(v12, v41, v56);
          }
        }

        if (!error)
        {
          goto LABEL_23;
        }

        v38 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v55, @"Network output %@ can't be data source for network input %@ due to different IOSurface alloc size", namedCopy, inputNamedCopy);
        v39 = MEMORY[0x277CCA9B8];
        v61 = *MEMORY[0x277CCA068];
        v62 = v38;
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v57, &v62, &v61, 1);
      }

      else
      {
        if (!error)
        {
LABEL_23:

          goto LABEL_24;
        }

        v38 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"Network output %@ can't be data source for network input %@ due to different memory layout", namedCopy, inputNamedCopy);
        v39 = MEMORY[0x277CCA9B8];
        v63 = *MEMORY[0x277CCA068];
        v64[0] = v38;
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, v64, &v63, 1);
      }
      v58 = ;
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v39, v59, @"ANSTErrorDomain", 2, v58);
    }

    LOBYTE(error) = 0;
    goto LABEL_23;
  }

  LOBYTE(error) = 0;
LABEL_24:

  return error;
}

- (BOOL)commitNetworkIOBindingsWithError:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = e5rt_execution_stream_encode_operation();
  if (v4)
  {
    last_error_message = e5rt_get_last_error_message();
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"%s returned error code %u (%s)", "e5rt_execution_stream_encode_operation(_stream, _operation)", v4, last_error_message);
    v8 = _ANSTLoggingGetOSLogForCategoryANSTKit(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22E658940();
    }

    if (error)
    {
      v10 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA068];
      v15[0] = v7;
      v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v15, &v14, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v10, v12, @"ANSTErrorDomain", 5, v11);
    }
  }

  return v4 == 0;
}

- (BOOL)executeInferenceWithError:(id *)error
{
  v42[1] = *MEMORY[0x277D85DE8];
  v5 = e5rt_execution_stream_execute_sync();
  if (v5)
  {
    last_error_message = e5rt_get_last_error_message();
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%s returned error code %u (%s)", "e5rt_execution_stream_execute_sync(_stream)", v5, last_error_message);
    v9 = _ANSTLoggingGetOSLogForCategoryANSTKit(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22E6589B4();
    }

    if (error)
    {
      v11 = MEMORY[0x277CCA9B8];
      v41 = *MEMORY[0x277CCA068];
      v42[0] = v8;
      v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v42, &v41, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v11, v13, @"ANSTErrorDomain", 5, v12);
    }
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v8 = self->_stateTensorTuples;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v14, &v36, v40, 16);
    if (v15)
    {
      v18 = v15;
      v19 = *v37;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(v8);
          }

          v21 = *(*(&v36 + 1) + 8 * i);
          v22 = objc_msgSend_networkOutputTensor(v21, v16, v17);
          v25 = objc_msgSend_surface(v22, v23, v24);

          v28 = objc_msgSend_networkInputTensor(v21, v26, v27);
          v31 = objc_msgSend_surface(v28, v29, v30);

          AllocSize = IOSurfaceGetAllocSize(v31);
          IOSurfaceLock(v25, 1u, 0);
          IOSurfaceLock(v31, 0, 0);
          BaseAddress = IOSurfaceGetBaseAddress(v31);
          v34 = IOSurfaceGetBaseAddress(v25);
          memcpy(BaseAddress, v34, AllocSize);
          IOSurfaceUnlock(v25, 1u, 0);
          IOSurfaceUnlock(v31, 0, 0);
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v16, &v36, v40, 16);
      }

      while (v18);
    }
  }

  return v5 == 0;
}

- (BOOL)_loadExecutionStreamOperationWithError:(id *)error
{
  v141[1] = *MEMORY[0x277D85DE8];
  if (!self->_operation)
  {
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"ANSTE5MLNetwork_%@", self->_e5FunctionName);
    assetType = self->_assetType;
    if (assetType == 1)
    {
      v30 = objc_msgSend_relativePath(self->_assetURL, v6, v7);
      v31 = v30;
      objc_msgSend_UTF8String(v31, v32, v33);

      objc_msgSend_UTF8String(self->_e5FunctionName, v34, v35);
      v36 = e5rt_e5_compiler_create();
      if (v36)
      {
        last_error_message = e5rt_get_last_error_message();
        v39 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v38, @"%s returned error code %u (%s)", "e5rt_e5_compiler_create(&compiler)", v36, last_error_message);
        v40 = _ANSTLoggingGetOSLogForCategoryANSTKit(v39);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_22E658A28();
        }

        if (error)
        {
          v42 = MEMORY[0x277CCA9B8];
          v138 = *MEMORY[0x277CCA068];
          v139 = v39;
          v43 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v41, &v139, &v138, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v42, v44, @"ANSTErrorDomain", 5, v43);
        }
      }

      else
      {
        v55 = e5rt_e5_compiler_options_create();
        if (v55)
        {
          v56 = e5rt_get_last_error_message();
          v58 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v57, @"%s returned error code %u (%s)", "e5rt_e5_compiler_options_create(&compilerOptions)", v55, v56);
          v59 = _ANSTLoggingGetOSLogForCategoryANSTKit(v58);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            sub_22E658A28();
          }

          if (error)
          {
            v61 = MEMORY[0x277CCA9B8];
            v136 = *MEMORY[0x277CCA068];
            v137 = v58;
            v62 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v60, &v137, &v136, 1);
            *error = objc_msgSend_errorWithDomain_code_userInfo_(v61, v63, @"ANSTErrorDomain", 5, v62);
          }
        }

        else
        {
          v64 = e5rt_e5_compiler_options_set_mil_entry_points();
          if (v64)
          {
            v65 = e5rt_get_last_error_message();
            v67 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v66, @"%s returned error code %u (%s)", "e5rt_e5_compiler_options_set_mil_entry_points(compilerOptions, &milFunctionName, 1)", v64, v65);
            v68 = _ANSTLoggingGetOSLogForCategoryANSTKit(v67);
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              sub_22E658A28();
            }

            if (error)
            {
              v70 = MEMORY[0x277CCA9B8];
              v134 = *MEMORY[0x277CCA068];
              v135 = v67;
              v71 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v69, &v135, &v134, 1);
              *error = objc_msgSend_errorWithDomain_code_userInfo_(v70, v72, @"ANSTErrorDomain", 5, v71);
            }
          }

          else
          {
            v73 = e5rt_e5_compiler_compile();
            if (v73)
            {
              v74 = e5rt_get_last_error_message();
              v76 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v75, @"%s returned error code %u (%s)", "e5rt_e5_compiler_compile(compiler, milPath, compilerOptions, &library)", v73, v74);
              v77 = _ANSTLoggingGetOSLogForCategoryANSTKit(v76);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                sub_22E658A28();
              }

              if (error)
              {
                v79 = MEMORY[0x277CCA9B8];
                v132 = *MEMORY[0x277CCA068];
                v133 = v76;
                v80 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v78, &v133, &v132, 1);
                *error = objc_msgSend_errorWithDomain_code_userInfo_(v79, v81, @"ANSTErrorDomain", 5, v80);
              }
            }

            else
            {
              v82 = e5rt_program_library_retain_program_function();
              if (v82)
              {
                v83 = e5rt_get_last_error_message();
                v85 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v84, @"%s returned error code %u (%s)", "e5rt_program_library_retain_program_function(library, milFunctionName, &function)", v82, v83);
                v86 = _ANSTLoggingGetOSLogForCategoryANSTKit(v85);
                if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
                {
                  sub_22E658A28();
                }

                if (error)
                {
                  v88 = MEMORY[0x277CCA9B8];
                  v130 = *MEMORY[0x277CCA068];
                  v131 = v85;
                  v89 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v87, &v131, &v130, 1);
                  *error = objc_msgSend_errorWithDomain_code_userInfo_(v88, v90, @"ANSTErrorDomain", 5, v89);
                }
              }

              else
              {
                v91 = e5rt_precompiled_compute_op_create_options_create_with_program_function();
                if (v91)
                {
                  v92 = e5rt_get_last_error_message();
                  v94 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v93, @"%s returned error code %u (%s)", "e5rt_precompiled_compute_op_create_options_create_with_program_function(&createOptions, function)", v91, v92);
                  v95 = _ANSTLoggingGetOSLogForCategoryANSTKit(v94);
                  if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
                  {
                    sub_22E658A28();
                  }

                  if (error)
                  {
                    v97 = MEMORY[0x277CCA9B8];
                    v128 = *MEMORY[0x277CCA068];
                    v129 = v94;
                    v98 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v96, &v129, &v128, 1);
                    *error = objc_msgSend_errorWithDomain_code_userInfo_(v97, v99, @"ANSTErrorDomain", 5, v98);
                  }
                }

                else
                {
                  v100 = v8;
                  objc_msgSend_UTF8String(v8, v101, v102);
                  options_set_operation_name = e5rt_precompiled_compute_op_create_options_set_operation_name();
                  if (options_set_operation_name)
                  {
                    v104 = e5rt_get_last_error_message();
                    v106 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v105, @"%s returned error code %u (%s)", "e5rt_precompiled_compute_op_create_options_set_operation_name(createOptions, opName.UTF8String)", options_set_operation_name, v104);
                    v107 = _ANSTLoggingGetOSLogForCategoryANSTKit(v106);
                    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                    {
                      sub_22E658A28();
                    }

                    if (error)
                    {
                      v109 = MEMORY[0x277CCA9B8];
                      v126 = *MEMORY[0x277CCA068];
                      v127 = v106;
                      v110 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v108, &v127, &v126, 1);
                      *error = objc_msgSend_errorWithDomain_code_userInfo_(v109, v111, @"ANSTErrorDomain", 5, v110);
                    }
                  }

                  else
                  {
                    precompiled_compute_operation_with_options = e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options();
                    if (!precompiled_compute_operation_with_options)
                    {
                      v3 = 1;
                      goto LABEL_66;
                    }

                    v113 = e5rt_get_last_error_message();
                    v115 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v114, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options(&_operation, createOptions)", precompiled_compute_operation_with_options, v113);
                    v116 = _ANSTLoggingGetOSLogForCategoryANSTKit(v115);
                    if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
                    {
                      sub_22E658A28();
                    }

                    if (error)
                    {
                      v118 = MEMORY[0x277CCA9B8];
                      v124 = *MEMORY[0x277CCA068];
                      v125 = v115;
                      v119 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v117, &v125, &v124, 1);
                      *error = objc_msgSend_errorWithDomain_code_userInfo_(v118, v120, @"ANSTErrorDomain", 5, v119);
                    }
                  }
                }
              }
            }
          }
        }
      }

      v3 = 0;
    }

    else
    {
      if (assetType)
      {
        v45 = MEMORY[0x277CCACA8];
        v46 = ANSTAssetTypeToNSString(assetType, v6);
        v48 = objc_msgSend_stringWithFormat_(v45, v47, @"Unexpected network asset type %@", v46);

        v50 = _ANSTLoggingGetOSLogForCategoryANSTKit(v49);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          sub_22E658A28();
        }

        if (error)
        {
          v52 = MEMORY[0x277CCA9B8];
          v122 = *MEMORY[0x277CCA068];
          v123 = v48;
          v53 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v51, &v123, &v122, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v52, v54, @"ANSTErrorDomain", 3, v53);
        }

        goto LABEL_22;
      }

      v10 = v8;
      objc_msgSend_UTF8String(v10, v11, v12);
      v15 = objc_msgSend_relativePath(self->_assetURL, v13, v14);
      v16 = v15;
      objc_msgSend_UTF8String(v16, v17, v18);
      objc_msgSend_UTF8String(self->_e5FunctionName, v19, v20);
      v3 = 1;
      precompiled_compute_operation = e5rt_execution_stream_operation_create_precompiled_compute_operation();

      if (precompiled_compute_operation)
      {
        v22 = e5rt_get_last_error_message();
        v24 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v23, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_create_precompiled_compute_operation(&_operation, opName.UTF8String, _assetURL.relativePath.UTF8String, _e5FunctionName.UTF8String, 1, true)", precompiled_compute_operation, v22);
        v25 = _ANSTLoggingGetOSLogForCategoryANSTKit(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_22E658A28();
        }

        if (error)
        {
          v27 = MEMORY[0x277CCA9B8];
          v140 = *MEMORY[0x277CCA068];
          v141[0] = v24;
          v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v141, &v140, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v27, v29, @"ANSTErrorDomain", 5, v28);
        }

LABEL_22:
        v3 = 0;
      }
    }

LABEL_66:

    return v3;
  }

  return 1;
}

- (BOOL)_allocateAndBindNetworkInputsExcept:(id)except error:(id *)error
{
  v40[1] = *MEMORY[0x277D85DE8];
  exceptCopy = except;
  if (!self->_operation)
  {
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"E5 execution stream operation is NULL");
    v18 = _ANSTLoggingGetOSLogForCategoryANSTKit(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_22E658A9C();
    }

    if (error)
    {
      v20 = MEMORY[0x277CCA9B8];
      v39 = *MEMORY[0x277CCA068];
      v40[0] = v17;
      v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v40, &v39, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v20, v22, @"ANSTErrorDomain", 3, v21);
    }

    goto LABEL_13;
  }

  num_inputs = e5rt_execution_stream_operation_get_num_inputs();
  if (num_inputs)
  {
    last_error_message = e5rt_get_last_error_message();
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_get_num_inputs(_operation, &num_ports)", num_inputs, last_error_message);
    v12 = _ANSTLoggingGetOSLogForCategoryANSTKit(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_22E658A9C();
    }

    if (error)
    {
      v14 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA068];
      v38 = v11;
      v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, &v38, &v37, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v14, v16, @"ANSTErrorDomain", 5, v15);
    }

LABEL_13:
    v23 = 0;
    goto LABEL_22;
  }

  v24 = malloc_type_malloc(0, 0x10040436913F5uLL);
  input_names = e5rt_execution_stream_operation_get_input_names();
  if (input_names)
  {
    v26 = e5rt_get_last_error_message();
    v28 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v27, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_get_input_names(_operation, num_ports, names)", input_names, v26);
    v29 = _ANSTLoggingGetOSLogForCategoryANSTKit(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_22E658A9C();
    }

    if (error)
    {
      v31 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277CCA068];
      v36 = v28;
      v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, &v36, &v35, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v31, v33, @"ANSTErrorDomain", 5, v32);
    }

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  free(v24);
LABEL_22:

  return v23;
}

- (BOOL)_allocateAndBindNetworkOutputsExcept:(id)except error:(id *)error
{
  v40[1] = *MEMORY[0x277D85DE8];
  exceptCopy = except;
  if (!self->_operation)
  {
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"E5 execution stream operation is NULL");
    v18 = _ANSTLoggingGetOSLogForCategoryANSTKit(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_22E658B10();
    }

    if (error)
    {
      v20 = MEMORY[0x277CCA9B8];
      v39 = *MEMORY[0x277CCA068];
      v40[0] = v17;
      v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v40, &v39, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v20, v22, @"ANSTErrorDomain", 3, v21);
    }

    goto LABEL_13;
  }

  num_outputs = e5rt_execution_stream_operation_get_num_outputs();
  if (num_outputs)
  {
    last_error_message = e5rt_get_last_error_message();
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_get_num_outputs(_operation, &num_ports)", num_outputs, last_error_message);
    v12 = _ANSTLoggingGetOSLogForCategoryANSTKit(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_22E658B10();
    }

    if (error)
    {
      v14 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA068];
      v38 = v11;
      v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, &v38, &v37, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v14, v16, @"ANSTErrorDomain", 5, v15);
    }

LABEL_13:
    v23 = 0;
    goto LABEL_22;
  }

  v24 = malloc_type_malloc(0, 0x10040436913F5uLL);
  output_names = e5rt_execution_stream_operation_get_output_names();
  if (output_names)
  {
    v26 = e5rt_get_last_error_message();
    v28 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v27, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_get_output_names(_operation, num_ports, names)", output_names, v26);
    v29 = _ANSTLoggingGetOSLogForCategoryANSTKit(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_22E658B10();
    }

    if (error)
    {
      v31 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277CCA068];
      v36 = v28;
      v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, &v36, &v35, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v31, v33, @"ANSTErrorDomain", 5, v32);
    }

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  free(v24);
LABEL_22:

  return v23;
}

- (BOOL)_allocateAndBindPort:(e5rt_io_port *)port portName:(const char *)name error:(id *)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  is_tensor = e5rt_io_port_is_tensor();
  if (is_tensor)
  {
    v8 = is_tensor;
    last_error_message = e5rt_get_last_error_message();
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s returned error code %u (%s)", "e5rt_io_port_is_tensor(port, &is_tensor)", v8, last_error_message);
    v12 = _ANSTLoggingGetOSLogForCategoryANSTKit(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_22E658B84();
    }

    if (error)
    {
      v14 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277CCA068];
      v34[0] = v11;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v34, &v33, 1);
      v15 = LABEL_6:;
      objc_msgSend_errorWithDomain_code_userInfo_(v14, v16, @"ANSTErrorDomain", 5, v15);
      *error = LABEL_7:;
    }
  }

  else
  {
    is_surface = e5rt_io_port_is_surface();
    if (is_surface)
    {
      v20 = is_surface;
      v21 = e5rt_get_last_error_message();
      v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"%s returned error code %u (%s)", "e5rt_io_port_is_surface(port, &is_surface)", v20, v21);
      v23 = _ANSTLoggingGetOSLogForCategoryANSTKit(v11);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_22E658B84();
      }

      if (error)
      {
        v14 = MEMORY[0x277CCA9B8];
        v31 = *MEMORY[0x277CCA068];
        v32 = v11;
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, &v32, &v31, 1);
        goto LABEL_6;
      }
    }

    else
    {
      v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"E5 network port named '%s' is neither a tensor port nor a surface port!", name);
      v25 = _ANSTLoggingGetOSLogForCategoryANSTKit(v11);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_22E658B84();
      }

      if (error)
      {
        v27 = MEMORY[0x277CCA9B8];
        v29 = *MEMORY[0x277CCA068];
        v30 = v11;
        v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, &v30, &v29, 1);
        objc_msgSend_errorWithDomain_code_userInfo_(v27, v28, @"ANSTErrorDomain", 3, v15);
        goto LABEL_7;
      }
    }
  }

  return 0;
}

- (BOOL)_allocateAndBindBufferPort:(e5rt_io_port *)port error:(id *)error
{
  v51[1] = *MEMORY[0x277D85DE8];
  e5rt_io_port_retain_buffer_object();
  v5 = e5rt_io_port_retain_tensor_desc();
  if (v5)
  {
    last_error_message = e5rt_get_last_error_message();
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%s returned error code %u (%s)", "e5rt_io_port_retain_tensor_desc(port, &desc)", v5, last_error_message);
    v9 = _ANSTLoggingGetOSLogForCategoryANSTKit(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22E658BF8();
    }

    if (error)
    {
      v11 = MEMORY[0x277CCA9B8];
      v50 = *MEMORY[0x277CCA068];
      v51[0] = v8;
      v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v51, &v50, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v11, v13, @"ANSTErrorDomain", 5, v12);
    }

    return 0;
  }

  v14 = e5rt_tensor_desc_alloc_buffer_object();
  if (v14)
  {
    v15 = e5rt_get_last_error_message();
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%s returned error code %u (%s)", "e5rt_tensor_desc_alloc_buffer_object(desc, E5RT_BUFFER_OBJECT_TYPE_IOSURFACE, 1, &bufferObject)", v14, v15);
    v18 = _ANSTLoggingGetOSLogForCategoryANSTKit(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_22E658BF8();
    }

    if (error)
    {
      v20 = MEMORY[0x277CCA9B8];
      v48 = *MEMORY[0x277CCA068];
      v49 = v17;
      v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, &v49, &v48, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v20, v22, @"ANSTErrorDomain", 5, v21);
    }

    return 0;
  }

  iosurface = e5rt_buffer_object_get_iosurface();
  if (iosurface)
  {
    v24 = e5rt_get_last_error_message();
    v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(bufferObject, &surface)", iosurface, v24);
    v27 = _ANSTLoggingGetOSLogForCategoryANSTKit(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_22E658BF8();
    }

    if (!error)
    {
      goto LABEL_24;
    }

    v29 = MEMORY[0x277CCA9B8];
    v46 = *MEMORY[0x277CCA068];
    v47 = v26;
    v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, &v47, &v46, 1);
    v32 = objc_msgSend_errorWithDomain_code_userInfo_(v29, v31, @"ANSTErrorDomain", 5, v30);
  }

  else
  {
    AllocSize = IOSurfaceGetAllocSize(0);
    IOSurfaceLock(0, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(0);
    bzero(BaseAddress, AllocSize);
    IOSurfaceUnlock(0, 0, 0);
    v35 = e5rt_io_port_bind_buffer_object();
    if (!v35)
    {
      return 1;
    }

    v36 = e5rt_get_last_error_message();
    v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v37, @"%s returned error code %u (%s)", "e5rt_io_port_bind_buffer_object(port, bufferObject)", v35, v36);
    v38 = _ANSTLoggingGetOSLogForCategoryANSTKit(v26);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_22E658BF8();
    }

    if (!error)
    {
      goto LABEL_24;
    }

    v40 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA068];
    v45 = v26;
    v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, &v45, &v44, 1);
    v32 = objc_msgSend_errorWithDomain_code_userInfo_(v40, v41, @"ANSTErrorDomain", 5, v30);
  }

  *error = v32;

LABEL_24:
  return 0;
}

- (BOOL)_allocateAndBindSurfacePort:(e5rt_io_port *)port error:(id *)error
{
  v51[1] = *MEMORY[0x277D85DE8];
  e5rt_io_port_retain_surface_object();
  v5 = e5rt_io_port_retain_surface_desc();
  if (v5)
  {
    last_error_message = e5rt_get_last_error_message();
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%s returned error code %u (%s)", "e5rt_io_port_retain_surface_desc(port, &desc)", v5, last_error_message);
    v9 = _ANSTLoggingGetOSLogForCategoryANSTKit(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22E658C6C();
    }

    if (error)
    {
      v11 = MEMORY[0x277CCA9B8];
      v50 = *MEMORY[0x277CCA068];
      v51[0] = v8;
      v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v51, &v50, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v11, v13, @"ANSTErrorDomain", 5, v12);
    }

    return 0;
  }

  v14 = e5rt_surface_object_alloc();
  if (v14)
  {
    v15 = e5rt_get_last_error_message();
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%s returned error code %u (%s)", "e5rt_surface_object_alloc(&surfaceObject, desc, E5RT_SURFACE_TYPE_FORMATTED_IOSURFACE)", v14, v15);
    v18 = _ANSTLoggingGetOSLogForCategoryANSTKit(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_22E658C6C();
    }

    if (error)
    {
      v20 = MEMORY[0x277CCA9B8];
      v48 = *MEMORY[0x277CCA068];
      v49 = v17;
      v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, &v49, &v48, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v20, v22, @"ANSTErrorDomain", 5, v21);
    }

    return 0;
  }

  iosurface = e5rt_surface_object_get_iosurface();
  if (iosurface)
  {
    v24 = e5rt_get_last_error_message();
    v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"%s returned error code %u (%s)", "e5rt_surface_object_get_iosurface(surfaceObject, &surface)", iosurface, v24);
    v27 = _ANSTLoggingGetOSLogForCategoryANSTKit(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_22E658C6C();
    }

    if (!error)
    {
      goto LABEL_24;
    }

    v29 = MEMORY[0x277CCA9B8];
    v46 = *MEMORY[0x277CCA068];
    v47 = v26;
    v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, &v47, &v46, 1);
    v32 = objc_msgSend_errorWithDomain_code_userInfo_(v29, v31, @"ANSTErrorDomain", 5, v30);
  }

  else
  {
    AllocSize = IOSurfaceGetAllocSize(0);
    IOSurfaceLock(0, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(0);
    bzero(BaseAddress, AllocSize);
    IOSurfaceUnlock(0, 0, 0);
    v35 = e5rt_io_port_bind_surface_object();
    if (!v35)
    {
      return 1;
    }

    v36 = e5rt_get_last_error_message();
    v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v37, @"%s returned error code %u (%s)", "e5rt_io_port_bind_surface_object(port, surfaceObject)", v35, v36);
    v38 = _ANSTLoggingGetOSLogForCategoryANSTKit(v26);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_22E658C6C();
    }

    if (!error)
    {
      goto LABEL_24;
    }

    v40 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA068];
    v45 = v26;
    v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, &v45, &v44, 1);
    v32 = objc_msgSend_errorWithDomain_code_userInfo_(v40, v41, @"ANSTErrorDomain", 5, v30);
  }

  *error = v32;

LABEL_24:
  return 0;
}

- (BOOL)_bindNetworkInputsToExistingNetwork:(id)network error:(id *)error
{
  v30[1] = *MEMORY[0x277D85DE8];
  networkCopy = network;
  num_inputs = e5rt_execution_stream_operation_get_num_inputs();
  if (num_inputs)
  {
    last_error_message = e5rt_get_last_error_message();
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_get_num_inputs(_operation, &num_ports)", num_inputs, last_error_message);
    v10 = _ANSTLoggingGetOSLogForCategoryANSTKit(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22E658CE0();
    }

    if (error)
    {
      v12 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA068];
      v30[0] = v9;
      v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v30, &v29, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v12, v14, @"ANSTErrorDomain", 5, v13);
    }

    v15 = 0;
  }

  else
  {
    v16 = malloc_type_malloc(0, 0x10040436913F5uLL);
    input_names = e5rt_execution_stream_operation_get_input_names();
    if (input_names)
    {
      v18 = e5rt_get_last_error_message();
      v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_get_input_names(_operation, num_ports, names)", input_names, v18);
      v21 = _ANSTLoggingGetOSLogForCategoryANSTKit(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_22E658CE0();
      }

      if (error)
      {
        v23 = MEMORY[0x277CCA9B8];
        v27 = *MEMORY[0x277CCA068];
        v28 = v20;
        v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, &v28, &v27, 1);
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v23, v25, @"ANSTErrorDomain", 5, v24);
      }

      v15 = 0;
    }

    else
    {
      v15 = 1;
    }

    free(v16);
  }

  return v15;
}

- (BOOL)_bindNetworkOutputsToExistingNetwork:(id)network error:(id *)error
{
  v30[1] = *MEMORY[0x277D85DE8];
  networkCopy = network;
  num_outputs = e5rt_execution_stream_operation_get_num_outputs();
  if (num_outputs)
  {
    last_error_message = e5rt_get_last_error_message();
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_get_num_outputs(_operation, &num_ports)", num_outputs, last_error_message);
    v10 = _ANSTLoggingGetOSLogForCategoryANSTKit(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22E658D54();
    }

    if (error)
    {
      v12 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA068];
      v30[0] = v9;
      v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v30, &v29, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v12, v14, @"ANSTErrorDomain", 5, v13);
    }

    v15 = 0;
  }

  else
  {
    v16 = malloc_type_malloc(0, 0x10040436913F5uLL);
    output_names = e5rt_execution_stream_operation_get_output_names();
    if (output_names)
    {
      v18 = e5rt_get_last_error_message();
      v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_get_output_names(_operation, num_ports, names)", output_names, v18);
      v21 = _ANSTLoggingGetOSLogForCategoryANSTKit(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_22E658D54();
      }

      if (error)
      {
        v23 = MEMORY[0x277CCA9B8];
        v27 = *MEMORY[0x277CCA068];
        v28 = v20;
        v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, &v28, &v27, 1);
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v23, v25, @"ANSTErrorDomain", 5, v24);
      }

      v15 = 0;
    }

    else
    {
      v15 = 1;
    }

    free(v16);
  }

  return v15;
}

- (BOOL)bindNetworkInputNamed:(id)named toTensor:(id)tensor error:(id *)error
{
  v30[1] = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  namedCopy = named;
  objc_msgSend_UTF8String(namedCopy, v10, v11);
  v12 = e5rt_execution_stream_operation_retain_input_port();
  if (v12)
  {
    v14 = v12;
    last_error_message = e5rt_get_last_error_message();
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_input_port(_operation, inputName.UTF8String, &port)", v14, last_error_message);
    v18 = _ANSTLoggingGetOSLogForCategoryANSTKit(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_22E658DC8();
    }

    if (!error)
    {
      v23 = 0;
      goto LABEL_11;
    }

    v20 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA068];
    v30[0] = v17;
    v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v30, &v29, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v20, v22, @"ANSTErrorDomain", 5, v21);
    *error = v23 = 0;
LABEL_9:

LABEL_11:
    goto LABEL_12;
  }

  v23 = objc_msgSend__bindBufferPort_toTensor_error_(self, v13, 0, tensorCopy, error);
  v24 = e5rt_io_port_release();
  if (v24)
  {
    v25 = v24;
    v26 = e5rt_get_last_error_message();
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v27, @"%s returned error code %u (%s)", "e5rt_io_port_release(&port)", v25, v26);
    v21 = _ANSTLoggingGetOSLogForCategoryANSTKit(v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_22E658DC8();
    }

    goto LABEL_9;
  }

LABEL_12:

  return v23;
}

- (BOOL)bindNetworkOutputNamed:(id)named toTensor:(id)tensor error:(id *)error
{
  v30[1] = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  namedCopy = named;
  objc_msgSend_UTF8String(namedCopy, v10, v11);
  v12 = e5rt_execution_stream_operation_retain_output_port();
  if (v12)
  {
    v14 = v12;
    last_error_message = e5rt_get_last_error_message();
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_output_port(_operation, outputName.UTF8String, &port)", v14, last_error_message);
    v18 = _ANSTLoggingGetOSLogForCategoryANSTKit(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_22E658E3C();
    }

    if (!error)
    {
      v23 = 0;
      goto LABEL_11;
    }

    v20 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA068];
    v30[0] = v17;
    v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v30, &v29, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v20, v22, @"ANSTErrorDomain", 5, v21);
    *error = v23 = 0;
LABEL_9:

LABEL_11:
    goto LABEL_12;
  }

  v23 = objc_msgSend__bindBufferPort_toTensor_error_(self, v13, 0, tensorCopy, error);
  v24 = e5rt_io_port_release();
  if (v24)
  {
    v25 = v24;
    v26 = e5rt_get_last_error_message();
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v27, @"%s returned error code %u (%s)", "e5rt_io_port_release(&port)", v25, v26);
    v21 = _ANSTLoggingGetOSLogForCategoryANSTKit(v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_22E658E3C();
    }

    goto LABEL_9;
  }

LABEL_12:

  return v23;
}

- (id)tensorSurfaceForNetworkInputNamed:(id)named error:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  namedCopy = named;
  v7 = namedCopy;
  objc_msgSend_UTF8String(v7, v8, v9);
  v10 = e5rt_execution_stream_operation_retain_input_port();
  if (v10)
  {
    v12 = v10;
    last_error_message = e5rt_get_last_error_message();
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_input_port(_operation, name.UTF8String, &port)", v12, last_error_message);
    v16 = _ANSTLoggingGetOSLogForCategoryANSTKit(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_22E658EB0();
    }

    if (!error)
    {
      v21 = 0;
      goto LABEL_11;
    }

    v18 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA068];
    v28[0] = v15;
    v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v28, &v27, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v18, v20, @"ANSTErrorDomain", 5, v19);
    *error = v21 = 0;
  }

  else
  {
    v21 = objc_msgSend__tensorSurfaceForPort_name_error_(self, v11, 0, namedCopy, error);
    v22 = e5rt_io_port_release();
    if (!v22)
    {
      goto LABEL_12;
    }

    v23 = v22;
    v24 = e5rt_get_last_error_message();
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"%s returned error code %u (%s)", "e5rt_io_port_release(&port)", v23, v24);
    v19 = _ANSTLoggingGetOSLogForCategoryANSTKit(v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_22E658EB0();
    }
  }

LABEL_11:
LABEL_12:

  return v21;
}

- (id)tensorSurfaceForNetworkOutputNamed:(id)named error:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  namedCopy = named;
  v7 = namedCopy;
  objc_msgSend_UTF8String(v7, v8, v9);
  v10 = e5rt_execution_stream_operation_retain_output_port();
  if (v10)
  {
    v12 = v10;
    last_error_message = e5rt_get_last_error_message();
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_output_port(_operation, name.UTF8String, &port)", v12, last_error_message);
    v16 = _ANSTLoggingGetOSLogForCategoryANSTKit(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_22E658F24();
    }

    if (!error)
    {
      v21 = 0;
      goto LABEL_11;
    }

    v18 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA068];
    v28[0] = v15;
    v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v28, &v27, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v18, v20, @"ANSTErrorDomain", 5, v19);
    *error = v21 = 0;
  }

  else
  {
    v21 = objc_msgSend__tensorSurfaceForPort_name_error_(self, v11, 0, namedCopy, error);
    v22 = e5rt_io_port_release();
    if (!v22)
    {
      goto LABEL_12;
    }

    v23 = v22;
    v24 = e5rt_get_last_error_message();
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"%s returned error code %u (%s)", "e5rt_io_port_release(&port)", v23, v24);
    v19 = _ANSTLoggingGetOSLogForCategoryANSTKit(v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_22E658F24();
    }
  }

LABEL_11:
LABEL_12:

  return v21;
}

- (BOOL)_bindBufferPort:(e5rt_io_port *)port toTensor:(id)tensor error:(id *)error
{
  v48[1] = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  v9 = e5rt_io_port_retain_tensor_desc();
  if (v9)
  {
    last_error_message = e5rt_get_last_error_message();
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s returned error code %u (%s)", "e5rt_io_port_retain_tensor_desc(port, &desc)", v9, last_error_message);
    v13 = _ANSTLoggingGetOSLogForCategoryANSTKit(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22E658F98();
    }

    if (error)
    {
      v15 = MEMORY[0x277CCA9B8];
      v47 = *MEMORY[0x277CCA068];
      v48[0] = v12;
      v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v48, &v47, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v15, v17, @"ANSTErrorDomain", 5, v16);
    }
  }

  else
  {
    v18 = objc_msgSend_tensorDescriptor(tensorCopy, v7, v8);
    v20 = objc_msgSend_matchesE5TensorDescriptor_error_(v18, v19, 0, error);

    if (v20)
    {
      objc_msgSend_surface(tensorCopy, v21, v22);
      v23 = e5rt_buffer_object_create_from_iosurface();
      if (v23)
      {
        v24 = e5rt_get_last_error_message();
        v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"%s returned error code %u (%s)", "e5rt_buffer_object_create_from_iosurface(&bufferObject, tensor.surface)", v23, v24);
        v27 = _ANSTLoggingGetOSLogForCategoryANSTKit(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_22E658F98();
        }

        if (error)
        {
          v29 = MEMORY[0x277CCA9B8];
          v45 = *MEMORY[0x277CCA068];
          v46 = v26;
          v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, &v46, &v45, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v29, v31, @"ANSTErrorDomain", 5, v30);
        }
      }

      else
      {
        v32 = e5rt_io_port_bind_buffer_object();
        if (!v32)
        {
          v41 = 1;
          goto LABEL_21;
        }

        v33 = e5rt_get_last_error_message();
        v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v34, @"%s returned error code %u (%s)", "e5rt_io_port_bind_buffer_object(port, bufferObject)", v32, v33);
        v36 = _ANSTLoggingGetOSLogForCategoryANSTKit(v35);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_22E658F98();
        }

        if (error)
        {
          v38 = MEMORY[0x277CCA9B8];
          v43 = *MEMORY[0x277CCA068];
          v44 = v35;
          v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, &v44, &v43, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v38, v40, @"ANSTErrorDomain", 5, v39);
        }
      }
    }
  }

  v41 = 0;
LABEL_21:

  return v41;
}

- (id)_tensorSurfaceForPort:(e5rt_io_port *)port name:(id)name error:(id *)error
{
  v48[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = e5rt_io_port_retain_buffer_object();
  if (v7)
  {
    last_error_message = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%s returned error code %u (%s)", "e5rt_io_port_retain_buffer_object(port, &bufferObject)", v7, last_error_message);
    v11 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22E65900C();
    }

    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v47 = *MEMORY[0x277CCA068];
      v48[0] = v10;
      v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v48, &v47, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"ANSTErrorDomain", 5, v14);
    }

LABEL_19:
    v34 = 0;
    v35 = 0;
    goto LABEL_20;
  }

  v16 = e5rt_io_port_retain_tensor_desc();
  if (v16)
  {
    v17 = e5rt_get_last_error_message();
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"%s returned error code %u (%s)", "e5rt_io_port_retain_tensor_desc(port, &desc)", v16, v17);
    v20 = _ANSTLoggingGetOSLogForCategoryANSTKit(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_22E65900C();
    }

    if (error)
    {
      v22 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277CCA068];
      v46 = v19;
      v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, &v46, &v45, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v22, v24, @"ANSTErrorDomain", 5, v23);
    }

    goto LABEL_19;
  }

  iosurface = e5rt_buffer_object_get_iosurface();
  if (iosurface)
  {
    v26 = e5rt_get_last_error_message();
    v28 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v27, @"%s returned error code %u (%s)", "e5rt_buffer_object_get_iosurface(bufferObject, &surfaceRef)", iosurface, v26);
    v29 = _ANSTLoggingGetOSLogForCategoryANSTKit(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_22E65900C();
    }

    if (error)
    {
      v31 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CCA068];
      v44 = v28;
      v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, &v44, &v43, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v31, v33, @"ANSTErrorDomain", 5, v32);
    }

    goto LABEL_19;
  }

  v38 = [ANSTTensorDescriptor alloc];
  v40 = objc_msgSend_initWithE5TensorDescriptor_name_error_(v38, v39, 0, nameCopy, error);
  if (v40)
  {
    v41 = [ANSTTensorSurface alloc];
    v35 = objc_msgSend_initWithDescriptor_ioSurface_error_(v41, v42, v40, 0, error);
  }

  else
  {
    v35 = 0;
  }

  v34 = 1;
LABEL_20:
  if (v34)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (BOOL)bindNetworkInputNamed:(id)named toPixelBuffer:(id)buffer error:(id *)error
{
  v33[1] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  namedCopy = named;
  objc_msgSend_UTF8String(namedCopy, v10, v11);
  v12 = e5rt_execution_stream_operation_retain_input_port();
  if (v12)
  {
    v15 = v12;
    last_error_message = e5rt_get_last_error_message();
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_input_port(_operation, inputName.UTF8String, &port)", v15, last_error_message);
    v19 = _ANSTLoggingGetOSLogForCategoryANSTKit(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_22E659080();
    }

    if (!error)
    {
      v24 = 0;
      goto LABEL_11;
    }

    v21 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA068];
    v33[0] = v18;
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v33, &v32, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v21, v23, @"ANSTErrorDomain", 5, v22);
    *error = v24 = 0;
LABEL_9:

LABEL_11:
    goto LABEL_12;
  }

  v25 = objc_msgSend_pixelBuffer(bufferCopy, v13, v14);
  v24 = objc_msgSend__bindSurfacePort_toPixelBuffer_error_(self, v26, 0, v25, error);
  v27 = e5rt_io_port_release();
  if (v27)
  {
    v28 = v27;
    v29 = e5rt_get_last_error_message();
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v30, @"%s returned error code %u (%s)", "e5rt_io_port_release(&port)", v28, v29);
    v22 = _ANSTLoggingGetOSLogForCategoryANSTKit(v18);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_22E659080();
    }

    goto LABEL_9;
  }

LABEL_12:

  return v24;
}

- (BOOL)bindNetworkOutputNamed:(id)named toPixelBuffer:(id)buffer error:(id *)error
{
  v33[1] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  namedCopy = named;
  objc_msgSend_UTF8String(namedCopy, v10, v11);
  v12 = e5rt_execution_stream_operation_retain_output_port();
  if (v12)
  {
    v15 = v12;
    last_error_message = e5rt_get_last_error_message();
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_output_port(_operation, outputName.UTF8String, &port)", v15, last_error_message);
    v19 = _ANSTLoggingGetOSLogForCategoryANSTKit(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_22E6590F4();
    }

    if (!error)
    {
      v24 = 0;
      goto LABEL_11;
    }

    v21 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA068];
    v33[0] = v18;
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v33, &v32, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v21, v23, @"ANSTErrorDomain", 5, v22);
    *error = v24 = 0;
LABEL_9:

LABEL_11:
    goto LABEL_12;
  }

  v25 = objc_msgSend_pixelBuffer(bufferCopy, v13, v14);
  v24 = objc_msgSend__bindSurfacePort_toPixelBuffer_error_(self, v26, 0, v25, error);
  v27 = e5rt_io_port_release();
  if (v27)
  {
    v28 = v27;
    v29 = e5rt_get_last_error_message();
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v30, @"%s returned error code %u (%s)", "e5rt_io_port_release(&port)", v28, v29);
    v22 = _ANSTLoggingGetOSLogForCategoryANSTKit(v18);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_22E6590F4();
    }

    goto LABEL_9;
  }

LABEL_12:

  return v24;
}

- (id)pixelBufferForNetworkInputNamed:(id)named error:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  namedCopy = named;
  v7 = namedCopy;
  objc_msgSend_UTF8String(v7, v8, v9);
  v10 = e5rt_execution_stream_operation_retain_input_port();
  if (v10)
  {
    v12 = v10;
    last_error_message = e5rt_get_last_error_message();
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_input_port(_operation, name.UTF8String, &port)", v12, last_error_message);
    v16 = _ANSTLoggingGetOSLogForCategoryANSTKit(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_22E659168();
    }

    if (!error)
    {
      v21 = 0;
      goto LABEL_11;
    }

    v18 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA068];
    v28[0] = v15;
    v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v28, &v27, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v18, v20, @"ANSTErrorDomain", 5, v19);
    *error = v21 = 0;
  }

  else
  {
    v21 = objc_msgSend__pixelBufferForPort_name_error_(self, v11, 0, namedCopy, error);
    v22 = e5rt_io_port_release();
    if (!v22)
    {
      goto LABEL_12;
    }

    v23 = v22;
    v24 = e5rt_get_last_error_message();
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"%s returned error code %u (%s)", "e5rt_io_port_release(&port)", v23, v24);
    v19 = _ANSTLoggingGetOSLogForCategoryANSTKit(v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_22E659168();
    }
  }

LABEL_11:
LABEL_12:

  return v21;
}

- (id)pixelBufferForNetworkOutputNamed:(id)named error:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  namedCopy = named;
  v7 = namedCopy;
  objc_msgSend_UTF8String(v7, v8, v9);
  v10 = e5rt_execution_stream_operation_retain_output_port();
  if (v10)
  {
    v12 = v10;
    last_error_message = e5rt_get_last_error_message();
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_output_port(_operation, name.UTF8String, &port)", v12, last_error_message);
    v16 = _ANSTLoggingGetOSLogForCategoryANSTKit(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_22E6591DC();
    }

    if (!error)
    {
      v21 = 0;
      goto LABEL_11;
    }

    v18 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA068];
    v28[0] = v15;
    v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v28, &v27, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v18, v20, @"ANSTErrorDomain", 5, v19);
    *error = v21 = 0;
  }

  else
  {
    v21 = objc_msgSend__pixelBufferForPort_name_error_(self, v11, 0, namedCopy, error);
    v22 = e5rt_io_port_release();
    if (!v22)
    {
      goto LABEL_12;
    }

    v23 = v22;
    v24 = e5rt_get_last_error_message();
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"%s returned error code %u (%s)", "e5rt_io_port_release(&port)", v23, v24);
    v19 = _ANSTLoggingGetOSLogForCategoryANSTKit(v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_22E6591DC();
    }
  }

LABEL_11:
LABEL_12:

  return v21;
}

- (BOOL)_bindSurfacePort:(e5rt_io_port *)port toPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  v90[1] = *MEMORY[0x277D85DE8];
  v7 = e5rt_io_port_retain_surface_desc();
  if (v7)
  {
    last_error_message = e5rt_get_last_error_message();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%s returned error code %u (%s)", "e5rt_io_port_retain_surface_desc(port, &desc)", v7, last_error_message);
    v11 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22E659250();
    }

    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v75 = *MEMORY[0x277CCA068];
      v76 = v10;
      v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, &v76, &v75, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"ANSTErrorDomain", 5, v14);
    }

    return 0;
  }

  if (CVPixelBufferGetIOSurface(buffer))
  {
    Width = CVPixelBufferGetWidth(buffer);
    v19 = e5rt_surface_desc_get_width();
    if (v19)
    {
      v20 = e5rt_get_last_error_message();
      v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, @"%s returned error code %u (%s)", "e5rt_surface_desc_get_width(desc, &e5Width)", v19, v20);
      v23 = _ANSTLoggingGetOSLogForCategoryANSTKit(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_22E6592C4();
      }

      if (!error)
      {
        goto LABEL_29;
      }

      v25 = MEMORY[0x277CCA9B8];
      v87 = *MEMORY[0x277CCA068];
      v88 = v22;
      v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, &v88, &v87, 1);
      v28 = objc_msgSend_errorWithDomain_code_userInfo_(v25, v27, @"ANSTErrorDomain", 5, v26);
LABEL_28:
      *error = v28;

LABEL_29:
      return 0;
    }

    if (Width != -1)
    {
      v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"%s: Width mismatch (CVPixelBuffer %ld, E5 surface %ld)", "BOOL pixelBufferFitsE5SurfaceDescriptor(CVPixelBufferRef _Nonnull, e5rt_surface_desc_t _Nonnull, NSError * _Nullable __autoreleasing * _Nullable)", Width, -1);
      v47 = _ANSTLoggingGetOSLogForCategoryANSTKit(v22);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_22E6592C4();
      }

      if (!error)
      {
        goto LABEL_29;
      }

      v49 = MEMORY[0x277CCA9B8];
      v85 = *MEMORY[0x277CCA068];
      v86 = v22;
      v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v48, &v86, &v85, 1);
      v28 = objc_msgSend_errorWithDomain_code_userInfo_(v49, v50, @"ANSTErrorDomain", 13, v26);
      goto LABEL_28;
    }

    Height = CVPixelBufferGetHeight(buffer);
    v37 = e5rt_surface_desc_get_height();
    if (v37)
    {
      v38 = e5rt_get_last_error_message();
      v40 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v39, @"%s returned error code %u (%s)", "e5rt_surface_desc_get_height(desc, &e5Height)", v37, v38);
      v41 = _ANSTLoggingGetOSLogForCategoryANSTKit(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_22E6592C4();
      }

      if (!error)
      {
        goto LABEL_42;
      }

      v43 = MEMORY[0x277CCA9B8];
      v83 = *MEMORY[0x277CCA068];
      v84 = v40;
      v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, &v84, &v83, 1);
      v46 = objc_msgSend_errorWithDomain_code_userInfo_(v43, v45, @"ANSTErrorDomain", 5, v44);
LABEL_41:
      *error = v46;

LABEL_42:
      return 0;
    }

    if (Height != -1)
    {
      v40 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v36, @"%s: Height mismatch (CVPixelBuffer %ld, E5 surface %ld)", "BOOL pixelBufferFitsE5SurfaceDescriptor(CVPixelBufferRef _Nonnull, e5rt_surface_desc_t _Nonnull, NSError * _Nullable __autoreleasing * _Nullable)", Height, -1);
      v64 = _ANSTLoggingGetOSLogForCategoryANSTKit(v40);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        sub_22E6592C4();
      }

      if (!error)
      {
        goto LABEL_42;
      }

      v66 = MEMORY[0x277CCA9B8];
      v81 = *MEMORY[0x277CCA068];
      v82 = v40;
      v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v65, &v82, &v81, 1);
      v46 = objc_msgSend_errorWithDomain_code_userInfo_(v66, v67, @"ANSTErrorDomain", 13, v44);
      goto LABEL_41;
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
    format = e5rt_surface_desc_get_format();
    if (format)
    {
      v55 = e5rt_get_last_error_message();
      v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v56, @"%s returned error code %u (%s)", "e5rt_surface_desc_get_format(desc, &e5Format)", format, v55);
      v58 = _ANSTLoggingGetOSLogForCategoryANSTKit(v57);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        sub_22E6592C4();
      }

      if (!error)
      {
        goto LABEL_63;
      }

      v60 = MEMORY[0x277CCA9B8];
      v79 = *MEMORY[0x277CCA068];
      v80 = v57;
      v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v59, &v80, &v79, 1);
      v63 = objc_msgSend_errorWithDomain_code_userInfo_(v60, v62, @"ANSTErrorDomain", 5, v61);
LABEL_62:
      *error = v63;

LABEL_63:
      return 0;
    }

    if (PixelFormatType > 1278226535)
    {
      if (PixelFormatType == 1278226536 || PixelFormatType == 1380401729 || PixelFormatType == 1278226742)
      {
        goto LABEL_57;
      }
    }

    else if (PixelFormatType == 32 || PixelFormatType == 1111970369 || PixelFormatType == 1278226488)
    {
LABEL_57:
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v53, @"%s: Pixel format mismatch (CVPixelFormatType %d, E5 format %d)", "BOOL pixelBufferFitsE5SurfaceDescriptor(CVPixelBufferRef _Nonnull, e5rt_surface_desc_t _Nonnull, NSError * _Nullable __autoreleasing * _Nullable)", PixelFormatType, 33);
      v57 = LABEL_58:;
      v71 = _ANSTLoggingGetOSLogForCategoryANSTKit(v57);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        sub_22E6592C4();
      }

      if (!error)
      {
        goto LABEL_63;
      }

      v73 = MEMORY[0x277CCA9B8];
      v77 = *MEMORY[0x277CCA068];
      v78 = v57;
      v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v72, &v78, &v77, 1);
      v63 = objc_msgSend_errorWithDomain_code_userInfo_(v73, v74, @"ANSTErrorDomain", 13, v61);
      goto LABEL_62;
    }

    v68 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v53, @"%s: Unsupported input pixel format type %d", "BOOL pixelFormatMatchesE5SurfaceFormat(OSType, e5rt_surface_format_t, NSError * _Nullable __autoreleasing * _Nullable)", PixelFormatType);
    v69 = _ANSTLoggingGetOSLogForCategoryANSTKit(v68);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      sub_22E659338();
    }

    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v70, @"%s: Pixel format mismatch (CVPixelFormatType %d, E5 format %d)", "BOOL pixelBufferFitsE5SurfaceDescriptor(CVPixelBufferRef _Nonnull, e5rt_surface_desc_t _Nonnull, NSError * _Nullable __autoreleasing * _Nullable)", PixelFormatType, 33);
    goto LABEL_58;
  }

  v29 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%s: E5 surface requires CVPixelBuffer to be IOSurface backed.", "BOOL pixelBufferFitsE5SurfaceDescriptor(CVPixelBufferRef _Nonnull, e5rt_surface_desc_t _Nonnull, NSError * _Nullable __autoreleasing * _Nullable)");
  v30 = _ANSTLoggingGetOSLogForCategoryANSTKit(v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    sub_22E6592C4();
  }

  if (error)
  {
    v32 = MEMORY[0x277CCA9B8];
    v89 = *MEMORY[0x277CCA068];
    v90[0] = v29;
    v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, v90, &v89, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v32, v34, @"ANSTErrorDomain", 13, v33);
  }

  return 0;
}

- (id)_pixelBufferForPort:(e5rt_io_port *)port name:(id)name error:(id *)error
{
  v60[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  pixelBufferOut = 0;
  v7 = e5rt_io_port_retain_surface_object();
  if (!v7)
  {
    iosurface = e5rt_surface_object_get_iosurface();
    if (iosurface)
    {
      last_error_message = e5rt_get_last_error_message();
      v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"%s returned error code %u (%s)", "e5rt_surface_object_get_iosurface(surfaceObject, &surfaceRef)", iosurface, last_error_message);
      v22 = _ANSTLoggingGetOSLogForCategoryANSTKit(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_22E6593AC();
      }

      if (error)
      {
        v24 = MEMORY[0x277CCA9B8];
        v57 = *MEMORY[0x277CCA068];
        v58 = v21;
        v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, &v58, &v57, 1);
        v27 = objc_msgSend_errorWithDomain_code_userInfo_(v24, v26, @"ANSTErrorDomain", 5, v25);
LABEL_17:
        v16 = 0;
        v17 = 0;
        *error = v27;
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      if (!CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], 0, 0, &pixelBufferOut))
      {
        v53[0] = *MEMORY[0x277CC4EC8];
        v33 = MEMORY[0x277CCABB0];
        Width = CVPixelBufferGetWidth(pixelBufferOut);
        v36 = objc_msgSend_numberWithUnsignedLong_(v33, v35, Width);
        v54[0] = v36;
        v53[1] = *MEMORY[0x277CC4DD8];
        v37 = MEMORY[0x277CCABB0];
        Height = CVPixelBufferGetHeight(pixelBufferOut);
        v40 = objc_msgSend_numberWithUnsignedLong_(v37, v39, Height);
        v54[1] = v40;
        v53[2] = *MEMORY[0x277CC4E30];
        v41 = MEMORY[0x277CCABB0];
        PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBufferOut);
        v44 = objc_msgSend_numberWithUnsignedInt_(v41, v43, PixelFormatType);
        v53[3] = *MEMORY[0x277CC4DE8];
        v54[2] = v44;
        v54[3] = MEMORY[0x277CBEC10];
        v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v45, v54, v53, 4);

        v46 = [ANSTPixelBufferDescriptor alloc];
        v25 = objc_msgSend_initWithName_pixelBufferAttributes_error_(v46, v47, nameCopy, v21, error);
        v48 = [ANSTPixelBuffer alloc];
        v17 = objc_msgSend_initWithDescriptor_pixelBuffer_orientation_error_(v48, v49, v25, pixelBufferOut, 0, error);
        v16 = 1;
        goto LABEL_20;
      }

      v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, @"Failed to create CVPixelBuffer from E5 surface object named %@", nameCopy);
      v29 = _ANSTLoggingGetOSLogForCategoryANSTKit(v21);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_22E6593AC();
      }

      if (error)
      {
        v31 = MEMORY[0x277CCA9B8];
        v55 = *MEMORY[0x277CCA068];
        v56 = v21;
        v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, &v56, &v55, 1);
        v27 = objc_msgSend_errorWithDomain_code_userInfo_(v31, v32, @"ANSTErrorDomain", 0, v25);
        goto LABEL_17;
      }
    }

    v16 = 0;
    v17 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v8 = e5rt_get_last_error_message();
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%s returned error code %u (%s)", "e5rt_io_port_retain_surface_object(port, &surfaceObject)", v7, v8);
  v11 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_22E6593AC();
  }

  if (error)
  {
    v13 = MEMORY[0x277CCA9B8];
    v59 = *MEMORY[0x277CCA068];
    v60[0] = v10;
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v60, &v59, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"ANSTErrorDomain", 5, v14);
  }

  v16 = 0;
  v17 = 0;
LABEL_22:
  CVPixelBufferRelease(pixelBufferOut);
  if (v16)
  {
    v50 = v17;
  }

  else
  {
    v50 = 0;
  }

  return v50;
}

@end