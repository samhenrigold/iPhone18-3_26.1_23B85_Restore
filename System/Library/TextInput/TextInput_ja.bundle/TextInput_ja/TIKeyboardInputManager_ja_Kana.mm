@interface TIKeyboardInputManager_ja_Kana
- (_NSRange)analysisStringRange;
- (id)geometryDataWithSubstitutedMultitapKeys:(id)keys;
- (id)geometryModelData;
- (id)keyboardConfigurationLayoutTag;
- (id)liveConversionTextInputManager;
- (id)validCharacterSetForAutocorrection;
- (unsigned)flickKeyForBaseKey:(unsigned __int16)key direction:(int)direction;
- (void)_deleteFromInput;
- (void)addInput:(id)input withContext:(id)context;
- (void)buildFlickTables;
- (void)calculateGeometryForInput:(id)input;
- (void)deleteFromInputWithContext:(id)context;
- (void)resetWordSearchWithClass:(Class)class;
- (void)setInHardwareKeyboardMode:(BOOL)mode;
- (void)setInSplitKeyboardMode:(BOOL)mode;
- (void)syncToLayoutState:(id)state;
@end

@implementation TIKeyboardInputManager_ja_Kana

- (id)liveConversionTextInputManager
{
  if ([(TIKeyboardInputManager_ja_Kana *)self inHardwareKeyboardMode])
  {
    v3 = [TIKeyboardInputManagerLiveConversion_ja_Kana alloc];
    config = [(TIKeyboardInputManager_ja_Kana *)self config];
    keyboardState = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
    v6 = [(TIKeyboardInputManagerLiveConversion_ja *)v3 initWithConfig:config keyboardState:keyboardState];
  }

  else
  {
    v7 = [TIKeyboardInputManager_ja_Inline alloc];
    config = [(TIKeyboardInputManager_ja_Kana *)self config];
    keyboardState = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
    wordSearch = [(TIKeyboardInputManager_ja *)self wordSearch];
    v6 = [(TIKeyboardInputManager_ja_Inline *)v7 initWithConfig:config keyboardState:keyboardState wordSearch:wordSearch romajiMode:0];
  }

  return v6;
}

