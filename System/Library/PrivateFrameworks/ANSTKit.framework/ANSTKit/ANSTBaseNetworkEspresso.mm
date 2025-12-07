@interface ANSTBaseNetworkEspresso
- ($C4732ECC957FA13B9B3DF4A51A95735B)network;
- ($FD4688982923A924290ECB669CAF1EC2)getTensorByName:(const char *)name;
- (BOOL)bindNetworkInputWithEspressoBuffer:(id *)buffer withInputName:(id)name;
- (BOOL)bindNetworkInputWithImage:(__CVBuffer *)image withInputName:(id)name;
- (BOOL)bindNetworkOutput:(const char *)output;
- (BOOL)buildPlan;
- (BOOL)getBlobDimensionByName:(const char *)name andDestination:(unint64_t *)destination;
- (BOOL)initContext;
- (BOOL)initMLNetwork;
- (BOOL)initNetwork;
- (BOOL)initNetworkOutput;
- (BOOL)initPlan;
- (BOOL)prepare;
- (BOOL)runNetwork;
- (BOOL)setInput:(id)input fromCVPixelBuffer:(__CVBuffer *)buffer;
- (CGSize)getResolutionByBlobName:(const char *)name;
- (id).cxx_construct;
- (id)_initWithNetworkEngine:(int64_t)engine qualityOfService:(unsigned int)service networkName:(id)name networkFileName:(id)fileName networkResolution:(id)resolution;
- (void)cleanUpOutputPixelBufferMap;
- (void)dealloc;
- (void)updateOutputBlobMap;
@end

@implementation ANSTBaseNetworkEspresso

- (id)_initWithNetworkEngine:(int64_t)engine qualityOfService:(unsigned int)service networkName:(id)name networkFileName:(id)fileName networkResolution:(id)resolution
{
  v33 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  fileNameCopy = fileName;
  resolutionCopy = resolution;
  v15 = MEMORY[0x277CCA8D8];
  v16 = objc_opt_class();
  v18 = objc_msgSend_bundleForClass_(v15, v17, v16);
  v20 = objc_msgSend_pathForResource_ofType_inDirectory_(v18, v19, nameCopy, @"mlmodelc", @"Models");
  objc_storeStrong(&self->_netPath, v20);
  objc_storeStrong(&self->_netFileName, fileName);
  self->_engineType = engine;
  HIDWORD(v22) = service - 9;
  LODWORD(v22) = service - 9;
  v21 = v22 >> 3;
  if (v21 > 3)
  {
    v23 = 0;
  }

  else
  {
    v23 = dword_22E661940[v21];
  }

  self->_planPriority = v23;
  self->_isPrepared = 0;
  objc_storeStrong(&self->_networkResolution, resolution);
  v25 = _ANSTLoggingGetOSLogForCategoryANSTKit(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    netPath = self->_netPath;
    netFileName = self->_netFileName;
    v29 = 138543618;
    v30 = netPath;
    v31 = 2114;
    v32 = netFileName;
    _os_log_impl(&dword_22E5D5000, v25, OS_LOG_TYPE_DEFAULT, "ANSTBaseNetworkEspresso initialized with network path %{public}@, network file name %{public}@", &v29, 0x16u);
  }

  return self;
}

- (BOOL)prepare
{
  inited = objc_msgSend_initMLNetwork(self, a2, v2);
  if (inited)
  {
    self->_isPrepared = 1;
  }

  return inited;
}

- (BOOL)initMLNetwork
{
  if (!objc_msgSend_initContext(self, a2, v2) || !objc_msgSend_initPlan(self, v4, v5) || !objc_msgSend_initNetwork(self, v6, v7) || !objc_msgSend_buildPlan(self, v8, v9))
  {
    return 0;
  }

  return MEMORY[0x2821F9670](self, sel_initNetworkOutput, v10);
}

- (BOOL)buildPlan
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = espresso_plan_build();
  v3 = v2;
  if (v2)
  {
    v4 = _ANSTLoggingGetOSLogForCategoryANSTKit(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      last_error = espresso_get_last_error();
      sub_22E656D24(last_error, v7);
    }
  }

  return v3 == 0;
}

