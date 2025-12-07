@interface CWFAssetPowerTableElector
+ (id)powerTableEvaluationStateAsString:(int64_t)string;
+ (int64_t)powerTableEvaluationStringToState:(id)state;
- (BOOL)isSessionCurrentlyBlocking;
- (BOOL)removePersistedKey:(id)key;
- (BOOL)waitForInterfaceAdded:(id)added;
- (CWFAssetPowerTableElector)initWithNotificationCenter:(id)center;
- (CWFAssetPowerTableElectorDelegate)delegate;
- (id)description;
- (id)getPersistedDict;
- (id)getPersistedKey:(id)key;
- (id)getSession:(id)session;
- (id)getSession:(id)session forKey:(id)key;
- (id)performPowerTableVersionRequestWithDeadline:(id)deadline;
- (void)_handleCENPowerTableEvaluationNotification:(id)notification;
- (void)checkForExistingSessionAndRecover;
- (void)dealloc;
- (void)dispatchWaitForInterfaceAddedThenBlockify:(id)blockify completion:(id)completion;
- (void)handleCENPowerTableEvaluationNotification:(id)notification;
- (void)handleCENPowerTableEvaluationStateAborted:(id)aborted;
- (void)handleCENPowerTableEvaluationStateAccepted:(id)accepted;
- (void)handleCENPowerTableEvaluationStateRejected:(id)rejected;
- (void)handleCENPowerTableEvaluationStateRequestingReadiness:(id)readiness dueInterval:(double)interval;
- (void)handleCENPowerTableEvaluationStateRequestingVotes:(id)votes dueInterval:(double)interval;
- (void)handleCENPowerTableEvaluationStateStarting:(id)starting;
- (void)handleCENPowerTableEvaluationStateUninitialized;
- (void)performVersionFetchBlockify:(id)blockify;
- (void)persist:(id)persist forKey:(id)key;
- (void)persistSession:(id)session data:(id)data forKey:(id)key;
- (void)powerTableReadiness:(BOOL)readiness;
- (void)powerTableVote:(BOOL)vote;
- (void)processTransitionToTerminalState:(id)state;
- (void)setupInterfaceAddedAndDriverAvailMonitor;
- (void)waitForPowerTableBootedThenVoteInBlock:(id)block completion:(id)completion;
@end

@implementation CWFAssetPowerTableElector

- (CWFAssetPowerTableElector)initWithNotificationCenter:(id)center
{
  v30 = *MEMORY[0x1E69E9840];
  centerCopy = center;
  v23.receiver = self;
  v23.super_class = CWFAssetPowerTableElector;
  v5 = [(CWFAssetPowerTableElector *)&v23 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.wifi.CWFAssetPowerTableElector", 0);
    [(CWFAssetPowerTableElector *)v5 set_coordinationQueue:v6];

    _coordinationQueue = [(CWFAssetPowerTableElector *)v5 _coordinationQueue];

    if (_coordinationQueue)
    {
      v8 = dispatch_queue_create("com.apple.wifi.CWFAssetPowerTableWorker", MEMORY[0x1E69E96A8]);
      [(CWFAssetPowerTableElector *)v5 set_apiQueue:v8];

      _apiQueue = [(CWFAssetPowerTableElector *)v5 _apiQueue];

      if (_apiQueue)
      {
        v10 = dispatch_queue_create("com.apple.wifi.PowerTableSignalQueue", 0);
        [(CWFAssetPowerTableElector *)v5 set_signalQueue:v10];

        _signalQueue = [(CWFAssetPowerTableElector *)v5 _signalQueue];

        if (_signalQueue)
        {
          v12 = dispatch_queue_create("com.apple.wifi.PowerTableWaitingQueue", 0);
          [(CWFAssetPowerTableElector *)v5 set_waitingQueue:v12];

          _waitingQueue = [(CWFAssetPowerTableElector *)v5 _waitingQueue];

          if (_waitingQueue)
          {
            v14 = MGCopyAnswer();
            -[CWFAssetPowerTableElector set_isInternalBuild:](v5, "set_isInternalBuild:", [v14 BOOLValue]);

            processInfo = [MEMORY[0x1E696AE30] processInfo];
            -[CWFAssetPowerTableElector set_pid:](v5, "set_pid:", [processInfo processIdentifier]);

            [(CWFAssetPowerTableElector *)v5 set_readinessTimeoutInterval:*MEMORY[0x1E6993C00]];
            [(CWFAssetPowerTableElector *)v5 set_votingTimeoutInterval:*MEMORY[0x1E6993C18]];
            [(CWFAssetPowerTableElector *)v5 set_maxSessionActiveInterval:600.0];
            [(CWFAssetPowerTableElector *)v5 set_dateToBlockWaitingForDriverReload:30.0];
            [(CWFAssetPowerTableElector *)v5 set_powerTableEvaluationState:0];
            [(CWFAssetPowerTableElector *)v5 checkForExistingSessionAndRecover];
            if (centerCopy)
            {
              [(CWFAssetPowerTableElector *)v5 set_notificationCenter:centerCopy];
              [(CWFAssetPowerTableElector *)v5 _notificationCenter];
            }

            else
            {
              defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
              [(CWFAssetPowerTableElector *)v5 set_distNotificationCenter:defaultCenter];

              [(CWFAssetPowerTableElector *)v5 _distNotificationCenter];
            }
            v17 = ;
            [v17 addObserver:v5 selector:sel_handleCENPowerTableEvaluationNotification_ name:*MEMORY[0x1E6993BF0] object:0];

            v18 = CWFGetOTAOSLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              v25 = "[CWFAssetPowerTableElector initWithNotificationCenter:]";
              v26 = 1024;
              v27 = 123;
              v28 = 2080;
              v29 = "[CWFAssetPowerTableElector initWithNotificationCenter:]";
              _os_log_impl(&dword_1E0BBF000, v18, OS_LOG_TYPE_DEBUG, "%{public}s::%d:%s: init complete", buf, 0x1Cu);
            }

            goto LABEL_12;
          }

          v21 = CWFGetOTAOSLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v25 = "[CWFAssetPowerTableElector initWithNotificationCenter:]";
            v26 = 1024;
            v27 = 99;
            v28 = 2080;
            v29 = "[CWFAssetPowerTableElector initWithNotificationCenter:]";
            v22 = "%{public}s::%d:%s: Failed to alloc _waitingQueue";
            goto LABEL_22;
          }

LABEL_23:

          v19 = 0;
          goto LABEL_13;
        }

        v21 = CWFGetOTAOSLog();
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        *buf = 136446722;
        v25 = "[CWFAssetPowerTableElector initWithNotificationCenter:]";
        v26 = 1024;
        v27 = 96;
        v28 = 2080;
        v29 = "[CWFAssetPowerTableElector initWithNotificationCenter:]";
        v22 = "%{public}s::%d:%s: Failed to alloc _signalQueue";
      }

      else
      {
        v21 = CWFGetOTAOSLog();
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        *buf = 136446722;
        v25 = "[CWFAssetPowerTableElector initWithNotificationCenter:]";
        v26 = 1024;
        v27 = 93;
        v28 = 2080;
        v29 = "[CWFAssetPowerTableElector initWithNotificationCenter:]";
        v22 = "%{public}s::%d:%s: Failed to alloc _apiQueue";
      }
    }

    else
    {
      v21 = CWFGetOTAOSLog();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      *buf = 136446722;
      v25 = "[CWFAssetPowerTableElector initWithNotificationCenter:]";
      v26 = 1024;
      v27 = 90;
      v28 = 2080;
      v29 = "[CWFAssetPowerTableElector initWithNotificationCenter:]";
      v22 = "%{public}s::%d:%s: Failed to alloc _coordinationQueue";
    }

LABEL_22:
    _os_log_impl(&dword_1E0BBF000, v21, OS_LOG_TYPE_ERROR, v22, buf, 0x1Cu);
    goto LABEL_23;
  }

LABEL_12:
  v19 = v5;
LABEL_13:

  return v19;
}

- (void)dealloc
{
  _notificationCenter = [(CWFAssetPowerTableElector *)self _notificationCenter];

  if (_notificationCenter)
  {
    _notificationCenter2 = [(CWFAssetPowerTableElector *)self _notificationCenter];
    [_notificationCenter2 removeObserver:self];
  }

  _distNotificationCenter = [(CWFAssetPowerTableElector *)self _distNotificationCenter];

  if (_distNotificationCenter)
  {
    _distNotificationCenter2 = [(CWFAssetPowerTableElector *)self _distNotificationCenter];
    [_distNotificationCenter2 removeObserver:self];
  }

  v7.receiver = self;
  v7.super_class = CWFAssetPowerTableElector;
  [(CWFAssetPowerTableElector *)&v7 dealloc];
}

- (void)persist:(id)persist forKey:(id)key
{
  v16 = *MEMORY[0x1E69E9840];
  persistCopy = persist;
  keyCopy = key;
  if (keyCopy)
  {
    getPersistedDict = [(CWFAssetPowerTableElector *)self getPersistedDict];
    if (!getPersistedDict)
    {
      getPersistedDict = [MEMORY[0x1E695DF90] dictionary];
    }

    [getPersistedDict setObject:persistCopy forKey:keyCopy];
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults setPersistentDomain:getPersistedDict forName:@"com.apple.wifi.powertable"];
  }

  else
  {
    getPersistedDict = CWFGetOTAOSLog();
    if (os_log_type_enabled(getPersistedDict, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "[CWFAssetPowerTableElector persist:forKey:]";
      v12 = 1024;
      v13 = 147;
      v14 = 2080;
      v15 = "[CWFAssetPowerTableElector persist:forKey:]";
      _os_log_impl(&dword_1E0BBF000, getPersistedDict, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: Failed access userDefaults", &v10, 0x1Cu);
    }
  }
}

- (void)persistSession:(id)session data:(id)data forKey:(id)key
{
  v31 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  dataCopy = data;
  selfCopy = self;
  keyCopy = key;
  getPersistedDict = [(CWFAssetPowerTableElector *)self getPersistedDict];
  v10 = MEMORY[0x1E695DF70];
  v11 = [getPersistedDict objectForKey:@"powertable-election-sessions-history"];
  array = [v10 arrayWithArray:v11];

  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = array;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
LABEL_5:
    v17 = 0;
    while (1)
    {
      if (*v27 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v26 + 1) + 8 * v17);
      v19 = [v18 objectForKeyedSubscript:@"session-id"];
      v20 = [sessionCopy isEqualToString:v19];

      if (v20)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v15)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    [v13 removeObject:v18];
    v21 = 0x1E695D000uLL;
    dictionary = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v18];

    if (dictionary)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_11:

    v21 = 0x1E695D000;
  }

  dictionary = [*(v21 + 3984) dictionary];
  [dictionary setObject:sessionCopy forKeyedSubscript:@"session-id"];
