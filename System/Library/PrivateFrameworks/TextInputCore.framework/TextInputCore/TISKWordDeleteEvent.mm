@interface TISKWordDeleteEvent
- (TISKWordDeleteEvent)initWithEmojiSearchMode:(BOOL)mode order:(int64_t)order;
@end

@implementation TISKWordDeleteEvent

- (TISKWordDeleteEvent)initWithEmojiSearchMode:(BOOL)mode order:(int64_t)order
{
  v5.receiver = self;
  v5.super_class = TISKWordDeleteEvent;
  return [(TISKEvent *)&v5 init:11 emojiSearchMode:mode order:order];
}

@end