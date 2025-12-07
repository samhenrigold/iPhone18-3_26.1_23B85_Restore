@interface BCHIDBrtControl
+ (id)copyAvailableControls;
+ (id)newMonitorWithHandler:(id)handler error:(id *)error;
- (BCHIDBrtControl)init;
- (BCHIDBrtControl)initWithService:(unsigned int)service;
- (BOOL)_getDeviceNits:(double *)nits;
- (BOOL)_setDeviceNits:(double)minNits;
- (BOOL)setNits:(double)nits error:(id *)error;
- (double)getNitsWithError:(id *)error;
- (id)copyModuleIdentifier;
- (id)copyProperty:(id)property error:(id *)error;
- (unint64_t)registryID;
- (void)addDisplayService:(unsigned int)service;
- (void)dealloc;
- (void)refreshBoostFactor;
- (void)removeDisplayService;
- (void)setBoostFactor:(float)factor;
- (void)setDisplayService:(unsigned int)service;
@end

@implementation BCHIDBrtControl

+ (id)newMonitorWithHandler:(id)handler error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = _copyMatchingDict();
  inited = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = init_default_corebrightness_log();
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&dword_223D10000, inited, OS_LOG_TYPE_INFO, "matching dictionary = %@", buf, 0xCu);
  }

  v8 = dispatch_queue_create("com.apple.BCHIDBrtControl.global", 0);
  v9 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  IONotificationPortSetDispatchQueue(v9, v8);
  *buf = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __47__BCHIDBrtControl_newMonitorWithHandler_error___block_invoke;
  v24[3] = &unk_2784F8CE0;
  v24[4] = handler;
  v10 = _newBlockWrapper(v24);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v19 = __47__BCHIDBrtControl_newMonitorWithHandler_error___block_invoke_2;
  v20 = &unk_2784F8DF0;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v11 = IOServiceAddMatchingNotification(v9, "IOServiceFirstMatch", v6, _iokitCallback, v10, buf);
  if (!v11)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __47__BCHIDBrtControl_newMonitorWithHandler_error___block_invoke_5;
    v16[3] = &__block_descriptor_44_e5_v8__0l;
    v16[4] = v10;
    v17 = *buf;
    dispatch_async(v8, v16);
    v14 = objc_alloc_init(BCBrtMonitor);
    [(BCBrtMonitor *)v14 setCancelHandler:v18];
    return v14;
  }

  v12 = v11;
  v13 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    v13 = init_default_corebrightness_log();
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    +[BCHIDBrtControl newMonitorWithHandler:error:];
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (error)
  {
LABEL_10:
    *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithIOKitError:v12];
  }

LABEL_11:
  v19(v18);
  return 0;
}

uint64_t __47__BCHIDBrtControl_newMonitorWithHandler_error___block_invoke(uint64_t a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = [[BCHIDBrtControl alloc] initWithService:v5];
      (*(*(a1 + 32) + 16))();

      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void __47__BCHIDBrtControl_newMonitorWithHandler_error___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__BCHIDBrtControl_newMonitorWithHandler_error___block_invoke_3;
  block[3] = &unk_2784F8DF0;
  block[6] = *(a1 + 48);
  dispatch_async(*(a1 + 32), block);
}

void __47__BCHIDBrtControl_newMonitorWithHandler_error___block_invoke_3(uint64_t a1)
{
  IONotificationPortDestroy(*(a1 + 40));
  _freeBlockWrapper(*(a1 + 48));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

+ (id)copyAvailableControls
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  existing = 0;
  v3 = *MEMORY[0x277CD2898];
  v4 = _copyMatchingDict();
  if (IOServiceGetMatchingServices(v3, v4, &existing))
  {
    v5 = 1;
  }

  else
  {
    v5 = existing == 0;
  }

  if (!v5)
  {
    v6 = IOIteratorNext(existing);
    if (v6)
    {
      v7 = [[BCHIDBrtControl alloc] initWithService:v6];
      if (v7)
      {
        [v2 addObject:v7];
      }
    }
  }

  return v2;
}

- (id)copyModuleIdentifier
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);

  return [v2 initWithString:@"com.apple.BCBrtControl.HID"];
}

