@interface ChargingStateProvider
- (BOOL)isBatteryGaugingEnabledWithOverrideStateArray:(id)array;
- (ChargingStateProvider)init;
- (ChargingStateProviderDelegate)delegate;
- (id)chargingIconStateDictionary;
- (id)debugDescription;
- (id)getMostApplicableState:(id)state isPaused:(BOOL)paused;
- (signed)getChargingState;
- (void)_refreshTimeEstimates;
- (void)chargeLevelChanged;
- (void)chargingStateChanged;
- (void)computeStates;
- (void)dealloc;
- (void)didUpdateEstimateFor:(int64_t)for newEstimate:(id)estimate error:(id)error;
- (void)lowPowerModeChanged;
- (void)powerSourceChanged;
- (void)refreshChargeLevel;
- (void)refreshChargingState;
- (void)refreshData;
- (void)refreshLowPowerMode;
- (void)refreshPowerSource;
- (void)refreshTimeEstimateForTarget:(int64_t)target slowChargerSignal:(BOOL *)signal;
- (void)refreshTimeEstimates;
- (void)setDelegate:(id)delegate;
@end

@implementation ChargingStateProvider

- (ChargingStateProvider)init
{
  v32.receiver = self;
  v32.super_class = ChargingStateProvider;
  v2 = [(ChargingStateProvider *)&v32 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.powerlog.ChargingStateProvider", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[NSHashTable weakObjectsHashTable];
    delegates = v2->_delegates;
    v2->_delegates = v5;

    v7 = [BIBatteryAnalysisClient alloc];
    v8 = [NSSet setWithArray:&off_174D28];
    v9 = [v7 initWithTargets:v8];
    chargeTimeEstimateClient = v2->_chargeTimeEstimateClient;
    v2->_chargeTimeEstimateClient = v9;

    [(BIBatteryAnalysisClient *)v2->_chargeTimeEstimateClient setDelegate:v2];
    objc_initWeak(&location, v2);
    if (!v2->_powerSourceNotifyToken)
    {
      v11 = &_dispatch_main_q;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_395BC;
      handler[3] = &unk_163E28;
      objc_copyWeak(&v30, &location);
      notify_register_dispatch("com.apple.system.powersources.source", &v2->_powerSourceNotifyToken, &_dispatch_main_q, handler);

      objc_destroyWeak(&v30);
    }

    if (!v2->_uisocChangeToken)
    {
      v12 = &_dispatch_main_q;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_395FC;
      v27[3] = &unk_163E28;
      objc_copyWeak(&v28, &location);
      notify_register_dispatch("com.apple.system.powersources.percent", &v2->_uisocChangeToken, &_dispatch_main_q, v27);

      objc_destroyWeak(&v28);
    }

    if (!v2->_chargingIconographyStateNotifyToken)
    {
      v13 = &_dispatch_main_q;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_3963C;
      v25[3] = &unk_163E28;
      objc_copyWeak(&v26, &location);
      notify_register_dispatch("com.apple.system.powersources.chargingiconography", &v2->_chargingIconographyStateNotifyToken, &_dispatch_main_q, v25);

      objc_destroyWeak(&v26);
    }

    if (!v2->_chargeToFullNotifyToken)
    {
      v14 = &_dispatch_main_q;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_3967C;
      v23[3] = &unk_163E28;
      objc_copyWeak(&v24, &location);
      notify_register_dispatch("com.apple.system.powersources.chargingtofulloverride", &v2->_chargeToFullNotifyToken, &_dispatch_main_q, v23);

      objc_destroyWeak(&v24);
    }

    if (!v2->_chargingStatusOverrideNotifyToken)
    {
      v15 = &_dispatch_main_q;
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_396BC;
      v21 = &unk_163E28;
      objc_copyWeak(&v22, &location);
      notify_register_dispatch("com.apple.PerfPowerServices.PLBatteryUIChargingStateOverride", &v2->_chargingStatusOverrideNotifyToken, &_dispatch_main_q, &v18);

      objc_destroyWeak(&v22);
    }

    v16 = [NSNotificationCenter defaultCenter:v18];
    [v16 addObserver:v2 selector:"lowPowerModeChanged" name:NSProcessInfoPowerStateDidChangeNotification object:0];

    [(ChargingStateProvider *)v2 refreshData];
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)refreshData
{
  [(ChargingStateProvider *)self refreshChargeLevel];
  [(ChargingStateProvider *)self refreshPowerSource];
  [(ChargingStateProvider *)self refreshLowPowerMode];
  [(ChargingStateProvider *)self refreshChargingState];
  [(ChargingStateProvider *)self refreshTimeEstimates];

  [(ChargingStateProvider *)self computeStates];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = delegateCopy;
  if (self->_delegates)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_39800;
    v7[3] = &unk_163EB8;
    v7[4] = self;
    v8 = delegateCopy;
    dispatch_sync(queue, v7);
  }
}

