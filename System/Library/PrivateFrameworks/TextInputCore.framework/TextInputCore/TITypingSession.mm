@interface TITypingSession
- (BOOL)testForRapidDeleteContextChange:(id)change;
- (NSString)description;
- (NSUUID)sessionId;
- (TITypingSession)init;
- (TITypingSession)initWithCoder:(id)coder;
- (TITypingSession)initWithLocale:(id)locale keyboardLayout:(id)layout;
- (TIWordEntry)currentWord;
- (_NSRange)safeRangeFromRange:(_NSRange)range fromArray:(id)array;
- (double)calibratedCurrentTimestamp;
- (id)committedWordDeletionWithDocumentState:(id)state keyboardState:(id)keyboardState;
- (id)createContextChangeEventWithClass:(Class)class documentState:(id)state keyboardState:(id)keyboardState extendsPriorWord:(BOOL)word inWord:(id)inWord inWordRange:(_NSRange)range selectionLocation:(unint64_t)location;
- (id)currentInputsInRange:(_NSRange)range;
- (id)currentLayoutsInRange:(_NSRange)range;
- (id)currentTouchesInRange:(_NSRange)range;
- (id)keyStringWithCode:(int64_t)code fromLayoutIndex:(id)index;
- (id)uncommittedWordDeletionFromInputsWithRange:(_NSRange)range;
- (id)uncommittedWordEntryFromInputsWithRange:(_NSRange)range documentState:(id)state cancelled:(BOOL)cancelled;
- (void)acceptingCandidateWithTrigger:(id)trigger;
- (void)addDrawInputWithSyllableCount:(unint64_t)count keyboardState:(id)state;
- (void)addKeyInput:(id)input keyboardState:(id)state;
- (void)addTouchEvent:(id)event;
- (void)candidateAccepted:(id)accepted withInput:(id)input documentState:(id)state inputContext:(id)context inputStem:(id)stem predictionBarHit:(BOOL)hit useCandidateSelection:(BOOL)selection candidateIndex:(int64_t)self0 keyboardState:(id)self1;
- (void)candidatesOffered:(id)offered keyboardState:(id)state;
- (void)changingContextWithTrigger:(id)trigger;
- (void)contextDidChange:(id)change wordDelete:(BOOL)delete cursorMoved:(BOOL)moved extendsPriorWord:(BOOL)word inWord:(id)inWord range:(_NSRange)range selectionLocation:(unint64_t)location keyboardState:(id)self0;
- (void)encodeWithCoder:(id)coder;
- (void)endSessionWithTimestamp:(id)timestamp;
- (void)handleUncommittedWord;
- (void)initContextChangeEvent:(id)event withDocumentState:(id)state keyboardState:(id)keyboardState extendsPriorWord:(BOOL)word inWord:(id)inWord inWordRange:(_NSRange)range selectionLocation:(unint64_t)location;
- (void)insertUncommittedUserAction:(id)action;
- (void)layoutDidChange:(id)change keyboardState:(id)state;
- (void)removeInputsAndTouchesWithRange:(_NSRange)range;
- (void)removeInputsInRange:(_NSRange)range;
- (void)removeLayoutsInRange:(_NSRange)range;
- (void)removeTouchesInRange:(_NSRange)range;
- (void)resetCurrentWord;
- (void)resolveInputs:(id)inputs cancelledTextRange:(_NSRange *)range leadingBackspaceRange:(_NSRange *)backspaceRange trailingTextRange:(_NSRange *)textRange;
- (void)setClientID:(id)d keyboardState:(id)state;
- (void)updateCachedStateAfterLastInputWithKeyboardState:(id)state;
- (void)updateCachedStateBeforeFirstInputWithKeyboardState:(id)state;
@end

@implementation TITypingSession

- (double)calibratedCurrentTimestamp
{
  v16 = *MEMORY[0x277D85DE8];
  timeCalibrationTouch = self->_timeCalibrationTouch;
  Current = CFAbsoluteTimeGetCurrent();
  v5 = Current;
  if (!timeCalibrationTouch)
  {
    return -Current;
  }

  calibratedTimeBase = self->_calibratedTimeBase;
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  v7 = v5 - calibratedTimeBase;
  if (TICanLogMessageAtLevel_logLevel)
  {
    v8 = TIOSLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = MEMORY[0x277CCACA8];
      [(TIKeyboardTouchEvent *)self->_timeCalibrationTouch timestamp];
      v13 = [v11 stringWithFormat:@"%s calibrated timestamp %lf", "-[TITypingSession calibratedCurrentTimestamp]", v7 + v12];
      *buf = 138412290;
      v15 = v13;
      _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  [(TIKeyboardTouchEvent *)self->_timeCalibrationTouch timestamp];
  return v7 + v9;
}

- (_NSRange)safeRangeFromRange:(_NSRange)range fromArray:(id)array
{
  length = range.length;
  location = range.location;
  arrayCopy = array;
  if (location >= [arrayCopy count])
  {
    length = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
  }

  else if (location + length > [arrayCopy count])
  {
    length = [arrayCopy count] - location;
  }

  v7 = location;
  v8 = length;
  result.length = v8;
  result.location = v7;
  return result;
}

- (void)removeLayoutsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  currentWord = [(TITypingSession *)self currentWord];
  touchLayoutsM = [currentWord touchLayoutsM];
  v8 = [(TITypingSession *)self safeRangeFromRange:location fromArray:length, touchLayoutsM];
  v10 = v9;

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentWord2 = [(TITypingSession *)self currentWord];
    touchLayoutsM2 = [currentWord2 touchLayoutsM];
    [touchLayoutsM2 removeObjectsInRange:{v8, v10}];
  }
}

- (void)removeTouchesInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  currentWord = [(TITypingSession *)self currentWord];
  allTouchesM = [currentWord allTouchesM];
  v8 = [(TITypingSession *)self safeRangeFromRange:location fromArray:length, allTouchesM];
  v10 = v9;

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentWord2 = [(TITypingSession *)self currentWord];
    allTouchesM2 = [currentWord2 allTouchesM];
    [allTouchesM2 removeObjectsInRange:{v8, v10}];
  }
}

- (void)removeInputsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  currentWord = [(TITypingSession *)self currentWord];
  allKeyboardInputsM = [currentWord allKeyboardInputsM];
  v8 = [(TITypingSession *)self safeRangeFromRange:location fromArray:length, allKeyboardInputsM];
  v10 = v9;

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentWord2 = [(TITypingSession *)self currentWord];
    allKeyboardInputsM2 = [currentWord2 allKeyboardInputsM];
    [allKeyboardInputsM2 removeObjectsInRange:{v8, v10}];
  }
}

- (id)currentLayoutsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  currentWord = [(TITypingSession *)self currentWord];
  touchLayoutsM = [currentWord touchLayoutsM];
  v8 = [(TITypingSession *)self safeRangeFromRange:location fromArray:length, touchLayoutsM];
  v10 = v9;

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  else
  {
    currentWord2 = [(TITypingSession *)self currentWord];
    touchLayoutsM2 = [currentWord2 touchLayoutsM];
    v14 = [touchLayoutsM2 subarrayWithRange:{v8, v10}];
    array = [v14 mutableCopy];
  }

  return array;
}

- (id)currentTouchesInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  currentWord = [(TITypingSession *)self currentWord];
  allTouchesM = [currentWord allTouchesM];
  v8 = [(TITypingSession *)self safeRangeFromRange:location fromArray:length, allTouchesM];
  v10 = v9;

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  else
  {
    currentWord2 = [(TITypingSession *)self currentWord];
    allTouchesM2 = [currentWord2 allTouchesM];
    v14 = [allTouchesM2 subarrayWithRange:{v8, v10}];
    array = [v14 mutableCopy];
  }

  return array;
}

- (id)currentInputsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  currentWord = [(TITypingSession *)self currentWord];
  allKeyboardInputsM = [currentWord allKeyboardInputsM];
  v8 = [(TITypingSession *)self safeRangeFromRange:location fromArray:length, allKeyboardInputsM];
  v10 = v9;

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  else
  {
    currentWord2 = [(TITypingSession *)self currentWord];
    allKeyboardInputsM2 = [currentWord2 allKeyboardInputsM];
    v14 = [allKeyboardInputsM2 subarrayWithRange:{v8, v10}];
    array = [v14 mutableCopy];
  }

  return array;
}

- (void)resolveInputs:(id)inputs cancelledTextRange:(_NSRange *)range leadingBackspaceRange:(_NSRange *)backspaceRange trailingTextRange:(_NSRange *)textRange
{
  inputsCopy = inputs;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v35 = 0x7FFFFFFFFFFFFFFFLL;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__23396;
  v18[4] = __Block_byref_object_dispose__23397;
  array = [MEMORY[0x277CBEB18] array];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__23396;
  v16[4] = __Block_byref_object_dispose__23397;
  array2 = [MEMORY[0x277CBEB18] array];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__TITypingSession_resolveInputs_cancelledTextRange_leadingBackspaceRange_trailingTextRange___block_invoke;
  v15[3] = &unk_278733620;
  v15[4] = v18;
  v15[5] = v16;
  v15[6] = &v24;
  v15[7] = &v20;
  v15[8] = &v32;
  v15[9] = &v28;
  [inputsCopy enumerateObjectsUsingBlock:v15];
  v11 = v21[3] + v29[3];
  if (v11 >= [inputsCopy count])
  {
    v12 = 0;
  }

  else
  {
    v12 = [inputsCopy count] - v11;
    v10 = v11;
  }

  v13 = v29[3];
  range->location = v33[3];
  range->length = v13;
  v14 = v21[3];
  backspaceRange->location = v25[3];
  backspaceRange->length = v14;
  textRange->location = v10;
  textRange->length = v12;
  _Block_object_dispose(v16, 8);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
}

void __92__TITypingSession_resolveInputs_cancelledTextRange_leadingBackspaceRange_trailingTextRange___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v11 = a2;
  [*(*(a1[4] + 8) + 40) addObject:v11];
  v5 = [v11 isBackspace];
  v6 = *(*(a1[5] + 8) + 40);
  if (!v5)
  {
    [v6 addObject:v11];
    goto LABEL_13;
  }

  if (![v6 count])
  {
    v10 = *(a1[6] + 8);
    if (*(v10 + 24) == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v10 + 24) = a3;
    }

    v8 = [*(*(a1[4] + 8) + 40) count];
    v9 = a1[7];
    goto LABEL_12;
  }

  [*(*(a1[5] + 8) + 40) removeLastObject];
  if (![*(*(a1[5] + 8) + 40) count] && *(*(a1[6] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = *(a1[8] + 8);
    if (*(v7 + 24) == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v7 + 24) = 0;
    }

    v8 = [*(*(a1[4] + 8) + 40) count];
    v9 = a1[9];
LABEL_12:
    *(*(v9 + 8) + 24) += v8;
    [*(*(a1[4] + 8) + 40) removeAllObjects];
  }

LABEL_13:
}

