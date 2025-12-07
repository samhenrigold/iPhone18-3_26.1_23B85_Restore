@interface MailRegionCode
@end

@implementation MailRegionCode

uint64_t ____MailRegionCode_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = CPGetDeviceRegionCode();
  v3 = __MailRegionCode__regionCode;
  __MailRegionCode__regionCode = v2;
  return MEMORY[0x277D82BD8](v3);
}

@end