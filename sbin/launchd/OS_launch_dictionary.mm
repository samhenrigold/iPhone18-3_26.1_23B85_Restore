@interface OS_launch_dictionary
- (void)dealloc;
@end

@implementation OS_launch_dictionary

- (void)dealloc
{
  sub_100049748(self);
  sub_10001BB44(self, v3);
  v4.receiver = self;
  v4.super_class = OS_launch_dictionary;
  [(OS_launch_dictionary *)&v4 dealloc];
}

@end