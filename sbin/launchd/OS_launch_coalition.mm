@interface OS_launch_coalition
- (void)dealloc;
@end

@implementation OS_launch_coalition

- (void)dealloc
{
  sub_100012DB8(self, a2);
  sub_10001BB44(self, v3);
  v4.receiver = self;
  v4.super_class = OS_launch_coalition;
  [(OS_launch_coalition *)&v4 dealloc];
}

@end