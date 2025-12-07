@interface HFSuspendedStateOverrideValueProvider
+ (NSDictionary)overrideDefaultValueForCharacteristicType;
- (BOOL)valueSource:(id)source shouldOverrideValueForCharacteristic:(id)characteristic;
- (id)valueSource:(id)source overrideValueForCharacteristic:(id)characteristic;
@end

@implementation HFSuspendedStateOverrideValueProvider

- (BOOL)valueSource:(id)source shouldOverrideValueForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v5 = objc_msgSend_service(characteristicCopy);
  accessory = [v5 accessory];
  if ([accessory hf_isSuspended])
  {
    overrideDefaultValueForCharacteristicType = [objc_opt_class() overrideDefaultValueForCharacteristicType];
    characteristicType = [characteristicCopy characteristicType];
    v9 = [overrideDefaultValueForCharacteristicType objectForKeyedSubscript:characteristicType];
    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)valueSource:(id)source overrideValueForCharacteristic:(id)characteristic
{
  v22 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  v5 = objc_msgSend_service(characteristicCopy);
  accessory = [v5 accessory];
  hf_isSuspended = [accessory hf_isSuspended];

  if (hf_isSuspended)
  {
    overrideDefaultValueForCharacteristicType = [objc_opt_class() overrideDefaultValueForCharacteristicType];
    characteristicType = [characteristicCopy characteristicType];
    value = [overrideDefaultValueForCharacteristicType objectForKeyedSubscript:characteristicType];

    v11 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      characteristicType2 = [characteristicCopy characteristicType];
      v13 = objc_msgSend_service(characteristicCopy);
      accessory2 = [v13 accessory];
      v16 = 138412802;
      v17 = characteristicType2;
      v18 = 2112;
      v19 = value;
      v20 = 2112;
      v21 = accessory2;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Overriding characteristic %@ value with %@ for suspended accessory %@", &v16, 0x20u);
    }
  }

  else
  {
    value = [characteristicCopy value];
  }

  return value;
}

+ (NSDictionary)overrideDefaultValueForCharacteristicType
{
  if (_MergedGlobals_290 != -1)
  {
    dispatch_once(&_MergedGlobals_290, &__block_literal_global_3_23);
  }

  v3 = qword_280E03870;

  return v3;
}

void __82__HFSuspendedStateOverrideValueProvider_overrideDefaultValueForCharacteristicType__block_invoke_2()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCF750];
  v3[0] = *MEMORY[0x277CCF748];
  v3[1] = v0;
  v4[0] = &unk_2825248A0;
  v4[1] = &unk_2825248A0;
  v3[2] = *MEMORY[0x277CCF9F0];
  v4[2] = &unk_2825248A0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_280E03870;
  qword_280E03870 = v1;
}

@end