@interface TIKeyboardInputManager_zh_Toneless
- (BOOL)supportsCandidateGeneration;
- (TIKeyboardInputManager_zh_Toneless)initWithInputMode:(id)mode keyboardState:(id)state dynamic:(BOOL)dynamic;
- (id)deleteFromInput:(unint64_t *)input;
- (id)didAcceptCandidate:(id)candidate;
- (id)groupedCandidatesFromCandidates:(id)candidates usingSortingMethod:(id)method;
- (id)handleKeyboardInput:(id)input;
- (id)inputString;
- (id)keyboardConfigurationLayoutTag;
- (void)activateRetroCorrection;
- (void)clearInput;
- (void)commitComposition;
- (void)generateCandidatesWithKeyboardState:(id)state candidateRange:(_NSRange)range candidateHandler:(id)handler;
- (void)setPhraseBoundary:(unint64_t)boundary;
- (void)updateComposedText;
@end

@implementation TIKeyboardInputManager_zh_Toneless

- (TIKeyboardInputManager_zh_Toneless)initWithInputMode:(id)mode keyboardState:(id)state dynamic:(BOOL)dynamic
{
  dynamicCopy = dynamic;
  v9.receiver = self;
  v9.super_class = TIKeyboardInputManager_zh_Toneless;
  v6 = [(TIKeyboardInputManagerBase *)&v9 initWithInputMode:mode keyboardState:state];
  v7 = v6;
  if (v6)
  {
    [(TIKeyboardInputManager_zh_Toneless *)v6 setDynamic:dynamicCopy];
    [(TIKeyboardInputManager_zh_Toneless *)v7 setAssertDefaultKeyPlane:dynamicCopy];
  }

  return v7;
}

- (void)setPhraseBoundary:(unint64_t)boundary
{
  if ([(TIKeyboardInputManagerChinesePhonetic *)self inputCount]== boundary)
  {
    v6.receiver = self;
    v6.super_class = TIKeyboardInputManager_zh_Toneless;
    [(TIKeyboardInputManagerChinesePhonetic *)&v6 setPhraseBoundary:boundary];
  }

  else
  {
    [(TIKeyboardInputManager_zh_Toneless *)self activateRetroCorrection];
    composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [composingKeyboardInputManager setPhraseBoundary:boundary];
  }
}

- (void)generateCandidatesWithKeyboardState:(id)state candidateRange:(_NSRange)range candidateHandler:(id)handler
{
  length = range.length;
  location = range.location;
  handlerCopy = handler;
  stateCopy = state;
  [(TIKeyboardInputManager_zh_Toneless *)self setPhraseBoundaryIfNecessary];
  v11.receiver = self;
  v11.super_class = TIKeyboardInputManager_zh_Toneless;
  [(TIKeyboardInputManagerMecabra *)&v11 generateCandidatesWithKeyboardState:stateCopy candidateRange:location candidateHandler:length, handlerCopy];
}

- (void)commitComposition
{
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(TIKeyboardInputManager_zh_Toneless *)self clearInput];
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }

  v5.receiver = self;
  v5.super_class = TIKeyboardInputManager_zh_Toneless;
  [(TIKeyboardInputManagerMecabra *)&v5 commitComposition];
}

- (id)keyboardConfigurationLayoutTag
{
  if ([(TIKeyboardInputManager_zh_Toneless *)self dynamic])
  {
    keyboardConfigurationLayoutTag = *MEMORY[0x29EDC7198];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TIKeyboardInputManager_zh_Toneless;
    keyboardConfigurationLayoutTag = [(TIKeyboardInputManagerChinesePhonetic *)&v5 keyboardConfigurationLayoutTag];
  }

  return keyboardConfigurationLayoutTag;
}

- (BOOL)supportsCandidateGeneration
{
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v3 = composingKeyboardInputManager == 0;

  return v3;
}

- (id)handleKeyboardInput:(id)input
{
  inputCopy = input;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v6 = [composingKeyboardInputManager handleKeyboardInput:inputCopy];

  if (!v6)
  {
    v14.receiver = self;
    v14.super_class = TIKeyboardInputManager_zh_Toneless;
    v6 = [(TIKeyboardInputManagerChinesePhonetic *)&v14 handleKeyboardInput:inputCopy];
    candidateRange = [(TIKeyboardInputManager_zh_Toneless *)self candidateRange];
    v9 = v8;
    [(TIKeyboardInputManager_zh_Toneless *)self setCandidateRange:0, 1];
    v10 = [(TIKeyboardInputManagerChinesePhonetic *)self candidateResultSetByWaitingForResults:1];
    [(TIKeyboardInputManager_zh_Toneless *)self setCandidateRange:candidateRange, v9];
    inputString = [(TIKeyboardInputManager_zh_Toneless *)self inputString];
    if ([inputString _graphemeCount] <= 2)
    {
    }

    else
    {
      inlineCandidate = [(TIKeyboardInputManager_zh_Toneless *)self inlineCandidate];

      if (inlineCandidate)
      {
        [(TIKeyboardInputManager_zh_Toneless *)self activateRetroCorrection];
      }
    }
  }

  return v6;
}

