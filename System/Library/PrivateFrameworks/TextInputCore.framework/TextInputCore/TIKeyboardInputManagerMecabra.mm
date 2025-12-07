@interface TIKeyboardInputManagerMecabra
+ (id)dummyGeometryData;
+ (id)initializedClients;
+ (id)inputMethodWithChainedKeyboardInputManager:(id)manager;
+ (id)offlineLearningHandleForInputMode:(id)mode;
+ (void)removeDynamicDictionaryForInputMode:(id)mode;
- (BOOL)_adjustPhraseBoundaryInForwardDirection:(BOOL)direction granularity:(int)granularity;
- (BOOL)alreadyGeneratedCandidates;
- (BOOL)isProgressivelyPathing;
- (BOOL)shouldClearInputOnMarkedTextOutOfSync;
- (BOOL)shouldDelayUpdateComposedText;
- (BOOL)shouldInsertSpaceBeforePredictions;
- (BOOL)shouldUpdateLanguageModel;
- (BOOL)stringContainsActiveSupplementalLexiconSearchPrefix:(id)prefix;
- (BOOL)stringEndsWord:(id)word;
- (BOOL)syncToKeyboardState:(id)state completionHandler:(id)handler;
- (BOOL)updateLanguageModelForKeyboardState;
- (BOOL)usesContinuousPath;
- (CGRect)baseCharacterKeysLayoutFrame;
- (CGRect)currentCharacterKeysLayoutFrame;
- (MCKeyboardInput)composingInput;
- (NSCharacterSet)validCharacterSetForAutocorrection;
- (NSMutableArray)geometryDataArray;
- (NSMutableArray)touchDataArray;
- (RefPtr<TI::Favonius::KeyboardLayout>)baseCharacterKeysLayout;
- (RefPtr<TI::Favonius::KeyboardLayout>)characterKeysLayoutFrom:(const void *)from;
- (RefPtr<TI::Favonius::KeyboardLayout>)currentCharacterKeysLayout;
- (RefPtr<TI::Favonius::KeyboardLayout>)currentLayout;
- (TIKeyboardInputManagerMecabra)initWithConfig:(id)config keyboardState:(id)state;
- (TIKeyboardInputManagerMecabra)initWithKeyboardInputManagerToChain:(id)chain;
- (_NSRange)analysisStringRange;
- (__Mecabra)mecabra;
- (id).cxx_construct;
- (id)_convertInputsToSyntheticInputUptoCount:(int)count cursorIndex:(id)index;
- (id)_convertInputsToSyntheticInputWithOffset:(unint64_t)offset;
- (id)adaptationContextReadingForReanalysisString:(id)string fromRecentlyCommittedCandidates:(id)candidates;
- (id)addInput:(id)input flags:(unsigned int)flags point:(CGPoint)point firstDelete:(unint64_t *)delete;
- (id)autocorrectionListFromWordSearchCandidateResultSet:(id)set emojiCandidates:(id)candidates;
- (id)autocorrectionListWithCandidateCount:(unint64_t)count;
- (id)candidateResultSetFromWordSearchCandidateResultSet:(id)set;
- (id)didAcceptCandidate:(id)candidate;
- (id)generateRefinementsForCandidate:(id)candidate;
- (id)generateReplacementsForString:(id)string keyLayout:(id)layout;
- (id)geometryModelData;
- (id)handleAcceptedCandidate:(id)candidate keyboardState:(id)state;
- (id)handleKeyboardInput:(id)input;
- (id)inputsToReject;
- (id)keyboardConfiguration;
- (id)lexiconLocaleOfCandidate:(void *)candidate;
- (id)pathedWordSeparator;
- (id)processAcceptedCandidate:(id)candidate;
- (id)segmentsFromCandidate:(id)candidate phraseBoundary:(BOOL)boundary;
- (id)touchDataForPathIndex:(int64_t)index;
- (int)mecabraTextContentTypeFromTITextContentType:(id)type;
- (int64_t)addTouch:(id)touch shouldHitTest:(BOOL)test;
- (int64_t)performHitTestForTouchEvent:(id)event keyboardState:(id)state;
- (pair<NSString)_supplementalItemIdentifiersInCurrentSelection;
- (unint64_t)inputIndexWithDrawInput;
- (void)_completeComposition:(BOOL)composition;
- (void)_replaceComposingInputWithSyntheticInput:(id)input internalIndex:(unint64_t)index;
- (void)addProactiveTriggers:(id)triggers withCompletionHandler:(id)handler;
- (void)addStickers:(id)stickers withCompletionHandler:(id)handler;
- (void)adjustPhraseBoundaryInForwardDirection:(BOOL)direction;
- (void)adjustPhraseBoundaryInForwardDirection:(BOOL)direction granularity:(int)granularity;
- (void)cancelComposition;
- (void)candidateRejected:(id)rejected;
- (void)clearInput;
- (void)completeComposition;
- (void)composeTextWith:(id)with;
- (void)dealloc;
- (void)deleteFromInputWithContext:(id)context;
- (void)dropInputPrefix:(unsigned int)prefix;
- (void)generateAutocorrectionsWithKeyboardState:(id)state candidateRange:(_NSRange)range candidateHandler:(id)handler;
- (void)generateCandidatesWithKeyboardState:(id)state candidateRange:(_NSRange)range candidateHandler:(id)handler;
- (void)handlePerformBackgroundMaintenanceNotification;
- (void)incrementUsageTrackingKeysForDeleteFromInput;
- (void)insertDummyGeometryDataAtIndex:(unint64_t)index;
- (void)insertDummyTouchDataAtIndex:(unint64_t)index;
- (void)keyLayoutWillChangeTo:(id)to from:(id)from;
- (void)lastAcceptedCandidateCorrected;
- (void)logAllCandidates;
- (void)logCommittedCandidate:(id)candidate partial:(BOOL)partial;
- (void)logDocumentContext;
- (void)logInputString;
- (void)mecabraCandidateRefFromCandidate:(id)candidate;
- (void)padGeometryForInput:(id)input atIndex:(unint64_t)index;
- (void)processDeleteInputs;
- (void)registerLearning:(id)learning fullCandidate:(id)candidate keyboardState:(id)state mode:(id)mode;
- (void)registerLearningForCompletion:(id)completion fullCompletion:(id)fullCompletion context:(id)context prefix:(id)prefix mode:(id)mode;
- (void)restoreGeometryForInput:(id)input atIndex:(unint64_t)index;
- (void)resume;
- (void)saveGeometryForInput:(id)input atIndex:(unint64_t)index;
- (void)savePartialGeometryData;
- (void)saveTouchDataForEvent:(id)event atIndex:(unint64_t)index;
- (void)setInTypeToSiriMode:(BOOL)mode;
- (void)setKeyboardState:(id)state;
- (void)setLanguageModelAdaptationContext;
- (void)setOriginalInput:(id)input;
- (void)skipHitTestForTouchEvent:(id)event keyboardState:(id)state;
- (void)storeLanguageModelDynamicDataIncludingCache;
- (void)suspend;
- (void)syncMarkedTextForKeyboardState:(id)state afterContextChange:(BOOL)change;
- (void)syncToKeyboardState:(id)state from:(id)from afterContextChange:(BOOL)change;
- (void)tearDown;
- (void)textAccepted:(id)accepted fromPredictiveInputBar:(BOOL)bar withInput:(id)input;
- (void)updateComposedText;
- (void)updateDocumentContext;
- (void)updateProactiveCandidatesForCandidateResultSet:(id)set withInput:(id)input;
- (void)updateUsageStatisticsForCandidate:(id)candidate isPartial:(BOOL)partial;
@end

@implementation TIKeyboardInputManagerMecabra

- (id).cxx_construct
{
  *(self + 84) = 0;
  *(self + 85) = 0;
  *(self + 94) = 0;
  return self;
}

- (RefPtr<TI::Favonius::KeyboardLayout>)currentLayout
{
  compositionCompletionHandler = self->_compositionCompletionHandler;
  *v2 = compositionCompletionHandler;
  if (compositionCompletionHandler)
  {
    atomic_fetch_add(compositionCompletionHandler, 1u);
  }

  return self;
}

- (void)processDeleteInputs
{
  selfCopy = self;
  composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
  inputs = [composingInput inputs];
  v5 = [inputs count];

  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0x27872D000uLL;
    v84 = selfCopy;
    while (1)
    {
      composingInput2 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
      inputs2 = [composingInput2 inputs];
      v11 = [inputs2 objectAtIndexedSubscript:v6];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

LABEL_24:

      v7 = (v7 + 1);
      v6 = v7;
      composingInput3 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
      inputs3 = [composingInput3 inputs];
      v34 = [inputs3 count];

      if (v34 <= v7)
      {
        return;
      }
    }

    v12 = v11;
    composingInput4 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
    v14 = composingInput4;
    v15 = (v7 - 1);
    if (v7 < 1)
    {
      [composingInput4 removeInputAtIndex:v6];
      v17 = v14;
      goto LABEL_13;
    }

    inputs4 = [composingInput4 inputs];
    v17 = [inputs4 objectAtIndexedSubscript:(v7 - 1)];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v12 shouldDeleteAcceptCandidateInput])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v31 = [(TIKeyboardInputManagerMecabra *)selfCopy convertInputsToSyntheticInputUptoCount:v7];
          LODWORD(v7) = 0;
          goto LABEL_23;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v35 = v17;
          syllables = [v35 syllables];
          v37 = [syllables mutableCopy];

          committedText = [v35 committedText];
          v86 = [committedText mutableCopy];

          v39 = v35;
          v87 = 0;
          v40 = [v35 syllableIndex:&v87];
          v83 = v37;
          v41 = [v37 count];
          v42 = v35;
          if (!v41 || v40 < 0)
          {
            deleteBySyllable = [v12 deleteBySyllable];
            v44 = 0;
            v48 = 0;
            if (!deleteBySyllable)
            {
              goto LABEL_58;
            }
          }

          else
          {
            v43 = v87;
            if (([v12 deleteBySyllable] & 1) == 0)
            {
              if ((v43 & 0x80000000) == 0)
              {
LABEL_46:
                v58 = [v83 objectAtIndexedSubscript:v40];
                v62 = v40;
                [v83 removeObjectAtIndex:v40];
                if (v87 > 0)
                {
                  v60 = [v58 substringWithRange:{(v87 - 1), 1}];
                  v63 = [v58 mutableCopy];
                  [v63 deleteCharactersInRange:{v87 - 1, 1}];
                  if ([v63 length])
                  {
                    [v83 insertObject:v63 atIndex:v62];
                  }

                  v48 = 0;
                  goto LABEL_53;
                }
              }

LABEL_56:
              v48 = 0;
              goto LABEL_57;
            }

            v44 = v43 >= 0;
            v39 = v35;
          }

          v82 = v44;
          inputs5 = [v39 inputs];
          v50 = [inputs5 count];

          if (v50)
          {
            inputs6 = [v42 inputs];
            v52 = [inputs6 count];

            v53 = v52 - 1;
            while ((v53 & 0x80000000) == 0)
            {
              inputs7 = [v42 inputs];
              v55 = [inputs7 objectAtIndexedSubscript:v53];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {

                if (v82)
                {
                  goto LABEL_41;
                }

                goto LABEL_51;
              }

              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              --v53;
              if (isKindOfClass)
              {
                if (v82)
                {
                  goto LABEL_46;
                }

                goto LABEL_56;
              }
            }
          }

          if (v82)
          {
LABEL_41:
            v57 = v40;
            v58 = [v83 objectAtIndexedSubscript:v40];
            [v83 removeObjectAtIndex:v40];
            v59 = v87;
            if ([v58 length] <= v59)
            {
              v58 = v58;
              v48 = 1;
              v60 = v58;
            }

            else
            {
              v60 = [v58 substringToIndex:v87];
              v61 = [v58 substringFromIndex:v87];
              if ([v61 length])
              {
                [v83 insertObject:v61 atIndex:v57];
              }

              v48 = 1;
            }

LABEL_53:
            v39 = v42;

            if (v60)
            {
              goto LABEL_64;
            }

            goto LABEL_58;
          }

LABEL_51:
          v48 = 1;
LABEL_57:
          v39 = v42;
LABEL_58:
          if ([v86 length])
          {
            v64 = v39;
            cursorIndex = [v39 cursorIndex];
            if (cursorIndex >= [v86 length])
            {
              cursorIndex2 = [v86 length];
            }

            else
            {
              cursorIndex2 = [v64 cursorIndex];
            }

            v67 = [v86 rangeOfComposedCharacterSequenceAtIndex:cursorIndex2 - 1];
            v69 = v68;
            v60 = [v86 substringWithRange:{v67, v68}];
            [v86 deleteCharactersInRange:{v67, v69}];
            v39 = v42;
          }

          else
          {
            v60 = 0;
          }

LABEL_64:
          v70 = [v39 syntheticInputWithCommittedText:v86 syllables:v83];
          v71 = v39;
          v72 = v70;
          v7 = [v70 syntheticInputWithCursorIndex:{objc_msgSend(v71, "cursorIndex") - objc_msgSend(v60, "length")}];

          [v7 setIncludeSuffixAsSearchString:1];
          v73 = -[MCDeleteInput initWithDeletedText:deleteBySyllable:shouldDeleteAcceptCandidateInput:]([MCDeleteInput alloc], "initWithDeletedText:deleteBySyllable:shouldDeleteAcceptCandidateInput:", v60, v48, [v12 shouldDeleteAcceptCandidateInput]);
          [v7 composeNew:v73];
          composingInput5 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
          [composingInput5 removeInputAtIndex:v6];

          composingInput6 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
          [composingInput6 removeInputAtIndex:v15];

          text = [v7 text];
          v77 = [text length];

          if (v77)
          {
            composingInput7 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
            [composingInput7 insertInput:v7 atIndex:v15];

            composingInput8 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
            v79ComposingInput = [composingInput8 composingInput];

            if (!v79ComposingInput)
            {
              composingInput9 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
              [composingInput9 setComposingInput:v7];
            }
          }

          v17 = v42;
          LODWORD(v7) = 0;
          v8 = 0x27872D000;
          goto LABEL_23;
        }

        [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
        v46 = v45 = v17;
        [v46 removeInputAtIndex:v6];

        v17 = v45;
LABEL_13:
        LODWORD(v7) = v15;
LABEL_23:

        goto LABEL_24;
      }
    }

    v85 = v17;
    composingInput10 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
    [composingInput10 removeInputAtIndex:v6];

    composingInput11 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
    [composingInput11 removeInputAtIndex:(v7 - 1)];

    if (v7 <= 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = v7;
    }

    v7 = (v20 - 2);
    composingInput12 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
    inputs8 = [composingInput12 inputs];
    if ([inputs8 count] <= v7)
    {
    }

    else
    {
      composingInput13 = [(TIKeyboardInputManagerMecabra *)selfCopy composingInput];
      inputs9 = [composingInput13 inputs];
      [inputs9 objectAtIndexedSubscript:v7];
      v25 = v12;
      v27 = v26 = v8;
      objc_opt_class();
      v28 = objc_opt_isKindOfClass();

      v8 = v26;
      v12 = v25;

      if ((v28 & 1) == 0)
      {
        goto LABEL_21;
      }

      composingInput14 = [(TIKeyboardInputManagerMecabra *)v84 composingInput];
      inputs10 = [composingInput14 inputs];
      composingInput12 = [inputs10 objectAtIndexedSubscript:v7];

      [composingInput12 setIncludeSuffixAsSearchString:1];
    }

LABEL_21:
    objc_opt_class();
    v17 = v85;
    selfCopy = v84;
    if (objc_opt_isKindOfClass())
    {
      [(TIKeyboardInputManagerMecabra *)v84 setPreviouslyDeletedTypeInput:v85];
    }

    goto LABEL_23;
  }
}

- (void)_replaceComposingInputWithSyntheticInput:(id)input internalIndex:(unint64_t)index
{
  inputCopy = input;
  if (inputCopy)
  {
    v7 = inputCopy;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0;
    text = [inputCopy text];
    v9 = text;
    if (index)
    {
      v10 = [text length];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __88__TIKeyboardInputManagerMecabra__replaceComposingInputWithSyntheticInput_internalIndex___block_invoke;
      v14[3] = &unk_27872F500;
      v14[5] = &v16;
      v14[6] = index;
      v14[4] = v15;
      [v9 enumerateSubstringsInRange:0 options:v10 usingBlock:{514, v14}];
    }

    v11 = [v7 syntheticInputWithCursorIndex:v17[3]];

    [v11 setIncludeSuffixAsSearchString:0];
    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [composingInput replaceInputAtIndex:0 with:v11];

    previouslyDeletedTypeInput = [(TIKeyboardInputManagerMecabra *)self previouslyDeletedTypeInput];

    if (!previouslyDeletedTypeInput)
    {
      [(TIKeyboardInputManagerMecabra *)self setPreviouslyDeletedTypeInput:v11];
    }

    _Block_object_dispose(v15, 8);
    _Block_object_dispose(&v16, 8);
  }
}

void *__88__TIKeyboardInputManagerMecabra__replaceComposingInputWithSyntheticInput_internalIndex___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (++*(*(result[4] + 8) + 24) >= result[6])
  {
    *(*(result[5] + 8) + 24) = a3 + a4;
    *a7 = 1;
  }

  return result;
}

- (id)_convertInputsToSyntheticInputWithOffset:(unint64_t)offset
{
  composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
  inputs = [composingInput inputs];
  if ([inputs count] != 1)
  {

LABEL_5:
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    documentState = [keyboardState documentState];
    markedText = [documentState markedText];
    v17 = [markedText length];

    keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
    documentState2 = [keyboardState2 documentState];
    markedText2 = [(__CFString *)documentState2 markedText];
    firstObject3 = markedText2;
    if (v17 > offset)
    {

      if ([firstObject3 length] <= offset)
      {
        documentState2 = &stru_283FDFAF8;
      }

      else
      {
        documentState2 = [firstObject3 substringFromIndex:offset];
      }

      composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      inputs2 = [composingInput2 inputs];
      firstObject = [inputs2 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) != 0 && (-[TIKeyboardInputManagerMecabra composingInput](self, "composingInput"), v30 = objc_claimAutoreleasedReturnValue(), [v30 inputs], v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "firstObject"), v32 = objc_claimAutoreleasedReturnValue(), v31, v30, v32))
      {
        syllableSeparator = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
        inputs7 = [v32 externalSuffix:syllableSeparator];

        v35 = 0;
      }

      else
      {
        v35 = 1;
        inputs7 = &stru_283FDFAF8;
      }

      syllableSeparator2 = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
      v37 = [syllableSeparator2 stringByAppendingString:inputs7];

      if (v35 & 1) == 0 && ((objc_msgSend_isEqualToString_(documentState2) & 1) != 0 || (objc_msgSend_isEqualToString_(documentState2)))
      {
        firstObject5 = 0;
      }

      else
      {
        composingInput3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        inputs3 = [composingInput3 inputs];
        firstObject5 = -[TIKeyboardInputManagerMecabra convertInputsToSyntheticInputUptoCount:](self, "convertInputsToSyntheticInputUptoCount:", [inputs3 count]);
      }

LABEL_24:
      goto LABEL_28;
    }

    if ([markedText2 length] == offset)
    {
      composingInput4 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      inputs4 = [composingInput4 inputs];
      if ([inputs4 count] >= 2)
      {
        composingInput5 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        inputs5 = [composingInput5 inputs];
        firstObject2 = [inputs5 firstObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          composingInput6 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          v46 = [composingInput6 hasKindOf:objc_opt_class()];

          if (v46)
          {
            firstObject5 = 0;
            goto LABEL_30;
          }

          composingInput7 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          inputs6 = [composingInput7 inputs];
          firstObject3 = [inputs6 firstObject];

          cursorIndex = [firstObject3 cursorIndex];
          text = [firstObject3 text];
          v45 = [text length];

          if (cursorIndex >= v45)
          {
            firstObject5 = 0;
            goto LABEL_29;
          }

          documentState2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          inputs7 = [(__CFString *)documentState2 inputs];
          firstObject5 = [(TIKeyboardInputManagerMecabra *)self convertInputsToSyntheticInputUptoCount:[(__CFString *)inputs7 count]];
          goto LABEL_24;
        }
      }
    }

    firstObject5 = 0;
    firstObject3 = keyboardState2;
    goto LABEL_28;
  }

  composingInput8 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  inputs8 = [composingInput8 inputs];
  firstObject4 = [inputs8 firstObject];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if ((v10 & 1) == 0)
  {
    goto LABEL_5;
  }

  firstObject3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  documentState2 = [firstObject3 inputs];
  firstObject5 = [(__CFString *)documentState2 firstObject];
