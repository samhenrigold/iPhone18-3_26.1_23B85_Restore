@interface TIProactiveQuickTypeManager
+ (id)buildSecureCandidateFrom:(id)from withSecureCandidateRenderer:(id)renderer input:(id)input;
+ (id)proactiveTriggerForTextContentType:(id)type;
+ (id)proactiveTriggerForTextContentType:(id)type withContextBeforeInput:(id)input autofillMode:(unint64_t)mode;
+ (id)sharedInstance;
+ (id)singletonInstance;
+ (void)setSharedTIProactiveQuickTypeManager:(id)manager;
- (BOOL)isAutoCompleteEnabled;
- (BOOL)isAutoPopupEnabled;
- (BOOL)isEnabled;
- (TIProactiveQuickTypeManager)init;
- (TIProactiveQuickTypeManager)initWithICManager:(id)manager;
- (id)_makeQueue;
- (id)generateAndRenderProactiveSuggestionsWithInput:(id)input withSecureCandidateRenderer:(id)renderer withRenderTraits:(id)traits textContentType:(id)type;
- (id)generateAndRenderProactiveSuggestionsWithTriggers:(id)triggers withKeyboardState:(id)state withAdditionalPredictions:(id)predictions withSecureCandidateRenderer:(id)renderer withRenderTraits:(id)traits withInput:(id)input withRecipient:(id)recipient withApplication:(id)self0 withLocale:(id)self1 nextInputWillInsertAutospace:(BOOL)self2 withAvailableApps:(id)self3 logBlock:(id)self4;
- (id)renderItems:(id)items withAdditionalPredictions:(id)predictions withSecureCandidateRenderer:(id)renderer withRenderTraits:(id)traits withInput:(id)input;
- (id)searchForMeCardEmailAddresses;
- (id)searchForMeCardRegions;
- (unint64_t)matchProactiveCandidateToUserInput:(id)input userInput:(id)userInput;
- (void)addToTypologyTrace:(id)trace withTriggerSource:(id)source withTriggerType:(id)type withTriggerSubType:(id)subType withPredictionResults:(id)results withFirstTrigger:(id)trigger;
- (void)dealloc;
- (void)generateAndRenderProactiveSuggestionsForInput:(id)input withKeyboardState:(id)state withAdditionalPredictions:(id)predictions withSecureCandidateRenderer:(id)renderer withRenderTraits:(id)traits withInput:(id)withInput withRecipient:(id)recipient withApplication:(id)self0 withLocale:(id)self1 nextInputWillInsertAutospace:(BOOL)self2 withIsResponseDenyListed:(BOOL)self3 withShouldDisableAutoCaps:(BOOL)self4 withAvailableApps:(id)self5 logBlock:(id)self6 async:(BOOL)self7 completion:(id)self8;
- (void)generateAndRenderProactiveSuggestionsWithInput:(id)input withSecureCandidateRenderer:(id)renderer withRenderTraits:(id)traits textContentType:(id)type async:(BOOL)async completion:(id)completion;
- (void)keyboardActivityDidTransition:(id)transition;
- (void)loggingProactiveEngagementMetric:(unint64_t)metric withLocale:(id)locale fieldType:(id)type;
- (void)propogateMetrics:(id)metrics data:(id)data;
- (void)provideFeedbackForString:(id)string type:(unsigned __int8)type style:(unsigned __int8)style;
- (void)reset;
- (void)suggestionAccepted:(id)accepted fieldType:(id)type;
- (void)suggestionNotAccepted:(id)accepted;
- (void)userActionWithNoNewTriggers:(id)triggers fieldType:(id)type;
@end

@implementation TIProactiveQuickTypeManager

+ (id)singletonInstance
{
  if (singletonInstance_onceToken_6637 != -1)
  {
    dispatch_once(&singletonInstance_onceToken_6637, &__block_literal_global_6638);
  }

  v3 = singletonInstance_singleton;

  return v3;
}

+ (id)sharedInstance
{
  if (__testingInstance_6640)
  {
    v2 = __testingInstance_6640;
  }

  else
  {
    v2 = +[TIProactiveQuickTypeManager singletonInstance];
  }

  return v2;
}

- (void)reset
{
  inputContextPredictionManager = [(TIProactiveQuickTypeManager *)self inputContextPredictionManager];
  [inputContextPredictionManager reset];

  lastSuggestionTime = self->_lastSuggestionTime;
  self->_lastSuggestionTime = 0;

  maxLengthProactiveCandidate = self->_maxLengthProactiveCandidate;
  self->_maxLengthProactiveCandidate = 0;
}

- (id)searchForMeCardRegions
{
  inputContextPredictionManager = [(TIProactiveQuickTypeManager *)self inputContextPredictionManager];
  searchForMeCardRegions = [inputContextPredictionManager searchForMeCardRegions];

  return searchForMeCardRegions;
}

- (BOOL)isAutoCompleteEnabled
{
  v2 = TIGetProactiveQuickTypeSettingValue();
  integerValue = [v2 integerValue];

  return (integerValue >> 2) & 1;
}

- (BOOL)isAutoPopupEnabled
{
  v2 = TIGetProactiveQuickTypeSettingValue();
  integerValue = [v2 integerValue];

  return (integerValue >> 1) & 1;
}

- (BOOL)isEnabled
{
  v2 = TIGetProactiveQuickTypeSettingValue();
  integerValue = [v2 integerValue];

  return integerValue & 1;
}

- (void)propogateMetrics:(id)metrics data:(id)data
{
  dataCopy = data;
  metricsCopy = metrics;
  inputContextPredictionManager = [(TIProactiveQuickTypeManager *)self inputContextPredictionManager];
  [inputContextPredictionManager propogateMetrics:metricsCopy data:dataCopy];
}

- (void)provideFeedbackForString:(id)string type:(unsigned __int8)type style:(unsigned __int8)style
{
  styleCopy = style;
  typeCopy = type;
  v14 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v9 = TIProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Sending feedback to Input Context, Type: %ud, ", "-[TIProactiveQuickTypeManager provideFeedbackForString:type:style:]", typeCopy];
    *buf = 138412290;
    v13 = typeCopy;
    _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  inputContextPredictionManager = [(TIProactiveQuickTypeManager *)self inputContextPredictionManager];
  [inputContextPredictionManager provideFeedbackForString:stringCopy type:typeCopy style:styleCopy];
}

- (unint64_t)matchProactiveCandidateToUserInput:(id)input userInput:(id)userInput
{
  inputCopy = input;
  userInputCopy = userInput;
  if (objc_msgSend_isEqualToString_(inputCopy))
  {
    v7 = 1;
  }

  else
  {
    v8 = [userInputCopy _editDistanceFrom:inputCopy];
    v9 = ((v8 / [inputCopy length]) * 100.0);
    v10 = 3;
    if (v9 > 66.66)
    {
      v10 = 4;
    }

    if (v9 <= 33.33)
    {
      v7 = 2;
    }

    else
    {
      v7 = v10;
    }
  }

  return v7;
}

- (void)loggingProactiveEngagementMetric:(unint64_t)metric withLocale:(id)locale fieldType:(id)type
{
  v20 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  typeCopy = type;
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  v10 = TIOSLogFacility();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  switch(metric)
  {
    case 3uLL:
      if (v11)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Proactive suggestion %@ not selected by user and mildly matching user input!", "-[TIProactiveQuickTypeManager loggingProactiveEngagementMetric:withLocale:fieldType:]", self->_maxLengthProactiveCandidate];
        *buf = 138412290;
        v19 = v15;
        _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v12 = kTIStatisticsZeroEngagementDescriptionMildlyMatchedToUserInput;
      break;
    case 2uLL:
      if (v11)
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Proactive suggestion %@ not selected by user and moderately matching user input!", "-[TIProactiveQuickTypeManager loggingProactiveEngagementMetric:withLocale:fieldType:]", self->_maxLengthProactiveCandidate];
        *buf = 138412290;
        v19 = v14;
        _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v12 = kTIStatisticsZeroEngagementDescriptionModeratelyMatchedToUserInput;
      break;
    case 1uLL:
      if (v11)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Proactive suggestion %@ not selected by user and exactly matching user input!", "-[TIProactiveQuickTypeManager loggingProactiveEngagementMetric:withLocale:fieldType:]", self->_maxLengthProactiveCandidate];
        *buf = 138412290;
        v19 = v16;
        _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v12 = kTIStatisticsZeroEngagementDescriptionExactlyMatchedToUserInput;
      break;
    default:
      if (v11)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Proactive suggestion %@ not selected by user and zero matching user input!", "-[TIProactiveQuickTypeManager loggingProactiveEngagementMetric:withLocale:fieldType:]", self->_maxLengthProactiveCandidate];
        *buf = 138412290;
        v19 = v17;
        _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v12 = &kTIStatisticsZeroEngagementDescriptionNotMatchedToUserInput;
      break;
  }

  v13 = [(__CFString *)*v12 copy];
  TIStatisticLogProactiveDescription(localeCopy, self->_lastTriggerForSuggestion, v13, @"engagement", typeCopy);
}