- (void)insertUncommittedUserAction:(id)action
{
  actionCopy = action;
  if (actionCopy)
  {
    v15 = actionCopy;
    userActionHistory = [(TITypingSession *)self userActionHistory];
    v6 = [userActionHistory count];

    if (v6 >= 2)
    {
      userActionHistory2 = [(TITypingSession *)self userActionHistory];
      lastObject = [userActionHistory2 lastObject];

      actionType = [lastObject actionType];
      if (actionType != 2 && actionType != 12)
      {
        if (actionType == 11)
        {

LABEL_7:
          userActionHistory3 = [(TITypingSession *)self userActionHistory];
          userActionHistory4 = [(TITypingSession *)self userActionHistory];
          [userActionHistory3 insertObject:v15 atIndex:{objc_msgSend(userActionHistory4, "count") - 1}];

LABEL_13:
          actionCopy = v15;
          goto LABEL_14;
        }

        goto LABEL_11;
      }

      documentState = [lastObject documentState];
      contextBeforeInput = [documentState contextBeforeInput];
      if (contextBeforeInput || ([documentState selectedText], (contextBeforeInput = objc_claimAutoreleasedReturnValue()) != 0))
      {

LABEL_11:
        goto LABEL_12;
      }

      contextAfterInput = [documentState contextAfterInput];

      if (!contextAfterInput)
      {
        goto LABEL_7;
      }
    }

LABEL_12:
    userActionHistory3 = [(TITypingSession *)self userActionHistory];
    [userActionHistory3 addObject:v15];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)removeInputsAndTouchesWithRange:(_NSRange)range
{
  v4 = 2 * range.location;
  v5 = 2 * range.length;
  [(TITypingSession *)self removeInputsInRange:?];
  [(TITypingSession *)self removeTouchesInRange:v4, v5];

  [(TITypingSession *)self removeLayoutsInRange:v4, v5];
}

- (id)committedWordDeletionWithDocumentState:(id)state keyboardState:(id)keyboardState
{
  keyboardStateCopy = keyboardState;
  stateCopy = state;
  v8 = [[TIDeleteWordEvent alloc] initWithTIKeyboardState:keyboardStateCopy];

  [(TIUserAction *)v8 setDocumentState:stateCopy];
  allKeyboardInputs = [(TIWordEntry *)self->_currentWord allKeyboardInputs];
  [(TIDeleteWordEvent *)v8 addKeyInputs:allKeyboardInputs];

  allTouches = [(TIWordEntry *)self->_currentWord allTouches];
  touchLayouts = [(TIWordEntry *)self->_currentWord touchLayouts];
  [(TIDeleteWordEvent *)v8 addTouches:allTouches withLayoutIDs:touchLayouts];

  candidatesOffered = [(TIWordEntry *)self->_currentWord candidatesOffered];
  [(TIDeleteWordEvent *)v8 addCandidatesOffered:candidatesOffered];

  allTouches2 = [(TIDeleteWordEvent *)v8 allTouches];
  lastObject = [allTouches2 lastObject];
  [lastObject timestamp];
  [(TIUserAction *)v8 setEndTime:?];

  allTouches3 = [(TIDeleteWordEvent *)v8 allTouches];
  firstObject = [allTouches3 firstObject];
  [firstObject timestamp];
  [(TIUserAction *)v8 setStartTime:?];

  [(TITypingSession *)self calibratedCurrentTimestamp];
  [(TIUserAction *)v8 setOccurenceTime:?];

  return v8;
}

- (id)uncommittedWordDeletionFromInputsWithRange:(_NSRange)range
{
  if (range.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    length = range.length;
    location = range.location;
    v7 = LODWORD(range.location) + LODWORD(range.length);
    v8 = [(NSMutableArray *)self->_cachedKeyboardStates objectAtIndexedSubscript:range.location + range.length];
    documentState = [v8 documentState];
    v3 = [[TIDeleteWordEvent alloc] initWithTIKeyboardState:v8];
    [(TIUserAction *)v3 setDocumentState:documentState];
    v10 = 2 * length;
    v11 = [(TITypingSession *)self currentInputsInRange:location, length];
    [(TIDeleteWordEvent *)v3 setAllKeyboardInputsM:v11];

    v12 = [(TITypingSession *)self currentTouchesInRange:2 * location, v10];
    [(TIDeleteWordEvent *)v3 setAllTouchesM:v12];

    v13 = [(TITypingSession *)self currentLayoutsInRange:2 * location, v10];
    [(TIDeleteWordEvent *)v3 setTouchLayoutsM:v13];

    v14 = v7 - 1;
    if (v14 < [(NSMutableArray *)self->_cachedCandidatesOffered count])
    {
      v15 = MEMORY[0x277CBEB18];
      v16 = [(NSMutableArray *)self->_cachedCandidatesOffered objectAtIndexedSubscript:v14];
      v17 = [v15 arrayWithObject:v16];
      [(TIDeleteWordEvent *)v3 setCandidatesOfferedM:v17];
    }

    allTouches = [(TIDeleteWordEvent *)v3 allTouches];
    lastObject = [allTouches lastObject];
    [lastObject timestamp];
    [(TIUserAction *)v3 setEndTime:?];

    allTouches2 = [(TIDeleteWordEvent *)v3 allTouches];
    firstObject = [allTouches2 firstObject];
    [firstObject timestamp];
    [(TIUserAction *)v3 setStartTime:?];

    [(TITypingSession *)self calibratedCurrentTimestamp];
    [(TIUserAction *)v3 setOccurenceTime:?];
  }

  return v3;
}

- (id)uncommittedWordEntryFromInputsWithRange:(_NSRange)range documentState:(id)state cancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  length = range.length;
  location = range.location;
  stateCopy = state;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v11 = objc_alloc_init(TIWordEntry);
    v10 = v11;
    if (stateCopy)
    {
      [(TIUserAction *)v11 setDocumentState:stateCopy];
    }

    else
    {
      v12 = [(NSMutableArray *)self->_cachedKeyboardStates objectAtIndexedSubscript:location];
      documentState = [v12 documentState];
      [(TIUserAction *)v10 setDocumentState:documentState];
    }

    v14 = location + length;
    v15 = [(NSMutableArray *)self->_cachedKeyboardStates objectAtIndexedSubscript:location + length];
    [(TIUserAction *)v10 setKeyboardState:v15];

    v16 = 2 * length;
    v17 = [(TITypingSession *)self currentInputsInRange:location, length];
    [(TIWordEntry *)v10 setAllKeyboardInputsM:v17];

    v18 = [(TITypingSession *)self currentTouchesInRange:2 * location, v16];
    [(TIWordEntry *)v10 setAllTouchesM:v18];

    v19 = [(TITypingSession *)self currentLayoutsInRange:2 * location, v16];
    [(TIWordEntry *)v10 setTouchLayoutsM:v19];

    v20 = v14 - 1;
    if (v20 < [(NSMutableArray *)self->_cachedCandidatesOffered count])
    {
      v21 = MEMORY[0x277CBEB18];
      v22 = [(NSMutableArray *)self->_cachedCandidatesOffered objectAtIndexedSubscript:v20];
      v23 = [v21 arrayWithObject:v22];
      [(TIWordEntry *)v10 setCandidatesOfferedM:v23];
    }

    v24 = [MEMORY[0x277D6F3D8] candidateWithCandidate:&stru_283FDFAF8 forInput:&stru_283FDFAF8];
    [(TIWordEntry *)v10 setAcceptedCandidate:v24];

    [(TIWordEntry *)v10 setAcceptedString:&stru_283FDFAF8];
    allTouches = [(TIWordEntry *)v10 allTouches];
    firstObject = [allTouches firstObject];
    [firstObject timestamp];
    [(TIUserAction *)v10 setStartTime:?];

    allTouches2 = [(TIWordEntry *)v10 allTouches];
    lastObject = [allTouches2 lastObject];
    [lastObject timestamp];
    [(TIUserAction *)v10 setEndTime:?];

    [(TITypingSession *)self calibratedCurrentTimestamp];
    [(TIUserAction *)v10 setOccurenceTime:?];
    [(TIWordEntry *)v10 setCancelled:cancelledCopy];
    [(TIWordEntry *)v10 setOrigin:4];
  }

  return v10;
}

