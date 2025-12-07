@interface SettingsCellularUtils
+ (BOOL)isCaseInsensitiveEqual:(id)equal withString:(id)string;
+ (BOOL)isUIDualSIM;
+ (BOOL)noDataConnectivityAvailableWithBSRecommendationCheck:(BOOL)check;
+ (BOOL)shouldShowPendingTransferPlanOnPad;
+ (BOOL)supportsWiFiCalling:(id)calling;
+ (id)formattedPhoneNumber:(id)number;
+ (id)removePlanConfirmationMessage:(id)message;
+ (id)removePlanConfirmationTitle:(id)title;
+ (id)singleSIMUIServiceDescriptor;
+ (id)singleSIMUISubscriptionContext;
+ (int)satelliteDataPlanTier;
@end

@implementation SettingsCellularUtils

+ (id)formattedPhoneNumber:(id)number
{
  v17 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v4 = CFPhoneNumberCreate();
  if (v4)
  {
    v5 = v4;
    String = CFPhoneNumberCreateString();
    if (String)
    {
      v7 = String;

      v8 = [MEMORY[0x277D4D830] loggerWithCategory:@"SettingsCellularUtils"];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315650;
        v12 = "+[SettingsCellularUtils formattedPhoneNumber:]";
        v13 = 2112;
        v14 = numberCopy;
        v15 = 2112;
        v16 = v7;
        _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "%s localized %@ as %@", &v11, 0x20u);
      }
    }

    else
    {
      v8 = [MEMORY[0x277D4D830] loggerWithCategory:@"SettingsCellularUtils"];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = "+[SettingsCellularUtils formattedPhoneNumber:]";
        v13 = 2112;
        v14 = numberCopy;
        _os_log_error_impl(&dword_2658DE000, v8, OS_LOG_TYPE_ERROR, "%s Could not localize %@", &v11, 0x16u);
      }

      v7 = numberCopy;
    }

    CFRelease(v5);
  }

  else
  {
    v9 = [MEMORY[0x277D4D830] loggerWithCategory:@"SettingsCellularUtils"];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "+[SettingsCellularUtils formattedPhoneNumber:]";
      v13 = 2112;
      v14 = numberCopy;
      _os_log_error_impl(&dword_2658DE000, v9, OS_LOG_TYPE_ERROR, "%s Could not create CFPhoneNumber for %@", &v11, 0x16u);
    }

    v7 = numberCopy;
  }

  return v7;
}

+ (BOOL)supportsWiFiCalling:(id)calling
{
  v27 = *MEMORY[0x277D85DE8];
  callingCopy = calling;
  [MEMORY[0x277D6EDE8] senderIdentityCapabilities];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        senderIdentityUUID = [v9 senderIdentityUUID];
        uuid = [callingCopy uuid];
        if ([senderIdentityUUID isEqual:uuid])
        {
          supportsWiFiCalling = [v9 supportsWiFiCalling];

          if (supportsWiFiCalling)
          {
            v15 = [MEMORY[0x277D4D830] loggerWithCategory:@"SettingsCellularUtils"];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v23 = "+[SettingsCellularUtils supportsWiFiCalling:]";
              v24 = 2112;
              v25 = callingCopy;
              _os_log_impl(&dword_2658DE000, v15, OS_LOG_TYPE_DEFAULT, "%s Subscription Context: %@ supports WiFi Calling", buf, 0x16u);
            }

            v14 = 1;
            v13 = v4;
            goto LABEL_18;
          }
        }

        else
        {
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = [MEMORY[0x277D4D830] loggerWithCategory:@"SettingsCellularUtils"];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "+[SettingsCellularUtils supportsWiFiCalling:]";
    v24 = 2112;
    v25 = callingCopy;
    _os_log_impl(&dword_2658DE000, v13, OS_LOG_TYPE_DEFAULT, "%s Subscription Context: %@ doesn't support WiFi Calling", buf, 0x16u);
  }

  v14 = 0;
LABEL_18:

  return v14;
}

+ (BOOL)isUIDualSIM
{
  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  isDualSimCapable = [mEMORY[0x277D4D868] isDualSimCapable];

  if (!isDualSimCapable)
  {
    return 0;
  }

  v4 = +[PSUICellularPlanManagerCache sharedInstance];
  planItems = [v4 planItems];
  v6 = [planItems count];
  v7 = +[PSUICellularPlanManagerCache sharedInstance];
  danglingPlanItems = [v7 danglingPlanItems];
  v9 = [danglingPlanItems count] + v6;
  v10 = +[PSUICellularPlanManagerCache sharedInstance];
  plansPendingTransfer = [v10 plansPendingTransfer];
  v12 = (v9 + [plansPendingTransfer count]) > 1;

  return v12;
}

