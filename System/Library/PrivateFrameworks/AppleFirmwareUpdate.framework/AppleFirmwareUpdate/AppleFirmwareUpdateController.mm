@interface AppleFirmwareUpdateController
- (AppleFirmwareUpdateController)initWithRegistryEntryID:(id)d fwAssetDirectory:(id)directory;
- (BOOL)createFWAssetInfo;
- (BOOL)createFWAssetInfoInternal;
- (BOOL)getEarlyBootList:(id)list;
- (BOOL)getEarlyBootListInternal:(id)internal;
- (BOOL)isFWDownloadNeeded:(id)needed;
- (BOOL)registerForPendingEarlyBootAccessories;
- (BOOL)registerForPendingEarlyBootAccessoriesInternal;
- (BOOL)shouldSkipImage4Download;
- (id)extractFDRDataWithClassKey:(id)key error:(id *)error;
- (id)findFWAssetFromTag:(id)tag tag:(unsigned int)a4 size:(unint64_t *)size;
- (id)getPendingEarlyBootAccessories;
- (id)updateFirmwareWithOptions:(id)options;
- (id)updateFirmwareWithOptionsInternal:(id)internal;
- (int64_t)sendFDRData:(unsigned int)data;
- (unsigned)getConnectionForRegistryID:(int64_t *)d;
- (unsigned)getServiceForRegistryID:(int64_t *)d;
- (void)dealloc;
- (void)earlyBootAccessoryAttached:(unsigned int)attached;
- (void)earlyBootAccessoryAttachedInternal:(unsigned int)internal;
- (void)readCriticalEarlyBootEntries;
- (void)setDelegate:(id)delegate;
@end

@implementation AppleFirmwareUpdateController

- (AppleFirmwareUpdateController)initWithRegistryEntryID:(id)d fwAssetDirectory:(id)directory
{
  dCopy = d;
  directoryCopy = directory;
  v19.receiver = self;
  v19.super_class = AppleFirmwareUpdateController;
  v9 = [(AppleFirmwareUpdateController *)&v19 init];
  if (v9)
  {
    v10 = os_log_create("com.apple.accessoryfirmwareupdate", "default");
    log = v9->_log;
    v9->_log = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingCriticalEarlyBootEntriesInternal = v9->_pendingCriticalEarlyBootEntriesInternal;
    v9->_pendingCriticalEarlyBootEntriesInternal = v12;

    v14 = dispatch_queue_create("com.apple.appleFirmwareUpdate.delegateQueue", 0);
    delegateQueue = v9->_delegateQueue;
    v9->_delegateQueue = v14;

    v16 = dispatch_queue_create("com.apple.appleFirmwareUpdate.workQueue", 0);
    workQueue = v9->_workQueue;
    v9->_workQueue = v16;

    objc_storeStrong(&v9->_registryEntryID, d);
    objc_storeStrong(&v9->_fwAssetDirectory, directory);
  }

  return v9;
}

- (void)dealloc
{
  iokitNotifyPort = self->_iokitNotifyPort;
  if (iokitNotifyPort)
  {
    IONotificationPortDestroy(iokitNotifyPort);
    self->_iokitNotifyPort = 0;
  }

  v4.receiver = self;
  v4.super_class = AppleFirmwareUpdateController;
  [(AppleFirmwareUpdateController *)&v4 dealloc];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__AppleFirmwareUpdateController_setDelegate___block_invoke;
  v7[3] = &unk_278CA96A0;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(workQueue, v7);
}

- (BOOL)getEarlyBootList:(id)list
{
  listCopy = list;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__AppleFirmwareUpdateController_getEarlyBootList___block_invoke;
  block[3] = &unk_278CA96C8;
  v9 = listCopy;
  v10 = &v11;
  block[4] = self;
  v6 = listCopy;
  dispatch_sync(workQueue, block);
  LOBYTE(workQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return workQueue;
}

void __50__AppleFirmwareUpdateController_getEarlyBootList___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) getEarlyBootListInternal:*(a1 + 40)];
  [*(a1 + 32) sortEarlyBootListWithLoadingGroup:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = 136315394;
    v5 = "[AppleFirmwareUpdateController getEarlyBootList:]_block_invoke";
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&dword_240529000, v2, OS_LOG_TYPE_INFO, "%s: Ealyboot List: %@", &v4, 0x16u);
  }
}

uint64_t __67__AppleFirmwareUpdateController_sortEarlyBootListWithLoadingGroup___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 objectForKeyedSubscript:@"LoadingGroup"], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass))
  {
    v8 = [v4 objectForKeyedSubscript:@"LoadingGroup"];
  }

  else
  {
    v8 = &unk_28525FD30;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 objectForKeyedSubscript:@"LoadingGroup"], v9 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v10 = objc_opt_isKindOfClass(), v9, (v10))
  {
    v11 = [v5 objectForKeyedSubscript:@"LoadingGroup"];
  }

  else
  {
    v11 = &unk_28525FD30;
  }

  v12 = [v11 compare:v8];

  return v12;
}

