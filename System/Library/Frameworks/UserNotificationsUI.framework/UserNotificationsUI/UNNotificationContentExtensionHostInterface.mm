@interface UNNotificationContentExtensionHostInterface
@end

@implementation UNNotificationContentExtensionHostInterface

uint64_t ___UNNotificationContentExtensionHostInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284DE2490];
  v1 = _UNNotificationContentExtensionHostInterface___interface;
  _UNNotificationContentExtensionHostInterface___interface = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end