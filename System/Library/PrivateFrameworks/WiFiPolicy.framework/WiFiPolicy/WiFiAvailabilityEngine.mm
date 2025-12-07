@interface WiFiAvailabilityEngine
- (WiFiAvailabilityEngine)initWithProviders:(id)providers sources:(id)sources;
- (WiFiLocationProvider)locationProvider;
- (WiFiScanProvider)scanProvider;
- (id)_createAvailabilityMatchForCandidate:(id)candidate scannedNetwork:(id)network;
- (id)_findExistingAvailabilityMatchForScannedNetwork:(id)network;
- (id)_findRelevantNetworkMatchForScannedNetwork:(id)network;
- (id)findRecommendationForScannedNetwork:(id)network;
- (id)findRecommendationsForScannedNetwork:(id)network;
- (void)_findAvailabilityMatchesInSourcesForBSSIDS:(id)s;
- (void)_handle3BarsRelevancyAdded:(id)added removed:(id)removed;
- (void)_handleCandidateMatches:(id)matches;
- (void)_handleScanResultCallback:(id)callback error:(id)error;
- (void)_handleWalletChange:(id)change removed:(id)removed;
- (void)_handleWalletRelevancyAdded:(id)added removed:(id)removed;
- (void)_handleWalletRemoval:(id)removal;
- (void)_removeStaleMatches;
- (void)_setupProviderCallbacks:(id)callbacks;
- (void)_setupSourceCallbacks:(id)callbacks;
- (void)setAvailabilityMatchMaximumAge:(double)age;
@end

@implementation WiFiAvailabilityEngine

- (void)_removeStaleMatches
{
  v29 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CBEB58] set];
  date = [MEMORY[0x277CBEAA8] date];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  availableNetworks = [(WiFiAvailabilityEngine *)self availableNetworks];
  v6 = [availableNetworks countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    v9 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(availableNetworks);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        matchedAt = [v11 matchedAt];
        [date timeIntervalSinceDate:matchedAt];
        v14 = v13;
        [(WiFiAvailabilityEngine *)self availabilityMatchMaximumAge];
        v16 = v15;

        if (v14 > v16)
        {
          [v3 addObject:v11];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v25 = "[WiFiAvailabilityEngine _removeStaleMatches]";
            v26 = 2112;
            v27 = v11;
            _os_log_impl(&dword_2332D7000, v9, OS_LOG_TYPE_DEFAULT, "%s: expired match %@", buf, 0x16u);
          }
        }
      }

      v7 = [availableNetworks countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v7);
  }

  if ([v3 count])
  {
    availableNetworks2 = [(WiFiAvailabilityEngine *)self availableNetworks];
    v18 = [availableNetworks2 mutableCopy];

    [v18 minusSet:v3];
    [(WiFiAvailabilityEngine *)self setAvailableNetworks:v18];
  }

  objc_autoreleasePoolPop(context);
}

- (WiFiAvailabilityEngine)initWithProviders:(id)providers sources:(id)sources
{
  providersCopy = providers;
  sourcesCopy = sources;
  v8 = sourcesCopy;
  selfCopy2 = 0;
  if (providersCopy && sourcesCopy)
  {
    if ([providersCopy count] && objc_msgSend(v8, "count") && (v24.receiver = self, v24.super_class = WiFiAvailabilityEngine, (self = -[WiFiAvailabilityEngine init](&v24, sel_init)) != 0))
    {
      v10 = [providersCopy copy];
      providers = self->_providers;
      self->_providers = v10;

      v12 = [v8 copy];
      sources = self->_sources;
      self->_sources = v12;

      v14 = [MEMORY[0x277CBEB98] set];
      availableNetworks = self->_availableNetworks;
      self->_availableNetworks = v14;

      v16 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__WiFiAvailabilityEngine_initWithProviders_sources___block_invoke;
      block[3] = &unk_2789C6630;
      selfCopy = self;
      v23 = selfCopy;
      dispatch_async(v16, block);

      v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v19 = dispatch_queue_create("com.apple.WiFiPolicy.availability-engine", v18);
      queue = selfCopy->_queue;
      selfCopy->_queue = v19;

      selfCopy->_availabilityMatchMaximumAge = 600.0;
      [(WiFiAvailabilityEngine *)selfCopy _setupProviderCallbacks:self->_providers];
      [(WiFiAvailabilityEngine *)selfCopy _setupSourceCallbacks:self->_sources];
      self = selfCopy;

      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  return selfCopy2;
}

uint64_t __52__WiFiAvailabilityEngine_initWithProviders_sources___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(WiFiLexicon);
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)_setupProviderCallbacks:(id)callbacks
{
  v26 = *MEMORY[0x277D85DE8];
  callbacksCopy = callbacks;
  objc_initWeak(&location, self);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = callbacksCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v25 count:16];
  if (v6)
  {
    v8 = *v17;
    v9 = MEMORY[0x277D86220];
    *&v7 = 136315394;
    v13 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v13;
          v22 = "[WiFiAvailabilityEngine _setupProviderCallbacks:]";
          v23 = 2112;
          v24 = v11;
          _os_log_impl(&dword_2332D7000, v9, OS_LOG_TYPE_DEFAULT, "%s: provider %@", buf, 0x16u);
        }

        if ([v11 conformsToProtocol:{&unk_2848EA318, v13}])
        {
          v12 = objc_storeWeak(&self->_scanProvider, v11);
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __50__WiFiAvailabilityEngine__setupProviderCallbacks___block_invoke;
          v14[3] = &unk_2789C69C8;
          objc_copyWeak(&v15, &location);
          [v11 addScanResultsCallback:v14];

          objc_destroyWeak(&v15);
        }

        else if ([v11 conformsToProtocol:&unk_2848EA378])
        {
          objc_storeWeak(&self->_locationProvider, v11);
        }

        ++v10;
      }

      while (v6 != v10);
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v25 count:16];
    }

    while (v6);
  }

  objc_destroyWeak(&location);
}

