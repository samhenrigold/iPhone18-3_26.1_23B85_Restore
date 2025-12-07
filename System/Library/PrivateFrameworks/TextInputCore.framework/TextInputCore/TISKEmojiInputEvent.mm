@interface TISKEmojiInputEvent
- (id)init:(double)init emojiSearchMode:(BOOL)mode order:(int64_t)order emojiBucketCategory:(id)category;
- (void)reportToSession:(id)session;
@end

@implementation TISKEmojiInputEvent

- (void)reportToSession:(id)session
{
  sessionCopy = session;
  [sessionCopy addSample:&unk_28400BF10 forKey:kTISKNumberOfEmojiCounter];
  [sessionCopy addSample:&unk_28400BF10 forKey:kTISKNumberOfTappedKeysCounter];
  [sessionCopy addToCounterForRateMetric:1 forKey:kTISKTapTypingSpeed];
  emojiBucketCategory = [(TISKEmojiInputEvent *)self emojiBucketCategory];

  v5 = sessionCopy;
  if (emojiBucketCategory)
  {
    emojiBucketCategory2 = [(TISKEmojiInputEvent *)self emojiBucketCategory];
    isEqualToString = objc_msgSend_isEqualToString_(emojiBucketCategory2);

    if (isEqualToString)
    {
      [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalPositiveEmoji];
    }

    emojiBucketCategory3 = [(TISKEmojiInputEvent *)self emojiBucketCategory];
    v9 = objc_msgSend_isEqualToString_(emojiBucketCategory3);

    if (v9)
    {
      [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalSadEmoji];
    }

    emojiBucketCategory4 = [(TISKEmojiInputEvent *)self emojiBucketCategory];
    v11 = objc_msgSend_isEqualToString_(emojiBucketCategory4);

    if (v11)
    {
      [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalAnxietyEmoji];
    }

    emojiBucketCategory5 = [(TISKEmojiInputEvent *)self emojiBucketCategory];
    v13 = objc_msgSend_isEqualToString_(emojiBucketCategory5);

    if (v13)
    {
      [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalAngerEmoji];
    }

    emojiBucketCategory6 = [(TISKEmojiInputEvent *)self emojiBucketCategory];
    v15 = objc_msgSend_isEqualToString_(emojiBucketCategory6);

    if (v15)
    {
      [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalLowEnergyEmoji];
    }

    emojiBucketCategory7 = [(TISKEmojiInputEvent *)self emojiBucketCategory];
    v17 = objc_msgSend_isEqualToString_(emojiBucketCategory7);

    if (v17)
    {
      [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalFeelEmoji];
    }

    emojiBucketCategory8 = [(TISKEmojiInputEvent *)self emojiBucketCategory];
    v19 = objc_msgSend_isEqualToString_(emojiBucketCategory8);

    v5 = sessionCopy;
    if (v19)
    {
      [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalConfusedEmoji];
      v5 = sessionCopy;
    }
  }
}

- (id)init:(double)init emojiSearchMode:(BOOL)mode order:(int64_t)order emojiBucketCategory:(id)category
{
  modeCopy = mode;
  categoryCopy = category;
  v15.receiver = self;
  v15.super_class = TISKEmojiInputEvent;
  v12 = [(TISKTimestampEvent *)&v15 init:17 timestamp:modeCopy emojiSearchMode:order order:init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 5, category);
  }

  return v13;
}

@end