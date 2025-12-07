@interface OS_launch_event_realm
- (void)dealloc;
@end

@implementation OS_launch_event_realm

- (void)dealloc
{
  sub_10003ECB8(self, a2);
  sub_10001BB44(self, v3);
  v4.receiver = self;
  v4.super_class = OS_launch_event_realm;
  [(OS_launch_event_realm *)&v4 dealloc];
}

@end