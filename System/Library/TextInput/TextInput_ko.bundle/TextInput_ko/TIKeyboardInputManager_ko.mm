@interface TIKeyboardInputManager_ko
- (BOOL)canHandleKeyHitTest;
- (BOOL)isUsingMultilingual;
- (BOOL)usesComposingInput;
- (Hangul2SetAutomata)batchConverter;
- (TIKeyboardInputManager_ko)initWithConfig:(id)config keyboardState:(id)state;
- (USet)validUSetForAutocorrection;
- (id)composeJamo:(id)jamo;
- (id)deleteFromInput:(unint64_t *)input;
- (id)externalStringToInternal:(id)internal ignoreCompositionDisabled:(BOOL)disabled useReverseMap:(BOOL)map;
- (id)geometryModelData;
- (id)internalStringToExternal:(id)external ignoreCompositionDisabled:(BOOL)disabled;
- (id)rawInputString;
- (unint64_t)additionalAnalysisOptions;
- (void)addInput:(id)input withContext:(id)context;
- (void)clearInput;
- (void)dealloc;
- (void)initImplementation;
- (void)insertSpaceBeforeInputWithContext:(id)context;
- (void)setAutoCorrects:(BOOL)corrects;
- (void)setInput:(id)input;
- (void)setInputIndex:(unsigned int)index;
- (void)setLearnsCorrection:(BOOL)correction;
- (void)syncToLayoutState:(id)state;
- (void)textAccepted:(id)accepted fromPredictiveInputBar:(BOOL)bar withInput:(id)input;
@end

@implementation TIKeyboardInputManager_ko

- (TIKeyboardInputManager_ko)initWithConfig:(id)config keyboardState:(id)state
{
  configCopy = config;
  v14.receiver = self;
  v14.super_class = TIKeyboardInputManager_ko;
  v7 = [(TIKeyboardInputManagerMecabra *)&v14 initWithConfig:configCopy keyboardState:state];
  v8 = v7;
  if (v7)
  {
    v7->_deleteSyllable = 1;
    mEMORY[0x29EDC7280] = [MEMORY[0x29EDC7280] sharedWordSearchController];
    inputMode = [configCopy inputMode];
    v11 = [mEMORY[0x29EDC7280] wordSearchForInputMode:inputMode];
    wordSearch = v8->_wordSearch;
    v8->_wordSearch = v11;
  }

  return v8;
}

- (void)initImplementation
{
  if (!*(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]))
  {
    operator new();
  }

  return *(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]);
}

- (Hangul2SetAutomata)batchConverter
{
  result = self->_batchConverter;
  if (!result)
  {
    operator new();
  }

  return result;
}

- (void)syncToLayoutState:(id)state
{
  stateCopy = state;
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManager_ko;
  [(TIKeyboardInputManager_ko *)&v10 syncToLayoutState:stateCopy];
  softwareLayout = [stateCopy softwareLayout];
  v6 = [softwareLayout isEqualToString:@"Korean10Key"];

  if (v6)
  {
    *([(TIKeyboardInputManager_ko *)self batchConverter]+ 36) = 1;
    TIInputManager_ko::set_is_10key(*(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]), 1);
    wordSearch = [(TIKeyboardInputManager_ko *)self wordSearch];
    [wordSearch setTenKeyEnabled:1];
LABEL_5:

    goto LABEL_6;
  }

  softwareLayout2 = [stateCopy softwareLayout];
  v9 = [softwareLayout2 isEqualToString:@"Korean-With-QWERTY"];

  if (v9)
  {
    wordSearch = [(TIKeyboardInputManager_ko *)self wordSearch];
    [wordSearch setBilingualEnabled:1];
    goto LABEL_5;
  }

LABEL_6:
}

- (void)dealloc
{
  batchConverter = self->_batchConverter;
  if (batchConverter)
  {
    Hangul2SetAutomata::~Hangul2SetAutomata(batchConverter);
    MEMORY[0x29EDA3FF0]();
    self->_batchConverter = 0;
  }

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ko;
  [(TIKeyboardInputManagerMecabra *)&v4 dealloc];
}

- (id)composeJamo:(id)jamo
{
  jamoCopy = jamo;
  v5 = __composeJamo(jamoCopy, [(TIKeyboardInputManager_ko *)self batchConverter]);

  return v5;
}

