@interface WiFiWalletSource
- (WiFiWalletSource)initWithChangeHandler:(id)handler;
- (id)_createWiFiWalletPassFromPass:(id)pass;
- (id)_networksWithIdentifier:(id)identifier;
- (id)candidateNetworks;
- (id)expiredWalletIDs;
- (id)relevantNetworks;
- (void)_addPass:(id)pass;
- (void)_handlePassLibraryChange:(id)change;
- (void)_handleRelevantPassUpdate:(id)update;
- (void)_initializeWiFiPasses;
- (void)_issueChangeCallbackWithPass:(id)pass removedNetworks:(id)networks;
- (void)_issueRelevancyCallbackWithRelevantNetworks:(id)networks notRelevantNetworks:(id)relevantNetworks;
- (void)_issueRemovalCallbackWithPass:(id)pass;
- (void)_passDidBecomeRelevant:(id)relevant;
- (void)_passLibraryDidBecomeRelevantNotification:(id)notification;
- (void)_passLibraryDidChange:(id)change;
- (void)_removePass:(id)pass withSerialNumber:(id)number;
- (void)_removeRelevantPasses;
- (void)_replacePass:(id)pass;
- (void)dealloc;
@end

@implementation WiFiWalletSource

- (id)relevantNetworks
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = MEMORY[0x277CBEB98];
  relevantPassIdentifiers = [(WiFiWalletSource *)self relevantPassIdentifiers];
  v6 = [v4 setWithSet:relevantPassIdentifiers];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        networks = [(WiFiWalletSource *)self networks];
        v13 = [networks objectForKey:v11];

        if (v13)
        {
          allObjects = [v13 allObjects];
          [v3 addObjectsFromArray:allObjects];
        }

        else
        {
          NSLog(&cfstr_SNoRelevantNet_0.isa, "[WiFiWalletSource relevantNetworks]", v11);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v3;
}

- (void)dealloc
{
  if (self->_passLibrary)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D386E0] object:0];
  }

  v4.receiver = self;
  v4.super_class = WiFiWalletSource;
  [(WiFiWalletSource *)&v4 dealloc];
}

- (void)_initializeWiFiPasses
{
  objc_initWeak(&location, self);
  queue = [(WiFiWalletSource *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__WiFiWalletSource__initializeWiFiPasses__block_invoke;
  block[3] = &unk_2789C7BA0;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(queue, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __41__WiFiWalletSource__initializeWiFiPasses__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained passLibrary];
  v4 = [v3 passesOfType:0];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        v11 = objc_loadWeakRetained((a1 + 40));
        [v11 _addPass:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [*(a1 + 32) passLibrary];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41__WiFiWalletSource__initializeWiFiPasses__block_invoke_2;
  v13[3] = &unk_2789C8180;
  v13[4] = *(a1 + 32);
  [v12 fetchCurrentRelevantPassInfo:v13];
}

void __41__WiFiWalletSource__initializeWiFiPasses__block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  NSLog(&cfstr_RelevantPasses.isa, v3);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 32) _handleRelevantPassUpdate:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_addPass:(id)pass
{
  passCopy = pass;
  if (_WiFiWalletSourcePassContainsWiFiSemantics(passCopy))
  {
    uniqueID = [passCopy uniqueID];
    serialNumber = [passCopy serialNumber];
    NSLog(&cfstr_SAddingPassUni.isa, "[WiFiWalletSource _addPass:]", passCopy, uniqueID, serialNumber);

    v7 = [(WiFiWalletSource *)self _createWiFiWalletPassFromPass:passCopy];
    if (v7)
    {
      networks = [(WiFiWalletSource *)self networks];
      uniqueID2 = [passCopy uniqueID];
      [networks setObject:v7 forKey:uniqueID2];

      changeHandler = [(WiFiWalletSource *)self changeHandler];

      if (changeHandler)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __29__WiFiWalletSource__addPass___block_invoke;
        block[3] = &unk_2789C6608;
        block[4] = self;
        v7 = v7;
        v12 = v7;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }

    else
    {
      NSLog(&cfstr_SFailedToCreat_6.isa, "[WiFiWalletSource _addPass:]", passCopy);
    }
  }

  else
  {
    [WiFiWalletSource _addPass:passCopy];
    v7 = 0;
  }
}

void __29__WiFiWalletSource__addPass___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) changeHandler];
  (*(v2 + 2))(v2, *(a1 + 40), 0);
}

