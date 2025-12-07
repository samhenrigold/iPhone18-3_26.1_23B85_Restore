@interface TVLAudioLatencyEstimator
- (TVLAudioLatencyEstimator)initWithMessageSession:(id)session;
- (id)networkInterfaceOfType:(unint64_t)type fromInterfaces:(id)interfaces;
- (void)_estimateAudioLatencyWithOptions:(id)options withResponseHandler:(id)handler;
- (void)_initWithMessageSession:(id)session;
- (void)_invalidateWithError:(id)error;
- (void)_postInternalProgressEvent:(unint64_t)event withInfo:(id)info;
- (void)_postProgressEvent:(unint64_t)event withInfo:(id)info;
- (void)_respondAndInvalidateWithError:(id)error responseHandler:(id)handler;
- (void)_sendMessage:(id)message withResponse:(id)response;
- (void)_synchronizeClocksWithOptions:(id)options withResponseHandler:(id)handler;
- (void)_tearDown;
- (void)activate;
- (void)estimateAudioLatencyWithToneIdentifier:(id)identifier;
- (void)networkMonitorInterfacesDidUpdate:(id)update;
- (void)startNetworkMonitoring;
@end

@implementation TVLAudioLatencyEstimator

- (TVLAudioLatencyEstimator)initWithMessageSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = TVLAudioLatencyEstimator;
  v5 = [(TVLAudioLatencyEstimator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_version = 1.2;
    v5->_role = 1;
    [(TVLAudioLatencyEstimator *)v5 _initWithMessageSession:sessionCopy];
  }

  return v6;
}

- (void)startNetworkMonitoring
{
  v3 = objc_alloc_init(TVLNetworkMonitor);
  networkMonitor = self->_networkMonitor;
  self->_networkMonitor = v3;

  objc_initWeak(&location, self);
  v5 = self->_networkMonitor;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__TVLAudioLatencyEstimator_startNetworkMonitoring__block_invoke;
  v6[3] = &unk_279D6BED8;
  objc_copyWeak(&v7, &location);
  [(TVLNetworkMonitor *)v5 startMonitoringForInterfaceTypes:2 updateHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __50__TVLAudioLatencyEstimator_startNetworkMonitoring__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained networkMonitorInterfacesDidUpdate:v3];
}

- (void)networkMonitorInterfacesDidUpdate:(id)update
{
  updateCopy = update;
  v5 = [(TVLAudioLatencyEstimator *)self networkInterfaceOfType:3 fromInterfaces:updateCopy];
  awdlInterface = self->_awdlInterface;
  self->_awdlInterface = v5;

  v7 = [(TVLAudioLatencyEstimator *)self networkInterfaceOfType:2 fromInterfaces:updateCopy];

  wifiInterface = self->_wifiInterface;
  self->_wifiInterface = v7;
}

- (id)networkInterfaceOfType:(unint64_t)type fromInterfaces:(id)interfaces
{
  interfacesCopy = interfaces;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__TVLAudioLatencyEstimator_networkInterfaceOfType_fromInterfaces___block_invoke;
  v8[3] = &unk_279D6BF00;
  v8[4] = &v9;
  v8[5] = type;
  [interfacesCopy enumerateObjectsUsingBlock:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __66__TVLAudioLatencyEstimator_networkInterfaceOfType_fromInterfaces___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 interfaceType] == *(a1 + 40))
  {
    v7 = [v9 ipv4];
    if (v7)
    {
    }

    else
    {
      v8 = [v9 ipv6];

      if (!v8)
      {
        goto LABEL_6;
      }
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }

LABEL_6:
}