- (BOOL)canHandleKeyHitTest
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManager_ko;
  canHandleKeyHitTest = [(TIKeyboardInputManager_ko *)&v5 canHandleKeyHitTest];
  if (canHandleKeyHitTest)
  {
    LOBYTE(canHandleKeyHitTest) = TIInputManager_ko::is_10key(*(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290])) ^ 1;
  }

  return canHandleKeyHitTest;
}

- (BOOL)usesComposingInput
{
  currentInputModeIdentifier = [(TIKeyboardInputManagerBase *)self currentInputModeIdentifier];
  v4 = TIInputModeGetComponentsFromIdentifier();
  v5 = [v4 objectForKey:@"sw"];

  v6 = ([v5 isEqualToString:@"Korean"] & 1) != 0 || -[TIKeyboardInputManager_ko isUsingMultilingual](self, "isUsingMultilingual");
  return v6;
}

- (id)externalStringToInternal:(id)internal ignoreCompositionDisabled:(BOOL)disabled useReverseMap:(BOOL)map
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManager_ko;
  v5 = [(TIKeyboardInputManager_mul *)&v8 externalStringToInternal:internal ignoreCompositionDisabled:disabled useReverseMap:map];
  v6 = DecomposeHangul(v5);

  return v6;
}

- (id)internalStringToExternal:(id)external ignoreCompositionDisabled:(BOOL)disabled
{
  externalCopy = external;
  if ([(TIKeyboardInputManager_ko *)self isUsingMultilingual]&& !disabled && [(TIKeyboardInputManager_mul *)self choseSecondary])
  {
    v10.receiver = self;
    v10.super_class = TIKeyboardInputManager_ko;
    v7 = [(TIKeyboardInputManager_mul *)&v10 internalStringToExternal:externalCopy ignoreCompositionDisabled:0];
  }

  else
  {
    v7 = [(TIKeyboardInputManager_ko *)self composeJamo:externalCopy];
  }

  v8 = v7;

  return v8;
}

- (void)clearInput
{
  self->_deleteSyllable = 1;
  v2.receiver = self;
  v2.super_class = TIKeyboardInputManager_ko;
  [(TIKeyboardInputManagerMecabra *)&v2 clearInput];
}

- (void)setInput:(id)input
{
  v23 = *MEMORY[0x29EDCA608];
  inputCopy = input;
  [(TIKeyboardInputManager_ko *)self clearInput];
  v21.receiver = self;
  v21.super_class = TIKeyboardInputManager_ko;
  [(TIKeyboardInputManager_mul *)&v21 setInput:inputCopy];
  if ([(TIKeyboardInputManager_ko *)self usesComposingInput])
  {
    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [composingInput removeAllInputs];

    v6 = [(TIKeyboardInputManager_mul *)self externalStringToInternal:inputCopy];
    if ([(TIKeyboardInputManager_ko *)self isUsingMultilingual])
    {
      keyLayoutMapAsNearbyKeys = [(TIKeyboardInputManager_mul *)self keyLayoutMapAsNearbyKeys];
    }

    else
    {
      keyLayoutMapAsNearbyKeys = 0;
    }

    v16 = v6;
    v8 = [v6 _asTypeInputsWithNearbyKeyMap:keyLayoutMapAsNearbyKeys];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    inputs = [v8 inputs];
    v10 = [inputs countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(inputs);
          }

          v14 = *(*(&v17 + 1) + 8 * v13);
          composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          [composingInput2 composeNew:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [inputs countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v11);
    }
  }
}

