@interface TypistKeyboard
+ (void)typeStringOnHardwareKeyboard:(id)keyboard withLanguage:(id)language;
- (BOOL)_isPlaneControlKey:(id)key;
- (BOOL)dictationSupported;
- (BOOL)hasCandidate:(id)candidate;
- (BOOL)hasCandidate:(id)candidate inRange:(_NSRange)range;
- (BOOL)hasCandidates:(id)candidates;
- (BOOL)hasCandidates:(id)candidates inRange:(_NSRange)range;
- (BOOL)isAutoshiftedToCapitalPlane:(id)plane;
- (BOOL)isAvailableFlickOnCurrentPlane:(id)plane withDirection:(id)direction;
- (BOOL)isAvailableGestureOnCurrentPlane:(id)plane withDirection:(id)direction;
- (BOOL)isAvailableKeyOnCurrentPlane:(id)plane;
- (BOOL)isAvailablePopoverOnCurrentPlane:(id)plane;
- (BOOL)isSwitchedToCapitalPlane:(id)plane previous:(id)previous currentPlane:(id)currentPlane context:(id)context;
- (CGAffineTransform)_determineTransformationInFrame:(SEL)frame segmentStart:(CGRect)start totalSegmentWidth:(double)width scale:(unint64_t)scale characterHeight:(double)height characterWidth:(double)characterWidth dimensions:(double)dimensions isLatex:(id)self0;
- (CGPoint)_determinePointBetween:(CGPoint)between nextPoint:(CGPoint)point;
- (CGPoint)_guardAgainstOffScreenPoint:(CGPoint)point;
- (CGPoint)calculateCoordinatesForFlickGesture:(CGPoint)gesture direction:(id)direction offset:(float)offset;
- (CGPoint)centerOfKey:(CGPoint)key withOffset:(CGPoint)offset;
- (CGRect)_determineHandwritingBound;
- (TypistKeyboard)initWithCoder:(id)coder;
- (TypistKeyboard)initWithHardwareKeyboard:(id)keyboard;
- (double)_getScaleInFrame:(CGRect)frame isPencil:(BOOL)pencil dimensions:(id)dimensions;
- (id)_character_set_pattern_from_string:(id)_character_set_pattern_from_string;
- (id)_constructSwitchPath:(id)path toPlane:(id)plane fromPlane:(id)fromPlane;
- (id)_convertCollationCharacters:(id)characters;
- (id)_dimensionsForLatex:(id)latex formula:(id)formula withPathMap:(id)map regionCode:(id)code isCursive:(BOOL)cursive cumulativeWidth:(unint64_t)width totalWidth:(unint64_t)totalWidth primaryTextDirection:(unint64_t)self0 rotationBias:(double)self1 characterByCharacterPaths:(id)self2;
- (id)_dimensionsForText:(id)text withPathMap:(id)map regionCode:(id)code isCursive:(BOOL)cursive cumulativeWidth:(unint64_t *)width totalWidth:(unint64_t)totalWidth segmentTextDirection:(unint64_t)direction primaryTextDirection:(unint64_t)self0 rotationBias:(double)self1 characterByCharacterPaths:(id)self2;
- (id)_generateArgumentList:(id)list;
- (id)_generateHandwritingStream:(id)stream inFrame:(CGRect)frame isPencil:(BOOL)pencil dimensions:(id)dimensions isLatex:(BOOL)latex;
- (id)_sanitizedStringForAutoShiftCheck:(id)check;
- (id)_setupAutoShiftRegex;
- (id)addKeyboardPopupKeys:(id)keys inPlane:(id)plane addTo:(id)to keyplaneKeycaps:(id)keycaps;
- (id)attemptToFindKeystrokeAsSecondaryDisplay:(id)display;
- (id)changeKeyNameToGenericCharacter:(id)character;
- (id)createAutoshiftRegularExpressionWithDelimitingCharacters:(id)characters sentenceTrailingCharacters:(id)trailingCharacters sentencePrefixingCharacters:(id)prefixingCharacters;
- (id)findKey:(id)key inPlane:(id)plane;
- (id)findKeyInOtherPlanes:(id)planes currentPlane:(id)plane;
- (id)findKeyOnAnyPlane:(id)plane;
- (id)findKeyOnCurrentPlane:(id)plane;
- (id)generateHandwritingStream:(id)stream inFrame:(CGRect)frame isPencil:(BOOL)pencil rotationBias:(double)bias isCursive:(BOOL)cursive;
- (id)generateKeyplaneSwitchTable:(id)table;
- (id)generateKeyplaneSwitchTableFor10Key:(id)key;
- (id)generateKeystrokeStream:(id)stream;
- (id)generatePencilGestureStream:(int)stream gestureStyle:(int)style inFrame:(CGRect)frame;
- (id)generateSwipeStream:(id)stream;
- (id)getActionForKeystroke:(id)keystroke fromKeyPlane:(id)plane;
- (id)getAllCandidates;
- (id)getAlternatePlanesForDefaultPlane;
- (id)getAlternativeKeyPlaneName:(id)name;
- (id)getExpectedPlaneNameForKey:(id)key currentPlane:(id)plane;
- (id)getShiftPlaneForAlternatePlane;
- (id)getShiftPlaneForDefaultPlane;
- (id)getShiftedKeyPlaneName:(id)name;
- (id)getVisibleCandidates;
- (id)init:(id)init options:(id)options;
- (id)init:(id)init options:(id)options locale:(id)locale;
- (id)keysDataForInputMode:(id)mode andFileName:(id)name;
- (id)setupKeyboardInfo:(id)info options:(id)options;
- (id)splitKeystrokeStreamByWord:(id)word originalText:(id)text;
- (id)switchToPlane:(id)plane fromPlane:(id)fromPlane;
- (int64_t)commitCandidate:(id)candidate;
- (int64_t)commitCandidateAtIndex:(int64_t)index;
- (void)_bailWithError:(id)error completion:(id)completion;
- (void)_setKeyboardUserPreferences:(id)preferences;
- (void)activate:(BOOL)activate;
- (void)activateWithKeyboardList:(id)list appendKeyboard:(BOOL)keyboard;
- (void)attachHardwareKeyboard:(id)keyboard;
- (void)attachHardwareKeyboardWithCountryCode:(id)code;
- (void)dealloc;
- (void)detachHardwareKeyboard;
- (void)dragFromKey:(id)key toKey:(id)toKey completion:(id)completion;
- (void)dragPopoverKey:(id)key completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)flickKey:(id)key withDirection:(id)direction completion:(id)completion;
- (void)moveFloatingKeyboardToPosition:(CGPoint)position;
- (void)preprocessing;
- (void)pressAndHoldHardwareKeys:(id)keys forDuration:(double)duration withValidation:(id)validation validateAfter:(double)after;
- (void)pressKeycode:(unsigned __int16)keycode;
- (void)setFloatingKeyboard:(BOOL)keyboard;
- (void)setOneHandedPosition:(id)position;
- (void)setPressDuration:(id)duration;
- (void)setTapStyleNoise:(id)noise;
- (void)setTargetApplicationBundleIdentifier:(id)identifier;
- (void)setTouchMajorRadius:(id)radius;
- (void)setTypeInterval:(id)interval;
- (void)setupSentenceBoundryStrings;
- (void)swipeGestureKey:(id)key withDirection:(id)direction completion:(id)completion;
- (void)swipeGestureOrFlickKey:(id)key withDirection:(id)direction completion:(id)completion;
- (void)swipeString:(id)string;
- (void)switchKeyPlaneOnActiveKeyboard:(id)keyboard;
- (void)tapGlobeKey;
- (void)tapKey:(id)key tapCount:(unint64_t)count completion:(id)completion;
- (void)tapKey:(id)key tapCount:(unint64_t)count overriddenTypeInterval:(id)interval completion:(id)completion;
- (void)tapMoreKey;
- (void)toggleCapsLock;
- (void)typeKeystrokeStream:(id)stream;
- (void)typeKeystrokeStream:(id)stream completion:(id)completion;
- (void)typeKeystrokeStreamWithPredictive:(id)predictive originalText:(id)text completion:(id)completion;
- (void)typeString:(id)string;
- (void)typeString:(id)string completion:(id)completion;
- (void)typeString:(id)string withCommit:(id)commit;
- (void)typeStringWithHardwareKeyboard:(id)keyboard;
- (void)typeWordKeystrokeWithPredictive:(id)predictive atIndex:(int64_t)index completion:(id)completion;
- (void)typeWordKeystrokes:(id)keystrokes expectedWord:(id)word atIndex:(int64_t)index completion:(id)completion;
- (void)writePencilGesture:(int)gesture inStyle:(int)style inFrame:(CGRect)frame;
- (void)writeString:(id)string inFrame:(CGRect)frame rotationBias:(double)bias isCursive:(BOOL)cursive;
- (void)writeString:(id)string inFrame:(CGRect)frame rotationBias:(double)bias isCursive:(BOOL)cursive digitizer:(int)digitizer;
@end

@implementation TypistKeyboard

- (void)setPressDuration:(id)duration
{
  durationCopy = duration;
  if (!durationCopy || [durationCopy compare:&unk_288029510] == -1)
  {
    pressDuration = [(TypistKeyboard *)self pressDuration];

    if (pressDuration)
    {
      pressDuration2 = [(TypistKeyboard *)self pressDuration];
      TYLogl(OS_LOG_TYPE_ERROR, @"Invalid pressDuration was provided: %@. The existing value of (%@) will continue to be used!", v11, v12, v13, v14, v15, v16, durationCopy, pressDuration2);
    }

    else
    {
      pressDuration = self->_pressDuration;
      self->_pressDuration = &unk_288029520;

      TYLogl(OS_LOG_TYPE_ERROR, @"Invalid pressDuration was provided: %@. The default value of %@ will be used instead.", v18, v19, v20, v21, v22, v23, durationCopy, &unk_288029520);
    }
  }

  else
  {
    hardwareKeyboard = [(TypistKeyboard *)self hardwareKeyboard];

    if (hardwareKeyboard)
    {
      [durationCopy doubleValue];
      v7 = v6;
      hardwareKeyboard2 = [(TypistKeyboard *)self hardwareKeyboard];
      [hardwareKeyboard2 setPressDuration:v7];
    }

    objc_storeStrong(&self->_pressDuration, duration);
  }
}

- (void)setTypeInterval:(id)interval
{
  intervalCopy = interval;
  if (!intervalCopy || [intervalCopy compare:&unk_288029510] == -1)
  {
    typeInterval = [(TypistKeyboard *)self typeInterval];

    if (typeInterval)
    {
      typeInterval2 = [(TypistKeyboard *)self typeInterval];
      TYLogl(OS_LOG_TYPE_ERROR, @"Invalid typeInterval was provided: %@. The existing value of (%@) will continue to be used!", v11, v12, v13, v14, v15, v16, intervalCopy, typeInterval2);
    }

    else
    {
      typeInterval = self->_typeInterval;
      self->_typeInterval = &unk_288029520;

      TYLogl(OS_LOG_TYPE_ERROR, @"Invalid typeInterval was provided: %@. The default value of %@ will be used instead.", v18, v19, v20, v21, v22, v23, intervalCopy, &unk_288029520);
    }
  }

  else
  {
    hardwareKeyboard = [(TypistKeyboard *)self hardwareKeyboard];

    if (hardwareKeyboard)
    {
      [intervalCopy doubleValue];
      v7 = v6;
      hardwareKeyboard2 = [(TypistKeyboard *)self hardwareKeyboard];
      [hardwareKeyboard2 setTypeInterval:v7];
    }

    objc_storeStrong(&self->_typeInterval, interval);
  }
}

- (void)setTouchMajorRadius:(id)radius
{
  radiusCopy = radius;
  [radiusCopy doubleValue];
  if (v11 <= 0.0)
  {
    TYLogl(OS_LOG_TYPE_ERROR, @"Invalid touch radius was provided: %@. Ignoring.", v5, v6, v7, v8, v9, v10, radiusCopy);
  }

  else
  {
    objc_storeStrong(&self->_touchMajorRadius, radius);
    [TypistKeyboardUtilities setTapTouchRadius:radiusCopy];
  }
}

- (void)dealloc
{
  +[TypistKeyboardUtilities tearDownRecapInlinePlayer];
  [TypistKeyboardUtilities setTapTouchRadius:0];
  v3.receiver = self;
  v3.super_class = TypistKeyboard;
  [(TypistKeyboard *)&v3 dealloc];
}

- (id)init:(id)init options:(id)options
{
  initCopy = init;
  optionsCopy = options;
  if ([initCopy hasPrefix:@"fr"])
  {
    v8 = TypistKeyboardFrench;
  }

  else if ([initCopy hasPrefix:@"fa"])
  {
    v8 = TypistKeyboardFarsi;
  }

  else if ([initCopy hasPrefix:@"ja_JP"])
  {
    v8 = TypistKeyboardJapanese;
  }

  else if (([initCopy hasPrefix:@"zh_Han"] & 1) != 0 || objc_msgSend(initCopy, "hasPrefix:", @"yue_Hant"))
  {
    v8 = TypistKeyboardChinese;
  }

  else if ([initCopy hasPrefix:@"ko_KR"])
  {
    v8 = TypistKeyboardKorean;
  }

  else if ([initCopy hasPrefix:@"chr"])
  {
    v8 = TypistKeyboardCherokee;
  }

  else if ([initCopy hasPrefix:@"cs_CZ"])
  {
    v8 = TypistKeyboardCzech;
  }

  else if ([initCopy hasPrefix:@"haw"])
  {
    v8 = TypistKeyboardHawaiian;
  }

  else if ([initCopy hasPrefix:@"el_GR"])
  {
    v8 = TypistKeyboardGreek;
  }

  else if ([initCopy hasPrefix:@"lut"])
  {
    v8 = TypistKeyboardLushootseed;
  }

  else if ([initCopy hasPrefix:@"isc"])
  {
    v8 = TypistKeyboardIskonawa;
  }

  else if ([initCopy hasPrefix:@"shp"])
  {
    v8 = TypistKeyboardShipiboKonibo;
  }

  else if (([initCopy hasPrefix:@"bo"] & 1) != 0 || objc_msgSend(initCopy, "hasPrefix:", @"dz"))
  {
    v8 = TypistKeyboardTibetan;
  }

  else if ([initCopy hasPrefix:@"ta"] && (objc_msgSend(initCopy, "hasPrefix:", @"ta@sw=Tamil-QWERTY") & 1) == 0)
  {
    v8 = TypistKeyboardTamil;
  }

  else if ([initCopy hasPrefix:@"pa@sw=Punjabi-Phonetic"])
  {
    v8 = TypistKeyboardPunjabi;
  }

  else if ([initCopy hasPrefix:@"si"])
  {
    v8 = TypistKeyboardSinhala;
  }

  else if ([initCopy hasPrefix:@"ug"])
  {
    v8 = TypistKeyboardUyghur;
  }

  else if ([initCopy hasPrefix:@"am"])
  {
    v8 = TypistKeyboardAmharic;
  }

  else if ([initCopy hasPrefix:@"my@sw=Burmese"])
  {
    v8 = TypistKeyboardBurmese;
  }

  else if ([initCopy hasPrefix:@"th_TH"])
  {
    v8 = TypistKeyboardThai;
  }

  else
  {
    if (![initCopy containsString:@"emoji"])
    {
      v9 = [[TypistKeyboard alloc] init:initCopy options:optionsCopy locale:0];
      goto LABEL_11;
    }

    v8 = TypistKeyboardEmoji;
  }

  v9 = [[v8 alloc] init:initCopy options:optionsCopy];
LABEL_11:
  v10 = v9;

  return v10;
}

- (id)init:(id)init options:(id)options locale:(id)locale
{
  initCopy = init;
  optionsCopy = options;
  v42.receiver = self;
  v42.super_class = TypistKeyboard;
  v9 = [(TypistKeyboard *)&v42 init];
  if (!v9)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    TYLog(@"Initializing TypistKeyboard: [%@]", v12, v13, v14, v15, v16, v17, v18, v11);

    v19 = [optionsCopy objectForKeyedSubscript:@"forceInProcessDataClient"];
    if (v19)
    {
      v20 = [optionsCopy objectForKeyedSubscript:@"forceInProcessDataClient"];
      v21 = [v20 BOOLValue] ^ 1;
    }

    else
    {
      v21 = 1;
    }

    v22 = [optionsCopy objectForKeyedSubscript:@"targetApplication"];
    v23 = v22;
    if (v21)
    {
      if (v22)
      {
        [(TypistKeyboard *)v9 setTargetApplicationBundleIdentifier:v22];
        getTargetApplicationBundleIdentifier = [(TypistKeyboard *)v9 getTargetApplicationBundleIdentifier];
        TYLog(@"Setting keyboard %@ of target application: %@", v25, v26, v27, v28, v29, v30, v31, initCopy, getTargetApplicationBundleIdentifier);
      }
    }

    else
    {
      [TypistKeyboardData setForceLegacyImplementation:1];
    }
  }

  v32 = [(TypistKeyboard *)v9 setupKeyboardInfo:initCopy options:optionsCopy];
  if (v32)
  {
    v39 = v32;
    TYLogl(OS_LOG_TYPE_ERROR, @"%@", v33, v34, v35, v36, v37, v38, v32);

    v40 = 0;
  }

  else
  {
LABEL_13:
    v40 = v9;
  }

  return v40;
}

- (void)setupSentenceBoundryStrings
{
  getSentenceBoundaryStrings = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getSentenceBoundaryStrings];
  v3 = [getSentenceBoundaryStrings objectForKeyedSubscript:@"sentenceTrailingCharacters"];
  [(TypistKeyboard *)self setSentenceTrailingCharacters:v3];

  v4 = [getSentenceBoundaryStrings objectForKeyedSubscript:@"sentenceDelimitingCharacters"];
  [(TypistKeyboard *)self setSentenceDelimitingCharacters:v4];

  v5 = [getSentenceBoundaryStrings objectForKeyedSubscript:@"sentencePrefixingCharacters"];
  [(TypistKeyboard *)self setSentencePrefixingCharacters:v5];
}

- (id)_setupAutoShiftRegex
{
  sentenceDelimitingCharacters = [(TypistKeyboard *)self sentenceDelimitingCharacters];
  sentenceTrailingCharacters = [(TypistKeyboard *)self sentenceTrailingCharacters];
  sentencePrefixingCharacters = [(TypistKeyboard *)self sentencePrefixingCharacters];
  v6 = [(TypistKeyboard *)self createAutoshiftRegularExpressionWithDelimitingCharacters:sentenceDelimitingCharacters sentenceTrailingCharacters:sentenceTrailingCharacters sentencePrefixingCharacters:sentencePrefixingCharacters];

  return v6;
}

- (void)setTapStyleNoise:(id)noise
{
  noiseCopy = noise;
  if (noiseCopy)
  {
    v6 = noiseCopy;
    if ([noiseCopy caseInsensitiveCompare:@"anyInRect"])
    {
      if ([v6 caseInsensitiveCompare:@"normal"])
      {
        if ([v6 caseInsensitiveCompare:@"uniform"])
        {
          if (![v6 caseInsensitiveCompare:@"none"])
          {
            goto LABEL_11;
          }

          v5 = 0;
        }

        else
        {
          v5 = 2;
        }
      }

      else
      {
        v5 = 3;
      }
    }

    else
    {
      v5 = 1;
    }

    [(TypistKeyboard *)self setTapStyle:v5];
  }

LABEL_11:

  MEMORY[0x2821F96F8]();
}

- (void)_setKeyboardUserPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v4 = [preferencesCopy objectForKeyedSubscript:@"typeInterval"];

  if (v4)
  {
    v5 = [preferencesCopy objectForKeyedSubscript:@"typeInterval"];
    [(TypistKeyboard *)self setTypeInterval:v5];
  }

  else
  {
    [(TypistKeyboard *)self setTypeInterval:&unk_288029520];
  }

  v6 = [preferencesCopy objectForKeyedSubscript:@"touchMajorRadius"];

  if (v6)
  {
    v7 = [preferencesCopy objectForKeyedSubscript:@"touchMajorRadius"];
    [(TypistKeyboard *)self setTouchMajorRadius:v7];
  }

  v8 = [preferencesCopy objectForKeyedSubscript:@"pressDuration"];

  if (v8)
  {
    v9 = [preferencesCopy objectForKeyedSubscript:@"pressDuration"];
    [(TypistKeyboard *)self setPressDuration:v9];
  }

  else
  {
    [(TypistKeyboard *)self setPressDuration:&unk_288029520];
  }

  v10 = [preferencesCopy objectForKeyedSubscript:@"fastTyping"];
  if (v10)
  {
    v11 = [preferencesCopy objectForKeyedSubscript:@"fastTyping"];
    -[TypistKeyboard setFastTyping:](self, "setFastTyping:", [v11 BOOLValue]);
  }

  else
  {
    [(TypistKeyboard *)self setFastTyping:0];
  }

  v12 = [preferencesCopy objectForKeyedSubscript:@"flickTyping"];
  if (v12)
  {
    v13 = [preferencesCopy objectForKeyedSubscript:@"flickTyping"];
    -[TypistKeyboard setFlickTyping:](self, "setFlickTyping:", [v13 BOOLValue]);
  }

  else
  {
    [(TypistKeyboard *)self setFlickTyping:0];
  }

  v14 = [preferencesCopy objectForKeyedSubscript:@"usePredictionBar"];
  if (v14)
  {
    v15 = [preferencesCopy objectForKeyedSubscript:@"usePredictionBar"];
    -[TypistKeyboard setUsePredictionBar:](self, "setUsePredictionBar:", [v15 BOOLValue]);
  }

  else
  {
    [(TypistKeyboard *)self setUsePredictionBar:0];
  }

  v16 = [preferencesCopy objectForKeyedSubscript:@"prefersPopoverKeys"];
  if (v16)
  {
    v17 = [preferencesCopy objectForKeyedSubscript:@"prefersPopoverKeys"];
    -[TypistKeyboard setPrefersPopoverKeys:](self, "setPrefersPopoverKeys:", [v17 BOOLValue]);
  }

  else
  {
    [(TypistKeyboard *)self setPrefersPopoverKeys:1];
  }

  v18 = [preferencesCopy objectForKeyedSubscript:@"FORCE_SPACE"];
  if (v18)
  {
    v19 = [preferencesCopy objectForKeyedSubscript:@"FORCE_SPACE"];
    -[TypistKeyboard setSwipeForceSpace:](self, "setSwipeForceSpace:", [v19 BOOLValue]);
  }

  else
  {
    [(TypistKeyboard *)self setSwipeForceSpace:0];
  }

  v20 = [preferencesCopy objectForKeyedSubscript:@"ALPHA"];
  if (v20)
  {
    v21 = [preferencesCopy objectForKeyedSubscript:@"ALPHA"];
    v22 = [TypistKeyboardUtilities validateProbability:v21];
    [(TypistKeyboard *)self setSwipeAlpha:v22];
  }

  else
  {
    [(TypistKeyboard *)self setSwipeAlpha:&unk_288029530];
  }

  v23 = [preferencesCopy objectForKeyedSubscript:@"SIGMA"];
  if (v23)
  {
    v24 = [preferencesCopy objectForKeyedSubscript:@"SIGMA"];
    [v24 doubleValue];
    if (v25 <= 0.0)
    {
      [(TypistKeyboard *)self setSwipeSigma:&unk_2880299A0];
    }

    else
    {
      v26 = [preferencesCopy objectForKeyedSubscript:@"SIGMA"];
      [(TypistKeyboard *)self setSwipeSigma:v26];
    }
  }

  else
  {
    [(TypistKeyboard *)self setSwipeSigma:&unk_2880299A0];
  }

  v27 = [preferencesCopy objectForKeyedSubscript:@"P_PIVOT"];
  if (v27)
  {
    v28 = [preferencesCopy objectForKeyedSubscript:@"P_PIVOT"];
    v29 = [TypistKeyboardUtilities validateProbability:v28];
    [(TypistKeyboard *)self setSwipePivotProbability:v29];
  }

  else
  {
    [(TypistKeyboard *)self setSwipePivotProbability:&unk_2880299A0];
  }

  v30 = [preferencesCopy objectForKeyedSubscript:@"tapNoiseStyle"];
  [(TypistKeyboard *)self setTapStyleNoise:v30];

  v31 = [preferencesCopy objectForKeyedSubscript:@"tapNoiseSigma"];
  v32 = v31;
  if (v31 && ([v31 doubleValue], v33 > 0.0))
  {
    v34 = v32;
  }

  else
  {
    v34 = &unk_2880299A0;
  }

  [(TypistKeyboard *)self setTapSigma:v34];
  v35 = [preferencesCopy objectForKeyedSubscript:@"tapNoiseBounds"];
  v36 = v35;
  if (v35 && ([v35 doubleValue], v37 > 0.0))
  {
    v38 = v36;
  }

  else
  {
    v38 = &unk_2880299A0;
  }

  [(TypistKeyboard *)self setTapBounds:v38];
  v39 = [preferencesCopy objectForKeyedSubscript:@"P_ERRANT"];
  if (v39)
  {
    v40 = [preferencesCopy objectForKeyedSubscript:@"P_ERRANT"];
    v41 = [TypistKeyboardUtilities validateProbability:v40];
    [(TypistKeyboard *)self setSwipeErrantProbability:v41];
  }

  else
  {
    [(TypistKeyboard *)self setSwipeErrantProbability:&unk_2880299A0];
  }

  v42 = [preferencesCopy objectForKeyedSubscript:@"SIGMA_PIVOT"];
  if (v42)
  {
    v43 = [preferencesCopy objectForKeyedSubscript:@"SIGMA_PIVOT"];
    [v43 doubleValue];
    if (v44 <= 0.0)
    {
      [(TypistKeyboard *)self setSwipeErrantSigma:&unk_2880299A0];
    }

    else
    {
      v45 = [preferencesCopy objectForKeyedSubscript:@"SIGMA_PIVOT"];
      [(TypistKeyboard *)self setSwipeErrantSigma:v45];
    }
  }

  else
  {
    [(TypistKeyboard *)self setSwipeErrantSigma:&unk_2880299A0];
  }

  v46 = [preferencesCopy objectForKeyedSubscript:@"P_CONVEX"];
  if (v46)
  {
    v47 = [preferencesCopy objectForKeyedSubscript:@"P_CONVEX"];
    v48 = [TypistKeyboardUtilities validateProbability:v47];
    [(TypistKeyboard *)self setSwipeConvexProbability:v48];
  }

  else
  {
    [(TypistKeyboard *)self setSwipeConvexProbability:&unk_2880299A0];
  }

  v49 = [preferencesCopy objectForKeyedSubscript:@"SIGMA_CONVEX"];
  if (v49)
  {
    v50 = [preferencesCopy objectForKeyedSubscript:@"SIGMA_CONVEX"];
    [v50 doubleValue];
    if (v51 <= 0.0)
    {
      [(TypistKeyboard *)self setSwipeConvexSigma:&unk_2880299A0];
    }

    else
    {
      v52 = [preferencesCopy objectForKeyedSubscript:@"SIGMA_CONVEX"];
      [(TypistKeyboard *)self setSwipeConvexSigma:v52];
    }
  }

  else
  {
    [(TypistKeyboard *)self setSwipeConvexSigma:&unk_2880299A0];
  }
}

