@interface CKIsEmergencyNumber
@end

@implementation CKIsEmergencyNumber

uint64_t (*__CKIsEmergencyNumber_block_invoke_2())(void, void, void)
{
  result = MEMORY[0x193AF5ED0]("_CTServerConnectionCreate", @"CoreTelephony");
  sTestLocale_block_invoke___CTServerConnectionCreate = result;
  return result;
}

uint64_t (*__CKIsEmergencyNumber_block_invoke_3())(void)
{
  result = MEMORY[0x193AF5ED0]("_CTServerConnectionIsEmergencyNumber", @"CoreTelephony");
  CKIsEmergencyNumber___CTServerConnectionIsEmergencyNumber = result;
  return result;
}

@end