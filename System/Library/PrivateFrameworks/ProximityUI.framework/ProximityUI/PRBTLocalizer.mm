@interface PRBTLocalizer
+ (BOOL)isInternalBuild;
- (BOOL)configure;
- (BOOL)start:(id *)start;
- (BOOL)stop:(id *)stop;
- (PRBTLocalizer)initWithDelegate:(id)delegate queue:(id)queue id:(id)id isUT:(BOOL)t productUUID:(id)d withAnalytics:(BOOL)analytics;
- (PRBTLocalizerDelegate)delegate;
- (void)checkForMeasurementTimeout;
- (void)dealloc;
- (void)didConnectDevice:(id)device error:(id)error;
- (void)didFailWithError:(id)error;
- (void)didFetchTxPower:(id)power fromDevice:(id)device withError:(id)error;
- (void)didReceiveNewBTRSSI:(id)i;
- (void)didStartRangingOnDevice:(id)device withError:(id)error;
- (void)didStopOwnerRangingOnDevice:(id)device withError:(id)error;
- (void)logEstimatorOutput:(RSSIFilterResult *)output;
- (void)notifyDelegateOfFilterOutput:(RSSIFilterResult *)output;
- (void)notifyDelegateOfRawMeasurement:(id)measurement;
- (void)processRssiMeasurement:(id)measurement;
- (void)resetBtTrend;
- (void)sendBTLocalizerChangedState:(unint64_t)state;
- (void)updateDelegateWithSelector:(SEL)selector object:(id)object;
@end

@implementation PRBTLocalizer

+ (BOOL)isInternalBuild
{
  if (+[PRBTLocalizer isInternalBuild]::onceToken != -1)
  {
    +[PRBTLocalizer isInternalBuild];
  }

  return +[PRBTLocalizer isInternalBuild]::isInternalBuild;
}

uint64_t __32__PRBTLocalizer_isInternalBuild__block_invoke()
{
  result = MGGetBoolAnswer();
  +[PRBTLocalizer isInternalBuild]::isInternalBuild = result;
  return result;
}

- (PRBTLocalizer)initWithDelegate:(id)delegate queue:(id)queue id:(id)id isUT:(BOOL)t productUUID:(id)d withAnalytics:(BOOL)analytics
{
  v38[1] = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  queueCopy = queue;
  idCopy = id;
  dCopy = d;
  if (!delegateCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PRBTLocalizer.mm" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];

    if (queueCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PRBTLocalizer.mm" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

    goto LABEL_3;
  }

  if (!queueCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  v36.receiver = self;
  v36.super_class = PRBTLocalizer;
  v19 = [(PRBTLocalizer *)&v36 init];
  v20 = v19;
  if (v19)
  {
    [(PRBTLocalizer *)v19 setDelegate:delegateCopy];
    [(PRBTLocalizer *)v20 setDelegateQueue:queueCopy];
    v21 = dispatch_queue_create("com.apple.findmy.btranging", 0);
    [(PRBTLocalizer *)v20 setProximityQueue:v21];

    v22 = dispatch_queue_create("com.apple.findmy.btlocalizer", 0);
    [(PRBTLocalizer *)v20 setEstimatorQueue:v22];

    v23 = [objc_alloc(MEMORY[0x277D433A0]) initWithCompanionUUID:idCopy];
    [(PRBTLocalizer *)v20 setRemoteDevice:v23];

    [(PRBTLocalizer *)v20 setProductUUID:dCopy];
    v24 = objc_alloc(MEMORY[0x277D43388]);
    proximityQueue = [(PRBTLocalizer *)v20 proximityQueue];
    v26 = [v24 initWithDelegate:v20 queue:proximityQueue];
    [(PRBTLocalizer *)v20 setSession:v26];

    v20->_localizerState = 0;
    v20->_clientState = 0;
    v20->_isUT = t;
    v20->_didFetchTxPower = 0;
    v20->_shouldLogAnalytics = analytics;
    v20->_lastMeasurementTime = PRCommonGetMachContinuousTimeSeconds();
    v27 = os_log_create("com.apple.proximity", "btlocalizer");
    logger = v20->_logger;
    v20->_logger = v27;

    if (v20->_shouldLogAnalytics)
    {
      v29 = objc_alloc_init(PRBTCoreAnalytics);
      [(PRBTLocalizer *)v20 setAnalytics:v29];

      uUIDString = [idCopy UUIDString];
      if ([objc_opt_class() isInternalBuild])
      {
        v37 = @"deviceId";
        v38[0] = uUIDString;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
        analytics = [(PRBTLocalizer *)v20 analytics];
        [analytics setCustomData:v31];
      }
    }
  }

  return v20;
}

- (BOOL)configure
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = self->_logger;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    remoteDevice = [(PRBTLocalizer *)self remoteDevice];
    uUID = [remoteDevice UUID];
    uUIDString = [uUID UUIDString];
    v23 = 138412290;
    v24 = uUIDString;
    _os_log_impl(&dword_2613DF000, v3, OS_LOG_TYPE_DEFAULT, "BTLocalizer configuring for item %@", &v23, 0xCu);
  }

  clientState = self->_clientState;
  if (clientState)
  {
    analytics = self->_logger;
    if (os_log_type_enabled(analytics, OS_LOG_TYPE_DEFAULT))
    {
      remoteDevice2 = [(PRBTLocalizer *)self remoteDevice];
      uUID2 = [remoteDevice2 UUID];
      uUIDString2 = [uUID2 UUIDString];
      v23 = 138412290;
      v24 = uUIDString2;
      _os_log_impl(&dword_2613DF000, analytics, OS_LOG_TYPE_DEFAULT, "#btranging-retry %@: Unexpected call to configure", &v23, 0xCu);
    }

    goto LABEL_10;
  }

  self->_clientState = 1;
  v12 = self->_logger;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    remoteDevice3 = [(PRBTLocalizer *)self remoteDevice];
    uUID3 = [remoteDevice3 UUID];
    uUIDString3 = [uUID3 UUIDString];
    v23 = 138412290;
    v24 = uUIDString3;
    _os_log_impl(&dword_2613DF000, v12, OS_LOG_TYPE_DEFAULT, "#btranging-retry %@: Setting _clientState to LOCALIZER_CLIENT_CONFIGURING configure", &v23, 0xCu);
  }

  session = [(PRBTLocalizer *)self session];
  remoteDevice4 = [(PRBTLocalizer *)self remoteDevice];
  uUID4 = [remoteDevice4 UUID];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_isUT];
  [session fetchTxPower:uUID4 isUT:v19];

  if (self->_shouldLogAnalytics)
  {
    analytics = [(PRBTLocalizer *)self analytics];
    isUT = self->_isUT;
    productUUID = [(PRBTLocalizer *)self productUUID];
    [(OS_os_log *)analytics configureSession:!isUT withProductUUID:productUUID];

LABEL_10:
  }

  return clientState == 0;
}

