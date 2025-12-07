@interface DSProvider
- (BOOL)_persistListenerState;
- (BOOL)_removePersistedState;
- (BOOL)_unPersistListenerState;
- (DSProvider)initWithDispatchQueue:(id)queue;
- (void)_addNewListener:(id)listener;
- (void)_didFindDevice:(id)device;
- (void)_didLoseDevice:(id)device;
- (void)_fetchScreenState;
- (void)_heartBeatWithListener;
- (void)_receivedDataRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_removeCurrentListenerWithStopReason:(int)reason;
- (void)_sendMotionData:(id)data;
- (void)_sendRequestID:(id)d request:(id)request device:(id)device options:(id)options responseHandler:(id)handler;
- (void)_startCASessionMetricCollection;
- (void)_stopCASessionMetricCollectionWithStopReason:(int)reason;
- (void)_stopProvider;
- (void)sendMotionData:(id)data;
- (void)startMotionDataProviderWithOptions:(id)options;
- (void)stopMotionDataProvider;
@end

@implementation DSProvider

- (DSProvider)initWithDispatchQueue:(id)queue
{
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = DSProvider;
  v5 = [(DSProvider *)&v22 init];
  if (v5)
  {
    if (queueCopy)
    {
      v6 = queueCopy;
      dsLogger = *(v5 + 1);
      *(v5 + 1) = v6;
    }

    else
    {
      uTF8String = [@"com.apple.distributedsensing.clientQueue" UTF8String];
      v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v10 = dispatch_queue_create(uTF8String, v9);
      v11 = *(v5 + 1);
      *(v5 + 1) = v10;

      v12 = +[DSLogging sharedInstance];
      dsLogger = [v12 dsLogger];

      if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSProvider] client queue created \n", v21, 2u);
      }
    }

    v13 = objc_alloc_init(DSClientMotionDataOptions);
    v14 = *(v5 + 3);
    *(v5 + 3) = v13;

    v15 = *(v5 + 2);
    *(v5 + 2) = 0;

    v16 = *(v5 + 4);
    *(v5 + 4) = 0;

    v17 = *(v5 + 6);
    *(v5 + 6) = 0;

    v5[56] = 0;
    v18 = *(v5 + 8);
    *(v5 + 8) = 0;

    v5[72] = 0;
    v5[110] = 0;
    v19 = *(v5 + 10);
    *(v5 + 10) = 0;

    *(v5 + 11) = 0;
    *(v5 + 12) = 0;
    *(v5 + 102) = 0;
  }

  return v5;
}

