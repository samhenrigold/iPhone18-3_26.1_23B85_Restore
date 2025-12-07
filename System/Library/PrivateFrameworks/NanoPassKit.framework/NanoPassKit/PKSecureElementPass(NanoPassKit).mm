@interface PKSecureElementPass(NanoPassKit)
- (BOOL)npkIsBankConnectEligible;
- (BOOL)npkSupportUWBSecureRanging;
- (id)npkBluetoothCapableSubcredential;
- (id)npkSubcredentials;
- (uint64_t)allSupportedTechnologies;
- (uint64_t)npkIsPrecursorPass;
- (uint64_t)npkLinkedAccountFeatureIdentifier;
- (void)npkExclusivelyTransactsOverBluetooth;
- (void)npkExclusivelyTransactsOverNFC;
@end

@implementation PKSecureElementPass(NanoPassKit)

- (void)npkExclusivelyTransactsOverBluetooth
{
  result = [self npkSupportsBluetooth];
  if (result)
  {
    return ([self npkSupportsMultipleRadioTypes] ^ 1);
  }

  return result;
}

- (void)npkExclusivelyTransactsOverNFC
{
  result = [self npkSupportsNFC];
  if (result)
  {
    return ([self npkSupportsMultipleRadioTypes] ^ 1);
  }

  return result;
}

- (id)npkSubcredentials
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  devicePaymentApplications = [self devicePaymentApplications];
  v4 = [devicePaymentApplications countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(devicePaymentApplications);
        }

        subcredentials = [*(*(&v10 + 1) + 8 * i) subcredentials];
        [v2 unionSet:subcredentials];
      }

      v5 = [devicePaymentApplications countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)npkBluetoothCapableSubcredential
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  npkSubcredentials = [self npkSubcredentials];
  v2 = [npkSubcredentials countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(npkSubcredentials);
        }

        v5 = *(*(&v7 + 1) + 8 * i);
        if (([v5 supportedRadioTechnologies] & 2) != 0)
        {
          v2 = v5;
          goto LABEL_11;
        }
      }

      v2 = [npkSubcredentials countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

- (BOOL)npkSupportUWBSecureRanging
{
  devicePrimaryContactlessPaymentApplication = [self devicePrimaryContactlessPaymentApplication];
  if (devicePrimaryContactlessPaymentApplication && [self npkSupportsBluetooth])
  {
    [devicePrimaryContactlessPaymentApplication state];
    v3 = PKPaymentApplicationStateIsPersonalized() != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)allSupportedTechnologies
{
  v42 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  devicePaymentApplications = [self devicePaymentApplications];
  v3 = [devicePaymentApplications countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v33;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(devicePaymentApplications);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        subcredentials = [v8 subcredentials];
        v10 = [subcredentials countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v29;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v29 != v12)
              {
                objc_enumerationMutation(subcredentials);
              }

              v5 |= [*(*(&v28 + 1) + 8 * j) supportedRadioTechnologies];
            }

            v11 = [subcredentials countByEnumeratingWithState:&v28 objects:v40 count:16];
          }

          while (v11);
        }
      }

      v4 = [devicePaymentApplications countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_lock(&oneTimeLoggingLock);
  v14 = oneTimeIdentifiers;
  if (!oneTimeIdentifiers)
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v16 = oneTimeIdentifiers;
    oneTimeIdentifiers = v15;

    v14 = oneTimeIdentifiers;
  }

  uniqueID = [self uniqueID];
  v18 = [v14 objectForKeyedSubscript:uniqueID];
  if (v18)
  {

LABEL_27:
    goto LABEL_28;
  }

  uniqueID2 = [self uniqueID];

  if (uniqueID2)
  {
    v21 = pk_General_log(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

    if (v22)
    {
      v24 = pk_General_log(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID3 = [self uniqueID];
        *buf = 138412546;
        v37 = uniqueID3;
        v38 = 2048;
        v39 = v5;
        _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_DEFAULT, "Notice: pass %@ has allSupportedTechnologies %lu", buf, 0x16u);
      }
    }

    v26 = oneTimeIdentifiers;
    uniqueID = [self uniqueID];
    [v26 setObject:&unk_286CE7600 forKeyedSubscript:uniqueID];
    goto LABEL_27;
  }

LABEL_28:
  os_unfair_lock_unlock(&oneTimeLoggingLock);
  return v5;
}

- (BOOL)npkIsBankConnectEligible
{
  paymentPass = [self paymentPass];
  if (PKBankConnectAvailableForPass())
  {
    primaryAccountIdentifier = [self primaryAccountIdentifier];
    v4 = [primaryAccountIdentifier length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)npkLinkedAccountFeatureIdentifier
{
  secureElementPass = [self secureElementPass];
  isAppleCardPass = [secureElementPass isAppleCardPass];

  if (isAppleCardPass)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)npkIsPrecursorPass
{
  secureElementIdentifiers = [MEMORY[0x277D38248] secureElementIdentifiers];
  v3 = [self isPrecursorPass:secureElementIdentifiers];

  return v3;
}

@end