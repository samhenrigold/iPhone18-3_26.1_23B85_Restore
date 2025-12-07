@interface ASAccessorySession
+ (BOOL)validateAccessorySetupBundleInfo:(id)info error:(id *)error;
- (ASAccessorySession)init;
- (BOOL)_hasBluetoothASK;
- (BOOL)_verifyCoreBluetoothStateToActivatePicker:(id)picker;
- (NSArray)accessories;
- (OS_dispatch_queue)queue;
- (void)_activateWithQueue:(id)queue eventHandler:(id)handler;
- (void)_applicationWillEnterForegroundNotification;
- (void)_fetchAuthorizedAccesoriesIfNeeded;
- (void)_fetchBluetoothGlobalTCC;
- (void)_finishDiscovery:(id)discovery;
- (void)_handleDASessionEventHandler:(id)handler session:(id)session;
- (void)_invalidated;
- (void)_notifyAccesoriesChangedIfNeeded:(id)needed bundleID:(id)d eventType:(int64_t)type;
- (void)_removeAccessory:(id)accessory completionHandler:(id)handler;
- (void)_setupDeviceAccessSession;
- (void)_showPickerForDisplayItems:(id)items completionHandler:(id)handler;
- (void)_updateAccessory:(id)accessory settings:(id)settings completionHandler:(id)handler;
- (void)_updatePickerWithDiscoveredDisplayItems:(id)items completionHandler:(id)handler;
- (void)_validateDiscoveryDescriptor:(id)descriptor;
- (void)_validateDisplayItem:(id)item;
- (void)_validateMigrationDisplayItem:(id)item;
- (void)activateWithQueue:(id)queue eventHandler:(id)handler;
- (void)dealloc;
- (void)failAuthorization:(id)authorization completionHandler:(id)handler;
- (void)finishPickerDiscovery:(id)discovery;
- (void)invalidate;
- (void)pickerDidReport:(id)report;
- (void)relayPickerEvent:(id)event;
- (void)removeAccessory:(id)accessory completionHandler:(id)handler;
- (void)renameAccessory:(id)accessory options:(unint64_t)options completionHandler:(id)handler;
- (void)showPickerForDisplayItems:(id)items completionHandler:(id)handler;
- (void)showPickerWithCompletionHandler:(id)handler;
- (void)updateAccessory:(id)accessory settings:(id)settings completionHandler:(id)handler;
- (void)updateAuthorization:(id)authorization descriptor:(id)descriptor completionHandler:(id)handler;
- (void)updatePickerShowingDiscoveredDisplayItems:(id)items completionHandler:(id)handler;
@end

@implementation ASAccessorySession

- (ASAccessorySession)init
{
  v24.receiver = self;
  v24.super_class = ASAccessorySession;
  v2 = [(ASAccessorySession *)&v24 init];
  if (!v2)
  {
    goto LABEL_6;
  }

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  environment = [processInfo environment];
  v5 = [environment objectForKeyedSubscript:@"XCTestConfigurationFilePath"];

  if (v5)
  {
LABEL_5:
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    accessories = v2->_accessories;
    v2->_accessories = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    discoveredAccessories = v2->_discoveredAccessories;
    v2->_discoveredAccessories = dictionary2;

    v2->_bluetoothTCCStateUnknown = 0;
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    bundleID = v2->_bundleID;
    v2->_bundleID = bundleIdentifier;

    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__applicationWillEnterForegroundNotification name:@"UIApplicationWillEnterForegroundNotification" object:0];

    v19 = v2;
LABEL_6:

    return v2;
  }

  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  infoDictionary = [mainBundle2 infoDictionary];

  v23 = 0;
  v8 = [ASAccessorySession validateAccessorySetupBundleInfo:infoDictionary error:&v23];
  v9 = v23;
  v10 = v9;
  if (v8)
  {

    goto LABEL_5;
  }

  v21 = FatalErrorF("Activation failed. %@", v9);
  [(ASAccessorySession *)v21 dealloc];
  return result;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateDone)
  {
    v4 = [ASAccessorySession dealloc];
    [(ASAccessorySession *)v4 activateWithEventHandler:v5, v6];
  }

  else
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];

    v7.receiver = self;
    v7.super_class = ASAccessorySession;
    [(ASAccessorySession *)&v7 dealloc];
  }
}

- (void)activateWithQueue:(id)queue eventHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  if (handlerCopy)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__ASAccessorySession_activateWithQueue_eventHandler___block_invoke;
    block[3] = &unk_278A01AA0;
    block[4] = self;
    v13 = queueCopy;
    v14 = handlerCopy;
    v9 = handlerCopy;
    v10 = queueCopy;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    v11 = [ASAccessorySession activateWithQueue:eventHandler:];
    __53__ASAccessorySession_activateWithQueue_eventHandler___block_invoke(v11);
  }
}

- (void)_activateWithQueue:(id)queue eventHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  if (!self->_activateCalled)
  {
    self->_activateCalled = 1;
    overrideAppBundleID = self->_overrideAppBundleID;
    v9 = overrideAppBundleID;
    if (v9)
    {
      objc_storeStrong(&self->_bundleID, overrideAppBundleID);
    }

    if (self->_dispatchQueue != queueCopy)
    {
      objc_storeStrong(&self->_dispatchQueue, queue);
    }

    v10 = _Block_copy(handlerCopy);
    eventHandler = self->_eventHandler;
    self->_eventHandler = v10;

    [(ASAccessorySession *)self _setupDeviceAccessSession];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__ASAccessorySession_invalidate__block_invoke;
  block[3] = &unk_278A01AC8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__32__ASAccessorySession_invalidate__block_invoke(void *result)
{
  v2 = result + 4;
  v1 = result[4];
  if ((*(v1 + 56) & 1) == 0)
  {
    *(v1 + 56) = 1;
    if (gLogCategory_ASAccessorySession <= 30 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
    {
      __32__ASAccessorySession_invalidate__block_invoke_cold_1(v2);
    }

    [*(*v2 + 88) invalidate];
    v3 = *v2;

    return [v3 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    v5 = _Block_copy(self->_eventHandler);
    eventHandler = self->_eventHandler;
    self->_eventHandler = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_ASAccessorySession <= 30 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
    {
      [(ASAccessorySession *)self _invalidated];
    }

    v4 = [[ASAccessoryEvent alloc] initWithEventType:11];
    v5[2](v5, v4);
  }
}

- (void)_applicationWillEnterForegroundNotification
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ASAccessorySession__applicationWillEnterForegroundNotification__block_invoke;
  block[3] = &unk_278A01AC8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

+ (BOOL)validateAccessorySetupBundleInfo:(id)info error:(id *)error
{
  v112 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v102 = 0;
  v103 = &v102;
  v104 = 0x3032000000;
  v105 = __Block_byref_object_copy_;
  v106 = __Block_byref_object_dispose_;
  v107 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__ASAccessorySession_validateAccessorySetupBundleInfo_error___block_invoke;
  aBlock[3] = &unk_278A01AF0;
  aBlock[4] = &v102;
  aBlock[5] = error;
  v69 = _Block_copy(aBlock);
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  environment = [processInfo environment];
  v8 = [environment objectForKeyedSubscript:@"XCTestConfigurationFilePath"];
  v9 = v8 == 0;

  if (v9)
  {
    v10 = xpc_copy_entitlement_for_token();
    if (v10)
    {
      if (gLogCategory_ASAccessorySession <= 30 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_ASAccessorySession, "+[ASAccessorySession validateAccessorySetupBundleInfo:error:]", 30, "Client has private entitlement, skip validating info property list: %@", self);
      }

      goto LABEL_91;
    }
  }

  bundleRecordForCurrentProcess = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (gLogCategory_ASAccessorySession <= 30 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_ASAccessorySession, "+[ASAccessorySession validateAccessorySetupBundleInfo:error:]", 30, "Client is extension, skip validating info property list: %@", self);
    }

    v45 = 1;
    goto LABEL_93;
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v65 = v103;
    v66 = ASErrorF(100, "ASAccessorySession only supported from iOS 18.");
    v45 = 0;
    v10 = v65[5];
    v65[5] = v66;
    goto LABEL_92;
  }

  [infoCopy objectForKeyedSubscript:@"NSAccessorySetupKitSupports"];
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v10 = v98 = 0u;
  v13 = [v10 countByEnumeratingWithState:&v97 objects:v111 count:16];
  if (!v13)
  {

LABEL_56:
    v43 = v103;
    v44 = ASErrorF(100, "Unable to initialize ASAccessorySession. Info property list '%s' should include at least '%s' or '%s'.", "NSAccessorySetupKitSupports", "Bluetooth", "WiFi");
    v45 = 0;
    v46 = v43[5];
    v43[5] = v44;
    goto LABEL_76;
  }

  v14 = 0;
  v15 = 0;
  v16 = *v98;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v98 != v16)
      {
        objc_enumerationMutation(v10);
      }

      v18 = *(*(&v97 + 1) + 8 * i);
      v15 |= [v18 isEqualToString:@"Bluetooth"];
      v14 |= [v18 isEqualToString:@"WiFi"];
    }

    v13 = [v10 countByEnumeratingWithState:&v97 objects:v111 count:16];
  }

  while (v13);

  if (((v15 | v14) & 1) == 0)
  {
    goto LABEL_56;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_38;
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = infoCopy;
  v19 = [obj countByEnumeratingWithState:&v93 objects:v110 count:16];
  if (!v19)
  {
    goto LABEL_37;
  }

  v20 = *v94;
  v68 = *v94;
  do
  {
    v21 = 0;
    v70 = v19;
    do
    {
      if (*v94 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v75 = *(*(&v93 + 1) + 8 * v21);
      if (![&unk_2849A11E0 containsObject:?])
      {
        goto LABEL_35;
      }

      v22 = [obj objectForKeyedSubscript:v75];
      objc_opt_class();
      v23 = objc_opt_isKindOfClass();

      if ((v23 & 1) == 0)
      {
        v61 = v103;
        v62 = ASErrorF(100, "Unable to initialize ASAccessorySession. Info property list '%@' is not an array.", v75);
        v74 = v61[5];
        v61[5] = v62;

        goto LABEL_74;
      }

      v73 = [obj objectForKeyedSubscript:v75];
      if (![v73 count])
      {
        v63 = v103;
        v64 = ASErrorF(100, "Unable to initialize ASAccessorySession. Info property list '%@' does not have any values.", v75);
LABEL_80:
        v24 = v63[5];
        v63[5] = v64;
        goto LABEL_58;
      }

      if ([v73 count] >= 0x1F5)
      {
        v63 = v103;
        v64 = ASErrorF(100, "Unable to initialize ASAccessorySession. Info property list '%@' exceeds key's maximum value limit of %d. (current: %lu)", v75, 500, [v73 count]);
        goto LABEL_80;
      }

      if (![v75 isEqualToString:@"NSAccessorySetupBluetoothCompanyIdentifiers"])
      {
        goto LABEL_34;
      }

      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v24 = v73;
      v25 = [v24 countByEnumeratingWithState:&v89 objects:v109 count:16];
      if (!v25)
      {
        goto LABEL_33;
      }

      v26 = *v90;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v90 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v89 + 1) + 8 * j);
          if (![v28 caseInsensitiveCompare:@"4C"] && !objc_msgSend(v28, "caseInsensitiveCompare:", @"004C"))
          {
            v47 = v103;
            v48 = ASErrorF(100, "Unable to initialize ASAccessorySession. Invalid Company ID '%@' in property list item '%@'.", v28, v75);
            v49 = v47[5];
            v47[5] = v48;

LABEL_58:
            goto LABEL_74;
          }
        }

        v25 = [v24 countByEnumeratingWithState:&v89 objects:v109 count:16];
      }

      while (v25);
