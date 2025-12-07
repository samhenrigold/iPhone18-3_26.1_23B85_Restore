@interface HMDDeviceCapabilitiesModelEncodeWithCoder
@end

@implementation HMDDeviceCapabilitiesModelEncodeWithCoder

void ____HMDDeviceCapabilitiesModelEncodeWithCoder_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  NSSelectorFromString(v5);
  if (objc_opt_respondsToSelector())
  {
    v6 = [*(a1 + 32) valueForKey:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      [*(a1 + 40) encodeBool:objc_msgSend(v8 forKey:{"BOOLValue"), v9}];
    }
  }
}

@end