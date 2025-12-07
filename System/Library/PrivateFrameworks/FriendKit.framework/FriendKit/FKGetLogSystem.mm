@interface FKGetLogSystem
@end

@implementation FKGetLogSystem

void ___FKGetLogSystem_block_invoke(uint64_t a1)
{
  v4 = FriendKitBundle(a1);
  v1 = [v4 bundleIdentifier];
  v2 = os_log_create([v1 UTF8String], "main");
  v3 = _FKGetLogSystem_log;
  _FKGetLogSystem_log = v2;
}

@end