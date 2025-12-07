@interface TIKeyboardInputManagerChinesePhonetic
+ (id)ambiguousAndPinyinCharacterSet;
+ (id)ambiguousDefaults;
+ (id)ambiguousPinyinSet;
+ (id)directlyCommittedCharacterSetForEmptyInline;
+ (id)stringFallBackForTenKeyInput:(id)input range:(_NSRange)range;
- (BOOL)_shouldCommitInputDirectly:(id)directly;
- (BOOL)canStartSentenceAfterString:(id)string;
- (BOOL)generateReanalysisCandidatesIfAppropriate;
- (BOOL)handleDirectlyCommitForInput:(id)input withContext:(id)context;
- (BOOL)hasExtensionEmojiCandidates;
- (BOOL)hasLockedSyllable;
- (BOOL)inputContinuesGB18030OrUnicodeLookupKey:(id)key;
- (BOOL)isPhraseBoundarySet;
- (BOOL)isSpecialInput:(id)input;
- (BOOL)shouldDelayUpdateComposedText;
- (BOOL)supportsNumberKeySelection;
- (BOOL)updateCandidatesByWaitingForResults:(BOOL)results;
- (BOOL)usesGeometryModelData;
- (NSString)convertedInput;
- (NSString)inputStringForSearch;
- (NSString)internalInputString;
- (NSString)unconvertedInput;
- (TIKeyboardCandidate)candidateForInlineTextSegmentation;
- (TIKeyboardInputManagerChinesePhonetic)initWithConfig:(id)config keyboardState:(id)state;
- (_NSRange)analysisStringRange;
- (id)SegmentedPinyin:(id)pinyin inputMethodType:(int)type;
- (id)addInput:(id)input flags:(unsigned int)flags point:(CGPoint)point firstDelete:(unint64_t *)delete;
- (id)candidateResultSetByWaitingForResults:(BOOL)results;
- (id)composedTextForSelectedCandidate:(id)candidate remainingInput:(id)input;
- (id)convertInputsToSyntheticInputUptoCount:(int)count;
- (id)defaultCandidate;
- (id)deleteFromInput:(unint64_t *)input;
- (id)didAcceptCandidate:(id)candidate;
- (id)externalStringToInternal:(id)internal;
- (id)handleAcceptedCandidate:(id)candidate keyboardState:(id)state;
- (id)handleKeyboardInput:(id)input;
- (id)inputString;
- (id)internalStringToExternal:(id)external;
- (id)keyboardBehaviors;
- (id)keyboardConfigurationLayoutTag;
- (id)newInputManagerState;
- (id)remapInput:(id)input isFacemarkInput:(BOOL *)facemarkInput;
- (id)searchStringForMarkedText;
- (id)segmentedInputFromString:(id)string;
- (id)sortingMethods;
- (id)stringByPrependingConvertedCandidateTextToString:(id)string;
- (id)stringByRemovingSyllableSeparatorsFromString:(id)string;
- (id)stringByStrippingConvertedCandidateTextFromString:(id)string;
- (id)uncommittedText;
- (int64_t)addTouch:(id)touch shouldHitTest:(BOOL)test;
- (unint64_t)internalInputCount;
- (unint64_t)internalInputIndex;
- (unint64_t)predictionOptions;
- (unsigned)externalIndexToInternal:(unsigned int)internal shouldBoundToInputCount:(BOOL)count;
- (unsigned)inputCount;
- (unsigned)inputIndex;
- (unsigned)internalIndexToExternal:(unsigned int)external;
- (void)addInput:(id)input withContext:(id)context;
- (void)addInputToInternal:(id)internal;
- (void)autocommitHeadSegmentWithContext:(id)context;
- (void)clearDynamicDictionary;
- (void)clearInput;
- (void)clearPinyinSyllableSelection;
- (void)dealloc;
- (void)didDeleteCandidates:(id)candidates;
- (void)handleAcceptedPinyinDisambiguationCandidate:(id)candidate keyboardState:(id)state;
- (void)inputLocationChanged;
- (void)lastAcceptedCandidateCorrected;
- (void)resume;
- (void)revertLastDisambiguation;
- (void)setAutoCorrects:(BOOL)corrects;
- (void)setInHardwareKeyboardMode:(BOOL)mode;
- (void)setInput:(id)input;
- (void)setPhraseBoundary:(unint64_t)boundary;
- (void)shiftPinyinSyllableSelection;
- (void)storeLanguageModelDynamicDataIncludingCache;
- (void)suspend;
- (void)syncToKeyboardState:(id)state from:(id)from afterContextChange:(BOOL)change;
- (void)syncToLayoutState:(id)state;
- (void)updateComposedText;
- (void)wordSearchEngineDidFindCandidates:(id)candidates forOperation:(id)operation;
- (void)wordSearchEngineDidFindPredictionCandidates:(id)candidates;
@end

@implementation TIKeyboardInputManagerChinesePhonetic

- (void)autocommitHeadSegmentWithContext:(id)context
{
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch cancel];

  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    segments = [(TIKeyboardInputManagerChinesePhonetic *)self segments];
    firstObject = [segments firstObject];

    v6 = objc_alloc(MEMORY[0x277D6FE00]);
    surface = [firstObject surface];
    reading = [firstObject reading];
    v9 = [v6 initWithCandidateText:surface convertedInput:reading];

    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [composingInput composeNew:v9];
  }
}

- (BOOL)usesGeometryModelData
{
  keyboardState = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
  hardwareKeyboardMode = [keyboardState hardwareKeyboardMode];

  return hardwareKeyboardMode ^ 1;
}

- (BOOL)generateReanalysisCandidatesIfAppropriate
{
  keyboardState = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
  documentState = [keyboardState documentState];
  selectedText = [documentState selectedText];

  language = [(TIKeyboardInputManagerChinese *)self language];
  v7 = [selectedText _stringByTranscribingFromLanguage:language];

  if ([(TIKeyboardInputManagerChinesePhonetic *)self inputMethodType]== 5)
  {
    v8 = @"Latin-Bopomofo";
  }

  else
  {
    v8 = *MEMORY[0x277CBF108];
  }

  v9 = [v7 _stringByApplyingTransform:v8];

  v10 = [TIWordSearchChinesePhoneticOperationGetCandidates alloc];
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  keyboardState2 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
  hardwareKeyboardMode = [keyboardState2 hardwareKeyboardMode];
  logger = [(TIKeyboardInputManagerChinesePhonetic *)self logger];
  LOBYTE(v20) = hardwareKeyboardMode;
  BYTE2(v19) = 1;
  LOWORD(v19) = 257;
  v15 = [TIWordSearchChinesePhoneticOperationGetCandidates initWithWordSearch:v10 inputString:"initWithWordSearch:inputString:keyboardInput:segmentBreakIndex:disambiguationCandidates:unambiguousSyllableCount:selectedDisambiguationCandidateIndex:regenerateDisambiguationCandidates:predictionEnabled:reanalysisMode:target:action:geometryModelData:hardwareKeyboardMode:logger:" keyboardInput:wordSearch segmentBreakIndex:v9 disambiguationCandidates:0 unambiguousSyllableCount:0x7FFFFFFFFFFFFFFFLL selectedDisambiguationCandidateIndex:0 regenerateDisambiguationCandidates:0 predictionEnabled:0x7FFFFFFFFFFFFFFFLL reanalysisMode:v19 target:self action:sel_wordSearchEngineDidFindCandidates_forOperation_ geometryModelData:0 hardwareKeyboardMode:v20 logger:logger];

  results = [(TIWordSearchOperationGetCandidates *)v15 results];

  if (results)
  {
    results2 = [(TIWordSearchOperationGetCandidates *)v15 results];
    [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:results2];
  }

  else
  {
    results2 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [results2 performOperationAsync:v15];
  }

  return results != 0;
}

- (id)composedTextForSelectedCandidate:(id)candidate remainingInput:(id)input
{
  candidateCopy = candidate;
  inputCopy = input;
  if (self->_isInAmbiguousMode)
  {
    if ([(TIKeyboardInputManagerChinesePhonetic *)self filterCandidatesUsingInputIndex])
    {
      hasLockedSyllable = [(TIKeyboardInputManagerChinesePhonetic *)self hasLockedSyllable];
      v9 = *MEMORY[0x277D6FF28];
      if (hasLockedSyllable || (v10 = *(&self->super.super.super.super.super.super.isa + v9), -[TIKeyboardInputManagerChinesePhonetic composedTextBeforeFirstSyllableLocked](self, "composedTextBeforeFirstSyllableLocked"), v11 = objc_claimAutoreleasedReturnValue(), LOBYTE(v10) = [v10 isEqualToString:v11], v11, (v10 & 1) == 0))
      {
        v29 = *(&self->super.super.super.super.super.super.isa + v9);
        goto LABEL_27;
      }
    }
  }

  v12 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:candidateCopy];
  if (self->_isInAmbiguousMode && v12 == 0)
  {
    v29 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF28]);
LABEL_27:
    v38 = v29;
    v15 = inputCopy;
    goto LABEL_39;
  }

  v14 = v12;
  v15 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByStrippingConvertedCandidateTextFromString:inputCopy];

  input = [candidateCopy input];
  v17 = input;
  v18 = &stru_287EBF4E8;
  if (input)
  {
    v18 = input;
  }

  v19 = v18;

  v20 = [(__CFString *)v19 length];
  v21 = [v15 length];
  v22 = v21;
  if (self->_isInAmbiguousMode)
  {
    if (v21 < v20 || !v21)
    {
      goto LABEL_37;
    }

    v23 = MEMORY[0x277D6F448];
    syllableSeparator = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
    v25 = [v23 displayReadingFromMecabraCandidate:v14 syllableSeparator:syllableSeparator];

    v26 = v22 - v20;
    if (v26)
    {
      string = [MEMORY[0x277CCAB68] string];
      if ([v25 length])
      {
        [string appendString:v25];
      }

      v40 = [objc_opt_class() stringFallBackForTenKeyInput:v15 range:{v20, v26}];
      [string appendString:v40];
    }

    else
    {
      v27 = [v25 length] ? v25 : 0;
      string = v27;
    }

    if (!string)
    {
LABEL_37:
      string = [objc_opt_class() stringFallBackForTenKeyInput:v15 range:{0, objc_msgSend(v15, "length")}];
    }

    goto LABEL_38;
  }

  v30 = MEMORY[0x277D6F448];
  syllableSeparator2 = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
  v32 = [v30 displayReadingFromMecabraCandidate:v14 syllableSeparator:syllableSeparator2];

  if (v14 && ([v15 hasPrefix:v19] & 1) != 0)
  {
    if (candidateCopy)
    {
      string = v32;
      if (v22 > v20)
      {
        v33 = [(TIKeyboardInputManagerChinesePhonetic *)self segmentedInputFromString:v15];
        v58 = 0;
        v59 = &v58;
        v60 = 0x2020000000;
        v61 = 1;
        v54 = 0;
        v55 = &v54;
        v56 = 0x2020000000;
        v57 = [v33 length];
        v53[0] = 0;
        v53[1] = v53;
        v53[2] = 0x2020000000;
        v53[3] = 0;
        v34 = [v33 length];
        v42 = MEMORY[0x277D85DD0];
        v43 = 3221225472;
        v44 = __89__TIKeyboardInputManagerChinesePhonetic_composedTextForSelectedCandidate_remainingInput___block_invoke;
        v45 = &unk_279D9D5F0;
        v52 = v20;
        v49 = v53;
        v50 = &v54;
        v35 = v33;
        v46 = v35;
        selfCopy = self;
        v48 = v19;
        v51 = &v58;
        [v35 enumerateSubstringsInRange:0 options:v34 usingBlock:{514, &v42}];
        if (*(v59 + 24) == 1)
        {
          v36 = [v35 substringFromIndex:{v55[3], v42, v43, v44, v45, v46, selfCopy}];
          v37 = [string stringByAppendingString:v36];

          string = v36;
        }

        else
        {
          v37 = 0;
        }

        _Block_object_dispose(v53, 8);
        _Block_object_dispose(&v54, 8);
        _Block_object_dispose(&v58, 8);

        string = v37;
      }

      if (string)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {

    candidateCopy = 0;
  }

  v39 = [(TIKeyboardInputManagerChinesePhonetic *)self segmentedInputFromString:v15, v42, v43, v44, v45];
  if (!v39)
  {
    v39 = v15;
  }

  string = v39;
LABEL_32:

LABEL_38:
  v38 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByPrependingConvertedCandidateTextToString:string, v42, v43, v44, v45];

LABEL_39:

  return v38;
}

void __89__TIKeyboardInputManagerChinesePhonetic_composedTextForSelectedCandidate_remainingInput___block_invoke(uint64_t a1, int a2, NSString *a3, _NSRange a4, uint64_t a5, _BYTE *a6)
{
  v16[4] = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 56) + 8) + 24) + v8) <= *(a1 + 80))
  {
    length = v17.length;
    v17.location = v17.length;
    KB::utf8_substring(v16, *(a1 + 32), a3, v17);
    v11 = [*(a1 + 40) syllableSeparator];
    KB::utf8_string(v15, v11, v12);
    v13 = KB::String::equal(v16, v15);
    KB::String::~String(v15);

    if ((v13 & 1) == 0)
    {
      v14.location = length;
      KB::utf8_substring(v15, *(a1 + 48), *(*(*(a1 + 56) + 8) + 24), v14);
      if (KB::String::equal(v16, v15))
      {
        *(*(*(a1 + 56) + 8) + 24) += length;
      }

      else
      {
        *(*(*(a1 + 72) + 8) + 24) = 0;
        *a6 = 1;
      }

      KB::String::~String(v15);
    }

    KB::String::~String(v16);
  }

  else
  {
    *a6 = 1;
    *(*(*(a1 + 64) + 8) + 24) = a3;
  }
}

- (BOOL)hasLockedSyllable
{
  replacedAmbiguousPinyinSyllables = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
  v3 = [replacedAmbiguousPinyinSyllables count] != 0;

  return v3;
}

- (id)segmentedInputFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    string = [MEMORY[0x277CCAB68] string];
    v23 = 0;
    v24 = &v23;
    v25 = 0x4012000000;
    v26 = __Block_byref_object_copy__507;
    v27 = __Block_byref_object_dispose__508;
    v28 = &unk_26D4823EB;
    v29 = xmmword_26D480950;
    v6 = [stringCopy length];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __66__TIKeyboardInputManagerChinesePhonetic_segmentedInputFromString___block_invoke;
    v18 = &unk_279D9D5A0;
    selfCopy = self;
    v7 = stringCopy;
    v20 = v7;
    v22 = &v23;
    v8 = string;
    v21 = v8;
    [v7 enumerateSubstringsInRange:0 options:v6 usingBlock:{514, &v15}];
    if (v24[6] != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v8 length])
      {
        syllableSeparator = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
        [v8 appendString:syllableSeparator];
      }

      v10 = [v7 substringWithRange:{v24[6], v24[7]}];
      v11 = [(TIKeyboardInputManagerChinesePhonetic *)self SegmentedPinyin:v10 inputMethodType:[(TIKeyboardInputManagerChinesePhonetic *)self inputMethodType]];
      [v8 appendString:v11];
    }

    v12 = v21;
    v13 = v8;

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v13 = stringCopy;
  }

  return v13;
}

void __66__TIKeyboardInputManagerChinesePhonetic_segmentedInputFromString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  if (a4 == 1 && ([*(a1 + 32) validCharacterSetForSegmentation], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "characterIsMember:", objc_msgSend(*(a1 + 40), "characterAtIndex:", a3)), v7, v8))
  {
    v9 = *(*(a1 + 56) + 8);
    if (*(v9 + 48) == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v9 + 48) = a3;
      *(v9 + 56) = 1;
    }

    else
    {
      ++*(v9 + 56);
    }
  }

  else
  {
    if (*(*(*(a1 + 56) + 8) + 48) != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([*(a1 + 48) length])
      {
        v10 = *(a1 + 48);
        v11 = [*(a1 + 32) syllableSeparator];
        [v10 appendString:v11];
      }

      v12 = *(a1 + 32);
      v13 = *(a1 + 48);
      v14 = [*(a1 + 40) substringWithRange:{*(*(*(a1 + 56) + 8) + 48), *(*(*(a1 + 56) + 8) + 56)}];
      v15 = [v12 SegmentedPinyin:v14 inputMethodType:{objc_msgSend(*(a1 + 32), "inputMethodType")}];
      [v13 appendString:v15];

      *(*(*(a1 + 56) + 8) + 48) = 0x7FFFFFFFFFFFFFFFLL;
    }

    v16 = *(a1 + 48);
    v17 = [*(a1 + 40) substringWithRange:{a3, a4}];
    [v16 appendString:v17];
  }
}