LABEL_28:

LABEL_29:
LABEL_30:

  return firstObject5;
}

- (void)lastAcceptedCandidateCorrected
{
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (composingKeyboardInputManager)
  {
    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [composingKeyboardInputManager2 lastAcceptedCandidateCorrected];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TIKeyboardInputManagerMecabra;
    [(TIKeyboardInputManagerBase *)&v5 lastAcceptedCandidateCorrected];
  }
}

- (void)registerLearningForCompletion:(id)completion fullCompletion:(id)fullCompletion context:(id)context prefix:(id)prefix mode:(id)mode
{
  completionCopy = completion;
  fullCompletionCopy = fullCompletion;
  contextCopy = context;
  prefixCopy = prefix;
  modeCopy = mode;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (composingKeyboardInputManager)
  {
    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [composingKeyboardInputManager2 registerLearningForCompletion:completionCopy fullCompletion:fullCompletionCopy context:contextCopy prefix:prefixCopy mode:modeCopy];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = TIKeyboardInputManagerMecabra;
    [(TIKeyboardInputManager *)&v19 registerLearningForCompletion:completionCopy fullCompletion:fullCompletionCopy context:contextCopy prefix:prefixCopy mode:modeCopy];
  }
}

- (void)registerLearning:(id)learning fullCandidate:(id)candidate keyboardState:(id)state mode:(id)mode
{
  learningCopy = learning;
  candidateCopy = candidate;
  stateCopy = state;
  modeCopy = mode;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (composingKeyboardInputManager)
  {
    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [composingKeyboardInputManager2 registerLearning:learningCopy fullCandidate:candidateCopy keyboardState:stateCopy mode:modeCopy];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = TIKeyboardInputManagerMecabra;
    [(TIKeyboardInputManager *)&v16 registerLearning:learningCopy fullCandidate:candidateCopy keyboardState:stateCopy mode:modeCopy];
  }
}

- (void)candidateRejected:(id)rejected
{
  rejectedCopy = rejected;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (composingKeyboardInputManager)
  {
    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [composingKeyboardInputManager2 candidateRejected:rejectedCopy];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TIKeyboardInputManagerMecabra;
    [(TIKeyboardInputManager *)&v7 candidateRejected:rejectedCopy];
  }
}

- (void)textAccepted:(id)accepted fromPredictiveInputBar:(BOOL)bar withInput:(id)input
{
  barCopy = bar;
  acceptedCopy = accepted;
  inputCopy = input;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (composingKeyboardInputManager)
  {
    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [composingKeyboardInputManager2 textAccepted:acceptedCopy fromPredictiveInputBar:barCopy withInput:inputCopy];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = TIKeyboardInputManagerMecabra;
    [(TIKeyboardInputManager *)&v12 textAccepted:acceptedCopy fromPredictiveInputBar:barCopy withInput:inputCopy];
  }
}

- (void)setOriginalInput:(id)input
{
  inputCopy = input;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (composingKeyboardInputManager)
  {
    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [composingKeyboardInputManager2 setOriginalInput:inputCopy];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TIKeyboardInputManagerMecabra;
    [(TIKeyboardInputManager *)&v7 setOriginalInput:inputCopy];
  }
}

- (BOOL)_adjustPhraseBoundaryInForwardDirection:(BOOL)direction granularity:(int)granularity
{
  v4 = *&granularity;
  directionCopy = direction;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  LOBYTE(v4) = [composingKeyboardInputManager _adjustPhraseBoundaryInForwardDirection:directionCopy granularity:v4];

  return v4;
}

- (void)adjustPhraseBoundaryInForwardDirection:(BOOL)direction granularity:(int)granularity
{
  v4 = *&granularity;
  directionCopy = direction;
  if (![TIKeyboardInputManagerMecabra _adjustPhraseBoundaryInForwardDirection:"_adjustPhraseBoundaryInForwardDirection:granularity:" granularity:?])
  {
    v7.receiver = self;
    v7.super_class = TIKeyboardInputManagerMecabra;
    [(TIKeyboardInputManager *)&v7 adjustPhraseBoundaryInForwardDirection:directionCopy granularity:v4];
  }
}

- (void)adjustPhraseBoundaryInForwardDirection:(BOOL)direction
{
  directionCopy = direction;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (composingKeyboardInputManager)
  {
    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [composingKeyboardInputManager2 adjustPhraseBoundaryInForwardDirection:directionCopy];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TIKeyboardInputManagerMecabra;
    [(TIKeyboardInputManager *)&v7 adjustPhraseBoundaryInForwardDirection:directionCopy];
  }
}

- (void)skipHitTestForTouchEvent:(id)event keyboardState:(id)state
{
  eventCopy = event;
  stateCopy = state;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (composingKeyboardInputManager)
  {
    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [composingKeyboardInputManager2 skipHitTestForTouchEvent:eventCopy keyboardState:stateCopy];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TIKeyboardInputManagerMecabra;
    [(TIKeyboardInputManager *)&v10 skipHitTestForTouchEvent:eventCopy keyboardState:stateCopy];
  }
}

- (int64_t)performHitTestForTouchEvent:(id)event keyboardState:(id)state
{
  eventCopy = event;
  stateCopy = state;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (composingKeyboardInputManager)
  {
    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    v10 = [composingKeyboardInputManager2 performHitTestForTouchEvent:eventCopy keyboardState:stateCopy];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = TIKeyboardInputManagerMecabra;
    v10 = [(TIKeyboardInputManager *)&v12 performHitTestForTouchEvent:eventCopy keyboardState:stateCopy];
  }

  return v10;
}

- (id)generateRefinementsForCandidate:(id)candidate
{
  candidateCopy = candidate;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v6 = [composingKeyboardInputManager generateRefinementsForCandidate:candidateCopy];

  return v6;
}

- (id)generateReplacementsForString:(id)string keyLayout:(id)layout
{
  layoutCopy = layout;
  stringCopy = string;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v9 = [composingKeyboardInputManager generateReplacementsForString:stringCopy keyLayout:layoutCopy];

  return v9;
}

- (id)autocorrectionListFromWordSearchCandidateResultSet:(id)set emojiCandidates:(id)candidates
{
  setCopy = set;
  candidatesCopy = candidates;
  candidates = [setCopy candidates];
  proactiveCandidates = [setCopy proactiveCandidates];
  v11 = [proactiveCandidates count];

  if (v11)
  {
    proactiveCandidates2 = [setCopy proactiveCandidates];
    candidates2 = [setCopy candidates];
    v14 = [proactiveCandidates2 arrayByAddingObjectsFromArray:candidates2];

    candidates = v14;
  }

  v35 = candidates;
  firstObject = [candidates firstObject];
  input = [firstObject input];
  v17 = [input length];
  if (v17)
  {
    wordSearch = [(TIKeyboardInputManagerMecabra *)self wordSearch];
    if ([wordSearch autoCorrects])
    {
      if (![(TIKeyboardInputManager *)self shouldBlockAutocorrection:firstObject])
      {
        goto LABEL_8;
      }
    }
  }

  v18 = candidatesCopy;
  input2 = [firstObject input];
  candidate = [firstObject candidate];
  if (objc_msgSend_isEqualToString_(input2))
  {

    candidatesCopy = v18;
    if (!v17)
    {
LABEL_9:
      v21 = setCopy;

      goto LABEL_13;
    }

LABEL_8:

    goto LABEL_9;
  }

  v21 = setCopy;
  isContinuousPathConversion = [firstObject isContinuousPathConversion];

  if (v17)
  {
  }

  candidatesCopy = v18;
  if ((isContinuousPathConversion & 1) == 0)
  {
    typedStringForEmptyAutocorrection = [(TIKeyboardInputManager_mul *)self typedStringForEmptyAutocorrection];
    defaultCandidate = [MEMORY[0x277D6F3D8] candidateWithUnchangedInput:typedStringForEmptyAutocorrection];
    v23 = v35;
    v30 = v35;

    goto LABEL_24;
  }

LABEL_13:
  v23 = v35;
  if ([firstObject isSupplementalItemCandidate])
  {
    v24 = MEMORY[0x277D6F3D8];
    input3 = [firstObject input];
    defaultCandidate = [v24 candidateWithUnchangedInput:input3];

LABEL_15:
    v27 = v35;
LABEL_23:
    v30 = v27;
    goto LABEL_24;
  }

  wordSearch2 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
  if ([wordSearch2 autoCorrects])
  {
  }

  else
  {
    isUsingMultilingual = [(TIKeyboardInputManager_mul *)self isUsingMultilingual];

    if (isUsingMultilingual)
    {
      defaultCandidate = [(TIKeyboardInputManager *)self defaultCandidate];
      goto LABEL_15;
    }
  }

  defaultCandidate = firstObject;
  if ([v35 count] >= 2)
  {
    v27 = [v35 subarrayWithRange:{1, objc_msgSend(v35, "count") - 1}];
    goto LABEL_23;
  }

  v30 = MEMORY[0x277CBEBF8];
LABEL_24:
  if (([defaultCandidate isContinuousPathConversion] & 1) == 0)
  {
    [defaultCandidate setConfidence:2];
  }

  v32 = [objc_alloc(MEMORY[0x277D6F348]) initWithAutocorrection:defaultCandidate alternateCorrections:0];
  v33 = [MEMORY[0x277D6F328] listWithCorrections:v32 predictions:v30 emojiList:candidatesCopy];

  return v33;
}

- (id)lexiconLocaleOfCandidate:(void *)candidate
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  v4 = 0;
  while (MecabraCandidateGetWordLengthAtIndex())
  {
    WordLocaleAtIndex = MecabraCandidateCreateWordLocaleAtIndex();
    if (!WordLocaleAtIndex)
    {
      goto LABEL_9;
    }

    v6 = WordLocaleAtIndex;
    v7 = MEMORY[0x2318BC170]();
    if ([v3 indexOfObject:v7] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v3 addObject:v7];
    }

    ++v4;

    CFRelease(v6);
  }

  if ([v3 count])
  {
    v8 = [v3 componentsJoinedByString:@"/"];
    goto LABEL_10;
  }

LABEL_9:
  v8 = 0;
LABEL_10:

  return v8;
}

- (id)autocorrectionListWithCandidateCount:(unint64_t)count
{
  v115 = *MEMORY[0x277D85DE8];
  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy__267;
  v110 = __Block_byref_object_dispose__268;
  v111 = objc_alloc_init(TIWordSearchCandidateResultSet);
  TIInputManager::input_substring((self->super.super.m_impl + 8), 0, -858993459 * ((*(self->super.super.m_impl + 2) - *(self->super.super.m_impl + 1)) >> 3), &location);
  v5 = KB::ns_string(&location, v4);
  if (v114 && BYTE6(location) == 1)
  {
    free(v114);
  }

  inputString = [(TIKeyboardInputManager *)self inputString];
  if ([(TIKeyboardInputManager *)self shouldGeneratePredictionsForCurrentContext]&& ![(TIKeyboardInputManagerMecabra *)self stringContainsActiveSupplementalLexiconSearchPrefix:v5])
  {

    inputString = &stru_283FDFAF8;
    v75 = 1;
    v84 = &stru_283FDFAF8;
    geometryModelData = MEMORY[0x277CBEBF8];
  }

  else
  {
    v84 = v5;
    geometryModelData = [(TIKeyboardInputManagerMecabra *)self geometryModelData];
    v75 = 0;
  }

  v80 = inputString;
  wordSearch = [(TIKeyboardInputManagerMecabra *)self wordSearch];
  if (([wordSearch autoCorrects] & 1) != 0 || -[TIKeyboardInputManager_mul isUsingMultilingual](self, "isUsingMultilingual"))
  {
    v8 = 64;
  }

  else
  {
    v8 = 0;
  }

  if ([wordSearch shouldLearnAcceptedCandidate])
  {
    v9 = v8;
  }

  else
  {
    v9 = v8 | 0x80;
  }

  additionalAnalysisOptions = [(TIKeyboardInputManagerMecabra *)self additionalAnalysisOptions];
  objc_initWeak(&location, self);
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState documentState];

  contextBeforeInput = [documentState contextBeforeInput];
  v14 = contextBeforeInput;
  if (contextBeforeInput)
  {
    v15 = contextBeforeInput;
  }

  else
  {
    v15 = &stru_283FDFAF8;
  }

  v82 = v15;

  contextAfterInput = [documentState contextAfterInput];
  v17 = contextAfterInput;
  if (contextAfterInput)
  {
    v18 = contextAfterInput;
  }

  else
  {
    v18 = &stru_283FDFAF8;
  }

  v19 = v18;

  composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v20ComposingInput = [composingInput composingInput];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20ComposingInput2 = [composingInput composingInput];
  }

  else
  {
    v20ComposingInput2 = 0;
  }

  v22 = (v9 | additionalAnalysisOptions);

  v88 = documentState;
  if (![(TIKeyboardInputManagerMecabra *)self canTypeAndPathSimultaneously])
  {
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    inputs = [composingInput2 inputs];

    v25 = [inputs countByEnumeratingWithState:&v102 objects:v112 count:16];
    if (v25)
    {
      v26 = v25;
      v74 = v19;
      v27 = *v103;
      while (2)
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v103 != v27)
          {
            objc_enumerationMutation(inputs);
          }

          v29 = *(*(&v102 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = objc_opt_new();

            [v30 composeNew:v29];
            composingInput = v30;
            goto LABEL_35;
          }
        }

        v26 = [inputs countByEnumeratingWithState:&v102 objects:v112 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }

LABEL_35:
      v19 = v74;
    }
  }

  pathedWordSeparatorChar = [(TIKeyboardInputManagerMecabra *)self pathedWordSeparatorChar];
  wordSearch2 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
  v33 = MEMORY[0x277CCA8C8];
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __70__TIKeyboardInputManagerMecabra_autocorrectionListWithCandidateCount___block_invoke;
  v89[3] = &unk_27872F4D8;
  v34 = wordSearch;
  v90 = v34;
  objc_copyWeak(v100, &location);
  v87 = geometryModelData;
  v91 = v87;
  v35 = v84;
  v92 = v35;
  v85 = v82;
  v93 = v85;
  v83 = v19;
  v94 = v83;
  v36 = composingInput;
  v95 = v36;
  v100[1] = v22;
  v37 = v20ComposingInput2;
  v96 = v37;
  selfCopy = self;
  v99 = &v106;
  v38 = v80;
  v98 = v38;
  v101 = pathedWordSeparatorChar;
  v39 = [v33 blockOperationWithBlock:v89];
  [wordSearch2 performOperationAsync:v39];

  v40 = +[TIWordSearch sharedOperationQueue];
  [v40 waitUntilAllOperationsAreFinished];

  candidates = [v107[5] candidates];
  v42 = [candidates count];

  if (v42 || !v37)
  {
    [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:v107[5]];
    if (!v37)
    {
      goto LABEL_47;
    }
  }

  else
  {
    composingInput3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    totalDrawSamples = [composingInput3 totalDrawSamples];
    maxDrawSamplesWithNoCandidatesResult = [(TIKeyboardInputManagerMecabra *)self maxDrawSamplesWithNoCandidatesResult];

    if (totalDrawSamples > maxDrawSamplesWithNoCandidatesResult)
    {
      composingInput4 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      [composingInput4 removeAllInputs];

      wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
      candidates2 = [wordSearchCandidateResultSet candidates];
      firstObject = [candidates2 firstObject];
      isContinuousPathConversion = [firstObject isContinuousPathConversion];

      if (isContinuousPathConversion)
      {
        v51 = [(TIKeyboardInputManagerMecabra *)self autocorrectionListWithCandidateCount:count];
        v52 = v88;
        goto LABEL_52;
      }

      wordSearchCandidateResultSet2 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
      v54 = v107[5];
      v107[5] = wordSearchCandidateResultSet2;
    }
  }

  candidates3 = [v107[5] candidates];
  v56 = [candidates3 count];

  if (!v56)
  {
LABEL_47:
    v77 = v36;
    v79 = v38;
    v81 = v35;
    v57 = v34;
    emojiCandidateGenerator = [(TIKeyboardInputManager *)self emojiCandidateGenerator];
    keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
    if (v75)
    {
      [emojiCandidateGenerator emojiAdornmentCandidatesForKeyboardState:keyboardState2];
    }

    else
    {
      [emojiCandidateGenerator emojiReplacementCandidatesForKeyboardState:keyboardState2];
    }
    v67 = ;
    goto LABEL_51;
  }

  v77 = v36;
  v79 = v38;
  v81 = v35;
  v57 = v34;
  candidates4 = [v107[5] candidates];
  emojiCandidateGenerator = [candidates4 objectAtIndexedSubscript:0];

  v60 = MEMORY[0x277CCACA8];
  keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
  documentState2 = [keyboardState3 documentState];
  contextBeforeInput2 = [documentState2 contextBeforeInput];
  candidate = [emojiCandidateGenerator candidate];
  keyboardState2 = [v60 stringWithFormat:@"%@ %@", contextBeforeInput2, candidate];

  emojiCandidateGenerator2 = [(TIKeyboardInputManager *)self emojiCandidateGenerator];
  v67 = [emojiCandidateGenerator2 emojiReplacementCandidatesForText:keyboardState2];

LABEL_51:
  v52 = v88;

  v51 = [(TIKeyboardInputManagerMecabra *)self autocorrectionListFromWordSearchCandidateResultSet:v107[5] emojiCandidates:v67];
  autocorrectionForCurrentStem = [(TIKeyboardInputManager *)self autocorrectionForCurrentStem];
  corrections = [v51 corrections];
  autocorrection = [corrections autocorrection];
  candidate2 = [autocorrection candidate];
  currentWordStem = [(TIKeyboardInputManager *)self currentWordStem];
  [autocorrectionForCurrentStem setObject:candidate2 forKey:currentWordStem];

  v34 = v57;
  v38 = v79;
  v35 = v81;
  v36 = v77;
LABEL_52:

  objc_destroyWeak(v100);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v106, 8);

  return v51;
}