- (BCHIDBrtControl)initWithService:(unsigned int)service
{
  v72 = *MEMORY[0x277D85DE8];
  if (!service)
  {
    if ([(BCBrtControl *)self logHandle])
    {
      inited = [(BCBrtControl *)self logHandle];
    }

    else
    {
      v10 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
LABEL_11:
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [BCHIDBrtControl initWithService:];
        }

        return 0;
      }

      inited = init_default_corebrightness_log();
    }

    v10 = inited;
    goto LABEL_11;
  }

  v60.receiver = self;
  v60.super_class = BCHIDBrtControl;
  v5 = [(BCBrtControl *)&v60 init];
  if (!v5)
  {
    return v5;
  }

  v6 = objc_autoreleasePoolPush();
  v5->_nitsBoostFactor = 1.0;
  *(&v5->_hidBrightnessService + 1) = service;
  v51 = 200;
  if (IORegistryEntryGetRegistryEntryID(service, &v5->_registryID))
  {
    if ([(BCBrtControl *)v5 logHandle])
    {
      logHandle = [(BCBrtControl *)v5 logHandle];
    }

    else
    {
      v8 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
LABEL_14:
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [BCHIDBrtControl initWithService:];
        }

        goto LABEL_16;
      }

      logHandle = init_default_corebrightness_log();
    }

    v8 = logHandle;
    goto LABEL_14;
  }

LABEL_16:
  v11 = IORegistryEntrySearchCFProperty(*(&v5->_hidBrightnessService + 1), "IOService", @"kUSBContainerID", *MEMORY[0x277CBECE8], 3u);
  if (v11)
  {
    v5->super._containerID = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11];
    CFRelease(v11);
    goto LABEL_24;
  }

  v5->super._containerID = 0;
  if ([(BCBrtControl *)v5 logHandle])
  {
    logHandle2 = [(BCBrtControl *)v5 logHandle];
LABEL_20:
    v13 = logHandle2;
    goto LABEL_22;
  }

  v13 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    logHandle2 = init_default_corebrightness_log();
    goto LABEL_20;
  }

LABEL_22:
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [BCHIDBrtControl initWithService:];
  }

LABEL_24:
  v14 = dispatch_queue_create("com.apple.BCBrtControl.HID.BrtUpdate", 0);
  v5->_brightnessUpdateQueue = v14;
  if (v14)
  {
    goto LABEL_32;
  }

  if ([(BCBrtControl *)v5 logHandle])
  {
    logHandle3 = [(BCBrtControl *)v5 logHandle];
  }

  else
  {
    v16 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      goto LABEL_29;
    }

    logHandle3 = init_default_corebrightness_log();
  }

  v16 = logHandle3;
LABEL_29:
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [BCHIDBrtControl initWithService:];
  }

  [MEMORY[0x277CBEAD8] raise:@"Resource unavailable" format:{@"Invalid queue", 200}];
LABEL_32:
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x3052000000;
  v59[3] = __Block_byref_object_copy__0;
  v59[4] = __Block_byref_object_dispose__0;
  v59[5] = v5;
  v17 = [objc_alloc(MEMORY[0x277CD2850]) initWithService:*(&v5->_hidBrightnessService + 1)];
  v5->_hidBrightnessDevice = v17;
  if (!v17)
  {
    if ([(BCBrtControl *)v5 logHandle])
    {
      logHandle4 = [(BCBrtControl *)v5 logHandle];
    }

    else
    {
      v30 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        goto LABEL_67;
      }

      logHandle4 = init_default_corebrightness_log();
    }

    v30 = logHandle4;
LABEL_67:
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [BCHIDBrtControl initWithService:];
    }

    goto LABEL_76;
  }

  [(HIDDevice *)v17 setDispatchQueue:[(BCBrtControl *)v5 queue]];
  hidBrightnessDevice = v5->_hidBrightnessDevice;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __35__BCHIDBrtControl_initWithService___block_invoke;
  v58[3] = &unk_2784F8D50;
  v58[4] = v59;
  [(HIDDevice *)hidBrightnessDevice setRemovalHandler:v58];
  [(HIDDevice *)v5->_hidBrightnessDevice open];
  [(HIDDevice *)v5->_hidBrightnessDevice activate];
  v19 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  v20 = [(HIDDevice *)v5->_hidBrightnessDevice elementsMatching:v19];
  v53 = v6;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v54 objects:v71 count:16];
  if (!v21)
  {
    goto LABEL_49;
  }

  v22 = *v55;
  do
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v55 != v22)
      {
        objc_enumerationMutation(v20);
      }

      v24 = *(*(&v54 + 1) + 8 * i);
      if ([v24 type] == 257 && objc_msgSend(v24, "usage") == 16 && objc_msgSend(v24, "usagePage") == 130)
      {
        v25 = v24;
        v26 = &OBJC_IVAR___BCHIDBrtControl__brightnessElement;
LABEL_46:
        *(&v5->super.super.isa + *v26) = v25;
        continue;
      }

      if ([v24 type] == 257 && objc_msgSend(v24, "usage") == 80 && objc_msgSend(v24, "usagePage") == 15)
      {
        v25 = v24;
        v26 = &OBJC_IVAR___BCHIDBrtControl__brightnessFadeElement;
        goto LABEL_46;
      }
    }

    v21 = [v20 countByEnumeratingWithState:&v54 objects:v71 count:16];
  }

  while (v21);