- (void)keyboardActivityDidTransition:(id)transition
{
  transitionCopy = transition;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__TIProactiveQuickTypeManager_keyboardActivityDidTransition___block_invoke;
  v7[3] = &unk_278733738;
  v8 = transitionCopy;
  selfCopy = self;
  v5 = transitionCopy;
  v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v7);
  TIDispatchAsync();
}

void __61__TIProactiveQuickTypeManager_keyboardActivityDidTransition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) toState];
  if (v2 == 3)
  {
    v3 = [*(a1 + 40) inputContextPredictionManager];
    [v3 hibernate];
  }

  else
  {
    if (v2 != 1)
    {
      return;
    }

    v3 = [*(a1 + 40) inputContextPredictionManager];
    [v3 warmUp];
  }
}

- (void)generateAndRenderProactiveSuggestionsWithInput:(id)input withSecureCandidateRenderer:(id)renderer withRenderTraits:(id)traits textContentType:(id)type async:(BOOL)async completion:(id)completion
{
  asyncCopy = async;
  inputCopy = input;
  rendererCopy = renderer;
  traitsCopy = traits;
  typeCopy = type;
  completionCopy = completion;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v20 = [inputCopy componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

  lastObject = [v20 lastObject];
  if ([lastObject length])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __156__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsWithInput_withSecureCandidateRenderer_withRenderTraits_textContentType_async_completion___block_invoke;
    aBlock[3] = &unk_2787304F8;
    aBlock[4] = self;
    v27 = rendererCopy;
    v41 = rendererCopy;
    v42 = traitsCopy;
    v22 = lastObject;
    v43 = v22;
    v44 = inputCopy;
    v45 = typeCopy;
    v46 = completionCopy;
    v23 = _Block_copy(aBlock);
    if (asyncCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __156__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsWithInput_withSecureCandidateRenderer_withRenderTraits_textContentType_async_completion___block_invoke_2;
      block[3] = &unk_278733820;
      block[4] = self;
      v38 = v22;
      v39 = v23;
      v24 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
      TIDispatchAsync();

      v25 = v38;
    }

    else
    {
      v31 = 0;
      v32 = &v31;
      v33 = 0x3032000000;
      v34 = __Block_byref_object_copy__6482;
      v35 = __Block_byref_object_dispose__6483;
      v36 = 0;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __156__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsWithInput_withSecureCandidateRenderer_withRenderTraits_textContentType_async_completion___block_invoke_4;
      v28[3] = &unk_2787337C0;
      v30 = &v31;
      v28[4] = self;
      v29 = v22;
      v26 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v28);
      TIDispatchSync();

      (*(v23 + 2))(v23, v32[5]);
      _Block_object_dispose(&v31, 8);
      v25 = v36;
    }

    rendererCopy = v27;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __156__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsWithInput_withSecureCandidateRenderer_withRenderTraits_textContentType_async_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  if ([v16 count])
  {
    v3 = [*(a1 + 32) renderItems:v16 withAdditionalPredictions:0 withSecureCandidateRenderer:*(a1 + 40) withRenderTraits:*(a1 + 48) withInput:*(a1 + 56)];
    v4 = [v3 mutableCopy];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 32);
  if (*(v5 + 40))
  {
    if (*(v5 + 48) && [*(a1 + 64) length] >= *(*(a1 + 32) + 48))
    {
      v6 = [*(a1 + 64) length] - *(*(a1 + 32) + 48);
      if (v6 >= [*(*(a1 + 32) + 40) length])
      {
        v7 = [*(a1 + 64) substringFromIndex:*(*(a1 + 32) + 48)];
        v8 = [v7 lowercaseString];

        v9 = [*(a1 + 32) matchProactiveCandidateToUserInput:*(*(a1 + 32) + 40) userInput:v8];
        v10 = *(a1 + 32);
        v11 = [*(a1 + 40) localeIdentifier];
        [v10 loggingProactiveEngagementMetric:v9 withLocale:v11 fieldType:*(a1 + 72)];

        v12 = *(a1 + 32);
        v13 = *(v12 + 40);
        *(v12 + 40) = 0;

        *(*(a1 + 32) + 48) = 0;
        v14 = *(a1 + 32);
        v15 = *(v14 + 24);
        *(v14 + 24) = 0;
      }
    }

    else
    {
      *(*(a1 + 32) + 48) = [*(a1 + 64) length] - 1;
    }
  }

  (*(*(a1 + 80) + 16))();
}

void __156__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsWithInput_withSecureCandidateRenderer_withRenderTraits_textContentType_async_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) inputContextPredictionManager];
  v3 = [v2 lastCachedResultWithInitialCharacters:*(a1 + 40)];

  v5 = *(a1 + 48);
  v4 = v3;
  TIDispatchAsync();
}

