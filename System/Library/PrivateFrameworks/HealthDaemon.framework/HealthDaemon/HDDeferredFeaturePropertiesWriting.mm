@interface HDDeferredFeaturePropertiesWriting
@end

@implementation HDDeferredFeaturePropertiesWriting

uint64_t __50___HDDeferredFeaturePropertiesWriting_synchronize__block_invoke(uint64_t a1)
{
  objc_opt_class();
  v1 = HKCreateSerialUtilityDispatchQueue();
  v2 = _MergedGlobals_212;
  _MergedGlobals_212 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

id __50___HDDeferredFeaturePropertiesWriting_synchronize__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) waitForActiveOrAltAccountDevice];
  v4.receiver = *(a1 + 32);
  v4.super_class = _HDDeferredFeaturePropertiesWriting;
  return objc_msgSendSuper2(&v4, sel_synchronize);
}

@end