void __70__TIKeyboardInputManagerMecabra_autocorrectionListWithCandidateCount___block_invoke(uint64_t a1)
{
  v24 = [*(a1 + 32) mecabraEnvironment];
  WeakRetained = objc_loadWeakRetained((a1 + 112));
  [v24 setGeometryModel:WeakRetained modelData:*(a1 + 40)];

  if (![*(a1 + 48) length])
  {
    [v24 setLeftDocumentContext:*(a1 + 56)];
    [v24 setRightDocumentContext:*(a1 + 64)];
    [v24 adjustEnvironmentDirectly:0];
  }

  v3 = *(a1 + 72);
  if (!v3)
  {
    if (![v24 analyzeString:*(a1 + 48) options:*(a1 + 120)])
    {
      goto LABEL_39;
    }

    goto LABEL_7;
  }

  if ([v24 analyzeInput:v3 options:*(a1 + 120)])
  {
LABEL_7:
    if (*(a1 + 80))
    {
      v4 = [*(a1 + 88) shouldInsertSpaceBeforePredictions];
    }

    else
    {
      v4 = 0;
    }

    v5 = 0;
    while (1)
    {
      while (1)
      {
        [*(a1 + 32) mecabra];
        NextCandidate = MecabraGetNextCandidate();
        if (!NextCandidate)
        {

          goto LABEL_39;
        }

        v7 = NextCandidate;
        if (MecabraCandidateGetType() != 6)
        {
          break;
        }

        [*(*(*(a1 + 104) + 8) + 40) addMecabraProactiveCandidate:v7 triggerSourceType:0];
      }

      v8 = objc_alloc(MEMORY[0x277D6F448]);
      if (v5)
      {
        break;
      }

      if ([*(a1 + 88) inputSessionWantsStemWhenEditing])
      {
        v9 = [*(a1 + 88) inputStem];
        goto LABEL_18;
      }

      v11 = [v8 initWithMecabraCandidate:v7 input:*(a1 + 96)];
LABEL_19:
      [v11 setContinuousPathConversion:*(a1 + 80) != 0];
      if ([*(a1 + 88) isUsingMultilingual])
      {
        v12 = [*(a1 + 88) lexiconLocaleOfCandidate:v7];
        [v11 setLexiconLocale:v12];

        v13 = [*(a1 + 88) wordSeparator];
        v14 = [*(a1 + 88) keyboardFeatureSpecializationSecondary];
        v15 = [v14 wordSeparator];

        if ((objc_msgSend_isEqualToString_(v13) & 1) == 0)
        {
          v16 = [*(a1 + 88) wordSeparatorForCandidate:v11];
          [v11 setWordSeparator:v16];
        }
      }

      if (*(a1 + 80))
      {
        if (*(a1 + 128))
        {
          if (v4)
          {
            v17 = [MEMORY[0x277CCACA8] _stringWithUnichar:?];
            v18 = [v11 candidate];
            v19 = [v17 stringByAppendingString:v18];
          }

          else
          {
            v19 = [v11 candidate];
          }

          v20 = [v5 candidate];
          isEqualToString = objc_msgSend_isEqualToString_(v19);

          if ((isEqualToString & 1) == 0)
          {
            v22 = [v11 candidateByReplacingWithCandidate:v19];

            [v22 setMecabraCandidatePointerValue:0];
            v7 = 0;
            v11 = v22;
          }
        }

        if (!v5)
        {
          v11 = v11;
          if ([*(a1 + 80) isCompleting])
          {
            v23 = 1;
          }

          else
          {
            v23 = [*(a1 + 80) isComplete];
          }

          [v11 setShouldAccept:v23];
          v5 = v11;
        }
      }

      [*(*(*(a1 + 104) + 8) + 40) addMecabraCandidate:v11 mecabraCandidateRef:v7];
    }

    v9 = [v5 candidate];
LABEL_18:
    v10 = v9;
    v11 = [v8 initWithMecabraCandidate:v7 input:v9];

    goto LABEL_19;
  }

LABEL_39:
  if (![*(a1 + 48) length])
  {
    [*(a1 + 32) insertTopSupplementalCandidateSurroundingCursorToFrontOfResultSet:*(*(*(a1 + 104) + 8) + 40)];
  }
}

- (BOOL)shouldInsertSpaceBeforePredictions
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState documentState];
  contextBeforeInput = [documentState contextBeforeInput];

  if ([contextBeforeInput length] && (objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "characterIsMember:", objc_msgSend(contextBeforeInput, "_lastLongCharacter")), v6, (v7 & 1) == 0))
  {
    punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
    v10 = [punctuationCharacterSet characterIsMember:{objc_msgSend(contextBeforeInput, "_lastLongCharacter")}];
    v8 = !v10 || ([contextBeforeInput _lastGrapheme], v11 = ;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)generateCandidatesWithKeyboardState:(id)state candidateRange:(_NSRange)range candidateHandler:(id)handler
{
  length = range.length;
  location = range.location;
  stateCopy = state;
  handlerCopy = handler;
  if ([(TIKeyboardInputManagerMecabra *)self alreadyGeneratedCandidates]|| ![(TIKeyboardInputManagerMecabra *)self supportsCandidateGeneration])
  {
    composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [composingKeyboardInputManager generateCandidatesWithKeyboardState:stateCopy candidateRange:location candidateHandler:{length, handlerCopy}];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = TIKeyboardInputManagerMecabra;
    [(TIKeyboardInputManager *)&v12 generateCandidatesWithKeyboardState:stateCopy candidateRange:location candidateHandler:length, handlerCopy];
  }
}

- (BOOL)alreadyGeneratedCandidates
{
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  if ([composingKeyboardInputManager alreadyGeneratedCandidates])
  {
    supportsCandidateGeneration = 1;
  }

  else
  {
    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    supportsCandidateGeneration = [composingKeyboardInputManager2 supportsCandidateGeneration];
  }

  return supportsCandidateGeneration;
}

- (void)generateAutocorrectionsWithKeyboardState:(id)state candidateRange:(_NSRange)range candidateHandler:(id)handler
{
  length = range.length;
  location = range.location;
  stateCopy = state;
  handlerCopy = handler;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (composingKeyboardInputManager)
  {
    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [composingKeyboardInputManager2 generateAutocorrectionsWithKeyboardState:stateCopy candidateRange:location candidateHandler:{length, handlerCopy}];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = TIKeyboardInputManagerMecabra;
    [(TIKeyboardInputManager *)&v13 generateAutocorrectionsWithKeyboardState:stateCopy candidateRange:location candidateHandler:length, handlerCopy];
  }
}

- (id)keyboardConfiguration
{
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  keyboardConfiguration = [composingKeyboardInputManager keyboardConfiguration];
  v5 = keyboardConfiguration;
  if (keyboardConfiguration)
  {
    keyboardConfiguration2 = keyboardConfiguration;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TIKeyboardInputManagerMecabra;
    keyboardConfiguration2 = [(TIKeyboardInputManager_mul *)&v9 keyboardConfiguration];
  }

  v7 = keyboardConfiguration2;

  return v7;
}

- (void)updateProactiveCandidatesForCandidateResultSet:(id)set withInput:(id)input
{
  v28 = *MEMORY[0x277D85DE8];
  setCopy = set;
  inputCopy = input;
  proactiveTriggers = [setCopy proactiveTriggers];
  if ([proactiveTriggers count])
  {

    goto LABEL_3;
  }

  v19 = +[TIProactiveQuickTypeManager sharedInstance];
  if (([v19 usePQT2Flow] & 1) == 0)
  {

    goto LABEL_17;
  }

  v20 = [inputCopy length];

  if (!v20)
  {
LABEL_3:
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    proactiveTriggers = [keyboardState secureCandidateRenderTraits];

    keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
    secureCandidateRenderTraits = [keyboardState2 secureCandidateRenderTraits];
    [secureCandidateRenderTraits setDisableHideMyEmail:1];

    [proactiveTriggers singleCellWidth];
    if (v12 > 0.0 && ([proactiveTriggers singleCellHeight], v13 > 0.0) || (objc_msgSend(proactiveTriggers, "cellWidthOptions"), v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
    {
      candidateHandlerForOpenRequest = [(TIKeyboardInputManager *)self candidateHandlerForOpenRequest];
      asynchronous = [candidateHandlerForOpenRequest asynchronous];

      proactiveTriggers2 = [setCopy proactiveTriggers];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __90__TIKeyboardInputManagerMecabra_updateProactiveCandidatesForCandidateResultSet_withInput___block_invoke;
      v22[3] = &unk_27872F4B0;
      v25 = asynchronous;
      v23 = setCopy;
      selfCopy = self;
      [(TIKeyboardInputManager *)self generateAndRenderProactiveSuggestionsWithTriggers:proactiveTriggers2 withAdditionalPredictions:0 withInput:inputCopy async:asynchronous completionHandler:v22];

      v18 = v23;
    }

    else
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      if (TICanLogMessageAtLevel_logLevel < 2)
      {
        goto LABEL_17;
      }

      v18 = TIOSLogFacility();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ProactiveQuickType:TI: Not generating proactive candidates - invalid secure candidate width or height trait", "-[TIKeyboardInputManagerMecabra updateProactiveCandidatesForCandidateResultSet:withInput:]"];
        *buf = 138412290;
        v27 = v21;
        _os_log_debug_impl(&dword_22CA55000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

LABEL_17:
  }
}

void __90__TIKeyboardInputManagerMecabra_updateProactiveCandidatesForCandidateResultSet_withInput___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) setProactiveCandidates:v3];
  if (*(a1 + 48) == 1 && [v3 count])
  {
    v4 = [*(a1 + 40) candidateResultSetFromWordSearchCandidateResultSet:*(a1 + 32)];
    [*(a1 + 40) pushCandidateGenerationContextWithResults:v4];
  }

  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v5 = TIOSLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [*(a1 + 32) proactiveCandidates];
      v8 = [v6 stringWithFormat:@"%s ProactiveQuickType:TI: Generated proactive candidates: %@", "-[TIKeyboardInputManagerMecabra updateProactiveCandidatesForCandidateResultSet:withInput:]_block_invoke", v7];
      *buf = 138412290;
      v10 = v8;
      _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }
}

- (void)addProactiveTriggers:(id)triggers withCompletionHandler:(id)handler
{
  triggersCopy = triggers;
  handlerCopy = handler;
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  textInputTraits = [keyboardState textInputTraits];
  textContentType = [textInputTraits textContentType];

  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  textInputTraits2 = [keyboardState2 textInputTraits];
  textContentType2 = [textInputTraits2 textContentType];
  keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState3 documentState];
  contextBeforeInput = [documentState contextBeforeInput];
  keyboardState4 = [(TIKeyboardInputManager *)self keyboardState];
  v16 = +[TIProactiveQuickTypeManager proactiveTriggerForTextContentType:withContextBeforeInput:autofillMode:](TIProactiveQuickTypeManager, "proactiveTriggerForTextContentType:withContextBeforeInput:autofillMode:", textContentType2, contextBeforeInput, [keyboardState4 autofillMode]);

  keyboardState5 = [(TIKeyboardInputManager *)self keyboardState];
  documentState2 = [keyboardState5 documentState];
  markedText = [documentState2 markedText];
  LOBYTE(textInputTraits2) = [markedText length] != 0;

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__TIKeyboardInputManagerMecabra_addProactiveTriggers_withCompletionHandler___block_invoke;
  aBlock[3] = &unk_27872F3E8;
  v20 = textContentType;
  v53 = v20;
  v21 = triggersCopy;
  v54 = v21;
  v22 = v16;
  v55 = v22;
  v57 = textInputTraits2;
  v23 = handlerCopy;
  v56 = v23;
  v24 = _Block_copy(aBlock);
  keyboardState6 = [(TIKeyboardInputManager *)self keyboardState];
  documentState3 = [keyboardState6 documentState];
  LODWORD(keyboardState3) = [documentState3 documentIsEmpty];

  if (!keyboardState3)
  {
    v24[2](v24, 0);
    goto LABEL_10;
  }

  keyboardState7 = [(TIKeyboardInputManager *)self keyboardState];
  responseContext = [keyboardState7 responseContext];
  if (!responseContext)
  {

    goto LABEL_9;
  }

  v29 = responseContext;
  v30 = +[TIProactiveQuickTypeManager sharedInstance];
  usePQT2Flow = [v30 usePQT2Flow];

  if (usePQT2Flow)
  {
LABEL_9:
    v24[2](v24, 1);
    goto LABEL_10;
  }

  keyboardState8 = [(TIKeyboardInputManager *)self keyboardState];
  [keyboardState8 shiftState];

  inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
  languageWithRegion = [inputMode languageWithRegion];

  keyboardState9 = [(TIKeyboardInputManager *)self keyboardState];
  clientIdentifier = [keyboardState9 clientIdentifier];

  keyboardState10 = [(TIKeyboardInputManager *)self keyboardState];
  recipientIdentifier = [keyboardState10 recipientIdentifier];

  keyboardState11 = [(TIKeyboardInputManager *)self keyboardState];
  responseContext2 = [keyboardState11 responseContext];

  if (chineseJapaneseResponseKitBackgroundQueue(void)::onceToken != -1)
  {
    dispatch_once(&chineseJapaneseResponseKitBackgroundQueue(void)::onceToken, &__block_literal_global_1797);
  }

  v43 = chineseJapaneseResponseKitBackgroundQueue(void)::_instance;
  v48 = clientIdentifier;
  v49 = responseContext2;
  v51 = v24;
  v50 = v21;
  v47 = languageWithRegion;
  v40 = responseContext2;
  v41 = recipientIdentifier;
  v42 = clientIdentifier;
  TIDispatchAsync();

LABEL_10:
}

uint64_t __76__TIKeyboardInputManagerMecabra_addProactiveTriggers_withCompletionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [TIProactiveQuickTypeManager proactiveTriggerForTextContentType:*(a1 + 32)];
    v4 = v3;
    if (v3)
    {
      v5 = *(a1 + 40);
      v6 = [v3 attributes];
      [v5 addSyntheticMecabraProactiveCandidate:v6 triggerSourceType:2];
    }
  }

  if (_os_feature_enabled_impl() && *(a1 + 48) && (*(a1 + 64) & 1) == 0)
  {
    [*(a1 + 40) addProactiveTrigger:?];
  }

  result = *(a1 + 56);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

void __76__TIKeyboardInputManagerMecabra_addProactiveTriggers_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v2 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__TIKeyboardInputManagerMecabra_addProactiveTriggers_withCompletionHandler___block_invoke_3;
  block[3] = &unk_278731400;
  v19 = v20;
  v18 = *(a1 + 80);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
  v3 = [[TILanguageModelAdaptationContext alloc] initWithClientIdentifier:*(a1 + 32) andRecipientContactInfo:*(a1 + 40)];
  v4 = [MEMORY[0x277D46BD8] sharedManager];
  v5 = *(a1 + 48);
  v6 = [(TILanguageModelAdaptationContext *)v3 identifierForResponseKit];
  v7 = *(a1 + 88);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__TIKeyboardInputManagerMecabra_addProactiveTriggers_withCompletionHandler___block_invoke_4;
  v12[3] = &unk_27872F460;
  v16 = v20;
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v13 = v9;
  v14 = v10;
  v15 = v11;
  [v4 responsesForMessage:v5 maximumResponses:10 forContext:v6 withLanguage:v8 options:v7 completionBlock:v12];

  _Block_object_dispose(v20, 8);
}

uint64_t __76__TIKeyboardInputManagerMecabra_addProactiveTriggers_withCompletionHandler___block_invoke_3(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __76__TIKeyboardInputManagerMecabra_addProactiveTriggers_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v4 = v3;
  TIDispatchAsync();
}

void __76__TIKeyboardInputManagerMecabra_addProactiveTriggers_withCompletionHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(*(a1 + 64) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__TIKeyboardInputManagerMecabra_addProactiveTriggers_withCompletionHandler___block_invoke_6;
    v8[3] = &unk_27872F410;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v9 = v4;
    v10 = v5;
    [v3 enumerateObjectsWithOptions:2 usingBlock:v8];
    (*(*(a1 + 56) + 16))(*(a1 + 56), 1, v6, v7);
  }
}

void __76__TIKeyboardInputManagerMecabra_addProactiveTriggers_withCompletionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 attributes];

  if (v4)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v5 = TIOSLogFacility();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v28 = MEMORY[0x277CCACA8];
        v29 = [v3 attributes];
        v30 = [v28 stringWithFormat:@"%s ResponseKit:Proactive:TI: received proactive trigger [%@]", "-[TIKeyboardInputManagerMecabra addProactiveTriggers:withCompletionHandler:]_block_invoke_6", v29];
        *buf = 138412290;
        v35 = v30;
        _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v6 = [v3 attributes];
    v7 = [v6 objectForKey:*MEMORY[0x277D23050]];

    v8 = [v3 attributes];
    if (objc_msgSend_isEqualToString_(v7))
    {
      v9 = [TIResponseKitManager rewriteMoneyAttributes:v8];

      v8 = v9;
    }

    [*(a1 + 32) addSyntheticMecabraProactiveCandidate:v8 triggerSourceType:1];

    goto LABEL_11;
  }

  v10 = objc_msgSend_string(v3);

  if (v10)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v11 = TIOSLogFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v31 = MEMORY[0x277CCACA8];
        v32 = objc_msgSend_string(v3);
        v33 = [v31 stringWithFormat:@"%s ResponseKit:Canned:TI: received canned response [%@]", "-[TIKeyboardInputManagerMecabra addProactiveTriggers:withCompletionHandler:]_block_invoke", v32];
        *buf = 138412290;
        v35 = v33;
        _os_log_debug_impl(&dword_22CA55000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    [*(a1 + 40) mecabra];
    v12 = objc_msgSend_string(v3);
    CandidateFromContextString = MecabraCreateCandidateFromContextString();

    if (CandidateFromContextString)
    {
      v14 = objc_alloc(MEMORY[0x277D6F448]);
      v15 = objc_msgSend_string(v3);
      v16 = [v3 category];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:CandidateFromContextString];
      v7 = [v14 initWithResponseKitString:v15 responseKitCategory:v16 mecabraCandidatePointerValue:v17];

      [*(a1 + 32) insertMecabraCandidate:v7 mecabraCandidateRef:CandidateFromContextString atIndex:0];
      v18 = MEMORY[0x277D46BB8];
      v19 = *MEMORY[0x277D46BF0];
      v20 = [*(a1 + 40) inputMode];
      v21 = [v20 normalizedIdentifier];
      v22 = TIInputModeGetBaseLanguage();
      [v18 incrementAggdKeyForCategory:0 forAction:v19 withLanguageID:v22];

      v23 = MEMORY[0x277D46BB8];
      v24 = [v3 category];
      v25 = [*(a1 + 40) inputMode];
      v26 = [v25 normalizedIdentifier];
      v27 = TIInputModeGetBaseLanguage();
      [v23 incrementAggdKeyForCategory:v24 forAction:v19 withLanguageID:v27];

LABEL_11:
    }
  }
}