- (void)_initWithMessageSession:(id)session
{
  sessionCopy = session;
  v5 = [objc_alloc(MEMORY[0x277D02880]) initWithTemplate:sessionCopy];
  [(TVLAudioLatencyEstimator *)self setSession:v5];

  objc_initWeak(&location, self);
  session = [(TVLAudioLatencyEstimator *)self session];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke;
  v7[3] = &unk_279D6BBD8;
  objc_copyWeak(&v8, &location);
  [session registerRequestID:@"com.apple.tvlatency" options:0 handler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (_TVLLogDefault_onceToken_3 != -1)
    {
      __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_cold_1();
    }

    v9 = _TVLLogDefault_log_3;
    if (os_log_type_enabled(_TVLLogDefault_log_3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v6;
      _os_log_impl(&dword_26CD78000, v9, OS_LOG_TYPE_DEFAULT, "Incoming Message: %{public}@", buf, 0xCu);
    }

    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_16;
    v17 = &unk_279D6BBB0;
    v10 = v6;
    v18 = v10;
    v19 = v7;
    v11 = MEMORY[0x26D6AEC20](&v14);
    v12 = [v10 objectForKey:{@"MESSAGE", v14, v15, v16, v17}];
    if ([v12 isEqualToString:@"SYNC_CLOCK"])
    {
      v13 = [v10 objectForKey:@"OPTIONS"];
      [WeakRetained _synchronizeClocksWithOptions:v13 withResponseHandler:v11];
    }

    else if ([v12 isEqualToString:@"ESTIMATE_AUDIO_LATENCY"])
    {
      v13 = [v10 objectForKey:@"OPTIONS"];
      [WeakRetained _estimateAudioLatencyWithOptions:v13 withResponseHandler:v11];
    }

    else
    {
      if ([v12 isEqualToString:@"BEGIN_LIPSYNC_TEST"])
      {
LABEL_13:

        goto LABEL_14;
      }

      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVLatencyErrorDomain" code:1207 userInfo:0];
      [WeakRetained _respondAndInvalidateWithError:v13 responseHandler:v11];
    }

    goto LABEL_13;
  }

LABEL_14:
}

void __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_16(uint64_t a1, int a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (_TVLLogDefault_onceToken_3 != -1)
  {
    __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_cold_1();
  }

  v9 = _TVLLogDefault_log_3;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    if (a2)
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:a2 userInfo:0];
    }

    else
    {
      v11 = 0;
    }

    v12 = 138543874;
    v13 = v10;
    v14 = 2114;
    v15 = v8;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_26CD78000, v9, OS_LOG_TYPE_DEFAULT, "Responding To Message: %{public}@ | Response: %{public}@ | Error: %{public}@", &v12, 0x20u);
    if (a2)
    {
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)activate
{
  session = [(TVLAudioLatencyEstimator *)self session];
  [session activate];
}