LABEL_33:

      v20 = v68;
      v19 = v70;
LABEL_34:

LABEL_35:
      ++v21;
    }

    while (v21 != v19);
    v19 = [obj countByEnumeratingWithState:&v93 objects:v110 count:16];
  }

  while (v19);
LABEL_37:

LABEL_38:
  if ((v14 & 1) == 0)
  {
LABEL_91:
    v45 = 1;
    goto LABEL_92;
  }

  [infoCopy objectForKeyedSubscript:@"WiFiAwareServices"];
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  obj = v86 = 0u;
  allValues = [obj allValues];
  v30 = [allValues countByEnumeratingWithState:&v85 objects:v108 count:16];
  if (!v30)
  {
    v32 = 0;
    v42 = 1;
    goto LABEL_61;
  }

  LOBYTE(v31) = 0;
  LOBYTE(v32) = 0;
  v33 = *v86;
  v34 = allValues;
  while (2)
  {
    v35 = 0;
    while (2)
    {
      if (*v86 != v33)
      {
        objc_enumerationMutation(allValues);
      }

      v36 = *(*(&v85 + 1) + 8 * v35);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v53 = v103;
        v54 = ASErrorF(100, "Unable to initialize ASAccessorySession. Bad format for Wi-Fi Aware services.");
        v37 = v53[5];
        v53[5] = v54;
LABEL_71:

        goto LABEL_74;
      }

      v37 = v36;
      allKeys = [v37 allKeys];
      v39 = [allKeys count] == 0;

      if (v39)
      {
        v55 = v103;
        v56 = ASErrorF(100, "Unable to initialize ASAccessorySession. No service role declared for Wi-Fi Aware Service.");
        v57 = v55[5];
        v55[5] = v56;

        goto LABEL_71;
      }

      if (v32)
      {
        v32 = 1;
      }

      else
      {
        allKeys2 = [v37 allKeys];
        v32 = [allKeys2 containsObject:@"Subscribable"];
      }

      if (v31)
      {
        v31 = 1;
      }

      else
      {
        allKeys3 = [v37 allKeys];
        v31 = [allKeys3 containsObject:@"Publishable"];
      }

      ++v35;
      allValues = v34;
      if (v30 != v35)
      {
        continue;
      }

      break;
    }

    v30 = [v34 countByEnumeratingWithState:&v85 objects:v108 count:16];
    if (v30)
    {
      continue;
    }

    break;
  }

  v42 = v31 ^ 1;
LABEL_61:

  v50 = xpc_copy_entitlement_for_token();
  v51 = v50;
  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  if (!v50)
  {
LABEL_64:
    v52 = 0;
LABEL_65:
    if (v32 && (v78[3] & 1) == 0)
    {
      v59 = v103;
      v58 = ASErrorF(100, "Unable to initialize ASAccessorySession. Missing entitlement for Wi-Fi Aware Subscriber '%s'.", "Subscribe");
      goto LABEL_73;
    }

    if (((v42 | v52) & 1) == 0)
    {
      v59 = v103;
      v58 = ASErrorF(100, "Unable to initialize ASAccessorySession. Missing entitlement for Wi-Fi Aware Publisher '%s'.", "Publish");
      goto LABEL_73;
    }

    _Block_object_dispose(&v77, 8);
    _Block_object_dispose(&v81, 8);

    v45 = 1;
    goto LABEL_75;
  }

  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __61__ASAccessorySession_validateAccessorySetupBundleInfo_error___block_invoke_2;
  applier[3] = &unk_278A01B18;
  applier[4] = &v81;
  applier[5] = &v77;
  xpc_array_apply(v50, applier);
  v52 = *(v82 + 24);
  if (v52)
  {
    goto LABEL_65;
  }

  if (v78[3])
  {
    goto LABEL_64;
  }

  v58 = ASErrorF(100, "Unable to initialize ASAccessorySession. Need at least Publish or Subscribe for entitlement %s", "com.apple.developer.wifi-aware");
  v59 = v103;
LABEL_73:
  v60 = v59[5];
  v59[5] = v58;

  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v81, 8);

LABEL_74:
  v45 = 0;
LABEL_75:
  v46 = obj;
LABEL_76:

LABEL_92:
LABEL_93:
  v69[2](v69);

  _Block_object_dispose(&v102, 8);
  return v45;
}

void __61__ASAccessorySession_validateAccessorySetupBundleInfo_error___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    if (gLogCategory_ASAccessorySession <= 90 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
    {
      v2 = CUPrintNSError();
      LogPrintF(&gLogCategory_ASAccessorySession, "+[ASAccessorySession validateAccessorySetupBundleInfo:error:]_block_invoke", 90, "### ValidateAccessorySetupBundleInfoKeys failed: %@", v2);
    }

    if (*(a1 + 40))
    {
      **(a1 + 40) = *(*(*(a1 + 32) + 8) + 40);
    }
  }
}

uint64_t __61__ASAccessorySession_validateAccessorySetupBundleInfo_error___block_invoke_2(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  if (string_ptr)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:string_ptr];
    if ([v5 isEqualToString:@"Publish"])
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }

    if ([v5 isEqualToString:@"Subscribe"])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return 1;
}

- (void)_setupDeviceAccessSession
{
  v3 = self->_bundleID;
  v4 = objc_alloc_init(MEMORY[0x277D04780]);
  objc_storeStrong(&self->_daSession, v4);
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.ask.sessionQueue", v5);

  objc_storeStrong(&self->_sessionQueue, v6);
  [v4 setBundleID:v3];
  [v4 setDeviceFlags:8];
  [v4 setDispatchQueue:v6];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__ASAccessorySession__setupDeviceAccessSession__block_invoke;
  v9[3] = &unk_278A01B68;
  v9[4] = self;
  v9[5] = v4;
  [v4 setEventHandler:v9];
  xpcListenerEndpoint = [(ASAccessorySession *)self xpcListenerEndpoint];

  if (xpcListenerEndpoint)
  {
    xpcListenerEndpoint2 = [(ASAccessorySession *)self xpcListenerEndpoint];
    [v4 setXpcListenerEndpoint:xpcListenerEndpoint2];
  }

  [v4 activate];
}

void __47__ASAccessorySession__setupDeviceAccessSession__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ASAccessorySession__setupDeviceAccessSession__block_invoke_2;
  block[3] = &unk_278A01B40;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