- (BOOL)start:(id *)start
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = self->_logger;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    remoteDevice = [(PRBTLocalizer *)self remoteDevice];
    uUID = [remoteDevice UUID];
    uUIDString = [uUID UUIDString];
    v18 = 138412290;
    v19 = uUIDString;
    _os_log_impl(&dword_2613DF000, v4, OS_LOG_TYPE_DEFAULT, "BTLocalizer start for item %@", &v18, 0xCu);
  }

  clientState = self->_clientState;
  if (clientState != 2)
  {
    analytics = self->_logger;
    if (os_log_type_enabled(analytics, OS_LOG_TYPE_DEFAULT))
    {
      remoteDevice2 = [(PRBTLocalizer *)self remoteDevice];
      uUID2 = [remoteDevice2 UUID];
      uUIDString2 = [uUID2 UUIDString];
      v18 = 138412290;
      v19 = uUIDString2;
      _os_log_impl(&dword_2613DF000, analytics, OS_LOG_TYPE_DEFAULT, "#btranging-retry %@: Unexpected call to start", &v18, 0xCu);
    }

    goto LABEL_11;
  }

  self->_clientState = 3;
  self->_localizerState = 2;
  [(PRBTLocalizer *)self sendBTLocalizerChangedState:2];
  isUT = self->_isUT;
  session = [(PRBTLocalizer *)self session];
  [(PRBTLocalizer *)self remoteDevice];
  if (isUT)
    v11 = {;
    uUID3 = [v11 UUID];
    [session startUTRanging:uUID3];
  }

  else
    v11 = {;
    uUID3 = [v11 UUID];
    [session startOwnerRanging:uUID3];
  }

  if (self->_shouldLogAnalytics)
  {
    analytics = [(PRBTLocalizer *)self analytics];
    [(OS_os_log *)analytics start];
LABEL_11:
  }

  return clientState == 2;
}

- (BOOL)stop:(id *)stop
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = self->_logger;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    remoteDevice = [(PRBTLocalizer *)self remoteDevice];
    uUID = [remoteDevice UUID];
    uUIDString = [uUID UUIDString];
    *buf = 138412290;
    v41 = uUIDString;
    _os_log_impl(&dword_2613DF000, v4, OS_LOG_TYPE_DEFAULT, "BTLocalizer stop for item %@", buf, 0xCu);
  }

  clientState = self->_clientState;
  if (clientState == 3)
  {
    self->_clientState = 2;
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __22__PRBTLocalizer_stop___block_invoke;
    block[3] = &unk_279AD60B0;
    objc_copyWeak(&v38, &location);
    dispatch_async(MEMORY[0x277D85CD0], block);
    if (self->_isUT)
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __22__PRBTLocalizer_stop___block_invoke_2;
      v35[3] = &unk_279AD60B0;
      objc_copyWeak(&v36, &location);
      v9 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v35);

      v10 = self->_logger;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        remoteDevice2 = [(PRBTLocalizer *)self remoteDevice];
        uUID2 = [remoteDevice2 UUID];
        uUIDString2 = [uUID2 UUIDString];
        *buf = 138412290;
        v41 = uUIDString2;
        _os_log_impl(&dword_2613DF000, v10, OS_LOG_TYPE_DEFAULT, "BTlocalizer sending stop UT ranging command for item %@", buf, 0xCu);
      }

      session = [(PRBTLocalizer *)self session];
      remoteDevice3 = [(PRBTLocalizer *)self remoteDevice];
      uUID3 = [remoteDevice3 UUID];
      [session stopUTRanging:uUID3];

      self->_localizerState = 1;
      [(PRBTLocalizer *)self sendBTLocalizerChangedState:1];
      objc_destroyWeak(&v36);
    }

    else
    {
      localizerState = self->_localizerState;
      if (localizerState == 2)
      {
        v29 = self->_logger;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          remoteDevice4 = [(PRBTLocalizer *)self remoteDevice];
          uUID4 = [remoteDevice4 UUID];
          uUIDString3 = [uUID4 UUIDString];
          *buf = 138412290;
          v41 = uUIDString3;
          _os_log_impl(&dword_2613DF000, v29, OS_LOG_TYPE_DEFAULT, "BTlocalizer has requested ranging for %@ and will send stop later", buf, 0xCu);
        }
      }

      else if (localizerState == 3)
      {
        v22 = self->_logger;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          remoteDevice5 = [(PRBTLocalizer *)self remoteDevice];
          uUID5 = [remoteDevice5 UUID];
          uUIDString4 = [uUID5 UUIDString];
          *buf = 138412290;
          v41 = uUIDString4;
          _os_log_impl(&dword_2613DF000, v22, OS_LOG_TYPE_DEFAULT, "BTlocalizer sending stop owner ranging command for item %@", buf, 0xCu);
        }

        session2 = [(PRBTLocalizer *)self session];
        remoteDevice6 = [(PRBTLocalizer *)self remoteDevice];
        uUID6 = [remoteDevice6 UUID];
        [session2 stopOwnerRanging:uUID6];

        self->_localizerState = 4;
        [(PRBTLocalizer *)self sendBTLocalizerChangedState:4];
      }
    }

    if (self->_shouldLogAnalytics)
    {
      analytics = [(PRBTLocalizer *)self analytics];
      [analytics stop];
    }

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  else
  {
    v17 = self->_logger;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      remoteDevice7 = [(PRBTLocalizer *)self remoteDevice];
      uUID7 = [remoteDevice7 UUID];
      uUIDString5 = [uUID7 UUIDString];
      *buf = 138412290;
      v41 = uUIDString5;
      _os_log_impl(&dword_2613DF000, v17, OS_LOG_TYPE_DEFAULT, "#btranging-retry %@: Unexpected call to stop", buf, 0xCu);
    }
  }

  return clientState == 3;
}

void __22__PRBTLocalizer_stop___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [WeakRetained measurementTimer];
    [v1 invalidate];

    [WeakRetained setMeasurementTimer:0];
    v2 = [WeakRetained btTrendTimer];
    [v2 invalidate];

    [WeakRetained setBtTrendTimer:0];
  }
}