- (BOOL)getEarlyBootListInternal:(id)internal
{
  v32 = *MEMORY[0x277D85DE8];
  internalCopy = internal;
  existing = 0;
  FudLogSetMode(1);
  [(AppleFirmwareUpdateController *)self readCriticalEarlyBootEntries];
  v4 = IOServiceMatching("AppleFirmwareUpdateKext");
  if (!v4 || IOServiceGetMatchingServices(*MEMORY[0x277CD28A0], v4, &existing))
  {
    v5 = 13;
    goto LABEL_26;
  }

  v5 = 0;
  v6 = *MEMORY[0x277CBECE8];
  do
  {
    v7 = IOIteratorNext(existing);
    if (!v7)
    {
      break;
    }

    v14 = v7;
    entryID = 0;
    if (IORegistryEntryGetRegistryEntryID(v7, &entryID))
    {
      v19 = 0;
      CFProperty = 0;
      v15 = 0;
      v16 = 0;
LABEL_14:
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v29 = "[AppleFirmwareUpdateController getEarlyBootListInternal:]";
        v30 = 1024;
        v31 = v14;
        _os_log_impl(&dword_240529000, log, OS_LOG_TYPE_INFO, "%s: registry entry not found for service=%d", buf, 0x12u);
      }

      v5 = 1;
      goto LABEL_17;
    }

    v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    if (!v15)
    {
      v16 = 0;
LABEL_22:
      v23 = 0;
      v5 = 14;
      goto LABEL_18;
    }

    v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    if (!v16)
    {
      goto LABEL_22;
    }

    [v15 setObject:@"com.apple.mau.plugin.generickext" forKeyedSubscript:@"DeviceClassName"];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:entryID];
    [v16 setObject:v17 forKeyedSubscript:@"IOMatchLaunchServiceID"];

    [v15 setObject:v16 forKey:@"OptionsDict"];
    CFProperty = IORegistryEntryCreateCFProperty(v14, @"Image Tag", v6, 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSMutableArray *)self->_pendingCriticalEarlyBootEntriesInternal removeObject:CFProperty];
    }

    v19 = IORegistryEntryCreateCFProperty(v14, @"LoadingGroup", v6, 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v15;
      v21 = v19;
    }

    else
    {
      v20 = v15;
      v21 = &unk_28525FD30;
    }

    [v20 setObject:v21 forKeyedSubscript:@"LoadingGroup"];
    [internalCopy addObject:v15];
    if (v5 == 1)
    {
      goto LABEL_14;
    }

LABEL_17:
    IOObjectRelease(v14);

    v23 = 1;
LABEL_18:
  }

  while ((v23 & 1) != 0);
  if (v5)
  {
LABEL_26:
    [(AppleFirmwareUpdateController *)v5 getEarlyBootListInternal:internalCopy, self];
  }

  FudLog(7, @"%s: Pending critical earlyBoot entries %@", v8, v9, v10, v11, v12, v13, "[AppleFirmwareUpdateController getEarlyBootListInternal:]");

  return 0;
}

- (BOOL)registerForPendingEarlyBootAccessories
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__AppleFirmwareUpdateController_registerForPendingEarlyBootAccessories__block_invoke;
  v5[3] = &unk_278CA9710;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__71__AppleFirmwareUpdateController_registerForPendingEarlyBootAccessories__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) registerForPendingEarlyBootAccessoriesInternal];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)registerForPendingEarlyBootAccessoriesInternal
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_pendingCriticalEarlyBootEntriesInternal count];
  if (v3)
  {
    v20 = v3;
    if (!self->_iokitNotifyPort)
    {
      self->_iokitNotifyPort = IONotificationPortCreate(*MEMORY[0x277CD28A0]);
    }

    notification = 0;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = self->_pendingCriticalEarlyBootEntriesInternal;
    v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v23;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v23 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v22 + 1) + 8 * i);
          v9 = IOServiceMatching("AppleFirmwareUpdateKext");
          v27 = @"Image Tag";
          v28 = v8;
          v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          [(__CFDictionary *)v9 setObject:v10 forKey:@"IOPropertyMatch"];

          iokitNotifyPort = self->_iokitNotifyPort;
          v12 = v9;
          if (IOServiceAddMatchingNotification(iokitNotifyPort, "IOServiceMatched", v12, serviceRegistered, self, &notification))
          {
            FudLog(7, @"%s: Failed to registered for tag %@", v13, v14, v15, v16, v17, v18, "[AppleFirmwareUpdateController registerForPendingEarlyBootAccessoriesInternal]");
          }

          else
          {
            FudLog(7, @"%s: Registered for tag %@", v13, v14, v15, v16, v17, v18, "[AppleFirmwareUpdateController registerForPendingEarlyBootAccessoriesInternal]");
            if (notification)
            {
              [(AppleFirmwareUpdateController *)self earlyBootAccessoryAttachedInternal:?];
              IOObjectRelease(notification);
            }
          }
        }

        v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v29 count:16];
      }

      while (v5);
    }

    v3 = v20;
  }

  return v3 != 0;
}