- (void)pickerDidReport:(id)report
{
  v16 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [reportCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(reportCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        eventHandler = [(DASession *)self->_daSession eventHandler];
        eventHandler[2](eventHandler, v9);

        ++v8;
      }

      while (v6 != v8);
      v6 = [reportCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_handleDASessionEventHandler:(id)handler session:(id)session
{
  v72 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  sessionCopy = session;
  v8 = self->_bundleID;
  v9 = handlerCopy;
  v61 = sessionCopy;
  if (gLogCategory_ASAccessorySession <= 30 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
  {
    [ASAccessorySession _handleDASessionEventHandler:v9 session:?];
  }

  bundleRecordForCurrentProcess = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    bundleRecordForCurrentProcess2 = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
    containingBundleRecord = [bundleRecordForCurrentProcess2 containingBundleRecord];
    bundleIdentifier = [containingBundleRecord bundleIdentifier];

    v8 = bundleIdentifier;
  }

  eventType = [v9 eventType];
  if (eventType <= 40)
  {
    switch(eventType)
    {
      case 10:
        error = [v9 error];

        if (error)
        {
          if (gLogCategory_ASAccessorySession <= 90 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
          {
            [ASAccessorySession _handleDASessionEventHandler:v9 session:?];
          }

          availableDevices = [[ASAccessoryEvent alloc] initWithEventType:11];
          v47 = ASErrorF(100, "Unable to activate session.");
          [(ASAccessoryEvent *)availableDevices setError:v47];
        }

        else
        {
          availableDevices = [v61 availableDevices];
          [(ASAccessorySession *)self _notifyAccesoriesChangedIfNeeded:availableDevices bundleID:v8 eventType:10];
        }

        break;
      case 15:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = v9;
          if ([v31 devicesMigrated])
          {
            selfCopy = self;
            objc_sync_enter(selfCopy);
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            v60 = v31;
            devices = [v31 devices];
            v34 = [devices countByEnumeratingWithState:&v62 objects:v70 count:16];
            if (v34)
            {
              v35 = *v63;
              do
              {
                for (i = 0; i != v34; ++i)
                {
                  if (*v63 != v35)
                  {
                    objc_enumerationMutation(devices);
                  }

                  v37 = *(*(&v62 + 1) + 8 * i);
                  identifier = [v37 identifier];
                  v39 = [[ASAccessory alloc] initWithDADevice:v37 bundleID:v8];
                  if (v39)
                  {
                    [(NSMutableDictionary *)selfCopy->_accessories setObject:v39 forKeyedSubscript:identifier];
                  }
                }

                v34 = [devices countByEnumeratingWithState:&v62 objects:v70 count:16];
              }

              while (v34);
            }

            v40 = [[ASAccessoryEvent alloc] initWithEventType:20];
            eventHandler = [(ASAccessorySession *)selfCopy eventHandler];
            (eventHandler)[2](eventHandler, v40);

            objc_sync_exit(selfCopy);
            v31 = v60;
          }
        }

        goto LABEL_88;
      case 40:
        break;
      default:
        goto LABEL_88;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      device = [v9 device];
      identifier2 = [device identifier];
      appAccessInfoMap = [device appAccessInfoMap];
      v49 = [appAccessInfoMap objectForKeyedSubscript:v8];
      if ([v49 state])
      {
      }

      else
      {
        bluetoothAdvertisementData = [device bluetoothAdvertisementData];

        if (bluetoothAdvertisementData && ([(ASPickerDisplaySettings *)self->_pickerDisplaySettings options]& 1) != 0)
        {
          v29Identifier = [[ASDiscoveredAccessory alloc] initWithDADevice:device bundleID:v8];
          [(NSMutableDictionary *)self->_discoveredAccessories setObject:v29Identifier forKeyedSubscript:identifier2];
          v43 = [[ASAccessoryEvent alloc] initWithEventType:33];
          [(ASAccessoryEvent *)v43 setAccessory:v29Identifier];
          eventHandler2 = [(ASAccessorySession *)self eventHandler];
          (eventHandler2)[2](eventHandler2, v43);

LABEL_86:
LABEL_87:

          goto LABEL_88;
        }
      }
    }

LABEL_66:
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      device = v9;
      identifier2 = [device device];
      v29Identifier = [identifier2 identifier];
      v43 = [[ASAccessory alloc] initWithDADevice:identifier2 bundleID:v8];
      if (gLogCategory_ASAccessorySession <= 30 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
      {
        [ASAccessorySession _handleDASessionEventHandler:identifier2 session:?];
      }

      if (!v43)
      {
        goto LABEL_86;
      }

      appAccessInfoMap2 = [identifier2 appAccessInfoMap];
      v53 = [appAccessInfoMap2 objectForKeyedSubscript:v8];
      state = [v53 state];

      if (state < 11)
      {
        goto LABEL_86;
      }

      if (gLogCategory_ASAccessorySession <= 30 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
      {
        [ASAccessorySession _handleDASessionEventHandler:identifier2 session:?];
      }

      selfCopy2 = self;
      objc_sync_enter(selfCopy2);
      v56 = [(NSMutableDictionary *)selfCopy2->_accessories objectForKeyedSubscript:v29Identifier];

      [(NSMutableDictionary *)selfCopy2->_accessories setObject:v43 forKeyedSubscript:v29Identifier];
      if (v56)
      {
        v57 = 32;
      }

      else
      {
        v57 = 30;
      }

      objc_sync_exit(selfCopy2);

      v45 = [[ASAccessoryEvent alloc] initWithEventType:v57];
      [(ASAccessoryEvent *)v45 setAccessory:v43];
      eventHandler3 = [(ASAccessorySession *)selfCopy2 eventHandler];
      goto LABEL_85;
    }

    goto LABEL_88;
  }

  if (eventType != 41)
  {
    if (eventType != 42)
    {
      if (eventType == 50)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v9;
          if ([v16 devicesMigrated])
          {
            selfCopy3 = self;
            objc_sync_enter(selfCopy3);
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v59 = v16;
            devices2 = [v16 devices];
            v19 = [devices2 countByEnumeratingWithState:&v66 objects:v71 count:16];
            if (v19)
            {
              v20 = *v67;
              do
              {
                for (j = 0; j != v19; ++j)
                {
                  if (*v67 != v20)
                  {
                    objc_enumerationMutation(devices2);
                  }

                  v22 = *(*(&v66 + 1) + 8 * j);
                  identifier3 = [v22 identifier];
                  v24 = [[ASAccessory alloc] initWithDADevice:v22 bundleID:v8];
                  if (v24)
                  {
                    [(NSMutableDictionary *)selfCopy3->_accessories setObject:v24 forKeyedSubscript:identifier3];
                  }
                }

                v19 = [devices2 countByEnumeratingWithState:&v66 objects:v71 count:16];
              }

              while (v19);
            }

            v25 = [[ASAccessoryEvent alloc] initWithEventType:20];
            eventHandler4 = [(ASAccessorySession *)selfCopy3 eventHandler];
            (eventHandler4)[2](eventHandler4, v25);

            objc_sync_exit(selfCopy3);
            v16 = v59;
          }
        }
      }

      goto LABEL_88;
    }

    goto LABEL_66;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    device = v9;
    identifier2 = [device device];
    v29Identifier = [identifier2 identifier];
    if (gLogCategory_ASAccessorySession <= 30 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
    {
      [ASAccessorySession _handleDASessionEventHandler:identifier2 session:?];
    }

    v43 = [[ASAccessory alloc] initWithDADevice:identifier2 bundleID:v8];
    if (gLogCategory_ASAccessorySession <= 30 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
    {
      [ASAccessorySession _handleDASessionEventHandler:identifier2 session:?];
    }

    if (!v43)
    {
      goto LABEL_87;
    }

    selfCopy4 = self;
    objc_sync_enter(selfCopy4);
    [(NSMutableDictionary *)selfCopy4->_accessories setObject:0 forKeyedSubscript:v29Identifier];
    objc_sync_exit(selfCopy4);

    v45 = [[ASAccessoryEvent alloc] initWithEventType:31];
    [(ASAccessoryEvent *)v45 setAccessory:v43];
    eventHandler3 = [(ASAccessorySession *)selfCopy4 eventHandler];
LABEL_85:
    v58 = eventHandler3;
    (*(eventHandler3 + 16))(eventHandler3, v45);

    goto LABEL_86;
  }

LABEL_88:
}

- (OS_dispatch_queue)queue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_dispatchQueue;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)relayPickerEvent:(id)event
{
  eventCopy = event;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__ASAccessorySession_relayPickerEvent___block_invoke;
  v7[3] = &unk_278A01B90;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(dispatchQueue, v7);
}

void __39__ASAccessorySession_relayPickerEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eventHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) eventHandler];
    v3[2](v3, *(a1 + 40));
  }
}

- (void)_fetchAuthorizedAccesoriesIfNeeded
{
  if (gLogCategory_ASAccessorySession <= 90 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
  {

    LogPrintF(&gLogCategory_ASAccessorySession, "[ASAccessorySession _fetchAuthorizedAccesoriesIfNeeded]", 90, "Session unavailable for fetch.");
  }
}

void __56__ASAccessorySession__fetchAuthorizedAccesoriesIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy_;
  v20[4] = __Block_byref_object_dispose_;
  v21 = 0;
  v7 = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__ASAccessorySession__fetchAuthorizedAccesoriesIfNeeded__block_invoke_2;
  aBlock[3] = &unk_278A01BB8;
  v19 = v20;
  v8 = v7;
  v18 = v8;
  v9 = _Block_copy(aBlock);
  if (!v8 || !v6)
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__ASAccessorySession__fetchAuthorizedAccesoriesIfNeeded__block_invoke_3;
    block[3] = &unk_278A01B40;
    block[4] = v10;
    v12 = v8;
    v13 = *(a1 + 40);
    v15 = v12;
    v16 = v13;
    dispatch_async(v11, block);
  }

  v9[2](v9);

  _Block_object_dispose(v20, 8);
}

void __56__ASAccessorySession__fetchAuthorizedAccesoriesIfNeeded__block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40) && gLogCategory_ASAccessorySession <= 90 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
  {
    v2 = CUPrintNSError();
    LogPrintF(&gLogCategory_ASAccessorySession, "[ASAccessorySession _fetchAuthorizedAccesoriesIfNeeded]_block_invoke_2", 90, "### GetAuthorizedAccessories failed: %@, %@", v2, *(a1 + 32));
  }
}

- (void)_notifyAccesoriesChangedIfNeeded:(id)needed bundleID:(id)d eventType:(int64_t)type
{
  v87 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  dCopy = d;
  selfCopy = self;
  accessories = self->_accessories;
  p_accessories = &self->_accessories;
  v60 = accessories;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(neededCopy, "count")}];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v12 = neededCopy;
  v13 = [v12 countByEnumeratingWithState:&v79 objects:v86 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v80;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v80 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v79 + 1) + 8 * i);
        if ([v17 state] != 1)
        {
          v18 = [[ASAccessory alloc] initWithDADevice:v17 bundleID:dCopy];
          v19 = v18;
          if (v18)
          {
            identifier = [(ASAccessory *)v18 identifier];
            [v11 setObject:v19 forKeyedSubscript:identifier];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v79 objects:v86 count:16];
    }

    while (v14);
  }

  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __74__ASAccessorySession__notifyAccesoriesChangedIfNeeded_bundleID_eventType___block_invoke;
  v76[3] = &unk_278A01C08;
  v21 = v11;
  v77 = v21;
  v22 = array3;
  v78 = v22;
  v23 = v60;
  [(NSMutableDictionary *)v60 enumerateKeysAndObjectsUsingBlock:v76];
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __74__ASAccessorySession__notifyAccesoriesChangedIfNeeded_bundleID_eventType___block_invoke_2;
  v73[3] = &unk_278A01C30;
  v73[4] = v60;
  v24 = array;
  v74 = v24;
  v25 = array2;
  v75 = v25;
  [v21 enumerateKeysAndObjectsUsingBlock:v73];
  v26 = selfCopy;
  objc_sync_enter(v26);
  objc_storeStrong(p_accessories, v11);
  objc_sync_exit(v26);

  if (type == 10)
  {
    v27 = [[ASAccessoryEvent alloc] initWithEventType:10];
    eventHandler = [(ASAccessorySession *)v26 eventHandler];
    (eventHandler)[2](eventHandler, v27);
  }

  else
  {
    v57 = v25;
    v59 = v24;
    v55 = v21;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v29 = v22;
    v30 = [v29 countByEnumeratingWithState:&v69 objects:v85 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v70;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v70 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v69 + 1) + 8 * j);
          v35 = [[ASAccessoryEvent alloc] initWithEventType:31];
          [(ASAccessoryEvent *)v35 setAccessory:v34];
          eventHandler2 = [(ASAccessorySession *)v26 eventHandler];
          (eventHandler2)[2](eventHandler2, v35);
        }

        v31 = [v29 countByEnumeratingWithState:&v69 objects:v85 count:16];
      }

      while (v31);
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v37 = v59;
    v38 = [v37 countByEnumeratingWithState:&v65 objects:v84 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v66;
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v66 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v65 + 1) + 8 * k);
          v43 = [[ASAccessoryEvent alloc] initWithEventType:30];
          [(ASAccessoryEvent *)v43 setAccessory:v42];
          eventHandler3 = [(ASAccessorySession *)v26 eventHandler];
          (eventHandler3)[2](eventHandler3, v43);
        }

        v39 = [v37 countByEnumeratingWithState:&v65 objects:v84 count:16];
      }

      while (v39);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v27 = v57;
    v45 = [(ASAccessoryEvent *)v27 countByEnumeratingWithState:&v61 objects:v83 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v62;
      do
      {
        for (m = 0; m != v46; ++m)
        {
          if (*v62 != v47)
          {
            objc_enumerationMutation(v27);
          }

          v49 = *(*(&v61 + 1) + 8 * m);
          v50 = [[ASAccessoryEvent alloc] initWithEventType:32];
          [(ASAccessoryEvent *)v50 setAccessory:v49];
          eventHandler4 = [(ASAccessorySession *)v26 eventHandler];
          (eventHandler4)[2](eventHandler4, v50);
        }

        v46 = [(ASAccessoryEvent *)v27 countByEnumeratingWithState:&v61 objects:v83 count:16];
      }

      while (v46);
    }

    v24 = v59;
    v23 = v60;
    v21 = v55;
    v25 = v57;
  }
}

