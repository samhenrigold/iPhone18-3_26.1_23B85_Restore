@interface OS_launch_socket
- (void)dealloc;
@end

@implementation OS_launch_socket

- (void)dealloc
{
  sub_10001CA48(self);
  sub_10001BB44(self, v3);
  v4.receiver = self;
  v4.super_class = OS_launch_socket;
  [(OS_launch_socket *)&v4 dealloc];
}

@end