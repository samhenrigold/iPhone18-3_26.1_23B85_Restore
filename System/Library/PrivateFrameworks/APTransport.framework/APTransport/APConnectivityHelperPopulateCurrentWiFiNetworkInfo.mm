@interface APConnectivityHelperPopulateCurrentWiFiNetworkInfo
@end

@implementation APConnectivityHelperPopulateCurrentWiFiNetworkInfo

void *___APConnectivityHelperPopulateCurrentWiFiNetworkInfo_block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 40) + 48) networkName];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void *___APConnectivityHelperPopulateCurrentWiFiNetworkInfo_block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 40) + 48) currentKnownNetworkProfile];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

@end