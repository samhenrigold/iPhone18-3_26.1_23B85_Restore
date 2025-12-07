@interface WiFiAwareMonitorClient
- (void)holdAssertionFor:(int)for;
@end

@implementation WiFiAwareMonitorClient

- (void)holdAssertionFor:(int)for
{
  v3 = *&for;

  sub_100389140(v3);
}

@end