@interface OS_launch_attribution_node
- (void)dealloc;
@end

@implementation OS_launch_attribution_node

- (void)dealloc
{
  sub_10001A3B0(self);
  sub_10001BB44(self, v3);
  v4.receiver = self;
  v4.super_class = OS_launch_attribution_node;
  [(OS_launch_attribution_node *)&v4 dealloc];
}

@end