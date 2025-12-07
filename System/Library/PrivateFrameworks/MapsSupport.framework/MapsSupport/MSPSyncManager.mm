@interface MSPSyncManager
- (BOOL)service:(id)service startSession:(id)session error:(id *)error;
- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error;
- (MSPSyncManager)init;
- (id)_wrapPin:(id)pin changeType:(int64_t)type;
- (id)pins;
- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error;
- (void)_addPin:(id)pin;
- (void)_applyAddItem:(id)item;
- (void)_applyDeleteItem:(id)item;
- (void)_applyUpdateItem:(id)item;
- (void)_clearAllNanoPersistableData;
- (void)_notifyObservers;
- (void)_removePin:(id)pin;
- (void)_resumeSyncService;
- (void)_setHasChangesAvailable;
- (void)_updateFromDisk;
- (void)_updatePin:(id)pin;
- (void)service:(id)service didSwitchFromPairingID:(id)d toPairingID:(id)iD;
- (void)setDroppedPin:(id)pin;
- (void)setNeedsFullSync;
- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion;
- (void)syncSession:(id)session didEndWithError:(id)error;
@end

@implementation MSPSyncManager

- (MSPSyncManager)init
{
  v15.receiver = self;
  v15.super_class = MSPSyncManager;
  v2 = [(MSPSyncManager *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.companionsync.save", v3);
    saveQueue = v2->_saveQueue;
    v2->_saveQueue = v4;

    [(MSPSyncManager *)v2 _updateFromDisk];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v6 = getSYServiceClass_softClass;
    v24 = getSYServiceClass_softClass;
    if (!getSYServiceClass_softClass)
    {
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __getSYServiceClass_block_invoke;
      v19 = &unk_279866440;
      v20 = &v21;
      __getSYServiceClass_block_invoke(&v16);
      v6 = v22[3];
    }

    v7 = v6;
    _Block_object_dispose(&v21, 8);
    v8 = [[v6 alloc] initWithService:@"com.apple.private.alloy.maps.sync" priority:0 asMasterStore:1 options:0];
    service = v2->_service;
    v2->_service = v8;

    [(SYService *)v2->_service setDelegate:v2 queue:v2->_saveQueue];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v10 = getNRPairedDeviceRegistryClass_softClass_0;
    v24 = getNRPairedDeviceRegistryClass_softClass_0;
    if (!getNRPairedDeviceRegistryClass_softClass_0)
    {
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __getNRPairedDeviceRegistryClass_block_invoke_0;
      v19 = &unk_279866440;
      v20 = &v21;
      __getNRPairedDeviceRegistryClass_block_invoke_0(&v16);
      v10 = v22[3];
    }

    v11 = v10;
    _Block_object_dispose(&v21, 8);
    sharedInstance = [v10 sharedInstance];
    getActivePairedDevice = [sharedInstance getActivePairedDevice];

    if (getActivePairedDevice)
    {
      [(MSPSyncManager *)v2 _resumeSyncService];
    }
  }

  return v2;
}

- (void)_resumeSyncService
{
  service = self->_service;
  v3 = 0;
  [(SYService *)service resume:&v3];
}

- (void)setNeedsFullSync
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = NSStringFromSelector(a2);
    resetSyncRequested = self->_resetSyncRequested;
    v7 = 138478083;
    v8 = v5;
    v9 = 1024;
    v10 = resetSyncRequested;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync Isync:%{private}@ (resetSyncRequested:%i)", &v7, 0x12u);
  }

  if (!self->_resetSyncRequested)
  {
    self->_resetSyncRequested = 1;
    [(SYService *)self->_service setNeedsResetSync];
  }
}

- (void)_setHasChangesAvailable
{
  if (!self->_resetSyncRequested)
  {
    v3 = self->_pendingSyncItems;
    objc_sync_enter(v3);
    v4 = [(NSMutableArray *)self->_pendingSyncItems count];
    objc_sync_exit(v3);

    if (v4)
    {
      service = self->_service;

      [(SYService *)service setHasChangesAvailable];
    }
  }
}

- (BOOL)service:(id)service startSession:(id)session error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  sessionCopy = session;
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    resetSyncRequested = self->_resetSyncRequested;
    *buf = 138478083;
    v26 = @"startSession";
    v27 = 1024;
    v28 = resetSyncRequested;
    _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync Isync:%{private}@ (resetSyncRequested:%i)", buf, 0x12u);
  }

  if (self->_resetSyncRequested)
  {
    self->_resetSyncRequested = 0;
    v11 = self->_pendingSyncItems;
    objc_sync_enter(v11);
    [(MSPSyncManager *)self _updateFromDisk];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = self->_pins;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v12);
          }

          pendingSyncItems = self->_pendingSyncItems;
          v17 = [(MSPSyncManager *)self _wrapPin:*(*(&v20 + 1) + 8 * v15) changeType:1, v20];
          [(NSMutableArray *)pendingSyncItems addObject:v17];

          ++v15;
        }

        while (v13 != v15);
        v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    objc_sync_exit(v11);
    [(MSPSyncManager *)self preparingSync];
  }

  [sessionCopy setDelegate:{self, v20}];
  v18 = objc_alloc_init(MSPSerializer);
  [sessionCopy setSerializer:v18];

  [sessionCopy setTargetQueue:self->_saveQueue];
  return 1;
}