- (id)setupKeyboardInfo:(id)info options:(id)options
{
  v198[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  optionsCopy = options;
  v8 = infoCopy;
  v9 = [v8 rangeOfString:@";ml="];
  v10 = v8;
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v8 substringToIndex:v9];
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"^(%@){1}(hw=.+)?$", v10];;
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF MATCHES %@", v11];
  v13 = 0x279DF4000uLL;
  v14 = +[TypistKeyboardUtilities generateKeyboardList];
  v15 = v14;
  if (!v8 || ([v14 filteredArrayUsingPredicate:v12], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count"), v16, v18 = v17 == 1, v13 = 0x279DF4000, !v18))
  {
    v40 = MEMORY[0x277CCACA8];
    v41 = [*(v13 + 560) getMobileGestalt:@"HWModelStr"];
    v42 = [v40 stringWithFormat:@"CRITICAL WARNING: The keyboard ID (%@) is not valid on this device (%@)", v8, v41];

    v43 = MEMORY[0x277CCA9B8];
    v197 = *MEMORY[0x277CCA470];
    v198[0] = v42;
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v198 forKeys:&v197 count:1];
    v45 = [v43 errorWithDomain:@"TypistUnsupportedKeyboardIDError" code:2 userInfo:v44];

    v46 = v45;
    goto LABEL_33;
  }

  [(TypistKeyboard *)self setKeyboardID:v8];
  [(TypistKeyboard *)self setIsCapsLockedState:0];
  [(TypistKeyboard *)self setUsePopupKeys:1];
  v19 = [v8 componentsSeparatedByString:@"@"];
  v20 = v19;
  v119 = v15;
  if (v19)
  {
    v21 = [v19 objectAtIndexedSubscript:0];
    [(TypistKeyboard *)self setLayoutName:v21];

    layoutName = [(TypistKeyboard *)self layoutName];
    v187 = [layoutName containsString:@"_"];

    layoutName2 = [(TypistKeyboard *)self layoutName];
    [layoutName2 componentsSeparatedByString:@"_"];
    v25 = v24 = v20;
    [v25 objectAtIndexedSubscript:0];
    v27 = v26 = self;
    [(TypistKeyboard *)v26 setLanguageID:v27];

    self = v26;
    v20 = v24;

    layoutName3 = [(TypistKeyboard *)v26 layoutName];
    v29 = [layoutName3 componentsSeparatedByString:@"_"];
    v30 = [v29 objectAtIndexedSubscript:v187];
    [(TypistKeyboard *)self setRegionCode:v30];
  }

  keyboardID = [(TypistKeyboard *)self keyboardID];
  v32 = [keyboardID componentsSeparatedByString:@"sw="];
  v33 = [v32 objectAtIndexedSubscript:1];

  v115 = v33;
  v34 = [v33 componentsSeparatedByString:@""];;
  v35 = [v34 objectAtIndexedSubscript:0];
  [(TypistKeyboard *)self setKeyboardSW:v35];

  optionsCopy = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData setTIPreferences:"setTIPreferences:", optionsCopy];
  optionsCopy2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData setKeyboardUISettings:"setKeyboardUISettings:", optionsCopy];
  [(TypistKeyboard *)self _setKeyboardUserPreferences:optionsCopy];
  v37 = *MEMORY[0x277D6F928];
  v175 = optionsCopy;
  v38 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D6F928]];
  LODWORD(optionsCopy) = [v38 BOOLValue];

  v176 = v8;
  v118 = v11;
  v117 = v12;
  v116 = v20;
  selfCopy = self;
  if (optionsCopy)
  {
    v39 = [TypistCandidateBar initWithTypistKeyboard:self];
    [(TypistKeyboard *)self setCandidatebar:v39];
  }

  else
  {
    [(TypistKeyboard *)self setCandidatebar:0];
  }

  v170 = [optionsCopy objectForKeyedSubscript:@"keyboardList"];
  v168 = [optionsCopy objectForKeyedSubscript:@"targetApplication"];
  v172 = [optionsCopy objectForKeyedSubscript:@"appendKeyboard"];
  v163 = [optionsCopy objectForKeyedSubscript:@"perfConditions"];
  v161 = [optionsCopy objectForKeyedSubscript:@"preprocessing"];
  v114 = *MEMORY[0x277D6F7C8];
  v159 = [optionsCopy objectForKeyedSubscript:?];
  v157 = [optionsCopy objectForKeyedSubscript:@"typeInterval"];
  v155 = [optionsCopy objectForKeyedSubscript:@"touchMajorRadius"];
  v153 = [optionsCopy objectForKeyedSubscript:@"fastTyping"];
  v113 = *MEMORY[0x277D6FA70];
  v151 = [optionsCopy objectForKeyedSubscript:?];
  v112 = *MEMORY[0x277D6FD18];
  v149 = [optionsCopy objectForKeyedSubscript:?];
  v147 = [optionsCopy objectForKeyedSubscript:@"flickTyping"];
  v141 = [optionsCopy objectForKeyedSubscript:@"prefersPopoverKeys"];
  v181 = *MEMORY[0x277D6F7B8];
  v139 = [optionsCopy objectForKeyedSubscript:?];
  v180 = *MEMORY[0x277D6F7C0];
  v145 = [optionsCopy objectForKeyedSubscript:?];
  v179 = *MEMORY[0x277D6F820];
  v137 = [optionsCopy objectForKeyedSubscript:?];
  v178 = *MEMORY[0x277D6F920];
  v135 = [optionsCopy objectForKeyedSubscript:?];
  v177 = *MEMORY[0x277D6F818];
  v133 = [optionsCopy objectForKeyedSubscript:?];
  v131 = [optionsCopy objectForKeyedSubscript:v37];
  v188 = *MEMORY[0x277D6F630];
  v129 = [optionsCopy objectForKeyedSubscript:?];
  v185 = *MEMORY[0x277D6FA88];
  v143 = [optionsCopy objectForKeyedSubscript:?];
  v183 = *MEMORY[0x277D6FA78];
  v125 = [optionsCopy objectForKeyedSubscript:?];
  v184 = *MEMORY[0x277D76AA8];
  v123 = [optionsCopy objectForKeyedSubscript:?];
  v165 = *MEMORY[0x277D6F7A0];
  v127 = [optionsCopy objectForKeyedSubscript:?];
  v111 = [optionsCopy objectForKeyedSubscript:@"LowerCaseKeyboard"];
  v110 = [optionsCopy objectForKeyedSubscript:@"usePredictionBar"];
  v109 = [optionsCopy objectForKeyedSubscript:@"dictation"];
  v166 = *MEMORY[0x277D6FA80];
  v122 = [optionsCopy objectForKeyedSubscript:?];
  v167 = *MEMORY[0x277D6F640];
  v108 = [optionsCopy objectForKeyedSubscript:?];
  v121 = [optionsCopy objectForKeyedSubscript:@"tapNoiseStyle"];
  v107 = [optionsCopy objectForKeyedSubscript:@"FORCE_SPACE"];
  v106 = [optionsCopy objectForKeyedSubscript:@"ALPHA"];
  v105 = [optionsCopy objectForKeyedSubscript:@"SIGMA"];
  v103 = [optionsCopy objectForKeyedSubscript:@"P_PIVOT"];
  v102 = [optionsCopy objectForKeyedSubscript:@"P_ERRANT"];
  v182 = v37;
  v101 = [optionsCopy objectForKeyedSubscript:@"SIGMA_PIVOT"];
  v104 = [optionsCopy objectForKeyedSubscript:@"P_CONVEX"];
  v100 = [optionsCopy objectForKeyedSubscript:@"SIGMA_CONVEX"];
  TYLog(@"######## SPECIFIED KEYBOARD OPTIONS FOR %@\n%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@;%@=%@", v47, v48, v49, v50, v51, v52, v53, v8, @"keyboardList", v170, @"targetApplication", v168, @"appendKeyboard", v172, @"perfConditions", v163, @"preprocessing", v161, v114, v159, @"typeInterval", v157, @"touchMajorRadius", v155, @"fastTyping", v153, v113, v151, v112, v149, @"flickTyping", v147, @"prefersPopoverKeys", v141, v181, v139, v180, v145, v179, v137, v178, v135, v177, v133, v37, v131, v188, v129, v185, v143, v183, v125, v184, v123, v165, v127, @"LowerCaseKeyboard", v111, @"usePredictionBar", v110, @"dictation", v109);

  v173 = [v175 objectForKeyedSubscript:v181];
  bOOLValue = [v173 BOOLValue];
  v171 = [v175 objectForKeyedSubscript:v180];
  bOOLValue2 = [v171 BOOLValue];
  v169 = [v175 objectForKeyedSubscript:v179];
  bOOLValue3 = [v169 BOOLValue];
  v164 = [v175 objectForKeyedSubscript:v178];
  bOOLValue4 = [v164 BOOLValue];
  v162 = [v175 objectForKeyedSubscript:v177];
  bOOLValue5 = [v162 BOOLValue];
  v158 = [v175 objectForKeyedSubscript:v37];
  bOOLValue6 = [v158 BOOLValue];
  v154 = [v175 objectForKeyedSubscript:v188];
  bOOLValue7 = [v154 BOOLValue];
  v150 = [v175 objectForKeyedSubscript:v185];
  bOOLValue8 = [v150 BOOLValue];
  v146 = [v175 objectForKeyedSubscript:v183];
  bOOLValue9 = [v146 BOOLValue];
  v142 = [optionsCopy2 objectForKeyedSubscript:v184];
  bOOLValue10 = [v142 BOOLValue];
  v138 = [v175 objectForKeyedSubscript:v165];
  bOOLValue11 = [v138 BOOLValue];
  v134 = [optionsCopy2 objectForKeyedSubscript:@"LowerCaseKeyboard"];
  bOOLValue12 = [v134 BOOLValue];
  v130 = [optionsCopy2 objectForKeyedSubscript:@"dictation"];
  bOOLValue13 = [v130 BOOLValue];
  v56 = [v175 objectForKeyedSubscript:v166];
  bOOLValue14 = [v56 BOOLValue];
  v58 = [v175 objectForKeyedSubscript:v167];
  bOOLValue15 = [v58 BOOLValue];
  TYLog(@"######## ACTUAL KEYBOARD AND ACCESSIBILITY SETTINGS ON SYSTEM\n%@=%d;%@=%d;%@=%d;%@=%d;%@=%d;%@=%d;%@=%d;%@=%d;%@=%d;%@=%d;%@=%d;%@=%d;%@=%d; \n########", v60, v61, v62, v63, v64, v65, v66, v181, bOOLValue, v180, bOOLValue2, v179, bOOLValue3, v178, bOOLValue4, v177, bOOLValue5, v182, bOOLValue6, v188, bOOLValue7, v185, bOOLValue8, v183, bOOLValue9, v184, bOOLValue10, v165, bOOLValue11, @"LowerCaseKeyboard", bOOLValue12, @"dictation", bOOLValue13, v166, bOOLValue14, v167, bOOLValue15);

  v67 = [optionsCopy objectForKeyedSubscript:@"appendKeyboard"];
  bOOLValue16 = [v67 BOOLValue];

  keyboardID2 = [(TypistKeyboard *)self keyboardID];
  v196 = keyboardID2;
  v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v196 count:1];

  v71 = [optionsCopy objectForKeyedSubscript:@"keyboardList"];
  if (!v71)
  {
    v79 = v70;
    v8 = v176;
    v11 = v118;
    goto LABEL_28;
  }

  v72 = v71;
  v73 = [optionsCopy objectForKeyedSubscript:@"keyboardList"];
  v74 = [v73 count];

  if (!v74)
  {
    v79 = v70;
    v8 = v176;
    v11 = v118;
    self = selfCopy;
LABEL_28:
    [(TypistKeyboard *)self activateWithKeyboardList:v79 appendKeyboard:bOOLValue16];
    [(TypistKeyboard *)self setupSentenceBoundryStrings];
    _setupAutoShiftRegex = [(TypistKeyboard *)self _setupAutoShiftRegex];
    [(TypistKeyboard *)self setAutoshiftRegex:_setupAutoShiftRegex];

    v89 = [optionsCopy objectForKeyedSubscript:@"preprocessing"];
    if (!v89 || (v90 = v89, [optionsCopy objectForKeyedSubscript:@"preprocessing"], v91 = objc_claimAutoreleasedReturnValue(), v92 = objc_msgSend(v91, "BOOLValue"), v91, v90, v92))
    {
      [(TypistKeyboard *)self preprocessing];
    }

    v46 = 0;
    goto LABEL_32;
  }

  v186 = bOOLValue16;
  v75 = [optionsCopy objectForKeyedSubscript:@"keyboardList"];
  keyboardID3 = [(TypistKeyboard *)selfCopy keyboardID];
  v77 = [v75 arrayByAddingObject:keyboardID3];

  v78 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v77, "count")}];
  v189 = 0u;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v79 = v77;
  v80 = [v79 countByEnumeratingWithState:&v189 objects:v195 count:16];
  if (v80)
  {
    v81 = v80;
    v82 = *v190;
    do
    {
      for (i = 0; i != v81; ++i)
      {
        if (*v190 != v82)
        {
          objc_enumerationMutation(v79);
        }

        v84 = *(*(&v189 + 1) + 8 * i);

        v85 = [v84 rangeOfString:@";ml="];
        if (v85 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = v84;
        }

        else
        {
          v10 = [v84 substringToIndex:v85];
        }

        [v78 addObject:v10];
      }

      v81 = [v79 countByEnumeratingWithState:&v189 objects:v195 count:16];
    }

    while (v81);
  }

  v86 = [MEMORY[0x277CBEB98] setWithArray:v119];
  v87 = [v78 isSubsetOfSet:v86];

  if (v87)
  {

    v10 = 0;
    v8 = v176;
    v11 = v118;
    v12 = v117;
    self = selfCopy;
    bOOLValue16 = v186;
    goto LABEL_28;
  }

  v94 = MEMORY[0x277CCACA8];
  v95 = [TypistKeyboardUtilities getMobileGestalt:@"HWModelStr"];
  v96 = [v94 stringWithFormat:@"CRITICAL WARNING: Some keyboards specified are not valid on this device (%@)", v95];

  v97 = MEMORY[0x277CCA9B8];
  v193 = *MEMORY[0x277CCA470];
  v194 = v96;
  v98 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v194 forKeys:&v193 count:1];
  v99 = [v97 errorWithDomain:@"TypistUnsupportedKeyboardIDError" code:2 userInfo:v98];

  v46 = v99;
  v10 = 0;
  v79 = v70;
  v8 = v176;
  v11 = v118;
  v12 = v117;
LABEL_32:

  v15 = v119;
  v42 = v116;
LABEL_33:

  return v46;
}

- (id)_character_set_pattern_from_string:(id)_character_set_pattern_from_string
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCAC68] escapedPatternForString:_character_set_pattern_from_string];
  v5 = [v3 stringWithFormat:@"[%@]", v4];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"-" withString:@"\\-"];

  return v6;
}

- (id)createAutoshiftRegularExpressionWithDelimitingCharacters:(id)characters sentenceTrailingCharacters:(id)trailingCharacters sentencePrefixingCharacters:(id)prefixingCharacters
{
  prefixingCharactersCopy = prefixingCharacters;
  trailingCharactersCopy = trailingCharacters;
  charactersCopy = characters;
  v11 = [(TypistKeyboard *)self _character_set_pattern_from_string:@"  "];
  v12 = MEMORY[0x277CCACA8];
  v13 = [(TypistKeyboard *)self _character_set_pattern_from_string:charactersCopy];

  v14 = [(TypistKeyboard *)self _character_set_pattern_from_string:trailingCharactersCopy];

  v15 = [v12 stringWithFormat:@"\\A|\\n|(?:%@){3}|((?:\\b\\w++(?:\\.\\w++)*)?(?:%@))(?:%@)*(?:%@)", v11, v13, v14, v11];

  v16 = MEMORY[0x277CCACA8];
  v17 = [(TypistKeyboard *)self _character_set_pattern_from_string:prefixingCharactersCopy];

  v18 = [v16 stringWithFormat:@"(?:%@)(?:%@)*(?:%@)*\\Z", v15, v11, v17];

  v29 = 0;
  v19 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:v18 options:16 error:&v29];
  v20 = v29;
  v27 = v20;
  if (!v19)
  {
    TYLogl(OS_LOG_TYPE_ERROR, @"Failed to create autoshift regular expression: %@", v21, v22, v23, v24, v25, v26, v20);
  }

  return v19;
}

- (void)activateWithKeyboardList:(id)list appendKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  listCopy = list;
  v6 = +[TypistKeyboardData keyboardData];
  if (keyboardCopy)
  {
    v7 = [(objc_class *)v6 addKeyboards:listCopy];
  }

  else
  {
    v8 = [(objc_class *)v6 setKeyboards:listCopy];
  }

  keyboardID = [(TypistKeyboard *)self keyboardID];
  TYLog(@"Switching keyboard to %@", v10, v11, v12, v13, v14, v15, v16, keyboardID);

  v17 = +[TypistKeyboardData keyboardData];
  keyboardID2 = [(TypistKeyboard *)self keyboardID];
  [(objc_class *)v17 switchToKeyboard:keyboardID2];
}

- (void)activate:(BOOL)activate
{
  activateCopy = activate;
  v7[1] = *MEMORY[0x277D85DE8];
  keyboardID = [(TypistKeyboard *)self keyboardID];
  v7[0] = keyboardID;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(TypistKeyboard *)self activateWithKeyboardList:v6 appendKeyboard:activateCopy];
}

- (id)generateKeyplaneSwitchTable:(id)table
{
  tableCopy = table;
  tableCopy = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData generateKeyplaneSwitchTable:"generateKeyplaneSwitchTable:", tableCopy];

  return tableCopy;
}

- (id)generateKeyplaneSwitchTableFor10Key:(id)key
{
  keyCopy = key;
  keyCopy = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData generateKeyplaneSwitchTableFor10Key:"generateKeyplaneSwitchTableFor10Key:", keyCopy];

  return keyCopy;
}

- (void)setOneHandedPosition:(id)position
{
  positionCopy = position;
  TYLog(@"######## SETTING ONE HANDED (REACHABLE) KEYBOARD", v4, v5, v6, v7, v8, v9, v10);
  v11 = +[TypistKeyboardUtilities getUIInterfaceOrientation];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    goto LABEL_6;
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  if (v14 <= 320.0)
  {

LABEL_6:
    goto LABEL_7;
  }

  if (v11 == 1)
  {
    v21 = +[TypistKeyboardData keyboardData];
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObject:positionCopy forKey:*MEMORY[0x277D6F7C8]];
    v23 = [(objc_class *)v21 setKeyboardUISettings:v22];

    [(TypistKeyboard *)self preprocessing];
    goto LABEL_8;
  }

LABEL_7:
  TYLogl(OS_LOG_TYPE_ERROR, @"### WARNING: setOneHandedPosition - The one handed mode is not supported on this device with current orientation. Nothing to do...", v15, v16, v17, v18, v19, v20);
LABEL_8:
}

- (void)setFloatingKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  if ([(TypistKeyboard *)self isFloating]!= keyboard)
  {
    [TypistKeyboardUtilities setFloatingKeyboard:keyboardCopy];

    [(TypistKeyboard *)self preprocessing];
  }
}

- (void)moveFloatingKeyboardToPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v32[2] = *MEMORY[0x277D85DE8];
  if ([(TypistKeyboard *)self isFloating])
  {
    +[TypistKeyboardUtilities floatingKeyboardDraggablePoint];
    v13 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
    v32[0] = v13;
    v14 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x, y}];
    v32[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];

    v16 = MEMORY[0x277CCABB0];
    v17 = 1.0 / +[TypistKeyboardUtilities touchScanRate];
    *&v17 = v17;
    v18 = [v16 numberWithFloat:v17];
    v30[0] = @"ALPHA";
    LODWORD(v19) = 1.0;
    v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
    v30[1] = @"CPPATHGEN_TIME_INTERVAL";
    v31[0] = v20;
    v31[1] = v18;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
    v22 = [TypistPathUtilities generatePathArgumentStringWithParameters:v21 fromPoints:v15];

    v27[0] = @"action";
    v27[1] = @"argumentList";
    v28[0] = @"mt";
    v28[1] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v29 = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];

    v25 = [TypistKeyboardUtilities convertRecapCommandsFromListOfActions:v24];
    [TypistKeyboardUtilities launchRecap:v25];

    typeInterval = [(TypistKeyboard *)self typeInterval];
    [typeInterval doubleValue];
    [TypistKeyboardUtilities waitFor:?];

    [(TypistKeyboard *)self preprocessing];
  }

  else
  {

    TYLog(@"Keyboard is not currently in a floating state.", v6, v7, v8, v9, v10, v11, v12);
  }
}

- (id)keysDataForInputMode:(id)mode andFileName:(id)name
{
  v5 = MEMORY[0x277CCACA8];
  nameCopy = name;
  modeCopy = mode;
  nameCopy = [v5 stringWithFormat:@"%@/System/Library/TextInput/TextInput_%@.bundle/%@", GSSystemRootDirectory(), modeCopy, nameCopy];

  v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:nameCopy options:1 error:0];
  v10 = [MEMORY[0x277CCAC58] propertyListWithData:v9 options:0 format:0 error:0];

  return v10;
}

- (BOOL)dictationSupported
{
  keyboardID = [(TypistKeyboard *)self keyboardID];
  v3 = [TypistKeyboardUtilities isDictationSupported:keyboardID];

  return v3;
}

- (void)setTargetApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  getTargetApplicationBundleIdentifier = [(TypistKeyboard *)self getTargetApplicationBundleIdentifier];

  v5 = identifierCopy;
  if (getTargetApplicationBundleIdentifier != identifierCopy)
  {
    [TypistKeyboardData setTargetApplicationBundleID:identifierCopy];
    v5 = identifierCopy;
  }
}

- (id)getShiftPlaneForDefaultPlane
{
  planeSwitchTable = [(TypistKeyboard *)self planeSwitchTable];
  defaultPlaneName = [(TypistKeyboard *)self defaultPlaneName];
  v5 = [planeSwitchTable objectForKeyedSubscript:defaultPlaneName];
  v6 = [v5 allKeysForObject:@"⇧"];
  lastObject = [v6 lastObject];

  if (lastObject)
  {
    v8 = lastObject;
  }

  else
  {
    v8 = &stru_288014100;
  }

  v9 = v8;

  return v8;
}

- (id)getShiftPlaneForAlternatePlane
{
  planeSwitchTable = [(TypistKeyboard *)self planeSwitchTable];
  defaultPlaneName = [(TypistKeyboard *)self defaultPlaneName];
  v5 = [planeSwitchTable objectForKeyedSubscript:defaultPlaneName];
  v6 = [v5 allKeysForObject:@"🔤"];
  lastObject = [v6 lastObject];

  if (lastObject)
  {
    planeSwitchTable2 = [(TypistKeyboard *)self planeSwitchTable];
    v9 = [planeSwitchTable2 objectForKeyedSubscript:lastObject];
    v10 = [v9 allKeysForObject:@"⇧"];
    lastObject2 = [v10 lastObject];
  }

  else
  {
    lastObject2 = 0;
  }

  if (lastObject2)
  {
    v12 = lastObject2;
  }

  else
  {
    v12 = &stru_288014100;
  }

  v13 = v12;

  return v12;
}

