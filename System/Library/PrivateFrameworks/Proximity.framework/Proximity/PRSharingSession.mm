@interface PRSharingSession
- (BOOL)addRssiSample:(double)sample channel:(unsigned int)channel forPeer:(id)peer peerDeviceModel:(id)model withError:(id *)error;
- (BOOL)trackNewBTPeer:(id)peer withDviceModel:(id)model error:(id *)error;
- (PRSharingSession)init;
- (PRSharingSession)initWithDelegate:(id)delegate delegateQueue:(id)queue;
- (PRSharingSessionDelegate)delegate;
- (void)beacon:(id)beacon didChangeState:(unint64_t)state;
- (void)beacon:(id)beacon didOutputRangeResults:(id)results;
- (void)didFailWithError:(id)error;
- (void)estimator:(id)estimator didEstimateProximity:(int64_t)proximity toPeer:(id)peer;
- (void)invokeDelegateBlock:(id)block;
- (void)logScores:(id)scores;
- (void)onNewSharingChoiceScores:(id)scores;
- (void)startInitiating;
- (void)startWatchDogWithDuration:(int64_t)duration;
- (void)stopInitiating;
- (void)stopProx;
- (void)watchDogTimedOut;
@end

@implementation PRSharingSession

- (PRSharingSession)init
{
  [(PRSharingSession *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)watchDogTimedOut
{
  v8 = *MEMORY[0x277D85DE8];
  MachTimeSeconds = PRCommonGetMachTimeSeconds();
  MachContinuousTimeSeconds = PRCommonGetMachContinuousTimeSeconds();
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = MachTimeSeconds;
    _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "Watchdog timed out %lf", &v6, 0xCu);
  }

  [(PRSharingChoice *)self->_sharingChoiceEstimator heartbeatTimeout:1 currentMachContTime:MachTimeSeconds useUpdatedScores:MachContinuousTimeSeconds];
  if ([(PRSharingChoice *)self->_sharingChoiceEstimator currentlyInitiating])
  {
    [(PRSharingSession *)self startWatchDogWithDuration:1000000000];
  }
}

- (void)startWatchDogWithDuration:(int64_t)duration
{
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__PRSharingSession_startWatchDogWithDuration___block_invoke;
  v8[3] = &unk_2788F3C40;
  objc_copyWeak(&v9, &location);
  v5 = dispatch_block_create(0, v8);
  reportWatchdog = self->_reportWatchdog;
  self->_reportWatchdog = v5;

  v7 = dispatch_time(0, duration);
  dispatch_after(v7, self->_delegateQueue, self->_reportWatchdog);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __46__PRSharingSession_startWatchDogWithDuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained watchDogTimedOut];
}

- (PRSharingSession)initWithDelegate:(id)delegate delegateQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  if (!delegateCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PRSharingSession.mm" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
  }

  v33.receiver = self;
  v33.super_class = PRSharingSession;
  v9 = [(PRSharingSession *)&v33 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    objc_storeStrong(&v10->_delegateQueue, queue);
    v10->_needToRestart = 0;
    v10->_scoresReported = 0;
    v11 = os_log_create("com.apple.proximity", "PRSharingSession");
    logger = v10->_logger;
    v10->_logger = v11;

    objc_initWeak(&location, v10);
    if (+[PRRangingDevice isSupported])
    {
      v13 = [[PRBeacon alloc] initWithDelegate:v10 queue:v10->_delegateQueue];
      nearbyDaemonSession = v10->_nearbyDaemonSession;
      v10->_nearbyDaemonSession = v13;
    }

    v15 = [[PRSharingChoice alloc] initWithQueue:v10->_delegateQueue];
    sharingChoiceEstimator = v10->_sharingChoiceEstimator;
    v10->_sharingChoiceEstimator = v15;

    [(PRSharingChoice *)v10->_sharingChoiceEstimator setCurrentlyInitiating:0];
    [(PRSharingChoice *)v10->_sharingChoiceEstimator setLogger:v10->_logger];
    v17 = v10->_sharingChoiceEstimator;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __51__PRSharingSession_initWithDelegate_delegateQueue___block_invoke;
    v30[3] = &unk_2788F3C68;
    objc_copyWeak(&v31, &location);
    [(PRSharingChoice *)v17 setNewScoresHandler:v30];
    v18 = [[PRProximityEstimator alloc] initSingleThresholdEstmatorWithDelegate:v10 delegateQueue:v10->_delegateQueue];
    btProxEstimator = v10->_btProxEstimator;
    v10->_btProxEstimator = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    trackedBTPeers = v10->_trackedBTPeers;
    v10->_trackedBTPeers = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    trackedBTPeersDevice = v10->_trackedBTPeersDevice;
    v10->_trackedBTPeersDevice = v22;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__PRSharingSession_initWithDelegate_delegateQueue___block_invoke_2;
    block[3] = &unk_2788F3C40;
    objc_copyWeak(&v29, &location);
    v24 = dispatch_block_create(0, block);
    reportWatchdog = v10->_reportWatchdog;
    v10->_reportWatchdog = v24;

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __51__PRSharingSession_initWithDelegate_delegateQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained onNewSharingChoiceScores:v3];
}