- (void)service:(id)service didSwitchFromPairingID:(id)d toPairingID:(id)iD
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478083;
    v12 = dCopy;
    v13 = 2113;
    v14 = iDCopy;
    _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync Isync:didSwitchFromPairingID:%{private}@ toPairingID:%{private}@", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__MSPSyncManager_service_didSwitchFromPairingID_toPairingID___block_invoke;
  block[3] = &unk_279866158;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  changesCopy = changes;
  v31 = *MEMORY[0x277D0E798];
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v49 = @"enqueueChanges";
    _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync Isync:%{private}@", buf, 0xCu);
  }

  obja = self->_pendingSyncItems;
  objc_sync_enter(obja);
  v37 = [(NSMutableArray *)self->_pendingSyncItems mutableCopy];
  array = [MEMORY[0x277CBEB18] array];
  pendingSyncItems = self->_pendingSyncItems;
  self->_pendingSyncItems = array;

  objc_sync_exit(obja);
  firstObject = [v37 firstObject];
  if (firstObject)
  {
    v11 = firstObject;
    while (1)
    {
      v36 = v11;
      if ((changesCopy[2]() & 1) == 0)
      {
        break;
      }

      [v37 removeObjectAtIndex:0];
      firstObject2 = [v37 firstObject];

      v11 = firstObject2;
      if (!firstObject2)
      {
        goto LABEL_7;
      }
    }

    obj = self->_pendingSyncItems;
    objc_sync_enter(obj);
    v15 = [MEMORY[0x277CBEB58] setWithCapacity:{-[NSMutableArray count](self->_pendingSyncItems, "count")}];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v16 = self->_pendingSyncItems;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v17)
    {
      v18 = *v43;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v43 != v18)
          {
            objc_enumerationMutation(v16);
          }

          syncId = [*(*(&v42 + 1) + 8 * i) syncId];
          [v15 addObject:syncId];
        }

        v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v17);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v21 = v37;
    v22 = [v21 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v22)
    {
      v23 = 0;
      v24 = *v39;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v39 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v38 + 1) + 8 * j);
          syncId2 = [v26 syncId];
          v28 = [v15 containsObject:syncId2];

          if ((v28 & 1) == 0)
          {
            [(NSMutableArray *)self->_pendingSyncItems insertObject:v26 atIndex:v23++];
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v22);
    }

    objc_sync_exit(obj);
    v29 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      v49 = @"continue";
      _os_log_impl(&dword_25813A000, v29, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync Isync:%{private}@", buf, 0xCu);
    }

    v13 = 1;
    v14 = v36;
  }

  else
  {
LABEL_7:
    if ([sessionCopy isResetSync])
    {
      [(MSPSyncManager *)self completedPreparingSync];
    }

    GEOFindOrCreateLog();
    v14 = v13 = 2;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      v49 = @"sendComplete";
      _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync Isync:%{private}@", buf, 0xCu);
    }
  }

  return v13;
}

- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  completionCopy = completion;
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v23 = @"applyChanges";
    _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync Isync:%{private}@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = changesCopy;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        changeType = [v15 changeType];
        switch(changeType)
        {
          case 3:
            [(MSPSyncManager *)self _applyDeleteItem:v15];
            break;
          case 2:
            [(MSPSyncManager *)self _applyUpdateItem:v15];
            break;
          case 1:
            [(MSPSyncManager *)self _applyAddItem:v15];
            break;
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
    [(MSPSyncManager *)self _notifyObservers];
  }
}

- (void)syncSession:(id)session didEndWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138478339;
    v10 = @"complete";
    v11 = 1024;
    isResetSync = [sessionCopy isResetSync];
    v13 = 2113;
    v14 = errorCopy;
    _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync Isync:%{private}@ (resetSync:%i error:%{private}@)", &v9, 0x1Cu);
  }

  if ([sessionCopy isResetSync])
  {
    [(MSPSyncManager *)self completedSync];
  }
}

- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138477827;
    v8 = @"resetDataStore";
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "com.apple.pairedsync.mapssync Isync:%{private}@", &v7, 0xCu);
  }

  [(MSPSyncManager *)self _clearAllNanoPersistableData];
  return 1;
}

- (void)_clearAllNanoPersistableData
{
  [(NSMutableArray *)self->_pins removeAllObjects];
  [(NSMutableDictionary *)self->_pinsMap removeAllObjects];
  obj = self->_pendingSyncItems;
  objc_sync_enter(obj);
  [(NSMutableArray *)self->_pendingSyncItems removeAllObjects];
  objc_sync_exit(obj);
}

