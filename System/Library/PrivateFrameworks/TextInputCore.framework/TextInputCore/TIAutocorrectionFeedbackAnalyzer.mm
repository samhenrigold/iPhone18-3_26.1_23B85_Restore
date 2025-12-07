@interface TIAutocorrectionFeedbackAnalyzer
+ (id)analyzerForUserModel:(id)model revisionRateAnalysisSummary:(id)summary;
- (BOOL)_inputMode:(id)mode matchesSupportedKeyboards:(id)keyboards;
- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence;
- (TIAutocorrectionFeedbackAnalyzer)initWithUserModel:(id)model revisionRateAnalysisSummary:(id)summary;
- (id)installedInputModesStringFromInputModes:(id)modes;
- (int64_t)studyStatusFromState:(int64_t)state;
- (void)accumulateWordCounts;
- (void)registerEventSpec;
- (void)resetWordCounts;
- (void)sendCAEventForStudyStatus:(int64_t)status;
- (void)sendCompletionEventUsingStudyDataFromFeedbackController:(id)controller;
- (void)sendInitiationEventUsingStudyDataFromFeedbackController:(id)controller;
- (void)sendTerminationEventUsingStudyDataFromFeedbackController:(id)controller;
@end

@implementation TIAutocorrectionFeedbackAnalyzer

- (int64_t)studyStatusFromState:(int64_t)state
{
  if ((state - 2) > 4)
  {
    return 2;
  }

  else
  {
    return qword_22CC8A9A8[state - 2];
  }
}

- (id)installedInputModesStringFromInputModes:(id)modes
{
  v3 = [modes sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
  v4 = [v3 componentsJoinedByString:@"|"];

  return v4;
}

- (void)registerEventSpec
{
  v18[12] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D6F300];
  v17 = [MEMORY[0x277D6F308] enumFieldSpecWithName:@"studyStatus"];
  v18[0] = v17;
  v16 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"correctedWordCount" minValue:&unk_28400BE50 maxValue:0 significantDigits:0];
  v18[1] = v16;
  v15 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"tappedWordCount" minValue:&unk_28400BE50 maxValue:0 significantDigits:0];
  v18[2] = v15;
  v14 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"initialPreferenceValue"];
  v18[3] = v14;
  v3 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"initialInputModes"];
  v18[4] = v3;
  v4 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"finalPreferenceValue"];
  v18[5] = v4;
  v5 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"finalInputModes"];
  v18[6] = v5;
  v6 = [MEMORY[0x277D6F308] enumFieldSpecWithName:@"surveyOutcome"];
  v18[7] = v6;
  v7 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"revisedWordCount"];
  v18[8] = v7;
  v8 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"revisedWordAutocorrectionCount"];
  v18[9] = v8;
  v9 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"daysCount"];
  v18[10] = v9;
  v10 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"assetAvailabilityStatus"];
  v18[11] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:12];
  v12 = [v2 eventSpecWithName:@"deferredAutocorrectionFeedback" inputModeRequired:0 fieldSpecs:v11];

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318] registerEventSpec:v12];
}

- (void)sendTerminationEventUsingStudyDataFromFeedbackController:(id)controller
{
  v4 = -[TIAutocorrectionFeedbackAnalyzer studyStatusFromState:](self, "studyStatusFromState:", [MEMORY[0x277D6F360] getFeedbackState]);

  [(TIAutocorrectionFeedbackAnalyzer *)self sendCAEventForStudyStatus:v4];
}

- (void)sendCompletionEventUsingStudyDataFromFeedbackController:(id)controller
{
  v4 = [(TIAutocorrectionFeedbackAnalyzer *)self studyStatusFromState:4];

  [(TIAutocorrectionFeedbackAnalyzer *)self sendCAEventForStudyStatus:v4];
}

