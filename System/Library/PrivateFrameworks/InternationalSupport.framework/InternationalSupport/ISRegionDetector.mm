@interface ISRegionDetector
+ (id)sharedRegionDetector;
- (BOOL)getCountryFromTelephony;
- (ISRegionDetector)init;
- (id)_checkForAliases:(id)aliases;
- (id)_checkForAliasesOrInvalid:(id)invalid;
- (id)_checkedArrayForString:(id)string;
- (id)_countryFromTelephony;
- (id)guessedLanguages;
- (void)_closeWifiConnection;
- (void)_getWifiDevice;
- (void)_scanComplete:(id)complete error:(BOOL)error;
- (void)_scanWifiList;
- (void)_scanWifiListWithDevice:(__WiFiDeviceClient *)device;
- (void)_startWifiScan;
- (void)dealloc;
- (void)reset;
@end

@implementation ISRegionDetector

+ (id)sharedRegionDetector
{
  v2 = sharedRegionDetector_sharedInstance;
  if (!sharedRegionDetector_sharedInstance)
  {
    v3 = objc_alloc_init(ISRegionDetector);
    v4 = sharedRegionDetector_sharedInstance;
    sharedRegionDetector_sharedInstance = v3;

    v2 = sharedRegionDetector_sharedInstance;
  }

  return v2;
}

- (id)_countryFromTelephony
{
  v2 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:0];
  v14 = 0;
  v3 = [v2 getSubscriptionInfoWithError:&v14];
  v4 = v14;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    subscriptionsInUse = [v3 subscriptionsInUse];
    v5 = [subscriptionsInUse count];

    if (v5)
    {
      subscriptionsInUse2 = [v3 subscriptionsInUse];
      v9 = [subscriptionsInUse2 objectAtIndexedSubscript:0];
      v13 = 0;
      v10 = [v2 copyMobileCountryCode:v9 error:&v13];
      v5 = v13;

      if (v5)
      {
        v6 = 0;
      }

      else
      {
        v12 = 0;
        v6 = [v2 copyMobileSubscriberIsoCountryCode:v10 error:&v12];
        v5 = v12;
      }

      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)_checkForAliases:(id)aliases
{
  v14[1] = *MEMORY[0x1E69E9840];
  aliasesCopy = aliases;
  v4 = aliasesCopy;
  if (aliasesCopy)
  {
    v5 = [aliasesCopy count];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      do
      {
        v8 = [v4 objectAtIndexedSubscript:v7];
        v9 = [&unk_1F3737C18 objectForKey:v8];
        if (v9)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
          }

          else
          {
            v14[0] = v9;
            v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
          }

          v12 = v10;
          [v4 replaceObjectsInRange:v7 withObjectsFromArray:{1, v10}];
          v11 = [v12 count];
        }

        else
        {
          v11 = 1;
        }

        v7 += v11;
      }

      while (v7 < v6);
    }
  }

  return v4;
}