void __156__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsWithInput_withSecureCandidateRenderer_withRenderTraits_textContentType_async_completion___block_invoke_4(uint64_t a1)
{
  v5 = [*(a1 + 32) inputContextPredictionManager];
  v2 = [v5 lastCachedResultWithInitialCharacters:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)generateAndRenderProactiveSuggestionsWithInput:(id)input withSecureCandidateRenderer:(id)renderer withRenderTraits:(id)traits textContentType:(id)type
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__6482;
  v13 = __Block_byref_object_dispose__6483;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __139__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsWithInput_withSecureCandidateRenderer_withRenderTraits_textContentType___block_invoke;
  v8[3] = &unk_278731EE8;
  v8[4] = &v9;
  [(TIProactiveQuickTypeManager *)self generateAndRenderProactiveSuggestionsWithInput:input withSecureCandidateRenderer:renderer withRenderTraits:traits textContentType:type async:0 completion:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)searchForMeCardEmailAddresses
{
  inputContextPredictionManager = [(TIProactiveQuickTypeManager *)self inputContextPredictionManager];
  searchForMeCardEmailAddresses = [inputContextPredictionManager searchForMeCardEmailAddresses];

  return searchForMeCardEmailAddresses;
}

- (void)suggestionNotAccepted:(id)accepted
{
  v23 = *MEMORY[0x277D85DE8];
  acceptedCopy = accepted;
  v5 = acceptedCopy;
  if (!self->_maxLengthProactiveCandidate)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [acceptedCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        v9 = 0;
        do
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            candidate = [v10 candidate];
            v12 = [candidate length];
            v13 = [(NSString *)self->_maxLengthProactiveCandidate length];

            if (v12 > v13)
            {
              candidate2 = [v10 candidate];
              maxLengthProactiveCandidate = self->_maxLengthProactiveCandidate;
              self->_maxLengthProactiveCandidate = candidate2;
            }
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    if ([(NSString *)self->_maxLengthProactiveCandidate length]>= 0x14)
    {
      v16 = [(NSString *)self->_maxLengthProactiveCandidate substringToIndex:20];
      v17 = self->_maxLengthProactiveCandidate;
      self->_maxLengthProactiveCandidate = v16;
    }
  }
}

- (void)suggestionAccepted:(id)accepted fieldType:(id)type
{
  v15 = *MEMORY[0x277D85DE8];
  acceptedCopy = accepted;
  typeCopy = type;
  lastSuggestionTime = self->_lastSuggestionTime;
  if (lastSuggestionTime)
  {
    [(NSDate *)lastSuggestionTime timeIntervalSinceNow];
    TIStatisticsLogProactiveTimeOnScreen(acceptedCopy, self->_lastTriggerForSuggestion, 1, typeCopy, -v9);
    v10 = self->_lastSuggestionTime;
    self->_lastSuggestionTime = 0;
  }

  else
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v11 = TIOSLogFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ProactiveQuickType:TI: ERROR on proactive Time SHOULD HAVE HAD A LAST SUGGESTION TIME", "-[TIProactiveQuickTypeManager suggestionAccepted:fieldType:]"];
      *buf = 138412290;
      v14 = v12;
      _os_log_debug_impl(&dword_22CA55000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }
}

- (void)userActionWithNoNewTriggers:(id)triggers fieldType:(id)type
{
  lastSuggestionTime = self->_lastSuggestionTime;
  if (lastSuggestionTime)
  {
    typeCopy = type;
    triggersCopy = triggers;
    [(NSDate *)lastSuggestionTime timeIntervalSinceNow];
    TIStatisticsLogProactiveTimeOnScreen(triggersCopy, self->_lastTriggerForSuggestion, 0, typeCopy, -v9);

    v10 = self->_lastSuggestionTime;
    self->_lastSuggestionTime = 0;
  }
}

- (void)generateAndRenderProactiveSuggestionsForInput:(id)input withKeyboardState:(id)state withAdditionalPredictions:(id)predictions withSecureCandidateRenderer:(id)renderer withRenderTraits:(id)traits withInput:(id)withInput withRecipient:(id)recipient withApplication:(id)self0 withLocale:(id)self1 nextInputWillInsertAutospace:(BOOL)self2 withIsResponseDenyListed:(BOOL)self3 withShouldDisableAutoCaps:(BOOL)self4 withAvailableApps:(id)self5 logBlock:(id)self6 async:(BOOL)self7 completion:(id)self8
{
  v157 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  stateCopy = state;
  predictionsCopy = predictions;
  rendererCopy = renderer;
  traitsCopy = traits;
  withInputCopy = withInput;
  recipientCopy = recipient;
  applicationCopy = application;
  localeCopy = locale;
  appsCopy = apps;
  blockCopy = block;
  completionCopy = completion;
  v30 = completionCopy;
  if (!traitsCopy)
  {
    (*(completionCopy + 2))(completionCopy, MEMORY[0x277CBEBF8]);
    v39 = stateCopy;
    v40 = withInputCopy;
    goto LABEL_46;
  }

  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  v31 = stateCopy;
  v94 = recipientCopy;
  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v32 = v30;
    v33 = TIOSLogFacility();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v86 = blockCopy;
      v87 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ProactiveQuickType:TI: Found triggers, count = %lu", "-[TIProactiveQuickTypeManager generateAndRenderProactiveSuggestionsForInput:withKeyboardState:withAdditionalPredictions:withSecureCandidateRenderer:withRenderTraits:withInput:withRecipient:withApplication:withLocale:nextInputWillInsertAutospace:withIsResponseDenyListed:withShouldDisableAutoCaps:withAvailableApps:logBlock:async:completion:]", objc_msgSend(inputCopy, "count")];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v87;
      _os_log_debug_impl(&dword_22CA55000, v33, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);

      blockCopy = v86;
    }

    v30 = v32;
    v31 = stateCopy;
  }

  date = [MEMORY[0x277CBEAA8] date];
  array = [MEMORY[0x277CBEB18] array];
  v95 = traitsCopy;
  v96 = predictionsCopy;
  v90 = rendererCopy;
  v91 = applicationCopy;
  v92 = blockCopy;
  v93 = v30;
  if ([(TIProactiveQuickTypeManager *)self usePQT2Flow])
  {
    v34 = applicationCopy;

    documentState = [v31 documentState];
    contextBeforeInput = [documentState contextBeforeInput];
    if (contextBeforeInput)
    {
      documentState2 = [v31 documentState];
      contextBeforeInput2 = [documentState2 contextBeforeInput];
    }

    else
    {
      contextBeforeInput2 = &stru_283FDFAF8;
    }

    newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
    v60 = [(__CFString *)contextBeforeInput2 componentsSeparatedByCharactersInSet:newlineCharacterSet];
    lastObject = [v60 lastObject];

    if (autospace)
    {
      v62 = [lastObject stringByAppendingString:@" "];
    }

    else
    {
      v62 = lastObject;
    }

    applicationCopy = v34;
    textInputTraits = [v31 textInputTraits];
    textContentType = [textInputTraits textContentType];

    if (![textContentType length])
    {
      autofillMode = [v31 autofillMode];
      if ((autofillMode - 4) <= 2)
      {
        v66 = **(&unk_278730538 + autofillMode - 4);

        textContentType = v66;
      }
    }

    v67 = objc_alloc(MEMORY[0x277D1C0D0]);
    inputContextHistory = [v31 inputContextHistory];
    v69 = [v67 initWithContext:v62 inputContextHistory:inputContextHistory contentType:textContentType];

    [v69 setAvailableApps:appsCopy];
    [array addObject:v69];
    if ([textContentType length])
    {
      v70 = v62;
      v71 = withInputCopy;
    }

    else
    {
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v74 = [v62 componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
      lastObject2 = [v74 lastObject];
      v76 = v31;
      v77 = lastObject2;
      if (lastObject2)
      {
        v78 = lastObject2;
      }

      else
      {
        v78 = &stru_283FDFAF8;
      }

      v70 = v78;

      v31 = v76;
      v71 = whitespaceAndNewlineCharacterSet;
    }

    v41 = v62;

    v45 = 0;
    v56 = 0;
    v57 = v70;
    v58 = 0;
    blockCopy = v92;
LABEL_38:
    v72 = date;
    goto LABEL_39;
  }

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v41 = inputCopy;
  v42 = [v41 countByEnumeratingWithState:&v147 objects:v156 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = v41;
    v100 = 0;
    v45 = 0;
    v46 = *v148;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v148 != v46)
        {
          objc_enumerationMutation(v44);
        }

        v48 = *(*(&v147 + 1) + 8 * i);
        triggerSourceType = [v48 triggerSourceType];
        if (triggerSourceType > 2)
        {
          v50 = 0;
        }

        else
        {
          v50 = triggerSourceType;
          v100 = off_278730550[triggerSourceType];
          v45 = dword_22CC8A408[triggerSourceType];
        }

        textInputTraits2 = [stateCopy textInputTraits];
        textContentType2 = [textInputTraits2 textContentType];
        TIStatisticLogProactive(localeCopy, v48, 0, textContentType2, 0);

        v53 = objc_alloc(MEMORY[0x277D1C0D0]);
        attributes = [v48 attributes];
        v55 = [v53 initWithSource:v50 attributes:attributes];

        [v55 setAvailableApps:appsCopy];
        [array addObject:v55];
      }

      v43 = [v44 countByEnumeratingWithState:&v147 objects:v156 count:16];
    }

    while (v43);
    v41 = v44;
    v56 = v44;
    v31 = stateCopy;
    applicationCopy = v91;
    blockCopy = v92;
    v57 = withInputCopy;
    v58 = v100;
    goto LABEL_38;
  }

  v58 = 0;
  v45 = 0;
  v56 = v41;
  v72 = date;
  v57 = withInputCopy;
LABEL_39:

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke;
  aBlock[3] = &unk_278730480;
  aBlock[4] = self;
  inputCopy = v56;
  v133 = inputCopy;
  v144 = blockCopy;
  v134 = v58;
  v89 = v72;
  v135 = v89;
  v79 = applicationCopy;
  v136 = v79;
  v137 = v31;
  v80 = localeCopy;
  v138 = v80;
  v145 = v93;
  v139 = v95;
  v140 = v96;
  v141 = v90;
  v40 = v57;
  v142 = v40;
  v81 = array;
  v143 = v81;
  v146 = v45;
  v82 = _Block_copy(aBlock);
  if ([(TIProactiveQuickTypeManager *)self usePQT2Flow])
  {
    v83 = 3;
  }

  else
  {
    v83 = 2;
  }

  if (async)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_167;
    block[3] = &unk_2787304A8;
    block[4] = self;
    v123 = v81;
    v124 = v79;
    v125 = v94;
    v126 = v80;
    listedCopy = listed;
    capsCopy = caps;
    v128 = v45;
    v129 = v83;
    v127 = v82;
    v84 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
    TIDispatchAsync();

    rendererCopy = v90;
    applicationCopy = v91;
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v152 = 0x3032000000;
    v153 = __Block_byref_object_copy__6482;
    v154 = __Block_byref_object_dispose__6483;
    v155 = 0;
    v116 = 0;
    v117 = &v116;
    v118 = 0x3032000000;
    v119 = __Block_byref_object_copy__6482;
    v120 = __Block_byref_object_dispose__6483;
    v121 = 0;
    v105[0] = MEMORY[0x277D85DD0];
    v105[1] = 3221225472;
    v105[2] = __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_3_169;
    v105[3] = &unk_2787304D0;
    v110 = &v116;
    v105[4] = self;
    v106 = v81;
    v107 = v79;
    v108 = v94;
    listedCopy2 = listed;
    capsCopy2 = caps;
    v112 = v45;
    v113 = v83;
    v109 = v80;
    p_buf = &buf;
    rendererCopy = v90;
    applicationCopy = v91;
    v85 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v105);
    TIDispatchSync();

    (*(v82 + 2))(v82, v117[5], *(*(&buf + 1) + 40));
    _Block_object_dispose(&v116, 8);

    _Block_object_dispose(&buf, 8);
  }

  traitsCopy = v95;
  predictionsCopy = v96;
  v30 = v93;
  recipientCopy = v94;
  blockCopy = v92;
  v39 = stateCopy;
LABEL_46:
}