- (id)SegmentedPinyin:(id)pinyin inputMethodType:(int)type
{
  pinyinCopy = pinyin;
  v7 = pinyinCopy;
  if (type)
  {
    if (type == 13)
    {
      string = [MEMORY[0x277CCAB68] string];
      v9 = MecabraCandidateCopySyllableLengthArrayInAnalysisString();
      v10 = v9;
      if (v9)
      {
        v11 = [v9 count];
        if (v11 >= 1)
        {
          v12 = v11;
          v13 = 0;
          v14 = 0;
          do
          {
            v15 = [v10 objectAtIndexedSubscript:v13];
            intValue = [v15 intValue];

            v17 = [v7 substringWithRange:{v14, intValue}];
            [string appendString:v17];
            if (++v13 < v12)
            {
              syllableSeparator = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
              [string appendString:syllableSeparator];

              v14 += intValue;
            }
          }

          while (v12 != v13);
        }
      }
    }

    else
    {
      string = [MEMORY[0x277CCAB68] string];
      MecabraSyllablesCreateWithString();
      SyllableCount = MecabraSyllablesGetSyllableCount();
      if (SyllableCount)
      {
        v20 = SyllableCount;
        for (i = 0; i != v20; ++i)
        {
          v22 = MecabraSyllablesGetSyllableAtIndex();
          if ([v22 length])
          {
            if ([string length])
            {
              syllableSeparator2 = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
              [string appendString:syllableSeparator2];
            }

            [string appendString:v22];
          }
        }
      }

      MecabraSyllablesRelease();
    }
  }

  else
  {
    string = pinyinCopy;
  }

  return string;
}

- (TIKeyboardCandidate)candidateForInlineTextSegmentation
{
  if (self->_isInAmbiguousMode)
  {
    currentCandidate = 0;
  }

  else
  {
    keyboardState = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
    currentCandidate = [keyboardState currentCandidate];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    currentCandidate = 0;
  }

  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  candidates = [wordSearchCandidateResultSet candidates];

  if (!currentCandidate)
  {
    if ([candidates count])
    {
      currentCandidate = [candidates objectAtIndex:0];
    }

    else
    {
      currentCandidate = 0;
    }
  }

  null = [MEMORY[0x277CBEB68] null];
  v8 = [currentCandidate isEqual:null];

  if (v8)
  {

    currentCandidate = 0;
  }

  return currentCandidate;
}

- (BOOL)isPhraseBoundarySet
{
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    inputs = [composingInput inputs];
    firstObject = [inputs firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v8 = composingInput2;
    if (isKindOfClass)
    {
      inputs2 = [composingInput2 inputs];
      firstObject2 = [inputs2 firstObject];

      syllableSeparator = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
      v12 = [firstObject2 externalSuffix:syllableSeparator];
      v13 = [v12 length] != 0;
    }

    else
    {
      asInlineText = [composingInput2 asInlineText];

      composingInput3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      asInlineTextCursorIndex = [composingInput3 asInlineTextCursorIndex];

      v13 = asInlineTextCursorIndex < [asInlineText length];
    }
  }

  else
  {
    internalInputIndex = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputIndex];
    return internalInputIndex != [(TIKeyboardInputManagerChinesePhonetic *)self internalInputCount];
  }

  return v13;
}

- (BOOL)shouldDelayUpdateComposedText
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerChinesePhonetic;
  return [(TIKeyboardInputManagerMecabra *)&v5 shouldDelayUpdateComposedText]|| self->_isInAmbiguousMode;
}

- (void)updateComposedText
{
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    asInlineText = [composingInput asInlineText];
  }

  else
  {
    asInlineText = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
  }

  candidateForInlineTextSegmentation = [(TIKeyboardInputManagerChinesePhonetic *)self candidateForInlineTextSegmentation];
  if (candidateForInlineTextSegmentation)
  {
    wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    candidates = [wordSearchCandidateResultSet candidates];
    firstObject = [candidates firstObject];

    if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
    {
      composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      if (![composingInput2 hasKindOf:objc_opt_class()])
      {
LABEL_9:

        goto LABEL_10;
      }

      input = [firstObject input];

      if (input)
      {
        composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        asCommittedText = [composingInput2 asCommittedText];
        input2 = [firstObject input];
        v12 = [asCommittedText stringByAppendingString:input2];

        asInlineText = v12;
        goto LABEL_9;
      }
    }

LABEL_10:
    v13 = [(TIKeyboardInputManagerChinesePhonetic *)self composedTextForSelectedCandidate:candidateForInlineTextSegmentation remainingInput:asInlineText];

    goto LABEL_17;
  }

  if (!self->_isInAmbiguousMode)
  {
    v14 = asInlineText;
    goto LABEL_18;
  }

  if (self->_lockingPinyinSyllableSelection)
  {
    [(TIKeyboardInputManagerChinesePhonetic *)self composedTextBeforeFirstSyllableLocked];
  }

  else
  {
    [objc_opt_class() stringFallBackForTenKeyInput:asInlineText range:{0, objc_msgSend(asInlineText, "length")}];
  }
  v13 = ;
  firstObject = asInlineText;
LABEL_17:

  v14 = v13;
LABEL_18:
  v16 = v14;
  [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF28]) setString:v14];
}

- (void)wordSearchEngineDidFindPredictionCandidates:(id)candidates
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerChinesePhonetic;
  [(TIKeyboardInputManagerChinese *)&v4 wordSearchEngineDidFindPredictionCandidates:candidates];
  if ([(TIKeyboardInputManagerChinesePhonetic *)self isTypologyEnabled])
  {
    [(TIKeyboardInputManagerMecabra *)self logInputString];
  }
}

- (void)wordSearchEngineDidFindCandidates:(id)candidates forOperation:(id)operation
{
  operationCopy = operation;
  candidatesCopy = candidates;
  logger = [(TIKeyboardInputManagerChinesePhonetic *)self logger];
  [logger markTime:4];

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__TIKeyboardInputManagerChinesePhonetic_wordSearchEngineDidFindCandidates_forOperation___block_invoke;
  v10[3] = &unk_279D9D620;
  objc_copyWeak(&v12, &location);
  v11 = operationCopy;
  v9 = operationCopy;
  [(TIKeyboardInputManagerMecabra *)self addStickers:candidatesCopy withCompletionHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __88__TIKeyboardInputManagerChinesePhonetic_wordSearchEngineDidFindCandidates_forOperation___block_invoke(uint64_t a1, void *a2)
{
  v104 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_73;
  }

  v6 = [WeakRetained composingInput];
  v7 = [v6 composingInput];

  v8 = arc4random();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    kdebug_trace();
    v9 = kac_get_log();
    v10 = os_signpost_id_make_with_pointer(v9, v8);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      if (os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_26D460000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "kbdCPMecabraSetMarkedText", " enableTelemetry=YES ", buf, 2u);
      }
    }
  }

  [v5 setWordSearchCandidateResultSet:v3];
  [v5 updateComposedText];
  [v5 setMarkedText];
  if (_os_feature_enabled_impl())
  {
    v12 = [v3 candidates];
    v13 = [v12 firstObject];
    v14 = [v5 segmentsFromCandidate:v13 phraseBoundary:0];
    [v5 setSegments:v14];
  }

  v15 = [v5 wordSearchCandidateResultSet];
  v16 = [v5 rawInputString];
  [v5 updateProactiveCandidatesForCandidateResultSet:v15 withInput:v16];

  v17 = [v5 wordSearchCandidateResultSet];
  v18 = [v5 candidateResultSetFromWordSearchCandidateResultSet:v17];

  v19 = *(a1 + 32);
  v20 = [v19 keyboardInput];
  v95 = v8;
  v96 = v18;
  if (([v20 hasDrawInput] & 1) != 0 && (objc_msgSend(v19, "lastAcceptCandidateInput"), (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v22 = v21;
    v23 = v3;
    v24 = [v19 lastAcceptCandidateInput];
    v25 = [v24 remainingMecabraInputs];
    if ([v25 count])
    {

      v3 = v23;
      v18 = v96;
    }

    else
    {
      v54 = [v19 lastAcceptCandidateInput];
      v55 = [v54 remainingInputString];
      v94 = [v55 length];

      v3 = v23;
      v18 = v96;
      if (!v94)
      {
        v56 = [v19 keyboardInput];
        v57 = [v56 asInlineText];
        [v96 setCommittedText:v57];

        v58 = [v5 composingInput];
        [v58 removeAllInputs];

        v59 = [v5 keyboardState];
        v60 = [v59 documentState];
        v61 = [v60 documentStateAfterUnmarkingText];
        v62 = [v5 keyboardState];
        [v62 setDocumentState:v61];

        v18 = v96;
        [v5 updateComposedText];
        [v5 setMarkedText];
      }
    }
  }

  else
  {
  }

  if ([v5 isTypologyEnabled])
  {
    v26 = [v5 keyboardState];
    v27 = [v26 documentState];
    v28 = [v27 selectedText];
    v29 = [v28 length];

    v18 = v96;
    if (!v29)
    {
      [v5 logInputString];
    }
  }

  v30 = [v19 keyboardInput];
  v31 = [v30 composingInput];

  v32 = [v19 keyboardInput];
  v33 = [v32 inputs];
  if ([v33 count] != 1)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && [v31 isComplete])
  {
    v35 = [v3 candidates];
    v32 = [v35 firstObject];

    v36 = [v32 candidate];
    v37 = [v36 _graphemeCount];

    v33 = [v5 typingSessionMonitor];
    v38 = [v5 keyboardState];
    [v33 addDrawInputWithSyllableCount:v37 keyboardState:v38];

LABEL_21:
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [v5 composingInput];
      v40 = [v39 inputs];
      v41 = [v40 count];
      v42 = [v19 keyboardInput];
      v43 = [v42 inputs];
      v93 = v3;
      v44 = [v43 count];

      v45 = v41 == v44;
      v18 = v96;
      v3 = v93;
      if (v45)
      {
        v46 = v7;
        v47 = v31;
        v48 = [v19 keyboardInput];
        v49 = [v48 totalDrawSamples];

        if ([MEMORY[0x277D6FEB0] maxNumberOfDrawSamples] >= v49)
        {
LABEL_44:

          goto LABEL_45;
        }

        v92 = v47;
        v50 = [v5 composingInput];
        v51 = [v50 inputs];
        v52 = [v5 convertInputsToSyntheticInputUptoCount:{objc_msgSend(v51, "count")}];

        v53 = objc_alloc(MEMORY[0x277D6FE10]);
        if (v46)
        {
          objc_msgSend_keyboardLayout(v46);
          objc_msgSend_rescaleKeyboardLayout(v46);
        }

        else
        {
          v101 = 0;
          *buf = 0;
        }

        v63 = [v53 initWithKeyboardLayout:buf rescaleKeyboardLayout:&v101 shouldResample:{objc_msgSend(v5, "shouldResample")}];
        if (v101)
        {
          WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v101);
        }

        if (*buf)
        {
          WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(*buf);
        }

        v64 = [v92 inputs];
        LODWORD(v65) = [v64 count];

        v66 = [v46 inputs];
        v67 = [v66 count];

        if (v67 > v65)
        {
          v65 = v65;
          do
          {
            v68 = [v46 inputs];
            v69 = [v68 objectAtIndexedSubscript:v65];
            [v63 composeNew:v69];

            ++v65;
            v70 = [v46 inputs];
            v71 = [v70 count];
          }

          while (v71 > v65);
        }

        v72 = [v63 inputs];
        if (![v72 count])
        {
          v73 = [v46 inputs];
          v74 = [v73 count];

          if (!v74)
          {
LABEL_43:
            v76 = [v5 composingInput];
            [v76 composeNew:v63];

            v47 = v92;
            v3 = v93;
            goto LABEL_44;
          }

          v72 = [v46 inputs];
          v75 = [v72 lastObject];
          [v63 composeNew:v75];
        }

        goto LABEL_43;
      }
    }
  }

LABEL_45:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_61:
    if ([v5 closeCandidateGenerationContextWithResults:v18])
    {
      v85 = 0;
    }

    else
    {
      v85 = v18;
    }

    [v5 setMostRecentCandidateResultSetPendingDisplay:v85];
    goto LABEL_65;
  }

  if (![v7 isComplete])
  {
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v80 = [MEMORY[0x277D6FEF8] sharedOperationQueue];
    v78 = [v80 operations];

    v81 = [v78 countByEnumeratingWithState:&v97 objects:v103 count:16];
    if (v81)
    {
      v82 = v81;
      v83 = *v98;
      while (2)
      {
        for (i = 0; i != v82; ++i)
        {
          if (*v98 != v83)
          {
            objc_enumerationMutation(v78);
          }

          if ([*(*(&v97 + 1) + 8 * i) isMemberOfClass:objc_opt_class()])
          {
            v18 = v96;
            [v96 setInputManagerHasPendingCandidatesUpdate:1];
            goto LABEL_60;
          }
        }

        v82 = [v78 countByEnumeratingWithState:&v97 objects:v103 count:16];
        if (v82)
        {
          continue;
        }

        break;
      }

      v18 = v96;
    }

    goto LABEL_60;
  }

  v77 = [v19 keyboardInput];
  v78 = [v77 composingInput];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_60:

    goto LABEL_61;
  }

  v79 = [v78 isComplete];

  if (v79)
  {
    goto LABEL_61;
  }

LABEL_65:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    kdebug_trace();
    v86 = kac_get_log();
    v87 = os_signpost_id_make_with_pointer(v86, v95);
    if (v87 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v88 = v87;
      if (os_signpost_enabled(v86))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_26D460000, v86, OS_SIGNPOST_INTERVAL_END, v88, "kbdCPMecabraSetMarkedText", " enableTelemetry=YES ", buf, 2u);
      }
    }
  }

  v89 = [v5 logger];

  if (v89)
  {
    v90 = [v5 logger];
    v91 = [v5 internalInputString];
    [v90 endLoggingForInput:v91 atFinalTimeMark:5];
  }

LABEL_73:
}

- (id)stringByPrependingConvertedCandidateTextToString:(id)string
{
  stringCopy = string;
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    asCommittedText = [composingInput asCommittedText];
  }

  else
  {
    asCommittedText = [(TIKeyboardInputManagerChinesePhonetic *)self convertedInput];
  }

  v7 = [asCommittedText stringByAppendingString:stringCopy];

  return v7;
}

- (id)stringByStrippingConvertedCandidateTextFromString:(id)string
{
  stringCopy = string;
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    asCommittedText = [composingInput asCommittedText];

    v7 = [stringCopy length];
    if (v7 <= [asCommittedText length])
    {
      v8 = &stru_287EBF4E8;
    }

    else
    {
      v8 = [stringCopy substringFromIndex:{objc_msgSend(asCommittedText, "length")}];
    }
  }

  else
  {
    conversionHistory = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
    convertedLength = [conversionHistory convertedLength];

    if (convertedLength <= [stringCopy length])
    {
      v8 = [stringCopy substringFromIndex:convertedLength];
    }

    else
    {
      v8 = &stru_287EBF4E8;
    }
  }

  return v8;
}

- (NSString)convertedInput
{
  conversionHistory = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
  convertedCandidateText = [conversionHistory convertedCandidateText];

  return convertedCandidateText;
}

- (NSString)unconvertedInput
{
  internalInputString = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
  v4 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByStrippingConvertedCandidateTextFromString:internalInputString];

  return v4;
}