void __22__PRBTLocalizer_stop___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [WeakRetained utRetryTimer];
    [v1 invalidate];

    [WeakRetained setUtRetryTimer:0];
  }
}

- (void)didFetchTxPower:(id)power fromDevice:(id)device withError:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  powerCopy = power;
  deviceCopy = device;
  errorCopy = error;
  v12 = self->_logger;
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (!errorCopy)
  {
    if (v13)
    {
      uUIDString = [deviceCopy UUIDString];
      v20[0] = 136315394;
      *&v20[1] = [uUIDString UTF8String];
      v21 = 1024;
      LODWORD(v22) = [powerCopy intValue];
      _os_log_impl(&dword_2613DF000, v12, OS_LOG_TYPE_DEFAULT, "BTlocalizer didFetchTxPower from device:%s txPower:%d", v20, 0x12u);
    }

    self->_didFetchTxPower = 1;
    objc_storeStrong(&self->_txPower, power);
    [(NSNumber *)self->_txPower intValue];
    operator new();
  }

  if (v13)
  {
    uUIDString2 = [deviceCopy UUIDString];
    v20[0] = 136315394;
    *&v20[1] = [uUIDString2 UTF8String];
    v21 = 2112;
    v22 = errorCopy;
    _os_log_impl(&dword_2613DF000, v12, OS_LOG_TYPE_DEFAULT, "BTlocalizer could not fetch TX power from device:%s #error:%@", v20, 0x16u);
  }

  session = [(PRBTLocalizer *)self session];
  remoteDevice = [(PRBTLocalizer *)self remoteDevice];
  uUID = [remoteDevice UUID];
  v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_isUT];
  [session fetchTxPower:uUID isUT:v18];
}

- (void)didStartRangingOnDevice:(id)device withError:(id)error
{
  v37 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  errorCopy = error;
  v8 = self->_logger;
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (errorCopy)
  {
    if (v9)
    {
      uUIDString = [deviceCopy UUIDString];
      *buf = 136315394;
      uTF8String = [uUIDString UTF8String];
      v35 = 2112;
      v36 = errorCopy;
      _os_log_impl(&dword_2613DF000, v8, OS_LOG_TYPE_DEFAULT, "BTlocalizer could not start ranging on device:%s #error:%@", buf, 0x16u);
    }
  }

  else
  {
    if (v9)
    {
      uUIDString2 = [deviceCopy UUIDString];
      *buf = 136315138;
      uTF8String = [uUIDString2 UTF8String];
      _os_log_impl(&dword_2613DF000, v8, OS_LOG_TYPE_DEFAULT, "BTlocalizer didStartRangingOnDevice:%s", buf, 0xCu);
    }

    if (self->_clientState == 3)
    {
      if (self->_localizerState == 2)
      {
        [(PRBTLocalizer *)self sendBTLocalizerChangedState:3];
      }

      self->_localizerState = 3;
      if (self->_isUT)
      {
        objc_initWeak(buf, self);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __51__PRBTLocalizer_didStartRangingOnDevice_withError___block_invoke;
        block[3] = &unk_279AD60B0;
        objc_copyWeak(&v32, buf);
        dispatch_async(MEMORY[0x277D85CD0], block);
        objc_destroyWeak(&v32);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      v12 = self->_logger;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        remoteDevice = [(PRBTLocalizer *)self remoteDevice];
        uUID = [remoteDevice UUID];
        uUIDString3 = [uUID UUIDString];
        *buf = 138412290;
        uTF8String = uUIDString3;
        _os_log_impl(&dword_2613DF000, v12, OS_LOG_TYPE_DEFAULT, "BTlocalizer received didStartRangingOnDevice despite client not ranging for item %@", buf, 0xCu);
      }

      isUT = self->_isUT;
      v17 = self->_logger;
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (isUT)
      {
        if (v18)
        {
          remoteDevice2 = [(PRBTLocalizer *)self remoteDevice];
          uUID2 = [remoteDevice2 UUID];
          uUIDString4 = [uUID2 UUIDString];
          *buf = 138412290;
          uTF8String = uUIDString4;
          _os_log_impl(&dword_2613DF000, v17, OS_LOG_TYPE_DEFAULT, "BTlocalizer sending stop UT ranging command for item %@", buf, 0xCu);
        }

        session = [(PRBTLocalizer *)self session];
        remoteDevice3 = [(PRBTLocalizer *)self remoteDevice];
        uUID3 = [remoteDevice3 UUID];
        [session stopUTRanging:uUID3];
      }

      else
      {
        if (v18)
        {
          remoteDevice4 = [(PRBTLocalizer *)self remoteDevice];
          uUID4 = [remoteDevice4 UUID];
          uUIDString5 = [uUID4 UUIDString];
          *buf = 138412290;
          uTF8String = uUIDString5;
          _os_log_impl(&dword_2613DF000, v17, OS_LOG_TYPE_DEFAULT, "BTlocalizer sending stop owner ranging command for item %@", buf, 0xCu);
        }

        session2 = [(PRBTLocalizer *)self session];
        remoteDevice5 = [(PRBTLocalizer *)self remoteDevice];
        uUID5 = [remoteDevice5 UUID];
        [session2 stopOwnerRanging:uUID5];
      }
    }
  }
}

void __51__PRBTLocalizer_didStartRangingOnDevice_withError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained utRetryTimer];
    [v3 invalidate];

    [v2 setUtRetryTimer:0];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__PRBTLocalizer_didStartRangingOnDevice_withError___block_invoke_2;
    v5[3] = &unk_279AD60D8;
    v5[4] = v2;
    v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:v5 block:110.0];
    [v2 setUtRetryTimer:v4];
  }
}

void __51__PRBTLocalizer_didStartRangingOnDevice_withError___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) remoteDevice];
    v6 = [v5 UUID];
    v7 = [v6 UUIDString];
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_2613DF000, v4, OS_LOG_TYPE_DEFAULT, "BTlocalizer resending start UT ranging for item %@", &v11, 0xCu);
  }

  v8 = [*(a1 + 32) session];
  v9 = [*(a1 + 32) remoteDevice];
  v10 = [v9 UUID];
  [v8 startUTRanging:v10];
}

