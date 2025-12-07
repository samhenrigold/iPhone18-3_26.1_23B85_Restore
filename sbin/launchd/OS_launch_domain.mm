@interface OS_launch_domain
- (void)dealloc;
@end

@implementation OS_launch_domain

- (void)dealloc
{
  sub_10002C61C(self);
  sub_10001BB44(self, v3);
  v4.receiver = self;
  v4.super_class = OS_launch_domain;
  [(OS_launch_domain *)&v4 dealloc];
}

@end