- (id)getAlternatePlanesForDefaultPlane
{
  v3 = objc_opt_new();
  planeSwitchTable = [(TypistKeyboard *)self planeSwitchTable];
  defaultPlaneName = [(TypistKeyboard *)self defaultPlaneName];
  v6 = [planeSwitchTable objectForKeyedSubscript:defaultPlaneName];
  v7 = [v6 allKeysForObject:@"🔤"];
  lastObject = [v7 lastObject];

  if (lastObject)
  {
    [v3 addObject:lastObject];
    planeSwitchTable2 = [(TypistKeyboard *)self planeSwitchTable];
    v10 = [planeSwitchTable2 objectForKeyedSubscript:lastObject];
    v11 = [v10 allKeysForObject:@"⇧"];
    lastObject2 = [v11 lastObject];

    if (lastObject2)
    {
      [v3 addObject:lastObject2];
    }

    v13 = v3;
  }

  else
  {
    v13 = &unk_28802A2A0;
  }

  return v13;
}

- (void)preprocessing
{
  v10 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getKeyboardLayout:"getKeyboardLayout:", self];
  v3 = [v10 objectForKeyedSubscript:@"keyPlanes"];
  [(TypistKeyboard *)self setKeyPlanes:v3];

  v4 = [v10 objectForKeyedSubscript:@"defaultPlaneName"];
  [(TypistKeyboard *)self setDefaultPlaneName:v4];

  v5 = [v10 objectForKeyedSubscript:@"planeSwitchTable"];
  [(TypistKeyboard *)self setPlaneSwitchTable:v5];

  v6 = [v10 objectForKeyedSubscript:@"extraKeyplaneData"];

  if (v6)
  {
    v7 = [v10 objectForKeyedSubscript:@"extraKeyplaneData"];
    [(TypistKeyboard *)self setupExtraKeyplaneDataIfNeeded:v7];
  }

  v8 = +[TypistKeyboardData keyboardData];
  defaultPlaneName = [(TypistKeyboard *)self defaultPlaneName];
  [(objc_class *)v8 switchToPlane:defaultPlaneName];

  [TypistKeyboardUtilities waitFor:0.2];
}

- (id)changeKeyNameToGenericCharacter:(id)character
{
  characterCopy = character;
  lowercaseString = [characterCopy lowercaseString];
  v5 = [lowercaseString containsString:@"space-key"];

  if (v5)
  {
    v6 = @" ";
  }

  else
  {
    lowercaseString2 = [characterCopy lowercaseString];
    v8 = [lowercaseString2 containsString:@"return-key"];

    if (v8)
    {
      v6 = @"⏎";
    }

    else
    {
      lowercaseString3 = [characterCopy lowercaseString];
      v10 = [lowercaseString3 containsString:@"delete"];

      if (v10)
      {
        v6 = @"⌫";
      }

      else
      {
        lowercaseString4 = [characterCopy lowercaseString];
        v12 = [lowercaseString4 containsString:@"international"];

        if (v12)
        {
          v6 = @"🌐";
        }

        else
        {
          lowercaseString5 = [characterCopy lowercaseString];
          v14 = [lowercaseString5 containsString:@"writeboard-key"];

          if (v14)
          {
            v6 = @"☝";
          }

          else
          {
            lowercaseString6 = [characterCopy lowercaseString];
            v16 = [lowercaseString6 containsString:@"shift"];

            if (v16)
            {
              v6 = @"⇧";
            }

            else
            {
              lowercaseString7 = [characterCopy lowercaseString];
              v18 = [lowercaseString7 containsString:@"tab-key"];

              if (v18)
              {
                v6 = @"⇥";
              }

              else
              {
                lowercaseString8 = [characterCopy lowercaseString];
                v20 = [lowercaseString8 containsString:@"more-key"];

                if (v20)
                {
                  v6 = @"🔤";
                }

                else
                {
                  lowercaseString9 = [characterCopy lowercaseString];
                  v22 = [lowercaseString9 containsString:@"dictation"];

                  if (v22)
                  {
                    v6 = @"🎙";
                  }

                  else
                  {
                    lowercaseString10 = [characterCopy lowercaseString];
                    v24 = [lowercaseString10 containsString:@"undo"];

                    if (v24)
                    {
                      v6 = @"↩";
                    }

                    else
                    {
                      lowercaseString11 = [characterCopy lowercaseString];
                      v26 = [lowercaseString11 containsString:@"redo"];

                      if (v26)
                      {
                        v6 = @"↪";
                      }

                      else
                      {
                        v6 = 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v6;
}

- (CGPoint)calculateCoordinatesForFlickGesture:(CGPoint)gesture direction:(id)direction offset:(float)offset
{
  y = gesture.y;
  x = gesture.x;
  directionCopy = direction;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3010000000;
  v21 = &unk_2701AD026;
  v22 = x;
  v23 = y;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__TypistKeyboard_calculateCoordinatesForFlickGesture_direction_offset___block_invoke;
  v14[3] = &unk_279DF47C8;
  v9 = directionCopy;
  offsetCopy = offset;
  v15 = v9;
  v16 = &v18;
  [TypistKeyboardUtilities runOnMainThread:v14];
  v10 = v19[4];
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);
  v12 = v10;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

void __71__TypistKeyboard_calculateCoordinatesForFlickGesture_direction_offset___block_invoke(uint64_t a1)
{
  v12 = 0.0;
  v13 = 0.0;
  if ([*(a1 + 32) isEqualToString:@"↓"])
  {
    v2 = *(a1 + 48) + 0.0;
LABEL_5:
    v13 = v2;
    goto LABEL_15;
  }

  if ([*(a1 + 32) isEqualToString:@"↑"])
  {
    v2 = 0.0 - *(a1 + 48);
    goto LABEL_5;
  }

  if ([*(a1 + 32) isEqualToString:@"←"])
  {
    v3 = 0.0 - *(a1 + 48);
  }

  else if ([*(a1 + 32) isEqualToString:@"→"])
  {
    v3 = *(a1 + 48) + 0.0;
  }

  else if ([*(a1 + 32) isEqualToString:@"↙"])
  {
    v4 = *(a1 + 48);
    v5 = v4 + 0.0;
    v3 = 0.0 - v4;
    v13 = v5;
  }

  else
  {
    if (![*(a1 + 32) isEqualToString:@"↘"])
    {
      goto LABEL_15;
    }

    v3 = *(a1 + 48) + 0.0;
    v13 = v3;
  }

  v12 = v3;
LABEL_15:
  v6 = [MEMORY[0x277D75418] currentDevice];
  +[TypistKeyboardUtilities correctForRotation:orientation:](TypistKeyboardUtilities, "correctForRotation:orientation:", &v12, [v6 orientation]);

  v7 = *(*(a1 + 40) + 8);
  v8 = v13;
  v9 = *(v7 + 32) + v12;
  if (v9 < 0.0)
  {
    v9 = 0.0;
  }

  *(v7 + 32) = v9;
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40) + v8;
  if (v11 < 0.0)
  {
    v11 = 0.0;
  }

  *(v10 + 40) = v11;
}

- (id)addKeyboardPopupKeys:(id)keys inPlane:(id)plane addTo:(id)to keyplaneKeycaps:(id)keycaps
{
  keycapsCopy = keycaps;
  toCopy = to;
  planeCopy = plane;
  keysCopy = keys;
  keycapsCopy = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData addKeyboardPopupKeys:"addKeyboardPopupKeys:keys:inPlane:addTo:keyplaneKeycaps:" keys:self inPlane:keysCopy addTo:planeCopy keyplaneKeycaps:toCopy, keycapsCopy];

  return keycapsCopy;
}

- (BOOL)_isPlaneControlKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"⇧"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @" ") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"⌫") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"🔤") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"🌐") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"⇪"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [keyCopy isEqualToString:@"⏎"];
  }

  return v4;
}

- (CGPoint)_guardAgainstOffScreenPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  GSMainScreenPointSize();
  v7 = 0.0;
  if (x >= 0.0)
  {
    v8 = x;
  }

  else
  {
    v8 = 0.0;
  }

  if (y >= 0.0)
  {
    v7 = y;
  }

  if (v8 <= v5)
  {
    v5 = v8;
  }

  if (v7 <= v6)
  {
    v6 = v7;
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)_determinePointBetween:(CGPoint)between nextPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = between.y;
  v7 = between.x;
  [TypistKeyboardUtilities generateGaussianPointWithMean:between.x andSigma:between.y, 5.0];
  v10 = x - v7;
  if (v10 >= 0.0)
  {
    if (v8 >= v7)
    {
      goto LABEL_7;
    }

    v12 = v7 - v8;
    v13 = 2.0;
  }

  else
  {
    if (v8 <= v7)
    {
      goto LABEL_7;
    }

    v12 = v8 - v7;
    v13 = -2.0;
  }

  v8 = v8 + v12 * v13;
LABEL_7:
  v11 = y - v6;
  if (v11 >= 0.0)
  {
    if (v9 < v6)
    {
      v14 = v6 - v9;
      v15 = 2.0;
      goto LABEL_12;
    }
  }

  else if (v9 > v6)
  {
    v14 = v9 - v6;
    v15 = -2.0;
LABEL_12:
    v9 = v9 + v14 * v15;
  }

  result.y = v9;
  result.x = v8;
  return result;
}

- (id)_generateArgumentList:(id)list
{
  v95[4] = *MEMORY[0x277D85DE8];
  listCopy = list;
  swipeAlpha = [(TypistKeyboard *)self swipeAlpha];
  [swipeAlpha doubleValue];
  v82 = v6;

  swipeSigma = [(TypistKeyboard *)self swipeSigma];
  [swipeSigma doubleValue];
  v9 = v8;

  swipePivotProbability = [(TypistKeyboard *)self swipePivotProbability];
  [swipePivotProbability doubleValue];
  v87 = v11;

  swipeErrantProbability = [(TypistKeyboard *)self swipeErrantProbability];
  [swipeErrantProbability doubleValue];
  v86 = v13;

  swipeErrantSigma = [(TypistKeyboard *)self swipeErrantSigma];
  [swipeErrantSigma doubleValue];
  v85 = v15;

  swipeConvexProbability = [(TypistKeyboard *)self swipeConvexProbability];
  [swipeConvexProbability doubleValue];
  v88 = v17;

  swipeConvexSigma = [(TypistKeyboard *)self swipeConvexSigma];
  [swipeConvexSigma doubleValue];
  v84 = v19;

  v20 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:&stru_288014100];
  v21 = objc_opt_new();
  if ([listCopy count])
  {
    v22 = 0;
    v81 = 0.333333333;
    v80 = 0.666666667;
    v79 = 0.666666667;
    v78 = 0.333333333;
    do
    {
      v23 = [listCopy objectAtIndexedSubscript:{v22, *&v78, *&v79, *&v80, *&v81}];
      [v23 floatValue];
      v25 = v24;

      v26 = [listCopy objectAtIndexedSubscript:v22 + 1];
      [v26 floatValue];
      v28 = v27;

      if (!v22)
      {
        [TypistKeyboardUtilities generateGaussianPointWithMean:v25 andSigma:v28, v9];
        [(TypistKeyboard *)self _guardAgainstOffScreenPoint:?];
        v29 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
        [v21 addObject:v29];
      }

      [TypistKeyboardUtilities generateGaussianPointWithMean:v25 andSigma:v28, v9];
      [(TypistKeyboard *)self _guardAgainstOffScreenPoint:?];
      v31 = v30;
      v33 = v32;
      v34 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
      [v21 addObject:v34];

      if (v22 <= [listCopy count] - 4 && objc_msgSend(listCopy, "count") >= 3)
      {
        if (arc4random() / 4294967300.0 <= v86)
        {
          [TypistKeyboardUtilities generateGaussianPointWithMean:v31 andSigma:v33, v85];
          [(TypistKeyboard *)self _guardAgainstOffScreenPoint:?];
          v31 = v35;
          v33 = v36;
          v37 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
          [v21 addObject:v37];
        }

        if (arc4random() / 4294967300.0 <= v87 && v22 != 0)
        {
          v39 = [listCopy objectAtIndexedSubscript:v22 + 2];
          [v39 floatValue];
          v41 = v40;
          v42 = [listCopy objectAtIndexedSubscript:v22 + 3];
          [v42 floatValue];
          v44 = v43;

          [(TypistKeyboard *)self _determinePointBetween:v31 nextPoint:v33, v41, v44];
          [(TypistKeyboard *)self _guardAgainstOffScreenPoint:?];
          v31 = v45;
          v33 = v46;
          v47 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
          [v21 addObject:v47];
        }

        if (arc4random() / 4294967300.0 <= v88)
        {
          v48 = [listCopy objectAtIndexedSubscript:v22 + 2];
          [v48 floatValue];
          v50 = v49;
          v51 = [listCopy objectAtIndexedSubscript:v22 + 3];
          [v51 floatValue];
          v53 = v52;

          if (arc4random() / 4294967300.0 <= v88)
          {
            [TypistKeyboardUtilities generateGaussianPointWithMean:v50 * v81 + v31 * v80 andSigma:v53 * v81 + v33 * v80, v84];
            [(TypistKeyboard *)self _guardAgainstOffScreenPoint:?];
            v59 = v58;
            v83 = v60;
            [TypistKeyboardUtilities generateGaussianPointWithMean:v50 * v79 + v31 * v78 andSigma:v53 * v79 + v33 * v78, v84];
            [(TypistKeyboard *)self _guardAgainstOffScreenPoint:?];
            v55 = v61;
            v57 = v62;
            v63 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v59, v83}];
            [v21 addObject:v63];
          }

          else
          {
            [TypistKeyboardUtilities generateGaussianPointWithMean:(v31 + v50) * 0.5 andSigma:(v33 + v53) * 0.5, v84];
            [(TypistKeyboard *)self _guardAgainstOffScreenPoint:?];
            v55 = v54;
            v57 = v56;
          }

          v64 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v55, v57}];
          [v21 addObject:v64];
        }
      }

      if (v22 == [listCopy count] - 2)
      {
        [TypistKeyboardUtilities generateGaussianPointWithMean:v25 andSigma:v28, v9];
        [(TypistKeyboard *)self _guardAgainstOffScreenPoint:?];
        v65 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
        [v21 addObject:v65];
      }

      v22 += 2;
    }

    while (v22 < [listCopy count]);
  }

  v66 = 1.0 / +[TypistKeyboardUtilities touchScanRate];
  *&v66 = v66;
  v67 = [MEMORY[0x277CCABB0] numberWithFloat:v66];
  v94[0] = @"ALPHA";
  HIDWORD(v68) = HIDWORD(v82);
  *&v68 = v82;
  v69 = [MEMORY[0x277CCABB0] numberWithFloat:v68];
  v95[0] = v69;
  v95[1] = v67;
  v94[1] = @"CPPATHGEN_TIME_INTERVAL";
  v94[2] = @"CPPATHGEN_TIMING_ALGORITHM";
  v94[3] = @"CPPATHGEN_VELOCITY";
  v95[2] = @"EQUIDISTANT";
  v95[3] = &unk_28802A898;
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:4];

  v71 = [TypistPathUtilities generatePathArgumentStringWithParameters:v70 fromPoints:v21];
  [v20 appendString:v71];

  v91[0] = @"action";
  v91[1] = @"argumentList";
  v92[0] = @"mt";
  v92[1] = v20;
  v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:2];
  v93[0] = v72;
  v89[0] = @"action";
  v89[1] = @"time";
  v90[0] = @"wait";
  typeInterval = [(TypistKeyboard *)self typeInterval];
  stringValue = [typeInterval stringValue];
  v90[1] = stringValue;
  v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:2];
  v93[1] = v75;
  v76 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];

  return v76;
}

- (id)generateSwipeStream:(id)stream
{
  v218[2] = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  v11 = streamCopy;
  if (streamCopy)
  {
    TYLogl(OS_LOG_TYPE_DEBUG, @"Generating swipe stream for input: [%@]", v5, v6, v7, v8, v9, v10, streamCopy);
    [TypistKeyboardUtilities waitFor:0.1];
    v193 = +[TypistKeyboardUtilities formattedKeyplaneName];
    v12 = objc_opt_new();
    v217[0] = @"action";
    v217[1] = @"time";
    v218[0] = @"wait";
    typeInterval = [(TypistKeyboard *)self typeInterval];
    stringValue = [typeInterval stringValue];
    v218[1] = stringValue;
    v186 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v218 forKeys:v217 count:2];

    swipeForceSpace = [(TypistKeyboard *)self swipeForceSpace];
    v15 = objc_opt_new();
    if ([v11 length])
    {
      v16 = 0;
      v189 = 1;
      v191 = v12;
      selfCopy = self;
      v185 = v15;
      while (1)
      {
        v17 = [v11 rangeOfComposedCharacterSequenceAtIndex:v16];
        v19 = v16 - v17;
        if (v16 < v17)
        {
          v19 = 0;
        }

        v194 = v16;
        if (v16 <= v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = v16;
        }

        v21 = v18 - v19;
        v22 = [v11 substringWithRange:{v20, v18 - v19}];
        v23 = [(TypistKeyboard *)self _multiCharacterTrailForGrapheme:v22];
        obj = v23;
        if (v23)
        {
          v198 = 0u;
          v199 = 0u;
          v196 = 0u;
          v197 = 0u;
          v24 = [v23 countByEnumeratingWithState:&v196 objects:v216 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v197;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v197 != v26)
                {
                  objc_enumerationMutation(obj);
                }

                v28 = *(*(&v196 + 1) + 8 * i);
                v29 = [v28 length];
                v30 = [v11 substringWithRange:{v21 + v20, v29}];
                LODWORD(v28) = [v30 isEqualToString:v28];

                if (v28)
                {
                  v21 += v29;
                  v31 = [v11 substringWithRange:{v20, v21}];

                  v22 = v31;
                }
              }

              v25 = [obj countByEnumeratingWithState:&v196 objects:v216 count:16];
            }

            while (v25);
          }
        }

        v32 = v22;
        v33 = v32;
        if (v21)
        {
          v34 = v21 - 1;
          v35 = v32;
          self = selfCopy;
          v12 = v191;
          while (1)
          {
            v36 = [(TypistKeyboard *)selfCopy findKeyOnAnyPlane:v35];

            if (v36)
            {
              break;
            }

            v37 = [v11 substringWithRange:{v20, v34}];

            --v34;
            v35 = v37;
            if (v34 == -1)
            {
              goto LABEL_26;
            }
          }

          v37 = v35;

          v194 += v34;
          v33 = v37;
        }

        else
        {
          v37 = v32;
          self = selfCopy;
          v12 = v191;
        }

LABEL_26:
        v38 = objc_opt_new();
        if ([v33 isEqualToString:@"⇪"])
        {
          [v38 addObject:v186];
          v39 = [(TypistKeyboard *)self generateKeystrokeStream:v33];
          [v38 addObjectsFromArray:v39];

          v15 = v185;
          if ([v185 count])
          {
            v214 = @"actions";
            v40 = [(TypistKeyboard *)self _generateArgumentList:v185];
            v215 = v40;
            v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v215 forKeys:&v214 count:1];
            [v12 addObject:v41];

            [v185 removeAllObjects];
          }

          [v12 addObject:v186];
          [v12 addObjectsFromArray:v38];
          v189 = 1;
          goto LABEL_133;
        }

        v182 = v38;
        v42 = [(TypistKeyboard *)self getPostfixKey:v33];

        v43 = v42;
        keyPlanes = [(TypistKeyboard *)self keyPlanes];
        v45 = [keyPlanes objectForKeyedSubscript:v193];
        v46 = [v45 objectForKeyedSubscript:v43];
        v47 = [v46 mutableCopy];

        v48 = v47;
        if (!v47)
        {
          break;
        }

        v49 = [v47 objectForKeyedSubscript:@"key"];
        v12 = v191;
        v192 = v43;
        if (![v49 isEqualToString:@" "])
        {

LABEL_40:
          v61 = v38;
          v62 = [v48 objectForKeyedSubscript:@"plane"];
          v63 = [v62 isEqualToString:&stru_288014100];
          v64 = v193;
          if ((v63 & 1) == 0)
          {
            v173 = [v48 objectForKeyedSubscript:@"plane"];
            v64 = v173;
          }

          if ([v193 isEqualToString:v64])
          {
            [v48 objectForKeyedSubscript:@"key"];
            v66 = v65 = v48;
            v67 = [v66 isEqualToString:@" "];

            v48 = v65;
            if (v63)
            {
              goto LABEL_47;
            }

LABEL_46:
          }

          else
          {
            v67 = 1;
            if ((v63 & 1) == 0)
            {
              goto LABEL_46;
            }
          }

LABEL_47:

          v178 = 0;
          v189 |= v67;
          v38 = v61;
LABEL_48:
          v43 = v192;
LABEL_98:
          v108 = [v48 objectForKeyedSubscript:@"plane"];
          v109 = [v108 isEqualToString:&stru_288014100];

          v110 = v189;
          if (v109)
          {
            [v48 setObject:v193 forKey:@"plane"];
            v110 = 1;
          }

          v188 = v48;
          if (v194)
          {
            v111 = [v11 substringWithRange:{v194 - 1, 1}];
            v174 = v111;
          }

          else
          {
            v111 = 0;
          }

          v112 = [v11 substringToIndex:v20];
          v113 = [(TypistKeyboard *)self isSwitchedToCapitalPlane:v48 previous:v111 currentPlane:v193 context:v112];

          if (v194)
          {
          }

          v15 = v185;
          if (v113)
          {
            defaultPlaneName = [(TypistKeyboard *)self defaultPlaneName];
            [(TypistKeyboard *)self getShiftedKeyPlaneName:defaultPlaneName];
          }

          else
          {
            defaultPlaneName = [v48 objectForKeyedSubscript:@"plane"];
            [(TypistKeyboard *)self getExpectedPlaneNameForKey:v43 currentPlane:defaultPlaneName];
          }
          v177 = ;

          v115 = +[TypistKeyboardData keyboardData];
          v116 = [v48 objectForKeyedSubscript:@"plane"];
          v117 = [(objc_class *)v115 getKeyplaneDescription:v116];

          if ((v110 & 1) != 0 && [v185 count])
          {
            v208 = @"actions";
            [(TypistKeyboard *)self _generateArgumentList:v185];
            v119 = v118 = v117;
            v209 = v119;
            v120 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v209 forKeys:&v208 count:1];
            [v191 addObject:v120];

            v117 = v118;
            [v185 removeAllObjects];
          }

          v184 = v117;
          v192 = v43;
          if ([v117 isLetters] && (objc_msgSend(v48, "objectForKeyedSubscript:", @"key"), v121 = objc_claimAutoreleasedReturnValue(), v122 = -[TypistKeyboard _isPlaneControlKey:](self, "_isPlaneControlKey:", v121), v121, !v122))
          {
            v133 = [v48 objectForKeyedSubscript:@"type"];
            v134 = [v133 isEqualToString:@"popover"];

            if (v134)
            {
              v135 = MEMORY[0x277CBEB38];
              keyPlanes2 = [(TypistKeyboard *)self keyPlanes];
              v137 = [v48 objectForKeyedSubscript:@"plane"];
              [keyPlanes2 objectForKeyedSubscript:v137];
              v139 = v138 = v38;
              v140 = [v188 objectForKeyedSubscript:@"basekey"];
              v141 = [v139 objectForKeyedSubscript:v140];
              v142 = [v135 dictionaryWithDictionary:v141];

              v15 = v185;
              v38 = v138;

              v143 = [v142 objectForKeyedSubscript:@"x"];
              [v188 setObject:v143 forKey:@"x"];

              v144 = [v142 objectForKeyedSubscript:@"y"];
              [v188 setObject:v144 forKey:@"y"];

              [v188 setObject:@"tap" forKey:@"action"];
            }

            v145 = MEMORY[0x277CCABB0];
            v146 = [v188 objectForKeyedSubscript:@"x"];
            [v146 floatValue];
            v147 = [v145 numberWithFloat:?];
            [v15 addObject:v147];

            v148 = MEMORY[0x277CCABB0];
            v149 = [v188 objectForKeyedSubscript:@"y"];
            [v149 floatValue];
            v150 = [v148 numberWithFloat:?];
            [v15 addObject:v150];

            if (v178)
            {
              v206 = @"actions";
              v204[0] = @"action";
              v204[1] = @"plane";
              v205[0] = @"waitfor";
              v151 = [v188 objectForKeyedSubscript:?];
              v205[1] = v151;
              v152 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v205 forKeys:v204 count:2];
              v153 = [v178 arrayByAddingObject:v152];
              v207 = v153;
              swipeForceSpace = 1;
              v154 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v207 forKeys:&v206 count:1];
              [v191 addObject:v154];

              v15 = v185;
              [(TypistKeyboard *)self setIsCapsLockedState:0];
            }

            else
            {
              swipeForceSpace |= [(TypistKeyboard *)self swipeForceSpace];
            }

            if (v194 == [v11 length] - 1)
            {
              v202 = @"actions";
              v164 = [(TypistKeyboard *)self _generateArgumentList:v15];
              v203 = v164;
              v165 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v203 forKeys:&v202 count:1];
              v12 = v191;
              [v191 addObject:v165];

              [v15 removeAllObjects];
              swipeForceSpace = [(TypistKeyboard *)self swipeForceSpace];
              v189 = 0;
              v51 = v188;
            }

            else
            {
              v189 = 0;
              v51 = v188;
              v12 = v191;
            }
          }

          else
          {
            v51 = v48;
            v123 = [v48 objectForKeyedSubscript:@"type"];
            v124 = [v123 isEqualToString:@"basekey"];

            if (v124)
            {
              [v38 addObject:v48];
            }

            else
            {
              v125 = [v48 objectForKeyedSubscript:@"type"];
              v126 = [v125 isEqualToString:@"gesture"];

              if (v126)
              {
                keyPlanes3 = [(TypistKeyboard *)self keyPlanes];
                v128 = [v48 objectForKeyedSubscript:@"plane"];
                v129 = [keyPlanes3 objectForKeyedSubscript:v128];
                v130 = [v48 objectForKeyedSubscript:@"basekey"];
                v131 = [v129 objectForKeyedSubscript:v130];

                v15 = v185;
                [v38 addObject:v131];
                [v38 addObject:v51];
                v132 = [v51 objectForKeyedSubscript:@"key"];

                v192 = v132;
              }

              else
              {
                v155 = [v48 objectForKeyedSubscript:@"type"];
                v156 = [v155 isEqualToString:@"popover"];

                if (v156)
                {
                  v157 = MEMORY[0x277CBEB38];
                  keyPlanes4 = [(TypistKeyboard *)self keyPlanes];
                  v159 = [v48 objectForKeyedSubscript:@"plane"];
                  v160 = [keyPlanes4 objectForKeyedSubscript:v159];
                  v161 = [v188 objectForKeyedSubscript:@"basekey"];
                  v162 = [v160 objectForKeyedSubscript:v161];
                  v163 = [v157 dictionaryWithDictionary:v162];

                  v51 = v188;
                  [v163 setValue:@"taphold" forKey:@"action"];
                  v38 = v182;
                  [v182 addObject:v163];
                  [v182 addObject:v188];
                }

                else
                {
                  keyPlanes5 = [(TypistKeyboard *)self keyPlanes];
                  v167 = [v48 objectForKeyedSubscript:@"plane"];
                  v168 = [keyPlanes5 objectForKeyedSubscript:v167];
                  v169 = [v48 objectForKeyedSubscript:@"basekey"];
                  v170 = [v168 objectForKeyedSubscript:v169];

                  v51 = v188;
                  [v182 addObject:v170];
                  [v182 addObject:v188];

                  v38 = v182;
                }

                v15 = v185;
              }
            }

            v12 = v191;
            [v38 addObject:v186];
            v200[0] = @"keystroke";
            v200[1] = @"actions";
            v201[0] = v192;
            v201[1] = v38;
            v171 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v201 forKeys:v200 count:2];
            [v191 addObject:v171];

            [v15 removeAllObjects];
            swipeForceSpace = 1;
            v189 = 1;
          }

          v86 = v184;
          v85 = v177;
          v54 = v178;