- (void)estimateAudioLatencyWithToneIdentifier:(id)identifier
{
  v19[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  [(TVLAudioLatencyEstimator *)self _postProgressEvent:0 withInfo:0];
  v5 = objc_alloc(MEMORY[0x277CBEB38]);
  v19[0] = identifierCopy;
  v18[0] = @"TONE";
  v18[1] = @"VERSION";
  *&v6 = self->_version;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v19[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v9 = [v5 initWithDictionary:v8];

  if (DeviceProductType_onceToken != -1)
  {
    [TVLAudioLatencyEstimator estimateAudioLatencyWithToneIdentifier:];
  }

  v10 = DeviceProductType_type;
  if (v10)
  {
    [v9 setObject:v10 forKey:@"DEVICE_TYPE"];
  }

  if (OSBuildVersion_onceToken != -1)
  {
    [TVLAudioLatencyEstimator estimateAudioLatencyWithToneIdentifier:];
  }

  v11 = OSBuildVersion_build;
  if (v11)
  {
    [v9 setObject:v11 forKey:@"DEVICE_BUILD"];
  }

  objc_initWeak(&location, self);
  v16[0] = @"MESSAGE";
  v16[1] = @"OPTIONS";
  v17[0] = @"START";
  v17[1] = v9;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__TVLAudioLatencyEstimator_estimateAudioLatencyWithToneIdentifier___block_invoke;
  v13[3] = &unk_279D6BF28;
  objc_copyWeak(&v14, &location);
  [(TVLAudioLatencyEstimator *)self _sendMessage:v12 withResponse:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __67__TVLAudioLatencyEstimator_estimateAudioLatencyWithToneIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = [v3 objectForKey:@"VERSION"];

    if (v6)
    {
      v8 = [v3 objectForKey:@"VERSION"];
      [v8 floatValue];
      [v5 setVersion:?];
    }

    else
    {
      LODWORD(v7) = 1.0;
      [v5 setVersion:v7];
    }

    if (_TVLLogDefault_onceToken_3 != -1)
    {
      __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_cold_1();
    }

    v9 = _TVLLogDefault_log_3;
    if (os_log_type_enabled(_TVLLogDefault_log_3, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      [v5 version];
      v12 = 134217984;
      v13 = v11;
      _os_log_impl(&dword_26CD78000, v10, OS_LOG_TYPE_DEFAULT, "TVLatency will use protocol v%.1f", &v12, 0xCu);
    }

    [v5 startNetworkMonitoring];
  }
}

- (void)_invalidateWithError:(id)error
{
  v7[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  [(TVLAudioLatencyEstimator *)self _tearDown];
  if (errorCopy)
  {
    v6 = @"TVLAudioLatencyEstimationProgressEventErrorObjectKey";
    v7[0] = errorCopy;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [(TVLAudioLatencyEstimator *)self _postProgressEvent:2 withInfo:v5];
  }

  else
  {
    [(TVLAudioLatencyEstimator *)self _postProgressEvent:3 withInfo:0];
  }
}

- (void)_tearDown
{
  +[TVLTimeSync invalidate];
  [(TVLAudioLatencyEstimator *)self setTimeSync:0];
  +[TVLListenEngine invalidate];
  [(TVLAudioLatencyEstimator *)self setListenEngine:0];
  [(TVLNetworkMonitor *)self->_networkMonitor stopMonitoring];
  networkMonitor = self->_networkMonitor;
  self->_networkMonitor = 0;
}

- (void)_sendMessage:(id)message withResponse:(id)response
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  responseCopy = response;
  if (_TVLLogDefault_onceToken_3 != -1)
  {
    __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_cold_1();
  }

  v8 = _TVLLogDefault_log_3;
  if (os_log_type_enabled(_TVLLogDefault_log_3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = messageCopy;
    _os_log_impl(&dword_26CD78000, v8, OS_LOG_TYPE_DEFAULT, "Outgoing Message: %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  session = [(TVLAudioLatencyEstimator *)self session];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__TVLAudioLatencyEstimator__sendMessage_withResponse___block_invoke;
  v12[3] = &unk_279D6BF50;
  objc_copyWeak(&v15, buf);
  v10 = messageCopy;
  v13 = v10;
  v11 = responseCopy;
  v14 = v11;
  [session sendRequestID:@"com.apple.tvlatency" options:0 request:v10 responseHandler:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __54__TVLAudioLatencyEstimator__sendMessage_withResponse___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (_TVLLogDefault_onceToken_3 != -1)
    {
      __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_cold_1();
    }

    v8 = _TVLLogDefault_log_3;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      if (a2)
      {
        v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:a2 userInfo:0];
      }

      else
      {
        v10 = 0;
      }

      *buf = 138543874;
      v26 = v9;
      v27 = 2114;
      v28 = v6;
      v29 = 2114;
      v30 = v10;
      _os_log_impl(&dword_26CD78000, v8, OS_LOG_TYPE_DEFAULT, "Received Response To Message: %{public}@ | Response: %{public}@ | Error: %{public}@", buf, 0x20u);
      if (a2)
      {
      }
    }

    if (a2)
    {
      v11 = *(a1 + 40);
      if (v11)
      {
        (*(v11 + 16))(v11, 0);
      }

      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:a2 userInfo:0];
      [WeakRetained _invalidateWithError:v12];
LABEL_14:

      goto LABEL_15;
    }

    v13 = [MEMORY[0x277CBEB68] null];
    v24 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    if ([v6 isEqualToDictionary:v14])
    {
    }

    else
    {
      v15 = [v6 objectForKey:@"MESSAGE"];
      v16 = [v15 isEqualToString:@"FAILURE"];

      if (v16)
      {
        v17 = *(a1 + 40);
        if (v17)
        {
          (*(v17 + 16))(v17, 0);
        }

        v12 = [v6 objectForKey:@"OPTIONS"];
        v18 = [v12 objectForKey:@"ERROR_DOMAIN"];
        v19 = [v12 objectForKey:@"ERROR_CODE"];
        v20 = [v19 integerValue];

        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:v18 code:v20 userInfo:0];
        [WeakRetained _invalidateWithError:v21];

        goto LABEL_14;
      }
    }

    v22 = *(a1 + 40);
    if (v22)
    {
      (*(v22 + 16))(v22, v6);
    }
  }

LABEL_15:
}

- (void)_synchronizeClocksWithOptions:(id)options withResponseHandler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  ipv6 = [(TVLNetworkInterface *)self->_wifiInterface ipv6];
  ipv4 = [(TVLNetworkInterface *)self->_wifiInterface ipv4];
  if (ipv4)
  {
    [v6 setObject:ipv4 forKey:@"IPV4"];
  }

  if (ipv6)
  {
    [v6 setObject:ipv6 forKey:@"IPV6"];
  }

  v9 = [optionsCopy objectForKey:{@"IPV6", handlerCopy}];
  v10 = [optionsCopy objectForKey:@"IPV4"];
  interfaceName = [(TVLNetworkInterface *)self->_wifiInterface interfaceName];
  if (_TVLLogDefault_onceToken_3 != -1)
  {
    __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_cold_1();
  }

  v11 = _TVLLogDefault_log_3;
  if (os_log_type_enabled(_TVLLogDefault_log_3, OS_LOG_TYPE_INFO))
  {
    wifiInterface = self->_wifiInterface;
    v13 = v11;
    interfaceName2 = [(TVLNetworkInterface *)wifiInterface interfaceName];
    ipv42 = [(TVLNetworkInterface *)self->_wifiInterface ipv4];
    ipv62 = [(TVLNetworkInterface *)self->_wifiInterface ipv6];
    *buf = 138543874;
    v29 = interfaceName2;
    v30 = 2114;
    v31 = ipv42;
    v32 = 2114;
    v33 = ipv62;
    _os_log_impl(&dword_26CD78000, v13, OS_LOG_TYPE_INFO, "synchronizeClocksWithOptions WIFI %{public}@,%{public}@,%{public}@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __78__TVLAudioLatencyEstimator__synchronizeClocksWithOptions_withResponseHandler___block_invoke;
  v24[3] = &unk_279D6BF78;
  objc_copyWeak(&v25, buf);
  v17 = MEMORY[0x26D6AEC20](v24);
  if (v10 | v9 && interfaceName && (-[TVLAudioLatencyEstimator session](self, "session"), v18 = objc_claimAutoreleasedReturnValue(), +[TVLTimeSync timeSyncWithRemoteIPv4:IPv6:interface:session:master:completion:](TVLTimeSync, "timeSyncWithRemoteIPv4:IPv6:interface:session:master:completion:", v10, v9, interfaceName, v18, 0, v17), v18, [v6 count]))
  {
    v26[0] = @"MESSAGE";
    v26[1] = @"OPTIONS";
    v27[0] = @"SYNC_CLOCK";
    v27[1] = v6;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
    (v21)[2](v21, 0, 0, v19);
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVLatencyErrorDomain" code:1202 userInfo:0];
    [(TVLAudioLatencyEstimator *)self _respondAndInvalidateWithError:v19 responseHandler:v21];
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
}

void __78__TVLAudioLatencyEstimator__synchronizeClocksWithOptions_withResponseHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      [WeakRetained setTimeSync:v6];
    }

    else
    {
      v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVLatencyErrorDomain" code:1203 userInfo:0];
      [v4 _invalidateWithError:v5];
    }
  }
}

- (void)_estimateAudioLatencyWithOptions:(id)options withResponseHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  v8 = [optionsCopy objectForKey:@"TONE"];
  if (v8 && ([optionsCopy objectForKey:@"TIME"], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v10 = [optionsCopy objectForKey:@"TONE"];
    v28 = 0;
    v11 = [TVLToneProvider provideToneWithIdentifier:v10 error:&v28];
    v12 = v28;

    if (v12)
    {
      if (_TVLLogDefault_onceToken_3 != -1)
      {
        [TVLAudioLatencyEstimator _estimateAudioLatencyWithOptions:withResponseHandler:];
      }

      v13 = _TVLLogDefault_log_3;
      if (os_log_type_enabled(_TVLLogDefault_log_3, OS_LOG_TYPE_ERROR))
      {
        [TVLAudioLatencyEstimator _estimateAudioLatencyWithOptions:v12 withResponseHandler:v13];
      }

      [(TVLAudioLatencyEstimator *)self _respondAndInvalidateWithError:v12 responseHandler:handlerCopy];
    }

    else
    {
      v15 = [optionsCopy objectForKey:@"TIME"];
      unsignedLongLongValue = [v15 unsignedLongLongValue];

      v27 = 0;
      timeSync = [(TVLAudioLatencyEstimator *)self timeSync];
      v18 = [timeSync convertToHostTimeFromDomainTime:unsignedLongLongValue grandmasterIdentity:&v27];

      if (_TVLLogDefault_onceToken_3 != -1)
      {
        [TVLAudioLatencyEstimator _estimateAudioLatencyWithOptions:withResponseHandler:];
      }

      v19 = _TVLLogDefault_log_3;
      if (os_log_type_enabled(_TVLLogDefault_log_3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v30 = v18;
        v31 = 2048;
        v32 = unsignedLongLongValue;
        v33 = 2048;
        v34 = v27;
        _os_log_impl(&dword_26CD78000, v19, OS_LOG_TYPE_DEFAULT, "Estimate audio latency with startTime=%llu PTPtime=%llu GM=%llu", buf, 0x20u);
      }

      if (isInternalBuild_onceToken_0 != -1)
      {
        [TVLAudioLatencyEstimator _estimateAudioLatencyWithOptions:withResponseHandler:];
      }

      if (isInternalBuild_internalBuild_0 == 1)
      {
        v20 = +[TVLPersistenceManager URLForRecording];
      }

      else
      {
        v20 = 0;
      }

      objc_initWeak(buf, self);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __81__TVLAudioLatencyEstimator__estimateAudioLatencyWithOptions_withResponseHandler___block_invoke;
      v22[3] = &unk_279D6C018;
      objc_copyWeak(v26, buf);
      v25 = handlerCopy;
      v26[1] = v18;
      v23 = v11;
      v21 = v20;
      v24 = v21;
      [TVLListenEngine engineWithCompletion:v22];

      objc_destroyWeak(v26);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVLatencyErrorDomain" code:1207 userInfo:0];
    [(TVLAudioLatencyEstimator *)self _respondAndInvalidateWithError:v14 responseHandler:handlerCopy];
  }
}

void __81__TVLAudioLatencyEstimator__estimateAudioLatencyWithOptions_withResponseHandler___block_invoke(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = *(a1 + 48);
      v18 = @"MESSAGE";
      v6 = [MEMORY[0x277CBEB68] null];
      v19[0] = v6;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      (*(v5 + 16))(v5, 0, 0, v7);

      v8 = *(a1 + 64);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __81__TVLAudioLatencyEstimator__estimateAudioLatencyWithOptions_withResponseHandler___block_invoke_2;
      block[3] = &unk_279D6BD40;
      block[4] = WeakRetained;
      dispatch_after(v8, MEMORY[0x277D85CD0], block);
      [WeakRetained setListenEngine:v3];
      v9 = [WeakRetained listenEngine];
      v10 = *(a1 + 64);
      v12 = *(a1 + 32);
      v11 = *(a1 + 40);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __81__TVLAudioLatencyEstimator__estimateAudioLatencyWithOptions_withResponseHandler___block_invoke_3;
      v16[3] = &unk_279D6BFA0;
      v16[4] = WeakRetained;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __81__TVLAudioLatencyEstimator__estimateAudioLatencyWithOptions_withResponseHandler___block_invoke_4;
      v14[3] = &unk_279D6BFF0;
      objc_copyWeak(&v15, (a1 + 56));
      [v9 startListeningWithReferenceTone:v12 at:v10 saveToFile:v11 withCallback:v16 completion:v14];

      objc_destroyWeak(&v15);
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVLatencyErrorDomain" code:1206 userInfo:0];
      [WeakRetained _respondAndInvalidateWithError:v13 responseHandler:*(a1 + 48)];
    }
  }
}

void __81__TVLAudioLatencyEstimator__estimateAudioLatencyWithOptions_withResponseHandler___block_invoke_3(uint64_t a1, double a2, float a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v9[0] = @"TVLAudioLatencyEstimationInternalProgressEventEstimationLatencyKey";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  v6 = v5;
  v9[1] = @"TVLAudioLatencyEstimationInternalProgressEventEstimationConfidenceKey";
  v7 = MEMORY[0x277CBEC28];
  if (a3 > 0.0)
  {
    v7 = MEMORY[0x277CBEC38];
  }

  v10[0] = v5;
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v4 _postInternalProgressEvent:0 withInfo:v8];
}

