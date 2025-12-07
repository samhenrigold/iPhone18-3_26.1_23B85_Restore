@interface HFNotSupportedReadPolicy
- (BOOL)_requiresNotificationsForCharacteristic:(id)characteristic;
- (unint64_t)evaluateWithCharacteristic:(id)characteristic traits:(id *)traits;
@end

@implementation HFNotSupportedReadPolicy

- (unint64_t)evaluateWithCharacteristic:(id)characteristic traits:(id *)traits
{
  characteristicCopy = characteristic;
  v7 = [MEMORY[0x277CBEB58] set];
  properties = [characteristicCopy properties];
  if ([properties containsObject:*MEMORY[0x277CCF738]])
  {
  }

  else
  {
    v9 = [(HFNotSupportedReadPolicy *)self _requiresNotificationsForCharacteristic:characteristicCopy];

    if (v9)
    {
      [v7 addObject:@"DoesNotSupportNotifications"];
      v10 = 0;
      goto LABEL_6;
    }
  }

  v10 = 1;
LABEL_6:
  properties2 = [characteristicCopy properties];
  if ([properties2 containsObject:*MEMORY[0x277CCF730]])
  {
    hasAuthorizationData = [characteristicCopy hasAuthorizationData];

    if ((hasAuthorizationData & 1) == 0)
    {
      [v7 addObject:@"InvalidOrMissingAuthorizationData"];
      v10 = 0;
    }
  }

  else
  {
  }

  v13 = objc_msgSend_service(characteristicCopy);
  accessory = [v13 accessory];
  isAdditionalSetupRequired = [accessory isAdditionalSetupRequired];

  if (isAdditionalSetupRequired)
  {
    [v7 addObject:@"AdditionalSetupRequired"];
    v10 = 0;
  }

  if (traits)
  {
    *traits = [v7 copy];
  }

  return v10;
}

- (BOOL)_requiresNotificationsForCharacteristic:(id)characteristic
{
  v17[6] = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  v4 = objc_msgSend_service(characteristicCopy);
  serviceType = [v4 serviceType];
  v6 = [serviceType isEqualToString:*MEMORY[0x277CD0DD0]];

  if (v6 & 1) != 0 || (v7 = *MEMORY[0x277CCF7D0], v17[0] = *MEMORY[0x277CCF780], v17[1] = v7, v8 = *MEMORY[0x277CCF928], v17[2] = *MEMORY[0x277CCF930], v17[3] = v8, v9 = *MEMORY[0x277CCFA48], v17[4] = *MEMORY[0x277CCFAD0], v17[5] = v9, [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:6], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(characteristicCopy, "characteristicType"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "containsObject:", v11), v11, v10, (v12))
  {
    v13 = 0;
  }

  else
  {
    v14 = *MEMORY[0x277CCF8E8];
    characteristicType = [characteristicCopy characteristicType];
    LOBYTE(v14) = [v14 isEqualToString:characteristicType];

    v13 = v14 ^ 1;
  }

  return v13;
}

@end