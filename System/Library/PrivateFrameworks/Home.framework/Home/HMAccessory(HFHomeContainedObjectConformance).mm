@interface HMAccessory(HFHomeContainedObjectConformance)
- (uint64_t)hf_isValidObject;
@end

@implementation HMAccessory(HFHomeContainedObjectConformance)

- (uint64_t)hf_isValidObject
{
  v4 = objc_msgSend_home(self, a2);
  if (v4)
  {
    uniqueIdentifier = [self uniqueIdentifier];
    accessories = [v4 accessories];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__HMAccessory_HFHomeContainedObjectConformance__hf_isValidObject__block_invoke;
    v10[3] = &unk_277DF3888;
    v11 = uniqueIdentifier;
    v7 = uniqueIdentifier;
    v8 = [accessories na_any:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end