void __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v193 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) usePQT2Flow] & 1) == 0)
  {
    a3 = [*(a1 + 40) objectAtIndexedSubscript:0];
    v7 = [a3 attributes];
    v8 = [v7 valueForKey:*MEMORY[0x277D23050]];

    v9 = [a3 attributes];
    v10 = [v9 valueForKey:*MEMORY[0x277D23028]];

    [*(a1 + 32) addToTypologyTrace:*(a1 + 128) withTriggerSource:*(a1 + 48) withTriggerType:v8 withTriggerSubType:v10 withPredictionResults:v5 withFirstTrigger:a3];
  }

  [*(a1 + 56) timeIntervalSinceNow];
  v12 = v11;
  v134 = v5;
  v150 = a1;
  if ([v5 count])
  {
    v13 = [v5 objectAtIndexedSubscript:0];
    v14 = [v13 trigger];
    if ([v14 triggerSourceType] == 3)
    {

      goto LABEL_16;
    }

    a3 = [v5 objectAtIndexedSubscript:0];
    v15 = [a3 trigger];
    v137 = v6;
    if ([v15 triggerSourceType] == 2)
    {
    }

    else
    {
      v16 = *MEMORY[0x277D23008];
      v190[0] = *MEMORY[0x277D23000];
      v190[1] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v190 count:2];
      v18 = [v5 objectAtIndexedSubscript:0];
      v19 = [v18 trigger];
      v20 = [v19 attributedString];
      v21 = [v20 objectForKeyedSubscript:@"subtype"];
      v145 = [v17 containsObject:v21];

      a1 = v150;
      v6 = v137;

      if ((v145 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v22 = [v5 objectAtIndexedSubscript:0];
    v23 = [v22 trigger];
    v24 = [v23 triggerSourceType];

    v25 = [v5 firstObject];
    v26 = [v25 originatingBundleID];

    v27 = *(a1 + 64);
    v28 = [v5 objectAtIndexedSubscript:0];
    v29 = [v28 predictionAge];

    if (v29 == -1)
    {
      v146 = 0;
    }

    else
    {
      v30 = [v5 objectAtIndexedSubscript:0];
      v146 = [v30 predictionAge];
    }

    v31 = [v5 objectAtIndexedSubscript:0];
    v32 = [v31 trigger];
    v33 = [v32 attributedString];
    v34 = [v33 objectForKeyedSubscript:@"field"];
    v35 = v34;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v37 = [v5 objectAtIndexedSubscript:0];
      [v37 trigger];
      v38 = objc = v26;
      [v38 attributedString];
      v39 = v27;
      v41 = v40 = v24;
      v36 = [v41 objectForKeyedSubscript:@"type"];

      v24 = v40;
      v27 = v39;

      v26 = objc;
    }

    v42 = v24 != 2;
    v43 = v24 == 2;

    a3 = +[TIConnectionsMetricsTracker sharedInstance];
    a1 = v150;
    v44 = [*(v150 + 72) textInputTraits];
    v45 = [v44 textContentType];
    BYTE1(v131) = v43;
    LOBYTE(v131) = v42;
    [a3 trackPredictionEngagmentWithConversion:0 age:v146 fieldType:v45 resultType:v36 fromBundleId:v26 targetApp:v27 linguistic:v131 semantic:?];

    v5 = v134;
    v6 = v137;
  }

LABEL_16:
  if (v6)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v46 = TIOSLogFacility();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      v125 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ProactiveQuickType:TI: Error returned from InputContext: %@, response time = %lf seconds", "-[TIProactiveQuickTypeManager generateAndRenderProactiveSuggestionsForInput:withKeyboardState:withAdditionalPredictions:withSecureCandidateRenderer:withRenderTraits:withInput:withRecipient:withApplication:withLocale:nextInputWillInsertAutospace:withIsResponseDenyListed:withShouldDisableAutoCaps:withAvailableApps:logBlock:async:completion:]_block_invoke", v6, -v12];
      *buf = 138412290;
      v192 = v125;
      _os_log_debug_impl(&dword_22CA55000, v46, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (([*(a1 + 32) usePQT2Flow] & 1) == 0)
    {
      v180 = 0u;
      v181 = 0u;
      v178 = 0u;
      v179 = 0u;
      obj = *(a1 + 40);
      v47 = [obj countByEnumeratingWithState:&v178 objects:v189 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v179;
        v135 = *v179;
        v138 = v6;
        do
        {
          v50 = 0;
          v139 = v48;
          do
          {
            if (*v179 != v49)
            {
              objc_enumerationMutation(obj);
            }

            v51 = *(*(&v178 + 1) + 8 * v50);
            if ([v6 code] == 5)
            {
              v52 = [v6 localizedDescription];
              v53 = *(a1 + 80);
              v147 = [*(a1 + 72) textInputTraits];
              v54 = [v147 textContentType];
              v55 = v53;
              v56 = v51;
              v57 = v52;
              v58 = v54;
              v59 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
              v60 = [v57 componentsSeparatedByCharactersInSet:v59];

              v184 = 0u;
              v185 = 0u;
              v182 = 0u;
              v183 = 0u;
              v61 = v60;
              v62 = [v61 countByEnumeratingWithState:&v182 objects:buf count:16];
              if (v62)
              {
                v63 = v62;
                v64 = *v183;
                do
                {
                  for (i = 0; i != v63; ++i)
                  {
                    if (*v183 != v64)
                    {
                      objc_enumerationMutation(v61);
                    }

                    TIStatisticLogProactiveDescription(v55, v56, *(*(&v182 + 1) + 8 * i), @"suggestion", v58);
                  }

                  v63 = [v61 countByEnumeratingWithState:&v182 objects:buf count:16];
                }

                while (v63);
              }

              a1 = v150;
              v66 = *(v150 + 80);
              v67 = [*(v150 + 72) textInputTraits];
              v68 = [v67 textContentType];
              TIStatisticLogProactive(v66, v56, 1, v68, 0);

              v49 = v135;
              v6 = v138;
              v48 = v139;
            }

            else
            {
              v69 = *(a1 + 80);
              v57 = [*(a1 + 72) textInputTraits];
              v67 = [v57 textContentType];
              TIStatisticLogProactive(v69, v51, 2, v67, 0);
            }

            ++v50;
          }

          while (v50 != v48);
          v48 = [obj countByEnumeratingWithState:&v178 objects:v189 count:16];
        }

        while (v48);
      }

      v5 = v134;
    }

    (*(*(a1 + 136) + 16))();
    goto LABEL_112;
  }

  v70 = [v5 count];
  if (v70 >= 1)
  {
    if ([*(a1 + 40) count])
    {
      v140 = [*(a1 + 40) objectAtIndex:0];
    }

    else
    {
      v140 = 0;
    }

    v83 = "TextInputCore";
    while (1)
    {
      if (!_os_feature_enabled_impl() || [*(a1 + 72) autofillMode] != 4)
      {
        goto LABEL_77;
      }

      [*(a1 + 72) documentState];
      v85 = v84 = a1;
      v86 = [v85 contextBeforeInput];
      if (v86)
      {
        v6 = [*(v84 + 72) documentState];
        a3 = [v6 contextBeforeInput];
        if ([a3 length])
        {
          v87 = 0;
          goto LABEL_73;
        }

        v84 = v150;
      }

      v148 = a3;
      v88 = [*(v84 + 72) documentState];
      v89 = [v88 contextAfterInput];
      if (!v89)
      {

        if (!v86)
        {

          a3 = v148;
          a1 = v150;
LABEL_74:
          if (([*(a1 + 88) disableHideMyEmail] & 1) == 0)
          {
            [*(a1 + 88) setShouldOfferHideMyEmail:1];
          }

          goto LABEL_77;
        }

        v87 = 1;
        a3 = v148;
        goto LABEL_73;
      }

      v90 = v89;
      obja = v6;
      v91 = v83;
      v92 = [*(v84 + 72) documentState];
      v93 = [v92 contextAfterInput];
      v94 = [v93 length];
      v87 = v94 == 0;

      if (v86)
      {
        v83 = v91;
        v6 = obja;
        a3 = v148;
LABEL_73:

        a1 = v150;
        if (v87)
        {
          goto LABEL_74;
        }

        goto LABEL_77;
      }

      a3 = v148;
      a1 = v150;
      v83 = v91;
      v6 = obja;
      if (!v94)
      {
        goto LABEL_74;
      }

LABEL_77:
      if (!--v70)
      {
        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        if (TICanLogMessageAtLevel_logLevel > 1)
        {
          v95 = TIOSLogFacility();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
          {
            v126 = MEMORY[0x277CCACA8];
            v127 = [v134 count];
            [*(a1 + 56) timeIntervalSinceNow];
            v129 = [v126 stringWithFormat:@"%s ProactiveQuickType:TI: %lu results returned from InputContext, response time = %lf seconds", "-[TIProactiveQuickTypeManager generateAndRenderProactiveSuggestionsForInput:withKeyboardState:withAdditionalPredictions:withSecureCandidateRenderer:withRenderTraits:withInput:withRecipient:withApplication:withLocale:nextInputWillInsertAutospace:withIsResponseDenyListed:withShouldDisableAutoCaps:withAvailableApps:logBlock:async:completion:]_block_invoke", v127, -v128];
            *buf = 138412290;
            v192 = v129;
            _os_log_debug_impl(&dword_22CA55000, v95, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }

        v96 = [*(a1 + 32) renderItems:v134 withAdditionalPredictions:*(a1 + 96) withSecureCandidateRenderer:*(a1 + 104) withRenderTraits:*(a1 + 88) withInput:*(a1 + 112)];
        v136 = [v96 mutableCopy];

        context = objc_autoreleasePoolPush();
        if ([*(a1 + 32) usePQT2Flow])
        {
          v176 = 0u;
          v177 = 0u;
          v174 = 0u;
          v175 = 0u;
          v97 = v134;
          v98 = [v97 countByEnumeratingWithState:&v174 objects:v188 count:16];
          v6 = 0;
          if (v98)
          {
            v99 = v98;
            v100 = *v175;
            do
            {
              for (j = 0; j != v99; ++j)
              {
                if (*v175 != v100)
                {
                  objc_enumerationMutation(v97);
                }

                v102 = *(*(&v174 + 1) + 8 * j);
                v103 = [v102 value];
                v104 = [v103 length];

                if (v104)
                {
                  v105 = +[TIProactiveQuickTypeManager sharedInstance];
                  v106 = [v102 value];
                  [v105 provideFeedbackForString:v106 type:3 style:1];
                }
              }

              v99 = [v97 countByEnumeratingWithState:&v174 objects:v188 count:16];
            }

            while (v99);
          }

          v107 = +[TIProactiveQuickTypeManager sharedInstance];
          [v107 provideFeedbackForString:&stru_283FDFAF8 type:3 style:1];
        }

        else
        {
          v132 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, objc_msgSend(*(a1 + 120), "count")}];
          v108 = [MEMORY[0x277CCAB58] indexSet];
          v109 = [MEMORY[0x277CCAB58] indexSet];
          v149 = objc_opt_new();
          v170 = 0u;
          v171 = 0u;
          v172 = 0u;
          v173 = 0u;
          objb = v134;
          v110 = [objb countByEnumeratingWithState:&v170 objects:v187 count:16];
          if (v110)
          {
            v111 = v110;
            v112 = *v171;
            do
            {
              for (k = 0; k != v111; ++k)
              {
                if (*v171 != v112)
                {
                  objc_enumerationMutation(objb);
                }

                v114 = *(*(&v170 + 1) + 8 * k);
                v115 = *(v150 + 120);
                v169[0] = MEMORY[0x277D85DD0];
                v169[1] = 3221225472;
                v169[2] = __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_159;
                v169[3] = &unk_278730408;
                v169[4] = v114;
                v116 = [v115 indexOfObjectPassingTest:v169];
                v117 = [v114 value];
                [v149 addObject:v117];

                if ([v108 containsIndex:v116])
                {
                  v118 = v109;
                }

                else
                {
                  v118 = v108;
                }

                [v118 addIndex:v116];
              }

              v111 = [objb countByEnumeratingWithState:&v170 objects:v187 count:16];
            }

            while (v111);
          }

          v107 = v132;
          [v132 removeIndexes:v108];
          v119 = v109;
          [v108 removeIndexes:v109];
          v165[0] = MEMORY[0x277D85DD0];
          v165[1] = 3221225472;
          v165[2] = __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_2;
          v165[3] = &unk_278730430;
          a1 = v150;
          v166 = *(v150 + 80);
          v167 = *(v150 + 40);
          v168 = *(v150 + 72);
          [v132 enumerateIndexesUsingBlock:v165];
          v160[0] = MEMORY[0x277D85DD0];
          v160[1] = 3221225472;
          v160[2] = __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_3;
          v160[3] = &unk_278730458;
          v161 = *(v150 + 80);
          v162 = *(v150 + 40);
          v163 = *(v150 + 72);
          v120 = v149;
          v164 = v120;
          [v108 enumerateIndexesUsingBlock:v160];
          v155[0] = MEMORY[0x277D85DD0];
          v155[1] = 3221225472;
          v155[2] = __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_4;
          v155[3] = &unk_278730458;
          v156 = *(v150 + 80);
          v157 = *(v150 + 40);
          v158 = *(v150 + 72);
          v159 = v120;
          v121 = v120;
          [v119 enumerateIndexesUsingBlock:v155];

          v6 = 0;
        }

        objc_autoreleasePoolPop(context);
        (*(*(a1 + 136) + 16))();
        if ([v136 count] && v140)
        {
          v122 = [MEMORY[0x277CBEAA8] date];
          v123 = *(a1 + 32);
          v124 = *(v123 + 32);
          *(v123 + 32) = v122;

          objc_storeStrong((*(a1 + 32) + 24), v140);
        }

        v5 = v134;
        goto LABEL_112;
      }
    }
  }

  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v71 = TIOSLogFacility();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
    {
      v130 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ProactiveQuickType:TI: No suggestions returned from InputContext, response time = %lf seconds", "-[TIProactiveQuickTypeManager generateAndRenderProactiveSuggestionsForInput:withKeyboardState:withAdditionalPredictions:withSecureCandidateRenderer:withRenderTraits:withInput:withRecipient:withApplication:withLocale:nextInputWillInsertAutospace:withIsResponseDenyListed:withShouldDisableAutoCaps:withAvailableApps:logBlock:async:completion:]_block_invoke_5", -v12];
      *buf = 138412290;
      v192 = v130;
      _os_log_debug_impl(&dword_22CA55000, v71, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v72 = *(v150 + 144);
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v73 = *(v150 + 40);
  v74 = [v73 countByEnumeratingWithState:&v151 objects:v186 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = *v152;
    if (v12 * -1000.0 <= v72)
    {
      v77 = 1;
    }

    else
    {
      v77 = 3;
    }

    do
    {
      for (m = 0; m != v75; ++m)
      {
        if (*v152 != v76)
        {
          objc_enumerationMutation(v73);
        }

        v79 = *(*(&v151 + 1) + 8 * m);
        v80 = *(v150 + 80);
        v81 = [*(v150 + 72) textInputTraits];
        v82 = [v81 textContentType];
        TIStatisticLogProactive(v80, v79, v77, v82, 0);
      }

      v75 = [v73 countByEnumeratingWithState:&v151 objects:v186 count:16];
    }

    while (v75);
  }

  (*(*(v150 + 136) + 16))();
  v5 = v134;
  v6 = 0;
LABEL_112:
}

void __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_167(uint64_t a1)
{
  v2 = [*(a1 + 32) inputContextPredictionManager];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 88);
  v8 = *(a1 + 89);
  v9 = *(a1 + 80);
  v10 = *(a1 + 84);
  v16 = 0;
  v11 = [v2 searchWithTriggers:v3 application:v4 recipient:v5 localeIdentifier:v6 isResponseDenyListed:v7 shouldDisableAutoCaps:v8 timeoutInMilliseconds:__PAIR64__(v10 resultLimit:v9) error:&v16];
  v12 = v16;

  v15 = *(a1 + 72);
  v13 = v12;
  v14 = v11;
  TIDispatchAsync();
}

void __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_3_169(uint64_t a1)
{
  v2 = [*(a1 + 32) inputContextPredictionManager];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 96);
  v8 = *(a1 + 97);
  v9 = *(a1 + 88);
  v10 = *(a1 + 92);
  v11 = *(*(a1 + 80) + 8);
  obj = *(v11 + 40);
  v12 = [v2 searchWithTriggers:v3 application:v4 recipient:v5 localeIdentifier:v6 isResponseDenyListed:v7 shouldDisableAutoCaps:v8 timeoutInMilliseconds:__PAIR64__(v10 resultLimit:v9) error:&obj];
  objc_storeStrong((v11 + 40), obj);
  v13 = *(*(a1 + 72) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

uint64_t __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_159(uint64_t a1, void *a2)
{
  v3 = [a2 attributedString];
  v4 = [*(a1 + 32) trigger];
  v5 = [v4 attributedString];
  v6 = [v3 isEqual:v5];

  return v6;
}

void __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v6 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v4 = [*(a1 + 48) textInputTraits];
  v5 = [v4 textContentType];
  TIStatisticLogProactive(v3, v6, 1, v5, 0);
}

void __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v5 = [*(a1 + 48) textInputTraits];
  v6 = [v5 textContentType];
  v13[0] = [*(a1 + 56) firstObject];
  v7 = MEMORY[0x277CBEA60];
  v8 = v13[0];
  v9 = v6;
  v12 = v4;
  v10 = v3;
  v11 = [v7 arrayWithObjects:v13 count:1];

  TIStatisticLogProactive(v10, v12, 4, v9, v11);
}

