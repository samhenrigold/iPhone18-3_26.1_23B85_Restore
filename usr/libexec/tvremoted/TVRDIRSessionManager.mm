@interface TVRDIRSessionManager
- (TVRDIRSessionManager)init;
- (id)_candidateForDevice:(id)device createIfNeeded:(BOOL)needed;
- (int64_t)_deviceClassificationFromIRClassification:(int64_t)classification;
- (void)_activateWithCompletion:(id)completion;
- (void)_donateEventWithEventType:(int64_t)type forDevice:(id)device;
- (void)_fetchServiceTokenWithCompletionHandler:(id)handler;
- (void)_invalidate;
- (void)_restartIRSession;
- (void)_setupSession;
- (void)invalidate;
- (void)pause;
- (void)processNewDevices:(id)devices;
- (void)removeDevice:(id)device;
- (void)requestCurrentRecommendedDevices;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didUpdateContext:(id)context;
- (void)updateDevice:(id)device withConnectionContext:(int64_t)context;
@end

@implementation TVRDIRSessionManager

- (TVRDIRSessionManager)init
{
  v9.receiver = self;
  v9.super_class = TVRDIRSessionManager;
  v2 = [(TVRDIRSessionManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(TVRDIRSessionManager *)v2 _setupSession];
    v4 = +[NSMutableDictionary dictionary];
    identifierToCandidateMap = v3->_identifierToCandidateMap;
    v3->_identifierToCandidateMap = v4;

    v6 = +[NSMutableDictionary dictionary];
    identifierToDeviceMap = v3->_identifierToDeviceMap;
    v3->_identifierToDeviceMap = v6;
  }

  return v3;
}

- (void)_setupSession
{
  if (!self->_irSession)
  {
    v4 = objc_alloc_init(IRSession);
    irSession = self->_irSession;
    self->_irSession = v4;

    v6 = self->_irSession;

    [(IRSession *)v6 setDelegate:self];
  }
}

- (void)_fetchServiceTokenWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  serviceToken = self->_serviceToken;
  if (serviceToken)
  {
    (*(handlerCopy + 2))(handlerCopy, serviceToken, 0);
  }

  else
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v7 dataForKey:@"irServiceToken"];
    if (v8)
    {
      v20 = 0;
      v9 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v20];
      v10 = v20;
      v11 = self->_serviceToken;
      self->_serviceToken = v9;

      v13 = _TVRDIRLog(v12);
      v14 = v13;
      if (v10)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [TVRDIRSessionManager _fetchServiceTokenWithCompletionHandler:];
        }

        (v5)[2](v5, 0, v10);
      }

      else
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = self->_serviceToken;
          *buf = 138412290;
          v22 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found token %@", buf, 0xCu);
        }

        serviceToken = [(TVRDIRSessionManager *)self serviceToken];
        (v5)[2](v5, serviceToken, 0);
      }
    }

    else
    {
      v10 = [[IRServiceParameters alloc] initWithServicePackage:1];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = __64__TVRDIRSessionManager__fetchServiceTokenWithCompletionHandler___block_invoke;
      v17[3] = &unk_1000206A8;
      v19 = v5;
      v18 = v7;
      [IRSession createServiceWithParameters:v10 reply:v17];
    }
  }
}

void __64__TVRDIRSessionManager__fetchServiceTokenWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __64__TVRDIRSessionManager__fetchServiceTokenWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_100020680;
  v9 = a3;
  v12 = *(a1 + 40);
  v10 = v5;
  v11 = *(a1 + 32);
  v6 = v5;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, v8);
}