- (void)resetWordSearchWithClass:(Class)class
{
  if (__PAIR64__(self->_knowSplitMode, self->_knowHardwareMode) == 0x100000001 && *(&self->_knowSplitMode + 1))
  {
LABEL_5:
    if (([(TIWordSearch *)self->super._kbws isMemberOfClass:class]& 1) == 0)
    {
      v6 = [class alloc];
      inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
      v8 = [v6 initTIWordSearchWithInputMode:inputMode];
      kbws = self->super._kbws;
      self->super._kbws = v8;

      [(TIWordSearch *)self->super._kbws setShouldLearnAcceptedCandidate:self->super._shouldLearnAcceptedCandidate];
      [(TIWordSearch *)self->super._kbws setInsertKatakanaAtIndex:4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = self->super._kbws;
      knowInputMode = self->_knowInputMode;

      [(TIWordSearch *)v10 setFlickOnly:knowInputMode];
    }

    return;
  }

  keyboardState = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
  if ([keyboardState hardwareKeyboardMode])
  {
    knowSplitMode = self->_knowSplitMode;

    if (!knowSplitMode)
    {
      return;
    }

    goto LABEL_5;
  }
}

- (void)syncToLayoutState:(id)state
{
  stateCopy = state;
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManager_ja_Kana;
  [(TIKeyboardInputManager_ja *)&v10 syncToLayoutState:stateCopy];
  self->_knowInputMode = [stateCopy canMultitap] ^ 1;
  userInterfaceIdiom = [stateCopy userInterfaceIdiom];
  hasCandidateKey = 1;
  if (userInterfaceIdiom == 1)
  {
    hasCandidateKey = [stateCopy hasCandidateKey];
  }

  self->_isFlickOnly = hasCandidateKey;
  self->_knowHardwareMode = 1;
  *(&self->_knowSplitMode + 1) = 1;
  [(TIKeyboardInputManager_ja_Kana *)self setSupportsFlickAutocorrection:1];
  if (self->_isFlickOnly)
  {
    v7 = objc_opt_class();
  }

  else
  {
    v7 = 0;
  }

  keyboardState = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
  hardwareKeyboardMode = [keyboardState hardwareKeyboardMode];

  if (hardwareKeyboardMode)
  {
    v7 = objc_opt_class();
  }

  [(TIKeyboardInputManager_ja_Kana *)self resetWordSearchWithClass:v7];
  [(TIKeyboardInputManager_ja_Kana *)self buildFlickTables];
}

- (id)keyboardConfigurationLayoutTag
{
  if (self->_isFlickOnly && [(TIKeyboardInputManager_ja *)self inputCount:v2])
  {
    return @"VoicedSoundMarkAndSemiVoicedSoundMarkAndSmallVariation";
  }

  else
  {
    return @"Default";
  }
}

- (void)setInSplitKeyboardMode:(BOOL)mode
{
  keyboardState = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
  layoutState = [keyboardState layoutState];
  v7 = [layoutState userInterfaceIdiom] != 1 || mode;
  self->_isFlickOnly = v7;

  if (self->_isFlickOnly)
  {
    keyboardState2 = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
    [keyboardState2 hardwareKeyboardMode];
  }

  v9 = objc_opt_class();
  *(&self->_knowSplitMode + 1) = 1;

  [(TIKeyboardInputManager_ja_Kana *)self resetWordSearchWithClass:v9];
}

- (void)setInHardwareKeyboardMode:(BOOL)mode
{
  modeCopy = mode;
  v5 = objc_opt_class();
  self->_knowSplitMode = 1;
  [(TIKeyboardInputManager_ja_Kana *)self resetWordSearchWithClass:v5];
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManager_ja_Kana;
  [(TIKeyboardInputManager_ja_Kana *)&v6 setInHardwareKeyboardMode:modeCopy];
}

- (void)buildFlickTables
{
  selfCopy = self;
  v53 = *MEMORY[0x29EDCA608];
  if (self->_isFlickOnly)
  {
    v3 = &OBJC_IVAR___TIKeyboardInputManager_ja_Kana__kanaFlickDirectionMap_3x3;
  }

  else
  {
    v3 = &OBJC_IVAR___TIKeyboardInputManager_ja_Kana__kanaFlickDirectionMap_50on;
  }

  v4 = *(&self->super.super.super.super.super.super.isa + *v3);
  if (v4)
  {
    if (selfCopy->_isFlickOnly)
    {
      objc_storeStrong(&selfCopy->_kanaFlickDirectionMap_current, selfCopy->_kanaFlickDirectionMap_3x3);
      v5 = 952;
    }

    else
    {
      objc_storeStrong(&selfCopy->_kanaFlickDirectionMap_current, selfCopy->_kanaFlickDirectionMap_50on);
      v5 = 960;
    }

    objc_storeStrong(&selfCopy->_kanaFlickKeyMap_current, *(&selfCopy->super.super.super.super.super.super.isa + v5));
  }

  else
  {
    inputMode = [(TIKeyboardInputManagerBase *)selfCopy inputMode];
    normalizedIdentifier = [inputMode normalizedIdentifier];

    if (selfCopy->_isFlickOnly)
    {
      v8 = @"iPhone";
    }

    else
    {
      v8 = @"iPad";
    }

    v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Keyboard-%@-%@.plist", normalizedIdentifier, v8];
    v10 = TIBundlePathForInputMode();
    v11 = [v10 stringByAppendingPathComponent:v9];
    defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
    v13 = [defaultManager fileExistsAtPath:v11];

    if (v13)
    {
      v14 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithContentsOfFile:v11 options:1 error:0];
      if (v14)
      {
        v15 = [MEMORY[0x29EDBA0C0] propertyListWithData:v14 options:0 format:0 error:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v39 = v14;
          v40 = v11;
          v41 = v9;
          v42 = normalizedIdentifier;
          v46 = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@" "];
          if (selfCopy->_isFlickOnly)
          {
            v16 = 43;
          }

          else
          {
            v16 = 38;
          }

          v17 = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:v16];
          if (selfCopy->_isFlickOnly)
          {
            v18 = 11;
          }

          else
          {
            v18 = 30;
          }

          v44 = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:v18];
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v38 = v15;
          v19 = v15;
          v20 = [v19 countByEnumeratingWithState:&v48 objects:v52 count:16];
          if (v20)
          {
            v21 = v20;
            v47 = *v49;
            v43 = selfCopy;
            v45 = v19;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v49 != v47)
                {
                  objc_enumerationMutation(v19);
                }

                v23 = *(*(&v48 + 1) + 8 * i);
                if ([v23 hasPrefix:@"Roman-Accent-"])
                {
                  v24 = [v23 characterAtIndex:{objc_msgSend(@"Roman-Accent-", "length")}];
                  v25 = v24;
                  v26 = !selfCopy->_isFlickOnly || v24 == 12289;
                  if (v26 || (v24 - 12353) <= 0x53u)
                  {
                    v27 = [v19 objectForKey:v23];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v28 = [v27 objectForKey:@"Strings"];
                      v29 = [v28 componentsSeparatedByCharactersInSet:v46];

                      if ([v29 count] == 5)
                      {
                        for (j = 1; j != 5; ++j)
                        {
                          v31 = [v29 objectAtIndexedSubscript:j];
                          if ([v31 length])
                          {
                            v32 = [MEMORY[0x29EDBA070] numberWithInteger:j];
                            [(NSDictionary *)v17 setObject:v32 forKey:v31];
                          }
                        }

                        v33 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:v25];
                        [(NSDictionary *)v44 setObject:v29 forKey:v33];

                        selfCopy = v43;
                      }

                      v19 = v45;
                    }
                  }
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v48 objects:v52 count:16];
            }

            while (v21);
          }

          if (selfCopy->_isFlickOnly)
          {
            [(TIKeyboardInputManager_ja_Kana *)selfCopy setKanaFlickDirectionMap_3x3:v17];
            v34 = v44;
            [(TIKeyboardInputManager_ja_Kana *)selfCopy setKanaFlickKeyMap_3x3:v44];
          }

          else
          {
            [(TIKeyboardInputManager_ja_Kana *)selfCopy setKanaFlickDirectionMap_50on:v17];
            v34 = v44;
            [(TIKeyboardInputManager_ja_Kana *)selfCopy setKanaFlickKeyMap_50on:v44];
          }

          normalizedIdentifier = v42;
          v4 = 0;
          v9 = v41;
          v15 = v38;
          kanaFlickDirectionMap_current = selfCopy->_kanaFlickDirectionMap_current;
          selfCopy->_kanaFlickDirectionMap_current = v17;
          v36 = v17;

          kanaFlickKeyMap_current = selfCopy->_kanaFlickKeyMap_current;
          selfCopy->_kanaFlickKeyMap_current = v34;

          v14 = v39;
          v11 = v40;
        }
      }
    }
  }
}

