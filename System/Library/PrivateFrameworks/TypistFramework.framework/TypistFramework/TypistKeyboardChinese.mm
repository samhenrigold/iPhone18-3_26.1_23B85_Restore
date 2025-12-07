@interface TypistKeyboardChinese
- (BOOL)_isPinyin;
- (BOOL)_isWubihua;
- (BOOL)isHandwriting;
- (BOOL)isPinyinCharacter:(unsigned __int16)character;
- (BOOL)isSwitchedToDefaultPlane:(id)plane;
- (BOOL)isTenKey;
- (BOOL)keyWillCommitCandidate:(id)candidate;
- (CGRect)_determineHandwritingBound;
- (TypistKeyboardChinese)initWithCoder:(id)coder;
- (id)_flickGestureDirection;
- (id)changeKeyNameToGenericCharacter:(id)character;
- (id)generateKeyplaneSwitchTable:(id)table;
- (id)generateKeystrokeStream:(id)stream;
- (id)getExpectedPlaneNameForKey:(id)key currentPlane:(id)plane;
- (id)getPostfixKey:(id)key;
- (id)init:(id)init options:(id)options;
- (id)setupKeyboardInfo:(id)info options:(id)options;
- (id)willDirectlyCommitNumbersAndPunctuationSet;
- (id)willSwitchToDefaultPlaneCharacterSet;
- (void)encodeWithCoder:(id)coder;
- (void)setupSentenceBoundryStrings;
- (void)setupTenKey:(id)key forKey:(id)forKey keyName:(id)name planeName:(id)planeName;
@end

@implementation TypistKeyboardChinese

- (id)init:(id)init options:(id)options
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardChinese;
  return [(TypistKeyboard *)&v5 init:init options:options locale:@"zh_Han"];
}

- (id)setupKeyboardInfo:(id)info options:(id)options
{
  optionsCopy = options;
  infoCopy = info;
  v8 = [(TypistKeyboard *)self keysDataForInputMode:@"zh" andFileName:@"Keyboard-zh.plist"];
  [(TypistKeyboardChinese *)self setFlickTable:v8];

  v26 = 0;
  v9 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\s+" options:1 error:&v26];
  v10 = v26;
  [(TypistKeyboardChinese *)self setWhiteSpaceRegex:v9];

  [(TypistKeyboardChinese *)self setPinyinMap:&unk_28802A578];
  v25.receiver = self;
  v25.super_class = TypistKeyboardChinese;
  v11 = [(TypistKeyboard *)&v25 setupKeyboardInfo:infoCopy options:optionsCopy];

  if (!v11)
  {
    [(TypistKeyboard *)self setUsePopupKeys:1];
    v12 = [TypistCandidateBar initWithTypistKeyboard:self];
    [(TypistKeyboard *)self setCandidatebar:v12];

    keyboardID = [(TypistKeyboard *)self keyboardID];
    lowercaseString = [keyboardID lowercaseString];
    v15 = [lowercaseString hasPrefix:@"zh_hant-zhuyin"];

    if (v15)
    {
      keyPlanes = [(TypistKeyboard *)self keyPlanes];
      defaultPlaneName = [(TypistKeyboard *)self defaultPlaneName];
      v18 = [keyPlanes objectForKeyedSubscript:defaultPlaneName];
      v19 = [v18 objectForKeyedSubscript:@" "];
      v20 = [v19 mutableCopy];
      keyPlanes2 = [(TypistKeyboard *)self keyPlanes];
      defaultPlaneName2 = [(TypistKeyboard *)self defaultPlaneName];
      v23 = [keyPlanes2 objectForKeyedSubscript:defaultPlaneName2];
      [v23 setObject:v20 forKeyedSubscript:@"ˉ"];
    }
  }

  return v11;
}

- (BOOL)_isPinyin
{
  keyboardID = [(TypistKeyboard *)self keyboardID];
  lowercaseString = [keyboardID lowercaseString];
  v4 = [lowercaseString containsString:@"pinyin"];

  return v4;
}

- (BOOL)_isWubihua
{
  keyboardID = [(TypistKeyboard *)self keyboardID];
  lowercaseString = [keyboardID lowercaseString];
  v4 = [lowercaseString containsString:@"wubihua"];

  return v4;
}