LABEL_14:
  [dictionary setObject:dataCopy forKeyedSubscript:keyCopy];
  [v13 addObject:dictionary];
  [(CWFAssetPowerTableElector *)selfCopy persist:v13 forKey:@"powertable-election-sessions-history"];
}

- (id)getPersistedDict
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults persistentDomainForName:@"com.apple.wifi.powertable"];

  return v3;
}

- (id)getPersistedKey:(id)key
{
  keyCopy = key;
  getPersistedDict = [(CWFAssetPowerTableElector *)self getPersistedDict];
  v6 = [getPersistedDict objectForKeyedSubscript:keyCopy];

  return v6;
}

- (BOOL)removePersistedKey:(id)key
{
  keyCopy = key;
  v5 = MEMORY[0x1E695DF90];
  getPersistedDict = [(CWFAssetPowerTableElector *)self getPersistedDict];
  v7 = [v5 dictionaryWithDictionary:getPersistedDict];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:keyCopy];
    v9 = v8 != 0;

    [v7 setObject:0 forKeyedSubscript:keyCopy];
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults setPersistentDomain:v7 forName:@"com.apple.wifi.powertable"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)getSession:(id)session forKey:(id)key
{
  keyCopy = key;
  v7 = [(CWFAssetPowerTableElector *)self getSession:session];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:keyCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)getSession:(id)session
{
  v24 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  getPersistedDict = [(CWFAssetPowerTableElector *)self getPersistedDict];
  v6 = [getPersistedDict objectForKey:@"powertable-election-sessions-history"];
  v7 = v6;
  if (v6)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v18 = getPersistedDict;
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:@"session-id"];
          v15 = [sessionCopy isEqualToString:v14];

          if (v15)
          {
            v16 = v13;
            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v16 = 0;
LABEL_12:
      getPersistedDict = v18;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)waitForPowerTableBootedThenVoteInBlock:(id)block completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  completionCopy = completion;
  [(CWFAssetPowerTableElector *)self _dateToBlockWaitingForDriverReload];
  v9 = [blockCopy dateByAddingTimeInterval:0.0 - v8];
  [(CWFAssetPowerTableElector *)self _dateToFetchReloadedPowerTableForVoteAssesment];
  v11 = [blockCopy dateByAddingTimeInterval:0.0 - v10];
  if (![(CWFAssetPowerTableElector *)self _readyToFetchLoadedPT])
  {
    v12 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v26 = 136446978;
      v27 = "[CWFAssetPowerTableElector waitForPowerTableBootedThenVoteInBlock:completion:]";
      v28 = 1024;
      v29 = 268;
      v30 = 2080;
      v31 = "[CWFAssetPowerTableElector waitForPowerTableBootedThenVoteInBlock:completion:]";
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_1E0BBF000, v12, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: _readyToFetchLoadedPT FALSE, will block waiting for _readyToFetchLoadedPTCondition until date: %@", &v26, 0x26u);
    }

    v13 = CWFGetOTAOSLog();
    if (os_signpost_enabled(v13))
    {
      LOWORD(v26) = 0;
      _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "wait _readyToFetchLoadedPTCondition", "", &v26, 2u);
    }

    _readyToFetchLoadedPTCondition = [(CWFAssetPowerTableElector *)self _readyToFetchLoadedPTCondition];
    [_readyToFetchLoadedPTCondition lock];

    while (![(CWFAssetPowerTableElector *)self _readyToFetchLoadedPT])
    {
      _readyToFetchLoadedPTCondition2 = [(CWFAssetPowerTableElector *)self _readyToFetchLoadedPTCondition];
      v16 = [_readyToFetchLoadedPTCondition2 waitUntilDate:v9];

      if ((v16 & 1) == 0)
      {
        v17 = CWFGetOTAOSLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 136446978;
          v27 = "[CWFAssetPowerTableElector waitForPowerTableBootedThenVoteInBlock:completion:]";
          v28 = 1024;
          v29 = 274;
          v30 = 2080;
          v31 = "[CWFAssetPowerTableElector waitForPowerTableBootedThenVoteInBlock:completion:]";
          v32 = 2112;
          v33 = blockCopy;
          _os_log_impl(&dword_1E0BBF000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Wait for _readyToFetchLoadedPTCondition timed out at date %@", &v26, 0x26u);
        }

        break;
      }
    }

    _readyToFetchLoadedPTCondition3 = [(CWFAssetPowerTableElector *)self _readyToFetchLoadedPTCondition];
    [_readyToFetchLoadedPTCondition3 unlock];

    v19 = CWFGetOTAOSLog();
    if (os_signpost_enabled(v19))
    {
      LOWORD(v26) = 0;
      _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "wait _readyToFetchLoadedPTCondition", "", &v26, 2u);
    }
  }

  if ([(CWFAssetPowerTableElector *)self _readyToFetchLoadedPT])
  {
    v20 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v26 = 136446978;
      v27 = "[CWFAssetPowerTableElector waitForPowerTableBootedThenVoteInBlock:completion:]";
      v28 = 1024;
      v29 = 283;
      v30 = 2080;
      v31 = "[CWFAssetPowerTableElector waitForPowerTableBootedThenVoteInBlock:completion:]";
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_1E0BBF000, v20, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: _readyToFetchLoadedPT TRUE, will fetch PT until date: %@", &v26, 0x26u);
    }

    v21 = [(CWFAssetPowerTableElector *)self performPowerTableVersionRequestWithDeadline:v11];
    allKeys = [v21 allKeys];
    v23 = [allKeys count];
    v24 = v23 != 0;

    if (!v23)
    {
      v25 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = 136446722;
        v27 = "[CWFAssetPowerTableElector waitForPowerTableBootedThenVoteInBlock:completion:]";
        v28 = 1024;
        v29 = 288;
        v30 = 2080;
        v31 = "[CWFAssetPowerTableElector waitForPowerTableBootedThenVoteInBlock:completion:]";
        _os_log_impl(&dword_1E0BBF000, v25, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: ERROR failed to retrieve current PT Version, setting voteResult = FALSE", &v26, 0x1Cu);
      }
    }
  }

  else
  {
    v24 = 0;
  }

  completionCopy[2](completionCopy, v24, 0);
}

- (void)dispatchWaitForInterfaceAddedThenBlockify:(id)blockify completion:(id)completion
{
  completionCopy = completion;
  blockifyCopy = blockify;
  [(CWFAssetPowerTableElector *)self _dateToBlockWaitingForDriverReload];
  v9 = [blockifyCopy dateByAddingTimeInterval:0.0 - v8];

  _waitingQueue = [(CWFAssetPowerTableElector *)self _waitingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C4CBFC;
  block[3] = &unk_1E86E6CA8;
  v14 = v9;
  selfCopy = self;
  v16 = completionCopy;
  v11 = completionCopy;
  v12 = v9;
  dispatch_async(_waitingQueue, block);
}

- (void)setupInterfaceAddedAndDriverAvailMonitor
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "setupInterfaceAddedAndDriverAvailMonitor", "", buf, 2u);
  }

  wifiInterface = [(CWFAssetPowerTableElector *)self wifiInterface];
  v5 = wifiInterface == 0;

  if (v5)
  {
    v6 = objc_alloc_init(CWFInterface);
    [(CWFAssetPowerTableElector *)self setWifiInterface:v6];

    wifiInterface2 = [(CWFAssetPowerTableElector *)self wifiInterface];
    [wifiInterface2 activate];
  }

  objc_initWeak(&location, self);
  wifiInterface3 = [(CWFAssetPowerTableElector *)self wifiInterface];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1E0C4D1C4;
  v22[3] = &unk_1E86E6F30;
  objc_copyWeak(&v23, &location);
  [wifiInterface3 setEventHandler:v22];

  wifiInterface4 = [(CWFAssetPowerTableElector *)self wifiInterface];
  v21 = 0;
  v10 = [wifiInterface4 startMonitoringEventType:10 error:&v21];
  v11 = v21;

  if (v10)
  {
    wifiInterface5 = [(CWFAssetPowerTableElector *)self wifiInterface];
    v20 = v11;
    v13 = [wifiInterface5 startMonitoringEventType:42 error:&v20];
    v14 = v20;

    if (v13)
    {
      v15 = CWFGetOTAOSLog();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:
        v11 = v14;
        goto LABEL_11;
      }

      *buf = 136446722;
      v26 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]";
      v27 = 1024;
      v28 = 406;
      v29 = 2080;
      v30 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]";
      v16 = "%{public}s::%d:%s: setupInterfaceAddedAndDriverAvailMonitor complete";
      v17 = v15;
      v18 = 28;
    }

    else
    {
      v15 = CWFGetOTAOSLog();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      *buf = 136446978;
      v26 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]";
      v27 = 1024;
      v28 = 403;
      v29 = 2080;
      v30 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]";
      v31 = 2114;
      v32 = v14;
      v16 = "%{public}s::%d:%s: Failed to start monitoring for CWFEventTypeDriverAvailable event; error %{public}@";
      v17 = v15;
      v18 = 38;
    }

    _os_log_impl(&dword_1E0BBF000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    goto LABEL_10;
  }

  v15 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v26 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]";
    v27 = 1024;
    v28 = 401;
    v29 = 2080;
    v30 = "[CWFAssetPowerTableElector setupInterfaceAddedAndDriverAvailMonitor]";
    v31 = 2114;
    v32 = v11;
    _os_log_impl(&dword_1E0BBF000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Failed to start monitoring for CWFEventTypeInterfaceAdded event; error %{public}@", buf, 0x26u);
  }

