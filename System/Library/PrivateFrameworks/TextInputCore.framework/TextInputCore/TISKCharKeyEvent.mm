@interface TISKCharKeyEvent
- (id)description;
- (id)init:(id)init emojiSearchMode:(BOOL)mode order:(int64_t)order;
- (int64_t)_metricWordKeyPostion:(int64_t)postion;
- (void)reportInterKeyTiming:(id)timing previousEvent:(id)event;
- (void)reportToSession:(id)session;
@end

@implementation TISKCharKeyEvent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  input = [(TISKInputEvent *)self input];
  v5 = objc_msgSend_string(input);
  v6 = v5;
  if (self->_isShortWord)
  {
    v7 = &stru_283FDFAF8;
  }

  else
  {
    v7 = @":l";
  }

  v8 = [v3 stringWithFormat:@"%@:%ld%@", v5, self->_wordPosition, v7];

  return v8;
}

- (void)reportInterKeyTiming:(id)timing previousEvent:(id)event
{
  timingCopy = timing;
  eventCopy = event;
  if (!eventCopy)
  {
    goto LABEL_20;
  }

  v26.receiver = self;
  v26.super_class = TISKCharKeyEvent;
  [(TISKInputEvent *)&v26 reportInterKeyTiming:timingCopy previousEvent:eventCopy];
  [(TISKEvent *)self touchDownTimestamp];
  v9 = v8;
  [eventCopy touchDownTimestamp];
  v11 = v9 - v10;
  [(TISKEvent *)self touchDownTimestamp];
  v13 = v12;
  [eventCopy touchUpTimestamp];
  v15 = v14;
  v16 = [eventCopy tap];
  if (v16)
  {
    v17 = v16;
    v18 = [eventCopy tap];
    if ([v18 isDownUpTap])
    {
      type = [eventCopy type];

      if (type == 10)
      {
        goto LABEL_8;
      }

      v17 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      [timingCopy addSample:v17 forKey:kTISKAnyTapToCharMetric];
    }

    else
    {
    }
  }

LABEL_8:
  type2 = [eventCopy type];
  if (type2 > 2)
  {
    if (type2 == 3)
    {
      v21 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      v22 = kTISKDeleteToCharMetric;
      goto LABEL_18;
    }

    if (type2 == 10)
    {
      v21 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      v22 = kTISK123ToCharMetric;
      goto LABEL_18;
    }
  }

  else
  {
    if (!type2)
    {
      if (!self->_isShortWord)
      {
        wordPosition = self->_wordPosition;
        if (wordPosition < 1)
        {
          goto LABEL_20;
        }

        v24 = [(TISKCharKeyEvent *)self _metricWordKeyPostion:wordPosition - 1];
        v25 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        [timingCopy addSample:v25 forKey:kTISKLongWordTouchDownDownPositionalMetric withPosition:v24];

        v21 = [MEMORY[0x277CCABB0] numberWithDouble:v13 - v15];
        [timingCopy addSample:v21 forKey:kTISKLongWordTouchUpDownPositionalMetric withPosition:v24];
        goto LABEL_19;
      }

      v21 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      v22 = kTISKShortWordCharToCharMetric;
LABEL_18:
      [timingCopy addSample:v21 forKey:v22];
LABEL_19:

      goto LABEL_20;
    }

    if (type2 == 2)
    {
      v21 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      v22 = kTISKSpaceToCharMetric;
      goto LABEL_18;
    }
  }

LABEL_20:
}

- (void)reportToSession:(id)session
{
  v17.receiver = self;
  v17.super_class = TISKCharKeyEvent;
  sessionCopy = session;
  [(TISKInputEvent *)&v17 reportToSession:sessionCopy];
  if (self->_isShortWord)
  {
    v5 = MEMORY[0x277CCABB0];
    [(TISKInputEvent *)self downUpTimeDelta:v17.receiver];
    v6 = [v5 numberWithDouble:?];
    [sessionCopy addSample:v6 forKey:kTISKShortWordCharTouchDownUpMetric];

    v7 = MEMORY[0x277CCABB0];
    [(TISKInputEvent *)self touchDownErrorDistance];
    v8 = [v7 numberWithDouble:?];
    [sessionCopy addSample:v8 forKey:kTISKShortWordCharDownErrorDistance];

    v9 = MEMORY[0x277CCABB0];
    [(TISKInputEvent *)self touchUpErrorDistance];
    v10 = [v9 numberWithDouble:?];
    [sessionCopy addSample:v10 forKey:kTISKShortWordCharUpErrorDistance];
  }

  else
  {
    v11 = [(TISKCharKeyEvent *)self _metricWordKeyPostion:self->_wordPosition, v17.receiver, v17.super_class];
    v12 = MEMORY[0x277CCABB0];
    [(TISKInputEvent *)self downUpTimeDelta];
    v13 = [v12 numberWithDouble:?];
    [sessionCopy addSample:v13 forKey:kTISKLongWordTouchDownUpPositionalMetric withPosition:v11];

    v14 = MEMORY[0x277CCABB0];
    [(TISKInputEvent *)self touchDownErrorDistance];
    v15 = [v14 numberWithDouble:?];
    [sessionCopy addSample:v15 forKey:kTISKLongWordPositionalDownErrorDistance withPosition:v11];

    v16 = MEMORY[0x277CCABB0];
    [(TISKInputEvent *)self touchUpErrorDistance];
    v10 = [v16 numberWithDouble:?];
    [sessionCopy addSample:v10 forKey:kTISKLongWordPositionalUpErrorDistance withPosition:v11];
  }
}

- (int64_t)_metricWordKeyPostion:(int64_t)postion
{
  if (postion >= 5)
  {
    return 5;
  }

  else
  {
    return postion;
  }
}

- (id)init:(id)init emojiSearchMode:(BOOL)mode order:(int64_t)order
{
  v6.receiver = self;
  v6.super_class = TISKCharKeyEvent;
  result = [(TISKInputEvent *)&v6 init:init type:0 emojiSearchMode:mode order:order];
  if (result)
  {
    *(result + 9) = -1;
    *(result + 64) = 1;
  }

  return result;
}

@end