- (void)addStickers:(id)stickers withCompletionHandler:(id)handler
{
  stickersCopy = stickers;
  handlerCopy = handler;
  pendingStickerTask = [(TIKeyboardInputManagerMecabra *)self pendingStickerTask];

  if (pendingStickerTask)
  {
    pendingStickerTask2 = [(TIKeyboardInputManagerMecabra *)self pendingStickerTask];
    stickerCompletionHandler = [pendingStickerTask2 stickerCompletionHandler];
    pendingStickerTask3 = [(TIKeyboardInputManagerMecabra *)self pendingStickerTask];
    candidateResultSet = [pendingStickerTask3 candidateResultSet];
    (stickerCompletionHandler)[2](stickerCompletionHandler, candidateResultSet);

    [(TIKeyboardInputManagerMecabra *)self setPendingStickerTask:0];
  }

  candidates = [stickersCopy candidates];
  if (![candidates count])
  {
    goto LABEL_9;
  }

  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  if (([keyboardState imageSuggestionEnabled] & 1) == 0)
  {

LABEL_9:
    goto LABEL_10;
  }

  shouldOfferStickers = [(TIKeyboardInputManager *)self shouldOfferStickers];

  if (!shouldOfferStickers)
  {
LABEL_10:
    handlerCopy[2](handlerCopy, stickersCopy);
    goto LABEL_11;
  }

  candidates2 = [stickersCopy candidates];
  firstObject = [candidates2 firstObject];

  stickerCandidateGenerator = [(TIKeyboardInputManager *)self stickerCandidateGenerator];
  candidate = [firstObject candidate];
  v20 = [stickerCandidateGenerator generateStickerQueriesForText:candidate tokenize:0];

  if ([v20 count])
  {
    v21 = objc_alloc_init(TIKeyboardInputManagerStickerTask);
    [(TIKeyboardInputManagerStickerTask *)v21 setCandidateResultSet:stickersCopy];
    [(TIKeyboardInputManagerStickerTask *)v21 setStickerCompletionHandler:handlerCopy];
    [(TIKeyboardInputManagerMecabra *)self setPendingStickerTask:v21];
    objc_initWeak(&location, self);
    keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
    secureCandidateRenderTraits = [keyboardState2 secureCandidateRenderTraits];
    shouldGeneratePredictionsForCurrentContext = [(TIKeyboardInputManager *)self shouldGeneratePredictionsForCurrentContext];
    inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
    languageWithRegion = [inputMode languageWithRegion];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __67__TIKeyboardInputManagerMecabra_addStickers_withCompletionHandler___block_invoke;
    v28[3] = &unk_27872F3C0;
    objc_copyWeak(&v33, &location);
    v29 = v21;
    v30 = firstObject;
    v31 = stickersCopy;
    v32 = handlerCopy;
    v26 = v21;
    [stickerCandidateGenerator generateStickerCandidatesForSearchableQueries:v20 withRenderTraits:secureCandidateRenderTraits shouldAppend:shouldGeneratePredictionsForCurrentContext language:languageWithRegion completionHandler:v28];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  else
  {
    handlerCopy[2](handlerCopy, stickersCopy);
  }

LABEL_11:
}

void __67__TIKeyboardInputManagerMecabra_addStickers_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = [WeakRetained pendingStickerTask];
  v6 = *(a1 + 32);

  if (v5 == v6)
  {
    [WeakRetained setPendingStickerTask:0];
    if ([v3 count])
    {
      v7 = +[TIAppAutofillManager sharedInstance];
      v8 = [v7 secureCandidateRenderer];

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = v3;
      v9 = v3;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          v13 = 0;
          do
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v19 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [v8 cachedCandidateForSecureCandidate:v14];
              v16 = [*(a1 + 40) input];
              [v15 setInput:v16];

              v17 = [*(a1 + 40) rawInput];
              [v15 setRawInput:v17];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v11);
      }

      [*(a1 + 48) insertStickers:v9];
      v3 = v18;
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (pair<NSString)_supplementalItemIdentifiersInCurrentSelection
{
  v4 = v2;
  v57 = *MEMORY[0x277D85DE8];
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState documentState];
  selectedText = [documentState selectedText];
  v8 = [selectedText length];

  if (v8)
  {
    *v4 = 0;
    v4[1] = 0;
  }

  else
  {
    selfCopy = self;
    v12 = objc_opt_new();
    keyboardState2 = [(TIKeyboardInputManager *)selfCopy keyboardState];
    documentState2 = [keyboardState2 documentState];
    contextBeforeInput = [documentState2 contextBeforeInput];

    if ([contextBeforeInput length])
    {
      [v12 appendString:contextBeforeInput];
    }

    keyboardState3 = [(TIKeyboardInputManager *)selfCopy keyboardState];
    documentState3 = [keyboardState3 documentState];
    contextAfterInput = [documentState3 contextAfterInput];

    if ([contextAfterInput length])
    {
      [v12 appendString:contextAfterInput];
    }

    if ([v12 length])
    {
      v41 = v4;
      v19 = objc_opt_new();
      keyboardState4 = [(TIKeyboardInputManager *)selfCopy keyboardState];
      documentState4 = [keyboardState4 documentState];
      contextBeforeInput2 = [documentState4 contextBeforeInput];
      v23 = [contextBeforeInput2 length];

      v43 = *(selfCopy->super.super.m_impl + 17);
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      currentCandidateGenerationContextSupplementalLexicons = [(TIKeyboardInputManager *)selfCopy currentCandidateGenerationContextSupplementalLexicons];
      activeLexicon = [currentCandidateGenerationContextSupplementalLexicons activeLexicon];
      items = [activeLexicon items];

      v44 = [items countByEnumeratingWithState:&v51 objects:v56 count:16];
      v27 = 0;
      if (v44)
      {
        v42 = *v52;
        v46 = v12;
        do
        {
          v28 = 0;
          do
          {
            if (*v52 != v42)
            {
              objc_enumerationMutation(items);
            }

            v45 = v28;
            v29 = *(*(&v51 + 1) + 8 * v28);
            v30 = [v29 core_nonPhoneticRangesInString:v12 options:385 locale:v43];
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v31 = [v30 countByEnumeratingWithState:&v47 objects:v55 count:16];
            if (v31)
            {
              v32 = v31;
              v33 = *v48;
              do
              {
                for (i = 0; i != v32; ++i)
                {
                  if (*v48 != v33)
                  {
                    objc_enumerationMutation(v30);
                  }

                  rangeValue = [*(*(&v47 + 1) + 8 * i) rangeValue];
                  if (v23 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v37 = rangeValue;
                    v38 = rangeValue == 0x7FFFFFFFFFFFFFFFLL || rangeValue >= v23;
                    if (!v38 && rangeValue + v36 >= v23)
                    {
                      if (!v27)
                      {
                        v27 = [v46 substringWithRange:{rangeValue, v36}];
                      }

                      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v29, "identifier", v37)}];
                      [v19 addObject:v40];
                    }
                  }
                }

                v32 = [v30 countByEnumeratingWithState:&v47 objects:v55 count:16];
              }

              while (v32);
            }

            v28 = v45 + 1;
            v12 = v46;
          }

          while (v45 + 1 != v44);
          v44 = [items countByEnumeratingWithState:&v51 objects:v56 count:16];
        }

        while (v44);
      }

      if ([v19 count])
      {
        *v41 = v27;
        v41[1] = v19;
      }

      else
      {
        *v41 = 0;
        v41[1] = 0;
      }
    }

    else
    {
      *v4 = 0;
      v4[1] = 0;
    }
  }

  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (id)segmentsFromCandidate:(id)candidate phraseBoundary:(BOOL)boundary
{
  boundaryCopy = boundary;
  candidateCopy = candidate;
  if ([(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:candidateCopy])
  {
    v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
    input = [candidateCopy input];
    v24 = candidateCopy;
    candidate = [candidateCopy candidate];
    WordCount = MecabraCandidateGetWordCount();
    if (WordCount >= 1)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = WordCount;
      v25 = WordCount - 1;
      while (1)
      {
        NextPhraseBoundary = v10;
        if (boundaryCopy)
        {
          NextPhraseBoundary = MecabraCandidateGetNextPhraseBoundary();
        }

        if (v11 == 1 && NextPhraseBoundary == -1)
        {
          break;
        }

        if (NextPhraseBoundary == -1)
        {
          v13 = v25;
        }

        else
        {
          v13 = NextPhraseBoundary;
        }

        if (v10 <= v13)
        {
          v15 = 0;
          v14 = 0;
          do
          {
            v15 += MecabraCandidateGetWordReadingLengthAtIndex();
            v14 += MecabraCandidateGetWordLengthAtIndex();
            ++v10;
          }

          while (v13 + 1 != v10);
        }

        else
        {
          v14 = 0;
          v15 = 0;
        }

        v16 = v15 + v8;
        if ([input length] >= (v15 + v8))
        {
          v17 = [input substringWithRange:{v8, v15}];
        }

        else
        {
          v17 = input;
        }

        v18 = v17;
        v19 = [candidate substringWithRange:{v9, v14}];
        v20 = objc_alloc_init(TIMecabraSegment);
        [(TIMecabraSegment *)v20 setReading:v18];
        [(TIMecabraSegment *)v20 setSurface:v19];
        [v28 addObject:v20];
        v9 += v14;

        v10 = v13 + 1;
        v8 = v16;
        if (v13 + 1 >= v11)
        {
          goto LABEL_22;
        }
      }

      v22 = objc_alloc_init(TIMecabraSegment);
      [(TIMecabraSegment *)v22 setReading:input];
      [(TIMecabraSegment *)v22 setSurface:candidate];
      [v28 addObject:v22];
    }

LABEL_22:
    v21 = [v28 copy];

    candidateCopy = v24;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)mecabraCandidateRefFromCandidate:(id)candidate
{
  candidateCopy = candidate;
  proactiveTrigger = [candidateCopy proactiveTrigger];

  if (!proactiveTrigger)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = 0;
      goto LABEL_10;
    }

    wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    candidateRefsDictionary = [wordSearchCandidateResultSet candidateRefsDictionary];
    mecabraCandidatePointerValue = [candidateCopy mecabraCandidatePointerValue];
    v11 = [candidateRefsDictionary objectForKey:mecabraCandidatePointerValue];

    goto LABEL_7;
  }

  proactiveTrigger2 = [candidateCopy proactiveTrigger];
  attributes = [proactiveTrigger2 attributes];
  wordSearchCandidateResultSet = [attributes objectForKey:*MEMORY[0x277D6FD88]];

  if (!wordSearchCandidateResultSet)
  {
    v11 = 0;
    goto LABEL_9;
  }

  wordSearchCandidateResultSet2 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  candidateRefsDictionary2 = [wordSearchCandidateResultSet2 candidateRefsDictionary];
  v11 = [candidateRefsDictionary2 objectForKey:wordSearchCandidateResultSet];

  if (v11)
  {
    candidateRefsDictionary = [candidateCopy candidate];
    MecabraCandidateSetDisplayString();
LABEL_7:
  }

LABEL_9:

LABEL_10:
  return v11;
}

- (id)candidateResultSetFromWordSearchCandidateResultSet:(id)set
{
  setCopy = set;
  candidates = [setCopy candidates];
  proactiveCandidates = [setCopy proactiveCandidates];
  v7 = [proactiveCandidates count];

  if (v7)
  {
    proactiveCandidates2 = [setCopy proactiveCandidates];
    candidates2 = [setCopy candidates];
    v10 = [proactiveCandidates2 arrayByAddingObjectsFromArray:candidates2];

    candidates = v10;
  }

  proactiveTriggers = [setCopy proactiveTriggers];
  v12 = [(TIKeyboardInputManager *)self candidateResultSetFromCandidates:candidates proactiveTriggers:proactiveTriggers];

  disambiguationCandidates = [setCopy disambiguationCandidates];
  [v12 setDisambiguationCandidates:disambiguationCandidates];

  [v12 setSelectedDisambiguationCandidateIndex:{objc_msgSend(setCopy, "selectedDisambiguationCandidateIndex")}];

  return v12;
}

- (void)deleteFromInputWithContext:(id)context
{
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManagerMecabra;
  [(TIKeyboardInputManager *)&v10 deleteFromInputWithContext:context];
  usesMarkedTextForInput = [(TIKeyboardInputManagerMecabra *)self usesMarkedTextForInput];
  if (usesMarkedTextForInput)
  {
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    documentState = [keyboardState documentState];
    markedText = [documentState markedText];
    if (![markedText length])
    {

LABEL_11:
      [(TIKeyboardInputManagerMecabra *)self updateDocumentContext];
      keyboardState = [(TIKeyboardInputManagerMecabra *)self wordSearch];
      [keyboardState adjustEnvironmentOnAction:2];
      goto LABEL_12;
    }

    if ([(TIKeyboardInputManagerMecabra *)self usesMarkedTextForInput])
    {

LABEL_12:
      return;
    }
  }

  else if ([(TIKeyboardInputManagerMecabra *)self usesMarkedTextForInput])
  {
    return;
  }

  inputString = [(TIKeyboardInputManager *)self inputString];
  v9 = [inputString length];

  if (usesMarkedTextForInput)
  {
  }

  if (!v9)
  {
    goto LABEL_11;
  }
}

- (void)updateDocumentContext
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState documentState];

  if (documentState)
  {
    contextBeforeInput = [documentState contextBeforeInput];
    contextAfterInput = [documentState contextAfterInput];
    if (!contextBeforeInput)
    {
      contextBeforeInput = &stru_283FDFAF8;
    }

    if (contextAfterInput)
    {
      v6 = contextAfterInput;
    }

    else
    {
      v6 = &stru_283FDFAF8;
    }

    wordSearch = [(TIKeyboardInputManagerMecabra *)self wordSearch];
    [wordSearch setLeftDocumentContext:contextBeforeInput rightDocumentContext:v6];
  }
}

- (id)handleKeyboardInput:(id)input
{
  inputCopy = input;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v6 = [composingKeyboardInputManager handleKeyboardInput:inputCopy];

  if (v6)
  {
    goto LABEL_23;
  }

  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState documentState];
  markedText = [documentState markedText];

  v10 = objc_msgSend_string(inputCopy);
  if (![markedText length] && objc_msgSend(v10, "length"))
  {
    v12 = [v10 characterAtIndex:0];
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    if (![whitespaceCharacterSet characterIsMember:v12] || !-[TIKeyboardInputManagerMecabra whiteSpaceEndsSentence](self, "whiteSpaceEndsSentence"))
    {
      newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
      if (![newlineCharacterSet characterIsMember:v12])
      {
        punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
        if ([punctuationCharacterSet characterIsMember:v12])
        {
          apostropheEndsSentence = [(TIKeyboardInputManagerMecabra *)self apostropheEndsSentence];

          if (apostropheEndsSentence || v12 != 39)
          {
            goto LABEL_10;
          }
        }

        else
        {
        }

        if ([(TIKeyboardInputManagerMecabra *)self usesMarkedTextForInput])
        {
          [(TIKeyboardInputManagerMecabra *)self updateDocumentContext];
          wordSearch = [(TIKeyboardInputManagerMecabra *)self wordSearch];
          [wordSearch adjustEnvironmentOnAction:1];

          [(TIKeyboardInputManagerMecabra *)self setHasCommittedPartialCandidate:0];
          [(TIKeyboardInputManagerMecabra *)self setHasBackspacedIntoInputString:0];
        }

        v11 = 0;
        goto LABEL_19;
      }
    }

LABEL_10:
    wordSearch2 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
    [wordSearch2 declareEndOfSentence];

    v11 = 1;
LABEL_19:
    [(TIKeyboardInputManagerMecabra *)self setLastCommittedCandidateType:0];
    goto LABEL_20;
  }

  v11 = 0;
LABEL_20:
  v21.receiver = self;
  v21.super_class = TIKeyboardInputManagerMecabra;
  v6 = [(TIKeyboardInputManager_mul *)&v21 handleKeyboardInput:inputCopy];
  if (v11)
  {
    wordSearch3 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
    [wordSearch3 clearLeftDocumentContext];
  }

LABEL_23:

  return v6;
}

- (BOOL)stringEndsWord:(id)word
{
  wordCopy = word;
  if ([(TIKeyboardInputManagerMecabra *)self stringContainsActiveSupplementalLexiconSearchPrefix:wordCopy])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TIKeyboardInputManagerMecabra;
    v5 = [(TIKeyboardInputManager *)&v7 stringEndsWord:wordCopy];
  }

  return v5;
}

- (BOOL)stringContainsActiveSupplementalLexiconSearchPrefix:(id)prefix
{
  prefixCopy = prefix;
  currentCandidateGenerationContextSupplementalLexicons = [(TIKeyboardInputManager *)self currentCandidateGenerationContextSupplementalLexicons];

  if (currentCandidateGenerationContextSupplementalLexicons)
  {
    currentCandidateGenerationContextSupplementalLexicons2 = [(TIKeyboardInputManager *)self currentCandidateGenerationContextSupplementalLexicons];
    activeLexicon = [currentCandidateGenerationContextSupplementalLexicons2 activeLexicon];
    v8 = activeLexicon;
    if (activeLexicon)
    {
      searchPrefixCharacter = [activeLexicon searchPrefixCharacter];
      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&searchPrefixCharacter length:1];
      v10 = [prefixCopy containsString:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)incrementUsageTrackingKeysForDeleteFromInput
{
  v15.receiver = self;
  v15.super_class = TIKeyboardInputManagerMecabra;
  [(TIKeyboardInputManager *)&v15 incrementUsageTrackingKeysForDeleteFromInput];
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  inputMode = [keyboardState inputMode];

  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState2 documentState];
  markedText = [documentState markedText];
  v8 = [markedText length];

  if (v8)
  {
    if (![(TIKeyboardInputManagerMecabra *)self hasBackspacedIntoInputString])
    {
      v9 = TIStatisticGetKeyForCandidateAccepted();
      TIStatisticScalarIncrement();

      [(TIKeyboardInputManagerMecabra *)self setHasBackspacedIntoInputString:1];
    }
  }

  else
  {
    lastCommittedCandidateType = [(TIKeyboardInputManagerMecabra *)self lastCommittedCandidateType];
    if (lastCommittedCandidateType == 1)
    {
      v11 = MEMORY[0x277D6FB28];
    }

    else
    {
      if (lastCommittedCandidateType != 2)
      {
        goto LABEL_10;
      }

      v11 = MEMORY[0x277D6FB38];
    }

    v12 = *v11;
    if (v12)
    {
      v13 = v12;
      v14 = TIStatisticGetKeyForCandidateAccepted();
      TIStatisticScalarIncrement();

      [(TIKeyboardInputManagerMecabra *)self setLastCommittedCandidateType:0];
    }
  }

LABEL_10:
}

- (void)updateUsageStatisticsForCandidate:(id)candidate isPartial:(BOOL)partial
{
  partialCopy = partial;
  input = [candidate input];
  v7 = [input length];

  if (v7)
  {
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    inputMode = [keyboardState inputMode];

    v10 = TIStatisticGetKeyForCandidateAccepted();
    TIStatisticScalarIncrement();

    if (![(TIKeyboardInputManagerMecabra *)self hasCommittedPartialCandidate])
    {
      v11 = TIStatisticGetKeyForCandidateAccepted();
      TIStatisticScalarIncrement();

      if (partialCopy)
      {
        [(TIKeyboardInputManagerMecabra *)self setHasCommittedPartialCandidate:1];
      }

      else
      {
        v12 = TIStatisticGetKeyForCandidateAccepted();
        TIStatisticScalarIncrement();
      }
    }
  }

  if (!partialCopy)
  {
    if (v7)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    [(TIKeyboardInputManagerMecabra *)self setLastCommittedCandidateType:v13];
  }
}

- (void)syncMarkedTextForKeyboardState:(id)state afterContextChange:(BOOL)change
{
  changeCopy = change;
  stateCopy = state;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

  if (!composingKeyboardInputManager)
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManagerMecabra;
    [(TIKeyboardInputManager *)&v8 syncMarkedTextForKeyboardState:stateCopy afterContextChange:changeCopy];
  }
}

