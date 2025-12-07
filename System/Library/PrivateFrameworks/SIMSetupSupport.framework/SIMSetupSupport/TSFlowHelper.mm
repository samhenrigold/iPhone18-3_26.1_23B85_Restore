@interface TSFlowHelper
+ (BOOL)hasTransferablePlanWithSameCarrierName:(id)name transferablePlans:(id)plans inBuddy:(BOOL)buddy matchingSODACarrierWebsheetTransferPlanIndex:(id)index;
+ (id)getAccountMemberTransferablePlanWithSameCarrierName:(id)name transferablePlans:(id)plans;
+ (id)sortIndexesInDescending:(id)descending;
+ (id)unregisteredSelectedPlanItems:(id)items;
+ (int64_t)_slotForPlanItem:(id)item;
+ (void)registerIMessageWithPlanItems:(id)items;
+ (void)showBluetoothOffAlertForCrossPlatformTransfer:(id)transfer withCloseHandler:(id)handler;
@end

@implementation TSFlowHelper

+ (id)unregisteredSelectedPlanItems:(id)items
{
  v34 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  array = [MEMORY[0x277CBEB18] array];
  v23 = +[TSIDSSubscriptionSelector activeIMessageSlots];
  if ([v23 count])
  {
    v26 = 0uLL;
    v27 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v22 = itemsCopy;
    v6 = itemsCopy;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          if (([v11 isInstalling] & 1) == 0)
          {
            if (![v11 isSelected])
            {
              continue;
            }

            v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "_slotForPlanItem:", v11)}];
            v13 = [v23 containsObject:v12];

            if (v13)
            {
              continue;
            }
          }

          [array addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v8);
    }

    v15 = _TSLogDomain(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      +[TSFlowHelper unregisteredSelectedPlanItems:];
    }

    itemsCopy = v22;
  }

  else
  {
    v30 = 0uLL;
    v31 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v15 = itemsCopy;
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v28 + 1) + 8 * j);
          if ([v20 isSelected])
          {
            [array addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v17);
    }
  }

  return array;
}

+ (void)registerIMessageWithPlanItems:(id)items
{
  v18 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "_slotForPlanItem:", *(*(&v13 + 1) + 8 * v10), v13)}];
        [array addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = _TSLogDomain([TSIDSSubscriptionSelector registerSlotsForIMessage:array]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    +[TSFlowHelper registerIMessageWithPlanItems:];
  }
}

+ (BOOL)hasTransferablePlanWithSameCarrierName:(id)name transferablePlans:(id)plans inBuddy:(BOOL)buddy matchingSODACarrierWebsheetTransferPlanIndex:(id)index
{
  buddyCopy = buddy;
  v50 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  plansCopy = plans;
  indexCopy = index;
  if (!nameCopy || ([nameCopy plans], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, !v13))
  {
    v29 = 0;
    goto LABEL_27;
  }

  plans = [nameCopy plans];
  v15 = [plans objectAtIndexedSubscript:0];
  carrierName = [v15 carrierName];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v16 = plansCopy;
  v17 = [v16 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (!v17)
  {
    v29 = 0;
    goto LABEL_26;
  }

  v18 = v17;
  v35 = buddyCopy;
  v36 = indexCopy;
  v37 = plansCopy;
  v19 = *v40;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v40 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v39 + 1) + 8 * i);
      v22 = [v21 objectForKeyedSubscript:@"planItem"];
      carrierName2 = [v22 carrierName];
      v24 = [TSUtilities isCaseInsensitiveEqual:carrierName withString:carrierName2];

      if (v24)
      {
        v25 = [v16 indexOfObject:v21];
        isAccountMemberTransferablePlan = [v22 isAccountMemberTransferablePlan];
        if (isAccountMemberTransferablePlan)
        {
          v30 = _TSLogDomain(isAccountMemberTransferablePlan);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v44 = "+[TSFlowHelper hasTransferablePlanWithSameCarrierName:transferablePlans:inBuddy:matchingSODACarrierWebsheetTransferPlanIndex:]";
            _os_log_impl(&dword_262AA8000, v30, OS_LOG_TYPE_DEFAULT, "Account member has a transferrable plan with a SODA tether @%s", buf, 0xCu);
          }

          v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
          indexCopy = v36;
          [v36 addObject:v31];
          v29 = 0;
        }

        else
        {
          isOneClickTransferablePlan = [v22 isOneClickTransferablePlan];
          if (!isOneClickTransferablePlan)
          {
            isWebsheetTransferablePlan = [v22 isWebsheetTransferablePlan];
            if (!isWebsheetTransferablePlan)
            {
              goto LABEL_12;
            }

            v33 = _TSLogDomain(isWebsheetTransferablePlan);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = @"post buddy";
              if (v35)
              {
                v34 = @"in buddy";
              }

              *buf = 138412802;
              v44 = carrierName;
              v45 = 2112;
              v46 = v34;
              v47 = 2080;
              v48 = "+[TSFlowHelper hasTransferablePlanWithSameCarrierName:transferablePlans:inBuddy:matchingSODACarrierWebsheetTransferPlanIndex:]";
              _os_log_impl(&dword_262AA8000, v33, OS_LOG_TYPE_DEFAULT, "Websheet transferrable plan exists with same carrier name [%@] %@ @%s", buf, 0x20u);
            }

            plansCopy = v37;
            if (!v35)
            {
              v29 = 1;
              indexCopy = v36;
              goto LABEL_25;
            }

            v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
            indexCopy = v36;
            [v36 addObject:v31];
            v29 = 0;
LABEL_24:

LABEL_25:
            goto LABEL_26;
          }

          v31 = _TSLogDomain(isOneClickTransferablePlan);
          indexCopy = v36;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v44 = carrierName;
            v45 = 2080;
            v46 = "+[TSFlowHelper hasTransferablePlanWithSameCarrierName:transferablePlans:inBuddy:matchingSODACarrierWebsheetTransferPlanIndex:]";
            _os_log_impl(&dword_262AA8000, v31, OS_LOG_TYPE_DEFAULT, "One click transferrable plan exists with same carrier name [%@] @%s", buf, 0x16u);
          }

          v29 = 1;
        }

        plansCopy = v37;
        goto LABEL_24;
      }

