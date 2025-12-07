@interface CWFJITTDImpactEstimator
+ (id)initJITTDImpactEstimator;
- (BOOL)canSubmitToCA:(id)a;
- (BOOL)checkCellularDataSanity:(id)sanity;
- (CWFJITTDImpactEstimator)init;
- (id)computeDataUsageInCurrentSession:(id)session;
- (id)twoSigFig:(unint64_t)fig;
- (void)__stopCellularDataUsageAccountingPostTD;
- (void)cancelBoundaryTimer;
- (void)cancelPeriodicTimer;
- (void)gatherCellularDataUsageSoFar:(id)far;
- (void)invalidate;
- (void)issueFullBandScan;
- (void)notifyAJDelayedOnlyDueToJITTD;
- (void)notifyScanResult:(id)result withError:(id)error;
- (void)postCellularDataUsageAccountingPreAJ:(id)j;
- (void)postCellularDataUsageAccoutingPostTD:(id)d;
- (void)resetStores;
- (void)setupPeriodicTimerForScan;
- (void)startCellularDataUsageAccountingDelayedAJ:(int64_t)j withMaxRSSI:(int64_t)i forNetwork:(id)network;
- (void)startCellularDataUsageAccountingPostTD:(id)d withMinRSSI:(int64_t)i;
- (void)stopAccounting;
- (void)stopCellularDataUsageAccountingDelayedAJ;
- (void)stopCellularDataUsageAccountingPostTD;
- (void)storeCellularDataUsage:(id)usage;
@end

@implementation CWFJITTDImpactEstimator

+ (id)initJITTDImpactEstimator
{
  v2 = objc_alloc_init(CWFJITTDImpactEstimator);

  return v2;
}

- (CWFJITTDImpactEstimator)init
{
  v41 = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = CWFJITTDImpactEstimator;
  v2 = [(CWFJITTDImpactEstimator *)&v34 init];
  if (!v2)
  {
    return v2;
  }

  v3 = dispatch_queue_create("com.apple.wifi.CWFJITTDImpactEstimator", 0);
  [(CWFJITTDImpactEstimator *)v2 set_serviceQueue:v3];

  _serviceQueue = [(CWFJITTDImpactEstimator *)v2 _serviceQueue];
  LODWORD(v3) = _serviceQueue == 0;

  if (v3)
  {

    v18 = CWFGetOSLog();
    if (v18)
    {
      v19 = CWFGetOSLog();
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v25 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v35 = 136446722;
      v36 = "[CWFJITTDImpactEstimator init]";
      v37 = 2082;
      v38 = "CWFJITTDImpactEstimator.m";
      v39 = 1024;
      v40 = 121;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v19, 16, "[corewifi] %{public}s (%{public}s:%u) Unable to create service queue\n", &v35, 28);
    }

    return 0;
  }

  objc_initWeak(&location, v2);
  v5 = dispatch_queue_create("com.apple.wifi.CWFJITTDImpactTimer", 0);
  [(CWFJITTDImpactEstimator *)v2 set_timerQueue:v5];

  _timerQueue = [(CWFJITTDImpactEstimator *)v2 _timerQueue];
  LODWORD(v5) = _timerQueue == 0;

  if (v5)
  {

    v20 = CWFGetOSLog();
    if (v20)
    {
      v21 = CWFGetOSLog();
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v26 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v35 = 136446722;
      v36 = "[CWFJITTDImpactEstimator init]";
      v37 = 2082;
      v38 = "CWFJITTDImpactEstimator.m";
      v39 = 1024;
      v40 = 129;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v21, 16, "[corewifi] %{public}s (%{public}s:%u) Unable to create timer queue\n", &v35, 28);
    }

    goto LABEL_27;
  }

  _timerQueue2 = [(CWFJITTDImpactEstimator *)v2 _timerQueue];
  v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, _timerQueue2);
  [(CWFJITTDImpactEstimator *)v2 set_boundaryTimer:v8];

  _boundaryTimer = [(CWFJITTDImpactEstimator *)v2 _boundaryTimer];
  LODWORD(_timerQueue2) = _boundaryTimer == 0;

  if (_timerQueue2)
  {

    v22 = CWFGetOSLog();
    if (v22)
    {
      v21 = CWFGetOSLog();
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v27 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v35 = 136446722;
      v36 = "[CWFJITTDImpactEstimator init]";
      v37 = 2082;
      v38 = "CWFJITTDImpactEstimator.m";
      v39 = 1024;
      v40 = 135;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v21, 16, "[corewifi] %{public}s (%{public}s:%u) Unable to create queue\n", &v35, 28);
    }

LABEL_27:

    objc_destroyWeak(&location);
    return 0;
  }

  _boundaryTimer2 = [(CWFJITTDImpactEstimator *)v2 _boundaryTimer];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1E0C00A3C;
  handler[3] = &unk_1E86E6190;
  objc_copyWeak(&v32, &location);
  dispatch_source_set_event_handler(_boundaryTimer2, handler);

  _boundaryTimer3 = [(CWFJITTDImpactEstimator *)v2 _boundaryTimer];
  dispatch_activate(_boundaryTimer3);

  _timerQueue3 = [(CWFJITTDImpactEstimator *)v2 _timerQueue];
  v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, _timerQueue3);
  [(CWFJITTDImpactEstimator *)v2 set_periodicTimer:v13];

  _periodicTimer = [(CWFJITTDImpactEstimator *)v2 _periodicTimer];
  LODWORD(_timerQueue3) = _periodicTimer == 0;

  if (_timerQueue3)
  {

    v23 = CWFGetOSLog();
    if (v23)
    {
      v24 = CWFGetOSLog();
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v35 = 136446722;
      v36 = "[CWFJITTDImpactEstimator init]";
      v37 = 2082;
      v38 = "CWFJITTDImpactEstimator.m";
      v39 = 1024;
      v40 = 149;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v24, 16, "[corewifi] %{public}s (%{public}s:%u) Unable to create queue\n", &v35, 28);
    }

    v2 = 0;
  }

  else
  {
    _periodicTimer2 = [(CWFJITTDImpactEstimator *)v2 _periodicTimer];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_1E0C00A80;
    v29[3] = &unk_1E86E6190;
    objc_copyWeak(&v30, &location);
    dispatch_source_set_event_handler(_periodicTimer2, v29);

    _periodicTimer3 = [(CWFJITTDImpactEstimator *)v2 _periodicTimer];
    dispatch_activate(_periodicTimer3);

    [(CWFJITTDImpactEstimator *)v2 set_lastSubmissionTimePreAJ:0];
    [(CWFJITTDImpactEstimator *)v2 set_lastSubmissionTimePostTD:0];
    [(CWFJITTDImpactEstimator *)v2 resetStores];
    objc_destroyWeak(&v30);
  }

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
  return v2;
}