- (void)setInputIndex:(unsigned int)index
{
  v3 = *&index;
  self->_deleteSyllable = 1;
  v11.receiver = self;
  v11.super_class = TIKeyboardInputManager_ko;
  [(TIKeyboardInputManager_ko *)&v11 setInputIndex:?];
  if ([(TIKeyboardInputManager_ko *)self usesComposingInput])
  {
    v5 = [(TIKeyboardInputManager_ko *)self externalIndexToInternal:v3];
    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    if ([composingInput composingInputIndex] == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_6:
    }

    else
    {
      v7 = v5;
      while (1)
      {
        composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        composingInputIndex = [composingInput2 composingInputIndex];

        if (composingInputIndex < v7)
        {
          break;
        }

        composingInput3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        [composingInput3 removeComposingInput];

        composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
        if ([composingInput composingInputIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_6;
        }
      }
    }
  }
}

- (void)setLearnsCorrection:(BOOL)correction
{
  correctionCopy = correction;
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManager_ko;
  [(TIKeyboardInputManager_ko *)&v6 setLearnsCorrection:?];
  wordSearch = [(TIKeyboardInputManager_ko *)self wordSearch];
  [wordSearch setShouldLearnAcceptedCandidate:correctionCopy];
}

- (void)setAutoCorrects:(BOOL)corrects
{
  correctsCopy = corrects;
  wordSearch = [(TIKeyboardInputManager_ko *)self wordSearch];
  [wordSearch setAutoCorrects:correctsCopy];
}

- (id)rawInputString
{
  v5[4] = *MEMORY[0x29EDCA608];
  TIInputManager::input_string(v5, *(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]));
  v3 = KB::ns_string(v5, v2);
  KB::String::~String(v5);

  return v3;
}

- (USet)validUSetForAutocorrection
{
  if ([TIKeyboardInputManager_ko validUSetForAutocorrection]::onceToken != -1)
  {
    [TIKeyboardInputManager_ko validUSetForAutocorrection];
  }

  return [TIKeyboardInputManager_ko validUSetForAutocorrection]::hangul_set;
}

- (id)geometryModelData
{
  v45 = *MEMORY[0x29EDCA608];
  if ([(TIKeyboardInputManager_ko *)self usesComposingInput])
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    inputs = [composingInput inputs];

    v30 = inputs;
    v5 = [inputs countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v40;
      v27 = *v40;
      do
      {
        v8 = 0;
        v29 = v6;
        do
        {
          if (*v40 != v7)
          {
            objc_enumerationMutation(v30);
          }

          v9 = *(*(&v39 + 1) + 8 * v8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
            nearbyKeys = [v10 nearbyKeys];
            v11 = [nearbyKeys count];
            v31 = &v26;
            v12 = &v26 - ((8 * v11 + 23) & 0xFFFFFFFFFFFFFFF0);
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v33 = v10;
            nearbyKeys2 = [v10 nearbyKeys];
            v14 = [nearbyKeys2 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = 0;
              v17 = *v36;
              do
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v36 != v17)
                  {
                    objc_enumerationMutation(nearbyKeys2);
                  }

                  v19 = *(*(&v35 + 1) + 8 * i);
                  if ([v19 character])
                  {
                    v20 = &v12[8 * v16];
                    *v20 = [v19 character];
                    [v19 logLikelihood];
                    *(v20 + 1) = v21;
                    ++v16;
                  }
                }

                v15 = [nearbyKeys2 countByEnumeratingWithState:&v35 objects:v43 count:16];
              }

              while (v15);
            }

            else
            {
              v16 = 0;
            }

            v22 = &v12[8 * v16];
            *v22 = 0;
            *(v22 + 1) = 0;
            v23 = [MEMORY[0x29EDB8DA0] dataWithBytes:v12 length:8 * v16 + 8];
            [array addObject:v23];

            v7 = v27;
            v6 = v29;
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [v30 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v34.receiver = self;
    v34.super_class = TIKeyboardInputManager_ko;
    array = [(TIKeyboardInputManagerMecabra *)&v34 geometryModelData];
  }

  v24 = array;

  return v24;
}

- (void)textAccepted:(id)accepted fromPredictiveInputBar:(BOOL)bar withInput:(id)input
{
  barCopy = bar;
  acceptedCopy = accepted;
  inputCopy = input;
  v23.receiver = self;
  v23.super_class = TIKeyboardInputManager_ko;
  [(TIKeyboardInputManagerMecabra *)&v23 textAccepted:acceptedCopy fromPredictiveInputBar:barCopy withInput:inputCopy];
  v10 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:acceptedCopy];
  wordSearch = [(TIKeyboardInputManager_ko *)self wordSearch];
  v12 = wordSearch;
  if (v10)
  {
    [wordSearch performAccept:v10 isPartial:0];
  }

  else
  {
    candidate = [acceptedCopy candidate];
    [v12 commitSurface:candidate];
  }

  string = [inputCopy string];
  v15 = [string length];

  if (v15)
  {
    wordSearch2 = [(TIKeyboardInputManager_ko *)self wordSearch];
    string2 = [inputCopy string];
    [wordSearch2 commitSurface:string2];
  }

  composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v18ComposingInput = [composingInput composingInput];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v20ComposingInput = 0;
LABEL_12:
    lastAcceptedText = [(TIKeyboardInputManager_ko *)self lastAcceptedText];
    [(TIKeyboardInputManager_ko *)self clearInput];
    [(TIKeyboardInputManager_ko *)self setLastAcceptedText:lastAcceptedText];

    goto LABEL_13;
  }

  composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v20ComposingInput = [composingInput2 composingInput];

  if (!v20ComposingInput || ([v20ComposingInput isCompleting] & 1) != 0 || objc_msgSend(v20ComposingInput, "isComplete"))
  {
    goto LABEL_12;
  }

