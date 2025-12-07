@interface PKPass(NanoPassKit)
+ (void)npkClearTransitValuePendingStateIfNecessaryForPassWithID:()NanoPassKit withBalanceFields:commutePlanFields:;
+ (void)npkHandleTransitValuePendingAmount:()NanoPassKit forBalanceField:passWithUniqueID:;
+ (void)npkHandleTransitValuePendingExpiryDate:()NanoPassKit forCommutePlanField:passWithUniqueID:;
- (BOOL)_hasPlanUpdatedWithFieldIdentifier:()NanoPassKit fieldInfo:renewalDate:expiryDate:rawCountValue:;
- (BOOL)npkCanUseDynamicMotionView;
- (BOOL)npkIsAddValuePending;
- (BOOL)npkSupportsHidingAccessory;
- (__CFString)npkUWBLocalizationKey;
- (id)npkCompleteHashForWatchOSVersion:()NanoPassKit;
- (id)npkPendingAddValueStateExpireDateForBalanceFieldWithIdentifier:()NanoPassKit currentBalance:;
- (id)npkPendingAddValueStateExpireDateForCommutePlanFieldWithIdentifier:()NanoPassKit expiryDate:rawCountValue:;
- (uint64_t)npkAccessoryType;
- (uint64_t)npkCanUseDynamicMaterialView;
- (uint64_t)npkCanUseDynamicTransactionView;
- (uint64_t)npkHasValidNFCPayload;
- (uint64_t)npkIsDefaultPassEligible;
- (uint64_t)npkIsHomeKeyUWB;
- (uint64_t)npkIsLiveRenderEnabled;
- (uint64_t)npkUsesDynamicView;
@end

@implementation PKPass(NanoPassKit)

- (uint64_t)npkAccessoryType
{
  if ([self style] == 7)
  {
    return 2;
  }

  barcode = [self barcode];
  messageData = [barcode messageData];
  if (messageData)
  {
    v5 = messageData;
    barcode2 = [self barcode];
    messageData2 = [barcode2 messageData];
    v2 = [messageData2 length] != 0;
  }

  else
  {

    return 0;
  }

  return v2;
}

- (BOOL)npkSupportsHidingAccessory
{
  if (NPKShowRedesignedUI())
  {
    return 1;
  }

  if ([self npkAccessoryType] != 1)
  {
    return [self npkAccessoryType] != 2;
  }

  nfcPayload = [self nfcPayload];
  v2 = nfcPayload != 0;

  return v2;
}

