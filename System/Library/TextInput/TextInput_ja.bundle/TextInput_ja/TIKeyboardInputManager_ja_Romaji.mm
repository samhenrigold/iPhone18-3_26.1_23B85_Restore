@interface TIKeyboardInputManager_ja_Romaji
+ (id)_convertToKana:(id)kana;
- (BOOL)shouldFixupIncompleteRomaji;
- (BOOL)usesCandidateSelection;
- (TIKeyboardInputManager_ja_Romaji)initWithConfig:(id)config keyboardState:(id)state;
- (_NSRange)analysisStringRange;
- (id)_convertStringWithBoundary:(unint64_t)boundary;
- (id)convertInput:(id)input;
- (id)deleteFromInput:(unint64_t *)input;
- (id)getInputStringFromTopCandidate;
- (id)handleKeyboardInput:(id)input;
- (id)inputString;
- (id)liveConversionTextInputManager;
- (id)remainingInput;
- (id)transliterate:(id)transliterate;
- (id)uncommittedText;
- (id)validCharacterSetForAutocorrection;
- (unint64_t)actualInternalInputIndex;
- (unint64_t)remainingInputLengthOfCandidate:(id)candidate;
- (unsigned)inputCount;
- (unsigned)inputIndex;
- (void)addInput:(id)input withContext:(id)context;
- (void)clearInput;
- (void)dealloc;
- (void)inputLocationChanged;
- (void)keyLayoutWillChangeTo:(id)to from:(id)from;
- (void)loadDictionaries;
- (void)setInputIndex:(unsigned int)index;
- (void)updateComposedText;
- (void)updateState;
@end

@implementation TIKeyboardInputManager_ja_Romaji

- (BOOL)shouldFixupIncompleteRomaji
{
  keyboardState = [(TIKeyboardInputManager_ja_Romaji *)self keyboardState];
  inputForMarkedText = [keyboardState inputForMarkedText];
  if (![inputForMarkedText length])
  {
    goto LABEL_4;
  }

  keyboardState2 = [(TIKeyboardInputManager_ja_Romaji *)self keyboardState];
  if ([keyboardState2 userSelectedCurrentCandidate])
  {

LABEL_4:
    return 0;
  }

  keyboardState3 = [(TIKeyboardInputManager_ja_Romaji *)self keyboardState];
  hardwareKeyboardMode = [keyboardState3 hardwareKeyboardMode];

  if (!hardwareKeyboardMode)
  {
    return 0;
  }

  keyboardState4 = [(TIKeyboardInputManager_ja_Romaji *)self keyboardState];
  inputForMarkedText2 = [keyboardState4 inputForMarkedText];
  v11 = [inputForMarkedText2 length];

  v12 = 0;
  v13 = v11 - 1;
  do
  {
    v14 = v12;
    if (v13 < 0)
    {
      break;
    }

    keyboardState5 = [(TIKeyboardInputManager_ja_Romaji *)self keyboardState];
    inputForMarkedText3 = [keyboardState5 inputForMarkedText];
    v17 = [inputForMarkedText3 characterAtIndex:v13];

    v12 = v14 + 1;
    --v13;
  }

  while (v17 == 110);
  return v14 & 1;
}

- (id)liveConversionTextInputManager
{
  if ([(TIKeyboardInputManager_ja_Romaji *)self inHardwareKeyboardMode])
  {
    v3 = [TIKeyboardInputManagerLiveConversion_ja_Romaji alloc];
    config = [(TIKeyboardInputManager_ja_Romaji *)self config];
    keyboardState = [(TIKeyboardInputManager_ja_Romaji *)self keyboardState];
    v6 = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)v3 initWithConfig:config keyboardState:keyboardState];
  }

  else
  {
    v7 = [TIKeyboardInputManager_ja_Inline alloc];
    config = [(TIKeyboardInputManager_ja_Romaji *)self config];
    keyboardState = [(TIKeyboardInputManager_ja_Romaji *)self keyboardState];
    wordSearch = [(TIKeyboardInputManager_ja *)self wordSearch];
    v6 = [(TIKeyboardInputManager_ja_Inline *)v7 initWithConfig:config keyboardState:keyboardState wordSearch:wordSearch romajiMode:1];
  }

  return v6;
}

- (void)loadDictionaries
{
  mEMORY[0x29EDC7280] = [MEMORY[0x29EDC7280] sharedWordSearchController];
  inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
  v5 = [mEMORY[0x29EDC7280] wordSearchForInputMode:inputMode];
  kbws = self->super._kbws;
  self->super._kbws = v5;

  v7 = self->super._kbws;

  [(TIWordSearch *)v7 setInsertKatakanaAtIndex:4];
}

- (BOOL)usesCandidateSelection
{
  keyboardState = [(TIKeyboardInputManager_ja_Romaji *)self keyboardState];
  suppressingCandidateSelection = [keyboardState suppressingCandidateSelection];

  return suppressingCandidateSelection ^ 1;
}

- (TIKeyboardInputManager_ja_Romaji)initWithConfig:(id)config keyboardState:(id)state
{
  v11.receiver = self;
  v11.super_class = TIKeyboardInputManager_ja_Romaji;
  v4 = [(TIKeyboardInputManager_ja *)&v11 initWithConfig:config keyboardState:state];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:10];
    externalIndexToInternalIndexMappingArray = v4->_externalIndexToInternalIndexMappingArray;
    v4->_externalIndexToInternalIndexMappingArray = v5;

    v4->_externalInputIndex = 0;
    externalString = v4->_externalString;
    v4->_externalString = 0;

    v8 = objc_alloc_init(MEMORY[0x29EDC7238]);
    mathSymbolPunctuationController = v4->_mathSymbolPunctuationController;
    v4->_mathSymbolPunctuationController = v8;
  }

  return v4;
}

- (void)dealloc
{
  if (_romanAlphabetCharacterSet)
  {
    CFRelease(_romanAlphabetCharacterSet);
    _romanAlphabetCharacterSet = 0;
  }

  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_ja_Romaji;
  [(TIKeyboardInputManager_ja *)&v3 dealloc];
}