- (void)invalidate
{
  [(CWFJITTDImpactEstimator *)self setGatherCellularDataStats:0];
  [(CWFJITTDImpactEstimator *)self setScanForNetworkHandler:0];
  _boundaryTimer = [(CWFJITTDImpactEstimator *)self _boundaryTimer];

  if (_boundaryTimer)
  {
    _boundaryTimer2 = [(CWFJITTDImpactEstimator *)self _boundaryTimer];
    dispatch_source_cancel(_boundaryTimer2);
  }

  _periodicTimer = [(CWFJITTDImpactEstimator *)self _periodicTimer];

  if (_periodicTimer)
  {
    _periodicTimer2 = [(CWFJITTDImpactEstimator *)self _periodicTimer];
    dispatch_source_cancel(_periodicTimer2);
  }
}

- (void)startCellularDataUsageAccountingDelayedAJ:(int64_t)j withMaxRSSI:(int64_t)i forNetwork:(id)network
{
  networkCopy = network;
  _serviceQueue = [(CWFJITTDImpactEstimator *)self _serviceQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E0C00C48;
  v11[3] = &unk_1E86E61B8;
  v11[4] = self;
  v12 = networkCopy;
  jCopy = j;
  iCopy = i;
  v10 = networkCopy;
  dispatch_sync(_serviceQueue, v11);
}

- (void)stopCellularDataUsageAccountingDelayedAJ
{
  _serviceQueue = [(CWFJITTDImpactEstimator *)self _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C01490;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(_serviceQueue, block);
}

- (void)notifyAJDelayedOnlyDueToJITTD
{
  _serviceQueue = [(CWFJITTDImpactEstimator *)self _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C018BC;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(_serviceQueue, block);
}

- (void)startCellularDataUsageAccountingPostTD:(id)d withMinRSSI:(int64_t)i
{
  dCopy = d;
  _serviceQueue = [(CWFJITTDImpactEstimator *)self _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C01DC8;
  block[3] = &unk_1E86E61E0;
  block[4] = self;
  v10 = dCopy;
  iCopy = i;
  v8 = dCopy;
  dispatch_sync(_serviceQueue, block);
}

- (void)__stopCellularDataUsageAccountingPostTD
{
  v12 = *MEMORY[0x1E69E9840];
  [(CWFJITTDImpactEstimator *)self cancelPeriodicTimer];
  [(CWFJITTDImpactEstimator *)self cancelBoundaryTimer];
  if ([(CWFJITTDImpactEstimator *)self _activity]== 1)
  {
    _previousCellularDataUsageInPostTD = [(CWFJITTDImpactEstimator *)self _previousCellularDataUsageInPostTD];
    [(CWFJITTDImpactEstimator *)self postCellularDataUsageAccoutingPostTD:_previousCellularDataUsageInPostTD];
  }

  else
  {
    v4 = CWFGetOSLog();
    if (v4)
    {
      _previousCellularDataUsageInPostTD = CWFGetOSLog();
    }

    else
    {
      _previousCellularDataUsageInPostTD = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(_previousCellularDataUsageInPostTD, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "[CWFJITTDImpactEstimator __stopCellularDataUsageAccountingPostTD]";
      v8 = 2082;
      v9 = "CWFJITTDImpactEstimator.m";
      v10 = 1024;
      v11 = 386;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, _previousCellularDataUsageInPostTD, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid state we are not in post TD data eval zone\n", &v6, 28);
    }
  }

  [(CWFJITTDImpactEstimator *)self resetStores];
}

- (void)stopCellularDataUsageAccountingPostTD
{
  _serviceQueue = [(CWFJITTDImpactEstimator *)self _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C026B0;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(_serviceQueue, block);
}

- (void)gatherCellularDataUsageSoFar:(id)far
{
  v20 = *MEMORY[0x1E69E9840];
  farCopy = far;
  gatherCellularDataStats = [(CWFJITTDImpactEstimator *)self gatherCellularDataStats];

  if (!gatherCellularDataStats)
  {
    v9 = CWFGetOSLog();
    if (v9)
    {
      v10 = CWFGetOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v18 = 136446722;
      *&v18[4] = "[CWFJITTDImpactEstimator gatherCellularDataUsageSoFar:]";
      *&v18[12] = 2082;
      *&v18[14] = "CWFJITTDImpactEstimator.m";
      *&v18[22] = 1024;
      LODWORD(v19) = 406;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid cellular callback reference\n", v18, 28, *v18, *&v18[8], v19);
    }

    goto LABEL_28;
  }

  if ([(CWFJITTDImpactEstimator *)self _activity]!= 1)
  {
    v11 = CWFGetOSLog();
    if (v11)
    {
      v10 = CWFGetOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v18 = 136446722;
      *&v18[4] = "[CWFJITTDImpactEstimator gatherCellularDataUsageSoFar:]";
      *&v18[12] = 2082;
      *&v18[14] = "CWFJITTDImpactEstimator.m";
      *&v18[22] = 1024;
      LODWORD(v19) = 410;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid state we are not in post TD data eval zone\n", v18, 28, *v18, *&v18[8], v19);
    }

    goto LABEL_28;
  }

  if (!farCopy)
  {
    farCopy = objc_alloc_init(MEMORY[0x1E695DF90]);
    gatherCellularDataStats2 = [(CWFJITTDImpactEstimator *)self gatherCellularDataStats];
    v7 = (gatherCellularDataStats2)[2](gatherCellularDataStats2, farCopy);

    if ((v7 & 1) == 0)
    {
      v12 = CWFGetOSLog();
      if (v12)
      {
        v10 = CWFGetOSLog();
      }

      else
      {
        v10 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v18 = 136446722;
        *&v18[4] = "[CWFJITTDImpactEstimator gatherCellularDataUsageSoFar:]";
        *&v18[12] = 2082;
        *&v18[14] = "CWFJITTDImpactEstimator.m";
        *&v18[22] = 1024;
        LODWORD(v19) = 421;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 16, "[corewifi] %{public}s (%{public}s:%u) Unable to get cellular data usage at init\n", v18, 28, *v18, *&v18[8], v19);
      }

      goto LABEL_28;
    }
  }

  if (![(CWFJITTDImpactEstimator *)self checkCellularDataSanity:farCopy])
  {
    v13 = CWFGetOSLog();
    if (v13)
    {
      v10 = CWFGetOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v18 = 136446722;
      *&v18[4] = "[CWFJITTDImpactEstimator gatherCellularDataUsageSoFar:]";
      *&v18[12] = 2082;
      *&v18[14] = "CWFJITTDImpactEstimator.m";
      *&v18[22] = 1024;
      LODWORD(v19) = 425;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 16, "[corewifi] %{public}s (%{public}s:%u) Data obtained for cellular stats is invalid, exiting\n", v18, 28, *v18, *&v18[8], v19);
    }

LABEL_28:

    goto LABEL_7;
  }

  v8 = [(CWFJITTDImpactEstimator *)self computeDataUsageInCurrentSession:farCopy];
  [(CWFJITTDImpactEstimator *)self set_previousCellularDataUsageInPostTD:v8];

LABEL_7:
}

- (BOOL)checkCellularDataSanity:(id)sanity
{
  sanityCopy = sanity;
  v4 = [sanityCopy objectForKeyedSubscript:@"CellularDataOutPackets"];
  unsignedIntValue = [v4 unsignedIntValue];

  if (unsignedIntValue && ([sanityCopy objectForKeyedSubscript:@"CellularDataInPackets"], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "unsignedIntValue"), v6, v7) && (objc_msgSend(sanityCopy, "objectForKeyedSubscript:", @"CellularDataOutBytes"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "unsignedIntValue"), v8, v9))
  {
    v10 = [sanityCopy objectForKeyedSubscript:@"CellularDataInBytes"];
    v11 = [v10 unsignedIntValue] != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)notifyScanResult:(id)result withError:(id)error
{
  v55 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  [(CWFJITTDImpactEstimator *)self cancelPeriodicTimer];
  if (![(CWFJITTDImpactEstimator *)self _activity])
  {
    goto LABEL_35;
  }

  if (error)
  {
    goto LABEL_26;
  }

  _tdNetwork = [(CWFJITTDImpactEstimator *)self _tdNetwork];

  if (!_tdNetwork)
  {
    selfCopy5 = self;
    v31 = CWFGetOSLog();
    if (v31)
    {
      v29 = CWFGetOSLog();
    }

    else
    {
      v29 = MEMORY[0x1E69E9C10];
      v35 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v49 = 136446722;
      v50 = "[CWFJITTDImpactEstimator notifyScanResult:withError:]";
      v51 = 2082;
      v52 = "CWFJITTDImpactEstimator.m";
      v53 = 1024;
      v54 = 464;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v29, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid TD network\n", &v49, 28);
    }

    goto LABEL_34;
  }

  if (!resultCopy)
  {
    selfCopy2 = self;
    v33 = CWFGetOSLog();
    if (v33)
    {
      v34 = CWFGetOSLog();
    }

    else
    {
      v34 = MEMORY[0x1E69E9C10];
      v36 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v49 = 136446722;
      v50 = "[CWFJITTDImpactEstimator notifyScanResult:withError:]";
      v51 = 2082;
      v52 = "CWFJITTDImpactEstimator.m";
      v53 = 1024;
      v54 = 469;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v34, 16, "[corewifi] %{public}s (%{public}s:%u) No scan result\n", &v49, 28);
    }

    selfCopy4 = selfCopy2;
LABEL_27:
    [(CWFJITTDImpactEstimator *)selfCopy4 setupPeriodicTimerForScan];
    goto LABEL_35;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = resultCopy;
  v9 = [v8 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!v9)
  {

    goto LABEL_29;
  }

  v10 = v9;
  v37 = resultCopy;
  v38 = 0;
  v11 = *v45;
  v12 = v8;
  selfCopy3 = self;
  v40 = v8;
  v42 = *v45;
  do
  {
    v13 = 0;
    v43 = v10;
    do
    {
      if (*v45 != v11)
      {
        objc_enumerationMutation(v12);
      }

      v14 = *(*(&v44 + 1) + 8 * v13);
      _tdNetwork2 = [(CWFJITTDImpactEstimator *)self _tdNetwork];
      sSID = [_tdNetwork2 SSID];
      if (!sSID)
      {
        goto LABEL_19;
      }

      v17 = sSID;
      sSID2 = [v14 SSID];
      if (!sSID2)
      {

LABEL_19:
        goto LABEL_23;
      }

      v19 = sSID2;
      _tdNetwork3 = [(CWFJITTDImpactEstimator *)self _tdNetwork];
      sSID3 = [_tdNetwork3 SSID];
      sSID4 = [v14 SSID];
      if (![sSID3 isEqual:sSID4])
      {

LABEL_22:
        v11 = v42;
        v10 = v43;
        goto LABEL_23;
      }

      _tdNetwork4 = [(CWFJITTDImpactEstimator *)self _tdNetwork];
      supportedSecurityTypes = [_tdNetwork4 supportedSecurityTypes];
      if (([v14 supportedSecurityTypes] & supportedSecurityTypes) == 0)
      {

        self = selfCopy3;
        v12 = v40;
        goto LABEL_22;
      }

      rSSI = [v14 RSSI];
      _rssi = [(CWFJITTDImpactEstimator *)selfCopy3 _rssi];

      v11 = v42;
      self = selfCopy3;
      v12 = v40;
      v10 = v43;
      if (rSSI > _rssi)
      {
        if ([(CWFJITTDImpactEstimator *)selfCopy3 _activity]== 1)
        {
          [(CWFJITTDImpactEstimator *)selfCopy3 gatherCellularDataUsageSoFar:0];
        }

        v38 = 1;
      }

LABEL_23:
      ++v13;
    }

    while (v10 != v13);
    v10 = [v12 countByEnumeratingWithState:&v44 objects:v48 count:16];
  }

  while (v10);

  resultCopy = v37;
  if (v38)
  {
LABEL_26:
    selfCopy4 = self;
    goto LABEL_27;
  }

LABEL_29:
  selfCopy5 = self;
  v28 = CWFGetOSLog();
  if (v28)
  {
    v29 = CWFGetOSLog();
  }

  else
  {
    v29 = MEMORY[0x1E69E9C10];
    v30 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v49 = 136446722;
    v50 = "[CWFJITTDImpactEstimator notifyScanResult:withError:]";
    v51 = 2082;
    v52 = "CWFJITTDImpactEstimator.m";
    v53 = 1024;
    v54 = 485;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v29, 16, "[corewifi] %{public}s (%{public}s:%u) Not in link vicinity anymore\n", &v49, 28);
  }

LABEL_34:

  [(CWFJITTDImpactEstimator *)selfCopy5 stopAccounting];
LABEL_35:
}

- (BOOL)canSubmitToCA:(id)a
{
  if (!a)
  {
    return 1;
  }

  v3 = MEMORY[0x1E695DF00];
  aCopy = a;
  date = [v3 date];
  [date timeIntervalSinceDate:aCopy];
  v7 = v6;

  v8 = v7 > 86400.0;
  return v8;
}

- (id)twoSigFig:(unint64_t)fig
{
  if (fig)
  {
    figCopy = fig;
    v5 = log10(fig);
    v6 = __exp10(floor(v5) + -1.0);
    fig = (figCopy / v6) * v6;
    v3 = vars8;
  }

  v7 = MEMORY[0x1E696AD98];

  return [v7 numberWithUnsignedInteger:fig];
}

- (void)postCellularDataUsageAccoutingPostTD:(id)d
{
  v44 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_1E0BC2CD4;
  v34 = sub_1E0BC61B4;
  v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (dCopy)
  {
    if (objc_opt_class())
    {
      v5 = [dCopy objectForKeyedSubscript:@"impactTimeIns"];
      [v31[5] setObject:v5 forKeyedSubscript:@"TotalTime_s"];

      v6 = [dCopy objectForKeyedSubscript:@"CellularDataOutPackets"];
      v7 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v6 unsignedIntValue]);
      [v31[5] setObject:v7 forKeyedSubscript:@"TotalTxPackets"];

      v8 = [dCopy objectForKeyedSubscript:@"CellularDataInPackets"];
      v9 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v8 unsignedIntValue]);
      [v31[5] setObject:v9 forKeyedSubscript:@"TotalRxPackets"];

      v10 = [dCopy objectForKeyedSubscript:@"CellularDataOutBytes"];
      v11 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v10 unsignedIntValue]);
      [v31[5] setObject:v11 forKeyedSubscript:@"TotalTx_Bytes"];

      v12 = [dCopy objectForKeyedSubscript:@"CellularDataInBytes"];
      v13 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v12 unsignedIntValue]);
      [v31[5] setObject:v13 forKeyedSubscript:@"TotalRx_Bytes"];

      v14 = [dCopy objectForKeyedSubscript:@"CellularDataOutPackets"];
      unsignedIntValue = [v14 unsignedIntValue];
      v16 = [dCopy objectForKeyedSubscript:@"CellularDataInPackets"];
      v17 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v16 unsignedIntValue] + unsignedIntValue);
      [v31[5] setObject:v17 forKeyedSubscript:@"TotalPackets"];

      v18 = [dCopy objectForKeyedSubscript:@"CellularDataOutBytes"];
      LODWORD(v17) = [v18 unsignedIntValue];
      v19 = [dCopy objectForKeyedSubscript:@"CellularDataInBytes"];
      v20 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v19 unsignedIntValue] + v17);
      [v31[5] setObject:v20 forKeyedSubscript:@"TotalData_Bytes"];

      AnalyticsSendEventLazy();
      v21 = CWFGetOSLog();
      if (v21)
      {
        v22 = CWFGetOSLog();
      }

      else
      {
        v22 = MEMORY[0x1E69E9C10];
        v23 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v31[5];
        v36 = 136446978;
        v37 = "[CWFJITTDImpactEstimator postCellularDataUsageAccoutingPostTD:]";
        v38 = 2082;
        v39 = "CWFJITTDImpactEstimator.m";
        v40 = 1024;
        v41 = 553;
        v42 = 2112;
        v43 = v24;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v22, 0, "[corewifi] %{public}s (%{public}s:%u) Posting cellular data post TD[%@]", &v36, 38);
      }

      date = [MEMORY[0x1E695DF00] date];
      [(CWFJITTDImpactEstimator *)self set_lastSubmissionTimePostTD:date];
    }

    else
    {
      v27 = CWFGetOSLog();
      if (v27)
      {
        date = CWFGetOSLog();
      }

      else
      {
        date = MEMORY[0x1E69E9C10];
        v29 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
      {
        v36 = 136446722;
        v37 = "[CWFJITTDImpactEstimator postCellularDataUsageAccoutingPostTD:]";
        v38 = 2082;
        v39 = "CWFJITTDImpactEstimator.m";
        v40 = 1024;
        v41 = 530;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, date, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid analytics library\n", &v36, 28);
      }
    }
  }

  else
  {
    v26 = CWFGetOSLog();
    if (v26)
    {
      date = CWFGetOSLog();
    }

    else
    {
      date = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
    {
      v36 = 136446722;
      v37 = "[CWFJITTDImpactEstimator postCellularDataUsageAccoutingPostTD:]";
      v38 = 2082;
      v39 = "CWFJITTDImpactEstimator.m";
      v40 = 1024;
      v41 = 526;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, date, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid data stats dictionary\n", &v36, 28);
    }
  }

  _Block_object_dispose(&v30, 8);
}

