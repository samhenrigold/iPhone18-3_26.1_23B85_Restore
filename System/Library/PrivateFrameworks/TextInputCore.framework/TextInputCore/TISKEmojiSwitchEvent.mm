@interface TISKEmojiSwitchEvent
- (id)description;
- (id)init:(double)init emojiSearchMode:(BOOL)mode order:(int64_t)order;
- (void)reportToSession:(id)session;
@end

@implementation TISKEmojiSwitchEvent

- (id)description
{
  if ([(TISKEvent *)self emojiSearchMode])
  {
    v2 = @"es:1";
  }

  else
  {
    v2 = @"es:0";
  }

  return v2;
}

- (void)reportToSession:(id)session
{
  v3 = kTISKNumberOfTappedKeysCounter;
  sessionCopy = session;
  [sessionCopy addSample:&unk_28400BF10 forKey:v3];
  [sessionCopy addToCounterForRateMetric:1 forKey:kTISKTapTypingSpeed];
}

- (id)init:(double)init emojiSearchMode:(BOOL)mode order:(int64_t)order
{
  v6.receiver = self;
  v6.super_class = TISKEmojiSwitchEvent;
  return [(TISKTimestampEvent *)&v6 init:18 timestamp:mode emojiSearchMode:order order:init];
}

@end