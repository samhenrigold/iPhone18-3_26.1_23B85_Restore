@interface TISKInputEvent
+ (id)makeInputEvent:(id)event emojiSearchMode:(BOOL)mode order:(int64_t)order wordSeparator:(id)separator accentedLanguage:(BOOL)language;
- (BOOL)isMissingATouch;
- (double)downUpTimeDelta;
- (id)init:(id)init type:(int)type emojiSearchMode:(BOOL)mode order:(int64_t)order;
- (void)_computeErrorDistance;
- (void)reportInterKeyTiming:(id)timing previousEvent:(id)event;
- (void)reportToSession:(id)session;
@end

@implementation TISKInputEvent

- (void)reportInterKeyTiming:(id)timing previousEvent:(id)event
{
  timingCopy = timing;
  eventCopy = event;
  if (eventCopy)
  {
    v23.receiver = self;
    v23.super_class = TISKInputEvent;
    [(TISKEvent *)&v23 reportInterKeyTiming:timingCopy previousEvent:eventCopy];
    if ([eventCopy type] == 10 || (objc_msgSend(eventCopy, "tap"), (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (v9 = v8, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9, (isKindOfClass & 1) != 0))
    {
      [(TISKEvent *)self touchDownTimestamp];
      v12 = v11;
      [eventCopy touchDownTimestamp];
      v14 = v12 - v13;
      [(TISKEvent *)self touchDownTimestamp];
      v16 = v15;
      [eventCopy touchUpTimestamp];
      v18 = [MEMORY[0x277CCABB0] numberWithDouble:v16 - v17];
      [timingCopy addSample:v18 forKey:kTISKTouchUpDownMetric];

      type = [eventCopy type];
      if (type == 10)
      {
        v21 = &kTISK123ToAnyTapMetric;
      }

      else
      {
        if (!type)
        {
          v20 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
          [timingCopy addSample:v20 forKey:kTISKCharToAnyTapMetric];
        }

        v21 = &kTISKTouchDownDownMetric;
      }

      v22 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
      [timingCopy addSample:v22 forKey:*v21];
    }
  }
}

- (void)reportToSession:(id)session
{
  sessionCopy = session;
  [sessionCopy addSample:&unk_28400BF10 forKey:kTISKNumberOfTappedKeysCounter];
  [sessionCopy addToCounterForRateMetric:1 forKey:kTISKTapTypingSpeed];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(TISKEvent *)self tap];
  v6 = [v4 numberWithInteger:{objc_msgSend(v5, "numberOfDrags")}];
  [sessionCopy addSample:v6 forKey:kTISKNumberOfDragsCounter];

  if (!self->_ignoreTapData)
  {
    v7 = MEMORY[0x277CCABB0];
    [(TISKInputEvent *)self downUpTimeDelta];
    v8 = [v7 numberWithDouble:?];
    [sessionCopy addSample:v8 forKey:kTISKTouchDownUpMetric];

    [(TISKInputEvent *)self _computeErrorDistance];
    if (self->_canComputeErrorDistance)
    {
      v9 = MEMORY[0x277CCABB0];
      [(TISKInputEvent *)self touchDownErrorDistance];
      v10 = [v9 numberWithDouble:?];
      [sessionCopy addSample:v10 forKey:kTISKDownErrorDistance];

      v11 = MEMORY[0x277CCABB0];
      [(TISKInputEvent *)self touchUpErrorDistance];
      v12 = [v11 numberWithDouble:?];
      [sessionCopy addSample:v12 forKey:kTISKUpErrorDistance];
    }
  }
}

- (void)_computeErrorDistance
{
  input = [(TISKInputEvent *)self input];
  v19 = objc_msgSend_string(input);

  if (!v19)
  {
    input2 = [(TISKInputEvent *)self input];
    isBackspace = [input2 isBackspace];

    if ((isBackspace & 1) == 0)
    {
      self->_canComputeErrorDistance = 0;
      return;
    }

    v19 = @"delete";
  }

  v6 = [(TISKEvent *)self tap];
  [v6 getFrameForKey:v19];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  if (CGRectEqualToRect(v21, *MEMORY[0x277CBF398]))
  {
    self->_canComputeErrorDistance = 0;
  }

  else
  {
    v15 = [(TISKEvent *)self tap];
    [v15 downErrorDistance:{v8, v10, v12, v14}];
    self->_downErrorDistance = v16;

    v17 = [(TISKEvent *)self tap];
    [v17 upErrorDistance:{v8, v10, v12, v14}];
    self->_upErrorDistance = v18;
  }
}

- (double)downUpTimeDelta
{
  v3 = [(TISKEvent *)self tap];
  lastTouch = [v3 lastTouch];
  [lastTouch timestamp];
  v6 = v5;
  v7 = [(TISKEvent *)self tap];
  firstTouch = [v7 firstTouch];
  [firstTouch timestamp];
  v10 = v6 - v9;

  return v10;
}

- (BOOL)isMissingATouch
{
  v3 = [(TISKEvent *)self tap];
  if (v3)
  {
    v4 = [(TISKEvent *)self tap];
    isDownUpTap = [v4 isDownUpTap];

    v6 = isDownUpTap ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)init:(id)init type:(int)type emojiSearchMode:(BOOL)mode order:(int64_t)order
{
  modeCopy = mode;
  v8 = *&type;
  initCopy = init;
  v15.receiver = self;
  v15.super_class = TISKInputEvent;
  v12 = [(TISKEvent *)&v15 init:v8 emojiSearchMode:modeCopy order:order];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 7, init);
    v13[4] = 0xBFF0000000000000;
    v13[5] = 0xBFF0000000000000;
    *(v13 + 48) = 1;
    *(v13 + 49) = 0;
    [v13 setHasTimestamp:1];
  }

  return v13;
}