void __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v6 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v4 = [*(a1 + 48) textInputTraits];
  v5 = [v4 textContentType];
  TIStatisticLogProactive(v3, v6, 5, v5, *(a1 + 56));
}

- (id)generateAndRenderProactiveSuggestionsWithTriggers:(id)triggers withKeyboardState:(id)state withAdditionalPredictions:(id)predictions withSecureCandidateRenderer:(id)renderer withRenderTraits:(id)traits withInput:(id)input withRecipient:(id)recipient withApplication:(id)self0 withLocale:(id)self1 nextInputWillInsertAutospace:(BOOL)self2 withAvailableApps:(id)self3 logBlock:(id)self4
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__6482;
  v23 = __Block_byref_object_dispose__6483;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __277__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsWithTriggers_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withAvailableApps_logBlock___block_invoke;
  v18[3] = &unk_278731EE8;
  v18[4] = &v19;
  LOBYTE(v17) = 0;
  *(&v16 + 1) = 0;
  LOBYTE(v16) = autospace;
  [TIProactiveQuickTypeManager generateAndRenderProactiveSuggestionsForInput:"generateAndRenderProactiveSuggestionsForInput:withKeyboardState:withAdditionalPredictions:withSecureCandidateRenderer:withRenderTraits:withInput:withRecipient:withApplication:withLocale:nextInputWillInsertAutospace:withIsResponseDenyListed:withShouldDisableAutoCaps:withAvailableApps:logBlock:async:completion:" withKeyboardState:triggers withAdditionalPredictions:state withSecureCandidateRenderer:predictions withRenderTraits:renderer withInput:traits withRecipient:input withApplication:recipient withLocale:application nextInputWillInsertAutospace:locale withIsResponseDenyListed:v16 withShouldDisableAutoCaps:apps withAvailableApps:block logBlock:v17 async:v18 completion:?];
  v14 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v14;
}