- (id)_checkForAliasesOrInvalid:(id)invalid
{
  v36 = *MEMORY[0x1E69E9840];
  invalidCopy = invalid;
  array = [MEMORY[0x1E695DF70] array];
  if (!self->_validCountries)
  {
    v25 = invalidCopy;
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    availableLocaleIdentifiers = [MEMORY[0x1E695DF58] availableLocaleIdentifiers];
    v8 = [availableLocaleIdentifiers countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      v11 = *MEMORY[0x1E695D978];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(availableLocaleIdentifiers);
          }

          v13 = MEMORY[0x1E695DF58];
          v14 = [MEMORY[0x1E695DF58] canonicalLocaleIdentifierFromString:*(*(&v30 + 1) + 8 * i)];
          v15 = [v13 componentsFromLocaleIdentifier:v14];

          v16 = [v15 objectForKey:v11];
          if (v16)
          {
            [(NSSet *)v6 addObject:v16];
          }
        }

        v9 = [availableLocaleIdentifiers countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v9);
    }

    validCountries = self->_validCountries;
    self->_validCountries = v6;

    invalidCopy = v25;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [(ISRegionDetector *)self _checkForAliases:invalidCopy];
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v26 + 1) + 8 * j);
        if ([(NSSet *)self->_validCountries containsObject:v23])
        {
          [array addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  return array;
}

- (id)_checkedArrayForString:(id)string
{
  if (string)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithObject:?];
    v5 = [(ISRegionDetector *)self _checkForAliases:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ISRegionDetector)init
{
  v5.receiver = self;
  v5.super_class = ISRegionDetector;
  v2 = [(ISRegionDetector *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_numberOfWiFiScanAttemptsRemaining = 5;
    if (!v2->_guessedCountries)
    {
      [(ISRegionDetector *)v2 getCountryFromTelephony];
      if (!v3->_guessedCountries)
      {
        [(ISRegionDetector *)v3 _startWifiScan];
      }
    }
  }

  return v3;
}

- (void)dealloc
{
  [(ISRegionDetector *)self _closeWifiConnection];
  v3.receiver = self;
  v3.super_class = ISRegionDetector;
  [(ISRegionDetector *)&v3 dealloc];
}

- (BOOL)getCountryFromTelephony
{
  guessedCountryFromTelephony = self->_guessedCountryFromTelephony;
  if (!guessedCountryFromTelephony)
  {
    _countryFromTelephony = [(ISRegionDetector *)self _countryFromTelephony];
    v5 = self->_guessedCountryFromTelephony;
    self->_guessedCountryFromTelephony = _countryFromTelephony;

    v6 = [(NSString *)self->_guessedCountryFromTelephony length];
    guessedCountryFromTelephony = self->_guessedCountryFromTelephony;
    if (v6)
    {
      uppercaseString = [(NSString *)guessedCountryFromTelephony uppercaseString];
      v8 = [(ISRegionDetector *)self _checkedArrayForString:uppercaseString];
      [(ISRegionDetector *)self setGuessedCountries:v8];

      guessedCountryFromTelephony = self->_guessedCountryFromTelephony;
    }
  }

  return guessedCountryFromTelephony != 0;
}

- (id)guessedLanguages
{
  selfCopy = self;
  v33 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_guessedCountries count])
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = selfCopy;
    v5 = selfCopy->_guessedCountries;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [MEMORY[0x1E695DF58] languagesForRegion:*(*(&v27 + 1) + 8 * i) subdivision:0 withThreshold:1 filter:0];
          reverseObjectEnumerator = [v10 reverseObjectEnumerator];
          allObjects = [reverseObjectEnumerator allObjects];

          [array2 addObject:allObjects];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v7);
    }

    while (1)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v13 = array2;
      v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v16 = 0;
      v17 = *v24;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v23 + 1) + 8 * j);
          lastObject = [v19 lastObject];
          if (lastObject)
          {
            if (([array containsObject:lastObject] & 1) == 0)
            {
              [array addObject:lastObject];
            }

            [v19 removeLastObject];
            v16 = 1;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v15);

      if ((v16 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_25:
    selfCopy = v22;
  }

  else
  {
    array = 0;
  }

  if (!selfCopy->_firstGuessedLanguages)
  {
    [(ISRegionDetector *)selfCopy setFirstGuessedLanguages:array];
  }

  return array;
}

- (void)_startWifiScan
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  [NSBundle(InternationalSupportExtensions) localizedStringInDeviceLanguageForKey:];
}

- (void)_getWifiDevice
{
  fWifiManager = self->fWifiManager;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v4 = getWiFiManagerClientCopyDevicesSymbolLoc_ptr;
  v17 = getWiFiManagerClientCopyDevicesSymbolLoc_ptr;
  if (!getWiFiManagerClientCopyDevicesSymbolLoc_ptr)
  {
    v5 = MobileWiFiLibrary();
    v15[3] = dlsym(v5, "WiFiManagerClientCopyDevices");
    getWiFiManagerClientCopyDevicesSymbolLoc_ptr = v15[3];
    v4 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v4)
  {
    [ISRegionDetector _startWifiScan];
    goto LABEL_15;
  }

  v6 = v4(fWifiManager);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if (CFArrayGetCount(v6))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
    self->fWifiDevice = ValueAtIndex;
    if (ValueAtIndex)
    {
      v9 = CFGetTypeID(ValueAtIndex);
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v10 = getWiFiDeviceClientGetTypeIDSymbolLoc_ptr;
      v17 = getWiFiDeviceClientGetTypeIDSymbolLoc_ptr;
      if (!getWiFiDeviceClientGetTypeIDSymbolLoc_ptr)
      {
        v11 = MobileWiFiLibrary();
        v15[3] = dlsym(v11, "WiFiDeviceClientGetTypeID");
        getWiFiDeviceClientGetTypeIDSymbolLoc_ptr = v15[3];
        v10 = v15[3];
      }

      _Block_object_dispose(&v14, 8);
      if (v10)
      {
        if (v9 == v10())
        {
          CFRetain(self->fWifiDevice);
        }

        goto LABEL_12;
      }

LABEL_15:
      [ISRegionDetector _startWifiScan];
      v13 = v12;
      _Block_object_dispose(&v14, 8);
      _Unwind_Resume(v13);
    }
  }