LABEL_12:
    }

    v18 = [v16 countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

  v29 = 0;
  plansCopy = v37;
  indexCopy = v36;
LABEL_26:

LABEL_27:
  return v29;
}

+ (id)getAccountMemberTransferablePlanWithSameCarrierName:(id)name transferablePlans:(id)plans
{
  v36 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  plansCopy = plans;
  array = [MEMORY[0x277CBEB18] array];
  if (nameCopy)
  {
    plans = [nameCopy plans];
    v8 = [plans count];

    if (v8)
    {
      v27 = nameCopy;
      plans2 = [nameCopy plans];
      v10 = [plans2 objectAtIndexedSubscript:0];
      carrierName = [v10 carrierName];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v26 = plansCopy;
      v12 = plansCopy;
      v13 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v30;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v30 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v29 + 1) + 8 * i);
            v18 = [v17 objectForKeyedSubscript:{@"planItem", v26}];
            carrierName2 = [v18 carrierName];
            v20 = [carrierName caseInsensitiveCompare:carrierName2];

            if (!v20)
            {
              v21 = [v12 indexOfObject:v17];
              isAccountMemberTransferablePlan = [v18 isAccountMemberTransferablePlan];
              if (isAccountMemberTransferablePlan)
              {
                v23 = _TSLogDomain(isAccountMemberTransferablePlan);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  v34 = "+[TSFlowHelper getAccountMemberTransferablePlanWithSameCarrierName:transferablePlans:]";
                  _os_log_impl(&dword_262AA8000, v23, OS_LOG_TYPE_DEFAULT, "Account member has a transferrable plan with a SODA tether @%s", buf, 0xCu);
                }

                v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
                [array addObject:v24];
              }
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
        }

        while (v14);
      }

      plansCopy = v26;
      nameCopy = v27;
    }
  }

  return array;
}

+ (int64_t)_slotForPlanItem:(id)item
{
  uuid = [item uuid];
  integerValue = [uuid integerValue];

  if (integerValue >= 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (id)sortIndexesInDescending:(id)descending
{
  descendingCopy = descending;
  [descendingCopy sortUsingComparator:&__block_literal_global_33];
  v4 = [descendingCopy copy];

  return v4;
}

uint64_t __40__TSFlowHelper_sortIndexesInDescending___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 unsignedIntegerValue];
  v6 = [v4 unsignedIntegerValue];

  if (v5 <= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 < v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

+ (void)showBluetoothOffAlertForCrossPlatformTransfer:(id)transfer withCloseHandler:(id)handler
{
  transferCopy = transfer;
  v5 = MEMORY[0x277D75110];
  v6 = MEMORY[0x277CCA8D8];
  handlerCopy = handler;
  v8 = [v6 bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CROSSTRANSFER_CONN_BLUETOOTH_OFF" value:&stru_28753DF48 table:@"Localizable"];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CROSSTRANSFER_CONN_BLUETOOTH_OFF_MSG" value:&stru_28753DF48 table:@"Localizable"];
  v12 = [v5 alertControllerWithTitle:v9 message:v11 preferredStyle:1];

  v13 = MEMORY[0x277D750F8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"CROSSTRANSFER_CONN_BLUETOOTH_OFF_SETTINGS_ACTION" value:&stru_28753DF48 table:@"Localizable"];
  v16 = [v13 actionWithTitle:v15 style:0 handler:&__block_literal_global_55];

  v17 = MEMORY[0x277D750F8];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"CROSSTRANSFER_CONN_BLUETOOTH_OFF_CLOSE_ACTION" value:&stru_28753DF48 table:@"Localizable"];
  v20 = [v17 actionWithTitle:v19 style:1 handler:handlerCopy];

  [v12 addAction:v16];
  [v12 addAction:v20];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__TSFlowHelper_showBluetoothOffAlertForCrossPlatformTransfer_withCloseHandler___block_invoke_2;
  block[3] = &unk_279B44490;
  v25 = transferCopy;
  v26 = v12;
  v21 = v12;
  v22 = transferCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __79__TSFlowHelper_showBluetoothOffAlertForCrossPlatformTransfer_withCloseHandler___block_invoke()
{
  v1 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Bluetooth"];
  v0 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:0];
}

+ (void)unregisteredSelectedPlanItems:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = "+[TSFlowHelper unregisteredSelectedPlanItems:]";
  _os_log_debug_impl(&dword_262AA8000, v0, OS_LOG_TYPE_DEBUG, "[Db] %@ @%s", v1, 0x16u);
}

+ (void)registerIMessageWithPlanItems:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = "+[TSFlowHelper registerIMessageWithPlanItems:]";
  _os_log_debug_impl(&dword_262AA8000, v0, OS_LOG_TYPE_DEBUG, "[Db] %@ @%s", v1, 0x16u);
}

@end