LABEL_131:

          v193 = v85;
          goto LABEL_132;
        }

        swipeForceSpace2 = [(TypistKeyboard *)self swipeForceSpace];

        if (swipeForceSpace2)
        {
          goto LABEL_40;
        }

        v51 = v48;
        if ([v185 count])
        {
          v210 = @"actions";
          v52 = [(TypistKeyboard *)self _generateArgumentList:v185];
          v211 = v52;
          v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v211 forKeys:&v210 count:1];
          [v191 addObject:v53];

          [v185 removeAllObjects];
        }

        v54 = 0;
        v189 = 1;
        if (swipeForceSpace)
        {
          v178 = 0;
          goto LABEL_48;
        }

        swipeForceSpace = 0;
        v15 = v185;
LABEL_132:

        v33 = v192;
LABEL_133:

        v16 = v194 + 1;
        if (v194 + 1 >= [v11 length])
        {
          goto LABEL_134;
        }
      }

      v55 = [@"⊎" stringByAppendingString:v43];
      keyPlanes6 = [(TypistKeyboard *)self keyPlanes];
      v57 = [keyPlanes6 objectForKeyedSubscript:v193];
      v183 = v55;
      v58 = [v57 objectForKeyedSubscript:v55];
      v59 = [v58 mutableCopy];

      v48 = v59;
      if (v59)
      {
        v178 = 0;
        v60 = v183;
LABEL_97:

        goto LABEL_98;
      }

      v68 = [(TypistKeyboard *)self findKeyInOtherPlanes:v43 currentPlane:v193];
      v69 = v43;
      v51 = [v68 mutableCopy];

      v12 = v191;
      v192 = v69;
      if (!v51)
      {
        TYLogl(OS_LOG_TYPE_ERROR, @"CRITICAL WARNING: key '%@' cannot be found in any of the keyboard planes, or is not supported.", v70, v71, v72, v73, v74, v75, v69);
        v54 = 0;
        v85 = v193;
        v86 = v183;
        v15 = v185;
        goto LABEL_131;
      }

      if ([(TypistKeyboard *)self isCapsLockedState])
      {
        v76 = [v51 objectForKeyedSubscript:@"plane"];
        v77 = [(TypistKeyboard *)self getShiftedKeyPlaneName:v193];
        v78 = [v76 isEqualToString:v77];

        if (v78)
        {
          lowercaseString = [v192 lowercaseString];

          keyPlanes7 = [(TypistKeyboard *)self keyPlanes];
          v176 = [keyPlanes7 objectForKeyedSubscript:v193];
          v80 = [v176 objectForKeyedSubscript:lowercaseString];
          v48 = [v80 mutableCopy];

          v81 = 0;
          v43 = lowercaseString;
          v60 = v183;
LABEL_96:
          v178 = v81;

          goto LABEL_97;
        }
      }

      keyPlanes7 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getKeyplaneDescription:"getKeyplaneDescription:", v193];
      v82 = +[TypistKeyboardData keyboardData];
      v83 = [v51 objectForKeyedSubscript:@"plane"];
      if ([v83 isEqualToString:&stru_288014100])
      {
        v84 = [(objc_class *)v82 getKeyplaneDescription:v193];
      }

      else
      {
        v87 = [v51 objectForKeyedSubscript:@"plane"];
        v84 = [(objc_class *)v82 getKeyplaneDescription:v87];
      }

      v48 = v51;
      v176 = v84;
      if ([keyPlanes7 isAlphabeticPlane] && objc_msgSend(keyPlanes7, "isShiftKeyplane") && objc_msgSend(v84, "isAlphabeticPlane") && (objc_msgSend(v84, "isShiftKeyplane") & 1) == 0 && (!objc_msgSend(keyPlanes7, "isAlphabeticPlane") || !objc_msgSend(keyPlanes7, "isShiftKeyplane") || !objc_msgSend(v84, "isAlphabeticPlane") || objc_msgSend(v84, "isShiftKeyplane")))
      {
        if (![keyPlanes7 isAlphabeticPlane])
        {
          goto LABEL_87;
        }

        v60 = v183;
        if (([keyPlanes7 isShiftKeyplane] & 1) != 0 || !objc_msgSend(v84, "isAlphabeticPlane"))
        {
          v81 = 0;
          v189 = 1;
          v43 = v192;
          goto LABEL_96;
        }

        if (![v84 isShiftKeyplane])
        {
LABEL_87:
          v81 = 0;
          v189 = 1;
          v43 = v192;
          v60 = v183;
          goto LABEL_96;
        }
      }

      v88 = [v51 objectForKeyedSubscript:@"plane"];
      v89 = [v88 isEqualToString:&stru_288014100];

      if (v89)
      {
        [v51 setObject:v193 forKey:@"plane"];
      }

      v90 = [v51 objectForKeyedSubscript:@"plane"];
      v81 = [(TypistKeyboard *)self switchToPlane:v90 fromPlane:v193];

      if (v194 < 1)
      {
LABEL_91:
        v48 = v51;
        v43 = v192;
        v60 = v183;
LABEL_92:
        if (v81 && [v81 count])
        {
          [v38 addObjectsFromArray:v81];
          v212[0] = @"action";
          v212[1] = @"plane";
          v213[0] = @"waitfor";
          v106 = [v48 objectForKeyedSubscript:?];
          v213[1] = v106;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v213 forKeys:v212 count:2];
          v107 = v180 = v81;
          [v38 addObject:v107];

          v81 = v180;
          v60 = v183;
          [(TypistKeyboard *)self setIsCapsLockedState:0];
        }

        v189 = 1;
        goto LABEL_96;
      }

      uppercaseLetterCharacterSet = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
      if ([uppercaseLetterCharacterSet characterIsMember:{objc_msgSend(v11, "characterAtIndex:", v194)}])
      {
        v179 = v81;
        v91 = [v11 substringToIndex:v194];
        v92 = [(TypistKeyboard *)self _sanitizedStringForAutoShiftCheck:v91];
        v93 = [(TypistKeyboard *)self isAutoshiftedToCapitalPlane:v92];

        if (v93)
        {
          v94 = v179;
          v95 = [v179 count];
          lastObject = [v179 lastObject];
          v97 = [lastObject objectForKeyedSubscript:@"plane"];
          v98 = [v97 containsString:@"small-letter"];

          if (v98)
          {
            v99 = [v179 count] - 1;
LABEL_69:
            v81 = [v94 subarrayWithRange:{0, v99}];
            v100 = v94;
            v38 = v182;
            v60 = v183;
            v48 = v51;
            v43 = v192;
LABEL_72:

            goto LABEL_92;
          }

          v101 = v95 - 2;
          v38 = v182;
          v48 = v51;
          if (v95 >= 2)
          {
            v94 = v179;
            uppercaseLetterCharacterSet = [v179 lastObject];
            v102 = [uppercaseLetterCharacterSet objectForKeyedSubscript:@"action"];
            if ([v102 isEqualToString:@"wait"])
            {
              v103 = [v179 objectAtIndexedSubscript:v101];
              v104 = [v103 objectForKeyedSubscript:@"plane"];
              v105 = [v104 containsString:@"small-letter"];

              if (v105)
              {
                v99 = [v179 count] - 2;
                goto LABEL_69;
              }

              v38 = v182;
              v81 = v179;
              goto LABEL_91;
            }

            v81 = v179;
LABEL_71:
            v43 = v192;
            v60 = v183;
            v100 = uppercaseLetterCharacterSet;
            goto LABEL_72;
          }
        }

        else
        {
          v48 = v51;
        }

        v43 = v192;
        v60 = v183;
        v81 = v179;
        goto LABEL_92;
      }

      v48 = v51;
      goto LABEL_71;
    }

LABEL_134:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)generateKeystrokeStream:(id)stream
{
  v226 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  v5 = streamCopy;
  if (!streamCopy || ([streamCopy isEqualToString:&stru_288014100] & 1) != 0)
  {
    v187 = 0;
    goto LABEL_155;
  }

  v202 = +[TypistKeyboardUtilities formattedKeyplaneName];
  TYLogl(OS_LOG_TYPE_DEBUG, @"Generating keystroke (tap) stream for input: [%@]", v6, v7, v8, v9, v10, v11, v5);
  v187 = objc_opt_new();
  if ([v5 length])
  {
    v204 = 0;
    v12 = 0;
    v185 = &stru_288014100;
    selfCopy = self;
    while (1)
    {
      v13 = [v5 substringWithRange:{v12, 1}];
      if ([v13 isEqualToString:@"‍"])
      {
        v14 = [v5 length] - 1;

        if (v12 < v14)
        {
          [v5 rangeOfComposedCharacterSequenceAtIndex:v12 + 1];
          v16 = v15 + 1;
          v17 = v12;
          goto LABEL_11;
        }
      }

      else
      {
      }

      v17 = [v5 rangeOfComposedCharacterSequenceAtIndex:v12];
LABEL_11:
      v18 = v12 - v17;
      if (v12 < v17)
      {
        v18 = 0;
      }

      v195 = v12;
      if (v12 <= v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v12;
      }

      v20 = v16 - v18;
      v21 = [v5 substringWithRange:{v19, v16 - v18}];
      v22 = [(TypistKeyboard *)selfCopy _multiCharacterTrailForGrapheme:v21];
      obj = v22;
      if (v22)
      {
        v211 = 0u;
        v212 = 0u;
        v209 = 0u;
        v210 = 0u;
        v23 = [v22 countByEnumeratingWithState:&v209 objects:v225 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v210;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v210 != v25)
              {
                objc_enumerationMutation(obj);
              }

              v27 = *(*(&v209 + 1) + 8 * i);
              v28 = [v27 length];
              v29 = [v5 substringWithRange:{v20 + v19, v28}];
              LODWORD(v27) = [v29 isEqualToString:v27];

              if (v27)
              {
                v20 += v28;
                v30 = [v5 substringWithRange:{v19, v20}];

                v21 = v30;
              }
            }

            v24 = [obj countByEnumeratingWithState:&v209 objects:v225 count:16];
          }

          while (v24);
        }
      }

      v31 = v21;
      v32 = v31;
      if (v20)
      {
        v33 = v20 - 1;
        v34 = v31;
        v35 = selfCopy;
        while (1)
        {
          v36 = [(TypistKeyboard *)selfCopy findKeyOnAnyPlane:v34];

          if (v36)
          {
            break;
          }

          v37 = [v5 substringWithRange:{v19, v33}];

          --v33;
          v34 = v37;
          if (v33 == -1)
          {
            goto LABEL_33;
          }
        }

        v37 = v34;

        v195 += v33;
        v32 = v37;
      }

      else
      {
        v37 = v31;
        v35 = selfCopy;
      }

LABEL_33:
      v188 = v37;
      if (v204)
      {
        v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v185, v32];
        goto LABEL_35;
      }

      v39 = 0x277CBE000uLL;
      if ([(TypistKeyboard *)v35 isTenKey]|| [(TypistKeyboard *)v35 isKanaKeyboard]|| ([(__CFString *)v32 isEqualToString:@"↓"]& 1) == 0 && ([(__CFString *)v32 isEqualToString:@"↑"]& 1) == 0 && ([(__CFString *)v32 isEqualToString:@"←"]& 1) == 0 && ([(__CFString *)v32 isEqualToString:@"→"]& 1) == 0 && ([(__CFString *)v32 isEqualToString:@"↙"]& 1) == 0 && ![(__CFString *)v32 isEqualToString:@"↘"])
      {
        if ([(__CFString *)v32 isEqualToString:@"⇪"])
        {
          keyPlanes = [(TypistKeyboard *)v35 keyPlanes];
          v41 = [keyPlanes objectForKeyedSubscript:v202];
          v42 = [v41 objectForKeyedSubscript:v32];

          if (v42)
          {
            v193 = 0;
          }

          else
          {
            [(TypistKeyboard *)v35 setIsCapsLockedState:1];
            v38 = @"⇧";
LABEL_35:
            v193 = v204 ^ 1;

            v32 = v38;
          }

          v39 = 0x277CBE000;
        }

        else
        {
          v193 = 0;
        }

        v196 = objc_opt_new();
        v194 = [(__CFString *)v32 copy];
        v43 = [(TypistKeyboard *)v35 getPostfixKey:v32];

        v44 = [(TypistKeyboard *)v35 getActionForKeystroke:v43 fromKeyPlane:v202];
        v45 = [v44 mutableCopy];

        if (v45)
        {
          v46 = v195;
          goto LABEL_96;
        }

        v47 = [(TypistKeyboard *)v35 findKeyInOtherPlanes:v43 currentPlane:v202];
        v48 = [v47 mutableCopy];

        if (!v48)
        {
          v46 = v195;
          goto LABEL_58;
        }

        v205 = v48;
        if (![(TypistKeyboard *)v35 isCapsLockedState])
        {
          v46 = v195;
          goto LABEL_68;
        }

        v197 = v43;
        v49 = [v48 objectForKeyedSubscript:@"plane"];
        v50 = [(TypistKeyboard *)v35 getShiftedKeyPlaneName:v202];
        v51 = [v49 isEqualToString:v50];

        v46 = v195;
        if (!v51)
        {
          v43 = v197;
          goto LABEL_68;
        }

        lowercaseString = [(__CFString *)v197 lowercaseString];

        keyPlanes2 = [(TypistKeyboard *)v35 keyPlanes];
        v53 = [keyPlanes2 objectForKeyedSubscript:v202];
        v54 = lowercaseString;
        v55 = [v53 objectForKeyedSubscript:lowercaseString];
        v56 = [v55 mutableCopy];

        v43 = v54;
        v205 = v56;
        if (v56)
        {
          goto LABEL_68;
        }

LABEL_58:
        v59 = [(TypistKeyboard *)v35 attemptToFindKeystrokeAsSecondaryDisplay:v43];
        v60 = [v59 mutableCopy];

        v189 = [v60 objectForKeyedSubscript:@"plane"];
        if ([v202 isEqualToString:?])
        {
          v205 = v60;
          v37 = v188;
        }

        else
        {
          v199 = v43;
          v180 = [v60 objectForKeyedSubscript:@"plane"];
          v61 = [TypistKeyboard switchToPlane:v35 fromPlane:"switchToPlane:fromPlane:"];
          if ([v61 count])
          {
            v205 = v60;
          }

          else
          {

            v205 = 0;
          }

          v37 = v188;

          v43 = v199;
        }

        if (!v205)
        {
          v80 = [(TypistKeyboard *)v35 tryAlternateVariationsOfKey:v43];
          if (v80)
          {
            [v187 addObjectsFromArray:v80];
          }

          else
          {
            TYLogl(OS_LOG_TYPE_ERROR, @"CRITICAL WARNING: key '%@' cannot be found in any of the keyboard planes, or is not supported.", v74, v75, v76, v77, v78, v79, v43);
          }

          v191 = v202;
          v58 = obj;
          v57 = v196;
          v82 = v194;
          goto LABEL_145;
        }

LABEL_68:
        v200 = v43;
        v62 = [v205 objectForKeyedSubscript:@"plane"];
        v63 = [v62 isEqualToString:&stru_288014100];

        if (v63)
        {
          [v205 setObject:v202 forKey:@"plane"];
        }

        v64 = [v205 objectForKeyedSubscript:@"plane"];
        if ([v64 isEqualToString:v202])
        {
          goto LABEL_95;
        }

        v65 = [v205 objectForKeyedSubscript:@"plane"];
        v66 = [(TypistKeyboard *)v35 switchToPlane:v65 fromPlane:v202];

        if (v46 < 1)
        {
          v45 = v205;
          goto LABEL_82;
        }

        if (!v66)
        {
          v45 = v205;
          goto LABEL_83;
        }

        uppercaseLetterCharacterSet = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
        if ([uppercaseLetterCharacterSet characterIsMember:{objc_msgSend(v5, "characterAtIndex:", v46)}])
        {
          v190 = v66;
          v67 = [v5 substringToIndex:v46];
          v68 = [(TypistKeyboard *)v35 _sanitizedStringForAutoShiftCheck:v67];
          v69 = [(TypistKeyboard *)v35 isAutoshiftedToCapitalPlane:v68];

          if (!v69)
          {
            goto LABEL_92;
          }

          v182 = [v190 count];
          lastObject = [v190 lastObject];
          v71 = [lastObject objectForKeyedSubscript:@"plane"];
          v72 = [v71 containsString:@"small-letter"];

          if (v72)
          {
            v73 = -1;
            goto LABEL_77;
          }

          v83 = v182 - 2;
          v43 = v200;
          if (v182 < 2)
          {
LABEL_93:
            v45 = v205;
            v66 = v190;
            goto LABEL_94;
          }

          v66 = v190;
          lastObject2 = [v190 lastObject];
          v183 = [lastObject2 objectForKeyedSubscript:@"action"];
          if ([v183 isEqualToString:@"wait"])
          {
            v84 = [v190 objectAtIndexedSubscript:v83];
            v85 = [v84 objectForKeyedSubscript:@"plane"];
            v86 = [v85 containsString:@"small-letter"];

            if (v86)
            {
              v73 = -2;
LABEL_77:
              v45 = v205;
              v66 = [v190 subarrayWithRange:{0, objc_msgSend(v190, "count") + v73}];

LABEL_82:
              v43 = v200;
              if (!v66)
              {
LABEL_83:
                v35 = selfCopy;
                goto LABEL_96;
              }

LABEL_94:
              v192 = v66;
              [(__CFString *)v196 addObjectsFromArray:v66];
              v223[1] = @"plane";
              v224[0] = @"waitfor";
              v223[0] = @"action";
              v87 = [v45 objectForKeyedSubscript:@"plane"];
              v224[1] = v87;
              v88 = [*(v39 + 2752) dictionaryWithObjects:v224 forKeys:v223 count:2];
              [(__CFString *)v196 addObject:v88];

              v35 = selfCopy;
              [(TypistKeyboard *)selfCopy setIsCapsLockedState:0];
              v64 = v192;
LABEL_95:

              v45 = v205;
LABEL_96:
              v206 = v45;
              v89 = [v45 objectForKeyedSubscript:@"plane"];
              v90 = [v89 isEqualToString:&stru_288014100];

              if (v90)
              {
                [v206 setObject:v202 forKey:@"plane"];
              }

              if (v46)
              {
                v91 = [v5 substringWithRange:{v46 - 1, 1}];
                v186 = v91;
              }

              else
              {
                v91 = 0;
              }

              v92 = [v5 substringToIndex:v19];
              v93 = [(TypistKeyboard *)v35 isSwitchedToCapitalPlane:v206 previous:v91 currentPlane:v202 context:v92];

              if (v46)
              {
              }

              if (v93)
              {
                v94 = v43;
                defaultPlaneName = [(TypistKeyboard *)v35 defaultPlaneName];
                v191 = [(TypistKeyboard *)v35 getShiftedKeyPlaneName:defaultPlaneName];
                v96 = v206;
              }

              else
              {
                v94 = v43;
                if (v193)
                {
                  v97 = @"⇪";
                }

                else
                {
                  v97 = v43;
                }

                v96 = v206;
                defaultPlaneName = [v206 objectForKeyedSubscript:@"plane"];
                v191 = [(TypistKeyboard *)v35 getExpectedPlaneNameForKey:v97 currentPlane:defaultPlaneName];
              }

              v98 = +[TypistKeyboardData keyboardData];
              v99 = [v96 objectForKeyedSubscript:@"plane"];
              v100 = [(objc_class *)v98 getKeyplaneDescription:v99];

              v101 = [v96 objectForKeyedSubscript:@"type"];
              LODWORD(v99) = [v101 isEqualToString:@"basekey"];

              v201 = v94;
              v203 = v100;
              if (v99)
              {
                if ([(TypistKeyboard *)v35 tapStyle])
                {
                  if ([v100 isLetters])
                  {
                    v102 = [v96 objectForKeyedSubscript:@"key"];
                    v103 = [(TypistKeyboard *)v35 _isPlaneControlKey:v102];

                    if (!v103)
                    {
                      v104 = [v96 objectForKeyedSubscript:@"centerOfGlyph"];
                      [v104 CGPointValue];
                      v106 = v105;
                      v108 = v107;

                      if ([(TypistKeyboard *)v35 tapStyle]== 1)
                      {
                        v109 = [v96 objectForKeyedSubscript:@"rect"];
                        v110 = [v96 objectForKeyedSubscript:@"edgeInsets"];
                        [v109 CGRectValue];
                        v112 = v111;
                        v114 = v113;
                        [v110 UIEdgeInsetsValue];
                        [TypistKeyboardUtilities generateUniformPointWithMean:v106 andBounds:v108, (v112 - (v115 + v116)) * 0.5, (v114 - (v117 + v118)) * 0.5];
                        v106 = v119;
                        v108 = v120;

                        goto LABEL_125;
                      }

                      if ([(TypistKeyboard *)v35 tapStyle]== 2)
                      {
                        tapBounds = [(TypistKeyboard *)v35 tapBounds];
                        [tapBounds doubleValue];
                        v148 = v147;

                        [TypistKeyboardUtilities generateUniformPointWithMean:v106 andBounds:v108, v148, v148];
                        goto LABEL_124;
                      }

                      if ([(TypistKeyboard *)v35 tapStyle]== 3)
                      {
                        tapSigma = [(TypistKeyboard *)v35 tapSigma];
                        [tapSigma doubleValue];
                        v153 = v152;

                        [TypistKeyboardUtilities generateGaussianPointWithMean:v106 andSigma:v108, v153];
LABEL_124:
                        v106 = v149;
                        v108 = v150;
                      }

LABEL_125:
                      v154 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", *&v106];
                      [v96 setObject:v154 forKeyedSubscript:@"x"];

                      v155 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", *&v108];
                      [v96 setObject:v155 forKeyedSubscript:@"y"];
                    }
                  }
                }

                [(__CFString *)v196 addObject:v96];
                if (v193)
                {
                  [(__CFString *)v196 addObject:&unk_28802A550];
                  [(__CFString *)v196 addObject:v96];
                }

                v129 = selfCopy;
              }

              else
              {
                v121 = [v96 objectForKeyedSubscript:@"type"];
                v122 = [v121 isEqualToString:@"gesture"];

                if (v122)
                {
                  keyPlanes3 = [(TypistKeyboard *)v35 keyPlanes];
                  v124 = [v96 objectForKeyedSubscript:@"plane"];
                  [keyPlanes3 objectForKeyedSubscript:v124];
                  v126 = v125 = v96;
                  v127 = [v125 objectForKeyedSubscript:@"basekey"];
                  v128 = [v126 objectForKeyedSubscript:v127];

                  v129 = v35;
                  [(__CFString *)v196 addObject:v128];
                  [(__CFString *)v196 addObject:v125];
                  v130 = [v125 objectForKeyedSubscript:@"key"];

                  v201 = v130;
                }

                else
                {
                  v131 = [v96 objectForKeyedSubscript:@"type"];
                  v132 = [v131 isEqualToString:@"popover"];

                  if (v132)
                  {
                    v133 = MEMORY[0x277CBEB38];
                    keyPlanes4 = [(TypistKeyboard *)v35 keyPlanes];
                    v134 = [v96 objectForKeyedSubscript:@"plane"];
                    [keyPlanes4 objectForKeyedSubscript:v134];
                    v136 = v135 = v96;
                    v137 = [v135 objectForKeyedSubscript:@"basekey"];
                    v138 = [v136 objectForKeyedSubscript:v137];
                    v139 = [v133 dictionaryWithDictionary:v138];

                    [v139 setValue:@"taphold" forKey:@"action"];
                    v129 = v35;
                    [(__CFString *)v196 addObject:v139];
                    [(__CFString *)v196 addObject:v135];
                  }

                  else
                  {
                    keyPlanes5 = [(TypistKeyboard *)v35 keyPlanes];
                    v141 = [v96 objectForKeyedSubscript:@"plane"];
                    v142 = [keyPlanes5 objectForKeyedSubscript:v141];
                    [v96 objectForKeyedSubscript:@"basekey"];
                    v144 = v143 = v96;
                    v145 = [v142 objectForKeyedSubscript:v144];

                    v129 = v35;
                    [(__CFString *)v196 addObject:v145];
                    [(__CFString *)v196 addObject:v143];
                  }
                }
              }

              v156 = [(TypistKeyboard *)v129 addAccentKeyAction:v194];
              v157 = v156;
              if (v156 && [v156 count])
              {
                v158 = 0;
                do
                {
                  v221[0] = @"action";
                  v221[1] = @"time";
                  v222[0] = @"wait";
                  typeInterval = [(TypistKeyboard *)selfCopy typeInterval];
                  stringValue = [typeInterval stringValue];
                  v222[1] = stringValue;
                  v161 = [*(v39 + 2752) dictionaryWithObjects:v222 forKeys:v221 count:2];
                  [(__CFString *)v196 addObject:v161];

                  v162 = [v157 objectAtIndexedSubscript:v158];
                  v163 = [v162 objectForKeyedSubscript:@"type"];
                  LODWORD(stringValue) = [v163 isEqualToString:@"gesture"];

                  if (stringValue)
                  {
                    keyPlanes6 = [(TypistKeyboard *)selfCopy keyPlanes];
                    v165 = [v162 objectForKeyedSubscript:@"plane"];
                    v166 = [keyPlanes6 objectForKeyedSubscript:v165];
                    v167 = [v162 objectForKeyedSubscript:@"basekey"];
                    v168 = [v166 objectForKeyedSubscript:v167];

                    v39 = 0x277CBE000uLL;
                    [(__CFString *)v196 addObject:v168];
                  }

                  [(__CFString *)v196 addObject:v162];

                  ++v158;
                }

                while ([v157 count] > v158);
              }

              v80 = v206;
              if ([(TypistKeyboard *)selfCopy fastTyping]|| ([(__CFString *)v201 isEqualToString:@"🔤"]& 1) != 0 || ([(__CFString *)v201 isEqualToString:@"⇧"]& 1) != 0 || ([(__CFString *)v201 isEqualToString:@" "]& 1) != 0 || ([(__CFString *)v201 isEqualToString:@"⏎"]& 1) != 0)
              {
LABEL_140:
                v46 = v195;
                if ((v193 | -[TypistKeyboard fastTyping](selfCopy, "fastTyping")) & 1) != 0 || ([v206 objectForKeyedSubscript:@"plane"], v169 = objc_claimAutoreleasedReturnValue(), v170 = objc_msgSend(v191, "isEqualToString:", v169), v169, (v170))
                {
LABEL_142:
                  v215[0] = @"action";
                  v215[1] = @"time";
                  v216[0] = @"wait";
                  typeInterval2 = [(TypistKeyboard *)selfCopy typeInterval];
                  stringValue2 = [typeInterval2 stringValue];
                  v216[1] = stringValue2;
                  v173 = [*(v39 + 2752) dictionaryWithObjects:v216 forKeys:v215 count:2];
                }

                else
                {
                  v217[0] = @"action";
                  v217[1] = @"plane";
                  v218[0] = @"waitfor";
                  v218[1] = v191;
                  v173 = [*(v39 + 2752) dictionaryWithObjects:v218 forKeys:v217 count:2];
                }
              }

              else
              {
                if (v193)
                {
                  [(TypistKeyboard *)selfCopy fastTyping];
                  v46 = v195;
                  goto LABEL_142;
                }

                v175 = [v206 objectForKeyedSubscript:@"plane"];
                getShiftPlaneForDefaultPlane = [(TypistKeyboard *)selfCopy getShiftPlaneForDefaultPlane];
                v177 = [v175 isEqualToString:getShiftPlaneForDefaultPlane];

                if (!v177)
                {
                  goto LABEL_140;
                }

                v219[1] = @"plane";
                v220[0] = @"waitfor";
                v219[0] = @"action";
                defaultPlaneName2 = [(TypistKeyboard *)selfCopy defaultPlaneName];
                v220[1] = defaultPlaneName2;
                v173 = [*(v39 + 2752) dictionaryWithObjects:v220 forKeys:v219 count:2];

                v46 = v195;
              }

              v57 = v196;
              [(__CFString *)v196 addObject:v173];

              v213[0] = @"keystroke";
              v213[1] = @"actions";
              v82 = v194;
              v214[0] = v194;
              v214[1] = v196;
              v174 = [*(v39 + 2752) dictionaryWithObjects:v214 forKeys:v213 count:2];
              [v187 addObject:v174];

              v58 = obj;
              v37 = v188;
              v43 = v201;
LABEL_145:

              v204 = 0;
              v202 = v191;
              goto LABEL_146;
            }

LABEL_92:
            v43 = v200;
            goto LABEL_93;
          }

          v45 = v205;
        }

        else
        {
          v45 = v205;
          lastObject2 = uppercaseLetterCharacterSet;
        }

        goto LABEL_94;
      }

      v43 = v32;
      v204 = 1;
      v57 = v185;
      v185 = v43;
      v46 = v195;
      v58 = obj;