void __51__PRSharingSession_initWithDelegate_delegateQueue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained watchDogTimedOut];
}

- (void)startInitiating
{
  [(PRSharingChoice *)self->_sharingChoiceEstimator createEstimators];
  [(PRBeacon *)self->_nearbyDaemonSession startBeaconingWithOptions:0];
  [(PRSharingChoice *)self->_sharingChoiceEstimator setCurrentlyInitiating:1];

  [(PRSharingSession *)self startWatchDogWithDuration:0];
}

- (void)stopInitiating
{
  dispatch_block_cancel(self->_reportWatchdog);
  [(PRBeacon *)self->_nearbyDaemonSession stopBeaconing];
  [(PRSharingChoice *)self->_sharingChoiceEstimator setCurrentlyInitiating:0];
  [(PRSharingSession *)self stopProx];
  self->_scoresReported = 0;
}

- (BOOL)addRssiSample:(double)sample channel:(unsigned int)channel forPeer:(id)peer peerDeviceModel:(id)model withError:(id *)error
{
  v9 = *&channel;
  v41 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  modelCopy = model;
  v15 = modelCopy;
  if (peerCopy)
  {
    if (modelCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PRSharingSession.mm" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"peerMacAddress"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PRSharingSession.mm" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"deviceModel"}];

LABEL_3:
  if ([peerCopy length] != 6)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PRSharingSession.mm" lineNumber:135 description:{@"Invalid parameter not satisfying: %@", @"[peerMacAddress length] == BT_MAC_LEN"}];
  }

  currentlyInitiating = [(PRSharingChoice *)self->_sharingChoiceEstimator currentlyInitiating];
  if (currentlyInitiating)
  {
    v17 = self->_logger;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v34 = peerCopy;
      v35 = 2080;
      uTF8String = [v15 UTF8String];
      v37 = 1024;
      v38 = v9;
      v39 = 2048;
      sampleCopy = sample;
      _os_log_impl(&dword_230EB5000, v17, OS_LOG_TYPE_DEFAULT, "new RSSI sample:\n MAC address: %@\n model: %s\n channel: %d\n rssi: %f", buf, 0x26u);
    }

    v18 = [(NSMutableDictionary *)self->_trackedBTPeers objectForKeyedSubscript:peerCopy];
    v19 = v18 == 0;

    if (v19)
    {
      if ([(PRSharingSession *)self trackNewBTPeer:peerCopy withDviceModel:v15 error:error])
      {
        goto LABEL_18;
      }
    }

    else
    {
      v20 = [(NSMutableDictionary *)self->_trackedBTPeersDevice objectForKeyedSubscript:peerCopy];
      v21 = [v15 isEqualToString:v20];

      btProxEstimator = self->_btProxEstimator;
      if (v21)
      {
        v23 = [PRSharingSessionHelper NSDataMacToUUID:peerCopy];
        [(PRProximityEstimator *)btProxEstimator addRssiSample:v9 channel:v23 forPeer:error withError:sample];
LABEL_19:

        goto LABEL_20;
      }

      v25 = [PRSharingSessionHelper NSDataMacToUUID:peerCopy];
      [(PRProximityEstimator *)btProxEstimator stopEstimatingProximityFor:v25 withError:error];

      if ([(PRSharingSession *)self trackNewBTPeer:peerCopy withDviceModel:v15 error:error])
      {
LABEL_18:
        v26 = self->_btProxEstimator;
        v23 = [PRSharingSessionHelper NSDataMacToUUID:peerCopy];
        [(PRProximityEstimator *)v26 addRssiSample:v9 channel:v23 forPeer:error withError:sample];
        goto LABEL_19;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [PRSharingSession addRssiSample:channel:forPeer:peerDeviceModel:withError:];
    }

    if (error)
    {
      v24 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277CCA450];
      v32 = @"Failed to initiate prior to adding sample";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      *error = [v24 errorWithDomain:@"com.apple.Proximity.ErrorDomain" code:202 userInfo:v23];
      goto LABEL_19;
    }
  }