- (void)syncToKeyboardState:(id)state from:(id)from afterContextChange:(BOOL)change
{
  changeCopy = change;
  v17.receiver = self;
  v17.super_class = TIKeyboardInputManagerMecabra;
  stateCopy = state;
  [(TIKeyboardInputManager *)&v17 syncToKeyboardState:stateCopy from:from afterContextChange:changeCopy];
  if ([(TIKeyboardInputManagerMecabra *)self supportsPerRecipientLearning:v17.receiver])
  {
    [(TIKeyboardInputManagerMecabra *)self setLanguageModelAdaptationContext];
  }

  textInputTraits = [stateCopy textInputTraits];
  textContentType = [textInputTraits textContentType];
  v11 = [(TIKeyboardInputManagerMecabra *)self mecabraTextContentTypeFromTITextContentType:textContentType];

  wordSearch = [(TIKeyboardInputManagerMecabra *)self wordSearch];
  [wordSearch setMecabraTextContentType:v11];

  wordSearch2 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
  isScreenLocked = [stateCopy isScreenLocked];

  [wordSearch2 setDisablePersonalData:isScreenLocked];
  if (changeCopy)
  {
    [(TIKeyboardInputManagerMecabra *)self updateDocumentContext];
    wordSearch3 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
    [wordSearch3 adjustEnvironmentOnAction:3];

    [(TIKeyboardInputManagerMecabra *)self setLastCommittedCandidateType:0];
  }

  if (![(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [composingInput removeAllInputs];
  }
}

- (BOOL)syncToKeyboardState:(id)state completionHandler:(id)handler
{
  handlerCopy = handler;
  stateCopy = state;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v9 = [composingKeyboardInputManager syncToKeyboardState:stateCopy completionHandler:handlerCopy];

  return v9;
}

- (int)mecabraTextContentTypeFromTITextContentType:(id)type
{
  typeCopy = type;
  v4 = typeCopy;
  if (typeCopy)
  {
    if (objc_msgSend_isEqualToString_(typeCopy))
    {
      v5 = 1;
    }

    else if (objc_msgSend_isEqualToString_(v4))
    {
      v5 = 2;
    }

    else if (objc_msgSend_isEqualToString_(v4))
    {
      v5 = 3;
    }

    else if (objc_msgSend_isEqualToString_(v4))
    {
      v5 = 4;
    }

    else if (objc_msgSend_isEqualToString_(v4))
    {
      v5 = 5;
    }

    else if (objc_msgSend_isEqualToString_(v4))
    {
      v5 = 6;
    }

    else if (objc_msgSend_isEqualToString_(v4))
    {
      v5 = 7;
    }

    else if (objc_msgSend_isEqualToString_(v4))
    {
      v5 = 8;
    }

    else if (objc_msgSend_isEqualToString_(v4))
    {
      v5 = 9;
    }

    else if (objc_msgSend_isEqualToString_(v4))
    {
      v5 = 10;
    }

    else if (objc_msgSend_isEqualToString_(v4))
    {
      v5 = 11;
    }

    else if (objc_msgSend_isEqualToString_(v4))
    {
      v5 = 12;
    }

    else if (objc_msgSend_isEqualToString_(v4))
    {
      v5 = 13;
    }

    else if (objc_msgSend_isEqualToString_(v4))
    {
      v5 = 14;
    }

    else if (objc_msgSend_isEqualToString_(v4))
    {
      v5 = 15;
    }

    else if (objc_msgSend_isEqualToString_(v4))
    {
      v5 = 16;
    }

    else if (objc_msgSend_isEqualToString_(v4))
    {
      v5 = 17;
    }

    else if (objc_msgSend_isEqualToString_(v4))
    {
      v5 = 18;
    }

    else if (objc_msgSend_isEqualToString_(v4))
    {
      v5 = 19;
    }

    else if (objc_msgSend_isEqualToString_(v4))
    {
      v5 = 20;
    }

    else if (objc_msgSend_isEqualToString_(v4))
    {
      v5 = 21;
    }

    else if (objc_msgSend_isEqualToString_(v4))
    {
      v5 = 22;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setLanguageModelAdaptationContext
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  clientIdentifier = [keyboardState clientIdentifier];
  v5 = clientIdentifier;
  if (clientIdentifier)
  {
    v6 = clientIdentifier;
  }

  else
  {
    v6 = &stru_283FDFAF8;
  }

  v16 = v6;

  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  recipientIdentifier = [keyboardState2 recipientIdentifier];
  v9 = recipientIdentifier;
  if (recipientIdentifier)
  {
    v10 = recipientIdentifier;
  }

  else
  {
    v10 = &stru_283FDFAF8;
  }

  v11 = v10;

  currentClientIdentifier = [(TIKeyboardInputManagerMecabra *)self currentClientIdentifier];
  if ((objc_msgSend_isEqualToString_(v16) & 1) == 0)
  {

    goto LABEL_11;
  }

  currentRecipientIdentifier = [(TIKeyboardInputManagerMecabra *)self currentRecipientIdentifier];
  isEqualToString = objc_msgSend_isEqualToString_(v11);

  if ((isEqualToString & 1) == 0)
  {
LABEL_11:
    wordSearch = [(TIKeyboardInputManagerMecabra *)self wordSearch];
    [wordSearch setLanguageModelAdaptationContextWithClientIdentifier:v16 recipientIdentifier:v11];

    [(TIKeyboardInputManagerMecabra *)self setCurrentRecipientIdentifier:v11];
    [(TIKeyboardInputManagerMecabra *)self setCurrentClientIdentifier:v16];
  }
}

- (BOOL)updateLanguageModelForKeyboardState
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  clientIdentifier = [keyboardState clientIdentifier];

  v5 = +[TIKeyboardInputManagerMecabra initializedClients];
  v6 = v5;
  if (clientIdentifier)
  {
    if (([v5 containsObject:clientIdentifier] & 1) == 0)
    {
      wordSearch = [(TIKeyboardInputManagerMecabra *)self wordSearch];
      mecabra = [wordSearch mecabra];

      if (mecabra)
      {
        v9 = +[TIWordSearch sharedOperationQueue];
        v13 = MEMORY[0x277D85DD0];
        v14 = 3221225472;
        v15 = __68__TIKeyboardInputManagerMecabra_updateLanguageModelForKeyboardState__block_invoke;
        v16 = &unk_278731048;
        v18 = mecabra;
        v10 = clientIdentifier;
        v17 = v10;
        v11 = [(NSBlockOperation *)TINoncancellableBlockOperation blockOperationWithBlock:&v13];
        [v9 addOperation:{v11, v13, v14, v15, v16}];

        [v6 addObject:v10];
      }
    }
  }

  return 1;
}

void __68__TIKeyboardInputManagerMecabra_updateLanguageModelForKeyboardState__block_invoke(uint64_t a1)
{
  MecabraGetLastOfflineAdaptationTime();
  v3 = v2;
  v4 = dispatch_time(0, 20000000000);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__TIKeyboardInputManagerMecabra_updateLanguageModelForKeyboardState__block_invoke_2;
  v5[3] = &unk_278731048;
  v6 = *(a1 + 32);
  v7 = v3;
  dispatch_after(v4, MEMORY[0x277D85CD0], v5);
}

void __68__TIKeyboardInputManagerMecabra_updateLanguageModelForKeyboardState__block_invoke_2(uint64_t a1)
{
  v3 = [[TILanguageModelOfflineLearningStrategyMecabraFavonius alloc] initWithClientIdentifier:*(a1 + 32)];
  v2 = +[TILanguageModelOfflineLearningAgent sharedLearningAgent];
  [v2 performLearningIfNecessaryWithStrategy:v3 lastAdaptationTime:*(a1 + 40)];
}

- (BOOL)shouldUpdateLanguageModel
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  if ([keyboardState secureTextEntry])
  {
    v3 = 0;
  }

  else
  {
    v3 = TI_DEVICE_UNLOCKED_SINCE_BOOT();
  }

  return v3;
}

- (id)adaptationContextReadingForReanalysisString:(id)string fromRecentlyCommittedCandidates:(id)candidates
{
  v70 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  candidatesCopy = candidates;
  if (![candidatesCopy count])
  {
    v13 = 0;
    goto LABEL_53;
  }

  v6 = objc_msgSend_string(MEMORY[0x277CCAB68]);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v7 = candidatesCopy;
  v8 = [v7 countByEnumeratingWithState:&v63 objects:v69 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v64;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v64 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (!MecabraCandidateIsUserWordCandidate())
        {
          [v6 appendString:MecabraCandidateGetSurface()];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v63 objects:v69 count:16];
    }

    while (v9);
  }

  v12 = [v6 rangeOfString:stringCopy options:6];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
    goto LABEL_52;
  }

  v44 = v12;
  v45 = candidatesCopy;
  array = [MEMORY[0x277CBEB18] array];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (!v16)
  {
    goto LABEL_45;
  }

  v17 = v16;
  v18 = *v60;
  v48 = v15;
  v49 = v6;
  v47 = *v60;
  while (2)
  {
    v19 = 0;
    v50 = v17;
    do
    {
      if (*v60 != v18)
      {
        objc_enumerationMutation(v15);
      }

      if (!MecabraCandidateIsUserWordCandidate())
      {
        v20 = MecabraCandidateGetAnalysisString();
        if (!v20)
        {
LABEL_42:

          goto LABEL_43;
        }

        v21 = MecabraCandidateCopySyllableLengthArrayInAnalysisString();
        if ([v21 count])
        {
          v22 = [v20 length];
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v51 = v21;
          v23 = v21;
          v24 = [v23 countByEnumeratingWithState:&v55 objects:v67 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = 0;
            v27 = *v56;
            do
            {
              v28 = 0;
              v29 = v26;
              do
              {
                if (*v56 != v27)
                {
                  objc_enumerationMutation(v23);
                }

                unsignedIntegerValue = [*(*(&v55 + 1) + 8 * v28) unsignedIntegerValue];
                v26 = unsignedIntegerValue + v29;
                if (v22 >= unsignedIntegerValue + v29)
                {
                  v31 = [v20 substringWithRange:{v29, unsignedIntegerValue}];
                  [array addObject:v31];
                }

                ++v28;
                v29 = v26;
              }

              while (v25 != v28);
              v25 = [v23 countByEnumeratingWithState:&v55 objects:v67 count:16];
            }

            while (v25);
            v15 = v48;
            v6 = v49;
            v18 = v47;
LABEL_39:
            v17 = v50;
          }

          v21 = v51;
          goto LABEL_41;
        }

        v23 = MecabraCandidateGetSurface();
        if (objc_msgSend_isEqualToString_(stringCopy))
        {
          v20 = v20;
          v13 = v20;
          candidatesCopy = v45;
        }

        else
        {
          WordCount = MecabraCandidateGetWordCount();
          if (!WordCount)
          {
LABEL_41:

            goto LABEL_42;
          }

          v51 = v21;
          v46 = v19;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v52 = WordCount;
          while (1)
          {
            WordLengthAtIndex = MecabraCandidateGetWordLengthAtIndex();
            v37 = [v23 substringWithRange:{v33, WordLengthAtIndex}];
            WordDictionaryReadingLengthAtIndex = MecabraCandidateGetWordDictionaryReadingLengthAtIndex();
            if (objc_msgSend_isEqualToString_(stringCopy))
            {
              v38 = MecabraCandidateGetDictionaryReading();
              if (v38)
              {
                break;
              }
            }

            v33 += WordLengthAtIndex;
            v34 += WordDictionaryReadingLengthAtIndex;

            if (v52 == ++v35)
            {
              v15 = v48;
              v6 = v49;
              v19 = v46;
              v18 = v47;
              goto LABEL_39;
            }
          }

          v42 = v38;
          v13 = [v38 substringWithRange:{v34, WordDictionaryReadingLengthAtIndex}];

          candidatesCopy = v45;
          v15 = v48;
          v6 = v49;
          v21 = v51;
        }

        goto LABEL_50;
      }

LABEL_43:
      ++v19;
    }

    while (v19 != v17);
    v17 = [v15 countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_45:

  v39 = [v6 substringToIndex:v44];
  _graphemeCount = [v39 _graphemeCount];

  _graphemeCount2 = [stringCopy _graphemeCount];
  if ([array count] >= (_graphemeCount2 + _graphemeCount))
  {
    v15 = [array subarrayWithRange:{_graphemeCount, _graphemeCount2}];
    v13 = [v15 componentsJoinedByString:&stru_283FDFAF8];
    candidatesCopy = v45;
LABEL_50:
  }

  else
  {
    v13 = 0;
    candidatesCopy = v45;
  }

LABEL_52:
LABEL_53:

  return v13;
}

- (void)handlePerformBackgroundMaintenanceNotification
{
  wordSearch = [(TIKeyboardInputManagerMecabra *)self wordSearch];
  if (wordSearch)
  {
    v6 = wordSearch;
    v3 = [TIWordSearchOperationPerformMaintenance alloc];
    mecabraWrapper = [v6 mecabraWrapper];
    v5 = [(TIWordSearchOperationPerformMaintenance *)v3 initWithMecabraWrapper:mecabraWrapper];

    [v6 performOperationAsync:v5 withBackgroundActivityAssertion:1];
    wordSearch = v6;
  }
}

- (id)inputsToReject
{
  rawInputString = [(TIKeyboardInputManager *)self rawInputString];
  v3 = [rawInputString length];

  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D6F330]) initWithCharactersInString:@"\t"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)pathedWordSeparator
{
  if ([(TIKeyboardInputManagerMecabra *)self pathedWordSeparatorChar])
  {
    v3 = [MEMORY[0x277CCACA8] _stringWithUnichar:{-[TIKeyboardInputManagerMecabra pathedWordSeparatorChar](self, "pathedWordSeparatorChar")}];
  }

  else
  {
    v3 = &stru_283FDFAF8;
  }

  return v3;
}

- (void)resume
{
  v2.receiver = self;
  v2.super_class = TIKeyboardInputManagerMecabra;
  [(TIKeyboardInputManager_mul *)&v2 resume];
}

- (void)suspend
{
  config = [(TIKeyboardInputManager *)self config];
  isTesting = [config isTesting];

  if ((isTesting & 1) == 0)
  {
    wordSearch = [(TIKeyboardInputManagerMecabra *)self wordSearch];
    [wordSearch saveLearningDictionary];
  }

  wordSearch2 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
  [wordSearch2 resetMecabraEnvironment];

  [(TIKeyboardInputManagerMecabra *)self handlePerformBackgroundMaintenanceNotification];
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerMecabra;
  [(TIKeyboardInputManager_mul *)&v7 suspend];
}

- (void)insertDummyTouchDataAtIndex:(unint64_t)index
{
  touchDataArray = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
  dummyTouchData = [objc_opt_class() dummyTouchData];
  touchDataArray2 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
  if ([touchDataArray2 count] <= index)
  {
    touchDataArray3 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
    [touchDataArray insertObject:dummyTouchData atIndex:{objc_msgSend(touchDataArray3, "count")}];
  }

  else
  {
    [touchDataArray insertObject:dummyTouchData atIndex:index];
  }
}

- (void)insertDummyGeometryDataAtIndex:(unint64_t)index
{
  geometryDataArray = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
  dummyGeometryData = [objc_opt_class() dummyGeometryData];
  [geometryDataArray insertObject:dummyGeometryData atIndex:index];
}

- (void)storeLanguageModelDynamicDataIncludingCache
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerMecabra;
  [(TIKeyboardInputManager *)&v5 storeLanguageModelDynamicDataIncludingCache];
  rawInputString = [(TIKeyboardInputManager *)self rawInputString];
  v4 = [rawInputString length];

  if (v4)
  {
    [(TIKeyboardInputManagerMecabra *)self logInputString];
  }
}

- (void)logCommittedCandidate:(id)candidate partial:(BOOL)partial
{
  partialCopy = partial;
  candidate = [candidate candidate];
  rawInputString = [(TIKeyboardInputManager *)self rawInputString];
  if ([candidate length])
  {
    v7 = @"NO";
    if (partialCopy)
    {
      v7 = @"YES";
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Accepted candidate:%@ partial:%@; input:%@\n\n", candidate, v7, rawInputString];;
    [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:v8];
  }
}

- (void)logAllCandidates
{
  v34 = *MEMORY[0x277D85DE8];
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  candidates = [wordSearchCandidateResultSet candidates];

  if ([candidates count])
  {
    selfCopy = self;
    inputString = [(TIKeyboardInputManager *)self inputString];
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(candidates, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = candidates;
    obj = candidates;
    v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    v27 = v6;
    if (v7)
    {
      v8 = v7;
      v9 = *v30;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v29 + 1) + 8 * i);
          input = [v11 input];
          if ([input length])
          {
            input2 = [v11 input];
            if (objc_msgSend_isEqualToString_(input2))
            {
              candidate = [v11 candidate];
            }

            else
            {
              v15 = MEMORY[0x277CCACA8];
              input3 = [v11 input];
              [v11 candidate];
              v18 = v17 = inputString;
              v19 = v15;
              v6 = v27;
              candidate = [v19 stringWithFormat:@"%@ -> %@", input3, v18];

              inputString = v17;
            }
          }

          else
          {
            candidate = [v11 candidate];
          }

          if (candidate)
          {
            [v6 addObject:candidate];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v8);
    }

    v20 = MEMORY[0x277CCACA8];
    v21 = [v6 componentsJoinedByString:@" "];;
    v22 = [v20 stringWithFormat:@"All candidates: %@\n\n", v21];

    if ([v22 length] >= 0xBB9)
    {
      v23 = [v22 substringToIndex:3000];
      v24 = [v23 stringByAppendingString:@"..."];

      v22 = v24;
    }

    candidates = v26;
    [(TIKeyboardInputManager *)selfCopy logToTypologyRecorderWithString:v22];
  }
}

- (void)logDocumentContext
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState documentState];

  v4 = MEMORY[0x277CCACA8];
  contextBeforeInput = [documentState contextBeforeInput];
  v6 = [v4 stringWithFormat:@"Context Before Input: %@\n", contextBeforeInput];
  [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:v6];

  v7 = MEMORY[0x277CCACA8];
  contextAfterInput = [documentState contextAfterInput];
  v9 = [v7 stringWithFormat:@"Context After Input: %@\n", contextAfterInput];
  [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:v9];
}

- (void)logInputString
{
  rawInputString = [(TIKeyboardInputManager *)self rawInputString];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(__CFString *)rawInputString length];
  v6 = @"(none)";
  if (v5)
  {
    v6 = rawInputString;
  }

  v7 = [v4 stringWithFormat:@"Input String: %@\n", v6];
  [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:v7];

  v8 = MEMORY[0x277CCACA8];
  composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
  shortDescription = [composingInput shortDescription];
  v11 = [v8 stringWithFormat:@"Keyboard Input: %@\n", shortDescription];
  [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:v11];

  geometryDataArray = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
  touchDataArray = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v14 = [(__CFString *)rawInputString length];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __47__TIKeyboardInputManagerMecabra_logInputString__block_invoke;
  v23[3] = &unk_27872F378;
  if (v14 >= 0x14)
  {
    v15 = 20;
  }

  else
  {
    v15 = v14;
  }

  v24 = touchDataArray;
  v25 = geometryDataArray;
  if (v14 <= 0x14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14 - 20;
  }

  selfCopy = self;
  v27 = v28;
  v17 = geometryDataArray;
  v18 = touchDataArray;
  [(__CFString *)rawInputString enumerateSubstringsInRange:v16 options:v15 usingBlock:2, v23];
  v19 = MEMORY[0x277CCACA8];
  inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
  normalizedIdentifier = [inputMode normalizedIdentifier];
  v22 = [v19 stringWithFormat:@"Keyboard: %@\n", normalizedIdentifier];
  [(TIKeyboardInputManager *)self logToTypologyRecorderWithString:v22];

  [(TIKeyboardInputManagerMecabra *)self logDocumentContext];
  [(TIKeyboardInputManagerMecabra *)self logAllCandidates];

  _Block_object_dispose(v28, 8);
}

void __47__TIKeyboardInputManagerMecabra_logInputString__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  *&v47[164] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = *(*(*(a1 + 56) + 8) + 24);
  if (v10 >= [*(a1 + 32) count] || (v11 = *(*(*(a1 + 56) + 8) + 24), v11 >= objc_msgSend(*(a1 + 40), "count")))
  {
    *a7 = 1;
  }

  else
  {
    v12 = [*(a1 + 48) validCharacterSetForAutocorrection];
    v13 = [v12 characterIsMember:{objc_msgSend(v9, "characterAtIndex:", 0)}];

    if (v13)
    {
      v14 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
      v15 = [v14 objectAtIndexedSubscript:2];
      [v15 doubleValue];
      v17 = v16;

      v18 = [v14 objectAtIndexedSubscript:5];
      [v18 doubleValue];
      v20 = v19;

      if (v17 == 0.0)
      {
        v17 = v20;
      }

      if ([v14 count] < 7)
      {
        v24 = &stru_283FDFAF8;
      }

      else
      {
        v21 = [v14 objectAtIndexedSubscript:6];
        v22 = [v21 integerValue];

        v23 = @"; flick";
        if (v22 == 1)
        {
          v23 = @"; multitap";
        }

        v24 = v23;
      }

      v27 = [*(a1 + 40) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
      v28 = [v27 length];
      if (v28 < 0xA9)
      {
        v29 = v28;
        v45 = v24;
        [v27 getBytes:v46 length:v28];
        v30 = [MEMORY[0x277CBEB18] array];
        if (v29 >= 0x10)
        {
          v31 = (v29 >> 3) - 1;
          v32 = v47;
          do
          {
            v33 = *(v32 - 2);
            v34 = *v32;
            v32 += 2;
            v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C:%f", v33, v34];
            [v30 addObject:v35];

            --v31;
          }

          while (v31);
        }

        v43 = MEMORY[0x277CCACA8];
        v44 = *(a1 + 48);
        v42 = *(*(*(a1 + 56) + 8) + 24);
        v41 = [v30 componentsJoinedByString:{@", "}];
        v36 = [v14 objectAtIndexedSubscript:0];
        v37 = [v14 objectAtIndexedSubscript:1];
        v38 = [v14 objectAtIndexedSubscript:3];
        v39 = [v14 objectAtIndexedSubscript:4];
        v40 = [v43 stringWithFormat:@"%lu %@; %@; %@, %@; %@, %@; %.3f; %.3f%@\n", v42, v9, v41, v36, v37, v38, v39, v20 - v17, *&v20, v45];;
        [v44 logToTypologyRecorderWithString:v40];

        v24 = v45;
        *(*(*(a1 + 56) + 8) + 24) += [v9 length];
      }

      else
      {
        *a7 = 1;
      }
    }

    else
    {
      v25 = *(a1 + 48);
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu %@\n", *(*(*(a1 + 56) + 8) + 24), v9];;
      [v25 logToTypologyRecorderWithString:v26];

      *(*(*(a1 + 56) + 8) + 24) += [v9 length];
    }
  }
}