void __81__TVLAudioLatencyEstimator__estimateAudioLatencyWithOptions_withResponseHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v25[0] = @"TVLAudioLatencyEstimationInternalProgressEventEstimationLatencyKey";
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    v26[0] = v9;
    v25[1] = @"TVLAudioLatencyEstimationInternalProgressEventEstimationConfidenceKey";
    v10 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v26[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    [WeakRetained _postInternalProgressEvent:1 withInfo:v11];

    v12 = objc_alloc(MEMORY[0x277CBEB38]);
    v24[0] = MEMORY[0x277CBEC38];
    v23[0] = @"COMPLETE";
    v23[1] = @"LATENCY";
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    v24[1] = v13;
    v23[2] = @"CONFIDENT";
    v14 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v24[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
    v16 = [v12 initWithDictionary:v15];

    if (v7)
    {
      [v16 setObject:v7 forKey:@"STATISTICS"];
    }

    v21[0] = @"MESSAGE";
    v21[1] = @"OPTIONS";
    v22[0] = @"AUDIO_LATENCY_ESTIMATION";
    v22[1] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __81__TVLAudioLatencyEstimator__estimateAudioLatencyWithOptions_withResponseHandler___block_invoke_5;
    v19[3] = &unk_279D6BFC8;
    v19[4] = WeakRetained;
    v20 = v16;
    v18 = v16;
    [WeakRetained _sendMessage:v17 withResponse:v19];
  }
}

