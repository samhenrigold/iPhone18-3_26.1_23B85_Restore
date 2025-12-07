@interface OS_launch_endpoint
- (void)dealloc;
@end

@implementation OS_launch_endpoint

- (void)dealloc
{
  sub_10004BE90(self);
  sub_10001BB44(self, v3);
  v4.receiver = self;
  v4.super_class = OS_launch_endpoint;
  [(OS_launch_endpoint *)&v4 dealloc];
}

@end