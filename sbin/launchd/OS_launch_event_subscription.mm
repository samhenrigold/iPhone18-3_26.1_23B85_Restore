@interface OS_launch_event_subscription
- (void)dealloc;
@end

@implementation OS_launch_event_subscription

- (void)dealloc
{
  sub_10003ED78(self, a2);
  sub_10001BB44(self, v3);
  v4.receiver = self;
  v4.super_class = OS_launch_event_subscription;
  [(OS_launch_event_subscription *)&v4 dealloc];
}

@end