- (void)addToTypologyTrace:(id)trace withTriggerSource:(id)source withTriggerType:(id)type withTriggerSubType:(id)subType withPredictionResults:(id)results withFirstTrigger:(id)trigger
{
  v42 = *MEMORY[0x277D85DE8];
  traceCopy = trace;
  sourceCopy = source;
  typeCopy = type;
  subTypeCopy = subType;
  resultsCopy = results;
  triggerCopy = trigger;
  if ([resultsCopy count])
  {
    if (sourceCopy && [sourceCopy length])
    {
      v19 = [@"Proactive Trigger:\n" stringByAppendingString:sourceCopy];
      traceCopy[2](traceCopy, v19);
    }

    if (typeCopy && [typeCopy length])
    {
      v20 = [@"Proactive Trigger Type:\n" stringByAppendingString:typeCopy];
      traceCopy[2](traceCopy, v20);
    }

    v35 = triggerCopy;
    v36 = sourceCopy;
    if (subTypeCopy && [subTypeCopy length])
    {
      v21 = [@"Proactive Trigger SubType:\n" stringByAppendingString:subTypeCopy];
      traceCopy[2](traceCopy, v21);
    }

    traceCopy[2](traceCopy, @"Proactive Suggestions:");
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v22 = resultsCopy;
    v23 = [v22 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v38;
      do
      {
        v26 = 0;
        do
        {
          if (*v38 != v25)
          {
            objc_enumerationMutation(v22);
          }

          value = [*(*(&v37 + 1) + 8 * v26) value];
          traceCopy[2](traceCopy, value);

          ++v26;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v24);
    }

    triggerCopy = v35;
    sourceCopy = v36;
  }

  else
  {
    attributes = [triggerCopy attributes];
    v29 = [attributes objectForKey:*MEMORY[0x277D22F30]];
    null = [MEMORY[0x277CBEB68] null];
    v31 = [v29 isEqual:null];

    if ((v31 & 1) == 0)
    {
      if (sourceCopy && [sourceCopy length])
      {
        v32 = [@"Proactive Triggers:\n" stringByAppendingString:sourceCopy];
        traceCopy[2](traceCopy, v32);
      }

      if (typeCopy && [typeCopy length])
      {
        v33 = [@"Proactive Trigger Type:\n" stringByAppendingString:typeCopy];
        traceCopy[2](traceCopy, v33);
      }

      if (subTypeCopy && [subTypeCopy length])
      {
        v34 = [@"Proactive Trigger SubType:\n" stringByAppendingString:subTypeCopy];
        traceCopy[2](traceCopy, v34);
      }

      traceCopy[2](traceCopy, @"Proactive Suggestions:\nNone");
    }
  }
}

- (id)renderItems:(id)items withAdditionalPredictions:(id)predictions withSecureCandidateRenderer:(id)renderer withRenderTraits:(id)traits withInput:(id)input
{
  v114 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  predictionsCopy = predictions;
  rendererCopy = renderer;
  traitsCopy = traits;
  inputCopy = input;
  array = [MEMORY[0x277CBEB18] array];
  v102 = rendererCopy;
  v103 = inputCopy;
  v106 = array;
  v100 = predictionsCopy;
  if (![(TIProactiveQuickTypeManager *)self usePQT2Flow])
  {
LABEL_12:
    v28 = [objc_opt_class() buildSecureCandidateFrom:itemsCopy withSecureCandidateRenderer:rendererCopy input:inputCopy];
    if ([itemsCopy count] && (objc_msgSend(itemsCopy, "objectAtIndexedSubscript:", 0), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "layoutHint"), v29, v30 == 1))
    {
      [traitsCopy setSharedCellCount:0];
      v31 = MEMORY[0x277CBEA60];
      v32 = [v28 objectAtIndexedSubscript:0];
      obja = [v31 arrayWithObject:v32];

      [traitsCopy setSharedCellCount:0];
      if (-[TIProactiveQuickTypeManager usePQT2Flow](self, "usePQT2Flow") && [itemsCopy count] >= 2)
      {
        if ([itemsCopy count] >= 2)
        {
          v33 = 0;
          v34 = 1;
          while (1)
          {
            v35 = [itemsCopy objectAtIndexedSubscript:v34];
            identifier = [v35 identifier];
            isEqualToString = objc_msgSend_isEqualToString_(identifier);

            if (isEqualToString)
            {
              v38 = objc_alloc(MEMORY[0x277D6F568]);
              value = [v35 value];
              [v35 label];
              v41 = v40 = array;
              v42 = [v38 initWithCandidate:value responseKitCategory:v41];
              [v40 addObject:v42];

              if (v33 == 1)
              {

                goto LABEL_30;
              }

              v33 = 1;
              array = v106;
            }

            if (++v34 >= [itemsCopy count])
            {
              goto LABEL_30;
            }
          }
        }
      }

      else
      {
        v44 = [predictionsCopy count];
        if (v44 >= 2)
        {
          v45 = 2;
        }

        else
        {
          v45 = v44;
        }

        if (v44)
        {
          v46 = 0;
          do
          {
            v47 = [predictionsCopy objectAtIndexedSubscript:v46];
            v48 = MEMORY[0x277D6F3D8];
            candidate = [v47 candidate];
            input = [v47 input];
            v51 = [v48 candidateWithCandidate:candidate forInput:input];
            [array addObject:v51];

            ++v46;
          }

          while (v45 != v46);
LABEL_30:
          rendererCopy = v102;
        }
      }

      v43 = obja;
    }

    else
    {
      v43 = v28;
    }

    if (!_os_feature_enabled_impl() || ![traitsCopy shouldOfferHideMyEmail])
    {
      v56 = 0;
      goto LABEL_46;
    }

    v52 = +[TIAppAutofillManager sharedInstance];
    secureCandidateRenderer = [v52 secureCandidateRenderer];

    if (secureCandidateRenderer)
    {
      v54 = +[TIAppAutofillManager sharedInstance];
      secureCandidateRenderer2 = [v54 secureCandidateRenderer];
      v56 = [secureCandidateRenderer2 localizedStringForKey:@"SAFARI_HIDE_MY_EMAIL_SUGGESTION"];

      if (v56 && [v56 length])
      {
LABEL_45:
        [traitsCopy setHideMyEmailLocalizedText:v56];
        v60 = [objc_alloc(MEMORY[0x277D6F570]) initWithSecureHeader:&stru_283FDFAF8 secureContent:v56 secureFormattedContent:v56 input:&stru_283FDFAF8 truncationSentinel:0];
        v61 = [v43 mutableCopy];
        [v61 removeLastObject];
        [v61 addObject:v60];

        v43 = v61;
LABEL_46:
        v62 = [rendererCopy slotIDsFromSecureCandidates:v43 withRenderTraits:traitsCopy];
        v63 = _os_feature_enabled_impl();
        obj = v43;
        v99 = v56;
        if (v56)
        {
          if (v63)
          {
            if ([traitsCopy shouldOfferHideMyEmail])
            {
              v64 = [v43 count];
              if (v64 == [v62 count])
              {
                lastObject = [v43 lastObject];
                secureContent = [lastObject secureContent];
                v67 = objc_msgSend_isEqualToString_(secureContent);

                if (v67)
                {
                  v68 = [v62 subarrayWithRange:{0, 1}];

                  v62 = v68;
                }
              }
            }
          }
        }

        if ([v62 count])
        {
          v69 = 0;
          do
          {
            v70 = [itemsCopy objectAtIndexedSubscript:v69];
            trigger = [v70 trigger];
            if ([trigger triggerSourceType] == 3)
            {
              v72 = 3;
            }

            else
            {
              v73 = [itemsCopy objectAtIndexedSubscript:v69];
              trigger2 = [v73 trigger];
              triggerSourceType = [trigger2 triggerSourceType];
              if (triggerSourceType == 2)
              {
                v72 = 2;
              }

              else
              {
                v72 = triggerSourceType == 1;
              }
            }

            v76 = [TIProactiveTrigger alloc];
            v77 = [itemsCopy objectAtIndexedSubscript:v69];
            trigger3 = [v77 trigger];
            attributedString = [trigger3 attributedString];
            v80 = [(TIProactiveTrigger *)v76 initWithSourceType:v72 attributes:attributedString];

            v81 = [v62 objectAtIndexedSubscript:v69];
            slotID = [v81 slotID];

            v83 = [MEMORY[0x277D6F3D8] secureCandidateForInput:&stru_283FDFAF8 slotID:slotID];
            if ([v62 count] <= v69)
            {
              [v83 setSecureCandidateWidth:0.0];
            }

            else
            {
              v84 = [v62 objectAtIndexedSubscript:v69];
              [v84 secureCandidateWidth];
              [v83 setSecureCandidateWidth:?];
            }

            v85 = [obj objectAtIndexedSubscript:v69];
            [v83 setSecureCandidateHash:{objc_msgSend(v85, "candidateHash")}];

            [v83 setIndexForMetrics:v69];
            [v106 addObject:v83];
            v86 = objc_alloc(MEMORY[0x277D6F568]);
            v87 = [obj objectAtIndexedSubscript:v69];
            secureFormattedContent = [v87 secureFormattedContent];
            v89 = [itemsCopy objectAtIndexedSubscript:v69];
            LOBYTE(v98) = 1;
            v90 = [v86 initWithCandidate:secureFormattedContent forInput:v103 rawInput:0 wordOriginFeedbackID:0 usageTrackingMask:0 sourceMask:0 secureContentCandidate:v98 proactiveTrigger:v80 proactivePredictedItem:{v89, v99}];

            [v90 setIndexForMetrics:v69];
            v91 = [itemsCopy objectAtIndexedSubscript:v69];
            [v90 setAgeForConnectionsMetrics:{objc_msgSend(v91, "predictionAge")}];

            rendererCopy = v102;
            secureCandidateCache = [v102 secureCandidateCache];
            v93 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:slotID];
            [secureCandidateCache setObject:v90 forKey:v93];

            v94 = +[TIKeyboardSecureTouchManager sharedInstance];
            [v94 registerSlotID:slotID];

            ++v69;
          }

          while (v69 < [v62 count]);
        }

        predictionsCopy = v100;
        goto LABEL_65;
      }
    }

    else
    {
      v57 = TIProactiveQuickTypeOSLogFacility();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        v97 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s self.secureCandidateRenderer is nil", "-[TIProactiveQuickTypeManager renderItems:withAdditionalPredictions:withSecureCandidateRenderer:withRenderTraits:withInput:]"];
        *buf = 138412290;
        v112 = v97;
        _os_log_debug_impl(&dword_22CA55000, v57, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v56 = 0;
    }

    v58 = TIProactiveQuickTypeOSLogFacility();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      v96 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Localized Hide My Email text is nil", "-[TIProactiveQuickTypeManager renderItems:withAdditionalPredictions:withSecureCandidateRenderer:withRenderTraits:withInput:]"];
      *buf = 138412290;
      v112 = v96;
      _os_log_debug_impl(&dword_22CA55000, v58, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v59 = *MEMORY[0x277D6F980];
    v56 = v59;
    goto LABEL_45;
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = itemsCopy;
  v17 = [obj countByEnumeratingWithState:&v107 objects:v113 count:16];
  if (!v17)
  {
    goto LABEL_66;
  }

  v18 = v17;
  v19 = *v108;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v108 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v107 + 1) + 8 * i);
      identifier2 = [v21 identifier];
      v23 = objc_msgSend_isEqualToString_(identifier2);

      if (!v23)
      {
        array = v106;
        [v106 removeAllObjects];

        predictionsCopy = v100;
        goto LABEL_12;
      }

      v24 = objc_alloc(MEMORY[0x277D6F568]);
      value2 = [v21 value];
      label = [v21 label];
      v27 = [v24 initWithCandidate:value2 responseKitCategory:label];
      [v106 addObject:v27];
    }

    v18 = [obj countByEnumeratingWithState:&v107 objects:v113 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

  predictionsCopy = v100;
LABEL_65:
  array = v106;
  inputCopy = v103;
LABEL_66:

  return array;
}