void __74__ASAccessorySession__notifyAccesoriesChangedIfNeeded_bundleID_eventType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];

  if (!v5)
  {
    [*(a1 + 40) addObject:v6];
  }
}

void __74__ASAccessorySession__notifyAccesoriesChangedIfNeeded_bundleID_eventType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v11];
  v7 = v6;
  if (!v6)
  {
    v10 = *(a1 + 40);
LABEL_6:
    [v10 addObject:v5];
    goto LABEL_8;
  }

  v8 = [v6 identifier];
  if ([v8 isEqualToString:v11])
  {
    v9 = [v7 isEqual:v5];

    if (v9)
    {
      goto LABEL_8;
    }

    v10 = *(a1 + 48);
    goto LABEL_6;
  }

LABEL_8:
}

- (NSArray)accessories
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allValues = [(NSMutableDictionary *)selfCopy->_accessories allValues];
  objc_sync_exit(selfCopy);

  return allValues;
}

- (void)failAuthorization:(id)authorization completionHandler:(id)handler
{
  authorizationCopy = authorization;
  handlerCopy = handler;
  if (gLogCategory_ASAccessorySession <= 40 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
  {
    [ASAccessorySession failAuthorization:authorizationCopy completionHandler:?];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ASAccessorySession_failAuthorization_completionHandler___block_invoke;
  block[3] = &unk_278A01C80;
  v12 = authorizationCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = authorizationCopy;
  v10 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

void __58__ASAccessorySession_failAuthorization_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    __58__ASAccessorySession_failAuthorization_completionHandler___block_invoke_cold_1();
    goto LABEL_7;
  }

  if (*(v2 + 56) == 1)
  {
LABEL_7:
    __58__ASAccessorySession_failAuthorization_completionHandler___block_invoke_cold_3();
    goto LABEL_8;
  }

  v1 = a1;
  v3 = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
LABEL_8:
    __58__ASAccessorySession_failAuthorization_completionHandler___block_invoke_cold_2(v1);
    return;
  }

  v5 = +[_TtC17AccessorySetupKit17ASUIClientManager shared];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__ASAccessorySession_failAuthorization_completionHandler___block_invoke_2;
  v7[3] = &unk_278A01C58;
  v6 = *(v1 + 40);
  v8 = *(v1 + 48);
  [v5 failWithAccessory:v6 completionHandler:v7];
}

- (void)removeAccessory:(id)accessory completionHandler:(id)handler
{
  accessoryCopy = accessory;
  handlerCopy = handler;
  if (gLogCategory_ASAccessorySession <= 40 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
  {
    [ASAccessorySession removeAccessory:accessoryCopy completionHandler:?];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ASAccessorySession_removeAccessory_completionHandler___block_invoke;
  block[3] = &unk_278A01AA0;
  block[4] = self;
  v12 = accessoryCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = accessoryCopy;
  dispatch_async(dispatchQueue, block);
}

void __56__ASAccessorySession_removeAccessory_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  if ((v2[8] & 1) == 0)
  {
    __56__ASAccessorySession_removeAccessory_completionHandler___block_invoke_cold_1();
    goto LABEL_7;
  }

  if (v2[56] == 1)
  {
LABEL_7:
    v5 = __56__ASAccessorySession_removeAccessory_completionHandler___block_invoke_cold_2();
    [(ASAccessorySession *)v5 _removeAccessory:v6 completionHandler:v7, v8];
    return;
  }

  v3 = a1[5];
  v4 = a1[6];

  [v2 _removeAccessory:v3 completionHandler:v4];
}

- (void)_removeAccessory:(id)accessory completionHandler:(id)handler
{
  handlerCopy = handler;
  accessoryCopy = accessory;
  overrideAppBundleID = [(ASAccessorySession *)self overrideAppBundleID];
  v9 = overrideAppBundleID;
  if (overrideAppBundleID)
  {
    bundleIdentifier = overrideAppBundleID;
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
  }

  v12 = objc_alloc(MEMORY[0x277D04730]);
  identifier = [accessoryCopy identifier];

  v14 = [v12 initWithBundleIdentifier:bundleIdentifier deviceIdentifier:identifier state:0];
  daSession = [(ASAccessorySession *)self daSession];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__ASAccessorySession__removeAccessory_completionHandler___block_invoke;
  v17[3] = &unk_278A01CD0;
  v17[4] = self;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [daSession removeDeviceAccess:v14 completionHandler:v17];
}

void __57__ASAccessorySession__removeAccessory_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__ASAccessorySession__removeAccessory_completionHandler___block_invoke_2;
  v6[3] = &unk_278A01CA8;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __57__ASAccessorySession__removeAccessory_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 code];
    v4 = *(a1 + 40);
    if (v3 == 350006)
    {
      ASErrorF(750, "User restricted accessory removal");
    }

    else
    {
      ASErrorF(1, "Unable to remove accessory");
    }
    v6 = ;
    (*(v4 + 16))(v4, v6);
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

- (void)renameAccessory:(id)accessory options:(unint64_t)options completionHandler:(id)handler
{
  accessoryCopy = accessory;
  handlerCopy = handler;
  overrideAppBundleID = [(ASAccessorySession *)self overrideAppBundleID];
  v11 = overrideAppBundleID;
  if (overrideAppBundleID)
  {
    bundleIdentifier = overrideAppBundleID;
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ASAccessorySession_renameAccessory_options_completionHandler___block_invoke;
  block[3] = &unk_278A01CF8;
  block[4] = self;
  v18 = accessoryCopy;
  v20 = handlerCopy;
  optionsCopy = options;
  v19 = bundleIdentifier;
  v15 = accessoryCopy;
  v16 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

void __64__ASAccessorySession_renameAccessory_options_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  if ((*(v2 + 8) & 1) == 0)
  {
    __64__ASAccessorySession_renameAccessory_options_completionHandler___block_invoke_cold_1();
    goto LABEL_9;
  }

  if (*(v2 + 56) == 1)
  {
LABEL_9:
    __64__ASAccessorySession_renameAccessory_options_completionHandler___block_invoke_cold_2();
    goto LABEL_10;
  }

  v1 = a1;
  v3 = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = +[_TtC17AccessorySetupKit17ASUIClientManager shared];
    [v6 updateWithAccessory:v1[5] options:v1[8] for:v1[6] completionHandler:v1[7]];
    goto LABEL_5;
  }

LABEL_10:
  v5 = v1[7];
  if (!v5)
  {
    return;
  }

  v6 = ASErrorF(550, "App extension is not supported for rename.");
  (*(v5 + 16))(v5);
LABEL_5:
}

- (void)showPickerForDisplayItems:(id)items completionHandler:(id)handler
{
  itemsCopy = items;
  handlerCopy = handler;
  v8 = [(ASAccessorySession *)self _verifyCoreBluetoothStateToActivatePicker:itemsCopy];
  if (v8)
  {
    if (gLogCategory_ASAccessorySession <= 40)
    {
      if (gLogCategory_ASAccessorySession != -1 || (v8 = _LogCategory_Initialize(), v8))
      {
        [(ASAccessorySession *)v8 showPickerForDisplayItems:v9 completionHandler:v10];
      }
    }

    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__ASAccessorySession_showPickerForDisplayItems_completionHandler___block_invoke;
    block[3] = &unk_278A01AA0;
    block[4] = self;
    v14 = itemsCopy;
    v15 = handlerCopy;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    v12 = ASErrorF(550, "CBManagers active with global permissions");
    (*(handlerCopy + 2))(handlerCopy, v12);
  }
}

- (void)_showPickerForDisplayItems:(id)items completionHandler:(id)handler
{
  itemsCopy = items;
  handlerCopy = handler;
  if (!self->_activateCalled)
  {
    [ASAccessorySession _showPickerForDisplayItems:completionHandler:];
    goto LABEL_33;
  }

  if (self->_invalidateCalled)
  {
LABEL_33:
    [ASAccessorySession _showPickerForDisplayItems:completionHandler:];
LABEL_34:
    [ASAccessorySession _showPickerForDisplayItems:handler completionHandler:?];
    goto LABEL_31;
  }

  handler = handlerCopy;
  if (([(ASPickerDisplaySettings *)self->_pickerDisplaySettings options]& 1) != 0)
  {
    v8 = 15;
  }

  else
  {
    v8 = 500;
  }

  if ([itemsCopy count] > v8 && !self->_disablePickerItemMaxLimit)
  {
    [ASAccessorySession _showPickerForDisplayItems:completionHandler:];
    v22 = v21;
    _Block_object_dispose(&v37, 8);
    _Unwind_Resume(v22);
  }

  bundleRecordForCurrentProcess = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_34;
  }

  v11 = xpc_copy_entitlement_for_token();
  if (v11)
  {
LABEL_10:
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    LOBYTE(v40) = 0;
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    v35 = 0;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v33 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __67__ASAccessorySession__showPickerForDisplayItems_completionHandler___block_invoke_2;
    v27[3] = &unk_278A01D48;
    v27[4] = self;
    v27[5] = &v37;
    v27[6] = v34;
    v27[7] = v32;
    v27[8] = &v28;
    [itemsCopy enumerateObjectsUsingBlock:v27];
    if (IsAppleInternalBuild() && self->_disableWiFiAwareEnforcement)
    {
      if (gLogCategory_ASAccessorySession <= 50 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_ASAccessorySession, "[ASAccessorySession _showPickerForDisplayItems:completionHandler:]", 50, "[Testing] Skipping Wi-Fi Aware Enforcement");
      }
    }

    else if (*(v29 + 24) == 1 && ([(DASession *)self->_daSession currentDeviceCapabilities]& 0x400) == 0)
    {
      v12 = ASErrorF(450, "Current device is not Wi-Fi Aware capable.");
      (*(handler + 2))(handler, v12);
LABEL_29:

      _Block_object_dispose(&v28, 8);
      _Block_object_dispose(v32, 8);
      _Block_object_dispose(v34, 8);
      goto LABEL_30;
    }

    pickerDisplaySettings = [(ASAccessorySession *)self pickerDisplaySettings];
    v17 = pickerDisplaySettings;
    if (pickerDisplaySettings)
    {
      v18 = pickerDisplaySettings;
    }

    else
    {
      v18 = +[ASPickerDisplaySettings defaultSettings];
    }

    v19 = v18;

    sessionQueue = self->_sessionQueue;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __67__ASAccessorySession__showPickerForDisplayItems_completionHandler___block_invoke_3;
    v23[3] = &unk_278A01D70;
    v23[4] = self;
    v24 = itemsCopy;
    v25 = v19;
    handlerCopy2 = handler;
    v12 = v19;
    dispatch_async(sessionQueue, v23);

    goto LABEL_29;
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  if (self->_dispatchQueue == MEMORY[0x277D85CD0])
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    applicationState = [mEMORY[0x277D75128] applicationState];
    v38[3] = applicationState;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__ASAccessorySession__showPickerForDisplayItems_completionHandler___block_invoke;
    block[3] = &unk_278A01D20;
    block[4] = &v37;
    mEMORY[0x277D75128] = MEMORY[0x277D85CD0];
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }

  if (!v38[3])
  {
    _Block_object_dispose(&v37, 8);
    goto LABEL_10;
  }

  v15 = ASErrorF(550, "Application is not in foreground.");
  (*(handler + 2))(handler, v15);