- (NSString)inputStringForSearch
{
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    asSearchString = [composingInput asSearchString];
  }

  else
  {
    composingInput = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
    internalInputIndex = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputIndex];
    conversionHistory = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
    convertedLength = [conversionHistory convertedLength];

    if (-[TIKeyboardInputManagerChinesePhonetic filterCandidatesUsingInputIndex](self, "filterCandidatesUsingInputIndex") && internalInputIndex > convertedLength && internalInputIndex < [composingInput length])
    {
      v8 = [composingInput substringToIndex:internalInputIndex];

      composingInput = v8;
    }

    v9 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByStrippingConvertedCandidateTextFromString:composingInput];
    if ([v9 length])
    {
      v10 = v9;
    }

    else
    {
      v10 = composingInput;
    }

    asSearchString = v10;
  }

  return asSearchString;
}

- (_NSRange)analysisStringRange
{
  internalInputString = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
  v4 = [internalInputString length];

  conversionHistory = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
  convertedLength = v4;
  if ([conversionHistory convertedLength] < v4)
  {
    conversionHistory2 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
    convertedLength = [conversionHistory2 convertedLength];
  }

  if ([(TIKeyboardInputManagerChinesePhonetic *)self filterCandidatesUsingInputIndex])
  {
    internalInputIndex = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputIndex];
    if (internalInputIndex >= v4)
    {
      v9 = v4;
    }

    else
    {
      v9 = internalInputIndex;
    }

    if (internalInputIndex > convertedLength)
    {
      v4 = v9;
    }
  }

  v10 = v4 - convertedLength;
  v11 = convertedLength;
  result.length = v10;
  result.location = v11;
  return result;
}

- (BOOL)updateCandidatesByWaitingForResults:(BOOL)results
{
  resultsCopy = results;
  inputStringForSearch = [(TIKeyboardInputManagerChinesePhonetic *)self inputStringForSearch];
  if ([inputStringForSearch length] || -[TIKeyboardInputManagerMecabra usesComposingInput](self, "usesComposingInput") && (-[TIKeyboardInputManagerMecabra composingInput](self, "composingInput"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "inputs"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7, v9))
  {
    if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
    {
      geometryModelData = MEMORY[0x277CBEBF8];
    }

    else
    {
      geometryModelData = [(TIKeyboardInputManagerMecabra *)self geometryModelData];
    }

    [(TIKeyboardInputManagerChinesePhonetic *)self pinyinSyllableCandidates];
    v33 = inputStringForSearch;
    v32 = v34 = geometryModelData;
    if ([v32 count])
    {
      selectedPinyinSyllableCandidateIndex = [(TIKeyboardInputManagerChinesePhonetic *)self selectedPinyinSyllableCandidateIndex];
    }

    else
    {
      selectedPinyinSyllableCandidateIndex = 0x7FFFFFFFFFFFFFFFLL;
    }

    v30 = [TIWordSearchChinesePhoneticOperationGetCandidates alloc];
    wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    replacedAmbiguousPinyinSyllables = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
    v13 = [replacedAmbiguousPinyinSyllables count];
    shouldAdvanceSyllableSelection = [(TIKeyboardInputManagerChinesePhonetic *)self shouldAdvanceSyllableSelection];
    if (resultsCopy)
    {
      selfCopy = 0;
    }

    else
    {
      selfCopy = self;
    }

    if (resultsCopy)
    {
      v16 = 0;
    }

    else
    {
      v16 = sel_wordSearchEngineDidFindCandidates_forOperation_;
    }

    [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
    v17 = v28 = resultsCopy;
    hardwareKeyboardMode = [v17 hardwareKeyboardMode];
    logger = [(TIKeyboardInputManagerChinesePhonetic *)self logger];
    LOBYTE(v27) = hardwareKeyboardMode;
    v26 = v16;
    *(&v25 + 1) = 1;
    LOBYTE(v25) = shouldAdvanceSyllableSelection;
    inputStringForSearch = v33;
    v20 = [TIWordSearchChinesePhoneticOperationGetCandidates initWithWordSearch:v30 inputString:"initWithWordSearch:inputString:keyboardInput:segmentBreakIndex:disambiguationCandidates:unambiguousSyllableCount:selectedDisambiguationCandidateIndex:regenerateDisambiguationCandidates:predictionEnabled:reanalysisMode:target:action:geometryModelData:hardwareKeyboardMode:logger:" keyboardInput:wordSearch segmentBreakIndex:v33 disambiguationCandidates:composingInput unambiguousSyllableCount:0x7FFFFFFFFFFFFFFFLL selectedDisambiguationCandidateIndex:v32 regenerateDisambiguationCandidates:v13 predictionEnabled:selectedPinyinSyllableCandidateIndex reanalysisMode:v25 target:selfCopy action:v26 geometryModelData:v34 hardwareKeyboardMode:v27 logger:logger];

    results = [(TIWordSearchOperationGetCandidates *)v20 results];

    if (!results)
    {
      wordSearch2 = [(TIKeyboardInputManagerChinese *)self wordSearch];
      [wordSearch2 performOperationAsync:v20];

      if (!v28)
      {
        v10 = 0;
        goto LABEL_21;
      }

      [(TIWordSearchChinesePhoneticOperationGetCandidates *)v20 waitUntilFinished];
    }

    results2 = [(TIWordSearchOperationGetCandidates *)v20 results];
    [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:results2];

    [(TIKeyboardInputManagerChinesePhonetic *)self updateComposedText];
    v10 = 1;
LABEL_21:

    goto LABEL_22;
  }

  [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
  v10 = 1;
LABEL_22:

  return v10;
}

- (void)clearDynamicDictionary
{
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch clearLearningDictionary];
}

- (void)lastAcceptedCandidateCorrected
{
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch lastAcceptedCandidateCorrected];
}

- (id)didAcceptCandidate:(id)candidate
{
  v122 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  candidate = [candidateCopy candidate];
  v6 = [candidate length];

  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch cancel];

  wordSearch2 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch2 clearCache];

  if (!v6)
  {
    v10 = 0;
    convertedInput2 = 0;
    goto LABEL_80;
  }

  input = [candidateCopy input];
  if ([input length])
  {
    [candidateCopy input];
  }

  else
  {
    [candidateCopy candidate];
  }
  v12 = ;

  convertedInput = [(TIKeyboardInputManagerChinesePhonetic *)self convertedInput];
  input2 = [candidateCopy input];
  candidate2 = [candidateCopy candidate];
  if ([input2 isEqualToString:candidate2])
  {
    keyboardState = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
    documentState = [keyboardState documentState];
    markedText = [documentState markedText];
    v19 = [v12 isEqualToString:markedText];
  }

  else
  {
    v19 = 0;
  }

  v20 = [v12 length];
  internalInputString = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
  v22 = [internalInputString length];
  v118 = convertedInput;
  v23 = v22 - [convertedInput length];

  v24 = ![(TIKeyboardInputManagerMecabra *)self usesComposingInput];
  if (v20 < v23)
  {
    hasRemainingComposingInput = v24;
  }

  else
  {
    hasRemainingComposingInput = 0;
  }

  if ((v24 & 1) == 0 && (v19 & 1) == 0)
  {
    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    hasRemainingComposingInput = [composingInput hasRemainingComposingInput];
  }

  v119 = v19;
  if ([(TIKeyboardInputManagerChinesePhonetic *)self isTypologyEnabled])
  {
    [(TIKeyboardInputManagerMecabra *)self logCommittedCandidate:candidateCopy partial:hasRemainingComposingInput];
    wordSearch3 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [wordSearch3 mecabra];
    v28 = MecabraGetDebuggingLog();

    v29 = [v28 description];
    [(TIKeyboardInputManagerChinesePhonetic *)self logToTypologyRecorderWithString:v29];

    [(TIKeyboardInputManagerChinesePhonetic *)self logToTypologyRecorderWithString:@"\n\n"];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  proactiveTrigger = [candidateCopy proactiveTrigger];

  customInfoType = [candidateCopy customInfoType];
  usesComposingInput = [(TIKeyboardInputManagerMecabra *)self usesComposingInput];
  if ((isKindOfClass & 1) == 0 && !proactiveTrigger && (customInfoType & 0x1000) == 0 || (-[TIKeyboardInputManagerChinesePhonetic conversionHistory](self, "conversionHistory"), v34 = objc_claimAutoreleasedReturnValue(), v35 = [v34 isValid] | usesComposingInput, v34, (v35 & 1) == 0))
  {
    if (usesComposingInput)
    {
      candidate4 = 0;
      v37 = 0;
      convertedInput2 = 0;
      v48 = v118;
      v10 = v119;
      if (!hasRemainingComposingInput)
      {
        goto LABEL_79;
      }

      goto LABEL_78;
    }

    input3 = [candidateCopy input];
    v50 = [input3 length];

    v48 = v118;
    v10 = v119;
    if (v119)
    {
      candidate3 = [candidateCopy candidate];
      candidate4 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByRemovingSyllableSeparatorsFromString:candidate3];

      goto LABEL_77;
    }

    if ((v50 != 0) | isKindOfClass & 1 || proactiveTrigger)
    {
      candidate4 = [candidateCopy candidate];
      if (hasRemainingComposingInput)
      {
        goto LABEL_40;
      }

      v57 = 0;
    }

    else
    {
      inputIndex = [(TIKeyboardInputManagerChinesePhonetic *)self inputIndex];
      v53 = [v118 length];
      candidate5 = [candidateCopy candidate];
      if (v53 >= inputIndex)
      {
        internalInputString2 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
        v96 = [internalInputString2 length];
        if (v96 <= [v12 length])
        {
          [(TIKeyboardInputManagerChinesePhonetic *)self setRemainingInput:&stru_287EBF4E8];
        }

        else
        {
          internalInputString3 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
          v98 = [internalInputString3 substringFromIndex:{objc_msgSend(v12, "length")}];
          [(TIKeyboardInputManagerChinesePhonetic *)self setRemainingInput:v98];
        }

        v57 = 0;
        v10 = 0;
        goto LABEL_75;
      }

      candidate4 = [v118 stringByAppendingString:candidate5];

      if (hasRemainingComposingInput)
      {
        v10 = 0;
LABEL_40:
        internalInputString2 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
        v56 = [internalInputString2 substringFromIndex:{objc_msgSend(v12, "length") + objc_msgSend(v118, "length")}];
        [(TIKeyboardInputManagerChinesePhonetic *)self setRemainingInput:v56];

        v57 = 1;
        candidate5 = candidate4;
LABEL_75:

        candidate4 = candidate5;
        goto LABEL_76;
      }

      v57 = 0;
      v10 = 0;
    }

LABEL_76:
    [(TIKeyboardInputManagerMecabra *)self updateUsageStatisticsForCandidate:candidateCopy isPartial:hasRemainingComposingInput];
    LOBYTE(hasRemainingComposingInput) = v57;
    v48 = v118;
LABEL_77:
    wordSearch4 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [wordSearch4 commitSurface:candidate4];

    conversionHistory = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
    [conversionHistory clear];

    [(TIKeyboardInputManagerChinesePhonetic *)self clearPinyinSyllableSelection];
    v37 = 0;
    convertedInput2 = candidate4;
    if (hasRemainingComposingInput)
    {
LABEL_78:
      [(TIKeyboardInputManagerMecabra *)self savePartialGeometryData];
      convertedInput2 = candidate4;
      goto LABEL_79;
    }

    goto LABEL_79;
  }

  v116 = v12;
  v36 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:candidateCopy];
  v37 = [MEMORY[0x277D6F448] convertedInputFromMecabraCandidate:v36];
  if (v36 && MecabraCandidateIsFuzzyMatchCandidate())
  {
    keyboardState2 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
    inputMode = [keyboardState2 inputMode];
    v40 = TIStatisticGetKeyForCandidateAccepted();
    TIStatisticScalarIncrement();
  }

  if (self->_isInAmbiguousMode && [(TIKeyboardInputManagerChinesePhonetic *)self hasLockedSyllable])
  {
    keyboardState3 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
    inputMode2 = [keyboardState3 inputMode];
    v43 = TIStatisticGetKeyForCandidateAccepted();
    TIStatisticScalarIncrement();
  }

  wordSearch5 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  v45 = wordSearch5;
  if (v36)
  {
    [wordSearch5 performAccept:v36 isPartial:hasRemainingComposingInput];

    null = v36;
  }

  else
  {
    candidate6 = [candidateCopy candidate];
    [v45 commitSurface:candidate6];

    null = [MEMORY[0x277CBEB68] null];
  }

  v117 = null;
  v10 = v119;
  if (self->_isInAmbiguousMode)
  {
    v59 = MecabraCandidateCopySyllableLengthArrayInAnalysisString();
    v60 = [v59 count];

    replacedAmbiguousPinyinSyllables = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
    v48 = v118;
    if (v60 >= [replacedAmbiguousPinyinSyllables count])
    {
      replacedAmbiguousPinyinSyllables2 = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
      v60 = [replacedAmbiguousPinyinSyllables2 count];
    }

    replacedAmbiguousPinyinSyllables3 = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
    conversionHistory3 = [replacedAmbiguousPinyinSyllables3 subarrayWithRange:{0, v60}];

    replacementUnambiguousPinyinSyllables = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
    v66 = [replacementUnambiguousPinyinSyllables subarrayWithRange:{0, v60}];

    conversionHistory2 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
    [conversionHistory2 addCandidate:candidateCopy candidateRef:v117 replacedAmbiguousPinyinSyllables:conversionHistory3 replacementUnambiguousPinyinSyllables:v66 convertedInput:v37];

    for (; v60; --v60)
    {
      [(TIKeyboardInputManagerChinesePhonetic *)self shiftPinyinSyllableSelection];
    }

    v10 = v119;
  }

  else
  {
    conversionHistory3 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
    [conversionHistory3 addCandidate:candidateCopy candidateRef:v117 replacedAmbiguousPinyinSyllables:0 replacementUnambiguousPinyinSyllables:0 convertedInput:v37];
    v48 = v118;
  }

  v12 = v116;
  if (usesComposingInput)
  {
LABEL_66:
    [(TIKeyboardInputManagerMecabra *)self updateUsageStatisticsForCandidate:candidateCopy isPartial:hasRemainingComposingInput];

    candidate4 = 0;
    convertedInput2 = 0;
    if ((hasRemainingComposingInput & 1) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  if (hasRemainingComposingInput)
  {
    v68 = [v48 length];
    v69 = [v116 length] + v68;
    internalInputString4 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
    v71 = [internalInputString4 length];

    if (v69 > v71)
    {
      if (TICanLogMessageAtLevel())
      {
        v72 = TIOSLogFacility();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
        {
          v113 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Warning: internalInputString index is out of bounds with new candidateInputText", "-[TIKeyboardInputManagerChinesePhonetic didAcceptCandidate:]"];
          *buf = 138412290;
          v121 = v113;
          _os_log_debug_impl(&dword_26D460000, v72, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }

      internalInputString5 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
      v69 = [internalInputString5 length];
    }

    internalInputString6 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
    v75 = [internalInputString6 substringFromIndex:v69];
    v76 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByPrependingConvertedCandidateTextToString:v75];
    [(TIKeyboardInputManagerChinesePhonetic *)self setRemainingInput:v76];

    conversionHistory4 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
    lastConvertedCandidate = [conversionHistory4 lastConvertedCandidate];

    v78 = [v48 length];
    v79 = [v116 length] + v78;
    geometryDataArray = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
    v81 = [geometryDataArray count];

    if (v79 < v81)
    {
      v82 = [v48 length];
      v83 = [v116 length];
      candidate7 = [candidateCopy candidate];
      v85 = [candidate7 length];

      geometryDataArray2 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
      v87 = [geometryDataArray2 subarrayWithRange:{v82, v83}];
      [lastConvertedCandidate setGeometryData:v87];

      geometryDataArray3 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
      v114 = v83;
      [geometryDataArray3 removeObjectsInRange:{v82, v83}];

      if (v85)
      {
        v89 = v85;
        do
        {
          [(TIKeyboardInputManagerMecabra *)self insertDummyGeometryDataAtIndex:v82];
          --v89;
        }

        while (v89);
      }

      v48 = v118;
      if (([(TIKeyboardInputManagerChinesePhonetic *)self isTypologyEnabled]& 1) != 0)
      {
        touchDataArray = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
        v91 = [touchDataArray count];

        if (v79 < v91)
        {
          touchDataArray2 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
          v93 = [touchDataArray2 subarrayWithRange:{v82, v114}];
          [lastConvertedCandidate setTouchData:v93];

          touchDataArray3 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
          [touchDataArray3 removeObjectsInRange:{v82, v114}];

          for (; v85; --v85)
          {
            [(TIKeyboardInputManagerMecabra *)self insertDummyTouchDataAtIndex:v82];
          }
        }
      }
    }

    v12 = v116;
    v10 = v119;
    goto LABEL_66;
  }

  convertedInput2 = [(TIKeyboardInputManagerChinesePhonetic *)self convertedInput];
  conversionHistory5 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
  [conversionHistory5 clear];

  [(TIKeyboardInputManagerChinesePhonetic *)self clearPinyinSyllableSelection];
  [(TIKeyboardInputManagerMecabra *)self updateUsageStatisticsForCandidate:candidateCopy isPartial:0];

LABEL_79:
LABEL_80:
  [(TIKeyboardInputManagerChinesePhonetic *)self setFilterCandidatesUsingInputIndex:0];
  if (![(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    goto LABEL_87;
  }

  if (v10)
  {
    candidate8 = [candidateCopy candidate];
    v102 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByRemovingSyllableSeparatorsFromString:candidate8];

    composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [composingInput2 removeAllInputs];

    wordSearch6 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [wordSearch6 commitSurface:v102];
    convertedInput2 = v102;
LABEL_83:

    goto LABEL_87;
  }

  v105 = [(TIKeyboardInputManagerMecabra *)self processAcceptedCandidate:candidateCopy];

  composingInput3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  hasDrawInput = [composingInput3 hasDrawInput];

  if (hasDrawInput)
  {
    v108 = [(TIKeyboardInputManagerChinesePhonetic *)self candidateResultSetByWaitingForResults:1];
    composingInput4 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    hasRemainingComposingInput2 = [composingInput4 hasRemainingComposingInput];

    if ((hasRemainingComposingInput2 & 1) == 0)
    {
      composingInput5 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      convertedInput2 = [composingInput5 asCommittedText];

      wordSearch6 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      [wordSearch6 removeAllInputs];
      goto LABEL_83;
    }
  }

  convertedInput2 = v105;
LABEL_87:

  return convertedInput2;
}

- (BOOL)canStartSentenceAfterString:(id)string
{
  stringCopy = string;
  if ([stringCopy length] && (v10.receiver = self, v10.super_class = TIKeyboardInputManagerChinesePhonetic, !-[TIKeyboardInputManagerChinesePhonetic canStartSentenceAfterString:](&v10, sel_canStartSentenceAfterString_, stringCopy)))
  {
    v6 = [TIKeyboardInputManagerChinesePhonetic canStartSentenceAfterString:]::ChineseSentenceDelimitingCharacters;
    if (![TIKeyboardInputManagerChinesePhonetic canStartSentenceAfterString:]::ChineseSentenceDelimitingCharacters)
    {
      v7 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"。？！"];
      v8 = [TIKeyboardInputManagerChinesePhonetic canStartSentenceAfterString:]::ChineseSentenceDelimitingCharacters;
      [TIKeyboardInputManagerChinesePhonetic canStartSentenceAfterString:]::ChineseSentenceDelimitingCharacters = v7;

      v6 = [TIKeyboardInputManagerChinesePhonetic canStartSentenceAfterString:]::ChineseSentenceDelimitingCharacters;
    }

    v5 = [stringCopy rangeOfCharacterFromSet:v6 options:1 range:{objc_msgSend(stringCopy, "length") - 1, 1}] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)handleAcceptedPinyinDisambiguationCandidate:(id)candidate keyboardState:(id)state
{
  v63 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  label = [candidateCopy label];
  v7 = [label length];

  if (v7)
  {
    if (![(TIKeyboardInputManagerChinesePhonetic *)self shouldAdvanceSyllableSelection])
    {
      [(TIKeyboardInputManagerChinesePhonetic *)self revertLastDisambiguation];
    }

    v8 = candidateCopy;
    -[TIKeyboardInputManagerChinesePhonetic setShouldAdvanceSyllableSelection:](self, "setShouldAdvanceSyllableSelection:", [v8 isGeneratedByChoosePinyin] ^ 1);
    [v8 setGeneratedByChoosePinyin:0];
    wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [wordSearch cancel];

    [(TIKeyboardInputManagerChinesePhonetic *)self setComposedTextBeforeFirstSyllableLocked:*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF28])];
    wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    disambiguationCandidates = [wordSearchCandidateResultSet disambiguationCandidates];

    v51 = [disambiguationCandidates indexOfObject:v8];
    if (v51 == 0x7FFFFFFFFFFFFFFFLL)
    {

      v52 = 0;
    }

    else
    {
      v52 = disambiguationCandidates;
    }

    self->_lockingPinyinSyllableSelection = 1;
    replacedAmbiguousPinyinSyllables = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
    v13 = [replacedAmbiguousPinyinSyllables count];

    if (v13)
    {
      v14 = 0;
      v15 = 0;
      while (1)
      {
        unconvertedInput = [(TIKeyboardInputManagerChinesePhonetic *)self unconvertedInput];
        unconvertedInput2 = [(TIKeyboardInputManagerChinesePhonetic *)self unconvertedInput];
        v18 = [unconvertedInput rangeOfString:@"'" options:0 range:{v14, objc_msgSend(unconvertedInput2, "length") - v14}];

        v19 = v18 + 1;
        unconvertedInput3 = [(TIKeyboardInputManagerChinesePhonetic *)self unconvertedInput];
        v21 = [unconvertedInput3 length];

        if (v18 + 1 > v21)
        {
          break;
        }

        ++v15;
        replacedAmbiguousPinyinSyllables2 = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
        v23 = [replacedAmbiguousPinyinSyllables2 count];

        v14 = v18 + 1;
        if (v15 >= v23)
        {
          goto LABEL_14;
        }
      }

      [(TIKeyboardInputManagerChinesePhonetic *)self revertLastDisambiguation];
      v19 = v14;
    }

    else
    {
      v19 = 0;
    }

LABEL_14:
    label2 = [v8 label];
    unconvertedInput4 = [(TIKeyboardInputManagerChinesePhonetic *)self unconvertedInput];
    v26 = [unconvertedInput4 length];

    ambiguousAndPinyinCharacterSet = [objc_opt_class() ambiguousAndPinyinCharacterSet];
    v28 = [label2 rangeOfCharacterFromSet:ambiguousAndPinyinCharacterSet];

    ambiguousAndPinyinCharacterSet2 = [objc_opt_class() ambiguousAndPinyinCharacterSet];
    v30 = ambiguousAndPinyinCharacterSet2;
    v53 = v8;
    if (v28 != 0x7FFFFFFFFFFFFFFFLL)
    {
      invertedSet = [ambiguousAndPinyinCharacterSet2 invertedSet];

      v30 = invertedSet;
    }

    unconvertedInput5 = [(TIKeyboardInputManagerChinesePhonetic *)self unconvertedInput];
    v33 = [unconvertedInput5 rangeOfCharacterFromSet:v30 options:0 range:{v19, v26 - v19}];

    if (v33 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v34 = v26;
    }

    else
    {
      v34 = v33;
    }

    unconvertedInput6 = [(TIKeyboardInputManagerChinesePhonetic *)self unconvertedInput];
    v36 = label2;
    v37 = [v36 length];
    v38 = v37 + v19;
    v39 = v36;
    if (([v36 hasSuffix:@"'"] & 1) == 0)
    {
      v39 = v36;
      if (v38 < v34)
      {
        v39 = v36;
        if ([unconvertedInput6 rangeOfString:@"'" options:2 range:{v37 + v19, 1}] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v39 = [v36 stringByAppendingString:@"'"];
        }
      }
    }

    v54 = candidateCopy;
    v50 = v30;
    if (v34 >= v38)
    {
      v40 = [unconvertedInput6 substringWithRange:{v19, v37}];
      v41 = [unconvertedInput6 stringByReplacingCharactersInRange:v19 withString:{v37, v39}];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        *buf = 136315906;
        v56 = "[TIKeyboardInputManagerChinesePhonetic handleAcceptedPinyinDisambiguationCandidate:keyboardState:]";
        v57 = 2048;
        v58 = v19;
        v59 = 2048;
        v60 = v37;
        v61 = 2048;
        v62 = v34;
        _os_log_fault_impl(&dword_26D460000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s: disambiguation candidate(location=%ld, length=%ld) is longer than input(length=%ld). Please file to 'TextInput | Input Managers'", buf, 0x2Au);
      }

      v40 = v36;
      v41 = unconvertedInput6;
    }

    v42 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByPrependingConvertedCandidateTextToString:v41];

    v43 = [v52 copy];
    [(TIKeyboardInputManagerChinesePhonetic *)self clearInput];
    replacedAmbiguousPinyinSyllables3 = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
    [replacedAmbiguousPinyinSyllables3 addObject:v40];

    replacementUnambiguousPinyinSyllables = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
    [replacementUnambiguousPinyinSyllables addObject:v39];

    [(TIKeyboardInputManagerChinesePhonetic *)self setSelectedPinyinSyllableCandidateIndex:v51];
    [(TIKeyboardInputManagerChinesePhonetic *)self setPinyinSyllableCandidates:v43];
    v46 = objc_alloc_init(MEMORY[0x277D6F3E8]);
    v47 = objc_alloc(MEMORY[0x277D6FE70]);
    keyboardState = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
    v49 = [v47 initWithKeyboardState:keyboardState];

    [v46 setString:v42];
    [(TIKeyboardInputManagerChinesePhonetic *)self addInput:v46 withContext:v49];
    self->_lockingPinyinSyllableSelection = 0;

    candidateCopy = v54;
  }
}