LABEL_49:

  if (!v5->_brightnessElement)
  {
    if ([(BCBrtControl *)v5 logHandle])
    {
      logHandle5 = [(BCBrtControl *)v5 logHandle];
    }

    else
    {
      v34 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        goto LABEL_73;
      }

      logHandle5 = init_default_corebrightness_log();
    }

    v34 = logHandle5;
LABEL_73:
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [BCHIDBrtControl initWithService:];
    }

LABEL_76:
    _Block_object_dispose(v59, 8);
    objc_autoreleasePoolPop(v6);
    return 0;
  }

  v5->_nitsScaler = 100.0;
  if ([(HIDElement *)v5->_brightnessElement physicalMax]< 2001 || [(HIDElement *)v5->_brightnessElement unitExponent]< 1)
  {
    v5->super._maxNits = [(HIDElement *)v5->_brightnessElement physicalMax];
    physicalMin = [(HIDElement *)v5->_brightnessElement physicalMin];
LABEL_58:
    v5->super._minNits = physicalMin;
  }

  else
  {
    v27 = scaleForExponent([(HIDElement *)v5->_brightnessElement unitExponent]);
    v5->_nitsScaler = v27;
    if (v27 > 0.0)
    {
      v5->super._maxNits = ([(HIDElement *)v5->_brightnessElement physicalMax]/ v5->_nitsScaler);
      physicalMin = ([(HIDElement *)v5->_brightnessElement physicalMin]/ v5->_nitsScaler);
      goto LABEL_58;
    }
  }

  if (![(BCHIDBrtControl *)v5 _getDeviceNits:&v5->_nits, v51])
  {
    if ([(BCBrtControl *)v5 logHandle])
    {
      logHandle6 = [(BCBrtControl *)v5 logHandle];
      goto LABEL_62;
    }

    v32 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      logHandle6 = init_default_corebrightness_log();
LABEL_62:
      v32 = logHandle6;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [BCHIDBrtControl initWithService:];
    }

    v5->_nits = 150.0;
  }

  if ([(BCBrtControl *)v5 logHandle])
  {
    logHandle7 = [(BCBrtControl *)v5 logHandle];
    goto LABEL_85;
  }

  v37 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    logHandle7 = init_default_corebrightness_log();
