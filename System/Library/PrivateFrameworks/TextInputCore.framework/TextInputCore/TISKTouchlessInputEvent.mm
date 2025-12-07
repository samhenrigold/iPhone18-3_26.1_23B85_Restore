@interface TISKTouchlessInputEvent
- (id)init:(BOOL)init order:(int64_t)order;
@end

@implementation TISKTouchlessInputEvent

- (id)init:(BOOL)init order:(int64_t)order
{
  v5.receiver = self;
  v5.super_class = TISKTouchlessInputEvent;
  return [(TISKEvent *)&v5 init:13 emojiSearchMode:init order:order];
}

@end