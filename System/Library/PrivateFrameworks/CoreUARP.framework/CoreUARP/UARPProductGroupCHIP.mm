@interface UARPProductGroupCHIP
- (UARPProductGroupCHIP)initWithVendorID:(unsigned __int16)d;
@end

@implementation UARPProductGroupCHIP

- (UARPProductGroupCHIP)initWithVendorID:(unsigned __int16)d
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", d];
  v7.receiver = self;
  v7.super_class = UARPProductGroupCHIP;
  v5 = [(UARPProductGroup *)&v7 initWithIdentifier:v4];

  return v5;
}

@end