void __64__TVRDIRSessionManager__fetchServiceTokenWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = _TVRDIRLog(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __64__TVRDIRSessionManager__fetchServiceTokenWithCompletionHandler___block_invoke_2_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    (*(*(a1 + 56) + 16))();
  }

  else if (*(a1 + 40))
  {
    v10 = _TVRDIRLog(a1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Obtained new token %@", buf, 0xCu);
    }

    v12 = *(a1 + 40);
    v17 = 0;
    v13 = [NSKeyedArchiver archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v17];
    v14 = v17;
    v15 = v14;
    if (v14)
    {
      v16 = _TVRDIRLog(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __64__TVRDIRSessionManager__fetchServiceTokenWithCompletionHandler___block_invoke_2_cold_2();
      }
    }

    else
    {
      v16 = _TVRDIRLog([*(a1 + 48) setObject:v13 forKey:@"irServiceToken"]);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Stored token in user defaults", buf, 2u);
      }
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)pause
{
  irSession = [(TVRDIRSessionManager *)self irSession];
  if (irSession)
  {
    hasStarted = [(TVRDIRSessionManager *)self hasStarted];

    if (hasStarted)
    {
      v6 = _TVRDIRLog(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        irSession2 = [(TVRDIRSessionManager *)self irSession];
        *buf = 138543362;
        v11 = irSession2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Pausing %{public}@", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = __29__TVRDIRSessionManager_pause__block_invoke;
      v8[3] = &unk_1000206D0;
      objc_copyWeak(&v9, buf);
      [(TVRDIRSessionManager *)self _fetchServiceTokenWithCompletionHandler:v8];
      objc_destroyWeak(&v9);
      objc_destroyWeak(buf);
    }
  }
}

void __29__TVRDIRSessionManager_pause__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    WeakRetained = _TVRDIRLog(v6);
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      __29__TVRDIRSessionManager_pause__block_invoke_cold_1();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v9 = [[IRConfiguration alloc] initWithServiceToken:v5];
      [v9 setMode:0];
      v10 = [WeakRetained irSession];
      [v10 runWithConfiguration:v9];

      v12 = _TVRDIRLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updated config mode to paused", v13, 2u);
      }
    }
  }
}

- (void)invalidate
{
  v3 = _TVRDIRLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    irSession = [(TVRDIRSessionManager *)self irSession];
    v5 = 138543362;
    v6 = irSession;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating %{public}@", &v5, 0xCu);
  }

  [(TVRDIRSessionManager *)self _invalidate];
}

- (id)_candidateForDevice:(id)device createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  identifierToCandidateMap = [(TVRDIRSessionManager *)self identifierToCandidateMap];
  v9 = [identifierToCandidateMap objectForKeyedSubscript:identifier];

  if (v9 == 0 && identifier != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  if (v9 == 0 && identifier != 0 && neededCopy)
  {
    v10 = [[IRCandidate alloc] initWithCandidateIdentifier:identifier];
    v12 = objc_alloc_init(IRNode);
    alternateIdentifiers = [deviceCopy alternateIdentifiers];
    v14 = [alternateIdentifiers objectForKeyedSubscript:TVRCAirplayIDKey];
    [v12 setAvOutpuDeviceIdentifier:v14];

    idsIdentifier = [deviceCopy idsIdentifier];
    [v12 setIdsIdentifier:idsIdentifier];

    if ([deviceCopy connectionType] == 1)
    {
      identifier2 = [deviceCopy identifier];
      [v12 setRapportIdentifier:identifier2];
    }

    v17 = [NSSet setWithObject:v12];
    [v10 updateNodes:v17];

    identifierToCandidateMap2 = [(TVRDIRSessionManager *)self identifierToCandidateMap];
    [identifierToCandidateMap2 setObject:v10 forKeyedSubscript:identifier];
  }

  return v10;
}

- (void)processNewDevices:(id)devices
{
  devicesCopy = devices;
  v5 = _TVRDIRLog(devicesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [TVRDIRSessionManager processNewDevices:?];
  }

  identifierToDeviceMap = [(TVRDIRSessionManager *)self identifierToDeviceMap];
  allValues = [identifierToDeviceMap allValues];
  v8 = [NSSet setWithArray:allValues];

  v10 = _TVRDIRLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [TVRDIRSessionManager processNewDevices:];
  }

  v11 = [v8 mutableCopy];
  v12 = _TVRDIRLog([v11 minusSet:devicesCopy]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [TVRDIRSessionManager processNewDevices:];
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v45;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(TVRDIRSessionManager *)self removeDevice:*(*(&v44 + 1) + 8 * i)];
      }

      v15 = [v13 countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v15);
  }

  v37 = v13;

  v39 = devicesCopy;
  v18 = [devicesCopy mutableCopy];
  v38 = v8;
  v19 = _TVRDIRLog([v18 minusSet:v8]);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [TVRDIRSessionManager processNewDevices:];
  }

  v20 = +[NSMutableSet set];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v21 = v18;
  v22 = [v21 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v41;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v41 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v40 + 1) + 8 * j);
        paired = [v26 paired];
        if (paired)
        {
          v28 = _TVRDIRLog(paired);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v49 = v26;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Adding new device: %{public}@", buf, 0xCu);
          }

          v29 = [(TVRDIRSessionManager *)self _candidateForDevice:v26 createIfNeeded:1];
          [v20 addObject:v29];
          identifierToDeviceMap2 = [(TVRDIRSessionManager *)self identifierToDeviceMap];
          identifier = [v26 identifier];
          [identifierToDeviceMap2 setValue:v26 forKey:identifier];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v23);
  }

  v33 = _TVRDIRLog(v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v49 = v20;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Adding new candidates %{public}@", buf, 0xCu);
  }

  irSession = [(TVRDIRSessionManager *)self irSession];
  [irSession updateCandidates:v20];

  v36 = _TVRDIRLog(v35);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    [TVRDIRSessionManager processNewDevices:?];
  }
}