LABEL_30:
  _Block_object_dispose(&v37, 8);

LABEL_31:
}

void __67__ASAccessorySession__showPickerForDisplayItems_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  *(*(*(a1 + 32) + 8) + 24) = [v2 applicationState];
}

void __67__ASAccessorySession__showPickerForDisplayItems_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = *(*(a1 + 40) + 8);
  if (a3 || (isKindOfClass & 1) != 0)
  {
    if (*(v8 + 24) == 1 && (objc_opt_class(), v9 = objc_opt_isKindOfClass(), a3) && (v9 & 1) != 0)
    {
      if (gLogCategory_ASAccessorySession <= 40)
      {
        if (gLogCategory_ASAccessorySession != -1 || (v9 = _LogCategory_Initialize(), v9))
        {
          __67__ASAccessorySession__showPickerForDisplayItems_completionHandler___block_invoke_2_cold_1(v9, v10, v11);
        }
      }
    }

    else
    {
      objc_opt_class();
      v12 = objc_opt_isKindOfClass();
      if (a3 || (v12 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_17;
  }

  *(v8 + 24) = 1;
  if (gLogCategory_ASAccessorySession <= 40)
  {
    if (gLogCategory_ASAccessorySession != -1 || (isKindOfClass = _LogCategory_Initialize(), isKindOfClass))
    {
      __67__ASAccessorySession__showPickerForDisplayItems_completionHandler___block_invoke_2_cold_2(isKindOfClass, v6, v7);
    }
  }

LABEL_17:
  [*(a1 + 32) _validateDisplayItem:v19];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v18 = __67__ASAccessorySession__showPickerForDisplayItems_completionHandler___block_invoke_2_cold_3();
    __67__ASAccessorySession__showPickerForDisplayItems_completionHandler___block_invoke_3(v18);
  }

  else
  {
    v13 = [v19 descriptor];
    v14 = [v13 wifiAwareServiceName];

    v15 = v19;
    if (v14)
    {
      v16 = [v19 descriptor];
      v17 = [v16 wifiAwareServiceRole];

      if (v17 == 20)
      {
        *(*(*(a1 + 56) + 8) + 24) = 1;
      }

      *(*(*(a1 + 64) + 8) + 24) = 1;
      v15 = v19;
    }
  }
}

void __67__ASAccessorySession__showPickerForDisplayItems_completionHandler___block_invoke_3(void *a1)
{
  v2 = +[_TtC17AccessorySetupKit17ASUIClientManager shared];
  [v2 activateConnectionWithSession:a1[4] with:a1[5] pickerSettings:a1[6] for:*(a1[4] + 112) completionHandler:a1[7]];
}

- (void)showPickerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if (gLogCategory_ASAccessorySession <= 40)
  {
    if (gLogCategory_ASAccessorySession != -1 || (handlerCopy = _LogCategory_Initialize(), handlerCopy))
    {
      [(ASAccessorySession *)handlerCopy showPickerWithCompletionHandler:v5, v6];
    }
  }

  [(ASAccessorySession *)self showPickerForDisplayItems:MEMORY[0x277CBEBF8] completionHandler:v7];
}

- (void)updatePickerShowingDiscoveredDisplayItems:(id)items completionHandler:(id)handler
{
  itemsCopy = items;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__ASAccessorySession_updatePickerShowingDiscoveredDisplayItems_completionHandler___block_invoke;
  block[3] = &unk_278A01AA0;
  block[4] = self;
  v12 = itemsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = itemsCopy;
  dispatch_async(dispatchQueue, block);
}

void __82__ASAccessorySession_updatePickerShowingDiscoveredDisplayItems_completionHandler___block_invoke(void *a1)
{
  v1 = a1[4];
  if ((*(v1 + 8) & 1) == 0)
  {
    __82__ASAccessorySession_updatePickerShowingDiscoveredDisplayItems_completionHandler___block_invoke_cold_1();
    goto LABEL_8;
  }

  if (*(v1 + 56) == 1)
  {
LABEL_8:
    __82__ASAccessorySession_updatePickerShowingDiscoveredDisplayItems_completionHandler___block_invoke_cold_3();
    goto LABEL_9;
  }

  if (([*(v1 + 80) options] & 1) == 0)
  {
LABEL_9:
    v6 = __82__ASAccessorySession_updatePickerShowingDiscoveredDisplayItems_completionHandler___block_invoke_cold_2();
    [(ASAccessorySession *)v6 _updatePickerWithDiscoveredDisplayItems:v7 completionHandler:v8, v9];
    return;
  }

  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  [v3 _updatePickerWithDiscoveredDisplayItems:v4 completionHandler:v5];
}

- (void)_updatePickerWithDiscoveredDisplayItems:(id)items completionHandler:(id)handler
{
  handlerCopy = handler;
  itemsCopy = items;
  v7 = +[_TtC17AccessorySetupKit17ASUIClientManager shared];
  [v7 updatePickerWith:itemsCopy completionHandler:handlerCopy];
}

- (void)finishPickerDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ASAccessorySession_finishPickerDiscovery___block_invoke;
  v7[3] = &unk_278A01CA8;
  v7[4] = self;
  v8 = discoveryCopy;
  v6 = discoveryCopy;
  dispatch_async(dispatchQueue, v7);
}

void __44__ASAccessorySession_finishPickerDiscovery___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[8])
  {
    v3 = *(a1 + 40);
    if (v2[56] == 1)
    {
      __44__ASAccessorySession_finishPickerDiscovery___block_invoke_cold_2();
    }

    else
    {

      [v2 _finishDiscovery:v3];
    }
  }

  else
  {
    __44__ASAccessorySession_finishPickerDiscovery___block_invoke_cold_1();
  }
}

- (void)_finishDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  v4 = +[_TtC17AccessorySetupKit17ASUIClientManager shared];
  [v4 finishDiscoveryWith:discoveryCopy];
}

- (void)updateAccessory:(id)accessory settings:(id)settings completionHandler:(id)handler
{
  accessoryCopy = accessory;
  settingsCopy = settings;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__ASAccessorySession_updateAccessory_settings_completionHandler___block_invoke;
  v15[3] = &unk_278A01D70;
  v15[4] = self;
  v16 = accessoryCopy;
  v17 = settingsCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = settingsCopy;
  v14 = accessoryCopy;
  dispatch_async(dispatchQueue, v15);
}

void __65__ASAccessorySession_updateAccessory_settings_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  if ((v2[8] & 1) == 0)
  {
    __65__ASAccessorySession_updateAccessory_settings_completionHandler___block_invoke_cold_1();
    goto LABEL_7;
  }

  if (v2[56] == 1)
  {
LABEL_7:
    v6 = __65__ASAccessorySession_updateAccessory_settings_completionHandler___block_invoke_cold_2();
    [(ASAccessorySession *)v6 _updateAccessory:v7 settings:v8 completionHandler:v9, v10];
    return;
  }

  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  [v2 _updateAccessory:v3 settings:v4 completionHandler:v5];
}

- (void)_updateAccessory:(id)accessory settings:(id)settings completionHandler:(id)handler
{
  accessoryCopy = accessory;
  handlerCopy = handler;
  v10 = self->_daSession;
  v11 = MEMORY[0x277D04740];
  settingsCopy = settings;
  v13 = objc_alloc_init(v11);
  sSID = [settingsCopy SSID];
  [v13 setSSID:sSID];

  bluetoothTransportBridgingIdentifier = [settingsCopy bluetoothTransportBridgingIdentifier];
  [v13 setBridgingIdentifier:bluetoothTransportBridgingIdentifier];

  bluetoothTransportBridgingIdentifier2 = [settingsCopy bluetoothTransportBridgingIdentifier];

  if (bluetoothTransportBridgingIdentifier2)
  {
    availableDevices = [(DASession *)v10 availableDevices];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __66__ASAccessorySession__updateAccessory_settings_completionHandler___block_invoke;
    v22[3] = &unk_278A01D98;
    v23 = accessoryCopy;
    [availableDevices enumerateObjectsUsingBlock:v22];
  }

  identifier = [accessoryCopy identifier];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __66__ASAccessorySession__updateAccessory_settings_completionHandler___block_invoke_2;
  v20[3] = &unk_278A01CD0;
  v20[4] = self;
  v21 = handlerCopy;
  v19 = handlerCopy;
  [(DASession *)v10 modifyDeviceWithIdentifier:identifier settings:v13 completionHandler:v20];
}

void __66__ASAccessorySession__updateAccessory_settings_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 identifier];
  v7 = [*(a1 + 32) identifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    if (([v11 flags] & 0x20) != 0)
    {
      v9 = __66__ASAccessorySession__updateAccessory_settings_completionHandler___block_invoke_cold_1();
      __66__ASAccessorySession__updateAccessory_settings_completionHandler___block_invoke_2(v9, v10);
      return;
    }

    *a4 = 1;
  }
}

