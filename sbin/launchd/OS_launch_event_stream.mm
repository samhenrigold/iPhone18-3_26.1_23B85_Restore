@interface OS_launch_event_stream
- (void)dealloc;
@end

@implementation OS_launch_event_stream

- (void)dealloc
{
  sub_10003ED5C(self, a2);
  sub_10001BB44(self, v3);
  v4.receiver = self;
  v4.super_class = OS_launch_event_stream;
  [(OS_launch_event_stream *)&v4 dealloc];
}

@end