- (void)removeDevice:(id)device
{
  deviceCopy = device;
  v5 = _TVRDIRLog(deviceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543362;
    v20 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing device %{public}@", &v19, 0xCu);
  }

  v6 = [(TVRDIRSessionManager *)self _candidateForDevice:deviceCopy createIfNeeded:0];
  v7 = v6;
  if (v6)
  {
    v8 = _TVRDIRLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing candidate %{public}@", &v19, 0xCu);
    }

    irSession = [(TVRDIRSessionManager *)self irSession];
    [irSession deleteCandidate:v7];
  }

  identifier = [deviceCopy identifier];

  if (identifier)
  {
    identifierToCandidateMap = [(TVRDIRSessionManager *)self identifierToCandidateMap];
    identifier2 = [deviceCopy identifier];
    [identifierToCandidateMap removeObjectForKey:identifier2];

    identifierToDeviceMap = [(TVRDIRSessionManager *)self identifierToDeviceMap];
    identifier3 = [deviceCopy identifier];
    [identifierToDeviceMap removeObjectForKey:identifier3];
  }

  else
  {
    identifierToDeviceMap = _TVRDIRLog(v11);
    if (os_log_type_enabled(identifierToDeviceMap, OS_LOG_TYPE_FAULT))
    {
      [(TVRDIRSessionManager *)self removeDevice:identifierToDeviceMap];
    }
  }

  v17 = _TVRDIRLog(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    identifierToDeviceMap2 = [(TVRDIRSessionManager *)self identifierToDeviceMap];
    v19 = 138412290;
    v20 = identifierToDeviceMap2;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "identifierToDeviceMap %@", &v19, 0xCu);
  }
}

- (void)updateDevice:(id)device withConnectionContext:(int64_t)context
{
  if (context == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2 * (context == 3);
  }

  [(TVRDIRSessionManager *)self _donateEventWithEventType:v5 forDevice:device];
}

- (void)_donateEventWithEventType:(int64_t)type forDevice:(id)device
{
  deviceCopy = device;
  v7 = [[IRAppleTVControlEvent alloc] initWithEventType:type eventSubType:0];
  identifierToCandidateMap = [(TVRDIRSessionManager *)self identifierToCandidateMap];
  identifier = [deviceCopy identifier];

  v10 = [identifierToCandidateMap objectForKeyedSubscript:identifier];

  if (v10)
  {
    v11 = IRAppleTVControlEventTypeToString();
    v12 = [v11 hasPrefix:@"AppleTVControl"];
    if (v12)
    {
      v13 = [v11 substringFromIndex:14];

      v11 = v13;
    }

    v14 = _TVRDIRLog(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Donating %@ for %@", &v16, 0x16u);
    }

    irSession = [(TVRDIRSessionManager *)self irSession];
    [irSession addEvent:v7 forCandidate:v10];
  }
}

