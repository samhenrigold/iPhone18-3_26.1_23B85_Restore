@interface BRInterfaceAOP
+ (id)interface;
+ (int)_convertClickState:(unint64_t)state;
+ (int)_convertForceFeel:(unint64_t)feel;
- (BOOL)_serviceSetProperty:(void *)property forKey:(__CFString *)key;
- (BOOL)_setDefaultAOPConfigs;
- (BOOL)_setGlobalAOPConfigsFromBRFConfigs:(id)configs;
- (BOOL)_setStateAOPConfigsFromStateData:(id)data andSlotData:(id)slotData;
- (BOOL)disableStates:(id)states clearAsset:(BOOL)asset error:(id *)error;
- (BOOL)enableStates:(id)states error:(id *)error;
- (BOOL)playState:(unint64_t)state forSpeed:(unint64_t)speed error:(id *)error;
- (BOOL)setConfigs:(id)configs withAssets:(id)assets forStates:(id)states error:(id *)error;
- (BOOL)setGlobalConfigs:(id)configs error:(id *)error;
- (BOOL)updateReadyState;
- (BRInterfaceAOP)initWithFastHaptics:(BOOL)haptics;
- (id)dataForSlot:(id)slot fromArray:(id)array;
- (id)description;
- (id)propertyList;
- (unint64_t)unusedAssetSlots;
- (void)_findService;
- (void)_receiveLoaderAvailableNotification:(id)notification;
- (void)dealloc;
- (void)mergeStateChanges:(id)changes into:(id)into;
- (void)propertyList;
- (void)scheduleReadyNotificationWithBlock:(id)block;
- (void)updateReadyState;
@end

@implementation BRInterfaceAOP

- (BRInterfaceAOP)initWithFastHaptics:(BOOL)haptics
{
  v13.receiver = self;
  v13.super_class = BRInterfaceAOP;
  v4 = [(BRInterface *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_fastHaptics = haptics;
    v4->_service = 0;
    v4->_connect = 0;
    v4->_notificationPort = 0;
    v4->_arrivalNotification = 0;
    v4->_isReady = 0;
    v4->_maxAssetSlots = 0;
    v4->_notificationBlock = 0;
    v6 = dlopen("/System/Library/PrivateFrameworks/Haptics.framework/Haptics", 1);
    if (!v6 || (v7 = dlsym(v6, "HAButtonHapticsLoaderServiceIsAvailableNotification"), v8 = *v7, v5->_notificationName = *v7, !v8) || ([objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")], v9 = -[objc_class sharedInstance](NSClassFromString(&cfstr_Habuttonhaptic_0.isa), "sharedInstance"), (v5->_loader = v9) == 0) || (v5->_freeSlots = 0, v10 = objc_alloc_init(MEMORY[0x277CBEB18]), (v5->_slotArray = v10) == 0) || (v11 = objc_alloc_init(MEMORY[0x277CBEB38]), (v5->_stateDict = v11) == 0))
    {
      [BRInterfaceAOP initWithFastHaptics:?];
      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  connect = self->_connect;
  if (connect)
  {
    IOServiceClose(connect);
    IOObjectRelease(self->_connect);
  }

  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
  }

  arrivalNotification = self->_arrivalNotification;
  if (arrivalNotification)
  {
    IOObjectRelease(arrivalNotification);
  }

  notificationPort = self->_notificationPort;
  if (notificationPort)
  {
    IONotificationPortDestroy(notificationPort);
  }

  v7.receiver = self;
  v7.super_class = BRInterfaceAOP;
  [(BRInterface *)&v7 dealloc];
}

- (id)description
{
  v5.receiver = self;
  v5.super_class = BRInterfaceAOP;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[BRInterface description](&v5, sel_description)}];
  [v3 appendFormat:@"Service: %u;\n", self->_service];
  [v3 appendFormat:@"Connection: %u;\n", self->_connect];
  [v3 appendFormat:@"Loader: %@;\n", self->_loader];
  [v3 appendFormat:@"FreeSlots: %@;\n", self->_freeSlots];
  [v3 appendFormat:@"SlotData: %@;\n", self->_slotArray];
  [v3 appendFormat:@"StateData: %@;\n", self->_stateDict];
  return v3;
}

- (id)propertyList
{
  v35 = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = BRInterfaceAOP;
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{-[BRInterface propertyList](&v32, sel_propertyList)}];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  freeSlots = self->_freeSlots;
  if (freeSlots)
  {
    firstIndex = [(NSMutableIndexSet *)freeSlots firstIndex];
    if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = firstIndex; i != 0x7FFFFFFFFFFFFFFFLL; i = [(NSMutableIndexSet *)self->_freeSlots indexGreaterThanIndex:i])
      {
        [array addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", i)}];
      }
    }
  }

  [v3 setObject:array forKey:@"FreeSlots"];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  slotArray = self->_slotArray;
  v11 = [(NSMutableArray *)slotArray countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(slotArray);
        }

        v15 = *(*(&v28 + 1) + 8 * j);
        if ([v15 propertyList])
        {
          [array2 addObject:{objc_msgSend(v15, "propertyList")}];
        }
      }

      v12 = [(NSMutableArray *)slotArray countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v12);
  }

  [v3 setObject:array2 forKey:@"SlotData"];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  stateDict = self->_stateDict;
  v17 = [(NSMutableDictionary *)stateDict countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(stateDict);
        }

        v21 = [(NSMutableDictionary *)self->_stateDict objectForKeyedSubscript:*(*(&v24 + 1) + 8 * k)];
        if ([v21 propertyList])
        {
          [array3 addObject:{objc_msgSend(v21, "propertyList")}];
        }
      }

      v18 = [(NSMutableDictionary *)stateDict countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v18);
  }

  [v3 setObject:array3 forKey:@"StateData"];
  v22 = _BRLog_log_0;
  if (!_BRLog_log_0)
  {
    v22 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_0 = v22;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [BRInterfaceAOP propertyList];
  }

  return v3;
}

