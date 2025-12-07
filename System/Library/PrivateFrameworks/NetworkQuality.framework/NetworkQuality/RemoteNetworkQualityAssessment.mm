@interface RemoteNetworkQualityAssessment
- (RemoteNetworkQualityAssessment)initWithConfiguration:(id)configuration;
- (void)getAvailableServersForDevice:(id)device withCompletionHandler:(id)handler;
- (void)rapportDiscoveryCompletionWithClient:(id)client deviceName:(id)name;
- (void)rapportDiscoveryCompletionWithClient:(id)client deviceName:(id)name completionHandler:(id)handler;
- (void)rapportInvokeCompletionWithClient:(id)client deviceIdentifier:(id)identifier;
- (void)rapportQueryCompletionWithClient:(id)client deviceIdentifier:(id)identifier completionHandler:(id)handler;
- (void)runAgainst:(id)against withCompletionHandler:(id)handler;
@end

@implementation RemoteNetworkQualityAssessment

- (RemoteNetworkQualityAssessment)initWithConfiguration:(id)configuration
{
  if (objc_opt_class())
  {
    v12.receiver = self;
    v12.super_class = RemoteNetworkQualityAssessment;
    v5 = [(RemoteNetworkQualityAssessment *)&v12 init];
    if (v5)
    {
      if (configuration)
      {
        v6 = objc_alloc_init(NetworkQualityConfiguration);
      }

      else
      {
        v6 = 0;
      }

      config = v5->config;
      v5->config = v6;

      v9 = dispatch_queue_create("com.apple.networkquality.rapport", 0);
      dispatchQueue = v5->dispatchQueue;
      v5->dispatchQueue = v9;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)rapportDiscoveryCompletionWithClient:(id)client deviceName:(id)name
{
  v51 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  activeDevices = [client activeDevices];
  v8 = [activeDevices countByEnumeratingWithState:&v34 objects:v50 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(activeDevices);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        name = [v12 name];
        v14 = [name isEqualToString:nameCopy];

        if (v14)
        {
          netqual_log_init(v15, v16);
          v22 = os_log_netqual;
          if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
          {
            log = v22;
            identifier = [v12 identifier];
            uTF8String = [identifier UTF8String];
            name2 = [v12 name];
            uTF8String2 = [name2 UTF8String];
            model = [v12 model];
            uTF8String3 = [model UTF8String];
            *buf = 136316162;
            v41 = "[RemoteNetworkQualityAssessment rapportDiscoveryCompletionWithClient:deviceName:]";
            v42 = 1024;
            v43 = 51;
            v44 = 2080;
            v45 = uTF8String;
            v46 = 2080;
            v47 = uTF8String2;
            v48 = 2080;
            v49 = uTF8String3;
            _os_log_impl(&dword_25B962000, log, OS_LOG_TYPE_DEFAULT, "%s:%u - Found ID=%s name=%s model=%s\n", buf, 0x30u);
          }

          v29 = objc_alloc_init(MEMORY[0x277D44158]);
          [v29 setDispatchQueue:self->dispatchQueue];
          [v29 setDestinationDevice:v12];
          [v29 setServiceType:@"com.apple.networkquality.invoke"];
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __82__RemoteNetworkQualityAssessment_rapportDiscoveryCompletionWithClient_deviceName___block_invoke;
          v31[3] = &unk_2799698A8;
          v31[4] = self;
          v32 = v29;
          v33 = v12;
          v20 = v29;
          [v20 activateWithCompletion:v31];

          goto LABEL_15;
        }
      }

      v9 = [activeDevices countByEnumeratingWithState:&v34 objects:v50 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  activeDevices = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to find the device %@", nameCopy];
  netqual_log_init(activeDevices, v17);
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
  {
    [RemoteNetworkQualityAssessment rapportDiscoveryCompletionWithClient:deviceName:];
  }

  completionHandler = self->completionHandler;
  v19 = MEMORY[0x277CCA9B8];
  v38 = *MEMORY[0x277CCA450];
  v39 = activeDevices;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v21 = [v19 errorWithDomain:@"NetworkQualityErrorDomain" code:1009 userInfo:v20];
  completionHandler[2](completionHandler, 0, v21);

LABEL_15:
}

void __82__RemoteNetworkQualityAssessment_rapportDiscoveryCompletionWithClient_deviceName___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2[3] + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) identifier];
    [v2 rapportInvokeCompletionWithClient:v4 deviceIdentifier:v5];
  }
}

- (void)rapportInvokeCompletionWithClient:(id)client deviceIdentifier:(id)identifier
{
  v15[1] = *MEMORY[0x277D85DE8];
  clientCopy = client;
  identifierCopy = identifier;
  config = self->config;
  v13 = 0;
  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:config requiringSecureCoding:1 error:&v13];
  v10 = v13;
  if (v10)
  {
    (*(self->completionHandler + 2))();
  }

  else
  {
    v14 = @"config";
    v15[0] = v9;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __85__RemoteNetworkQualityAssessment_rapportInvokeCompletionWithClient_deviceIdentifier___block_invoke;
    v12[3] = &unk_2799698D0;
    v12[4] = self;
    [clientCopy sendRequestID:@"com.apple.networkquality.invoke" request:v11 destinationID:identifierCopy options:0 responseHandler:v12];
  }
}