- (id)npkCompleteHashForWatchOSVersion:()NanoPassKit
{
  v26 = *MEMORY[0x277D85DE8];
  if ((a3 - 1) >= 2)
  {
    v5 = pk_General_log(self);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v8 = pk_General_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v19 = 136446978;
        *&v19[4] = "[PKPass(NanoPassKit) npkCompleteHashForWatchOSVersion:]";
        v20 = 2082;
        v21 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/PKPass+NanoPassKit.m";
        v22 = 2048;
        v23 = 120;
        v24 = 2048;
        v25 = a3;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Cannot calculate npk complete hash for version %llu)", v19, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  manifestHash = [self manifestHash];

  if (manifestHash)
  {
    v10 = MEMORY[0x277CBEB28];
    manifestHash2 = [self manifestHash];
    v12 = [v10 dataWithData:manifestHash2];

    if (a3 == 1)
    {
      v19[0] = [self settings] & 1;
      v13 = v12;
      v14 = 1;
    }

    else
    {
      settings = [self settings];
      v17 = [self settings] & 0x20 | settings & 1;
      *v19 = v17 | [self settings] & 0x10;
      v13 = v12;
      v14 = 2;
    }

    [v13 appendBytes:v19 length:{v14, *v19}];
    v15 = [MEMORY[0x277CBEA90] dataWithData:v12];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (uint64_t)npkUsesDynamicView
{
  if ([self npkCanUseDynamicTransactionView] & 1) != 0 || (objc_msgSend(self, "npkCanUseDynamicMaterialView") & 1) != 0 || (objc_msgSend(self, "npkCanUseDynamicMotionView"))
  {
    return 1;
  }

  return [self npkIsLiveRenderEnabled];
}

- (uint64_t)npkCanUseDynamicTransactionView
{
  v19 = *MEMORY[0x277D85DE8];
  paymentPass = [self paymentPass];
  isAppleCardPass = [paymentPass isAppleCardPass];

  if (!isAppleCardPass)
  {
    return 0;
  }

  paymentPass2 = [self paymentPass];
  supportsCategoryVisualization = [paymentPass2 supportsCategoryVisualization];

  v7 = pk_ui_log(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_ui_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [self uniqueID];
      v12 = uniqueID;
      v13 = @"NO";
      if (supportsCategoryVisualization)
      {
        v13 = @"YES";
      }

      v15 = 138412546;
      v16 = uniqueID;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Checking dynamic view setup for account account pass id %@ supportsCategoryVisualization %@", &v15, 0x16u);
    }
  }

  return supportsCategoryVisualization;
}

- (uint64_t)npkCanUseDynamicMaterialView
{
  if (isM8() & 1) != 0 || (isM8p())
  {
    return 0;
  }

  liveRenderType = [self liveRenderType];
  if ((liveRenderType - 1) < 3)
  {
    return 1;
  }

  if (liveRenderType != 5)
  {
    return 0;
  }

  return [self npkIsLiveRenderEnabled];
}

- (BOOL)npkCanUseDynamicMotionView
{
  paymentPass = [self paymentPass];
  dynamicLayerConfiguration = [paymentPass dynamicLayerConfiguration];
  if (dynamicLayerConfiguration)
  {
    v4 = [self passType] == 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)npkIsLiveRenderEnabled
{
  npkPassDynamicState = [self npkPassDynamicState];
  liveRender = [npkPassDynamicState liveRender];
  if (liveRender)
  {
    npkPassDynamicState2 = [self npkPassDynamicState];
    liveRender2 = [npkPassDynamicState2 liveRender];
    enabled = [liveRender2 enabled];
  }

  else
  {
    enabled = 0;
  }

  return enabled;
}

- (uint64_t)npkHasValidNFCPayload
{
  nfcPayload = [self nfcPayload];
  message = [nfcPayload message];
  if (message)
  {
    encryptionPublicKeyData = [nfcPayload encryptionPublicKeyData];
    if (encryptionPublicKeyData)
    {
      v4 = 1;
    }

    else
    {
      v4 = PKNFCPassKeyOptional();
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)npkIsDefaultPassEligible
{
  secureElementPass = [self secureElementPass];
  v2 = secureElementPass;
  if (secureElementPass && ![secureElementPass contactlessActivationState] && objc_msgSend(v2, "supportsDefaultCardSelection") && (objc_msgSend(v2, "effectiveContactlessPaymentApplicationState"), PKPaymentApplicationStateIsPersonalized()) && (objc_msgSend(v2, "isAccessPass") & 1) == 0)
  {
    v3 = [v2 isIdentityPass] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)npkIsHomeKeyUWB
{
  secureElementPass = [self secureElementPass];
  if (([secureElementPass npkSupportsBluetooth] & 1) != 0 || NPKMockUWBHomeKey())
  {
    secureElementPass2 = [self secureElementPass];
    isHomeKeyPass = [secureElementPass2 isHomeKeyPass];
  }

  else
  {
    isHomeKeyPass = 0;
  }

  return isHomeKeyPass;
}

- (__CFString)npkUWBLocalizationKey
{
  secureElementPass = [self secureElementPass];
  npkSupportsBluetooth = [secureElementPass npkSupportsBluetooth];

  if (npkSupportsBluetooth)
  {
    npkIsHomeKeyUWB = [self npkIsHomeKeyUWB];
    v6 = @"PASSIVE_ENTRY";
    if (npkIsHomeKeyUWB)
    {
      v6 = @"UNLOCK_ON_APPROACH";
    }

    v7 = v6;
  }

  else
  {
    v8 = pk_General_log(v4);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v11 = pk_General_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13[0] = 0;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Warning: No valid UWB localization key for a pass that does not support bluetooth.", v13, 2u);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)npkIsAddValuePending
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nanopassbook"];
  v3 = [v2 objectForKey:@"TransitValuePending"];
  uniqueID = [self uniqueID];
  v5 = [v3 objectForKeyedSubscript:uniqueID];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (__isLegacyPassInfo(v5))
    {
      v6 = [v5 objectForKeyedSubscript:@"date"];
      v7 = v6 != 0;
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      allValues = [v5 allValues];
      v9 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        while (2)
        {
          v12 = 0;
          do
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(allValues);
            }

            v13 = [*(*(&v15 + 1) + 8 * v12) objectForKeyedSubscript:@"date"];

            if (v13)
            {
              v7 = 1;
              goto LABEL_15;
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v7 = 0;
LABEL_15:
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)npkPendingAddValueStateExpireDateForBalanceFieldWithIdentifier:()NanoPassKit currentBalance:
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  uniqueID = [self uniqueID];
  v9 = __pendingFieldValueInfo(uniqueID, v6);

  v10 = [v9 objectForKey:@"date"];
  v11 = [v9 objectForKey:@"balance"];
  v12 = v11;
  v13 = 0;
  v14 = 1;
  if (v7 && v11)
  {
    v11 = [v11 compare:v7];
    v14 = v11 != -1;
    v13 = v11 == -1;
  }

  v15 = 0;
  if (v14 && v10)
  {
    v11 = [v10 dateByAddingTimeInterval:600.0];
    v15 = v11;
  }

  v16 = pk_Payment_log(v11);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v19 = pk_Payment_log(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID2 = [self uniqueID];
      v22 = 138413058;
      v23 = v15;
      v24 = 2112;
      v25 = uniqueID2;
      v26 = 2112;
      v27 = v6;
      v28 = 1024;
      v29 = v13;
      _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: PendingAddValueStateExpireDate: %@ for pass %@ field:%@ balanceUpdated:%d", &v22, 0x26u);
    }
  }

  return v15;
}

- (id)npkPendingAddValueStateExpireDateForCommutePlanFieldWithIdentifier:()NanoPassKit expiryDate:rawCountValue:
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  uniqueID = [self uniqueID];
  v12 = __pendingFieldValueInfo(uniqueID, v8);

  v13 = [v12 objectForKey:@"date"];
  v14 = [self _hasPlanUpdatedWithFieldIdentifier:v8 fieldInfo:v12 renewalDate:v13 expiryDate:v10 rawCountValue:v9];

  v16 = 0;
  if (v13 && (v14 & 1) == 0)
  {
    v15 = [v13 dateByAddingTimeInterval:600.0];
    v16 = v15;
  }

  v17 = pk_Payment_log(v15);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

  if (v18)
  {
    v20 = pk_Payment_log(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID2 = [self uniqueID];
      v23 = 138413314;
      v24 = v16;
      v25 = 2112;
      v26 = uniqueID2;
      v27 = 2112;
      v28 = v8;
      v29 = 1024;
      v30 = v14;
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: PendingAddValueStateExpireDate: %@ for pass %@ field:%@ planUpdated:%d renewalDate: %@", &v23, 0x30u);
    }
  }

  return v16;
}

- (BOOL)_hasPlanUpdatedWithFieldIdentifier:()NanoPassKit fieldInfo:renewalDate:expiryDate:rawCountValue:
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = a7;
  v13 = a4;
  v14 = [v13 objectForKey:@"planExpiry"];
  v15 = [v13 objectForKey:@"planTripCount"];

  v17 = 0;
  if (v11 && v14)
  {
    v16 = [v14 compare:v11];
    v17 = v16 == -1;
  }

  v18 = 0;
  if (v12 && v15)
  {
    v16 = [v15 compare:v12];
    v18 = v16 == -1;
  }

  v19 = pk_Payment_log(v16);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

  if (v20)
  {
    v22 = pk_Payment_log(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412802;
      v25 = v10;
      v26 = 1024;
      v27 = v17;
      v28 = 1024;
      v29 = v18;
      _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: PendingAddValueStateExpireDate for field:%@ expiryDateDidUpdate:%d tripCountDidUpdate: %d", &v24, 0x18u);
    }
  }

  return v17 || v18;
}

+ (void)npkHandleTransitValuePendingAmount:()NanoPassKit forBalanceField:passWithUniqueID:
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = pk_Payment_log(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_Payment_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412802;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: addValuePending: npkHandleTransitValuePendingAmount %@ withField:%@ forPassWithID %@", &v19, 0x20u);
    }
  }

  balance = [v8 balance];
  value = [balance value];

  if (v9)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    date = [MEMORY[0x277CBEAA8] date];
    [v16 setObject:date forKey:@"date"];

    if (v7)
    {
      [v16 setObject:v7 forKey:@"amount"];
    }

    if (value)
    {
      [v16 setObject:value forKey:@"balance"];
    }

    identifier = [v8 identifier];
    __setPendingFieldValueInfo(v16, v9, identifier);
  }
}

+ (void)npkHandleTransitValuePendingExpiryDate:()NanoPassKit forCommutePlanField:passWithUniqueID:
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  usageDateRange = [v8 usageDateRange];
  expiryDate = [usageDateRange expiryDate];

  rawCountValue = [v8 rawCountValue];
  v13 = pk_Payment_log(rawCountValue);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v16 = pk_Payment_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138413314;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = expiryDate;
      v28 = 2112;
      v29 = rawCountValue;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: addValuePending: npkHandleTransitValuePendingExpiryDate %@ withField:%@ forPassWithID %@ currentExpiry: %@, tripCount: %@", &v20, 0x34u);
    }
  }

  if (v9)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    date = [MEMORY[0x277CBEAA8] date];
    [v17 setObject:date forKey:@"date"];

    if (expiryDate)
    {
      [v17 setObject:expiryDate forKey:@"planExpiry"];
    }

    if (rawCountValue)
    {
      [v17 setObject:rawCountValue forKey:@"planTripCount"];
    }

    identifier = [v8 identifier];
    __setPendingFieldValueInfo(v17, v9, identifier);
  }
}