- (BOOL)initContext
{
  v11 = *MEMORY[0x277D85DE8];
  engineType = self->_engineType;
  v4 = _ANSTLoggingGetOSLogForCategoryANSTKit(self);
  v5 = v4;
  if (engineType == 2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_22E5D5000, v5, OS_LOG_TYPE_DEFAULT, "Using CPU", v10, 2u);
    }
  }

  else if (engineType == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_22E5D5000, v5, OS_LOG_TYPE_DEFAULT, "Using GPU", v10, 2u);
    }
  }

  else if (engineType)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_22E656D68(engineType, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_22E5D5000, v5, OS_LOG_TYPE_DEFAULT, "Using ANE", v10, 2u);
  }

  context = espresso_create_context();
  self->_context = context;
  if (!context)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      last_error = espresso_get_last_error();
      sub_22E656E38(last_error, v10);
    }

    goto LABEL_20;
  }

  if (espresso_context_set_low_precision_accumulation())
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = espresso_get_last_error();
      sub_22E656DF4(v7, v10);
    }

LABEL_20:

    return 0;
  }

  return 1;
}

- (BOOL)initPlan
{
  v10 = *MEMORY[0x277D85DE8];
  plan = espresso_create_plan();
  self->_plan = plan;
  if (!plan)
  {
    v5 = _ANSTLoggingGetOSLogForCategoryANSTKit(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      last_error = espresso_get_last_error();
      sub_22E656EC0(last_error, v9);
    }

    goto LABEL_7;
  }

  v4 = espresso_plan_set_priority();
  if (v4)
  {
    v5 = _ANSTLoggingGetOSLogForCategoryANSTKit(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = espresso_get_last_error();
      sub_22E656E7C(v6, v9);
    }

LABEL_7:

    return 0;
  }

  return 1;
}

- (BOOL)initNetwork
{
  v25 = *MEMORY[0x277D85DE8];
  netPath = self->_netPath;
  if (netPath)
  {
    v4 = objc_msgSend_stringByAppendingPathComponent_(netPath, a2, self->_netFileName);
    v5 = v4;
    objc_msgSend_UTF8String(v5, v6, v7);
    v8 = espresso_plan_add_network();
    v11 = v8;
    if (v8)
    {
      v12 = _ANSTLoggingGetOSLogForCategoryANSTKit(v8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v18 = self->_netPath;
        v19 = 138543874;
        v20 = v18;
        v21 = 1024;
        v22 = v11;
        v23 = 2082;
        last_error = espresso_get_last_error();
        _os_log_fault_impl(&dword_22E5D5000, v12, OS_LOG_TYPE_FAULT, "%{public}@: espresso_plan_add_network failed with status %d (%{public}s)", &v19, 0x1Cu);
      }
    }

    else
    {
      networkResolution = self->_networkResolution;
      if (!networkResolution || (objc_msgSend_isEqualToString_(networkResolution, v9, &stru_28431E810) & 1) != 0 || (objc_msgSend_UTF8String(self->_networkResolution, v9, v10), v16 = espresso_network_select_configuration(), !v16))
      {
        objc_msgSend_updateOutputBlobMap(self, v9, v10);
        v13 = 1;
        goto LABEL_9;
      }

      v12 = _ANSTLoggingGetOSLogForCategoryANSTKit(v16);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = espresso_get_last_error();
        sub_22E656F04(v17, &v19);
      }
    }
  }

  else
  {
    v4 = _ANSTLoggingGetOSLogForCategoryANSTKit(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22E656F48(v4);
    }
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (void)updateOutputBlobMap
{
  sub_22E5D9B58(&self->_outputBufferMap);
  output_blob_name = espresso_get_output_blob_name();
  if (output_blob_name)
  {
    v4 = output_blob_name;
    v5 = 1;
    do
    {
      sub_22E5D8EB4(v8, v4);
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_22E5D9C00(&self->_outputBufferMap, v8, v8, v6);
      if (v9 < 0)
      {
        operator delete(v8[0]);
      }

      v4 = espresso_get_output_blob_name();
      ++v5;
    }

    while (v4);
  }
}

- (BOOL)getBlobDimensionByName:(const char *)name andDestination:(unint64_t *)destination
{
  v11 = *MEMORY[0x277D85DE8];
  blob_dimensions = espresso_network_query_blob_dimensions();
  v6 = blob_dimensions;
  if (blob_dimensions)
  {
    v7 = _ANSTLoggingGetOSLogForCategoryANSTKit(blob_dimensions);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      last_error = espresso_get_last_error();
      sub_22E656FCC(name, last_error, v10);
    }
  }

  return v6 == 0;
}