LABEL_85:
    v37 = logHandle7;
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    nits = v5->_nits;
    maxNits = v5->super._maxNits;
    minNits = v5->super._minNits;
    nitsScaler = v5->_nitsScaler;
    unitExponent = [(HIDElement *)v5->_brightnessElement unitExponent];
    *buf = 134219008;
    v62 = nits;
    v63 = 2048;
    v64 = maxNits;
    v65 = 2048;
    v66 = minNits;
    v67 = 2048;
    v68 = nitsScaler;
    v69 = 2048;
    v70 = unitExponent;
    _os_log_impl(&dword_223D10000, v37, OS_LOG_TYPE_DEFAULT, "nits = %f, maxNits = %f, minNits = %f, nitsScaler = %f, exponent = %ld", buf, 0x34u);
    v6 = v53;
  }

  if (v5->super._containerID)
  {
    v43 = objc_autoreleasePoolPush();
    [(NSMutableDictionary *)v5->super._capabilities setValue:[(NSUUID *)v5->super._containerID UUIDString] forKey:@"kUSBContainerID"];
    objc_autoreleasePoolPop(v43);
  }

  -[NSMutableDictionary setValue:forKey:](v5->super._capabilities, "setValue:forKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(&v5->super.super.isa + v52)], @"RegistryID");
  -[NSMutableDictionary setValue:forKey:](v5->super._capabilities, "setValue:forKey:", [MEMORY[0x277CCABB0] numberWithDouble:v5->super._minNits], @"MinNits");
  -[NSMutableDictionary setValue:forKey:](v5->super._capabilities, "setValue:forKey:", [MEMORY[0x277CCABB0] numberWithDouble:v5->super._maxNits], @"MaxNits");
  -[NSMutableDictionary setValue:forKey:](v5->super._capabilities, "setValue:forKey:", [MEMORY[0x277CCABB0] numberWithBool:0], @"BuiltIn");
  v5->super._isValid = 1;
  if ([(BCBrtControl *)v5 logHandle])
  {
    logHandle8 = [(BCBrtControl *)v5 logHandle];
    goto LABEL_93;
  }

  v45 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    logHandle8 = init_default_corebrightness_log();
LABEL_93:
    v45 = logHandle8;
  }

  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    v46 = v5->_hidBrightnessDevice;
    v47 = *(&v5->_hidBrightnessService + 1);
    *buf = 138543618;
    v62 = *&v46;
    v63 = 1024;
    LODWORD(v64) = v47;
    _os_log_impl(&dword_223D10000, v45, OS_LOG_TYPE_INFO, "successfully created HID device (%{public}@) for service %ul", buf, 0x12u);
  }

  if ([(BCBrtControl *)v5 logHandle])
  {
    logHandle9 = [(BCBrtControl *)v5 logHandle];
    goto LABEL_99;
  }

  v49 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    logHandle9 = init_default_corebrightness_log();
LABEL_99:
    v49 = logHandle9;
  }

  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    capabilities = v5->super._capabilities;
    *buf = 138543362;
    v62 = *&capabilities;
    _os_log_impl(&dword_223D10000, v49, OS_LOG_TYPE_INFO, "capabilities = %{public}@", buf, 0xCu);
  }

  _Block_object_dispose(v59, 8);
  objc_autoreleasePoolPop(v6);
  return v5;
}

void __35__BCHIDBrtControl_initWithService___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  *(*(*(*(a1 + 32) + 8) + 40) + 32) = 0;
  if ([*(*(*(a1 + 32) + 8) + 40) logHandle])
  {
    inited = [*(*(*(a1 + 32) + 8) + 40) logHandle];
LABEL_3:
    v3 = inited;
    goto LABEL_5;
  }

  v3 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = init_default_corebrightness_log();
    goto LABEL_3;
  }

LABEL_5:
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_223D10000, v3, OS_LOG_TYPE_INFO, "device removed", buf, 2u);
  }

  if ([*(*(*(a1 + 32) + 8) + 40) logHandle])
  {
    v4 = [*(*(*(a1 + 32) + 8) + 40) logHandle];
LABEL_9:
    v5 = v4;
    goto LABEL_11;
  }

  v5 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    v4 = init_default_corebrightness_log();
    goto LABEL_9;
  }

LABEL_11:
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(*(*(a1 + 32) + 8) + 40) displayInvalidHandler];
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&dword_223D10000, v5, OS_LOG_TYPE_INFO, "weakSelf.displayInvalidHandler = %@", buf, 0xCu);
  }

  if ([*(*(*(a1 + 32) + 8) + 40) callbackQueue])
  {
    global_queue = [*(*(*(a1 + 32) + 8) + 40) callbackQueue];
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__BCHIDBrtControl_initWithService___block_invoke_24;
  block[3] = &unk_2784F8D50;
  block[4] = *(a1 + 32);
  dispatch_async(global_queue, block);
}

void *__35__BCHIDBrtControl_initWithService___block_invoke_24(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 40) displayInvalidHandler];
  if (result)
  {
    v3 = *([*(*(*(a1 + 32) + 8) + 40) displayInvalidHandler] + 16);

    return v3();
  }

  return result;
}

- (BCHIDBrtControl)init
{
  v3 = objc_autoreleasePoolPush();
  v4 = _copyMatchingDict();
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v4);
  objc_autoreleasePoolPop(v3);

  return [(BCHIDBrtControl *)self initWithService:MatchingService];
}

- (void)dealloc
{
  if ([(BCBrtControl *)self logHandle])
  {
    inited = [(BCBrtControl *)self logHandle];
LABEL_3:
    v4 = inited;
    goto LABEL_5;
  }

  v4 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = init_default_corebrightness_log();
    goto LABEL_3;
  }