- (void)computeStates
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_39880;
  block[3] = &unk_163FF8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)lowPowerModeChanged
{
  [(ChargingStateProvider *)self refreshLowPowerMode];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_delegates;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        queue = self->_queue;
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_39C08;
        v10[3] = &unk_163EB8;
        v10[4] = v8;
        v10[5] = self;
        dispatch_async(queue, v10);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(ChargingStateProvider *)self computeStates];
}

- (void)refreshLowPowerMode
{
  v3 = +[NSProcessInfo processInfo];
  isLowPowerModeEnabled = [v3 isLowPowerModeEnabled];

  [(ChargingStateProvider *)self setIsLowPowerModeEnabled:isLowPowerModeEnabled];
}

- (void)powerSourceChanged
{
  [(ChargingStateProvider *)self refreshPowerSource];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_delegates;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        queue = self->_queue;
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_39E2C;
        v10[3] = &unk_163EB8;
        v10[4] = v8;
        v10[5] = self;
        dispatch_async(queue, v10);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(ChargingStateProvider *)self computeStates];
}

- (void)refreshPowerSource
{
  chargingIconStateDictionary = [(ChargingStateProvider *)self chargingIconStateDictionary];
  v3 = [chargingIconStateDictionary objectForKeyedSubscript:@"chargeStatus"];

  if (v3)
  {
    v4 = [chargingIconStateDictionary objectForKeyedSubscript:@"chargeStatus"];
    v3 = [v4 isEqualToString:@"Disconnected"] ^ 1;
  }

  [(ChargingStateProvider *)self setIsExternallyConnected:v3];
}

- (void)chargeLevelChanged
{
  [(ChargingStateProvider *)self refreshChargeLevel];

  [(ChargingStateProvider *)self computeStates];
}

- (void)refreshChargeLevel
{
  v18 = 0;
  v3 = IOPSGetPercentRemaining();
  if (v3)
  {
    v4 = ChargingStateProviderLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_11444C();
    }
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_delegates;
    v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * v9);
          queue = self->_queue;
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = sub_3A120;
          v12[3] = &unk_164F60;
          v12[4] = v10;
          v13 = v18;
          dispatch_async(queue, v12);
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v7);
    }

    [(ChargingStateProvider *)self setUisocLevel:v18];
  }
}

- (void)chargingStateChanged
{
  [(ChargingStateProvider *)self refreshChargingState];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_delegates;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        queue = self->_queue;
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_3A2E0;
        v10[3] = &unk_163EB8;
        v10[4] = v8;
        v10[5] = self;
        dispatch_async(queue, v10);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(ChargingStateProvider *)self computeStates];
}

- (void)refreshChargingState
{
  getChargingState = [(ChargingStateProvider *)self getChargingState];
  if (+[PLBatteryUIUtilities inDemoMode])
  {
    v4 = [PLBatteryUIUtilities getDefaultValueForKey:@"chargingStatus"];
    v5 = v4;
    if (!v4)
    {
LABEL_11:

      goto LABEL_12;
    }

    if ([v4 isEqualToString:@"obc"])
    {
      v6 = 0;
      getChargingState = 2;
    }

    else if ([v5 isEqualToString:@"cec"])
    {
      v6 = 0;
      getChargingState = 7;
    }

    else
    {
      if (([v5 isEqualToString:@"tlc"] & 1) == 0)
      {
        if ([v5 isEqualToString:@"slow"])
        {
          v6 = 0;
          v7 = 0;
          getChargingState = 9;
        }

        else if ([v5 isEqualToString:@"limit"])
        {
          v7 = 0;
          getChargingState = 8;
          v6 = 1;
        }

        else
        {
          if (![v5 isEqualToString:@"batteryGauging"])
          {
            goto LABEL_11;
          }

          v6 = 0;
          v7 = 0;
          getChargingState = 10;
        }

        goto LABEL_10;
      }

      v6 = 0;
      getChargingState = 3;
    }

    v7 = 1;
LABEL_10:
    [(ChargingStateProvider *)self setIsEoc:v6];
    [(ChargingStateProvider *)self setIsPaused:v7];
    goto LABEL_11;
  }

LABEL_12:

  [(ChargingStateProvider *)self setChargingState:getChargingState];
}

