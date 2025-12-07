@interface MDMAppPropertyShim
+ (id)_dmdKeysToRequestToGetItems:(id)items;
+ (id)_itemKeyToDMDKeyMappingTable;
- (DMFConnection)deviceManagementUserConnection;
- (id)_appDictionaryFromApp:(id)app;
- (void)_createAppItems;
- (void)_createKeysForRequest;
- (void)_createRequest;
- (void)_executeRequest;
- (void)fetchAppItems;
@end

@implementation MDMAppPropertyShim

- (void)fetchAppItems
{
  [(MDMAppPropertyShim *)self _createRequest];
  [(MDMAppPropertyShim *)self _executeRequest];

  [(MDMAppPropertyShim *)self _createAppItems];
}

- (void)_createRequest
{
  [(MDMAppPropertyShim *)self _createKeysForRequest];
  v6 = objc_opt_new();
  [v6 setType:6];
  appsRequested = [(MDMAppPropertyShim *)self appsRequested];
  allObjects = [appsRequested allObjects];
  [v6 setBundleIdentifiers:allObjects];

  [v6 setManagedAppsOnly:{-[MDMAppPropertyShim shouldReturnManagedAppsOnly](self, "shouldReturnManagedAppsOnly")}];
  [v6 setDeleteFeedback:0];
  [v6 setAdvanceTransientStates:0];
  keysForRequest = [(MDMAppPropertyShim *)self keysForRequest];
  [v6 setPropertyKeys:keysForRequest];

  [(MDMAppPropertyShim *)self setRequest:v6];
}

- (void)_createKeysForRequest
{
  v3 = objc_opt_class();
  itemsRequested = [(MDMAppPropertyShim *)self itemsRequested];
  v4 = [v3 _dmdKeysToRequestToGetItems:itemsRequested];
  [(MDMAppPropertyShim *)self setKeysForRequest:v4];
}

- (void)_executeRequest
{
  v13[1] = *MEMORY[0x277D85DE8];
  deviceManagementUserConnection = [(MDMAppPropertyShim *)self deviceManagementUserConnection];
  request = [(MDMAppPropertyShim *)self request];
  v11 = 0;
  v5 = [deviceManagementUserConnection performRequest:request error:&v11];
  v6 = v11;

  if (!v5)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"request for app items failed: %@", v6];
    v8 = [MDMAppPropertyShimException alloc];
    v12 = @"error";
    v13[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [(MDMAppPropertyShimException *)v8 initWithName:@"MCDMDAppPropertyShimExceptionRequestFailed" reason:v7 userInfo:v9];

    [(MDMAppPropertyShimException *)v10 raise];
  }

  [(MDMAppPropertyShim *)self setResponse:v5];
}

