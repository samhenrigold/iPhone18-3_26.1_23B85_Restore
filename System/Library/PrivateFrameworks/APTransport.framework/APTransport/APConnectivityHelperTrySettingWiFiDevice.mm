@interface APConnectivityHelperTrySettingWiFiDevice
@end

@implementation APConnectivityHelperTrySettingWiFiDevice

void *___APConnectivityHelperTrySettingWiFiDevice_block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 40) + 48) interfaceName];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

@end