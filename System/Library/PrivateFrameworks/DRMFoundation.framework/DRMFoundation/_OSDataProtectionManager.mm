@interface _OSDataProtectionManager
+ (id)sharedInstance;
- (BOOL)deviceIsLocked;
- (BOOL)deviceIsPasswordConfigured;
- (BOOL)isDataAvailableFor:(id)for;
- (BOOL)isDataAvailableForClassA;
- (BOOL)isDataAvailableForClassC;
- (_OSDataProtectionManager)init;
- (id)registerStateChangeHandler:(id)handler;
- (void)deregisterStateChangeHandler:(id)handler;
- (void)handleKeyBagLockNotification;
@end

@implementation _OSDataProtectionManager

- (void)handleKeyBagLockNotification
{
  v38 = *MEMORY[0x277D85DE8];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__0;
  v34[4] = __Block_byref_object_dispose__0;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__0;
  v32 = __Block_byref_object_dispose__0;
  v33 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56___OSDataProtectionManager_handleKeyBagLockNotification__block_invoke;
  block[3] = &unk_278EEDC48;
  block[4] = self;
  block[5] = v34;
  block[6] = &v28;
  dispatch_sync(stateQueue, block);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = self->_stateQueue;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __56___OSDataProtectionManager_handleKeyBagLockNotification__block_invoke_2;
  v24[3] = &unk_278EEDC70;
  v26 = v34;
  v24[4] = self;
  v6 = dictionary;
  v25 = v6;
  dispatch_sync(v5, v24);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v37 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [v7 objectForKeyedSubscript:*(*(&v20 + 1) + 8 * v10)];
        [v11 BOOLValue];

        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v12 = v29[5];
        v13 = [v12 countByEnumeratingWithState:&v16 objects:v36 count:16];
        if (v13)
        {
          v14 = *v17;
          do
          {
            v15 = 0;
            do
            {
              if (*v17 != v14)
              {
                objc_enumerationMutation(v12);
              }

              (*(*(*(&v16 + 1) + 8 * v15++) + 16))();
            }

            while (v13 != v15);
            v13 = [v12 countByEnumeratingWithState:&v16 objects:v36 count:16];
          }

          while (v13);
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v37 count:16];
    }

    while (v8);
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(v34, 8);
}

- (BOOL)isDataAvailableForClassA
{
  if ([(_OSDataProtectionManager *)self deviceIsLocked])
  {
    return ![(_OSDataProtectionManager *)self deviceIsPasswordConfigured];
  }

  else
  {
    return 1;
  }
}

- (BOOL)deviceIsLocked
{
  v2 = MGCopyAnswer();
  v3 = v2;
  v4 = *MEMORY[0x277CBED28];
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 == v4;
}

- (BOOL)isDataAvailableForClassC
{
  if ([(_OSDataProtectionManager *)self deviceHasBeenUnlockedSinceBoot])
  {
    return 1;
  }

  else
  {
    return ![(_OSDataProtectionManager *)self deviceIsPasswordConfigured];
  }
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42___OSDataProtectionManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

- (_OSDataProtectionManager)init
{
  v32.receiver = self;
  v32.super_class = _OSDataProtectionManager;
  v2 = [(_OSDataProtectionManager *)&v32 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.DuetActivityScheduler.DataProtection.state", 0);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v3;

    v2->_deviceFormatedForContentProtection = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    handlers = v2->_handlers;
    v2->_handlers = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    availableState = v2->_availableState;
    v2->_availableState = dictionary2;

    v9 = v2->_availableState;
    v10 = +[_OSDataProtectionStateMonitor dataProtectionClassA];
    v11 = MEMORY[0x277CBEC38];
    [(NSMutableDictionary *)v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v10];

    v12 = v2->_availableState;
    v13 = +[_OSDataProtectionStateMonitor dataProtectionClassC];
    [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];

    v14 = v2->_availableState;
    v15 = +[_OSDataProtectionStateMonitor dataProtectionClassD];
    [(NSMutableDictionary *)v14 setObject:v11 forKeyedSubscript:v15];

    v16 = MKBDeviceFormattedForContentProtection();
    v2->_deviceFormatedForContentProtection = v16 != 0;
    if (v16)
    {
      v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[_OSDataProtectionManager isDataAvailableForClassA](v2, "isDataAvailableForClassA")}];
      v18 = v2->_availableState;
      v19 = +[_OSDataProtectionStateMonitor dataProtectionClassA];
      [(NSMutableDictionary *)v18 setObject:v17 forKeyedSubscript:v19];

      v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[_OSDataProtectionManager isDataAvailableForClassC](v2, "isDataAvailableForClassC")}];
      v21 = v2->_availableState;
      v22 = +[_OSDataProtectionStateMonitor dataProtectionClassC];
      [(NSMutableDictionary *)v21 setObject:v20 forKeyedSubscript:v22];

      v23 = v2->_availableState;
      v24 = +[_OSDataProtectionStateMonitor dataProtectionClassD];
      [(NSMutableDictionary *)v23 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v24];

      v25 = dispatch_queue_create("com.apple.DuetActivityScheduler.DataProtection.notify", 0);
      notifyQueue = v2->_notifyQueue;
      v2->_notifyQueue = v25;

      v2->_notifyToken = 0;
      objc_initWeak(&location, v2);
      v27 = v2->_notifyQueue;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __32___OSDataProtectionManager_init__block_invoke;
      v29[3] = &unk_278EEDC20;
      objc_copyWeak(&v30, &location);
      notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &v2->_notifyToken, v27, v29);
      v2->_notifyEnabled = 1;
      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }
  }

  return v2;
}

- (BOOL)deviceIsPasswordConfigured
{
  v2 = MGCopyAnswer();
  v3 = v2;
  v4 = *MEMORY[0x277CBED28];
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 == v4;
}

- (BOOL)isDataAvailableFor:(id)for
{
  forCopy = for;
  v5 = forCopy;
  if (self->_deviceFormatedForContentProtection)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47___OSDataProtectionManager_isDataAvailableFor___block_invoke;
    block[3] = &unk_278EEDC98;
    block[4] = self;
    v10 = forCopy;
    v11 = &v12;
    dispatch_sync(stateQueue, block);
    v7 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

- (id)registerStateChangeHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55___OSDataProtectionManager_registerStateChangeHandler___block_invoke;
    block[3] = &unk_278EEDCC0;
    block[4] = self;
    v7 = uUID;
    v12 = v7;
    v13 = handlerCopy;
    dispatch_sync(stateQueue, block);
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)deregisterStateChangeHandler:(id)handler
{
  handlerCopy = handler;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57___OSDataProtectionManager_deregisterStateChangeHandler___block_invoke;
  v7[3] = &unk_278EEDCE8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(stateQueue, v7);
}

@end