- (id)handleKeyboardInput:(id)input
{
  inputCopy = input;
  if ((atomic_load_explicit(byte_2A18798D0, memory_order_acquire) & 1) == 0)
  {
    [TIKeyboardInputManager_ja_Romaji handleKeyboardInput:];
  }

  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  if (composingKeyboardInputManager)
  {
    goto LABEL_4;
  }

  v6 = _MergedGlobals;
  string = [inputCopy string];
  LODWORD(v6) = [v6 longCharacterIsMember:{objc_msgSend(string, "_firstLongCharacter")}];

  if (!v6)
  {
    goto LABEL_19;
  }

  if (![(TIKeyboardInputManager_ja_Romaji *)self shouldFixupIncompleteRomaji])
  {
    v12 = objc_alloc_init(MEMORY[0x29EDC70B0]);
    string2 = [inputCopy string];
    if ([string2 isEqualToString:@" "])
    {
      shouldOutputFullwidthSpace = [(TIKeyboardInputManager_ja *)self shouldOutputFullwidthSpace];

      if (shouldOutputFullwidthSpace)
      {
        [v12 insertText:@"　"];
        goto LABEL_18;
      }
    }

    else
    {
    }

    string3 = [inputCopy string];
    [v12 insertText:string3];

LABEL_18:
    if (v12)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  candidateResultSet = [(TIKeyboardInputManager_ja *)self candidateResultSet];
  composingKeyboardInputManager = [candidateResultSet candidates];

  if ([composingKeyboardInputManager count])
  {
    firstObject = [composingKeyboardInputManager firstObject];
    v10 = &stru_2A2525CC0;
    if (([firstObject isBilingualCandidate] & 1) == 0)
    {
      firstObject2 = [composingKeyboardInputManager firstObject];
      if (![firstObject2 isAsIsCandidate])
      {
        v10 = @"n";
      }
    }
  }

  else
  {
    v10 = @"n";
  }

  [inputCopy setString:v10];
  [(TIKeyboardInputManager_ja *)self setSelectFirstCandidate:1];
LABEL_4:

LABEL_19:
  v17.receiver = self;
  v17.super_class = TIKeyboardInputManager_ja_Romaji;
  v12 = [(TIKeyboardInputManager_ja *)&v17 handleKeyboardInput:inputCopy];
LABEL_20:

  return v12;
}

- (id)convertInput:(id)input
{
  lowercaseString = [input lowercaseString];
  v4 = [Romakana hiraganaString:lowercaseString mappingArray:0];

  return v4;
}

+ (id)_convertToKana:(id)kana
{
  v32 = *MEMORY[0x29EDCA608];
  kanaCopy = kana;
  v4 = _romanAlphabetCharacterSet;
  if (!_romanAlphabetCharacterSet)
  {
    v4 = CFCharacterSetCreateWithCharactersInString(0, @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz");
    _romanAlphabetCharacterSet = v4;
  }

  v5 = v4;
  invertedSet = [(__CFCharacterSet *)v5 invertedSet];
  v7 = [kanaCopy componentsSeparatedByCharactersInSet:invertedSet];

  v8 = [MEMORY[0x29EDBA0A8] predicateWithBlock:&__block_literal_global_3];
  v9 = [v7 filteredArrayUsingPredicate:v8];

  string = kanaCopy;
  if ([v9 count])
  {
    v11 = [kanaCopy componentsSeparatedByCharactersInSet:v5];
    v12 = [v11 mutableCopy];

    v13 = [MEMORY[0x29EDBA0A8] predicateWithBlock:&__block_literal_global_28];
    [v12 filterUsingPredicate:v13];

    v26 = v5;
    v14 = -[__CFCharacterSet characterIsMember:](v5, "characterIsMember:", [kanaCopy _firstChar]);
    string = [MEMORY[0x29EDBA050] string];
    if ((v14 & 1) == 0 && [v12 count])
    {
      firstObject = [v12 firstObject];
      [string appendString:firstObject];

      [v12 removeObjectAtIndex:0];
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = v9;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          lowercaseString = [*(*(&v27 + 1) + 8 * i) lowercaseString];
          v22 = [Romakana hiraganaString:lowercaseString mappingArray:0];

          [string appendString:v22];
          if ([v12 count])
          {
            firstObject2 = [v12 firstObject];
            [string appendString:firstObject2];

            [v12 removeObjectAtIndex:0];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v18);
    }

    v9 = v25;
    v5 = v26;
  }

  return string;
}

- (void)updateState
{
  selfCopy = self;
  v82[1] = *MEMORY[0x29EDCA608];
  v80.receiver = self;
  v80.super_class = TIKeyboardInputManager_ja_Romaji;
  [(TIKeyboardInputManager_ja *)&v80 updateState];
  v73 = selfCopy;
  if ([(TIKeyboardInputManager_ja_Romaji *)selfCopy usesComposingInput])
  {
    v3 = objc_alloc_init(MEMORY[0x29EDC71E0]);
    while (1)
    {
      composingInput = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
      v4ComposingInput = [composingInput composingInput];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        break;
      }

      composingInput2 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
      v7ComposingInput = [composingInput2 composingInput];
      [v3 insertInput:v7ComposingInput atIndex:0];

      composingInput3 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
      [composingInput3 removeComposingInput];
    }

    v19 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:10];
    asSearchString = [v3 asSearchString];
    lowercaseString = [asSearchString lowercaseString];
    v22 = [Romakana hiraganaString:lowercaseString mappingArray:v19];

    if ([v22 length])
    {
      v23 = 0;
      v72 = v19;
      while (1)
      {
        if ([v19 count] <= v23)
        {
          goto LABEL_21;
        }

        v24 = v22;
        v25 = [v22 characterAtIndex:v23];
        v26 = [v19 objectAtIndexedSubscript:v23];
        intValue = [v26 intValue];

        v28 = v3;
        inputs = [v3 inputs];
        firstObject = [inputs firstObject];

        if (intValue != 1)
        {
          break;
        }

        characters = [firstObject characters];
        if (__tolower([characters _firstChar]) == v25)
        {
        }

        else
        {
          characters2 = [firstObject characters];
          _firstChar = [characters2 _firstChar];

          if (v25 != _firstChar)
          {
            break;
          }
        }

        selfCopy = v73;
        composingInput4 = [(TIKeyboardInputManagerMecabra *)v73 composingInput];
        v3 = v28;
        inputs2 = [v28 inputs];
        firstObject2 = [inputs2 firstObject];
        [composingInput4 composeNew:firstObject2];

        [v28 removeInputAtIndex:0];
LABEL_20:
        v22 = v24;

        ++v23;
        v19 = v72;
        if ([v24 length] <= v23)
        {
          goto LABEL_21;
        }
      }

      v37 = objc_alloc(MEMORY[0x29EDC71F0]);
      v38 = [MEMORY[0x29EDBA0F8] _stringWithUnichar:v25];
      v82[0] = v38;
      v39 = [MEMORY[0x29EDB8D80] arrayWithObjects:v82 count:1];
      v40 = [v37 initWithCommittedText:&stru_2A2525CC0 syllables:v39 useSubInputsAsSearchString:1];

      [v40 setIncludeSuffixAsSearchString:1];
      v3 = v28;
      if (intValue >= 1)
      {
        do
        {
          inputs3 = [v28 inputs];
          firstObject3 = [inputs3 firstObject];
          [v40 composeNew:firstObject3];

          [v28 removeInputAtIndex:0];
          --intValue;
        }

        while (intValue);
      }

      selfCopy = v73;
      composingInput5 = [(TIKeyboardInputManagerMecabra *)v73 composingInput];
      [composingInput5 composeNew:v40];

      goto LABEL_20;
    }

LABEL_21:
    wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)selfCopy wordSearchCandidateResultSet];
    candidates = [wordSearchCandidateResultSet candidates];
    firstObject4 = [candidates firstObject];

    composingInput6 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
    if ([composingInput6 hasKindOf:objc_opt_class()])
    {
      input = [(__CFString *)firstObject4 input];

      if (input)
      {
        v49 = objc_opt_class();
        input2 = [(__CFString *)firstObject4 input];
        asInlineText = [v49 _convertToKana:input2];
LABEL_26:
        externalString = selfCopy->_externalString;
        selfCopy->_externalString = asInlineText;

        goto LABEL_27;
      }
    }

    else
    {
    }

    input2 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
    asInlineText = [input2 asInlineText];
    goto LABEL_26;
  }

  v10 = selfCopy->_externalString;
  selfCopy->_externalString = 0;

  [(NSMutableArray *)selfCopy->_externalIndexToInternalIndexMappingArray removeAllObjects];
  selfCopy->_externalInputIndex = 0;
  v79.receiver = selfCopy;
  v79.super_class = TIKeyboardInputManager_ja_Romaji;
  inputString = [(TIKeyboardInputManager_ja *)&v79 inputString];
  v78.receiver = selfCopy;
  v78.super_class = TIKeyboardInputManager_ja_Romaji;
  inputIndex = [(TIKeyboardInputManager_ja *)&v78 inputIndex];
  if (!inputString)
  {
    v3 = 0;
    goto LABEL_30;
  }

  v13 = inputIndex;
  v71 = inputString;
  if (![inputString length])
  {
    v3 = inputString;
    goto LABEL_30;
  }

  v14 = v13;
  v15 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:10];
  if (v13)
  {
    v16 = v71;
    v17 = [v71 substringToIndex:v13];
    lowercaseString2 = [v17 lowercaseString];
    v70 = [Romakana hiraganaString:lowercaseString2 mappingArray:v15];
  }

  else
  {
    v70 = &stru_2A2525CC0;
    v16 = v71;
  }

  if ([v16 length] <= v13)
  {
    firstObject4 = &stru_2A2525CC0;
  }

  else
  {
    v53 = [v16 substringFromIndex:v13];
    lowercaseString3 = [v53 lowercaseString];
    firstObject4 = [Romakana hiraganaString:lowercaseString3 mappingArray:v15];
  }

  v22 = v70;
  v55 = [(__CFString *)v70 stringByAppendingString:firstObject4];
  v56 = v73->_externalString;
  v73->_externalString = v55;
  v57 = v73;

  v73->_externalInputIndex = 0x7FFFFFFFFFFFFFFFLL;
  externalIndexToInternalIndexMappingArray = v73->_externalIndexToInternalIndexMappingArray;
  v59 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:0];
  [(NSMutableArray *)externalIndexToInternalIndexMappingArray addObject:v59];

  if (!v14)
  {
    v73->_externalInputIndex = 0;
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  input2 = v15;
  v60 = [input2 countByEnumeratingWithState:&v74 objects:v81 count:16];
  if (v60)
  {
    v61 = v60;
    v69 = firstObject4;
    v62 = 0;
    v63 = 0;
    v64 = *v75;
    do
    {
      v65 = input2;
      for (i = 0; i != v61; ++i)
      {
        if (*v75 != v64)
        {
          objc_enumerationMutation(v65);
        }

        v62 += [*(*(&v74 + 1) + 8 * i) intValue];
        v67 = v57->_externalIndexToInternalIndexMappingArray;
        v68 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v62];
        [(NSMutableArray *)v67 addObject:v68];

        v57 = v73;
        ++v63;
        if (v62 == v14)
        {
          v73->_externalInputIndex = v63;
        }
      }

      input2 = v65;
      v61 = [v65 countByEnumeratingWithState:&v74 objects:v81 count:16];
    }

    while (v61);
    v19 = v65;
    v22 = v70;
    v3 = v71;
    firstObject4 = v69;
  }

  else
  {
    v19 = input2;
    v3 = v71;
  }