LABEL_146:

      v12 = v46 + 1;
      if (v12 >= [v5 length])
      {
        goto LABEL_154;
      }
    }
  }

  v185 = &stru_288014100;
LABEL_154:

LABEL_155:

  return v187;
}

- (CGAffineTransform)_determineTransformationInFrame:(SEL)frame segmentStart:(CGRect)start totalSegmentWidth:(double)width scale:(unint64_t)scale characterHeight:(double)height characterWidth:(double)characterWidth dimensions:(double)dimensions isLatex:(id)self0
{
  v11 = a11;
  height = start.size.height;
  width = start.size.width;
  y = start.origin.y;
  x = start.origin.x;
  latexCopy = latex;
  [latexCopy rotationBias];
  if (v22 == 0.0)
  {
    v22 = 0.0;
  }

  v49 = v22;
  primaryWritingDirection = [latexCopy primaryWritingDirection];
  segmentWritingDirection = [latexCopy segmentWritingDirection];
  v25 = MEMORY[0x277CBF2C0];
  v26 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v26;
  *&retstr->tx = *(v25 + 32);
  if (primaryWritingDirection == 2)
  {
    v27 = width + x;
  }

  else
  {
    v27 = x;
  }

  v28 = +[TypistKeyboardUtilities getUIInterfaceOrientation];
  v29 = +[TypistKeyboardUtilities getOneHandedKeyboardHandBias];
  if ([v29 caseInsensitiveCompare:@"Right"])
  {
    v30 = 0;
  }

  else
  {
    v30 = v28 == 1;
  }

  if (v30)
  {
    [TypistKeyboardUtilities findKeyBoundsInKeyboard:@"Candidate-Selection"];
    if (primaryWritingDirection == 2)
    {
      widthCopy = width;
    }

    v27 = x + widthCopy;
  }

  [latexCopy writingOriginOffsetX];
  v33 = v32;
  [latexCopy writingOriginOffsetY];
  v35 = y + v34 * height;
  if (primaryWritingDirection == 2 && segmentWritingDirection == 2)
  {
    v36 = v27 - v33 * height;
  }

  else
  {
    y = v35;
    v36 = v27 + v33 * height;
  }

  v37 = -(height + -characterWidth * height);
  if (height - characterWidth * height >= 0.0)
  {
    v37 = height - characterWidth * height;
  }

  v38 = v36 + width;
  if (segmentWritingDirection == 2)
  {
    v38 = v36 + width + scale;
  }

  v39 = v36 - width;
  if (segmentWritingDirection != 2)
  {
    v39 = v39 - scale;
  }

  v40 = v37 * 0.5;
  if (primaryWritingDirection == 2)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v40 + y;
  if (v11)
  {
    v43 = y;
  }

  else
  {
    v43 = v40 + y;
  }

  GSMainScreenPointSize();
  switch(v28)
  {
    case 2:
      v42 = v44 - v41;
      v41 = v45 - y - v40;
      v46 = 180.0;
      break;
    case 3:
      v42 = v44 - y - v40;
      v46 = 90.0;
      break;
    case 4:
      v41 = v45 - v41;
      v46 = 270.0;
      break;
    default:
      v42 = v41;
      v41 = v43;
      v47 = v49;
      goto LABEL_37;
  }

  v47 = v49 + v46;
LABEL_37:
  CGAffineTransformMakeRotation(&t1, v47 * 3.14159265 / 180.0);
  t2.a = height;
  t2.b = 0.0;
  t2.c = 0.0;
  t2.d = height;
  t2.tx = v42;
  t2.ty = v41;
  CGAffineTransformConcat(retstr, &t1, &t2);

  return result;
}

- (CGRect)_determineHandwritingBound
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)_convertCollationCharacters:(id)characters
{
  v3 = MEMORY[0x277CCACA8];
  charactersCopy = characters;
  65010 = [v3 stringWithFormat:@"%C", 65010];
  v6 = [charactersCopy stringByReplacingOccurrencesOfString:@"الله" withString:65010];

  return v6;
}

- (id)_dimensionsForLatex:(id)latex formula:(id)formula withPathMap:(id)map regionCode:(id)code isCursive:(BOOL)cursive cumulativeWidth:(unint64_t)width totalWidth:(unint64_t)totalWidth primaryTextDirection:(unint64_t)self0 rotationBias:(double)self1 characterByCharacterPaths:(id)self2
{
  v64 = *MEMORY[0x277D85DE8];
  latexCopy = latex;
  formulaCopy = formula;
  mapCopy = map;
  pathsCopy = paths;
  v21 = objc_opt_new();
  [latexCopy offsetY];
  v23 = v22;
  allKeys = [formulaCopy allKeys];
  if ([allKeys count])
  {
    widthCopy = width;
    charactersRequiringExtentionCharacterSet = [MEMORY[0x277CCA900] charactersRequiringExtentionCharacterSet];
    v27 = [allKeys objectAtIndex:0];
    v57 = [charactersRequiringExtentionCharacterSet characterIsMember:{objc_msgSend(v27, "characterAtIndex:", 0)}];

    v28 = [allKeys objectAtIndex:0];
    v56 = [formulaCopy objectForKey:v28];

    v58 = allKeys;
    [allKeys objectAtIndex:0];
    if (cursive)
      v29 = {;
      [TypistPathUtilities getTextClustersFrom:mapCopy forCharacters:v29];
    }

    else
      v29 = {;
      [v29 graphemeArray];
    }
    v33 = ;

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v34 = v33;
    v35 = [v34 countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (v35)
    {
      v36 = v35;
      v54 = formulaCopy;
      v55 = latexCopy;
      v37 = 0;
      v38 = *v60;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v60 != v38)
          {
            objc_enumerationMutation(v34);
          }

          v40 = *(*(&v59 + 1) + 8 * i);
          v47 = [mapCopy objectForKeyedSubscript:v40];
          if (v47)
          {
            [pathsCopy addObject:v47];
            if ([v47 width] >= 1)
            {
              [v47 perCharacterScale];
              if (v48 > 0.0)
              {
                width = [v47 width];
                [v47 perCharacterScale];
                v51 = llround(v50 * width);
                v37 += v51;
                widthCopy += v51;
              }
            }
          }

          else
          {
            TYLogl(OS_LOG_TYPE_ERROR, @"No path data found for character: [%@]", v41, v42, v43, v44, v45, v46, v40);
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v59 objects:v63 count:16];
      }

      while (v36);
      v31 = v37;
      formulaCopy = v54;
      latexCopy = v55;
    }

    else
    {
      v31 = 0.0;
    }

    directionCopy2 = direction;

    v21 = v56;
    allKeys = v58;
    width = widthCopy;
    v30 = v57;
  }

  else
  {
    v30 = 0;
    v31 = 0.0;
    directionCopy2 = direction;
  }

  v52 = objc_alloc_init(TYHandwritingDimensions);
  [(TYHandwritingDimensions *)v52 setWritingOriginOffsetX:0.0];
  [(TYHandwritingDimensions *)v52 setWritingOriginOffsetY:0.0];
  [(TYHandwritingDimensions *)v52 setTotalWidth:totalWidth];
  [(TYHandwritingDimensions *)v52 setCumulativeWidth:width];
  [(TYHandwritingDimensions *)v52 setSegmentWidth:v31];
  [(TYHandwritingDimensions *)v52 setFixedScaleHeight:1024.0];
  [(TYHandwritingDimensions *)v52 setRotationBias:bias];
  [v21 rectValue];
  [(TYHandwritingDimensions *)v52 setRect:?];
  [(TYHandwritingDimensions *)v52 setPrimaryWritingDirection:directionCopy2];
  [(TYHandwritingDimensions *)v52 setSegmentWritingDirection:1];
  [(TYHandwritingDimensions *)v52 setOffsetY:v23];
  [(TYHandwritingDimensions *)v52 setRequiresExtension:v30];

  return v52;
}

- (id)_dimensionsForText:(id)text withPathMap:(id)map regionCode:(id)code isCursive:(BOOL)cursive cumulativeWidth:(unint64_t *)width totalWidth:(unint64_t)totalWidth segmentTextDirection:(unint64_t)direction primaryTextDirection:(unint64_t)self0 rotationBias:(double)self1 characterByCharacterPaths:(id)self2
{
  directionCopy2 = direction;
  v54 = *MEMORY[0x277D85DE8];
  textCopy = text;
  mapCopy = map;
  codeCopy = code;
  pathsCopy = paths;
  v48 = codeCopy;
  totalWidthCopy = totalWidth;
  if (cursive)
  {
    [TypistPathUtilities getTextClustersFrom:textCopy withRegion:codeCopy];
  }

  else
  {
    [textCopy graphemeArray];
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v23 = v50 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v49 objects:v53 count:16];
  v25 = 0.0;
  v26 = 0.0;
  if (v24)
  {
    v27 = v24;
    v46 = textCopy;
    v28 = 0;
    v29 = *v50;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v50 != v29)
        {
          objc_enumerationMutation(v23);
        }

        v31 = *(*(&v49 + 1) + 8 * i);
        v38 = [mapCopy objectForKeyedSubscript:v31];
        if (v38)
        {
          [pathsCopy addObject:v38];
          if ([v38 width] >= 1)
          {
            [v38 perCharacterScale];
            if (v39 > 0.0)
            {
              width = [v38 width];
              [v38 perCharacterScale];
              v42 = llround(v41 * width);
              *width += v42;
              v28 += v42;
            }
          }
        }

        else
        {
          TYLogl(OS_LOG_TYPE_ERROR, @"No path data found for character: [%@]", v32, v33, v34, v35, v36, v37, v31);
        }
      }

      v27 = [v23 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v27);
    v26 = v28;
    directionCopy2 = direction;
    textCopy = v46;
  }

  if (directionCopy2 == 2)
  {
    [TypistPathUtilities getWidthOfFirstCharacterInString:textCopy];
    v25 = v43;
  }

  v44 = objc_alloc_init(TYHandwritingDimensions);
  [(TYHandwritingDimensions *)v44 setWritingOriginOffsetX:v25];
  [(TYHandwritingDimensions *)v44 setWritingOriginOffsetY:0.0];
  [(TYHandwritingDimensions *)v44 setTotalWidth:totalWidthCopy];
  [(TYHandwritingDimensions *)v44 setCumulativeWidth:*width];
  [(TYHandwritingDimensions *)v44 setSegmentWidth:v26];
  [(TYHandwritingDimensions *)v44 setFixedScaleHeight:1024.0];
  [(TYHandwritingDimensions *)v44 setRotationBias:bias];
  [(TYHandwritingDimensions *)v44 setPrimaryWritingDirection:textDirection];
  [(TYHandwritingDimensions *)v44 setSegmentWritingDirection:directionCopy2];

  return v44;
}

- (id)generateHandwritingStream:(id)stream inFrame:(CGRect)frame isPencil:(BOOL)pencil rotationBias:(double)bias isCursive:(BOOL)cursive
{
  cursiveCopy = cursive;
  height = frame.size.height;
  pencilCopy = pencil;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v125 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  stringByConvertingArabicCharactersToPresentationForms = [streamCopy copy];
  mEMORY[0x277CD9698] = [MEMORY[0x277CD9698] sharedSettings];
  isScribbleActive = [mEMORY[0x277CD9698] isScribbleActive];

  if (isScribbleActive)
  {
    mEMORY[0x277CD9698]2 = [MEMORY[0x277CD9698] sharedSettings];
    currentLanguageIdentifier = [mEMORY[0x277CD9698]2 currentLanguageIdentifier];

    v18 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:currentLanguageIdentifier];
    countryCode = [v18 countryCode];
    if (!countryCode)
    {
      countryCode = [v18 scriptCode];
      if (!countryCode)
      {
        countryCode = [v18 languageCode];
      }
    }
  }

  else
  {
    currentLanguageIdentifier = [(TypistKeyboard *)self keyboardID];
    countryCode = [TypistKeyboardUtilities getRegionCodeFromKeyboardID:currentLanguageIdentifier];
  }

  arabicGenericCharacters = [MEMORY[0x277CCA900] arabicGenericCharacters];
  v20 = [stringByConvertingArabicCharactersToPresentationForms rangeOfCharacterFromSet:arabicGenericCharacters];

  arabicPresentationFormCharacters = [MEMORY[0x277CCA900] arabicPresentationFormCharacters];
  v22 = [stringByConvertingArabicCharactersToPresentationForms rangeOfCharacterFromSet:arabicPresentationFormCharacters];

  if (v20 != 0x7FFFFFFFFFFFFFFFLL || v22 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = [(TypistKeyboard *)self _convertCollationCharacters:stringByConvertingArabicCharactersToPresentationForms];

    stringByConvertingArabicCharactersToPresentationForms = [v23 stringByConvertingArabicCharactersToPresentationForms];

    cursiveCopy = 1;
  }

  v24 = [[TYParsedScribbleData alloc] initWithText:stringByConvertingArabicCharactersToPresentationForms regionCode:countryCode isCursive:cursiveCopy];
  pathMap = [(TYParsedScribbleData *)v24 pathMap];

  if (pathMap)
  {
    v101 = cursiveCopy;
    selfCopy = self;
    v32 = @"handwriting";
    if (pencilCopy)
    {
      v32 = @"stylus";
    }

    v90 = streamCopy;
    TYLogl(OS_LOG_TYPE_DEBUG, @"Generating %@ stream for input: [%@]", v26, v27, v28, v29, v30, v31, v32, streamCopy);
    convertedString = [(TYParsedScribbleData *)v24 convertedString];
    v89 = stringByConvertingArabicCharactersToPresentationForms;
    v34 = [stringByConvertingArabicCharactersToPresentationForms isEqualToString:convertedString];

    if ((v34 & 1) == 0)
    {
      convertedString2 = [(TYParsedScribbleData *)v24 convertedString];
      TYLog(@"Text after conversion [%@]", v36, v37, v38, v39, v40, v41, v42, convertedString2);
    }

    v121 = 0;
    v106 = objc_opt_new();
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    obj = [(TYParsedScribbleData *)v24 parsedData];
    v93 = [obj countByEnumeratingWithState:&v117 objects:v124 count:16];
    if (v93)
    {
      textDirection = 0;
      v92 = *v118;
      v100 = v24;
      do
      {
        for (i = 0; i != v93; ++i)
        {
          if (*v118 != v92)
          {
            objc_enumerationMutation(obj);
          }

          v45 = *(*(&v117 + 1) + 8 * i);
          if ([v45 isLatexString])
          {
            if (textDirection <= 1)
            {
              textDirection = 1;
            }

            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            latexFormulaBoundingBoxes = [v45 latexFormulaBoundingBoxes];
            v46 = [latexFormulaBoundingBoxes countByEnumeratingWithState:&v113 objects:v123 count:16];
            if (v46)
            {
              v47 = v46;
              v94 = i;
              v48 = 0;
              v98 = *v114;
              do
              {
                v49 = 0;
                v50 = v48;
                do
                {
                  if (*v114 != v98)
                  {
                    objc_enumerationMutation(latexFormulaBoundingBoxes);
                  }

                  v51 = *(*(&v113 + 1) + 8 * v49);
                  array = [MEMORY[0x277CBEB18] array];
                  pathMap2 = [(TYParsedScribbleData *)v24 pathMap];
                  v48 = [(TypistKeyboard *)selfCopy _dimensionsForLatex:v45 formula:v51 withPathMap:pathMap2 regionCode:countryCode isCursive:v101 cumulativeWidth:v121 totalWidth:bias primaryTextDirection:[(TYParsedScribbleData *)v24 totalWidth] rotationBias:textDirection characterByCharacterPaths:array];

                  [v45 boundingSize];
                  v55 = height / v54;
                  [v45 boundingSize];
                  v57 = width / v56;
                  if (v55 >= v57)
                  {
                    v55 = v57;
                  }

                  [v45 offsetY];
                  v59 = -(v58 * v55);
                  [v48 rect];
                  v112.b = 0.0;
                  v112.c = 0.0;
                  v112.a = v55;
                  v112.d = v55;
                  v112.tx = 0.0;
                  v112.ty = v59;
                  v128 = CGRectApplyAffineTransform(v127, &v112);
                  v60 = v128.size.width;
                  v61 = v128.size.height;
                  v62 = x + v128.origin.x;
                  v63 = y + v128.origin.y;
                  [v45 boundingSize];
                  v65 = v64;
                  [v48 totalWidth];
                  v67 = v65 / v66;
                  [v45 boundingSize];
                  v69 = v68 * 0.0009765625;
                  if (v67 < v68 * 0.0009765625)
                  {
                    v69 = v67;
                  }

                  [v48 setBoundingBoxScale:v69];
                  v24 = v100;
                  v70 = [(TypistKeyboard *)selfCopy _generateHandwritingStream:array inFrame:pencilCopy isPencil:v48 dimensions:1 isLatex:v62, v63, v60, v61];
                  [v106 addObjectsFromArray:v70];

                  ++v49;
                  v50 = v48;
                }

                while (v47 != v49);
                v47 = [latexFormulaBoundingBoxes countByEnumeratingWithState:&v113 objects:v123 count:16];
              }

              while (v47);

              i = v94;
            }

            [v45 boundingSize];
            v72 = 1024.0 / v71;
            [v45 boundingSize];
            v121 += llround(v73 * v72);
          }

          else
          {
            v95 = i;
            annotatedTextDirections = [v45 annotatedTextDirections];
            v108 = 0u;
            v109 = 0u;
            v110 = 0u;
            v111 = 0u;
            v97 = annotatedTextDirections;
            v75 = [annotatedTextDirections countByEnumeratingWithState:&v108 objects:v122 count:16];
            if (v75)
            {
              v76 = v75;
              v99 = *v109;
              do
              {
                for (j = 0; j != v76; ++j)
                {
                  if (*v109 != v99)
                  {
                    objc_enumerationMutation(v97);
                  }

                  v78 = *(*(&v108 + 1) + 8 * j);
                  array2 = [MEMORY[0x277CBEB18] array];
                  if (!textDirection)
                  {
                    textDirection = [v78 textDirection];
                  }

                  [v78 range];
                  if (v80)
                  {
                    string = [v45 string];
                    range = [v78 range];
                    v84 = [string substringWithRange:{range, v83}];

                    pathMap3 = [(TYParsedScribbleData *)v24 pathMap];
                    v86 = -[TypistKeyboard _dimensionsForText:withPathMap:regionCode:isCursive:cumulativeWidth:totalWidth:segmentTextDirection:primaryTextDirection:rotationBias:characterByCharacterPaths:](selfCopy, "_dimensionsForText:withPathMap:regionCode:isCursive:cumulativeWidth:totalWidth:segmentTextDirection:primaryTextDirection:rotationBias:characterByCharacterPaths:", v84, pathMap3, countryCode, v101, &v121, -[TYParsedScribbleData totalWidth](v24, "totalWidth"), bias, [v78 textDirection], textDirection, array2);

                    height = [(TypistKeyboard *)selfCopy _generateHandwritingStream:array2 inFrame:pencilCopy isPencil:v86 dimensions:0 isLatex:x, y, width, height];
                    [v106 addObjectsFromArray:height];

                    v24 = v100;
                  }
                }

                v76 = [v97 countByEnumeratingWithState:&v108 objects:v122 count:16];
              }

              while (v76);
            }

            i = v95;
          }
        }

        v93 = [obj countByEnumeratingWithState:&v117 objects:v124 count:16];
      }

      while (v93);
    }

    stringByConvertingArabicCharactersToPresentationForms = v89;
    streamCopy = v90;
  }

  else
  {
    v106 = 0;
  }

  return v106;
}

