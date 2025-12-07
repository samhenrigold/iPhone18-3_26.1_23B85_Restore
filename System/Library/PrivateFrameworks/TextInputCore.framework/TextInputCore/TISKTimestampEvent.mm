@interface TISKTimestampEvent
- (id)init:(int)init timestamp:(double)timestamp emojiSearchMode:(BOOL)mode order:(int64_t)order;
@end

@implementation TISKTimestampEvent

- (id)init:(int)init timestamp:(double)timestamp emojiSearchMode:(BOOL)mode order:(int64_t)order
{
  v10.receiver = self;
  v10.super_class = TISKTimestampEvent;
  v7 = [(TISKEvent *)&v10 init:*&init emojiSearchMode:mode order:order];
  v8 = v7;
  if (v7)
  {
    [v7 setTimestamp:timestamp];
    [v8 setHasTimestamp:1];
  }

  return v8;
}

@end