LABEL_11:

  v19 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "setupInterfaceAddedAndDriverAvailMonitor", "", buf, 2u);
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (BOOL)waitForInterfaceAdded:(id)added
{
  v31 = *MEMORY[0x1E69E9840];
  addedCopy = added;
  v5 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "waitForInterfaceAdded", "", &v22, 2u);
  }

  v6 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v6))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "wait _interfaceAddedEventCondition", "", &v22, 2u);
  }

  _interfaceAddedEventCondition = [(CWFAssetPowerTableElector *)self _interfaceAddedEventCondition];
  [_interfaceAddedEventCondition lock];

  while (![(CWFAssetPowerTableElector *)self _interfaceAddedEventOccurred])
  {
    _interfaceAddedEventCondition2 = [(CWFAssetPowerTableElector *)self _interfaceAddedEventCondition];
    v9 = [_interfaceAddedEventCondition2 waitUntilDate:addedCopy];

    if ((v9 & 1) == 0)
    {
      v10 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136446978;
        v23 = "[CWFAssetPowerTableElector waitForInterfaceAdded:]";
        v24 = 1024;
        v25 = 426;
        v26 = 2080;
        v27 = "[CWFAssetPowerTableElector waitForInterfaceAdded:]";
        v28 = 2112;
        *v29 = addedCopy;
        _os_log_impl(&dword_1E0BBF000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Wait for _condInterfaceAddedAfterEvaluationStart timed out at date %@", &v22, 0x26u);
      }

      break;
    }
  }

  _interfaceAddedEventOccurred = [(CWFAssetPowerTableElector *)self _interfaceAddedEventOccurred];
  v12 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    _interfaceAddedEventCondition3 = [(CWFAssetPowerTableElector *)self _interfaceAddedEventCondition];
    _interfaceAddedEventOccurred2 = [(CWFAssetPowerTableElector *)self _interfaceAddedEventOccurred];
    v22 = 136447234;
    v23 = "[CWFAssetPowerTableElector waitForInterfaceAdded:]";
    v24 = 1024;
    v25 = 431;
    v26 = 2080;
    v27 = "[CWFAssetPowerTableElector waitForInterfaceAdded:]";
    v28 = 2112;
    *v29 = _interfaceAddedEventCondition3;
    *&v29[8] = 1024;
    v30 = _interfaceAddedEventOccurred2;
    _os_log_impl(&dword_1E0BBF000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: _interfaceAddedEventCondition %@ or _interfaceAddedEventOccurred %d Done", &v22, 0x2Cu);
  }

  _interfaceAddedEventCondition4 = [(CWFAssetPowerTableElector *)self _interfaceAddedEventCondition];
  [_interfaceAddedEventCondition4 unlock];

  v16 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v16))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "wait _interfaceAddedEventCondition", "", &v22, 2u);
  }

  v17 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    _interfaceAddedEventOccurred3 = [(CWFAssetPowerTableElector *)self _interfaceAddedEventOccurred];
    _driverAvailEventOccurred = [(CWFAssetPowerTableElector *)self _driverAvailEventOccurred];
    v22 = 136447234;
    v23 = "[CWFAssetPowerTableElector waitForInterfaceAdded:]";
    v24 = 1024;
    v25 = 447;
    v26 = 2080;
    v27 = "[CWFAssetPowerTableElector waitForInterfaceAdded:]";
    v28 = 1024;
    *v29 = _interfaceAddedEventOccurred3;
    *&v29[4] = 1024;
    *&v29[6] = _driverAvailEventOccurred;
    _os_log_impl(&dword_1E0BBF000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: waitForInterfaceAdded completed _interfaceAddedEventOccurred %d _driverAvailEventOccurred %d", &v22, 0x28u);
  }

  v20 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v20))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "waitForInterfaceAdded", "", &v22, 2u);
  }

  return _interfaceAddedEventOccurred;
}

- (void)performVersionFetchBlockify:(id)blockify
{
  v14 = *MEMORY[0x1E69E9840];
  blockifyCopy = blockify;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "performVersionFetch", "", buf, 2u);
  }

  v7 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "[CWFAssetPowerTableElector performVersionFetchBlockify:]";
    *&buf[12] = 1024;
    *&buf[14] = 473;
    *&buf[18] = 2080;
    *&buf[20] = "[CWFAssetPowerTableElector performVersionFetchBlockify:]";
    _os_log_impl(&dword_1E0BBF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Calling performVersionFetch", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  delegate = [(CWFAssetPowerTableElector *)self delegate];
  v9 = [delegate performVersionFetch:dictionary];

  buf[24] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E0C4E358;
  v12[3] = &unk_1E86E6F08;
  v12[4] = buf;
  sub_1E0BF1DA8(@"override-ver-fetch-success", @"com.apple.wifi.powertable", v12);
  v10 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v10))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "performVersionFetch", "", v11, 2u);
  }

  (*(blockifyCopy + 2))(blockifyCopy, *(*&buf[8] + 24), dictionary, 0);
  _Block_object_dispose(buf, 8);
}

- (id)performPowerTableVersionRequestWithDeadline:(id)deadline
{
  v62 = *MEMORY[0x1E69E9840];
  deadlineCopy = deadline;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(CWFAssetPowerTableElector *)self set_powerTableFetched:0];
  v6 = objc_alloc_init(MEMORY[0x1E696AB30]);
  [(CWFAssetPowerTableElector *)self set_condPowerTableFetched:v6];

  v7 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "performPowerTableVersionRequestWithDeadline", "", buf, 2u);
  }

  wifiInterface = [(CWFAssetPowerTableElector *)self wifiInterface];
  v9 = wifiInterface == 0;

  if (v9)
  {
    v10 = objc_alloc_init(CWFInterface);
    [(CWFAssetPowerTableElector *)self setWifiInterface:v10];

    wifiInterface2 = [(CWFAssetPowerTableElector *)self wifiInterface];
    [wifiInterface2 activate];
  }

  *buf = 0;
  v45 = buf;
  v46 = 0x3032000000;
  v47 = sub_1E0BC2D14;
  v48 = sub_1E0BC61D4;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3042000000;
  v41 = sub_1E0C4EAB8;
  v42 = sub_1E0C4EAC4;
  v43 = 0;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = sub_1E0C4EACC;
  v34[3] = &unk_1E86E6F80;
  v34[4] = self;
  v12 = dictionary;
  v35 = v12;
  v13 = deadlineCopy;
  v36 = v13;
  v37 = &v38;
  v14 = MEMORY[0x1E12EA400](v34);
  v15 = *(v45 + 5);
  *(v45 + 5) = v14;

  v16 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [MEMORY[0x1E695DF00] now];
    *v52 = 136447234;
    v53 = "[CWFAssetPowerTableElector performPowerTableVersionRequestWithDeadline:]";
    v54 = 1024;
    v55 = 548;
    v56 = 2080;
    v57 = "[CWFAssetPowerTableElector performPowerTableVersionRequestWithDeadline:]";
    v58 = 2112;
    v59 = v13;
    v60 = 2112;
    v61 = v17;
    _os_log_impl(&dword_1E0BBF000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Calling retryingVersionFetchBlock dueDate %@ now %@", v52, 0x30u);
  }

  objc_storeWeak(v39 + 5, *(v45 + 5));
  _apiQueue = [(CWFAssetPowerTableElector *)self _apiQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C4F12C;
  block[3] = &unk_1E86E5600;
  block[4] = buf;
  dispatch_async(_apiQueue, block);

  v19 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v19))
  {
    *v52 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v19, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "wait _condPowerTableFetched", "", v52, 2u);
  }

  _condPowerTableFetched = [(CWFAssetPowerTableElector *)self _condPowerTableFetched];
  [_condPowerTableFetched lock];

  while (![(CWFAssetPowerTableElector *)self _powerTableFetched])
  {
    _condPowerTableFetched2 = [(CWFAssetPowerTableElector *)self _condPowerTableFetched];
    v22 = [_condPowerTableFetched2 waitUntilDate:v13];

    if ((v22 & 1) == 0 && ![(CWFAssetPowerTableElector *)self _powerTableFetched])
    {
      v23 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *v52 = 136446722;
        v53 = "[CWFAssetPowerTableElector performPowerTableVersionRequestWithDeadline:]";
        v54 = 1024;
        v55 = 565;
        v56 = 2080;
        v57 = "[CWFAssetPowerTableElector performPowerTableVersionRequestWithDeadline:]";
        _os_log_impl(&dword_1E0BBF000, v23, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: Timed Out waiting to retrieve valid performVersionFetch", v52, 0x1Cu);
      }

      v24 = MEMORY[0x1E696ABC0];
      v50 = *MEMORY[0x1E696A588];
      v51 = @"CWFPowerTableElectionTimedOutWaitingForPerformVersionFetch";
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v26 = [v24 errorWithDomain:@"com.apple.wifi.powertable" code:5 userInfo:v25];
      [(CWFAssetPowerTableElector *)self setError:v26];

      break;
    }
  }

  _condPowerTableFetched3 = [(CWFAssetPowerTableElector *)self _condPowerTableFetched];
  [_condPowerTableFetched3 unlock];

  v28 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v28))
  {
    *v52 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v28, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "wait _condPowerTableFetched", "", v52, 2u);
  }

  v29 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v29))
  {
    *v52 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v29, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "performPowerTableVersionRequestWithDeadline", "", v52, 2u);
  }

  v30 = v36;
  v31 = v12;

  _Block_object_dispose(&v38, 8);
  objc_destroyWeak(&v43);
  _Block_object_dispose(buf, 8);

  return v31;
}