void __81__TVLAudioLatencyEstimator__estimateAudioLatencyWithOptions_withResponseHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:@"MESSAGE"];
    v6 = [v5 isEqualToString:@"ASK_RETRY"];

    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = 4;
      v9 = 0;
LABEL_4:
      [v7 _postProgressEvent:v8 withInfo:v9];
      goto LABEL_19;
    }

    v10 = [v4 objectForKey:@"MESSAGE"];
    v11 = [v10 isEqualToString:@"CONTINUE"];

    if (v11)
    {
      if (_TVLLogDefault_onceToken_3 != -1)
      {
        __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_cold_1();
      }

      v12 = _TVLLogDefault_log_3;
      if (os_log_type_enabled(_TVLLogDefault_log_3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CD78000, v12, OS_LOG_TYPE_DEFAULT, "Continuing to next estimation...", buf, 2u);
      }

      [*(a1 + 32) estimate];
    }

    else
    {
      v13 = [v4 objectForKey:@"MESSAGE"];
      v14 = [v13 isEqualToString:@"CONTINUE_ATMOS"];

      if (!v14)
      {
        v16 = [v4 objectForKey:@"MESSAGE"];
        v17 = [v16 isEqualToString:@"FINAL"];

        if (!v17)
        {
          goto LABEL_19;
        }

        v7 = *(a1 + 32);
        v9 = *(a1 + 40);
        v8 = 3;
        goto LABEL_4;
      }

      if (_TVLLogDefault_onceToken_3 != -1)
      {
        __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_cold_1();
      }

      v15 = _TVLLogDefault_log_3;
      if (os_log_type_enabled(_TVLLogDefault_log_3, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_26CD78000, v15, OS_LOG_TYPE_DEFAULT, "Continuing to Atmos estimation...", v18, 2u);
      }

      [*(a1 + 32) estimateAudioLatencyWithToneIdentifier:@"241016_gain_reduced_calibrationTone_AtmosSpiral.ec3"];
    }
  }