- (void)didStopOwnerRangingOnDevice:(id)device withError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  errorCopy = error;
  if (!self->_isUT)
  {
    v8 = self->_logger;
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (errorCopy)
    {
      if (v9)
      {
        uUIDString = [deviceCopy UUIDString];
        v12 = 136315394;
        uTF8String = [uUIDString UTF8String];
        v14 = 2112;
        v15 = errorCopy;
        _os_log_impl(&dword_2613DF000, v8, OS_LOG_TYPE_DEFAULT, "BTlocalizer could not stop owner ranging on device:%s #error:%@", &v12, 0x16u);
      }
    }

    else
    {
      if (v9)
      {
        uUIDString2 = [deviceCopy UUIDString];
        v12 = 136315394;
        uTF8String = [uUIDString2 UTF8String];
        v14 = 2112;
        v15 = 0;
        _os_log_impl(&dword_2613DF000, v8, OS_LOG_TYPE_DEFAULT, "BTlocalizer stopped owner ranging on device:%s #error:%@", &v12, 0x16u);
      }

      self->_localizerState = 1;
      [(PRBTLocalizer *)self sendBTLocalizerChangedState:1];
    }
  }
}

- (void)sendBTLocalizerChangedState:(unint64_t)state
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = self->_logger;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    remoteDevice = [(PRBTLocalizer *)self remoteDevice];
    uUID = [remoteDevice UUID];
    uUIDString = [uUID UUIDString];
    *buf = 138412546;
    v20 = uUIDString;
    v21 = 2048;
    stateCopy = state;
    _os_log_impl(&dword_2613DF000, v5, OS_LOG_TYPE_DEFAULT, "#btranging-retry %@: ItemLocalizer changed state: %ld", buf, 0x16u);
  }

  delegateQueue = [(PRBTLocalizer *)self delegateQueue];
  if (delegateQueue)
  {
    delegateQueue2 = [(PRBTLocalizer *)self delegateQueue];
  }

  else
  {
    delegateQueue2 = MEMORY[0x277D85CD0];
    v11 = MEMORY[0x277D85CD0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(buf, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PRBTLocalizer_sendBTLocalizerChangedState___block_invoke;
    block[3] = &unk_279AD6100;
    objc_copyWeak(v18, buf);
    v17 = WeakRetained;
    v18[1] = state;
    dispatch_async(delegateQueue2, block);

    objc_destroyWeak(v18);
    objc_destroyWeak(buf);
  }

  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(buf, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __45__PRBTLocalizer_sendBTLocalizerChangedState___block_invoke_2;
    v13[3] = &unk_279AD6100;
    objc_copyWeak(v15, buf);
    v14 = WeakRetained;
    v15[1] = state;
    dispatch_async(delegateQueue2, v13);

    objc_destroyWeak(v15);
    objc_destroyWeak(buf);
  }
}

void __45__PRBTLocalizer_sendBTLocalizerChangedState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) btLocalizerChangedState:*(a1 + 48)];
  }
}

void __45__PRBTLocalizer_sendBTLocalizerChangedState___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v7 = WeakRetained;
    v5 = [WeakRetained remoteDevice];
    v6 = [v5 UUID];
    [v3 btLocalizerChangedState:v4 onItem:v6];

    WeakRetained = v7;
  }
}

- (void)didConnectDevice:(id)device error:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = self->_logger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    remoteDevice = [(PRBTLocalizer *)self remoteDevice];
    uUID = [remoteDevice UUID];
    uUIDString = [uUID UUIDString];
    v10 = 138412546;
    v11 = uUIDString;
    v12 = 2112;
    v13 = errorCopy;
    _os_log_impl(&dword_2613DF000, v6, OS_LOG_TYPE_DEFAULT, "BTlocalizer didConnectDevice %@ error: %@", &v10, 0x16u);
  }
}

- (void)updateDelegateWithSelector:(SEL)selector object:(id)object
{
  objectCopy = object;
  delegate = [(PRBTLocalizer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [(PRBTLocalizer *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__PRBTLocalizer_updateDelegateWithSelector_object___block_invoke;
    block[3] = &unk_279AD6128;
    v10 = delegate;
    selectorCopy = selector;
    v11 = objectCopy;
    dispatch_async(delegateQueue, block);
  }
}

- (void)didReceiveNewBTRSSI:(id)i
{
  v24 = *MEMORY[0x277D85DE8];
  iCopy = i;
  v5 = self->_logger;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    remoteDevice = [(PRBTLocalizer *)self remoteDevice];
    uUID = [remoteDevice UUID];
    uUIDString = [uUID UUIDString];
    [iCopy timestamp];
    *buf = 138413058;
    v17 = uUIDString;
    v18 = 2048;
    v19 = v9;
    v20 = 1024;
    rssi_dbm = [iCopy rssi_dbm];
    v22 = 1024;
    channel = [iCopy channel];
    _os_log_impl(&dword_2613DF000, v5, OS_LOG_TYPE_DEFAULT, "BTlocalizer received new measurement from %@ with timestamp %f, RSSI %d, channel %d", buf, 0x22u);
  }

  if (self->_localizerState == 3)
  {
    [(PRBTLocalizer *)self notifyDelegateOfRawMeasurement:iCopy];
    objc_initWeak(buf, self);
    estimatorQueue = [(PRBTLocalizer *)self estimatorQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__PRBTLocalizer_didReceiveNewBTRSSI___block_invoke;
    block[3] = &unk_279AD6150;
    objc_copyWeak(&v15, buf);
    v14 = iCopy;
    dispatch_async(estimatorQueue, block);

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__PRBTLocalizer_didReceiveNewBTRSSI___block_invoke_2;
    v11[3] = &unk_279AD60B0;
    objc_copyWeak(&v12, buf);
    dispatch_async(MEMORY[0x277D85CD0], v11);
    objc_destroyWeak(&v12);

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

void __37__PRBTLocalizer_didReceiveNewBTRSSI___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) timestamp];
    WeakRetained[6] = v2;
    [WeakRetained processRssiMeasurement:*(a1 + 32)];
  }
}

void __37__PRBTLocalizer_didReceiveNewBTRSSI___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained measurementTimer];
    [v3 invalidate];

    [v2 setMeasurementTimer:0];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __37__PRBTLocalizer_didReceiveNewBTRSSI___block_invoke_3;
    v5[3] = &unk_279AD60D8;
    v5[4] = v2;
    v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:v5 block:10.0];
    [v2 setMeasurementTimer:v4];
  }
}

