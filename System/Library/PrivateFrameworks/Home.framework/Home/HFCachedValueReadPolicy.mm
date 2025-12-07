@interface HFCachedValueReadPolicy
- (unint64_t)evaluateWithCharacteristic:(id)characteristic traits:(id *)traits;
@end

@implementation HFCachedValueReadPolicy

- (unint64_t)evaluateWithCharacteristic:(id)characteristic traits:(id *)traits
{
  characteristicCopy = characteristic;
  v6 = objc_msgSend_service(characteristicCopy);
  accessory = [v6 accessory];
  v8 = objc_msgSend_home(accessory);

  hf_characteristicValueManager = [v8 hf_characteristicValueManager];
  if (hf_characteristicValueManager)
  {
    v10 = +[HFCharacteristicNotificationManager notificationsStateContainer];
    v11 = [v10 lastNotificationsEnableRequestDateForCharacteristic:characteristicCopy forHome:v8];
    valueUpdatedTime = [hf_characteristicValueManager cachedValueForCharacteristic:characteristicCopy];

    if (valueUpdatedTime)
    {
      if ([characteristicCopy isNotificationEnabled])
      {
        valueUpdatedTime = [characteristicCopy valueUpdatedTime];
        if (valueUpdatedTime)
        {
          v13 = v11;
          valueUpdatedTime2 = [characteristicCopy valueUpdatedTime];
          distantPast = [MEMORY[0x277CBEAA8] distantPast];
          v16 = [valueUpdatedTime2 isEqualToDate:distantPast];

          if (v16)
          {
            LODWORD(valueUpdatedTime) = 0;
            v17 = @"CacheNeverUpdated";
            v11 = v13;
          }

          else
          {
            v11 = v13;
            if ([v10 notificationsEnabledForCharacteristic:characteristicCopy inHome:v8])
            {
              LODWORD(valueUpdatedTime) = [v10 cacheUpToDateWithNotificationsEnabledForCharacteristic:characteristicCopy inHome:v8];
              if (valueUpdatedTime)
              {
                v17 = @"CacheUpToDate";
              }

              else
              {
                v17 = @"NotificationsEnabledAfterLastRead";
              }
            }

            else
            {
              LODWORD(valueUpdatedTime) = 0;
              v17 = @"HomeNotificationsDisabled";
            }
          }
        }

        else
        {
          v17 = @"CacheNeverUpdated";
        }
      }

      else
      {
        LODWORD(valueUpdatedTime) = 0;
        v17 = @"CharacteristicNotificationsDisabled";
      }
    }

    else
    {
      v17 = @"CacheMissing";
    }

    if (+[HFUtilities hasInternalDiagnostics])
    {
      v28 = v17;
      objc_initWeak(&location, hf_characteristicValueManager);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __61__HFCachedValueReadPolicy_evaluateWithCharacteristic_traits___block_invoke;
      aBlock[3] = &unk_277DFB038;
      objc_copyWeak(&v33, &location);
      v34 = valueUpdatedTime;
      v30 = characteristicCopy;
      v23 = v11;
      v31 = v11;
      v32 = v10;
      v24 = _Block_copy(aBlock);
      globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
      [globalAsyncScheduler performBlock:v24];

      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
      v11 = v23;
      v17 = v28;
    }

    if (traits)
    {
      v26 = [MEMORY[0x277CBEB98] setWithObject:v17];
      *traits = v26;
    }

    v22 = valueUpdatedTime ^ 1;
  }

  else
  {
    if (!+[HFUtilities isInternalTest])
    {
      hf_prettyDescription = [characteristicCopy hf_prettyDescription];
      v19 = objc_msgSend_service(characteristicCopy);
      accessory2 = [v19 accessory];
      v21 = objc_msgSend_home(accessory2);
      NSLog(&cfstr_MissingValueMa.isa, hf_prettyDescription, v21);
    }

    v22 = 1;
  }

  return v22;
}

void __61__HFCachedValueReadPolicy_evaluateWithCharacteristic_traits___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = HFLogForCategory(0x3DuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 64);
    v5 = [*(a1 + 32) hf_prettyDescription];
    v6 = [WeakRetained cachedValueForCharacteristic:*(a1 + 32)];
    v7 = [*(a1 + 32) value];
    v8 = [*(a1 + 32) valueUpdatedTime];
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11[0] = 67110658;
    v11[1] = v4;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "HFCachedValueReadPolicy: cacheUpToDate=%{BOOL}d for characteristic %@\ncachedValue=%@, value=%@, valueUpdatedTime=%@, lastNotificationsEnableRequestDate=%@, notificationStateContainer=%@", v11, 0x44u);
  }
}

@end