- (id)_generateHandwritingStream:(id)stream inFrame:(CGRect)frame isPencil:(BOOL)pencil dimensions:(id)dimensions isLatex:(BOOL)latex
{
  latexCopy = latex;
  pencilCopy = pencil;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v92 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  dimensionsCopy = dimensions;
  if ([streamCopy count])
  {
    v16 = MEMORY[0x277CCABB0];
    v17 = 1.0 / +[TypistKeyboardUtilities touchScanRate];
    *&v17 = v17;
    v67 = [v16 numberWithFloat:v17];
    v68 = objc_opt_new();
    v60 = x;
    v61 = y;
    v18 = x;
    v19 = height;
    [(TypistKeyboard *)self _getScaleInFrame:pencilCopy isPencil:dimensionsCopy dimensions:v18, y, width, height];
    v21 = v20;
    [dimensionsCopy cumulativeWidth];
    v23 = v22;
    [dimensionsCopy segmentWidth];
    v25 = v24;
    primaryWritingDirection = [dimensionsCopy primaryWritingDirection];
    segmentWritingDirection = [dimensionsCopy segmentWritingDirection];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v56 = streamCopy;
    obj = streamCopy;
    v63 = [obj countByEnumeratingWithState:&v77 objects:v91 count:16];
    if (v63)
    {
      v28 = 1;
      if (primaryWritingDirection != segmentWritingDirection)
      {
        v28 = -1;
      }

      v29 = v21 * v23 - v21 * v25;
      v59 = dimensionsCopy;
      v58 = *v78;
      if (pencilCopy)
      {
        v30 = @"st";
      }

      else
      {
        v30 = @"mt";
      }

      v66 = v30;
      v31 = v28;
      do
      {
        v32 = 0;
        do
        {
          if (*v78 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v64 = v32;
          v33 = *(*(&v77 + 1) + 8 * v32);
          [v33 perCharacterScale];
          v35 = v21 * v34;
          height = [v33 height];
          width = [v33 width];
          memset(&v76, 0, sizeof(v76));
          objc_msgSend__determineTransformationInFrame_segmentStart_totalSegmentWidth_scale_characterHeight_characterWidth_dimensions_isLatex_(self, v60, v61, width, v19, v29, v35, height, width);
          if (latexCopy && [dimensionsCopy requiresExtension])
          {
            v74 = v76;
            CGAffineTransformScale(&v75, &v74, width / (v35 * width), 1.0);
            v76 = v75;
          }

          strokeArray = [v33 strokeArray];
          v75 = v76;
          v39 = [TypistPathUtilities convertSVGPaths:strokeArray withTransformation:&v75];

          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v65 = v39;
          v40 = [v65 countByEnumeratingWithState:&v70 objects:v90 count:16];
          if (v40)
          {
            v41 = v40;
            v69 = *v71;
            do
            {
              for (i = 0; i != v41; ++i)
              {
                if (*v71 != v69)
                {
                  objc_enumerationMutation(v65);
                }

                v43 = *(*(&v70 + 1) + 8 * i);
                if ([v43 count])
                {
                  v88[0] = @"ALPHA";
                  LODWORD(v44) = 0.5;
                  v45 = [MEMORY[0x277CCABB0] numberWithFloat:v44];
                  v89[0] = v45;
                  v89[1] = v67;
                  v88[1] = @"CPPATHGEN_TIME_INTERVAL";
                  v88[2] = @"CPPATHGEN_TIMING_ALGORITHM";
                  v88[3] = @"CPPATHGEN_VELOCITY";
                  v89[2] = @"ANGULAR";
                  v89[3] = &unk_28802A8A8;
                  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:4];
                  v47 = [TypistPathUtilities generatePathArgumentStringWithParameters:v46 fromPoints:v43];

                  v86 = @"actions";
                  v83[0] = @"action";
                  v83[1] = @"argumentList";
                  v84[0] = v66;
                  v84[1] = v47;
                  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:2];
                  v85[0] = v48;
                  v81[0] = @"action";
                  v81[1] = @"time";
                  v82[0] = @"wait";
                  typeInterval = [(TypistKeyboard *)self typeInterval];
                  stringValue = [typeInterval stringValue];
                  v82[1] = stringValue;
                  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
                  v85[1] = v51;
                  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:2];
                  v87 = v52;
                  [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
                  v54 = v53 = self;
                  [v68 addObject:v54];

                  self = v53;
                }
              }

              v41 = [v65 countByEnumeratingWithState:&v70 objects:v90 count:16];
            }

            while (v41);
          }

          v29 = v29 + v31 * width * v35;

          v32 = v64 + 1;
          dimensionsCopy = v59;
        }

        while (v64 + 1 != v63);
        v63 = [obj countByEnumeratingWithState:&v77 objects:v91 count:16];
      }

      while (v63);
    }

    streamCopy = v56;
  }

  else
  {
    v68 = 0;
  }

  return v68;
}

- (double)_getScaleInFrame:(CGRect)frame isPencil:(BOOL)pencil dimensions:(id)dimensions
{
  pencilCopy = pencil;
  height = frame.size.height;
  width = frame.size.width;
  dimensionsCopy = dimensions;
  [TypistKeyboardUtilities findKeyBoundsInKeyboard:@"Candidate-Selection"];
  v11 = v10;
  v13 = v12;
  v14 = +[TypistKeyboardUtilities getOneHandedKeyboardHandBias];
  v15 = +[TypistKeyboardUtilities getUIInterfaceOrientation];
  if (![v14 caseInsensitiveCompare:@"Left"])
  {
    if (v15 != 1)
    {
      goto LABEL_8;
    }

LABEL_7:
    width = v11;
    goto LABEL_8;
  }

  if ([v14 caseInsensitiveCompare:@"Right"])
  {
    v16 = 0;
  }

  else
  {
    v16 = v15 == 1;
  }

  if (v16)
  {
    goto LABEL_7;
  }

LABEL_8:
  [dimensionsCopy totalWidth];
  v18 = v17;
  if ([(TypistKeyboard *)self isHandwriting]&& !pencilCopy)
  {
    height = height - v13;
  }

  [dimensionsCopy fixedScaleHeight];
  v20 = height / v19;
  if (width / v18 >= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = width / v18;
  }

  return v21;
}

- (id)generatePencilGestureStream:(int)stream gestureStyle:(int)style inFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = *&stream;
  v69[2] = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277CCABB0];
  v13 = 1.0 / +[TypistKeyboardUtilities touchScanRate]* 3.0;
  *&v13 = v13;
  v21 = [v12 numberWithFloat:v13];
  v22 = y + height * 0.5;
  if (v10 == 3 && !style)
  {
    v23 = x + width;
    v24 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v23, v22}];
    v69[0] = v24;
    v25 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v23, v22 + 1.0}];
    v69[1] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];

    v27 = MEMORY[0x277CCABB0];
    v28 = 1.0 / +[TypistKeyboardUtilities touchScanRate]* 100.0;
    *&v28 = v28;
    v29 = [v27 numberWithFloat:v28];

    v21 = v29;
LABEL_17:
    v64[0] = @"ALPHA";
    LODWORD(v30) = 0.5;
    v46 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
    v65[0] = v46;
    v65[1] = v21;
    v64[1] = @"CPPATHGEN_TIME_INTERVAL";
    v64[2] = @"CPPATHGEN_TIMING_ALGORITHM";
    v64[3] = @"CPPATHGEN_VELOCITY";
    v65[2] = @"ANGULAR";
    v65[3] = &unk_28802A8A8;
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:4];
    v48 = [TypistPathUtilities generatePathArgumentStringWithParameters:v47 fromPoints:v26];

    v49 = objc_opt_new();
    v62 = @"actions";
    v59[0] = @"action";
    v59[1] = @"argumentList";
    v60[0] = @"st";
    v60[1] = v48;
    v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
    v61[0] = v50;
    v57[0] = @"action";
    v57[1] = @"time";
    v58[0] = @"wait";
    typeInterval = [(TypistKeyboard *)self typeInterval];
    stringValue = [typeInterval stringValue];
    v58[1] = stringValue;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
    v61[1] = v53;
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
    v63 = v54;
    v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    [v49 addObject:v55];

    goto LABEL_18;
  }

  if (v10 == 1 && !style)
  {
    [TypistKeyboardUtilities generateGaussianPointWithMean:x + width andSigma:v22, height * 0.25];
    v32 = v31;
    v34 = v33;
    [TypistKeyboardUtilities generateGaussianPointWithMean:"generateGaussianPointWithMean:andSigma:" andSigma:?];
    v36 = v35;
    v38 = v37;
    v39 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x, v22}];
    v68[0] = v39;
    v40 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v32, v34}];
    v68[1] = v40;
    v41 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x, v22}];
    v68[2] = v41;
    v42 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v36, v38}];
    v68[3] = v42;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:4];

LABEL_16:
    goto LABEL_17;
  }

  if (v10 == 1 && style == 1)
  {
    v26 = [TypistPathUtilities convertCurveDeleteTouchPoints:10 endPoint:x curveHeight:v22 curveDensity:x + width tilt:v22, height, -1.5];
    goto LABEL_17;
  }

  if (!(style | v10))
  {
    v39 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x, v22}];
    v67[0] = v39;
    v40 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x + width + -1.0, v22}];
    v67[1] = v40;
    v44 = MEMORY[0x277CBEA60];
    v45 = v67;
    goto LABEL_15;
  }

  if (v10 == 2 && !style)
  {
    v43 = x + width;
    v39 = [MEMORY[0x277CCAE60] valueWithCGPoint:v43];
    v66[0] = v39;
    v40 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v43, height + v22 - height * 0.5}];
    v66[1] = v40;
    v44 = MEMORY[0x277CBEA60];
    v45 = v66;
LABEL_15:
    v26 = [v44 arrayWithObjects:v45 count:2];
    goto LABEL_16;
  }

  TYLog(@"Gesture %u is not supported", v14, v15, v16, v17, v18, v19, v20, v10);
  v49 = 0;
LABEL_18:

  return v49;
}

- (id)getActionForKeystroke:(id)keystroke fromKeyPlane:(id)plane
{
  keystrokeCopy = keystroke;
  planeCopy = plane;
  keyPlanes = [(TypistKeyboard *)self keyPlanes];
  v9 = [keyPlanes objectForKeyedSubscript:planeCopy];
  v10 = [v9 objectForKeyedSubscript:keystrokeCopy];

  if (!-[TypistKeyboard prefersPopoverKeys](self, "prefersPopoverKeys") && v10 && ([v10 objectForKeyedSubscript:@"type"], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"popover"), v11, v12) && (-[TypistKeyboard findKeyInOtherPlanes:currentPlane:](self, "findKeyInOtherPlanes:currentPlane:", keystrokeCopy, planeCopy), (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, objc_msgSend(v13, "objectForKeyedSubscript:", @"type"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", @"basekey"), v15, v14, (v16 & 1) != 0))
  {
    v17 = 0;
  }

  else
  {
    v17 = v10;
  }

  return v17;
}

- (id)findKeyOnAnyPlane:(id)plane
{
  v24 = *MEMORY[0x277D85DE8];
  planeCopy = plane;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  keyPlanes = [(TypistKeyboard *)self keyPlanes];
  allKeys = [keyPlanes allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        keyPlanes2 = [(TypistKeyboard *)self keyPlanes];
        v13 = [keyPlanes2 objectForKeyedSubscript:v11];
        v14 = [v13 objectForKeyedSubscript:planeCopy];

        if (v14)
        {
          keyPlanes3 = [(TypistKeyboard *)self keyPlanes];
          v17 = [keyPlanes3 objectForKeyedSubscript:v11];
          v15 = [v17 objectForKeyedSubscript:planeCopy];

          goto LABEL_11;
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = [(TypistKeyboard *)self attemptToFindKeystrokeAsSecondaryDisplay:planeCopy];
LABEL_11:

  return v15;
}

- (id)findKey:(id)key inPlane:(id)plane
{
  planeCopy = plane;
  keyCopy = key;
  keyPlanes = [(TypistKeyboard *)self keyPlanes];
  v9 = [keyPlanes objectForKeyedSubscript:planeCopy];

  v10 = [v9 objectForKeyedSubscript:keyCopy];

  return v10;
}

- (id)findKeyOnCurrentPlane:(id)plane
{
  planeCopy = plane;
  v5 = +[TypistKeyboardUtilities formattedKeyplaneName];
  v6 = [(TypistKeyboard *)self findKey:planeCopy inPlane:v5];

  return v6;
}

- (id)attemptToFindKeystrokeAsSecondaryDisplay:(id)display
{
  v32 = *MEMORY[0x277D85DE8];
  displayCopy = display;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] != 1)
    {

      goto LABEL_17;
    }

    isFloating = [(TypistKeyboard *)self isFloating];

    if (isFloating)
    {
LABEL_17:
      v22 = 0;
      goto LABEL_20;
    }

    v9 = @"↓";
  }

  else
  {
    v9 = @"⊎";
  }

  displayCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v9, displayCopy];
  if (!displayCopy)
  {
    goto LABEL_17;
  }

  v11 = displayCopy;
  v26 = displayCopy;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  keyPlanes = [(TypistKeyboard *)self keyPlanes];
  allKeys = [keyPlanes allKeys];

  v14 = [allKeys countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(allKeys);
        }

        v18 = *(*(&v27 + 1) + 8 * i);
        keyPlanes2 = [(TypistKeyboard *)self keyPlanes];
        v20 = [keyPlanes2 objectForKeyedSubscript:v18];
        v21 = [v20 objectForKeyedSubscript:v11];

        if (v21)
        {
          keyPlanes3 = [(TypistKeyboard *)self keyPlanes];
          v24 = [keyPlanes3 objectForKeyedSubscript:v18];
          v22 = [v24 objectForKeyedSubscript:v11];

          goto LABEL_19;
        }
      }

      v15 = [allKeys countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v22 = 0;
LABEL_19:
  displayCopy = v26;
LABEL_20:

  return v22;
}

- (id)findKeyInOtherPlanes:(id)planes currentPlane:(id)plane
{
  v36 = *MEMORY[0x277D85DE8];
  planesCopy = planes;
  planeCopy = plane;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  keyPlanes = [(TypistKeyboard *)self keyPlanes];
  allKeys = [keyPlanes allKeys];

  obj = allKeys;
  v10 = [allKeys countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      v13 = 0;
      v28 = v11;
      do
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v31 + 1) + 8 * v13);
        if (([v14 isEqualToString:planeCopy] & 1) == 0)
        {
          keyPlanes2 = [(TypistKeyboard *)self keyPlanes];
          v16 = [keyPlanes2 objectForKeyedSubscript:v14];
          v17 = [v16 objectForKeyedSubscript:planesCopy];
          if (v17)
          {
            v18 = v17;
            [(TypistKeyboard *)self switchToPlane:v14 fromPlane:planeCopy];
            v19 = v12;
            selfCopy = self;
            v21 = planeCopy;
            v23 = v22 = planesCopy;
            v30 = [v23 count];

            planesCopy = v22;
            planeCopy = v21;
            self = selfCopy;
            v12 = v19;
            v11 = v28;

            if (v30)
            {
              keyPlanes3 = [(TypistKeyboard *)self keyPlanes];
              v25 = [keyPlanes3 objectForKeyedSubscript:v14];
              v26 = [v25 objectForKeyedSubscript:planesCopy];

              goto LABEL_14;
            }
          }

          else
          {
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v11);
  }

  v26 = 0;
LABEL_14:

  return v26;
}

- (id)_constructSwitchPath:(id)path toPlane:(id)plane fromPlane:(id)fromPlane
{
  v55[2] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  planeCopy = plane;
  v47 = objc_opt_new();
  v9 = planeCopy;
  allKeys = [pathCopy allKeys];
  v46 = v9;
  if ([allKeys containsObject:v9])
  {
    v48 = pathCopy;
    selfCopy = self;
    while (1)
    {
      v10 = v9;
      v11 = [v9 copy];
      v9 = [pathCopy objectForKeyedSubscript:v9];

      planeSwitchTable = [(TypistKeyboard *)self planeSwitchTable];
      v13 = [planeSwitchTable objectForKeyedSubscript:v9];
      v14 = [v13 objectForKeyedSubscript:v11];
      if (!v14)
      {
        goto LABEL_8;
      }

      v15 = v14;
      keyPlanes = [(TypistKeyboard *)self keyPlanes];
      v17 = [keyPlanes objectForKeyedSubscript:v9];
      if (!v17)
      {
        break;
      }

      keyPlanes2 = [(TypistKeyboard *)self keyPlanes];
      [keyPlanes2 objectForKeyedSubscript:v9];
      v18 = v53 = v11;
      planeSwitchTable2 = [(TypistKeyboard *)self planeSwitchTable];
      v20 = [planeSwitchTable2 objectForKeyedSubscript:v9];
      [v20 objectForKeyedSubscript:v53];
      v21 = v49 = keyPlanes;
      v22 = [v18 objectForKeyedSubscript:v21];

      pathCopy = v48;
      self = selfCopy;

      v11 = v53;
      if (!v22)
      {
        goto LABEL_9;
      }

      keyPlanes3 = [(TypistKeyboard *)selfCopy keyPlanes];
      v24 = [keyPlanes3 objectForKeyedSubscript:v9];
      planeSwitchTable3 = [(TypistKeyboard *)selfCopy planeSwitchTable];
      v26 = [planeSwitchTable3 objectForKeyedSubscript:v9];
      v27 = [v26 objectForKeyedSubscript:v53];
      v28 = [v24 objectForKeyedSubscript:v27];
      [v47 insertObject:v28 atIndex:0];

      v11 = v53;
      v54[0] = @"action";
      v54[1] = @"time";
      v55[0] = @"wait";
      typeInterval = [(TypistKeyboard *)selfCopy typeInterval];
      stringValue = [typeInterval stringValue];
      v55[1] = stringValue;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
      [v47 insertObject:v31 atIndex:1];

      self = selfCopy;
LABEL_10:

      if (([allKeys containsObject:v9] & 1) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_8:
LABEL_9:
    keyboardID = [(TypistKeyboard *)self keyboardID];
    TYLogl(OS_LOG_TYPE_ERROR, @"%@: !!! Unable to find a valid switch path !!!", v33, v34, v35, v36, v37, v38, keyboardID);

    TYLogl(OS_LOG_TYPE_ERROR, @"self.keyPlanes[%@][self.planeSwitchTable[%@][%@]]", v39, v40, v41, v42, v43, v44, v9, v9, v11);
    goto LABEL_10;
  }

LABEL_11:

  return v47;
}

- (id)switchToPlane:(id)plane fromPlane:(id)fromPlane
{
  v31 = *MEMORY[0x277D85DE8];
  planeCopy = plane;
  fromPlaneCopy = fromPlane;
  if (planeCopy)
  {
    v8 = [planeCopy isEqualToString:&stru_288014100];
    v9 = MEMORY[0x277CBEBF8];
    if (fromPlaneCopy && (v8 & 1) == 0 && ([fromPlaneCopy isEqualToString:&stru_288014100] & 1) == 0 && (objc_msgSend(fromPlaneCopy, "isEqualToString:", planeCopy) & 1) == 0)
    {
      v10 = objc_opt_new();
      v11 = objc_opt_new();
      [v11 addObject:fromPlaneCopy];
      v12 = objc_opt_new();
      if ([v11 count])
      {
        v24 = fromPlaneCopy;
        selfCopy = self;
        while (1)
        {
          v13 = [v11 objectAtIndex:{0, v24}];
          if ([v13 isEqualToString:planeCopy])
          {
            break;
          }

          [v11 removeObjectAtIndex:0];
          [v10 addObject:v13];
          planeSwitchTable = [(TypistKeyboard *)self planeSwitchTable];
          v15 = [planeSwitchTable objectForKeyedSubscript:v13];
          allKeys = [v15 allKeys];

          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v17 = allKeys;
          v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v27;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v27 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v26 + 1) + 8 * i);
                if (([v10 containsObject:v22] & 1) == 0)
                {
                  [v11 addObject:v22];
                  [v12 setObject:v13 forKeyedSubscript:v22];
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
            }

            while (v19);
          }

          self = selfCopy;
          if (![v11 count])
          {
            v9 = 0;
            fromPlaneCopy = v24;
            goto LABEL_26;
          }
        }

        fromPlaneCopy = v24;
        v9 = [(TypistKeyboard *)self _constructSwitchPath:v12 toPlane:planeCopy fromPlane:v24];
      }

      else
      {
        v9 = 0;
      }

LABEL_26:
    }
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

- (id)_sanitizedStringForAutoShiftCheck:(id)check
{
  v3 = [check stringByReplacingOccurrencesOfString:@"🔤" withString:&stru_288014100];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"⇧" withString:&stru_288014100];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"⇪" withString:&stru_288014100];

  return v5;
}