LABEL_27:

LABEL_30:
}

- (id)transliterate:(id)transliterate
{
  transliterateCopy = transliterate;
  keyboardState = [(TIKeyboardInputManager_ja_Romaji *)self keyboardState];
  if (![keyboardState hardwareKeyboardMode])
  {
    goto LABEL_6;
  }

  v6 = _romanAlphabetCharacterSet;
  if (!_romanAlphabetCharacterSet)
  {
    v6 = CFCharacterSetCreateWithCharactersInString(0, @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz");
    _romanAlphabetCharacterSet = v6;
  }

  IsCharacterMember = CFCharacterSetIsCharacterMember(v6, [transliterateCopy characterAtIndex:0]);

  if (!IsCharacterMember)
  {
    [Romakana kanaSymbol:transliterateCopy];
    transliterateCopy = keyboardState = transliterateCopy;
LABEL_6:
  }

  if ([transliterateCopy isEqualToString:*MEMORY[0x29EDC72E0]])
  {
    v8 = *MEMORY[0x29EDC72D0];

    transliterateCopy = v8;
  }

  return transliterateCopy;
}

- (void)addInput:(id)input withContext:(id)context
{
  v66 = *MEMORY[0x29EDCA608];
  inputCopy = input;
  contextCopy = context;
  string = [inputCopy string];
  v9 = string;
  self->super._remainingInputLength = 0;
  if (string && [string length])
  {
    if ([(TIKeyboardInputManager_ja_Romaji *)self shouldSkipCandidateSelection])
    {
      v64.receiver = self;
      v64.super_class = TIKeyboardInputManager_ja_Romaji;
      [(TIKeyboardInputManager_ja_Romaji *)&v64 addInput:inputCopy withContext:contextCopy];
      goto LABEL_47;
    }

    rawInputString = [(TIKeyboardInputManager_ja *)self rawInputString];
    if (-[TIKeyboardInputManager_ja_Romaji inputCount](self, "inputCount") && ((v11 = *MEMORY[0x29EDC72D8], ([v9 isEqualToString:*MEMORY[0x29EDC72D8]] & 1) != 0) || (v12 = *MEMORY[0x29EDC72E0], (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x29EDC72E0]) & 1) != 0) || (v13 = *MEMORY[0x29EDC72D0], (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x29EDC72D0]) & 1) != 0) || (objc_msgSend(rawInputString, "isEqualToString:", v11) & 1) != 0 || (objc_msgSend(rawInputString, "isEqualToString:", v12) & 1) != 0 || objc_msgSend(rawInputString, "isEqualToString:", v13)))
    {
      if ([v9 isEqualToString:rawInputString])
      {
LABEL_46:

        goto LABEL_47;
      }

      [(TIKeyboardInputManager_ja_Romaji *)self acceptCurrentCandidateWithContext:contextCopy];
    }

    else
    {
      [(TIKeyboardInputManager_ja_Romaji *)self acceptCurrentCandidateIfSelectedWithContext:contextCopy];
    }

    [(TIKeyboardInputManager_ja *)self setIsEmojiFacemarkMode:0];
    [(TIKeyboardInputManager_ja *)self setFilterCandidatesUsingInputIndex:0];
    inputString = [(TIKeyboardInputManager_ja_Romaji *)self inputString];
    v15 = [inputString copy];

    inputIndex = [(TIKeyboardInputManager_ja_Romaji *)self inputIndex];
    if ([v9 length] == 1)
    {
      TIInputManager::initialize_search_if_necessary_from_last_touch(*(&self->super.super.super.super.super.super.isa + *MEMORY[0x29EDC7290]));
      v17 = [(TIKeyboardInputManager_ja_Romaji *)self transliterate:v9];

      if (([(TIKeyboardInputManager_ja_Romaji *)self inHardwareKeyboardMode]& 1) != 0)
      {
        isPopupVariant = 0;
      }

      else
      {
        isPopupVariant = [inputCopy isPopupVariant];
      }

      v9 = [(TIKeyboardInputManager_ja *)self stringByConvertingPunctuationForInput:v17 isLockedInput:isPopupVariant];

      touchEvent = [inputCopy touchEvent];
      [touchEvent location];
      [(TIKeyboardInputManager_ja *)self _addInput:v9 point:?];
    }

    else if ([v9 length])
    {
      v54 = inputIndex;
      v19 = v15;
      v20 = 0;
      do
      {
        v21 = [v9 substringWithRange:{v20, 1}];
        v22 = [(TIKeyboardInputManager_ja_Romaji *)self transliterate:v21];
        touchEvent2 = [inputCopy touchEvent];
        [touchEvent2 location];
        [(TIKeyboardInputManager_ja *)self _addInput:v22 point:?];

        ++v20;
      }

      while ([v9 length] > v20);
      v15 = v19;
      inputIndex = v54;
    }

    v63.receiver = self;
    v63.super_class = TIKeyboardInputManager_ja_Romaji;
    [(TIKeyboardInputManagerMecabra *)self saveGeometryForInput:inputCopy atIndex:[(TIKeyboardInputManager_ja *)&v63 inputIndex]];
    [(TIKeyboardInputManager_ja_Romaji *)self updateState];
    mathSymbolPunctuationController = self->_mathSymbolPunctuationController;
    rawInputString2 = [(TIKeyboardInputManager_ja *)self rawInputString];
    v27 = [(TIMathSymbolPunctuationController *)mathSymbolPunctuationController mathSymbolPunctuationedStringForInputString:rawInputString2];

    if (v27)
    {
      if ([(TIKeyboardInputManager_ja_Romaji *)self usesComposingInput])
      {
        v55 = inputIndex;
        v53 = v15;
        v56 = rawInputString;
        [(TIKeyboardInputManagerMecabra *)self composingInput];
        v29 = v28 = v27;
        asSearchTextCursorIndex = [v29 asSearchTextCursorIndex];

        composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
        [composingInput removeAllInputs];

        v52 = v28;
        [v28 _asTypeInputs];
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v51 = v62 = 0u;
        inputs = [v51 inputs];
        v32 = [inputs countByEnumeratingWithState:&v59 objects:v65 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v60;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v60 != v34)
              {
                objc_enumerationMutation(inputs);
              }

              v36 = *(*(&v59 + 1) + 8 * i);
              composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
              [composingInput2 composeNew:v36];
            }

            v33 = [inputs countByEnumeratingWithState:&v59 objects:v65 count:16];
          }

          while (v33);
        }

        composingInput3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        inputs2 = [composingInput3 inputs];
        v40 = [inputs2 count];

        if (asSearchTextCursorIndex < v40)
        {
          composingInput4 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          inputs3 = [composingInput4 inputs];
          v43 = [inputs3 objectAtIndexedSubscript:asSearchTextCursorIndex];
          composingInput5 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          [composingInput5 setComposingInput:v43];
        }

        rawInputString = v56;
        v27 = v52;
        v15 = v53;
        inputIndex = v55;
      }

      else
      {
        inputIndex2 = [(TIKeyboardInputManager_ja_Romaji *)self inputIndex];
        [(TIKeyboardInputManager_ja *)self setInput:v27];
        [(TIKeyboardInputManager_ja_Romaji *)self setInputIndex:inputIndex2];
      }

      [(TIKeyboardInputManager_ja_Romaji *)self updateState];
    }

    if ([(TIKeyboardInputManager_ja_Romaji *)self usesCandidateSelection])
    {
      [(TIKeyboardInputManager_ja_Romaji *)self setMarkedText];
    }

    else
    {
      v57 = rawInputString;
      v58 = 0;
      v46 = v27;
      inputString2 = [(TIKeyboardInputManager_ja_Romaji *)self inputString];
      v48 = [inputString2 substringToIndex:{-[TIKeyboardInputManager_ja_Romaji inputIndex](self, "inputIndex")}];

      v49 = [(TIKeyboardInputManager_ja_Romaji *)self suffixOfDesiredString:v48 toAppendToInputString:v15 withInputIndex:inputIndex afterDeletionCount:&v58];
      if (v58)
      {
        [contextCopy deleteBackward:?];
      }

      if (v49)
      {
        [contextCopy insertText:v49];
      }

      v27 = v46;
      rawInputString = v57;
    }

    goto LABEL_46;
  }