- (BOOL)initNetworkOutput
{
  for (i = self->_outputBufferMap.__table_.__first_node_.__next_; i; i = *i)
  {
    v4 = i + 16;
    if (i[39] < 0)
    {
      v4 = *v4;
    }

    objc_msgSend_bindNetworkOutput_(self, a2, v4);
  }

  return 1;
}

- (BOOL)bindNetworkInputWithImage:(__CVBuffer *)image withInputName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = nameCopy;
  objc_msgSend_UTF8String(v5, v6, v7);
  v8 = espresso_network_bind_cvpixelbuffer();
  v9 = v8;
  if (v8)
  {
    v10 = _ANSTLoggingGetOSLogForCategoryANSTKit(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = nameCopy;
      v14 = objc_msgSend_UTF8String(v11, v12, v13);
      last_error = espresso_get_last_error();
      sub_22E657014(v14, last_error, v17);
    }
  }

  return v9 == 0;
}

- (BOOL)bindNetworkInputWithEspressoBuffer:(id *)buffer withInputName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = nameCopy;
  objc_msgSend_UTF8String(v5, v6, v7);
  v8 = espresso_network_bind_buffer();
  v9 = v8;
  if (v8)
  {
    v10 = _ANSTLoggingGetOSLogForCategoryANSTKit(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = nameCopy;
      v14 = objc_msgSend_UTF8String(v11, v12, v13);
      last_error = espresso_get_last_error();
      sub_22E65705C(v14, last_error, v17);
    }
  }

  return v9 == 0;
}

- (BOOL)bindNetworkOutput:(const char *)output
{
  v14 = *MEMORY[0x277D85DE8];
  disabledOutputSet = self->_disabledOutputSet;
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, output);
  LOBYTE(disabledOutputSet) = objc_msgSend_containsObject_(disabledOutputSet, v7, v6);

  if ((disabledOutputSet & 1) == 0)
  {
    sub_22E5D8EB4(__p, output);
    if (!sub_22E5DA9D8(&self->_outputBufferMap.__table_.__bucket_list_.__ptr_, __p))
    {
      sub_22E5DA69C("unordered_map::at: key not found");
    }

    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = espresso_network_bind_buffer();
    if (!v8)
    {
      return 1;
    }

    v9 = _ANSTLoggingGetOSLogForCategoryANSTKit(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      last_error = espresso_get_last_error();
      sub_22E6570A4(last_error, __p);
    }
  }

  return 0;
}

- ($FD4688982923A924290ECB669CAF1EC2)getTensorByName:(const char *)name
{
  sub_22E5D8EB4(__p, name);
  v8 = __p;
  v4 = sub_22E5DA72C(&self->_outputBufferMap.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return (v4 + 5);
}

- (CGSize)getResolutionByBlobName:(const char *)name
{
  v5[4] = *MEMORY[0x277D85DE8];
  objc_msgSend_getBlobDimensionByName_andDestination_(self, a2, name, v5);
  v3 = v5[0];
  v4 = v5[1];
  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)runNetwork
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = espresso_plan_execute_sync();
  v4 = v3;
  if (v3)
  {
    v5 = _ANSTLoggingGetOSLogForCategoryANSTKit(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      netPath = self->_netPath;
      v8 = 138543874;
      v9 = netPath;
      v10 = 1024;
      v11 = v4;
      v12 = 2082;
      last_error = espresso_get_last_error();
      _os_log_fault_impl(&dword_22E5D5000, v5, OS_LOG_TYPE_FAULT, "%{public}@: espresso_plan_execute_sync failed with status %d (%{public}s)", &v8, 0x1Cu);
    }
  }

  return v4 == 0;
}