- (BOOL)isSwitchedToCapitalPlane:(id)plane previous:(id)previous currentPlane:(id)currentPlane context:(id)context
{
  previousCopy = previous;
  currentPlaneCopy = currentPlane;
  contextCopy = context;
  planeCopy = plane;
  v14 = [planeCopy objectForKeyedSubscript:@"key"];
  v15 = [planeCopy objectForKeyedSubscript:@"more-after"];

  if (previousCopy | v15 || ([v14 isEqualToString:@" "] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"⏎"))
  {
    currentPlaneCopy = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getKeyplaneDescription:"getKeyplaneDescription:", currentPlaneCopy];
    usesAutoShift = [currentPlaneCopy usesAutoShift];
    isAlphabeticPlane = [currentPlaneCopy isAlphabeticPlane];
    if (isAlphabeticPlane && !usesAutoShift || !+[TypistKeyboardUtilities getAutoCapitalizationPrefSetting])
    {
      v23 = 0;
LABEL_42:

      goto LABEL_43;
    }

    v19 = [&stru_288014100 stringByPaddingToLength:2 withString:@" " startingAtIndex:0];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
    Height = CGRectGetHeight(v39);
    v38 = v19;
    if (Height <= 1194.0)
    {
      v22 = 0;
    }

    else
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 _referenceBounds];
      if (CGRectGetHeight(v40) > 1194.0 && [(TypistKeyboard *)self isFloating])
      {
        v22 = 0;
        goto LABEL_14;
      }

      mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen3 _referenceBounds];
      v26 = CGRectGetHeight(v41);
      v27 = isAlphabeticPlane ^ 1;
      if (v26 <= 1194.0)
      {
        v27 = 1;
      }

      if (v27)
      {
LABEL_25:

LABEL_36:
        if ((isAlphabeticPlane & [v14 isEqualToString:@" "]) != 1 || (-[TypistKeyboard defaultPlaneName](self, "defaultPlaneName"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isEqualToString:", currentPlaneCopy), v29, v30))
        {
          v31 = v38;
          if ([v14 isEqualToString:@"⏎"])
          {
            v23 = 1;
LABEL_41:

            goto LABEL_42;
          }

          if ([v14 isEqualToString:@"🔤"])
          {
            if ((isAlphabeticPlane & 1) == 0)
            {
LABEL_46:
              v33 = [(TypistKeyboard *)self _sanitizedStringForAutoShiftCheck:contextCopy];
              if ([v33 length])
              {
                v23 = [(TypistKeyboard *)self isAutoshiftedToCapitalPlane:v33];
              }

              else
              {
                v23 = 1;
              }

              goto LABEL_41;
            }
          }

          else if (((isAlphabeticPlane | [v14 isEqualToString:@" "] ^ 1) & 1) == 0)
          {
            goto LABEL_46;
          }

          v23 = 0;
          goto LABEL_41;
        }

LABEL_40:
        v23 = 1;
        v31 = v38;
        goto LABEL_41;
      }

      defaultPlaneName = [(TypistKeyboard *)self defaultPlaneName];
      if (![defaultPlaneName isEqualToString:currentPlaneCopy] || -[TypistKeyboard isCapsLockedState](self, "isCapsLockedState"))
      {

        goto LABEL_25;
      }

      v35 = mainScreen3;
      v22 = 1;
    }

LABEL_14:
    if ([v14 isEqualToString:@" "])
    {
      if ([previousCopy isEqualToString:@"."] & 1) != 0 || (objc_msgSend(previousCopy, "isEqualToString:", @"!") & 1) != 0 || (objc_msgSend(previousCopy, "isEqualToString:", @"?"))
      {
        v24 = 1;
        goto LABEL_31;
      }

      if ([contextCopy length] > 1)
      {
        v34 = [contextCopy substringFromIndex:{objc_msgSend(contextCopy, "length") - 2}];
        v24 = [v34 isEqualToString:v19];

        if ((v22 & 1) == 0)
        {
          goto LABEL_33;
        }

        v28 = defaultPlaneName;
LABEL_32:

LABEL_33:
        if (Height > 1194.0)
        {
        }

        if (v24)
        {
          goto LABEL_40;
        }

        goto LABEL_36;
      }
    }

    v24 = 0;
LABEL_31:
    v28 = defaultPlaneName;
    if ((v22 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v23 = 0;
LABEL_43:

  return v23;
}

- (BOOL)isAutoshiftedToCapitalPlane:(id)plane
{
  planeCopy = plane;
  if (planeCopy && +[TypistKeyboardUtilities getAutoCapitalizationPrefSetting])
  {
    v5 = MEMORY[0x277CCA900];
    sentenceDelimitingCharacters = [(TypistKeyboard *)self sentenceDelimitingCharacters];
    v7 = [v5 characterSetWithCharactersInString:sentenceDelimitingCharacters];
    v8 = [planeCopy rangeOfCharacterFromSet:v7 options:4];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8 + 1;
    }

    autoshiftRegex = [(TypistKeyboard *)self autoshiftRegex];
    v11 = [autoshiftRegex firstMatchInString:planeCopy options:0 range:{v9, objc_msgSend(planeCopy, "length") - v9}];

    v12 = v11 != 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)getShiftedKeyPlaneName:(id)name
{
  nameCopy = name;
  planeSwitchTable = [(TypistKeyboard *)self planeSwitchTable];
  v6 = [planeSwitchTable objectForKeyedSubscript:nameCopy];

  v7 = [v6 allKeysForObject:@"⇧"];

  if (v7 && [v7 count])
  {
    defaultPlaneName = [v7 objectAtIndexedSubscript:0];
  }

  else
  {
    defaultPlaneName = [(TypistKeyboard *)self defaultPlaneName];
  }

  v9 = defaultPlaneName;

  return v9;
}

- (id)getAlternativeKeyPlaneName:(id)name
{
  nameCopy = name;
  planeSwitchTable = [(TypistKeyboard *)self planeSwitchTable];
  v6 = [planeSwitchTable objectForKeyedSubscript:nameCopy];

  v7 = [v6 allKeysForObject:@"🔤"];

  if (v7 && [v7 count])
  {
    v8 = [v7 objectAtIndexedSubscript:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getExpectedPlaneNameForKey:(id)key currentPlane:(id)plane
{
  keyCopy = key;
  planeCopy = plane;
  if (![keyCopy isEqualToString:@"⇧"])
  {
    if ([keyCopy isEqualToString:@"🔤"])
    {
      [(TypistKeyboard *)self setIsCapsLockedState:0];
      defaultPlaneName2 = [(TypistKeyboard *)self getAlternativeKeyPlaneName:planeCopy];
LABEL_34:
      v9 = defaultPlaneName2;
      goto LABEL_35;
    }

    defaultPlaneName = [(TypistKeyboard *)self defaultPlaneName];
    v15 = [(TypistKeyboard *)self getShiftedKeyPlaneName:defaultPlaneName];
    if ([v15 isEqualToString:planeCopy])
    {
      isCapsLockedState = [(TypistKeyboard *)self isCapsLockedState];

      if (!isCapsLockedState)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }

    getAlternatePlanesForDefaultPlane = [(TypistKeyboard *)self getAlternatePlanesForDefaultPlane];
    v18 = [getAlternatePlanesForDefaultPlane containsObject:planeCopy];
    if ((v18 & 1) == 0)
    {
      planeCopy = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getKeyplaneDescription:"getKeyplaneDescription:", planeCopy];
      if (([planeCopy ignoresShiftState] & 1) == 0)
      {

LABEL_32:
        defaultPlaneName2 = [(TypistKeyboard *)self defaultPlaneName];
        goto LABEL_34;
      }

      v52 = planeCopy;
    }

    v20 = [keyCopy isEqualToString:@" "];
    if (v20)
    {
      keyPlanes = [(TypistKeyboard *)self keyPlanes];
      defaultPlaneName3 = [(TypistKeyboard *)self defaultPlaneName];
      v54 = [keyPlanes objectForKeyedSubscript:?];
      v21 = [v54 objectForKeyedSubscript:@" "];
      if (v21)
      {
        v53 = v21;
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen _referenceBounds];
        if (CGRectGetHeight(v57) <= 1194.0)
        {
LABEL_21:

          v24 = 1;
          goto LABEL_28;
        }

        mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen2 _referenceBounds];
        if (CGRectGetHeight(v58) > 1194.0 && [(TypistKeyboard *)self isFloating])
        {

          goto LABEL_21;
        }

        v47 = mainScreen2;
        v48 = mainScreen;
        v25 = 1;
      }

      else
      {
        v53 = 0;
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }

    if ([keyCopy isEqualToString:@"⏎"])
    {
      v24 = 1;
      if ((v25 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v51 = keyPlanes;
      keyPlanes2 = [(TypistKeyboard *)self keyPlanes];
      v49 = [keyPlanes2 objectForKeyedSubscript:planeCopy];
      v27 = [v49 objectForKeyedSubscript:keyCopy];
      v28 = [v27 objectForKeyedSubscript:@"more-after"];
      if ([v28 BOOLValue] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"'"))
      {
        v24 = 1;
      }

      else
      {
        keyPlanes3 = [(TypistKeyboard *)self keyPlanes];
        v45 = [keyPlanes3 objectForKeyedSubscript:planeCopy];
        v44 = [v45 objectForKeyedSubscript:keyCopy];
        v29 = [v44 objectForKeyedSubscript:@"type"];
        if (v29)
        {
          v43 = v29;
          keyPlanes4 = [(TypistKeyboard *)self keyPlanes];
          v41 = [keyPlanes4 objectForKeyedSubscript:planeCopy];
          v40 = [v41 objectForKeyedSubscript:keyCopy];
          v30 = [v40 objectForKeyedSubscript:@"basekey"];
          if (v30)
          {
            v39 = v30;
            keyPlanes5 = [(TypistKeyboard *)self keyPlanes];
            v37 = [keyPlanes5 objectForKeyedSubscript:planeCopy];
            v36 = [v37 objectForKeyedSubscript:keyCopy];
            v35 = [v36 objectForKeyedSubscript:@"type"];
            if ([v35 isEqualToString:@"popover"])
            {
              keyPlanes6 = [(TypistKeyboard *)self keyPlanes];
              v33 = [keyPlanes6 objectForKeyedSubscript:planeCopy];
              v32 = [v33 objectForKeyedSubscript:keyCopy];
              v31 = [v32 objectForKeyedSubscript:@"basekey"];
              v24 = [v31 isEqualToString:@"'"];
            }

            else
            {
              v24 = 0;
            }

            v30 = v39;
          }

          else
          {
            v24 = 0;
          }

          v29 = v43;
        }

        else
        {
          v24 = 0;
        }
      }

      keyPlanes = v51;
      if ((v25 & 1) == 0)
      {
LABEL_27:
        if (!v20)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }

    if ((v20 & 1) == 0)
    {
LABEL_29:
      if ((v18 & 1) == 0)
      {
      }

      if ((v24 & 1) == 0)
      {
        defaultPlaneName2 = planeCopy;
        goto LABEL_34;
      }

      goto LABEL_32;
    }

LABEL_28:

    goto LABEL_29;
  }

  v9 = [(TypistKeyboard *)self getShiftedKeyPlaneName:planeCopy];
  if ([(TypistKeyboard *)self isCapsLockedState])
  {
    defaultPlaneName4 = [(TypistKeyboard *)self defaultPlaneName];
    v11 = [planeCopy isEqualToString:defaultPlaneName4];

    if (v11)
    {
      defaultPlaneName5 = [(TypistKeyboard *)self defaultPlaneName];

      v9 = defaultPlaneName5;
    }
  }

  [(TypistKeyboard *)self setIsCapsLockedState:0];
LABEL_35:

  return v9;
}

- (void)typeKeystrokeStream:(id)stream completion:(id)completion
{
  streamCopy = stream;
  completionCopy = completion;
  if (streamCopy && [streamCopy count])
  {
    v6 = [TypistKeyboardUtilities convertRecapCommands:streamCopy];
    [TypistKeyboardUtilities launchRecap:v6 completion:completionCopy];
  }
}

- (void)typeKeystrokeStream:(id)stream
{
  streamCopy = stream;
  if (streamCopy)
  {
    v5 = streamCopy;
    if ([streamCopy count])
    {
      v4 = [TypistKeyboardUtilities convertRecapCommands:v5];
      [TypistKeyboardUtilities launchRecap:v4];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)typeString:(id)string completion:(id)completion
{
  stringCopy = string;
  completionCopy = completion;
  if ([stringCopy length])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"⇧", @"⇧"];
    v8 = [stringCopy stringByReplacingOccurrencesOfString:v7 withString:@"⇪"];
    if ([(TypistKeyboard *)self usePredictionBar]&& +[TypistKeyboardUtilities getPredictivePrefSetting]&& ![(TypistKeyboard *)self usesMecabraCandidateBar])
    {
      v9 = [(TypistKeyboard *)self generateKeystrokeStream:v8];
      [(TypistKeyboard *)self typeKeystrokeStreamWithPredictive:v9 originalText:v8 completion:completionCopy];
    }

    else
    {
      v9 = [(TypistKeyboard *)self generateKeystrokeStream:v8];
      [(TypistKeyboard *)self typeKeystrokeStream:v9 completion:completionCopy];
    }
  }
}

- (void)typeString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (stringCopy && [stringCopy length])
  {
    hardwareKeyboard = [(TypistKeyboard *)self hardwareKeyboard];

    if (hardwareKeyboard)
    {
      [(TypistKeyboard *)self typeStringWithHardwareKeyboard:v5];
    }

    else
    {
      if ([(TypistKeyboard *)self fastTyping])
      {
        [TypistKeyboardUtilities setRecapFastMode:1];
      }

      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __29__TypistKeyboard_typeString___block_invoke;
      v7[3] = &unk_279DF4650;
      v7[4] = self;
      [(TypistKeyboard *)self typeString:v5 completion:v7];
    }
  }
}

void *__29__TypistKeyboard_typeString___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) fastTyping];
  if (result)
  {

    return [TypistKeyboardUtilities setRecapFastMode:0];
  }

  return result;
}

- (void)typeString:(id)string withCommit:(id)commit
{
  stringCopy = string;
  commitCopy = commit;
  candidatebar = [(TypistKeyboard *)self candidatebar];
  if (candidatebar && (v15 = candidatebar, v16 = [(TypistKeyboard *)self usesMecabraCandidateBar], v15, v16))
  {
    v17 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v27 = 0;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __40__TypistKeyboard_typeString_withCommit___block_invoke;
    v25[3] = &unk_279DF4710;
    v25[4] = v26;
    v18 = MEMORY[0x274398FD0](v25);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __40__TypistKeyboard_typeString_withCommit___block_invoke_2;
    v21[3] = &unk_279DF47F0;
    v21[4] = self;
    v22 = commitCopy;
    v19 = v17;
    v23 = v19;
    v24 = v26;
    v20 = MEMORY[0x274398FD0](v21);
    [(TypistKeyboard *)self typeString:stringCopy completion:v20];
    v18[2](v18);

    _Block_object_dispose(v26, 8);
  }

  else
  {
    TYLogl(OS_LOG_TYPE_ERROR, @"ERROR: This function is for CJ based candidate bar only! Aborting.", v9, v10, v11, v12, v13, v14);
  }
}

void *__40__TypistKeyboard_typeString_withCommit___block_invoke(void *result)
{
  if ((*(*(result[4] + 8) + 24) & 1) == 0)
  {
    v1 = result;
    do
    {
      result = [TypistKeyboardUtilities waitFor:0.02];
    }

    while (*(*(v1[4] + 8) + 24) != 1);
  }

  return result;
}

void *__40__TypistKeyboard_typeString_withCommit___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) commitCandidate:*(a1 + 40)];
  result = [*(a1 + 48) tryLock];
  if (result)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v3 = *(a1 + 48);

    return [v3 unlock];
  }

  return result;
}