- (id)changeKeyNameToGenericCharacter:(id)character
{
  characterCopy = character;
  if ([characterCopy containsString:@"TenKey-Chinese-Wubihua-Alphabet-Keyplane-Switch-Key"])
  {
    v5 = @"alphabet-plane";
  }

  else if ([characterCopy containsString:@"TenKey-Number-To-Number-Alternative-Keyplane-Switch-Key"])
  {
    v5 = @"number-alternative-plane";
  }

  else if ([characterCopy containsString:@"TenKey-Pinyin-Keyplane-Switch-Key"])
  {
    v5 = @"pinyin-plane";
  }

  else if ([characterCopy containsString:@"TenKey-Chinese-Number-Keyplane-Switch-Key"])
  {
    v5 = @"number-plane";
  }

  else if ([characterCopy containsString:@"TenKey-Wubihua-Keyplane-Switch-Key"])
  {
    v5 = @"wubihua-plane";
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TypistKeyboardChinese;
    v5 = [(TypistKeyboard *)&v7 changeKeyNameToGenericCharacter:characterCopy];
  }

  return v5;
}

- (id)_flickGestureDirection
{
  if (_flickGestureDirection_onceToken != -1)
  {
    [TypistKeyboardChinese _flickGestureDirection];
  }

  v3 = _flickGestureDirection_flickGestureDirection;

  return v3;
}

void __47__TypistKeyboardChinese__flickGestureDirection__block_invoke()
{
  v0 = _flickGestureDirection_flickGestureDirection;
  _flickGestureDirection_flickGestureDirection = &unk_28802A2B8;
}

- (id)getPostfixKey:(id)key
{
  keyCopy = key;
  if (![(TypistKeyboardChinese *)self isTenKey]|| ![(TypistKeyboardChinese *)self _isPinyin])
  {
    goto LABEL_7;
  }

  pinyinMap = [(TypistKeyboardChinese *)self pinyinMap];
  lowercaseString = [keyCopy lowercaseString];
  v7 = [pinyinMap objectForKeyedSubscript:lowercaseString];
  if (!v7)
  {

    goto LABEL_7;
  }

  v8 = v7;
  flickTyping = [(TypistKeyboard *)self flickTyping];

  if (flickTyping)
  {
LABEL_7:
    if (-[TypistKeyboardChinese isTenKey](self, "isTenKey") && -[TypistKeyboardChinese _isWubihua](self, "_isWubihua") && ([keyCopy isEqualToString:@"*"] & 1) != 0)
    {
      v12 = @"問";
    }

    else
    {
      v12 = keyCopy;
    }

    goto LABEL_12;
  }

  pinyinMap2 = [(TypistKeyboardChinese *)self pinyinMap];
  lowercaseString2 = [keyCopy lowercaseString];
  v12 = [pinyinMap2 objectForKeyedSubscript:lowercaseString2];

LABEL_12:

  return v12;
}

- (BOOL)isPinyinCharacter:(unsigned __int16)character
{
  characterCopy = character;
  v4 = [MEMORY[0x277CCA900] characterSetWithRange:{97, 26}];
  if ([v4 characterIsMember:characterCopy])
  {
    v5 = 1;
  }

  else
  {
    v6 = [MEMORY[0x277CCA900] characterSetWithRange:{65, 26}];
    v5 = [v6 characterIsMember:characterCopy];
  }

  return v5;
}