void __50__WiFiAvailabilityEngine__setupProviderCallbacks___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleScanResultCallback:v6 error:v5];
}

- (void)_setupSourceCallbacks:(id)callbacks
{
  v34 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = callbacks;
  v3 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v3)
  {
    v15 = *v26;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v25 + 1) + 8 * i);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v30 = "[WiFiAvailabilityEngine _setupSourceCallbacks:]";
          v31 = 2112;
          v32 = v5;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: source %@", buf, 0x16u);
        }

        objc_initWeak(buf, self);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Wftwalletsourc.isa), (objc_opt_isKindOfClass()))
        {
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __48__WiFiAvailabilityEngine__setupSourceCallbacks___block_invoke;
          v23[3] = &unk_2789C8450;
          objc_copyWeak(&v24, buf);
          [v5 setRelevancyHandler:v23];
          relevantNetworks = [v5 relevantNetworks];
          v7 = [relevantNetworks count];

          if (v7)
          {
            WeakRetained = objc_loadWeakRetained(buf);
            relevantNetworks2 = [v5 relevantNetworks];
            [WeakRetained _handleWalletRelevancyAdded:relevantNetworks2 removed:0];
          }

          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __48__WiFiAvailabilityEngine__setupSourceCallbacks___block_invoke_2;
          v21[3] = &unk_2789C8478;
          objc_copyWeak(&v22, buf);
          [v5 setRemovalHandler:v21];
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __48__WiFiAvailabilityEngine__setupSourceCallbacks___block_invoke_3;
          v19[3] = &unk_2789C8450;
          objc_copyWeak(&v20, buf);
          [v5 setChangeHandler:v19];
          objc_destroyWeak(&v20);
          objc_destroyWeak(&v22);
          objc_destroyWeak(&v24);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(&cfstr_Wft3barssource.isa), (objc_opt_isKindOfClass()))
        {
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __48__WiFiAvailabilityEngine__setupSourceCallbacks___block_invoke_4;
          v17[3] = &unk_2789C8450;
          objc_copyWeak(&v18, buf);
          [v5 setRelevancyHandler:v17];
          relevantNetworks3 = [v5 relevantNetworks];
          v11 = [relevantNetworks3 count];

          if (v11)
          {
            v12 = objc_loadWeakRetained(buf);
            relevantNetworks4 = [v5 relevantNetworks];
            [v12 _handle3BarsRelevancyAdded:relevantNetworks4 removed:0];
          }

          objc_destroyWeak(&v18);
        }

        objc_destroyWeak(buf);
      }

      v3 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v3);
  }
}

void __48__WiFiAvailabilityEngine__setupSourceCallbacks___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleWalletRelevancyAdded:v6 removed:v5];
}

void __48__WiFiAvailabilityEngine__setupSourceCallbacks___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleWalletRemoval:v3];
}

void __48__WiFiAvailabilityEngine__setupSourceCallbacks___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleWalletChange:v6 removed:v5];
}