- (void)swipeString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v8 = stringCopy;
    if ([stringCopy length])
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"⇧", @"⇧"];
      v6 = [v8 stringByReplacingOccurrencesOfString:v5 withString:@"⇪"];
      v7 = [(TypistKeyboard *)self generateSwipeStream:v6];
      [(TypistKeyboard *)self typeKeystrokeStream:v7 completion:0];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)writeString:(id)string inFrame:(CGRect)frame rotationBias:(double)bias isCursive:(BOOL)cursive
{
  cursiveCopy = cursive;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  stringCopy = string;
  if (stringCopy)
  {
    v15 = stringCopy;
    if ([stringCopy length])
    {
      bias = [(TypistKeyboard *)self generateHandwritingStream:v15 inFrame:1 isPencil:cursiveCopy rotationBias:x isCursive:y, width, height, bias];
      [(TypistKeyboard *)self typeKeystrokeStream:bias completion:0];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)writeString:(id)string inFrame:(CGRect)frame rotationBias:(double)bias isCursive:(BOOL)cursive digitizer:(int)digitizer
{
  cursiveCopy = cursive;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  stringCopy = string;
  if (stringCopy)
  {
    v17 = stringCopy;
    if ([stringCopy length])
    {
      bias = [(TypistKeyboard *)self generateHandwritingStream:v17 inFrame:digitizer == 0 isPencil:cursiveCopy rotationBias:x isCursive:y, width, height, bias];
      [(TypistKeyboard *)self typeKeystrokeStream:bias completion:0];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)writePencilGesture:(int)gesture inStyle:(int)style inFrame:(CGRect)frame
{
  v6 = [(TypistKeyboard *)self generatePencilGestureStream:*&gesture gestureStyle:*&style inFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(TypistKeyboard *)self typeKeystrokeStream:v6 completion:0];
}

- (id)getAllCandidates
{
  candidatebar = [(TypistKeyboard *)self candidatebar];

  if (candidatebar)
  {
    candidatebar2 = [(TypistKeyboard *)self candidatebar];
    getAllCandidates = [candidatebar2 getAllCandidates];
  }

  else
  {
    getAllCandidates = 0;
  }

  return getAllCandidates;
}

- (id)getVisibleCandidates
{
  candidatebar = [(TypistKeyboard *)self candidatebar];

  if (candidatebar)
  {
    candidatebar2 = [(TypistKeyboard *)self candidatebar];
    getVisibleCandidates = [candidatebar2 getVisibleCandidates];
  }

  else
  {
    getVisibleCandidates = 0;
  }

  return getVisibleCandidates;
}

- (int64_t)commitCandidate:(id)candidate
{
  candidateCopy = candidate;
  candidatebar = [(TypistKeyboard *)self candidatebar];

  if (candidatebar)
  {
    candidatebar2 = [(TypistKeyboard *)self candidatebar];
    v7 = [candidatebar2 selectCandidate:candidateCopy];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (int64_t)commitCandidateAtIndex:(int64_t)index
{
  candidatebar = [(TypistKeyboard *)self candidatebar];

  if (!candidatebar)
  {
    return -1;
  }

  candidatebar2 = [(TypistKeyboard *)self candidatebar];
  v7 = [candidatebar2 selectCandidateAtIndex:index];

  return v7;
}

- (BOOL)hasCandidate:(id)candidate
{
  candidateCopy = candidate;
  candidatebar = [(TypistKeyboard *)self candidatebar];

  if (candidatebar)
  {
    candidatebar2 = [(TypistKeyboard *)self candidatebar];
    v7 = [candidatebar2 hasCandidate:candidateCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasCandidate:(id)candidate inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  candidateCopy = candidate;
  candidatebar = [(TypistKeyboard *)self candidatebar];

  if (candidatebar)
  {
    candidatebar2 = [(TypistKeyboard *)self candidatebar];
    v10 = [candidatebar2 hasCandidate:candidateCopy inRange:{location, length}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)hasCandidates:(id)candidates
{
  candidatesCopy = candidates;
  candidatebar = [(TypistKeyboard *)self candidatebar];

  if (candidatebar)
  {
    candidatebar2 = [(TypistKeyboard *)self candidatebar];
    v7 = [candidatebar2 hasCandidates:candidatesCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasCandidates:(id)candidates inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  candidatesCopy = candidates;
  candidatebar = [(TypistKeyboard *)self candidatebar];

  if (candidatebar)
  {
    candidatebar2 = [(TypistKeyboard *)self candidatebar];
    [candidatebar2 hasCandidates:candidatesCopy inRange:{location, length}];
  }

  return 0;
}

- (id)splitKeystrokeStreamByWord:(id)word originalText:(id)text
{
  v51 = *MEMORY[0x277D85DE8];
  wordCopy = word;
  textCopy = text;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  string = [MEMORY[0x277CCAB68] string];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCAB50] whitespaceAndNewlineCharacterSet];
  punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
  [whitespaceAndNewlineCharacterSet formUnionWithCharacterSet:punctuationCharacterSet];

  v33 = textCopy;
  v10 = [textCopy componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
  v11 = [v10 mutableCopy];

  v35 = v11;
  [v11 removeObject:&stru_288014100];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = wordCopy;
  v12 = 0x277CCA000;
  v13 = 0x277CBE000;
  v39 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v39)
  {
    v38 = *v41;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        v15 = v13;
        if (*v41 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v40 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:@"keystroke"];
        if ([v17 rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = [v17 substringFromIndex:{objc_msgSend(v17, "length") - 1}];
          [string appendString:v18];

          [array2 addObject:v16];
          v13 = v15;
        }

        else
        {
          if ([string length])
          {
            v49[0] = @"word";
            v48[0] = @"type";
            v48[1] = @"text";
            v19 = MEMORY[0x277CCACA8];
            v20 = [v35 objectAtIndexedSubscript:0];
            v21 = [v19 stringWithString:v20];
            v49[1] = v21;
            v48[2] = @"keystrokeStream";
            v22 = [MEMORY[0x277CBEA60] arrayWithArray:array2];
            v49[2] = v22;
            v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];
            [array addObject:v23];

            [string setString:&stru_288014100];
            [array2 removeAllObjects];
            [v35 removeObjectAtIndex:0];
          }

          v47[0] = @"separator";
          v46[0] = @"type";
          v46[1] = @"text";
          v24 = [MEMORY[0x277CCACA8] stringWithString:string];
          v47[1] = v24;
          v46[2] = @"keystrokeStream";
          v25 = [MEMORY[0x277CBEA60] arrayWithObject:v16];
          v47[2] = v25;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];
          [array addObject:v26];

          v13 = 0x277CBE000uLL;
        }

        v12 = 0x277CCA000uLL;
      }

      v39 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v39);
  }

  if ([string length] && objc_msgSend(v35, "count"))
  {
    v45[0] = @"separator";
    v44[0] = @"type";
    v44[1] = @"text";
    v27 = *(v12 + 3240);
    v28 = [v35 objectAtIndexedSubscript:0];
    v29 = [v27 stringWithString:v28];
    v45[1] = v29;
    v44[2] = @"keystrokeStream";
    v30 = [MEMORY[0x277CBEA60] arrayWithArray:array2];
    v45[2] = v30;
    v31 = [*(v13 + 2752) dictionaryWithObjects:v45 forKeys:v44 count:3];
    [array addObject:v31];
  }

  return array;
}

- (void)typeKeystrokeStreamWithPredictive:(id)predictive originalText:(id)text completion:(id)completion
{
  predictiveCopy = predictive;
  textCopy = text;
  completionCopy = completion;
  candidatebar = [(TypistKeyboard *)self candidatebar];
  if (!candidatebar)
  {
    goto LABEL_4;
  }

  v17 = candidatebar;
  candidatebar2 = [(TypistKeyboard *)self candidatebar];
  if (candidatebar2)
  {
    v19 = candidatebar2;
    usesMecabraCandidateBar = [(TypistKeyboard *)self usesMecabraCandidateBar];

    if (usesMecabraCandidateBar)
    {
LABEL_4:
      TYLogl(OS_LOG_TYPE_ERROR, @"ERROR: Predictive setting or QuickType bar is not enabled with the keyboard. Aborting.", v11, v12, v13, v14, v15, v16);
      goto LABEL_7;
    }
  }

  else
  {
  }

  v21 = [(TypistKeyboard *)self splitKeystrokeStreamByWord:predictiveCopy originalText:textCopy];
  [(TypistKeyboard *)self typeWordKeystrokeWithPredictive:v21 atIndex:0 completion:completionCopy];

LABEL_7:
}

- (void)typeWordKeystrokeWithPredictive:(id)predictive atIndex:(int64_t)index completion:(id)completion
{
  predictiveCopy = predictive;
  completionCopy = completion;
  if ([predictiveCopy count] && objc_msgSend(predictiveCopy, "count") > index)
  {
    v10 = [predictiveCopy objectAtIndexedSubscript:index];
    v11 = [v10 objectForKeyedSubscript:@"type"];
    v12 = [v11 isEqualToString:@"separator"];

    if (v12)
    {
      v13 = [v10 objectForKeyedSubscript:@"keystrokeStream"];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __69__TypistKeyboard_typeWordKeystrokeWithPredictive_atIndex_completion___block_invoke;
      v25[3] = &unk_279DF4818;
      v25[4] = self;
      v26 = predictiveCopy;
      indexCopy = index;
      v27 = completionCopy;
      [(TypistKeyboard *)self typeKeystrokeStream:v13 completion:v25];

      v14 = v26;
    }

    else
    {
      if ([(TypistKeyboard *)self usePredictionBar])
      {
        candidatebar = [(TypistKeyboard *)self candidatebar];
        v16 = [v10 objectForKeyedSubscript:@"text"];
        v17 = [candidatebar getIndexOfCandidate:v16];

        if ((v17 & 0x8000000000000000) == 0)
        {
          candidatebar2 = [(TypistKeyboard *)self candidatebar];
          [candidatebar2 selectCandidateAtIndex:v17];

          [(TypistKeyboard *)self typeWordKeystrokeWithPredictive:predictiveCopy atIndex:index + 1 completion:completionCopy];
LABEL_12:

          goto LABEL_13;
        }
      }

      v19 = [v10 objectForKeyedSubscript:@"keystrokeStream"];
      v20 = [v10 objectForKeyedSubscript:@"text"];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __69__TypistKeyboard_typeWordKeystrokeWithPredictive_atIndex_completion___block_invoke_2;
      v21[3] = &unk_279DF4818;
      v21[4] = self;
      v22 = predictiveCopy;
      indexCopy2 = index;
      v23 = completionCopy;
      [(TypistKeyboard *)self typeWordKeystrokes:v19 expectedWord:v20 atIndex:0 completion:v21];

      v14 = v22;
    }

    goto LABEL_12;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_13:
}

- (void)typeWordKeystrokes:(id)keystrokes expectedWord:(id)word atIndex:(int64_t)index completion:(id)completion
{
  v20[1] = *MEMORY[0x277D85DE8];
  keystrokesCopy = keystrokes;
  wordCopy = word;
  completionCopy = completion;
  if ([keystrokesCopy count] && objc_msgSend(keystrokesCopy, "count") > index)
  {
    v13 = [keystrokesCopy objectAtIndexedSubscript:index];
    v20[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__TypistKeyboard_typeWordKeystrokes_expectedWord_atIndex_completion___block_invoke;
    v15[3] = &unk_279DF4840;
    v15[4] = self;
    v16 = wordCopy;
    v17 = keystrokesCopy;
    v18 = completionCopy;
    indexCopy = index;
    [(TypistKeyboard *)self typeKeystrokeStream:v14 completion:v15];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

uint64_t __69__TypistKeyboard_typeWordKeystrokes_expectedWord_atIndex_completion___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) usePredictionBar] || (objc_msgSend(*(a1 + 32), "candidatebar"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "getIndexOfCandidate:", *(a1 + 40)), v2, v3 < 0))
  {
    v10 = *(a1 + 32);
    v12 = *(a1 + 40);
    v9 = *(a1 + 56);
    v11 = *(a1 + 48);
    v8 = *(a1 + 64) + 1;
  }

  else
  {
    v4 = [*(a1 + 32) candidatebar];
    [v4 selectCandidateAtIndex:v3];

    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = *(a1 + 32);
    v8 = [v5 count];
    v9 = *(a1 + 56);
    v10 = v7;
    v11 = v5;
    v12 = v6;
  }

  return [v10 typeWordKeystrokes:v11 expectedWord:v12 atIndex:v8 completion:v9];
}

- (void)switchKeyPlaneOnActiveKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData switchToPlane:"switchToPlane:", keyboardCopy];
}

- (CGPoint)centerOfKey:(CGPoint)key withOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v6 = key.y;
  v7 = key.x;
  v8 = +[TypistKeyboardData keyboardData];

  [(objc_class *)v8 centerOfKey:v7 withOffset:v6, x, y];
  result.y = v10;
  result.x = v9;
  return result;
}

- (TypistKeyboard)initWithHardwareKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  v10.receiver = self;
  v10.super_class = TypistKeyboard;
  v5 = [(TypistKeyboard *)&v10 init];
  v6 = v5;
  if (v5)
  {
    typeInterval = v5->_typeInterval;
    v5->_typeInterval = &unk_288029520;

    pressDuration = v6->_pressDuration;
    v6->_pressDuration = &unk_288029520;

    [(TypistKeyboard *)v6 attachHardwareKeyboard:keyboardCopy];
  }

  return v6;
}

- (void)pressKeycode:(unsigned __int16)keycode
{
  keycodeCopy = keycode;
  hardwareKeyboard = [(TypistKeyboard *)self hardwareKeyboard];

  if (hardwareKeyboard)
  {
    hardwareKeyboard2 = [(TypistKeyboard *)self hardwareKeyboard];
    [hardwareKeyboard2 pressKeycode:keycodeCopy];
  }
}

+ (void)typeStringOnHardwareKeyboard:(id)keyboard withLanguage:(id)language
{
  keyboardCopy = keyboard;
  languageCopy = language;
  if (keyboardCopy && languageCopy)
  {
    v12 = [[TypistHWKeyboard alloc] initWithLanguage:languageCopy];
    if (v12)
    {
      [&unk_288029520 doubleValue];
      [(TypistHWKeyboard *)v12 setTypeInterval:?];
      [(TypistHWKeyboard *)v12 typeString:keyboardCopy];
      [(TypistHWKeyboard *)v12 detach];
    }

    else
    {
      TYLogl(OS_LOG_TYPE_ERROR, @"Unable to attach hardware keyboard with language %@", v6, v7, v8, v9, v10, v11, languageCopy);
    }
  }
}

- (void)attachHardwareKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  if (keyboardCopy)
  {
    v23 = keyboardCopy;
    hardwareKeyboard = [(TypistKeyboard *)self hardwareKeyboard];

    if (hardwareKeyboard)
    {
      TYLog(@"An existing hardware keyboard was found to be attached. Detaching prior to attaching new keyboard (%@)...", v7, v8, v9, v10, v11, v12, v13, v23);
      [(TypistKeyboard *)self detachHardwareKeyboard];
    }

    v14 = [[TypistHWKeyboard alloc] initWithLanguage:v23];
    [(TypistKeyboard *)self setHardwareKeyboard:v14];

    pressDuration = [(TypistKeyboard *)self pressDuration];
    if (pressDuration)
    {
      pressDuration2 = [(TypistKeyboard *)self pressDuration];
      [pressDuration2 doubleValue];
    }

    else
    {
      [&unk_288029520 doubleValue];
    }

    v17 = v16;
    hardwareKeyboard2 = [(TypistKeyboard *)self hardwareKeyboard];
    [hardwareKeyboard2 setPressDuration:v17];

    if (pressDuration)
    {
    }

    typeInterval = [(TypistKeyboard *)self typeInterval];
    if (typeInterval)
    {
      pressDuration2 = [(TypistKeyboard *)self typeInterval];
      [pressDuration2 doubleValue];
    }

    else
    {
      [&unk_288029540 doubleValue];
    }

    v21 = v20;
    hardwareKeyboard3 = [(TypistKeyboard *)self hardwareKeyboard];
    [hardwareKeyboard3 setTypeInterval:v21];

    if (typeInterval)
    {
    }

    keyboardCopy = v23;
  }
}

- (void)attachHardwareKeyboardWithCountryCode:(id)code
{
  if (code)
  {
    v6 = +[TypistHWKeyboard convertHIDCountryCodeToLanguage:](TypistHWKeyboard, "convertHIDCountryCodeToLanguage:", [code integerValue]);
    typeInterval = self->_typeInterval;
    self->_typeInterval = &unk_288029520;

    pressDuration = self->_pressDuration;
    self->_pressDuration = &unk_288029520;

    [(TypistKeyboard *)self attachHardwareKeyboard:v6];
  }
}

- (void)detachHardwareKeyboard
{
  hardwareKeyboard = [(TypistKeyboard *)self hardwareKeyboard];

  if (hardwareKeyboard)
  {
    hardwareKeyboard2 = [(TypistKeyboard *)self hardwareKeyboard];
    [hardwareKeyboard2 detach];

    [(TypistKeyboard *)self setHardwareKeyboard:0];
  }
}

- (void)typeStringWithHardwareKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  hardwareKeyboard = [(TypistKeyboard *)self hardwareKeyboard];

  if (hardwareKeyboard)
  {
    hardwareKeyboard2 = [(TypistKeyboard *)self hardwareKeyboard];
    [hardwareKeyboard2 typeString:keyboardCopy];
  }

  else
  {
    TYLogl(OS_LOG_TYPE_ERROR, @"A call to typeStringWithHardwareKeyboard was made but no hardware keyboard is attached.", v5, v6, v7, v8, v9, v10);
  }
}

- (void)pressAndHoldHardwareKeys:(id)keys forDuration:(double)duration withValidation:(id)validation validateAfter:(double)after
{
  keysCopy = keys;
  validationCopy = validation;
  if (keysCopy)
  {
    hardwareKeyboard = [(TypistKeyboard *)self hardwareKeyboard];

    if (hardwareKeyboard)
    {
      hardwareKeyboard2 = [(TypistKeyboard *)self hardwareKeyboard];
      [hardwareKeyboard2 pressAndHoldKeys:keysCopy forDuration:validationCopy withValidation:duration after:after];
    }
  }
}

- (void)toggleCapsLock
{
  hardwareKeyboard = [(TypistKeyboard *)self hardwareKeyboard];

  if (hardwareKeyboard)
  {
    hardwareKeyboard2 = [(TypistKeyboard *)self hardwareKeyboard];
    [hardwareKeyboard2 typeString:@"⇪"];
  }

  else
  {

    [(TypistKeyboard *)self typeString:@"⇪"];
  }
}

- (void)tapGlobeKey
{
  hardwareKeyboard = [(TypistKeyboard *)self hardwareKeyboard];

  if (hardwareKeyboard)
  {
    hardwareKeyboard2 = [(TypistKeyboard *)self hardwareKeyboard];
    [hardwareKeyboard2 typeString:@"⌨"];
  }

  else
  {

    [(TypistKeyboard *)self typeString:@"🌐"];
  }
}

- (void)tapMoreKey
{
  hardwareKeyboard = [(TypistKeyboard *)self hardwareKeyboard];

  if (hardwareKeyboard)
  {
    TYLog(@"%@ is not an understood action in the context of hardware keyboards. Aborting...", v4, v5, v6, v7, v8, v9, v10, @"🔤");
  }

  else
  {

    [(TypistKeyboard *)self typeString:@"🔤"];
  }
}

- (TypistKeyboard)initWithCoder:(id)coder
{
  coderCopy = coder;
  v39.receiver = self;
  v39.super_class = TypistKeyboard;
  v5 = [(TypistKeyboard *)&v39 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardID"];
    keyboardID = v5->_keyboardID;
    v5->_keyboardID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"typeInterval"];
    typeInterval = v5->_typeInterval;
    v5->_typeInterval = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hardwareKeyboard"];
    hardwareKeyboard = v5->_hardwareKeyboard;
    v5->_hardwareKeyboard = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidatebar"];
    candidatebar = v5->_candidatebar;
    v5->_candidatebar = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"layoutName"];
    layoutName = v5->_layoutName;
    v5->_layoutName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"languageID"];
    languageID = v5->_languageID;
    v5->_languageID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"regionCode"];
    regionCode = v5->_regionCode;
    v5->_regionCode = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardSW"];
    keyboardSW = v5->_keyboardSW;
    v5->_keyboardSW = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardType"];
    keyboardType = v5->_keyboardType;
    v5->_keyboardType = v22;

    v5->_usePopupKeys = [coderCopy decodeBoolForKey:@"usePopupKeys"];
    v5->_usePredictionBar = [coderCopy decodeBoolForKey:@"usePredictionBar"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyPlanes"];
    keyPlanes = v5->_keyPlanes;
    v5->_keyPlanes = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultPlaneName"];
    defaultPlaneName = v5->_defaultPlaneName;
    v5->_defaultPlaneName = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"planeSwitchTable"];
    planeSwitchTable = v5->_planeSwitchTable;
    v5->_planeSwitchTable = v28;

    v5->_dictationSupported = [coderCopy decodeBoolForKey:@"dictationSupported"];
    v5->_shouldShowDictationKey = [coderCopy decodeBoolForKey:@"shouldShowDictationKey"];
    v5->_shouldShowGlobeKey = [coderCopy decodeBoolForKey:@"shouldShowGlobeKey"];
    v5->_isTenKey = [coderCopy decodeBoolForKey:@"isTenKey"];
    v5->_isKana = [coderCopy decodeBoolForKey:@"isKana"];
    v5->_isHandwriting = [coderCopy decodeBoolForKey:@"isHandwriting"];
    v5->_fastTyping = [coderCopy decodeBoolForKey:@"fastTyping"];
    v5->_hasCandidatesToCommit = [coderCopy decodeBoolForKey:@"hasCandidatesToCommit"];
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sentenceDelimitingCharacters"];
    sentenceDelimitingCharacters = v5->_sentenceDelimitingCharacters;
    v5->_sentenceDelimitingCharacters = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sentenceTrailingCharacters"];
    sentenceTrailingCharacters = v5->_sentenceTrailingCharacters;
    v5->_sentenceTrailingCharacters = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sentencePrefixingCharacters"];
    sentencePrefixingCharacters = v5->_sentencePrefixingCharacters;
    v5->_sentencePrefixingCharacters = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoshiftRegex"];
    autoshiftRegex = v5->_autoshiftRegex;
    v5->_autoshiftRegex = v36;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  keyboardID = self->_keyboardID;
  v22 = coderCopy;
  if (keyboardID)
  {
    [coderCopy encodeObject:keyboardID forKey:@"keyboardID"];
    coderCopy = v22;
  }

  typeInterval = self->_typeInterval;
  if (typeInterval)
  {
    [v22 encodeObject:typeInterval forKey:@"typeInterval"];
    coderCopy = v22;
  }

  candidatebar = self->_candidatebar;
  if (candidatebar)
  {
    [v22 encodeObject:candidatebar forKey:@"candidatebar"];
    coderCopy = v22;
  }

  hardwareKeyboard = self->_hardwareKeyboard;
  if (hardwareKeyboard)
  {
    [v22 encodeObject:hardwareKeyboard forKey:@"hardwareKeyboard"];
    coderCopy = v22;
  }

  layoutName = self->_layoutName;
  if (layoutName)
  {
    [v22 encodeObject:layoutName forKey:@"layoutName"];
    coderCopy = v22;
  }

  languageID = self->_languageID;
  if (languageID)
  {
    [v22 encodeObject:languageID forKey:@"languageID"];
    coderCopy = v22;
  }

  regionCode = self->_regionCode;
  if (regionCode)
  {
    [v22 encodeObject:regionCode forKey:@"regionCode"];
    coderCopy = v22;
  }

  keyboardSW = self->_keyboardSW;
  if (keyboardSW)
  {
    [v22 encodeObject:keyboardSW forKey:@"keyboardSW"];
    coderCopy = v22;
  }

  keyboardType = self->_keyboardType;
  if (keyboardType)
  {
    [v22 encodeObject:keyboardType forKey:@"keyboardType"];
    coderCopy = v22;
  }

  [coderCopy encodeBool:self->_usePopupKeys forKey:@"usePopupKeys"];
  [v22 encodeBool:self->_usePredictionBar forKey:@"usePredictionBar"];
  keyPlanes = self->_keyPlanes;
  if (keyPlanes)
  {
    [v22 encodeObject:keyPlanes forKey:@"keyPlanes"];
  }

  defaultPlaneName = self->_defaultPlaneName;
  if (defaultPlaneName)
  {
    [v22 encodeObject:defaultPlaneName forKey:@"defaultPlaneName"];
  }

  planeSwitchTable = self->_planeSwitchTable;
  v17 = v22;
  if (planeSwitchTable)
  {
    [v22 encodeObject:planeSwitchTable forKey:@"planeSwitchTable"];
    v17 = v22;
  }

  [v17 encodeBool:self->_dictationSupported forKey:@"dictationSupported"];
  [v22 encodeBool:self->_shouldShowDictationKey forKey:@"shouldShowDictationKey"];
  [v22 encodeBool:self->_shouldShowGlobeKey forKey:@"shouldShowGlobeKey"];
  [v22 encodeBool:self->_isTenKey forKey:@"isTenKey"];
  [v22 encodeBool:self->_isKana forKey:@"isKana"];
  [v22 encodeBool:self->_isHandwriting forKey:@"isHandwriting"];
  [v22 encodeBool:self->_fastTyping forKey:@"fastTyping"];
  [v22 encodeBool:self->_hasCandidatesToCommit forKey:@"hasCandidatesToCommit"];
  [v22 encodeBool:self->_sentenceDelimitingCharacters != 0 forKey:@"sentenceDelimitingCharacters"];
  sentenceTrailingCharacters = self->_sentenceTrailingCharacters;
  if (sentenceTrailingCharacters)
  {
    [v22 encodeObject:sentenceTrailingCharacters forKey:@"sentenceTrailingCharacters"];
  }

  sentencePrefixingCharacters = self->_sentencePrefixingCharacters;
  if (sentencePrefixingCharacters)
  {
    [v22 encodeObject:sentencePrefixingCharacters forKey:@"sentencePrefixingCharacters"];
  }

  autoshiftRegex = self->_autoshiftRegex;
  v21 = v22;
  if (autoshiftRegex)
  {
    [v22 encodeObject:autoshiftRegex forKey:@"autoshiftRegex"];
    v21 = v22;
  }
}

- (void)_bailWithError:(id)error completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, error);
  }
}

- (BOOL)isAvailableKeyOnCurrentPlane:(id)plane
{
  v3 = [(TypistKeyboard *)self findKeyOnCurrentPlane:plane];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"type"];
    v6 = [v5 isEqualToString:@"basekey"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isAvailablePopoverOnCurrentPlane:(id)plane
{
  v3 = [(TypistKeyboard *)self findKeyOnCurrentPlane:plane];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"type"];
    v6 = [v5 isEqualToString:@"popover"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isAvailableFlickOnCurrentPlane:(id)plane withDirection:(id)direction
{
  planeCopy = plane;
  directionCopy = direction;
  if ([(TypistKeyboard *)self isTenKey])
  {
    v8 = [(TypistKeyboard *)self findKeyOnCurrentPlane:planeCopy];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 objectForKeyedSubscript:@"type"];
      if ([v10 isEqualToString:@"gesture"])
      {
        v11 = [v9 objectForKeyedSubscript:@"direction"];
        v12 = [v11 isEqualToString:directionCopy];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isAvailableGestureOnCurrentPlane:(id)plane withDirection:(id)direction
{
  plane = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", direction, plane];
  v6 = [(TypistKeyboard *)self findKeyOnCurrentPlane:plane];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"type"];
    v9 = [v8 isEqualToString:@"gesture"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tapKey:(id)key tapCount:(unint64_t)count completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  typeInterval = [(TypistKeyboard *)self typeInterval];
  [(TypistKeyboard *)self tapKey:keyCopy tapCount:count overriddenTypeInterval:typeInterval completion:completionCopy];
}

- (void)tapKey:(id)key tapCount:(unint64_t)count overriddenTypeInterval:(id)interval completion:(id)completion
{
  v31[2] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  intervalCopy = interval;
  completionCopy = completion;
  v12 = [(TypistKeyboard *)self findKeyOnCurrentPlane:keyCopy];
  v13 = v12;
  if (v12 && ([v12 objectForKeyedSubscript:@"type"], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", @"basekey"), v14, v15))
  {
    v24 = objc_opt_new();
    for (i = objc_opt_new(); count; --count)
    {
      if (count == 1)
      {
        typeInterval = [(TypistKeyboard *)self typeInterval];
        stringValue = [typeInterval stringValue];
      }

      else
      {
        stringValue = [intervalCopy stringValue];
      }

      [i addObject:v13];
      v30[0] = @"action";
      v30[1] = @"time";
      v31[0] = @"wait";
      v31[1] = stringValue;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
      [i addObject:v19];
    }

    v28[0] = @"keystroke";
    v28[1] = @"actions";
    v29[0] = keyCopy;
    v29[1] = i;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
    keyCopy = v24;
    [v24 addObject:v20];

    [(TypistKeyboard *)self typeKeystrokeStream:v24];
    v22 = 0;
  }

  else
  {
    v23 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA470];
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"No tap information was found for %@", keyCopy];
    v27 = keyCopy;
    i = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v22 = [v23 errorWithDomain:@"TypistKeyNotFoundError" code:1 userInfo:i];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v22);
  }
}

- (void)dragFromKey:(id)key toKey:(id)toKey completion:(id)completion
{
  v44[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  toKeyCopy = toKey;
  completionCopy = completion;
  v11 = [(TypistKeyboard *)self findKeyOnCurrentPlane:keyCopy];
  if (v11)
  {
    v12 = +[TypistKeyboardUtilities formattedKeyplaneName];
    v38 = [(TypistKeyboard *)self getExpectedPlaneNameForKey:keyCopy currentPlane:v12];
    v13 = [(TypistKeyboard *)self findKey:toKeyCopy inPlane:?];
    if (v13)
    {
      v37 = v12;
      v14 = objc_opt_new();
      v15 = objc_opt_new();
      v16 = MEMORY[0x277CCABB0];
      v17 = [v11 objectForKeyedSubscript:@"x"];
      [v17 floatValue];
      v18 = [v16 numberWithFloat:?];
      [v15 addObject:v18];

      v19 = MEMORY[0x277CCABB0];
      v20 = [v11 objectForKeyedSubscript:@"y"];
      [v20 floatValue];
      v21 = [v19 numberWithFloat:?];
      [v15 addObject:v21];

      v22 = MEMORY[0x277CCABB0];
      v23 = [v13 objectForKeyedSubscript:@"x"];
      [v23 floatValue];
      v24 = [v22 numberWithFloat:?];
      [v15 addObject:v24];

      v25 = MEMORY[0x277CCABB0];
      v26 = [v13 objectForKeyedSubscript:@"y"];
      [v26 floatValue];
      v27 = [v25 numberWithFloat:?];
      [v15 addObject:v27];

      v39 = @"actions";
      v28 = [(TypistKeyboard *)self _generateArgumentList:v15];
      v40 = v28;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      [v14 addObject:v29];

      [(TypistKeyboard *)self typeKeystrokeStream:v14];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }

      v30 = 0;
      v12 = v37;
    }

    else
    {
      v34 = MEMORY[0x277CCA9B8];
      v41 = *MEMORY[0x277CCA470];
      toKeyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"No key information was found for %@", toKeyCopy];
      v42 = toKeyCopy;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v30 = [v34 errorWithDomain:@"TypistKeyNotFoundError" code:1 userInfo:v36];

      [(TypistKeyboard *)self _bailWithError:v30 completion:completionCopy];
    }
  }

  else
  {
    v31 = MEMORY[0x277CCA9B8];
    v43 = *MEMORY[0x277CCA470];
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"No key information was found for %@", keyCopy];
    v44[0] = keyCopy;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v30 = [v31 errorWithDomain:@"TypistKeyNotFoundError" code:1 userInfo:v33];

    [(TypistKeyboard *)self _bailWithError:v30 completion:completionCopy];
  }
}

- (void)dragPopoverKey:(id)key completion:(id)completion
{
  v27[2] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  completionCopy = completion;
  v8 = [(TypistKeyboard *)self findKeyOnCurrentPlane:keyCopy];
  v9 = v8;
  if (v8 && ([v8 objectForKeyedSubscript:@"type"], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", @"popover"), v10, v11))
  {
    keyCopy = objc_opt_new();
    v13 = objc_opt_new();
    v21 = MEMORY[0x277CBEB38];
    keyPlanes = [(TypistKeyboard *)self keyPlanes];
    v14 = [v9 objectForKeyedSubscript:@"plane"];
    v15 = [keyPlanes objectForKeyedSubscript:v14];
    v16 = [v9 objectForKeyedSubscript:@"basekey"];
    v17 = [v15 objectForKeyedSubscript:v16];
    v22 = [v21 dictionaryWithDictionary:v17];

    [v22 setValue:@"taphold" forKey:@"action"];
    [v13 addObject:v22];
    [v13 addObject:v9];
    v26[0] = @"keystroke";
    v26[1] = @"actions";
    v27[0] = keyCopy;
    v27[1] = v13;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
    [keyCopy addObject:v18];

    [(TypistKeyboard *)self typeKeystrokeStream:keyCopy];
    v19 = 0;
  }

  else
  {
    v20 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA470];
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"No popover information was found for %@", keyCopy];
    v25 = keyCopy;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v19 = [v20 errorWithDomain:@"TypistKeyNotFoundError" code:1 userInfo:v13];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v19);
  }
}

- (void)flickKey:(id)key withDirection:(id)direction completion:(id)completion
{
  v32[2] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  directionCopy = direction;
  completionCopy = completion;
  if (![(TypistKeyboard *)self isTenKey])
  {
    v23 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA470];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"The current keyboard is not a ten key implementation or is not a ten key implementation known to this version of Typist. Please file a radar."];
    v28 = v12;
    directionCopy = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v22 = [v23 errorWithDomain:@"TypistKeyboardNotTenKeyError" code:1 userInfo:directionCopy];
    goto LABEL_10;
  }

  v11 = [(TypistKeyboard *)self findKeyOnCurrentPlane:keyCopy];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_8;
  }

  v13 = [v11 objectForKeyedSubscript:@"type"];
  if (([v13 isEqualToString:@"gesture"] & 1) == 0)
  {

    goto LABEL_8;
  }

  v14 = [v12 objectForKeyedSubscript:@"direction"];
  v15 = [v14 isEqualToString:directionCopy];

  if (!v15)
  {
LABEL_8:
    v24 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA470];
    directionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"No key information was found for %@ with direction %@", keyCopy, directionCopy];
    v30 = directionCopy;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v22 = [v24 errorWithDomain:@"TypistKeyNotFoundError" code:1 userInfo:v17];
    goto LABEL_9;
  }

  directionCopy = objc_opt_new();
  v17 = objc_opt_new();
  keyPlanes = [(TypistKeyboard *)self keyPlanes];
  v18 = [v12 objectForKeyedSubscript:@"plane"];
  v19 = [keyPlanes objectForKeyedSubscript:v18];
  v20 = [v12 objectForKeyedSubscript:@"basekey"];
  v25 = [v19 objectForKeyedSubscript:v20];

  [v17 addObject:v25];
  [v17 addObject:v12];
  v31[0] = @"keystroke";
  v31[1] = @"actions";
  v32[0] = keyCopy;
  v32[1] = v17;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  [directionCopy addObject:v21];

  [(TypistKeyboard *)self typeKeystrokeStream:directionCopy];
  v22 = 0;
LABEL_9:

LABEL_10:
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v22);
  }
}

- (void)swipeGestureKey:(id)key withDirection:(id)direction completion:(id)completion
{
  v30[2] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  completionCopy = completion;
  keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", direction, keyCopy];
  v11 = [(TypistKeyboard *)self findKeyOnCurrentPlane:keyCopy];
  v12 = v11;
  if (v11 && ([v11 objectForKeyedSubscript:@"type"], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"gesture"), v13, v14))
  {
    v15 = objc_opt_new();
    v16 = objc_opt_new();
    [(TypistKeyboard *)self keyPlanes];
    v17 = v26 = keyCopy;
    v18 = [v12 objectForKeyedSubscript:@"plane"];
    v19 = [v17 objectForKeyedSubscript:v18];
    v20 = [v12 objectForKeyedSubscript:@"basekey"];
    [v19 objectForKeyedSubscript:v20];
    v21 = v25 = self;

    keyCopy = v26;
    [v16 addObject:v21];
    [v16 addObject:v12];
    v29[0] = @"keystroke";
    v29[1] = @"actions";
    v30[0] = v26;
    v30[1] = v16;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    [v15 addObject:v22];

    [(TypistKeyboard *)v25 typeKeystrokeStream:v15];
    v23 = 0;
  }

  else
  {
    v24 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA470];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"No gesture information was found for %@", keyCopy];
    v28 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v23 = [v24 errorWithDomain:@"TypistKeyNotFoundError" code:1 userInfo:v16];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v23);
  }
}

- (void)swipeGestureOrFlickKey:(id)key withDirection:(id)direction completion:(id)completion
{
  v16[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  directionCopy = direction;
  completionCopy = completion;
  if ([(TypistKeyboard *)self isAvailableFlickOnCurrentPlane:keyCopy withDirection:directionCopy])
  {
    [(TypistKeyboard *)self flickKey:keyCopy withDirection:directionCopy completion:completionCopy];
  }

  else if ([(TypistKeyboard *)self isAvailableGestureOnCurrentPlane:keyCopy withDirection:directionCopy])
  {
    [(TypistKeyboard *)self swipeGestureKey:keyCopy withDirection:directionCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    v11 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA470];
    directionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"No gesture or flick information was found for %@ in direction %@ ", keyCopy, directionCopy];
    v16[0] = directionCopy;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v14 = [v11 errorWithDomain:@"TypistKeyNotFoundInSpecifiedDirectionError" code:1 userInfo:v13];

    completionCopy[2](completionCopy, v14);
  }
}

@end