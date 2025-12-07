@interface OS_launch_io
- (void)dealloc;
@end

@implementation OS_launch_io

- (void)dealloc
{
  sub_10000E8FC(self);
  sub_10001BB44(self, v3);
  v4.receiver = self;
  v4.super_class = OS_launch_io;
  [(OS_launch_io *)&v4 dealloc];
}

@end