LABEL_19:
}

- (void)_respondAndInvalidateWithError:(id)error responseHandler:(id)handler
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = @"MESSAGE";
  v16[1] = @"OPTIONS";
  v17[0] = @"FAILURE";
  v14[0] = @"ERROR_CODE";
  v7 = MEMORY[0x277CCABB0];
  handlerCopy = handler;
  errorCopy = error;
  v10 = [v7 numberWithInteger:{objc_msgSend(errorCopy, "code")}];
  v14[1] = @"ERROR_DOMAIN";
  v15[0] = v10;
  domain = [errorCopy domain];
  v15[1] = domain;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  (*(handler + 2))(handlerCopy, 0, 0, v13);

  [(TVLAudioLatencyEstimator *)self _invalidateWithError:errorCopy];
}

- (void)_postProgressEvent:(unint64_t)event withInfo:(id)info
{
  infoCopy = info;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__TVLAudioLatencyEstimator__postProgressEvent_withInfo___block_invoke;
  block[3] = &unk_279D6C040;
  v9 = infoCopy;
  eventCopy = event;
  block[4] = self;
  v7 = infoCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __56__TVLAudioLatencyEstimator__postProgressEvent_withInfo___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (_TVLLogDefault_onceToken_3 != -1)
  {
    __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_cold_1();
  }

  v2 = _TVLLogDefault_log_3;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) progressEventHandler];
    v4 = MEMORY[0x26D6AEC20]();
    v5 = v4;
    v6 = *(a1 + 48) - 1;
    if (v6 > 3)
    {
      v7 = "Start";
    }

    else
    {
      v7 = off_279D6C060[v6];
    }

    v8 = *(a1 + 40);
    v16 = 138412802;
    v17 = v4;
    v18 = 2082;
    v19 = v7;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&dword_26CD78000, v2, OS_LOG_TYPE_DEFAULT, "Calling Progress Event Handler: %@ with Event: %{public}s | Info %{public}@", &v16, 0x20u);
  }

  v9 = [*(a1 + 32) progressEventHandler];

  if (v9)
  {
    v10 = [*(a1 + 32) progressEventHandler];
    v10[2](v10, *(a1 + 48), *(a1 + 40));

    if (*(a1 + 48) == 3)
    {
      if (_TVLLogDefault_onceToken_3 != -1)
      {
        [TVLAudioLatencyEstimator _estimateAudioLatencyWithOptions:withResponseHandler:];
      }

      v11 = _TVLLogDefault_log_3;
      if (os_log_type_enabled(_TVLLogDefault_log_3, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v13 = v11;
        v14 = [v12 progressEventHandler];
        v15 = MEMORY[0x26D6AEC20]();
        v16 = 138412290;
        v17 = v15;
        _os_log_impl(&dword_26CD78000, v13, OS_LOG_TYPE_DEFAULT, "Deleting Progress Event Handler: %@ | This should not be invoked again!", &v16, 0xCu);
      }

      [*(a1 + 32) setProgressEventHandler:0];
    }
  }
}

