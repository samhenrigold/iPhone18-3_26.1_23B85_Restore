@interface NSMutableURLRequest(NEHotspotHelper)
- (uint64_t)bindToHotspotHelperCommand:()NEHotspotHelper;
@end

@implementation NSMutableURLRequest(NEHotspotHelper)

- (uint64_t)bindToHotspotHelperCommand:()NEHotspotHelper
{
  interfaceName = [(NEHotspotHelperCommand *)a3 interfaceName];
  v5 = interfaceName;
  if (interfaceName)
  {
    v7 = interfaceName;
    interfaceName = [self setBoundInterfaceIdentifier:interfaceName];
    v5 = v7;
  }

  return MEMORY[0x1EEE66BB8](interfaceName, v5);
}

@end