- (void)setupTenKey:(id)key forKey:(id)forKey keyName:(id)name planeName:(id)planeName
{
  v81[9] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  forKeyCopy = forKey;
  planeNameCopy = planeName;
  if (!-[TypistKeyboardChinese isTenKey](self, "isTenKey") || ([forKeyCopy modifiesKeyplane] & 1) != 0)
  {
    goto LABEL_22;
  }

  v76 = planeNameCopy;
  selfCopy = self;
  if ([planeNameCopy containsString:@"pinyin"])
  {
    flickTable = [(TypistKeyboardChinese *)self flickTable];
    v13 = MEMORY[0x277CCACA8];
    displayString = [forKeyCopy displayString];
    v15 = [v13 stringWithFormat:@"Roman-Accent-%@-Pinyin-Plane", displayString];
    v16 = [flickTable objectForKey:v15];
    v17 = [v16 objectForKeyedSubscript:@"Strings"];
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v19 = [v17 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

    self = selfCopy;
    if (v19)
    {
      v73 = keyCopy;
      planeNameCopy = v76;
LABEL_9:
      whiteSpaceRegex = [(TypistKeyboardChinese *)self whiteSpaceRegex];
      v29 = [whiteSpaceRegex stringByReplacingMatchesInString:v19 options:0 range:0 withTemplate:{objc_msgSend(v19, "length"), @" "}];

      whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v72 = v29;
      v31 = [v29 componentsSeparatedByCharactersInSet:whitespaceCharacterSet2];
      v32 = [v31 mutableCopy];

      lastObject = [v32 lastObject];
      [v32 removeLastObject];
      v71 = lastObject;
      [v32 insertObject:lastObject atIndex:1];
      v34 = [v32 objectAtIndexedSubscript:0];
      v35 = [v32 objectAtIndexedSubscript:1];
      v36 = [v34 isEqualToString:v35];

      v74 = forKeyCopy;
      [forKeyCopy frame];
      UIRectGetCenter();
      [TypistKeyboard centerOfKey:"centerOfKey:withOffset:" withOffset:?];
      v38 = v37;
      v40 = v39;
      if (v36)
      {
        v41 = 2;
      }

      else
      {
        v41 = 1;
      }

      v78 = v32;
      if (v41 < [v32 count])
      {
        v42 = v41 - 6;
        while (v42)
        {
          v43 = [v78 objectAtIndexedSubscript:v41];
          _flickGestureDirection = [(TypistKeyboardChinese *)selfCopy _flickGestureDirection];
          v45 = [_flickGestureDirection objectAtIndexedSubscript:v41 - 1];
          v79.receiver = selfCopy;
          v79.super_class = TypistKeyboardChinese;
          LODWORD(v46) = 1118175232;
          [(TypistKeyboard *)&v79 calculateCoordinatesForFlickGesture:v45 direction:v38 offset:v40, v46];
          v48 = v47;
          v50 = v49;

          v81[0] = v43;
          v51 = v43;
          v80[0] = @"key";
          v80[1] = @"basekey";
          v77 = [v78 objectAtIndexedSubscript:0];
          v81[1] = v77;
          v81[2] = @"flick";
          v80[2] = @"action";
          v80[3] = @"x";
          v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", v48];
          v81[3] = v52;
          v80[4] = @"y";
          v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", v50];
          v81[4] = v53;
          v81[5] = planeNameCopy;
          v80[5] = @"plane";
          v80[6] = @"type";
          v81[6] = @"gesture";
          v80[7] = @"more-after";
          cache = [v74 cache];
          v55 = [cache objectForKey:@"more-after"];
          v56 = v55;
          v57 = &unk_2880299B8;
          if (v55)
          {
            v57 = v55;
          }

          v81[7] = v57;
          v80[8] = @"direction";
          _flickGestureDirection2 = [(TypistKeyboardChinese *)selfCopy _flickGestureDirection];
          v59 = [_flickGestureDirection2 objectAtIndexedSubscript:v41 - 1];
          v81[8] = v59;
          v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:9];
          [v73 setObject:v60 forKey:v51];

          planeNameCopy = v76;
          ++v41;
          ++v42;
          if (v41 >= [v78 count])
          {
            goto LABEL_21;
          }
        }

        v61 = objc_opt_class();
        v62 = NSStringFromClass(v61);
        representedString = [v74 representedString];
        TYLog(@"%@ - setupTenKey: WARNING! More than 4 flicks found for %@ - %@", v64, v65, v66, v67, v68, v69, v70, v62, representedString, v72);
      }

LABEL_21:

      keyCopy = v73;
      forKeyCopy = v74;
      goto LABEL_22;
    }
  }

  flickTable2 = [(TypistKeyboardChinese *)self flickTable];
  v21 = MEMORY[0x277CCACA8];
  displayString2 = [forKeyCopy displayString];
  v23 = [v21 stringWithFormat:@"Roman-Accent-%@", displayString2];
  v24 = [flickTable2 objectForKey:v23];

  v25 = [v24 objectForKey:@"Direction"];
  LOBYTE(v23) = [v25 isEqualToString:@"flick"];

  if ((v23 & 1) == 0)
  {

    planeNameCopy = v76;
    goto LABEL_22;
  }

  v26 = [v24 objectForKeyedSubscript:@"Strings"];
  whitespaceCharacterSet3 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v19 = [v26 stringByTrimmingCharactersInSet:whitespaceCharacterSet3];

  planeNameCopy = v76;
  if (v19)
  {
    v73 = keyCopy;
    goto LABEL_9;
  }

LABEL_22:
}