void __66__ASAccessorySession__updateAccessory_settings_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__ASAccessorySession__updateAccessory_settings_completionHandler___block_invoke_3;
  v6[3] = &unk_278A01CA8;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __66__ASAccessorySession__updateAccessory_settings_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v5 = CUPrintNSError();
    v2 = ASErrorF(450, "Unable to update accessory: %@", v5);
    (*(v1 + 16))(v1, v2);
  }

  else
  {
    v3 = *(v1 + 16);
    v4 = *(a1 + 40);

    v3(v4, 0);
  }
}

- (void)updateAuthorization:(id)authorization descriptor:(id)descriptor completionHandler:(id)handler
{
  authorizationCopy = authorization;
  descriptorCopy = descriptor;
  handlerCopy = handler;
  if (!self->_activateCalled)
  {
    [ASAccessorySession updateAuthorization:descriptor:completionHandler:];
    goto LABEL_29;
  }

  if (self->_invalidateCalled)
  {
LABEL_29:
    [ASAccessorySession updateAuthorization:descriptor:completionHandler:];
    goto LABEL_30;
  }

  handler = handlerCopy;
  bundleRecordForCurrentProcess = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
LABEL_30:
    [ASAccessorySession updateAuthorization:handler descriptor:? completionHandler:?];
    goto LABEL_26;
  }

  descriptor = [authorizationCopy descriptor];
  v14 = [descriptor isEqual:descriptorCopy];

  if (v14)
  {
    [ASAccessorySession updateAuthorization:handler descriptor:? completionHandler:?];
  }

  else
  {
    [(ASAccessorySession *)self _validateDiscoveryDescriptor:descriptorCopy];
    bluetoothIdentifier = [authorizationCopy bluetoothIdentifier];

    sSID = [authorizationCopy SSID];

    wifiAwarePairedDeviceID = [authorizationCopy wifiAwarePairedDeviceID];
    bluetoothServiceUUID = [descriptorCopy bluetoothServiceUUID];
    if (bluetoothServiceUUID)
    {
      v19 = 1;
    }

    else
    {
      v19 = [descriptorCopy bluetoothCompanyIdentifier] != 0;
    }

    sSID2 = [descriptorCopy SSID];
    handlerCopy2 = handler;
    if (sSID2)
    {
      v21 = 0;
    }

    else
    {
      sSIDPrefix = [descriptorCopy SSIDPrefix];
      v21 = sSIDPrefix == 0;
    }

    v23 = bluetoothIdentifier == 0;

    wifiAwareServiceName = [descriptorCopy wifiAwareServiceName];

    if (wifiAwarePairedDeviceID)
    {
      v25 = v23 && v21;
    }

    else
    {
      v25 = 1;
    }

    if (wifiAwareServiceName)
    {
      v26 = 1;
    }

    else
    {
      v26 = v23;
    }

    if (v25 != 1 || !v26)
    {
      goto LABEL_27;
    }

    v27 = wifiAwareServiceName == 0;
    v28 = !sSID || wifiAwarePairedDeviceID != 0 && !v19;
    if (v28 || v19)
    {
      v27 = wifiAwarePairedDeviceID != 0 && !v19;
    }

    if (v27 != 1)
    {
      sessionQueue = self->_sessionQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__ASAccessorySession_updateAuthorization_descriptor_completionHandler___block_invoke;
      block[3] = &unk_278A01D70;
      block[4] = self;
      v32 = authorizationCopy;
      v33 = descriptorCopy;
      handler = handlerCopy2;
      v34 = handlerCopy2;
      dispatch_async(sessionQueue, block);
    }

    else
    {
LABEL_27:
      handler = handlerCopy2;
      [ASAccessorySession updateAuthorization:handlerCopy2 descriptor:? completionHandler:?];
    }
  }

LABEL_26:
}

void __71__ASAccessorySession_updateAuthorization_descriptor_completionHandler___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pickerDisplaySettings];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[ASPickerDisplaySettings defaultSettings];
  }

  v5 = v4;

  v6 = [ASMigrationDisplayItem alloc];
  v7 = [*(a1 + 40) displayName];
  v8 = objc_opt_new();
  v9 = [(ASPickerDisplayItem *)v6 initWithName:v7 productImage:v8 descriptor:*(a1 + 48)];

  v10 = [*(a1 + 40) identifier];
  [(ASMigrationDisplayItem *)v9 setAccessoryIdentifier:v10];

  v11 = [*(a1 + 40) bluetoothIdentifier];
  [(ASMigrationDisplayItem *)v9 setPeripheralIdentifier:v11];

  v12 = [*(a1 + 40) SSID];
  [(ASMigrationDisplayItem *)v9 setHotspotSSID:v12];

  -[ASMigrationDisplayItem setWifiAwarePairedDeviceID:](v9, "setWifiAwarePairedDeviceID:", [*(a1 + 40) wifiAwarePairedDeviceID]);
  [(ASMigrationDisplayItem *)v9 setUpgradeAccessory:1];
  v13 = +[_TtC17AccessorySetupKit17ASUIClientManager shared];
  v14 = *(a1 + 32);
  v16[0] = v9;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v13 activateConnectionWithSession:v14 with:v15 pickerSettings:v5 for:*(*(a1 + 32) + 112) completionHandler:*(a1 + 56)];
}

- (void)_validateDisplayItem:(id)item
{
  itemCopy = item;
  productImage = [itemCopy productImage];

  if (!productImage)
  {
    [ASAccessorySession _validateDisplayItem:];
    goto LABEL_10;
  }

  descriptor = [itemCopy descriptor];

  if (!descriptor)
  {
LABEL_10:
    [ASAccessorySession _validateDisplayItem:];
    goto LABEL_11;
  }

  name = [itemCopy name];

  if (!name)
  {
LABEL_11:
    [ASAccessorySession _validateDisplayItem:];
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    descriptor2 = [itemCopy descriptor];
    [(ASAccessorySession *)self _validateDiscoveryDescriptor:descriptor2];

    goto LABEL_6;
  }

LABEL_12:
  [(ASAccessorySession *)self _validateMigrationDisplayItem:itemCopy];
LABEL_6:
}

- (void)_validateDiscoveryDescriptor:(id)descriptor
{
  v82 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  options = [(ASPickerDisplaySettings *)self->_pickerDisplaySettings options];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];

  v69 = infoDictionary;
  [infoDictionary objectForKeyedSubscript:@"NSAccessorySetupKitSupports"];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v8 = v79 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v76 objects:v81 count:16];
  if (v9)
  {
    bluetoothServiceUUID = v9;
    v10 = 0;
    v11 = 0;
    v12 = *v77;
    do
    {
      for (i = 0; i != bluetoothServiceUUID; i = i + 1)
      {
        if (*v77 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v76 + 1) + 8 * i);
        v11 |= [v14 isEqualToString:@"Bluetooth"];
        v10 |= [v14 isEqualToString:@"WiFi"];
      }

      bluetoothServiceUUID = [v8 countByEnumeratingWithState:&v76 objects:v81 count:16];
    }

    while (bluetoothServiceUUID);
  }

  else
  {
    LOBYTE(v10) = 0;
    LOBYTE(v11) = 0;
  }

  bluetoothCompanyIdentifier = [descriptorCopy bluetoothCompanyIdentifier];
  v16 = bluetoothCompanyIdentifier != 0;
  if (bluetoothCompanyIdentifier)
  {
    if ((v11 & 1) == 0)
    {
LABEL_99:
      [ASAccessorySession _validateDiscoveryDescriptor:];
LABEL_100:
      [ASAccessorySession _validateDiscoveryDescriptor:];
      goto LABEL_101;
    }

    bluetoothCompanyIdentifier2 = [descriptorCopy bluetoothCompanyIdentifier];
    bluetoothServiceUUID = [MEMORY[0x277CCACA8] stringWithFormat:@"%x", objc_msgSend(descriptorCopy, "bluetoothCompanyIdentifier")];
    v18 = [v69 objectForKeyedSubscript:@"NSAccessorySetupBluetoothCompanyIdentifiers"];
    v19 = v18;
    if ((options & 1) == 0 && !v18)
    {
      goto LABEL_100;
    }

    if ((options & 1) == 0 && ![v18 count])
    {
      goto LABEL_112;
    }

    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __51__ASAccessorySession__validateDiscoveryDescriptor___block_invoke;
    v74[3] = &__block_descriptor_34_e18__16__0__NSString_8l;
    v75 = __rev16(bluetoothCompanyIdentifier2);
    v20 = [v19 cuFilteredArrayUsingBlock:v74];
    v21 = v20;
    if ((options & 1) == 0 && [v20 count] != 1)
    {
      goto LABEL_113;
    }
  }

  bluetoothServiceUUID = [descriptorCopy bluetoothServiceUUID];

  if (bluetoothServiceUUID)
  {
    if ((v11 & 1) == 0)
    {
LABEL_101:
      [ASAccessorySession _validateDiscoveryDescriptor:];
LABEL_102:
      [ASAccessorySession _validateDiscoveryDescriptor:];
LABEL_103:
      [ASAccessorySession _validateDiscoveryDescriptor:];
      goto LABEL_104;
    }

    bluetoothServiceUUID2 = [descriptorCopy bluetoothServiceUUID];
    bluetoothServiceUUID = [bluetoothServiceUUID2 UUIDString];

    v23 = [v69 objectForKeyedSubscript:@"NSAccessorySetupBluetoothServices"];
    v24 = v23;
    if ((options & 1) == 0 && !v23)
    {
      goto LABEL_102;
    }

    if ((options & 1) == 0)
    {
      if (![v23 count])
      {
LABEL_114:
        [ASAccessorySession _validateDiscoveryDescriptor:];
        goto LABEL_115;
      }

      if (([v24 containsObject:bluetoothServiceUUID] & 1) == 0)
      {
LABEL_115:
        FatalErrorF("ASDiscoveryDescriptor's bluetoothServiceUUID cannot be used. 'NSAccessorySetupBluetoothServices' has no item '%@' in Info.plist.", bluetoothServiceUUID);
        goto LABEL_116;
      }
    }

    v16 = 1;
  }

  bluetoothManufacturerDataBlob = [descriptorCopy bluetoothManufacturerDataBlob];
  if (bluetoothManufacturerDataBlob)
  {
  }

  else
  {
    bluetoothServiceUUID = [descriptorCopy bluetoothManufacturerDataMask];

    if (!bluetoothServiceUUID)
    {
      goto LABEL_37;
    }
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_88;
  }

  if (![descriptorCopy bluetoothCompanyIdentifier])
  {
LABEL_89:
    [ASAccessorySession _validateDiscoveryDescriptor:];
LABEL_90:
    [ASAccessorySession _validateDiscoveryDescriptor:];
    goto LABEL_91;
  }

  bluetoothManufacturerDataBlob2 = [descriptorCopy bluetoothManufacturerDataBlob];
  if (!bluetoothManufacturerDataBlob2 || (bluetoothServiceUUID = bluetoothManufacturerDataBlob2, [descriptorCopy bluetoothManufacturerDataMask], v27 = objc_claimAutoreleasedReturnValue(), v27, bluetoothServiceUUID, !v27))
  {
    [ASAccessorySession _validateDiscoveryDescriptor:];
LABEL_88:
    [ASAccessorySession _validateDiscoveryDescriptor:];
    goto LABEL_89;
  }

  bluetoothServiceUUID = [descriptorCopy bluetoothManufacturerDataBlob];
  if (![bluetoothServiceUUID length])
  {
LABEL_91:

    goto LABEL_92;
  }

  bluetoothManufacturerDataMask = [descriptorCopy bluetoothManufacturerDataMask];
  v29 = [bluetoothManufacturerDataMask length];

  if (!v29)
  {
LABEL_92:
    FatalErrorF("ASDiscoveryDescriptor must provide non-zero length bluetoothManufacturerDataBlob and bluetoothManufacturerDataMask.");
    goto LABEL_93;
  }

  bluetoothServiceUUID = [descriptorCopy bluetoothManufacturerDataBlob];
  v30 = [bluetoothServiceUUID length];
  bluetoothManufacturerDataMask2 = [descriptorCopy bluetoothManufacturerDataMask];
  v32 = [bluetoothManufacturerDataMask2 length];

  if (v30 != v32)
  {
LABEL_93:
    [ASAccessorySession _validateDiscoveryDescriptor:];
LABEL_94:
    [ASAccessorySession _validateDiscoveryDescriptor:];
    goto LABEL_95;
  }

