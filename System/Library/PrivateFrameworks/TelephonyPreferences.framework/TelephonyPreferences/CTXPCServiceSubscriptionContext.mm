@interface CTXPCServiceSubscriptionContext
@end

@implementation CTXPCServiceSubscriptionContext

uint64_t __72__CTXPCServiceSubscriptionContext_TelephonyPreferences__telephonyClient__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CC37B0]);
  v1 = [v0 initWithQueue:MEMORY[0x277D85CD0]];
  v2 = telephonyClient_telephonyClient;
  telephonyClient_telephonyClient = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end