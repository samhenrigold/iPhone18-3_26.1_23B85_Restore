@interface AFKUserSystemService
+ (id)withService:(unsigned int)service;
- (AFKUserSystemService)initWithService:(unsigned int)service;
- (BOOL)setMatchedServiceProperties:(id)properties proprties:(id)proprties error:(id *)error;
- (id)copyMatchedServiceProperties:(id)properties key:(id)key error:(id *)error;
- (id)registry:(id *)registry;
- (void)dealloc;
@end

@implementation AFKUserSystemService

+ (id)withService:(unsigned int)service
{
  v3 = [[AFKUserSystemService alloc] initWithService:*&service];

  return v3;
}

- (AFKUserSystemService)initWithService:(unsigned int)service
{
  if (!service)
  {
    [AFKUserSystemService initWithService:?];
LABEL_7:
    selfCopy = 0;
    goto LABEL_4;
  }

  if (IOObjectRetain(service))
  {
    [AFKUserSystemService initWithService:?];
    goto LABEL_7;
  }

  self->_service = service;
  selfCopy = self;
LABEL_4:

  return selfCopy;
}

- (void)dealloc
{
  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
    self->_service = 0;
  }

  v4.receiver = self;
  v4.super_class = AFKUserSystemService;
  [(AFKUserSystemService *)&v4 dealloc];
}

- (id)registry:(id *)registry
{
  v51[1] = *MEMORY[0x277D85DE8];
  service = self->_service;
  v50 = @"EnsureReportDelivery";
  v51[0] = &unk_284F113A8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v50 count:1];
  v7 = [AFKEndpointInterface withService:service properties:v6];

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__0;
  v47 = __Block_byref_object_dispose__0;
  v48 = 0;
  v8 = dispatch_semaphore_create(0);
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v9 = dispatch_queue_create("afkregistry", 0);
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__0;
  v31[4] = __Block_byref_object_dispose__0;
  v32 = 0;
  [v7 setDispatchQueue:v9];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __33__AFKUserSystemService_registry___block_invoke;
  v28[3] = &unk_278BBE910;
  v30 = &v33;
  v10 = v8;
  v29 = v10;
  [v7 setResponseHandler:v28];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __33__AFKUserSystemService_registry___block_invoke_2;
  v27[3] = &unk_278BBE938;
  v27[4] = self;
  v27[5] = v31;
  v27[6] = &v37;
  [v7 setReportHandler:v27];
  [v7 activate:0];
  v26 = 0;
  LODWORD(v23) = 0;
  v11 = [v7 enqueueCommand:129 timestamp:mach_continuous_time() inputBuffer:0 inputBufferSize:0 outputPayloadSize:16 context:&v26 options:v23];
  *(v34 + 6) = v11;
  if (!v11)
  {
    v12 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v10, v12))
    {
      *(v34 + 6) = -536870186;
    }
  }

  [v7 cancel];
  if (*(v34 + 6))
  {
    if (registry)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"AFKUser" code:? userInfo:?];
      *registry = v13 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v14 = 0;
    v15 = *MEMORY[0x277CBECE8];
    while (1)
    {
      v16 = [v38[5] count];
      v17 = v38[5];
      if (v14 >= v16)
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __33__AFKUserSystemService_registry___block_invoke_10;
        v24[3] = &unk_278BBE9B0;
        v24[4] = &v43;
        v24[5] = &v37;
        [v17 enumerateObjectsUsingBlock:v24];
        v13 = v44[5];
        goto LABEL_16;
      }

      v18 = [v17 objectAtIndexedSubscript:v14];
      errorString = 0;
      v19 = v18;
      v20 = IOCFUnserializeBinary([v18 bytes], objc_msgSend(v18, "length"), v15, 0, &errorString);
      if (!v20)
      {
        break;
      }

      [v38[5] setObject:v20 atIndexedSubscript:v14];

      ++v14;
    }

    v21 = _AFKUserLog(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(AFKUserSystemService *)&errorString registry:v49, [(AFKUserSystemService *)self regID], v21];
    }
  }

  v13 = 0;
LABEL_16:

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);

  return v13;
}