- (void)saveTouchDataForEvent:(id)event atIndex:(unint64_t)index
{
  eventCopy = event;
  touchEvent = [eventCopy touchEvent];
  if (!touchEvent)
  {
    goto LABEL_5;
  }

  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  if (([keyboardState hardwareKeyboardMode] & 1) != 0 || objc_msgSend(eventCopy, "isPopupVariant"))
  {

LABEL_5:
    dummyTouchData = [objc_opt_class() dummyTouchData];
    goto LABEL_6;
  }

  isGesture = [eventCopy isGesture];

  if (isGesture)
  {
    goto LABEL_5;
  }

  dummyTouchData = -[TIKeyboardInputManagerMecabra touchDataForPathIndex:](self, "touchDataForPathIndex:", [touchEvent pathIndex]);
LABEL_6:
  v9 = dummyTouchData;
  if ([eventCopy isMultitap])
  {
    v10 = &unk_28400BC40;
  }

  else
  {
    if (![eventCopy isFlick])
    {
      goto LABEL_11;
    }

    v10 = &unk_28400BC58;
  }

  v11 = [v9 arrayByAddingObject:v10];

  v9 = v11;
LABEL_11:
  touchDataArray = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
  touchDataArray2 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
  if ([touchDataArray2 count] <= index)
  {
    touchDataArray3 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
    [touchDataArray insertObject:v9 atIndex:{objc_msgSend(touchDataArray3, "count")}];
  }

  else
  {
    [touchDataArray insertObject:v9 atIndex:index];
  }
}

- (id)touchDataForPathIndex:(int64_t)index
{
  v29[6] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  touchDownEvents = [(TIKeyboardInputManagerMecabra *)self touchDownEvents];
  v6 = [touchDownEvents objectForKey:v4];

  touchUpEvents = [(TIKeyboardInputManagerMecabra *)self touchUpEvents];
  v8 = [touchUpEvents objectForKey:v4];

  if (v6)
  {
    [v6 location];
    v10 = v9;
    v12 = v11;
    [v6 timestamp];
    v14 = v13;
    if (v8)
    {
LABEL_3:
      [v8 location];
      v16 = v15;
      v18 = v17;
      [v8 timestamp];
      v20 = v19;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = *MEMORY[0x277CBF348];
    v12 = *(MEMORY[0x277CBF348] + 8);
    v14 = 0.0;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  v16 = *MEMORY[0x277CBF348];
  v18 = *(MEMORY[0x277CBF348] + 8);
  v20 = 0.0;
LABEL_6:
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v29[0] = v21;
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  v29[1] = v22;
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
  v29[2] = v23;
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
  v29[3] = v24;
  v25 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
  v29[4] = v25;
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
  v29[5] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:6];

  return v27;
}

- (int64_t)addTouch:(id)touch shouldHitTest:(BOOL)test
{
  testCopy = test;
  touchCopy = touch;
  if (self->super.super.m_impl)
  {
    if ([(TIKeyboardInputManager *)self isTypologyEnabled]|| [(TIKeyboardInputManagerMecabra *)self needsTouchEvents])
    {
      if (![touchCopy stage])
      {
        touchDownEvents = [(TIKeyboardInputManagerMecabra *)self touchDownEvents];
        goto LABEL_9;
      }

      if ([touchCopy stage] == 2)
      {
        touchDownEvents = [(TIKeyboardInputManagerMecabra *)self touchUpEvents];
LABEL_9:
        v9 = touchDownEvents;
        v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(touchCopy, "pathIndex")}];
        [v9 setObject:touchCopy forKey:v10];
      }
    }

    if (!-[TIKeyboardInputManagerMecabra usesComposingInput](self, "usesComposingInput") || [touchCopy stage] != 1 && objc_msgSend(touchCopy, "stage") != 2)
    {
LABEL_49:
      v36.receiver = self;
      v36.super_class = TIKeyboardInputManagerMecabra;
      v8 = [(TIKeyboardInputManager *)&v36 addTouch:touchCopy shouldHitTest:testCopy];
      goto LABEL_50;
    }

    previousTouchEvent = [(TIKeyboardInputManager *)self previousTouchEvent];
    if (![(MCDrawInput *)previousTouchEvent stage])
    {
      stage = [touchCopy stage];

      if (stage != 1)
      {
        goto LABEL_24;
      }

      v13 = [MCDrawInput alloc];
      objc_msgSend_currentCharacterKeysLayout(self);
      if ([(TIKeyboardInputManagerMecabra *)self shouldRescaleTouchPoints])
      {
        objc_msgSend_baseCharacterKeysLayout(self);
      }

      else
      {
        v37 = 0;
      }

      previousTouchEvent = [(MCDrawInput *)v13 initWithKeyboardLayout:&v38 rescaleKeyboardLayout:&v37 shouldResample:[(TIKeyboardInputManagerMecabra *)self shouldResample]];
      if (v37)
      {
        WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v37);
      }

      if (v38)
      {
        WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v38);
      }

      previousTouchEvent2 = [(TIKeyboardInputManager *)self previousTouchEvent];
      [(MCDrawInput *)previousTouchEvent composeWith:previousTouchEvent2];

      composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
      [composingInput composeNew:previousTouchEvent];

      [(TIKeyboardInputManagerMecabra *)self setPreviouslyDeletedTypeInput:0];
      [(TIKeyboardInputManagerMecabra *)self setPreviouslyProcessedDeleteInput:0];
    }

LABEL_24:
    previousTouchEvent3 = [(TIKeyboardInputManager *)self previousTouchEvent];
    if ([previousTouchEvent3 stage] == 1)
    {
      stage2 = [touchCopy stage];

      if (stage2 != 1)
      {
        v21 = 0;
        is_far_away_point = 0;
        goto LABEL_31;
      }

      v18 = *TIInputManager::favonius_layout(self->super.super.m_impl);
      previousTouchEvent4 = [(TIKeyboardInputManager *)self previousTouchEvent];
      [previousTouchEvent4 location];
      if (TI::Favonius::KeyboardLayout::is_far_away_point(v18, v39))
      {
        is_far_away_point = 0;
      }

      else
      {
        v28 = *TIInputManager::favonius_layout(self->super.super.m_impl);
        [touchCopy location];
        is_far_away_point = TI::Favonius::KeyboardLayout::is_far_away_point(v28, v40);
      }

      v29 = *TIInputManager::favonius_layout(self->super.super.m_impl);
      previousTouchEvent3 = [(TIKeyboardInputManager *)self previousTouchEvent];
      [previousTouchEvent3 location];
      if (TI::Favonius::KeyboardLayout::is_far_away_point(v29, v41))
      {
        v30 = *TIInputManager::favonius_layout(self->super.super.m_impl);
        [touchCopy location];
        v21 = !TI::Favonius::KeyboardLayout::is_far_away_point(v30, v42);
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
      is_far_away_point = 0;
    }

LABEL_31:
    composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v22ComposingInput = [composingInput2 composingInput];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      composingInput3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v25ComposingInput = [composingInput3 composingInput];

      if ([v25ComposingInput isDrawing])
      {
        if ([touchCopy stage] == 2 && objc_msgSend(touchCopy, "continuousPathState") != 5)
        {
          composingInput4 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          [composingInput4 removeComposingInput];
        }

        else if (is_far_away_point)
        {
          [(TIKeyboardInputManagerMecabra *)self setCancelledDrawInput:v25ComposingInput];
          composingInput5 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          [composingInput5 removeComposingInput];

          [(TIKeyboardInputManagerMecabra *)self updateComposedText];
          [(TIKeyboardInputManager *)self setMarkedText];
        }

        else
        {
          [v25ComposingInput composeWith:touchCopy];
        }
      }
    }

    if (v21)
    {
      cancelledDrawInput = [(TIKeyboardInputManagerMecabra *)self cancelledDrawInput];

      if (cancelledDrawInput)
      {
        composingInput6 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        cancelledDrawInput2 = [(TIKeyboardInputManagerMecabra *)self cancelledDrawInput];
        [composingInput6 composeNew:cancelledDrawInput2];

        [(TIKeyboardInputManagerMecabra *)self setCancelledDrawInput:0];
      }
    }

    if ([touchCopy stage] == 2)
    {
      [(TIKeyboardInputManagerMecabra *)self setCancelledDrawInput:0];
    }

    goto LABEL_49;
  }

  v8 = 0;
LABEL_50:

  return v8;
}

- (id)addInput:(id)input flags:(unsigned int)flags point:(CGPoint)point firstDelete:(unint64_t *)delete
{
  y = point.y;
  x = point.x;
  v9 = *&flags;
  v52[1] = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v51.receiver = self;
  v51.super_class = TIKeyboardInputManagerMecabra;
  v12 = [(TIKeyboardInputManager *)&v51 addInput:inputCopy flags:v9 point:delete firstDelete:x, y];
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v13 = (*(**(self->super.super.m_impl + 28) + 240))(*(self->super.super.m_impl + 28), (*(self->super.super.m_impl + 24) - 1));
    maxNearbyKeysCountDefault = [objc_opt_class() maxNearbyKeysCountDefault];
    v15 = maxNearbyKeysCountDefault << [(TIKeyboardInputManager_mul *)self isUsingMultilingual];
    v44 = v12;
    if (v13)
    {
      WTF::Vector<WTF::RefPtr<TI::Favonius::KeyMatch>,0ul>::Vector(v50, v13);
    }

    else
    {
      memset(v50, 0, sizeof(v50));
    }

    v16 = asMCNearbyKeys(v50, v15);
    WTF::Vector<WTF::RefPtr<TI::Favonius::KeyMatch>,0ul>::~Vector(v50);
    v17 = [(TIKeyboardInputManagerMecabra *)self nearbyKeysForInput:inputCopy isPopupVariant:(v9 >> 2) & 1];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = v16;
    }

    v43 = v19;

    v42 = [MCKeyboardState alloc];
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    layoutState = [keyboardState layoutState];
    v22 = inputCopy;
    userInterfaceIdiom = [layoutState userInterfaceIdiom];
    keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
    splitKeyboardMode = [keyboardState2 splitKeyboardMode];
    keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
    floatingKeyboardMode = [keyboardState3 floatingKeyboardMode];
    keyboardState4 = [(TIKeyboardInputManager *)self keyboardState];
    hardwareKeyboardMode = [keyboardState4 hardwareKeyboardMode];
    v30 = userInterfaceIdiom;
    inputCopy = v22;
    v31 = [(MCKeyboardState *)v42 initWithUserInterfaceIdiom:v30 isSplitKeyboard:splitKeyboardMode isFloatingKeyboard:floatingKeyboardMode isHardwareKeyboard:hardwareKeyboardMode];

    v32 = [(TIKeyboardInputManager_mul *)self externalStringToInternal:inputCopy];
    if ((objc_msgSend_isEqualToString_(inputCopy) & 1) != 0 || objc_msgSend_isEqualToString_(v32))
    {
      v33 = [MCSyntheticInput alloc];
      v52[0] = @"^_^";
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
      v35 = [(MCSyntheticInput *)v33 initWithCommittedText:&stru_283FDFAF8 syllables:v34];

      v36 = [MCTypeInput alloc];
      v37 = [(MCTypeInput *)v36 initWithCharacters:@"☻" nearbyKeys:MEMORY[0x277CBEBF8]];
      [(MCKeyboardInput *)v35 composeNew:v37];
      composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
      [composingInput composeNew:v35];

      v39 = v43;
    }

    else
    {
      v40 = [v32 length];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __66__TIKeyboardInputManagerMecabra_addInput_flags_point_firstDelete___block_invoke;
      v45[3] = &unk_27872F350;
      v48 = x;
      v49 = y;
      v45[4] = self;
      v39 = v43;
      v46 = v43;
      v47 = v31;
      [v32 enumerateSubstringsInRange:0 options:v40 usingBlock:{2, v45}];
    }

    [(TIKeyboardInputManagerMecabra *)self setShouldClearBeforeContinuousPath:1];
    [(TIKeyboardInputManagerMecabra *)self setPreviouslyDeletedTypeInput:0];
    [(TIKeyboardInputManagerMecabra *)self setPreviouslyProcessedDeleteInput:0];

    v12 = v44;
  }

  return v12;
}

void __66__TIKeyboardInputManagerMecabra_addInput_flags_point_firstDelete___block_invoke(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return;
  }

  v4 = *(a1 + 56);
  v3 = *(a1 + 64);
  v5 = *(a1 + 32);
  v6 = a2;
  if (![v5 shouldRescaleTouchPoints])
  {
    goto LABEL_8;
  }

  v7 = *MEMORY[0x277CBF348];
  v8 = *(MEMORY[0x277CBF348] + 8);
  if (v4 == *MEMORY[0x277CBF348] && v3 == v8)
  {
    goto LABEL_9;
  }

  [*(a1 + 32) currentCharacterKeysLayoutFrame];
  v11 = v10;
  v13 = v12;
  v29 = v14;
  v16 = v15;
  [*(a1 + 32) baseCharacterKeysLayoutFrame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v27 = v16;
  v32.origin.x = v11;
  v28 = v13;
  v32.origin.y = v13;
  *&v32.size.width = v29;
  v32.size.height = v16;
  v25 = v20;
  v33.origin.x = v18;
  v33.origin.y = v25;
  v33.size.width = v22;
  v33.size.height = v24;
  if (!CGRectEqualToRect(v32, v33))
  {
    v7 = v18 + (v4 - v11) / *&v29 * v22;
    v8 = v25 + (v3 - v28) / v27 * v24;
  }

  else
  {
LABEL_8:
    v7 = v4;
    v8 = v3;
  }

LABEL_9:
  v30 = [[MCTypeInput alloc] initWithCharacters:v6 point:*(a1 + 40) nearbyKeys:*(a1 + 48) sourceKeyboardState:v7, v8];

  v26 = [*(a1 + 32) composingInput];
  [v26 composeNew:v30];
}

- (CGRect)currentCharacterKeysLayoutFrame
{
  objc_msgSend_currentCharacterKeysLayout(self, a2);
  v2 = v10[15];
  v3 = v10[16];
  v4 = v10[17];
  v5 = v10[18];
  WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v10);
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (RefPtr<TI::Favonius::KeyboardLayout>)currentCharacterKeysLayout
{
  v4 = v2;
  v5 = TIInputManager::favonius_layout(self->super.super.m_impl);
  if (self->_compositionCompletionHandler != *v5)
  {
    v6 = *TIInputManager::favonius_layout(self->super.super.m_impl);
    if (v6)
    {
      atomic_fetch_add(v6, 1u);
    }

    compositionCompletionHandler = self->_compositionCompletionHandler;
    self->_compositionCompletionHandler = v6;
    if (compositionCompletionHandler)
    {
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(compositionCompletionHandler);
    }

    objc_msgSend_currentLayout(self);
    objc_msgSend_characterKeysLayoutFrom_(self);
    chainedKeyboardInputManager = self->chainedKeyboardInputManager;
    self->chainedKeyboardInputManager = v11;
    if (chainedKeyboardInputManager)
    {
      WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(chainedKeyboardInputManager);
    }

    v5 = v10;
    if (v10)
    {
      v5 = WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v10);
    }
  }

  v9 = self->chainedKeyboardInputManager;
  *v4 = v9;
  if (v9)
  {
    atomic_fetch_add(v9, 1u);
  }

  return v5;
}

- (CGRect)baseCharacterKeysLayoutFrame
{
  objc_msgSend_baseCharacterKeysLayout(self, a2);
  v2 = v10[15];
  v3 = v10[16];
  v4 = v10[17];
  v5 = v10[18];
  WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v10);
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (RefPtr<TI::Favonius::KeyboardLayout>)baseCharacterKeysLayout
{
  v4 = v2;
  v5.m_ptr = [(TIKeyboardInputManagerMecabra *)self shouldRescaleTouchPoints];
  m_ptr = self->_currentCharacterKeysLayout.m_ptr;
  if (!m_ptr)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x4812000000;
    v10[3] = __Block_byref_object_copy__1847;
    v10[4] = __Block_byref_object_dispose__1848;
    v10[5] = "";
    memset(&v10[6], 0, 24);
    wordSearch = [(TIKeyboardInputManagerMecabra *)self wordSearch];
    baseLayout = [wordSearch baseLayout];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__TIKeyboardInputManagerMecabra_baseCharacterKeysLayout__block_invoke;
    v9[3] = &unk_27872F328;
    v9[4] = v10;
    [baseLayout enumerateKeysUsingBlock:v9];

    operator new();
  }

  *v4 = m_ptr;
  atomic_fetch_add(m_ptr, 1u);
  return v5;
}

void __56__TIKeyboardInputManagerMecabra_baseCharacterKeysLayout__block_invoke(uint64_t a1, const char *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{a2, a3, a4, a5, a6}];
  }

  else
  {
    v7 = &stru_283FDFAF8;
  }

  if ([(__CFString *)v7 length]== 1)
  {
    v8 = [(__CFString *)v7 _firstChar];
    v9 = [MEMORY[0x277CCA900] letterCharacterSet];
    LODWORD(v8) = [v9 characterIsMember:v8];

    if (v8)
    {
      KB::String::String(v10, a2);
      operator new();
    }
  }
}

- (RefPtr<TI::Favonius::KeyboardLayout>)characterKeysLayoutFrom:(const void *)from
{
  v4 = v3;
  v5 = *from;
  if (*from)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x4812000000;
    v12[3] = __Block_byref_object_copy__1847;
    v12[4] = __Block_byref_object_dispose__1848;
    v12[5] = "";
    memset(&v12[6], 0, 24);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __57__TIKeyboardInputManagerMecabra_characterKeysLayoutFrom___block_invoke;
    v10 = &unk_278731D18;
    v11 = v12;
    v6 = *(v5 + 8);
    for (i = *(v5 + 16); v6 != i; ++v6)
    {
      v9(v8, v6);
    }

    operator new();
  }

  *v4 = 0;
  return self;
}

void __57__TIKeyboardInputManagerMecabra_characterKeysLayoutFrom___block_invoke(uint64_t a1, uint64_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(*a2 + 12);
  if (!*(*a2 + 12))
  {
    KB::String::compute_length((v3 + 8));
    v4 = *(v3 + 12);
  }

  if (v4 == 1)
  {
    v5 = *a2;
    v6 = *(*a2 + 16);
    if (!v6)
    {
      v6 = *a2 + 24;
    }

    v11 = v6;
    v12 = 0;
    v13 = *(v5 + 8);
    v14 = 0;
    KB::String::iterator::initialize(&v11);
    v7 = v14;
    v8 = [MEMORY[0x277CCA900] letterCharacterSet];
    if ([v8 characterIsMember:v7])
    {

      goto LABEL_9;
    }

    v9 = [MEMORY[0x277CCA900] zhuyinCharacterSet];
    v10 = [v9 characterIsMember:v7];

    if (v10)
    {
LABEL_9:
      KB::String::String(&v11, (*a2 + 8));
      if (*(*a2 + 40) >= 0xFuLL)
      {
        operator new[]();
      }

      operator new();
    }
  }
}

