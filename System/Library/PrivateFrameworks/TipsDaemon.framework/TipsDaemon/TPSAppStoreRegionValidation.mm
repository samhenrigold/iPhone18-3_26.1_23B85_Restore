@interface TPSAppStoreRegionValidation
- (BOOL)hasStoreFrontRegionPrefix:(id)prefix fromRegions:(id)regions;
- (id)getCurrentState;
- (void)getCurrentStateWithCompletion:(id)completion;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSAppStoreRegionValidation

- (BOOL)hasStoreFrontRegionPrefix:(id)prefix fromRegions:(id)regions
{
  prefixCopy = prefix;
  regionsCopy = regions;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__TPSAppStoreRegionValidation_hasStoreFrontRegionPrefix_fromRegions___block_invoke;
  v10[3] = &unk_2789B0348;
  v12 = &v13;
  v7 = prefixCopy;
  v11 = v7;
  [regionsCopy enumerateObjectsUsingBlock:v10];
  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

void *__69__TPSAppStoreRegionValidation_hasStoreFrontRegionPrefix_fromRegions___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) hasPrefix:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a4 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (void)validateWithCompletion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  targetRegions = [(TPSRegionsValidation *)self targetRegions];
  if ([targetRegions count])
  {

LABEL_4:
    getCurrentState = [(TPSAppStoreRegionValidation *)self getCurrentState];
    targetRegions2 = [(TPSRegionsValidation *)self targetRegions];
    v10 = [targetRegions2 count];

    if (v10)
    {
      targetRegions3 = [(TPSRegionsValidation *)self targetRegions];
      v12 = [(TPSAppStoreRegionValidation *)self hasStoreFrontRegionPrefix:getCurrentState fromRegions:targetRegions3];
    }

    else
    {
      v12 = 1;
    }

    excludeRegions = [(TPSRegionsValidation *)self excludeRegions];
    v14 = [excludeRegions count];

    if (v14)
    {
      excludeRegions2 = [(TPSRegionsValidation *)self excludeRegions];
      v16 = [(TPSAppStoreRegionValidation *)self hasStoreFrontRegionPrefix:getCurrentState fromRegions:excludeRegions2];

      v17 = !v16;
    }

    else
    {
      v17 = 1;
    }

    v18 = v12 & v17;
    targeting = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
    {
      v20 = objc_opt_class();
      v21 = v20;
      targetRegions4 = [(TPSRegionsValidation *)self targetRegions];
      v23 = [targetRegions4 componentsJoinedByString:{@", "}];
      excludeRegions3 = [(TPSRegionsValidation *)self excludeRegions];
      v25 = [excludeRegions3 componentsJoinedByString:{@", "}];
      v26 = 138413314;
      v27 = v20;
      v28 = 2112;
      v29 = getCurrentState;
      v30 = 2112;
      v31 = v23;
      v32 = 2112;
      v33 = v25;
      v34 = 1024;
      v35 = v18;
      _os_log_debug_impl(&dword_232D6F000, targeting, OS_LOG_TYPE_DEBUG, "%@ - checking appstore region: %@, target regions: %@, exclude regions: %@. Valid: %d", &v26, 0x30u);
    }

    goto LABEL_13;
  }

  excludeRegions4 = [(TPSRegionsValidation *)self excludeRegions];
  v7 = [excludeRegions4 count];

  if (v7)
  {
    goto LABEL_4;
  }

  getCurrentState = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(getCurrentState, OS_LOG_TYPE_DEBUG))
  {
    [(TPSAppStoreRegionValidation *)self validateWithCompletion:getCurrentState];
  }

  v18 = 1;
LABEL_13:

  completionCopy[2](completionCopy, v18, 0);
}

- (id)getCurrentState
{
  ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];

  ams_storefront = [ams_activeiTunesAccount ams_storefront];

  return ams_storefront;
}

- (void)getCurrentStateWithCompletion:(id)completion
{
  completionCopy = completion;
  getCurrentState = [(TPSAppStoreRegionValidation *)self getCurrentState];
  v6 = getCurrentState;
  if (getCurrentState)
  {
    null = getCurrentState;
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v8 = null;

  completionCopy[2](completionCopy, v8, 0);
}

- (void)validateWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138412290;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "%@ - neither target nor exclude appstore region(s) is specified.", &v4, 0xCu);
}

@end