void __85__RemoteNetworkQualityAssessment_rapportInvokeCompletionWithClient_deviceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  netqual_log_init(v3, v4);
  v5 = os_log_netqual;
  v6 = os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    *buf = 136315650;
    v29 = "[RemoteNetworkQualityAssessment rapportInvokeCompletionWithClient:deviceIdentifier:]_block_invoke";
    v30 = 1024;
    v31 = 93;
    v32 = 2112;
    v33 = v3;
    _os_log_impl(&dword_25B962000, v5, OS_LOG_TYPE_DEFAULT, "%s:%u - inResponse: %@", buf, 0x1Cu);
  }

  if (v3)
  {
    v9 = [v3 objectForKeyedSubscript:@"results"];
    if (v9)
    {
      v23[0] = objc_opt_class();
      v23[1] = objc_opt_class();
      v23[2] = objc_opt_class();
      v23[3] = objc_opt_class();
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
      v11 = MEMORY[0x277CCAAC8];
      v12 = [MEMORY[0x277CBEB98] setWithArray:v10];
      v22 = 0;
      v13 = [v11 unarchivedObjectOfClasses:v12 fromData:v9 error:&v22];
      v14 = v22;

      netqual_log_init(v15, v16);
      v17 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v29 = "[RemoteNetworkQualityAssessment rapportInvokeCompletionWithClient:deviceIdentifier:]_block_invoke";
        v30 = 1024;
        v31 = 118;
        v32 = 2112;
        v33 = v13;
        _os_log_impl(&dword_25B962000, v17, OS_LOG_TYPE_DEFAULT, "%s:%u - results: %@", buf, 0x1Cu);
      }

      (*(*(*(a1 + 32) + 24) + 16))();
    }

    else
    {
      netqual_log_init(0, v8);
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
      {
        __85__RemoteNetworkQualityAssessment_rapportInvokeCompletionWithClient_deviceIdentifier___block_invoke_cold_1();
      }

      v20 = *(*(a1 + 32) + 24);
      v21 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA450];
      v25 = @"No response data available";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v10 = [v21 errorWithDomain:@"NetworkQualityErrorDomain" code:1010 userInfo:v14];
      (*(v20 + 16))(v20, 0, v10);
    }
  }

  else
  {
    netqual_log_init(v6, v7);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      __85__RemoteNetworkQualityAssessment_rapportInvokeCompletionWithClient_deviceIdentifier___block_invoke_cold_2();
    }

    v18 = *(*(a1 + 32) + 24);
    v19 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v27 = @"No response data available";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v14 = [v19 errorWithDomain:@"NetworkQualityErrorDomain" code:1010 userInfo:v9];
    (*(v18 + 16))(v18, 0, v14);
  }
}

- (void)runAgainst:(id)against withCompletionHandler:(id)handler
{
  againstCopy = against;
  v7 = MEMORY[0x25F873620](handler);
  completionHandler = self->completionHandler;
  self->completionHandler = v7;

  v9 = objc_alloc_init(MEMORY[0x277D44158]);
  [v9 setDispatchQueue:self->dispatchQueue];
  [v9 setServiceType:@"com.apple.networkquality.query"];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__RemoteNetworkQualityAssessment_runAgainst_withCompletionHandler___block_invoke;
  v12[3] = &unk_2799698A8;
  v12[4] = self;
  v13 = v9;
  v14 = againstCopy;
  v10 = againstCopy;
  v11 = v9;
  [v11 activateWithCompletion:v12];
}

uint64_t __67__RemoteNetworkQualityAssessment_runAgainst_withCompletionHandler___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  if (a2)
  {
    return (*(v3[3] + 16))();
  }

  else
  {
    return [v3 rapportDiscoveryCompletionWithClient:a1[5] deviceName:a1[6]];
  }
}

- (void)rapportQueryCompletionWithClient:(id)client deviceIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __102__RemoteNetworkQualityAssessment_rapportQueryCompletionWithClient_deviceIdentifier_completionHandler___block_invoke;
  v9[3] = &unk_2799698F8;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [client sendRequestID:@"com.apple.networkquality.query" request:MEMORY[0x277CBEC10] destinationID:identifier options:0 responseHandler:v9];
}

void __102__RemoteNetworkQualityAssessment_rapportQueryCompletionWithClient_deviceIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [a2 objectForKeyedSubscript:@"results"];
    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v12[2] = objc_opt_class();
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
    v5 = MEMORY[0x277CCAAC8];
    v6 = [MEMORY[0x277CBEB98] setWithArray:v4];
    v11 = 0;
    v7 = [v5 unarchivedObjectOfClasses:v6 fromData:v3 error:&v11];
    v8 = v11;

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    netqual_log_init(a1, 0);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      __102__RemoteNetworkQualityAssessment_rapportQueryCompletionWithClient_deviceIdentifier_completionHandler___block_invoke_cold_1();
    }

    v9 = *(a1 + 32);
    v10 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"No response data available";
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v4 = [v10 errorWithDomain:@"NetworkQualityErrorDomain" code:1010 userInfo:v3];
    (*(v9 + 16))(v9, 0, v4);
  }
}