- (void)sendCAEventForStudyStatus:(int64_t)status
{
  v50[12] = *MEMORY[0x277D85DE8];
  userModel = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
  v5 = [userModel valueForDurableKey:kFeedbackCounterAutocorrectionEnablementTappedWords];

  userModel2 = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
  v7 = [userModel2 valueForDurableKey:kFeedbackCounterAutocorrectionEnablementCorrectedWords];

  userModel3 = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
  v9 = [userModel3 valueForDurableKey:kFeedbackCounterAutocorrectionEnablementRevisedWords];

  userModel4 = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
  v11 = [userModel4 valueForDurableKey:kFeedbackCounterAutocorrectionEnablementRevisedCorrectedWords];

  sessionParams = [(TITypingSession *)self->_session sessionParams];
  v13 = [sessionParams assetAvailabilityStatus] != 0;

  getInitialPreferenceValue = [MEMORY[0x277D6F360] getInitialPreferenceValue];
  getInitialInputModes = [MEMORY[0x277D6F360] getInitialInputModes];
  v15 = [(TIAutocorrectionFeedbackAnalyzer *)self installedInputModesStringFromInputModes:getInitialInputModes];

  getFinalPreferenceValue = [MEMORY[0x277D6F360] getFinalPreferenceValue];
  getFinalInputModes = [MEMORY[0x277D6F360] getFinalInputModes];
  v17 = [(TIAutocorrectionFeedbackAnalyzer *)self installedInputModesStringFromInputModes:getFinalInputModes];

  getSurveyOutcome = [MEMORY[0x277D6F360] getSurveyOutcome];
  getInitialTimestamp = [MEMORY[0x277D6F360] getInitialTimestamp];
  getFinalTimestamp = [MEMORY[0x277D6F360] getFinalTimestamp];
  v42 = getInitialTimestamp;
  [getFinalTimestamp timeIntervalSinceDate:getInitialTimestamp];
  v37 = v19 / 86400;
  v49[0] = @"studyStatus";
  v40 = [MEMORY[0x277CCABB0] numberWithInteger:status];
  v50[0] = v40;
  v49[1] = @"tappedWordCount";
  v20 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v50[1] = v20;
  v49[2] = @"correctedWordCount";
  v21 = [MEMORY[0x277CCABB0] numberWithInt:v7];
  v50[2] = v21;
  v49[3] = @"revisedWordCount";
  v22 = [MEMORY[0x277CCABB0] numberWithInt:v9];
  v50[3] = v22;
  v49[4] = @"revisedWordAutocorrectionCount";
  v23 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  v50[4] = v23;
  v49[5] = kFeatureStringAssetAvailabilityStatus;
  v24 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  v50[5] = v24;
  v49[6] = @"initialPreferenceValue";
  v25 = [MEMORY[0x277CCABB0] numberWithBool:getInitialPreferenceValue];
  v26 = v25;
  v46 = v15;
  if (v15)
  {
    v27 = v15;
  }

  else
  {
    v27 = &stru_283FDFAF8;
  }

  v50[6] = v25;
  v50[7] = v27;
  v49[7] = @"initialInputModes";
  v49[8] = @"finalPreferenceValue";
  v28 = [MEMORY[0x277CCABB0] numberWithBool:getFinalPreferenceValue];
  v29 = v28;
  v44 = v17;
  if (v17)
  {
    v30 = v17;
  }

  else
  {
    v30 = &stru_283FDFAF8;
  }

  v50[8] = v28;
  v50[9] = v30;
  v49[9] = @"finalInputModes";
  v49[10] = @"surveyOutcome";
  v31 = [MEMORY[0x277CCABB0] numberWithInteger:getSurveyOutcome];
  v50[10] = v31;
  v49[11] = @"daysCount";
  v32 = [MEMORY[0x277CCABB0] numberWithInteger:v37];
  v50[11] = v32;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:12];

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318] dispatchEventWithName:@"deferredAutocorrectionFeedback" payload:v33 testingParameters:0 allowSparsePayload:1];

  if (IXACanLogMessageAtLevel())
  {
    v35 = IXAFeedbackLogFacility();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: sentCAEvent payload: %@", "-[TIAutocorrectionFeedbackAnalyzer sendCAEventForStudyStatus:]", @"KeyboardAutocorrection", v33];
      *buf = 138412290;
      v48 = v36;
      _os_log_debug_impl(&dword_22CA55000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }
}