- (void)postCellularDataUsageAccountingPreAJ:(id)j
{
  v70 = *MEMORY[0x1E69E9840];
  jCopy = j;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_1E0BC2CD4;
  v60 = sub_1E0BC61B4;
  v61 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (jCopy)
  {
    if (objc_opt_class())
    {
      v5 = [jCopy objectForKeyedSubscript:@"impactTimeIns"];
      [v57[5] setObject:v5 forKeyedSubscript:@"TotalTime_s"];

      v6 = [jCopy objectForKeyedSubscript:@"CellularDataOutPackets"];
      v7 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v6 unsignedIntValue]);
      [v57[5] setObject:v7 forKeyedSubscript:@"TotalTxPackets"];

      v8 = [jCopy objectForKeyedSubscript:@"CellularDataInPackets"];
      v9 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v8 unsignedIntValue]);
      [v57[5] setObject:v9 forKeyedSubscript:@"TotalRxPackets"];

      v10 = [jCopy objectForKeyedSubscript:@"CellularDataOutBytes"];
      v11 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v10 unsignedIntValue]);
      [v57[5] setObject:v11 forKeyedSubscript:@"TotalTx_Bytes"];

      v12 = [jCopy objectForKeyedSubscript:@"CellularDataInBytes"];
      v13 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v12 unsignedIntValue]);
      [v57[5] setObject:v13 forKeyedSubscript:@"TotalRx_Bytes"];

      v14 = [jCopy objectForKeyedSubscript:@"CellularDataOutPackets"];
      unsignedIntValue = [v14 unsignedIntValue];
      v16 = [jCopy objectForKeyedSubscript:@"CellularDataInPackets"];
      v17 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v16 unsignedIntValue] + unsignedIntValue);
      [v57[5] setObject:v17 forKeyedSubscript:@"TotalPackets"];

      v18 = [jCopy objectForKeyedSubscript:@"CellularDataOutBytes"];
      LODWORD(v17) = [v18 unsignedIntValue];
      v19 = [jCopy objectForKeyedSubscript:@"CellularDataInBytes"];
      v20 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v19 unsignedIntValue] + v17);
      [v57[5] setObject:v20 forKeyedSubscript:@"TotalData_Bytes"];

      _cellularDataUsageInLegacyBoundary = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
      LOBYTE(v18) = _cellularDataUsageInLegacyBoundary == 0;

      if ((v18 & 1) == 0)
      {
        _cellularDataUsageInLegacyBoundary2 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
        v23 = [_cellularDataUsageInLegacyBoundary2 objectForKeyedSubscript:@"impactTimeIns"];
        [v57[5] setObject:v23 forKeyedSubscript:@"TotalTimeLegacy_s"];

        _cellularDataUsageInLegacyBoundary3 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
        v25 = [_cellularDataUsageInLegacyBoundary3 objectForKeyedSubscript:@"CellularDataOutPackets"];
        v26 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v25 unsignedIntValue]);
        [v57[5] setObject:v26 forKeyedSubscript:@"TotalTxLegacyPackets"];

        _cellularDataUsageInLegacyBoundary4 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
        v28 = [_cellularDataUsageInLegacyBoundary4 objectForKeyedSubscript:@"CellularDataInPackets"];
        v29 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v28 unsignedIntValue]);
        [v57[5] setObject:v29 forKeyedSubscript:@"TotalRxLegacyPackets"];

        _cellularDataUsageInLegacyBoundary5 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
        v31 = [_cellularDataUsageInLegacyBoundary5 objectForKeyedSubscript:@"CellularDataOutBytes"];
        v32 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v31 unsignedIntValue]);
        [v57[5] setObject:v32 forKeyedSubscript:@"TotalTxLegacy_Bytes"];

        _cellularDataUsageInLegacyBoundary6 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
        v34 = [_cellularDataUsageInLegacyBoundary6 objectForKeyedSubscript:@"CellularDataInBytes"];
        v35 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v34 unsignedIntValue]);
        [v57[5] setObject:v35 forKeyedSubscript:@"TotalRxLegacy_Bytes"];

        _cellularDataUsageInLegacyBoundary7 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
        v37 = [_cellularDataUsageInLegacyBoundary7 objectForKeyedSubscript:@"CellularDataOutPackets"];
        unsignedIntValue2 = [v37 unsignedIntValue];
        _cellularDataUsageInLegacyBoundary8 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
        v40 = [_cellularDataUsageInLegacyBoundary8 objectForKeyedSubscript:@"CellularDataInPackets"];
        v41 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v40 unsignedIntValue] + unsignedIntValue2);
        [v57[5] setObject:v41 forKeyedSubscript:@"TotalLegacyPackets"];

        _cellularDataUsageInLegacyBoundary9 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
        v43 = [_cellularDataUsageInLegacyBoundary9 objectForKeyedSubscript:@"CellularDataOutBytes"];
        LODWORD(v41) = [v43 unsignedIntValue];
        _cellularDataUsageInLegacyBoundary10 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
        v45 = [_cellularDataUsageInLegacyBoundary10 objectForKeyedSubscript:@"CellularDataInBytes"];
        v46 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v45 unsignedIntValue] + v41);
        [v57[5] setObject:v46 forKeyedSubscript:@"TotalDataLegacy_Bytes"];
      }

      AnalyticsSendEventLazy();
      v47 = CWFGetOSLog();
      if (v47)
      {
        v48 = CWFGetOSLog();
      }

      else
      {
        v48 = MEMORY[0x1E69E9C10];
        v49 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v50 = v57[5];
        v62 = 136446978;
        v63 = "[CWFJITTDImpactEstimator postCellularDataUsageAccountingPreAJ:]";
        v64 = 2082;
        v65 = "CWFJITTDImpactEstimator.m";
        v66 = 1024;
        v67 = 610;
        v68 = 2112;
        v69 = v50;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v48, 0, "[corewifi] %{public}s (%{public}s:%u) Posting cellular data pre AJ[%@]", &v62, 38);
      }

      date = [MEMORY[0x1E695DF00] date];
      [(CWFJITTDImpactEstimator *)self set_lastSubmissionTimePreAJ:date];
    }

    else
    {
      v53 = CWFGetOSLog();
      if (v53)
      {
        date = CWFGetOSLog();
      }

      else
      {
        date = MEMORY[0x1E69E9C10];
        v55 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
      {
        v62 = 136446722;
        v63 = "[CWFJITTDImpactEstimator postCellularDataUsageAccountingPreAJ:]";
        v64 = 2082;
        v65 = "CWFJITTDImpactEstimator.m";
        v66 = 1024;
        v67 = 569;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, date, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid analytics library\n", &v62, 28);
      }
    }
  }

  else
  {
    v52 = CWFGetOSLog();
    if (v52)
    {
      date = CWFGetOSLog();
    }

    else
    {
      date = MEMORY[0x1E69E9C10];
      v54 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
    {
      v62 = 136446722;
      v63 = "[CWFJITTDImpactEstimator postCellularDataUsageAccountingPreAJ:]";
      v64 = 2082;
      v65 = "CWFJITTDImpactEstimator.m";
      v66 = 1024;
      v67 = 565;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, date, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid data stats dictionary\n", &v62, 28);
    }
  }

  _Block_object_dispose(&v56, 8);
}