- (void)startMotionDataProviderWithOptions:(id)options
{
  v53[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = +[DSLogging sharedInstance];
  dsLogger = [v5 dsLogger];

  if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSProvider] starting motion data provider\n", &buf, 2u);
  }

  if (_os_feature_enabled_impl())
  {
    if (notify_register_check("com.apple.springboard.hasBlankedScreen", &self->_screenStateToken))
    {
      v7 = MEMORY[0x277CCA9B8];
      v50 = *MEMORY[0x277CCA450];
      v51 = @"Couldn't register for device screen state";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v9 = [v7 errorWithDomain:@"DSErrorDomain" code:5 userInfo:v8];

      [(DSProvider *)self failedToStartProviderWithOptions:optionsCopy error:v9];
    }

    else
    {
      deviceType = [optionsCopy deviceType];
      dataSubType = [optionsCopy dataSubType];
      if ((deviceType & 2) != 0)
      {
        v19 = MEMORY[0x277CCA9B8];
        v48 = *MEMORY[0x277CCA450];
        v49 = @"Unrelated devices not supported";
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        v21 = [v19 errorWithDomain:@"DSErrorDomain" code:5 userInfo:v20];

        [(DSProvider *)self failedToStartProviderWithOptions:optionsCopy error:v21];
      }

      else
      {
        v15 = dataSubType;
        if (deviceType)
        {
          [(DSClientMotionDataOptions *)self->_motionDataOptions setDeviceType:[(DSClientMotionDataOptions *)self->_motionDataOptions deviceType]| 1];
        }

        if (v15)
        {
          [(DSClientMotionDataOptions *)self->_motionDataOptions setDataSubType:[(DSClientMotionDataOptions *)self->_motionDataOptions dataSubType]| 1];
        }

        if ([(DSClientMotionDataOptions *)self->_motionDataOptions dataSubType]&& [(DSClientMotionDataOptions *)self->_motionDataOptions deviceType])
        {
          if (self->_linkClient)
          {
            v16 = MEMORY[0x277CCA9B8];
            v44 = *MEMORY[0x277CCA450];
            v45 = @"Provider companion link already exists";
            v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
            v18 = [v16 errorWithDomain:@"DSErrorDomain" code:7 userInfo:v17];

            [(DSProvider *)self failedToStartProviderWithOptions:optionsCopy error:v18];
          }

          else
          {
            v25 = objc_alloc_init(MEMORY[0x277D44160]);
            linkClient = self->_linkClient;
            self->_linkClient = v25;

            [(RPCompanionLinkClient *)self->_linkClient setControlFlags:14];
            [(RPCompanionLinkClient *)self->_linkClient setDispatchQueue:self->_clientQueue];
            objc_initWeak(&buf, self);
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = __49__DSProvider_startMotionDataProviderWithOptions___block_invoke;
            v41[3] = &unk_278F858D8;
            objc_copyWeak(&v42, &buf);
            [(RPCompanionLinkClient *)self->_linkClient setInvalidationHandler:v41];
            v39[0] = MEMORY[0x277D85DD0];
            v39[1] = 3221225472;
            v39[2] = __49__DSProvider_startMotionDataProviderWithOptions___block_invoke_72;
            v39[3] = &unk_278F85900;
            objc_copyWeak(&v40, &buf);
            [(RPCompanionLinkClient *)self->_linkClient setDeviceFoundHandler:v39];
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 3221225472;
            v37[2] = __49__DSProvider_startMotionDataProviderWithOptions___block_invoke_2;
            v37[3] = &unk_278F85900;
            objc_copyWeak(&v38, &buf);
            [(RPCompanionLinkClient *)self->_linkClient setDeviceLostHandler:v37];
            v27 = self->_linkClient;
            v35[0] = MEMORY[0x277D85DD0];
            v35[1] = 3221225472;
            v35[2] = __49__DSProvider_startMotionDataProviderWithOptions___block_invoke_3;
            v35[3] = &unk_278F85928;
            objc_copyWeak(&v36, &buf);
            [(RPCompanionLinkClient *)v27 registerRequestID:@"com.apple.distributedsensing.subscriptionRequest" options:0 handler:v35];
            v28 = +[DSLogging sharedInstance];
            dsLogger2 = [v28 dsLogger];

            if (os_log_type_enabled(dsLogger2, OS_LOG_TYPE_DEFAULT))
            {
              *v34 = 0;
              _os_log_impl(&dword_249027000, dsLogger2, OS_LOG_TYPE_DEFAULT, "[DSProvider] activating CompanionLink\n", v34, 2u);
            }

            v30 = self->_linkClient;
            v31[0] = MEMORY[0x277D85DD0];
            v31[1] = 3221225472;
            v31[2] = __49__DSProvider_startMotionDataProviderWithOptions___block_invoke_75;
            v31[3] = &unk_278F85950;
            objc_copyWeak(&v33, &buf);
            v32 = optionsCopy;
            [(RPCompanionLinkClient *)v30 activateWithCompletion:v31];

            objc_destroyWeak(&v33);
            objc_destroyWeak(&v36);
            objc_destroyWeak(&v38);
            objc_destroyWeak(&v40);
            objc_destroyWeak(&v42);
            objc_destroyWeak(&buf);
          }
        }

        else
        {
          v22 = MEMORY[0x277CCA9B8];
          v46 = *MEMORY[0x277CCA450];
          v47 = @"Invalid options";
          v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
          v24 = [v22 errorWithDomain:@"DSErrorDomain" code:2 userInfo:v23];

          [(DSProvider *)self failedToStartProviderWithOptions:optionsCopy error:v24];
        }
      }
    }
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v52 = *MEMORY[0x277CCA450];
    v53[0] = @"Unsupported feature";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
    v12 = [v10 errorWithDomain:@"DSErrorDomain" code:5 userInfo:v11];

    [(DSProvider *)self failedToStartProviderWithOptions:optionsCopy error:v12];
  }
}

void __49__DSProvider_startMotionDataProviderWithOptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[DSLogging sharedInstance];
    v3 = [v2 dsLogger];

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_249027000, v3, OS_LOG_TYPE_DEFAULT, "[DSProvider] companion link invalidated\n", v4, 2u);
    }
  }
}

void __49__DSProvider_startMotionDataProviderWithOptions___block_invoke_72(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _didFindDevice:v5];
  }
}

void __49__DSProvider_startMotionDataProviderWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _didLoseDevice:v5];
  }
}

void __49__DSProvider_startMotionDataProviderWithOptions___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _receivedDataRequest:v11 options:v7 responseHandler:v8];
  }
}