- (void)handleUncommittedWord
{
  if (!self->_currentWord)
  {
    return;
  }

  if (![(NSMutableArray *)self->_cachedKeyboardStates count])
  {
    if ([(TITypingSession *)self didReceiveSecureFieldEvent])
    {
      goto LABEL_6;
    }

LABEL_11:
    currentWord = [(TITypingSession *)self currentWord];
    allKeyboardInputs = [currentWord allKeyboardInputs];
    v7 = [allKeyboardInputs count];

    if (!v7)
    {
      goto LABEL_7;
    }

    v25 = 0;
    v26 = 0;
    v23 = 0;
    v24 = 0;
    v21 = 0;
    v22 = 0;
    currentWord2 = [(TITypingSession *)self currentWord];
    allKeyboardInputs2 = [currentWord2 allKeyboardInputs];
    [(TITypingSession *)self resolveInputs:allKeyboardInputs2 cancelledTextRange:&v25 leadingBackspaceRange:&v23 trailingTextRange:&v21];

    v10 = v23;
    if (v23 == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentWord3 = [(TITypingSession *)self currentWord];
      allKeyboardInputs3 = [currentWord3 allKeyboardInputs];
      v13 = [allKeyboardInputs3 count];

      0x7FFFFFFFFFFFFFFFLL = [(TITypingSession *)self uncommittedWordEntryFromInputsWithRange:0 documentState:v13 cancelled:0, v21 == 0x7FFFFFFFFFFFFFFFLL];
    }

    else
    {
      if (v25 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = [(TITypingSession *)self uncommittedWordEntryFromInputsWithRange:v25 documentState:v26 cancelled:0, 1];
        [(TITypingSession *)self insertUncommittedUserAction:v15];

        v10 = v23;
      }

      if (v21 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = v24;
        v18 = v22;
        v19 = [(NSMutableArray *)self->_cachedKeyboardStates objectAtIndexedSubscript:?];
        documentState = [v19 documentState];

        v20 = [(TITypingSession *)self uncommittedWordEntryFromInputsWithRange:v10 documentState:v18 + v17 cancelled:documentState, 0];
        [(TITypingSession *)self insertUncommittedUserAction:v20];

        goto LABEL_20;
      }

      0x7FFFFFFFFFFFFFFFLL = [(TITypingSession *)self uncommittedWordDeletionFromInputsWithRange:v10, v24];
    }

    documentState = 0x7FFFFFFFFFFFFFFFLL;
    [(TITypingSession *)self insertUncommittedUserAction:0x7FFFFFFFFFFFFFFFLL];
LABEL_20:

    [(TITypingSession *)self resetCurrentWord];
    return;
  }

  v3 = [(NSMutableArray *)self->_cachedKeyboardStates objectAtIndexedSubscript:0];
  if (![v3 secureTextEntry])
  {
    didReceiveSecureFieldEvent = [(TITypingSession *)self didReceiveSecureFieldEvent];

    if (didReceiveSecureFieldEvent)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_6:
  [(TITypingSession *)self setDidReceiveSecureFieldEvent:1];
LABEL_7:

  [(TITypingSession *)self resetCurrentWord];
}

- (void)setClientID:(id)d keyboardState:(id)state
{
  v12 = *MEMORY[0x277D85DE8];
  dCopy = d;
  stateCopy = state;
  if (IXACanLogMessageAtLevel())
  {
    v8 = IXASessionEventsLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s CI clientID: '%@'", "-[TITypingSession setClientID:keyboardState:]", dCopy];
      *buf = 138412290;
      v11 = dCopy;
      _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  if (([stateCopy secureTextEntry] & 1) != 0 || -[TITypingSession didReceiveSecureFieldEvent](self, "didReceiveSecureFieldEvent"))
  {
    [(TITypingSession *)self setDidReceiveSecureFieldEvent:1];
  }

  else
  {
    [(TITypingSession *)self setApplicationID:dCopy];
    [(TITypingSession *)self updateCachedStateBeforeFirstInputWithKeyboardState:stateCopy];
  }
}

- (void)initContextChangeEvent:(id)event withDocumentState:(id)state keyboardState:(id)keyboardState extendsPriorWord:(BOOL)word inWord:(id)inWord inWordRange:(_NSRange)range selectionLocation:(unint64_t)location
{
  wordCopy = word;
  inWordCopy = inWord;
  stateCopy = state;
  eventCopy = event;
  [eventCopy setDocumentState:stateCopy];
  selectedText = [stateCopy selectedText];

  [eventCopy setIsSelection:{objc_msgSend(selectedText, "length") != 0}];
  [eventCopy setExtendsPriorWord:wordCopy];
  [eventCopy setInWordRange:{range.location, range.length}];
  [eventCopy setInWord:inWordCopy];

  [eventCopy setSelectionLocation:location];
  [(TITypingSession *)self calibratedCurrentTimestamp];
  [eventCopy setOccurenceTime:?];
}

- (id)createContextChangeEventWithClass:(Class)class documentState:(id)state keyboardState:(id)keyboardState extendsPriorWord:(BOOL)word inWord:(id)inWord inWordRange:(_NSRange)range selectionLocation:(unint64_t)location
{
  wordCopy = word;
  inWordCopy = inWord;
  keyboardStateCopy = keyboardState;
  stateCopy = state;
  v17 = [[class alloc] initWithTIKeyboardState:keyboardStateCopy];
  [(TITypingSession *)self initContextChangeEvent:v17 withDocumentState:stateCopy keyboardState:keyboardStateCopy extendsPriorWord:wordCopy inWord:inWordCopy inWordRange:range.location selectionLocation:range.length, location];

  return v17;
}

- (void)contextDidChange:(id)change wordDelete:(BOOL)delete cursorMoved:(BOOL)moved extendsPriorWord:(BOOL)word inWord:(id)inWord range:(_NSRange)range selectionLocation:(unint64_t)location keyboardState:(id)self0
{
  wordCopy = word;
  movedCopy = moved;
  deleteCopy = delete;
  v63 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  inWordCopy = inWord;
  stateCopy = state;
  if (IXACanLogMessageAtLevel())
  {
    v18 = IXASessionEventsLogFacility();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      wordCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s CC trigger: %@ wordDelete: %d cursorMoved: %d extendsPriorWord: %d", "-[TITypingSession contextDidChange:wordDelete:cursorMoved:extendsPriorWord:inWord:range:selectionLocation:keyboardState:]", self->_contextChangeTrigger, deleteCopy, movedCopy, wordCopy];
      *buf = 138412290;
      *&buf[4] = wordCopy;
      _os_log_debug_impl(&dword_22CA55000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  if (([stateCopy secureTextEntry] & 1) == 0 && !-[TITypingSession didReceiveSecureFieldEvent](self, "didReceiveSecureFieldEvent"))
  {
    contextChangeTrigger = [(TITypingSession *)self contextChangeTrigger];
    v20 = *MEMORY[0x277D6F5E8];

    v21 = MEMORY[0x277D6F5F8];
    if (contextChangeTrigger == v20)
    {
      lastInput = [(TITypingSession *)self lastInput];
      isBackspace = [lastInput isBackspace];

      if (isBackspace)
      {
        lastInput2 = [(TITypingSession *)self lastInput];
        [lastInput2 setRapidDelete:1];
      }
    }

    else if ([(TITypingSession *)self fromLegacyRecording])
    {
      lastInput3 = [(TITypingSession *)self lastInput];
      if ([lastInput3 isBackspace])
      {
        lastInput4 = [(TITypingSession *)self lastInput];
        if ([lastInput4 isRapidDelete])
        {
        }

        else
        {
          v58 = [(TITypingSession *)self testForRapidDeleteContextChange:stateCopy];

          if (!v58)
          {
LABEL_20:
            if (deleteCopy)
            {
              goto LABEL_21;
            }

            [(TITypingSession *)self setContextChangeTrigger:*MEMORY[0x277D6F5F0]];
            goto LABEL_25;
          }

          lastInput3 = [(TITypingSession *)self lastInput];
          [lastInput3 setRapidDelete:1];
        }
      }

      goto LABEL_20;
    }

    if (deleteCopy)
    {
LABEL_21:
      *buf = 0uLL;
      v61[0] = 0;
      v61[1] = 0;
      v60[0] = 0;
      v60[1] = 0;
      currentWord = [(TITypingSession *)self currentWord];
      allKeyboardInputs = [currentWord allKeyboardInputs];
      [(TITypingSession *)self resolveInputs:allKeyboardInputs cancelledTextRange:buf leadingBackspaceRange:v61 trailingTextRange:v60];

      if (*buf != 0x7FFFFFFFFFFFFFFFLL)
      {
        v30 = [(TITypingSession *)self uncommittedWordEntryFromInputsWithRange:*buf documentState:0 cancelled:1];
        [(TITypingSession *)self insertUncommittedUserAction:v30];

        [(TITypingSession *)self removeInputsAndTouchesWithRange:*buf];
      }

      v31 = [(TITypingSession *)self committedWordDeletionWithDocumentState:changeCopy keyboardState:stateCopy];
      userActionHistory = [(TITypingSession *)self userActionHistory];
      [userActionHistory addObject:v31];

      [(TITypingSession *)self setLastDeletion:v31];
      [(TITypingSession *)self setIncludeInputToLastDeletion:1];
      [(TITypingSession *)self resetCurrentWord];

      goto LABEL_44;
    }

LABEL_25:
    lastInput5 = [(TITypingSession *)self lastInput];
    isBackspace2 = [lastInput5 isBackspace];

    if (isBackspace2)
    {
LABEL_44:
      objc_storeStrong(&self->_contextChangeTrigger, *v21);
      goto LABEL_45;
    }

    userActionHistory2 = [(TITypingSession *)self userActionHistory];
    v59 = wordCopy;
    if ([userActionHistory2 count])
    {

LABEL_32:
      contextChangeTrigger2 = [(TITypingSession *)self contextChangeTrigger];
      isEqualToString = objc_msgSend_isEqualToString_(contextChangeTrigger2);

      if (isEqualToString)
      {
        v43 = [TIGainFocusEvent alloc];
        locale = [(TITypingSession *)self locale];
        location = [(TIGainFocusEvent *)v43 initWithTIKeyboardState:stateCopy andLocale:locale];

        [(TITypingSession *)self initContextChangeEvent:location withDocumentState:changeCopy keyboardState:stateCopy extendsPriorWord:v59 inWord:inWordCopy inWordRange:range.location selectionLocation:range.length, location];
        v21 = MEMORY[0x277D6F5F8];
      }

      else
      {
        contextChangeTrigger3 = [(TITypingSession *)self contextChangeTrigger];
        v47 = objc_msgSend_isEqualToString_(contextChangeTrigger3);

        v21 = MEMORY[0x277D6F5F8];
        if (!v47)
        {
          contextChangeTrigger4 = [(TITypingSession *)self contextChangeTrigger];
          v49 = objc_msgSend_isEqualToString_(contextChangeTrigger4);

          if (!v49)
          {
            contextChangeTrigger5 = [(TITypingSession *)self contextChangeTrigger];
            v51 = objc_msgSend_isEqualToString_(contextChangeTrigger5);

            if (!v51)
            {
              contextChangeTrigger6 = [(TITypingSession *)self contextChangeTrigger];
              v53 = objc_msgSend_isEqualToString_(contextChangeTrigger6);

              if (!v53)
              {
                contextChangeTrigger7 = [(TITypingSession *)self contextChangeTrigger];
                v55 = objc_msgSend_isEqualToString_(contextChangeTrigger7);

                if (!v55)
                {
                  contextChangeTrigger8 = [(TITypingSession *)self contextChangeTrigger];
                  objc_msgSend_isEqualToString_(contextChangeTrigger8);
                }
              }
            }
          }
        }

        location = [(TITypingSession *)self createContextChangeEventWithClass:objc_opt_class() documentState:changeCopy keyboardState:stateCopy extendsPriorWord:v59 inWord:inWordCopy inWordRange:range.location selectionLocation:range.length, location];
      }

      userActionHistory3 = [(TITypingSession *)self userActionHistory];
      [userActionHistory3 addObject:location];

      goto LABEL_44;
    }

    v36 = MEMORY[0x277D6F5D0];
    contextChangeTrigger9 = [(TITypingSession *)self contextChangeTrigger];
    if (objc_msgSend_isEqualToString_(contextChangeTrigger9))
    {

      v38 = v36;
    }

    else
    {
      contextChangeTrigger10 = [(TITypingSession *)self contextChangeTrigger];
      v40 = objc_msgSend_isEqualToString_(contextChangeTrigger10);

      v38 = v36;
      if (!v40)
      {
        goto LABEL_32;
      }
    }

    [(TITypingSession *)self setContextChangeTrigger:*v38];
    goto LABEL_32;
  }

  [(TITypingSession *)self setDidReceiveSecureFieldEvent:1];
LABEL_45:
}

- (void)changingContextWithTrigger:(id)trigger
{
  v10 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  if (IXACanLogMessageAtLevel())
  {
    v5 = IXASessionEventsLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      triggerCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TC trigger: %@", "-[TITypingSession changingContextWithTrigger:]", triggerCopy];
      *buf = 138412290;
      v9 = triggerCopy;
      _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  contextChangeTrigger = self->_contextChangeTrigger;
  self->_contextChangeTrigger = triggerCopy;
}

- (id)keyStringWithCode:(int64_t)code fromLayoutIndex:(id)index
{
  indexCopy = index;
  layouts = [(TITypingSession *)self layouts];
  integerValue = [indexCopy integerValue];

  v9 = [layouts objectAtIndexedSubscript:integerValue];

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__TITypingSession_keyStringWithCode_fromLayoutIndex___block_invoke;
  v12[3] = &unk_2787335F8;
  v12[4] = &v13;
  v12[5] = code;
  [v9 enumerateKeysUsingBlock:v12];
  if (v14[3])
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v10;
}

uint64_t __53__TITypingSession_keyStringWithCode_fromLayoutIndex___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 40) == a3)
  {
    *(*(*(result + 32) + 8) + 24) = a2;
    *a4 = 1;
  }

  return result;
}

- (void)candidateAccepted:(id)accepted withInput:(id)input documentState:(id)state inputContext:(id)context inputStem:(id)stem predictionBarHit:(BOOL)hit useCandidateSelection:(BOOL)selection candidateIndex:(int64_t)self0 keyboardState:(id)self1
{
  hitCopy = hit;
  v349 = *MEMORY[0x277D85DE8];
  acceptedCopy = accepted;
  inputCopy = input;
  stateCopy = state;
  contextCopy = context;
  stemCopy = stem;
  keyboardStateCopy = keyboardState;
  if (self->_currentWord)
  {
    buf = 0uLL;
    v342[0] = 0;
    v342[1] = 0;
    v341[0] = 0;
    v341[1] = 0;
    currentWord = [(TITypingSession *)self currentWord];
    allKeyboardInputs = [currentWord allKeyboardInputs];
    [(TITypingSession *)self resolveInputs:allKeyboardInputs cancelledTextRange:&buf leadingBackspaceRange:v342 trailingTextRange:v341];

    if (buf != 0x7FFFFFFFFFFFFFFFLL && v342[0] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = [TITypingSession uncommittedWordEntryFromInputsWithRange:"uncommittedWordEntryFromInputsWithRange:documentState:cancelled:" documentState:? cancelled:?];
      [(TITypingSession *)self insertUncommittedUserAction:v22];

      [(TITypingSession *)self removeInputsAndTouchesWithRange:buf];
    }
  }

  v328 = keyboardStateCopy;
  lastWord = [(TITypingSession *)self lastWord];
  if (lastWord)
  {
    v24 = lastWord;
    userActionHistory = [(TITypingSession *)self userActionHistory];
    lastObject = [userActionHistory lastObject];
    lastWord2 = [(TITypingSession *)self lastWord];

    if (lastObject == lastWord2)
    {
      lastWord3 = [(TITypingSession *)self lastWord];
      v39 = [lastWord3 wordEntryType] & 0xE0;

      if (v39)
      {
        lastWord4 = [(TITypingSession *)self lastWord];
        acceptedString = [lastWord4 acceptedString];
        candidate = [acceptedCopy candidate];
        isEqualToString = objc_msgSend_isEqualToString_(acceptedString);

        if (isEqualToString)
        {
          [(TITypingSession *)self setCandidateAcceptedTrigger:*MEMORY[0x277D6F5A8]];
          v28 = inputCopy;
          v35 = v328;
          goto LABEL_20;
        }
      }
    }
  }

  v28 = inputCopy;
  if (IXACanLogMessageAtLevel())
  {
    v29 = IXASessionEventsLogFacility();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v113 = MEMORY[0x277CCACA8];
      candidateAcceptedTrigger = self->_candidateAcceptedTrigger;
      candidate2 = [acceptedCopy candidate];
      input = [acceptedCopy input];
      hitCopy = [v113 stringWithFormat:@"%s CA trigger: %@ candidate: %@ input: %@ predictionBarHit: %d", "-[TITypingSession candidateAccepted:withInput:documentState:inputContext:inputStem:predictionBarHit:useCandidateSelection:candidateIndex:keyboardState:]", candidateAcceptedTrigger, candidate2, input, hitCopy];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = hitCopy;
      _os_log_debug_impl(&dword_22CA55000, v29, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
    }
  }

  candidateAcceptedTrigger = [(TITypingSession *)self candidateAcceptedTrigger];
  v31 = objc_msgSend_isEqualToString_(candidateAcceptedTrigger);

  if (v31)
  {
    v32 = 1;
  }

  else
  {
    candidateAcceptedTrigger2 = [(TITypingSession *)self candidateAcceptedTrigger];
    v34 = objc_msgSend_isEqualToString_(candidateAcceptedTrigger2);

    v32 = hitCopy & ~v34;
  }

  v35 = v328;
  [(TITypingSession *)self setCandidatesAccepted:[(TITypingSession *)self candidatesAccepted]+ 1];
  v36 = MEMORY[0x277D6F320];
  candidate3 = [acceptedCopy candidate];
  LODWORD(v36) = [v36 hasNonWhitespaceNonPunctuationText:candidate3];

  if (v36)
  {
    [(TITypingSession *)self setCandidatesAcceptedWithText:[(TITypingSession *)self candidatesAcceptedWithText]+ 1];
  }

  if (([v328 secureTextEntry] & 1) != 0 || -[TITypingSession didReceiveSecureFieldEvent](self, "didReceiveSecureFieldEvent"))
  {
    [(TITypingSession *)self setDidReceiveSecureFieldEvent:1];
    [(TITypingSession *)self resetCurrentWord];
LABEL_19:
    [(TITypingSession *)self setCandidateAcceptedTrigger:*MEMORY[0x277D6F5A8]];
    goto LABEL_20;
  }

  if (v32)
  {
    if (self->_currentWord)
    {
      goto LABEL_28;
    }

    lastWord5 = [(TITypingSession *)self lastWord];
    acceptedCandidate = [lastWord5 acceptedCandidate];
    lastWord6 = [(TITypingSession *)self lastWord];
    [lastWord6 setOriginalCandidate:acceptedCandidate];

    lastWord7 = [(TITypingSession *)self lastWord];
    acceptedString2 = [lastWord7 acceptedString];
    lastWord8 = [(TITypingSession *)self lastWord];
    [lastWord8 setOriginalAcceptedString:acceptedString2];

    lastWord9 = [(TITypingSession *)self lastWord];
    [lastWord9 setAcceptedCandidate:acceptedCopy];

    candidate4 = [acceptedCopy candidate];
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v53 = [candidate4 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
    lastWord10 = [(TITypingSession *)self lastWord];
    [lastWord10 setAcceptedString:v53];

    lastWord11 = [(TITypingSession *)self lastWord];
    [lastWord11 setWordEntryType:4];

    lastWord12 = [(TITypingSession *)self lastWord];
    [lastWord12 setWordEntryType:{objc_msgSend(lastWord12, "wordEntryType") | 8}];
  }

  if (!self->_currentWord)
  {
    goto LABEL_19;
  }

LABEL_28:
  [(TITypingSession *)self calibratedCurrentTimestamp];
  [(TIUserAction *)self->_currentWord setOccurenceTime:?];
  [(TIUserAction *)self->_currentWord setKeyboardState:v328];
  contextBeforeInput = [stateCopy contextBeforeInput];
  candidatesOffered = [(TIWordEntry *)self->_currentWord candidatesOffered];
  v58 = [candidatesOffered count];

  v317 = stateCopy;
  if (v58 < 1)
  {
    autocorrection = 0;
  }

  else
  {
    candidatesOffered2 = [(TIWordEntry *)self->_currentWord candidatesOffered];
    v60 = [candidatesOffered2 objectAtIndex:(v58 - 1)];
    corrections = [v60 corrections];
    autocorrection = [corrections autocorrection];

    if (![acceptedCopy sourceMask])
    {
      candidate5 = [autocorrection candidate];
      candidate6 = [acceptedCopy candidate];
      if (objc_msgSend_isEqualToString_(candidate6))
      {
        v65 = autocorrection;

        acceptedCopy = v65;
      }
    }
  }

  candidate7 = [acceptedCopy candidate];
  v316 = autocorrection;
  candidate8 = [autocorrection candidate];
  locale = [(TITypingSession *)self locale];
  v69 = [candidate7 smartQuoteInsensitiveStringEquivalent:candidate8 forLocale:locale];

  isAutocorrection = [acceptedCopy isAutocorrection];
  if ((isAutocorrection & 1) == 0)
  {
    candidate7 = [(TITypingSession *)self candidateAcceptedTrigger];
    if (!objc_msgSend_isEqualToString_(candidate7))
    {
      goto LABEL_44;
    }
  }

  if (v32 & 1 | ((v69 & 1) == 0) || ([acceptedCopy isContinuousPathConversion] & 1) != 0)
  {
    if (isAutocorrection)
    {
      goto LABEL_45;
    }

LABEL_44:

    goto LABEL_45;
  }

  isToucanInlineCompletionCandidate = [acceptedCopy isToucanInlineCompletionCandidate];
  if ((isAutocorrection & 1) == 0)
  {
  }

  if ((isToucanInlineCompletionCandidate & 1) == 0)
  {
    candidate7 = [(TITypingSession *)self currentWord];
    [candidate7 setWordEntryType:{objc_msgSend(candidate7, "wordEntryType") | 1}];
    goto LABEL_44;
  }

LABEL_45:
  if ([acceptedCopy isCompletionCandidate])
  {
    currentWord2 = [(TITypingSession *)self currentWord];
    [currentWord2 setWordEntryType:{objc_msgSend(currentWord2, "wordEntryType") | 2}];
  }

  if (v32)
  {
    currentWord3 = [(TITypingSession *)self currentWord];
    [currentWord3 setWordEntryType:{objc_msgSend(currentWord3, "wordEntryType") | 4}];

    currentWord4 = [(TITypingSession *)self currentWord];
    [currentWord4 setWordEntryType:{objc_msgSend(currentWord4, "wordEntryType") | 0x10}];
  }

  candidateAcceptedTrigger3 = [(TITypingSession *)self candidateAcceptedTrigger];
  v76 = objc_msgSend_isEqualToString_(candidateAcceptedTrigger3);

  if (v76)
  {
    currentWord5 = [(TITypingSession *)self currentWord];
    [currentWord5 setWordEntryType:{objc_msgSend(currentWord5, "wordEntryType") | 0x20}];
  }

  candidateAcceptedTrigger4 = [(TITypingSession *)self candidateAcceptedTrigger];
  v79 = objc_msgSend_isEqualToString_(candidateAcceptedTrigger4);

  if (v79)
  {
    currentWord6 = [(TITypingSession *)self currentWord];
    [currentWord6 setWordEntryType:{objc_msgSend(currentWord6, "wordEntryType") | 0x40}];
  }

  candidateAcceptedTrigger5 = [(TITypingSession *)self candidateAcceptedTrigger];
  v82 = objc_msgSend_isEqualToString_(candidateAcceptedTrigger5);

  if (v82)
  {
    currentWord7 = [(TITypingSession *)self currentWord];
    [currentWord7 setWordEntryType:{objc_msgSend(currentWord7, "wordEntryType") | 0x80}];
  }

  if ([acceptedCopy isToucanInlineCompletionCandidate])
  {
    currentWord8 = [(TITypingSession *)self currentWord];
    [currentWord8 setWordEntryType:{objc_msgSend(currentWord8, "wordEntryType") | 0x100}];
  }

  v85 = ([acceptedCopy usageTrackingMask] >> 18) & 1;
  currentWord9 = [(TITypingSession *)self currentWord];
  [currentWord9 setIsMultilingual:v85];

  v87 = ([acceptedCopy sourceMask] >> 5) & 1;
  currentWord10 = [(TITypingSession *)self currentWord];
  [currentWord10 setIsOOV:v87];

  if (([acceptedCopy sourceMask] & 0x8000) != 0)
  {
    v89 = 1;
  }

  else
  {
    v89 = ([acceptedCopy sourceMask] >> 17) & 1;
  }

  currentWord11 = [(TITypingSession *)self currentWord];
  [currentWord11 setIsFromStaticLexicon:v89];

  v91 = ([acceptedCopy usageTrackingMask] >> 17) & 1;
  currentWord12 = [(TITypingSession *)self currentWord];
  [currentWord12 setIsContinuousPathCompletion:v91];

  acceptedCopy = acceptedCopy;
  v93 = objc_msgSend_string(inputCopy);
  LODWORD(currentWord12) = [v93 endsInPunctuation];

  if (currentWord12 && !selection)
  {
    lastWord13 = [(TITypingSession *)self lastWord];
    acceptedCandidate2 = [lastWord13 acceptedCandidate];
    if ([acceptedCandidate2 isContinuousPathConversion])
    {
      v96 = objc_msgSend_string(inputCopy);
      v97 = objc_msgSend_isEqualToString_(v96);

      if ((v97 & 1) == 0)
      {
        whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v99 = [contextBeforeInput componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
        lastObject2 = [v99 lastObject];

        candidate9 = [acceptedCopy candidate];
        if (candidate9)
        {
          v102 = candidate9;
          candidate10 = [acceptedCopy candidate];
          v104 = objc_msgSend_isEqualToString_(lastObject2);

          if ((v104 & 1) == 0)
          {
            contextBeforeInput2 = [v317 contextBeforeInput];
            candidate11 = [acceptedCopy candidate];
            v107 = [contextBeforeInput2 stringByAppendingString:candidate11];

            contextBeforeInput = v107;
          }
        }

        v108 = objc_alloc(MEMORY[0x277D6F3D8]);
        v109 = objc_msgSend_string(inputCopy);
        v110 = objc_msgSend_string(inputCopy);
        v321 = [v108 initWithCandidate:v109 forInput:v110];

        currentWord13 = [(TITypingSession *)self currentWord];
        [currentWord13 setIsPunctuationEntryFollowingAWord:1];

        goto LABEL_74;
      }
    }

    else
    {
    }

    lastObject2 = objc_msgSend_string(inputCopy);
    if ([lastObject2 isEqual:@" "])
    {
      v321 = acceptedCopy;
LABEL_74:

      goto LABEL_75;
    }

    isToucanInlineCompletionCandidate2 = [acceptedCopy isToucanInlineCompletionCandidate];

    if ((isToucanInlineCompletionCandidate2 & 1) == 0)
    {
      candidate12 = [acceptedCopy candidate];
      v119 = objc_msgSend_string(inputCopy);
      v120 = [candidate12 stringByAppendingString:v119];
      v321 = [acceptedCopy candidateByReplacingWithCandidate:v120];

      lastObject2 = [(TITypingSession *)self currentWord];
      [lastObject2 setIsPunctuationEntryFollowingAWord:1];
      goto LABEL_74;
    }
  }

  v321 = acceptedCopy;
LABEL_75:
  isContinuousPathConversion = [acceptedCopy isContinuousPathConversion];
  if (inputCopy)
  {
    if ((isContinuousPathConversion & 1) == 0)
    {
      v122 = objc_msgSend_string(inputCopy);
      _containsEmoji = [v122 _containsEmoji];

      if ((_containsEmoji & 1) == 0)
      {
        [(TITypingSession *)self setIncludeInputToLastWord:1];
        currentWord14 = [(TITypingSession *)self currentWord];
        [currentWord14 setInputTriggeredTextAccepted:inputCopy];
      }
    }
  }

  candidate13 = [v321 candidate];
  currentWord15 = [(TITypingSession *)self currentWord];
  [currentWord15 setAcceptedString:candidate13];

  if ([acceptedCopy isContinuousPathConversion] && !selection)
  {
    currentWord16 = [(TITypingSession *)self currentWord];
    acceptedString3 = [currentWord16 acceptedString];
    whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v130 = [acceptedString3 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];
    currentWord17 = [(TITypingSession *)self currentWord];
    [currentWord17 setAcceptedString:v130];

    v35 = v328;
  }

  currentWord18 = [(TITypingSession *)self currentWord];
  [currentWord18 setAcceptedCandidate:v321];

  currentWord19 = [(TITypingSession *)self currentWord];
  [currentWord19 setInputContext:contextCopy];

  currentWord20 = [(TITypingSession *)self currentWord];
  [currentWord20 setInputStem:stemCopy];

  currentWord21 = [(TITypingSession *)self currentWord];
  allTouches = [currentWord21 allTouches];
  lastObject3 = [allTouches lastObject];
  [lastObject3 timestamp];
  v139 = v138;
  currentWord22 = [(TITypingSession *)self currentWord];
  [currentWord22 setEndTime:v139];

  currentWord23 = [(TITypingSession *)self currentWord];
  allTouches2 = [currentWord23 allTouches];
  firstObject = [allTouches2 firstObject];
  [firstObject timestamp];
  v145 = v144;
  currentWord24 = [(TITypingSession *)self currentWord];
  [currentWord24 setStartTime:v145];

  currentWord25 = [(TITypingSession *)self currentWord];
  [currentWord25 setKeyboardState:v35];

  candidate14 = [v321 candidate];
  v149 = [candidate14 length];

  if (v149 && !selection)
  {
    contextBeforeInput3 = [v317 contextBeforeInput];
    if ([contextBeforeInput3 hasSuffix:stemCopy])
    {
    }

    else
    {
      contextBeforeInput4 = [v317 contextBeforeInput];
      candidate15 = [v321 candidate];
      v153 = [contextBeforeInput4 hasSuffix:candidate15];

      if (!v153)
      {
        goto LABEL_90;
      }
    }

    contextBeforeInput5 = [v317 contextBeforeInput];
    v155 = [contextBeforeInput5 length];
    candidate16 = [v321 candidate];
    v157 = v155 - [candidate16 length];

    if ((v157 & 0x8000000000000000) == 0)
    {
      contextBeforeInput6 = [v317 contextBeforeInput];
      v159 = [contextBeforeInput6 substringToIndex:v157];

      contextBeforeInput = v159;
    }
  }

LABEL_90:
  if (v317)
  {
    v160 = objc_alloc(MEMORY[0x277D6F350]);
    markedText = [v317 markedText];
    selectedText = [v317 selectedText];
    contextAfterInput = [v317 contextAfterInput];
    selectedRangeInMarkedText = [v317 selectedRangeInMarkedText];
    v166 = [v160 initWithContextBefore:contextBeforeInput markedText:markedText selectedText:selectedText contextAfter:contextAfterInput selectedRangeInMarkedText:{selectedRangeInMarkedText, v165}];
    currentWord26 = [(TITypingSession *)self currentWord];
    [currentWord26 setDocumentState:v166];

    v35 = v328;
  }

  if (selection)
  {
    currentWord27 = [(TITypingSession *)self currentWord];
    [currentWord27 setCandidateIndex:index];
  }

  currentWord28 = [(TITypingSession *)self currentWord];
  acceptedCandidate3 = [currentWord28 acceptedCandidate];
  isContinuousPathConversion2 = [acceptedCandidate3 isContinuousPathConversion];

  if (isContinuousPathConversion2)
  {
    currentWord29 = [(TITypingSession *)self currentWord];
    allTouchesM = [currentWord29 allTouchesM];
    if ([allTouchesM count])
    {
      currentWord30 = [(TITypingSession *)self currentWord];
      allTouchesM2 = [currentWord30 allTouchesM];
      v176 = [allTouchesM2 objectAtIndexedSubscript:0];
      stage = [v176 stage];

      v35 = v328;
      if (stage != 1)
      {
        goto LABEL_109;
      }
    }

    else
    {
    }

    touchesHistory = [(TITypingSession *)self touchesHistory];
    v179 = MEMORY[0x277CCABB0];
    touchEvent = [inputCopy touchEvent];
    v181 = [v179 numberWithInteger:{objc_msgSend(touchEvent, "pathIndex")}];
    v182 = [touchesHistory objectForKey:v181];

    if ([v182 count])
    {
      currentWord31 = [(TITypingSession *)self currentWord];
      allTouchesM3 = [currentWord31 allTouchesM];
      [allTouchesM3 removeAllObjects];

      v340 = 0u;
      v338 = 0u;
      v339 = 0u;
      v337 = 0u;
      v185 = v182;
      v186 = [v185 countByEnumeratingWithState:&v337 objects:v348 count:16];
      if (v186)
      {
        v187 = v186;
        v188 = *v338;
        do
        {
          for (i = 0; i != v187; ++i)
          {
            if (*v338 != v188)
            {
              objc_enumerationMutation(v185);
            }

            v190 = *(*(&v337 + 1) + 8 * i);
            currentWord32 = [(TITypingSession *)self currentWord];
            touch = [v190 touch];
            [currentWord32 addTouchEvent:touch withLayoutId:{objc_msgSend(v190, "layoutId")}];

            lastWord14 = [(TITypingSession *)self lastWord];
            allTouchesM4 = [lastWord14 allTouchesM];
            touch2 = [v190 touch];
            [allTouchesM4 removeObject:touch2];
          }

          v187 = [v185 countByEnumeratingWithState:&v337 objects:v348 count:16];
        }

        while (v187);
      }

      v28 = inputCopy;
      v35 = v328;
    }
  }

LABEL_109:
  if (IXACanLogMessageAtLevel())
  {
    v196 = IXASessionDetailsLogFacility();
    if (os_log_type_enabled(v196, OS_LOG_TYPE_DEBUG))
    {
      v253 = MEMORY[0x277CCACA8];
      currentWord33 = [(TITypingSession *)self currentWord];
      v255 = wordEntryDetailForLog(currentWord33, 0);
      v255 = [v253 stringWithFormat:@"%s %@", "-[TITypingSession candidateAccepted:withInput:documentState:inputContext:inputStem:predictionBarHit:useCandidateSelection:candidateIndex:keyboardState:]", v255];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v255;
      _os_log_debug_impl(&dword_22CA55000, v196, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
    }
  }

  currentWord34 = [(TITypingSession *)self currentWord];
  acceptedCandidate4 = [currentWord34 acceptedCandidate];
  isToucanInlineCompletionCandidate3 = [acceptedCandidate4 isToucanInlineCompletionCandidate];

  if (!isToucanInlineCompletionCandidate3)
  {
    goto LABEL_172;
  }

  currentWord35 = [(TITypingSession *)self currentWord];
  allKeyboardInputs2 = [currentWord35 allKeyboardInputs];
  v202 = [allKeyboardInputs2 count];

  if (!v202)
  {
    currentWord36 = [(TITypingSession *)self currentWord];
    acceptedCandidate5 = [currentWord36 acceptedCandidate];

    input2 = [acceptedCandidate5 input];
    if ([input2 endsInWhitespace])
    {
      candidate17 = [acceptedCandidate5 candidate];
      input3 = [acceptedCandidate5 input];
      v208 = [candidate17 hasPrefix:input3];

      if (!v208)
      {
LABEL_119:

        goto LABEL_120;
      }

      currentWord37 = [(TITypingSession *)self currentWord];
      documentState = [currentWord37 documentState];
      candidate18 = [acceptedCandidate5 candidate];
      input4 = [acceptedCandidate5 input];
      v212 = [candidate18 substringToIndex:{objc_msgSend(input4, "length")}];
      v213 = [documentState documentStateAfterInsertingText:v212];
      currentWord38 = [(TITypingSession *)self currentWord];
      [currentWord38 setDocumentState:v213];

      v35 = v328;
      candidate19 = [acceptedCandidate5 candidate];
      input5 = [acceptedCandidate5 input];
      v217 = [candidate19 substringFromIndex:{objc_msgSend(input5, "length")}];
      currentWord39 = [(TITypingSession *)self currentWord];
      [currentWord39 setAcceptedString:v217];

      input2 = [(TITypingSession *)self currentWord];
      acceptedString4 = [input2 acceptedString];
      v220 = [acceptedCandidate5 candidateByReplacingWithCandidate:acceptedString4 input:&stru_283FDFAF8 rawInput:&stru_283FDFAF8];
      currentWord40 = [(TITypingSession *)self currentWord];
      [currentWord40 setAcceptedCandidate:v220];
    }

    goto LABEL_119;
  }

LABEL_120:
  currentWord41 = [(TITypingSession *)self currentWord];
  acceptedString5 = [currentWord41 acceptedString];
  v224 = [acceptedString5 componentsSeparatedByString:@" "];

  if ([v224 count] >= 2)
  {
    if (!v28)
    {
      v252 = 0;
      v325 = 0;
      goto LABEL_165;
    }

    currentWord42 = [(TITypingSession *)self currentWord];
    allTouchesM5 = [currentWord42 allTouchesM];
    if ([allTouchesM5 count] < 3)
    {
      v252 = 0;
      v325 = 0;
    }

    else
    {
      v311 = v224;
      currentWord43 = [(TITypingSession *)self currentWord];
      [currentWord43 touchLayoutsM];
      v229 = v228 = allTouchesM5;
      v324 = [v229 count];
      currentWord44 = [(TITypingSession *)self currentWord];
      allTouchesM6 = [currentWord44 allTouchesM];
      v232 = [allTouchesM6 count];

      if (v324 != v232)
      {
        v252 = 0;
        v325 = 0;
        v35 = v328;
        v224 = v311;
        goto LABEL_165;
      }

      v233 = 0x277CCA000uLL;
      indexSet = [MEMORY[0x277CCAB58] indexSet];
      indexSet2 = [MEMORY[0x277CCAB58] indexSet];
      currentWord45 = [(TITypingSession *)self currentWord];
      allTouchesM7 = [currentWord45 allTouchesM];
      v236 = [allTouchesM7 count];

      v237 = (v236 - 1);
      if (v236 - 1 < 0)
      {
        v250 = 0;
        v251 = 0;
        v313 = 0;
        v307 = 0;
      }

      else
      {
        v307 = 0;
        v313 = 0;
        pathIndex2 = -1;
        pathIndex = -1;
        do
        {
          currentWord46 = [(TITypingSession *)self currentWord];
          allTouchesM8 = [currentWord46 allTouchesM];
          v242 = [allTouchesM8 objectAtIndexedSubscript:v237];

          currentWord47 = [(TITypingSession *)self currentWord];
          touchLayoutsM = [currentWord47 touchLayoutsM];
          v245 = [touchLayoutsM objectAtIndexedSubscript:v237];

          if ([v242 pathIndex] == pathIndex)
          {
            [indexSet addIndex:v237];
            if (![v242 stage])
            {
              if (!v313)
              {
                v313 = -[TITypingSession keyStringWithCode:fromLayoutIndex:](self, "keyStringWithCode:fromLayoutIndex:", [v242 forcedKeyCode], v245);
              }

              pathIndex = -2;
            }
          }

          else if ([v242 pathIndex] == pathIndex2)
          {
            [indexSet2 addIndex:v237];
            if (![v242 stage])
            {
              if (!v307)
              {
                v307 = -[TITypingSession keyStringWithCode:fromLayoutIndex:](self, "keyStringWithCode:fromLayoutIndex:", [v242 forcedKeyCode], v245);
              }

              pathIndex2 = -2;
            }
          }

          else if (pathIndex == -1)
          {
            if ([v242 stage] == 2)
            {
              [indexSet addIndex:v237];
              pathIndex = [v242 pathIndex];
              v247 = -[TITypingSession keyStringWithCode:fromLayoutIndex:](self, "keyStringWithCode:fromLayoutIndex:", [v242 forcedKeyCode], v245);

              v313 = v247;
            }

            else
            {
              pathIndex = -3;
            }
          }

          else if (pathIndex2 == -1)
          {
            if ([v242 stage] == 2)
            {
              [indexSet2 addIndex:v237];
              pathIndex2 = [v242 pathIndex];
              v246 = -[TITypingSession keyStringWithCode:fromLayoutIndex:](self, "keyStringWithCode:fromLayoutIndex:", [v242 forcedKeyCode], v245);

              v307 = v246;
            }

            else
            {
              pathIndex2 = -3;
            }
          }

          if ((pathIndex2 + 1) >= 0xFFFFFFFFFFFFFFFELL && (pathIndex + 1) >= 0xFFFFFFFFFFFFFFFELL)
          {
            break;
          }
        }

        while (v237-- > 0);
        v250 = pathIndex == -2;
        v251 = pathIndex2 == -2;
        v233 = 0x277CCA000;
      }

      indexSet3 = [*(v233 + 2904) indexSet];
      v35 = v328;
      v224 = v311;
      if (v250)
      {
        v258 = objc_msgSend_string(v28);
        v259 = objc_msgSend_isEqualToString_(v313);

        if (v259)
        {
          [indexSet3 addIndexes:indexSet];
          if (v251)
          {
            if (objc_msgSend_isEqualToString_(v307))
            {
              [indexSet3 addIndexes:indexSet2];
            }
          }
        }
      }

      if ([indexSet3 count])
      {
        currentWord48 = [(TITypingSession *)self currentWord];
        allTouchesM9 = [currentWord48 allTouchesM];
        v252 = [allTouchesM9 objectsAtIndexes:indexSet3];

        currentWord49 = [(TITypingSession *)self currentWord];
        touchLayoutsM2 = [currentWord49 touchLayoutsM];
        v325 = [touchLayoutsM2 objectsAtIndexes:indexSet3];

        currentWord50 = [(TITypingSession *)self currentWord];
        allTouchesM10 = [currentWord50 allTouchesM];
        [allTouchesM10 removeObjectsAtIndexes:indexSet3];

        currentWord51 = [(TITypingSession *)self currentWord];
        touchLayoutsM3 = [currentWord51 touchLayoutsM];
        [touchLayoutsM3 removeObjectsAtIndexes:indexSet3];
      }

      else
      {
        v252 = 0;
        v325 = 0;
      }

      currentWord42 = indexSet;

      allTouchesM5 = indexSet2;
    }

LABEL_165:
    currentWord52 = [(TITypingSession *)self currentWord];
    acceptedCandidate6 = [currentWord52 acceptedCandidate];

    currentWord53 = [(TITypingSession *)self currentWord];
    keyboardState = [currentWord53 keyboardState];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v344 = 0x3032000000;
    v345 = __Block_byref_object_copy__23396;
    v346 = __Block_byref_object_dispose__23397;
    currentWord54 = [(TITypingSession *)self currentWord];
    documentState2 = [currentWord54 documentState];

    currentWord55 = [(TITypingSession *)self currentWord];
    [currentWord55 endTime];
    v275 = v274;

    v329[0] = MEMORY[0x277D85DD0];
    v329[1] = 3221225472;
    v329[2] = __152__TITypingSession_candidateAccepted_withInput_documentState_inputContext_inputStem_predictionBarHit_useCandidateSelection_candidateIndex_keyboardState___block_invoke;
    v329[3] = &unk_2787335D0;
    v320 = acceptedCandidate6;
    v330 = v320;
    p_buf = &buf;
    v314 = keyboardState;
    v331 = v314;
    selfCopy = self;
    v333 = v224;
    v334 = v35;
    v336 = v275;
    [v333 enumerateObjectsUsingBlock:v329];
    v276 = v252;
    v277 = v325;
    if (v252 && v325)
    {
      v278 = [v252 mutableCopy];
      currentWord56 = [(TITypingSession *)self currentWord];
      [currentWord56 setAllTouchesM:v278];

      v280 = [v325 mutableCopy];
      currentWord57 = [(TITypingSession *)self currentWord];
      [currentWord57 setTouchLayoutsM:v280];
    }

    v282 = objc_msgSend_string(v28);
    v283 = [v282 endsInPunctuation] & !selection;

    if (v283 == 1)
    {
      currentWord58 = [(TITypingSession *)self currentWord];
      acceptedCandidate7 = [currentWord58 acceptedCandidate];
      currentWord59 = [(TITypingSession *)self currentWord];
      [currentWord59 acceptedCandidate];
      v285 = v312 = v224;
      candidate20 = [v285 candidate];
      v287 = objc_msgSend_string(v28);
      [candidate20 stringByAppendingString:v287];
      v288 = v315 = v276;
      v289 = [acceptedCandidate7 candidateByReplacingWithCandidate:v288];
      currentWord60 = [(TITypingSession *)self currentWord];
      [currentWord60 setAcceptedCandidate:v289];

      v35 = v328;
      v224 = v312;

      currentWord61 = [(TITypingSession *)self currentWord];
      acceptedCandidate8 = [currentWord61 acceptedCandidate];
      candidate21 = [acceptedCandidate8 candidate];
      currentWord62 = [(TITypingSession *)self currentWord];
      [currentWord62 setAcceptedString:candidate21];

      v277 = v325;
      v276 = v315;

      currentWord63 = [(TITypingSession *)self currentWord];
      [currentWord63 setIsPunctuationEntryFollowingAWord:1];
    }

    _Block_object_dispose(&buf, 8);
  }

LABEL_172:
  currentWord64 = [(TITypingSession *)self currentWord];
  [currentWord64 setOrigin:4];

  userActionHistory2 = [(TITypingSession *)self userActionHistory];
  currentWord65 = [(TITypingSession *)self currentWord];
  [userActionHistory2 addObject:currentWord65];

  stateCopy = v317;
  if (IXACanLogMessageAtLevel())
  {
    v299 = IXASessionDetailsLogFacility();
    if (os_log_type_enabled(v299, OS_LOG_TYPE_DEBUG))
    {
      v302 = MEMORY[0x277CCACA8];
      currentWord66 = [(TITypingSession *)self currentWord];
      v304 = wordEntryDetailForLog(currentWord66, 3);
      v304 = [v302 stringWithFormat:@"%s %@", "-[TITypingSession candidateAccepted:withInput:documentState:inputContext:inputStem:predictionBarHit:useCandidateSelection:candidateIndex:keyboardState:]", v304];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v304;
      _os_log_debug_impl(&dword_22CA55000, v299, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);

      stateCopy = v317;
    }
  }

  if (IXACanLogMessageAtLevel())
  {
    v300 = IXASessionDetailsLogFacility();
    if (os_log_type_enabled(v300, OS_LOG_TYPE_DEBUG))
    {
      v306 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s CA detail ----------------", "-[TITypingSession candidateAccepted:withInput:documentState:inputContext:inputStem:predictionBarHit:useCandidateSelection:candidateIndex:keyboardState:]"];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v306;
      _os_log_debug_impl(&dword_22CA55000, v300, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
    }
  }

  currentWord67 = [(TITypingSession *)self currentWord];
  [(TITypingSession *)self setLastWord:currentWord67];

  [(TITypingSession *)self resetCurrentWord];
  [(TITypingSession *)self setCandidateAcceptedTrigger:*MEMORY[0x277D6F5A8]];

LABEL_20:
}

void __152__TITypingSession_candidateAccepted_withInput_documentState_inputContext_inputStem_predictionBarHit_useCandidateSelection_candidateIndex_keyboardState___block_invoke(uint64_t a1, void *a2, char *a3)
{
  v92 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    if ([*(a1 + 56) count] - 1 <= a3)
    {
      v60 = [*(a1 + 32) candidateByReplacingWithCandidate:v5 input:&stru_283FDFAF8 rawInput:&stru_283FDFAF8];
      v61 = [*(a1 + 48) currentWord];
      [v61 setAcceptedCandidate:v60];

      v62 = [*(a1 + 48) currentWord];
      [v62 setAcceptedString:v5];

      v63 = [*(*(*(a1 + 72) + 8) + 40) copy];
      v64 = [*(a1 + 48) currentWord];
      [v64 setDocumentState:v63];

      v65 = [*(a1 + 40) copy];
      v66 = [*(a1 + 48) currentWord];
      [v66 setKeyboardState:v65];

      v67 = [*(*(*(a1 + 72) + 8) + 40) documentStateAfterInsertingText:v5];
      v68 = [*(a1 + 48) currentWord];
      v69 = [v68 keyboardState];
      [v69 setDocumentState:v67];

      v70 = [*(a1 + 48) currentWord];
      [v70 setInputStem:&stru_283FDFAF8];

      v71 = [*(a1 + 48) currentWord];
      v72 = [v71 documentState];
      v73 = [v72 contextBeforeInput];
      v74 = [*(a1 + 48) currentWord];
      [v74 setInputContext:v73];

      v75 = [MEMORY[0x277CBEB18] array];
      v76 = [*(a1 + 48) currentWord];
      [v76 setCandidatesOfferedM:v75];

      v77 = [MEMORY[0x277CBEB18] array];
      v78 = [*(a1 + 48) currentWord];
      [v78 setAllKeyboardInputsM:v77];

      v79 = [MEMORY[0x277CBEB18] array];
      v80 = [*(a1 + 48) currentWord];
      [v80 setAllTouchesM:v79];

      v81 = [MEMORY[0x277CBEB18] array];
      v82 = [*(a1 + 48) currentWord];
      [v82 setTouchLayoutsM:v81];

      v83 = *(a1 + 80);
      v84 = [*(a1 + 48) currentWord];
      [v84 setOccurenceTime:v83];

      v85 = *(a1 + 80);
      v86 = [*(a1 + 48) currentWord];
      [v86 setStartTime:v85];

      v87 = *(a1 + 80);
      v88 = [*(a1 + 48) currentWord];
      [v88 setEndTime:v87];

      goto LABEL_11;
    }

    v6 = objc_alloc_init(TIWordEntry);
    v7 = [*(a1 + 32) candidateByReplacingWithCandidate:v5 input:&stru_283FDFAF8 rawInput:&stru_283FDFAF8];
    [(TIWordEntry *)v6 setAcceptedCandidate:v7];

    v8 = [(TIWordEntry *)v6 acceptedCandidate];
    v9 = [v8 candidate];
    [(TIWordEntry *)v6 setAcceptedString:v9];

    v10 = [*(*(*(a1 + 72) + 8) + 40) copy];
    [(TIUserAction *)v6 setDocumentState:v10];

    v11 = [*(a1 + 64) copy];
    [(TIUserAction *)v6 setKeyboardState:v11];

    v12 = [*(*(*(a1 + 72) + 8) + 40) documentStateAfterInsertingText:v5];
    v13 = [(TIUserAction *)v6 keyboardState];
    [v13 setDocumentState:v12];

    v14 = [(TIUserAction *)v6 keyboardState];
    v15 = [v14 documentState];
    v16 = [v15 documentStateAfterInsertingText:@" "];
    v17 = *(*(a1 + 72) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = [*(a1 + 48) currentWord];
    -[TIWordEntry setWordEntryType:](v6, "setWordEntryType:", [v19 wordEntryType]);

    [(TIWordEntry *)v6 setInputStem:&stru_283FDFAF8];
    v20 = [(TIUserAction *)v6 documentState];
    v21 = [v20 contextBeforeInput];
    [(TIWordEntry *)v6 setInputContext:v21];

    v22 = [MEMORY[0x277CBEB18] array];
    [(TIWordEntry *)v6 setCandidatesOfferedM:v22];

    v23 = [MEMORY[0x277CBEB18] array];
    [(TIWordEntry *)v6 setAllKeyboardInputsM:v23];

    v24 = [MEMORY[0x277CBEB18] array];
    [(TIWordEntry *)v6 setAllTouchesM:v24];

    v25 = [MEMORY[0x277CBEB18] array];
    [(TIWordEntry *)v6 setTouchLayoutsM:v25];

    [(TIUserAction *)v6 setOccurenceTime:*(a1 + 80)];
    [(TIUserAction *)v6 setStartTime:*(a1 + 80)];
    [(TIUserAction *)v6 setEndTime:*(a1 + 80)];
    [(TIWordEntry *)v6 setOrigin:4];
    [*(a1 + 48) setCandidatesAccepted:{objc_msgSend(*(a1 + 48), "candidatesAccepted") + 1}];
    [*(a1 + 48) setCandidatesAcceptedWithText:{objc_msgSend(*(a1 + 48), "candidatesAcceptedWithText") + 1}];
    v26 = [*(a1 + 48) userActionHistory];
    [v26 addObject:v6];

    if (IXACanLogMessageAtLevel())
    {
      v27 = IXASessionDetailsLogFacility();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v28 = MEMORY[0x277CCACA8];
        v29 = wordEntryDetailForLog(v6, 2);
        v30 = [v28 stringWithFormat:@"%s %@", "-[TITypingSession candidateAccepted:withInput:documentState:inputContext:inputStem:predictionBarHit:useCandidateSelection:candidateIndex:keyboardState:]_block_invoke", v29];
        *buf = 138412290;
        v91 = v30;
LABEL_13:
        _os_log_debug_impl(&dword_22CA55000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

        goto LABEL_8;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v6 = objc_alloc_init(TIWordEntry);
    v31 = [*(a1 + 32) candidateByReplacingWithCandidate:v5];
    [(TIWordEntry *)v6 setAcceptedCandidate:v31];

    v32 = [(TIWordEntry *)v6 acceptedCandidate];
    v33 = [v32 candidate];
    [(TIWordEntry *)v6 setAcceptedString:v33];

    v34 = [*(*(*(a1 + 72) + 8) + 40) copy];
    [(TIUserAction *)v6 setDocumentState:v34];

    v35 = [*(a1 + 40) copy];
    [(TIUserAction *)v6 setKeyboardState:v35];

    v36 = [*(*(*(a1 + 72) + 8) + 40) documentStateAfterInsertingText:v5];
    v37 = [(TIUserAction *)v6 keyboardState];
    [v37 setDocumentState:v36];

    v38 = [(TIUserAction *)v6 keyboardState];
    v39 = [v38 documentState];
    v40 = [v39 documentStateAfterInsertingText:@" "];
    v41 = *(*(a1 + 72) + 8);
    v42 = *(v41 + 40);
    *(v41 + 40) = v40;

    v43 = [*(a1 + 48) currentWord];
    -[TIWordEntry setWordEntryType:](v6, "setWordEntryType:", [v43 wordEntryType]);

    v44 = [*(a1 + 48) currentWord];
    v45 = [v44 inputStem];
    [(TIWordEntry *)v6 setInputStem:v45];

    v46 = [*(a1 + 48) currentWord];
    v47 = [v46 inputContext];
    [(TIWordEntry *)v6 setInputContext:v47];

    v48 = [*(a1 + 48) currentWord];
    v49 = [v48 candidatesOfferedM];
    [(TIWordEntry *)v6 setCandidatesOfferedM:v49];

    v50 = [*(a1 + 48) currentWord];
    v51 = [v50 allKeyboardInputsM];
    [(TIWordEntry *)v6 setAllKeyboardInputsM:v51];

    v52 = [*(a1 + 48) currentWord];
    v53 = [v52 allTouchesM];
    [(TIWordEntry *)v6 setAllTouchesM:v53];

    v54 = [*(a1 + 48) currentWord];
    v55 = [v54 touchLayoutsM];
    [(TIWordEntry *)v6 setTouchLayoutsM:v55];

    v56 = [*(a1 + 48) currentWord];
    [v56 occurenceTime];
    [(TIUserAction *)v6 setOccurenceTime:?];

    v57 = [*(a1 + 48) currentWord];
    [v57 startTime];
    [(TIUserAction *)v6 setStartTime:?];

    v58 = [*(a1 + 48) currentWord];
    [v58 endTime];
    [(TIUserAction *)v6 setEndTime:?];

    [(TIWordEntry *)v6 setOrigin:4];
    [*(a1 + 48) setCandidatesAccepted:{objc_msgSend(*(a1 + 48), "candidatesAccepted") + 1}];
    [*(a1 + 48) setCandidatesAcceptedWithText:{objc_msgSend(*(a1 + 48), "candidatesAcceptedWithText") + 1}];
    v59 = [*(a1 + 48) userActionHistory];
    [v59 addObject:v6];

    if (IXACanLogMessageAtLevel())
    {
      v27 = IXASessionDetailsLogFacility();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v89 = MEMORY[0x277CCACA8];
        v29 = wordEntryDetailForLog(v6, 1);
        v30 = [v89 stringWithFormat:@"%s %@", "-[TITypingSession candidateAccepted:withInput:documentState:inputContext:inputStem:predictionBarHit:useCandidateSelection:candidateIndex:keyboardState:]_block_invoke", v29];
        *buf = 138412290;
        v91 = v30;
        goto LABEL_13;
      }

LABEL_8:
    }
  }

LABEL_11:
}

- (void)acceptingCandidateWithTrigger:(id)trigger
{
  v10 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  if (IXACanLogMessageAtLevel())
  {
    v5 = IXASessionEventsLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      triggerCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TA trigger: %@", "-[TITypingSession acceptingCandidateWithTrigger:]", triggerCopy];
      *buf = 138412290;
      v9 = triggerCopy;
      _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  candidateAcceptedTrigger = self->_candidateAcceptedTrigger;
  self->_candidateAcceptedTrigger = triggerCopy;
}

- (void)candidatesOffered:(id)offered keyboardState:(id)state
{
  v20 = *MEMORY[0x277D85DE8];
  offeredCopy = offered;
  stateCopy = state;
  if (IXACanLogMessageAtLevel())
  {
    v8 = IXASessionEventsLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v13 = MEMORY[0x277CCACA8];
      corrections = [offeredCopy corrections];
      autocorrection = [corrections autocorrection];
      predictions = [offeredCopy predictions];
      v17 = [v13 stringWithFormat:@"%s CO autocorrection: %@ predictions: %@", "-[TITypingSession candidatesOffered:keyboardState:]", autocorrection, predictions];
      *buf = 138412290;
      v19 = v17;
      _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  if (([stateCopy secureTextEntry] & 1) == 0 && !-[TITypingSession didReceiveSecureFieldEvent](self, "didReceiveSecureFieldEvent"))
  {
    corrections2 = [offeredCopy corrections];
    autocorrection2 = [corrections2 autocorrection];
    if (autocorrection2)
    {
    }

    else
    {
      predictions2 = [offeredCopy predictions];

      if (!predictions2)
      {
        goto LABEL_12;
      }
    }

    currentWord = [(TITypingSession *)self currentWord];
    [currentWord addCandidateOffered:offeredCopy];

    [(NSMutableArray *)self->_cachedCandidatesOffered addObject:offeredCopy];
    [(TITypingSession *)self updateCachedStateBeforeFirstInputWithKeyboardState:stateCopy];
    goto LABEL_12;
  }

  [(TITypingSession *)self setDidReceiveSecureFieldEvent:1];
LABEL_12:
}

- (void)layoutDidChange:(id)change keyboardState:(id)state
{
  v25 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  stateCopy = state;
  if (IXACanLogMessageAtLevel())
  {
    v8 = IXASessionEventsLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s LC firstKeyString: '%s'", "-[TITypingSession layoutDidChange:keyboardState:]", objc_msgSend(changeCopy, "firstKeyString")];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v13;
      _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
    }
  }

  if (([stateCopy secureTextEntry] & 1) != 0 || -[TITypingSession didReceiveSecureFieldEvent](self, "didReceiveSecureFieldEvent"))
  {
    [(TITypingSession *)self setDidReceiveSecureFieldEvent:1];
  }

  else if (changeCopy)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v23 = 0x2020000000;
    v24 = 1;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = -1;
    layouts = [(TITypingSession *)self layouts];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__TITypingSession_layoutDidChange_keyboardState___block_invoke;
    v14[3] = &unk_2787335A8;
    v10 = changeCopy;
    v15 = v10;
    p_buf = &buf;
    v17 = &v18;
    [layouts enumerateObjectsUsingBlock:v14];

    if (*(*(&buf + 1) + 24) == 1)
    {
      [(NSMutableArray *)self->_layouts addObject:v10];
      layouts2 = [(TITypingSession *)self layouts];
      v12 = [layouts2 count];
      v19[3] = v12 - 1;
    }

    [(TITypingSession *)self setCurrentLayoutID:v19[3]];
    [(TITypingSession *)self updateCachedStateBeforeFirstInputWithKeyboardState:stateCopy];

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&buf, 8);
  }
}

void *__49__TITypingSession_layoutDidChange_keyboardState___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) isEqual:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *(*(*(a1 + 48) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (void)addTouchEvent:(id)event
{
  v49 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (IXACanLogMessageAtLevel())
  {
    v6 = IXASessionEventsLogFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      eventCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TO touch: %@", "-[TITypingSession addTouchEvent:]", eventCopy];
      *buf = 138412290;
      v48 = eventCopy;
      _os_log_debug_impl(&dword_22CA55000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  if (![(TITypingSession *)self didReceiveSecureFieldEvent])
  {
    if (!self->_timeCalibrationTouch)
    {
      objc_storeStrong(&self->_timeCalibrationTouch, event);
      self->_calibratedTimeBase = CFAbsoluteTimeGetCurrent();
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v7 = self->_userActionHistory;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v42;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v42 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v41 + 1) + 8 * i);
            [eventCopy timestamp];
            v14 = v13;
            calibratedTimeBase = self->_calibratedTimeBase;
            [v12 occurenceTime];
            [v12 setOccurenceTime:v14 - (calibratedTimeBase + v16)];
          }

          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v9);
      }
    }

    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel)
    {
      v17 = TIOSLogFacility();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v33 = MEMORY[0x277CCACA8];
        [eventCopy timestamp];
        v35 = [v33 stringWithFormat:@"%s touch %lf", "-[TITypingSession addTouchEvent:]", v34];
        *buf = 138412290;
        v48 = v35;
        _os_log_debug_impl(&dword_22CA55000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v18 = objc_alloc_init(TIKBSessionTouchInfo);
    [(TIKBSessionTouchInfo *)v18 setTouch:eventCopy];
    [(TIKBSessionTouchInfo *)v18 setLayoutId:self->_currentLayoutID];
    touchesHistory = [(TITypingSession *)self touchesHistory];
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(eventCopy, "pathIndex")}];
    v21 = [touchesHistory objectForKey:v20];

    if (![eventCopy stage])
    {
      array = [MEMORY[0x277CBEB18] array];

      v21 = array;
    }

    [v21 addObject:v18];
    if ([eventCopy stage] == 2)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      touchesHistory2 = v21;
      v24 = [touchesHistory2 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v24)
      {
        v25 = v24;
        v36 = v18;
        v26 = *v38;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v38 != v26)
            {
              objc_enumerationMutation(touchesHistory2);
            }

            v28 = *(*(&v37 + 1) + 8 * j);
            currentWord = [(TITypingSession *)self currentWord];
            touch = [v28 touch];
            [currentWord addTouchEvent:touch withLayoutId:{objc_msgSend(v28, "layoutId")}];
          }

          v25 = [touchesHistory2 countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v25);
        v18 = v36;
      }
    }

    else
    {
      if (!v21)
      {
LABEL_35:

        goto LABEL_36;
      }

      touchesHistory2 = [(TITypingSession *)self touchesHistory];
      v31 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(eventCopy, "pathIndex")}];
      [touchesHistory2 setObject:v21 forKey:v31];
    }

    goto LABEL_35;
  }