LABEL_12:
  CFRelease(v7);
}

- (void)_scanWifiListWithDevice:(__WiFiDeviceClient *)device
{
  if (device)
  {
    self->fWifiDevice = device;
    CFRetain(device);

    [(ISRegionDetector *)self _scanWifiList];
  }

  else
  {

    [(ISRegionDetector *)self _closeWifiConnection];
  }
}

- (void)_scanWifiList
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  date = [MEMORY[0x1E695DF00] date];
  [(ISRegionDetector *)self setWirelessScanStartDate:date];

  fWifiDevice = self->fWifiDevice;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v6 = getWiFiDeviceClientScanAsyncSymbolLoc_ptr;
  v16 = getWiFiDeviceClientScanAsyncSymbolLoc_ptr;
  if (!getWiFiDeviceClientScanAsyncSymbolLoc_ptr)
  {
    v11[5] = MEMORY[0x1E69E9820];
    v11[6] = 3221225472;
    v11[7] = __getWiFiDeviceClientScanAsyncSymbolLoc_block_invoke;
    v11[8] = &unk_1E7D07180;
    v12 = &v13;
    v7 = MobileWiFiLibrary();
    v14[3] = dlsym(v7, "WiFiDeviceClientScanAsync");
    getWiFiDeviceClientScanAsyncSymbolLoc_ptr = *(v12[1] + 24);
    v6 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v6)
  {
    [ISRegionDetector _startWifiScan];
    v10 = v9;
    _Block_object_dispose(&v13, 8);
    _Unwind_Resume(v10);
  }

  if (v6(fWifiDevice, dictionary, scanComplete, self))
  {
    if ([(ISRegionDetector *)self numberOfWiFiScanAttemptsRemaining])
    {
      [(ISRegionDetector *)self setNumberOfWiFiScanAttemptsRemaining:[(ISRegionDetector *)self numberOfWiFiScanAttemptsRemaining]- 1];
      v8 = dispatch_time(0, 500000000);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __33__ISRegionDetector__scanWifiList__block_invoke;
      v11[3] = &unk_1E7D07158;
      v11[4] = self;
      dispatch_after(v8, MEMORY[0x1E69E96A0], v11);
    }

    else
    {
      [(ISRegionDetector *)self _closeWifiConnection];
    }
  }
}

void *__33__ISRegionDetector__scanWifiList__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    if (result[5])
    {
      return [result _scanWifiList];
    }
  }

  return result;
}