void __49__DSProvider_startMotionDataProviderWithOptions___block_invoke_75(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = +[DSLogging sharedInstance];
    v6 = [v5 dsLogger];

    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v7)
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_249027000, v6, OS_LOG_TYPE_DEFAULT, "[DSProvider] link activation failed\n", &v11, 2u);
      }

      [WeakRetained failedToStartProviderWithOptions:*(a1 + 32) error:v3];
    }

    else
    {
      if (v7)
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_249027000, v6, OS_LOG_TYPE_DEFAULT, "[DSProvider] companion link activated\n", &v11, 2u);
      }

      [WeakRetained startedProviderWithOptions:WeakRetained[3]];
      [WeakRetained _unPersistListenerState];
      if (WeakRetained[4])
      {
        v8 = +[DSLogging sharedInstance];
        v9 = [v8 dsLogger];

        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [WeakRetained[4] identifier];
          v11 = 138412290;
          v12 = v10;
          _os_log_impl(&dword_249027000, v9, OS_LOG_TYPE_DEFAULT, "[DSProvider] START data subscription to listener %@\n", &v11, 0xCu);
        }

        [WeakRetained subscribedToMotionDataWithOptions:WeakRetained[3]];
      }
    }
  }
}

- (void)sendMotionData:(id)data
{
  dataCopy = data;
  v5 = +[DSLogging sharedInstance];
  dsLogger = [v5 dsLogger];

  if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSProvider] Sending motion Data\n", buf, 2u);
  }

  objc_initWeak(buf, self);
  clientQueue = self->_clientQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__DSProvider_sendMotionData___block_invoke;
  v9[3] = &unk_278F85978;
  objc_copyWeak(&v11, buf);
  v10 = dataCopy;
  v8 = dataCopy;
  dispatch_async(clientQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __29__DSProvider_sendMotionData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _sendMotionData:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)stopMotionDataProvider
{
  v3 = +[DSLogging sharedInstance];
  dsLogger = [v3 dsLogger];

  if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSProvider] Stopping motion data provider\n", buf, 2u);
  }

  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__DSProvider_stopMotionDataProvider__block_invoke;
  block[3] = &unk_278F85808;
  block[4] = self;
  selfCopy = self;
  dispatch_async(clientQueue, block);
}

- (void)_didFindDevice:(id)device
{
  v13 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  currentListener = self->_currentListener;
  if (currentListener)
  {
    identifier = [(DSRapportDevice *)currentListener identifier];
    idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
    v8 = [identifier isEqualToString:idsDeviceIdentifier];

    if (v8)
    {
      v9 = +[DSLogging sharedInstance];
      dsLogger = [v9 dsLogger];

      if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = deviceCopy;
        _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSProvider] did find device %@\n", &v11, 0xCu);
      }
    }
  }
}

- (void)_didLoseDevice:(id)device
{
  v13 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  currentListener = self->_currentListener;
  if (currentListener)
  {
    identifier = [(DSRapportDevice *)currentListener identifier];
    idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
    v8 = [identifier isEqualToString:idsDeviceIdentifier];

    if (v8)
    {
      [(DSProvider *)self _fetchScreenState];
      if (self->_isScreenON)
      {
        [(DSProvider *)self _heartBeatWithListener];
      }

      else
      {
        v9 = +[DSLogging sharedInstance];
        dsLogger = [v9 dsLogger];

        if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 138412290;
          v12 = deviceCopy;
          _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSProvider] did lose device when screen was OFF %@, ignorning...\n", &v11, 0xCu);
        }
      }
    }
  }
}

