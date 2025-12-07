@interface OS_launch_domain_aggregate_io
- (void)dealloc;
@end

@implementation OS_launch_domain_aggregate_io

- (void)dealloc
{
  sub_100018608(self, a2);
  sub_10001BB44(self, v3);
  v4.receiver = self;
  v4.super_class = OS_launch_domain_aggregate_io;
  [(OS_launch_domain_aggregate_io *)&v4 dealloc];
}

@end