- (unsigned)flickKeyForBaseKey:(unsigned __int16)key direction:(int)direction
{
  kanaFlickKeyMap_current = self->_kanaFlickKeyMap_current;
  v6 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:key];
  v7 = [(NSDictionary *)kanaFlickKeyMap_current objectForKey:v6];

  if (v7)
  {
    v8 = [v7 objectAtIndex:direction];
    if ([v8 length])
    {
      v9 = [v8 characterAtIndex:0];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)calculateGeometryForInput:(id)input
{
  v83 = *MEMORY[0x29EDCA608];
  inputCopy = input;
  inputIndex = [(TIKeyboardInputManager_ja *)self inputIndex];
  string = [inputCopy string];
  v7 = [string characterAtIndex:0];

  kanaFlickDirectionMap_current = self->_kanaFlickDirectionMap_current;
  string2 = [inputCopy string];
  v10 = [(NSDictionary *)kanaFlickDirectionMap_current objectForKey:string2];
  integerValue = [v10 integerValue];

  if ((v7 - 12353) >= 0x54)
  {
    v14 = v7 != 12289 && integerValue == 0;
    v12 = !self->_isFlickOnly || v14;
  }

  else
  {
    v12 = 0;
  }

  v15 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x29EDC7290]);
  if (!(-858993459 * ((*(v15 + 2) - *(v15 + 1)) >> 3)))
  {
    goto LABEL_17;
  }

  v16 = TIInputManager::keys_for_input(v15);
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = v16;
  keyboardState = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
  if ([keyboardState hardwareKeyboardMode])
  {

LABEL_17:
    [(TIKeyboardInputManagerMecabra *)self restoreGeometryForInput:inputCopy atIndex:inputIndex];
    goto LABEL_18;
  }

  v19 = [inputCopy isMultitap] | v12;

  if (v19)
  {
    goto LABEL_17;
  }

  v20 = MEMORY[0x29EDBA070];
  touchEvent = [inputCopy touchEvent];
  v22 = [v20 numberWithInteger:{objc_msgSend(touchEvent, "pathIndex")}];

  touchDownEvents = [(TIKeyboardInputManagerMecabra *)self touchDownEvents];
  v24 = [touchDownEvents objectForKey:v22];

  touchUpEvents = [(TIKeyboardInputManagerMecabra *)self touchUpEvents];
  v26 = [touchUpEvents objectForKey:v22];

  v27 = MEMORY[0x29EDB90B8];
  if (v24)
  {
    [v24 location];
    v29 = v28;
    v31 = v30;
    if (v26)
    {
LABEL_21:
      [v26 location];
      v34 = *v27;
      v35 = v27[1];
      goto LABEL_24;
    }
  }

  else
  {
    v29 = *MEMORY[0x29EDB90B8];
    v31 = *(MEMORY[0x29EDB90B8] + 8);
    if (v26)
    {
      goto LABEL_21;
    }
  }

  v34 = *v27;
  v35 = v27[1];
  v33 = v35;
  v32 = *v27;
