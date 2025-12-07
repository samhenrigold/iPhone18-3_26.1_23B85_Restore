@interface HMDDeviceCapabilitiesModelDecodeWithCoder
@end

@implementation HMDDeviceCapabilitiesModelDecodeWithCoder

void ____HMDDeviceCapabilitiesModelDecodeWithCoder_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsValueForKey:v8])
  {
    NSSelectorFromString(v5);
    if (objc_opt_respondsToSelector())
    {
      v6 = *(a1 + 40);
      v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", v8)}];
      [v6 setValue:v7 forKey:v5];
    }
  }
}

@end