+ (id)interface
{
  v9 = *MEMORY[0x277D85DE8];
  if (MGGetSInt32Answer() == 1)
  {
    v2 = [[BRInterfaceAOP alloc] initWithFastHaptics:0];

    return v2;
  }

  else
  {
    v8 = -337121064;
    v7 = xmmword_242155248;
    v6 = 450980336;
    v5 = xmmword_24215525C;
    v4 = MGIsDeviceOneOfType();
    result = 0;
    if (v4)
    {
      return [[BRInterfaceAOP alloc] initWithFastHaptics:1, &v5, 0];
    }
  }

  return result;
}

- (unint64_t)unusedAssetSlots
{
  result = self->_freeSlots;
  if (result)
  {
    return [result count];
  }

  return result;
}

- (BOOL)setGlobalConfigs:(id)configs error:(id *)error
{
  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"start"]);
  if ([(BRInterfaceAOP *)self _setGlobalAOPConfigsFromBRFConfigs:configs])
  {
    v8 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-536870167 userInfo:0];
    v8 = v10 != 0;
    if (error && v10)
    {
      *error = v10;
      v8 = 1;
    }
  }

  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"end"]);
  return !v8;
}

- (BOOL)enableStates:(id)states error:(id *)error
{
  v5 = a2;
  v39 = *MEMORY[0x277D85DE8];
  v7 = 0x277CCA000uLL;
  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"start"]);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = states;
  v28 = [states countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v28)
  {
    v27 = *v34;
    v24 = v5;
    while (2)
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(obj);
        }

        unsignedIntegerValue = [*(*(&v33 + 1) + 8 * i) unsignedIntegerValue];
        if (unsignedIntegerValue > 0x10 || (v11 = unsignedIntegerValue, v31 = 0u, v32 = 0u, v29 = 0u, v30 = 0u, stateDict = self->_stateDict, (v13 = [(NSMutableDictionary *)stateDict countByEnumeratingWithState:&v29 objects:v37 count:16]) == 0))
        {
LABEL_21:
          v21 = -536870206;
          v5 = v24;
          v7 = 0x277CCA000uLL;
          goto LABEL_22;
        }

        v14 = v13;
        v15 = *v30;
LABEL_9:
        v16 = 0;
        while (1)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(stateDict);
          }

          v17 = [(NSMutableDictionary *)self->_stateDict objectForKeyedSubscript:*(*(&v29 + 1) + 8 * v16)];
          if ([v17 state] == v11)
          {
            break;
          }

          if (v14 == ++v16)
          {
            v14 = [(NSMutableDictionary *)stateDict countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v14)
            {
              goto LABEL_9;
            }

            goto LABEL_21;
          }
        }

        v18 = [v17 copy];
        if (!v18)
        {
          goto LABEL_21;
        }

        v19 = v18;
        [v18 setEnabled:1];
        [dictionary setObject:v19 forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", v11)}];
      }

      v5 = v24;
      v7 = 0x277CCA000;
      v28 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  if ([(BRInterfaceAOP *)self _setStateAOPConfigsFromStateData:dictionary andSlotData:self->_slotArray])
  {
    [(BRInterfaceAOP *)self mergeStateChanges:dictionary into:self->_stateDict];
    v20 = 0;
  }

  else
  {
    v21 = -536870167;
LABEL_22:
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v21 userInfo:0];
    v20 = v22 != 0;
    if (error && v22)
    {
      *error = v22;
      v20 = 1;
    }
  }

  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [*(v7 + 3240) stringWithFormat:@"%@ %@", NSStringFromSelector(v5), @"end"]);
  return !v20;
}