- (void)requestCurrentRecommendedDevices
{
  v3 = _TVRDIRLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    irSession = [(TVRDIRSessionManager *)self irSession];
    v6 = 138412290;
    v7 = irSession;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Requesting current context from IRSession: %@", &v6, 0xCu);
  }

  irSession2 = [(TVRDIRSessionManager *)self irSession];
  [irSession2 requestCurrentContext];
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  hasStarted = [(TVRDIRSessionManager *)self hasStarted];
  if (hasStarted)
  {
    v6 = _TVRDIRLog(hasStarted);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "IRSession is already active. Setting Configuration mode to OnEvents.", buf, 2u);
    }

    [(TVRDIRSessionManager *)self setSuggestedDevices:0];
    identifierToDeviceMap = [(TVRDIRSessionManager *)self identifierToDeviceMap];
    [identifierToDeviceMap removeAllObjects];

    identifierToCandidateMap = [(TVRDIRSessionManager *)self identifierToCandidateMap];
    [identifierToCandidateMap removeAllObjects];

    v9 = v14;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __48__TVRDIRSessionManager__activateWithCompletion___block_invoke;
    v14[3] = &unk_1000206F8;
    v14[4] = completionCopy;
    v10 = &v15;
    objc_copyWeak(&v15, &location);
    [(TVRDIRSessionManager *)self _fetchServiceTokenWithCompletionHandler:v14];
  }

  else
  {
    v11 = _TVRDIRLog(hasStarted);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting IRSession", buf, 2u);
    }

    [(TVRDIRSessionManager *)self _setupSession];
    v9 = v12;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __48__TVRDIRSessionManager__activateWithCompletion___block_invoke_18;
    v12[3] = &unk_1000206F8;
    v12[4] = completionCopy;
    v10 = &v13;
    objc_copyWeak(&v13, &location);
    [(TVRDIRSessionManager *)self _fetchServiceTokenWithCompletionHandler:v12];
  }

  objc_destroyWeak(v10);

  objc_destroyWeak(&location);
}

void __48__TVRDIRSessionManager__activateWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v7 = [[IRConfiguration alloc] initWithServiceToken:v5];
      [v7 setMode:1];
      v8 = [WeakRetained irSession];
      [v8 runWithConfiguration:v7];

      v10 = _TVRDIRLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Updated config mode to OnEvents", v11, 2u);
      }

      (*(*(a1 + 32) + 16))();
    }
  }
}

void __48__TVRDIRSessionManager__activateWithCompletion___block_invoke_18(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [[IRConfiguration alloc] initWithServiceToken:v5];
    [v6 setMode:1];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v9 = [WeakRetained irSession];
      [v9 runWithConfiguration:v6];

      v10 = _TVRDIRLog([v8 setHasStarted:1]);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v8 irSession];
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Started %@", &v12, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
    }
  }
}

- (void)_invalidate
{
  [(IRSession *)self->_irSession invalidate];
  [(IRSession *)self->_irSession setDelegate:0];
  irSession = self->_irSession;
  self->_irSession = 0;

  serviceToken = self->_serviceToken;
  self->_serviceToken = 0;

  query = self->_query;
  self->_query = 0;

  filteredDeviceListHandler = self->_filteredDeviceListHandler;
  self->_filteredDeviceListHandler = 0;

  self->_hasStarted = 0;
  [(NSMutableDictionary *)self->_identifierToCandidateMap removeAllObjects];
  identifierToDeviceMap = self->_identifierToDeviceMap;

  [(NSMutableDictionary *)identifierToDeviceMap removeAllObjects];
}

- (void)_restartIRSession
{
  v3 = objc_retainBlock(self->_filteredDeviceListHandler);
  [(TVRDIRSessionManager *)self _invalidate];
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __41__TVRDIRSessionManager__restartIRSession__block_invoke;
  v5[3] = &unk_100020720;
  objc_copyWeak(&v7, &location);
  v4 = v3;
  v6 = v4;
  [(TVRDIRSessionManager *)self _activateWithCompletion:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __41__TVRDIRSessionManager__restartIRSession__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _TVRDIRLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __41__TVRDIRSessionManager__restartIRSession__block_invoke_cold_1();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setFilteredDeviceListHandler:*(a1 + 32)];
  }
}

- (void)session:(id)session didFailWithError:(id)error
{
  errorCopy = error;
  v6 = _TVRDIRLog(errorCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [TVRDIRSessionManager session:didFailWithError:];
  }

  [(TVRDIRSessionManager *)self _restartIRSession];
}