LABEL_37:
  bluetoothServiceDataBlob = [descriptorCopy bluetoothServiceDataBlob];
  if (bluetoothServiceDataBlob)
  {
  }

  else
  {
    bluetoothServiceUUID = [descriptorCopy bluetoothServiceDataMask];

    if (!bluetoothServiceUUID)
    {
      goto LABEL_47;
    }
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_94;
  }

  bluetoothServiceUUID = [descriptorCopy bluetoothServiceUUID];

  if (!bluetoothServiceUUID)
  {
LABEL_95:
    [ASAccessorySession _validateDiscoveryDescriptor:];
    goto LABEL_96;
  }

  bluetoothServiceDataBlob2 = [descriptorCopy bluetoothServiceDataBlob];
  if (!bluetoothServiceDataBlob2)
  {
    goto LABEL_90;
  }

  bluetoothServiceUUID = bluetoothServiceDataBlob2;
  bluetoothServiceDataMask = [descriptorCopy bluetoothServiceDataMask];

  if (!bluetoothServiceDataMask)
  {
    goto LABEL_90;
  }

  bluetoothServiceUUID = [descriptorCopy bluetoothServiceDataBlob];
  if (![bluetoothServiceUUID length])
  {
LABEL_96:

    goto LABEL_97;
  }

  bluetoothServiceDataMask2 = [descriptorCopy bluetoothServiceDataMask];
  v37 = [bluetoothServiceDataMask2 length];

  if (!v37)
  {
LABEL_97:
    FatalErrorF("ASDiscoveryDescriptor must provide non-zero length bluetoothServiceDataBlob and bluetoothServiceDataMask.");
    goto LABEL_98;
  }

  bluetoothServiceUUID = [descriptorCopy bluetoothServiceDataBlob];
  v38 = [bluetoothServiceUUID length];
  bluetoothServiceDataMask3 = [descriptorCopy bluetoothServiceDataMask];
  v40 = [bluetoothServiceDataMask3 length];

  if (v38 != v40)
  {
LABEL_98:
    [ASAccessorySession _validateDiscoveryDescriptor:];
    goto LABEL_99;
  }

LABEL_47:
  bluetoothServiceUUID = [descriptorCopy bluetoothNameSubstring];

  if (!bluetoothServiceUUID)
  {
    goto LABEL_62;
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_103;
  }

  if (!v16)
  {
LABEL_104:
    [ASAccessorySession _validateDiscoveryDescriptor:];
LABEL_105:
    [ASAccessorySession _validateDiscoveryDescriptor:];
    goto LABEL_106;
  }

  v41 = [v69 objectForKeyedSubscript:@"NSAccessorySetupBluetoothNames"];
  bluetoothServiceUUID = [descriptorCopy bluetoothNameSubstring];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v42 = v41;
  v43 = [v42 countByEnumeratingWithState:&v70 objects:v80 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v71;
LABEL_52:
    v46 = 0;
    while (1)
    {
      if (*v71 != v45)
      {
        objc_enumerationMutation(v42);
      }

      if ([bluetoothServiceUUID containsString:*(*(&v70 + 1) + 8 * v46)])
      {
        goto LABEL_60;
      }

      if (v44 == ++v46)
      {
        v44 = [v42 countByEnumeratingWithState:&v70 objects:v80 count:16];
        if (v44)
        {
          goto LABEL_52;
        }

        break;
      }
    }
  }

  if ((options & 1) == 0)
  {
    FatalErrorF("ASDiscoveryDescriptor's bluetoothNameSubstring '%@' does not match with any string in 'NSAccessorySetupBluetoothNames' in Info.plist.", bluetoothServiceUUID);
LABEL_60:
  }

LABEL_62:
  sSID = [descriptorCopy SSID];

  if (!sSID)
  {
    goto LABEL_67;
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_105;
  }

  sSID2 = [descriptorCopy SSID];
  bluetoothServiceUUID = [sSID2 length];

  if (!bluetoothServiceUUID)
  {
LABEL_106:
    [ASAccessorySession _validateDiscoveryDescriptor:];
LABEL_107:
    [ASAccessorySession _validateDiscoveryDescriptor:];
    goto LABEL_108;
  }

  wifiAwareServiceName = [descriptorCopy wifiAwareServiceName];

  if (wifiAwareServiceName)
  {
LABEL_108:
    [ASAccessorySession _validateDiscoveryDescriptor:];
    goto LABEL_109;
  }

  v16 = 1;
LABEL_67:
  sSIDPrefix = [descriptorCopy SSIDPrefix];

  if (!sSIDPrefix)
  {
    goto LABEL_72;
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_107;
  }

  sSIDPrefix2 = [descriptorCopy SSIDPrefix];
  bluetoothServiceUUID = [sSIDPrefix2 length];

  if (!bluetoothServiceUUID)
  {
LABEL_109:
    [ASAccessorySession _validateDiscoveryDescriptor:];
LABEL_110:
    [ASAccessorySession _validateDiscoveryDescriptor:];
    goto LABEL_111;
  }

  wifiAwareServiceName2 = [descriptorCopy wifiAwareServiceName];

  if (wifiAwareServiceName2)
  {
LABEL_111:
    [ASAccessorySession _validateDiscoveryDescriptor:];
LABEL_112:
    [ASAccessorySession _validateDiscoveryDescriptor:];
LABEL_113:
    FatalErrorF("ASDiscoveryDescriptor's bluetoothCompanyIdentifier cannot be used. 'NSAccessorySetupBluetoothCompanyIdentifiers' has no item '%@' in Info.plist.", bluetoothServiceUUID);
    goto LABEL_114;
  }

  v16 = 1;
LABEL_72:
  wifiAwareServiceName3 = [descriptorCopy wifiAwareServiceName];

  if (wifiAwareServiceName3)
  {
    wifiAwareServiceName4 = [descriptorCopy wifiAwareServiceName];
    bluetoothServiceUUID = [v69 objectForKeyedSubscript:@"WiFiAwareServices"];
    allKeys = [bluetoothServiceUUID allKeys];
    v56 = [allKeys containsObject:wifiAwareServiceName4];

    if (v56)
    {
      if (![descriptorCopy wifiAwareServiceRole])
      {
        [descriptorCopy setWifiAwareServiceRole:10];
      }

      if ([descriptorCopy wifiAwareServiceRole] != 20)
      {
        goto LABEL_79;
      }

      v57 = [bluetoothServiceUUID objectForKeyedSubscript:wifiAwareServiceName4];
      allKeys2 = [v57 allKeys];
      v59 = [allKeys2 containsObject:@"Publishable"];

      if (v59)
      {

LABEL_79:
        if ([descriptorCopy wifiAwareServiceRole] != 10)
        {
LABEL_82:

          v16 = 1;
          goto LABEL_83;
        }

        v60 = [bluetoothServiceUUID objectForKeyedSubscript:wifiAwareServiceName4];
        allKeys3 = [v60 allKeys];
        v62 = [allKeys3 containsObject:@"Subscribable"];

        if (v62)
        {

          goto LABEL_82;
        }

LABEL_117:
        [ASAccessorySession _validateDiscoveryDescriptor:];
        goto LABEL_118;
      }

LABEL_116:
      [ASAccessorySession _validateDiscoveryDescriptor:];
      goto LABEL_117;
    }

    goto LABEL_110;
  }

LABEL_83:
  sSID3 = [descriptorCopy SSID];
  if (!sSID3 || (v64 = sSID3, [descriptorCopy SSIDPrefix], v65 = objc_claimAutoreleasedReturnValue(), v65, v64, !v65))
  {
    if (v16)
    {

      return;
    }

LABEL_118:
    FatalErrorF("ASDiscoveryDescriptor should provide at least one descriptor property of accessory.");
  }

  v66 = FatalErrorF("ASDiscoveryDescriptor should provide either SSID or SSIDPrefix.");
  __51__ASAccessorySession__validateDiscoveryDescriptor___block_invoke(v66, v67);
}