- (void)_removePass:(id)pass withSerialNumber:(id)number
{
  v33 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  numberCopy = number;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  networks = [(WiFiWalletSource *)self networks];
  allKeys = [networks allKeys];

  obj = allKeys;
  v9 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        networks2 = [(WiFiWalletSource *)self networks];
        v14 = [networks2 objectForKeyedSubscript:v12];

        anyObject = [v14 anyObject];
        passTypeIdentifier = [anyObject passTypeIdentifier];
        if ([passTypeIdentifier isEqualToString:passCopy])
        {
          [anyObject serialNumber];
          v27 = v14;
          v17 = v9;
          v18 = v10;
          selfCopy = self;
          v21 = v20 = passCopy;
          v22 = [v21 isEqualToString:numberCopy];

          passCopy = v20;
          self = selfCopy;
          v10 = v18;
          v9 = v17;
          v14 = v27;

          if (v22)
          {
            networks3 = [(WiFiWalletSource *)self networks];
            v9 = [networks3 objectForKey:v12];

            networks4 = [(WiFiWalletSource *)self networks];
            [networks4 removeObjectForKey:v12];

            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v9);
  }

LABEL_12:

  [(WiFiWalletSource *)self _issueRemovalCallbackWithPass:v9];
}

- (void)_passLibraryDidBecomeRelevantNotification:(id)notification
{
  NSLog(&cfstr_S.isa, a2, "[WiFiWalletSource _passLibraryDidBecomeRelevantNotification:]", notification);
  queue = [(WiFiWalletSource *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__WiFiWalletSource__passLibraryDidBecomeRelevantNotification___block_invoke;
  block[3] = &unk_2789C6630;
  block[4] = self;
  dispatch_async(queue, block);
}

void __62__WiFiWalletSource__passLibraryDidBecomeRelevantNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) passLibrary];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__WiFiWalletSource__passLibraryDidBecomeRelevantNotification___block_invoke_2;
  v3[3] = &unk_2789C8180;
  v3[4] = *(a1 + 32);
  [v2 fetchCurrentRelevantPassInfo:v3];
}

void __62__WiFiWalletSource__passLibraryDidBecomeRelevantNotification___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    NSLog(&cfstr_RelevantPasses.isa, v3);
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(a1 + 32) _handleRelevantPassUpdate:*(*(&v10 + 1) + 8 * i)];
        }

        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }

  else
  {
    NSLog(&cfstr_SNoRelevantPas.isa, "[WiFiWalletSource _passLibraryDidBecomeRelevantNotification:]_block_invoke_2");
    [*(a1 + 32) _removeRelevantPasses];
  }
}

- (void)_passLibraryDidChange:(id)change
{
  changeCopy = change;
  NSLog(&cfstr_LibraryChanged.isa, changeCopy);
  queue = [(WiFiWalletSource *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__WiFiWalletSource__passLibraryDidChange___block_invoke;
  block[3] = &unk_2789C6608;
  block[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(queue, block);
}

void __42__WiFiWalletSource__passLibraryDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) userInfo];
  [v1 _handlePassLibraryChange:v2];
}