- (BOOL)disableStates:(id)states clearAsset:(BOOL)asset error:(id *)error
{
  assetCopy = asset;
  v64 = *MEMORY[0x277D85DE8];
  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"start"]);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = states;
  v7 = [states countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v7)
  {
    v8 = v7;
    v41 = *v57;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v57 != v41)
        {
          objc_enumerationMutation(obj);
        }

        unsignedIntegerValue = [*(*(&v56 + 1) + 8 * i) unsignedIntegerValue];
        if (unsignedIntegerValue > 0x10)
        {
          v33 = -536870206;
          goto LABEL_45;
        }

        v11 = unsignedIntegerValue;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        stateDict = self->_stateDict;
        v13 = [(NSMutableDictionary *)stateDict countByEnumeratingWithState:&v52 objects:v62 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v53;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v53 != v15)
              {
                objc_enumerationMutation(stateDict);
              }

              v17 = [(NSMutableDictionary *)self->_stateDict objectForKeyedSubscript:*(*(&v52 + 1) + 8 * j)];
              if ([v17 state] == v11)
              {
                v18 = [v17 copy];
                if (v18)
                {
                  v19 = v18;
                  [v18 setEnabled:0];
                  [dictionary setObject:v19 forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", v11)}];
                }

                goto LABEL_18;
              }
            }

            v14 = [(NSMutableDictionary *)stateDict countByEnumeratingWithState:&v52 objects:v62 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:
        ;
      }

      v8 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if ([(BRInterfaceAOP *)self _setStateAOPConfigsFromStateData:dictionary andSlotData:self->_slotArray])
  {
    if (assetCopy)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v40 = [dictionary countByEnumeratingWithState:&v48 objects:v61 count:16];
      if (v40)
      {
        v38 = *v49;
        do
        {
          v20 = 0;
          do
          {
            if (*v49 != v38)
            {
              objc_enumerationMutation(dictionary);
            }

            v42 = v20;
            v21 = [dictionary objectForKeyedSubscript:*(*(&v48 + 1) + 8 * v20)];
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            speedSlots = [v21 speedSlots];
            v23 = [speedSlots countByEnumeratingWithState:&v44 objects:v60 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v45;
              do
              {
                for (k = 0; k != v24; ++k)
                {
                  if (*v45 != v25)
                  {
                    objc_enumerationMutation(speedSlots);
                  }

                  v27 = -[BRInterfaceAOP dataForSlot:fromArray:](self, "dataForSlot:fromArray:", [objc_msgSend(v21 "speedSlots")], self->_slotArray);
                  if (v27)
                  {
                    v28 = v27;
                    [v27 setRefCount:{objc_msgSend(v27, "refCount") - 1}];
                    if (![v28 refCount])
                    {
                      -[NSMutableIndexSet addIndex:](self->_freeSlots, "addIndex:", [objc_msgSend(v28 "slot")]);
                      [(NSMutableArray *)self->_slotArray removeObject:v28];
                    }
                  }
                }

                v24 = [speedSlots countByEnumeratingWithState:&v44 objects:v60 count:16];
              }

              while (v24);
            }

            v20 = v42 + 1;
          }

          while (v42 + 1 != v40);
          v40 = [dictionary countByEnumeratingWithState:&v48 objects:v61 count:16];
        }

        while (v40);
      }

      [(NSMutableDictionary *)self->_stateDict removeObjectsForKeys:obj];
    }

    else
    {
      [(BRInterfaceAOP *)self mergeStateChanges:dictionary into:self->_stateDict];
    }

    v29 = 0;
LABEL_42:
    v30 = a2;
    v31 = 0x277CCA000uLL;
    goto LABEL_43;
  }

  v33 = -536870167;
LABEL_45:
  v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v33 userInfo:0];
  v29 = v34 != 0;
  if (!error)
  {
    goto LABEL_42;
  }

  v30 = a2;
  v31 = 0x277CCA000;
  if (v34)
  {
    *error = v34;
    v29 = 1;
  }

LABEL_43:
  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [*(v31 + 3240) stringWithFormat:@"%@ %@", NSStringFromSelector(v30), @"end"]);
  return !v29;
}

- (id)dataForSlot:(id)slot fromArray:(id)array
{
  v17 = *MEMORY[0x277D85DE8];
  if (!slot)
  {
    return 0;
  }

  if ([slot integerValue] == -1)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [array countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v13;
LABEL_5:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(array);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    if ([slot isEqualToNumber:{objc_msgSend(v10, "slot")}])
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [array countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 0;
      if (v7)
      {
        goto LABEL_5;
      }

      return v10;
    }
  }
}

- (void)mergeStateChanges:(id)changes into:(id)into
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [changes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(changes);
        }

        [into setObject:objc_msgSend(changes forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v10 + 1) + 8 * v9)), *(*(&v10 + 1) + 8 * v9)}];
        ++v9;
      }

      while (v7 != v9);
      v7 = [changes countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)playState:(unint64_t)state forSpeed:(unint64_t)speed error:(id *)error
{
  v11 = *MEMORY[0x277D85DE8];
  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"start", speed, state, 0, v11]);
  v8 = IOConnectCallScalarMethod(self->_connect, 2u, &input, 3u, 0, 0);
  if (v8)
  {
    [BRInterfaceAOP playState:error forSpeed:? error:?];
  }

  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"end"]);
  return v8 == 0;
}

- (void)scheduleReadyNotificationWithBlock:(id)block
{
  queue = [(BRInterface *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__BRInterfaceAOP_scheduleReadyNotificationWithBlock___block_invoke;
  v6[3] = &unk_278D3F360;
  v6[4] = self;
  v6[5] = block;
  dispatch_sync(queue, v6);
  [(BRInterfaceAOP *)self _findService];
}

void *__53__BRInterfaceAOP_scheduleReadyNotificationWithBlock___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) copy];
  *(*(a1 + 32) + 64) = result;
  return result;
}