- (void)setupPeriodicTimerForScan
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(CWFJITTDImpactEstimator *)self _activity]== 1)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceReferenceDate];
    v5 = v4;
    _startTime = [(CWFJITTDImpactEstimator *)self _startTime];
    [_startTime timeIntervalSinceReferenceDate];
    v8 = v5 - v7 + 30.0;
    _boundaryTime = [(CWFJITTDImpactEstimator *)self _boundaryTime];

    if (v8 >= _boundaryTime)
    {
      v13 = CWFGetOSLog();
      if (v13)
      {
        _periodicTimer = CWFGetOSLog();
      }

      else
      {
        _periodicTimer = MEMORY[0x1E69E9C10];
        v14 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(_periodicTimer, OS_LOG_TYPE_ERROR))
      {
        v15 = 136446722;
        v16 = "[CWFJITTDImpactEstimator setupPeriodicTimerForScan]";
        v17 = 2082;
        v18 = "CWFJITTDImpactEstimator.m";
        v19 = 1024;
        v20 = 626;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, _periodicTimer, 16, "[corewifi] %{public}s (%{public}s:%u) Time left is less than periodic time. Skipping timer re-arm for scan\n", &v15, 28);
      }
    }

    else
    {
      _boundaryTimer = [(CWFJITTDImpactEstimator *)self _boundaryTimer];
      dispatch_activate(_boundaryTimer);

      _periodicTimer = [(CWFJITTDImpactEstimator *)self _periodicTimer];
      v12 = dispatch_walltime(0, 30000000000);
      dispatch_source_set_timer(_periodicTimer, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }
}

