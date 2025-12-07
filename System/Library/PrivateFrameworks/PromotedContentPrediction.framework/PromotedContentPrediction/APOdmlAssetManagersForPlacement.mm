@interface APOdmlAssetManagersForPlacement
- (APOdmlAssetManagersForPlacement)initWithPlacementType:(unint64_t)type trialClient:(id)client;
- (id)assetManagerForType:(unint64_t)type;
@end

@implementation APOdmlAssetManagersForPlacement

- (APOdmlAssetManagersForPlacement)initWithPlacementType:(unint64_t)type trialClient:(id)client
{
  v24 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v19.receiver = self;
  v19.super_class = APOdmlAssetManagersForPlacement;
  v7 = [(APOdmlAssetManagersForPlacement *)&v19 init];
  if (v7)
  {
    if (type == 1)
    {
      v12 = [[APOdmlAssetManager alloc] initWithNamespace:@"SLP_ADS_RUNTIME" andClient:clientCopy];
      runtimeAssetManager = v7->_runtimeAssetManager;
      v7->_runtimeAssetManager = v12;

      v14 = [[APOdmlAssetManager alloc] initWithNamespace:@"SLP_ADS_COUNTERFACTUAL" andClient:clientCopy];
      counterfactualAssetManager = v7->_counterfactualAssetManager;
      v7->_counterfactualAssetManager = v14;
    }

    else if (!type)
    {
      v8 = [[APOdmlAssetManager alloc] initWithNamespace:@"AD_PLATFORMS_ODML" andClient:clientCopy];
      v9 = v7->_runtimeAssetManager;
      v7->_runtimeAssetManager = v8;

      v10 = [[APOdmlAssetManager alloc] initWithNamespace:@"SEARCH_ADS_COUNTERFACTUAL" andClient:clientCopy];
      p_super = &v7->_counterfactualAssetManager->super;
      v7->_counterfactualAssetManager = v10;
LABEL_8:

      goto LABEL_9;
    }

    p_super = OdmlLogForCategory(0);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      *buf = 138412546;
      v21 = v16;
      v22 = 2048;
      typeCopy = type;
      v17 = v16;
      _os_log_impl(&dword_260ECB000, p_super, OS_LOG_TYPE_ERROR, "[%@] The following placement type is not supported: %lu", buf, 0x16u);
    }

    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

- (id)assetManagerForType:(unint64_t)type
{
  v12 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    counterfactualAssetManager = [(APOdmlAssetManagersForPlacement *)self counterfactualAssetManager];
  }

  else if (type)
  {
    v5 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      v9 = objc_opt_class();
      v10 = 2048;
      typeCopy = type;
      v6 = v9;
      _os_log_impl(&dword_260ECB000, v5, OS_LOG_TYPE_ERROR, "[%@] The following asset manager type is not supported: %lu", &v8, 0x16u);
    }
  }

  else
  {
    counterfactualAssetManager = [(APOdmlAssetManagersForPlacement *)self runtimeAssetManager];
  }

  return counterfactualAssetManager;
}

@end