- (void)checkForMeasurementTimeout
{
  objc_initWeak(&location, self);
  estimatorQueue = [(PRBTLocalizer *)self estimatorQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__PRBTLocalizer_checkForMeasurementTimeout__block_invoke;
  v4[3] = &unk_279AD60B0;
  objc_copyWeak(&v5, &location);
  dispatch_async(estimatorQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __43__PRBTLocalizer_checkForMeasurementTimeout__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = PRCommonGetMachContinuousTimeSeconds() - *(WeakRetained + 6);
    v3 = *(WeakRetained + 2);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v2 <= 10.0)
    {
      if (v4)
      {
        v14 = [WeakRetained remoteDevice];
        v15 = [v14 UUID];
        v16 = [v15 UUIDString];
        v17 = 138412290;
        v18 = v16;
        _os_log_impl(&dword_2613DF000, v3, OS_LOG_TYPE_DEFAULT, "BTlocalizer measurement timer for %@ fired erroneously - no need to send unknown level", &v17, 0xCu);
      }
    }

    else
    {
      if (v4)
      {
        v5 = [WeakRetained remoteDevice];
        v6 = [v5 UUID];
        v7 = [v6 UUIDString];
        v17 = 138412546;
        v18 = v7;
        v19 = 2048;
        v20 = 0x4024000000000000;
        _os_log_impl(&dword_2613DF000, v3, OS_LOG_TYPE_DEFAULT, "BTlocalizer has not received new measurements from %@ in %2.1f seconds - resetting proximity level", &v17, 0x16u);
      }

      v8 = [PRBTProximityMeasurement alloc];
      MachContinuousTimeSeconds = PRCommonGetMachContinuousTimeSeconds();
      v10 = [WeakRetained remoteDevice];
      v11 = [v10 UUID];
      v12 = [(PRBTProximityMeasurement *)v8 initWithTime:0 proximityLevel:0 rssi:v11 continuousProximityLevel:0 uuid:MachContinuousTimeSeconds proximityTrend:-128.0];
      [WeakRetained setLatestProximityMeasurement:v12];

      v13 = [WeakRetained latestProximityMeasurement];
      [WeakRetained updateDelegateWithSelector:sel_didUpdateBTProximity_ object:v13];

      if (*(WeakRetained + 42) == 1)
      {
        [*(WeakRetained + 19) revokeProximityLevel];
      }
    }
  }
}

- (void)notifyDelegateOfRawMeasurement:(id)measurement
{
  measurementCopy = measurement;
  v4 = [PRBTRssiMeasurement alloc];
  [measurementCopy timestamp];
  v6 = v5;
  rssi_dbm = [measurementCopy rssi_dbm];
  v8 = [measurementCopy channel] - 37;
  if (v8 >= 3)
  {
    v9 = 3;
  }

  else
  {
    v9 = v8;
  }

  remoteDevice = [(PRBTLocalizer *)self remoteDevice];
  uUID = [remoteDevice UUID];
  v12 = [(PRBTRssiMeasurement *)v4 initWithTime:rssi_dbm rssi:v9 channel:uUID uuid:v6];

  [(PRBTLocalizer *)self updateDelegateWithSelector:sel_willIntegrateBTRSSI_ object:v12];
  if (self->_shouldLogAnalytics)
  {
    analytics = [(PRBTLocalizer *)self analytics];
    [analytics updateWithRssiMeasurement:v12];
  }
}

- (void)processRssiMeasurement:(id)measurement
{
  v24 = *MEMORY[0x277D85DE8];
  measurementCopy = measurement;
  if ([measurementCopy channel] == 37)
  {
    v5 = 0;
    goto LABEL_7;
  }

  if ([measurementCopy channel] == 38)
  {
    v5 = 1;
    goto LABEL_7;
  }

  if ([measurementCopy channel] == 39)
  {
    v5 = 2;
LABEL_7:
    rssi_dbm = [measurementCopy rssi_dbm];
    [measurementCopy timestamp];
    v18 = v6;
    v19 = v5;
    BTFinding::PRRSSIFilter::addRSSImeasurement(self->_rssiFilter.__ptr_, &rssi_dbm, v22);
    if (v23 == 1)
    {
      *buf = *v22;
      v21 = *&v22[16];
      v15 = *v22;
      v16 = *&v22[16];
      [(PRBTLocalizer *)self logEstimatorOutput:&v15];
      v15 = *buf;
      v16 = v21;
      [(PRBTLocalizer *)self notifyDelegateOfFilterOutput:&v15];
    }

    else
    {
      v7 = self->_logger;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        remoteDevice = [(PRBTLocalizer *)self remoteDevice];
        uUID = [remoteDevice UUID];
        uUIDString = [uUID UUIDString];
        *buf = 138412290;
        *&buf[4] = uUIDString;
        _os_log_impl(&dword_2613DF000, v7, OS_LOG_TYPE_DEFAULT, "BTlocalizer for %@ no output produced for estimator input", buf, 0xCu);
      }
    }

    goto LABEL_15;
  }

  v11 = self->_logger;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    remoteDevice2 = [(PRBTLocalizer *)self remoteDevice];
    uUID2 = [remoteDevice2 UUID];
    uUIDString2 = [uUID2 UUIDString];
    *v22 = 138412546;
    *&v22[4] = uUIDString2;
    *&v22[12] = 1024;
    *&v22[14] = [measurementCopy channel];
    _os_log_error_impl(&dword_2613DF000, v11, OS_LOG_TYPE_ERROR, "BTlocalizer for %@ received a measurement with an unusable channel %d, discarding measurement", v22, 0x12u);
  }

LABEL_15:
}