- (void)powerTableVote:(BOOL)vote
{
  voteCopy = vote;
  v24 = *MEMORY[0x1E69E9840];
  v5 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v5))
  {
    v14 = 67109120;
    LODWORD(v15) = voteCopy;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "powerTableVote", "%d", &v14, 8u);
  }

  v6 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136446978;
    v15 = "[CWFAssetPowerTableElector powerTableVote:]";
    v16 = 1024;
    v17 = 584;
    v18 = 2080;
    v19 = "[CWFAssetPowerTableElector powerTableVote:]";
    v20 = 1024;
    v21 = voteCopy;
    _os_log_impl(&dword_1E0BBF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Calling powerTableVote WeLike: %d", &v14, 0x22u);
  }

  delegate = [(CWFAssetPowerTableElector *)self delegate];
  _powerTableSession = [(CWFAssetPowerTableElector *)self _powerTableSession];
  v9 = [delegate powerTableVote:_powerTableSession voter:0 vote:voteCopy];

  v10 = +[CWFPowerTableElectionTelemetry sharedObj];
  [v10 setPowerTableVote:voteCopy];

  if ((v9 & 1) == 0)
  {
    v13 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446722;
      v15 = "[CWFAssetPowerTableElector powerTableVote:]";
      v16 = 1024;
      v17 = 590;
      v18 = 2080;
      v19 = "[CWFAssetPowerTableElector powerTableVote:]";
      _os_log_impl(&dword_1E0BBF000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: Call to delegate powerTableVote Failed", &v14, 0x1Cu);
    }
  }

  v11 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136447234;
    v15 = "[CWFAssetPowerTableElector powerTableVote:]";
    v16 = 1024;
    v17 = 594;
    v18 = 2080;
    v19 = "[CWFAssetPowerTableElector powerTableVote:]";
    v20 = 1024;
    v21 = voteCopy;
    v22 = 1024;
    v23 = v9;
    _os_log_impl(&dword_1E0BBF000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Done powerTableVote WeLike: %d call success: %d", &v14, 0x28u);
  }

  v12 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v12))
  {
    v14 = 67109120;
    LODWORD(v15) = voteCopy;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "powerTableVote", "%d", &v14, 8u);
  }
}

- (void)powerTableReadiness:(BOOL)readiness
{
  readinessCopy = readiness;
  v24 = *MEMORY[0x1E69E9840];
  v5 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v5))
  {
    v14 = 67109120;
    LODWORD(v15) = readinessCopy;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "powerTableReadiness", "%d", &v14, 8u);
  }

  v6 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136446978;
    v15 = "[CWFAssetPowerTableElector powerTableReadiness:]";
    v16 = 1024;
    v17 = 604;
    v18 = 2080;
    v19 = "[CWFAssetPowerTableElector powerTableReadiness:]";
    v20 = 1024;
    v21 = readinessCopy;
    _os_log_impl(&dword_1E0BBF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Calling powerTableReadiness WeCan: %d", &v14, 0x22u);
  }

  delegate = [(CWFAssetPowerTableElector *)self delegate];
  _powerTableSession = [(CWFAssetPowerTableElector *)self _powerTableSession];
  v9 = [delegate powerTableReadiness:_powerTableSession voter:0 vote:readinessCopy];

  v10 = +[CWFPowerTableElectionTelemetry sharedObj];
  [v10 setPowerTableReadiness:readinessCopy];

  if ((v9 & 1) == 0)
  {
    v13 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446722;
      v15 = "[CWFAssetPowerTableElector powerTableReadiness:]";
      v16 = 1024;
      v17 = 610;
      v18 = 2080;
      v19 = "[CWFAssetPowerTableElector powerTableReadiness:]";
      _os_log_impl(&dword_1E0BBF000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: Call to delegate powerTableReadiness Failed", &v14, 0x1Cu);
    }
  }

  v11 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136447234;
    v15 = "[CWFAssetPowerTableElector powerTableReadiness:]";
    v16 = 1024;
    v17 = 614;
    v18 = 2080;
    v19 = "[CWFAssetPowerTableElector powerTableReadiness:]";
    v20 = 1024;
    v21 = readinessCopy;
    v22 = 1024;
    v23 = v9;
    _os_log_impl(&dword_1E0BBF000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: powerTableReadiness WeCan: %d call success %d", &v14, 0x28u);
  }

  v12 = CWFGetOTAOSLog();
  if (os_signpost_enabled(v12))
  {
    v14 = 67109120;
    LODWORD(v15) = readinessCopy;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "powerTableReadiness", "%d", &v14, 8u);
  }
}

- (void)handleCENPowerTableEvaluationNotification:(id)notification
{
  v21 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E6993C10]];

  v7 = CWFGetOTAOSLog();
  v8 = os_signpost_id_make_with_pointer(v7, notificationCopy);

  v9 = CWFGetOTAOSLog();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v11 = [objc_opt_class() powerTableEvaluationStateAsString:{objc_msgSend(v6, "integerValue")}];
    *buf = 138412290;
    v20 = v11;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "NSNotification", "%@", buf, 0xCu);
  }

  _coordinationQueue = [(CWFAssetPowerTableElector *)self _coordinationQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E0C4F914;
  v15[3] = &unk_1E86E6B18;
  v15[4] = self;
  v16 = notificationCopy;
  v17 = v6;
  v18 = v8;
  v13 = v6;
  v14 = notificationCopy;
  dispatch_async(_coordinationQueue, v15);
}

