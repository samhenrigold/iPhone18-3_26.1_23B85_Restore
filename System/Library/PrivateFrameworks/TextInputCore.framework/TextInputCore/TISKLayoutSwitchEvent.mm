@interface TISKLayoutSwitchEvent
- (double)touchDownTimestamp;
- (double)touchUpTimestamp;
- (id)init:(double)init layout:(id)layout emojiSearchMode:(BOOL)mode order:(int64_t)order;
- (void)reportToSession:(id)session;
@end

@implementation TISKLayoutSwitchEvent

- (void)reportToSession:(id)session
{
  v3 = kTISKNumberOfTappedKeysCounter;
  sessionCopy = session;
  [sessionCopy addSample:&unk_28400BF10 forKey:v3];
  [sessionCopy addToCounterForRateMetric:1 forKey:kTISKTapTypingSpeed];
}

- (double)touchUpTimestamp
{
  v3 = [(TISKEvent *)self tap];

  if (v3)
  {
    v4 = [(TISKEvent *)self tap];
    lastTouch = [v4 lastTouch];
    [lastTouch timestamp];
    v7 = v6;

    return v7;
  }

  else
  {

    [(TISKTimestampEvent *)self timestamp];
  }

  return result;
}

- (double)touchDownTimestamp
{
  v3 = [(TISKEvent *)self tap];

  if (v3)
  {
    v4 = [(TISKEvent *)self tap];
    firstTouch = [v4 firstTouch];
    [firstTouch timestamp];
    v7 = v6;

    return v7;
  }

  else
  {

    [(TISKTimestampEvent *)self timestamp];
  }

  return result;
}

- (id)init:(double)init layout:(id)layout emojiSearchMode:(BOOL)mode order:(int64_t)order
{
  modeCopy = mode;
  layoutCopy = layout;
  v15.receiver = self;
  v15.super_class = TISKLayoutSwitchEvent;
  v12 = [(TISKTimestampEvent *)&v15 init:10 timestamp:modeCopy emojiSearchMode:order order:init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 5, layout);
  }

  return v13;
}

@end