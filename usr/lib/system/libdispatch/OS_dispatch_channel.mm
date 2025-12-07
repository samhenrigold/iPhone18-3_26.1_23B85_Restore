@interface OS_dispatch_channel
- (OS_dispatch_channel)init;
- (void)_xref_dispose;
@end

@implementation OS_dispatch_channel

- (OS_dispatch_channel)init
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: -init called directly";
  __break(1u);
  return self;
}

- (void)_xref_dispose
{
  _dispatch_queue_xref_dispose(self, a2);
  _dispatch_channel_xref_dispose(self, v3);
  v4.receiver = self;
  v4.super_class = OS_dispatch_channel;
  [(OS_object *)&v4 _xref_dispose];
}

@end