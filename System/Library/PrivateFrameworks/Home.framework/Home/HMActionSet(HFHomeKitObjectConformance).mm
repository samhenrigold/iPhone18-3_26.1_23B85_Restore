@interface HMActionSet(HFHomeKitObjectConformance)
- (uint64_t)hf_isValidObject;
@end

@implementation HMActionSet(HFHomeKitObjectConformance)

- (uint64_t)hf_isValidObject
{
  v4 = objc_msgSend_home(self, a2);
  if (v4)
  {
    uniqueIdentifier = [self uniqueIdentifier];
    actionSets = [v4 actionSets];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __59__HMActionSet_HFHomeKitObjectConformance__hf_isValidObject__block_invoke;
    v10[3] = &unk_277DF4280;
    v11 = uniqueIdentifier;
    v7 = uniqueIdentifier;
    v8 = [actionSets na_any:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end