+ (BOOL)shouldShowPendingTransferPlanOnPad
{
  v2 = _os_feature_enabled_impl();
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && (v2 & 1) == 0)
  {
    v6 = +[PSUICellularPlanManagerCache sharedInstance];
    if ([v6 isCarrierItemFlowSupported])
    {
      v7 = +[PSUICellularPlanManagerCache sharedInstance];
      plansPendingTransfer = [v7 plansPendingTransfer];
      v5 = [plansPendingTransfer count] != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (BOOL)noDataConnectivityAvailableWithBSRecommendationCheck:(BOOL)check
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = +[PSUIDeviceWiFiState sharedInstance];
  if ([v4 isConnectedOverWiFi])
  {
    goto LABEL_4;
  }

  v5 = +[PSUIDeviceCellularState sharedInstance];
  if (![v5 isConnectedOverCellular])
  {
    v8 = +[PSUIDeviceEthernetState sharedInstance];
    isConnectedOverEthernet = [v8 isConnectedOverEthernet];

    if (isConnectedOverEthernet)
    {
      return 0;
    }

    v10 = +[PSUICellularPlanManagerCache sharedInstance];
    getBootstrapState = [v10 getBootstrapState];

    v12 = [MEMORY[0x277D4D830] loggerWithCategory:@"SettingsCellularUtils"];
    v13 = v12;
    if (getBootstrapState)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = getBootstrapState;
        _os_log_impl(&dword_2658DE000, v13, OS_LOG_TYPE_DEFAULT, "Bootstrap state: %@", &v17, 0xCu);
      }

      bootstrapStatus = [getBootstrapState bootstrapStatus];
      if (bootstrapStatus == 2)
      {
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        userInterfaceIdiom = [currentDevice userInterfaceIdiom];

        v6 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1 && !check;
        goto LABEL_21;
      }

      if (bootstrapStatus == 1)
      {
        v6 = 0;
LABEL_21:

        return v6;
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v17) = 0;
        _os_log_error_impl(&dword_2658DE000, v13, OS_LOG_TYPE_ERROR, "Failed to get bootstrap state", &v17, 2u);
      }
    }

    v6 = 1;
    goto LABEL_21;
  }

LABEL_4:
  return 0;
}

+ (id)singleSIMUISubscriptionContext
{
  v11 = *MEMORY[0x277D85DE8];
  if ([self isUIDualSIM])
  {
    v2 = [MEMORY[0x277D4D830] loggerWithCategory:@"SettingsCellularUtils"];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "+[SettingsCellularUtils singleSIMUISubscriptionContext]";
      _os_log_error_impl(&dword_2658DE000, v2, OS_LOG_TYPE_ERROR, "Invoking %s is meaningful only in case of Single SIM UI", &v9, 0xCu);
    }
  }

  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  subscriptionsInUse = [mEMORY[0x277D4D868] subscriptionsInUse];

  if ([subscriptionsInUse count])
  {
    v5 = [subscriptionsInUse objectAtIndexedSubscript:0];
  }

  else
  {
    mEMORY[0x277D4D868]2 = [MEMORY[0x277D4D868] sharedInstance];
    subscriptionContexts = [mEMORY[0x277D4D868]2 subscriptionContexts];
    v5 = [subscriptionContexts objectAtIndexedSubscript:0];
  }

  return v5;
}

+ (id)singleSIMUIServiceDescriptor
{
  v2 = MEMORY[0x277CC3718];
  singleSIMUISubscriptionContext = [self singleSIMUISubscriptionContext];
  v4 = [v2 descriptorWithSubscriptionContext:singleSIMUISubscriptionContext];

  return v4;
}

+ (BOOL)isCaseInsensitiveEqual:(id)equal withString:(id)string
{
  equalCopy = equal;
  stringCopy = string;
  v7 = stringCopy;
  if (equalCopy == stringCopy)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (equalCopy && stringCopy)
    {
      v8 = [equalCopy caseInsensitiveCompare:stringCopy] == 0;
    }
  }

  return v8;
}

+ (id)removePlanConfirmationTitle:(id)title
{
  plan = [title plan];
  carrierName = [plan carrierName];

  if ([carrierName length])
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"REMOVE_CARRIER_%@_PLAN" value:&stru_287733598 table:@"Cellular"];
    v8 = [v5 stringWithFormat:v7, carrierName];
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v6 localizedStringForKey:@"REMOVE_PLAN" value:&stru_287733598 table:@"Cellular"];
  }

  return v8;
}

+ (id)removePlanConfirmationMessage:(id)message
{
  plan = [message plan];
  carrierName = [plan carrierName];

  if ([carrierName length])
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"REMOVE_CARRIER_%@_PLAN_CONFIRMATION" value:&stru_287733598 table:@"Cellular"];
    v8 = [v5 stringWithFormat:v7, carrierName];
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v6 localizedStringForKey:@"REMOVE_PLAN_CONFIRMATION" value:&stru_287733598 table:@"Cellular"];
  }

  return v8;
}

+ (int)satelliteDataPlanTier
{
  initAgentDataFromCellularInternetPath = [objc_alloc(MEMORY[0x277CC3650]) initAgentDataFromCellularInternetPath];
  dataPlanTier = [initAgentDataFromCellularInternetPath dataPlanTier];

  return dataPlanTier;
}

@end