- (void)setupSentenceBoundryStrings
{
  v3.receiver = self;
  v3.super_class = TypistKeyboardChinese;
  [(TypistKeyboard *)&v3 setupSentenceBoundryStrings];
  [(TypistKeyboard *)self setSentenceDelimitingCharacters:@".?!。？！"];
}

- (BOOL)isTenKey
{
  keyboardID = [(TypistKeyboard *)self keyboardID];
  if (([keyboardID containsString:@"sw=Pinyin10"] & 1) == 0)
  {
    keyboardID2 = [(TypistKeyboard *)self keyboardID];
    v7 = [keyboardID2 containsString:@"sw=Wubihua"];
    if (v7 && ([MEMORY[0x277D75418] currentDevice], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "userInterfaceIdiom") != 1))
    {
      isFloating = 1;
    }

    else
    {
      keyboardID3 = [(TypistKeyboard *)self keyboardID];
      if ([keyboardID3 containsString:@"sw=Wubihua"])
      {
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice userInterfaceIdiom] == 1)
        {
          isFloating = [(TypistKeyboard *)self isFloating];

          if ((v7 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {

          isFloating = 0;
          if ((v7 & 1) == 0)
          {
LABEL_14:

            goto LABEL_15;
          }
        }
      }

      else
      {

        isFloating = 0;
        if (!v7)
        {
          goto LABEL_14;
        }
      }
    }

    goto LABEL_14;
  }

  isFloating = 1;
LABEL_15:

  return isFloating;
}

- (BOOL)isHandwriting
{
  keyboardID = [(TypistKeyboard *)self keyboardID];
  if ([keyboardID hasPrefix:@"zh_Hans-HWR@"])
  {
    v4 = 1;
  }

  else
  {
    keyboardID2 = [(TypistKeyboard *)self keyboardID];
    if ([keyboardID2 hasPrefix:@"zh_Hant-HWR@"])
    {
      v4 = 1;
    }

    else
    {
      keyboardID3 = [(TypistKeyboard *)self keyboardID];
      v4 = [keyboardID3 hasPrefix:@"yue_Hant-HWR@"];
    }
  }

  return v4;
}

- (id)generateKeyplaneSwitchTable:(id)table
{
  tableCopy = table;
  if ([(TypistKeyboardChinese *)self isTenKey])
  {
    selfCopy = self;
    v5 = &selRef_generateKeyplaneSwitchTableFor10Key_;
    v6 = &selfCopy;
  }

  else
  {
    selfCopy2 = self;
    v5 = &selRef_generateKeyplaneSwitchTable_;
    v6 = &selfCopy2;
  }

  v6[1] = TypistKeyboardChinese;
  v7 = objc_msgSendSuper2(v6, *v5, tableCopy, selfCopy2);

  return v7;
}

- (id)willDirectlyCommitNumbersAndPunctuationSet
{
  if (willDirectlyCommitNumbersAndPunctuationSet_commitSet != -1)
  {
    [TypistKeyboardChinese willDirectlyCommitNumbersAndPunctuationSet];
  }

  v3 = willDirectlyCommitNumbersAndPunctuationSet_directlyCommitNumbersAndPunctuationSet;

  return v3;
}

- (BOOL)keyWillCommitCandidate:(id)candidate
{
  candidateCopy = candidate;
  willDirectlyCommitNumbersAndPunctuationSet = [(TypistKeyboardChinese *)self willDirectlyCommitNumbersAndPunctuationSet];
  v6 = [candidateCopy characterAtIndex:0];

  LOBYTE(candidateCopy) = [willDirectlyCommitNumbersAndPunctuationSet characterIsMember:v6];
  return candidateCopy;
}