- (void)_postInternalProgressEvent:(unint64_t)event withInfo:(id)info
{
  v22 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (_TVLLogDefault_onceToken_3 != -1)
  {
    __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_cold_1();
  }

  v7 = _TVLLogDefault_log_3;
  if (os_log_type_enabled(_TVLLogDefault_log_3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    internalProgressEventHandler = [(TVLAudioLatencyEstimator *)self internalProgressEventHandler];
    v10 = MEMORY[0x26D6AEC20]();
    v11 = "Final Estimation";
    *buf = 138412802;
    v17 = v10;
    if (!event)
    {
      v11 = "New Estimation";
    }

    v18 = 2082;
    v19 = v11;
    v20 = 2112;
    v21 = infoCopy;
    _os_log_impl(&dword_26CD78000, v8, OS_LOG_TYPE_DEFAULT, "Calling Internal Progress Event Handler: %@ with Event: %{public}s | Info: %@", buf, 0x20u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__TVLAudioLatencyEstimator__postInternalProgressEvent_withInfo___block_invoke;
  block[3] = &unk_279D6C040;
  v14 = infoCopy;
  eventCopy = event;
  block[4] = self;
  v12 = infoCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __64__TVLAudioLatencyEstimator__postInternalProgressEvent_withInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internalProgressEventHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) internalProgressEventHandler];
    (*(v3 + 2))(v3, *(a1 + 48), *(a1 + 40));
  }
}

- (void)_estimateAudioLatencyWithOptions:(uint64_t)a1 withResponseHandler:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_26CD78000, a2, OS_LOG_TYPE_ERROR, "Failed to provide tone. Error=%{public}@", &v2, 0xCu);
}

@end