void __48__WiFiAvailabilityEngine__setupSourceCallbacks___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handle3BarsRelevancyAdded:v6 removed:v5];
}

- (void)setAvailabilityMatchMaximumAge:(double)age
{
  v9 = *MEMORY[0x277D85DE8];
  self->_availabilityMatchMaximumAge = age;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    availabilityMatchMaximumAge = self->_availabilityMatchMaximumAge;
    v5 = 136315394;
    v6 = "[WiFiAvailabilityEngine setAvailabilityMatchMaximumAge:]";
    v7 = 2048;
    v8 = availabilityMatchMaximumAge;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: setting new max age %f", &v5, 0x16u);
  }
}

- (void)_handleCandidateMatches:(id)matches
{
  v41 = *MEMORY[0x277D85DE8];
  matchesCopy = matches;
  context = objc_autoreleasePoolPush();
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__10;
  v36 = __Block_byref_object_dispose__10;
  v37 = 0;
  v26 = matchesCopy;
  v5 = [MEMORY[0x277CBEB58] setWithSet:matchesCopy];
  date = [MEMORY[0x277CBEAA8] date];
  if (matchesCopy)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    availableNetworks = [(WiFiAvailabilityEngine *)self availableNetworks];
    v8 = [availableNetworks countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v8)
    {
      v9 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(availableNetworks);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          matchedAt = [v11 matchedAt];
          [date timeIntervalSinceDate:matchedAt];
          v14 = v13;
          [(WiFiAvailabilityEngine *)self availabilityMatchMaximumAge];
          v16 = v14 < v15;

          if (v16)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [availableNetworks countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v8);
    }

    v17 = [v5 mutableCopy];
    v18 = v33[5];
    v33[5] = v17;

    v19 = v33[5];
    availableNetworks2 = [(WiFiAvailabilityEngine *)self availableNetworks];
    [v19 minusSet:availableNetworks2];

    v21 = [MEMORY[0x277CBEB98] setWithSet:v5];
    [(WiFiAvailabilityEngine *)self setAvailableNetworks:v21];

    availabilityChangedCallback = [(WiFiAvailabilityEngine *)self availabilityChangedCallback];
    v23 = availabilityChangedCallback == 0;

    if (v23)
    {
      [WiFiAvailabilityEngine _handleCandidateMatches:];
    }

    else if ([v33[5] count])
    {
      queue = [(WiFiAvailabilityEngine *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __50__WiFiAvailabilityEngine__handleCandidateMatches___block_invoke;
      block[3] = &unk_2789C73A8;
      block[4] = self;
      block[5] = &v32;
      dispatch_async(queue, block);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v39 = "[WiFiAvailabilityEngine _handleCandidateMatches:]";
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: no change to available networks", buf, 0xCu);
    }
  }

  else
  {
    [WiFiAvailabilityEngine _handleCandidateMatches:];
  }

  _Block_object_dispose(&v32, 8);
  objc_autoreleasePoolPop(context);
}

void __50__WiFiAvailabilityEngine__handleCandidateMatches___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) availabilityChangedCallback];
  v2[2](v2, *(*(*(a1 + 40) + 8) + 40));

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (id)_findExistingAvailabilityMatchForScannedNetwork:(id)network
{
  v16 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  availableNetworks = [(WiFiAvailabilityEngine *)self availableNetworks];
  v6 = [availableNetworks countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(availableNetworks);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isEqualToScannedNetwork:networkCopy])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [availableNetworks countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_findRelevantNetworkMatchForScannedNetwork:(id)network
{
  v49 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(WiFiAvailabilityEngine *)self sources];
  v31 = [obj countByEnumeratingWithState:&v37 objects:v48 count:16];
  if (v31)
  {
    v32 = 0;
    v30 = *v38;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v38 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v37 + 1) + 8 * i);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        relevantNetworks = [v6 relevantNetworks];
        v8 = [relevantNetworks countByEnumeratingWithState:&v33 objects:v47 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v34;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v34 != v10)
              {
                objc_enumerationMutation(relevantNetworks);
              }

              v12 = *(*(&v33 + 1) + 8 * j);
              sSID = [v12 SSID];
              sSID2 = [networkCopy SSID];
              v15 = [sSID isEqualToString:sSID2];

              if ((v15 & 1) == 0)
              {
                bSSID = [networkCopy BSSID];

                if (!bSSID || (v17 = MEMORY[0x277CBEB98], [networkCopy BSSID], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "setWithObjects:", v18, 0), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v12, "containsAccessPointMatchingBSSIDs:", v19), v19, v18, (v20 & 1) == 0))
                {
                  essMembers = [networkCopy essMembers];

                  if (!essMembers)
                  {
                    continue;
                  }

                  v22 = MEMORY[0x277CBEB98];
                  essMembers2 = [networkCopy essMembers];
                  v24 = [v22 setWithArray:essMembers2];
                  v25 = [v12 containsAccessPointMatchingBSSIDs:v24];

                  if (!v25)
                  {
                    continue;
                  }
                }
              }

              v26 = v12;

              v27 = MEMORY[0x277D86220];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v42 = "[WiFiAvailabilityEngine _findRelevantNetworkMatchForScannedNetwork:]";
                v43 = 2112;
                v44 = v26;
                v45 = 2112;
                v46 = networkCopy;
                _os_log_impl(&dword_2332D7000, v27, OS_LOG_TYPE_DEFAULT, "%s: relevant network %@ matched with scanned network %@", buf, 0x20u);
              }

              v32 = v26;
              goto LABEL_22;
            }

            v9 = [relevantNetworks countByEnumeratingWithState:&v33 objects:v47 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

LABEL_22:
      }

      v31 = [obj countByEnumeratingWithState:&v37 objects:v48 count:16];
    }

    while (v31);
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (void)_findAvailabilityMatchesInSourcesForBSSIDS:(id)s
{
  v24 = *MEMORY[0x277D85DE8];
  sCopy = s;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(WiFiAvailabilityEngine *)self sources];
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v10 = objc_autoreleasePoolPush();
          v11 = MEMORY[0x277CBEB98];
          allKeys = [sCopy allKeys];
          v13 = [v11 setWithArray:allKeys];

          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __69__WiFiAvailabilityEngine__findAvailabilityMatchesInSourcesForBSSIDS___block_invoke;
          v15[3] = &unk_2789C84A0;
          v16 = sCopy;
          selfCopy = self;
          v18 = v9;
          [v9 fetchCandidateNetworksMatchingBSSIDs:v13 completionHandler:v15];

          objc_autoreleasePoolPop(v10);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }
}