- (void)_receivedDataRequest:(id)request options:(id)options responseHandler:(id)handler
{
  v65 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = +[DSLogging sharedInstance];
  dsLogger = [v11 dsLogger];

  if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = requestCopy;
    _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSProvider] Data Request received %@\n", buf, 0xCu);
  }

  CFStringGetTypeID();
  v13 = CFDictionaryGetTypedValue();
  if (!v13)
  {
    v18 = +[DSLogging sharedInstance];
    dsLogger2 = [v18 dsLogger];

    if (os_log_type_enabled(dsLogger2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = requestCopy;
      _os_log_impl(&dword_249027000, dsLogger2, OS_LOG_TYPE_DEFAULT, "[DSProvider] No senderID for request %@\n", buf, 0xCu);
    }

    goto LABEL_54;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v15 = +[DSLogging sharedInstance];
  dsLogger3 = [v15 dsLogger];

  if (os_log_type_enabled(dsLogger3, OS_LOG_TYPE_DEFAULT))
  {
    if (Int64Ranged > 0xB)
    {
      v17 = "?";
    }

    else
    {
      v17 = off_278F859C0[Int64Ranged & 0xF];
    }

    *buf = 136315138;
    *&buf[4] = v17;
    _os_log_impl(&dword_249027000, dsLogger3, OS_LOG_TYPE_DEFAULT, "[DSProvider] Data link type %s", buf, 0xCu);
  }

  if (requestCopy)
  {
    v20 = [requestCopy objectForKeyedSubscript:@"requestType"];

    if (v20)
    {
      v59 = CFDictionaryGetInt64Ranged();
      Int64 = CFDictionaryGetInt64();
      v21 = CFDictionaryGetInt64Ranged();
      CFStringGetTypeID();
      v60 = CFDictionaryGetTypedValue();
      selfCopy = self;
      v22 = handlerCopy;
      if ([v60 UTF8String])
      {
        v23 = TextToSourceVersion();
      }

      else
      {
        v23 = 0;
      }

      v24 = +[DSLogging sharedInstance];
      dsLogger4 = [v24 dsLogger];

      if (os_log_type_enabled(dsLogger4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v23;
        _os_log_impl(&dword_249027000, dsLogger4, OS_LOG_TYPE_DEFAULT, "[DSProvider] Data requested with version key : %d\n", buf, 8u);
      }

      if (!v23 || v23 > TextToSourceVersion())
      {
        v26 = +[DSLogging sharedInstance];
        dsLogger5 = [v26 dsLogger];

        handlerCopy = v22;
        if (os_log_type_enabled(dsLogger5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v23;
          _os_log_impl(&dword_249027000, dsLogger5, OS_LOG_TYPE_DEFAULT, "[DSProvider] Unsupported version %d specified\n", buf, 8u);
        }

        v28 = MEMORY[0x277CCA9B8];
        v29 = 4;
        goto LABEL_52;
      }

      handlerCopy = v22;
      if ([(DSClientMotionDataOptions *)selfCopy->_motionDataOptions dataSubType]== v21)
      {
        if (v59 == 2 && v58)
        {
          currentListener = selfCopy->_currentListener;
          if (currentListener)
          {
            identifier = [(DSRapportDevice *)currentListener identifier];
            v32 = [v13 isEqualToString:identifier];

            v33 = +[DSLogging sharedInstance];
            dsLogger6 = [v33 dsLogger];

            v35 = os_log_type_enabled(dsLogger6, OS_LOG_TYPE_DEFAULT);
            if (v32)
            {
              dsLogger2 = v60;
              if (v35)
              {
                *buf = 0;
                _os_log_impl(&dword_249027000, dsLogger6, OS_LOG_TYPE_DEFAULT, "[DSProvider] Data re-subscription request received\n", buf, 2u);
              }

              [(DSListenerDevice *)selfCopy->_currentListener setResponseHandler:v22];
              [(DSProvider *)selfCopy requestedMotionDataWithOption:selfCopy->_motionDataOptions];
            }

            else
            {
              dsLogger2 = v60;
              if (v35)
              {
                *buf = 138412290;
                *&buf[4] = v13;
                _os_log_impl(&dword_249027000, dsLogger6, OS_LOG_TYPE_DEFAULT, "[DSProvider] Data Subscription request rejected for senderID %@, listener already exists\n", buf, 0xCu);
              }

              v56 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DSErrorDomain" code:1 userInfo:0];
              (*(v22 + 2))(v22, 0, 0, v56);
            }
          }

          else
          {
            v48 = objc_alloc_init(MEMORY[0x277D44170]);
            v49 = v48;
            if (v48)
            {
              [v48 setIdentifier:v13];
              v50 = [[DSListenerDevice alloc] initWithRapportDevice:v49 queue:selfCopy->_clientQueue];
              selfCopy->_linkType = CFDictionaryGetInt64Ranged();
              [(DSListenerDevice *)v50 setResponseHandler:v22];
              [(DSListenerDevice *)v50 setVersion:v23];
              [(DSListenerDevice *)v50 setInOptions:selfCopy->_motionDataOptions];
              [(DSProvider *)selfCopy _addNewListener:v50];
              v51 = +[DSLogging sharedInstance];
              dsLogger7 = [v51 dsLogger];

              if (os_log_type_enabled(dsLogger7, OS_LOG_TYPE_DEFAULT))
              {
                identifier2 = [(DSRapportDevice *)v50 identifier];
                *buf = 138412290;
                *&buf[4] = identifier2;
                _os_log_impl(&dword_249027000, dsLogger7, OS_LOG_TYPE_DEFAULT, "[DSProvider] START data subscription to listener %@\n", buf, 0xCu);
              }

              [(DSProvider *)selfCopy subscribedToMotionDataWithOptions:selfCopy->_motionDataOptions];
            }

            else
            {
              [DSProvider _receivedDataRequest:buf options:? responseHandler:?];
              v50 = *buf;
            }

            dsLogger2 = v60;
          }

          goto LABEL_54;
        }

        if (v59 == 2 && !v58)
        {
          v42 = selfCopy->_currentListener;
          if (v42)
          {
            identifier3 = [(DSRapportDevice *)v42 identifier];
            v44 = [identifier3 isEqualToString:v13];

            if (v44)
            {
              [(DSProvider *)selfCopy _removeCurrentListenerWithStopReason:1];
              v45 = +[DSLogging sharedInstance];
              dsLogger8 = [v45 dsLogger];

              if (os_log_type_enabled(dsLogger8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v13;
                _os_log_impl(&dword_249027000, dsLogger8, OS_LOG_TYPE_DEFAULT, "[DSProvider] STOP data subscription from sender %@\n", buf, 0xCu);
              }

              (*(v22 + 2))(v22, 0, 0, 0);
              [(DSProvider *)selfCopy unsubscribed];
              goto LABEL_53;
            }
          }

          v54 = +[DSLogging sharedInstance];
          dsLogger9 = [v54 dsLogger];

          if (!os_log_type_enabled(dsLogger9, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_51;
          }

          *buf = 138412290;
          *&buf[4] = v13;
          v39 = "[DSProvider] Received stop subscription from unknown listener %@, ignoring\n";
          goto LABEL_49;
        }

        v47 = +[DSLogging sharedInstance];
        dsLogger9 = [v47 dsLogger];

        if (os_log_type_enabled(dsLogger9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = requestCopy;
          v39 = "[DSProvider] Invalid Data Request %@\n";
LABEL_49:
          v40 = dsLogger9;
          v41 = 12;
          goto LABEL_50;
        }
      }

      else
      {
        v36 = +[DSLogging sharedInstance];
        dsLogger9 = [v36 dsLogger];

        if (os_log_type_enabled(dsLogger9, OS_LOG_TYPE_DEFAULT))
        {
          dataSubType = [(DSClientMotionDataOptions *)selfCopy->_motionDataOptions dataSubType];
          *buf = 138412546;
          *&buf[4] = v13;
          v63 = 1024;
          v64 = dataSubType;
          v39 = "[DSProvider] Data Subscription request rejected for senderID %@ with motion datatype %d\n";
          v40 = dsLogger9;
          v41 = 18;
LABEL_50:
          _os_log_impl(&dword_249027000, v40, OS_LOG_TYPE_DEFAULT, v39, buf, v41);
        }
      }

LABEL_51:

      v28 = MEMORY[0x277CCA9B8];
      v29 = 1;
LABEL_52:
      v55 = [v28 errorWithDomain:@"DSErrorDomain" code:v29 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v55);

LABEL_53:
      dsLogger2 = v60;
LABEL_54:
    }
  }
}

- (void)_sendMotionData:(id)data
{
  v15[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = dataCopy;
  if (self->_currentListener)
  {
    v14 = @"payloadKey";
    v15[0] = dataCopy;
    dsLogger = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    ++self->_numMotionStateMessages;
    responseHandler = [(DSListenerDevice *)self->_currentListener responseHandler];

    currentListener = self->_currentListener;
    if (responseHandler)
    {
      responseHandler2 = [(DSListenerDevice *)self->_currentListener responseHandler];
      (responseHandler2)[2](responseHandler2, dsLogger, 0, 0);

      [(DSListenerDevice *)self->_currentListener setResponseHandler:0];
    }

    else
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __30__DSProvider__sendMotionData___block_invoke;
      v12[3] = &unk_278F859A0;
      v12[4] = self;
      selfCopy = self;
      [(DSProvider *)selfCopy _sendRequestID:@"com.apple.distributedsensing.dataRequest" request:dsLogger device:currentListener options:0 responseHandler:v12];
    }
  }

  else
  {
    v10 = +[DSLogging sharedInstance];
    dsLogger = [v10 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSProvider] No Listeners registered\n", buf, 2u);
    }
  }
}

void __30__DSProvider__sendMotionData___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(a1 + 32))
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (*(*(a1 + 32) + 32))
    {
      v11 = Int64Ranged;
      v12 = +[DSLogging sharedInstance];
      v13 = [v12 dsLogger];

      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v14)
        {
          v15 = [*(*(a1 + 32) + 32) rpDevice];
          v16 = v15;
          if (v11 > 0xB)
          {
            v17 = "?";
          }

          else
          {
            v17 = off_278F859C0[v11 & 0xF];
          }

          v19 = 138412802;
          v20 = v9;
          v21 = 2112;
          v22 = v15;
          v23 = 2080;
          v24 = v17;
          _os_log_impl(&dword_249027000, v13, OS_LOG_TYPE_DEFAULT, "[DSProvider] %@ in sending data to device %@ over data link: %s. STOP subscription\n", &v19, 0x20u);
        }

        [*(a1 + 32) _removeCurrentListenerWithStopReason:3];
        [*(a1 + 32) unsubscribed];
      }

      else
      {
        if (v14)
        {
          v18 = [*(*(a1 + 32) + 32) rpDevice];
          v19 = 138412290;
          v20 = v18;
          _os_log_impl(&dword_249027000, v13, OS_LOG_TYPE_DEFAULT, "[DSProvider] Sent Data to device %@\n", &v19, 0xCu);
        }
      }
    }
  }
}