LABEL_47:
}

- (id)deleteFromInput:(unint64_t *)input
{
  selfCopy = self;
  v151 = *MEMORY[0x29EDCA608];
  if ([(TIKeyboardInputManager_ja_Romaji *)self usesComposingInput])
  {
    wordSearch = [(TIKeyboardInputManager_ja *)selfCopy wordSearch];
    [wordSearch cancel];

    [(TIKeyboardInputManager_ja *)selfCopy lockAnyDrawInputResults];
    composingInput = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
    v6ComposingInput = [composingInput composingInput];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    composingInput2 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
    v9ComposingInput = [composingInput2 composingInput];
    if (isKindOfClass)
    {

      if ([v9ComposingInput useSubInputsAsSearchString])
      {
        composingInput3 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
        v11ComposingInput = [composingInput3 composingInput];
        inputs = [v11ComposingInput inputs];
        v14 = [inputs count];
      }

      else
      {
        v14 = 0;
      }

      syllables = [v9ComposingInput syllables];
      v20 = [syllables count];

      if (v20)
      {
        syllables2 = [v9ComposingInput syllables];
        v22 = [syllables2 count];
        cursorIndex = [v9ComposingInput cursorIndex];

        if (v22 == cursorIndex)
        {
          syllables3 = [v9ComposingInput syllables];
          syllables4 = [v9ComposingInput syllables];
          v26 = [syllables3 subarrayWithRange:{0, objc_msgSend(syllables4, "count") - 1}];

          committedText = [v9ComposingInput committedText];
          v28 = [v9ComposingInput syntheticInputWithCommittedText:committedText syllables:v26];

          composingInput4 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
          [composingInput4 replaceComposingInputWith:v28];

          v9ComposingInput = v28;
        }

        else
        {
          v32 = objc_alloc(MEMORY[0x29EDC71D0]);
          previouslyProcessedDeleteInput = [(TIKeyboardInputManagerMecabra *)selfCopy previouslyProcessedDeleteInput];
          v26 = [v32 initWithDeletedText:0 deleteBySyllable:1 shouldDeleteAcceptCandidateInput:previouslyProcessedDeleteInput == 0];

          composingInput5 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
          [composingInput5 composeNew:v26];

          [(TIKeyboardInputManagerMecabra *)selfCopy processDeleteInputs];
          [(TIKeyboardInputManagerMecabra *)selfCopy setPreviouslyProcessedDeleteInput:v26];
        }
      }

      syllables5 = [v9ComposingInput syllables];
      v36 = [syllables5 count];

      if (!v36)
      {
        composingInput6 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
        [composingInput6 removeComposingInput];
      }

      composingInput7 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
      v38ComposingInput = [composingInput7 composingInput];
      objc_opt_class();
      v40 = objc_opt_isKindOfClass();

      if (v40)
      {
        v121 = selfCopy;
        composingInput8 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
        v41ComposingInput = [composingInput8 composingInput];

        syllables6 = [v41ComposingInput syllables];
        [v41ComposingInput removeAllInputs];
        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        obj = syllables6;
        v44 = [obj countByEnumeratingWithState:&v142 objects:v146 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v143;
          do
          {
            for (i = 0; i != v45; ++i)
            {
              if (*v143 != v46)
              {
                objc_enumerationMutation(obj);
              }

              v48 = [Romakana romajiString:*(*(&v142 + 1) + 8 * i)];
              v49 = [v48 length];
              v140[0] = MEMORY[0x29EDCA5F8];
              v140[1] = 3221225472;
              v140[2] = __52__TIKeyboardInputManager_ja_Romaji_deleteFromInput___block_invoke;
              v140[3] = &unk_29F379198;
              v141 = v41ComposingInput;
              [v48 enumerateSubstringsInRange:0 options:v49 usingBlock:{2, v140}];
            }

            v45 = [obj countByEnumeratingWithState:&v142 objects:v146 count:16];
          }

          while (v45);
        }

        selfCopy = v121;
      }

      if (v14 < 1)
      {
        goto LABEL_33;
      }
    }

    else
    {
      objc_opt_class();
      v16 = objc_opt_isKindOfClass();

      if ((v16 & 1) == 0)
      {
LABEL_33:
        composingInput9 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
        v51ComposingInput = [composingInput9 composingInput];

        if (!v51ComposingInput)
        {
          [(TIKeyboardInputManagerMecabra *)selfCopy setWordSearchCandidateResultSet:0];
        }

        [(TIKeyboardInputManager_ja *)selfCopy setFilterCandidatesUsingInputIndex:0];
        [(TIKeyboardInputManager_ja_Romaji *)selfCopy updateState];
        goto LABEL_36;
      }

      composingInput10 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
      [composingInput10 removeComposingInput];

      v14 = 1;
    }

    v50 = *MEMORY[0x29EDC7290];
    do
    {
      TIInputManager::delete_from_input(*(&selfCopy->super.super.super.super.super.super.isa + v50));
      --v14;
    }

    while (v14);
    goto LABEL_33;
  }

  if ([(TIKeyboardInputManager_ja_Romaji *)selfCopy shouldSkipCandidateSelection])
  {
    v139.receiver = selfCopy;
    v139.super_class = TIKeyboardInputManager_ja_Romaji;
    v15 = [(TIKeyboardInputManager_ja *)&v139 deleteFromInput:input];
    goto LABEL_37;
  }

  [(TIKeyboardInputManager_ja *)selfCopy setIsEmojiFacemarkMode:0];
  [(TIKeyboardInputManager_ja *)selfCopy setFilterCandidatesUsingInputIndex:0];
  [(TIMathSymbolPunctuationController *)selfCopy->_mathSymbolPunctuationController reset];
  inputString = [(TIKeyboardInputManager_ja_Romaji *)selfCopy inputString];
  if ([inputString isEqualToString:*MEMORY[0x29EDC72E0]])
  {

LABEL_16:
    [(TIKeyboardInputManager_ja_Romaji *)selfCopy clearInput];
LABEL_36:
    v15 = 0;
    goto LABEL_37;
  }

  inputString2 = [(TIKeyboardInputManager_ja_Romaji *)selfCopy inputString];
  v31 = [inputString2 isEqualToString:*MEMORY[0x29EDC72D0]];

  if (v31)
  {
    goto LABEL_16;
  }

  if (input)
  {
    *input = 1;
  }

  inputIndex = [(TIKeyboardInputManager_ja_Romaji *)selfCopy inputIndex];
  v55 = &selRef_isSiriMode;
  v138.receiver = selfCopy;
  v138.super_class = TIKeyboardInputManager_ja_Romaji;
  if ([(TIKeyboardInputManager_ja *)&v138 inputIndex])
  {
    v56 = inputIndex;
    inputString3 = [(TIKeyboardInputManager_ja_Romaji *)selfCopy inputString];
    v58 = [inputString3 copy];

    if (v56 < 2)
    {
      v59 = 0;
    }

    else
    {
      v59 = [v58 substringWithRange:{v56 - 2, 1}];
    }

    v116 = v56 - 1;
    v60 = [(NSMutableArray *)selfCopy->_externalIndexToInternalIndexMappingArray objectAtIndex:?];
    unsignedIntValue = [v60 unsignedIntValue];

    v137.receiver = selfCopy;
    v137.super_class = TIKeyboardInputManager_ja_Romaji;
    inputIndex2 = [(TIKeyboardInputManager_ja *)&v137 inputIndex];
    v119 = unsignedIntValue != inputIndex2;
    v120 = v59;
    v115 = v56;
    v118 = v58;
    if (unsignedIntValue == inputIndex2)
    {
      obja = [Romakana romajiString:v59];
      v69 = [(NSMutableArray *)selfCopy->_externalIndexToInternalIndexMappingArray objectAtIndex:v56 - 2];
      unsignedIntValue2 = [v69 unsignedIntValue];

      v136.receiver = selfCopy;
      v136.super_class = TIKeyboardInputManager_ja_Romaji;
      inputIndex6 = [(TIKeyboardInputManager_ja *)&v136 inputIndex]- unsignedIntValue2;
    }

    else
    {
      if (-[NSMutableArray count](selfCopy->_externalIndexToInternalIndexMappingArray, "count") <= (v56 + 1) || (-[NSMutableArray objectAtIndex:](selfCopy->_externalIndexToInternalIndexMappingArray, "objectAtIndex:"), v63 = objc_claimAutoreleasedReturnValue(), v64 = [v63 unsignedIntValue], v63, v135.receiver = selfCopy, v135.super_class = TIKeyboardInputManager_ja_Romaji, v64 != -[TIKeyboardInputManager_ja inputIndex](&v135, sel_inputIndex)))
      {
        obja = 0;
        v119 = 0;
LABEL_56:
        if (![v59 isEqualToString:@"ん"])
        {
          goto LABEL_59;
        }

        v71 = [Romakana romajiString:v59];

        v72 = [(NSMutableArray *)selfCopy->_externalIndexToInternalIndexMappingArray objectAtIndex:v56 - 2];
        unsignedIntValue3 = [v72 unsignedIntValue];

        v133.receiver = selfCopy;
        v133.super_class = TIKeyboardInputManager_ja_Romaji;
        inputIndex6 = [(TIKeyboardInputManager_ja *)&v133 inputIndex]- unsignedIntValue3;
        v55 = &selRef_isSiriMode;
        obja = v71;
LABEL_58:
        if (inputIndex6)
        {
LABEL_67:
          if (!obja)
          {
            v83 = [(NSMutableArray *)selfCopy->_externalIndexToInternalIndexMappingArray objectAtIndex:v116];
            unsignedIntValue4 = [v83 unsignedIntValue];

            v85 = v55[431];
            v131.receiver = selfCopy;
            v131.super_class = v85;
            inputIndex6 = [(TIKeyboardInputManager_ja *)&v131 inputIndex]- unsignedIntValue4;
          }

          v86 = v55[431];
          v130.receiver = selfCopy;
          v130.super_class = v86;
          inputIndex3 = [(TIKeyboardInputManager_ja *)&v130 inputIndex];
          geometryDataArray = [(TIKeyboardInputManagerMecabra *)selfCopy geometryDataArray];
          if ([geometryDataArray count] <= inputIndex3)
          {
            geometryDataArray2 = [(TIKeyboardInputManagerMecabra *)selfCopy geometryDataArray];
            inputIndex4 = [geometryDataArray2 count];

            v55 = &selRef_isSiriMode;
          }

          else
          {
            v89 = v55[431];
            v129.receiver = selfCopy;
            v129.super_class = v89;
            inputIndex4 = [(TIKeyboardInputManager_ja *)&v129 inputIndex];
          }

          if (inputIndex6 >= inputIndex4)
          {
            v92 = inputIndex4;
          }

          else
          {
            v92 = inputIndex6;
          }

          for (j = inputIndex4 - v92; v92; --v92)
          {
            geometryDataArray3 = [(TIKeyboardInputManagerMecabra *)selfCopy geometryDataArray];
            [geometryDataArray3 removeObjectAtIndex:j];

            if ([(TIKeyboardInputManager_ja_Romaji *)selfCopy isTypologyEnabled])
            {
              touchDataArray = [(TIKeyboardInputManagerMecabra *)selfCopy touchDataArray];
              [touchDataArray removeObjectAtIndex:j];
            }
          }

          if (inputIndex6)
          {
            v96 = inputIndex6;
            do
            {
              [(TIKeyboardInputManager_ja *)selfCopy _deleteFromInput];
              --v96;
            }

            while (v96);
            v97 = inputIndex6 - 1;
            if (inputIndex6 != 1)
            {
              v98 = *MEMORY[0x29EDC7290];
              do
              {
                TIInputManager::delete_from_favonius_stroke_history(*(&selfCopy->super.super.super.super.super.super.isa + v98));
                --v97;
              }

              while (v97);
            }
          }

          if (obja)
          {
            inputCopy = input;
            v128 = 0;
            v117 = [obja length];
            if (v117)
            {
              v99 = 0;
              v100 = MEMORY[0x29EDB90B8];
              v101 = j;
              v102 = v117;
              do
              {
                v103 = [obja substringWithRange:{v99, 1}];
                v104 = *v100;
                v105 = v100[1];
                v127.receiver = selfCopy;
                v127.super_class = TIKeyboardInputManager_ja_Romaji;
                v105 = [(TIKeyboardInputManager_ja *)&v127 addInput:v103 flags:0 point:&v128 firstDelete:v104, v105];
                geometryDataArray4 = [(TIKeyboardInputManagerMecabra *)selfCopy geometryDataArray];
                v147[0] = [v103 characterAtIndex:0];
                v148 = 0;
                v149 = 0;
                v150 = 0;
                [MEMORY[0x29EDB8DA0] dataWithBytes:v147 length:16];
                v109 = v108 = selfCopy;
                [geometryDataArray4 insertObject:v109 atIndex:v101];

                selfCopy = v108;
                if ([(TIKeyboardInputManager_ja_Romaji *)v108 isTypologyEnabled])
                {
                  [(TIKeyboardInputManagerMecabra *)v108 insertDummyTouchDataAtIndex:j];
                }

                ++v99;
                ++v101;
                --v102;
              }

              while (v102);
            }

            v55 = &selRef_isSiriMode;
            if (v119)
            {
              v126.receiver = selfCopy;
              v126.super_class = TIKeyboardInputManager_ja_Romaji;
              inputIndex5 = [(TIKeyboardInputManager_ja *)&v126 inputIndex];
              v125.receiver = selfCopy;
              v125.super_class = TIKeyboardInputManager_ja_Romaji;
              [(TIKeyboardInputManager_ja_Romaji *)&v125 setInputIndex:inputIndex5 - v117];
            }

            input = inputCopy;
            v58 = v118;
          }

          [(TIKeyboardInputManager_ja_Romaji *)selfCopy updateState];
          v111 = v55[431];
          v124.receiver = selfCopy;
          v124.super_class = v111;
          if ([(TIKeyboardInputManager_ja *)&v124 inputCount])
          {
            inputString4 = [(TIKeyboardInputManager_ja_Romaji *)selfCopy inputString];
            v113 = [inputString4 substringToIndex:{-[TIKeyboardInputManager_ja_Romaji inputIndex](selfCopy, "inputIndex")}];

            v15 = [(TIKeyboardInputManager_ja_Romaji *)selfCopy suffixOfDesiredString:v113 toAppendToInputString:v58 withInputIndex:v115 afterDeletionCount:input];
            if (![v15 length])
            {

              v15 = 0;
            }
          }

          else
          {
            [(TIKeyboardInputManagerMecabra *)selfCopy setWordSearchCandidateResultSet:0];
            v15 = 0;
          }

          goto LABEL_37;
        }

LABEL_59:
        if ([v59 isEqualToString:@"っ"])
        {
          v74 = selfCopy;
          inputString5 = [(TIKeyboardInputManager_ja_Romaji *)selfCopy inputString];
          v76 = [inputString5 substringToIndex:v116];

          v77 = [v76 length];
          v78 = [MEMORY[0x29EDBA050] stringWithCapacity:3 * v77];
          if (v77)
          {
            for (k = 0; k != v77; ++k)
            {
              v80 = [v76 substringWithRange:{k, 1}];
              v81 = [Romakana romajiString:v80];
              if (!v81)
              {
                v81 = v80;
              }

              [v78 appendString:v81];
            }
          }

          v82 = [MEMORY[0x29EDBA0F8] stringWithString:v78];

          selfCopy = v74;
          v132.receiver = v74;
          v132.super_class = TIKeyboardInputManager_ja_Romaji;
          inputIndex6 = [(TIKeyboardInputManager_ja *)&v132 inputIndex];

          obja = v82;
          v55 = &selRef_isSiriMode;
          v58 = v118;
        }

        else
        {
          inputIndex6 = 0;
        }

        goto LABEL_67;
      }

      v65 = [v58 substringWithRange:{v56, 1}];
      obja = [Romakana romajiString:v65];
      v66 = [(NSMutableArray *)selfCopy->_externalIndexToInternalIndexMappingArray objectAtIndex:v116];
      unsignedIntValue5 = [v66 unsignedIntValue];

      v134.receiver = selfCopy;
      v134.super_class = TIKeyboardInputManager_ja_Romaji;
      inputIndex6 = [(TIKeyboardInputManager_ja *)&v134 inputIndex]- unsignedIntValue5;
      v55 = &selRef_isSiriMode;
    }

    if (inputIndex6)
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  if (!input)
  {
    goto LABEL_36;
  }

  v15 = 0;
  *input = 0;
LABEL_37:

  return v15;
}

- (unsigned)inputCount
{
  if ([(TIKeyboardInputManager_ja_Romaji *)self shouldSkipCandidateSelection])
  {
    v6.receiver = self;
    v6.super_class = TIKeyboardInputManager_ja_Romaji;
    return [(TIKeyboardInputManager_ja *)&v6 inputCount];
  }

  else
  {
    inputString = [(TIKeyboardInputManager_ja_Romaji *)self inputString];
    v3 = [inputString length];
  }

  return v3;
}

- (unsigned)inputIndex
{
  alternateDisplayString = [(TIKeyboardInputManager_ja *)self alternateDisplayString];
  v4 = alternateDisplayString;
  if (!alternateDisplayString || (composingInput = [alternateDisplayString length]) == 0)
  {
    if ([(TIKeyboardInputManager_ja_Romaji *)self shouldSkipCandidateSelection])
    {
      v9.receiver = self;
      v9.super_class = TIKeyboardInputManager_ja_Romaji;
      LODWORD(composingInput) = [(TIKeyboardInputManager_ja *)&v9 inputIndex];
    }

    else if ([(TIKeyboardInputManager_ja_Romaji *)self usesComposingInput])
    {
      composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
      if ([composingInput hasKindOf:objc_opt_class()])
      {
        inputIndexWithDrawInput = [(TIKeyboardInputManagerMecabra *)self inputIndexWithDrawInput];
      }

      else
      {
        composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        inputIndexWithDrawInput = [composingInput2 asInlineTextCursorIndex];
      }

      LODWORD(composingInput) = inputIndexWithDrawInput;
    }

    else
    {
      LODWORD(composingInput) = self->_externalInputIndex;
    }
  }

  return composingInput;
}

- (void)setInputIndex:(unsigned int)index
{
  v3 = *&index;
  if ([(TIKeyboardInputManager_ja_Romaji *)self shouldSkipCandidateSelection])
  {
    v7.receiver = self;
    v7.super_class = TIKeyboardInputManager_ja_Romaji;
    [(TIKeyboardInputManager_ja_Romaji *)&v7 setInputIndex:v3];
  }

  else if ([(NSMutableArray *)self->_externalIndexToInternalIndexMappingArray count]> v3)
  {
    [(TIMathSymbolPunctuationController *)self->_mathSymbolPunctuationController reset];
    self->_externalInputIndex = v3;
    v5 = [(NSMutableArray *)self->_externalIndexToInternalIndexMappingArray objectAtIndex:v3];
    v6.receiver = self;
    v6.super_class = TIKeyboardInputManager_ja_Romaji;
    -[TIKeyboardInputManager_ja_Romaji setInputIndex:](&v6, sel_setInputIndex_, [v5 unsignedIntValue]);
  }
}

- (id)uncommittedText
{
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  candidates = [wordSearchCandidateResultSet candidates];
  firstObject = [candidates firstObject];

  v5 = objc_opt_class();
  input = [firstObject input];
  v7 = [v5 _convertToKana:input];

  return v7;
}

- (id)inputString
{
  alternateDisplayString = [(TIKeyboardInputManager_ja *)self alternateDisplayString];
  if ([alternateDisplayString length])
  {
    inputString = alternateDisplayString;
LABEL_7:
    v6 = inputString;
    goto LABEL_8;
  }

  if ([(TIKeyboardInputManager_ja_Romaji *)self shouldSkipCandidateSelection])
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManager_ja_Romaji;
    inputString = [(TIKeyboardInputManager_ja *)&v8 inputString];
    goto LABEL_7;
  }

  externalString = self->_externalString;
  if (externalString)
  {
    inputString = externalString;
    goto LABEL_7;
  }

  v6 = &stru_2A2525CC0;
LABEL_8:

  return v6;
}