void __69__WiFiAvailabilityEngine__findAvailabilityMatchesInSourcesForBSSIDS___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v23 = v6;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v34 = "[WiFiAvailabilityEngine _findAvailabilityMatchesInSourcesForBSSIDS:]_block_invoke";
      v35 = 2112;
      v36 = v5;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: fetched matches %@", buf, 0x16u);
    }

    v26 = [MEMORY[0x277CBEB58] set];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v25 = v5;
    v7 = v5;
    v28 = [v7 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v28)
    {
      v8 = *v30;
      v9 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v29 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = [v7 objectForKey:v11];
          v14 = [*(a1 + 32) objectForKey:v11];
          if (v14)
          {
            v15 = [WiFiAvailabilityMatch matchWithNetwork:v13 scannedNetwork:v14];
            if (v15)
            {
              v27 = v12;
              v16 = [*(a1 + 40) wifiLexicon];
              if (v16)
              {
                v17 = [*(a1 + 40) wifiLexicon];
                [v15 SSID];
                v18 = a1;
                v19 = v7;
                v21 = v20 = v8;
                [v15 setUnwantedNetworkName:{objc_msgSend(v17, "stringContainsUnwantedWords:", v21)}];

                v8 = v20;
                v7 = v19;
                a1 = v18;
                v9 = MEMORY[0x277D86220];
              }

              else
              {
                [v15 setUnwantedNetworkName:0];
              }

              [v26 addObject:v15];
              objc_opt_class();
              v12 = v27;
              if (objc_opt_isKindOfClass())
              {
                v22 = [v14 SSID];
                [v13 setSSID:v22];

                v12 = v27;
              }
            }

            else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315651;
              v34 = "[WiFiAvailabilityEngine _findAvailabilityMatchesInSourcesForBSSIDS:]_block_invoke";
              v35 = 2113;
              v36 = v13;
              v37 = 2113;
              v38 = v14;
              _os_log_impl(&dword_2332D7000, v9, OS_LOG_TYPE_DEFAULT, "%s: failed to create match for candidate %{private}@, scanned %{private}@", buf, 0x20u);
            }
          }

          else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315907;
            v34 = "[WiFiAvailabilityEngine _findAvailabilityMatchesInSourcesForBSSIDS:]_block_invoke";
            v35 = 2160;
            v36 = 1752392040;
            v37 = 2112;
            v38 = v11;
            v39 = 2113;
            v40 = v13;
            _os_log_impl(&dword_2332D7000, v9, OS_LOG_TYPE_DEFAULT, "%s: missing scan match for bssid %{mask.hash}@, candidate %{private}@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v12);
        }

        v28 = [v7 countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v28);
    }

    [*(a1 + 40) _handleCandidateMatches:v26];
    v6 = v24;
    v5 = v25;
  }
}