+ (id)makeInputEvent:(id)event emojiSearchMode:(BOOL)mode order:(int64_t)order wordSeparator:(id)separator accentedLanguage:(BOOL)language
{
  languageCopy = language;
  modeCopy = mode;
  eventCopy = event;
  separatorCopy = separator;
  if ([eventCopy isFlick] & 1) != 0 || (objc_msgSend(eventCopy, "isGesture") & 1) != 0 || (objc_msgSend(eventCopy, "isSynthesizedByAcceptingCandidate"))
  {
    v13 = off_27872D6A8;
    goto LABEL_5;
  }

  if ([eventCopy isPopupVariant])
  {
    v13 = off_27872D6B0;
    goto LABEL_5;
  }

  isBackspace = [eventCopy isBackspace];
  v13 = off_27872D6A0;
  if (isBackspace)
  {
    goto LABEL_5;
  }

  v17 = objc_msgSend_string(eventCopy);
  v18 = [v17 length];

  v13 = off_27872D6C8;
  if (v18 != 1)
  {
    goto LABEL_5;
  }

  v19 = objc_msgSend_string(eventCopy);
  letterCharacterSet = [MEMORY[0x277CCA900] letterCharacterSet];
  v21 = [v19 rangeOfCharacterFromSet:letterCharacterSet];

  if (v21 && languageCopy)
  {
    v22 = objc_msgSend_string(eventCopy);
    _firstChar = [v22 _firstChar];

    if (!KB::character_is_letter_modifier(_firstChar))
    {
      v13 = off_27872D698;
      if (_firstChar == 39 || _firstChar == 8217)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }

LABEL_21:
    v13 = off_27872D698;
    goto LABEL_5;
  }

  if (!v21)
  {
    goto LABEL_21;
  }

LABEL_19:
  v24 = objc_msgSend_string(eventCopy);
  if (objc_msgSend_isEqualToString_(v24))
  {

LABEL_23:
    v13 = off_27872D6C0;
    goto LABEL_5;
  }

  v25 = objc_msgSend_string(eventCopy);
  isEqualToString = objc_msgSend_isEqualToString_(v25);

  if (isEqualToString)
  {
    goto LABEL_23;
  }

  if ([eventCopy isBackspace])
  {
    v13 = off_27872D6A0;
  }

  else
  {
    v13 = off_27872D6C8;
  }

LABEL_5:
  v14 = [objc_alloc(*v13) init:eventCopy emojiSearchMode:modeCopy order:order];

  return v14;
}

@end