void __33__AFKUserSystemService_registry___block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = _AFKUserLog(a1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v18 = [*(a1 + 32) regID];
    v19 = 134219008;
    v20 = v18;
    v21 = 1024;
    v22 = a3;
    v23 = 2048;
    v24 = a4;
    v25 = 2048;
    v26 = a5;
    v27 = 2048;
    v28 = a6;
    _os_log_debug_impl(&dword_23C487000, v11, OS_LOG_TYPE_DEBUG, "0x%llx: packetType:0x%x timestamp:%lld inputBuffer:%p inputBufferSize:%zu", &v19, 0x30u);
  }

  if (a3 == 130)
  {
    v12 = *(*(*(a1 + 40) + 8) + 40);
    if (a6)
    {
      if (!v12)
      {
        v13 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:a6];
        v14 = *(*(a1 + 40) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        v12 = *(*(*(a1 + 40) + 8) + 40);
      }

      [v12 appendBytes:a5 length:a6];
    }

    else if (v12)
    {
      [*(*(*(a1 + 48) + 8) + 40) addObject:?];
      v16 = *(*(a1 + 40) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = 0;
    }
  }
}

void __33__AFKUserSystemService_registry___block_invoke_10(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"class"];
  if ([v5 isEqual:@"AFKRootService"])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v6 = [v4 objectForKeyedSubscript:@"children"];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __33__AFKUserSystemService_registry___block_invoke_2_20;
    v13 = &unk_278BBE988;
    v8 = *(a1 + 40);
    v14 = v7;
    v15 = v8;
    v9 = v7;
    [v6 enumerateObjectsUsingBlock:&v10];
    [v4 setObject:v9 forKeyedSubscript:{@"children", v10, v11, v12, v13}];
  }
}

void __33__AFKUserSystemService_registry___block_invoke_2_20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__AFKUserSystemService_registry___block_invoke_3;
  v6[3] = &unk_278BBE960;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __33__AFKUserSystemService_registry___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v9 = v6;
  v8 = [v6 objectForKeyedSubscript:@"id"];
  LODWORD(v7) = [v7 isEqual:v8];

  if (v7)
  {
    [*(a1 + 40) addObject:v9];
    *a4 = 1;
  }
}

