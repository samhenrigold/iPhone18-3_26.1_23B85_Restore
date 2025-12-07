@interface OS_launch_log
- (void)dealloc;
@end

@implementation OS_launch_log

- (void)dealloc
{
  sub_100046D04(self);
  sub_10001BB44(self, v3);
  v4.receiver = self;
  v4.super_class = OS_launch_log;
  [(OS_launch_log *)&v4 dealloc];
}

@end