- (void)earlyBootAccessoryAttached:(unsigned int)attached
{
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__AppleFirmwareUpdateController_earlyBootAccessoryAttached___block_invoke;
  v4[3] = &unk_278CA9738;
  v4[4] = self;
  attachedCopy = attached;
  dispatch_async(workQueue, v4);
}

- (void)earlyBootAccessoryAttachedInternal:(unsigned int)internal
{
  FudLog(7, @"%s: %u", *&internal, v3, v4, v5, v6, v7, "[AppleFirmwareUpdateController earlyBootAccessoryAttachedInternal:]");
  v10 = IOIteratorNext(internal);
  if (v10)
  {
    v11 = v10;
    allocator = *MEMORY[0x277CBECE8];
    do
    {
      entryID = 0;
      if (IORegistryEntryGetRegistryEntryID(v11, &entryID))
      {
        IOObjectRelease(v11);
      }

      else
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        dictionary2 = [MEMORY[0x277CBEB38] dictionary];
        [dictionary setObject:@"com.apple.mau.plugin.generickext" forKey:@"DeviceClassName"];
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:entryID];
        [dictionary2 setObject:v14 forKey:@"IOMatchLaunchServiceID"];

        [dictionary setObject:dictionary2 forKey:@"OptionsDict"];
        CFProperty = IORegistryEntryCreateCFProperty(v11, @"Image Tag", allocator, 0);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(NSMutableArray *)self->_pendingCriticalEarlyBootEntriesInternal removeObject:CFProperty];
        }

        delegateQueue = self->_delegateQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __68__AppleFirmwareUpdateController_earlyBootAccessoryAttachedInternal___block_invoke;
        block[3] = &unk_278CA96A0;
        block[4] = self;
        v20 = dictionary;
        v17 = dictionary;
        dispatch_async(delegateQueue, block);
        IOObjectRelease(v11);
      }

      v11 = IOIteratorNext(internal);
    }

    while (v11);
  }

  if (![(NSMutableArray *)self->_pendingCriticalEarlyBootEntriesInternal count])
  {
    IONotificationPortDestroy(self->_iokitNotifyPort);
    self->_iokitNotifyPort = 0;
  }
}

void __68__AppleFirmwareUpdateController_earlyBootAccessoryAttachedInternal___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained earlyBootAccessoryAttached:*(a1 + 40)];
}

- (void)readCriticalEarlyBootEntries
{
  iterator = 0;
  if (!IORegistryCreateIterator(0, "IODeviceTree", 1u, &iterator))
  {
    v3 = IOIteratorNext(iterator);
    if (v3)
    {
      v4 = v3;
      v5 = *MEMORY[0x277CBECE8];
      do
      {
        CFProperty = IORegistryEntryCreateCFProperty(v4, @"aud-early-boot-critical", v5, 0);
        if (CFProperty)
        {
          v7 = IORegistryEntryCreateCFProperty(v4, @"image-tag", v5, 0);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 length] == 4)
          {
            v16 = 0;
            [v7 getBytes:&v16 length:4];
            FudLog(7, @"%s: Critical earlyBoot entry: imageTag %u", v8, v9, v10, v11, v12, v13, "[AppleFirmwareUpdateController readCriticalEarlyBootEntries]");
            pendingCriticalEarlyBootEntriesInternal = self->_pendingCriticalEarlyBootEntriesInternal;
            v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16];
            [(NSMutableArray *)pendingCriticalEarlyBootEntriesInternal addObject:v15];
          }
        }

        IOObjectRelease(v4);

        v4 = IOIteratorNext(iterator);
      }

      while (v4);
    }

    IOObjectRelease(iterator);
  }
}

- (id)getPendingEarlyBootAccessories
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__AppleFirmwareUpdateController_getPendingEarlyBootAccessories__block_invoke;
  v5[3] = &unk_278CA9710;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __63__AppleFirmwareUpdateController_getPendingEarlyBootAccessories__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x277CBEA60] arrayWithArray:*(*(a1 + 32) + 24)];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)createFWAssetInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__AppleFirmwareUpdateController_createFWAssetInfo__block_invoke;
  v5[3] = &unk_278CA9710;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__50__AppleFirmwareUpdateController_createFWAssetInfo__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) createFWAssetInfoInternal];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unsigned)getServiceForRegistryID:(int64_t *)d
{
  properties = 0;
  *d = 0;
  v4 = IORegistryEntryIDMatching([(NSNumber *)self->_registryEntryID unsignedLongLongValue]);
  if (v4 && (MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v4)) != 0)
  {
    v6 = MatchingService;
    v7 = IORegistryEntryCreateCFProperties(MatchingService, &properties, *MEMORY[0x277CBECE8], 0);
    v8 = properties;
    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = properties == 0;
    }

    if (!v9 || (*d = 2, v8))
    {
      CFRelease(v8);
    }
  }

  else
  {
    v6 = 0;
    *d = 2;
  }

  return v6;
}

