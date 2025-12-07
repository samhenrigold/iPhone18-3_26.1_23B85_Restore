@interface CFNetwork
@end

@implementation CFNetwork

uint64_t (*____CFNetwork__CFURLCreateDataAndPropertiesFromResource_block_invoke())(void, void, void, void, void, void)
{
  result = __CFLookupCFNetworkFunction("_CFURLCreateDataAndPropertiesFromResource");
  __CFNetwork__CFURLCreateDataAndPropertiesFromResource_dyfunc = result;
  return result;
}

uint64_t (*____CFNetwork__CFURLWriteDataAndPropertiesToResource_block_invoke())(void, void, void, void)
{
  result = __CFLookupCFNetworkFunction("_CFURLWriteDataAndPropertiesToResource");
  __CFNetwork__CFURLWriteDataAndPropertiesToResource_dyfunc = result;
  return result;
}

uint64_t (*____CFNetwork__CFURLDestroyResource_block_invoke())(void, void)
{
  result = __CFLookupCFNetworkFunction("_CFURLDestroyResource");
  __CFNetwork__CFURLDestroyResource_dyfunc = result;
  return result;
}

@end