- (id)_createAvailabilityMatchForCandidate:(id)candidate scannedNetwork:(id)network
{
  v22 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  networkCopy = network;
  v8 = [WiFiAvailabilityMatch matchWithNetwork:candidateCopy scannedNetwork:networkCopy];
  if (v8 && [candidateCopy source] == 2)
  {
    wifiLexicon = [(WiFiAvailabilityEngine *)self wifiLexicon];
    if (wifiLexicon)
    {
      wifiLexicon2 = [(WiFiAvailabilityEngine *)self wifiLexicon];
      sSID = [v8 SSID];
      [v8 setUnwantedNetworkName:{objc_msgSend(wifiLexicon2, "stringContainsUnwantedWords:", sSID)}];
    }

    else
    {
      [v8 setUnwantedNetworkName:0];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      sSID2 = [v8 SSID];
      v14 = 136315906;
      v15 = "[WiFiAvailabilityEngine _createAvailabilityMatchForCandidate:scannedNetwork:]";
      v16 = 2112;
      v17 = sSID2;
      v18 = 2112;
      v19 = networkCopy;
      v20 = 2112;
      v21 = networkCopy;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: unwanted network name %@ for candidate %@ scanned %@", &v14, 0x2Au);
    }
  }

  return v8;
}

- (void)_handleWalletRelevancyAdded:(id)added removed:(id)removed
{
  v11 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  removedCopy = removed;
  if (addedCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[WiFiAvailabilityEngine _handleWalletRelevancyAdded:removed:]";
    v9 = 2112;
    v10 = addedCopy;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: wallet networks became relevant: %@", &v7, 0x16u);
  }

  if (removedCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[WiFiAvailabilityEngine _handleWalletRelevancyAdded:removed:]";
    v9 = 2112;
    v10 = removedCopy;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: wallet networks no longer relevant: %@", &v7, 0x16u);
  }
}

- (void)_handleWalletRemoval:(id)removal
{
  v8 = *MEMORY[0x277D85DE8];
  removalCopy = removal;
  if (removalCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[WiFiAvailabilityEngine _handleWalletRemoval:]";
    v6 = 2112;
    v7 = removalCopy;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: wallet networks that have been removed: %@", &v4, 0x16u);
  }
}

- (void)_handleWalletChange:(id)change removed:(id)removed
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[WiFiAvailabilityEngine _handleWalletChange:removed:]";
    v8 = 2112;
    removedCopy = removed;
    v10 = 2112;
    changeCopy = change;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: removed wallet networks: %@, added wallet networks: %@", &v6, 0x20u);
  }
}

- (void)_handle3BarsRelevancyAdded:(id)added removed:(id)removed
{
  v11 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  removedCopy = removed;
  if (addedCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[WiFiAvailabilityEngine _handle3BarsRelevancyAdded:removed:]";
    v9 = 2112;
    v10 = addedCopy;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: 3bars networks became relevant: %@", &v7, 0x16u);
  }

  if (removedCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[WiFiAvailabilityEngine _handle3BarsRelevancyAdded:removed:]";
    v9 = 2112;
    v10 = removedCopy;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: 3bars networks no longer relevant: %@", &v7, 0x16u);
  }
}

- (id)findRecommendationForScannedNetwork:(id)network
{
  v18 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  v5 = [(WiFiAvailabilityEngine *)self findRecommendationsForScannedNetwork:networkCopy];
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v13 = "[WiFiAvailabilityEngine findRecommendationForScannedNetwork:]";
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = networkCopy;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: matches %@, for network %@", buf, 0x20u);
    }

    v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:0 comparator:&__block_literal_global_16];
    v11 = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    v8 = [v5 sortedArrayUsingDescriptors:v7];
    firstObject = [v8 firstObject];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v13 = "[WiFiAvailabilityEngine findRecommendationForScannedNetwork:]";
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = networkCopy;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: top match %@ for network %@", buf, 0x20u);
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