- (signed)getChargingState
{
  chargingIconStateDictionary = [(ChargingStateProvider *)self chargingIconStateDictionary];
  isExternallyConnected = [(ChargingStateProvider *)self isExternallyConnected];
  if (isExternallyConnected)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  [(ChargingStateProvider *)self setIsEoc:0];
  [(ChargingStateProvider *)self setIsPaused:0];
  v6 = [chargingIconStateDictionary objectForKeyedSubscript:@"chargeStatus"];

  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = [chargingIconStateDictionary objectForKeyedSubscript:@"chargeStatus"];
  v8 = [v7 isEqualToString:@"Disconnected"];

  if (v8)
  {
    goto LABEL_8;
  }

  v9 = [chargingIconStateDictionary objectForKeyedSubscript:@"chargeStatus"];
  v10 = [v9 isEqualToString:@"Charging Completed"];

  if (v10)
  {
    [(ChargingStateProvider *)self setIsEoc:1];
LABEL_8:
    chargingIntervalType = v5;
    goto LABEL_9;
  }

  v13 = [chargingIconStateDictionary objectForKeyedSubscript:@"chargeStatus"];
  v14 = [v13 isEqualToString:@"Charging"];

  if ((v14 & 1) == 0)
  {
    v15 = [chargingIconStateDictionary objectForKeyedSubscript:@"chargeStatus"];
    -[ChargingStateProvider setIsPaused:](self, "setIsPaused:", [v15 isEqualToString:@"Charging On Hold"]);

    v16 = [chargingIconStateDictionary objectForKeyedSubscript:@"holds"];
    v17 = [(ChargingStateProvider *)self getMostApplicableState:v16 isPaused:[(ChargingStateProvider *)self isPaused]];

    if (v17)
    {
      v18 = [v17 objectForKeyedSubscript:@"isEoc"];
      -[ChargingStateProvider setIsEoc:](self, "setIsEoc:", [v18 BOOLValue]);

      v19 = [v17 objectForKeyedSubscript:@"name"];
      chargingIntervalType = [v19 chargingIntervalType];

      goto LABEL_9;
    }
  }

  v20 = [chargingIconStateDictionary objectForKeyedSubscript:@"overrides"];
  v21 = [(ChargingStateProvider *)self isBatteryGaugingEnabledWithOverrideStateArray:v20];

  if (v21)
  {
    chargingIntervalType = 10;
  }

  else
  {
    chargingIntervalType = v5;
  }

  if ((v21 & 1) == 0 && ((isExternallyConnected ^ 1) & 1) == 0)
  {
    if (![(ChargingStateProvider *)self isSlowCharger])
    {
      goto LABEL_8;
    }

    chargingIntervalType = v5;
    if (![(ChargingStateProvider *)self isPaused])
    {
      if ([(ChargingStateProvider *)self isEoc])
      {
        chargingIntervalType = v5;
      }

      else
      {
        chargingIntervalType = 9;
      }
    }
  }

LABEL_9:

  return chargingIntervalType;
}

- (id)getMostApplicableState:(id)state isPaused:(BOOL)paused
{
  pausedCopy = paused;
  stateCopy = state;
  v6 = stateCopy;
  if (!stateCopy)
  {
LABEL_23:
    v10 = 0;
    goto LABEL_24;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = [stateCopy countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (!v7)
  {
LABEL_19:
    v28 = [v6 count];
    if (v28)
    {
      v29 = ChargingStateProviderLog(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1144C0();
      }
    }

    goto LABEL_23;
  }

  v9 = v7;
  v10 = 0;
  v11 = *v36;
  v12 = @"name";
  *&v8 = 138412290;
  v31 = v8;
  v32 = v6;
  do
  {
    v13 = 0;
    v33 = v9;
    do
    {
      if (*v36 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v35 + 1) + 8 * v13);
      v15 = [v14 objectForKeyedSubscript:{v12, v31}];
      v16 = v15;
      if (v15)
      {
        isSupported = [v15 isSupported];
        if ((isSupported & 1) == 0)
        {
          v27 = ChargingStateProviderLog(isSupported);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = v31;
            v40 = v14;
            _os_log_error_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "Unhandled hold type: %@", buf, 0xCu);
          }

          goto LABEL_15;
        }

        if ([v16 isPaused] == pausedCopy)
        {
          v18 = [v10 objectForKeyedSubscript:v12];
          if (!v18 || (v19 = v18, -[NSObject objectForKeyedSubscript:](v10, "objectForKeyedSubscript:", v12), v20 = objc_claimAutoreleasedReturnValue(), v34 = [v20 statePriority], v21 = v12, v22 = v11, v23 = v10, v24 = pausedCopy, v25 = objc_msgSend(v16, "statePriority"), v20, v6 = v32, v19, v26 = v34 <= v25, pausedCopy = v24, v10 = v23, v11 = v22, v12 = v21, v9 = v33, !v26))
          {
            v27 = v10;
            v10 = v14;
LABEL_15:
          }
        }
      }

      v13 = v13 + 1;
    }

    while (v9 != v13);
    v9 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
  }

  while (v9);
  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_24:

  return v10;
}