LABEL_5:
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223D10000, v4, OS_LOG_TYPE_DEFAULT, "dealloc", buf, 2u);
  }

  [(BCHIDBrtControl *)self removeDisplayService];
  brightnessUpdateQueue = self->_brightnessUpdateQueue;
  if (brightnessUpdateQueue)
  {
    dispatch_release(brightnessUpdateQueue);
    self->_brightnessUpdateQueue = 0;
  }

  [(HIDDevice *)self->_hidBrightnessDevice cancel];
  [(HIDDevice *)self->_hidBrightnessDevice close];

  v6.receiver = self;
  v6.super_class = BCHIDBrtControl;
  [(BCBrtControl *)&v6 dealloc];
}

- (unint64_t)registryID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = [(BCBrtControl *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__BCHIDBrtControl_registryID__block_invoke;
  v6[3] = &unk_2784F8E18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)_getDeviceNits:(double *)nits
{
  v4 = 0;
  v26 = *MEMORY[0x277D85DE8];
  while (1)
  {
    v5 = objc_autoreleasePoolPush();
    v19 = 0;
    if (-[HIDDevice commitElements:direction:error:](self->_hidBrightnessDevice, "commitElements:direction:error:", [MEMORY[0x277CBEA60] arrayWithObject:self->_brightnessElement], 0, &v19))
    {
      break;
    }

    if ([(BCBrtControl *)self logHandle])
    {
      inited = [(BCBrtControl *)self logHandle];
LABEL_5:
      v7 = inited;
      goto LABEL_7;
    }

    v7 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
      goto LABEL_5;
    }

LABEL_7:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = *&v19;
      _os_log_error_impl(&dword_223D10000, v7, OS_LOG_TYPE_ERROR, "failed to commit elements %{public}@", buf, 0xCu);
    }

    if ([v19 retIOKitError] != -536850432)
    {
      ++v4;
    }

    if (v4 > 8)
    {
      break;
    }

    if ([(BCBrtControl *)self logHandle])
    {
      logHandle = [(BCBrtControl *)self logHandle];
LABEL_14:
      v9 = logHandle;
      goto LABEL_16;
    }

    v9 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      logHandle = init_default_corebrightness_log();
      goto LABEL_14;
    }

LABEL_16:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v21) = v4;
      _os_log_error_impl(&dword_223D10000, v9, OS_LOG_TYPE_ERROR, "retrying commit attempt No.%d", buf, 8u);
    }

    usleep(0xC350u);
    objc_autoreleasePoolPop(v5);
  }

  objc_autoreleasePoolPop(v5);
  [(HIDElement *)self->_brightnessElement scaleValue:2];
  *&v10 = v10;
  v11 = *&v10;
  if (self->super._maxNits >= *&v10 && self->super._minNits <= v11)
  {
    *nits = v11;
    LOBYTE(v14) = 1;
  }

  else
  {
    if ([(BCBrtControl *)self logHandle])
    {
      logHandle2 = [(BCBrtControl *)self logHandle];
      goto LABEL_25;
    }

    v13 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      logHandle2 = init_default_corebrightness_log();
LABEL_25:
      v13 = logHandle2;
    }

    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      minNits = self->super._minNits;
      maxNits = self->super._maxNits;
      *buf = 134218496;
      v21 = v11;
      v22 = 2048;
      v23 = minNits;
      v24 = 2048;
      v25 = maxNits;
      _os_log_error_impl(&dword_223D10000, v13, OS_LOG_TYPE_ERROR, "error: value (%f) out of bounds (%f-%f)", buf, 0x20u);
      LOBYTE(v14) = 0;
    }
  }

  return v14;
}

- (BOOL)_setDeviceNits:(double)minNits
{
  if (self->super._minNits >= minNits)
  {
    minNits = self->super._minNits;
  }

  if (self->super._maxNits < minNits)
  {
    minNits = self->super._maxNits;
  }

  brighntessUpdateCounter = self->_brighntessUpdateCounter;
  self->_brighntessUpdateCounter = brighntessUpdateCounter + 1;
  v4 = minNits;
  self->_brightnessUpdateTarget = v4;
  self->_nits = minNits;
  if (!brighntessUpdateCounter)
  {
    brightnessUpdateQueue = self->_brightnessUpdateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__BCHIDBrtControl__setDeviceNits___block_invoke;
    block[3] = &unk_2784F8E40;
    block[4] = self;
    dispatch_async(brightnessUpdateQueue, block);
  }

  return 1;
}

