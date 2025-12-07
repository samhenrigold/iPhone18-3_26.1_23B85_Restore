@interface TISKCursorMoveEvent
- (id)init:(double)init emojiSearchMode:(BOOL)mode order:(int64_t)order;
@end

@implementation TISKCursorMoveEvent

- (id)init:(double)init emojiSearchMode:(BOOL)mode order:(int64_t)order
{
  v6.receiver = self;
  v6.super_class = TISKCursorMoveEvent;
  return [(TISKTimestampEvent *)&v6 init:12 timestamp:mode emojiSearchMode:order order:init];
}

@end