- (void)_handleRelevantPassUpdate:(id)update
{
  updateCopy = update;
  v9 = updateCopy;
  if (updateCopy)
  {
    v5 = [updateCopy objectForKeyedSubscript:*MEMORY[0x277D38718]];
    if (v5)
    {
      v6 = v5;
      passLibrary = [(WiFiWalletSource *)self passLibrary];
      v8 = [passLibrary passWithUniqueID:v6];

      if (v8)
      {
        [(WiFiWalletSource *)self _passDidBecomeRelevant:v8];
      }

      else
      {
        NSLog(&cfstr_SUnableToFindP.isa, "[WiFiWalletSource _handleRelevantPassUpdate:]", v6);
      }
    }

    else
    {
      NSLog(&cfstr_SMissingUnique.isa, "[WiFiWalletSource _handleRelevantPassUpdate:]", v9);
    }
  }

  else
  {
    NSLog(&cfstr_SPassinfoIsNil.isa, "[WiFiWalletSource _handleRelevantPassUpdate:]");
  }
}

- (void)_passDidBecomeRelevant:(id)relevant
{
  relevantCopy = relevant;
  if (relevantCopy)
  {
    relevantPassIdentifiers = [(WiFiWalletSource *)self relevantPassIdentifiers];
    uniqueID = [relevantCopy uniqueID];
    [relevantPassIdentifiers addObject:uniqueID];

    uniqueID2 = [relevantCopy uniqueID];
    NSLog(&cfstr_SPassIsNowRele.isa, "[WiFiWalletSource _passDidBecomeRelevant:]", relevantCopy, uniqueID2);

    uniqueID3 = [relevantCopy uniqueID];
    v8 = [(WiFiWalletSource *)self _networksWithIdentifier:uniqueID3];

    if (v8)
    {
      [(WiFiWalletSource *)self _issueRelevancyCallbackWithRelevantNetworks:v8 notRelevantNetworks:0];
    }

    else
    {
      [WiFiWalletSource _passDidBecomeRelevant:relevantCopy];
    }
  }

  else
  {
    NSLog(&cfstr_SNoPassGivenFo.isa, "[WiFiWalletSource _passDidBecomeRelevant:]");
  }
}