- (void)dropInputPrefix:(unsigned int)prefix
{
  LODWORD(v3) = prefix;
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerMecabra;
  [(TIKeyboardInputManager *)&v8 dropInputPrefix:?];
  geometryDataArray = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
  if ([geometryDataArray count] <= v3)
  {
    geometryDataArray2 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
    v3 = [geometryDataArray2 count];
  }

  else
  {
    v3 = v3;
  }

  geometryDataArray3 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
  [geometryDataArray3 removeObjectsInRange:{0, v3}];
}

- (void)clearInput
{
  geometryDataArray = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
  [geometryDataArray removeAllObjects];

  if ([(TIKeyboardInputManager *)self isTypologyEnabled])
  {
    touchDataArray = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
    [touchDataArray removeAllObjects];
  }

  if (![(TIKeyboardInputManagerMecabra *)self preservesComposingInput])
  {
    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [composingInput removeAllInputs];
  }

  v6.receiver = self;
  v6.super_class = TIKeyboardInputManagerMecabra;
  [(TIKeyboardInputManager_mul *)&v6 clearInput];
}

- (id)processAcceptedCandidate:(id)candidate
{
  candidateCopy = candidate;
  if (![(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    goto LABEL_12;
  }

  [(TIKeyboardInputManagerMecabra *)self setRemainingInput:0];
  composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
  hasRemainingComposingInput = [composingInput hasRemainingComposingInput];

  if (!hasRemainingComposingInput || [candidateCopy isContinuousPathConversion] && !objc_msgSend(candidateCopy, "isPartialCandidate"))
  {
    if (candidateCopy)
    {
      composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      asInlineText = [composingInput2 asInlineText];
    }

    else
    {
      asInlineText = 0;
    }

    composingInput3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [composingInput3 removeAllInputs];
    goto LABEL_20;
  }

  composingInput3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  inputs = [composingInput3 inputs];
  if ([inputs count] == 2)
  {
    composingInput4 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    inputs2 = [composingInput4 inputs];
    v11 = [inputs2 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      composingInput5 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      inputs3 = [composingInput5 inputs];
      v14 = [inputs3 objectAtIndexedSubscript:1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        isPartialCandidate = [candidateCopy isPartialCandidate];

        if (isPartialCandidate)
        {
          composingInput6 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          inputs4 = [composingInput6 inputs];
          composingInput3 = [inputs4 objectAtIndexedSubscript:0];

          composingInput7 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          inputs5 = [composingInput7 inputs];
          v19 = [inputs5 objectAtIndexedSubscript:1];

          candidateText = [v19 candidateText];
          if ([candidateText length])
          {
            convertedInput = [v19 convertedInput];
            v22 = [convertedInput length];

            if (v22)
            {
              asInlineText = 0;
LABEL_47:

              goto LABEL_20;
            }

            committedText = [composingInput3 committedText];
            candidateText = [committedText mutableCopy];

            syllables = [composingInput3 syllables];
            v28 = [syllables mutableCopy];

            if ([candidateText length] && (objc_msgSend(v19, "candidateText"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(candidateText, "rangeOfString:", v29), v29, v30))
            {
              candidateText2 = [v19 candidateText];
              asInlineText = [candidateText stringByAppendingString:candidateText2];
            }

            else
            {
              asInlineText = [v19 candidateText];
            }

            v32 = [asInlineText length];
            if (v32 >= 1)
            {
              while ([candidateText length])
              {
                [candidateText deleteCharactersInRange:{0, 1}];
                v33 = __OFSUB__(v32--, 1);
                if ((v32 < 0) ^ v33 | (v32 == 0))
                {
                  goto LABEL_45;
                }
              }

LABEL_40:
              if ([v28 count])
              {
                firstObject = [v28 firstObject];
                v35 = [firstObject mutableCopy];

                [v28 removeObjectAtIndex:0];
                do
                {
                  if (![v35 length])
                  {

                    goto LABEL_40;
                  }

                  [v35 deleteCharactersInRange:{0, 1}];
                  v33 = __OFSUB__(v32--, 1);
                }

                while (!((v32 < 0) ^ v33 | (v32 == 0)));
                if ([v35 length])
                {
                  [v28 insertObject:v35 atIndex:0];
                }
              }
            }

LABEL_45:
            v36 = [composingInput3 syntheticInputWithCommittedText:candidateText syllables:v28];
            composingInput8 = [(TIKeyboardInputManagerMecabra *)self composingInput];
            [composingInput8 removeComposingInput];

            composingInput9 = [(TIKeyboardInputManagerMecabra *)self composingInput];
            [composingInput9 removeComposingInput];

            composingInput10 = [(TIKeyboardInputManagerMecabra *)self composingInput];
            [composingInput10 composeNew:v36];
          }

          else
          {
            asInlineText = 0;
          }

          goto LABEL_47;
        }

LABEL_12:
        asInlineText = 0;
        goto LABEL_21;
      }
    }
  }

  asInlineText = 0;
LABEL_20:

LABEL_21:

  return asInlineText;
}

- (id)didAcceptCandidate:(id)candidate
{
  candidateCopy = candidate;
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v5 = [(TIKeyboardInputManagerMecabra *)self processAcceptedCandidate:candidateCopy];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManagerMecabra;
    v5 = [(TIKeyboardInputManager *)&v8 didAcceptCandidate:candidateCopy];
  }

  v6 = v5;

  return v6;
}

- (id)handleAcceptedCandidate:(id)candidate keyboardState:(id)state
{
  candidateCopy = candidate;
  stateCopy = state;
  if ([candidateCopy isResponseKitCandidate])
  {
    v8 = MEMORY[0x277D46BB8];
    v9 = *MEMORY[0x277D46BE8];
    inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
    normalizedIdentifier = [inputMode normalizedIdentifier];
    v12 = TIInputModeGetBaseLanguage();
    [v8 incrementAggdKeyForCategory:0 forAction:v9 withLanguageID:v12];

    v13 = MEMORY[0x277D46BB8];
    responseKitCategory = [candidateCopy responseKitCategory];
    inputMode2 = [(TIKeyboardInputManagerBase *)self inputMode];
    normalizedIdentifier2 = [inputMode2 normalizedIdentifier];
    v17 = TIInputModeGetBaseLanguage();
    [v13 incrementAggdKeyForCategory:responseKitCategory forAction:v9 withLanguageID:v17];
  }

  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v19 = [composingKeyboardInputManager handleAcceptedCandidate:candidateCopy keyboardState:stateCopy];

  if (!v19)
  {
    if ([candidateCopy isAddress])
    {
      keyboardState = [(TIKeyboardInputManager *)self keyboardState];
      documentState = [keyboardState documentState];
      contextBeforeInput = [documentState contextBeforeInput];
      if (![contextBeforeInput length])
      {
LABEL_10:

        goto LABEL_11;
      }

      candidate = [candidateCopy candidate];
      _firstGrapheme = [candidate _firstGrapheme];
      if ([_firstGrapheme _containsCJScripts])
      {

        goto LABEL_10;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        keyboardState = [candidateCopy candidate];
        documentState = [@" " stringByAppendingString:keyboardState];
        [candidateCopy candidateByReplacingWithCandidate:documentState];
        candidateCopy = contextBeforeInput = candidateCopy;
        goto LABEL_10;
      }
    }

LABEL_11:
    if (!-[TIKeyboardInputManagerMecabra usesComposingInput](self, "usesComposingInput") || ([candidateCopy candidate], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "length"), v26, !v27))
    {
      composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
      [composingInput removeAllInputs];
LABEL_34:

      [(TIKeyboardInputManagerMecabra *)self setPreservesComposingInput:1];
      v69 = 0;
      v70 = &v69;
      v71 = 0x2020000000;
      v72 = 0x7FFFFFFFFFFFFFFFLL;
      wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
      candidates = [wordSearchCandidateResultSet candidates];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __71__TIKeyboardInputManagerMecabra_handleAcceptedCandidate_keyboardState___block_invoke;
      v65[3] = &unk_27872F300;
      candidateCopy = candidateCopy;
      selfCopy = self;
      v68 = &v69;
      v66 = candidateCopy;
      [candidates enumerateObjectsUsingBlock:v65];

      v64.receiver = self;
      v64.super_class = TIKeyboardInputManagerMecabra;
      v19 = [(TIKeyboardInputManager *)&v64 handleAcceptedCandidate:candidateCopy keyboardState:stateCopy];
      if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
      {
        [(TIKeyboardInputManagerMecabra *)self updateComposedText];
        [(TIKeyboardInputManager *)self setMarkedText];
      }

      [(TIKeyboardInputManagerMecabra *)self setPreservesComposingInput:0];
      TIInputManager::sync_with_input_from_UI(self->super.super.m_impl);
      v52 = [candidateCopy candidateByReplacingWithSourceMask:{-[TIKeyboardInputManager adjustedSourceMaskFromCandidate:](self, "adjustedSourceMaskFromCandidate:", candidateCopy)}];
      typingSessionMonitor = [(TIKeyboardInputManager *)self typingSessionMonitor];
      keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
      documentState2 = [keyboardState2 documentState];
      inputContext = [(TIKeyboardInputManager *)self inputContext];
      inputStem = [(TIKeyboardInputManager *)self inputStem];
      LOBYTE(v61) = 1;
      [typingSessionMonitor candidateAccepted:v52 withInput:0 documentState:documentState2 inputContext:inputContext inputStem:inputStem predictionBarHit:0 useCandidateSelection:v61 candidateIndex:v70[3] keyboardState:stateCopy];

      _Block_object_dispose(&v69, 8);
      goto LABEL_37;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:candidateCopy];
      if (v28)
      {
        v29 = v28;
        composingInput = [MEMORY[0x277D6F448] convertedInputFromMecabraCandidate:v28];
        if (![composingInput length])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            input = [candidateCopy input];

            composingInput = input;
            if (!input)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v59 = [MEMORY[0x277D6F448] inputFromMecabraCandidate:v29];
            v60 = [(TIKeyboardInputManagerMecabra *)self convertInput:v59];

            composingInput = v60;
            if (!v60)
            {
              goto LABEL_24;
            }
          }

LABEL_23:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }

      else
      {
        composingInput = [candidateCopy input];
      }

      if (composingInput)
      {
        goto LABEL_23;
      }
    }

    else
    {
      composingInput = 0;
    }

LABEL_24:
    input2 = [candidateCopy input];

    composingInput = input2;
LABEL_25:
    v33 = [MCAcceptCandidateInput alloc];
    candidate2 = [candidateCopy candidate];
    v35 = [(MCAcceptCandidateInput *)v33 initWithCandidateText:candidate2 convertedInput:composingInput];

    composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v36ComposingInput = [composingInput2 composingInput];
    objc_opt_class();
    v38 = objc_opt_isKindOfClass();

    composingInput3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    composingInput7 = composingInput3;
    if (v38)
    {
      v39ComposingInput = [composingInput3 composingInput];

      text = [v39ComposingInput text];
      composingInput7 = [v39ComposingInput syntheticInputWithCursorIndex:{objc_msgSend(text, "length")}];

      composingInput4 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      [composingInput4 replaceComposingInputWith:composingInput7];
    }

    else
    {
      composingInput4 = [composingInput3 inputs];
      if ([composingInput4 count] >= 2)
      {
        composingInput5 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        inputs = [composingInput5 inputs];
        firstObject = [inputs firstObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(TIKeyboardInputManagerMecabra *)self composingInput];
          v47 = v46 = composingInput5;
          hasDrawInput = [v47 hasDrawInput];

          if (hasDrawInput)
          {
LABEL_33:
            composingInput6 = [(TIKeyboardInputManagerMecabra *)self composingInput];
            [composingInput6 composeNew:v35];

            [(TIKeyboardInputManagerMecabra *)self setPreviouslyDeletedTypeInput:0];
            [(TIKeyboardInputManagerMecabra *)self setPreviouslyProcessedDeleteInput:0];

            goto LABEL_34;
          }

          composingInput7 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          composingInput4 = [composingInput7 inputs];
          v48 = -[TIKeyboardInputManagerMecabra convertInputsToSyntheticInputUptoCount:](self, "convertInputsToSyntheticInputUptoCount:", [composingInput4 count]);
        }

        else
        {
        }
      }
    }

    goto LABEL_33;
  }

LABEL_37:

  return v19;
}

void __71__TIKeyboardInputManagerMecabra_handleAcceptedCandidate_keyboardState___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 candidate];
  v8 = [*(a1 + 32) candidate];
  isEqualToString = objc_msgSend_isEqualToString_(v7);

  if (isEqualToString)
  {
    *(*(*(a1 + 48) + 8) + 24) = a3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [*(a1 + 40) composingInput];
      v11 = [v10 hasDrawInput];

      if (v11)
      {
        [*(a1 + 32) setContinuousPathConversion:1];
      }
    }

    *a4 = 1;
  }
}

