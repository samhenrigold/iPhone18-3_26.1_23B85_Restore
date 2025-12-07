@interface TISKBucketSwitchEvent
- (id)description;
- (id)init:(id)init emojiSearchMode:(BOOL)mode order:(int64_t)order;
- (void)reportToSession:(id)session;
@end

@implementation TISKBucketSwitchEvent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  layout = [(TISKSessionStats *)self->_sessionStats layout];
  [layout frame];
  v6 = v5;
  layout2 = [(TISKSessionStats *)self->_sessionStats layout];
  [layout2 frame];
  v9 = [v3 stringWithFormat:@"bs:%d-%d", v6, v8];

  return v9;
}

- (void)reportToSession:(id)session
{
  v3 = kTISKNumberOfTappedKeysCounter;
  sessionCopy = session;
  [sessionCopy addSample:&unk_28400BF10 forKey:v3];
  [sessionCopy addToCounterForRateMetric:1 forKey:kTISKTapTypingSpeed];
}

- (id)init:(id)init emojiSearchMode:(BOOL)mode order:(int64_t)order
{
  modeCopy = mode;
  initCopy = init;
  v13.receiver = self;
  v13.super_class = TISKBucketSwitchEvent;
  v10 = [(TISKEvent *)&v13 init:14 emojiSearchMode:modeCopy order:order];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 4, init);
  }

  return v11;
}

@end