- (id)updateFirmwareWithOptions:(id)options
{
  optionsCopy = options;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__AppleFirmwareUpdateController_updateFirmwareWithOptions___block_invoke;
  block[3] = &unk_278CA96C8;
  v10 = optionsCopy;
  v11 = &v12;
  block[4] = self;
  v6 = optionsCopy;
  dispatch_sync(workQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __59__AppleFirmwareUpdateController_updateFirmwareWithOptions___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) updateFirmwareWithOptionsInternal:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

- (id)updateFirmwareWithOptionsInternal:(id)internal
{
  v51 = *MEMORY[0x277D85DE8];
  internalCopy = internal;
  v36 = 0;
  if (!self->_registryEntryID)
  {
    v35 = 1;
    goto LABEL_33;
  }

  if ([(AppleFirmwareUpdateController *)self shouldSkipImage4Download])
  {
    goto LABEL_9;
  }

  fwAssetFile = [(AppleFirmwareUpdateController *)self fwAssetFile];

  if (!fwAssetFile)
  {
    v35 = 6;
    goto LABEL_33;
  }

  fwAssetVersion = [(AppleFirmwareUpdateController *)self fwAssetVersion];
  unsignedIntegerValue = [fwAssetVersion unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    v35 = 5;
    goto LABEL_33;
  }

  fwAssetSize = [(AppleFirmwareUpdateController *)self fwAssetSize];
  unsignedLongLongValue = [fwAssetSize unsignedLongLongValue];

  if (!unsignedLongLongValue)
  {
    v35 = 7;
    goto LABEL_33;
  }

  fwAssetSignatureType = [(AppleFirmwareUpdateController *)self fwAssetSignatureType];
  if ([fwAssetSignatureType isEqualToString:@"IMG4"])
  {

    goto LABEL_9;
  }

  fwAssetSignatureType2 = [(AppleFirmwareUpdateController *)self fwAssetSignatureType];
  v12 = [fwAssetSignatureType2 isEqualToString:@"NONE"];

  if ((v12 & 1) == 0)
  {
    v35 = 4;
LABEL_33:
    v36 = v35;
    goto LABEL_20;
  }

LABEL_9:
  if (![(AppleFirmwareUpdateController *)self isFWDownloadNeeded:self->_registryEntryID])
  {
    v35 = 15;
    goto LABEL_33;
  }

  v13 = [(AppleFirmwareUpdateController *)self getConnectionForRegistryID:&v36];
  v14 = v13;
  v15 = v36;
  if (v13 && !v36)
  {
    if (([(AppleFirmwareUpdateController *)self updateFirmwareWithOptionsInternal:v13, &v36, input]& 1) == 0)
    {
      v16 = *input;
      fwAssetSize2 = [(AppleFirmwareUpdateController *)self fwAssetSize];
      v18 = mmap(0, [fwAssetSize2 unsignedLongLongValue], 1, 2, v16, 0);

      if (v18 == -1)
      {
        v36 = 9;
      }

      else
      {
        *input = v18;
        fwAssetSize3 = [(AppleFirmwareUpdateController *)self fwAssetSize];
        *&input[8] = [fwAssetSize3 unsignedLongLongValue];
        fwAssetSignatureType3 = [(AppleFirmwareUpdateController *)self fwAssetSignatureType];
        *&input[16] = [fwAssetSignatureType3 isEqualToString:@"NONE"];
        fwAssetVersion2 = [(AppleFirmwareUpdateController *)self fwAssetVersion];
        unsignedLongLongValue2 = [fwAssetVersion2 unsignedLongLongValue];

        if (IOConnectCallScalarMethod(v14, 0, input, 4u, 0, 0) == 1)
        {
          v36 = 10;
        }

        fwAssetSize4 = [(AppleFirmwareUpdateController *)self fwAssetSize];
        munmap(v18, [fwAssetSize4 unsignedLongLongValue]);
      }

      close(v16);
    }

    goto LABEL_18;
  }

  if (v13)
  {
LABEL_18:
    IOServiceClose(v14);
    v15 = v36;
  }

  if (!v15)
  {
    v25 = 0;
    goto LABEL_27;
  }

LABEL_20:
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    if (v36 > 16)
    {
      v24 = @"Unknown Error";
    }

    else
    {
      v24 = errorString[v36];
    }

    registryEntryID = self->_registryEntryID;
    *input = 138412802;
    *&input[4] = v24;
    *&input[12] = 2048;
    *&input[14] = v36;
    *&input[22] = 2112;
    unsignedLongLongValue2 = registryEntryID;
    _os_log_impl(&dword_240529000, log, OS_LOG_TYPE_INFO, "Bootstrap Error:%@ code=0x%0lx registryEntryID=%@", input, 0x20u);
  }

  v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.AppleFirmwareUpdate" code:v36 userInfo:0];
LABEL_27:
  v27 = self->_log;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = self->_registryEntryID;
    fwAssetSize = self->_fwAssetSize;
    img4Tag = self->_img4Tag;
    fwAssetFile = self->_fwAssetFile;
    fwAssetSignatureType = self->_fwAssetSignatureType;
    fwAssetVersion = self->_fwAssetVersion;
    *input = 136317186;
    *&input[4] = "[AppleFirmwareUpdateController updateFirmwareWithOptionsInternal:]";
    *&input[12] = 2112;
    *&input[14] = v28;
    *&input[22] = 2112;
    unsignedLongLongValue2 = img4Tag;
    v39 = 2112;
    v40 = fwAssetFile;
    v41 = 2112;
    v42 = fwAssetSignatureType;
    v43 = 2112;
    v44 = fwAssetVersion;
    v45 = 2112;
    v46 = fwAssetSize;
    v47 = 2112;
    v48 = internalCopy;
    v49 = 2112;
    v50 = v25;
    _os_log_impl(&dword_240529000, v27, OS_LOG_TYPE_INFO, "%s:\n registryID=%@\n fwTag=%@ fwFile=%@\n fwSignType=%@\n fwVersion=%@\n fwSize=%@\n options=%@ error=%@", input, 0x5Cu);
  }

  return v25;
}