- (id)getInputStringFromTopCandidate
{
  v3 = objc_opt_class();
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManager_ja_Romaji;
  getInputStringFromTopCandidate = [(TIKeyboardInputManager_ja *)&v7 getInputStringFromTopCandidate];
  v5 = [v3 _convertToKana:getInputStringFromTopCandidate];

  return v5;
}

- (void)updateComposedText
{
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_ja_Romaji;
  [(TIKeyboardInputManagerMecabra *)&v3 updateComposedText];
  [(TIKeyboardInputManager_ja_Romaji *)self updateState];
}

- (id)_convertStringWithBoundary:(unint64_t)boundary
{
  boundaryCopy = boundary;
  if (boundary)
  {
    if ([(NSMutableArray *)self->_externalIndexToInternalIndexMappingArray count]<= boundary)
    {
      boundaryCopy = 0;
    }

    else
    {
      v5 = [(NSMutableArray *)self->_externalIndexToInternalIndexMappingArray objectAtIndex:boundaryCopy];
      boundaryCopy = [v5 unsignedIntValue];
    }
  }

  _convertString = [(TIKeyboardInputManager_ja *)self _convertString];
  v7 = _convertString;
  if (boundaryCopy && boundaryCopy < [_convertString length])
  {
    v8 = [v7 substringToIndex:boundaryCopy];

    v7 = v8;
  }

  return v7;
}

