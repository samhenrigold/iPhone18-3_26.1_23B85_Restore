@interface TISKInputGestureEvent
- (id)init:(id)init emojiSearchMode:(BOOL)mode order:(int64_t)order;
@end

@implementation TISKInputGestureEvent

- (id)init:(id)init emojiSearchMode:(BOOL)mode order:(int64_t)order
{
  v6.receiver = self;
  v6.super_class = TISKInputGestureEvent;
  return [(TISKInputEvent *)&v6 init:init type:16 emojiSearchMode:mode order:order];
}

@end