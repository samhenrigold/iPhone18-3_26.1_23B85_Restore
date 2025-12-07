@interface UARPAnalyticsUpdateFirmwareManager
- (UARPAnalyticsUpdateFirmwareManager)initWithController:(id)controller queue:(id)queue;
- (id)description;
- (id)updateStateForAccessoryID:(id)d assetID:(id)iD;
- (id)updateStatesForAccessoryID:(id)d;
- (void)configurePurgeTimer;
- (void)dealloc;
- (void)purgeStaleUpdateStateRecords;
- (void)setAccessoryIDUnreachable:(id)unreachable;
- (void)stagingCompleteForAccessoryID:(id)d assetID:(id)iD status:(unint64_t)status;
- (void)stagingStartedForAccessoryID:(id)d assetID:(id)iD userIntent:(BOOL)intent;
- (void)updateComplete:(id)complete;
@end

@implementation UARPAnalyticsUpdateFirmwareManager

- (UARPAnalyticsUpdateFirmwareManager)initWithController:(id)controller queue:(id)queue
{
  controllerCopy = controller;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = UARPAnalyticsUpdateFirmwareManager;
  v8 = [(UARPAnalyticsUpdateFirmwareManager *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_controller, controllerCopy);
    v10 = os_log_create("com.apple.accessoryupdater.uarp", "analytics");
    log = v9->_log;
    v9->_log = v10;

    objc_storeStrong(&v9->_queue, queue);
    array = [MEMORY[0x277CBEB18] array];
    stateArray = v9->_stateArray;
    v9->_stateArray = array;

    [(UARPAnalyticsUpdateFirmwareManager *)v9 configurePurgeTimer];
  }

  return v9;
}

- (void)dealloc
{
  purgeTimer = self->_purgeTimer;
  if (purgeTimer)
  {
    dispatch_source_cancel(purgeTimer);
  }

  v4.receiver = self;
  v4.super_class = UARPAnalyticsUpdateFirmwareManager;
  [(UARPAnalyticsUpdateFirmwareManager *)&v4 dealloc];
}

- (void)configurePurgeTimer
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  purgeTimer = self->_purgeTimer;
  self->_purgeTimer = v3;

  v5 = self->_purgeTimer;
  v6 = dispatch_time(0, 3600000000000);
  dispatch_source_set_timer(v5, v6, 0x34630B8A000uLL, 0x3B9ACA00uLL);
  objc_initWeak(&location, self);
  v7 = self->_purgeTimer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__UARPAnalyticsUpdateFirmwareManager_configurePurgeTimer__block_invoke;
  v8[3] = &unk_278EC13E8;
  objc_copyWeak(&v9, &location);
  dispatch_source_set_event_handler(v7, v8);
  dispatch_resume(self->_purgeTimer);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __57__UARPAnalyticsUpdateFirmwareManager_configurePurgeTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained purgeStaleUpdateStateRecords];
}