- (void)clearInput
{
  externalString = self->_externalString;
  self->_externalString = 0;

  [(NSMutableArray *)self->_externalIndexToInternalIndexMappingArray removeAllObjects];
  self->_externalInputIndex = 0;
  [(TIKeyboardInputManager_ja *)self setIsEmojiFacemarkMode:0];
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ja_Romaji;
  [(TIKeyboardInputManager_ja *)&v4 clearInput];
}

- (void)inputLocationChanged
{
  externalString = self->_externalString;
  self->_externalString = 0;

  [(NSMutableArray *)self->_externalIndexToInternalIndexMappingArray removeAllObjects];
  self->_externalInputIndex = 0;
  [(TIKeyboardInputManager_ja *)self setIsEmojiFacemarkMode:0];
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ja_Romaji;
  [(TIKeyboardInputManager_ja *)&v4 inputLocationChanged];
}

- (unint64_t)actualInternalInputIndex
{
  v12.receiver = self;
  v12.super_class = TIKeyboardInputManager_ja_Romaji;
  inputString = [(TIKeyboardInputManager_ja *)&v12 inputString];
  v11.receiver = self;
  v11.super_class = TIKeyboardInputManager_ja_Romaji;
  inputIndex = [(TIKeyboardInputManager_ja *)&v11 inputIndex];
  if (inputIndex && (v5 = inputIndex, [(TIKeyboardInputManager_ja *)self filterCandidatesUsingInputIndex]))
  {
    v6 = v5;
  }

  else
  {
    v6 = [inputString length];
  }

  remainingInputLength = self->super._remainingInputLength;
  if (remainingInputLength >= v6 || remainingInputLength == 0)
  {
    remainingInputLength = 0;
  }

  v9 = v6 - remainingInputLength;

  return v9;
}