- (id)handleAcceptedCandidate:(id)candidate keyboardState:(id)state
{
  self->_acceptingCandidate = 1;
  stateCopy = state;
  candidateCopy = candidate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TIKeyboardInputManagerChinesePhonetic *)self handleAcceptedPinyinDisambiguationCandidate:candidateCopy keyboardState:stateCopy];

    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TIKeyboardInputManagerChinesePhonetic;
    v8 = [(TIKeyboardInputManagerMecabra *)&v10 handleAcceptedCandidate:candidateCopy keyboardState:stateCopy];
  }

  self->_acceptingCandidate = 0;
  [(TIKeyboardInputManagerChinese *)self setCurrentKeyHint:0];

  return v8;
}

- (id)defaultCandidate
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(TIKeyboardInputManagerChinesePhonetic *)self inputCount])
  {
    inputString = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
    inputIndex = [(TIKeyboardInputManagerChinesePhonetic *)self inputIndex];
    if (inputIndex)
    {
      v5 = inputIndex;
      if (inputIndex <= [(TIKeyboardInputManagerChinesePhonetic *)self inputCount])
      {
        if ([inputString length] >= v5)
        {
          v8 = [inputString substringToIndex:v5];

          inputString = v8;
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[TIKeyboardInputManagerChinesePhonetic shouldSkipCandidateSelection](self, "shouldSkipCandidateSelection")}];
          v14 = 136315394;
          v15 = "[TIKeyboardInputManagerChinesePhonetic defaultCandidate]";
          v16 = 2112;
          v17 = v6;
          _os_log_fault_impl(&dword_26D460000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s  Tried to take a substring to index outside of string bounds. ShouldSkipCandidateSelection is %@.", &v14, 0x16u);
        }
      }
    }

    v9 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByStrippingConvertedCandidateTextFromString:inputString];
    if ([v9 length])
    {
      v10 = v9;

      inputString = v10;
    }

    v11 = objc_alloc(MEMORY[0x277D6F3D8]);
    v12 = [(TIKeyboardInputManagerChinesePhonetic *)self externalStringToInternal:inputString];
    v7 = [v11 initWithCandidate:v12];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)keyboardBehaviors
{
  v2 = objc_alloc_init(MEMORY[0x277D6F3B0]);

  return v2;
}

- (id)sortingMethods
{
  v7[2] = *MEMORY[0x277D85DE8];
  if ([(TIKeyboardInputManagerChinese *)self showingFacemarkCandidates])
  {
    v3 = &unk_287EC3A00;
  }

  else if ([(TIKeyboardInputManagerChinese *)self hasIdeographicCandidates])
  {
    if ([(TIKeyboardInputManagerChinesePhonetic *)self hasExtensionEmojiCandidates]&& ![(TIKeyboardInputManagerChinesePhonetic *)self shouldOmitEmojiCandidates])
    {
      v3 = &unk_287EC3A30;
    }

    else if ([(TIKeyboardInputManagerChinesePhonetic *)self inputCount])
    {
      v3 = &unk_287EC3A60;
    }

    else
    {
      phoneticSortingMethod = [(TIKeyboardInputManagerChinesePhonetic *)self phoneticSortingMethod];
      v5 = phoneticSortingMethod;
      if (phoneticSortingMethod)
      {
        v7[0] = &unk_287EC3B70;
        v7[1] = phoneticSortingMethod;
        v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
      }

      else
      {
        v3 = &unk_287EC3A48;
      }
    }
  }

  else
  {
    v3 = &unk_287EC3A18;
  }

  return v3;
}

- (BOOL)hasExtensionEmojiCandidates
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  candidates = [wordSearchCandidateResultSet candidates];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__TIKeyboardInputManagerChinesePhonetic_hasExtensionEmojiCandidates__block_invoke;
  v5[3] = &unk_279D9D578;
  v5[4] = &v6;
  [candidates enumerateObjectsUsingBlock:v5];

  LOBYTE(wordSearchCandidateResultSet) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return wordSearchCandidateResultSet;
}

void __68__TIKeyboardInputManagerChinesePhonetic_hasExtensionEmojiCandidates__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 isEmojiCandidate] && objc_msgSend(v6, "isExtensionCandidate"))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (id)candidateResultSetByWaitingForResults:(BOOL)results
{
  resultsCopy = results;
  if (([(TIKeyboardInputManagerChinesePhonetic *)self shouldSkipCandidateSelection]& 1) != 0)
  {
    dummySet = 0;
    goto LABEL_23;
  }

  if ([(TIKeyboardInputManagerChinesePhonetic *)self candidateRange]|| ([(TIKeyboardInputManagerChinesePhonetic *)self candidateRange], v6))
  {
    keyboardState = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
    documentState = [keyboardState documentState];
    selectedText = [documentState selectedText];

    v10 = [selectedText length];
    if (v10 && (v11 = v10, -[TIKeyboardInputManagerMecabra composingInput](self, "composingInput"), v12 = objc_claimAutoreleasedReturnValue(), [v12 inputs], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v12, !v14))
    {
      if (v11 > *MEMORY[0x277D6FF38] || ([MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(selectedText, "rangeOfCharacterFromSet:", v24), v24, v25 != 0x7FFFFFFFFFFFFFFFLL) || -[TIKeyboardInputManagerChinesePhonetic inputMethodType](self, "inputMethodType") == 5 && !objc_msgSend(selectedText, "_containsIdeographsOrBopomofoOnly") || (-[TIKeyboardInputManagerChinese language](self, "language"), v26 = objc_claimAutoreleasedReturnValue(), v26, v26 == @"yue-Hant"))
      {
        dummySet = 0;
        goto LABEL_22;
      }

      if (![(TIKeyboardInputManagerChinesePhonetic *)self generateReanalysisCandidatesIfAppropriate])
      {
        goto LABEL_13;
      }
    }

    else
    {
      inputStringForSearch = [(TIKeyboardInputManagerChinesePhonetic *)self inputStringForSearch];
      if ([inputStringForSearch length] || -[TIKeyboardInputManagerMecabra usesComposingInput](self, "usesComposingInput") && (-[TIKeyboardInputManagerMecabra composingInput](self, "composingInput"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "inputs"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "count"), v21, v20, v22))
      {
        v16 = [(TIKeyboardInputManagerChinesePhonetic *)self updateCandidatesByWaitingForResults:resultsCopy];

        if (!v16)
        {
LABEL_13:
          dummySet = [MEMORY[0x277D6F3D0] dummySet];
          goto LABEL_22;
        }
      }

      else
      {
        updateCompletionCandidatesIfAppropriate = [(TIKeyboardInputManagerChinese *)self updateCompletionCandidatesIfAppropriate];

        if (!updateCompletionCandidatesIfAppropriate)
        {
          goto LABEL_13;
        }
      }
    }

    wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    rawInputString = [(TIKeyboardInputManagerChinesePhonetic *)self rawInputString];
    [(TIKeyboardInputManagerMecabra *)self updateProactiveCandidatesForCandidateResultSet:wordSearchCandidateResultSet withInput:rawInputString];

    wordSearchCandidateResultSet2 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    dummySet = [(TIKeyboardInputManagerMecabra *)self candidateResultSetFromWordSearchCandidateResultSet:wordSearchCandidateResultSet2];

LABEL_22:
    goto LABEL_23;
  }

  dummySet = [MEMORY[0x277D6F3D0] dummySet];
  mostRecentCandidateResultSetPendingDisplay = [(TIKeyboardInputManagerChinesePhonetic *)self mostRecentCandidateResultSetPendingDisplay];

  if (mostRecentCandidateResultSetPendingDisplay)
  {
    mostRecentCandidateResultSetPendingDisplay2 = [(TIKeyboardInputManagerChinesePhonetic *)self mostRecentCandidateResultSetPendingDisplay];

    [(TIKeyboardInputManagerChinesePhonetic *)self setMostRecentCandidateResultSetPendingDisplay:0];
    dummySet = mostRecentCandidateResultSetPendingDisplay2;
  }

LABEL_23:

  return dummySet;
}

- (unint64_t)predictionOptions
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerChinesePhonetic;
  result = [(TIKeyboardInputManagerChinese *)&v4 predictionOptions];
  if (self->_isInAmbiguousMode)
  {
    result |= 0x40uLL;
  }

  return result;
}