- (void)storeCellularDataUsage:(id)usage
{
  usageCopy = usage;
  v5 = [usageCopy objectForKeyedSubscript:@"CellularDataInBytes"];
  [(CWFJITTDImpactEstimator *)self set_totalCellularInBytes:v5];

  v6 = [usageCopy objectForKeyedSubscript:@"CellularDataOutBytes"];
  [(CWFJITTDImpactEstimator *)self set_totalCellularOutBytes:v6];

  v7 = [usageCopy objectForKeyedSubscript:@"CellularDataInPackets"];
  [(CWFJITTDImpactEstimator *)self set_totalCellularInPackets:v7];

  v8 = [usageCopy objectForKeyedSubscript:@"CellularDataOutPackets"];

  [(CWFJITTDImpactEstimator *)self set_totalCellularOutPackets:v8];
  date = [MEMORY[0x1E695DF00] date];
  [(CWFJITTDImpactEstimator *)self set_startTime:date];
}

- (id)computeDataUsageInCurrentSession:(id)session
{
  v78 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  date = [MEMORY[0x1E695DF00] date];
  _totalCellularInBytes = [(CWFJITTDImpactEstimator *)self _totalCellularInBytes];
  unsignedIntValue = [_totalCellularInBytes unsignedIntValue];
  v9 = [sessionCopy objectForKeyedSubscript:@"CellularDataInBytes"];
  unsignedIntValue2 = [v9 unsignedIntValue];

  if (unsignedIntValue > unsignedIntValue2)
  {
    v58 = CWFGetOSLog();
    if (v58)
    {
      v59 = CWFGetOSLog();
    }

    else
    {
      v59 = MEMORY[0x1E69E9C10];
      v63 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    _totalCellularInBytes2 = [(CWFJITTDImpactEstimator *)self _totalCellularInBytes];
    v65 = [sessionCopy objectForKeyedSubscript:@"CellularDataInBytes"];
    *v69 = 136447234;
    *&v69[4] = "[CWFJITTDImpactEstimator computeDataUsageInCurrentSession:]";
    *&v69[12] = 2082;
    *&v69[14] = "CWFJITTDImpactEstimator.m";
    *&v69[22] = 1024;
    LODWORD(v70) = 654;
    WORD2(v70) = 2112;
    *(&v70 + 6) = _totalCellularInBytes2;
    HIWORD(v70) = 2112;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v59, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid data usage stats ignoring stored inBytes[%@], incoming inBytes[%@]\n", v69, 48, *v69, *&v69[8], v70, v65);
    goto LABEL_33;
  }

  _totalCellularOutBytes = [(CWFJITTDImpactEstimator *)self _totalCellularOutBytes];
  unsignedIntValue3 = [_totalCellularOutBytes unsignedIntValue];
  v13 = [sessionCopy objectForKeyedSubscript:@"CellularDataOutBytes"];
  unsignedIntValue4 = [v13 unsignedIntValue];

  if (unsignedIntValue3 > unsignedIntValue4)
  {
    v60 = CWFGetOSLog();
    if (v60)
    {
      v59 = CWFGetOSLog();
    }

    else
    {
      v59 = MEMORY[0x1E69E9C10];
      v66 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    _totalCellularInBytes2 = [(CWFJITTDImpactEstimator *)self _totalCellularOutBytes];
    v65 = [sessionCopy objectForKeyedSubscript:@"CellularDataOutBytes"];
    *v69 = 136447234;
    *&v69[4] = "[CWFJITTDImpactEstimator computeDataUsageInCurrentSession:]";
    *&v69[12] = 2082;
    *&v69[14] = "CWFJITTDImpactEstimator.m";
    *&v69[22] = 1024;
    LODWORD(v70) = 659;
    WORD2(v70) = 2112;
    *(&v70 + 6) = _totalCellularInBytes2;
    HIWORD(v70) = 2112;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v59, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid data usage stats ignoring stored outBytes[%@], incoming outBytes[%@]\n", v69, 48, *v69, *&v69[8], v70, v65);
    goto LABEL_33;
  }

  _totalCellularInPackets = [(CWFJITTDImpactEstimator *)self _totalCellularInPackets];
  unsignedIntValue5 = [_totalCellularInPackets unsignedIntValue];
  v17 = [sessionCopy objectForKeyedSubscript:@"CellularDataInPackets"];
  unsignedIntValue6 = [v17 unsignedIntValue];

  if (unsignedIntValue5 > unsignedIntValue6)
  {
    v61 = CWFGetOSLog();
    if (v61)
    {
      v59 = CWFGetOSLog();
    }

    else
    {
      v59 = MEMORY[0x1E69E9C10];
      v67 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    _totalCellularInBytes2 = [(CWFJITTDImpactEstimator *)self _totalCellularInPackets];
    v65 = [sessionCopy objectForKeyedSubscript:@"CellularDataInPackets"];
    *v69 = 136447234;
    *&v69[4] = "[CWFJITTDImpactEstimator computeDataUsageInCurrentSession:]";
    *&v69[12] = 2082;
    *&v69[14] = "CWFJITTDImpactEstimator.m";
    *&v69[22] = 1024;
    LODWORD(v70) = 664;
    WORD2(v70) = 2112;
    *(&v70 + 6) = _totalCellularInBytes2;
    HIWORD(v70) = 2112;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v59, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid data usage stats ignoring stored inPackets[%@], incoming inPackets[%@]\n", v69, 48, *v69, *&v69[8], v70, v65);
    goto LABEL_33;
  }

  _totalCellularOutPackets = [(CWFJITTDImpactEstimator *)self _totalCellularOutPackets];
  unsignedIntValue7 = [_totalCellularOutPackets unsignedIntValue];
  v21 = [sessionCopy objectForKeyedSubscript:@"CellularDataOutPackets"];
  unsignedIntValue8 = [v21 unsignedIntValue];

  if (unsignedIntValue7 > unsignedIntValue8)
  {
    v62 = CWFGetOSLog();
    if (v62)
    {
      v59 = CWFGetOSLog();
    }

    else
    {
      v59 = MEMORY[0x1E69E9C10];
      v68 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    _totalCellularInBytes2 = [(CWFJITTDImpactEstimator *)self _totalCellularOutPackets];
    v65 = [sessionCopy objectForKeyedSubscript:@"CellularDataOutPackets"];
    *v69 = 136447234;
    *&v69[4] = "[CWFJITTDImpactEstimator computeDataUsageInCurrentSession:]";
    *&v69[12] = 2082;
    *&v69[14] = "CWFJITTDImpactEstimator.m";
    *&v69[22] = 1024;
    LODWORD(v70) = 669;
    WORD2(v70) = 2112;
    *(&v70 + 6) = _totalCellularInBytes2;
    HIWORD(v70) = 2112;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v59, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid data usage stats ignoring stored outPackets[%@], incoming outPackets[%@]\n", v69, 48, *v69, *&v69[8], v70, v65);
LABEL_33:

LABEL_34:
    v50 = v5;
    v5 = 0;
    goto LABEL_10;
  }

  v23 = objc_alloc(MEMORY[0x1E696AD98]);
  v24 = [sessionCopy objectForKeyedSubscript:@"CellularDataInBytes"];
  unsignedIntValue9 = [v24 unsignedIntValue];
  _totalCellularInBytes3 = [(CWFJITTDImpactEstimator *)self _totalCellularInBytes];
  v27 = [v23 initWithUnsignedInt:{unsignedIntValue9 - objc_msgSend(_totalCellularInBytes3, "unsignedIntValue")}];
  [v5 setObject:v27 forKeyedSubscript:@"CellularDataInBytes"];

  v28 = objc_alloc(MEMORY[0x1E696AD98]);
  v29 = [sessionCopy objectForKeyedSubscript:@"CellularDataOutBytes"];
  unsignedIntValue10 = [v29 unsignedIntValue];
  _totalCellularOutBytes2 = [(CWFJITTDImpactEstimator *)self _totalCellularOutBytes];
  v32 = [v28 initWithUnsignedInt:{unsignedIntValue10 - objc_msgSend(_totalCellularOutBytes2, "unsignedIntValue")}];
  [v5 setObject:v32 forKeyedSubscript:@"CellularDataOutBytes"];

  v33 = objc_alloc(MEMORY[0x1E696AD98]);
  v34 = [sessionCopy objectForKeyedSubscript:@"CellularDataInPackets"];
  unsignedIntValue11 = [v34 unsignedIntValue];
  _totalCellularInPackets2 = [(CWFJITTDImpactEstimator *)self _totalCellularInPackets];
  v37 = [v33 initWithUnsignedInt:{unsignedIntValue11 - objc_msgSend(_totalCellularInPackets2, "unsignedIntValue")}];
  [v5 setObject:v37 forKeyedSubscript:@"CellularDataInPackets"];

  v38 = objc_alloc(MEMORY[0x1E696AD98]);
  v39 = [sessionCopy objectForKeyedSubscript:@"CellularDataOutPackets"];
  unsignedIntValue12 = [v39 unsignedIntValue];
  _totalCellularOutPackets2 = [(CWFJITTDImpactEstimator *)self _totalCellularOutPackets];
  v42 = [v38 initWithUnsignedInt:{unsignedIntValue12 - objc_msgSend(_totalCellularOutPackets2, "unsignedIntValue")}];
  [v5 setObject:v42 forKeyedSubscript:@"CellularDataOutPackets"];

  v43 = MEMORY[0x1E696AD98];
  [date timeIntervalSinceReferenceDate];
  v45 = v44;
  _startTime = [(CWFJITTDImpactEstimator *)self _startTime];
  [_startTime timeIntervalSinceReferenceDate];
  v48 = [v43 numberWithUnsignedInteger:(v45 - v47)];
  [v5 setObject:v48 forKeyedSubscript:@"impactTimeIns"];

  v49 = CWFGetOSLog();
  if (v49)
  {
    v50 = CWFGetOSLog();
  }

  else
  {
    v50 = MEMORY[0x1E69E9C10];
    v51 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v52 = [v5 objectForKeyedSubscript:@"CellularDataInBytes"];
    v53 = [v5 objectForKeyedSubscript:@"CellularDataOutBytes"];
    v54 = [v5 objectForKeyedSubscript:@"CellularDataInPackets"];
    v55 = [v5 objectForKeyedSubscript:@"CellularDataOutPackets"];
    v56 = [v5 objectForKeyedSubscript:@"impactTimeIns"];
    *v69 = 136448002;
    *&v69[4] = "[CWFJITTDImpactEstimator computeDataUsageInCurrentSession:]";
    *&v69[12] = 2082;
    *&v69[14] = "CWFJITTDImpactEstimator.m";
    *&v69[22] = 1024;
    LODWORD(v70) = 679;
    WORD2(v70) = 2112;
    *(&v70 + 6) = v52;
    HIWORD(v70) = 2112;
    v71 = v53;
    v72 = 2112;
    v73 = v54;
    v74 = 2112;
    v75 = v55;
    v76 = 2112;
    v77 = v56;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v50, 0, "[corewifi] %{public}s (%{public}s:%u) Total data usage in this session inBytes[%@] outBytes[%@] inPackets[%@] outPackets[%@] time[%@]", v69, 78);
  }

LABEL_10:

  return v5;
}

- (void)stopAccounting
{
  [(CWFJITTDImpactEstimator *)self cancelPeriodicTimer];
  [(CWFJITTDImpactEstimator *)self cancelBoundaryTimer];
  if ([(CWFJITTDImpactEstimator *)self _activity]== 2)
  {
    [(CWFJITTDImpactEstimator *)self stopCellularDataUsageAccountingDelayedAJ];
  }

  if ([(CWFJITTDImpactEstimator *)self _activity]== 1)
  {
    [(CWFJITTDImpactEstimator *)self gatherCellularDataUsageSoFar:0];

    [(CWFJITTDImpactEstimator *)self stopCellularDataUsageAccountingPostTD];
  }
}

- (void)issueFullBandScan
{
  v24 = *MEMORY[0x1E69E9840];
  [(CWFJITTDImpactEstimator *)self cancelPeriodicTimer];
  v3 = objc_alloc_init(CWFScanParameters);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _tdNetwork = [(CWFJITTDImpactEstimator *)self _tdNetwork];

  if (!_tdNetwork)
  {
    v14 = CWFGetOSLog();
    if (v14)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v22 = 136446722;
      *&v22[4] = "[CWFJITTDImpactEstimator issueFullBandScan]";
      *&v22[12] = 2082;
      *&v22[14] = "CWFJITTDImpactEstimator.m";
      *&v22[22] = 1024;
      *v23 = 705;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid tdNetworkRef\n", v22, 28, *v22, *&v22[8], *v23);
    }

    goto LABEL_23;
  }

  _tdNetwork2 = [(CWFJITTDImpactEstimator *)self _tdNetwork];
  networkName = [_tdNetwork2 networkName];

  if (!networkName)
  {
    v16 = CWFGetOSLog();
    if (v16)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      _tdNetwork3 = [(CWFJITTDImpactEstimator *)self _tdNetwork];
      *v22 = 136446978;
      *&v22[4] = "[CWFJITTDImpactEstimator issueFullBandScan]";
      *&v22[12] = 2082;
      *&v22[14] = "CWFJITTDImpactEstimator.m";
      *&v22[22] = 1024;
      *v23 = 710;
      *&v23[4] = 2112;
      *&v23[6] = _tdNetwork3;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid tdNetwork SSID[%@]\n", v22, 38);
    }

    goto LABEL_23;
  }

  scanForNetworkHandler = [(CWFJITTDImpactEstimator *)self scanForNetworkHandler];

  if (!scanForNetworkHandler)
  {
    v17 = CWFGetOSLog();
    if (v17)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v22 = 136446722;
      *&v22[4] = "[CWFJITTDImpactEstimator issueFullBandScan]";
      *&v22[12] = 2082;
      *&v22[14] = "CWFJITTDImpactEstimator.m";
      *&v22[22] = 1024;
      *v23 = 715;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 16, "[corewifi] %{public}s (%{public}s:%u) Invalid scanForNetworkHandler ref\n", v22, 28, *v22, *&v22[8], *v23);
    }

LABEL_23:

    [(CWFJITTDImpactEstimator *)self stopCellularDataUsageAccountingPostTD];
    goto LABEL_7;
  }

  _tdNetwork4 = [(CWFJITTDImpactEstimator *)self _tdNetwork];
  networkName2 = [_tdNetwork4 networkName];

  if (networkName2)
  {
    _tdNetwork5 = [(CWFJITTDImpactEstimator *)self _tdNetwork];
    networkName3 = [_tdNetwork5 networkName];
    [v4 addObject:networkName3];
  }

  [(CWFScanParameters *)v3 setScanType:1];
  [(CWFScanParameters *)v3 setBSSType:3];
  [(CWFScanParameters *)v3 setPHYMode:1];
  [(CWFScanParameters *)v3 setNumberOfScans:1];
  [(CWFScanParameters *)v3 setIncludeHiddenNetworks:1];
  [(CWFScanParameters *)v3 setChannels:0];
  [(CWFScanParameters *)v3 setScanFlags:2592];
  [(CWFScanParameters *)v3 setSSIDList:v4];
  scanForNetworkHandler2 = [(CWFJITTDImpactEstimator *)self scanForNetworkHandler];
  (scanForNetworkHandler2)[2](scanForNetworkHandler2, v3);

