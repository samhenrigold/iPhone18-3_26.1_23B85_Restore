@interface UNNotificationContentExtensionVendorInterface
@end

@implementation UNNotificationContentExtensionVendorInterface

uint64_t ___UNNotificationContentExtensionVendorInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284DE2648];
  v1 = _UNNotificationContentExtensionVendorInterface___interface;
  _UNNotificationContentExtensionVendorInterface___interface = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end