- (BOOL)shouldSkipImage4Download
{
  v9 = 0;
  v2 = [(AppleFirmwareUpdateController *)self getServiceForRegistryID:&v9];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  CFProperty = IORegistryEntryCreateCFProperty(v2, @"skip-image-loading", *MEMORY[0x277CBECE8], 0);
  if (CFProperty)
  {
    v5 = CFProperty;
    v6 = CFGetTypeID(CFProperty);
    v7 = v6 == CFBooleanGetTypeID() && CFBooleanGetValue(v5) != 0;
    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  IOObjectRelease(v3);
  return v7;
}

- (id)findFWAssetFromTag:(id)tag tag:(unsigned int)a4 size:(unint64_t *)size
{
  v56 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v51 = 0;
  v43 = tagCopy;
  v8 = [defaultManager contentsOfDirectoryAtPath:tagCopy error:&v51];
  v9 = v51;
  if (!v8)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_240529000, log, OS_LOG_TYPE_INFO, "No asset files found", buf, 2u);
    }

    v24 = 0;
    v32 = 0;
    goto LABEL_34;
  }

  v36 = defaultManager;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (!v10)
  {
    v39 = 0;
    goto LABEL_33;
  }

  v11 = v10;
  sizeCopy = size;
  v39 = 0;
  v42 = *v48;
  while (2)
  {
    v12 = 0;
    do
    {
      if (*v48 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v47 + 1) + 8 * v12);
      v14 = objc_autoreleasePoolPush();
      v15 = [v43 stringByAppendingPathComponent:v13];
      v16 = [MEMORY[0x277CCA9F8] fileHandleForReadingAtPath:v15];
      v46 = 0;
      v17 = [v16 readDataUpToLength:64 error:&v46];
      v18 = v46;
      [v16 closeFile];
      if (!v17 || [v17 length] != 64)
      {
        v23 = self->_log;
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        LODWORD(buf[0]) = 138543618;
        *(buf + 4) = v15;
        WORD6(buf[0]) = 2114;
        *(buf + 14) = v18;
        v20 = v23;
        v21 = "Failed to read file %{public}@ with error %{public}@";
        v22 = 22;
        goto LABEL_22;
      }

      *v52 = 0;
      if (Img4DecodeParseLengthFromBuffer([v17 bytes], objc_msgSend(v17, "length"), v52))
      {
        v19 = self->_log;
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        LODWORD(buf[0]) = 138543362;
        *(buf + 4) = v15;
        v20 = v19;
        v21 = "Failed decoding check for %{public}@";
        v22 = 12;
LABEL_22:
        _os_log_error_impl(&dword_240529000, v20, OS_LOG_TYPE_ERROR, v21, buf, v22);
        goto LABEL_13;
      }

      v45 = v9;
      v24 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v15 options:1 error:&v45];
      v38 = v45;

      if (v24)
      {
        v54 = 0;
        memset(buf, 0, sizeof(buf));
        v39 = v24;
        Img4DecodeInit([v24 bytes], objc_msgSend(v24, "length"), buf);
        if (v25)
        {
          v26 = self->_log;
          v9 = v38;
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            goto LABEL_13;
          }

          *v52 = 138412290;
          *&v52[4] = v15;
          v27 = v26;
          v28 = "IMG4 decode init failed - %@";
LABEL_26:
          _os_log_impl(&dword_240529000, v27, OS_LOG_TYPE_INFO, v28, v52, 0xCu);
          goto LABEL_13;
        }

        v44 = 0;
        v9 = v38;
        if (Img4DecodeGetPayloadType(buf, &v44))
        {
          v30 = self->_log;
          if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            goto LABEL_13;
          }

          *v52 = 138412290;
          *&v52[4] = v15;
          v27 = v30;
          v28 = "IMG4 get tag failed - %@";
          goto LABEL_26;
        }

        if (v44 == a4)
        {
          if (sizeCopy)
          {
            *sizeCopy = [v24 length];
          }

          v32 = [v15 copy];

          objc_autoreleasePoolPop(v14);
          defaultManager = v36;
          goto LABEL_34;
        }
      }

      else
      {
        v29 = self->_log;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0]) = 138543618;
          *(buf + 4) = v15;
          WORD6(buf[0]) = 2114;
          v9 = v38;
          *(buf + 14) = v38;
          _os_log_error_impl(&dword_240529000, v29, OS_LOG_TYPE_ERROR, "Failed to read %{public}@ with error %{public}@ ", buf, 0x16u);
          v39 = 0;
        }

        else
        {
          v39 = 0;
          v9 = v38;
        }
      }