- (id)_makeQueue
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v3 = dispatch_queue_create("com.apple.TextInput.ProactiveQuickTypeManager", v2);

  return v3;
}

- (void)dealloc
{
  v3 = +[TIKeyboardActivityController sharedController];
  [v3 removeActivityObserver:self];

  v4.receiver = self;
  v4.super_class = TIProactiveQuickTypeManager;
  [(TIProactiveQuickTypeManager *)&v4 dealloc];
}

- (TIProactiveQuickTypeManager)init
{
  v12.receiver = self;
  v12.super_class = TIProactiveQuickTypeManager;
  v2 = [(TIProactiveQuickTypeManager *)&v12 init];
  v3 = v2;
  if (v2)
  {
    _makeQueue = [(TIProactiveQuickTypeManager *)v2 _makeQueue];
    queue = v3->_queue;
    v3->_queue = _makeQueue;

    predictionManager = [MEMORY[0x277D1C0B0] predictionManager];
    inputContextPredictionManager = v3->_inputContextPredictionManager;
    v3->_inputContextPredictionManager = predictionManager;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__TIProactiveQuickTypeManager_init__block_invoke;
    block[3] = &unk_278733308;
    v11 = v3;
    v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
    TIDispatchAsync();
  }

  return v3;
}

void __35__TIProactiveQuickTypeManager_init__block_invoke(uint64_t a1)
{
  v2 = +[TIKeyboardActivityController sharedController];
  [v2 addActivityObserver:*(a1 + 32)];
}