- (void)_handleCENPowerTableEvaluationNotification:(id)notification
{
  v75 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
    *&buf[12] = 1024;
    *&buf[14] = 643;
    *&buf[18] = 2080;
    *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
    v57 = 2112;
    v58 = notificationCopy;
    _os_log_impl(&dword_1E0BBF000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Election NSNotification %@", buf, 0x26u);
  }

  name = [notificationCopy name];
  if (([name isEqualToString:*MEMORY[0x1E6993BF0]] & 1) == 0)
  {
    v7 = CWFGetOTAOSLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    v38 = name;
    uTF8String = [name UTF8String];
    *buf = 136446978;
    *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
    *&buf[12] = 1024;
    *&buf[14] = 661;
    *&buf[18] = 2080;
    *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
    v57 = 2080;
    v58 = uTF8String;
    v40 = "%{public}s::%d:%s: unexpected notification %s";
    v41 = v7;
    v42 = 38;
LABEL_55:
    _os_log_impl(&dword_1E0BBF000, v41, OS_LOG_TYPE_ERROR, v40, buf, v42);
    goto LABEL_50;
  }

  userInfo = [notificationCopy userInfo];
  v7 = [userInfo objectForKey:*MEMORY[0x1E6993C08]];

  if (!v7)
  {
    v7 = CWFGetOTAOSLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    *buf = 136446722;
    *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
    *&buf[12] = 1024;
    *&buf[14] = 664;
    *&buf[18] = 2080;
    *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
    v40 = "%{public}s::%d:%s: identifier missing";
    v41 = v7;
    v42 = 28;
    goto LABEL_55;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v43 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 665;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      _os_log_impl(&dword_1E0BBF000, v43, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: identifier has wrong type", buf, 0x1Cu);
    }

    goto LABEL_58;
  }

  userInfo2 = [notificationCopy userInfo];
  v52 = [userInfo2 objectForKey:*MEMORY[0x1E6993C10]];

  if (!v52)
  {
    v43 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 668;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      _os_log_impl(&dword_1E0BBF000, v43, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: state missing", buf, 0x1Cu);
    }

LABEL_58:

    goto LABEL_50;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v44 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 669;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      _os_log_impl(&dword_1E0BBF000, v44, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: state has wrong type", buf, 0x1Cu);
    }

    goto LABEL_70;
  }

  integerValue = [v52 integerValue];
  if ((integerValue - 7) <= 0xFFFFFFFFFFFFFFF9)
  {
    v44 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 671;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      v57 = 2048;
      v58 = integerValue;
      _os_log_impl(&dword_1E0BBF000, v44, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: invalid state %ld", buf, 0x26u);
    }

    goto LABEL_70;
  }

  userInfo3 = [notificationCopy userInfo];
  v11 = [userInfo3 objectForKey:*MEMORY[0x1E6993BE8]];

  if (!v11)
  {
    v44 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 674;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      _os_log_impl(&dword_1E0BBF000, v44, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: new asset versions missing", buf, 0x1Cu);
    }

LABEL_70:

    goto LABEL_50;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v45 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 675;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      _os_log_impl(&dword_1E0BBF000, v45, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: new asset versions has wrong type", buf, 0x1Cu);
    }

    goto LABEL_85;
  }

  if ([v11 count] != 2)
  {
    v45 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = [v11 count];
      *buf = 136446978;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 676;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      v57 = 2048;
      v58 = v46;
      _os_log_impl(&dword_1E0BBF000, v45, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: new asset versions has wrong count %lu", buf, 0x26u);
    }

    goto LABEL_85;
  }

  v12 = [v11 objectAtIndexedSubscript:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v45 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 677;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      _os_log_impl(&dword_1E0BBF000, v45, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: new asset versions[CENPowerTableVoterWiFi] has wrong type", buf, 0x1Cu);
    }

    goto LABEL_85;
  }

  v14 = [v11 objectAtIndexedSubscript:1];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if ((v15 & 1) == 0)
  {
    v45 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 678;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      _os_log_impl(&dword_1E0BBF000, v45, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: new asset versions[CENPowerTableVoterBT] has wrong type", buf, 0x1Cu);
    }

    goto LABEL_85;
  }

  userInfo4 = [notificationCopy userInfo];
  v17 = [userInfo4 objectForKey:*MEMORY[0x1E6993BF8]];

  if (!v17)
  {
    v45 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 681;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      _os_log_impl(&dword_1E0BBF000, v45, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: previous asset versions missing", buf, 0x1Cu);
    }

LABEL_85:

    goto LABEL_50;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v47 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 682;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      _os_log_impl(&dword_1E0BBF000, v47, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: previous asset versions has wrong type", buf, 0x1Cu);
    }

    goto LABEL_88;
  }

  v18 = [v17 objectAtIndexedSubscript:0];
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  if ((v19 & 1) == 0)
  {
    v47 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 683;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      _os_log_impl(&dword_1E0BBF000, v47, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: previous wifi asset version has wrong type", buf, 0x1Cu);
    }

LABEL_88:

    goto LABEL_50;
  }

  v20 = [v17 objectAtIndexedSubscript:1];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  v22 = CWFGetOTAOSLog();
  v23 = v22;
  if (v21)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [objc_opt_class() powerTableEvaluationStateAsString:integerValue];
      v25 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
      *buf = 136447490;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 687;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      v57 = 2112;
      v58 = v7;
      v59 = 2112;
      v60 = v24;
      v61 = 2112;
      v62 = v25;
      _os_log_impl(&dword_1E0BBF000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: identifier: %@ state: %@ previous state: %@", buf, 0x3Au);
    }

    v26 = CWFGetOTAOSLog();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (integerValue > 3)
    {
      if (integerValue == 4)
      {
        if (v27)
        {
          *buf = 136446722;
          *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
          *&buf[12] = 1024;
          *&buf[14] = 745;
          *&buf[18] = 2080;
          *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
          _os_log_impl(&dword_1E0BBF000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Processing CENPowerTableEvaluationStateRejected", buf, 0x1Cu);
        }

        [(CWFAssetPowerTableElector *)self handleCENPowerTableEvaluationStateRejected:v7];
      }

      else if (integerValue == 5)
      {
        if (v27)
        {
          *buf = 136446722;
          *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
          *&buf[12] = 1024;
          *&buf[14] = 751;
          *&buf[18] = 2080;
          *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
          _os_log_impl(&dword_1E0BBF000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Processing CENPowerTableEvaluationStateAccepted", buf, 0x1Cu);
        }

        [(CWFAssetPowerTableElector *)self handleCENPowerTableEvaluationStateAccepted:v7];
      }

      else
      {
        if (v27)
        {
          *buf = 136446722;
          *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
          *&buf[12] = 1024;
          *&buf[14] = 757;
          *&buf[18] = 2080;
          *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
          _os_log_impl(&dword_1E0BBF000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Processing CENPowerTableEvaluationStateAborted", buf, 0x1Cu);
        }

        [(CWFAssetPowerTableElector *)self handleCENPowerTableEvaluationStateAborted:v7];
      }

      goto LABEL_47;
    }

    if (integerValue == 1)
    {
      if (v27)
      {
        *buf = 136446722;
        *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        *&buf[12] = 1024;
        *&buf[14] = 697;
        *&buf[18] = 2080;
        *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        _os_log_impl(&dword_1E0BBF000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Processing CENPowerTableEvaluationStateRequestingReadiness", buf, 0x1Cu);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      buf[24] = 0;
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = sub_1E0C50F08;
      v55[3] = &unk_1E86E6F08;
      v55[4] = buf;
      sub_1E0BF1DA8(@"ignore-readiness-request", @"com.apple.wifi.powertable", v55);
      if (!*(*&buf[8] + 24))
      {
        [(CWFAssetPowerTableElector *)self _readinessTimeoutInterval];
        [(CWFAssetPowerTableElector *)self handleCENPowerTableEvaluationStateRequestingReadiness:v7 dueInterval:?];
        [(CWFAssetPowerTableElector *)self persistSession:v7 data:v11 forKey:@"new-asset-data"];
        v28 = +[CWFPowerTableElectionTelemetry sharedObj];
        v29 = [v11 objectAtIndexedSubscript:0];
        [v28 setCandidatePowerTableVersionWiFi:v29];

        v30 = +[CWFPowerTableElectionTelemetry sharedObj];
        v31 = [v11 objectAtIndexedSubscript:1];
        [v30 setCandidatePowerTableVersionBluetooth:v31];

        goto LABEL_43;
      }

      v48 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *v69 = 136446722;
        v70 = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        v71 = 1024;
        v72 = 704;
        v73 = 2080;
        v74 = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        _os_log_impl(&dword_1E0BBF000, v48, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: kPowerTable_ignore_readiness_input is set, bailing before processing input", v69, 0x1Cu);
      }

      _Block_object_dispose(buf, 8);
    }

    else if (integerValue == 2)
    {
      if (v27)
      {
        *buf = 136446722;
        *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        *&buf[12] = 1024;
        *&buf[14] = 717;
        *&buf[18] = 2080;
        *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        _os_log_impl(&dword_1E0BBF000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Processing CENPowerTableEvaluationStateStarting", buf, 0x1Cu);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      buf[24] = 0;
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = sub_1E0C51004;
      v54[3] = &unk_1E86E6F08;
      v54[4] = buf;
      sub_1E0BF1DA8(@"ignore-start-request", @"com.apple.wifi.powertable", v54);
      if (!*(*&buf[8] + 24))
      {
        [(CWFAssetPowerTableElector *)self handleCENPowerTableEvaluationStateStarting:v7];
LABEL_43:
        _Block_object_dispose(buf, 8);
LABEL_47:
        v32 = CWFGetOTAOSLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [objc_opt_class() powerTableEvaluationStateAsString:integerValue];
          v34 = [v11 objectAtIndexedSubscript:0];
          v35 = [v11 objectAtIndexedSubscript:1];
          v36 = [v17 objectAtIndexedSubscript:0];
          v37 = [v17 objectAtIndexedSubscript:1];
          *buf = 136448258;
          *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
          *&buf[12] = 1024;
          *&buf[14] = 772;
          *&buf[18] = 2080;
          *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
          v57 = 2112;
          v58 = v7;
          v59 = 2112;
          v60 = v33;
          v61 = 2112;
          v62 = v34;
          v63 = 2112;
          v64 = v35;
          v65 = 2112;
          v66 = v36;
          v67 = 2112;
          v68 = v37;
          _os_log_impl(&dword_1E0BBF000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: identifier: %@ \nstate: %@ \nnewAssetVersions[CENPowerTableVoterWiFi] %@ newAssetVersions[CENPowerTableVoterBT] %@ \npreviousAssetVersions[CENPowerTableVoterWiFi] %@ previousAssetVersions[CENPowerTableVoterBT] %@", buf, 0x58u);
        }

        goto LABEL_50;
      }

      v49 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *v69 = 136446722;
        v70 = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        v71 = 1024;
        v72 = 724;
        v73 = 2080;
        v74 = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        _os_log_impl(&dword_1E0BBF000, v49, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: kPowerTable_ignore_start_input is set, bailing before processing input", v69, 0x1Cu);
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (v27)
      {
        *buf = 136446722;
        *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        *&buf[12] = 1024;
        *&buf[14] = 731;
        *&buf[18] = 2080;
        *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        _os_log_impl(&dword_1E0BBF000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Processing CENPowerTableEvaluationStateRequestingVotes", buf, 0x1Cu);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      buf[24] = 0;
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = sub_1E0C51100;
      v53[3] = &unk_1E86E6F08;
      v53[4] = buf;
      sub_1E0BF1DA8(@"ignore-vote-request", @"com.apple.wifi.powertable", v53);
      if (!*(*&buf[8] + 24))
      {
        [(CWFAssetPowerTableElector *)self _votingTimeoutInterval];
        [(CWFAssetPowerTableElector *)self handleCENPowerTableEvaluationStateRequestingVotes:v7 dueInterval:?];
        goto LABEL_43;
      }

      v50 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *v69 = 136446722;
        v70 = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        v71 = 1024;
        v72 = 738;
        v73 = 2080;
        v74 = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
        _os_log_impl(&dword_1E0BBF000, v50, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: kPowerTable_ignore_requesting_vote_input is set, bailing before processing input", v69, 0x1Cu);
      }

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      *&buf[12] = 1024;
      *&buf[14] = 684;
      *&buf[18] = 2080;
      *&buf[20] = "[CWFAssetPowerTableElector _handleCENPowerTableEvaluationNotification:]";
      _os_log_impl(&dword_1E0BBF000, v23, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: previous bt asset version has wrong type", buf, 0x1Cu);
    }
  }

LABEL_50:
}

- (void)checkForExistingSessionAndRecover
{
  v44[1] = *MEMORY[0x1E69E9840];
  v3 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-id"];
  v4 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-start-date"];
  v5 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-state"];
  _powerTableSession = [(CWFAssetPowerTableElector *)self _powerTableSession];

  if (!_powerTableSession && v3)
  {
    v7 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136446978;
      v32 = "[CWFAssetPowerTableElector checkForExistingSessionAndRecover]";
      v33 = 1024;
      v34 = 799;
      v35 = 2080;
      v36 = "[CWFAssetPowerTableElector checkForExistingSessionAndRecover]";
      v37 = 2112;
      v38 = v3;
      _os_log_impl(&dword_1E0BBF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Recovered Missing _powerTableSession from persisted data %@", &v31, 0x26u);
    }

    [(CWFAssetPowerTableElector *)self set_powerTableSession:v3];
  }

  _powerTableSessionStartDate = [(CWFAssetPowerTableElector *)self _powerTableSessionStartDate];

  if (!_powerTableSessionStartDate && v4)
  {
    v9 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136446978;
      v32 = "[CWFAssetPowerTableElector checkForExistingSessionAndRecover]";
      v33 = 1024;
      v34 = 804;
      v35 = 2080;
      v36 = "[CWFAssetPowerTableElector checkForExistingSessionAndRecover]";
      v37 = 2112;
      v38 = v4;
      _os_log_impl(&dword_1E0BBF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Recovered Missing _powerTableSessionStartDate from persisted data %@", &v31, 0x26u);
    }

    [(CWFAssetPowerTableElector *)self set_powerTableSessionStartDate:v4];
  }

  if (v5)
  {
    v10 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
    v11 = [v5 isEqualToString:v10];

    if ((v11 & 1) == 0)
    {
      v12 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 136446978;
        v32 = "[CWFAssetPowerTableElector checkForExistingSessionAndRecover]";
        v33 = 1024;
        v34 = 809;
        v35 = 2080;
        v36 = "[CWFAssetPowerTableElector checkForExistingSessionAndRecover]";
        v37 = 2112;
        v38 = v5;
        _os_log_impl(&dword_1E0BBF000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Recovered Missing _powerTableEvaluationState from persisted data %@", &v31, 0x26u);
      }

      -[CWFAssetPowerTableElector set_powerTableEvaluationState:](self, "set_powerTableEvaluationState:", [objc_opt_class() powerTableEvaluationStringToState:v5]);
    }
  }

  _powerTableSessionStartDate2 = [(CWFAssetPowerTableElector *)self _powerTableSessionStartDate];
  if (_powerTableSessionStartDate2 && (v14 = _powerTableSessionStartDate2, -[CWFAssetPowerTableElector _powerTableSessionStartDate](self, "_powerTableSessionStartDate"), v15 = objc_claimAutoreleasedReturnValue(), [v15 timeIntervalSinceNow], v17 = v16, -[CWFAssetPowerTableElector _maxSessionActiveInterval](self, "_maxSessionActiveInterval"), v19 = v18, v15, v14, v17 > v19))
  {
    v20 = MEMORY[0x1E696ABC0];
    v43 = *MEMORY[0x1E696A588];
    v44[0] = @"CWFPowerTableElectionExistingSessionPastMaxSessionInterval";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v22 = [v20 errorWithDomain:@"com.apple.wifi.powertable" code:4 userInfo:v21];
    [(CWFAssetPowerTableElector *)self setError:v22];

    v23 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-id"];
      [(CWFAssetPowerTableElector *)self _maxSessionActiveInterval];
      v26 = v25;
      error = [(CWFAssetPowerTableElector *)self error];
      v31 = 136447490;
      v32 = "[CWFAssetPowerTableElector checkForExistingSessionAndRecover]";
      v33 = 1024;
      v34 = 818;
      v35 = 2080;
      v36 = "[CWFAssetPowerTableElector checkForExistingSessionAndRecover]";
      v37 = 2112;
      v38 = v24;
      v39 = 2048;
      v40 = v26;
      v41 = 2112;
      v42 = error;
      _os_log_impl(&dword_1E0BBF000, v23, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: Session id %@ has expired past max interval of %f, recovering by removing stale session - error %@", &v31, 0x3Au);
    }

    [(CWFAssetPowerTableElector *)self removePersistedKey:@"powertable-election-session-id"];
    [(CWFAssetPowerTableElector *)self removePersistedKey:@"powertable-election-session-start-date"];
    [(CWFAssetPowerTableElector *)self removePersistedKey:@"powertable-election-session-state"];
    [(CWFAssetPowerTableElector *)self set_powerTableSession:0];
    [(CWFAssetPowerTableElector *)self set_powerTableSessionStartDate:0];
    [(CWFAssetPowerTableElector *)self set_powerTableEvaluationState:0];
  }

  else
  {
    v28 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-id"];
      v30 = [(CWFAssetPowerTableElector *)self description];
      v31 = 136447234;
      v32 = "[CWFAssetPowerTableElector checkForExistingSessionAndRecover]";
      v33 = 1024;
      v34 = 829;
      v35 = 2080;
      v36 = "[CWFAssetPowerTableElector checkForExistingSessionAndRecover]";
      v37 = 2112;
      v38 = v29;
      v39 = 2112;
      v40 = v30;
      _os_log_impl(&dword_1E0BBF000, v28, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: Session id %@ was recovered: desc %@", &v31, 0x30u);
    }
  }
}

- (BOOL)isSessionCurrentlyBlocking
{
  v40[1] = *MEMORY[0x1E69E9840];
  [(CWFAssetPowerTableElector *)self checkForExistingSessionAndRecover];
  v3 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-id"];

  if (v3)
  {
    v4 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-start-date"];
    LOBYTE(v3) = v4 == 0;
    if (v4)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_1E0C51B60;
      v24[3] = &unk_1E86E6FA8;
      v24[4] = self;
      sub_1E0BF1DA8(@"max-session-active-interval", @"com.apple.wifi.powertable", v24);
      [v4 timeIntervalSinceNow];
      v6 = v5;
      [(CWFAssetPowerTableElector *)self _maxSessionActiveInterval];
      if (v6 <= v7)
      {
LABEL_11:

        return v3;
      }

      v8 = MEMORY[0x1E696ABC0];
      v37 = *MEMORY[0x1E696A588];
      v38 = @"CWFPowerTableElectionRxReadinessWhileExistingSessionPastMaxSessionInterval";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v10 = [v8 errorWithDomain:@"com.apple.wifi.powertable" code:3 userInfo:v9];
      [(CWFAssetPowerTableElector *)self setError:v10];

      v11 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-id"];
        [(CWFAssetPowerTableElector *)self _maxSessionActiveInterval];
        v14 = v13;
        error = [(CWFAssetPowerTableElector *)self error];
        *buf = 136447490;
        v26 = "[CWFAssetPowerTableElector isSessionCurrentlyBlocking]";
        v27 = 1024;
        v28 = 863;
        v29 = 2080;
        v30 = "[CWFAssetPowerTableElector isSessionCurrentlyBlocking]";
        v31 = 2112;
        v32 = v12;
        v33 = 2048;
        v34 = v14;
        v35 = 2112;
        v36 = error;
        _os_log_impl(&dword_1E0BBF000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: Session id %@ has expired past max interval of %f, recovering by removing stale session - error %@", buf, 0x3Au);
      }

      [(CWFAssetPowerTableElector *)self removePersistedKey:@"powertable-election-session-id"];
      v16 = @"powertable-election-session-start-date";
    }

    else
    {
      v17 = MEMORY[0x1E696ABC0];
      v39 = *MEMORY[0x1E696A588];
      v40[0] = @"CWFPowerTableElectionRxReadinessWithCorruptActiveSession";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      v19 = [v17 errorWithDomain:@"com.apple.wifi.powertable" code:2 userInfo:v18];
      [(CWFAssetPowerTableElector *)self setError:v19];

      v20 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-id"];
        error2 = [(CWFAssetPowerTableElector *)self error];
        *buf = 136447234;
        v26 = "[CWFAssetPowerTableElector isSessionCurrentlyBlocking]";
        v27 = 1024;
        v28 = 850;
        v29 = 2080;
        v30 = "[CWFAssetPowerTableElector isSessionCurrentlyBlocking]";
        v31 = 2112;
        v32 = v21;
        v33 = 2112;
        v34 = error2;
        _os_log_impl(&dword_1E0BBF000, v20, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: Session id %@ has missing start date, recovering by removing session id - error %@", buf, 0x30u);
      }

      v16 = @"powertable-election-session-id";
    }

    [(CWFAssetPowerTableElector *)self removePersistedKey:v16];
    goto LABEL_11;
  }

  return v3;
}

- (void)processTransitionToTerminalState:(id)state
{
  v35 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(CWFAssetPowerTableElector *)self description];
    v27 = 136446978;
    v28 = "[CWFAssetPowerTableElector processTransitionToTerminalState:]";
    v29 = 1024;
    v30 = 879;
    v31 = 2080;
    v32 = "[CWFAssetPowerTableElector processTransitionToTerminalState:]";
    v33 = 2112;
    v34 = v7;
    _os_log_impl(&dword_1E0BBF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Process transition to terminal state from %@", &v27, 0x26u);
  }

  v8 = [v5 dateByAddingTimeInterval:10.0];
  v9 = [(CWFAssetPowerTableElector *)self performPowerTableVersionRequestWithDeadline:v8];

  [(CWFAssetPowerTableElector *)self persistSession:stateCopy data:v9 forKey:@"pt-ver-final"];
  v10 = [v9 valueForKey:@"PTV_TABLE_VERSION"];

  v11 = +[CWFPowerTableElectionTelemetry sharedObj];
  v12 = v11;
  if (v10)
  {
    v13 = [v9 valueForKey:@"PTV_TABLE_VERSION"];
    [v12 setFinalPowerTableVersion:v13];
  }

  else
  {
    [v11 setFinalPowerTableVersion:@"NotFound"];
  }

  v14 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
  [(CWFAssetPowerTableElector *)self persistSession:stateCopy data:v14 forKey:@"state"];

  v15 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
  [(CWFAssetPowerTableElector *)self persist:v15 forKey:@"powertable-election-session-state"];

  v16 = [MEMORY[0x1E695DF00] now];
  [(CWFAssetPowerTableElector *)self persistSession:stateCopy data:v16 forKey:@"session-end-date"];

  v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[CWFAssetPowerTableElector _pid](self, "_pid")}];
  [(CWFAssetPowerTableElector *)self persistSession:stateCopy data:v17 forKey:@"pid-at-end"];

  [(CWFAssetPowerTableElector *)self removePersistedKey:@"powertable-election-session-id"];
  [(CWFAssetPowerTableElector *)self removePersistedKey:@"powertable-election-session-start-date"];
  [(CWFAssetPowerTableElector *)self removePersistedKey:@"powertable-election-session-state"];
  if ([(CWFAssetPowerTableElector *)self _powerTableEvaluationState]!= 5)
  {
    v18 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(CWFAssetPowerTableElector *)self description];
      v27 = 136446978;
      v28 = "[CWFAssetPowerTableElector processTransitionToTerminalState:]";
      v29 = 1024;
      v30 = 904;
      v31 = 2080;
      v32 = "[CWFAssetPowerTableElector processTransitionToTerminalState:]";
      v33 = 2112;
      v34 = v19;
      _os_log_impl(&dword_1E0BBF000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Calling ABC due to terminal _powerTableEvaluationState != Accepted %@", &v27, 0x26u);
    }

    v20 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
    v21 = +[CWFPowerTableElectionTelemetry sharedObj];
    getElectionSummaryStringForABC = [v21 getElectionSummaryStringForABC];

    v23 = +[CWFDiagnosticReporter sharedWiFiDiagnosticReporter];
    [v23 submitWiFiDiagnosticReportType:@"PowerTableElection" reason:v20 subtypeContext:getElectionSummaryStringForABC];
  }

  v24 = +[CWFDiagnosticReporter sharedWiFiDiagnosticReporter];
  [v24 removeRequestedBlockOnWiFiABCSignature:@"mute-abc-driver-availability-until"];

  v25 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [(CWFAssetPowerTableElector *)self description];
    v27 = 136446978;
    v28 = "[CWFAssetPowerTableElector processTransitionToTerminalState:]";
    v29 = 1024;
    v30 = 914;
    v31 = 2080;
    v32 = "[CWFAssetPowerTableElector processTransitionToTerminalState:]";
    v33 = 2112;
    v34 = v26;
    _os_log_impl(&dword_1E0BBF000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Process transition to terminal state complete %@", &v27, 0x26u);
  }
}

- (void)handleCENPowerTableEvaluationStateUninitialized
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136446722;
    v4 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateUninitialized]";
    v5 = 1024;
    v6 = 919;
    v7 = 2080;
    v8 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateUninitialized]";
    _os_log_impl(&dword_1E0BBF000, v2, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: ERROR got state CENPowerTableEvaluationStateUninitialized, why would we get this??", &v3, 0x1Cu);
  }
}

- (void)handleCENPowerTableEvaluationStateRequestingReadiness:(id)readiness dueInterval:(double)interval
{
  v65 = *MEMORY[0x1E69E9840];
  readinessCopy = readiness;
  v7 = [MEMORY[0x1E695DF00] now];
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 1;
  isSessionCurrentlyBlocking = [(CWFAssetPowerTableElector *)self isSessionCurrentlyBlocking];
  if (isSessionCurrentlyBlocking)
  {
    v9 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(CWFAssetPowerTableElector *)self description];
      *buf = 136446978;
      v54 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
      v55 = 1024;
      v56 = 946;
      v57 = 2080;
      v58 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
      v59 = 2112;
      v60 = v10;
      _os_log_impl(&dword_1E0BBF000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: Error Session Creation Blocked by _maxSessionActiveInterval, sending powerTableReadiness FALSE - self desc: %@", buf, 0x26u);
    }

    v11 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-id"];
      v13 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-start-date"];
      *buf = 136447490;
      v54 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
      v55 = 1024;
      v56 = 948;
      v57 = 2080;
      v58 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
      v59 = 2112;
      v60 = readinessCopy;
      v61 = 2112;
      intervalCopy = *&v12;
      v63 = 2112;
      v64 = v13;
      _os_log_impl(&dword_1E0BBF000, v11, OS_LOG_TYPE_FAULT, "%{public}s::%d:%s: Got unexpected Readiness Request with session %@ when existng session running %@ which was started at %@", buf, 0x3Au);
    }

    v14 = 0;
  }

  else
  {
    [(CWFAssetPowerTableElector *)self set_powerTableSession:readinessCopy];
    [(CWFAssetPowerTableElector *)self persist:readinessCopy forKey:@"powertable-election-session-id"];
    [(CWFAssetPowerTableElector *)self set_powerTableSessionStartDate:v7];
    [(CWFAssetPowerTableElector *)self persist:v7 forKey:@"powertable-election-session-start-date"];
    v15 = [v7 dateByAddingTimeInterval:interval];
    [(CWFAssetPowerTableElector *)self persistSession:readinessCopy data:v15 forKey:@"readiness-deadline-date"];

    v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[CWFAssetPowerTableElector _pid](self, "_pid")}];
    [(CWFAssetPowerTableElector *)self persistSession:readinessCopy data:v16 forKey:@"pid-at-start"];

    v11 = CWFGetOTAOSLog();
    v14 = 1;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v17 = [(CWFAssetPowerTableElector *)self description];
      *buf = 136447490;
      v54 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
      v55 = 1024;
      v56 = 942;
      v57 = 2080;
      v58 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
      v59 = 2112;
      v60 = readinessCopy;
      v61 = 2048;
      intervalCopy = interval;
      v63 = 2112;
      v64 = v17;
      _os_log_impl(&dword_1E0BBF000, v11, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: Session Created - Session %@ interval %f - self desc: %@", buf, 0x3Au);

      v14 = 1;
    }
  }

  *(v50 + 24) = v14;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = sub_1E0C52C40;
  v48[3] = &unk_1E86E6F08;
  v48[4] = &v49;
  sub_1E0BF1DA8(@"override-readiness-response", @"com.apple.wifi.powertable", v48);
  if (*(v50 + 24) == 1)
  {
    v18 = [(CWFAssetPowerTableElector *)self getSession:readinessCopy forKey:@"readiness-deadline-date"];
    v19 = [(CWFAssetPowerTableElector *)self performPowerTableVersionRequestWithDeadline:v18];

    [(CWFAssetPowerTableElector *)self persistSession:readinessCopy data:v19 forKey:@"pt-ver-initial"];
    v20 = [v19 valueForKey:@"PTV_TABLE_VERSION"];
    if (!v20 || ([v19 valueForKey:@"PTV_BINARY_FILENAME"], v21 = objc_claimAutoreleasedReturnValue(), v22 = v21 == 0, v21, v20, v22))
    {
      v23 = +[CWFPowerTableElectionTelemetry sharedObj];
      [v23 setCurrentPowerTableVersionAtReadiness:@"NotFound" fileName:@"NotFound"];
    }

    else
    {
      v23 = +[CWFPowerTableElectionTelemetry sharedObj];
      v24 = [v19 valueForKey:@"PTV_TABLE_VERSION"];
      v25 = [v19 valueForKey:@"PTV_BINARY_FILENAME"];
      [v23 setCurrentPowerTableVersionAtReadiness:v24 fileName:v25];
    }

    allKeys = [v19 allKeys];
    v27 = [allKeys count] == 0;

    if (v27)
    {
      v28 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 136446722;
        v54 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
        v55 = 1024;
        v56 = 971;
        v57 = 2080;
        v58 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
        _os_log_impl(&dword_1E0BBF000, v28, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: ERROR failed to retrieve current PT Version, setting areWeReady = FALSE", buf, 0x1Cu);
      }

      *(v50 + 24) = 0;
    }
  }

  v29 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = *(v50 + 24);
    *buf = 136446978;
    v54 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
    v55 = 1024;
    v56 = 976;
    v57 = 2080;
    v58 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
    v59 = 1024;
    LODWORD(v60) = v30;
    _os_log_impl(&dword_1E0BBF000, v29, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: Sending powerTableReadiness areWeReady %d", buf, 0x22u);
  }

  if (*(v50 + 24) == 1)
  {
    v31 = objc_alloc_init(MEMORY[0x1E696AB30]);
    [(CWFAssetPowerTableElector *)self set_interfaceAddedEventCondition:v31];

    v32 = objc_alloc_init(MEMORY[0x1E696AB30]);
    [(CWFAssetPowerTableElector *)self set_driverAvailEventCondition:v32];

    [(CWFAssetPowerTableElector *)self set_interfaceAddedEventOccurred:0];
    [(CWFAssetPowerTableElector *)self set_driverAvailEventOccurred:0];
    v33 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      _interfaceAddedEventOccurred = [(CWFAssetPowerTableElector *)self _interfaceAddedEventOccurred];
      *buf = 136446978;
      v54 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
      v55 = 1024;
      v56 = 986;
      v57 = 2080;
      v58 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
      v59 = 1024;
      LODWORD(v60) = _interfaceAddedEventOccurred;
      _os_log_impl(&dword_1E0BBF000, v33, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: SET _interfaceAddedEventOccurred %d", buf, 0x22u);
    }

    v35 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      _driverAvailEventOccurred = [(CWFAssetPowerTableElector *)self _driverAvailEventOccurred];
      *buf = 136446978;
      v54 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
      v55 = 1024;
      v56 = 987;
      v57 = 2080;
      v58 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingReadiness:dueInterval:]";
      v59 = 1024;
      LODWORD(v60) = _driverAvailEventOccurred;
      _os_log_impl(&dword_1E0BBF000, v35, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: SET _driverAvailEventOccurred %d", buf, 0x22u);
    }

    v37 = objc_alloc_init(MEMORY[0x1E696AB30]);
    [(CWFAssetPowerTableElector *)self set_readyToFetchLoadedPTCondition:v37];

    [(CWFAssetPowerTableElector *)self set_readyToFetchLoadedPT:0];
    v38 = +[CWFDiagnosticReporter sharedWiFiDiagnosticReporter];
    v39 = [(CWFAssetPowerTableElector *)self getSession:readinessCopy forKey:@"readiness-deadline-date"];
    [v38 requestWiFiToBlockABCSignatureUntil:v39 signature:@"mute-abc-driver-availability-until"];

    [(CWFAssetPowerTableElector *)self setupInterfaceAddedAndDriverAvailMonitor];
    v40 = [MEMORY[0x1E695DF00] now];
    [(CWFAssetPowerTableElector *)self _votingTimeoutInterval];
    v41 = [v40 dateByAddingTimeInterval:?];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = sub_1E0C52D3C;
    v47[3] = &unk_1E86E6FD0;
    v47[4] = self;
    [(CWFAssetPowerTableElector *)self dispatchWaitForInterfaceAddedThenBlockify:v41 completion:v47];
  }

  _apiQueue = [(CWFAssetPowerTableElector *)self _apiQueue];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = sub_1E0C52F20;
  v46[3] = &unk_1E86E6A28;
  v46[4] = self;
  v46[5] = &v49;
  dispatch_async(_apiQueue, v46);

  if (!isSessionCurrentlyBlocking)
  {
    if (*(v50 + 24))
    {
      v43 = &unk_1F5BBC3D0;
    }

    else
    {
      v43 = &unk_1F5BBC3E8;
    }

    [(CWFAssetPowerTableElector *)self persistSession:readinessCopy data:v43 forKey:@"readiness-reply"];
    [(CWFAssetPowerTableElector *)self set_powerTableEvaluationState:*(v50 + 24)];
    v44 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
    [(CWFAssetPowerTableElector *)self persistSession:readinessCopy data:v44 forKey:@"state"];

    v45 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
    [(CWFAssetPowerTableElector *)self persist:v45 forKey:@"powertable-election-session-state"];
  }

  _Block_object_dispose(&v49, 8);
}