LABEL_13:

      objc_autoreleasePoolPop(v14);
      ++v12;
    }

    while (v11 != v12);
    v31 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    v11 = v31;
    if (v31)
    {
      continue;
    }

    break;
  }

LABEL_33:

  v32 = 0;
  defaultManager = v36;
  v24 = v39;
LABEL_34:

  return v32;
}

- (int64_t)sendFDRData:(unsigned int)data
{
  v43 = *MEMORY[0x277D85DE8];
  MEMORY[0x245CC32D0](fdrLogHandler, a2);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(AppleFirmwareUpdateController *)self fdrClasses];
  v4 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    v24 = 0x8400302uLL;
    selfCopy = self;
    while (2)
    {
      v7 = 0;
      v27 = v5;
      do
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * v7);
        v29 = 0;
        v9 = [(AppleFirmwareUpdateController *)self extractFDRDataWithClassKey:v8 error:&v29, v24];
        v10 = v29;
        v11 = v10;
        if (v9)
        {
          v12 = v10 == 0;
        }

        else
        {
          v12 = 0;
        }

        if (v12)
        {
          v14 = [v8 dataUsingEncoding:4];
          v15 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{objc_msgSend(v9, "length") + objc_msgSend(v8, "length")}];
          [v15 appendData:v14];
          [v15 appendData:v9];
          *buf = [v15 bytes];
          *&buf[8] = [v15 length];
          *&buf[16] = [v14 length];
          v41 = xmmword_240534650;
          v16 = IOConnectCallScalarMethod(data, 1u, buf, 5u, 0, 0);
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
          {
            v18 = log;
            v19 = [v9 length];
            *v34 = v24;
            v35 = v8;
            v36 = 1024;
            v37 = v19;
            v38 = 1024;
            v39 = v16;
            _os_log_impl(&dword_240529000, v18, OS_LOG_TYPE_INFO, "LoadFDR class='%@' with %u bytes ret=%d", v34, 0x18u);
          }

          v5 = v27;
          self = selfCopy;
          if (v16 == 1)
          {

            v20 = 16;
            goto LABEL_18;
          }
        }

        else
        {
          v13 = self->_log;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v8;
            *&buf[12] = 2112;
            *&buf[14] = v11;
            _os_log_impl(&dword_240529000, v13, OS_LOG_TYPE_INFO, "Cannot find FDR data for class '%@': %@", buf, 0x16u);
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_18:

  v21 = IOConnectCallScalarMethod(data, 2u, 0, 0, 0, 0);
  v22 = self->_log;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = v21;
    _os_log_impl(&dword_240529000, v22, OS_LOG_TYPE_INFO, "LoadFDRDataComplete ret=%d", buf, 8u);
  }

  return v20;
}

- (id)extractFDRDataWithClassKey:(id)key error:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (!keyCopy)
  {
    Value = 0;
    goto LABEL_16;
  }

  v14 = @"CopyAllowUnsealed";
  v15[0] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  if ([keyCopy containsString:@"/"])
  {
    v8 = [keyCopy componentsSeparatedByString:@"/"];
    if ([v8 count] == 2)
    {
      [v8 objectAtIndexedSubscript:0];

      v9 = AMFDRSealingMapCopyLocalDictForClass();
      if (v9)
      {
        v10 = v9;
        v11 = [v8 objectAtIndexedSubscript:1];

        Value = CFDictionaryGetValue(v10, v11);
        if (!error)
        {
          goto LABEL_15;
        }

        goto LABEL_9;
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [AppleFirmwareUpdateController extractFDRDataWithClassKey:error:];
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [AppleFirmwareUpdateController extractFDRDataWithClassKey:error:];
    }

    Value = 0;
    goto LABEL_15;
  }

  Value = AMFDRSealingMapCopyLocalDataForClass();
  if (error)
  {
LABEL_9:
    *error = 0;
  }

LABEL_15:

LABEL_16:

  return Value;
}