void __34__BCHIDBrtControl__setDeviceNits___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__BCHIDBrtControl__setDeviceNits___block_invoke_2;
  block[3] = &unk_2784F8E18;
  block[4] = *v1;
  block[5] = &v17;
  dispatch_sync(v2, block);
  if (*(v18 + 24) == 1)
  {
    v3 = objc_autoreleasePoolPush();
    v15 = 0;
    v4 = [MEMORY[0x277CBEB18] arrayWithObject:*(*v1 + 16)];
    v5 = v4;
    v6 = *v1;
    if (*(*v1 + 17))
    {
      [v4 addObject:?];
      v6 = *v1;
    }

    v7 = [v6[15] commitElements:v5 direction:1 error:&v15];
    v8 = *v1;
    if (v7)
    {
      if ([v8 logHandle])
      {
        inited = [*v1 logHandle];
      }

      else
      {
        v10 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
LABEL_12:
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v13 = *(*v1 + 19);
            v14 = *(*v1 + 49);
            *buf = 134218240;
            v22 = v13;
            v23 = 2048;
            v24 = v14;
            _os_log_impl(&dword_223D10000, v10, OS_LOG_TYPE_INFO, "setting nits %f X %f boost factor", buf, 0x16u);
          }

LABEL_17:
          objc_autoreleasePoolPop(v3);
          goto LABEL_18;
        }

        inited = init_default_corebrightness_log();
      }

      v10 = inited;
      goto LABEL_12;
    }

    if ([v8 logHandle])
    {
      v11 = [*v1 logHandle];
    }

    else
    {
      v12 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
LABEL_15:
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          __34__BCHIDBrtControl__setDeviceNits___block_invoke_cold_1(v1, &v15, v12);
        }

        goto LABEL_17;
      }

      v11 = init_default_corebrightness_log();
    }

    v12 = v11;
    goto LABEL_15;
  }

LABEL_18:
  _Block_object_dispose(&v17, 8);
}

void *__34__BCHIDBrtControl__setDeviceNits___block_invoke_2(void *result)
{
  v1 = result[4];
  if (*(v1 + 168))
  {
    v2 = result;
    v3 = *(v1 + 152) * *(v1 + 196);
    if (*(v1 + 48) < v3)
    {
      v3 = *(v1 + 48);
    }

    if (*(v1 + 64) >= v3)
    {
      v3 = *(v1 + 64);
    }

    [*(v1 + 128) setIntegerValue:(v3 * *(v1 + 144))];
    result = *(v2[4] + 136);
    if (result)
    {
      result = [result setIntegerValue:0];
    }

    *(*(v2[5] + 8) + 24) = 1;
    v1 = v2[4];
  }

  *(v1 + 168) = 0;
  return result;
}

- (BOOL)setNits:(double)nits error:(id *)error
{
  queue = [(BCBrtControl *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__BCHIDBrtControl_setNits_error___block_invoke;
  v8[3] = &unk_2784F8E68;
  v8[4] = self;
  *&v8[5] = nits;
  dispatch_sync(queue, v8);
  return 1;
}

- (double)getNitsWithError:(id *)error
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0xBFF0000000000000;
  queue = [(BCBrtControl *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__BCHIDBrtControl_getNitsWithError___block_invoke;
  block[3] = &unk_2784F8E90;
  block[4] = self;
  block[5] = &v13;
  block[6] = &v9;
  dispatch_sync(queue, block);
  if (error && (v14[3] & 1) == 0)
  {
    *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithBCError:19];
  }

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6;
}

void *__36__BCHIDBrtControl_getNitsWithError___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _getDeviceNits:*(*(a1 + 48) + 8) + 24];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)copyProperty:(id)property error:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v6 = [(BCBrtControl *)self queue:property];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__BCHIDBrtControl_copyProperty_error___block_invoke;
  block[3] = &unk_2784F8EB8;
  block[5] = self;
  block[6] = &v10;
  block[4] = property;
  dispatch_sync(v6, block);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t __38__BCHIDBrtControl_copyProperty_error___block_invoke(uint64_t a1)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [objc_msgSend(*(*(a1 + 40) + 120) propertyForKey:{*(a1 + 32)), "copy"}];
    *(*(*(a1 + 48) + 8) + 40) = result;
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      result = IORegistryEntrySearchCFProperty(*(*(a1 + 40) + 116), "IOService", *(a1 + 32), *MEMORY[0x277CBECE8], 3u);
      *(*(*(a1 + 48) + 8) + 40) = result;
    }
  }

  return result;
}