LABEL_24:
  v36 = v32 - v29;
  v37 = v33 - v31;
  v38 = hypot(v32 - v29, v33 - v31);
  if (v31 == v35 && v29 == v34)
  {
    v40 = 0.0;
  }

  else
  {
    v40 = v38;
  }

  if (!integerValue && v40 > 0.0)
  {
    v38 = atan2(-v37, v36) * 180.0 / 3.14159265;
    if (v38 < 0.0)
    {
      v38 = v38 + 360.0;
    }

    if (v38 <= 45.0)
    {
      integerValue = 2;
    }

    else if (v38 <= 135.0)
    {
      integerValue = 1;
    }

    else if (v38 <= 225.0)
    {
      integerValue = 4;
    }

    else if (v38 <= 315.0)
    {
      integerValue = 3;
    }

    else
    {
      integerValue = 2;
    }
  }

  if ([inputCopy isFlick])
  {
    v41 = v40 + -26.0;
    if (v40 + -26.0 < 1.0)
    {
      v41 = 1.0;
    }

    v42 = v41 * v41 * -0.0002;
    goto LABEL_49;
  }

  v43 = 0.0;
  if (v40 > 0.0)
  {
    v42 = -5.0 / v40;
LABEL_49:
    v43 = v42;
  }

  v75 = v24;
  if (TI_IS_WILDCAT())
  {
    v44 = -3.0;
  }

  else
  {
    v44 = -2.0;
  }

  v45 = *v17;
  if (*v17)
  {
    v73 = v26;
    v74 = v22;
    v76 = 0;
    v46 = 0;
    v47 = v17[1];
    v48 = 8 * v45;
    while (*(*v47 + 32) >= v44)
    {
      v49 = *(*v47 + 8);
      v50 = *(v49 + 16);
      if (!v50)
      {
        v50 = v49 + 24;
      }

      v79 = v50;
      v80 = 0;
      v81 = *(v49 + 8);
      v82 = 0;
      KB::String::iterator::initialize(&v79);
      v51 = v82;
      if ((v82 - 12353) < 0x54 || v82 == 12289 && self->_isFlickOnly)
      {
        v52 = *(*v47 + 32);
        v53 = &v78[v46];
        *v53 = v82;
        v53[1] = v52;
        if (integerValue)
        {
          v54 = [(TIKeyboardInputManager_ja_Kana *)self flickKeyForBaseKey:v51 direction:integerValue];
          if (v54)
          {
            v55 = v54;
            isFlick = [inputCopy isFlick];
            if (v51 == 12289)
            {
              if (isFlick)
              {
                *v53 = v55;
              }
            }

            else
            {
              if (isFlick)
              {
                v53[1] = v43 + v52;
                v57 = v76;
                LOWORD(v77[v76]) = v55;
              }

              else
              {
                v57 = v76;
                LOWORD(v77[v76]) = v55;
                v52 = v43 + v52;
              }

              *(&v77[v57] + 1) = v52;
              ++v76;
            }
          }
        }

        if (++v46 == 10)
        {
          v46 = 10;
          break;
        }
      }

      v47 += 8;
      v48 -= 8;
      if (!v48)
      {
        break;
      }
    }

    v58 = v46;
    v45 = v76;
    v26 = v73;
    v22 = v74;
  }

  else
  {
    v58 = 0;
  }

  v59 = v78;
  v60 = &v78[v58];
  *v60 = 0;
  *(v60 + 1) = 0;
  v61 = v77;
  v62 = &v77[v45];
  *v62 = 0;
  *(v62 + 1) = 0;
  [(TIKeyboardInputManagerMecabra *)self padGeometryForInput:inputCopy atIndex:inputIndex];
  geometryDataArray = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
  v64 = 0;
  v65 = 0;
  while (*v59)
  {
    v66 = v59[1];
    if (!*v61 || (v67 = v61[1], v66 > v67))
    {
      v68 = (&v79 + v64);
      *v68 = *v59;
      v68[1] = v66;
      v59 += 2;
      goto LABEL_84;
    }

LABEL_83:
    v69 = (&v79 + v64);
    *v69 = *v61;
    v69[1] = v67;
    v61 += 2;
LABEL_84:
    ++v65;
    v64 += 8;
  }

  if (*v61)
  {
    v67 = v61[1];
    goto LABEL_83;
  }

  v70 = &v79 + v65;
  *v70 = 0;
  *(v70 + 1) = 0;
  0x7FFFFFFF8 = [MEMORY[0x29EDB8DA0] dataWithBytes:&v79 length:(v64 + 8) & 0x7FFFFFFF8];
  v72 = inputIndex - 1;
  [geometryDataArray insertObject:0x7FFFFFFF8 atIndex:v72];

  if ([(TIKeyboardInputManager_ja_Kana *)self isTypologyEnabled])
  {
    [(TIKeyboardInputManagerMecabra *)self saveTouchDataForEvent:inputCopy atIndex:v72];
  }