- (BOOL)createFWAssetInfoInternal
{
  v85 = *MEMORY[0x277D85DE8];
  v70 = 0;
  v71 = 0;
  fwAssetDirectory = self->_fwAssetDirectory;
  if (fwAssetDirectory)
  {
    v4 = fwAssetDirectory;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    mEMORY[0x277D25710] = [MEMORY[0x277D25710] sharedDataAccessor];
    v69 = 0;
    v6 = [mEMORY[0x277D25710] copyPathForPersonalizedData:0 error:&v69];
    v5 = v69;

    v8 = OUTLINED_FUNCTION_2();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v73 = v6;
      OUTLINED_FUNCTION_1();
      _os_log_impl(v9, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 0xCu);
    }

    if (!v6)
    {
      CFProperty = 0;
      v31 = 0;
      v4 = 0;
      goto LABEL_34;
    }

    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v6, @"FUD"];
  }

  v13 = OUTLINED_FUNCTION_2();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v73 = v4;
    OUTLINED_FUNCTION_1();
    _os_log_impl(v14, v15, OS_LOG_TYPE_DEFAULT, v16, v17, 0xCu);
  }

  v18 = [(AppleFirmwareUpdateController *)self getServiceForRegistryID:&v71];
  if (!v18)
  {
    CFProperty = 0;
    goto LABEL_41;
  }

  v19 = v18;
  v20 = *MEMORY[0x277CBECE8];
  CFProperty = IORegistryEntryCreateCFProperty(v18, @"FDR Classes", *MEMORY[0x277CBECE8], 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v61 = v20;
    v62 = v4;
    v63 = v5;
    v64 = v6;
    [(AppleFirmwareUpdateController *)self setFdrClasses:CFProperty];
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    fdrClasses = [(AppleFirmwareUpdateController *)self fdrClasses];
    v23 = [fdrClasses countByEnumeratingWithState:&v65 objects:v84 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v66;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v66 != v25)
          {
            objc_enumerationMutation(fdrClasses);
          }

          v27 = *(*(&v65 + 1) + 8 * i);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v29 = OUTLINED_FUNCTION_2();
          v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
          if ((isKindOfClass & 1) == 0)
          {
            if (v30)
            {
              *buf = 0;
              OUTLINED_FUNCTION_1();
              _os_log_impl(v50, v51, OS_LOG_TYPE_INFO, v52, v53, 2u);
            }

            v31 = 0;
            v5 = v63;
            v6 = v64;
            v4 = v62;
            goto LABEL_34;
          }

          if (v30)
          {
            *buf = 138412290;
            *v73 = v27;
            _os_log_impl(&dword_240529000, v19, OS_LOG_TYPE_INFO, "FDR class from registry entry='%@'", buf, 0xCu);
          }
        }

        v24 = [fdrClasses countByEnumeratingWithState:&v65 objects:v84 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v5 = v63;
    v6 = v64;
    v4 = v62;
    v19 = v19;
    v20 = v61;
  }

  if ([(AppleFirmwareUpdateController *)self shouldSkipImage4Download])
  {
    v31 = 1;
    goto LABEL_34;
  }

  IORegistryEntryCreateCFProperty(v19, @"Image Tag", v20, 0);
  [OUTLINED_FUNCTION_0() setImg4Tag:?];

  img4Tag = [(AppleFirmwareUpdateController *)self img4Tag];

  if (!img4Tag)
  {
LABEL_41:
    v31 = 0;
    goto LABEL_34;
  }

  img4Tag2 = [(AppleFirmwareUpdateController *)self img4Tag];
  unsignedIntValue = [img4Tag2 unsignedIntValue];

  if (!unsignedIntValue)
  {
    v55 = OUTLINED_FUNCTION_2();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      OUTLINED_FUNCTION_1();
      v60 = 2;
LABEL_40:
      _os_log_impl(v56, v57, OS_LOG_TYPE_INFO, v58, v59, v60);
      goto LABEL_41;
    }

    goto LABEL_41;
  }

  [(AppleFirmwareUpdateController *)self findFWAssetFromTag:v4 tag:unsignedIntValue size:&v70];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0() setFwAssetFile:?];

  fwAssetFile = [(AppleFirmwareUpdateController *)self fwAssetFile];

  v36 = OUTLINED_FUNCTION_2();
  if (!fwAssetFile)
  {
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v73 = unsignedIntValue;
      OUTLINED_FUNCTION_1();
      v60 = 8;
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    img4Tag2 = img4Tag2;
    fwAssetFile2 = [(AppleFirmwareUpdateController *)self fwAssetFile];
    *buf = 67109634;
    *v73 = unsignedIntValue;
    *&v73[4] = 2112;
    *&v73[6] = fwAssetFile2;
    *&v73[14] = 2048;
    *&v73[16] = v70;
    OUTLINED_FUNCTION_1();
    _os_log_impl(v38, v39, OS_LOG_TYPE_DEFAULT, v40, v41, 0x1Cu);
  }

  [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v70];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0() setFwAssetSize:?];

  [(AppleFirmwareUpdateController *)self setFwAssetSignatureType:@"IMG4"];
  [MEMORY[0x277CCABB0] numberWithLongLong:0];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0() setFwAssetVersion:?];

  log = self->_log;
  v31 = 1;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    fwAssetSize = self->_fwAssetSize;
    img4Tag = self->_img4Tag;
    registryEntryID = self->_registryEntryID;
    v46 = self->_fwAssetDirectory;
    fwAssetFile = self->_fwAssetFile;
    fwAssetSignatureType = self->_fwAssetSignatureType;
    fwAssetVersion = self->_fwAssetVersion;
    *buf = 136316930;
    *v73 = "[AppleFirmwareUpdateController createFWAssetInfoInternal]";
    *&v73[8] = 2112;
    *&v73[10] = registryEntryID;
    *&v73[18] = 2112;
    *&v73[20] = img4Tag;
    v74 = 2112;
    v75 = v46;
    v76 = 2112;
    v77 = fwAssetFile;
    v78 = 2112;
    v79 = fwAssetSignatureType;
    v80 = 2112;
    v81 = fwAssetVersion;
    v82 = 2112;
    v83 = fwAssetSize;
    _os_log_impl(&dword_240529000, log, OS_LOG_TYPE_INFO, "%s:\n registryID=%@\n fwTag=%@ fwDirectory=%@ fwFile=%@\n fwSignType=%@\n fwVersion=%@\n fwSize=%@", buf, 0x52u);
  }