- (void)_sendRequestID:(id)d request:(id)request device:(id)device options:(id)options responseHandler:(id)handler
{
  if (request)
  {
    requestCopy = request;
  }

  else
  {
    requestCopy = MEMORY[0x277CBEC10];
  }

  handlerCopy = handler;
  optionsCopy = options;
  deviceCopy = device;
  dCopy = d;
  v17 = [requestCopy mutableCopy];
  [v17 setObject:dCopy forKeyedSubscript:@"RapportRequestIDKey"];

  v15 = MEMORY[0x24C1EF510](handlerCopy);
  [v17 setObject:v15 forKeyedSubscript:@"RapportRequestHandlerKey"];

  [v17 setObject:optionsCopy forKeyedSubscript:@"RapportOptionsKey"];
  v16 = [v17 copy];
  [deviceCopy addRequestToQueue:v16];

  [deviceCopy activateSessionClient];
}

- (void)_fetchScreenState
{
  v9 = *MEMORY[0x277D85DE8];
  state64 = 0;
  notify_get_state(self->_screenStateToken, &state64);
  self->_isScreenON = state64 != 1;
  v3 = +[DSLogging sharedInstance];
  dsLogger = [v3 dsLogger];

  if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_isScreenON)
    {
      v5 = "ON";
    }

    else
    {
      v5 = "OFF";
    }

    *buf = 136315138;
    v8 = v5;
    _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSProvider] Current screen state is %s\n", buf, 0xCu);
  }
}