LABEL_18:
}

- (id)validCharacterSetForAutocorrection
{
  if ([TIKeyboardInputManager_ja_Kana validCharacterSetForAutocorrection]::__onceToken != -1)
  {
    [TIKeyboardInputManager_ja_Kana validCharacterSetForAutocorrection];
  }

  v3 = [TIKeyboardInputManager_ja_Kana validCharacterSetForAutocorrection]::__validCharSet;

  return v3;
}

- (id)geometryDataWithSubstitutedMultitapKeys:(id)keys
{
  v13[21] = *MEMORY[0x29EDCA608];
  keysCopy = keys;
  v4 = [keysCopy length];
  v5 = [keysCopy getBytes:v13 length:v4];
  v6 = (v4 >> 3) - 1;
  if (v6 >= 1)
  {
    v7 = v13;
    do
    {
      v8 = GetMultitapSequenceTable(v5);
      v9 = [MEMORY[0x29EDBA0F8] stringWithCharacters:v7 length:1];
      v10 = [v8 objectForKey:v9];

      if ([v10 length])
      {
        *v7 = [v10 characterAtIndex:0];
      }

      v7 += 4;
      --v6;
    }

    while (v6);
  }

  v11 = [MEMORY[0x29EDB8DA0] dataWithBytes:v13 length:v4];

  return v11;
}