- (void)logEstimatorOutput:(RSSIFilterResult *)output
{
  v33 = *MEMORY[0x277D85DE8];
  var2 = output->var2;
  if (var2 == 2)
  {
    v6 = self->_logger;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      remoteDevice = [(PRBTLocalizer *)self remoteDevice];
      uUID = [remoteDevice UUID];
      uUIDString = [uUID UUIDString];
      var3 = output->var3;
      var0 = output->var0;
      var1 = output->var1;
      v25 = 138413058;
      v26 = uUIDString;
      v27 = 2048;
      v28 = var0;
      v29 = 2048;
      v30 = var3;
      v31 = 2048;
      v32 = var1;
      _os_log_impl(&dword_2613DF000, v6, OS_LOG_TYPE_DEFAULT, "BTlocalizer received estimator output for %@ with level: FAR, rssi: %f dB, continuous level: %3.2f, timestamp %f s", &v25, 0x2Au);
    }
  }

  else if (var2 == 1)
  {
    v6 = self->_logger;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      remoteDevice2 = [(PRBTLocalizer *)self remoteDevice];
      uUID2 = [remoteDevice2 UUID];
      uUIDString2 = [uUID2 UUIDString];
      v16 = output->var3;
      v17 = output->var0;
      v18 = output->var1;
      v25 = 138413058;
      v26 = uUIDString2;
      v27 = 2048;
      v28 = v17;
      v29 = 2048;
      v30 = v16;
      v31 = 2048;
      v32 = v18;
      _os_log_impl(&dword_2613DF000, v6, OS_LOG_TYPE_DEFAULT, "BTlocalizer received estimator output for %@ with level: CLOSE, rssi: %f dB, continuous level: %3.2f, timestamp %f s", &v25, 0x2Au);
    }
  }

  else
  {
    if (var2)
    {
      return;
    }

    v6 = self->_logger;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      remoteDevice3 = [(PRBTLocalizer *)self remoteDevice];
      uUID3 = [remoteDevice3 UUID];
      uUIDString3 = [uUID3 UUIDString];
      v10 = output->var3;
      v11 = output->var0;
      v12 = output->var1;
      v25 = 138413058;
      v26 = uUIDString3;
      v27 = 2048;
      v28 = v11;
      v29 = 2048;
      v30 = v10;
      v31 = 2048;
      v32 = v12;
      _os_log_impl(&dword_2613DF000, v6, OS_LOG_TYPE_DEFAULT, "BTlocalizer received estimator output for %@ with level: NEARBY, rssi: %f dB, continuous level: %3.2f, timestamp %f s", &v25, 0x2Au);
    }
  }
}

- (void)notifyDelegateOfFilterOutput:(RSSIFilterResult *)output
{
  v46 = *MEMORY[0x277D85DE8];
  var2 = output->var2;
  if (var2 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_261415C60[var2];
  }

  latestProximityMeasurement = self->_latestProximityMeasurement;
  if (!latestProximityMeasurement)
  {
    goto LABEL_11;
  }

  proximityLevel = [(PRBTProximityMeasurement *)latestProximityMeasurement proximityLevel];
  if (!proximityLevel)
  {
    goto LABEL_11;
  }

  v9 = proximityLevel;
  if (v6 != proximityLevel)
  {
    v25 = self->_logger;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      remoteDevice = [(PRBTLocalizer *)self remoteDevice];
      uUID = [remoteDevice UUID];
      uUIDString = [uUID UUIDString];
      *buf = 138412802;
      v41 = uUIDString;
      v42 = 2048;
      v43 = v9;
      v44 = 2048;
      v45 = v6;
      _os_log_impl(&dword_2613DF000, v25, OS_LOG_TYPE_DEFAULT, "BTlocalizer detected a level change %@ with previous level: %lu, new level: %lu", buf, 0x20u);
    }

    objc_initWeak(buf, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__PRBTLocalizer_notifyDelegateOfFilterOutput___block_invoke;
    block[3] = &unk_279AD60B0;
    objc_copyWeak(&v39, buf);
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v39);
    objc_destroyWeak(buf);
    if (v6 <= v9)
    {
      goto LABEL_21;
    }

LABEL_26:
    v12 = self->_logger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      remoteDevice2 = [(PRBTLocalizer *)self remoteDevice];
      uUID2 = [remoteDevice2 UUID];
      uUIDString2 = [uUID2 UUIDString];
      *buf = 138412290;
      v41 = uUIDString2;
      _os_log_impl(&dword_2613DF000, v12, OS_LOG_TYPE_DEFAULT, "BTlocalizer current bt rssi trend for %@ : INCREASING", buf, 0xCu);
    }

    v11 = 3;
    goto LABEL_14;
  }

  proximityTrend = [(PRBTProximityMeasurement *)self->_latestProximityMeasurement proximityTrend];
  v11 = proximityTrend;
  if (proximityTrend > 1)
  {
    if (proximityTrend == 2)
    {
      v12 = self->_logger;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        remoteDevice3 = [(PRBTLocalizer *)self remoteDevice];
        uUID3 = [remoteDevice3 UUID];
        uUIDString3 = [uUID3 UUIDString];
        *buf = 138412290;
        v41 = uUIDString3;
        _os_log_impl(&dword_2613DF000, v12, OS_LOG_TYPE_DEFAULT, "BTlocalizer current bt rssi trend for %@ : STABLE", buf, 0xCu);
      }

      v11 = 2;
      goto LABEL_14;
    }

    if (proximityTrend != 3)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

  if (!proximityTrend)
  {
LABEL_11:
    v12 = self->_logger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      remoteDevice4 = [(PRBTLocalizer *)self remoteDevice];
      uUID4 = [remoteDevice4 UUID];
      uUIDString4 = [uUID4 UUIDString];
      *buf = 138412290;
      v41 = uUIDString4;
      _os_log_impl(&dword_2613DF000, v12, OS_LOG_TYPE_DEFAULT, "BTlocalizer current bt rssi trend for %@ : UNKNOWN", buf, 0xCu);
    }

    v11 = 0;
    goto LABEL_14;
  }

  if (proximityTrend == 1)
  {
LABEL_21:
    v12 = self->_logger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      remoteDevice5 = [(PRBTLocalizer *)self remoteDevice];
      uUID5 = [remoteDevice5 UUID];
      uUIDString5 = [uUID5 UUIDString];
      *buf = 138412290;
      v41 = uUIDString5;
      _os_log_impl(&dword_2613DF000, v12, OS_LOG_TYPE_DEFAULT, "BTlocalizer current bt rssi trend for %@ : DECREASING", buf, 0xCu);
    }

    v11 = 1;
LABEL_14:
  }

LABEL_15:
  v16 = [PRBTProximityMeasurement alloc];
  var0 = output->var0;
  var1 = output->var1;
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:output->var3];
  remoteDevice6 = [(PRBTLocalizer *)self remoteDevice];
  uUID6 = [remoteDevice6 UUID];
  v22 = [(PRBTProximityMeasurement *)v16 initWithTime:v6 proximityLevel:v19 rssi:uUID6 continuousProximityLevel:v11 uuid:var1 proximityTrend:var0];
  v23 = self->_latestProximityMeasurement;
  self->_latestProximityMeasurement = v22;

  [(PRBTLocalizer *)self updateDelegateWithSelector:sel_didUpdateBTProximity_ object:self->_latestProximityMeasurement];
  if (self->_shouldLogAnalytics)
  {
    analytics = [(PRBTLocalizer *)self analytics];
    [analytics updateWithProximityLevel:self->_latestProximityMeasurement];
  }
}