- (void)setDisplayService:(unsigned int)service
{
  v3 = *&service;
  v8 = *MEMORY[0x277D85DE8];
  if (self->super._displayService)
  {
    [(BCHIDBrtControl *)self removeDisplayService];
    [(BCHIDBrtControl *)self _setDeviceNits:self->_nits];
  }

  if (v3)
  {
    if ([(BCBrtControl *)self logHandle])
    {
      inited = [(BCBrtControl *)self logHandle];
    }

    else
    {
      v6 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        goto LABEL_8;
      }

      inited = init_default_corebrightness_log();
    }

    v6 = inited;
LABEL_8:
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109120;
      v7[1] = v3;
      _os_log_impl(&dword_223D10000, v6, OS_LOG_TYPE_INFO, "adding display service (0x%X)", v7, 8u);
    }

    [(BCHIDBrtControl *)self addDisplayService:v3];
  }
}

- (void)removeDisplayService
{
  boostFactorNotificationPort = self->_boostFactorNotificationPort;
  if (boostFactorNotificationPort)
  {
    IONotificationPortDestroy(boostFactorNotificationPort);
    self->_boostFactorNotificationPort = 0;
  }

  boostFactorNotification = self->_boostFactorNotification;
  if (boostFactorNotification)
  {
    IOObjectRelease(boostFactorNotification);
    self->_boostFactorNotification = 0;
  }

  self->super._displayService = 0;
  self->_nitsBoostFactor = 1.0;
}

- (void)addDisplayService:(unsigned int)service
{
  self->super._displayService = service;
  v4 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  self->_boostFactorNotificationPort = v4;
  if (v4)
  {
    queue = self->super._queue;
    if (queue)
    {
      IONotificationPortSetDispatchQueue(v4, queue);
      IOServiceAddInterestNotification(self->_boostFactorNotificationPort, self->super._displayService, "IOGeneralInterest", BoostFactorUpdateNotificationCallback, self, &self->_boostFactorNotification);

      [(BCHIDBrtControl *)self refreshBoostFactor];
    }
  }
}

- (void)setBoostFactor:(float)factor
{
  p_nitsBoostFactor = &self->_nitsBoostFactor;
  self->_nitsBoostFactor = factor;
  if ([(BCBrtControl *)self logHandle])
  {
    inited = [(BCBrtControl *)self logHandle];
LABEL_3:
    v6 = inited;
    goto LABEL_5;
  }

  v6 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = init_default_corebrightness_log();
    goto LABEL_3;
  }

LABEL_5:
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(BCHIDBrtControl *)p_nitsBoostFactor setBoostFactor:v6];
  }

  [(BCHIDBrtControl *)self _setDeviceNits:self->_nits];
}

- (void)refreshBoostFactor
{
  displayService = self->super._displayService;
  if (displayService)
  {
    CFProperty = IORegistryEntryCreateCFProperty(displayService, @"Brightness_Scale", *MEMORY[0x277CBECE8], 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[BCHIDBrtControl boostFactorFromIOFixed:](self, "boostFactorFromIOFixed:", [CFProperty intValue]);
      [(BCHIDBrtControl *)self setBoostFactor:?];
      if (!CFProperty)
      {
        return;
      }
    }

    else
    {
      logHandle = self->super._logHandle;
      if (!logHandle)
      {
        logHandle = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          logHandle = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        [BCHIDBrtControl refreshBoostFactor];
        if (!CFProperty)
        {
          return;
        }
      }

      else if (!CFProperty)
      {
        return;
      }
    }

    CFRelease(CFProperty);
  }
}

- (void)initWithService:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithService:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithService:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithService:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithService:.cold.6()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithService:.cold.7()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __34__BCHIDBrtControl__setDeviceNits___block_invoke_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 152);
  v4 = *a2;
  v5 = 134218242;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&dword_223D10000, log, OS_LOG_TYPE_ERROR, "failed to set %f nits (%{public}@)", &v5, 0x16u);
}

- (double)setBoostFactor:(float *)a1 .cold.1(float *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_223D10000, a2, OS_LOG_TYPE_DEBUG, "updated boost factor: %f", &v4, 0xCu);
  return result;
}

@end