+ (id)buildSecureCandidateFrom:(id)from withSecureCandidateRenderer:(id)renderer input:(id)input
{
  v102 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  rendererCopy = renderer;
  inputCopy = input;
  v85 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(fromCopy, "count")}];
  if ([fromCopy count] >= 2)
  {
    v9 = 1;
    do
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [fromCopy objectAtIndexedSubscript:v9 - 1];
      identifier = [v11 identifier];
      v13 = [fromCopy objectAtIndexedSubscript:v9];
      identifier2 = [v13 identifier];
      LODWORD(v10) = [v10 _string:identifier matchesString:identifier2];

      v83 = v10;
      if ((v10 & 1) == 0)
      {
        break;
      }

      ++v9;
    }

    while (v9 < [fromCopy count]);
  }

  else
  {
    v83 = 1;
  }

  _truncationSentinel = [rendererCopy _truncationSentinel];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = fromCopy;
  v84 = [obj countByEnumeratingWithState:&v95 objects:v101 count:16];
  if (v84)
  {
    v81 = *v96;
    v80 = rendererCopy;
    do
    {
      v15 = 0;
      do
      {
        if (*v96 != v81)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v95 + 1) + 8 * v15);
        operationData = [v16 operationData];
        value = &stru_283FDFAF8;
        if (!operationData)
        {
          value = [v16 value];
        }

        label = [v16 label];
        if (label)
        {
          v20 = label;
          shouldAggregate = [v16 shouldAggregate];

          if (shouldAggregate)
          {
            v22 = [rendererCopy localizedStringForKey:@"LOCATION_AGGREGATED_NAME_AND_ADDRESS"];
            v23 = MEMORY[0x277CCACA8];
            v94 = 0;
            label2 = [v16 label];
            value2 = [v16 value];
            v26 = [v23 stringWithValidatedFormat:v22 validFormatSpecifiers:@"%@%@" error:&v94, label2, value2];
            v27 = v94;
            v28 = &stru_283FDFAF8;
            if (v26)
            {
              v28 = v26;
            }

            v29 = v28;

            if (v27)
            {
              if (TICanLogMessageAtLevel_onceToken != -1)
              {
                dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
              }

              v30 = TIOSLogFacility();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                v75 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ProactiveQuickType:TI: ERROR: invalid localized format for key LOCATION_AGGREGATED_NAME_AND_ADDRESS: %@", "+[TIProactiveQuickTypeManager buildSecureCandidateFrom:withSecureCandidateRenderer:input:]", v27];
                *buf = 138412290;
                v100 = v75;
                _os_log_debug_impl(&dword_22CA55000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }

            value = v29;
          }
        }

        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        if (TICanLogMessageAtLevel_logLevel >= 2)
        {
          v31 = TIOSLogFacility();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v72 = MEMORY[0x277CCACA8];
            value3 = [v16 value];
            v74 = [v72 stringWithFormat:@"%s ProactiveQuickType:TI: Rendering results with value= %@", "+[TIProactiveQuickTypeManager buildSecureCandidateFrom:withSecureCandidateRenderer:input:]", value3];
            *buf = 138412290;
            v100 = v74;
            _os_log_debug_impl(&dword_22CA55000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }

        v90 = [rendererCopy localizedStringForKey:@"PARENTHESIZED_LABEL"];
        v89 = [rendererCopy localizedStringForKey:@"APP_CONNECTION_ATTRIBUTION"];
        if ([obj count] > 1)
        {
          v32 = v83;
        }

        else
        {
          v32 = 0;
        }

        flags = [v16 flags];
        label3 = [v16 label];
        if ([label3 length])
        {
          label4 = [v16 label];
          isEqualToString = objc_msgSend_isEqualToString_(label4);
        }

        else
        {
          isEqualToString = 1;
        }

        originatingBundleID = [v16 originatingBundleID];

        if (originatingBundleID)
        {
          originatingBundleID2 = [v16 originatingBundleID];
          v39 = [rendererCopy localizedApplicationNameWithBundleIdentifier:originatingBundleID2];

          if (v39)
          {
            v93 = 0;
            v40 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v89 validFormatSpecifiers:@"%@" error:&v93, v39];
            v41 = v93;
            v42 = &stru_283FDFAF8;
            if (v40)
            {
              v42 = v40;
            }

            v88 = v42;

            if (v41)
            {
              if (TICanLogMessageAtLevel_onceToken != -1)
              {
                dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
              }

              v43 = TIOSLogFacility();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                v79 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ProactiveQuickType:TI: ERROR: invalid localized format for key APP_CONNECTION_ATTRIBUTION: %@", "+[TIProactiveQuickTypeManager buildSecureCandidateFrom:withSecureCandidateRenderer:input:]", v41];
                *buf = 138412290;
                v100 = v79;
                _os_log_debug_impl(&dword_22CA55000, v43, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }
          }

          else
          {
            v88 = 0;
          }
        }

        else
        {
          v88 = 0;
          v39 = 0;
        }

        if (((flags & 1) == 0) & ~v32 | isEqualToString & 1)
        {
          v44 = 0;
          v45 = 0;
        }

        else
        {
          label5 = [v16 label];
          v45 = label5;
          v44 = label5 != 0;
          if ((flags & 1) != 0 && label5)
          {
            v53 = label5;
            v45 = v53;
            goto LABEL_73;
          }
        }

        name = [v16 name];

        if (name && v44)
        {
          v47 = MEMORY[0x277CCACA8];
          v92 = 0;
          name2 = [v16 name];
          v49 = [name2 stringByAppendingString:_truncationSentinel];
          v50 = [v47 stringWithValidatedFormat:v90 validFormatSpecifiers:@"%@%@" error:&v92, v49, v45];
          v51 = v92;
          v52 = &stru_283FDFAF8;
          if (v50)
          {
            v52 = v50;
          }

          v53 = v52;

          if (v51)
          {
            if (TICanLogMessageAtLevel_onceToken != -1)
            {
              dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
            }

            v54 = TIOSLogFacility();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_93;
            }

            goto LABEL_71;
          }

          goto LABEL_72;
        }

        label6 = [v16 label];

        if (label6 && v39)
        {
          v57 = MEMORY[0x277CCACA8];
          v91 = 0;
          label7 = [v16 label];
          v59 = [label7 stringByAppendingString:_truncationSentinel];
          v60 = [v57 stringWithValidatedFormat:v90 validFormatSpecifiers:@"%@%@" error:&v91, v59, v88];
          v51 = v91;
          v61 = &stru_283FDFAF8;
          if (v60)
          {
            v61 = v60;
          }

          v53 = v61;

          if (v51)
          {
            if (TICanLogMessageAtLevel_onceToken != -1)
            {
              dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
            }

            v54 = TIOSLogFacility();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
LABEL_93:
              v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ProactiveQuickType:TI: ERROR: invalid localized format for key PARENTHESIZED_LABEL: %@", "+[TIProactiveQuickTypeManager buildSecureCandidateFrom:withSecureCandidateRenderer:input:]", v51];
              *buf = 138412290;
              v100 = v76;
              _os_log_debug_impl(&dword_22CA55000, v54, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

LABEL_71:
          }

LABEL_72:

          rendererCopy = v80;
LABEL_73:
          value4 = [v16 value];
          v63 = objc_msgSend_isEqualToString_(v53);

          if (!v63)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        }

        label8 = [v16 label];
        if (label8 || !v39)
        {
        }

        else if (![v16 itemType])
        {
          name4 = v88;
          goto LABEL_90;
        }

        name3 = [v16 name];

        if (name3)
        {
          name4 = [v16 name];
        }

        else
        {
          label9 = [v16 label];

          if (!label9)
          {
            v53 = 0;
            goto LABEL_74;
          }

          name4 = [v16 label];
        }

LABEL_90:
        v53 = name4;
        if (name4)
        {
          goto LABEL_73;
        }

LABEL_74:

        v53 = &stru_283FDFAF8;
LABEL_75:
        value5 = [v16 value];
        if (([v16 flags] & 4) != 0)
        {
          label10 = [v16 label];

          name5 = [v16 name];

          value5 = name5;
          v53 = label10;
        }

        v67 = [objc_alloc(MEMORY[0x277D6F570]) initWithSecureHeader:v53 secureContent:value5 secureFormattedContent:value input:inputCopy truncationSentinel:_truncationSentinel];
        if (([v85 containsObject:v67] & 1) == 0)
        {
          [v85 addObject:v67];
        }

        ++v15;
      }

      while (v84 != v15);
      v77 = [obj countByEnumeratingWithState:&v95 objects:v101 count:16];
      v84 = v77;
    }

    while (v77);
  }

  return v85;
}

+ (id)proactiveTriggerForTextContentType:(id)type withContextBeforeInput:(id)input autofillMode:(unint64_t)mode
{
  typeCopy = type;
  inputCopy = input;
  if ([typeCopy length] | mode)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v9 setValue:@"triggerTypeConnections" forKey:*MEMORY[0x277D23050]];
    if ([typeCopy length])
    {
      [v9 setValue:typeCopy forKey:@"textContentTypeTag"];
    }

    v10 = [inputCopy stringByReplacingOccurrencesOfString:@"​" withString:&stru_283FDFAF8];

    if (_os_feature_enabled_impl())
    {
      if (v10)
      {
        v11 = [v10 length];
        v12 = mode - 4;
        if (v12 <= 2)
        {
          if (v11)
          {
            if (![typeCopy length])
            {
              [v9 setValue:**(&unk_278730538 + v12) forKey:@"textContentTypeTag"];
            }

            [v9 setValue:v10 forKey:@"contextBeforeInput"];
          }
        }
      }
    }

    v13 = [[TIProactiveTrigger alloc] initWithSourceType:2 attributes:v9];
  }

  else
  {
    v13 = 0;
    v10 = inputCopy;
  }

  return v13;
}

+ (id)proactiveTriggerForTextContentType:(id)type
{
  v11 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if ([typeCopy length])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v4 = TIOSLogFacility();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ProactiveQuickType:TI: Creating a connections trigger for tagged text field: %@", "+[TIProactiveQuickTypeManager proactiveTriggerForTextContentType:]", typeCopy];
        *buf = 138412290;
        v10 = typeCopy;
        _os_log_debug_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v5 setValue:@"triggerTypeConnections" forKey:*MEMORY[0x277D23050]];
    [v5 setValue:typeCopy forKey:@"textContentTypeTag"];
    v6 = [[TIProactiveTrigger alloc] initWithSourceType:2 attributes:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __48__TIProactiveQuickTypeManager_singletonInstance__block_invoke()
{
  v0 = objc_alloc_init(TIProactiveQuickTypeManager);
  v1 = singletonInstance_singleton;
  singletonInstance_singleton = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (TIProactiveQuickTypeManager)initWithICManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = TIProactiveQuickTypeManager;
  v6 = [(TIProactiveQuickTypeManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    _makeQueue = [(TIProactiveQuickTypeManager *)v6 _makeQueue];
    queue = v7->_queue;
    v7->_queue = _makeQueue;

    objc_storeStrong(&v7->_inputContextPredictionManager, manager);
    v10 = +[TIKeyboardActivityController sharedController];
    [v10 addActivityObserver:v7];
  }

  return v7;
}

+ (void)setSharedTIProactiveQuickTypeManager:(id)manager
{
  managerCopy = manager;
  if (__testingInstance_6640 != managerCopy)
  {
    v5 = managerCopy;
    objc_storeStrong(&__testingInstance_6640, manager);
    managerCopy = v5;
  }
}

@end