- (BOOL)updateReadyState
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = _BRLog_log_0;
  if (!_BRLog_log_0)
  {
    v3 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_0 = v3;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    if (self->_isReady)
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    serviceAvailable = [(HAButtonHapticsLoader *)self->_loader serviceAvailable];
    *v10 = 136315650;
    *&v10[4] = "[BRInterfaceAOP updateReadyState]";
    if (serviceAvailable)
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    *&v10[12] = 2080;
    *&v10[14] = v6;
    v11 = 2080;
    v12 = v8;
    _os_log_debug_impl(&dword_242149000, v3, OS_LOG_TYPE_DEBUG, "%s isReady: %s loaderReady: %s", v10, 0x20u);
  }

  if (!self->_isReady && self->_service && [(HAButtonHapticsLoader *)self->_loader serviceAvailable])
  {
    v4 = _BRLog_log_0;
    if (!_BRLog_log_0)
    {
      v4 = os_log_create("com.apple.ButtonResolver", "default");
      _BRLog_log_0 = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(BRInterfaceAOP *)v4 updateReadyState];
    }

    if ([(HAButtonHapticsLoader *)self->_loader maxNumberOfSlots:*v10]< 1)
    {
      maxNumberOfSlots = 0;
    }

    else
    {
      maxNumberOfSlots = [(HAButtonHapticsLoader *)self->_loader maxNumberOfSlots];
    }

    self->_maxAssetSlots = maxNumberOfSlots;
    self->_freeSlots = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{0, self->_maxAssetSlots}];
    [(BRInterfaceAOP *)self _setDefaultAOPConfigs];
    self->_isReady = 1;
    if (self->_notificationBlock)
    {
      dispatch_async([(BRInterface *)self queue], self->_notificationBlock);

      self->_notificationBlock = 0;
    }

    else
    {
      [BRInterfaceAOP updateReadyState];
    }
  }

  return self->_isReady;
}