- (void)_removeRelevantPasses
{
  v22 = *MEMORY[0x277D85DE8];
  relevantPassIdentifiers = [(WiFiWalletSource *)self relevantPassIdentifiers];
  v4 = [relevantPassIdentifiers count];

  if (v4)
  {
    relevantPassIdentifiers2 = [(WiFiWalletSource *)self relevantPassIdentifiers];
    NSLog(&cfstr_SRelevantPassI.isa, "[WiFiWalletSource _removeRelevantPasses]", relevantPassIdentifiers2);

    v6 = [MEMORY[0x277CBEB58] set];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    relevantPassIdentifiers3 = [(WiFiWalletSource *)self relevantPassIdentifiers];
    v8 = [relevantPassIdentifiers3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(relevantPassIdentifiers3);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [(WiFiWalletSource *)self _networksWithIdentifier:v12];
          v14 = v13;
          if (v13)
          {
            allObjects = [v13 allObjects];
            [v6 addObjectsFromArray:allObjects];
          }

          else
          {
            NSLog(&cfstr_SNoNetworksFou.isa, "[WiFiWalletSource _removeRelevantPasses]", v12);
          }
        }

        v9 = [relevantPassIdentifiers3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [(WiFiWalletSource *)self _issueRelevancyCallbackWithRelevantNetworks:0 notRelevantNetworks:v6];
    relevantPassIdentifiers4 = [(WiFiWalletSource *)self relevantPassIdentifiers];
    [relevantPassIdentifiers4 removeAllObjects];
  }

  else
  {
    NSLog(&cfstr_SNoRelevantPas.isa, "[WiFiWalletSource _removeRelevantPasses]");
  }
}

- (id)_createWiFiWalletPassFromPass:(id)pass
{
  v59 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = [passCopy semantics];
  v4 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v54;
    v8 = *MEMORY[0x277D38788];
    v9 = *MEMORY[0x277D38830];
    v10 = *MEMORY[0x277D38828];
    v47 = *MEMORY[0x277D38840];
    v48 = *MEMORY[0x277D38838];
    v40 = *MEMORY[0x277D38788];
    v41 = *v54;
    while (2)
    {
      v11 = 0;
      v42 = v5;
      do
      {
        if (*v54 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v53 + 1) + 8 * v11);
        if ([v12 isEqualToString:v8])
        {
          v45 = v11;
          localizedName = [passCopy localizedName];
          localizedDescription = [passCopy localizedDescription];
          NSLog(&cfstr_PassHasWifi.isa, localizedName, localizedDescription);

          semantics = [passCopy semantics];
          v16 = [semantics objectForKey:v12];

          dictionariesValue = [v16 dictionariesValue];
          v18 = [dictionariesValue count];

          if (!v18)
          {
            NSLog(&cfstr_SPassHasAWifia.isa, "[WiFiWalletSource _createWiFiWalletPassFromPass:]", passCopy);

            v38 = 0;
            goto LABEL_27;
          }

          v46 = [MEMORY[0x277CBEB58] set];

          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v44 = v16;
          dictionariesValue2 = [v16 dictionariesValue];
          v20 = [dictionariesValue2 countByEnumeratingWithState:&v49 objects:v57 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v50;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v50 != v22)
                {
                  objc_enumerationMutation(dictionariesValue2);
                }

                v24 = *(*(&v49 + 1) + 8 * i);
                v25 = objc_alloc_init(WiFiWalletPass);
                uniqueID = [passCopy uniqueID];
                [(WiFiWalletPass *)v25 setUniqueIdentifier:uniqueID];

                v27 = [v24 objectForKey:v9];
                [(WiFiWalletPass *)v25 setSSID:v27];

                v28 = [v24 objectForKey:v10];
                [(WiFiWalletPass *)v25 setPassword:v28];

                if (_os_feature_enabled_impl())
                {
                  v29 = [v24 objectForKey:v48];
                  [(WiFiWalletPass *)v25 setCaptiveToken:v29];

                  v30 = [v24 objectForKey:v47];
                  [(WiFiWalletPass *)v25 setCaptiveTokenAuthURL:v30];
                }

                serialNumber = [passCopy serialNumber];
                [(WiFiWalletPass *)v25 setSerialNumber:serialNumber];

                passTypeIdentifier = [passCopy passTypeIdentifier];
                [(WiFiWalletPass *)v25 setPassTypeIdentifier:passTypeIdentifier];

                relevantDate = [passCopy relevantDate];
                [(WiFiWalletPass *)v25 setRelevantDate:relevantDate];

                localizedDescription2 = [passCopy localizedDescription];
                [(WiFiWalletPass *)v25 setLocalizedDescription:localizedDescription2];

                sSID = [(WiFiWalletPass *)v25 SSID];

                if (sSID)
                {
                  sSID2 = [(WiFiWalletPass *)v25 SSID];
                  v37 = [sSID2 length];

                  if (v37)
                  {
                    [v46 addObject:v25];
                    NSLog(&cfstr_SAddedWifiinfo.isa, "[WiFiWalletSource _createWiFiWalletPassFromPass:]", v25);
                  }
                }
              }

              v21 = [dictionariesValue2 countByEnumeratingWithState:&v49 objects:v57 count:16];
            }

            while (v21);
          }

          v11 = v45;
          v6 = v46;
          v8 = v40;
          v7 = v41;
          v5 = v42;
        }

        ++v11;
      }

      while (v11 != v5);
      v5 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

  v6 = v6;
  v38 = v6;
LABEL_27:

  return v38;
}

- (id)_networksWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  networks = [(WiFiWalletSource *)self networks];
  v6 = [networks objectForKey:identifierCopy];

  if (!v6)
  {
    NSLog(&cfstr_SRelevantNetwo.isa, "[WiFiWalletSource _networksWithIdentifier:]", identifierCopy);
  }

  return v6;
}