- (void)_heartBeatWithListener
{
  v11 = *MEMORY[0x277D85DE8];
  if (!self->_isPendingHeartbeat)
  {
    self->_isPendingHeartbeat = 1;
    v3 = +[DSLogging sharedInstance];
    dsLogger = [v3 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      rpDevice = [(DSRapportDevice *)self->_currentListener rpDevice];
      *buf = 138412290;
      v10 = rpDevice;
      _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSProvider] Heartbeating with Listener %@\n", buf, 0xCu);
    }

    ++self->_numHeartbeats;
    currentListener = self->_currentListener;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__DSProvider__heartBeatWithListener__block_invoke;
    v8[3] = &unk_278F859A0;
    v8[4] = self;
    selfCopy = self;
    [(DSProvider *)selfCopy _sendRequestID:@"com.apple.distributedsensing.heartbeatRequest" request:MEMORY[0x277CBEC10] device:currentListener options:0 responseHandler:v8];
  }
}

void __36__DSProvider__heartBeatWithListener__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(a1 + 32))
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    v11 = *(a1 + 32);
    if (*(v11 + 32))
    {
      v12 = Int64Ranged;
      *(v11 + 56) = 0;
      v13 = +[DSLogging sharedInstance];
      v14 = [v13 dsLogger];

      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v15)
        {
          v16 = [*(*(a1 + 32) + 32) rpDevice];
          v17 = v16;
          if (v12 > 0xB)
          {
            v18 = "?";
          }

          else
          {
            v18 = off_278F859C0[v12 & 0xF];
          }

          v20 = 138412802;
          v21 = v9;
          v22 = 2112;
          v23 = v16;
          v24 = 2080;
          v25 = v18;
          _os_log_impl(&dword_249027000, v14, OS_LOG_TYPE_DEFAULT, "[DSProvider] %@ in heartbeating with listener %@ over data link: %s. STOP subscription\n", &v20, 0x20u);
        }

        [*(a1 + 32) _removeCurrentListenerWithStopReason:2];
        [*(a1 + 32) subscriptionExpired];
      }

      else
      {
        if (v15)
        {
          v19 = [*(*(a1 + 32) + 32) rpDevice];
          v20 = 138412290;
          v21 = v19;
          _os_log_impl(&dword_249027000, v14, OS_LOG_TYPE_DEFAULT, "[DSProvider] Listener %@ is still active\n", &v20, 0xCu);
        }
      }
    }
  }
}

- (void)_stopProvider
{
  [(RPCompanionLinkClient *)self->_linkClient deregisterRequestID:@"com.apple.distributedsensing.subscriptionRequest"];
  [(DSClientMotionDataOptions *)self->_motionDataOptions setDataSubType:0];
  [(DSClientMotionDataOptions *)self->_motionDataOptions setDeviceType:0];
  [(DSProvider *)self _removeCurrentListenerWithStopReason:4];
  [(RPCompanionLinkClient *)self->_linkClient invalidate];
  linkClient = self->_linkClient;
  self->_linkClient = 0;

  [(DSProvider *)self stoppedProvider];
}