- (void)_findService
{
  queue = [(BRInterface *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__BRInterfaceAOP__findService__block_invoke;
  block[3] = &unk_278D3F310;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_receiveLoaderAvailableNotification:(id)notification
{
  v5 = _BRLog_log_0;
  if (!_BRLog_log_0)
  {
    v5 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_0 = v5;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BRInterfaceAOP _receiveLoaderAvailableNotification:];
  }

  if ([objc_msgSend(notification "name")])
  {
    queue = [(BRInterface *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__BRInterfaceAOP__receiveLoaderAvailableNotification___block_invoke;
    block[3] = &unk_278D3F310;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (BOOL)_serviceSetProperty:(void *)property forKey:(__CFString *)key
{
  v7 = _BRLog_log_0;
  if (!_BRLog_log_0)
  {
    v7 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_0 = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BRInterfaceAOP _serviceSetProperty:forKey:];
  }

  v8 = IORegistryEntrySetCFProperty(self->_service, key, property);
  if (v8)
  {
    [BRInterfaceAOP _serviceSetProperty:forKey:];
  }

  return v8 == 0;
}

+ (int)_convertForceFeel:(unint64_t)feel
{
  if (feel >= 3)
  {
    return 3;
  }

  else
  {
    return feel;
  }
}

+ (int)_convertClickState:(unint64_t)state
{
  if (state >= 0x11)
  {
    return 17;
  }

  else
  {
    return state;
  }
}

- (BOOL)setConfigs:(id)configs withAssets:(id)assets forStates:(id)states error:(id *)error
{
  v192 = *MEMORY[0x277D85DE8];
  v175 = 0;
  v11 = MEMORY[0x277CCACA8];
  aSelector = a2;
  v118 = NSStringFromSelector(a2);
  [v11 stringWithFormat:@"%@ %@"];
  [OUTLINED_FUNCTION_4() timestampWithLabel:?];
  configsCopy = configs;
  errorCopy = error;
  if (!configs || !assets)
  {
LABEL_132:
    v115 = MEMORY[0x277CCA9B8];
    v116 = *MEMORY[0x277CCA590];
    v117 = -536870206;
    goto LABEL_133;
  }

  v127 = [(NSMutableIndexSet *)self->_freeSlots mutableCopy];
  obj = [MEMORY[0x277CBEB38] dictionary];
  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_slotArray copyItems:1];
  array = [MEMORY[0x277CBEB18] array];
  v13 = [states count];
  selfCopy = self;
  statesCopy = states;
  assetsCopy = assets;
  if (v13)
  {
    v21 = 0;
    v129 = @"Speed";
    do
    {
      v22 = [objc_msgSend(states objectAtIndexedSubscript:{v21), "unsignedIntegerValue"}];
      v23 = [configsCopy objectAtIndexedSubscript:v21];
      v24 = [v23 objectForKeyedSubscript:@"Speed"] ? objc_msgSend(objc_msgSend(v23, "objectForKeyedSubscript:", @"Speed"), "unsignedIntegerValue") : 3;
      if (v22 > 0x10)
      {
        goto LABEL_132;
      }

      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      stateDict = self->_stateDict;
      v26 = OUTLINED_FUNCTION_7();
      if (v26)
      {
        v27 = v26;
        v28 = *v172;
        while (2)
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v172 != v28)
            {
              objc_enumerationMutation(stateDict);
            }

            v30 = [(NSMutableDictionary *)selfCopy->_stateDict objectForKeyedSubscript:*(*(&v171 + 1) + 8 * i)];
            if ([v30 state] == v22)
            {
              memset(v170, 0, sizeof(v170));
              speedSlots = [v30 speedSlots];
              v32 = [speedSlots countByEnumeratingWithState:v170 objects:v191 count:16];
              if (v32)
              {
                v33 = v32;
                while (2)
                {
                  for (j = 0; j != v33; ++j)
                  {
                    OUTLINED_FUNCTION_5();
                    if (!v35)
                    {
                      objc_enumerationMutation(speedSlots);
                    }

                    v36 = *(*(&v170[0] + 1) + 8 * j);
                    if ([v36 unsignedIntegerValue] == v24)
                    {
                      v37 = -[BRInterfaceAOP dataForSlot:fromArray:](selfCopy, "dataForSlot:fromArray:", [objc_msgSend(v30 "speedSlots")], v12);
                      if (v37)
                      {
                        [v37 setRefCount:{objc_msgSend(v37, "refCount") - 1}];
                      }

                      goto LABEL_29;
                    }
                  }

                  v33 = [speedSlots countByEnumeratingWithState:v170 objects:v191 count:16];
                  if (v33)
                  {
                    continue;
                  }

                  break;
                }
              }

              goto LABEL_29;
            }
          }

          v27 = OUTLINED_FUNCTION_7();
          if (v27)
          {
            continue;
          }

          break;
        }
      }

LABEL_29:
      ++v21;
      states = statesCopy;
      v13 = [statesCopy count];
      self = selfCopy;
      assets = assetsCopy;
    }

    while (v21 < v13);
  }

  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  v38 = OUTLINED_FUNCTION_8(v13, v14, v15, v16, v17, v18, v19, v20, v118, @"start", 96, 88, array, error, aSelector, v127, v129, v131, configsCopy, statesCopy, assetsCopy, v138, obj, selfCopy, v144, *(&v144 + 1), v145, *(&v145 + 1), v146, *(&v146 + 1), v147, *(&v147 + 1), v148, *(&v148 + 1), v149, *(&v149 + 1), v150, *(&v150 + 1), v151, *(&v151 + 1), v152, *(&v152 + 1), v153, *(&v153 + 1), v154, *(&v154 + 1), v155, *(&v155 + 1), v156, *(&v156 + 1), v157, *(&v157 + 1), v158, *(&v158 + 1), v159, *(&v159 + 1), v160, v161, v162, *(&v162 + 1), v163, *(&v163 + 1), v164);
  if (v38)
  {
    v40 = v38;
    v41 = *v167;
    *&v39 = 136316162;
    v130 = v39;
    do
    {
      v42 = 0;
      do
      {
        if (*v167 != v41)
        {
          objc_enumerationMutation(assets);
        }

        v43 = *(*(&v166 + 1) + 8 * v42);
        isNull = [v43 isNull];
        if ((isNull & 1) == 0)
        {
          v164 = 0u;
          v165 = 0u;
          v162 = 0u;
          v163 = 0u;
          v52 = OUTLINED_FUNCTION_2(isNull, v45, &v162, v190);
          if (v52)
          {
            v53 = v52;
            while (2)
            {
              for (k = 0; k != v53; ++k)
              {
                OUTLINED_FUNCTION_5();
                if (!v35)
                {
                  objc_enumerationMutation(v12);
                }

                v55 = *(*(&v162 + 1) + 8 * k);
                v56 = [objc_msgSend(v55 "asset")];
                if (v56)
                {
                  isNull = [v55 setRefCount:{objc_msgSend(v55, "refCount") + 1}];
                  goto LABEL_52;
                }
              }

              v53 = OUTLINED_FUNCTION_2(v56, v57, &v162, v190);
              if (v53)
              {
                continue;
              }

              break;
            }
          }

          v58 = objc_alloc_init(BRSlotData);
          if (([v43 isNull] & 1) == 0)
          {
            HIWORD(v161) = 0;
            v59 = [v143[10] hapticAssetType:objc_msgSend(v43 hasAudio:"type") hasHaptic:&v161 + 7 error:{&v161 + 6, &v175}];
            v60 = _BRLog_log_0;
            if (!_BRLog_log_0)
            {
              v60 = os_log_create("com.apple.ButtonResolver", "default");
              _BRLog_log_0 = v60;
            }

            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
            {
              v61 = "NO";
              if (HIBYTE(v161))
              {
                v62 = "YES";
              }

              else
              {
                v62 = "NO";
              }

              if (BYTE6(v161))
              {
                v63 = "YES";
              }

              else
              {
                v63 = "NO";
              }

              *buf = v130;
              if (v59)
              {
                v61 = "YES";
              }

              v181 = "[BRInterfaceAOP setConfigs:withAssets:forStates:error:]";
              v182 = 2112;
              v183 = v43;
              v184 = 2080;
              v185 = v62;
              v186 = 2080;
              v187 = v63;
              v188 = 2080;
              v189 = v61;
              _os_log_debug_impl(&dword_242149000, v60, OS_LOG_TYPE_DEBUG, "%s get asset components: %@ audio: %s haptic: %s success: %s", buf, 0x34u);
              if (!v59)
              {
                goto LABEL_128;
              }
            }

            else if (!v59)
            {
              goto LABEL_128;
            }

            [v43 setHasAudio:HIBYTE(v161)];
            [v43 setHasHaptic:BYTE6(v161)];
            assets = v137;
          }

          [(BRSlotData *)v58 setAsset:v43];
          [(BRSlotData *)v58 setRefCount:1];
          isNull = [v12 addObject:v58];
        }

LABEL_52:
        ++v42;
      }

      while (v42 != v40);
      v64 = OUTLINED_FUNCTION_8(isNull, v45, v46, v47, v48, v49, v50, v51, v119, v120, v121, v122, v124, errorCopy, aSelector, v128, v130, *(&v130 + 1), v133, v135, v137, v139, obja, v143, v144, *(&v144 + 1), v145, *(&v145 + 1), v146, *(&v146 + 1), v147, *(&v147 + 1), v148, *(&v148 + 1), v149, *(&v149 + 1), v150, *(&v150 + 1), v151, *(&v151 + 1), v152, *(&v152 + 1), v153, *(&v153 + 1), v154, *(&v154 + 1), v155, *(&v155 + 1), v156, *(&v156 + 1), v157, *(&v157 + 1), v158, *(&v158 + 1), v159, *(&v159 + 1), v160, v161, v162, *(&v162 + 1), v163, *(&v163 + 1), v164);
      v40 = v64;
    }

    while (v64);
  }

  v65 = [v143 timestampWithLabel:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@ %@", NSStringFromSelector(aSelector), @"hapticComponents"}];
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v67 = OUTLINED_FUNCTION_2(v65, v66, &v156, v179);
  v68 = v135;
  if (v67)
  {
    v69 = v67;
    do
    {
      for (m = 0; m != v69; ++m)
      {
        OUTLINED_FUNCTION_5();
        if (!v35)
        {
          objc_enumerationMutation(v12);
        }

        v71 = *(*(&v156 + 1) + 8 * m);
        refCount = [v71 refCount];
        if (!refCount)
        {
          [objc_msgSend(v71 "slot")];
          [OUTLINED_FUNCTION_4() addIndex:?];
          refCount = [v124 addObject:v71];
        }
      }

      v69 = OUTLINED_FUNCTION_2(refCount, v73, &v156, v179);
    }

    while (v69);
  }

  [v12 removeObjectsInArray:v124];
  if (![v135 count])
  {
LABEL_107:
    v98 = v143;
    if (![v143 disableStates:v68 clearAsset:0 error:&v175])
    {
      goto LABEL_128;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(aSelector), @"disabledStates"];
    v99 = [OUTLINED_FUNCTION_4() timestampWithLabel:?];
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v101 = OUTLINED_FUNCTION_2(v99, v100, &v144, v176);
    if (v101)
    {
      v102 = v101;
      v103 = *v145;
      do
      {
        v104 = 0;
        do
        {
          if (*v145 != v103)
          {
            objc_enumerationMutation(v12);
          }

          v105 = *(*(&v144 + 1) + 8 * v104);
          isProgrammed = [v105 isProgrammed];
          if ((isProgrammed & 1) == 0)
          {
            asset = [v105 asset];
            if (([asset isNull] & 1) == 0)
            {
              v109 = [v98[10] loadButtonHapticOfType:objc_msgSend(asset withParameters:"type") atSlot:objc_msgSend(asset error:{"parameters"), objc_msgSend(objc_msgSend(v105, "slot"), "integerValue"), &v175}];
              v110 = _BRLog_log_0;
              if (!_BRLog_log_0)
              {
                v110 = os_log_create("com.apple.ButtonResolver", "default");
                _BRLog_log_0 = v110;
              }

              if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
              {
                slot = [v105 slot];
                *buf = 136315906;
                v112 = "NO";
                if (v109)
                {
                  v112 = "YES";
                }

                v181 = "[BRInterfaceAOP setConfigs:withAssets:forStates:error:]";
                v182 = 2112;
                v183 = asset;
                v184 = 2112;
                v185 = slot;
                v186 = 2080;
                v187 = v112;
                _os_log_debug_impl(&dword_242149000, v110, OS_LOG_TYPE_DEBUG, "%s loaded asset: %@ at slot: %@ success: %s", buf, 0x2Au);
              }

              v98 = v143;
              if (!v109)
              {
                goto LABEL_128;
              }
            }

            isProgrammed = [v105 setIsProgrammed:1];
          }

          ++v104;
        }

        while (v102 != v104);
        v113 = OUTLINED_FUNCTION_2(isProgrammed, v107, &v144, v176);
        v102 = v113;
      }

      while (v113);
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(aSelector), @"loadedHaptics"];
    [OUTLINED_FUNCTION_4() timestampWithLabel:?];
    if ([v98 _setStateAOPConfigsFromStateData:obja andSlotData:v12])
    {

      *(v98 + v122) = v128;
      *(v98 + v121) = v12;
      [v98 mergeStateChanges:obja into:v98[13]];
      goto LABEL_128;
    }

    v115 = MEMORY[0x277CCA9B8];
    v116 = *MEMORY[0x277CCA590];
    v117 = -536870167;
LABEL_133:
    v175 = [v115 errorWithDomain:v116 code:v117 userInfo:0];
    goto LABEL_128;
  }

  v74 = 0;
  while (1)
  {
    v75 = [objc_msgSend(v68 objectAtIndexedSubscript:{v74), "unsignedIntegerValue"}];
    v76 = [assets objectAtIndexedSubscript:v74];
    v77 = [v133 objectAtIndexedSubscript:v74];
    if ([v77 objectForKeyedSubscript:@"Speed"])
    {
      [objc_msgSend(v77 objectForKeyedSubscript:{@"Speed", "unsignedIntegerValue"}];
    }

    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v78 = [obja countByEnumeratingWithState:&v152 objects:v178 count:16];
    if (v78)
    {
      v79 = v78;
LABEL_80:
      v80 = 0;
      while (1)
      {
        OUTLINED_FUNCTION_5();
        if (!v35)
        {
          objc_enumerationMutation(obja);
        }

        v81 = [obja objectForKey:*(*(&v152 + 1) + 8 * v80)];
        if ([(BRStateData *)v81 state]== v75)
        {
          break;
        }

        if (v79 == ++v80)
        {
          v79 = [obja countByEnumeratingWithState:&v152 objects:v178 count:16];
          if (v79)
          {
            goto LABEL_80;
          }

          goto LABEL_88;
        }
      }

      if (v81)
      {
        goto LABEL_89;
      }
    }

LABEL_88:
    v81 = [[BRStateData alloc] initWithState:v75 enabled:1];
LABEL_89:
    v82 = 0x277CCA000;
    [(NSMutableDictionary *)[(BRStateData *)v81 speedConfigs] setObject:v77 forKeyedSubscript:OUTLINED_FUNCTION_9()];
    isNull2 = [v76 isNull];
    if (isNull2)
    {
      speedSlots2 = [(BRStateData *)v81 speedSlots];
      v86 = OUTLINED_FUNCTION_9();
      v87 = speedSlots2;
      v88 = &unk_285467E68;
LABEL_102:
      [v87 setObject:v88 forKeyedSubscript:v86];
      goto LABEL_103;
    }

    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v89 = OUTLINED_FUNCTION_2(isNull2, v84, &v148, v177);
    if (v89)
    {
      break;
    }

LABEL_103:
    [obja setObject:v81 forKeyedSubscript:{objc_msgSend(*(v82 + 2992), "numberWithUnsignedInteger:", v75)}];
    ++v74;
    v68 = v135;
    assets = v137;
    if (v74 >= [v135 count])
    {
      goto LABEL_107;
    }
  }

  v90 = v89;
LABEL_93:
  v91 = 0;
  while (1)
  {
    OUTLINED_FUNCTION_5();
    if (!v35)
    {
      objc_enumerationMutation(v12);
    }

    v92 = *(*(&v148 + 1) + 8 * v91);
    v93 = [v76 isEqual:{objc_msgSend(v92, "asset")}];
    if (v93)
    {
      break;
    }

    if (v90 == ++v91)
    {
      v90 = OUTLINED_FUNCTION_2(v93, v94, &v148, v177);
      v82 = 0x277CCA000;
      if (v90)
      {
        goto LABEL_93;
      }

      goto LABEL_103;
    }
  }

  if ([v92 slot])
  {
    slot2 = [v92 slot];
    speedSlots3 = [(BRStateData *)v81 speedSlots];
    v82 = 0x277CCA000uLL;
    v86 = OUTLINED_FUNCTION_9();
    v87 = speedSlots3;
    v88 = slot2;
    goto LABEL_102;
  }

  v82 = 0x277CCA000uLL;
  if ([v128 count])
  {
    firstIndex = [v128 firstIndex];
    [v128 removeIndex:firstIndex];
    [v92 setSlot:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", firstIndex)}];
    -[NSMutableDictionary setObject:forKeyedSubscript:](-[BRStateData speedSlots](v81, "speedSlots"), "setObject:forKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:firstIndex], OUTLINED_FUNCTION_9());
    [v92 setIsProgrammed:0];
    goto LABEL_103;
  }

  v175 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-536870210 userInfo:0];
LABEL_128:
  if (errorCopy && v175)
  {
    *errorCopy = v175;
  }

  [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(aSelector), @"end"];
  [OUTLINED_FUNCTION_4() timestampWithLabel:?];
  return v175 == 0;
}

void __30__BRInterfaceAOP__findService__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 48) = IONotificationPortCreate(*MEMORY[0x277CD28A0]);
  v2 = *(a1 + 32);
  v3 = v2[6];
  if (v3)
  {
    IONotificationPortSetDispatchQueue(v3, [v2 queue]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    v6 = *(v4 + 113) ? "AppleSPUHapticsAudioDriver" : "AppleSPUButtonDriver";
    v7 = IOServiceNameMatching(v6);
    if (!IOServiceAddMatchingNotification(v5, "IOServiceMatched", v7, AOPMatchedCallback, *(a1 + 32), (*(a1 + 32) + 56)))
    {
      v8 = *(a1 + 32);
      v9 = v8[14];

      AOPMatchedCallback(v8, v9);
    }
  }
}

- (BOOL)_setDefaultAOPConfigs
{
  v3 = [(BRInterfaceAOP *)self _serviceSetProperty:&unk_285468108 forKey:@"GlobalConfig"];
  if (v3)
  {

    LOBYTE(v3) = [(BRInterfaceAOP *)self _serviceSetProperty:&unk_2854684F0 forKey:@"StateConfig"];
  }

  return v3;
}

- (BOOL)_setGlobalAOPConfigsFromBRFConfigs:(id)configs
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = [configs count];
  if (v5)
  {
    v6 = +[BRInterfaceAOP _convertForceFeel:](BRInterfaceAOP, "_convertForceFeel:", [objc_msgSend(configs objectForKeyedSubscript:{@"ForceFeel", "unsignedIntegerValue"}]);
    if (v6 == 3)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v8 = @"GlobalForceFeel";
      v9[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
      LOBYTE(v5) = -[BRInterfaceAOP _serviceSetProperty:forKey:](self, "_serviceSetProperty:forKey:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1], @"GlobalConfig");
    }
  }

  return v5;
}

- (BOOL)_setStateAOPConfigsFromStateData:(id)data andSlotData:(id)slotData
{
  v65[18] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v5 = [data count];
  if (!v5)
  {
    return 1;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v42 = OUTLINED_FUNCTION_6(v5, v6, v7, v8, v9, v10, v11, v12, v35, v37, v39, v41, v43, obj, slotData, self, v51, array, v55, *(&v55 + 1), v56, *(&v56 + 1), v57, *(&v57 + 1), v58, *(&v58 + 1));
  if (v42)
  {
    v38 = *v60;
    dataCopy = data;
    do
    {
      v13 = 0;
      do
      {
        if (*v60 != v38)
        {
          objc_enumerationMutation(data);
        }

        v44 = v13;
        v14 = [data objectForKey:*(*(&v59 + 1) + 8 * v13)];
        v15 = +[BRInterfaceAOP _convertClickState:](BRInterfaceAOP, "_convertClickState:", [v14 state]);
        v64[0] = @"StateButtonState";
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
        v64[1] = @"StateEnable";
        v65[0] = v16;
        v65[1] = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v14, "enabled")}];
        v17 = [objc_msgSend(MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:{2), "mutableCopy"}];
        if ([v14 enabled])
        {
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          obja = [v14 speedConfigs];
          v18 = [obja countByEnumeratingWithState:&v55 objects:v63 count:16];
          if (v18)
          {
            v26 = v18;
            v52 = *v56;
            do
            {
              v27 = 0;
              do
              {
                if (*v56 != v52)
                {
                  objc_enumerationMutation(obja);
                }

                v28 = *(*(&v55 + 1) + 8 * v27);
                [v17 setObject:v28 forKey:@"StateSpeed"];
                [objc_msgSend(v14 "speedSlots")];
                [OUTLINED_FUNCTION_3() setObject:? forKey:?];
                v29 = [objc_msgSend(v50 dataForSlot:objc_msgSend(objc_msgSend(v14 fromArray:{"speedSlots"), "objectForKeyedSubscript:", v28), v48), "asset"}];
                hasAudio = [v29 hasAudio];
                if ([v29 hasHaptic])
                {
                  v31 = 2;
                }

                else
                {
                  v31 = 0;
                }

                [MEMORY[0x277CCABB0] numberWithUnsignedInt:v31 | hasAudio];
                [OUTLINED_FUNCTION_3() setObject:? forKey:?];
                if ([objc_msgSend(objc_msgSend(v14 "speedConfigs")])
                {
                  [objc_msgSend(objc_msgSend(v14 "speedConfigs")];
                  [OUTLINED_FUNCTION_3() setObject:? forKey:?];
                }

                if ([objc_msgSend(objc_msgSend(v14 "speedConfigs")])
                {
                  [objc_msgSend(objc_msgSend(v14 "speedConfigs")];
                  [OUTLINED_FUNCTION_3() setObject:? forKey:?];
                }

                if ([objc_msgSend(objc_msgSend(v14 "speedConfigs")])
                {
                  [objc_msgSend(objc_msgSend(objc_msgSend(v14 "speedConfigs")];
                  LODWORD(v33) = vcvtd_n_s64_f64(v32, 0x10uLL);
                  [MEMORY[0x277CCABB0] numberWithInt:v33];
                  [OUTLINED_FUNCTION_3() setObject:? forKey:?];
                }

                [v54 addObject:{objc_msgSend(v17, "copy")}];
                ++v27;
              }

              while (v26 != v27);
              v18 = [obja countByEnumeratingWithState:&v55 objects:v63 count:16];
              v26 = v18;
            }

            while (v18);
          }
        }

        else
        {
          v18 = [v54 addObject:v17];
        }

        v13 = v44 + 1;
        data = dataCopy;
      }

      while (v44 + 1 != v42);
      v42 = OUTLINED_FUNCTION_6(v18, v19, v20, v21, v22, v23, v24, v25, v36, v38, dataCopy, v42, v44, obja, v48, v50, v52, v54, v55, *(&v55 + 1), v56, *(&v56 + 1), v57, *(&v57 + 1), v58, *(&v58 + 1));
    }

    while (v42);
  }

  return [v50 _serviceSetProperty:v54 forKey:@"StateConfig"];
}

- (void)initWithFastHaptics:(id *)a1 .cold.1(id *a1)
{
  v2 = _BRLog_log_0;
  if (!_BRLog_log_0)
  {
    v2 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_0 = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)propertyList
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_242149000, v0, OS_LOG_TYPE_DEBUG, "%s %@", v1, 0x16u);
}

- (void)playState:(void *)a1 forSpeed:error:.cold.1(void *a1)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-536870167 userInfo:0];
  if (a1)
  {
    if (result)
    {
      *a1 = result;
    }
  }

  return result;
}

- (void)updateReadyState
{
  v0 = _BRLog_log_0;
  if (!_BRLog_log_0)
  {
    v0 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_0 = v0;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_242149000, v0, OS_LOG_TYPE_ERROR, "Unexpected error: notification block is nil!", v1, 2u);
  }
}

- (void)_receiveLoaderAvailableNotification:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_242149000, v0, OS_LOG_TYPE_DEBUG, "%s notification: %@", v1, 0x16u);
}

- (void)_serviceSetProperty:forKey:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&dword_242149000, v2, OS_LOG_TYPE_DEBUG, "%s property: %@ key: %@", v3, 0x20u);
}

- (void)_serviceSetProperty:forKey:.cold.2()
{
  v0 = _BRLog_log_0;
  if (!_BRLog_log_0)
  {
    v0 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_0 = v0;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  }
}

@end