LABEL_7:
}

- (void)cancelBoundaryTimer
{
  _boundaryTimer = [(CWFJITTDImpactEstimator *)self _boundaryTimer];
  dispatch_source_set_timer(_boundaryTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)cancelPeriodicTimer
{
  _periodicTimer = [(CWFJITTDImpactEstimator *)self _periodicTimer];
  dispatch_source_set_timer(_periodicTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)resetStores
{
  [(CWFJITTDImpactEstimator *)self set_rssi:0];
  [(CWFJITTDImpactEstimator *)self set_startTime:0];
  [(CWFJITTDImpactEstimator *)self set_tdNetwork:0];
  [(CWFJITTDImpactEstimator *)self set_boundaryTime:0];
  [(CWFJITTDImpactEstimator *)self cancelPeriodicTimer];
  [(CWFJITTDImpactEstimator *)self cancelBoundaryTimer];
  [(CWFJITTDImpactEstimator *)self set_totalCellularInBytes:0];
  [(CWFJITTDImpactEstimator *)self set_totalCellularOutBytes:0];
  [(CWFJITTDImpactEstimator *)self set_totalCellularInPackets:0];
  [(CWFJITTDImpactEstimator *)self set_totalCellularOutPackets:0];
  [(CWFJITTDImpactEstimator *)self set_activity:0];
  [(CWFJITTDImpactEstimator *)self set_legacyAccountingComplete:0];
  [(CWFJITTDImpactEstimator *)self set_cellularDataUsageInLegacyBoundary:0];

  [(CWFJITTDImpactEstimator *)self set_previousCellularDataUsageInPostTD:0];
}

@end