- (BOOL)isBatteryGaugingEnabledWithOverrideStateArray:(id)array
{
  arrayCopy = array;
  v4 = arrayCopy;
  if (arrayCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = arrayCopy;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * i) objectForKeyedSubscript:{@"reason", v14}];
          v11 = v10;
          if (v10 && ([v10 isEqualToString:@"PowerD-BatteryGaugingMitigation"] & 1) != 0)
          {

            v12 = 1;
            goto LABEL_14;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_14:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)chargingIconStateDictionary
{
  v2 = IOPSCopyChargeStatus();
  if (v2)
  {
    v3 = ChargingStateProviderLog(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_114534();
    }
  }

  else
  {
    v3 = ChargingStateProviderLog(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1145A8(0, v3);
    }
  }

  return 0;
}

- (void)didUpdateEstimateFor:(int64_t)for newEstimate:(id)estimate error:(id)error
{
  estimateCopy = estimate;
  errorCopy = error;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_delegates;
  v10 = [(NSHashTable *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v21 + 1) + 8 * v13);
        queue = self->_queue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_3AD58;
        block[3] = &unk_164F88;
        block[4] = v14;
        forCopy = for;
        v18 = estimateCopy;
        v19 = errorCopy;
        dispatch_async(queue, block);

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSHashTable *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  [(ChargingStateProvider *)self refreshTimeEstimates];
}

- (void)refreshTimeEstimates
{
  v3 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3AE40;
  block[3] = &unk_163FF8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_refreshTimeEstimates
{
  v3 = 0;
  [(ChargingStateProvider *)self refreshTimeEstimateForTarget:0 slowChargerSignal:&v3];
  [(ChargingStateProvider *)self refreshTimeEstimateForTarget:1 slowChargerSignal:&v3];
  [(ChargingStateProvider *)self setIsSlowCharger:v3];
}

- (void)refreshTimeEstimateForTarget:(int64_t)target slowChargerSignal:(BOOL *)signal
{
  chargeTimeEstimateClient = [(ChargingStateProvider *)self chargeTimeEstimateClient];

  if (chargeTimeEstimateClient)
  {
    chargeTimeEstimateClient2 = [(ChargingStateProvider *)self chargeTimeEstimateClient];
    v16 = 0;
    v9 = [chargeTimeEstimateClient2 estimateForTarget:target withError:&v16];
    v10 = v16;

    if (v10)
    {
      v12 = ChargingStateProviderLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_114620();
      }

      goto LABEL_21;
    }

    v13 = ChargingStateProviderLog(v11);
    v14 = v13;
    if (v9)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_114698();
      }

      *signal |= [v9 additionalInformation] == &dword_4;
      *signal |= [v9 additionalInformation] == &dword_4 + 1;
      if ([v9 additionalInformation] == &dword_0 + 3 || objc_msgSend(v9, "additionalInformation") == &dword_4)
      {
        [v9 estimate];
        v15 = [NSNumber numberWithDouble:?];
        if (target)
        {
          [(ChargingStateProvider *)self setTimeEstimateToLimit:v15];
        }

        else
        {
          [(ChargingStateProvider *)self setTimeEstimateTo80:v15];
        }

        goto LABEL_21;
      }

      if (!target)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_114710();
      }

      if (!target)
      {
LABEL_20:
        [(ChargingStateProvider *)self setTimeEstimateTo80:0];
        goto LABEL_21;
      }
    }

    [(ChargingStateProvider *)self setTimeEstimateToLimit:0];
LABEL_21:
  }
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p> isLowPowerModeEnabled: %d, isExternallyConnected: %d, uisocLevel: %d, isEoc: %d, isPaused: %d, chargingState: %d", v4, self, [(ChargingStateProvider *)self isLowPowerModeEnabled], [(ChargingStateProvider *)self isExternallyConnected], [(ChargingStateProvider *)self uisocLevel], [(ChargingStateProvider *)self isEoc], [(ChargingStateProvider *)self isPaused], [(ChargingStateProvider *)self chargingState]];

  timeEstimateTo80 = [(ChargingStateProvider *)self timeEstimateTo80];
  timeEstimateToLimit = [(ChargingStateProvider *)self timeEstimateToLimit];
  v8 = [v5 stringByAppendingFormat:@", timeEstimateTo80: %@, timeEstimateToLimit: %@", timeEstimateTo80, timeEstimateToLimit];

  return v5;
}

- (void)dealloc
{
  notify_cancel(self->_chargingIconographyStateNotifyToken);
  notify_cancel(self->_powerSourceNotifyToken);
  notify_cancel(self->_uisocChangeToken);
  notify_cancel(self->_chargeToFullNotifyToken);
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSProcessInfoPowerStateDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = ChargingStateProvider;
  [(ChargingStateProvider *)&v4 dealloc];
}

- (ChargingStateProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end