- (void)handleCENPowerTableEvaluationStateStarting:(id)starting
{
  v33[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF00];
  startingCopy = starting;
  v6 = [v4 now];
  if ([(CWFAssetPowerTableElector *)self _powerTableEvaluationState]!= 1)
  {
    v7 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A588];
    v33[0] = @"CWFPowerTableElectionUnexpectedStateStarting";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v9 = [v7 errorWithDomain:@"com.apple.wifi.powertable" code:6 userInfo:v8];
    [(CWFAssetPowerTableElector *)self setError:v9];

    v10 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
      v12 = [objc_opt_class() powerTableEvaluationStateAsString:1];
      v13 = [(CWFAssetPowerTableElector *)self description];
      v20 = 136447490;
      v21 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateStarting:]";
      v22 = 1024;
      v23 = 1040;
      v24 = 2080;
      v25 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateStarting:]";
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v12;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_1E0BBF000, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: ERROR got notice of StateStarting when current state is %@ instead of %@ - desc %@", &v20, 0x3Au);
    }

    v14 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v15 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
      v16 = [objc_opt_class() powerTableEvaluationStateAsString:1];
      v20 = 136447234;
      v21 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateStarting:]";
      v22 = 1024;
      v23 = 1042;
      v24 = 2080;
      v25 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateStarting:]";
      v26 = 2112;
      v27 = v15;
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&dword_1E0BBF000, v14, OS_LOG_TYPE_FAULT, "%{public}s::%d:%s: ERROR got notice of StateStarting when current state is %@ instead of %@ ", &v20, 0x30u);
    }
  }

  [(CWFAssetPowerTableElector *)self set_powerTableEvaluationStartDate:v6];
  _powerTableEvaluationStartDate = [(CWFAssetPowerTableElector *)self _powerTableEvaluationStartDate];
  [(CWFAssetPowerTableElector *)self persistSession:startingCopy data:_powerTableEvaluationStartDate forKey:@"evaluation-start-date"];

  [(CWFAssetPowerTableElector *)self set_powerTableEvaluationState:2];
  v18 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
  [(CWFAssetPowerTableElector *)self persistSession:startingCopy data:v18 forKey:@"state"];

  v19 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
  [(CWFAssetPowerTableElector *)self persist:v19 forKey:@"powertable-election-session-state"];
}

