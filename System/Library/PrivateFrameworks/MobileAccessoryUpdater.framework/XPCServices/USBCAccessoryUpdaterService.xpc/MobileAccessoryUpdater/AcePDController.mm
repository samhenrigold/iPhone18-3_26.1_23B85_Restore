@interface AcePDController
+ (id)createWithDeviceAddress:(unsigned __int8)address userClient:(id)client;
- (AcePDController)initWithAddress:(unsigned __int8)address userClient:(id)client;
@end

@implementation AcePDController

+ (id)createWithDeviceAddress:(unsigned __int8)address userClient:(id)client
{
  addressCopy = address;
  clientCopy = client;
  v7 = [[self alloc] initWithAddress:addressCopy userClient:clientCopy];

  return v7;
}

- (AcePDController)initWithAddress:(unsigned __int8)address userClient:(id)client
{
  v5.receiver = self;
  v5.super_class = AcePDController;
  return [(PDController *)&v5 initWithAddress:address userClient:client];
}

@end