LABEL_13:
}

- (void)addInput:(id)input withContext:(id)context
{
  v19[4] = *MEMORY[0x29EDCA608];
  inputCopy = input;
  contextCopy = context;
  string = [inputCopy string];
  self->_deleteSyllable = 0;
  if (![(TIKeyboardInputManager_ko *)self isUsingMultilingual])
  {
    [inputCopy setAutoshifted:0];
    [inputCopy setUppercase:0];
  }

  isMultitap = [inputCopy isMultitap];
  v10 = [string isEqualToString:@"ㆍ"];
  v11 = MEMORY[0x29EDC7290];
  if (!v10)
  {
    if (!isMultitap)
    {
      goto LABEL_12;
    }

    v16 = 1;
    goto LABEL_11;
  }

  TIInputManager::input_string(v19, *(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]));
  v13 = KB::ns_string(v19, v12);
  KB::String::~String(v19);
  v14 = [v13 hasSuffix:@"ㆍㆍ"];

  v15 = v14 | isMultitap;
  if (v14)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  if (v15)
  {
    do
    {
LABEL_11:
      [(TIKeyboardInputManagerMecabra *)self deleteFromInputWithContext:contextCopy];
      --v16;
    }

    while (v16);
  }

LABEL_12:
  v18.receiver = self;
  v18.super_class = TIKeyboardInputManager_ko;
  [(TIKeyboardInputManager_ko *)&v18 addInput:inputCopy withContext:contextCopy];
  v17 = *(&self->super.super.super.super.super.isa + *v11);
  if (v17 && -858993459 * ((*(v17 + 16) - *(v17 + 8)) >> 3))
  {
    [(TIKeyboardInputManagerMecabra *)self saveGeometryForInput:inputCopy atIndex:*(v17 + 96)];
  }

  if ([(TIKeyboardInputManager_ko *)self usesComposingInput]&& string && [(TIKeyboardInputManagerMecabra *)self stringEndsWord:string])
  {
    [(TIKeyboardInputManager_ko *)self clearInput];
  }
}

- (void)insertSpaceBeforeInputWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ko;
  [(TIKeyboardInputManager_ko *)&v4 insertSpaceBeforeInputWithContext:context];
  if ([(TIKeyboardInputManager_ko *)self usesComposingInput])
  {
    [(TIKeyboardInputManager_ko *)self clearInput];
  }
}

- (id)deleteFromInput:(unint64_t *)input
{
  v44[4] = *MEMORY[0x29EDCA608];
  if (!input)
  {
    if (!self->_deleteSyllable)
    {
      goto LABEL_8;
    }

LABEL_5:
    v42.receiver = self;
    v42.super_class = TIKeyboardInputManager_ko;
    v5 = [(TIKeyboardInputManager_ko *)&v42 deleteFromInput:input];
    if (![(TIKeyboardInputManager_ko *)self usesComposingInput])
    {
      goto LABEL_33;
    }

    wordSearch = [(TIKeyboardInputManager_ko *)self wordSearch];
    [wordSearch cancel];

    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [composingInput removeAllInputs];

    TIInputManager::input_stem(v44, *(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC7290]));
    v9 = KB::ns_string(v44, v8);
    KB::String::~String(v44);
    if ([(TIKeyboardInputManager_ko *)self isUsingMultilingual])
    {
      keyLayoutMapAsNearbyKeys = [(TIKeyboardInputManager_mul *)self keyLayoutMapAsNearbyKeys];
    }

    else
    {
      keyLayoutMapAsNearbyKeys = 0;
    }

    [v9 _asTypeInputsWithNearbyKeyMap:keyLayoutMapAsNearbyKeys];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = v41 = 0u;
    inputs = [v37 inputs];
    v28 = [inputs countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v39;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v39 != v30)
          {
            objc_enumerationMutation(inputs);
          }

          v32 = *(*(&v38 + 1) + 8 * i);
          composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          [composingInput2 composeNew:v32];
        }

        v29 = [inputs countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v29);
    }

    composingInput3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v34ComposingInput = [composingInput3 composingInput];

    if (!v34ComposingInput)
    {
      [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
    }

    goto LABEL_32;
  }

  *input = 0;
  if (self->_deleteSyllable)
  {
    goto LABEL_5;
  }

  *input = 1;