- (void)handleCENPowerTableEvaluationStateRequestingVotes:(id)votes dueInterval:(double)interval
{
  v39[1] = *MEMORY[0x1E69E9840];
  votesCopy = votes;
  v7 = [MEMORY[0x1E695DF00] now];
  if ([(CWFAssetPowerTableElector *)self _powerTableEvaluationState]!= 2)
  {
    v8 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A588];
    v39[0] = @"CWFPowerTableElectionUnexpectedStateRequestingVotes";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v10 = [v8 errorWithDomain:@"com.apple.wifi.powertable" code:7 userInfo:v9];
    [(CWFAssetPowerTableElector *)self setError:v10];

    v11 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
      v13 = [objc_opt_class() powerTableEvaluationStateAsString:2];
      v14 = [(CWFAssetPowerTableElector *)self description];
      *buf = 136447490;
      v27 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingVotes:dueInterval:]";
      v28 = 1024;
      v29 = 1063;
      v30 = 2080;
      v31 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingVotes:dueInterval:]";
      v32 = 2112;
      v33 = v12;
      v34 = 2112;
      v35 = v13;
      v36 = 2112;
      v37 = v14;
      _os_log_impl(&dword_1E0BBF000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: ERROR got notice of RequestingVotes when current state is %@ instead of %@ - desc %@", buf, 0x3Au);
    }

    v15 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v16 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
      v17 = [objc_opt_class() powerTableEvaluationStateAsString:2];
      *buf = 136447234;
      v27 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingVotes:dueInterval:]";
      v28 = 1024;
      v29 = 1065;
      v30 = 2080;
      v31 = "[CWFAssetPowerTableElector handleCENPowerTableEvaluationStateRequestingVotes:dueInterval:]";
      v32 = 2112;
      v33 = v16;
      v34 = 2112;
      v35 = v17;
      _os_log_impl(&dword_1E0BBF000, v15, OS_LOG_TYPE_FAULT, "%{public}s::%d:%s: ERROR got notice of RequestingVotes when current state is %@ instead of %@ ", buf, 0x30u);
    }
  }

  [(CWFAssetPowerTableElector *)self persistSession:votesCopy data:v7 forKey:@"vote-start-date"];
  v18 = [v7 dateByAddingTimeInterval:interval];
  [(CWFAssetPowerTableElector *)self persistSession:votesCopy data:v18 forKey:@"vote-deadline-date"];

  v19 = +[CWFDiagnosticReporter sharedWiFiDiagnosticReporter];
  v20 = [(CWFAssetPowerTableElector *)self getSession:votesCopy forKey:@"vote-deadline-date"];
  [v19 requestWiFiToBlockABCSignatureUntil:v20 signature:@"mute-abc-driver-availability-until"];

  v21 = [(CWFAssetPowerTableElector *)self getSession:votesCopy forKey:@"vote-deadline-date"];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1E0C536B4;
  v23[3] = &unk_1E86E6FF8;
  v24 = votesCopy;
  selfCopy = self;
  v22 = votesCopy;
  [(CWFAssetPowerTableElector *)self waitForPowerTableBootedThenVoteInBlock:v21 completion:v23];
}

