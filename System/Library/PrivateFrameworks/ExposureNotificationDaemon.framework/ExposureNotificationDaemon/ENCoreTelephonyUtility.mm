@interface ENCoreTelephonyUtility
+ (ENCoreTelephonyUtility)sharedInstance;
+ (id)countryCodeISOForMobileCountryCode:(id)code;
+ (id)mobileCountryCodeForISO:(id)o;
- (ENCoreTelephonyUtility)init;
- (id)countryCodeISOForMobileCountryCode:(id)code;
- (id)currentMobileCountryCode;
- (id)currentPhoneNumbers;
- (void)addObserver:(id)observer;
- (void)cellMonitorUpdate:(id)update info:(id)info;
- (void)currentPhoneNumbers;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation ENCoreTelephonyUtility

+ (ENCoreTelephonyUtility)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[ENCoreTelephonyUtility sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __40__ENCoreTelephonyUtility_sharedInstance__block_invoke()
{
  if (!sharedInstance_sharedInstance)
  {
    v0 = objc_alloc_init(ENCoreTelephonyUtility);
    v1 = sharedInstance_sharedInstance;
    sharedInstance_sharedInstance = v0;
  }
}

- (ENCoreTelephonyUtility)init
{
  v12.receiver = self;
  v12.super_class = ENCoreTelephonyUtility;
  v2 = [(ENCoreTelephonyUtility *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.exposureNotification.regionSource.telephony", v3);
    [(ENCoreTelephonyUtility *)v2 setSerialQueue:v4];

    serialQueue = [(ENCoreTelephonyUtility *)v2 serialQueue];
    v2->_ctServerConnection = _CTServerConnectionCreateOnTargetQueue();

    v6 = objc_alloc(MEMORY[0x277CC37B8]);
    serialQueue2 = [(ENCoreTelephonyUtility *)v2 serialQueue];
    v8 = [v6 initWithQueue:serialQueue2];
    ctClient = v2->_ctClient;
    v2->_ctClient = v8;

    [(CoreTelephonyClient *)v2->_ctClient setDelegate:v2];
  }

  weakObjectsHashTable = [MEMORY[0x277CCAA48] weakObjectsHashTable];
  [(ENCoreTelephonyUtility *)v2 setObserversTable:weakObjectsHashTable];

  return v2;
}

- (void)dealloc
{
  selfCopy = self;
  if (gLogCategory_ENCoreTelephonyUtility <= 30)
  {
    if (gLogCategory_ENCoreTelephonyUtility != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(ENCoreTelephonyUtility *)self dealloc];
    }
  }

  if ([(ENCoreTelephonyUtility *)selfCopy ctServerConnection])
  {
    CFRelease([(ENCoreTelephonyUtility *)selfCopy ctServerConnection]);
  }

  v4.receiver = selfCopy;
  v4.super_class = ENCoreTelephonyUtility;
  [(ENCoreTelephonyUtility *)&v4 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  serialQueue = [(ENCoreTelephonyUtility *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__ENCoreTelephonyUtility_addObserver___block_invoke;
  v7[3] = &unk_278FD1120;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(serialQueue, v7);
}

void __38__ENCoreTelephonyUtility_addObserver___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_ENCoreTelephonyUtility <= 30)
  {
    if (gLogCategory_ENCoreTelephonyUtility != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __38__ENCoreTelephonyUtility_addObserver___block_invoke_cold_1(a1, a2, a3);
    }
  }

  v4 = [*(v3 + 32) observersTable];
  [v4 addObject:*(v3 + 40)];

  v6 = [*(v3 + 32) currentMobileCountryCode];
  v5 = [ENCoreTelephonyUtility countryCodeISOForMobileCountryCode:?];
  if (v5)
  {
    if (gLogCategory_ENCoreTelephonyUtility < 31 && (gLogCategory_ENCoreTelephonyUtility != -1 || _LogCategory_Initialize()))
    {
      __38__ENCoreTelephonyUtility_addObserver___block_invoke_cold_2(v6);
    }

    [*(v3 + 40) telephonyUtility:*(v3 + 32) mobileCountryCodeChanged:v6 andCountryCodeISO:v5];
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v7 = observerCopy;
  if (gLogCategory_ENCoreTelephonyUtility <= 30)
  {
    if (gLogCategory_ENCoreTelephonyUtility != -1 || (observerCopy = _LogCategory_Initialize(), observerCopy))
    {
      [(ENCoreTelephonyUtility *)observerCopy removeObserver:v5, v6];
    }
  }

  serialQueue = [(ENCoreTelephonyUtility *)self serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__ENCoreTelephonyUtility_removeObserver___block_invoke;
  v10[3] = &unk_278FD1120;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(serialQueue, v10);
}

void __41__ENCoreTelephonyUtility_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observersTable];
  [v2 removeObject:*(a1 + 40)];
}

- (id)countryCodeISOForMobileCountryCode:(id)code
{
  codeCopy = code;
  if ([(ENCoreTelephonyUtility *)self ctServerConnection]|| ([(ENCoreTelephonyUtility *)self ctClient], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = objc_autoreleasePoolPush();
    if (codeCopy)
    {
      [(ENCoreTelephonyUtility *)self ctServerConnection];
      _CTServerConnectionCopyISOForMCC();
      if (gLogCategory__ENConfigurationManager <= 90 && (gLogCategory__ENConfigurationManager != -1 || _LogCategory_Initialize()))
      {
        [ENCoreTelephonyUtility countryCodeISOForMobileCountryCode:codeCopy];
      }
    }

    objc_autoreleasePoolPop(v6);
  }

  return 0;
}

- (id)currentMobileCountryCode
{
  ctClient = [(ENCoreTelephonyUtility *)self ctClient];

  if (ctClient)
  {
    ctClient2 = [(ENCoreTelephonyUtility *)self ctClient];
    v5 = [ctClient2 getCurrentDataSubscriptionContextSync:0];

    ctClient3 = [(ENCoreTelephonyUtility *)self ctClient];
    v11 = 0;
    v7 = [ctClient3 copyMobileCountryCode:v5 error:&v11];
    v8 = v11;

    if (!v8 && v7 && [v7 length] && objc_msgSend(v7, "integerValue") != 0xFFFF)
    {
      v9 = v7;
    }

    else
    {
      if (gLogCategory__ENConfigurationManager <= 90 && (gLogCategory__ENConfigurationManager != -1 || _LogCategory_Initialize()))
      {
        [(ENCoreTelephonyUtility *)v8 currentMobileCountryCode];
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)currentPhoneNumbers
{
  v40 = *MEMORY[0x277D85DE8];
  v22 = [MEMORY[0x277CBEB50] setWithCapacity:2];
  ctClient = [(ENCoreTelephonyUtility *)self ctClient];
  v29 = 0;
  v19 = [ctClient getSubscriptionInfoWithError:&v29];
  v21 = v29;

  if (v21)
  {
    if (gLogCategory__ENConfigurationManager <= 90 && (gLogCategory__ENConfigurationManager != -1 || _LogCategory_Initialize()))
    {
      [(ENCoreTelephonyUtility *)v21 currentPhoneNumbers];
    }
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [v19 subscriptionsInUse];
    v4 = [obj countByEnumeratingWithState:&v25 objects:v39 count:16];
    if (v4)
    {
      v5 = *v26;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v26 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v25 + 1) + 8 * i);
          ctClient2 = [(ENCoreTelephonyUtility *)self ctClient];
          v24 = 0;
          v9 = [ctClient2 getPhoneNumber:v7 error:&v24];
          v10 = v24;

          if (v9)
          {
            v35 = 0;
            v36 = &v35;
            v37 = 0x2020000000;
            v11 = getCPPhoneNumberCopyActiveCountryCodeSymbolLoc_ptr;
            v38 = getCPPhoneNumberCopyActiveCountryCodeSymbolLoc_ptr;
            if (!getCPPhoneNumberCopyActiveCountryCodeSymbolLoc_ptr)
            {
              v30 = MEMORY[0x277D85DD0];
              v31 = 3221225472;
              v32 = __getCPPhoneNumberCopyActiveCountryCodeSymbolLoc_block_invoke;
              v33 = &unk_278FD10F8;
              v34 = &v35;
              __getCPPhoneNumberCopyActiveCountryCodeSymbolLoc_block_invoke(&v30);
              v11 = v36[3];
            }

            _Block_object_dispose(&v35, 8);
            if (!v11)
            {
              [ENCoreTelephonyUtility currentPhoneNumbers];
            }

            v12 = v11();
            if (v12)
            {
              number = [v9 number];
              v14 = v12;
              v35 = 0;
              v36 = &v35;
              v37 = 0x2020000000;
              v15 = getTPSNormalizedPhoneNumberStringSymbolLoc_ptr;
              v38 = getTPSNormalizedPhoneNumberStringSymbolLoc_ptr;
              if (!getTPSNormalizedPhoneNumberStringSymbolLoc_ptr)
              {
                v30 = MEMORY[0x277D85DD0];
                v31 = 3221225472;
                v32 = __getTPSNormalizedPhoneNumberStringSymbolLoc_block_invoke;
                v33 = &unk_278FD10F8;
                v34 = &v35;
                __getTPSNormalizedPhoneNumberStringSymbolLoc_block_invoke(&v30);
                v15 = v36[3];
              }

              _Block_object_dispose(&v35, 8);
              if (!v15)
              {
                [ENCoreTelephonyUtility currentPhoneNumbers];
              }

              v16 = v15(number, v14);

              if (v16)
              {
                [v22 addObject:v16];
              }
            }

            else if (gLogCategory_ENCoreTelephonyUtility <= 90 && (gLogCategory_ENCoreTelephonyUtility != -1 || _LogCategory_Initialize()))
            {
              [ENCoreTelephonyUtility currentPhoneNumbers];
            }
          }

          else if (gLogCategory__ENConfigurationManager <= 90 && (gLogCategory__ENConfigurationManager != -1 || _LogCategory_Initialize()))
          {
            [(ENCoreTelephonyUtility *)v10 currentPhoneNumbers];
          }
        }

        v4 = [obj countByEnumeratingWithState:&v25 objects:v39 count:16];
      }

      while (v4);
    }

    if (gLogCategory_ENCoreTelephonyUtility <= 40 && (gLogCategory_ENCoreTelephonyUtility != -1 || _LogCategory_Initialize()))
    {
      [(ENCoreTelephonyUtility *)v22 currentPhoneNumbers];
    }
  }

  allObjects = [v22 allObjects];

  return allObjects;
}

- (void)cellMonitorUpdate:(id)update info:(id)info
{
  v41 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  infoCopy = info;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  legacyInfo = [infoCopy legacyInfo];
  v8 = [(__CFString *)legacyInfo countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (!v8)
  {
    v10 = legacyInfo;
LABEL_35:

    goto LABEL_36;
  }

  v9 = v8;
  v30 = infoCopy;
  v28 = updateCopy;
  v10 = 0;
  v11 = *v36;
  v12 = *MEMORY[0x277CC38A8];
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v36 != v11)
      {
        objc_enumerationMutation(legacyInfo);
      }

      v14 = *(*(&v35 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = legacyInfo;
        v16 = [v14 objectForKeyedSubscript:v12];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_13;
        }

        v18 = MEMORY[0x277CCACA0];
        v19 = [v14 objectForKeyedSubscript:v12];
        v20 = [v18 stringWithFormat:@"%@", v19];

        if (!v20)
        {
          v10 = 0;
LABEL_13:
          legacyInfo = v15;
          continue;
        }

        legacyInfo = v15;
        if ([(__CFString *)v20 integerValue]>= 1 && [(__CFString *)v20 integerValue]!= 0xFFFF)
        {

          v10 = v20;
          updateCopy = v28;
          infoCopy = v30;
LABEL_19:
          if ([(__CFString *)v10 isEqualToString:@"209"])
          {

            v10 = @"310";
          }

          v21 = [ENCoreTelephonyUtility countryCodeISOForMobileCountryCode:v10];
          if (v21)
          {
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            observersTable = [(ENCoreTelephonyUtility *)self observersTable];
            allObjects = [observersTable allObjects];

            v24 = [allObjects countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v32;
              do
              {
                for (j = 0; j != v25; ++j)
                {
                  if (*v32 != v26)
                  {
                    objc_enumerationMutation(allObjects);
                  }

                  [*(*(&v31 + 1) + 8 * j) telephonyUtility:self mobileCountryCodeChanged:v10 andCountryCodeISO:v21];
                }

                v25 = [allObjects countByEnumeratingWithState:&v31 objects:v39 count:16];
              }

              while (v25);
            }

            infoCopy = v30;
          }

          else if (gLogCategory__ENConfigurationManager <= 90 && (gLogCategory__ENConfigurationManager != -1 || _LogCategory_Initialize()))
          {
            [ENCoreTelephonyUtility cellMonitorUpdate:v10 info:?];
          }

          goto LABEL_35;
        }

        v10 = v20;
      }
    }

    v9 = [(__CFString *)legacyInfo countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

  updateCopy = v28;
  infoCopy = v30;
  if (v10)
  {
    goto LABEL_19;
  }

LABEL_36:
}

+ (id)mobileCountryCodeForISO:(id)o
{
  oCopy = o;
  if (oCopy)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [MEMORY[0x277CBEAC8] dictionaryWithContentsOfFile:@"/System/Library/Carrier Bundles/iPhone/Default.bundle/ISO2MCC.plist"];
    lowercaseString = [oCopy lowercaseString];
    v7 = [v5 objectForKey:lowercaseString];

    firstObject = [v7 firstObject];

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)countryCodeISOForMobileCountryCode:(id)code
{
  codeCopy = code;
  if (codeCopy)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [MEMORY[0x277CBEAC8] dictionaryWithContentsOfFile:@"/System/Library/Carrier Bundles/iPhone/Default.bundle/MCC2ISO.plist"];
    v6 = [v5 objectForKey:codeCopy];

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)currentPhoneNumbers
{
  currentHandler = [MEMORY[0x277CCA888] currentHandler];
  v1 = [MEMORY[0x277CCACA0] stringWithUTF8String:"CFStringRef soft_CPPhoneNumberCopyActiveCountryCode(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"ENCoreTelephonyUtility.m" lineNumber:31 description:{@"%s", dlerror()}];

  __break(1u);
}

@end