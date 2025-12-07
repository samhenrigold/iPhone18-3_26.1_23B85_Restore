@interface OS_launch_service
- (void)dealloc;
@end

@implementation OS_launch_service

- (void)dealloc
{
  sub_1000028D0(self, a2);
  sub_10001BB44(self, v3);
  v4.receiver = self;
  v4.super_class = OS_launch_service;
  [(OS_launch_service *)&v4 dealloc];
}

@end