LABEL_36:
}

- (void)addDrawInputWithSyllableCount:(unint64_t)count keyboardState:(id)state
{
  stateCopy = state;
  if (([stateCopy secureTextEntry] & 1) != 0 || -[TITypingSession didReceiveSecureFieldEvent](self, "didReceiveSecureFieldEvent"))
  {
    [(TITypingSession *)self setDidReceiveSecureFieldEvent:1];
  }

  else
  {
    v6 = [[TIPathAction alloc] initWithSyllableCount:count keyboardState:stateCopy];
    [(TITypingSession *)self calibratedCurrentTimestamp];
    [(TIUserAction *)v6 setOccurenceTime:?];
    userActionHistory = [(TITypingSession *)self userActionHistory];
    [userActionHistory addObject:v6];
  }
}

- (void)addKeyInput:(id)input keyboardState:(id)state
{
  v18 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  stateCopy = state;
  if (IXACanLogMessageAtLevel())
  {
    v8 = IXASessionEventsLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      inputCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s KI input: %@", "-[TITypingSession addKeyInput:keyboardState:]", inputCopy];
      *buf = 138412290;
      v17 = inputCopy;
      _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  if (([stateCopy secureTextEntry] & 1) != 0 || -[TITypingSession didReceiveSecureFieldEvent](self, "didReceiveSecureFieldEvent"))
  {
    [(TITypingSession *)self setDidReceiveSecureFieldEvent:1];
  }

  else
  {
    if ([(TITypingSession *)self includeInputToLastWord])
    {
      lastWord = [(TITypingSession *)self lastWord];
      [lastWord addKeyInput:inputCopy];

      [(TITypingSession *)self setLastWord:0];
    }

    else if ([(TITypingSession *)self includeInputToLastDeletion])
    {
      lastDeletion = [(TITypingSession *)self lastDeletion];
      [lastDeletion addKeyInput:inputCopy];

      [(TITypingSession *)self setLastDeletion:0];
    }

    else
    {
      currentWord = [(TITypingSession *)self currentWord];
      [currentWord addKeyInput:inputCopy];

      currentWord2 = [(TITypingSession *)self currentWord];
      [currentWord2 setKeyboardState:stateCopy];

      [(TITypingSession *)self updateCachedStateAfterLastInputWithKeyboardState:stateCopy];
    }

    [(TITypingSession *)self setIncludeInputToLastWord:0];
    [(TITypingSession *)self setIncludeInputToLastDeletion:0];
    [(TITypingSession *)self setLastInput:inputCopy];
    if ([inputCopy isBackspace])
    {
      selfCopy2 = self;
      v14 = stateCopy;
    }

    else
    {
      selfCopy2 = self;
      v14 = 0;
    }

    [(TITypingSession *)selfCopy2 setSavedDeleteInputKeyboardState:v14];
  }
}

- (BOOL)testForRapidDeleteContextChange:(id)change
{
  changeCopy = change;
  savedDeleteInputKeyboardState = [(TITypingSession *)self savedDeleteInputKeyboardState];

  if (savedDeleteInputKeyboardState)
  {
    documentState = [changeCopy documentState];
    savedDeleteInputKeyboardState2 = [(TITypingSession *)self savedDeleteInputKeyboardState];
    documentState2 = [savedDeleteInputKeyboardState2 documentState];

    contextAfterInput = [documentState contextAfterInput];
    if (!contextAfterInput)
    {
      contextAfterInput2 = [documentState2 contextAfterInput];
      if (contextAfterInput2)
      {
        contextBeforeInput2 = contextAfterInput2;
        v13 = 0;
LABEL_17:

        goto LABEL_18;
      }
    }

    contextAfterInput3 = [documentState contextAfterInput];
    if (!contextAfterInput3 || ([documentState2 contextAfterInput], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      contextAfterInput4 = [documentState contextAfterInput];
      if (contextAfterInput4)
      {
        v17 = contextAfterInput4;
        contextAfterInput5 = [documentState2 contextAfterInput];
        contextAfterInput6 = [documentState contextAfterInput];
        v12 = objc_msgSend_isEqualToString_(contextAfterInput5) ^ 1;

        if (!contextAfterInput3)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v12 = 0;
        if (!contextAfterInput3)
        {
LABEL_12:

          if ((v12 & 1) == 0)
          {
            contextBeforeInput = [documentState contextBeforeInput];
            if (!contextBeforeInput || (v21 = contextBeforeInput, [documentState contextBeforeInput], v22 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v22), v22, v21, isEqualToString))
            {
              contextBeforeInput2 = [documentState2 contextBeforeInput];
              v13 = [contextBeforeInput2 length] > 1;
              goto LABEL_17;
            }

            contextBeforeInput3 = [documentState2 contextBeforeInput];
            contextBeforeInput4 = [documentState contextBeforeInput];
            v27 = [contextBeforeInput3 hasPrefix:contextBeforeInput4];

            if (v27)
            {
              contextBeforeInput2 = [documentState2 contextBeforeInput];
              v28 = [contextBeforeInput2 length];
              contextBeforeInput5 = [documentState contextBeforeInput];
              v13 = (v28 - [contextBeforeInput5 length]) > 1;

              goto LABEL_17;
            }
          }

          v13 = 0;
LABEL_18:

          goto LABEL_19;
        }
      }
    }

    else
    {
      v12 = 1;
    }

    goto LABEL_12;
  }

  v13 = 0;
LABEL_19:

  return v13;
}

- (void)updateCachedStateAfterLastInputWithKeyboardState:(id)state
{
  stateCopy = state;
  [(TITypingSession *)self updateCachedStateBeforeFirstInputWithKeyboardState:stateCopy];
  v4 = stateCopy;
  if (stateCopy)
  {
    cachedKeyboardStates = self->_cachedKeyboardStates;
    v6 = [stateCopy copy];
    [(NSMutableArray *)cachedKeyboardStates addObject:v6];

    v4 = stateCopy;
  }
}

- (void)updateCachedStateBeforeFirstInputWithKeyboardState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (stateCopy)
  {
    v8 = stateCopy;
    stateCopy = [(NSMutableArray *)self->_cachedKeyboardStates count];
    v5 = v8;
    if (!stateCopy)
    {
      cachedKeyboardStates = self->_cachedKeyboardStates;
      v7 = [v8 copy];
      [(NSMutableArray *)cachedKeyboardStates addObject:v7];

      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](stateCopy, v5);
}

- (void)resetCurrentWord
{
  currentWord = self->_currentWord;
  self->_currentWord = 0;

  [(NSMutableArray *)self->_cachedKeyboardStates removeAllObjects];
  cachedCandidatesOffered = self->_cachedCandidatesOffered;

  [(NSMutableArray *)cachedCandidatesOffered removeAllObjects];
}

- (TIWordEntry)currentWord
{
  currentWord = self->_currentWord;
  if (!currentWord)
  {
    v4 = objc_alloc_init(TIWordEntry);
    v5 = self->_currentWord;
    self->_currentWord = v4;

    currentWord = self->_currentWord;
  }

  return currentWord;
}

- (void)endSessionWithTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  [(TITypingSession *)self handleUncommittedWord];
  [(TITypingSession *)self setEndTime:timestampCopy];
}

