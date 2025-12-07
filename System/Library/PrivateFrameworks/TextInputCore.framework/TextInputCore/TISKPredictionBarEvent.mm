@interface TISKPredictionBarEvent
- (id)description;
- (id)init:(double)init emojiPrediction:(BOOL)prediction emojiSearchMode:(BOOL)mode order:(int64_t)order emojiBucketCategory:(id)category;
- (void)reportInterKeyTiming:(id)timing previousEvent:(id)event;
- (void)reportToSession:(id)session;
@end

@implementation TISKPredictionBarEvent

- (id)description
{
  if (self->_emojiPrediction)
  {
    return @"ep";
  }

  else
  {
    return @"pb";
  }
}

- (void)reportInterKeyTiming:(id)timing previousEvent:(id)event
{
  timingCopy = timing;
  eventCopy = event;
  if (eventCopy)
  {
    v15.receiver = self;
    v15.super_class = TISKPredictionBarEvent;
    [(TISKEvent *)&v15 reportInterKeyTiming:timingCopy previousEvent:eventCopy];
    [(TISKTimestampEvent *)self touchDownTimestamp];
    v9 = v8;
    [eventCopy touchDownTimestamp];
    v11 = v10;
    type = [eventCopy type];
    if (!type)
    {
      v13 = &kTISKCharToPredictionMetric;
      goto LABEL_6;
    }

    if (type == 2)
    {
      v13 = &kTISKSpaceToPredictionMetric;
LABEL_6:
      v14 = [MEMORY[0x277CCABB0] numberWithDouble:v9 - v11];
      [timingCopy addSample:v14 forKey:*v13];
    }
  }
}

- (void)reportToSession:(id)session
{
  sessionCopy = session;
  [sessionCopy addSample:&unk_28400BF10 forKey:kTISKNumberOfTappedKeysCounter];
  [sessionCopy addToCounterForRateMetric:1 forKey:kTISKTapTypingSpeed];
  if (self->_emojiPrediction)
  {
    [sessionCopy addSample:&unk_28400BF10 forKey:kTISKNumberOfEmojiCounter];
    emojiBucketCategory = [(TISKPredictionBarEvent *)self emojiBucketCategory];

    if (emojiBucketCategory)
    {
      emojiBucketCategory2 = [(TISKPredictionBarEvent *)self emojiBucketCategory];
      isEqualToString = objc_msgSend_isEqualToString_(emojiBucketCategory2);

      if (isEqualToString)
      {
        [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalPositiveEmoji];
      }

      emojiBucketCategory3 = [(TISKPredictionBarEvent *)self emojiBucketCategory];
      v8 = objc_msgSend_isEqualToString_(emojiBucketCategory3);

      if (v8)
      {
        [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalSadEmoji];
      }

      emojiBucketCategory4 = [(TISKPredictionBarEvent *)self emojiBucketCategory];
      v10 = objc_msgSend_isEqualToString_(emojiBucketCategory4);

      if (v10)
      {
        [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalAnxietyEmoji];
      }

      emojiBucketCategory5 = [(TISKPredictionBarEvent *)self emojiBucketCategory];
      v12 = objc_msgSend_isEqualToString_(emojiBucketCategory5);

      if (v12)
      {
        [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalAngerEmoji];
      }

      emojiBucketCategory6 = [(TISKPredictionBarEvent *)self emojiBucketCategory];
      v14 = objc_msgSend_isEqualToString_(emojiBucketCategory6);

      if (v14)
      {
        [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalLowEnergyEmoji];
      }

      emojiBucketCategory7 = [(TISKPredictionBarEvent *)self emojiBucketCategory];
      v16 = objc_msgSend_isEqualToString_(emojiBucketCategory7);

      if (v16)
      {
        [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalFeelEmoji];
      }

      emojiBucketCategory8 = [(TISKPredictionBarEvent *)self emojiBucketCategory];
      v18 = objc_msgSend_isEqualToString_(emojiBucketCategory8);

      if (v18)
      {
        [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalConfusedEmoji];
      }
    }
  }
}

- (id)init:(double)init emojiPrediction:(BOOL)prediction emojiSearchMode:(BOOL)mode order:(int64_t)order emojiBucketCategory:(id)category
{
  modeCopy = mode;
  categoryCopy = category;
  v17.receiver = self;
  v17.super_class = TISKPredictionBarEvent;
  v14 = [(TISKTimestampEvent *)&v17 init:9 timestamp:modeCopy emojiSearchMode:order order:init];
  v15 = v14;
  if (v14)
  {
    *(v14 + 40) = prediction;
    objc_storeStrong(v14 + 6, category);
  }

  return v15;
}

@end