- (void)setPhraseBoundary:(unint64_t)boundary
{
  if (self->_isInAmbiguousMode && [(TIKeyboardInputManagerChinesePhonetic *)self hasLockedSyllable])
  {
    wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    if (wordSearchCandidateResultSet)
    {
    }

    else
    {
      composedTextBeforeFirstSyllableLocked = [(TIKeyboardInputManagerChinesePhonetic *)self composedTextBeforeFirstSyllableLocked];
      v7 = [composedTextBeforeFirstSyllableLocked isEqualToString:*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF28])];

      if (v7)
      {
        return;
      }
    }
  }

  [(TIKeyboardInputManagerChinesePhonetic *)self clearPinyinSyllableSelection];
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch cancel];

  wordSearch2 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch2 clearCache];

  conversionHistory = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
  [conversionHistory setInputChangedSinceLastConversion:1];

  [(TIKeyboardInputManagerChinese *)self setPairedPunctuationOpenQuote:0];
  [(TIKeyboardInputManagerChinese *)self setPairedPunctuationSelectedText:0];
  keyboardState = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
  documentState = [keyboardState documentState];
  [documentState selectedRangeInMarkedText];
  v14 = v13 + boundary;

  [(TIKeyboardInputManagerChinesePhonetic *)self setInputIndex:v14];
  [(TIKeyboardInputManagerChinesePhonetic *)self setFilterCandidatesUsingInputIndex:[(TIKeyboardInputManagerChinesePhonetic *)self isPhraseBoundarySet]];
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v15 = [(TIKeyboardInputManagerChinesePhonetic *)self externalIndexToInternal:v14 shouldBoundToInputCount:0];
    v16 = [(TIKeyboardInputManagerMecabra *)self _convertInputsToSyntheticInputWithOffset:v14];
    [(TIKeyboardInputManagerMecabra *)self _replaceComposingInputWithSyntheticInput:v16 internalIndex:v15];
  }
}

- (void)setAutoCorrects:(BOOL)corrects
{
  correctsCopy = corrects;
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch setAutoCorrects:correctsCopy];
}

- (void)inputLocationChanged
{
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch cancel];

  [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
  conversionHistory = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
  [conversionHistory clear];

  [(TIKeyboardInputManagerChinesePhonetic *)self setFilterCandidatesUsingInputIndex:0];
  [(TIKeyboardInputManagerChinesePhonetic *)self clearPinyinSyllableSelection];
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerChinesePhonetic;
  [(TIKeyboardInputManagerChinese *)&v5 inputLocationChanged];
}

- (void)clearInput
{
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch cancel];

  wordSearch2 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch2 clearCache];

  [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
  [(TIKeyboardInputManagerChinesePhonetic *)self setFilterCandidatesUsingInputIndex:0];
  [(TIKeyboardInputManagerChinesePhonetic *)self setRemainingInput:0];
  if (!self->_acceptingCandidate)
  {
    conversionHistory = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
    [conversionHistory clear];
  }

  v6.receiver = self;
  v6.super_class = TIKeyboardInputManagerChinesePhonetic;
  [(TIKeyboardInputManagerChinese *)&v6 clearInput];
}

- (void)resume
{
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch mecabra];
  MecabraPreheatResources();

  if ([TIKeyboardInputManagerChinesePhonetic resume]::onceToken != -1)
  {
    dispatch_once(&[TIKeyboardInputManagerChinesePhonetic resume]::onceToken, &__block_literal_global_166);
  }

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerChinesePhonetic;
  [(TIKeyboardInputManagerMecabra *)&v4 resume];
}

void __47__TIKeyboardInputManagerChinesePhonetic_resume__block_invoke()
{
  v0 = _TIQueueBackground();
  TIDispatchAsync();
}

- (id)deleteFromInput:(unint64_t *)input
{
  [(TIKeyboardInputManagerChinesePhonetic *)self setFilterCandidatesUsingInputIndex:0];
  hasLockedSyllable = [(TIKeyboardInputManagerChinesePhonetic *)self hasLockedSyllable];
  if (![(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    if ([(TIKeyboardInputManagerChinesePhonetic *)self shouldSkipCandidateSelection])
    {
      v127.receiver = self;
      v127.super_class = TIKeyboardInputManagerChinesePhonetic;
      v21 = [(TIKeyboardInputManagerChinese *)&v127 deleteFromInput:input];
      goto LABEL_73;
    }

    internalInputString = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
    v23 = [internalInputString isEqualToString:*MEMORY[0x277D6FF50]];

    if (v23)
    {
      goto LABEL_10;
    }

    wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [wordSearch cancel];

    internalInputIndex = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputIndex];
    conversionHistory = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
    convertedLength = [conversionHistory convertedLength];

    if (internalInputIndex < convertedLength)
    {
      conversionHistory2 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
      [conversionHistory2 invalidate];
    }

    keyboardState = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
    documentState = [keyboardState documentState];
    markedText = [documentState markedText];

    if (internalInputIndex == convertedLength)
    {
      conversionHistory3 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
      v32 = [conversionHistory3 shouldRevertConvertedCandidateOnDeletionFromMarkedText:markedText];

      if ((v32 & 1) == 0)
      {
        conversionHistory4 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
        [conversionHistory4 invalidate];
      }
    }

    keyboardState2 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
    i = [keyboardState2 documentState];

    [i selectedRangeInMarkedText];
    v37 = v36;
    if (!v36)
    {
      conversionHistory5 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
      v39 = [conversionHistory5 shouldRevertConvertedCandidateOnDeletionFromMarkedText:markedText];

      if (v39)
      {
        v121 = i;
        conversionHistory6 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
        lastConvertedCandidate = [conversionHistory6 lastConvertedCandidate];

        candidate = [lastConvertedCandidate candidate];
        input = [candidate input];

        convertedInput = [lastConvertedCandidate convertedInput];
        if ([convertedInput length])
        {
          v45 = [input length];
          if (v45 == [convertedInput length])
          {
            v119 = markedText;
            unconvertedInput = [(TIKeyboardInputManagerChinesePhonetic *)self unconvertedInput];
            conversionHistory7 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
            [conversionHistory7 didRevertLastConvertedCandidate];

            revertedInput = [lastConvertedCandidate revertedInput];
            v49 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByPrependingConvertedCandidateTextToString:revertedInput];
            v117 = unconvertedInput;
            v50 = [v49 stringByAppendingString:unconvertedInput];

            v116 = v50;
            [(TIKeyboardInputManagerChinesePhonetic *)self setInput:v50];
            candidate2 = [lastConvertedCandidate candidate];
            v51Candidate = [candidate2 candidate];
            v53 = [v51Candidate length];

            convertedInput2 = [(TIKeyboardInputManagerChinesePhonetic *)self convertedInput];
            v115 = v53;
            v55 = [convertedInput2 length] + v53;

            geometryDataArray = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
            v57 = [geometryDataArray count];

            if (v55 <= v57)
            {
              v58 = input;
              convertedInput3 = [(TIKeyboardInputManagerChinesePhonetic *)self convertedInput];
              v60 = [convertedInput3 length];

              v61 = [convertedInput length];
              geometryData = [lastConvertedCandidate geometryData];
              geometryDataArray2 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
              v64 = geometryDataArray2;
              if (geometryData)
              {
                [geometryDataArray2 replaceObjectsInRange:v60 withObjectsFromArray:{v115, geometryData, geometryData}];
              }

              else
              {
                [geometryDataArray2 removeObjectsInRange:{v60, v115, 0}];

                if (v61)
                {
                  v97 = v61;
                  do
                  {
                    [(TIKeyboardInputManagerMecabra *)self insertDummyGeometryDataAtIndex:v60];
                    --v97;
                  }

                  while (v97);
                }
              }

              input = v58;
              if ([(TIKeyboardInputManagerChinesePhonetic *)self isTypologyEnabled])
              {
                touchDataArray = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
                v99 = [touchDataArray count];

                if (v55 <= v99)
                {
                  touchData = [lastConvertedCandidate touchData];
                  touchDataArray2 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
                  v102 = touchDataArray2;
                  if (touchData)
                  {
                    [touchDataArray2 replaceObjectsInRange:v60 withObjectsFromArray:{v115, touchData}];
                  }

                  else
                  {
                    [touchDataArray2 removeObjectsInRange:{v60, v115}];

                    for (; v61; --v61)
                    {
                      [(TIKeyboardInputManagerMecabra *)self insertDummyTouchDataAtIndex:v60];
                    }
                  }
                }
              }
            }

            replacedAmbiguousPinyinSyllables = [lastConvertedCandidate replacedAmbiguousPinyinSyllables];
            v104 = [replacedAmbiguousPinyinSyllables count];

            if (v104)
            {
              replacedAmbiguousPinyinSyllables2 = [lastConvertedCandidate replacedAmbiguousPinyinSyllables];
              replacedAmbiguousPinyinSyllables3 = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
              v107 = [replacedAmbiguousPinyinSyllables2 arrayByAddingObjectsFromArray:replacedAmbiguousPinyinSyllables3];
              v108 = [v107 mutableCopy];
              [(TIKeyboardInputManagerChinesePhonetic *)self setReplacedAmbiguousPinyinSyllables:v108];

              replacementUnambiguousPinyinSyllables = [lastConvertedCandidate replacementUnambiguousPinyinSyllables];
              replacementUnambiguousPinyinSyllables2 = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
              v111 = [replacementUnambiguousPinyinSyllables arrayByAddingObjectsFromArray:replacementUnambiguousPinyinSyllables2];
              v112 = [v111 mutableCopy];
              [(TIKeyboardInputManagerChinesePhonetic *)self setReplacementUnambiguousPinyinSyllables:v112];
            }

            markedText = v119;
            if (input)
            {
              *input = 0;
            }

            i = v121;
            goto LABEL_70;
          }
        }

        i = v121;
      }
    }

    [(TIKeyboardInputManagerChinesePhonetic *)self revertLastDisambiguation];
    if (hasLockedSyllable)
    {
LABEL_70:

LABEL_71:
      goto LABEL_72;
    }

    inputIndex = [(TIKeyboardInputManagerChinesePhonetic *)self inputIndex];
    v66 = *MEMORY[0x277D6FF28];
    v67 = [*(&self->super.super.super.super.super.super.isa + v66) length];
    if (!inputIndex || v67 < inputIndex)
    {
LABEL_52:
      if (![(TIKeyboardInputManagerChinesePhonetic *)self inputCount])
      {
        [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
        [(TIKeyboardInputManagerChinesePhonetic *)self clearPinyinSyllableSelection];
        conversionHistory8 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
        [conversionHistory8 clear];
      }

      goto LABEL_70;
    }

    if (v37 <= 1)
    {
      v68 = 1;
    }

    else
    {
      v68 = v37;
    }

    v120 = markedText;
    v122 = i;
    if (v37 || inputIndex < 2)
    {
      v118 = v68;
LABEL_39:
      internalInputString2 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
      v79 = [internalInputString2 length];
      internalInputString3 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
      v81 = v68;
      if (v68 >= [internalInputString3 length])
      {
        internalInputString4 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
        v81 = [internalInputString4 length];
      }

      v83 = v79 - v81;

      internalInputString5 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
      v85 = [internalInputString5 length];

      if (v85 > v83)
      {
        v86 = *MEMORY[0x277D6FF30];
        do
        {
          TIInputManager::delete_from_input(*(&self->super.super.super.super.super.super.isa + v86));
          internalInputString6 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
          v88 = [internalInputString6 length];
        }

        while (v88 > v83);
      }

      if (internalInputIndex >= v68)
      {
        v89 = internalInputIndex - v68;
      }

      else
      {
        v89 = 0;
      }

      for (i = v122; v68; --v68)
      {
        geometryDataArray3 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
        v91 = [geometryDataArray3 count];

        if (v89 < v91)
        {
          geometryDataArray4 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
          [geometryDataArray4 removeObjectAtIndex:v89];
        }
      }

      v118 = [*(&self->super.super.super.super.super.super.isa + v66) substringToIndex:inputIndex - v118];
      v94 = [*(&self->super.super.super.super.super.super.isa + v66) substringFromIndex:inputIndex];
      v95 = [v118 stringByAppendingString:v94];

      [*(&self->super.super.super.super.super.super.isa + v66) setString:v95];
      markedText = v120;
      goto LABEL_52;
    }

    v69 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    v126[0] = 0;
    v126[1] = v126;
    v126[2] = 0x2020000000;
    v126[3] = 0;
    v70 = *(&self->super.super.super.super.super.super.isa + v66);
    v123[0] = MEMORY[0x277D85DD0];
    v123[1] = 3221225472;
    v123[2] = __57__TIKeyboardInputManagerChinesePhonetic_deleteFromInput___block_invoke;
    v123[3] = &unk_279D9D490;
    v71 = v69;
    v124 = v71;
    v125 = v126;
    [v70 enumerateSubstringsInRange:0 options:inputIndex usingBlock:{258, v123}];
    if ([v71 count] != 1)
    {
      v74 = [v71 count];
      v73 = v68;
      if (v74 != 2)
      {
        goto LABEL_38;
      }

      syllableSeparator = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
      v76 = [v71 indexOfObject:syllableSeparator];

      if (v76 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v71 removeObjectAtIndex:v76];
        firstObject = [v71 firstObject];
        v68 = [firstObject length];

        v73 = v68 + 1;
        goto LABEL_38;
      }
    }

    firstObject2 = [v71 firstObject];
    v68 = [firstObject2 length];

    v73 = v68;
LABEL_38:
    v118 = v73;

    _Block_object_dispose(v126, 8);
    goto LABEL_39;
  }

  wordSearch2 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch2 cancel];

  composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
  asInlineText = [composingInput asInlineText];
  v9 = [asInlineText isEqualToString:*MEMORY[0x277D6FF50]];

  if (!v9)
  {
    composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v10ComposingInput = [composingInput2 composingInput];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      wordSearch3 = [(TIKeyboardInputManagerChinese *)self wordSearch];
      [wordSearch3 revertInlineCandidate];
    }

    v14 = objc_alloc(MEMORY[0x277D6FE08]);
    previouslyDeletedTypeInput = [(TIKeyboardInputManagerMecabra *)self previouslyDeletedTypeInput];
    previouslyProcessedDeleteInput = [(TIKeyboardInputManagerMecabra *)self previouslyProcessedDeleteInput];
    markedText = [v14 initWithDeletedText:0 deleteBySyllable:previouslyDeletedTypeInput == 0 shouldDeleteAcceptCandidateInput:previouslyProcessedDeleteInput == 0];

    composingInput3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [composingInput3 composeNew:markedText];

    [(TIKeyboardInputManagerMecabra *)self processDeleteInputs];
    [(TIKeyboardInputManagerMecabra *)self setPreviouslyProcessedDeleteInput:markedText];
    TIInputManager::delete_from_input(*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF30]));
    composingInput4 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v19ComposingInput = [composingInput4 composingInput];

    if (!v19ComposingInput)
    {
      [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
    }

    goto LABEL_71;
  }