- (void)_scanComplete:(id)complete error:(BOOL)error
{
  v61 = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  v7 = completeCopy;
  if (!error && !self->_guessedCountries)
  {
    selfCopy = self;
    v8 = [completeCopy count];
    if (!v8)
    {
LABEL_43:
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"BYCountryScanCompletedNotification" object:0];

      self = selfCopy;
      goto LABEL_44;
    }

    v9 = v8;
    v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v11 = 0;
    v47 = 3;
    do
    {
      v12 = [v7 objectAtIndexedSubscript:v11];

      v54 = 0;
      v55 = &v54;
      v56 = 0x2020000000;
      v13 = getWiFiNetworkGet11dCountryCodeFromIeSymbolLoc_ptr;
      v57 = getWiFiNetworkGet11dCountryCodeFromIeSymbolLoc_ptr;
      if (!getWiFiNetworkGet11dCountryCodeFromIeSymbolLoc_ptr)
      {
        v49 = MEMORY[0x1E69E9820];
        v50 = 3221225472;
        v51 = __getWiFiNetworkGet11dCountryCodeFromIeSymbolLoc_block_invoke;
        v52 = &unk_1E7D07180;
        v53 = &v54;
        v14 = MobileWiFiLibrary();
        v15 = dlsym(v14, "WiFiNetworkGet11dCountryCodeFromIe");
        *(v53[1] + 24) = v15;
        getWiFiNetworkGet11dCountryCodeFromIeSymbolLoc_ptr = *(v53[1] + 24);
        v13 = v55[3];
      }

      _Block_object_dispose(&v54, 8);
      if (!v13)
      {
        [ISRegionDetector _startWifiScan];
        __break(1u);
      }

      if (v13(v12, v48, &v47) && v47 >= 2)
      {
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v48 length:2 encoding:1];
        [v34 addObject:v16];
      }

      ++v11;
    }

    while (v9 != v11);
    v17 = [(ISRegionDetector *)self _checkForAliasesOrInvalid:v34];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v43 objects:v60 count:16];
    if (v18)
    {
      v19 = *v44;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v44 != v19)
          {
            objc_enumerationMutation(v17);
          }

          [v10 addObject:*(*(&v43 + 1) + 8 * i)];
        }

        v18 = [v17 countByEnumeratingWithState:&v43 objects:v60 count:16];
      }

      while (v18);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = v10;
    array = [v21 countByEnumeratingWithState:&v39 objects:v59 count:16];
    if (array)
    {
      v23 = 0;
      v24 = *v40;
      do
      {
        for (j = 0; j != array; j = j + 1)
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [v21 countForObject:*(*(&v39 + 1) + 8 * j)];
          if (v26 > v23)
          {
            v23 = v26;
          }
        }

        array = [v21 countByEnumeratingWithState:&v39 objects:v59 count:16];
      }

      while (array);

      if (!v23)
      {
        array = 0;
        goto LABEL_40;
      }

      array = [MEMORY[0x1E695DF70] array];
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v27 = v21;
      v28 = [v27 countByEnumeratingWithState:&v35 objects:v58 count:16];
      if (v28)
      {
        v29 = *v36;
        do
        {
          for (k = 0; k != v28; ++k)
          {
            if (*v36 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v31 = *(*(&v35 + 1) + 8 * k);
            if ([v27 countForObject:v31] == v23)
            {
              [array addObject:v31];
            }
          }

          v28 = [v27 countByEnumeratingWithState:&v35 objects:v58 count:16];
        }

        while (v28);
      }
    }

LABEL_40:
    if ([array count])
    {
      [(ISRegionDetector *)selfCopy setGuessedCountries:array];
    }

    goto LABEL_43;
  }

LABEL_44:
  [(ISRegionDetector *)self _closeWifiConnection];
}

- (void)_closeWifiConnection
{
  fWifiManager = self->fWifiManager;
  if (fWifiManager)
  {
    Current = CFRunLoopGetCurrent();
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v5 = getWiFiManagerClientUnscheduleFromRunLoopSymbolLoc_ptr;
    v13 = getWiFiManagerClientUnscheduleFromRunLoopSymbolLoc_ptr;
    if (!getWiFiManagerClientUnscheduleFromRunLoopSymbolLoc_ptr)
    {
      v6 = MobileWiFiLibrary();
      v11[3] = dlsym(v6, "WiFiManagerClientUnscheduleFromRunLoop");
      getWiFiManagerClientUnscheduleFromRunLoopSymbolLoc_ptr = v11[3];
      v5 = v11[3];
    }

    _Block_object_dispose(&v10, 8);
    if (!v5)
    {
      [ISRegionDetector _startWifiScan];
      v9 = v8;
      _Block_object_dispose(&v10, 8);
      _Unwind_Resume(v9);
    }

    v5(fWifiManager, Current, *MEMORY[0x1E695E8D0]);
    CFRelease(self->fWifiManager);
    self->fWifiManager = 0;
  }

  fWifiDevice = self->fWifiDevice;
  if (fWifiDevice)
  {
    CFRelease(fWifiDevice);
    self->fWifiDevice = 0;
  }
}

- (void)reset
{
  [(ISRegionDetector *)self setGuessedCountries:0];
  guessedCountryFromTelephony = self->_guessedCountryFromTelephony;
  self->_guessedCountryFromTelephony = 0;
}

@end