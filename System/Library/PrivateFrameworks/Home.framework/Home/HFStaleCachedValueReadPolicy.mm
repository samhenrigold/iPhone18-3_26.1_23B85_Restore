@interface HFStaleCachedValueReadPolicy
- (unint64_t)evaluateWithCharacteristic:(id)characteristic traits:(id *)traits;
@end

@implementation HFStaleCachedValueReadPolicy

- (unint64_t)evaluateWithCharacteristic:(id)characteristic traits:(id *)traits
{
  v39 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  v6 = objc_msgSend_service(characteristicCopy);
  accessory = [v6 accessory];
  v8 = objc_msgSend_home(accessory);
  hf_characteristicValueManager = [v8 hf_characteristicValueManager];

  if (hf_characteristicValueManager)
  {
    v10 = +[HFCharacteristicNotificationManager sharedManager];
    v11 = [hf_characteristicValueManager cachedValueForCharacteristic:characteristicCopy];

    if (v11)
    {
      v12 = @"ExplicitlyDisallowed";
    }

    else
    {
      v12 = @"CacheMissing";
    }

    if (+[HFUtilities hasInternalDiagnostics])
    {
      v13 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        hf_prettyDescription = [characteristicCopy hf_prettyDescription];
        v25 = [hf_characteristicValueManager cachedValueForCharacteristic:characteristicCopy];
        [characteristicCopy value];
        v15 = v26 = v12;
        valueUpdatedTime = [characteristicCopy valueUpdatedTime];
        [v10 lastNotificationsEnableRequestDate];
        *buf = 67110402;
        v28 = v11 != 0;
        v29 = 2112;
        v30 = hf_prettyDescription;
        v31 = 2112;
        v32 = v25;
        v33 = 2112;
        v34 = v15;
        v35 = 2112;
        v36 = valueUpdatedTime;
        v38 = v37 = 2112;
        v17 = v38;
        _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "HFStaleCachedValueReadPolicy: isCached=%{BOOL}d for characteristic %@\ncachedValue=%@, value=%@, valueUpdatedTime=%@, lastNotificationsEnableRequestDate=%@", buf, 0x3Au);

        v12 = v26;
      }
    }

    if (traits)
    {
      v18 = [MEMORY[0x277CBEB98] setWithObject:v12];
      *traits = v18;
    }

    v19 = v11 == 0;
  }

  else
  {
    if (!+[HFUtilities isInternalTest])
    {
      hf_prettyDescription2 = [characteristicCopy hf_prettyDescription];
      v21 = objc_msgSend_service(characteristicCopy);
      accessory2 = [v21 accessory];
      v23 = objc_msgSend_home(accessory2);
      NSLog(&cfstr_MissingValueMa.isa, hf_prettyDescription2, v23);
    }

    v19 = 1;
  }

  return v19;
}

@end