LABEL_10:
  [(TIKeyboardInputManagerChinesePhonetic *)self clearInput];
LABEL_72:
  v21 = 0;
LABEL_73:

  return v21;
}

void *__57__TIKeyboardInputManagerChinesePhonetic_deleteFromInput___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = [*(a1 + 32) addObject:{a2, a4, a5, a6}];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 24) + 1;
  *(v10 + 24) = v11;
  if (v11 == 2)
  {
    *a7 = 1;
  }

  return result;
}

- (id)convertInputsToSyntheticInputUptoCount:(int)count
{
  v3 = *&count;
  if (-[TIKeyboardInputManagerMecabra usesComposingInput](self, "usesComposingInput") && (-[TIKeyboardInputManagerMecabra composingInput](self, "composingInput"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 hasKindOf:objc_opt_class()], v5, v6))
  {
    internalInputIndex = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputIndex];
  }

  else
  {
    internalInputIndex = -1;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:internalInputIndex];
  v9 = [(TIKeyboardInputManagerMecabra *)self _convertInputsToSyntheticInputUptoCount:v3 cursorIndex:v8];

  return v9;
}

- (id)uncommittedText
{
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  candidates = [wordSearchCandidateResultSet candidates];
  firstObject = [candidates firstObject];

  input = [firstObject input];
  v7 = input;
  v8 = &stru_287EBF4E8;
  if (input)
  {
    v8 = input;
  }

  v9 = v8;

  v10 = [(TIKeyboardInputManagerChinesePhonetic *)self composedTextForSelectedCandidate:firstObject remainingInput:v9];
  if ([v10 length])
  {
    v11 = v10;

    v9 = v11;
  }

  return v9;
}

- (unint64_t)internalInputIndex
{
  if (-[TIKeyboardInputManagerMecabra usesComposingInput](self, "usesComposingInput") && (-[TIKeyboardInputManagerMecabra composingInput](self, "composingInput"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 hasKindOf:objc_opt_class()], v3, v4))
  {

    return [(TIKeyboardInputManagerMecabra *)self inputIndexWithDrawInput];
  }

  else
  {
    v6 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF30]);
    if (!v6)
    {
      return 0;
    }

    v7 = *(v6 + 96);
    if (!v7)
    {
      return 0;
    }

    internalInputString = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v12[3] = 0;
    v9 = [internalInputString length];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__TIKeyboardInputManagerChinesePhonetic_internalInputIndex__block_invoke;
    v11[3] = &unk_279D9D548;
    v11[4] = &v13;
    v11[5] = v12;
    v11[6] = v7;
    [internalInputString enumerateSubstringsInRange:0 options:v9 usingBlock:{514, v11}];
    v10 = v14[3];
    _Block_object_dispose(v12, 8);
    _Block_object_dispose(&v13, 8);

    return v10;
  }
}

void *__59__TIKeyboardInputManagerChinesePhonetic_internalInputIndex__block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  *(*(result[4] + 8) + 24) += a4;
  v7 = *(result[5] + 8);
  v8 = *(v7 + 24) + 1;
  *(v7 + 24) = v8;
  if (v8 >= result[6])
  {
    *a7 = 1;
  }

  return result;
}

- (unint64_t)internalInputCount
{
  internalInputString = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
  v3 = [internalInputString length];

  return v3;
}

- (id)inputString
{
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerChinesePhonetic;
  inputString = [(TIKeyboardInputManagerChinesePhonetic *)&v7 inputString];
  if ([inputString length])
  {
    candidateForInlineTextSegmentation = [(TIKeyboardInputManagerChinesePhonetic *)self candidateForInlineTextSegmentation];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      candidate = [candidateForInlineTextSegmentation candidate];

      inputString = candidate;
    }
  }

  return inputString;
}

- (unsigned)inputIndex
{
  inputString = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
  v4 = [inputString length];

  if (v4)
  {
    candidateForInlineTextSegmentation = [(TIKeyboardInputManagerChinesePhonetic *)self candidateForInlineTextSegmentation];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      candidate = [candidateForInlineTextSegmentation candidate];
      v7 = [candidate length];

      if (v7)
      {
        candidate2 = [candidateForInlineTextSegmentation candidate];
        v9 = [candidate2 length];

        return v9;
      }
    }
  }

  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v11 = [composingInput hasKindOf:objc_opt_class()];

    if (v11)
    {
      internalInputIndex = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputIndex];
    }

    else
    {
      composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      internalInputIndex = [composingInput2 asInlineTextCursorIndex];
    }

    inputIndex = [(TIKeyboardInputManagerChinesePhonetic *)self internalIndexToExternal:internalInputIndex];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = TIKeyboardInputManagerChinesePhonetic;
    inputIndex = [(TIKeyboardInputManagerChinesePhonetic *)&v16 inputIndex];
  }

  v9 = inputIndex;
  if (([(TIKeyboardInputManagerChinesePhonetic *)self shouldSkipCandidateSelection]& 1) == 0 && v9 >= [(TIKeyboardInputManagerChinesePhonetic *)self inputCount])
  {
    return [(TIKeyboardInputManagerChinesePhonetic *)self inputCount];
  }

  return v9;
}

- (unsigned)inputCount
{
  if ([(TIKeyboardInputManagerChinesePhonetic *)self shouldSkipCandidateSelection])
  {
    v6.receiver = self;
    v6.super_class = TIKeyboardInputManagerChinesePhonetic;
    return [(TIKeyboardInputManagerChinesePhonetic *)&v6 inputCount];
  }

  else
  {
    inputString = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
    v3 = [inputString length];
  }

  return v3;
}

- (void)setInput:(id)input
{
  inputCopy = input;
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch cancel];

  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerChinesePhonetic;
  [(TIKeyboardInputManagerChinese *)&v8 setInput:inputCopy];

  if (self->_isInAmbiguousMode)
  {
    v6 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF28]);
    v7 = [objc_opt_class() stringFallBackForTenKeyInput:v6 range:{0, objc_msgSend(v6, "length")}];
    [v6 setString:v7];
  }

  else
  {
    [(TIKeyboardInputManagerChinesePhonetic *)self clearPinyinSyllableSelection];
  }

  [(TIKeyboardInputManagerChinesePhonetic *)self setFilterCandidatesUsingInputIndex:0];
}

- (void)addInputToInternal:(id)internal
{
  internalCopy = internal;
  v5 = internalCopy;
  if (*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF30]))
  {
    v6 = [internalCopy length];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__TIKeyboardInputManagerChinesePhonetic_addInputToInternal___block_invoke;
    v7[3] = &unk_279D9D520;
    v7[4] = self;
    v8 = v5;
    [v8 enumerateSubstringsInRange:0 options:v6 usingBlock:{514, v7}];
  }
}

void __60__TIKeyboardInputManagerChinesePhonetic_addInputToInternal___block_invoke(uint64_t a1, int a2, NSString *a3, _NSRange a4)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = *(*(a1 + 32) + *MEMORY[0x277D6FF30]);
  v8.location = v8.length;
  KB::utf8_substring(&v6, *(a1 + 40), a3, v8);
  TIInputManager::add_input(v5, &v6);
  KB::String::~String(&v6);
}

- (BOOL)handleDirectlyCommitForInput:(id)input withContext:(id)context
{
  inputCopy = input;
  contextCopy = context;
  if (![inputCopy length])
  {
    goto LABEL_8;
  }

  if ([(TIKeyboardInputManagerChinesePhonetic *)self _shouldCommitInputDirectly:inputCopy])
  {
    if ([(TIKeyboardInputManagerChinesePhonetic *)self inputCount])
    {
      keyboardState = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
      keyboardType = [keyboardState keyboardType];

      if ((keyboardType & 0xFFFFFFFFFFFFFFFBLL) == 3 || [(TIKeyboardInputManagerChinesePhonetic *)self isPhraseBoundarySet])
      {
        goto LABEL_6;
      }

      firstCandidate = [(TIKeyboardInputManagerChinese *)self firstCandidate];
      if (firstCandidate)
      {
        conversionHistory = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
        convertedLength = [conversionHistory convertedLength];
        input = [firstCandidate input];
        v16 = [input length] + convertedLength;
        if (v16 >= [(TIKeyboardInputManagerChinesePhonetic *)self internalInputCount])
        {
          v17 = [inputCopy isEqualToString:@"'"];

          if ((v17 & 1) == 0)
          {
            [(TIKeyboardInputManagerChinese *)self acceptFirstCandidateWithContext:contextCopy];
            v10 = 1;
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v10 = 0;
LABEL_15:

      goto LABEL_9;
    }

    [(TIKeyboardInputManagerChinesePhonetic *)self acceptCurrentCandidateWithContext:contextCopy];
LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

LABEL_6:
  v10 = 0;
LABEL_9:

  return v10;
}

- (id)remapInput:(id)input isFacemarkInput:(BOOL *)facemarkInput
{
  inputCopy = input;
  *facemarkInput = 0;
  if ([inputCopy isEqualToString:@"☻"])
  {
    v7 = *MEMORY[0x277D6FF50];

    *facemarkInput = 1;
    inputCopy = v7;
  }

  else if ([(TIKeyboardInputManagerChinese *)self isFacemarkInput:inputCopy])
  {
    *facemarkInput = 1;
  }

  else
  {
    v8 = [(TIKeyboardInputManagerChinese *)self outputByConvertingDecimalPointForInput:inputCopy];

    inputCopy = v8;
  }

  return inputCopy;
}

- (int64_t)addTouch:(id)touch shouldHitTest:(BOOL)test
{
  testCopy = test;
  touchCopy = touch;
  if ([(TIKeyboardInputManagerMecabra *)self shouldClearBeforeContinuousPath])
  {
    [(TIKeyboardInputManagerMecabra *)self setShouldClearBeforeContinuousPath:0];
    [(TIKeyboardInputManagerChinesePhonetic *)self clearInput];
  }

  v9.receiver = self;
  v9.super_class = TIKeyboardInputManagerChinesePhonetic;
  v7 = [(TIKeyboardInputManagerMecabra *)&v9 addTouch:touchCopy shouldHitTest:testCopy];

  return v7;
}

- (void)addInput:(id)input withContext:(id)context
{
  inputCopy = input;
  contextCopy = context;
  [(TIKeyboardInputManagerChinese *)self setCurrentKeyHint:0];
  if (![(TIKeyboardInputManagerChinese *)self handlePairedPunctuationInput:inputCopy context:contextCopy])
  {
    string = [inputCopy string];
    [(TIKeyboardInputManagerChinesePhonetic *)self setFilterCandidatesUsingInputIndex:0];
    keyboardState = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
    shouldSkipCandidateSelection = [keyboardState shouldSkipCandidateSelection];

    if (shouldSkipCandidateSelection)
    {
      string2 = [inputCopy string];
      v12 = [string2 length];

      if (v12)
      {
        v78.receiver = self;
        v78.super_class = TIKeyboardInputManagerChinesePhonetic;
        [(TIKeyboardInputManagerChinesePhonetic *)&v78 addInput:inputCopy withContext:contextCopy];
        v13 = 0;
      }

      else
      {
        v13 = 1;
      }

      v14 = string;
    }

    else
    {
      v87[0] = 0;
      v14 = [(TIKeyboardInputManagerChinesePhonetic *)self remapInput:string isFacemarkInput:v87];

      if ([inputCopy isMultitap])
      {
        v84 = 1;
        v15 = [(TIKeyboardInputManagerChinesePhonetic *)self deleteFromInput:&v84];
        [contextCopy deleteBackward:v84];
      }

      v13 = [(TIKeyboardInputManagerChinesePhonetic *)self handleDirectlyCommitForInput:v14 withContext:contextCopy];
      if (!v13)
      {
        if ((v87[0] & 1) != 0 || [(TIKeyboardInputManagerChinese *)self showingFacemarkCandidates]|| ([(TIKeyboardInputManagerChinesePhonetic *)self internalInputString], v16 = objc_claimAutoreleasedReturnValue(), v17 = [(TIKeyboardInputManagerChinese *)self isFacemarkInput:v16], v16, v17))
        {
          if (self->_isCandidateSelected)
          {
            [(TIKeyboardInputManagerChinesePhonetic *)self acceptCurrentCandidateWithContext:contextCopy];
          }

          else if ([(TIKeyboardInputManagerChinesePhonetic *)self inputCount])
          {
            [(TIKeyboardInputManagerChinese *)self acceptFirstCandidateWithContext:contextCopy];
          }
        }

        wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
        [wordSearch cancel];

        if ([(TIKeyboardInputManagerChinesePhonetic *)self shouldReplaceCharacterOfInputStringBeforeCursorForInput:v14])
        {
          v84 = 1;
          v19 = [(TIKeyboardInputManagerChinesePhonetic *)self deleteFromInput:&v84];
        }

        if ([v14 length] == 1 && (objc_msgSend(v14, "isEqualToString:", @"'") & 1) == 0)
        {
          replacementUnambiguousPinyinSyllables = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
          v21 = [replacementUnambiguousPinyinSyllables count];

          if (v21)
          {
            replacementUnambiguousPinyinSyllables2 = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
            v23 = [replacementUnambiguousPinyinSyllables2 componentsJoinedByString:&stru_287EBF4E8];
            v24 = [v23 length];

            internalInputString = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
            v26 = [internalInputString length];

            if (v24 == v26)
            {
              replacementUnambiguousPinyinSyllables3 = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
              lastObject = [replacementUnambiguousPinyinSyllables3 lastObject];
              [lastObject stringByAppendingString:@"'"];
              v30 = v29 = v13;

              replacementUnambiguousPinyinSyllables4 = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
              [replacementUnambiguousPinyinSyllables4 removeLastObject];

              replacementUnambiguousPinyinSyllables5 = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
              [replacementUnambiguousPinyinSyllables5 addObject:v30];

              [(TIKeyboardInputManagerChinesePhonetic *)self addInputToInternal:@"'"];
              v13 = v29;
            }
          }
        }

        [(TIKeyboardInputManagerChinesePhonetic *)self addInputToInternal:v14];
        if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
        {
          v33 = TIInputManager::keys_for_input(*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF30]));
          if (v33)
          {
            v34 = v33;
            v35 = *v33;
            v36 = v33[2];
            v85 = 0;
            v86 = 0;
            v84 = v35;
            if (v36)
            {
              v37 = malloc_type_malloc(8 * v36, 0x2004093837F09uLL);
              v85 = v37;
              v86 = v36;
              if (v37)
              {
                if (*v34)
                {
                  v38 = v34[1];
                  v39 = 8 * *v34;
                  do
                  {
                    v40 = *v38;
                    *v37 = *v38;
                    if (v40)
                    {
                      atomic_fetch_add(v40, 1u);
                    }

                    ++v37;
                    ++v38;
                    v39 -= 8;
                  }

                  while (v39);
                }
              }
            }
          }

          else
          {
            v84 = 0;
            v85 = 0;
            v86 = 0;
          }

          v76 = v13;
          v77 = v14;
          v75 = asMCNearbyKeys();
          if (v84)
          {
            v41 = v85;
            v42 = 8 * v84;
            do
            {
              v43 = *v41;
              if (*v41)
              {
                v44 = atomic_load(v43);
                if (v44 == 1)
                {
                  v45 = *(v43 + 8);
                  if (v45)
                  {
                    WTF::RefCounted<TI::Favonius::Key>::deref(v45);
                  }

                  MEMORY[0x26D6BFC20](v43, 0x1020C40DF844C36);
                }

                else
                {
                  atomic_fetch_add(v43, 0xFFFFFFFF);
                }
              }

              ++v41;
              v42 -= 8;
            }

            while (v42);
            v84 = 0;
          }

          v46 = v85;
          v85 = 0;
          v86 = 0;
          free(v46);
          v73 = objc_alloc(MEMORY[0x277D6FE18]);
          keyboardState2 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
          layoutState = [keyboardState2 layoutState];
          userInterfaceIdiom = [layoutState userInterfaceIdiom];
          keyboardState3 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
          splitKeyboardMode = [keyboardState3 splitKeyboardMode];
          keyboardState4 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
          floatingKeyboardMode = [keyboardState4 floatingKeyboardMode];
          keyboardState5 = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
          v54 = [v73 initWithUserInterfaceIdiom:userInterfaceIdiom isSplitKeyboard:splitKeyboardMode isFloatingKeyboard:floatingKeyboardMode isHardwareKeyboard:{objc_msgSend(keyboardState5, "hardwareKeyboardMode")}];

          v14 = v77;
          v55 = [v77 length];
          v79[0] = MEMORY[0x277D85DD0];
          v79[1] = 3221225472;
          v79[2] = __62__TIKeyboardInputManagerChinesePhonetic_addInput_withContext___block_invoke;
          v79[3] = &unk_279D9D4F8;
          v80 = inputCopy;
          selfCopy = self;
          v82 = v75;
          v83 = v54;
          v56 = v54;
          v57 = v75;
          [v77 enumerateSubstringsInRange:0 options:v55 usingBlock:{2, v79}];
          [(TIKeyboardInputManagerMecabra *)self setPreviouslyDeletedTypeInput:0];
          [(TIKeyboardInputManagerMecabra *)self setPreviouslyProcessedDeleteInput:0];

          v13 = v76;
        }

        if (*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF28]))
        {
          if (_os_feature_enabled_impl())
          {
            segments = [(TIKeyboardInputManagerChinesePhonetic *)self segments];
            v59 = [segments count];
            maxNumberOfUncommittedSegments = [objc_opt_class() maxNumberOfUncommittedSegments];

            if (v59 > maxNumberOfUncommittedSegments)
            {
              [(TIKeyboardInputManagerChinesePhonetic *)self autocommitHeadSegmentWithContext:contextCopy];
            }
          }

          internalInputIndex = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputIndex];
          conversionHistory = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
          convertedLength = [conversionHistory convertedLength];

          if (internalInputIndex <= convertedLength)
          {
            conversionHistory2 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
            [conversionHistory2 invalidate];
          }

          [(TIKeyboardInputManagerChinesePhonetic *)self updateComposedText];
        }
      }

      if (![(TIKeyboardInputManagerChinesePhonetic *)self skipSetMarkedTextDuringInput])
      {
        if ([(TIKeyboardInputManagerChinesePhonetic *)self inputCount])
        {
          [(TIKeyboardInputManagerChinesePhonetic *)self setMarkedText];
        }

        else if ([v14 length])
        {
          [contextCopy insertText:v14];
        }
      }
    }

    if (!self->_acceptingCandidate && !self->_lockingPinyinSyllableSelection)
    {
      conversionHistory3 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
      [conversionHistory3 setInputChangedSinceLastConversion:1];
    }

    if ([(TIKeyboardInputManagerChinesePhonetic *)self usesGeometryModelData])
    {
      pinyinSyllableCandidates = [(TIKeyboardInputManagerChinesePhonetic *)self pinyinSyllableCandidates];
      if ([pinyinSyllableCandidates count])
      {
        selectedPinyinSyllableCandidateIndex = [(TIKeyboardInputManagerChinesePhonetic *)self selectedPinyinSyllableCandidateIndex];
      }

      else
      {
        selectedPinyinSyllableCandidateIndex = 0x7FFFFFFFFFFFFFFFLL;
      }

      wordSearch2 = [(TIKeyboardInputManagerChinese *)self wordSearch];
      inputStringForSearch = [(TIKeyboardInputManagerChinesePhonetic *)self inputStringForSearch];
      composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
      replacedAmbiguousPinyinSyllables = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
      [wordSearch2 clearCacheForInputString:inputStringForSearch keyboardInput:composingInput unambiguousSyllableCount:objc_msgSend(replacedAmbiguousPinyinSyllables selectedDisambiguationCandidateIndex:{"count"), selectedPinyinSyllableCandidateIndex}];
    }

    if (([inputCopy isFlick] & 1) == 0 && (objc_msgSend(inputCopy, "isMultitap") & 1) == 0)
    {
      inputManagerHint = [inputCopy inputManagerHint];
      [(TIKeyboardInputManagerChinese *)self setCurrentKeyHint:inputManagerHint];
    }

    if (((v13 | [(TIKeyboardInputManagerMecabra *)self usesComposingInput]) & 1) == 0)
    {
      [(TIKeyboardInputManagerMecabra *)self saveGeometryForInput:inputCopy atIndex:[(TIKeyboardInputManagerChinesePhonetic *)self internalInputIndex]];
    }
  }
}