- (NSUUID)sessionId
{
  sessionId = self->_sessionId;
  if (!sessionId)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    v5 = self->_sessionId;
    self->_sessionId = uUID;

    sessionId = self->_sessionId;
  }

  v6 = sessionId;

  return v6;
}

- (NSString)description
{
  userActionHistory = [(TITypingSession *)self userActionHistory];
  v3 = [userActionHistory componentsJoinedByString:@" "];;

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  userActionHistory = self->_userActionHistory;
  coderCopy = coder;
  [coderCopy encodeObject:userActionHistory forKey:@"userActionHistory"];
  [coderCopy encodeObject:self->_layoutName forKey:@"layoutName"];
  [coderCopy encodeObject:self->_startContext forKey:@"startContext"];
  [coderCopy encodeObject:self->_layouts forKey:@"layouts"];
  [coderCopy encodeObject:self->_locale forKey:@"locale"];
  [coderCopy encodeObject:self->_startTime forKey:@"startTime"];
  [coderCopy encodeObject:self->_endTime forKey:@"endTime"];
  [coderCopy encodeObject:self->_sessionId forKey:@"sessionId"];
  [coderCopy encodeObject:self->_applicationID forKey:@"applicationID"];
  [coderCopy encodeBool:self->_didReceiveSecureFieldEvent forKey:@"didReceiveSecureFieldEvent"];
  [coderCopy encodeBool:self->_candidatesAccepted != 0 forKey:@"candidatesAccepted"];
  [coderCopy encodeBool:self->_candidatesAcceptedWithText != 0 forKey:@"candidatesAcceptedWithText"];
}