- (BOOL)isSwitchedToDefaultPlane:(id)plane
{
  planeCopy = plane;
  willSwitchToDefaultPlaneCharacterSet = [(TypistKeyboardChinese *)self willSwitchToDefaultPlaneCharacterSet];
  v6 = [planeCopy characterAtIndex:0];

  LOBYTE(planeCopy) = [willSwitchToDefaultPlaneCharacterSet characterIsMember:v6];
  return planeCopy;
}

- (id)willSwitchToDefaultPlaneCharacterSet
{
  if (willSwitchToDefaultPlaneCharacterSet_defaultPlaneCharacterSetToken != -1)
  {
    [TypistKeyboardChinese willSwitchToDefaultPlaneCharacterSet];
  }

  v3 = willSwitchToDefaultPlaneCharacterSet_willSwitchToDefaultPlaneCharacterSet;

  return v3;
}

- (id)getExpectedPlaneNameForKey:(id)key currentPlane:(id)plane
{
  keyCopy = key;
  planeCopy = plane;
  keyPlanes = [(TypistKeyboard *)self keyPlanes];
  v9 = [keyPlanes objectForKeyedSubscript:planeCopy];
  v10 = [v9 objectForKeyedSubscript:keyCopy];
  v11 = [v10 objectForKeyedSubscript:@"more-after"];
  if ([v11 BOOLValue])
  {
    goto LABEL_2;
  }

  if ([(TypistKeyboardChinese *)self isTenKey])
  {
  }

  else
  {
    getAlternatePlanesForDefaultPlane = [(TypistKeyboard *)self getAlternatePlanesForDefaultPlane];
    if (![getAlternatePlanesForDefaultPlane containsObject:planeCopy])
    {

LABEL_2:
LABEL_3:
      defaultPlaneName = [(TypistKeyboard *)self defaultPlaneName];
      goto LABEL_7;
    }

    v16 = [(TypistKeyboardChinese *)self isSwitchedToDefaultPlane:keyCopy];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  defaultPlaneName = planeCopy;
LABEL_7:
  v13 = defaultPlaneName;

  return v13;
}

- (id)generateKeystrokeStream:(id)stream
{
  streamCopy = stream;
  if ([(TypistKeyboardChinese *)self isHandwriting])
  {
    [(TypistKeyboardChinese *)self _determineHandwritingBound];
    v5 = [(TypistKeyboard *)self generateHandwritingStream:streamCopy inFrame:0 isPencil:?];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TypistKeyboardChinese;
    v5 = [(TypistKeyboard *)&v8 generateKeystrokeStream:streamCopy];
  }

  v6 = v5;

  return v6;
}

- (CGRect)_determineHandwritingBound
{
  [TypistKeyboardUtilities findKeyBoundsInKeyboard:@"Handwriting-Input"];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (TypistKeyboardChinese)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TypistKeyboardChinese;
  v5 = [(TypistKeyboard *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flickTable"];
    flickTable = v5->_flickTable;
    v5->_flickTable = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pinyinMap"];
    pinyinMap = v5->_pinyinMap;
    v5->_pinyinMap = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"whiteSpaceRegex"];
    whiteSpaceRegex = v5->_whiteSpaceRegex;
    v5->_whiteSpaceRegex = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = TypistKeyboardChinese;
  [(TypistKeyboard *)&v8 encodeWithCoder:coderCopy];
  flickTable = self->_flickTable;
  if (flickTable)
  {
    [coderCopy encodeObject:flickTable forKey:@"flickTable"];
  }

  pinyinMap = self->_pinyinMap;
  if (pinyinMap)
  {
    [coderCopy encodeObject:pinyinMap forKey:@"pinyinMap"];
  }

  whiteSpaceRegex = self->_whiteSpaceRegex;
  if (whiteSpaceRegex)
  {
    [coderCopy encodeObject:whiteSpaceRegex forKey:@"whiteSpaceRegex"];
  }
}

@end