LABEL_20:

  return currentlyInitiating;
}

- (BOOL)trackNewBTPeer:(id)peer withDviceModel:(id)model error:(id *)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  modelCopy = model;
  v11 = modelCopy;
  if (peerCopy)
  {
    if (modelCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PRSharingSession.mm" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"peerMacAddress"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PRSharingSession.mm" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"deviceModel"}];

LABEL_3:
  if (self->_scoresReported)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
    {
      [PRSharingSession trackNewBTPeer:withDviceModel:error:];
    }

    [(PRSharingChoice *)self->_sharingChoiceEstimator reportScoresToClientAlways:1 useUpdatedScoreList:0 currentMachContTime:PRCommonGetMachContinuousTimeSeconds()];
  }

  btProxEstimator = self->_btProxEstimator;
  v13 = [PRSharingSessionHelper NSDataMacToUUID:peerCopy];
  v14 = [(PRProximityEstimator *)btProxEstimator startEstimatingProximityFor:v13 peerDeviceModel:v11 withError:error];

  if (v14)
  {
    [(NSMutableDictionary *)self->_trackedBTPeers setObject:&unk_2845BCA70 forKeyedSubscript:peerCopy];
    [(NSMutableDictionary *)self->_trackedBTPeersDevice setObject:v11 forKeyedSubscript:peerCopy];
  }

  else
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [PRSharingSession trackNewBTPeer:withDviceModel:error:];
    }

    if (error)
    {
      v15 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA450];
      v21[0] = @"Failed to start estimating proximity to peer";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      *error = [v15 errorWithDomain:@"com.apple.Proximity.ErrorDomain" code:202 userInfo:v16];
    }
  }

  return v14;
}

- (void)stopProx
{
  *buf = 138412290;
  *a3 = self;
  _os_log_error_impl(&dword_230EB5000, log, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
}

- (void)logScores:(id)scores
{
  v27 = *MEMORY[0x277D85DE8];
  scoresCopy = scores;
  if ([scoresCopy count])
  {
    for (i = 0; i < [scoresCopy count]; ++i)
    {
      kdebug_trace();
      string = [MEMORY[0x277CCAB68] string];
      [string appendFormat:@"New scores: "];
      v7 = [scoresCopy objectAtIndexedSubscript:i];
      btAddress = [v7 btAddress];
      [string appendFormat:@"mac address: %@, ", btAddress];

      [v7 score];
      [string appendFormat:@"score: %f, ", v9];
      angle = [v7 angle];
      LOBYTE(btAddress) = angle == 0;

      if (btAddress)
      {
        [string appendFormat:@"angle degrees: nil, "];
        [string appendFormat:@"angle uncertainty: nil, "];
      }

      else
      {
        angle2 = [v7 angle];
        [angle2 measurement];
        [string appendFormat:@"angle degrees: %f, ", v12];

        angle3 = [v7 angle];
        [angle3 uncertainty];
        [string appendFormat:@"angle uncertainty: %f, ", v14];

        [v7 timestamp];
        [string appendFormat:@"#bighead_test mach_abs_time: %f, ", v15];
      }

      range = [v7 range];
      v17 = range == 0;

      if (v17)
      {
        [string appendFormat:@"range meters: nil, "];
        [string appendFormat:@"range uncertainty: nil, "];
      }

      else
      {
        range2 = [v7 range];
        [range2 measurement];
        [string appendFormat:@"range meters: %f, ", v19];

        range3 = [v7 range];
        [range3 uncertainty];
        [string appendFormat:@"range uncertainty: %f, ", v21];
      }

      v22 = +[PRSharingSessionHelper ProxToString:](PRSharingSessionHelper, "ProxToString:", [v7 proximity]);
      [string appendFormat:@"prox: %@, ", v22];

      logger = self->_logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = string;
        _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      kdebug_trace();
    }
  }

  else
  {
    v24 = self->_logger;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_230EB5000, v24, OS_LOG_TYPE_DEFAULT, "New scores: empty list", buf, 2u);
    }
  }
}