uint64_t __62__WiFiAvailabilityEngine_findRecommendationForScannedNetwork___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 network];
  v6 = [v5 source];

  v7 = [v4 network];

  v8 = [v7 source];
  if (v6 == v8)
  {
    return 0;
  }

  if (v6 == 3 || v8 == 3)
  {
    if (v6 == 3)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    if (v8 == 1)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    if (v6 == 1)
    {
      return 1;
    }

    else
    {
      return v10;
    }
  }
}

- (WiFiScanProvider)scanProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_scanProvider);

  return WeakRetained;
}

- (WiFiLocationProvider)locationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_locationProvider);

  return WeakRetained;
}

- (void)_handleScanResultCallback:(id)callback error:(id)error
{
  v48 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  errorCopy = error;
  v7 = [MEMORY[0x277CBEB58] set];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = callbackCopy;
  v31 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (v31)
  {
    v9 = *v37;
    v27 = v7;
    selfCopy = self;
    v29 = *v37;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        sSID = [v11 SSID];
        if (sSID)
        {
          v14 = sSID;
          sSID2 = [v11 SSID];
          v16 = [sSID2 length];

          if (v16)
          {
            bSSID = [(WiFiAvailabilityEngine *)self _findExistingAvailabilityMatchForScannedNetwork:v11];
            if (bSSID)
            {
              date = [MEMORY[0x277CBEAA8] date];
              [bSSID setMatchedAt:date];

              [v7 addObject:bSSID];
            }

            v19 = [(WiFiAvailabilityEngine *)self _findRelevantNetworkMatchForScannedNetwork:v11];
            if (v19)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v42 = "[WiFiAvailabilityEngine _handleScanResultCallback:error:]";
                v43 = 2112;
                v44 = v19;
                v45 = 2112;
                v46 = v11;
                _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: found relevant network match (%@) for scanned network %@", buf, 0x20u);
              }

              v20 = [(WiFiAvailabilityEngine *)self _createAvailabilityMatchForCandidate:v19 scannedNetwork:v11];

              [v7 addObject:v20];
              bSSID = v20;
            }

            else if (bSSID)
            {
              [v7 addObject:bSSID];
            }

            else
            {
              bSSID = [v11 BSSID];
              if (bSSID)
              {
                [dictionary setObject:v11 forKey:bSSID];
              }

              v34 = 0u;
              v35 = 0u;
              v32 = 0u;
              v33 = 0u;
              essMembers = [v11 essMembers];
              v22 = [essMembers countByEnumeratingWithState:&v32 objects:v40 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v33;
                do
                {
                  for (j = 0; j != v23; ++j)
                  {
                    if (*v33 != v24)
                    {
                      objc_enumerationMutation(essMembers);
                    }

                    [dictionary setObject:v11 forKey:*(*(&v32 + 1) + 8 * j)];
                  }

                  v23 = [essMembers countByEnumeratingWithState:&v32 objects:v40 count:16];
                }

                while (v23);
              }

              v7 = v27;
              self = selfCopy;
            }

            v9 = v29;
          }
        }

        objc_autoreleasePoolPop(v12);
      }

      v31 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v31);
  }

  if ([dictionary count])
  {
    [(WiFiAvailabilityEngine *)self _findAvailabilityMatchesInSourcesForBSSIDS:dictionary];
  }

  if ([v7 count])
  {
    [(WiFiAvailabilityEngine *)self _handleCandidateMatches:v7];
  }

  [(WiFiAvailabilityEngine *)self _removeStaleMatches];
}

- (id)findRecommendationsForScannedNetwork:(id)network
{
  v20 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  availableNetworks = [(WiFiAvailabilityEngine *)self availableNetworks];

  if (availableNetworks)
  {
    availableNetworks = [MEMORY[0x277CBEB58] set];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    availableNetworks2 = [(WiFiAvailabilityEngine *)self availableNetworks];
    v7 = [availableNetworks2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(availableNetworks2);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if ([v11 isEqualToScannedNetwork:networkCopy])
          {
            [availableNetworks addObject:v11];
          }
        }

        v8 = [availableNetworks2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  if ([availableNetworks count])
  {
    v12 = availableNetworks;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

- (void)_handleCandidateMatches:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v0 = 136315138;
    v1 = "[WiFiAvailabilityEngine _handleCandidateMatches:]";
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: no availability callback provided", &v0, 0xCu);
  }
}

- (void)_handleCandidateMatches:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v0 = 136315138;
    v1 = "[WiFiAvailabilityEngine _handleCandidateMatches:]";
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: no candidates", &v0, 0xCu);
  }
}

@end