- (void)rapportDiscoveryCompletionWithClient:(id)client deviceName:(id)name completionHandler:(id)handler
{
  v56 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  activeDevices = [client activeDevices];
  v11 = [activeDevices countByEnumeratingWithState:&v39 objects:v55 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v40;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(activeDevices);
        }

        v15 = *(*(&v39 + 1) + 8 * i);
        name = [v15 name];
        v17 = [name isEqualToString:nameCopy];

        if (v17)
        {
          netqual_log_init(v18, v19);
          v24 = os_log_netqual;
          if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
          {
            log = v24;
            identifier = [v15 identifier];
            uTF8String = [identifier UTF8String];
            name2 = [v15 name];
            v28 = handlerCopy;
            selfCopy = self;
            uTF8String2 = [name2 UTF8String];
            model = [v15 model];
            uTF8String3 = [model UTF8String];
            *buf = 136316162;
            v46 = "[RemoteNetworkQualityAssessment rapportDiscoveryCompletionWithClient:deviceName:completionHandler:]";
            v47 = 1024;
            v48 = 198;
            v49 = 2080;
            v50 = uTF8String;
            v51 = 2080;
            v52 = uTF8String2;
            self = selfCopy;
            handlerCopy = v28;
            v53 = 2080;
            v54 = uTF8String3;
            _os_log_impl(&dword_25B962000, log, OS_LOG_TYPE_DEFAULT, "%s:%u - Found ID=%s name=%s model=%s\n", buf, 0x30u);
          }

          v33 = objc_alloc_init(MEMORY[0x277D44158]);
          [v33 setDispatchQueue:self->dispatchQueue];
          [v33 setDestinationDevice:v15];
          [v33 setServiceType:@"com.apple.networkquality.query"];
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __100__RemoteNetworkQualityAssessment_rapportDiscoveryCompletionWithClient_deviceName_completionHandler___block_invoke;
          v35[3] = &unk_279969920;
          v35[4] = self;
          v36 = v33;
          v37 = v15;
          v38 = handlerCopy;
          v22 = v33;
          [v22 activateWithCompletion:v35];

          v23 = v38;
          goto LABEL_15;
        }
      }

      v12 = [activeDevices countByEnumeratingWithState:&v39 objects:v55 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  activeDevices = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to find the device %@", nameCopy];
  netqual_log_init(activeDevices, v20);
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
  {
    [RemoteNetworkQualityAssessment rapportDiscoveryCompletionWithClient:deviceName:completionHandler:];
  }

  v21 = MEMORY[0x277CCA9B8];
  v43 = *MEMORY[0x277CCA450];
  v44 = activeDevices;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v23 = [v21 errorWithDomain:@"NetworkQualityErrorDomain" code:1009 userInfo:v22];
  (*(handlerCopy + 2))(handlerCopy, 0, v23);
LABEL_15:
}

void __100__RemoteNetworkQualityAssessment_rapportDiscoveryCompletionWithClient_deviceName_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 56) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) identifier];
    [v4 rapportQueryCompletionWithClient:v5 deviceIdentifier:v6 completionHandler:*(a1 + 56)];
  }
}

- (void)getAvailableServersForDevice:(id)device withCompletionHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  v8 = objc_alloc_init(MEMORY[0x277D44158]);
  [v8 setDispatchQueue:self->dispatchQueue];
  [v8 setServiceType:@"com.apple.networkquality.query"];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__RemoteNetworkQualityAssessment_getAvailableServersForDevice_withCompletionHandler___block_invoke;
  v12[3] = &unk_279969920;
  v12[4] = self;
  v13 = v8;
  v14 = deviceCopy;
  v15 = handlerCopy;
  v9 = deviceCopy;
  v10 = v8;
  v11 = handlerCopy;
  [v10 activateWithCompletion:v12];
}

uint64_t __85__RemoteNetworkQualityAssessment_getAvailableServersForDevice_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 56) + 16))();
  }

  else
  {
    return [*(a1 + 32) rapportDiscoveryCompletionWithClient:*(a1 + 40) deviceName:*(a1 + 48) completionHandler:*(a1 + 56)];
  }
}

- (void)rapportDiscoveryCompletionWithClient:deviceName:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __85__RemoteNetworkQualityAssessment_rapportInvokeCompletionWithClient_deviceIdentifier___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __85__RemoteNetworkQualityAssessment_rapportInvokeCompletionWithClient_deviceIdentifier___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __102__RemoteNetworkQualityAssessment_rapportQueryCompletionWithClient_deviceIdentifier_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)rapportDiscoveryCompletionWithClient:deviceName:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

@end