- (void)_applyAddItem:(id)item
{
  itemCopy = item;
  if ([itemCopy hasPin])
  {
    v4 = [itemCopy pin];
    [(MSPSyncManager *)self _addPin:v4];
  }
}

- (void)_applyUpdateItem:(id)item
{
  itemCopy = item;
  if ([itemCopy hasPin])
  {
    v4 = [itemCopy pin];
    [(MSPSyncManager *)self _updatePin:v4];
  }
}

- (void)_applyDeleteItem:(id)item
{
  itemCopy = item;
  if ([itemCopy hasPin])
  {
    v4 = [itemCopy pin];
    [(MSPSyncManager *)self _removePin:v4];
  }
}

- (void)_notifyObservers
{
  v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_pins copyItems:1];
  saveQueue = self->_saveQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__MSPSyncManager__notifyObservers__block_invoke;
  v6[3] = &unk_279865EF8;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(saveQueue, v6);
}

uint64_t __34__MSPSyncManager__notifyObservers__block_invoke(uint64_t a1)
{
  [*(a1 + 32) writePins:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 notifyObservers];
}

- (void)_updateFromDisk
{
  v23 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  pendingSyncItems = self->_pendingSyncItems;
  self->_pendingSyncItems = array;

  readPins = [(MSPSyncManager *)self readPins];
  v6 = [readPins mutableCopy];
  pins = self->_pins;
  self->_pins = v6;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  pinsMap = self->_pinsMap;
  self->_pinsMap = dictionary;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_pins;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = self->_pinsMap;
        identifier = [v15 identifier];
        [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:identifier];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }
}

- (id)_wrapPin:(id)pin changeType:(int64_t)type
{
  pinCopy = pin;
  v6 = objc_alloc_init(MSPCompanionSyncedItem);
  identifier = [pinCopy identifier];
  v8 = [MSPCompanionSyncedItem syncIdWithPrefix:@"pin:" identifier:identifier];
  [(MSPCompanionSyncedItem *)v6 setSyncId:v8];

  [(MSPCompanionSyncedItem *)v6 setPin:pinCopy];
  [(MSPCompanionSyncedItem *)v6 setSyChangeType:type];

  return v6;
}

- (void)_addPin:(id)pin
{
  pins = self->_pins;
  pinCopy = pin;
  [(NSMutableArray *)pins addObject:pinCopy];
  pinsMap = self->_pinsMap;
  identifier = [pinCopy identifier];
  [(NSMutableDictionary *)pinsMap setObject:pinCopy forKey:identifier];
}

- (void)_updatePin:(id)pin
{
  pinsMap = self->_pinsMap;
  pinCopy = pin;
  identifier = [pinCopy identifier];
  v9 = [(NSMutableDictionary *)pinsMap objectForKeyedSubscript:identifier];

  [(NSMutableArray *)self->_pins removeObject:v9];
  [(NSMutableArray *)self->_pins addObject:pinCopy];
  v7 = self->_pinsMap;
  identifier2 = [pinCopy identifier];
  [(NSMutableDictionary *)v7 setObject:pinCopy forKey:identifier2];
}

- (void)_removePin:(id)pin
{
  identifier = [pin identifier];
  v4 = [(NSMutableDictionary *)self->_pinsMap objectForKeyedSubscript:identifier];
  [(NSMutableArray *)self->_pins removeObject:v4];
  [(NSMutableDictionary *)self->_pinsMap removeObjectForKey:identifier];
}

- (id)pins
{
  v2 = [(NSMutableArray *)self->_pins copy];

  return v2;
}

- (void)setDroppedPin:(id)pin
{
  v22 = *MEMORY[0x277D85DE8];
  pinCopy = pin;
  v5 = self->_pendingSyncItems;
  objc_sync_enter(v5);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(NSMutableArray *)self->_pins copy];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  v8 = v7;
  if (v7)
  {
    v9 = *v18;
    v10 = v7;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        [(MSPSyncManager *)self _removePin:v12];
        pendingSyncItems = self->_pendingSyncItems;
        v14 = [(MSPSyncManager *)self _wrapPin:v12 changeType:3];
        [(NSMutableArray *)pendingSyncItems addObject:v14];
      }

      v10 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  if (pinCopy)
  {
    [(MSPSyncManager *)self _addPin:pinCopy];
    v15 = self->_pendingSyncItems;
    v16 = [(MSPSyncManager *)self _wrapPin:pinCopy changeType:1];
    [(NSMutableArray *)v15 addObject:v16];

    objc_sync_exit(v5);
LABEL_11:
    [(MSPSyncManager *)self writePins:self->_pins];
    [(MSPSyncManager *)self _setHasChangesAvailable];
    goto LABEL_12;
  }

  objc_sync_exit(v5);

  if (v8)
  {
    goto LABEL_11;
  }

LABEL_12:
}

@end