- (id)remainingInput
{
  if ([(TIKeyboardInputManager_ja_Romaji *)self usesComposingInput])
  {
    actualInternalInputIndex = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TIKeyboardInputManager_ja_Romaji;
    inputString = [(TIKeyboardInputManager_ja *)&v6 inputString];
    actualInternalInputIndex = [(TIKeyboardInputManager_ja_Romaji *)self actualInternalInputIndex];
    if (actualInternalInputIndex)
    {
      if (actualInternalInputIndex >= [inputString length])
      {
        actualInternalInputIndex = 0;
      }

      else
      {
        actualInternalInputIndex = [inputString substringFromIndex:actualInternalInputIndex];
      }
    }
  }

  return actualInternalInputIndex;
}

- (unint64_t)remainingInputLengthOfCandidate:(id)candidate
{
  candidateCopy = candidate;
  if ([(TIKeyboardInputManager_ja *)self filterCandidatesUsingInputIndex])
  {
    v10.receiver = self;
    v10.super_class = TIKeyboardInputManager_ja_Romaji;
    inputIndex = [(TIKeyboardInputManager_ja *)&v10 inputIndex];
  }

  else
  {
    inputIndex = 0;
  }

  v9.receiver = self;
  v9.super_class = TIKeyboardInputManager_ja_Romaji;
  inputString = [(TIKeyboardInputManager_ja *)&v9 inputString];
  v7 = [(TIKeyboardInputManager_ja *)self remainingInputLengthOfString:inputString index:inputIndex candidate:candidateCopy];

  return v7;
}