- (void)estimator:(id)estimator didEstimateProximity:(int64_t)proximity toPeer:(id)peer
{
  v32 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  v8 = [PRSharingSessionHelper UUIDToNSDataMac:peerCopy len:6];
  v9 = [(NSMutableDictionary *)self->_trackedBTPeers objectForKeyedSubscript:v8];

  if (v9)
  {
    v28 = 0.0;
    v29 = 0.0;
    if (PRCommonGetAllTimes(0, &v29, &v28))
    {
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:proximity];
      [(NSMutableDictionary *)self->_trackedBTPeers setObject:v10 forKeyedSubscript:v8];

      v11 = [PRSharingSessionHelper reverseNSData:v8];
      [PRSharingSessionHelper NSDataToUInt64:v11];
      objc_msgSend_UIntToHexString_len_(PRSharingSessionHelper);
      v12 = v29;
      v24 = buf;
      *&v25 = v29;
      WORD4(v25) = 0;
      v26 = xmmword_230EED680;
      v27[0] = 1;
      *&v27[4] = [PRSharingSessionHelper ProxToCoarseRange:proximity];
      *&v27[24] = 0;
      v27[8] = 0;
      *&v27[16] = 0;
      sharingChoiceEstimator = self->_sharingChoiceEstimator;
      v14 = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v24;
      }

      v21 = v25;
      v22 = v26;
      v23[0] = *v27;
      *(v23 + 10) = *&v27[10];
      [(PRSharingChoice *)sharingChoiceEstimator addBluetoothProximityEstimate:&__p currentMachContTime:v28];
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v16 = self->_logger;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [PRSharingSessionHelper ProxToString:proximity];
        v18 = v17;
        v19 = v24.__r_.__value_.__r.__words[0];
        if (v14 >= 0)
        {
          v19 = &v24;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 138412802;
        *(buf.__r_.__value_.__r.__words + 4) = v17;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v19;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
        v31 = v12;
        _os_log_impl(&dword_230EB5000, v16, OS_LOG_TYPE_DEFAULT, "PTS: BT Prox estimate of %@ for device %s at time %f", &buf, 0x20u);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }
    }

    else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [PRSharingSession estimator:didEstimateProximity:toPeer:];
    }
  }

  else
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      [PRSharingSession estimator:v8 didEstimateProximity:logger toPeer:?];
    }
  }
}

- (void)beacon:(id)beacon didOutputRangeResults:(id)results
{
  resultsCopy = results;
  kdebug_trace();
  [(PRSharingChoice *)self->_sharingChoiceEstimator addRoseSolutions:resultsCopy currentMachContTime:PRCommonGetMachContinuousTimeSeconds()];
  kdebug_trace();
}

- (void)beacon:(id)beacon didChangeState:(unint64_t)state
{
  beaconCopy = beacon;
  stateCopy = 0;
  if (state > 1)
  {
    if (state != 3)
    {
      if (state != 2)
      {
        goto LABEL_28;
      }

      logger = self->_logger;
      v11 = os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT);
      v12 = 0;
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "PRSharingSession: PRBeaconStateBeaconing", buf, 2u);
        v12 = 0;
      }

      goto LABEL_27;
    }

    v15 = self->_logger;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_230EB5000, v15, OS_LOG_TYPE_DEFAULT, "PRSharingSession: PRBeaconStateUnavailable", buf, 2u);
    }

    if (![(PRSharingChoice *)self->_sharingChoiceEstimator currentlyInitiating])
    {
      stateCopy = 3;
      goto LABEL_28;
    }

    v14 = self->_logger;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