- (BOOL)setInput:(id)input fromCVPixelBuffer:(__CVBuffer *)buffer
{
  v34 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v7 = inputCopy;
  if (self->_isPrepared)
  {
    if (CVPixelBufferGetPixelFormatType(buffer) == 1111970369 || CVPixelBufferGetPixelFormatType(buffer) == 1278226488)
    {
      v9 = objc_msgSend_bindNetworkInputWithImage_withInputName_(self, v8, buffer, v7);
    }

    else
    {
      v12 = v7;
      v15 = objc_msgSend_UTF8String(v12, v13, v14);
      sub_22E5D8EB4(__p, v15);
      if (sub_22E5DA9D8(&self->_input_espresso_buffer.__table_.__bucket_list_.__ptr_, __p) || (v32.i64[0] = __p, *(sub_22E5DAAD4(&self->_input_espresso_buffer.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v32, v31) + 50) = 65568, v19 = v7, v22 = objc_msgSend_UTF8String(v7, v20, v21), objc_msgSend_getBlobDimensionByName_andDestination_(self, v23, v22, &v32), v31[0] = vextq_s8(v33, v33, 8uLL), v31[1] = vextq_s8(v32, v32, 8uLL), v30[0] = __p, sub_22E5DAAD4(&self->_input_espresso_buffer.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, v30, &v29), v24 = espresso_buffer_pack_tensor_shape(), !v24))
      {
        CVPixelBufferLockBaseAddress(buffer, 0);
        BaseAddress = CVPixelBufferGetBaseAddress(buffer);
        v32.i64[0] = __p;
        sub_22E5DAAD4(&self->_input_espresso_buffer.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v32, v31)[5] = BaseAddress;
        v32.i64[0] = __p;
        v17 = sub_22E5DAAD4(&self->_input_espresso_buffer.__table_.__bucket_list_.__ptr_, __p, &std::piecewise_construct, &v32, v31);
        v9 = objc_msgSend_bindNetworkInputWithEspressoBuffer_withInputName_(self, v18, (v17 + 5), v7);
        CVPixelBufferUnlockBaseAddress(buffer, 0);
      }

      else
      {
        v25 = _ANSTLoggingGetOSLogForCategoryANSTKit(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          last_error = espresso_get_last_error();
          sub_22E65716C(last_error, v30);
        }

        v9 = 0;
      }

      if (v28 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v10 = _ANSTLoggingGetOSLogForCategoryANSTKit(inputCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22E6570E8(v10);
    }

    v9 = 0;
  }

  return v9;
}

- (void)cleanUpOutputPixelBufferMap
{
  for (i = self->_outputPixelBufMap.__table_.__first_node_.__next_; i; i = *i)
  {
    CVPixelBufferRelease(*(i + 5));
  }

  sub_22E5D9B58(&self->_outputPixelBufMap);
}

- (void)dealloc
{
  espresso_plan_destroy();
  espresso_context_destroy();
  objc_msgSend_cleanUpOutputPixelBufferMap(self, v3, v4);
  v5.receiver = self;
  v5.super_class = ANSTBaseNetworkEspresso;
  [(ANSTBaseNetworkEspresso *)&v5 dealloc];
}

- ($C4732ECC957FA13B9B3DF4A51A95735B)network
{
  v2 = *&self->_network.network_index;
  plan = self->_network.plan;
  result.var1 = v2;
  result.var0 = plan;
  return result;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 14) = 1065353216;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 24) = 1065353216;
  *(self + 104) = 0u;
  *(self + 120) = 0u;
  *(self + 34) = 1065353216;
  return self;
}

@end