- (void)handleCENPowerTableEvaluationStateRejected:(id)rejected
{
  rejectedCopy = rejected;
  [(CWFAssetPowerTableElector *)self set_powerTableEvaluationState:4];
  [(CWFAssetPowerTableElector *)self processTransitionToTerminalState:rejectedCopy];

  v6 = +[CWFPowerTableElectionTelemetry sharedObj];
  v5 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
  [v6 setFinalResultAndSendTelemetry:v5];
}

- (void)handleCENPowerTableEvaluationStateAccepted:(id)accepted
{
  acceptedCopy = accepted;
  [(CWFAssetPowerTableElector *)self set_powerTableEvaluationState:5];
  [(CWFAssetPowerTableElector *)self processTransitionToTerminalState:acceptedCopy];

  v6 = +[CWFPowerTableElectionTelemetry sharedObj];
  v5 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
  [v6 setFinalResultAndSendTelemetry:v5];
}

- (void)handleCENPowerTableEvaluationStateAborted:(id)aborted
{
  abortedCopy = aborted;
  [(CWFAssetPowerTableElector *)self set_powerTableEvaluationState:6];
  [(CWFAssetPowerTableElector *)self processTransitionToTerminalState:abortedCopy];

  v6 = +[CWFPowerTableElectionTelemetry sharedObj];
  v5 = [objc_opt_class() powerTableEvaluationStateAsString:{-[CWFAssetPowerTableElector _powerTableEvaluationState](self, "_powerTableEvaluationState")}];
  [v6 setFinalResultAndSendTelemetry:v5];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  _pid = [(CWFAssetPowerTableElector *)self _pid];
  _powerTableEvaluationState = [(CWFAssetPowerTableElector *)self _powerTableEvaluationState];
  _powerTableSession = [(CWFAssetPowerTableElector *)self _powerTableSession];
  _powerTableSessionStartDate = [(CWFAssetPowerTableElector *)self _powerTableSessionStartDate];
  [string appendFormat:@"Current Process info: pid %d, powerTableEvaluationState %ld, _powerTableSession %@, _powerTableSessionStartDate %@", _pid, _powerTableEvaluationState, _powerTableSession, _powerTableSessionStartDate];

  v8 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-id"];
  v9 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-session-start-date"];
  [string appendFormat:@"Current Persistent Session Info: kPersistence_session_id_current %@, kPersistence_session_start_date_current %@", v8, v9];

  _powerTableSession2 = [(CWFAssetPowerTableElector *)self _powerTableSession];

  if (_powerTableSession2)
  {
    _powerTableSession3 = [(CWFAssetPowerTableElector *)self _powerTableSession];
    v12 = [(CWFAssetPowerTableElector *)self getSession:_powerTableSession3];
    [string appendFormat:@"Detailed Current Persistent Session Info: %@", v12];
  }

  else
  {
    _powerTableSession3 = [(CWFAssetPowerTableElector *)self getPersistedKey:@"powertable-election-sessions-history"];
    [string appendFormat:@"Detailed All Persistent Session Info: %@", _powerTableSession3];
  }

  return string;
}

+ (id)powerTableEvaluationStateAsString:(int64_t)string
{
  v11 = *MEMORY[0x1E69E9840];
  if (string < 7)
  {
    return off_1E86E7018[string];
  }

  v4 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "+[CWFAssetPowerTableElector powerTableEvaluationStateAsString:]";
    v7 = 1024;
    v8 = 1158;
    v9 = 2080;
    v10 = "+[CWFAssetPowerTableElector powerTableEvaluationStateAsString:]";
    _os_log_impl(&dword_1E0BBF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Missing case", &v5, 0x1Cu);
  }

  return result;
}

+ (int64_t)powerTableEvaluationStringToState:(id)state
{
  stateCopy = state;
  v4 = 0;
  while (1)
  {
    v5 = [objc_opt_class() powerTableEvaluationStateAsString:v4];
    v6 = [stateCopy isEqualToString:v5];

    if (v6)
    {
      break;
    }

    if (++v4 == 7)
    {
      v4 = 0;
      break;
    }
  }

  return v4;
}

- (CWFAssetPowerTableElectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end