- (void)session:(id)session didUpdateContext:(id)context
{
  contextCopy = context;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __49__TVRDIRSessionManager_session_didUpdateContext___block_invoke;
  block[3] = &unk_100020518;
  objc_copyWeak(&v9, &location);
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __49__TVRDIRSessionManager_session_didUpdateContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:IRContextAppleTVControlKey];
    v4 = _TVRDIRLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __49__TVRDIRSessionManager_session_didUpdateContext___block_invoke_cold_1(v3);
    }

    v35 = +[NSMutableArray array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v31 = v3;
    obj = [v3 candidateResults];
    v5 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v37;
      v8 = @"OneTapSuggestion";
      v32 = WeakRetained;
      do
      {
        v9 = 0;
        v33 = v6;
        do
        {
          if (*v37 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v36 + 1) + 8 * v9);
          v11 = [v10 candidate];
          v12 = [WeakRetained identifierToDeviceMap];
          v13 = [v11 candidateIdentifier];
          v14 = [v12 objectForKeyedSubscript:v13];

          if (v14)
          {
            [v14 setClassification:{objc_msgSend(WeakRetained, "_deviceClassificationFromIRClassification:", objc_msgSend(v10, "classification"))}];
            [v10 classification];
            v16 = IRCandidateClassificationToString();
            v17 = [v16 isEqualToString:v8];
            if (v17)
            {

              v16 = @"OneTap";
            }

            v18 = _TVRDIRLog(v17);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [v14 name];
              [v14 identifier];
              v20 = v8;
              v22 = v21 = v7;
              *buf = 138412802;
              v41 = v16;
              v42 = 2112;
              v43 = v19;
              v44 = 2114;
              v45 = v22;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Update context: %10@, %22@, %{public}@", buf, 0x20u);

              v7 = v21;
              v8 = v20;

              WeakRetained = v32;
              v6 = v33;
            }

            if ([v10 classification] == 2 || objc_msgSend(v10, "classification") == 3 || objc_msgSend(v10, "classification") == 4)
            {
              [v35 addObject:v14];
            }
          }

          else
          {
            v16 = _TVRDIRLog(v15);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v41 = v11;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "No device found for candidate: %@", buf, 0xCu);
            }
          }

          v9 = v9 + 1;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v6);
    }

    [v35 sortUsingComparator:&__block_literal_global_2];
    [WeakRetained setSuggestedDevices:v35];
    v23 = [WeakRetained suggestedDevices];
    v24 = [v23 count];

    if (v24)
    {
      v26 = _TVRDIRLog(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [WeakRetained suggestedDevices];
        *buf = 138543362;
        v41 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Suggested devices: %{public}@", buf, 0xCu);
      }
    }

    v28 = [WeakRetained filteredDeviceListHandler];

    if (v28)
    {
      v29 = [WeakRetained filteredDeviceListHandler];
      v30 = [WeakRetained suggestedDevices];
      (v29)[2](v29, v30);
    }
  }
}

int64_t __49__TVRDIRSessionManager_session_didUpdateContext___block_invoke_27(id a1, TVRXDevice *a2, TVRXDevice *a3)
{
  v4 = a2;
  v5 = a3;
  if ([(TVRXDevice *)v4 classification])
  {
    if ([(TVRXDevice *)v5 classification]&& (v6 = [(TVRXDevice *)v4 classification], v6 >= [(TVRXDevice *)v5 classification]))
    {
      v8 = [(TVRXDevice *)v4 classification];
      v7 = v8 > [(TVRXDevice *)v5 classification];
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (int64_t)_deviceClassificationFromIRClassification:(int64_t)classification
{
  if (classification > 4)
  {
    return 5;
  }

  else
  {
    return qword_100015368[classification];
  }
}

void __64__TVRDIRSessionManager__fetchServiceTokenWithCompletionHandler___block_invoke_2_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_1(&_mh_execute_header, a2, a3, "Failed to obtain token %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)processNewDevices:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 identifierToDeviceMap];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&_mh_execute_header, v2, v3, "Before processing - identifierToDeviceMap %{public}@", v4, v5, v6, v7);
}

- (void)processNewDevices:(void *)a1 .cold.5(void *a1)
{
  v1 = [a1 identifierToDeviceMap];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&_mh_execute_header, v2, v3, "After processing - identifierToDeviceMap %{public}@", v4, v5, v6, v7);
}

- (void)removeDevice:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v3 = [a1 identifierToDeviceMap];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Device identifier shouldn't be nil. deviceMap: %{public}@", v4, 0xCu);
}

void __49__TVRDIRSessionManager_session_didUpdateContext___block_invoke_cold_1(void *a1)
{
  v1 = [a1 candidateResults];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&_mh_execute_header, v2, v3, "Found potential candidates %@", v4, v5, v6, v7);
}

@end