- (void)sendInitiationEventUsingStudyDataFromFeedbackController:(id)controller
{
  v18[4] = *MEMORY[0x277D85DE8];
  v17[0] = @"studyStatus";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TIAutocorrectionFeedbackAnalyzer studyStatusFromState:](self, "studyStatusFromState:", 2)}];
  v18[0] = v4;
  v17[1] = @"initialInputModes";
  getInitialInputModes = [MEMORY[0x277D6F360] getInitialInputModes];
  v6 = [(TIAutocorrectionFeedbackAnalyzer *)self installedInputModesStringFromInputModes:getInitialInputModes];
  v18[1] = v6;
  v17[2] = @"initialPreferenceValue";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D6F360], "getInitialPreferenceValue")}];
  v18[2] = v7;
  v17[3] = kFeatureStringAssetAvailabilityStatus;
  v8 = MEMORY[0x277CCABB0];
  sessionParams = [(TITypingSession *)self->_session sessionParams];
  v10 = [v8 numberWithBool:{objc_msgSend(sessionParams, "assetAvailabilityStatus") != 0}];
  v18[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318] dispatchEventWithName:@"deferredAutocorrectionFeedback" payload:v11 testingParameters:0 allowSparsePayload:1];

  if (IXACanLogMessageAtLevel())
  {
    v13 = IXAFeedbackLogFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: sendInitiationEvent payload: %@", "-[TIAutocorrectionFeedbackAnalyzer sendInitiationEventUsingStudyDataFromFeedbackController:]", @"KeyboardAutocorrection", v11];
      *buf = 138412290;
      v16 = v14;
      _os_log_debug_impl(&dword_22CA55000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }
}

- (void)resetWordCounts
{
  userModel = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
  [userModel resetDurableCounterForKey:kFeedbackCounterAutocorrectionEnablementTappedWords];

  userModel2 = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
  [userModel2 resetDurableCounterForKey:kFeedbackCounterAutocorrectionEnablementCorrectedWords];

  userModel3 = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
  [userModel3 resetDurableCounterForKey:kFeedbackCounterAutocorrectionEnablementRevisedWords];

  userModel4 = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
  [userModel4 resetDurableCounterForKey:kFeedbackCounterAutocorrectionEnablementRevisedCorrectedWords];
}

- (void)accumulateWordCounts
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(TIRevisionRateAnalysisSummary *)self->_revisionRateAnalysisSummary hasEmojiInput]|| [(TIRevisionRateAnalysisSummary *)self->_revisionRateAnalysisSummary hasCursorMovement])
  {
    if (!IXACanLogMessageAtLevel())
    {
      return;
    }

    v3 = IXAFeedbackLogFacility();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_5;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: accumulateWordCounts will not count - session has cursor movement or emoji input", "-[TIAutocorrectionFeedbackAnalyzer accumulateWordCounts]", @"KeyboardAutocorrection"];
    *buf = 138412290;
    v17 = v15;
    goto LABEL_15;
  }

  inputMode = [(TIRevisionRateAnalysisSummary *)self->_revisionRateAnalysisSummary inputMode];
  supportedKeyboards = [(TIAutocorrectionFeedbackAnalyzer *)self supportedKeyboards];
  v6 = [(TIAutocorrectionFeedbackAnalyzer *)self _inputMode:inputMode matchesSupportedKeyboards:supportedKeyboards];

  if (v6)
  {
    userModel = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
    tappedCount = [(TIRevisionRateAnalysisSummary *)self->_revisionRateAnalysisSummary tappedCount];
    [userModel addToDurableCounter:tappedCount forKey:kFeedbackCounterAutocorrectionEnablementTappedWords];

    userModel2 = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
    autocorrectedCount = [(TIRevisionRateAnalysisSummary *)self->_revisionRateAnalysisSummary autocorrectedCount];
    [userModel2 addToDurableCounter:autocorrectedCount forKey:kFeedbackCounterAutocorrectionEnablementCorrectedWords];

    userModel3 = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
    revisedCount = [(TIRevisionRateAnalysisSummary *)self->_revisionRateAnalysisSummary revisedCount];
    [userModel3 addToDurableCounter:revisedCount forKey:kFeedbackCounterAutocorrectionEnablementRevisedWords];

    userModel4 = [(TIAutocorrectionFeedbackAnalyzer *)self userModel];
    revisedAutocorrectionCount = [(TIRevisionRateAnalysisSummary *)self->_revisionRateAnalysisSummary revisedAutocorrectionCount];
    [userModel4 addToDurableCounter:revisedAutocorrectionCount forKey:kFeedbackCounterAutocorrectionEnablementRevisedCorrectedWords];

    if (IXACanLogMessageAtLevel())
    {
      v3 = IXAFeedbackLogFacility();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: accumulateWordCounts tapped: %ld, corrected: %ld, revised: %ld, revised-autocorrection: %ld, ", "-[TIAutocorrectionFeedbackAnalyzer accumulateWordCounts]", @"KeyboardAutocorrection", -[TIRevisionRateAnalysisSummary tappedCount](self->_revisionRateAnalysisSummary, "tappedCount"), -[TIRevisionRateAnalysisSummary autocorrectedCount](self->_revisionRateAnalysisSummary, "autocorrectedCount"), -[TIRevisionRateAnalysisSummary revisedCount](self->_revisionRateAnalysisSummary, "revisedCount"), -[TIRevisionRateAnalysisSummary revisedAutocorrectionCount](self->_revisionRateAnalysisSummary, "revisedAutocorrectionCount")];
        *buf = 138412290;
        v17 = v15;
LABEL_15:
        _os_log_debug_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

        goto LABEL_5;
      }

      goto LABEL_5;
    }
  }

  else if (IXACanLogMessageAtLevel())
  {
    v3 = IXAFeedbackLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Feedback %@: accumulateWordCounts will not count - unsupported keyboard", "-[TIAutocorrectionFeedbackAnalyzer accumulateWordCounts]", @"KeyboardAutocorrection"];
      *buf = 138412290;
      v17 = v15;
      goto LABEL_15;
    }