+ (void)npkClearTransitValuePendingStateIfNecessaryForPassWithID:()NanoPassKit withBalanceFields:commutePlanFields:
{
  v76 = *MEMORY[0x277D85DE8];
  v61 = a3;
  v7 = a4;
  v8 = a5;
  v9 = pk_Payment_log(v8);
  LODWORD(a4) = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (a4)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v73 = v61;
      v74 = 2112;
      v75 = v7;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: addValuePending: npkClearTransitValuePendingStateIfNecessaryForPassWithID %@ fields %@", buf, 0x16u);
    }
  }

  if (v61)
  {
    v56 = v7;
    v57 = v8;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v66 objects:v71 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v67;
      v16 = @"balance";
      obj = v12;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v67 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v66 + 1) + 8 * i);
          identifier = [v18 identifier];
          v20 = __pendingFieldValueInfo(v61, identifier);

          if (v20)
          {
            v21 = [v20 objectForKey:v16];
            balance = [v18 balance];
            value = [balance value];

            if (v21)
            {
              v24 = value == 0;
            }

            else
            {
              v24 = 1;
            }

            if (!v24 && [v21 compare:value] == -1)
            {
              v25 = v16;
              v26 = pk_Payment_log(-1);
              v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

              if (v27)
              {
                v29 = pk_Payment_log(v28);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_DEFAULT, "Notice: addValuePending: Balance is greater than before pending top up, clearing value pending state", buf, 2u);
                }
              }

              v30 = [v20 mutableCopy];
              [v30 removeObjectForKey:@"date"];
              [v30 removeObjectForKey:v25];
              identifier2 = [v18 identifier];
              __setPendingFieldValueInfo(v30, v61, identifier2);

              v16 = v25;
              v12 = obj;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v66 objects:v71 count:16];
      }

      while (v14);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obja = v57;
    v32 = [obja countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v63;
      do
      {
        v35 = 0;
        v58 = v33;
        do
        {
          if (*v63 != v34)
          {
            objc_enumerationMutation(obja);
          }

          v36 = *(*(&v62 + 1) + 8 * v35);
          identifier3 = [v36 identifier];
          v38 = __pendingFieldValueInfo(v61, identifier3);

          if (v38)
          {
            v39 = [v38 objectForKey:@"planExpiry"];
            usageDateRange = [v36 usageDateRange];
            expiryDate = [usageDateRange expiryDate];

            v42 = [v38 objectForKey:@"planTripCount"];
            rawCountValue = [v36 rawCountValue];
            v44 = rawCountValue;
            if (v39)
            {
              v45 = expiryDate == 0;
            }

            else
            {
              v45 = 1;
            }

            if (v45)
            {
              v46 = 0;
            }

            else
            {
              rawCountValue = [v39 compare:expiryDate];
              v46 = rawCountValue == -1;
            }

            if (v42)
            {
              v47 = v44 == 0;
            }

            else
            {
              v47 = 1;
            }

            if (v47)
            {
              v48 = 0;
            }

            else
            {
              rawCountValue = [v42 compare:v44];
              v48 = rawCountValue == -1;
            }

            if (v46 || v48)
            {
              v49 = v34;
              v50 = pk_Payment_log(rawCountValue);
              v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);

              if (v51)
              {
                v53 = pk_Payment_log(v52);
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_25B300000, v53, OS_LOG_TYPE_DEFAULT, "Notice: addValuePending: expiration date or trip count is greater than before pending renew, clearing value pending state", buf, 2u);
                }
              }

              v54 = [v38 mutableCopy];
              [v54 removeObjectForKey:@"date"];
              [v54 removeObjectForKey:@"planExpiry"];
              [v54 removeObjectForKey:@"planTripCount"];
              identifier4 = [v36 identifier];
              __setPendingFieldValueInfo(v54, v61, identifier4);

              v34 = v49;
              v33 = v58;
            }
          }

          ++v35;
        }

        while (v33 != v35);
        v33 = [obja countByEnumeratingWithState:&v62 objects:v70 count:16];
      }

      while (v33);
    }

    v7 = v56;
    v8 = v57;
  }
}

@end