LABEL_8:
  v11 = *MEMORY[0x29EDC7290];
  if (!*(&self->super.super.super.super.super.isa + v11))
  {
    v5 = 0;
    goto LABEL_33;
  }

  inputIndex = [(TIKeyboardInputManager_ko *)self inputIndex];
  TIInputManager::delete_from_input(*(&self->super.super.super.super.super.isa + v11));
  TIInputManager::input_string(v44, *(&self->super.super.super.super.super.isa + v11));
  keyLayoutMapAsNearbyKeys = KB::ns_string(v44, v13);
  KB::String::~String(v44);
  v14 = (*(&self->super.super.super.super.super.isa + v11))[24];
  if ([(TIKeyboardInputManager_ko *)self usesComposingInput])
  {
    wordSearch2 = [(TIKeyboardInputManager_ko *)self wordSearch];
    [wordSearch2 cancel];

    composingInput4 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [composingInput4 removeComposingInput];

    composingInput5 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v17ComposingInput = [composingInput5 composingInput];

    if (!v17ComposingInput)
    {
      [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
    }

    if (![(TIKeyboardInputManager_ko *)self isUsingMultilingual])
    {
      composingInput6 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      asInlineText = [composingInput6 asInlineText];

      composingInput7 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      LODWORD(composingInput6) = [composingInput7 asInlineTextCursorIndex];

      v14 = composingInput6;
      keyLayoutMapAsNearbyKeys = asInlineText;
    }
  }

  v22 = *MEMORY[0x29EDC7288];
  if (*(&self->super.super.super.super.super.isa + v22))
  {
    v23 = [(TIKeyboardInputManager_mul *)self internalStringToExternal:keyLayoutMapAsNearbyKeys];
    v24 = [keyLayoutMapAsNearbyKeys substringToIndex:{objc_msgSend(keyLayoutMapAsNearbyKeys, "_indexFromStartingIndex:byIncrementingComposedCharacterSequenceCount:", 0, v14)}];
    v25 = [(TIKeyboardInputManager_mul *)self internalStringToExternal:v24];

    v26 = [(TIKeyboardInputManager_ko *)self suffixOfDesiredString:v25 toAppendToInputString:*(&self->super.super.super.super.super.isa + v22) withInputIndex:inputIndex afterDeletionCount:input];
    [*(&self->super.super.super.super.super.isa + v22) setString:v23];
    if (![v26 length])
    {

      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  v9 = v26;
  v5 = v9;
LABEL_32:

LABEL_33:

  return v5;
}

- (unint64_t)additionalAnalysisOptions
{
  wordSearch = [(TIKeyboardInputManager_ko *)self wordSearch];
  if ([wordSearch tenKeyEnabled])
  {
    v3 = 2105344;
  }

  else
  {
    v3 = 0x200000;
  }

  if ([wordSearch bilingualEnabled])
  {
    v3 &= 0x2000u;
  }

  return v3;
}

- (BOOL)isUsingMultilingual
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  currentInputModeIdentifier = [(TIKeyboardInputManagerBase *)self currentInputModeIdentifier];
  v4 = TIInputModeGetComponentsFromIdentifier();
  v5 = [v4 objectForKey:@"sw"];

  if ([v5 isEqualToString:@"Korean-With-QWERTY"])
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManager_ko;
    isUsingMultilingual = [(TIKeyboardInputManager_mul *)&v8 isUsingMultilingual];
  }

  else
  {
    isUsingMultilingual = 0;
  }

  return isUsingMultilingual;
}

@end