LABEL_34:

  return v31;
}

- (BOOL)isFWDownloadNeeded:(id)needed
{
  v10 = 0;
  v4 = [(AppleFirmwareUpdateController *)self getServiceForRegistryID:&v10];
  if (!v4)
  {
    return 1;
  }

  CFProperty = IORegistryEntryCreateCFProperty(v4, @"Need FUD Download", *MEMORY[0x277CBECE8], 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [CFProperty BOOLValue];
  }

  else
  {
    log = self->_log;
    bOOLValue = 1;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_240529000, log, OS_LOG_TYPE_INFO, "download needed property not in registry entry", v9, 2u);
    }
  }

  return bOOLValue;
}

- (unsigned)getConnectionForRegistryID:(int64_t *)d
{
  connect = 0;
  *d = 0;
  result = [(AppleFirmwareUpdateController *)self getServiceForRegistryID:?];
  if (result)
  {
    v5 = result;
    if (IOServiceOpen(result, *MEMORY[0x277D85F48], 0, &connect) || !connect)
    {
      *d = 3;
    }

    IOObjectRelease(v5);
    return connect;
  }

  return result;
}

- (uint64_t)getEarlyBootListInternal:(uint64_t)a3 .cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = errorString[a1];
    v8 = 136315650;
    v9 = "[AppleFirmwareUpdateController getEarlyBootListInternal:]";
    v10 = 2112;
    v11 = v6;
    v12 = 2048;
    v13 = a1;
    _os_log_impl(&dword_240529000, v5, OS_LOG_TYPE_INFO, "%s: Error:%@ code=0x%0lx", &v8, 0x20u);
  }

  return [a2 removeAllObjects];
}

- (uint64_t)updateFirmwareWithOptionsInternal:(uint64_t *)a3 .cold.1(void *a1, uint64_t a2, uint64_t *a3, int *a4)
{
  v7 = [a1 sendFDRData:a2];
  *a3 = v7;
  if (v7 || ([a1 shouldSkipImage4Download] & 1) != 0)
  {
    return 1;
  }

  v9 = [a1 fwAssetFile];
  v10 = open([v9 UTF8String], 0, 0);
  *a4 = v10;

  result = 0;
  if (v10 == -1)
  {
    *a3 = 8;
    return 1;
  }

  return result;
}

- (void)extractFDRDataWithClassKey:error:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_240529000, v0, OS_LOG_TYPE_ERROR, "%s: key (%@) is not valid.", v1, 0x16u);
}

- (void)extractFDRDataWithClassKey:error:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_240529000, v0, OS_LOG_TYPE_ERROR, "%s: localDict is NULL for key (%@).", v1, 0x16u);
}

@end