- (id)candidateNetworks
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  networks = [(WiFiWalletSource *)self networks];
  allValues = [networks allValues];

  v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allValues);
        }

        allObjects = [*(*(&v14 + 1) + 8 * v9) allObjects];
        [v3 addObjectsFromArray:allObjects];

        ++v9;
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if ([v3 count])
  {
    v11 = v3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (id)expiredWalletIDs
{
  v18 = *MEMORY[0x277D85DE8];
  passLibrary = [(WiFiWalletSource *)self passLibrary];
  passes = [passLibrary passes];

  v4 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = passes;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 isExpired])
        {
          serialNumber = [v10 serialNumber];
          [v4 addObject:serialNumber];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (WiFiWalletSource)initWithChangeHandler:(id)handler
{
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = WiFiWalletSource;
  v5 = [(WiFiWalletSource *)&v19 init];
  if (!v5)
  {
    defaultCenter2 = 0;
    goto LABEL_9;
  }

  if (handlerCopy)
  {
    v6 = MEMORY[0x23839E400](handlerCopy);
    changeHandler = v5->changeHandler;
    v5->changeHandler = v6;
  }

  v8 = dispatch_queue_create("com.apple.wifi.wallet-source", 0);
  queue = v5->_queue;
  v5->_queue = v8;

  if (!v5->_queue || (v10 = objc_alloc_init(MEMORY[0x277CBEB38]), networks = v5->_networks, v5->_networks = v10, networks, !v5->_networks) || (v12 = objc_alloc_init(MEMORY[0x277CBEB58]), relevantPassIdentifiers = v5->_relevantPassIdentifiers, v5->_relevantPassIdentifiers = v12, relevantPassIdentifiers, !v5->_relevantPassIdentifiers))
  {
LABEL_12:
    defaultCenter2 = v5;
    v5 = 0;
    goto LABEL_9;
  }

  if (([MEMORY[0x277D37FC8] isPassLibraryAvailable] & 1) == 0)
  {
    NSLog(&cfstr_PkpasslibraryI.isa);
    goto LABEL_12;
  }

  v14 = objc_alloc_init(MEMORY[0x277D37FC8]);
  passLibrary = v5->_passLibrary;
  v5->_passLibrary = v14;

  [(WiFiWalletSource *)v5 _initializeWiFiPasses];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v5 selector:sel__passLibraryDidChange_ name:*MEMORY[0x277D386E0] object:v5->_passLibrary];

  defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter2 addObserver:v5 selector:sel__passLibraryDidBecomeRelevantNotification_ name:*MEMORY[0x277D38728] object:0 suspensionBehavior:2];
LABEL_9:

  return v5;
}

- (void)_replacePass:(id)pass
{
  v32 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  passLibrary = [(WiFiWalletSource *)self passLibrary];
  v6 = [passLibrary passesOfType:0];

  if (_WiFiWalletSourcePassContainsWiFiSemantics(passCopy))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = v6;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          uniqueID = [passCopy uniqueID];
          uniqueID2 = [v12 uniqueID];
          v15 = [uniqueID isEqualToString:uniqueID2];

          if (v15)
          {
            v16 = [(WiFiWalletSource *)self _createWiFiWalletPassFromPass:passCopy];
            if (v16)
            {
              v17 = v16;
              networks = [(WiFiWalletSource *)self networks];
              uniqueID3 = [v12 uniqueID];
              v20 = [networks objectForKey:uniqueID3];

              networks2 = [(WiFiWalletSource *)self networks];
              uniqueID4 = [v12 uniqueID];
              [networks2 removeObjectForKey:uniqueID4];

              networks3 = [(WiFiWalletSource *)self networks];
              uniqueID5 = [passCopy uniqueID];
              [networks3 setObject:v17 forKey:uniqueID5];

              [(WiFiWalletSource *)self _issueChangeCallbackWithPass:v17 removedNetworks:v20];
            }

            else
            {
              NSLog(&cfstr_SFailedToCreat_6.isa, "[WiFiWalletSource _replacePass:]", passCopy);
            }

            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v6 = v26;
  }

  else
  {
    localizedDescription = [passCopy localizedDescription];
    NSLog(&cfstr_SPassDoesnTCon.isa, "[WiFiWalletSource _replacePass:]", passCopy, localizedDescription);
  }
}