- (BOOL)setMatchedServiceProperties:(id)properties proprties:(id)proprties error:(id *)error
{
  v27[2] = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  proprtiesCopy = proprties;
  v26[0] = @"properties";
  v26[1] = @"service-matching";
  v27[0] = proprtiesCopy;
  v27[1] = propertiesCopy;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v11 = IOCFSerialize(v10, 1uLL);
  if (v11)
  {
    errorCopy = error;
    v12 = [AFKEndpointInterface withService:self->_service];
    v13 = dispatch_queue_create("setMatchedServiceProperties", 0);
    v14 = dispatch_semaphore_create(0);
    [v12 setDispatchQueue:v13];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __68__AFKUserSystemService_setMatchedServiceProperties_proprties_error___block_invoke;
    v24[3] = &unk_278BBE9D8;
    v24[4] = self;
    v15 = v14;
    v25 = v15;
    [v12 setResponseHandler:v24];
    [v12 activate:0];
    LODWORD(v22) = 0;
    [v12 enqueueCommand:215 timestamp:mach_continuous_time() inputBuffer:-[__CFData bytes](v11 inputBufferSize:"bytes") outputPayloadSize:-[__CFData length](v11 context:"length") options:{0, 0, v22}];
    v16 = dispatch_time(0, 10000000000);
    v17 = dispatch_semaphore_wait(v15, v16);
    v18 = v17 == 0;
    if (v17)
    {
      v19 = _AFKUserLog(v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [AFKUserSystemService setMatchedServiceProperties:? proprties:? error:?];
      }

      if (errorCopy)
      {
        *errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"AFKUser" code:-536870186 userInfo:0];
      }
    }

    [v12 cancel];
  }

  else
  {
    v20 = _AFKUserLog(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [AFKUserSystemService setMatchedServiceProperties:? proprties:? error:?];
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"AFKUser" code:-536870206 userInfo:0];
      *error = v18 = 0;
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

intptr_t __68__AFKUserSystemService_setMatchedServiceProperties_proprties_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = _AFKUserLog(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __68__AFKUserSystemService_setMatchedServiceProperties_proprties_error___block_invoke_cold_1(a1);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

- (id)copyMatchedServiceProperties:(id)properties key:(id)key error:(id *)error
{
  v38[2] = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  keyCopy = key;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__0;
  v34 = __Block_byref_object_dispose__0;
  v35 = 0;
  v37[0] = @"properties";
  v37[1] = @"service-matching";
  v38[0] = keyCopy;
  v38[1] = propertiesCopy;
  v25 = propertiesCopy;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  v11 = IOCFSerialize(v10, 1uLL);
  if (v11)
  {
    v12 = [AFKEndpointInterface withService:self->_service];
    v13 = dispatch_queue_create("copyMatchedServiceProperties", 0);
    v14 = dispatch_semaphore_create(0);
    [v12 setDispatchQueue:v13];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __63__AFKUserSystemService_copyMatchedServiceProperties_key_error___block_invoke;
    v26[3] = &unk_278BBEA00;
    v26[4] = self;
    v28 = &v30;
    errorCopy = error;
    v15 = v14;
    v27 = v15;
    [v12 setResponseHandler:v26];
    [v12 activate:0];
    v16 = mach_continuous_time();
    v17 = v11;
    LODWORD(v24) = 0;
    [v12 enqueueCommand:214 timestamp:v16 inputBuffer:-[__CFData bytes](v11 inputBufferSize:"bytes") outputPayloadSize:-[__CFData length](v11 context:"length") options:{0, 0, v24}];
    v18 = dispatch_time(0, 10000000000);
    v19 = dispatch_semaphore_wait(v15, v18);
    if (v19)
    {
      v20 = _AFKUserLog(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [AFKUserSystemService copyMatchedServiceProperties:keyCopy key:v36 error:[(AFKUserSystemService *)self regID]];
      }

      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"AFKUser" code:-536870186 userInfo:0];
    }

    [v12 cancel];
    v21 = v31[5];
  }

  else
  {
    v22 = _AFKUserLog(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [AFKUserSystemService copyMatchedServiceProperties:v10 key:v36 error:[(AFKUserSystemService *)self regID]];
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"AFKUser" code:-536870206 userInfo:0];
      *error = v21 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

  _Block_object_dispose(&v30, 8);
  return v21;
}

void __63__AFKUserSystemService_copyMatchedServiceProperties_key_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, size_t a7)
{
  v9 = a4;
  v11 = a2;
  v12 = v11;
  if (v9)
  {
    v13 = _AFKUserLog(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __63__AFKUserSystemService_copyMatchedServiceProperties_key_error___block_invoke_cold_1(a1);
    }
  }

  if (a6 && a7)
  {
    errorString = 0;
    v14 = IOCFUnserializeWithSize(a6, a7, *MEMORY[0x277CBECE8], 0, &errorString);
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AFKUser" code:-536870206 userInfo:0];
      **(a1 + 56) = v17;
      v18 = _AFKUserLog(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __63__AFKUserSystemService_copyMatchedServiceProperties_key_error___block_invoke_cold_2(a1);
      }
    }

    if (errorString)
    {
      CFRelease(errorString);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)initWithService:(void *)a1 .cold.1(void *a1)
{
  v2 = _AFKUserLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [a1 regID];
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_0_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
  }
}

- (void)initWithService:(void *)a1 .cold.2(void *a1)
{
  v2 = _AFKUserLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [a1 regID];
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_0_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)registry:(uint64_t)a3 .cold.1(uint64_t *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v4 = *a1;
  *a2 = 134218242;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = v4;
  OUTLINED_FUNCTION_4_1(&dword_23C487000, "0x%llx: IOCFUnserializeBinary failed:%@", a2, a4);
}

- (void)setMatchedServiceProperties:(void *)a1 proprties:error:.cold.1(void *a1)
{
  [a1 regID];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)setMatchedServiceProperties:(void *)a1 proprties:error:.cold.2(void *a1)
{
  [a1 regID];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __68__AFKUserSystemService_setMatchedServiceProperties_proprties_error___block_invoke_cold_1(uint64_t a1)
{
  [*(a1 + 32) regID];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void __63__AFKUserSystemService_copyMatchedServiceProperties_key_error___block_invoke_cold_1(uint64_t a1)
{
  [*(a1 + 32) regID];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void __63__AFKUserSystemService_copyMatchedServiceProperties_key_error___block_invoke_cold_2(uint64_t a1)
{
  [*(a1 + 32) regID];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end