- (_NSRange)analysisStringRange
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManager_ja_Romaji;
  inputIndex = [(TIKeyboardInputManager_ja *)&v8 inputIndex];
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

- (id)validCharacterSetForAutocorrection
{
  if ([TIKeyboardInputManager_ja_Romaji validCharacterSetForAutocorrection]::__onceToken != -1)
  {
    [TIKeyboardInputManager_ja_Romaji validCharacterSetForAutocorrection];
  }

  v3 = [TIKeyboardInputManager_ja_Romaji validCharacterSetForAutocorrection]::__validCharSet;

  return v3;
}

- (void)keyLayoutWillChangeTo:(id)to from:(id)from
{
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManager_ja_Romaji;
  [(TIKeyboardInputManagerMecabra *)&v10 keyLayoutWillChangeTo:to from:from];
  composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
  hasDrawInput = [composingInput hasDrawInput];

  if (hasDrawInput)
  {
    composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    inputs = [composingInput2 inputs];
    v9 = -[TIKeyboardInputManager_ja_Romaji convertInputsToSyntheticInputUptoCount:](self, "convertInputsToSyntheticInputUptoCount:", [inputs count]);
  }
}

- (void)handleKeyboardInput:.cold.1()
{
  if (__cxa_guard_acquire(byte_2A18798D0))
  {
    _MergedGlobals = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];

    __cxa_guard_release(byte_2A18798D0);
  }
}

@end