void *__51__ASAccessorySession__validateDiscoveryDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CUPrintHex();
  if ([v2 caseInsensitiveCompare:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  v5 = v4;

  return v4;
}

- (void)_validateMigrationDisplayItem:(id)item
{
  v36 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];

  v30 = infoDictionary;
  [infoDictionary objectForKeyedSubscript:@"NSAccessorySetupKitSupports"];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = v34 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v10 |= [v13 isEqualToString:@"Bluetooth"];
        v9 |= [v13 isEqualToString:@"WiFi"];
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v8);
  }

  else
  {
    LOBYTE(v9) = 0;
    LOBYTE(v10) = 0;
  }

  peripheralIdentifier = [itemCopy peripheralIdentifier];
  if (!peripheralIdentifier)
  {
    peripheralIdentifier = [itemCopy hotspotSSID];
    if (!peripheralIdentifier)
    {
      goto LABEL_29;
    }
  }

  while (1)
  {
    hotspotSSID = [itemCopy hotspotSSID];
    descriptor = hotspotSSID;
    if (((hotspotSSID != 0) & v9) == 1)
    {
      hotspotSSID2 = [itemCopy hotspotSSID];

      if (!hotspotSSID2)
      {
        goto LABEL_22;
      }
    }

    else
    {

      if (descriptor)
      {
LABEL_22:
        FatalErrorF("ASMigrationDisplayItem's hotspotSSID cannot be used. 'WiFi' support not declared in Info.plist's NSAccessorySetupKitSupports.");
LABEL_23:

        goto LABEL_24;
      }
    }

    if (![itemCopy wifiAwarePairedDeviceID])
    {
      goto LABEL_24;
    }

    descriptor = [itemCopy descriptor];
    wifiAwareServiceName = [descriptor wifiAwareServiceName];
    if (!wifiAwareServiceName)
    {
      goto LABEL_23;
    }

    v19 = wifiAwareServiceName;
    if ((v9 & 1) == 0 || ![itemCopy wifiAwarePairedDeviceID])
    {
      break;
    }

    descriptor2 = [itemCopy descriptor];
    wifiAwareServiceName2 = [descriptor2 wifiAwareServiceName];

    if (!wifiAwareServiceName2)
    {
      goto LABEL_33;
    }

LABEL_24:
    peripheralIdentifier2 = [itemCopy peripheralIdentifier];
    v23 = peripheralIdentifier2;
    if (((peripheralIdentifier2 != 0) & v10) == 1)
    {
      peripheralIdentifier3 = [itemCopy peripheralIdentifier];

      if (peripheralIdentifier3)
      {
        goto LABEL_26;
      }
    }

    else
    {

      if (!v23)
      {
LABEL_26:

        return;
      }
    }

    FatalErrorF("ASMigrationDisplayItem's peripheralIdentifier cannot be used. 'Bluetooth' support not declared in Info.plist's NSAccessorySetupKitSupports.");
LABEL_29:
    if ([itemCopy wifiAwarePairedDeviceID])
    {
      descriptor3 = [itemCopy descriptor];
      wifiAwareServiceName3 = [descriptor3 wifiAwareServiceName];

      if (wifiAwareServiceName3)
      {
        continue;
      }
    }

    FatalErrorF("ASMigrationDisplayItem must provide either peripheralIdentifier, hotspotSSID, or wifiAwarePairedDeviceID with wifiAwareServiceName in the ASDiscoveryDescriptor.");
  }

LABEL_33:
  v27 = FatalErrorF("ASMigrationDisplayItem's wifiAwarePairedDeviceID and wifiAwareServiceName in the descriptor cannot be used. 'WiFi' support not declared in Info.plist's NSAccessorySetupKitSupports.");
  [(ASAccessorySession *)v27 _verifyCoreBluetoothStateToActivatePicker:v28, v29];
}

- (BOOL)_verifyCoreBluetoothStateToActivatePicker:(id)picker
{
  pickerCopy = picker;
  if ([(ASAccessorySession *)self _hasBluetoothASK])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__ASAccessorySession__verifyCoreBluetoothStateToActivatePicker___block_invoke;
    v7[3] = &unk_278A01DE0;
    v7[4] = &v8;
    [pickerCopy enumerateObjectsUsingBlock:v7];
    if ((v9[3] & 1) == 0)
    {
      goto LABEL_12;
    }

    [(ASAccessorySession *)self _fetchBluetoothGlobalTCC];
    if (self->_bluetoothTCCStateUnknown)
    {
      goto LABEL_12;
    }

    if (gLogCategory_ASAccessorySession <= 40 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_ASAccessorySession, "[ASAccessorySession _verifyCoreBluetoothStateToActivatePicker:]", 40, "### allowedToActivatePicker kTCCAccessPreflightDenied/kTCCAccessPreflightGranted");
    }

    if ([MEMORY[0x277CBE040] retrieveCurrentProcessSessionCount])
    {
      if (gLogCategory_ASAccessorySession <= 40 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_ASAccessorySession, "-[ASAccessorySession _verifyCoreBluetoothStateToActivatePicker:]", 40, "### Unable to activate picker, still have pending CBManagers %d", [MEMORY[0x277CBE040] retrieveCurrentProcessSessionCount]);
      }

      v5 = 0;
    }

    else
    {
LABEL_12:
      v5 = 1;
    }

    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void __64__ASAccessorySession__verifyCoreBluetoothStateToActivatePicker___block_invoke(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v14 = [a2 descriptor];
  v6 = [v14 bluetoothCompanyIdentifier];
  v7 = [v14 bluetoothServiceUUID];

  v8 = [v14 bluetoothManufacturerDataBlob];

  v9 = [v14 bluetoothServiceDataBlob];
  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7 == 0;
  }

  v13 = !v10 || v8 != 0 || v9 != 0;

  *(*(*(a1 + 32) + 8) + 24) = v13;
  *a4 = v13;
}

- (BOOL)_hasBluetoothASK
{
  v16 = *MEMORY[0x277D85DE8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];

  v4 = [infoDictionary objectForKey:@"NSAccessorySetupKitSupports"];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 |= [*(*(&v11 + 1) + 8 * i) isEqualToString:@"Bluetooth"];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

- (void)_fetchBluetoothGlobalTCC
{
  if (!self->_bluetoothTCCStateUnknown)
  {
    pthread_mutex_lock(&_fetchBluetoothGlobalTCC_gLock);
    if (!_fetchBluetoothGlobalTCC_tccServer)
    {
      v3 = tcc_server_create();
      v4 = _fetchBluetoothGlobalTCC_tccServer;
      _fetchBluetoothGlobalTCC_tccServer = v3;
    }

    pthread_mutex_unlock(&_fetchBluetoothGlobalTCC_gLock);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 2;
    v5 = tcc_message_options_create();
    tcc_message_options_set_reply_handler_policy();
    tcc_message_options_set_request_prompt_policy();
    v6 = tcc_credential_singleton_for_self();
    v7 = tcc_service_singleton_for_CF_name();
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__ASAccessorySession__fetchBluetoothGlobalTCC__block_invoke;
    aBlock[3] = &unk_278A01E08;
    aBlock[4] = &v12;
    v8 = _Block_copy(aBlock);
    tcc_server_message_request_authorization();
    v9 = *(v13 + 6);
    if (v9 >= 2)
    {
      if (v9 != 2)
      {
LABEL_17:

        _Block_object_dispose(&v12, 8);
        return;
      }

      if (gLogCategory_ASAccessorySession <= 40 && (gLogCategory_ASAccessorySession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_ASAccessorySession, "[ASAccessorySession _fetchBluetoothGlobalTCC]", 40, "### _fetchBluetoothGlobalTCC Unknown");
      }

      v10 = 1;
LABEL_16:
      self->_bluetoothTCCStateUnknown = v10;
      goto LABEL_17;
    }

    if (gLogCategory_ASAccessorySession <= 40)
    {
      if (gLogCategory_ASAccessorySession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        v9 = *(v13 + 6);
      }

      LogPrintF(&gLogCategory_ASAccessorySession, "[ASAccessorySession _fetchBluetoothGlobalTCC]", 40, "### _fetchBluetoothGlobalTCC reason: %d", v9);
    }

LABEL_13:
    v10 = 0;
    goto LABEL_16;
  }
}

uint64_t __46__ASAccessorySession__fetchBluetoothGlobalTCC__block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = result;
    result = tcc_authorization_record_get_authorization_right();
    v4 = 2 * (result != 2);
    if (!result)
    {
      v4 = 1;
    }

    *(*(*(v3 + 32) + 8) + 24) = v4;
  }

  return result;
}

- (void)_handleDASessionEventHandler:(void *)a1 session:.cold.4(void *a1)
{
  v2 = [a1 error];
  v1 = CUPrintNSError();
  LogPrintF(&gLogCategory_ASAccessorySession, "[ASAccessorySession _handleDASessionEventHandler:session:]", 90, "Unable to activate session: %@", v1);
}

void __58__ASAccessorySession_failAuthorization_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  if (*(a1 + 48))
  {
    ASErrorF(550, "App extension is not supported for setup.");
    objc_claimAutoreleasedReturnValue();
    v1 = OUTLINED_FUNCTION_0();
    v2(v1);
  }
}

- (void)_showPickerForDisplayItems:(uint64_t)a1 completionHandler:.cold.3(uint64_t a1)
{
  if (a1)
  {
    ASErrorF(550, "App extension is not supported for setup.");
    objc_claimAutoreleasedReturnValue();
    v1 = OUTLINED_FUNCTION_0();
    v2(v1);
  }
}

void __44__ASAccessorySession_finishPickerDiscovery___block_invoke_cold_1()
{
  ASErrorF(450, "%s called before activate", "[ASAccessorySession finishPickerDiscovery:]_block_invoke");
  objc_claimAutoreleasedReturnValue();
  v0 = OUTLINED_FUNCTION_0();
  v1(v0);
}

void __44__ASAccessorySession_finishPickerDiscovery___block_invoke_cold_2()
{
  ASErrorF(450, "%s called after invalidate", "[ASAccessorySession finishPickerDiscovery:]_block_invoke");
  objc_claimAutoreleasedReturnValue();
  v0 = OUTLINED_FUNCTION_0();
  v1(v0);
}

- (void)updateAuthorization:(uint64_t)a1 descriptor:completionHandler:.cold.2(uint64_t a1)
{
  if (a1)
  {
    ASErrorF(450, "Accessory cannot be upgraded with given descriptor.");
    objc_claimAutoreleasedReturnValue();
    v1 = OUTLINED_FUNCTION_0();
    v2(v1);
  }
}

- (void)updateAuthorization:(uint64_t)a1 descriptor:completionHandler:.cold.3(uint64_t a1)
{
  if (a1)
  {
    ASErrorF(450, "No new updates detected from existing accessory descriptor.");
    objc_claimAutoreleasedReturnValue();
    v1 = OUTLINED_FUNCTION_0();
    v2(v1);
  }
}

- (void)updateAuthorization:(uint64_t)a1 descriptor:completionHandler:.cold.4(uint64_t a1)
{
  if (a1)
  {
    ASErrorF(550, "App extension is not supported for upgrade.");
    objc_claimAutoreleasedReturnValue();
    v1 = OUTLINED_FUNCTION_0();
    v2(v1);
  }
}

@end