- (void)_handlePassLibraryChange:(id)change
{
  v41 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = changeCopy;
  if (changeCopy)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v6 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277D386C0]];
    v7 = [v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(WiFiWalletSource *)self _addPass:*(*(&v34 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v8);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = [v5 objectForKeyedSubscript:*MEMORY[0x277D38740]];
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(WiFiWalletSource *)self _replacePass:*(*(&v30 + 1) + 8 * j)];
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v13);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = [v5 objectForKeyedSubscript:{*MEMORY[0x277D38730], 0}];
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      v20 = *MEMORY[0x277D386F8];
      v21 = *MEMORY[0x277D38750];
      do
      {
        for (k = 0; k != v18; ++k)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v26 + 1) + 8 * k);
          v24 = [v23 objectForKey:v20];
          v25 = [v23 objectForKey:v21];
          [(WiFiWalletSource *)self _removePass:v24 withSerialNumber:v25];
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v18);
    }
  }
}

- (void)_issueRelevancyCallbackWithRelevantNetworks:(id)networks notRelevantNetworks:(id)relevantNetworks
{
  networksCopy = networks;
  relevantNetworksCopy = relevantNetworks;
  relevancyHandler = [(WiFiWalletSource *)self relevancyHandler];

  if (relevancyHandler)
  {
    if (networksCopy | relevantNetworksCopy)
    {
      relevancyHandler2 = [(WiFiWalletSource *)self relevancyHandler];
      OUTLINED_FUNCTION_0_6();
      v9();
    }

    else
    {
      NSLog(&cfstr_STriedToIsssue.isa, "[WiFiWalletSource _issueRelevancyCallbackWithRelevantNetworks:notRelevantNetworks:]");
    }
  }
}

- (void)_issueRemovalCallbackWithPass:(id)pass
{
  passCopy = pass;
  removalHandler = [(WiFiWalletSource *)self removalHandler];

  if (removalHandler)
  {
    if (passCopy)
    {
      removalHandler2 = [(WiFiWalletSource *)self removalHandler];
      OUTLINED_FUNCTION_0_6();
      v6();
    }

    else
    {
      NSLog(&cfstr_STriedToIsssue_0.isa, "[WiFiWalletSource _issueRemovalCallbackWithPass:]");
    }
  }
}

- (void)_issueChangeCallbackWithPass:(id)pass removedNetworks:(id)networks
{
  passCopy = pass;
  networksCopy = networks;
  changeHandler = [(WiFiWalletSource *)self changeHandler];

  if (changeHandler)
  {
    if (passCopy && networksCopy)
    {
      changeHandler2 = [(WiFiWalletSource *)self changeHandler];
      OUTLINED_FUNCTION_0_6();
      v9();
    }

    else
    {
      NSLog(&cfstr_STriedToIsssue_1.isa, "[WiFiWalletSource _issueChangeCallbackWithPass:removedNetworks:]");
    }
  }
}

- (void)_addPass:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 localizedDescription];
  NSLog(&cfstr_SPassDoesnTCon.isa, "[WiFiWalletSource _addPass:]", a1, v2);
}

- (void)_passDidBecomeRelevant:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 uniqueID];
  NSLog(&cfstr_SNoRelevantNet.isa, "[WiFiWalletSource _passDidBecomeRelevant:]", a1, v2);
}

@end