LABEL_26:
      v12 = 1;
LABEL_27:
      self->_needToRestart = v12;
      stateCopy = state;
      goto LABEL_28;
    }

    *buf = 0;
LABEL_25:
    _os_log_impl(&dword_230EB5000, v14, OS_LOG_TYPE_DEFAULT, "PRSharingSession: Need to restart!", buf, 2u);
    goto LABEL_26;
  }

  if (!state)
  {
    v13 = self->_logger;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_230EB5000, v13, OS_LOG_TYPE_DEFAULT, "PRSharingSession: PRBeaconStateUnknown", buf, 2u);
    }

    if (![(PRSharingChoice *)self->_sharingChoiceEstimator currentlyInitiating])
    {
      stateCopy = 0;
      goto LABEL_28;
    }

    v14 = self->_logger;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 0;
    goto LABEL_25;
  }

  if (state == 1)
  {
    v8 = self->_logger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_230EB5000, v8, OS_LOG_TYPE_DEFAULT, "PRSharingSession: PRBeaconStateIdle", buf, 2u);
    }

    if (self->_needToRestart)
    {
      v9 = self->_logger;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_230EB5000, v9, OS_LOG_TYPE_DEFAULT, "PRSharingSession: Attempting to restart initiator session", buf, 2u);
      }

      [(PRSharingSession *)self startInitiating];
    }

    stateCopy = 1;
  }

LABEL_28:
  delegate = [(PRSharingSession *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __42__PRSharingSession_beacon_didChangeState___block_invoke;
    v18[3] = &unk_2788F3C90;
    v18[4] = self;
    v18[5] = stateCopy;
    [(PRSharingSession *)self invokeDelegateBlock:v18];
  }
}

void __42__PRSharingSession_beacon_didChangeState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  [WeakRetained session:*(a1 + 32) didChangeProximitySensorState:*(a1 + 40)];
}

- (void)didFailWithError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__PRSharingSession_didFailWithError___block_invoke;
  v6[3] = &unk_2788F3CB8;
  v6[4] = self;
  v7 = errorCopy;
  v5 = errorCopy;
  [(PRSharingSession *)self invokeDelegateBlock:v6];
}

void __37__PRSharingSession_didFailWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  [WeakRetained session:*(a1 + 32) didFailwithError:*(a1 + 40)];
}

- (void)onNewSharingChoiceScores:(id)scores
{
  scoresCopy = scores;
  [(PRSharingSession *)self logScores:scoresCopy];
  if (!self->_scoresReported && [scoresCopy count])
  {
    self->_scoresReported = 1;
  }

  dispatch_block_cancel(self->_reportWatchdog);
  if ([(PRSharingChoice *)self->_sharingChoiceEstimator currentlyInitiating])
  {
    [(PRSharingSession *)self startWatchDogWithDuration:1000000000];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__PRSharingSession_onNewSharingChoiceScores___block_invoke;
  v6[3] = &unk_2788F3CB8;
  v5 = scoresCopy;
  v7 = v5;
  selfCopy = self;
  [(PRSharingSession *)self invokeDelegateBlock:v6];
}

void __45__PRSharingSession_onNewSharingChoiceScores___block_invoke(uint64_t a1)
{
  [*(a1 + 32) count];
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 88));
  [WeakRetained session:*(a1 + 40) didEstimateScores:*(a1 + 32)];
}

- (void)invokeDelegateBlock:(id)block
{
  blockCopy = block;
  delegateQueue = self->_delegateQueue;
  v6 = blockCopy;
  if (delegateQueue)
  {
    dispatch_async(delegateQueue, blockCopy);
  }

  else
  {
    blockCopy[2](blockCopy);
  }
}

- (PRSharingSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)estimator:(uint64_t)a1 didEstimateProximity:(NSObject *)a2 toPeer:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_230EB5000, a2, OS_LOG_TYPE_ERROR, "PTS: Received Proximity estimation for a device we are not tracking: %@", &v2, 0xCu);
}

@end