- (TITypingSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = TITypingSession;
  v5 = [(TITypingSession *)&v36 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"userActionHistory"];
    userActionHistory = v5->_userActionHistory;
    v5->_userActionHistory = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"layoutName"];
    layoutName = v5->_layoutName;
    v5->_layoutName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startContext"];
    startContext = v5->_startContext;
    v5->_startContext = v16;

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"layouts"];
    layouts = v5->_layouts;
    v5->_layouts = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
    startTime = v5->_startTime;
    v5->_startTime = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endTime"];
    endTime = v5->_endTime;
    v5->_endTime = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionId"];
    sessionId = v5->_sessionId;
    v5->_sessionId = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationID"];
    applicationID = v5->_applicationID;
    v5->_applicationID = v31;

    v5->_didReceiveSecureFieldEvent = [coderCopy decodeBoolForKey:@"didReceiveSecureFieldEvent"];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    touchesHistory = v5->_touchesHistory;
    v5->_touchesHistory = dictionary;

    v5->_candidatesAccepted = [coderCopy decodeIntForKey:@"candidatesAccepted"];
    v5->_candidatesAcceptedWithText = [coderCopy decodeIntForKey:@"candidatesAcceptedWithText"];
  }

  return v5;
}

- (TITypingSession)initWithLocale:(id)locale keyboardLayout:(id)layout
{
  localeCopy = locale;
  layoutCopy = layout;
  v27.receiver = self;
  v27.super_class = TITypingSession;
  v9 = [(TITypingSession *)&v27 init];
  if (v9)
  {
    array = [MEMORY[0x277CBEB18] array];
    userActionHistory = v9->_userActionHistory;
    v9->_userActionHistory = array;

    array2 = [MEMORY[0x277CBEB18] array];
    layouts = v9->_layouts;
    v9->_layouts = array2;

    objc_storeStrong(&v9->_locale, locale);
    date = [MEMORY[0x277CBEAA8] date];
    startTime = v9->_startTime;
    v9->_startTime = date;

    uUID = [MEMORY[0x277CCAD78] UUID];
    sessionId = v9->_sessionId;
    v9->_sessionId = uUID;

    timeCalibrationTouch = v9->_timeCalibrationTouch;
    v9->_timeCalibrationTouch = 0;
    v9->_calibratedTimeBase = 0.0;

    savedDeleteInputKeyboardState = v9->_savedDeleteInputKeyboardState;
    v9->_savedDeleteInputKeyboardState = 0;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    touchesHistory = v9->_touchesHistory;
    v9->_touchesHistory = dictionary;

    if (layoutCopy)
    {
      [(NSMutableArray *)v9->_layouts addObject:layoutCopy];
      v9->_currentLayoutID = 0;
    }

    objc_storeStrong(&v9->_contextChangeTrigger, *MEMORY[0x277D6F5F8]);
    objc_storeStrong(&v9->_candidateAcceptedTrigger, *MEMORY[0x277D6F5A8]);
    v9->_candidatesAccepted = 0;
    v9->_candidatesAcceptedWithText = 0;
    array3 = [MEMORY[0x277CBEB18] array];
    cachedKeyboardStates = v9->_cachedKeyboardStates;
    v9->_cachedKeyboardStates = array3;

    array4 = [MEMORY[0x277CBEB18] array];
    cachedCandidatesOffered = v9->_cachedCandidatesOffered;
    v9->_cachedCandidatesOffered = array4;
  }

  return v9;
}

- (TITypingSession)init
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [(TITypingSession *)self initWithLocale:currentLocale keyboardLayout:0];

  return v4;
}

@end