- (void)_addNewListener:(id)listener
{
  listenerCopy = listener;
  objc_storeStrong(&self->_currentListener, listener);
  self->_isSubscriptionActive = 1;
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_clientQueue);
  v7 = +[DSLogging sharedInstance];
  dsLogger = [v7 dsLogger];

  if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSProvider] Creating Heartbeat timer\n", buf, 2u);
  }

  v9 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 1800000000000);
  dispatch_source_set_timer(v6, v9, 0x1A3185C5000uLL, 0x6FC23AC00uLL);
  selfCopy = self;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __30__DSProvider__addNewListener___block_invoke;
  handler[3] = &unk_278F85808;
  handler[4] = selfCopy;
  dispatch_source_set_event_handler(v6, handler);
  objc_storeStrong(&selfCopy->_heartbeatTimer, v6);
  dispatch_resume(selfCopy->_heartbeatTimer);
  [(DSProvider *)selfCopy _startCASessionMetricCollection];
  if (!selfCopy->_isUnterminatedSession)
  {
    [(DSProvider *)selfCopy _persistListenerState];
  }
}

void __30__DSProvider__addNewListener___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (v2[4])
    {

      [v2 _heartBeatWithListener];
    }

    else
    {
      v3 = v2[6];
      if (v3)
      {
        dispatch_source_cancel(v3);
        v4 = *(a1 + 32);
        v5 = *(v4 + 48);
        *(v4 + 48) = 0;
      }
    }
  }
}

- (void)_removeCurrentListenerWithStopReason:(int)reason
{
  self->_isSubscriptionActive = 0;
  if (self->_currentListener)
  {
    v4 = *&reason;
    [(DSProvider *)self _removePersistedState];
    [(DSRapportDevice *)self->_currentListener invalidate];
    currentListener = self->_currentListener;
    self->_currentListener = 0;

    [(DSProvider *)self _stopCASessionMetricCollectionWithStopReason:v4];
    caEventHandler = self->_caEventHandler;
    self->_caEventHandler = 0;

    self->_numHeartbeats = 0;
    self->_numMotionStateMessages = 0;
    self->_linkType = 0;
  }

  if (self->_heartbeatTimer)
  {
    v7 = +[DSLogging sharedInstance];
    dsLogger = [v7 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSProvider] Cancelling Heartbeat timer\n", v11, 2u);
    }

    heartbeatTimer = self->_heartbeatTimer;
    if (!dispatch_source_testcancel(heartbeatTimer))
    {
      dispatch_source_cancel(heartbeatTimer);
      heartbeatTimer = self->_heartbeatTimer;
    }

    self->_heartbeatTimer = 0;
  }

  responseTimeoutTimer = self->_responseTimeoutTimer;
  if (responseTimeoutTimer)
  {
    if (!dispatch_source_testcancel(self->_responseTimeoutTimer))
    {
      dispatch_source_cancel(responseTimeoutTimer);
      responseTimeoutTimer = self->_responseTimeoutTimer;
    }

    self->_responseTimeoutTimer = 0;
  }
}

- (void)_startCASessionMetricCollection
{
  if (!self->_isTestMode)
  {
    if (self->_caEventHandler)
    {
      v3 = +[DSLogging sharedInstance];
      dsLogger = [v3 dsLogger];

      if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSProvider] Core analytics event handler already exists\n", v9, 2u);
      }
    }

    else
    {
      v5 = objc_alloc_init(DSCoreAnalyticsEventHandler);
      caEventHandler = self->_caEventHandler;
      self->_caEventHandler = v5;

      v7 = self->_caEventHandler;
      isUnterminatedSession = self->_isUnterminatedSession;

      [(DSCoreAnalyticsEventHandler *)v7 dsSessionStartedWithDeviceRole:1 numPotentialProviders:0 unterminatedSession:isUnterminatedSession];
    }
  }
}

- (void)_stopCASessionMetricCollectionWithStopReason:(int)reason
{
  if (!self->_isTestMode)
  {
    caEventHandler = self->_caEventHandler;
    if (caEventHandler)
    {
      numHeartbeats = self->_numHeartbeats;
      numMotionStateMessages = self->_numMotionStateMessages;
      linkType = self->_linkType;

      [(DSCoreAnalyticsEventHandler *)caEventHandler dsSessionCompletedWithStopReason:*&reason numHeartbeats:numHeartbeats numMotionStateMessages:numMotionStateMessages activeProviderLostCount:0 dataLinkType:linkType maxListenerClients:0 avgListenerStartInterval:0.0];
    }

    else
    {
      v13 = v3;
      v14 = v4;
      v10 = +[DSLogging sharedInstance];
      dsLogger = [v10 dsLogger];

      if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSProvider] Core analytics event handler not initialized\n", v12, 2u);
      }
    }
  }
}