void __62__TIKeyboardInputManagerChinesePhonetic_addInput_withContext___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 touchEvent];
    [v5 location];
    v7 = v6;
    v9 = v8;

    if ([*(a1 + 40) shouldRescaleTouchPoints])
    {
      v11 = *MEMORY[0x277CBF348];
      v10 = *(MEMORY[0x277CBF348] + 8);
      if (v7 != *MEMORY[0x277CBF348] || v9 != v10)
      {
        [*(a1 + 40) currentCharacterKeysLayoutFrame];
        [*(a1 + 40) baseCharacterKeysLayoutFrame];
        TI_GET_SCALED_POINT();
        v11 = v13;
        v10 = v14;
      }
    }

    else
    {
      v10 = v9;
      v11 = v7;
    }

    v16 = [objc_alloc(MEMORY[0x277D6FE28]) initWithCharacters:v4 point:*(a1 + 48) nearbyKeys:*(a1 + 56) sourceKeyboardState:{v11, v10}];

    v15 = [*(a1 + 40) composingInput];
    [v15 composeNew:v16];
  }
}

- (id)addInput:(id)input flags:(unsigned int)flags point:(CGPoint)point firstDelete:(unint64_t *)delete
{
  y = point.y;
  x = point.x;
  v9 = *&flags;
  inputCopy = input;
  *delete = 0;
  if ((v9 & 8) != 0)
  {
    v12 = [(TIKeyboardInputManagerChinesePhonetic *)self deleteFromInput:delete];
  }

  v17 = 0;
  if ([(TIKeyboardInputManagerChinesePhonetic *)self shouldSkipCandidateSelection])
  {
    deleteCopy = &v17;
  }

  else
  {
    deleteCopy = delete;
  }

  v16.receiver = self;
  v16.super_class = TIKeyboardInputManagerChinesePhonetic;
  v14 = [(TIKeyboardInputManagerMecabra *)&v16 addInput:inputCopy flags:v9 point:deleteCopy firstDelete:x, y];

  return v14;
}

- (BOOL)_shouldCommitInputDirectly:(id)directly
{
  directlyCopy = directly;
  if ([(TIKeyboardInputManagerChinesePhonetic *)self isSpecialInput:directlyCopy]|| [(TIKeyboardInputManagerMecabra *)self stringContainsActiveSupplementalLexiconSearchPrefix:directlyCopy])
  {
    goto LABEL_3;
  }

  inputCount = [(TIKeyboardInputManagerChinesePhonetic *)self inputCount];
  if (!inputCount)
  {
    conversionHistory = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
    if ([conversionHistory convertedLength])
    {
      v12 = [directlyCopy length];

      if (v12 > 1)
      {
LABEL_3:
        v5 = 0;
        goto LABEL_4;
      }
    }

    else
    {
    }
  }

  if (self->_isInAmbiguousMode && [(TIKeyboardInputManagerChinese *)self isAlphabeticPlane])
  {
    v5 = 1;
  }

  else
  {
    if (GetDirectlyCommittedNumbersAndPunctuationSet(void)::__onceToken != -1)
    {
      dispatch_once(&GetDirectlyCommittedNumbersAndPunctuationSet(void)::__onceToken, &__block_literal_global_447);
    }

    v8 = [directlyCopy rangeOfCharacterFromSet:GetDirectlyCommittedNumbersAndPunctuationSet(void)::__directNumbersAndPunctuationSet];
    if (inputCount)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    v5 = v9;
    if (!inputCount && v8)
    {
      directlyCommittedCharacterSetForEmptyInline = [objc_opt_class() directlyCommittedCharacterSetForEmptyInline];
      v5 = [directlyCopy rangeOfCharacterFromSet:directlyCommittedCharacterSetForEmptyInline] == 0;
    }
  }

LABEL_4:

  return v5;
}

- (BOOL)isSpecialInput:(id)input
{
  inputCopy = input;
  v5 = ![inputCopy length] || objc_msgSend(inputCopy, "length") > 2 || -[TIKeyboardInputManagerChinese isFacemarkInput:](self, "isFacemarkInput:", inputCopy) || -[TIKeyboardInputManagerChinesePhonetic inputContinuesGB18030OrUnicodeLookupKey:](self, "inputContinuesGB18030OrUnicodeLookupKey:", inputCopy);

  return v5;
}

- (BOOL)inputContinuesGB18030OrUnicodeLookupKey:(id)key
{
  v23 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (self->_isInAmbiguousMode)
  {
    v5 = 0;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v21[0] = @"|g|";
    v21[1] = @"|u|";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:{2, 0}];
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [v11 rangeOfString:keyCopy];
          if (v12 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = [v11 substringToIndex:v12];
            if (![v13 length])
            {

LABEL_15:
              v5 = 1;
              goto LABEL_16;
            }

            inputString = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
            v15 = [v13 isEqualToString:inputString];

            if (v15)
            {
              goto LABEL_15;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_16:
  }

  return v5;
}

- (id)handleKeyboardInput:(id)input
{
  inputCopy = input;
  logger = [(TIKeyboardInputManagerChinesePhonetic *)self logger];
  [logger beginLogging];

  v9.receiver = self;
  v9.super_class = TIKeyboardInputManagerChinesePhonetic;
  v6 = [(TIKeyboardInputManagerMecabra *)&v9 handleKeyboardInput:inputCopy];

  logger2 = [(TIKeyboardInputManagerChinesePhonetic *)self logger];
  [logger2 markTime:1];

  return v6;
}

- (void)setInHardwareKeyboardMode:(BOOL)mode
{
  modeCopy = mode;
  isInAmbiguousMode = self->_isInAmbiguousMode;
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch setTenKeyPinyinEnabled:isInAmbiguousMode];

  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerChinesePhonetic;
  [(TIKeyboardInputManagerChinesePhonetic *)&v7 setInHardwareKeyboardMode:modeCopy];
}

- (id)keyboardConfigurationLayoutTag
{
  if (self->_isInAmbiguousMode && [(TIKeyboardInputManagerChinesePhonetic *)self inputCount])
  {
    internalInputString = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
    v4 = [(TIKeyboardInputManagerChinese *)self isFacemarkInput:internalInputString];

    if (v4)
    {
      shouldEnableHalfWidthPunctuationForCurrentInputContext = [(TIKeyboardInputManagerChinese *)self shouldEnableHalfWidthPunctuationForCurrentInputContext];
      v6 = kDisambiguationLayoutTag;
      if (shouldEnableHalfWidthPunctuationForCurrentInputContext)
      {
        v6 = kHalfWidthPunctuationLayoutTag;
      }
    }

    else
    {
      v6 = kSeparatorLayoutTag;
    }
  }

  else if ([(TIKeyboardInputManagerChinese *)self shouldEnableHalfWidthPunctuationForCurrentInputContext])
  {
    v6 = kHalfWidthPunctuationLayoutTag;
  }

  else
  {
    v6 = &kDefaultLayoutTag;
  }

  v7 = *v6;

  return v7;
}

- (void)syncToLayoutState:(id)state
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerChinesePhonetic;
  stateCopy = state;
  [(TIKeyboardInputManagerChinese *)&v8 syncToLayoutState:stateCopy];
  softwareLayout = [stateCopy softwareLayout];

  self->_isInAmbiguousMode = [softwareLayout hasPrefix:@"Pinyin10"];
  isInAmbiguousMode = self->_isInAmbiguousMode;
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch setTenKeyPinyinEnabled:isInAmbiguousMode];
}

- (unsigned)externalIndexToInternal:(unsigned int)internal shouldBoundToInputCount:(BOOL)count
{
  countCopy = count;
  internalCopy = internal;
  v7 = *MEMORY[0x277D6FF28];
  v8 = *(&self->super.super.super.super.super.super.isa + v7);
  if (v8)
  {
    if ([v8 length] >= internal)
    {
      v9 = internalCopy;
    }

    else
    {
      v9 = [*(&self->super.super.super.super.super.super.isa + v7) length];
    }

    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v10 = *(&self->super.super.super.super.super.super.isa + v7);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __89__TIKeyboardInputManagerChinesePhonetic_externalIndexToInternal_shouldBoundToInputCount___block_invoke;
    v14[3] = &unk_279D9D490;
    v14[4] = self;
    v14[5] = &v15;
    [v10 enumerateSubstringsInRange:0 options:v9 usingBlock:{514, v14}];
    internalCopy = *(v16 + 6);
    _Block_object_dispose(&v15, 8);
  }

  v11 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF30]);
  if (v11)
  {
    v12 = -858993459 * ((*(v11 + 16) - *(v11 + 8)) >> 3);
    if (internalCopy < v12)
    {
      v12 = internalCopy;
    }

    if (countCopy)
    {
      return v12;
    }
  }

  return internalCopy;
}

void __89__TIKeyboardInputManagerChinesePhonetic_externalIndexToInternal_shouldBoundToInputCount___block_invoke(uint64_t a1, int a2, NSString *a3, _NSRange a4)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v11.location = v11.length;
  KB::utf8_substring(v10, *(*(a1 + 32) + *MEMORY[0x277D6FF28]), a3, v11);
  v6 = [*(a1 + 32) syllableSeparator];
  KB::utf8_string(v9, v6, v7);
  v8 = KB::String::equal(v10, v9);
  KB::String::~String(v9);

  KB::String::~String(v10);
  if ((v8 & 1) == 0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

- (unsigned)internalIndexToExternal:(unsigned int)external
{
  v5 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF28]);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    internalInputString = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
    v6 = [(TIKeyboardInputManagerChinesePhonetic *)self internalStringToExternal:internalInputString];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  externalCopy = external;
  v8 = [v6 length];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__TIKeyboardInputManagerChinesePhonetic_internalIndexToExternal___block_invoke;
  v12[3] = &unk_279D9D468;
  selfCopy = self;
  v15 = &v16;
  v13 = v6;
  v9 = v6;
  [v9 enumerateSubstringsInRange:0 options:v8 usingBlock:{514, v12}];
  v10 = *(v17 + 6);

  _Block_object_dispose(&v16, 8);
  return v10;
}

void __65__TIKeyboardInputManagerChinesePhonetic_internalIndexToExternal___block_invoke(uint64_t a1, int a2, NSString *a3, _NSRange a4, uint64_t a5, _BYTE *a6)
{
  v14[4] = *MEMORY[0x277D85DE8];
  if (a3 >= *(*(*(a1 + 48) + 8) + 24))
  {
    *a6 = 1;
  }

  else
  {
    length = v15.length;
    v15.location = v15.length;
    KB::utf8_substring(v14, *(a1 + 32), a3, v15);
    v9 = [*(a1 + 40) syllableSeparator];
    KB::utf8_string(v13, v9, v10);
    v11 = KB::String::equal(v14, v13);
    KB::String::~String(v13);

    KB::String::~String(v14);
    if (v11)
    {
      v12 = [*(a1 + 40) syllableSeparator];
      *(*(*(a1 + 48) + 8) + 24) += [v12 length];
    }

    else if (length >= 2)
    {
      *(*(*(a1 + 48) + 8) + 24) = length + *(*(*(a1 + 48) + 8) + 24) - 1;
    }
  }
}