void __46__PRBTLocalizer_notifyDelegateOfFilterOutput___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained btTrendTimer];
    [v3 invalidate];

    [v2 setBtTrendTimer:0];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__PRBTLocalizer_notifyDelegateOfFilterOutput___block_invoke_2;
    v5[3] = &unk_279AD60D8;
    v5[4] = v2;
    v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:v5 block:9.5];
    [v2 setBtTrendTimer:v4];
  }
}

- (void)resetBtTrend
{
  objc_initWeak(&location, self);
  estimatorQueue = [(PRBTLocalizer *)self estimatorQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__PRBTLocalizer_resetBtTrend__block_invoke;
  v4[3] = &unk_279AD60B0;
  objc_copyWeak(&v5, &location);
  dispatch_async(estimatorQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __29__PRBTLocalizer_resetBtTrend__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[2];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v2 remoteDevice];
      v5 = [v4 UUID];
      v6 = [v5 UUIDString];
      v20 = 134218242;
      v21 = 0x4023000000000000;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_2613DF000, v3, OS_LOG_TYPE_DEFAULT, "BTLocalizer has not seen a bt level change in %2.1f seconds seconds - resetting trend to stable for %@", &v20, 0x16u);
    }

    v7 = [v2 latestProximityMeasurement];
    [v7 timestamp];
    v9 = v8;
    v10 = [v2 latestProximityMeasurement];
    v11 = [v10 proximityLevel];
    v12 = [v2 latestProximityMeasurement];
    [v12 rssi];
    v14 = v13;
    v15 = [v2 latestProximityMeasurement];
    v16 = [v15 continuousProximityLevel];
    v17 = [v2 latestProximityMeasurement];
    v18 = [v17 uuid];
    v19 = [PRBTProximityMeasurement btProximityWithTime:v11 proximityLevel:v16 rssi:v18 continuousProximityLevel:2 uuid:v9 proximityTrend:v14];
    [v2 setLatestProximityMeasurement:v19];
  }
}

- (void)didFailWithError:(id)error
{
  v38 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = self->_logger;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    remoteDevice = [(PRBTLocalizer *)self remoteDevice];
    uUID = [remoteDevice UUID];
    uUIDString = [uUID UUIDString];
    *buf = 138412546;
    v35 = uUIDString;
    v36 = 2112;
    v37 = errorCopy;
    _os_log_impl(&dword_2613DF000, v5, OS_LOG_TYPE_DEFAULT, "BTlocalizer for %@ didFailWithError: %@", buf, 0x16u);
  }

  if (self->_shouldLogAnalytics)
  {
    analytics = [(PRBTLocalizer *)self analytics];
    [analytics rangingFailedWithError:errorCopy];
  }

  if ([errorCopy code] == 303 || objc_msgSend(errorCopy, "code") == 304)
  {
    [(PRBTLocalizer *)self updateDelegateWithSelector:sel_didFailWithError_ object:errorCopy];
    objc_initWeak(buf, self);
    estimatorQueue = [(PRBTLocalizer *)self estimatorQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__PRBTLocalizer_didFailWithError___block_invoke_40;
    block[3] = &unk_279AD60B0;
    objc_copyWeak(&v29, buf);
    dispatch_async(estimatorQueue, block);

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __34__PRBTLocalizer_didFailWithError___block_invoke_2_41;
    v26[3] = &unk_279AD60B0;
    objc_copyWeak(&v27, buf);
    dispatch_async(MEMORY[0x277D85CD0], v26);
    delegateQueue = [(PRBTLocalizer *)self delegateQueue];
    if (delegateQueue)
    {
      delegateQueue2 = [(PRBTLocalizer *)self delegateQueue];
    }

    else
    {
      delegateQueue2 = MEMORY[0x277D85CD0];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __34__PRBTLocalizer_didFailWithError___block_invoke_3;
      v22[3] = &unk_279AD6178;
      objc_copyWeak(&v25, buf);
      v23 = WeakRetained;
      v24 = errorCopy;
      dispatch_async(delegateQueue2, v22);

      objc_destroyWeak(&v25);
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  else
  {
    v14 = self->_logger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      remoteDevice2 = [(PRBTLocalizer *)self remoteDevice];
      uUID2 = [remoteDevice2 UUID];
      uUIDString2 = [uUID2 UUIDString];
      code = [errorCopy code];
      *buf = 138412546;
      v35 = uUIDString2;
      v36 = 2048;
      v37 = code;
      _os_log_impl(&dword_2613DF000, v14, OS_LOG_TYPE_DEFAULT, "#btranging-retry %@: BTLocalizer received error code %lld", buf, 0x16u);
    }

    if (self->_isUT)
    {
      objc_initWeak(buf, self);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __34__PRBTLocalizer_didFailWithError___block_invoke;
      v32[3] = &unk_279AD60B0;
      objc_copyWeak(&v33, buf);
      dispatch_async(MEMORY[0x277D85CD0], v32);
      objc_destroyWeak(&v33);
      objc_destroyWeak(buf);
    }

    session = [(PRBTLocalizer *)self session];
    [session invalidate];

    [(PRBTLocalizer *)self setSession:0];
    objc_initWeak(buf, self);
    v20 = dispatch_time(0, 100000000);
    proximityQueue = [(PRBTLocalizer *)self proximityQueue];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __34__PRBTLocalizer_didFailWithError___block_invoke_2;
    v30[3] = &unk_279AD60B0;
    objc_copyWeak(&v31, buf);
    dispatch_after(v20, proximityQueue, v30);

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }
}

void __34__PRBTLocalizer_didFailWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [WeakRetained utRetryTimer];
    [v1 invalidate];

    [WeakRetained setUtRetryTimer:0];
  }
}