- (void)updateComposedText
{
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManager_zh_Toneless;
  [(TIKeyboardInputManagerChinesePhonetic *)&v6 updateComposedText];
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  candidates = [wordSearchCandidateResultSet candidates];
  firstObject = [candidates firstObject];
  [(TIKeyboardInputManager_zh_Toneless *)self setInlineCandidate:firstObject];

  [(TIKeyboardInputManager_zh_Toneless *)self setMarkedText];
}

- (void)clearInput
{
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_zh_Toneless;
  [(TIKeyboardInputManagerChinesePhonetic *)&v3 clearInput];
  [(TIKeyboardInputManager_zh_Toneless *)self setInlineCandidate:0];
}

- (id)inputString
{
  inlineCandidate = [(TIKeyboardInputManager_zh_Toneless *)self inlineCandidate];
  candidate = [inlineCandidate candidate];
  if (candidate)
  {
    inlineCandidate2 = [(TIKeyboardInputManager_zh_Toneless *)self inlineCandidate];
    candidate2 = [inlineCandidate2 candidate];
    inputString = [(TIKeyboardInputManagerChinesePhonetic *)self stringByPrependingConvertedCandidateTextToString:candidate2];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TIKeyboardInputManager_zh_Toneless;
    inputString = [(TIKeyboardInputManagerChinesePhonetic *)&v9 inputString];
  }

  return inputString;
}

- (id)deleteFromInput:(unint64_t *)input
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManager_zh_Toneless;
  v4 = [(TIKeyboardInputManagerChinesePhonetic *)&v8 deleteFromInput:input];
  inputStringForSearch = [(TIKeyboardInputManagerChinesePhonetic *)self inputStringForSearch];
  v6 = [inputStringForSearch length];

  if (!v6)
  {
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }

  return v4;
}

- (id)groupedCandidatesFromCandidates:(id)candidates usingSortingMethod:(id)method
{
  v30 = *MEMORY[0x29EDCA608];
  methodCopy = method;
  v28.receiver = self;
  v28.super_class = TIKeyboardInputManager_zh_Toneless;
  v7 = [(TIKeyboardInputManagerChinese *)&v28 groupedCandidatesFromCandidates:candidates usingSortingMethod:methodCopy];
  inlineCandidate = [(TIKeyboardInputManager_zh_Toneless *)self inlineCandidate];
  if ([methodCopy integerValue] == 1 && inlineCandidate)
  {
    v19 = v7;
    v20 = methodCopy;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          candidates = [v13 candidates];
          v15 = MEMORY[0x29EDBA0A8];
          v22[0] = MEMORY[0x29EDCA5F8];
          v22[1] = 3221225472;
          v22[2] = __89__TIKeyboardInputManager_zh_Toneless_groupedCandidatesFromCandidates_usingSortingMethod___block_invoke;
          v22[3] = &unk_29F37D3F0;
          v23 = inlineCandidate;
          v16 = [v15 predicateWithBlock:v22];
          v17 = [candidates filteredOrderedSetUsingPredicate:v16];
          [v13 setCandidates:v17];
        }

        v10 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }

    v7 = v19;
    methodCopy = v20;
  }

  return v7;
}

- (id)didAcceptCandidate:(id)candidate
{
  candidateCopy = candidate;
  [(TIKeyboardInputManager_zh_Toneless *)self setInlineCandidate:0];
  v13.receiver = self;
  v13.super_class = TIKeyboardInputManager_zh_Toneless;
  v5 = [(TIKeyboardInputManagerChinesePhonetic *)&v13 didAcceptCandidate:candidateCopy];

  remainingInput = [(TIKeyboardInputManagerChinesePhonetic *)self remainingInput];
  v7 = [remainingInput length];

  if (v7)
  {
    if ([(TIKeyboardInputManager_zh_Toneless *)self dynamic])
    {
      wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
      candidates = [wordSearchCandidateResultSet candidates];
      -[TIKeyboardInputManager_zh_Toneless setAssertDefaultKeyPlane:](self, "setAssertDefaultKeyPlane:", [candidates count] != 0);
    }
  }

  else
  {
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }

  if (v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = &stru_2A252F9A8;
  }

  v11 = v10;

  return v10;
}

- (void)activateRetroCorrection
{
  inlineCandidate = [(TIKeyboardInputManager_zh_Toneless *)self inlineCandidate];
  v4 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:inlineCandidate];

  v9 = [MEMORY[0x29EDC70D0] dictionaryReadingFromMecabraCandidate:v4];
  v5 = [TIKeyboardInputManager_zh_RetroCorrection alloc];
  inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
  keyboardState = [(TIKeyboardInputManager_zh_Toneless *)self keyboardState];
  v8 = [(TIKeyboardInputManager_zh_RetroCorrection *)v5 initWithInputMode:inputMode keyboardState:keyboardState inputString:v9];
  [(TIKeyboardInputManagerMecabra *)self composeTextWith:v8];
}

@end