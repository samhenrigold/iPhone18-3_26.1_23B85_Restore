@interface GMAnalyticsProvider
- (BOOL)sendAction:(int64_t)action;
@end

@implementation GMAnalyticsProvider

- (BOOL)sendAction:(int64_t)action
{
  v5 = *(&self->super.isa + OBJC_IVAR___GMAnalyticsProvider_sendFunction);
  v6 = swift_allocObject();
  *(v6 + 16) = action;
  *(v6 + 24) = self;
  selfCopy = self;
  v8 = v5(0xD00000000000002CLL, 0x80000002414196F0, sub_2413EED1C, v6);

  return v8 & 1;
}

@end