void __34__PRBTLocalizer_didFailWithError___block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[2];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v2 remoteDevice];
      v5 = [v4 UUID];
      v6 = [v5 UUIDString];
      v35 = 138412290;
      v36 = v6;
      _os_log_impl(&dword_2613DF000, v3, OS_LOG_TYPE_DEFAULT, "#btranging-retry %@: PRBTRangingSession initWithDelegate", &v35, 0xCu);
    }

    v7 = objc_alloc(MEMORY[0x277D43388]);
    v8 = [v2 proximityQueue];
    v9 = [v7 initWithDelegate:v2 queue:v8];
    [v2 setSession:v9];

    v10 = v2[4];
    if ((v10 - 2) < 2)
    {
      v18 = *(v2 + 41);
      if (*(v2 + 6) == 3)
      {
        v19 = v2[2];
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        if (v18)
        {
          if (v20)
          {
            v21 = [v2 remoteDevice];
            v22 = [v21 UUID];
            v23 = [v22 UUIDString];
            v35 = 138412290;
            v36 = v23;
            _os_log_impl(&dword_2613DF000, v19, OS_LOG_TYPE_DEFAULT, "BTlocalizer reattempt start UT ranging for %@", &v35, 0xCu);
          }

          v15 = [v2 session];
          v16 = [v2 remoteDevice];
          v17 = [v16 UUID];
          [v15 startUTRanging:v17];
        }

        else
        {
          if (v20)
          {
            v32 = [v2 remoteDevice];
            v33 = [v32 UUID];
            v34 = [v33 UUIDString];
            v35 = 138412290;
            v36 = v34;
            _os_log_impl(&dword_2613DF000, v19, OS_LOG_TYPE_DEFAULT, "BTlocalizer reattempt start owner ranging for %@", &v35, 0xCu);
          }

          v15 = [v2 session];
          v16 = [v2 remoteDevice];
          v17 = [v16 UUID];
          [v15 startOwnerRanging:v17];
        }

        goto LABEL_27;
      }

      if ((v18 & 1) == 0)
      {
        v11 = v2[2];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [v2 remoteDevice];
          v30 = [v29 UUID];
          v31 = [v30 UUIDString];
          v35 = 138412290;
          v36 = v31;
          _os_log_impl(&dword_2613DF000, v11, OS_LOG_TYPE_DEFAULT, "BTLocalizer stop for %@", &v35, 0xCu);
        }

        goto LABEL_10;
      }
    }

    else if (v10)
    {
      if (v10 == 4 && (*(v2 + 41) & 1) == 0)
      {
        v11 = v2[2];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v2 remoteDevice];
          v13 = [v12 UUID];
          v14 = [v13 UUIDString];
          v35 = 138412290;
          v36 = v14;
          _os_log_impl(&dword_2613DF000, v11, OS_LOG_TYPE_DEFAULT, "BTLocalizer reattempt stop owner ranging for %@", &v35, 0xCu);
        }

LABEL_10:

        v15 = [v2 session];
        v16 = [v2 remoteDevice];
        v17 = [v16 UUID];
        [v15 stopOwnerRanging:v17];
LABEL_27:
      }
    }

    else if ((v2[5] & 1) == 0)
    {
      v24 = v2[2];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v2 remoteDevice];
        v26 = [v25 UUID];
        v27 = [v26 UUIDString];
        v35 = 138412290;
        v36 = v27;
        _os_log_impl(&dword_2613DF000, v24, OS_LOG_TYPE_DEFAULT, "BTlocalizer reattempt fetchTX power for %@", &v35, 0xCu);
      }

      v15 = [v2 session];
      v16 = [v2 remoteDevice];
      v17 = [v16 UUID];
      v28 = [MEMORY[0x277CCABB0] numberWithBool:*(v2 + 41)];
      [v15 fetchTxPower:v17 isUT:v28];

      goto LABEL_27;
    }
  }
}

void __34__PRBTLocalizer_didFailWithError___block_invoke_40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [PRBTProximityMeasurement alloc];
    MachContinuousTimeSeconds = PRCommonGetMachContinuousTimeSeconds();
    v3 = [WeakRetained remoteDevice];
    v4 = [v3 UUID];
    v5 = [(PRBTProximityMeasurement *)v1 initWithTime:0 proximityLevel:0 rssi:v4 continuousProximityLevel:0 uuid:MachContinuousTimeSeconds proximityTrend:-128.0];
    [WeakRetained setLatestProximityMeasurement:v5];

    v6 = [WeakRetained latestProximityMeasurement];
    [WeakRetained updateDelegateWithSelector:sel_didUpdateBTProximity_ object:v6];
  }
}

void __34__PRBTLocalizer_didFailWithError___block_invoke_2_41(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained measurementTimer];
    [v2 invalidate];

    [v5 setMeasurementTimer:0];
    v3 = [v5 btTrendTimer];
    [v3 invalidate];

    [v5 setBtTrendTimer:0];
    v4 = [v5 utRetryTimer];
    [v4 invalidate];

    [v5 setUtRetryTimer:0];
    WeakRetained = v5;
  }
}

void __34__PRBTLocalizer_didFailWithError___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = WeakRetained;
    v5 = [WeakRetained remoteDevice];
    v6 = [v5 UUID];
    [v3 didFailWithError:v4 onItem:v6];

    WeakRetained = v7;
  }
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = self->_logger;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    remoteDevice = [(PRBTLocalizer *)self remoteDevice];
    uUID = [remoteDevice UUID];
    uUIDString = [uUID UUIDString];
    *buf = 138412290;
    v17 = uUIDString;
    _os_log_impl(&dword_2613DF000, v3, OS_LOG_TYPE_DEFAULT, "%@: Destructing PRBTLocalizer and invalidating nearbyd XCP connection.", buf, 0xCu);
  }

  if (!self->_isUT && self->_localizerState == 3)
  {
    session = [(PRBTLocalizer *)self session];
    remoteDevice2 = [(PRBTLocalizer *)self remoteDevice];
    uUID2 = [remoteDevice2 UUID];
    [session stopOwnerRanging:uUID2];
  }

  if (self->_shouldLogAnalytics)
  {
    analytics = [(PRBTLocalizer *)self analytics];
    [analytics deinit];
  }

  measurementTimer = [(PRBTLocalizer *)self measurementTimer];
  [measurementTimer invalidate];

  utRetryTimer = [(PRBTLocalizer *)self utRetryTimer];
  [utRetryTimer invalidate];

  btTrendTimer = [(PRBTLocalizer *)self btTrendTimer];
  [btTrendTimer invalidate];

  session2 = [(PRBTLocalizer *)self session];
  [session2 invalidate];

  [(PRBTLocalizer *)self setSession:0];
  v15.receiver = self;
  v15.super_class = PRBTLocalizer;
  [(PRBTLocalizer *)&v15 dealloc];
}

- (PRBTLocalizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end