LABEL_5:
  }
}

- (BOOL)_inputMode:(id)mode matchesSupportedKeyboards:(id)keyboards
{
  v41 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  keyboardsCopy = keyboards;
  v7 = keyboardsCopy;
  if (modeCopy)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = keyboardsCopy;
    v9 = [v8 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v35;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if ([modeCopy hasPrefix:*(*(&v34 + 1) + 8 * i)])
          {
            v22 = 1;
            v13 = v8;
            goto LABEL_33;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v13 = TIInputModeGetMultilingualSet();
    if ([v13 count])
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v13 = v13;
      v25 = [v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v25)
      {
        v14 = *v31;
        v24 = *v31;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v31 != v14)
            {
              objc_enumerationMutation(v13);
            }

            v16 = *(*(&v30 + 1) + 8 * j);
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v17 = v8;
            v18 = [v17 countByEnumeratingWithState:&v26 objects:v38 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v27;
              while (2)
              {
                for (k = 0; k != v19; ++k)
                {
                  if (*v27 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  if ([v16 hasPrefix:{*(*(&v26 + 1) + 8 * k), v24}])
                  {

                    v22 = 1;
                    goto LABEL_32;
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v26 objects:v38 count:16];
                if (v19)
                {
                  continue;
                }

                break;
              }
            }

            v14 = v24;
          }

          v22 = 0;
          v25 = [v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
        }

        while (v25);
      }

      else
      {
        v22 = 0;
      }

LABEL_32:
    }

    else
    {
      v22 = 0;
    }

LABEL_33:
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence
{
  sessionCopy = session;
  alignedSessionCopy = alignedSession;
  session = self->_session;
  self->_session = sessionCopy;
  v10 = sessionCopy;

  alignedSession = self->_alignedSession;
  self->_alignedSession = alignedSessionCopy;
  v12 = alignedSessionCopy;

  v13 = objc_alloc_init(TIFeedbackController);
  [(TIFeedbackController *)v13 handleFeedbackActionsWithDelegate:self];

  return 1;
}

- (TIAutocorrectionFeedbackAnalyzer)initWithUserModel:(id)model revisionRateAnalysisSummary:(id)summary
{
  modelCopy = model;
  summaryCopy = summary;
  v16.receiver = self;
  v16.super_class = TIAutocorrectionFeedbackAnalyzer;
  v9 = [(TIAutocorrectionFeedbackAnalyzer *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userModel, model);
    getSupportedFeedbackLanguages = [MEMORY[0x277D6F360] getSupportedFeedbackLanguages];
    supportedLanguages = v10->_supportedLanguages;
    v10->_supportedLanguages = getSupportedFeedbackLanguages;

    getSupportedFeedbackKeyboards = [MEMORY[0x277D6F360] getSupportedFeedbackKeyboards];
    supportedKeyboards = v10->_supportedKeyboards;
    v10->_supportedKeyboards = getSupportedFeedbackKeyboards;

    objc_storeStrong(&v10->_revisionRateAnalysisSummary, summary);
    [(TIAutocorrectionFeedbackAnalyzer *)v10 registerEventSpec];
  }

  return v10;
}

+ (id)analyzerForUserModel:(id)model revisionRateAnalysisSummary:(id)summary
{
  summaryCopy = summary;
  modelCopy = model;
  v7 = [objc_alloc(objc_opt_class()) initWithUserModel:modelCopy revisionRateAnalysisSummary:summaryCopy];

  return v7;
}

@end