- (BOOL)_persistListenerState
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [[DSKeychainPersistence alloc] initWithQueue:self->_clientQueue];
  currentListener = self->_currentListener;
  v10 = 0;
  v5 = [(DSKeychainPersistence *)v3 saveListenerState:currentListener withError:&v10];
  v6 = v10;
  if (!v5)
  {
    v7 = +[DSLogging sharedInstance];
    dsLogger = [v7 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSProvider] failed to save peristence data with error %@", buf, 0xCu);
    }
  }

  return v5;
}

- (BOOL)_unPersistListenerState
{
  *&v31[5] = *MEMORY[0x277D85DE8];
  v3 = [[DSKeychainPersistence alloc] initWithQueue:self->_clientQueue];
  v28 = 0;
  v29 = 0;
  v4 = [(DSKeychainPersistence *)v3 loadListenerState:&v29 withError:&v28];
  v5 = v29;
  v6 = v28;
  if (!v4)
  {
    v15 = +[DSLogging sharedInstance];
    dsLogger = [v15 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v31 = v6;
      v17 = "[DSProvider] No persistence data found with error: %@";
      v18 = dsLogger;
      v19 = 12;
LABEL_15:
      _os_log_impl(&dword_249027000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    }

LABEL_16:

    v14 = 0;
    goto LABEL_17;
  }

  if (!v5)
  {
    v23 = +[DSLogging sharedInstance];
    dsLogger = [v23 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "[DSProvider] no listener device persisted\n";
      v18 = dsLogger;
      v19 = 2;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (![v5 version] || (v7 = objc_msgSend(v5, "version"), v7 != TextToSourceVersion()))
  {
    v20 = +[DSLogging sharedInstance];
    dsLogger = [v20 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      version = [v5 version];
      v22 = TextToSourceVersion();
      *buf = 67109376;
      v31[0] = version;
      LOWORD(v31[1]) = 1024;
      *(&v31[1] + 2) = v22;
      v17 = "[DSProvider] version %d in persisted listener doesn't match current version: %d\n";
      v18 = dsLogger;
      v19 = 14;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  inOptions = [v5 inOptions];
  dataSubType = [inOptions dataSubType];
  dataSubType2 = [(DSClientMotionDataOptions *)self->_motionDataOptions dataSubType];

  if (dataSubType != dataSubType2)
  {
    v25 = +[DSLogging sharedInstance];
    dsLogger = [v25 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      inOptions2 = [v5 inOptions];
      dataSubType3 = [inOptions2 dataSubType];
      *buf = 67109120;
      v31[0] = dataSubType3;
      _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSProvider] Invalid motion datatype %d in persisted listener\n", buf, 8u);
    }

    goto LABEL_16;
  }

  self->_isUnterminatedSession = 1;
  v11 = +[DSLogging sharedInstance];
  dsLogger2 = [v11 dsLogger];

  if (os_log_type_enabled(dsLogger2, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [v5 identifier];
    *buf = 138412290;
    *v31 = identifier;
    _os_log_impl(&dword_249027000, dsLogger2, OS_LOG_TYPE_DEFAULT, "[DSProvider] UNTERMINATED session found with listener ID %@", buf, 0xCu);
  }

  [(DSProvider *)self _addNewListener:v5];
  v14 = 1;
LABEL_17:

  return v14;
}

- (BOOL)_removePersistedState
{
  v13 = *MEMORY[0x277D85DE8];
  self->_isUnterminatedSession = 0;
  v3 = [[DSKeychainPersistence alloc] initWithQueue:self->_clientQueue];
  currentListener = self->_currentListener;
  v10 = 0;
  v5 = [(DSKeychainPersistence *)v3 removeListenerState:currentListener withError:&v10];
  v6 = v10;
  if (!v5)
  {
    v7 = +[DSLogging sharedInstance];
    dsLogger = [v7 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSProvider] failed to remove peristence data with error %@", buf, 0xCu);
    }
  }

  return v5;
}

- (void)_receivedDataRequest:(NSObject *)a1 options:responseHandler:.cold.1(NSObject **a1)
{
  v2 = +[DSLogging sharedInstance];
  v3 = [v2 dsLogger];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_249027000, v3, OS_LOG_TYPE_DEFAULT, "[DSProvider] Could not allocate rpDevice\n", v4, 2u);
  }

  *a1 = v3;
}

@end