- (void)addInput:(id)input withContext:(id)context
{
  v108 = *MEMORY[0x29EDCA608];
  inputCopy = input;
  contextCopy = context;
  string = [inputCopy string];
  v9 = string;
  if (string && [(__CFString *)string length])
  {
    if (!-[TIKeyboardInputManager_ja flickUsed](self, "flickUsed") && [inputCopy isFlick])
    {
      [(TIKeyboardInputManager_ja *)self setFlickUsed:1];
    }

    inputIndex = [(TIKeyboardInputManager_ja *)self inputIndex];
    if (([(TIKeyboardInputManager_ja_Kana *)self inHardwareKeyboardMode]& 1) != 0)
    {
      isPopupVariant = 0;
    }

    else
    {
      isPopupVariant = [inputCopy isPopupVariant];
    }

    v12 = [(TIKeyboardInputManager_ja *)self stringByConvertingPunctuationForInput:v9 isLockedInput:isPopupVariant];

    v13 = *MEMORY[0x29EDC72E0];
    if ([(__CFString *)v12 isEqualToString:*MEMORY[0x29EDC72E0]])
    {
      if (self->_isFlickOnly && inputIndex)
      {
        v14 = @"゛";
      }

      else
      {
        v14 = *MEMORY[0x29EDC72D0];
      }

      v12 = v14;
    }

    v15 = [(__CFString *)v12 characterAtIndex:0];
    rawInputString = [(TIKeyboardInputManager_ja *)self rawInputString];
    v17 = 0;
    v104 = 0;
    if ([inputCopy isMultitap])
    {
      if (inputIndex)
      {
        v96 = v12;
        v97 = rawInputString;
        v102 = contextCopy;
        inputString = [(TIKeyboardInputManager_ja *)self inputString];
        v99 = inputIndex;
        v19 = inputIndex - 1;
        v20 = [inputString characterAtIndex:inputIndex - 1];

        v107[0] = v20;
        v21 = [MEMORY[0x29EDBA0F8] stringWithCharacters:v107 length:1];
        v22 = GetMultitapSequenceTable(v21);
        v23 = [v22 objectForKey:v21];
        string2 = [inputCopy string];
        v25 = [v23 isEqualToString:string2];

        if (v25)
        {
          geometryDataArray = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
          v104 = [geometryDataArray objectAtIndex:v19];

          if ([(TIKeyboardInputManager_ja_Kana *)self isTypologyEnabled])
          {
            touchDataArray = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
            v17 = [touchDataArray objectAtIndex:v19];
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
          v104 = 0;
        }

        contextCopy = v102;
        v12 = v96;

        rawInputString = v97;
        inputIndex = v99;
      }

      else
      {
        v17 = 0;
        v104 = 0;
      }

      [(TIKeyboardInputManager_ja_Kana *)self _deleteFromInput];
    }

    if (v15 == 8616)
    {
      if (inputIndex)
      {
        v103 = v17;
        inputString2 = [(TIKeyboardInputManager_ja *)self inputString];
        v100 = inputIndex;
        v28 = [inputString2 characterAtIndex:inputIndex - 1];
        v107[0] = v28;
        uppercaseLetterCharacterSet = [MEMORY[0x29EDB9F50] uppercaseLetterCharacterSet];
        LODWORD(v28) = [uppercaseLetterCharacterSet characterIsMember:v28];

        if (v28)
        {
          v30 = [MEMORY[0x29EDBA0F8] stringWithCharacters:v107 length:1];
          lowercaseString = [v30 lowercaseString];
        }

        else
        {
          lowercaseLetterCharacterSet = [MEMORY[0x29EDB9F50] lowercaseLetterCharacterSet];
          v51 = [lowercaseLetterCharacterSet characterIsMember:v107[0]];

          if (!v51)
          {
            goto LABEL_49;
          }

          v30 = [MEMORY[0x29EDBA0F8] stringWithCharacters:v107 length:1];
          lowercaseString = [v30 uppercaseString];
        }

        if (lowercaseString)
        {
          v52 = [(__CFString *)v12 stringByReplacingCharactersInRange:0 withString:1, lowercaseString];

          keyboardState = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
          inputForMarkedText = [keyboardState inputForMarkedText];

          if (!inputForMarkedText)
          {
            [contextCopy deleteBackward:1];
          }

          [(TIKeyboardInputManager_ja_Kana *)self _deleteFromInput];

          v49 = 0;
          v12 = v52;
          inputIndex = v100;
          goto LABEL_98;
        }

LABEL_49:

        v49 = 0;
        goto LABEL_50;
      }

LABEL_59:
      v49 = 0;
      goto LABEL_60;
    }

    v103 = v17;
    if (v15 != 12443)
    {
      if (v15 != 12444 || (-[TIKeyboardInputManager_ja_Kana keyboardState](self, "keyboardState"), v43 = objc_claimAutoreleasedReturnValue(), v44 = [v43 hardwareKeyboardMode], v43, !v44))
      {
        if (self->_isFlickOnly || ![(__CFString *)v12 isEqualToString:@"｢"])
        {
          v55 = inputIndex;
          if ([(TIKeyboardInputManager_ja *)self inputCount])
          {
            v56 = *MEMORY[0x29EDC72D8];
            if (-[__CFString isEqualToString:](v12, "isEqualToString:", *MEMORY[0x29EDC72D8]) & 1) != 0 || (-[__CFString isEqualToString:](v12, "isEqualToString:", v13) & 1) != 0 || (v57 = *MEMORY[0x29EDC72D0], (-[__CFString isEqualToString:](v12, "isEqualToString:", *MEMORY[0x29EDC72D0])) || ([rawInputString isEqualToString:v56] & 1) != 0 || (objc_msgSend(rawInputString, "isEqualToString:", v13) & 1) != 0 || objc_msgSend(rawInputString, "isEqualToString:", v57))
            {
              v17 = v103;
              if (([(__CFString *)v12 isEqualToString:rawInputString]& 1) == 0)
              {
                [(TIKeyboardInputManager_ja_Kana *)self acceptCurrentCandidateWithContext:contextCopy];
                v49 = 0;
                inputIndex = v55;
LABEL_99:
                v48 = v104;
                goto LABEL_100;
              }

              goto LABEL_59;
            }
          }

          [(TIKeyboardInputManager_ja_Kana *)self acceptCurrentCandidateIfSelectedWithContext:contextCopy];
          v49 = 0;
          inputIndex = v55;
        }

        else
        {

          if (inputIndex)
          {
            v45 = contextCopy;
            inputString3 = [(TIKeyboardInputManager_ja *)self inputString];
            v47 = [inputString3 characterAtIndex:inputIndex - 1];

            v48 = v104;
            if (v47 == 12301)
            {
              [(TIKeyboardInputManager_ja_Kana *)self _deleteFromInput];
            }

            else if (v47 == 12300)
            {
              [(TIKeyboardInputManager_ja_Kana *)self _deleteFromInput];
              v49 = 0;
              v12 = @"」";
LABEL_124:
              contextCopy = v45;
LABEL_96:
              v17 = v103;
LABEL_100:
              [(TIKeyboardInputManager_ja *)self setIsEmojiFacemarkMode:0];
              [(TIKeyboardInputManager_ja *)self setFilterCandidatesUsingInputIndex:0];
              [inputCopy setString:v12];
              v105.receiver = self;
              v105.super_class = TIKeyboardInputManager_ja_Kana;
              [(TIKeyboardInputManager_ja_Kana *)&v105 addInput:inputCopy withContext:contextCopy];
              if (![(TIKeyboardInputManager_ja_Kana *)self supportsFlickAutocorrection]|| ([(__CFString *)v12 isEqualToString:*MEMORY[0x29EDC72D0]]& 1) != 0)
              {
                goto LABEL_102;
              }

              if (v49 && v48)
              {
                v103 = v17;
                v79 = inputIndex;
                geometryDataArray2 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
                v81 = v48;
                v82 = [v81 length];
                v104 = v81;
                [v81 getBytes:v107 length:v82];
                v83 = (v82 >> 3) - 1;
                if (v83 >= 1)
                {
                  v84 = v107;
                  do
                  {
                    v85 = *v84;
                    if ((v85 - 12353) <= 0x53)
                    {
                      v86 = Kana_variant_map[v85 - 12353];
                      if (v86)
                      {
                        *v84 = v86;
                      }
                    }

                    v84 += 4;
                    --v83;
                  }

                  while (v83);
                }

                v87 = [MEMORY[0x29EDB8DA0] dataWithBytes:v107 length:v82];

                v88 = v79 - 1;
                [geometryDataArray2 insertObject:v87 atIndex:v79 - 1];

                if ([(TIKeyboardInputManager_ja_Kana *)self isTypologyEnabled])
                {
                  v17 = v103;
                  if (v103)
                  {
                    touchDataArray2 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
                    v90 = touchDataArray2;
                    v91 = v103;
                    v92 = v88;
LABEL_120:
                    [touchDataArray2 insertObject:v91 atIndex:v92];

                    goto LABEL_60;
                  }

                  goto LABEL_60;
                }
              }

              else
              {
                if (![inputCopy isMultitap] || !v48)
                {
                  [(TIKeyboardInputManager_ja_Kana *)self calculateGeometryForInput:inputCopy];
                  goto LABEL_102;
                }

                v103 = v17;
                geometryDataArray3 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
                v104 = v48;
                v94 = [(TIKeyboardInputManager_ja_Kana *)self geometryDataWithSubstitutedMultitapKeys:v48];
                v95 = inputIndex - 1;
                [geometryDataArray3 insertObject:v94 atIndex:v95];

                if ([(TIKeyboardInputManager_ja_Kana *)self isTypologyEnabled])
                {
                  v17 = v103;
                  if (v103)
                  {
                    touchDataArray2 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
                    v90 = touchDataArray2;
                    v91 = v103;
                    v92 = v95;
                    goto LABEL_120;
                  }

LABEL_60:
                  v48 = v104;
LABEL_102:

                  v9 = v12;
                  goto LABEL_103;
                }
              }

LABEL_50:
              v17 = v103;
              goto LABEL_60;
            }

            v49 = 0;
            v12 = @"「";
            goto LABEL_124;
          }

          v49 = 0;
          v12 = @"「";
        }

LABEL_98:
        v17 = v103;
        goto LABEL_99;
      }
    }

    if (!inputIndex)
    {
      v58 = inputIndex;
      v49 = 0;
      v48 = v104;
LABEL_92:
      keyboardState2 = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
      hardwareKeyboardMode = [keyboardState2 hardwareKeyboardMode];

      if (!v49 && (hardwareKeyboardMode & 1) == 0)
      {
        v49 = 0;
        v17 = v103;
        goto LABEL_102;
      }

      inputIndex = v58;
      goto LABEL_96;
    }

    inputString4 = [(TIKeyboardInputManager_ja *)self inputString];
    keyboardState3 = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
    hardwareKeyboardMode2 = [keyboardState3 hardwareKeyboardMode];

    v101 = inputString4;
    if (!hardwareKeyboardMode2)
    {
      v107[0] = 0;
      v59 = [inputString4 characterAtIndex:inputIndex - 1];
      v106 = v59;
      if ((v59 - 12353) > 0x53)
      {
        v49 = 0;
        v48 = v104;
      }

      else
      {
        v107[0] = Kana_variant_map[v59 - 12353];
        v48 = v104;
        if (v107[0])
        {
          v49 = [MEMORY[0x29EDBA0F8] stringWithCharacters:v107 length:1];
        }

        else
        {
          v49 = 0;
        }
      }

      if (![(TIKeyboardInputManager_ja_Kana *)self supportsFlickAutocorrection])
      {
        goto LABEL_82;
      }

      v63 = [MEMORY[0x29EDBA0F8] stringWithCharacters:&v106 length:1];
      if (!v107[0])
      {
        if (v106 == 12289 || v106 - 12353 < 0x54 || ([(NSDictionary *)self->_kanaFlickDirectionMap_current objectForKey:v63], v64 = objc_claimAutoreleasedReturnValue(), v64, v64))
        {
          v65 = v63;

          v49 = v65;
        }
      }

LABEL_81:
      v48 = v104;
LABEL_82:
      if (v49)
      {
        if ([(TIKeyboardInputManager_ja_Kana *)self supportsFlickAutocorrection])
        {
          geometryDataArray4 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
          v67 = [geometryDataArray4 count];

          if (v67 >= inputIndex)
          {
            geometryDataArray5 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
            v69 = [geometryDataArray5 objectAtIndex:inputIndex - 1];
            v70 = v48;
            v48 = v69;

            if ([(TIKeyboardInputManager_ja_Kana *)self isTypologyEnabled])
            {
              touchDataArray3 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
              v72 = [touchDataArray3 objectAtIndex:inputIndex - 1];

              v103 = v72;
            }
          }
        }

        v73 = [(__CFString *)v12 stringByReplacingCharactersInRange:0 withString:1, v49];
        v74 = v12;
        v12 = v73;

        keyboardState4 = [(TIKeyboardInputManager_ja_Kana *)self keyboardState];
        inputForMarkedText2 = [keyboardState4 inputForMarkedText];

        if (!inputForMarkedText2)
        {
          [contextCopy deleteBackward:1];
        }

        v58 = inputIndex;
        [(TIKeyboardInputManager_ja_Kana *)self _deleteFromInput];
      }

      else
      {
        v58 = inputIndex;
      }

      goto LABEL_92;
    }

    v35 = inputIndex;
    v36 = [inputString4 substringWithRange:{inputIndex - 1, 1}];
    if (v15 == 12443)
    {
      v37 = [@"うかきくけこさしすせそたちつてとはひふへほ" rangeOfString:v36];
      v39 = v38;

      if (v37 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v40 = @"ゔがぎぐげござじずぜぞだぢづでどばびぶべぼ";
        v41 = v37;
        v42 = v39;
LABEL_71:
        v49 = [(__CFString *)v40 substringWithRange:v41, v42];
        goto LABEL_72;
      }
    }

    else
    {
      v60 = [@"はひふへほ" rangeOfString:v36];
      v62 = v61;

      if (v60 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v40 = @"ぱぴぷぺぽ";
        v41 = v60;
        v42 = v62;
        goto LABEL_71;
      }
    }

    v49 = 0;
LABEL_72:
    inputIndex = v35;
    goto LABEL_81;
  }

LABEL_103:
}

- (void)_deleteFromInput
{
  if ([(TIKeyboardInputManager_ja_Kana *)self supportsFlickAutocorrection])
  {
    inputIndex = [(TIKeyboardInputManager_ja *)self inputIndex];
    if (inputIndex)
    {
      v4 = inputIndex;
      geometryDataArray = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
      v6 = [geometryDataArray count];

      if (v6 >= v4)
      {
        geometryDataArray2 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
        v8 = v4 - 1;
        [geometryDataArray2 removeObjectAtIndex:v8];

        if ([(TIKeyboardInputManager_ja_Kana *)self isTypologyEnabled])
        {
          touchDataArray = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
          [touchDataArray removeObjectAtIndex:v8];
        }
      }
    }

    [(TIWordSearch *)self->super._kbws clearCache];
  }

  v10.receiver = self;
  v10.super_class = TIKeyboardInputManager_ja_Kana;
  [(TIKeyboardInputManager_ja *)&v10 _deleteFromInput];
}

- (void)deleteFromInputWithContext:(id)context
{
  kbws = self->super._kbws;
  contextCopy = context;
  [(TIWordSearch *)kbws clearCache];
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManager_ja_Kana;
  [(TIKeyboardInputManagerMecabra *)&v6 deleteFromInputWithContext:contextCopy];
}

- (id)geometryModelData
{
  if ([(TIKeyboardInputManager_ja_Kana *)self supportsFlickAutocorrection])
  {
    v5.receiver = self;
    v5.super_class = TIKeyboardInputManager_ja_Kana;
    geometryModelData = [(TIKeyboardInputManager_ja *)&v5 geometryModelData];
  }

  else
  {
    geometryModelData = 0;
  }

  return geometryModelData;
}

- (_NSRange)analysisStringRange
{
  inputIndex = [(TIKeyboardInputManager_ja *)self inputIndex];
  if (inputIndex)
  {
    v4 = inputIndex;
  }

  else
  {
    rawInputString = [(TIKeyboardInputManager_ja *)self rawInputString];
    v4 = [rawInputString length];
  }

  v6 = 0;
  v7 = v4;
  result.length = v7;
  result.location = v6;
  return result;
}

@end