- (unint64_t)inputIndexWithDrawInput
{
  if (![(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    return 0;
  }

  composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v4 = [composingInput hasKindOf:objc_opt_class()];

  if (!v4)
  {
    return 0;
  }

  inputString = [(TIKeyboardInputManager *)self inputString];
  syllableSeparator = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
  v7 = [inputString stringByReplacingOccurrencesOfString:syllableSeparator withString:&stru_283FDFAF8];

  v8 = [v7 length];
  composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  inputs = [composingInput2 inputs];
  firstObject = [inputs firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    composingInput3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v13 = [composingInput3 hasKindOf:objc_opt_class()];

    if ((v13 & 1) == 0)
    {
      v14 = firstObject;
      text = [v14 text];
      v16 = [text length];
      cursorIndex = [v14 cursorIndex];

      if (v8 <= v16 - cursorIndex)
      {
        v18 = 0;
      }

      else
      {
        v18 = v16 - cursorIndex;
      }

      v8 -= v18;
    }
  }

  return v8;
}

- (id)_convertInputsToSyntheticInputUptoCount:(int)count cursorIndex:(id)index
{
  indexCopy = index;
  v7 = indexCopy;
  if (indexCopy)
  {
    integerValue = [indexCopy integerValue];
  }

  else
  {
    integerValue = -1;
  }

  v9 = [MCSyntheticInput alloc];
  v10 = [(MCSyntheticInput *)v9 initWithCommittedText:&stru_283FDFAF8 syllables:MEMORY[0x277CBEBF8]];
  v11 = objc_alloc_init(MCKeyboardInput);
  if (count >= 1)
  {
    do
    {
      composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
      inputs = [composingInput inputs];
      firstObject = [inputs firstObject];
      [(MCKeyboardInput *)v10 composeNew:firstObject];

      composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      inputs2 = [composingInput2 inputs];
      firstObject2 = [inputs2 firstObject];
      [(MCKeyboardInput *)v11 composeNew:firstObject2];

      composingInput3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      [composingInput3 removeInputAtIndex:0];

      --count;
    }

    while (count);
  }

  asCommittedText = [(MCKeyboardInput *)v11 asCommittedText];
  uncommittedText = [(TIKeyboardInputManagerMecabra *)self uncommittedText];
  v21 = uncommittedText;
  if (uncommittedText)
  {
    asInlineText = uncommittedText;
  }

  else
  {
    asInlineText = [(MCKeyboardInput *)v11 asInlineText];
  }

  v23 = asInlineText;

  syllableSeparator = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
  v25 = [syllableSeparator length];

  if (v25)
  {
    syllableSeparator2 = [(TIKeyboardInputManagerMecabra *)self syllableSeparator];
    array = [v23 componentsSeparatedByString:syllableSeparator2];
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    if ([v23 length])
    {
      v28 = 0;
      do
      {
        v29 = [v23 substringWithRange:{v28, 1}];
        [array addObject:v29];

        ++v28;
      }

      while ([v23 length] > v28);
    }
  }

  v30 = [(MCSyntheticInput *)v10 initWithCommittedText:asCommittedText syllables:array];
  v31 = v30;
  if ((integerValue & 0x8000000000000000) == 0)
  {
    v32 = [(MCSyntheticInput *)v30 syntheticInputWithCursorIndex:integerValue];

    v31 = v32;
  }

  text = [v31 text];
  v34 = [text length];

  if (v34)
  {
    composingInput4 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    [composingInput4 insertInput:v31 atIndex:0];

    composingInput5 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v36ComposingInput = [composingInput5 composingInput];

    if (!v36ComposingInput)
    {
      composingInput6 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      [composingInput6 setComposingInput:v31];
    }

    v39 = v31;
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (void)updateComposedText
{
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    asInlineText = [composingInput asInlineText];

    v4 = [(TIKeyboardInputManager_mul *)self internalStringToExternal:asInlineText];
    [(NSMutableString *)self->super.super.m_composedText setString:v4];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TIKeyboardInputManagerMecabra;
    [(TIKeyboardInputManager *)&v6 updateComposedText];
  }
}

- (void)savePartialGeometryData
{
  if (![(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    geometryDataArray = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
    v4 = [geometryDataArray copy];
    [(TIKeyboardInputManagerMecabra *)self setClearedGeometryDataArray:v4];

    if ([(TIKeyboardInputManager *)self isTypologyEnabled])
    {
      touchDataArray = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
      v5 = [touchDataArray copy];
      [(TIKeyboardInputManagerMecabra *)self setClearedTouchDataArray:v5];
    }
  }
}

- (void)padGeometryForInput:(id)input atIndex:(unint64_t)index
{
  if (![(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    rawInputString = [(TIKeyboardInputManager *)self rawInputString];
    v7 = [rawInputString length];

    if (v7)
    {
      rawInputString2 = [(TIKeyboardInputManager *)self rawInputString];
      v9 = [rawInputString2 length];

      geometryDataArray = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
      v11 = [geometryDataArray count];
      v12 = v9 - 1;

      if (v11 < v9 - 1)
      {
        do
        {
          geometryDataArray2 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
          if (index - 1 >= [geometryDataArray2 count])
          {
            geometryDataArray3 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
            -[TIKeyboardInputManagerMecabra insertDummyGeometryDataAtIndex:](self, "insertDummyGeometryDataAtIndex:", [geometryDataArray3 count]);
          }

          else
          {
            [(TIKeyboardInputManagerMecabra *)self insertDummyGeometryDataAtIndex:index - 1];
          }

          geometryDataArray4 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
          v16 = [geometryDataArray4 count];
        }

        while (v16 < v12);
      }

      if ([(TIKeyboardInputManager *)self isTypologyEnabled])
      {
        touchDataArray = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
        v18 = [touchDataArray count];

        if (v18 < v12)
        {
          v19 = index - 1;
          do
          {
            touchDataArray2 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
            if (v19 >= [touchDataArray2 count])
            {
              touchDataArray3 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
              -[TIKeyboardInputManagerMecabra insertDummyTouchDataAtIndex:](self, "insertDummyTouchDataAtIndex:", [touchDataArray3 count]);
            }

            else
            {
              [(TIKeyboardInputManagerMecabra *)self insertDummyTouchDataAtIndex:v19];
            }

            touchDataArray4 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
            v23 = [touchDataArray4 count];
          }

          while (v23 < v12);
        }
      }
    }
  }
}

- (void)restoreGeometryForInput:(id)input atIndex:(unint64_t)index
{
  inputCopy = input;
  usesComposingInput = [(TIKeyboardInputManagerMecabra *)self usesComposingInput];
  v7 = inputCopy;
  if ((usesComposingInput & 1) == 0)
  {
    v8 = objc_msgSend_string(inputCopy);
    v9 = [v8 length];

    geometryDataArray = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
    v11 = [geometryDataArray count];

    if (v11 < index)
    {
      clearedGeometryDataArray = [(TIKeyboardInputManagerMecabra *)self clearedGeometryDataArray];

      if (clearedGeometryDataArray)
      {
        clearedGeometryDataArray2 = [(TIKeyboardInputManagerMecabra *)self clearedGeometryDataArray];
        v14 = [clearedGeometryDataArray2 count];

        if (v14 >= v9)
        {
          geometryDataArray2 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
          clearedGeometryDataArray3 = [(TIKeyboardInputManagerMecabra *)self clearedGeometryDataArray];
          clearedGeometryDataArray4 = [(TIKeyboardInputManagerMecabra *)self clearedGeometryDataArray];
          v18 = [clearedGeometryDataArray3 subarrayWithRange:{objc_msgSend(clearedGeometryDataArray4, "count") - v9, v9}];
          [geometryDataArray2 addObjectsFromArray:v18];
        }

        [(TIKeyboardInputManagerMecabra *)self setClearedGeometryDataArray:0];
      }
    }

    if ([(TIKeyboardInputManager *)self isTypologyEnabled])
    {
      touchDataArray = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
      v20 = [touchDataArray count];

      if (v20 < index)
      {
        clearedTouchDataArray = [(TIKeyboardInputManagerMecabra *)self clearedTouchDataArray];

        if (clearedTouchDataArray)
        {
          clearedTouchDataArray2 = [(TIKeyboardInputManagerMecabra *)self clearedTouchDataArray];
          v23 = [clearedTouchDataArray2 count];

          if (v23 >= v9)
          {
            touchDataArray2 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
            clearedTouchDataArray3 = [(TIKeyboardInputManagerMecabra *)self clearedTouchDataArray];
            clearedTouchDataArray4 = [(TIKeyboardInputManagerMecabra *)self clearedTouchDataArray];
            v27 = [clearedTouchDataArray3 subarrayWithRange:{objc_msgSend(clearedTouchDataArray4, "count") - v9, v9}];
            [touchDataArray2 addObjectsFromArray:v27];
          }

          [(TIKeyboardInputManagerMecabra *)self setClearedTouchDataArray:0];
        }
      }
    }

    [(TIKeyboardInputManagerMecabra *)self padGeometryForInput:inputCopy atIndex:index];
    rawInputString = [(TIKeyboardInputManager *)self rawInputString];
    v29 = [rawInputString length];

    geometryDataArray3 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
    v31 = [geometryDataArray3 count];

    if (v31 < v29)
    {
      geometryDataArray4 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
      if (index - 1 >= [geometryDataArray4 count])
      {
        geometryDataArray5 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
        -[TIKeyboardInputManagerMecabra insertDummyGeometryDataAtIndex:](self, "insertDummyGeometryDataAtIndex:", [geometryDataArray5 count]);
      }

      else
      {
        [(TIKeyboardInputManagerMecabra *)self insertDummyGeometryDataAtIndex:index - 1];
      }
    }

    usesComposingInput = [(TIKeyboardInputManager *)self isTypologyEnabled];
    v7 = inputCopy;
    if (usesComposingInput)
    {
      touchDataArray3 = [(TIKeyboardInputManagerMecabra *)self touchDataArray];
      v35 = [touchDataArray3 count];

      v7 = inputCopy;
      if (v35 < v29)
      {
        usesComposingInput = [(TIKeyboardInputManagerMecabra *)self saveTouchDataForEvent:inputCopy atIndex:index - 1];
        v7 = inputCopy;
      }
    }
  }

  MEMORY[0x2821F96F8](usesComposingInput, v7);
}

- (void)saveGeometryForInput:(id)input atIndex:(unint64_t)index
{
  v32[11] = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if (![(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v7 = (*(**(self->super.super.m_impl + 28) + 240))(*(self->super.super.m_impl + 28), (*(self->super.super.m_impl + 24) - 1));
    if (!v7)
    {
LABEL_6:
      [(TIKeyboardInputManagerMecabra *)self restoreGeometryForInput:inputCopy atIndex:index];
      goto LABEL_7;
    }

    v8 = v7;
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    if (([keyboardState hardwareKeyboardMode] & 1) != 0 || objc_msgSend(inputCopy, "isPopupVariant"))
    {

      goto LABEL_6;
    }

    isGesture = [inputCopy isGesture];

    if (isGesture)
    {
      goto LABEL_6;
    }

    if (s_interface_idiom_is_pad)
    {
      v11 = -3.0;
    }

    else
    {
      v11 = -2.0;
    }

    validCharacterSetForAutocorrection = [(TIKeyboardInputManagerMecabra *)self validCharacterSetForAutocorrection];
    validUSetForAutocorrection = [(TIKeyboardInputManagerMecabra *)self validUSetForAutocorrection];
    if (*v8)
    {
      v14 = validUSetForAutocorrection;
      v15 = 0;
      v16 = v8[1];
      v17 = 8 * *v8;
      while (1)
      {
        if (*(*v16 + 32) < v11)
        {
          goto LABEL_28;
        }

        v18 = *(*v16 + 8);
        v19 = *(v18 + 16);
        if (!v19)
        {
          v19 = v18 + 24;
        }

        v28 = v19;
        v20 = *(v18 + 8);
        v29 = 0;
        v30 = v20;
        v31 = 0;
        KB::String::iterator::initialize(&v28);
        v21 = v31;
        if ([validCharacterSetForAutocorrection characterIsMember:v31])
        {
          if (!v21)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (!v14)
          {
            goto LABEL_24;
          }

          v22 = MEMORY[0x2318BF290](v14, v21);
          if (!v21 || !v22)
          {
            goto LABEL_24;
          }
        }

        v23 = &v32[v15];
        *v23 = v21;
        *(v23 + 1) = *(*v16 + 32);
        if (++v15 == 10)
        {
          v15 = 10;
          goto LABEL_28;
        }

LABEL_24:
        v16 += 8;
        v17 -= 8;
        if (!v17)
        {
          goto LABEL_28;
        }
      }
    }

    v15 = 0;
LABEL_28:
    v24 = &v32[v15];
    *v24 = 0;
    *(v24 + 1) = 0;
    [(TIKeyboardInputManagerMecabra *)self padGeometryForInput:inputCopy atIndex:index];
    geometryDataArray = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
    v26 = [MEMORY[0x277CBEA90] dataWithBytes:v32 length:8 * v15 + 8];
    v27 = index - 1;
    [geometryDataArray insertObject:v26 atIndex:v27];

    if ([(TIKeyboardInputManager *)self isTypologyEnabled])
    {
      [(TIKeyboardInputManagerMecabra *)self saveTouchDataForEvent:inputCopy atIndex:v27];
    }
  }

LABEL_7:
}

- (void)keyLayoutWillChangeTo:(id)to from:(id)from
{
  toCopy = to;
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerMecabra;
  [(TIKeyboardInputManager *)&v8 keyLayoutWillChangeTo:toCopy from:from];
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput]&& ![(TIKeyboardInputManagerMecabra *)self shouldRescaleTouchPoints])
  {
    wordSearch = [(TIKeyboardInputManagerMecabra *)self wordSearch];
    [wordSearch setKeyboardLayout:toCopy];
  }
}

- (NSCharacterSet)validCharacterSetForAutocorrection
{
  if ([TIKeyboardInputManagerMecabra validCharacterSetForAutocorrection]::__onceToken != -1)
  {
    dispatch_once(&[TIKeyboardInputManagerMecabra validCharacterSetForAutocorrection]::__onceToken, &__block_literal_global_97);
  }

  v3 = [TIKeyboardInputManagerMecabra validCharacterSetForAutocorrection]::__validCharSet;

  return v3;
}

uint64_t __67__TIKeyboardInputManagerMecabra_validCharacterSetForAutocorrection__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithRange:{97, 26}];
  v1 = [TIKeyboardInputManagerMecabra validCharacterSetForAutocorrection]::__validCharSet;
  [TIKeyboardInputManagerMecabra validCharacterSetForAutocorrection]::__validCharSet = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (_NSRange)analysisStringRange
{
  rawInputString = [(TIKeyboardInputManager *)self rawInputString];
  v3 = [rawInputString length];

  v4 = 0;
  v5 = v3;
  result.length = v5;
  result.location = v4;
  return result;
}

- (id)geometryModelData
{
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v3 = 0;
  }

  else
  {
    analysisStringRange = [(TIKeyboardInputManagerMecabra *)self analysisStringRange];
    v6 = v5;
    geometryDataArray = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
    v8 = [geometryDataArray count];

    v3 = 0;
    if (analysisStringRange != 0x7FFFFFFFFFFFFFFFLL && v6 && analysisStringRange < v8 && analysisStringRange + v6 <= v8)
    {
      geometryDataArray2 = [(TIKeyboardInputManagerMecabra *)self geometryDataArray];
      v3 = [geometryDataArray2 subarrayWithRange:{analysisStringRange, v6}];
    }
  }

  return v3;
}

- (NSMutableArray)geometryDataArray
{
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    v3 = 0;
  }

  else
  {
    composingKeyboardInputManager = self->_composingKeyboardInputManager;
    if (!composingKeyboardInputManager)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v6 = self->_composingKeyboardInputManager;
      self->_composingKeyboardInputManager = v5;

      composingKeyboardInputManager = self->_composingKeyboardInputManager;
    }

    v3 = composingKeyboardInputManager;
  }

  return v3;
}

- (NSMutableArray)touchDataArray
{
  composingInput = self->_composingInput;
  if (!composingInput)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_composingInput;
    self->_composingInput = v4;

    composingInput = self->_composingInput;
  }

  return composingInput;
}

- (__Mecabra)mecabra
{
  wordSearch = [(TIKeyboardInputManagerMecabra *)self wordSearch];
  mecabra = [wordSearch mecabra];

  return mecabra;
}

- (BOOL)shouldClearInputOnMarkedTextOutOfSync
{
  if (![(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    return 1;
  }

  composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
  if ([composingInput hasDrawInput])
  {
    keyboardState = [(TIKeyboardInputManager *)self keyboardState];
    inputForMarkedText = [keyboardState inputForMarkedText];
    v6 = [inputForMarkedText length] == 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)shouldDelayUpdateComposedText
{
  usesComposingInput = [(TIKeyboardInputManagerMecabra *)self usesComposingInput];
  if (usesComposingInput)
  {
    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    hasDrawInput = [composingInput hasDrawInput];

    LOBYTE(usesComposingInput) = hasDrawInput;
  }

  return usesComposingInput;
}

- (BOOL)isProgressivelyPathing
{
  if (![(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    return 0;
  }

  composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v3ComposingInput = [composingInput composingInput];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isDrawing = [v3ComposingInput isDrawing];
  }

  else
  {
    isDrawing = 0;
  }

  return isDrawing;
}

- (BOOL)usesContinuousPath
{
  config = [(TIKeyboardInputManager *)self config];
  if ([config usesContinuousPath])
  {
    usesComposingInput = [(TIKeyboardInputManagerMecabra *)self usesComposingInput];
  }

  else
  {
    config2 = [(TIKeyboardInputManager *)self config];
    if ([config2 usesContinuousPathForAccessibility])
    {
      usesComposingInput = [(TIKeyboardInputManagerMecabra *)self usesComposingInput];
    }

    else
    {
      usesComposingInput = 0;
    }
  }

  return usesComposingInput;
}

- (MCKeyboardInput)composingInput
{
  if ([(TIKeyboardInputManagerMecabra *)self usesComposingInput])
  {
    m_ptr = self->_baseCharacterKeysLayout.m_ptr;
  }

  else
  {
    m_ptr = 0;
  }

  return m_ptr;
}

- (void)setInTypeToSiriMode:(BOOL)mode
{
  modeCopy = mode;
  wordSearch = [(TIKeyboardInputManagerMecabra *)self wordSearch];
  [wordSearch setInTypeToSiriMode:modeCopy];

  v6.receiver = self;
  v6.super_class = TIKeyboardInputManagerMecabra;
  [(TIKeyboardInputManager *)&v6 setInTypeToSiriMode:modeCopy];
}

- (void)setKeyboardState:(id)state
{
  stateCopy = state;
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  canSuggestSupplementalItemsForCurrentSelection = [keyboardState canSuggestSupplementalItemsForCurrentSelection];

  canSuggestSupplementalItemsForCurrentSelection2 = [stateCopy canSuggestSupplementalItemsForCurrentSelection];
  if (canSuggestSupplementalItemsForCurrentSelection != canSuggestSupplementalItemsForCurrentSelection2)
  {
    v8 = canSuggestSupplementalItemsForCurrentSelection2;
    wordSearch = [(TIKeyboardInputManagerMecabra *)self wordSearch];
    mecabraEnvironment = [wordSearch mecabraEnvironment];

    wordSearch2 = [(TIKeyboardInputManagerMecabra *)self wordSearch];
    v12 = MEMORY[0x277CCA8C8];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __50__TIKeyboardInputManagerMecabra_setKeyboardState___block_invoke;
    v16[3] = &unk_278730E80;
    v17 = mecabraEnvironment;
    v18 = v8;
    v13 = mecabraEnvironment;
    v14 = [v12 blockOperationWithBlock:v16];
    [wordSearch2 performOperationAsync:v14];
  }

  v15.receiver = self;
  v15.super_class = TIKeyboardInputManagerMecabra;
  [(TIKeyboardInputManager *)&v15 setKeyboardState:stateCopy];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerMecabra;
  [(TIKeyboardInputManager *)&v4 dealloc];
}

- (TIKeyboardInputManagerMecabra)initWithConfig:(id)config keyboardState:(id)state
{
  v15.receiver = self;
  v15.super_class = TIKeyboardInputManagerMecabra;
  v4 = [(TIKeyboardInputManager_mul *)&v15 initWithConfig:config keyboardState:state];
  if (v4)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_handlePerformBackgroundMaintenanceNotification name:@"TILanguageModelPerformBackgroundMaintenanceNotification" object:0];

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    touchUpEvents = v4->_touchUpEvents;
    v4->_touchUpEvents = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    isa = v4[1].super.super.super.super.isa;
    v4[1].super.super.super.super.isa = v8;

    cancelledDrawInput = v4->_cancelledDrawInput;
    v4->_cancelledDrawInput = &stru_283FDFAF8;

    currentRecipientIdentifier = v4->_currentRecipientIdentifier;
    v4->_currentRecipientIdentifier = &stru_283FDFAF8;

    v12 = objc_opt_new();
    m_ptr = v4->_baseCharacterKeysLayout.m_ptr;
    v4->_baseCharacterKeysLayout.m_ptr = v12;
  }

  return v4;
}

+ (id)initializedClients
{
  if (+[TIKeyboardInputManagerMecabra initializedClients]::onceToken != -1)
  {
    dispatch_once(&+[TIKeyboardInputManagerMecabra initializedClients]::onceToken, &__block_literal_global_214);
  }

  v3 = +[TIKeyboardInputManagerMecabra initializedClients]::__initializedClients;

  return v3;
}

void __51__TIKeyboardInputManagerMecabra_initializedClients__block_invoke()
{
  v0 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  v1 = +[TIKeyboardInputManagerMecabra initializedClients]::__initializedClients;
  +[TIKeyboardInputManagerMecabra initializedClients]::__initializedClients = v0;

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = [MEMORY[0x277CCABD8] mainQueue];
  v3 = [v4 addObserverForName:@"TIKeyboardInputManagerDynamicDictionariesRemovedNotification" object:0 queue:v2 usingBlock:&__block_literal_global_219];
}

+ (id)offlineLearningHandleForInputMode:(id)mode
{
  modeCopy = mode;
  v4 = [[TILanguageModelOfflineLearningHandleMecabra alloc] initWithInputMode:modeCopy];

  [(TILanguageModelOfflineLearningHandle *)v4 setValid:1];

  return v4;
}

+ (id)dummyGeometryData
{
  if (+[TIKeyboardInputManagerMecabra dummyGeometryData]::__onceToken != -1)
  {
    dispatch_once(&+[TIKeyboardInputManagerMecabra dummyGeometryData]::__onceToken, &__block_literal_global_200);
  }

  v3 = +[TIKeyboardInputManagerMecabra dummyGeometryData]::__dummyData;

  return v3;
}

void __50__TIKeyboardInputManagerMecabra_dummyGeometryData__block_invoke()
{
  v2[0] = 0;
  v3 = 0;
  v0 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v2 length:8];
  v1 = +[TIKeyboardInputManagerMecabra dummyGeometryData]::__dummyData;
  +[TIKeyboardInputManagerMecabra dummyGeometryData]::__dummyData = v0;
}

+ (void)removeDynamicDictionaryForInputMode:(id)mode
{
  v9 = [TIInputMode inputModeWithIdentifier:mode];
  v3 = +[TIWordSearchController sharedWordSearchController];
  v4 = [v3 wordSearchForInputMode:v9];

  v5 = +[TIWordSearch sharedOperationQueue];
  v6 = [TIWordSearchOperationResetLearningDictionaries alloc];
  mecabraWrapper = [v4 mecabraWrapper];
  v8 = [(TIWordSearchOperationResetLearningDictionaries *)v6 initWithMecabraWrapper:mecabraWrapper];
  [v5 addOperation:v8];
}

- (void)tearDown
{
  v3 = +[TIWordSearch sharedOperationQueue];
  [v3 waitUntilAllOperationsAreFinished];

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerMecabra;
  [(TIKeyboardInputManager *)&v4 tearDown];
}

- (void)cancelComposition
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v5 = 136315394;
    *&v5[4] = "[TIKeyboardInputManagerMecabra(StackableInputManager) cancelComposition]";
    *&v5[12] = 2112;
    *&v5[14] = objc_opt_class();
    v4 = *&v5[14];
    _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  %@ was canceled", v5, 0x16u);
  }

  v3 = [(TIKeyboardInputManagerMecabra *)self compositionCompletionHandler:*v5];

  if (v3)
  {
    [(TIKeyboardInputManagerMecabra *)self _completeComposition:0];
  }
}

- (void)completeComposition
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v5 = 136315394;
    *&v5[4] = "[TIKeyboardInputManagerMecabra(StackableInputManager) completeComposition]";
    *&v5[12] = 2112;
    *&v5[14] = objc_opt_class();
    v4 = *&v5[14];
    _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  %@ was completed", v5, 0x16u);
  }

  v3 = [(TIKeyboardInputManagerMecabra *)self compositionCompletionHandler:*v5];

  if (v3)
  {
    [(TIKeyboardInputManagerMecabra *)self _completeComposition:1];
  }
}

- (void)_completeComposition:(BOOL)composition
{
  compositionCopy = composition;
  compositionCompletionHandler = [(TIKeyboardInputManagerMecabra *)self compositionCompletionHandler];

  if (compositionCompletionHandler)
  {
    compositionCompletionHandler2 = [(TIKeyboardInputManagerMecabra *)self compositionCompletionHandler];
    compositionCompletionHandler2[2](compositionCompletionHandler2, compositionCopy);

    [(TIKeyboardInputManagerMecabra *)self setCompositionCompletionHandler:0];
  }
}

- (void)composeTextWith:(id)with
{
  v16 = *MEMORY[0x277D85DE8];
  withCopy = with;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = v6;
    *location = 136315650;
    *&location[4] = "[TIKeyboardInputManagerMecabra(StackableInputManager) composeTextWith:]";
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = objc_opt_class();
    v8 = v15;
    _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  %@ invokes %@", location, 0x20u);
  }

  [(TIKeyboardInputManagerMecabra *)self setComposingKeyboardInputManager:withCopy];
  objc_initWeak(location, self);
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__TIKeyboardInputManagerMecabra_StackableInputManager__composeTextWith___block_invoke;
  v9[3] = &unk_27872F528;
  objc_copyWeak(&v10, location);
  [composingKeyboardInputManager composeText:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(location);
}

void __72__TIKeyboardInputManagerMecabra_StackableInputManager__composeTextWith___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    [WeakRetained commitComposition];
  }

  else
  {
    [WeakRetained abortComposition];
  }
}

- (TIKeyboardInputManagerMecabra)initWithKeyboardInputManagerToChain:(id)chain
{
  chainCopy = chain;
  v6 = [(TIKeyboardInputManager *)self initWithInputMode:0 keyboardState:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_geometryDataArray, chain);
  }

  return v7;
}

+ (id)inputMethodWithChainedKeyboardInputManager:(id)manager
{
  managerCopy = manager;
  v5 = [[self alloc] initWithKeyboardInputManagerToChain:managerCopy];

  return v5;
}

@end