- (id)internalStringToExternal:(id)external
{
  externalCopy = external;
  if ([(TIKeyboardInputManagerChinesePhonetic *)self shouldSkipCandidateSelection])
  {
    v16.receiver = self;
    v16.super_class = TIKeyboardInputManagerChinesePhonetic;
    v5 = [(TIKeyboardInputManager_mul *)&v16 internalStringToExternal:externalCopy];
LABEL_5:
    v9 = v5;

    goto LABEL_15;
  }

  v6 = *MEMORY[0x277D6FF28];
  v7 = [(TIKeyboardInputManagerChinesePhonetic *)self externalStringToInternal:*(&self->super.super.super.super.super.super.isa + v6)];
  v8 = [v7 isEqualToString:externalCopy];

  if (v8)
  {
    v5 = *(&self->super.super.super.super.super.super.isa + v6);
    goto LABEL_5;
  }

  internalInputString = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
  v9 = externalCopy;
  if ([(__CFString *)externalCopy isEqualToString:internalInputString])
  {
    v9 = externalCopy;
    if ([(__CFString *)externalCopy length])
    {
      candidateForInlineTextSegmentation = [(TIKeyboardInputManagerChinesePhonetic *)self candidateForInlineTextSegmentation];
      if (candidateForInlineTextSegmentation)
      {
        internalInputString2 = [(TIKeyboardInputManagerChinesePhonetic *)self internalInputString];
        v9 = [(TIKeyboardInputManagerChinesePhonetic *)self composedTextForSelectedCandidate:candidateForInlineTextSegmentation remainingInput:internalInputString2];
      }

      else
      {
        v9 = externalCopy;
        if (!self->_isInAmbiguousMode)
        {
LABEL_13:

          goto LABEL_14;
        }

        v9 = [objc_opt_class() stringFallBackForTenKeyInput:internalInputString range:{0, objc_msgSend(internalInputString, "length")}];
        internalInputString2 = externalCopy;
      }

      goto LABEL_13;
    }
  }

LABEL_14:

LABEL_15:
  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = &stru_287EBF4E8;
  }

  v14 = v13;

  return v13;
}

- (id)externalStringToInternal:(id)internal
{
  internalCopy = internal;
  if ([(TIKeyboardInputManagerChinesePhonetic *)self shouldSkipCandidateSelection])
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManagerChinesePhonetic;
    v5 = [(TIKeyboardInputManager_mul *)&v8 externalStringToInternal:internalCopy];
  }

  else
  {
    v5 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByRemovingSyllableSeparatorsFromString:internalCopy];
  }

  v6 = v5;

  return v6;
}

- (id)stringByRemovingSyllableSeparatorsFromString:(id)string
{
  stringCopy = string;
  syllableSeparator = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
  v6 = [stringCopy stringByReplacingOccurrencesOfString:syllableSeparator withString:&stru_287EBF4E8];

  return v6;
}

- (id)searchStringForMarkedText
{
  if (self->_isInAmbiguousMode)
  {
    inputString = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
    searchStringForMarkedText = [(TIKeyboardInputManagerChinesePhonetic *)self stringByRemovingSyllableSeparatorsFromString:inputString];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TIKeyboardInputManagerChinesePhonetic;
    searchStringForMarkedText = [(TIKeyboardInputManagerChinese *)&v6 searchStringForMarkedText];
  }

  return searchStringForMarkedText;
}

- (NSString)internalInputString
{
  v13[4] = *MEMORY[0x277D85DE8];
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v4 = [composingInput hasKindOf:objc_opt_class()];

    if (v4)
    {
      candidateForInlineTextSegmentation = [(TIKeyboardInputManagerChinesePhonetic *)self candidateForInlineTextSegmentation];
      composingInput3 = candidateForInlineTextSegmentation;
      if (!candidateForInlineTextSegmentation)
      {
        composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        asInlineText = [composingInput2 asInlineText];

        goto LABEL_9;
      }

      input = [candidateForInlineTextSegmentation input];
    }

    else
    {
      composingInput3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      input = [composingInput3 asInlineText];
    }

    asInlineText = input;
LABEL_9:

    goto LABEL_11;
  }

  v8 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF30]);
  if (v8)
  {
    TIInputManager::input_string(v13, v8);
    asInlineText = KB::ns_string(v13, v9);
    KB::String::~String(v13);
  }

  else
  {
    asInlineText = 0;
  }

LABEL_11:

  return asInlineText;
}

- (void)revertLastDisambiguation
{
  if ([(TIKeyboardInputManagerChinesePhonetic *)self hasLockedSyllable])
  {
    if ([(TIKeyboardInputManagerChinesePhonetic *)self isPhraseBoundarySet])
    {
      v3 = [(TIKeyboardInputManagerChinesePhonetic *)self externalIndexToInternal:[(TIKeyboardInputManagerChinesePhonetic *)self inputIndex]];
    }

    else
    {
      v3 = 0x7FFFFFFFFFFFFFFFLL;
    }

    unconvertedInput = [(TIKeyboardInputManagerChinesePhonetic *)self unconvertedInput];
    replacedAmbiguousPinyinSyllables = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
    lastObject = [replacedAmbiguousPinyinSyllables lastObject];

    v6 = [lastObject length];
    replacedAmbiguousPinyinSyllables2 = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
    [replacedAmbiguousPinyinSyllables2 removeLastObject];

    replacementUnambiguousPinyinSyllables = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
    lastObject2 = [replacementUnambiguousPinyinSyllables lastObject];

    replacementUnambiguousPinyinSyllables2 = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
    [replacementUnambiguousPinyinSyllables2 removeLastObject];

    [(TIKeyboardInputManagerChinesePhonetic *)self setSelectedPinyinSyllableCandidateIndex:0x7FFFFFFFFFFFFFFFLL];
    replacementUnambiguousPinyinSyllables3 = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
    v12 = [replacementUnambiguousPinyinSyllables3 componentsJoinedByString:&stru_287EBF4E8];
    v13 = [v12 length];
    v14 = [lastObject2 length];

    v15 = unconvertedInput;
    if (v14 + v13 <= [unconvertedInput length])
    {
      v15 = [unconvertedInput stringByReplacingCharactersInRange:v13 withString:{v14, lastObject}];
    }

    v16 = [(TIKeyboardInputManagerChinesePhonetic *)self stringByPrependingConvertedCandidateTextToString:v15];
    [(TIKeyboardInputManagerChinesePhonetic *)self setInput:v16];

    if (v3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      conversionHistory = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
      v18 = v3 - [conversionHistory convertedLength];

      v19 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D6FF30]);
      if (v18 > v6)
      {
        [lastObject2 hasSuffix:@"'"];
      }

      TIInputManager::set_input_index(v19);
    }
  }
}

- (void)shiftPinyinSyllableSelection
{
  replacedAmbiguousPinyinSyllables = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
  v4 = [replacedAmbiguousPinyinSyllables count];

  if (v4)
  {
    replacedAmbiguousPinyinSyllables2 = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
    [replacedAmbiguousPinyinSyllables2 removeObjectAtIndex:0];

    replacementUnambiguousPinyinSyllables = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
    [replacementUnambiguousPinyinSyllables removeObjectAtIndex:0];

    [(TIKeyboardInputManagerChinesePhonetic *)self setPinyinSyllableCandidates:0];

    [(TIKeyboardInputManagerChinesePhonetic *)self setSelectedPinyinSyllableCandidateIndex:0x7FFFFFFFFFFFFFFFLL];
  }
}

- (void)clearPinyinSyllableSelection
{
  replacedAmbiguousPinyinSyllables = [(TIKeyboardInputManagerChinesePhonetic *)self replacedAmbiguousPinyinSyllables];
  [replacedAmbiguousPinyinSyllables removeAllObjects];

  replacementUnambiguousPinyinSyllables = [(TIKeyboardInputManagerChinesePhonetic *)self replacementUnambiguousPinyinSyllables];
  [replacementUnambiguousPinyinSyllables removeAllObjects];

  [(TIKeyboardInputManagerChinesePhonetic *)self setPinyinSyllableCandidates:0];

  [(TIKeyboardInputManagerChinesePhonetic *)self setSelectedPinyinSyllableCandidateIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (void)storeLanguageModelDynamicDataIncludingCache
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerChinesePhonetic;
  [(TIKeyboardInputManagerMecabra *)&v4 storeLanguageModelDynamicDataIncludingCache];
  if ([(TIKeyboardInputManagerChinesePhonetic *)self isTypologyEnabled])
  {
    wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [wordSearch mecabra];
    MecabraFlushDynamicData();
  }
}

- (void)syncToKeyboardState:(id)state from:(id)from afterContextChange:(BOOL)change
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerChinesePhonetic;
  [(TIKeyboardInputManagerChinese *)&v8 syncToKeyboardState:state from:from afterContextChange:change];
  keyboardState = [(TIKeyboardInputManagerChinesePhonetic *)self keyboardState];
  currentCandidate = [keyboardState currentCandidate];
  self->_isCandidateSelected = currentCandidate != 0;

  if (self->_isCandidateSelected && !self->_isInAmbiguousMode)
  {
    [(TIKeyboardInputManagerChinesePhonetic *)self updateComposedText];
    [(TIKeyboardInputManagerChinesePhonetic *)self setMarkedText];
  }
}

- (id)newInputManagerState
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerChinesePhonetic;
  newInputManagerState = [(TIKeyboardInputManagerChinesePhonetic *)&v4 newInputManagerState];
  if (GetInputsPreventingAcceptCurrentCandidateIfSelectedSet(void)::onceToken != -1)
  {
    dispatch_once(&GetInputsPreventingAcceptCurrentCandidateIfSelectedSet(void)::onceToken, &__block_literal_global_444);
  }

  [newInputManagerState setInputsPreventingAcceptSelectedCandidate:GetInputsPreventingAcceptCurrentCandidateIfSelectedSet(void)::__inputsPreventingAcceptCurrentCandidateIfSelectedSet];
  return newInputManagerState;
}

- (void)didDeleteCandidates:(id)candidates
{
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch clearCache];

  conversionHistory = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
  [conversionHistory clear];
}

- (void)suspend
{
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch clearCache];

  [(TIMecabraIMLogger *)self->_logger writeLogToFile];
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerChinesePhonetic;
  [(TIKeyboardInputManagerMecabra *)&v4 suspend];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerChinesePhonetic;
  [(TIKeyboardInputManagerMecabra *)&v4 dealloc];
}

- (BOOL)supportsNumberKeySelection
{
  inputString = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
  v3 = [inputString length] != 0;

  return v3;
}

- (TIKeyboardInputManagerChinesePhonetic)initWithConfig:(id)config keyboardState:(id)state
{
  v17.receiver = self;
  v17.super_class = TIKeyboardInputManagerChinesePhonetic;
  v4 = [(TIKeyboardInputManagerChinese *)&v17 initWithConfig:config keyboardState:state];
  v5 = v4;
  if (v4)
  {
    v4->_isCandidateSelected = 0;
    array = [MEMORY[0x277CBEB18] array];
    replacedAmbiguousPinyinSyllables = v5->_replacedAmbiguousPinyinSyllables;
    v5->_replacedAmbiguousPinyinSyllables = array;

    array2 = [MEMORY[0x277CBEB18] array];
    replacementUnambiguousPinyinSyllables = v5->_replacementUnambiguousPinyinSyllables;
    v5->_replacementUnambiguousPinyinSyllables = array2;

    v5->_selectedPinyinSyllableCandidateIndex = 0x7FFFFFFFFFFFFFFFLL;
    v5->_shouldAdvanceSyllableSelection = 1;
    v10 = objc_alloc_init(TIConversionHistory);
    conversionHistory = v5->_conversionHistory;
    v5->_conversionHistory = v10;

    segments = v5->_segments;
    v5->_segments = MEMORY[0x277CBEBF8];

    if ([MEMORY[0x277D6FEB8] isLoggingEnabled])
    {
      v13 = objc_alloc_init(MEMORY[0x277D6FEB8]);
      logger = v5->_logger;
      v5->_logger = v13;

      NSLog(&cfstr_TimecabraimLog.isa);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_didDeleteCandidates_ name:@"MecabraDatabaseDeletedAllElementsNotification" object:0];
  }

  return v5;
}

+ (id)stringFallBackForTenKeyInput:(id)input range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = MEMORY[0x277CCAB68];
  inputCopy = input;
  string = [v7 string];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__TIKeyboardInputManagerChinesePhonetic_stringFallBackForTenKeyInput_range___block_invoke;
  v12[3] = &unk_279D9D5C8;
  selfCopy = self;
  v10 = string;
  v13 = v10;
  [inputCopy enumerateSubstringsInRange:location options:length usingBlock:{2, v12}];

  return v10;
}

void __76__TIKeyboardInputManagerChinesePhonetic_stringFallBackForTenKeyInput_range___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 ambiguousDefaults];
  v7 = [v5 objectForKey:v4];

  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = v4;
  }

  [*(a1 + 32) appendString:v6];
}

+ (id)directlyCommittedCharacterSetForEmptyInline
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__TIKeyboardInputManagerChinesePhonetic_directlyCommittedCharacterSetForEmptyInline__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[TIKeyboardInputManagerChinesePhonetic directlyCommittedCharacterSetForEmptyInline]::__onceToken != -1)
  {
    dispatch_once(&+[TIKeyboardInputManagerChinesePhonetic directlyCommittedCharacterSetForEmptyInline]::__onceToken, block);
  }

  v2 = +[TIKeyboardInputManagerChinesePhonetic directlyCommittedCharacterSetForEmptyInline]::__committedCharacterSetForEmptyInline;

  return v2;
}

void __84__TIKeyboardInputManagerChinesePhonetic_directlyCommittedCharacterSetForEmptyInline__block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x277CCAB50] letterCharacterSet];
  v1 = [objc_opt_class() ambiguousPinyinSet];
  [v4 formUnionWithCharacterSet:v1];

  v2 = [v4 invertedSet];
  v3 = +[TIKeyboardInputManagerChinesePhonetic directlyCommittedCharacterSetForEmptyInline]::__committedCharacterSetForEmptyInline;
  +[TIKeyboardInputManagerChinesePhonetic directlyCommittedCharacterSetForEmptyInline]::__committedCharacterSetForEmptyInline = v2;
}

+ (id)ambiguousDefaults
{
  v2 = +[TIKeyboardInputManagerChinesePhonetic ambiguousDefaults]::_ambiguousDefaults;
  if (!+[TIKeyboardInputManagerChinesePhonetic ambiguousDefaults]::_ambiguousDefaults)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"a", @"➋", @"d", @"➌", @"g", @"➍", @"j", @"➎", @"m", @"➏", @"p", @"➐", @"t", @"➑", @"w", @"➒", 0}];
    v4 = +[TIKeyboardInputManagerChinesePhonetic ambiguousDefaults]::_ambiguousDefaults;
    +[TIKeyboardInputManagerChinesePhonetic ambiguousDefaults]::_ambiguousDefaults = v3;

    v2 = +[TIKeyboardInputManagerChinesePhonetic ambiguousDefaults]::_ambiguousDefaults;
  }

  return v2;
}

+ (id)ambiguousAndPinyinCharacterSet
{
  if (+[TIKeyboardInputManagerChinesePhonetic ambiguousAndPinyinCharacterSet]::__onceToken != -1)
  {
    dispatch_once(&+[TIKeyboardInputManagerChinesePhonetic ambiguousAndPinyinCharacterSet]::__onceToken, &__block_literal_global_560);
  }

  v3 = +[TIKeyboardInputManagerChinesePhonetic ambiguousAndPinyinCharacterSet]::__ambiguousAndPinyinCharacterSet;

  return v3;
}

uint64_t __71__TIKeyboardInputManagerChinesePhonetic_ambiguousAndPinyinCharacterSet__block_invoke()
{
  +[TIKeyboardInputManagerChinesePhonetic ambiguousAndPinyinCharacterSet]::__ambiguousAndPinyinCharacterSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"➋➌➍➎➏➐➑➒abcdefghijklmnopqrstuvwxyz'"];

  return MEMORY[0x2821F96F8]();
}

+ (id)ambiguousPinyinSet
{
  v2 = +[TIKeyboardInputManagerChinesePhonetic ambiguousPinyinSet]::_ambiguousPinyinSet;
  if (!+[TIKeyboardInputManagerChinesePhonetic ambiguousPinyinSet]::_ambiguousPinyinSet)
  {
    v3 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"➋➌➍➎➏➐➑➒"];
    v4 = +[TIKeyboardInputManagerChinesePhonetic ambiguousPinyinSet]::_ambiguousPinyinSet;
    +[TIKeyboardInputManagerChinesePhonetic ambiguousPinyinSet]::_ambiguousPinyinSet = v3;

    v2 = +[TIKeyboardInputManagerChinesePhonetic ambiguousPinyinSet]::_ambiguousPinyinSet;
  }

  return v2;
}

@end