- (void)_createAppItems
{
  v21 = *MEMORY[0x277D85DE8];
  response = [(MDMAppPropertyShim *)self response];
  appsByBundleIdentifier = [response appsByBundleIdentifier];

  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = appsByBundleIdentifier;
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
        v12 = [v6 objectForKeyedSubscript:{v11, v16}];
        v13 = [(MDMAppPropertyShim *)self _appDictionaryFromApp:v12];
        if (!-[MDMAppPropertyShim shouldReturnManagedAppsOnly](self, "shouldReturnManagedAppsOnly") || ([v12 sourceIdentifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 != 0, v14, !v15))
        {
          if (v13)
          {
            [v5 setObject:v13 forKeyedSubscript:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [(MDMAppPropertyShim *)self setAppItems:v5];
}

- (DMFConnection)deviceManagementUserConnection
{
  deviceManagementUserConnection = self->_deviceManagementUserConnection;
  if (!deviceManagementUserConnection)
  {
    currentUserConnection = [MEMORY[0x277D04BF8] currentUserConnection];
    v5 = self->_deviceManagementUserConnection;
    self->_deviceManagementUserConnection = currentUserConnection;

    deviceManagementUserConnection = self->_deviceManagementUserConnection;
  }

  return deviceManagementUserConnection;
}

+ (id)_itemKeyToDMDKeyMappingTable
{
  v5[16] = *MEMORY[0x277D85DE8];
  v4[0] = @"AdHocCodeSigned";
  v4[1] = @"AppStoreVendable";
  v5[0] = @"isAdHocCodeSigned";
  v5[1] = @"isAppStoreVendable";
  v4[2] = @"BetaApp";
  v4[3] = @"BundleSize";
  v5[2] = @"isBetaApp";
  v5[3] = @"staticUsage";
  v4[4] = @"DeviceBasedVPP";
  v4[5] = @"DynamicSize";
  v5[4] = @"isDeviceBasedVPP";
  v5[5] = @"dynamicUsage";
  v4[6] = @"ExternalVersionIdentifier";
  v4[7] = @"DistributorIdentifier";
  v5[6] = @"externalVersionIdentifier";
  v5[7] = @"distributorIdentifier";
  v4[8] = @"HasUpdateAvailable";
  v4[9] = @"Identifier";
  v5[8] = @"hasUpdateAvailable";
  v5[9] = @"bundleIdentifier";
  v4[10] = @"Installing";
  v4[11] = @"IsValidated";
  v5[10] = @"installationState";
  v5[11] = @"isValidated";
  v4[12] = @"Name";
  v4[13] = @"ShortVersion";
  v5[12] = @"displayName";
  v5[13] = @"shortVersion";
  v4[14] = @"Version";
  v4[15] = @"IsAppClip";
  v5[14] = @"version";
  v5[15] = @"isAppClip";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:16];

  return v2;
}

+ (id)_dmdKeysToRequestToGetItems:(id)items
{
  v20 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  _itemKeyToDMDKeyMappingTable = [self _itemKeyToDMDKeyMappingTable];
  v6 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [_itemKeyToDMDKeyMappingTable objectForKeyedSubscript:{*(*(&v15 + 1) + 8 * i), v15}];
        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [v6 addObject:@"bundleIdentifier"];
  [v6 addObject:@"installationState"];
  [v6 addObject:@"storeItemIdentifier"];
  [v6 addObject:@"sourceIdentifier"];
  allObjects = [v6 allObjects];

  return allObjects;
}

- (id)_appDictionaryFromApp:(id)app
{
  appCopy = app;
  v5 = objc_opt_new();
  v6 = [appCopy installationState] - 2;
  if (v6 <= 5 && ((0x37u >> v6) & 1) != 0)
  {
    v7 = 0xCu >> v6;
    itemsRequested = [(MDMAppPropertyShim *)self itemsRequested];
    v9 = [itemsRequested containsObject:@"Installing"];

    v10 = MEMORY[0x277CBEC38];
    v11 = MEMORY[0x277CBEC28];
    if (v9)
    {
      if (v7)
      {
        v12 = MEMORY[0x277CBEC28];
      }

      else
      {
        v12 = MEMORY[0x277CBEC38];
      }

      [v5 setObject:v12 forKeyedSubscript:@"Installing"];
    }

    bundleIdentifier = [appCopy bundleIdentifier];
    [v5 setObject:bundleIdentifier forKeyedSubscript:@"Identifier"];

    itemsRequested2 = [(MDMAppPropertyShim *)self itemsRequested];
    v15 = [itemsRequested2 containsObject:@"ExternalVersionIdentifier"];

    if (v15)
    {
      v16 = MEMORY[0x277CCABB0];
      externalVersionIdentifier = [appCopy externalVersionIdentifier];
      v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(externalVersionIdentifier, "unsignedIntegerValue")}];
      [v5 setObject:v18 forKeyedSubscript:@"ExternalVersionIdentifier"];
    }

    itemsRequested3 = [(MDMAppPropertyShim *)self itemsRequested];
    v20 = [itemsRequested3 containsObject:@"DistributorIdentifier"];

    if (v20)
    {
      distributorIdentifier = [appCopy distributorIdentifier];
      [v5 setObject:distributorIdentifier forKeyedSubscript:@"DistributorIdentifier"];
    }

    itemsRequested4 = [(MDMAppPropertyShim *)self itemsRequested];
    v23 = [itemsRequested4 containsObject:@"Version"];

    if (v23)
    {
      version = [appCopy version];
      [v5 setObject:version forKeyedSubscript:@"Version"];
    }

    itemsRequested5 = [(MDMAppPropertyShim *)self itemsRequested];
    v26 = [itemsRequested5 containsObject:@"ShortVersion"];

    if (v26)
    {
      shortVersion = [appCopy shortVersion];
      [v5 setObject:shortVersion forKeyedSubscript:@"ShortVersion"];
    }

    itemsRequested6 = [(MDMAppPropertyShim *)self itemsRequested];
    v29 = [itemsRequested6 containsObject:@"Name"];

    if (v29)
    {
      displayName = [appCopy displayName];
      [v5 setObject:displayName forKeyedSubscript:@"Name"];
    }

    itemsRequested7 = [(MDMAppPropertyShim *)self itemsRequested];
    v32 = [itemsRequested7 containsObject:@"BundleSize"];

    if (v32)
    {
      staticUsage = [appCopy staticUsage];
      [v5 setObject:staticUsage forKeyedSubscript:@"BundleSize"];
    }

    itemsRequested8 = [(MDMAppPropertyShim *)self itemsRequested];
    v35 = [itemsRequested8 containsObject:@"DynamicSize"];

    if (v35 && (v7 & 1) != 0)
    {
      dynamicUsage = [appCopy dynamicUsage];
      onDemandResourcesUsage = [appCopy onDemandResourcesUsage];
      v38 = onDemandResourcesUsage;
      if (onDemandResourcesUsage)
      {
        if (dynamicUsage)
        {
          v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(onDemandResourcesUsage, "unsignedLongLongValue") + objc_msgSend(dynamicUsage, "unsignedLongLongValue")}];

          dynamicUsage = v39;
        }

        else
        {
          dynamicUsage = onDemandResourcesUsage;
        }
      }

      [v5 setObject:dynamicUsage forKeyedSubscript:@"DynamicSize"];
    }

    itemsRequested9 = [(MDMAppPropertyShim *)self itemsRequested];
    v42 = [itemsRequested9 containsObject:@"HasUpdateAvailable"];

    if (v42)
    {
      storeItemIdentifier = [appCopy storeItemIdentifier];
      longLongValue = [storeItemIdentifier longLongValue];

      if (longLongValue)
      {
        if ([appCopy hasUpdateAvailable])
        {
          v45 = v10;
        }

        else
        {
          v45 = v11;
        }

        [v5 setObject:v45 forKeyedSubscript:@"HasUpdateAvailable"];
      }
    }

    itemsRequested10 = [(MDMAppPropertyShim *)self itemsRequested];
    v47 = [itemsRequested10 containsObject:@"IsValidated"];

    if (v47)
    {
      if ([appCopy isValidated])
      {
        v48 = v10;
      }

      else
      {
        v48 = v11;
      }

      [v5 setObject:v48 forKeyedSubscript:@"IsValidated"];
    }

    itemsRequested11 = [(MDMAppPropertyShim *)self itemsRequested];
    v50 = [itemsRequested11 containsObject:@"AppStoreVendable"];

    if (v50)
    {
      if ([appCopy isAppStoreVendable])
      {
        v51 = v10;
      }

      else
      {
        v51 = v11;
      }

      [v5 setObject:v51 forKeyedSubscript:@"AppStoreVendable"];
    }

    itemsRequested12 = [(MDMAppPropertyShim *)self itemsRequested];
    v53 = [itemsRequested12 containsObject:@"DeviceBasedVPP"];

    if (v53)
    {
      if ([appCopy isDeviceBasedVPP])
      {
        v54 = v10;
      }

      else
      {
        v54 = v11;
      }

      [v5 setObject:v54 forKeyedSubscript:@"DeviceBasedVPP"];
    }

    itemsRequested13 = [(MDMAppPropertyShim *)self itemsRequested];
    v56 = [itemsRequested13 containsObject:@"BetaApp"];

    if (v56)
    {
      if ([appCopy isBetaApp])
      {
        v57 = v10;
      }

      else
      {
        v57 = v11;
      }

      [v5 setObject:v57 forKeyedSubscript:@"BetaApp"];
    }

    itemsRequested14 = [(MDMAppPropertyShim *)self itemsRequested];
    v59 = [itemsRequested14 containsObject:@"AdHocCodeSigned"];

    if (v59)
    {
      if ([appCopy isAdHocCodeSigned])
      {
        v60 = v10;
      }

      else
      {
        v60 = v11;
      }

      [v5 setObject:v60 forKeyedSubscript:@"AdHocCodeSigned"];
    }

    itemsRequested15 = [(MDMAppPropertyShim *)self itemsRequested];
    v62 = [itemsRequested15 containsObject:@"IsAppClip"];

    if (v62)
    {
      if ([appCopy isAppClip])
      {
        v63 = v10;
      }

      else
      {
        v63 = v11;
      }

      [v5 setObject:v63 forKeyedSubscript:@"IsAppClip"];
    }

    sourceIdentifier = [appCopy sourceIdentifier];

    if (sourceIdentifier)
    {
      [v5 setObject:*MEMORY[0x277D035A8] forKeyedSubscript:@"Source"];
    }

    v40 = [v5 copy];
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

@end