- (id)updateStateForAccessoryID:(id)d assetID:(id)iD
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_stateArray;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        accessoryID = [v12 accessoryID];
        if ([dCopy analyticsIsEqual:accessoryID])
        {
          assetID = [v12 assetID];
          v15 = [iDCopy analyticsIsEqual:assetID];

          if (v15)
          {
            v9 = v12;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

LABEL_12:

  return v9;
}

- (id)updateStatesForAccessoryID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_stateArray;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        accessoryID = [v11 accessoryID];
        v13 = [dCopy analyticsIsEqual:accessoryID];

        if (v13)
        {
          [array addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [MEMORY[0x277CBEA60] arrayWithArray:array];

  return v14;
}

- (void)stagingStartedForAccessoryID:(id)d assetID:(id)iD userIntent:(BOOL)intent
{
  intentCopy = intent;
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v11 = "NO";
    *v13 = 136315906;
    *&v13[4] = "[UARPAnalyticsUpdateFirmwareManager stagingStartedForAccessoryID:assetID:userIntent:]";
    if (intentCopy)
    {
      v11 = "YES";
    }

    *&v13[12] = 2112;
    *&v13[14] = dCopy;
    v14 = 2112;
    v15 = iDCopy;
    v16 = 2080;
    v17 = v11;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%s: %@ %@ userIntent=%s", v13, 0x2Au);
  }

  v12 = [(UARPAnalyticsUpdateFirmwareManager *)self updateStateForAccessoryID:dCopy assetID:iDCopy, *v13, *&v13[8]];
  if (!v12)
  {
    v12 = [[UARPAnalyticsUpdateFirmwareState alloc] initWithAccessoryID:dCopy assetID:iDCopy];
    [(NSMutableArray *)self->_stateArray addObject:v12];
  }

  [(UARPAnalyticsUpdateFirmwareState *)v12 stagingStartedWithUserIntent:intentCopy];
}

- (void)stagingCompleteForAccessoryID:(id)d assetID:(id)iD status:(unint64_t)status
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v11 = log;
    v17 = 136315906;
    v18 = "[UARPAnalyticsUpdateFirmwareManager stagingCompleteForAccessoryID:assetID:status:]";
    v19 = 2112;
    v20 = dCopy;
    v21 = 2112;
    v22 = iDCopy;
    v23 = 2080;
    v24 = UARPFirmwareStagingCompletionStatusToString(status);
    _os_log_impl(&dword_247AA7000, v11, OS_LOG_TYPE_INFO, "%s: %@ %@ status=%s", &v17, 0x2Au);
  }

  v12 = [(UARPAnalyticsUpdateFirmwareManager *)self updateStateForAccessoryID:dCopy assetID:iDCopy];
  v13 = v12;
  if (v12)
  {
    [v12 stagingCompleteWithStatus:status];
    isUrgentUpdate = [iDCopy isUrgentUpdate];
    assetID = [v13 assetID];
    [assetID setIsUrgentUpdate:isUrgentUpdate];

    [(UARPAnalyticsUpdateFirmwareManager *)self updateComplete:v13];
  }

  else
  {
    v16 = self->_log;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [UARPAnalyticsUpdateFirmwareManager stagingCompleteForAccessoryID:dCopy assetID:iDCopy status:v16];
    }
  }
}

- (void)setAccessoryIDUnreachable:(id)unreachable
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [(UARPAnalyticsUpdateFirmwareManager *)self updateStatesForAccessoryID:unreachable];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v14;
    *&v6 = 136315394;
    v12 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          *buf = v12;
          v18 = "[UARPAnalyticsUpdateFirmwareManager setAccessoryIDUnreachable:]";
          v19 = 2112;
          v20 = v10;
          _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%s: %@ unreachable", buf, 0x16u);
        }

        [v10 accessoryUnreachable];
      }

      v7 = [v4 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v7);
  }
}

- (void)purgeStaleUpdateStateRecords
{
  v36 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Purge timer fired", buf, 2u);
  }

  array = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = self->_stateArray;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        if ([v10 age] >> 7 >= 0x2A3)
        {
          [array addObject:v10];
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_stateArray removeObjectsInArray:array];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = array;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v25;
    *&v13 = 138412290;
    v23 = v13;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v24 + 1) + 8 * j);
        v18 = self->_log;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = v23;
          v33 = v17;
          _os_log_error_impl(&dword_247AA7000, v18, OS_LOG_TYPE_ERROR, "Purging %@", buf, 0xCu);
        }

        [v17 accessoryUnreachable];
        WeakRetained = objc_loadWeakRetained(&self->_controller);
        accessoryID = [v17 accessoryID];
        assetID = [v17 assetID];
        eventParams = [v17 eventParams];
        [WeakRetained sendUpdateFirmwareAnalyticsEventForAccessoryID:accessoryID assetID:assetID params:eventParams];
      }

      v14 = [v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v14);
  }
}

- (void)updateComplete:(id)complete
{
  v14 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[UARPAnalyticsUpdateFirmwareManager updateComplete:]";
    v12 = 2112;
    v13 = completeCopy;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%s: %@", &v10, 0x16u);
  }

  [(NSMutableArray *)self->_stateArray removeObject:completeCopy];
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  accessoryID = [completeCopy accessoryID];
  assetID = [completeCopy assetID];
  eventParams = [completeCopy eventParams];
  [WeakRetained sendUpdateFirmwareAnalyticsEventForAccessoryID:accessoryID assetID:assetID params:eventParams];
}

- (id)description
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@\n{\n", v5];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_stateArray;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 appendFormat:@"%@\n", *(*(&v14 + 1) + 8 * i)];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [v6 appendString:@"}"];
  v12 = [MEMORY[0x277CCACA8] stringWithString:v6];

  return v12;
}

- (void)stagingCompleteForAccessoryID:(uint64_t)a1 assetID:(uint64_t)a2 status:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "[UARPAnalyticsUpdateFirmwareManager stagingCompleteForAccessoryID:assetID:status:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_247AA7000, log, OS_LOG_TYPE_ERROR, "%s: No record for %@ %@", &v3, 0x20u);
}

@end