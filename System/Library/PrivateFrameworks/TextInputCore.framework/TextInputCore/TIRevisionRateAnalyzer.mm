@interface TIRevisionRateAnalyzer
- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence;
- (TIRevisionRateAnalyzer)init;
- (id)_createEventSpec;
- (id)getInputModeForSession:(id)session;
- (id)getSessionFields;
- (void)_dispatchEventPayloads:(id)payloads analyticsService:(id)service typingSession:(id)session;
- (void)_registerAnalyticsEventSpecWithAnalyticsService;
- (void)summarizeWithEventDictionary:(id)dictionary withSession:(id)session;
@end

@implementation TIRevisionRateAnalyzer

- (id)getInputModeForSession:(id)session
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  userActionHistory = [session userActionHistory];
  v4 = [userActionHistory countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    inputMode = &stru_283FDFAF8;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(userActionHistory);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (![v9 actionType])
        {
          keyboardState = [v9 keyboardState];
          inputMode = [keyboardState inputMode];

          goto LABEL_12;
        }
      }

      v5 = [userActionHistory countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    inputMode = &stru_283FDFAF8;
  }

LABEL_12:

  return inputMode;
}

- (void)summarizeWithEventDictionary:(id)dictionary withSession:(id)session
{
  v62[3] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  sessionCopy = session;
  hasEmojiInput = [(TIRevisionRateAnalyzer *)self hasEmojiInput];
  revisionRateAnalysisSummary = [(TIRevisionRateAnalyzer *)self revisionRateAnalysisSummary];
  [revisionRateAnalysisSummary setHasEmojiInput:hasEmojiInput];

  sessionAlignmentConfidence = [(TIRevisionRateAnalyzer *)self sessionAlignmentConfidence];
  revisionRateAnalysisSummary2 = [(TIRevisionRateAnalyzer *)self revisionRateAnalysisSummary];
  [revisionRateAnalysisSummary2 setSessionAlignmentConfidence:sessionAlignmentConfidence];

  hasCursorMovement = [(TIRevisionRateAnalyzer *)self hasCursorMovement];
  revisionRateAnalysisSummary3 = [(TIRevisionRateAnalyzer *)self revisionRateAnalysisSummary];
  [revisionRateAnalysisSummary3 setHasCursorMovement:hasCursorMovement];

  v53 = sessionCopy;
  v14 = [(TIRevisionRateAnalyzer *)self getInputModeForSession:sessionCopy];
  revisionRateAnalysisSummary4 = [(TIRevisionRateAnalyzer *)self revisionRateAnalysisSummary];
  [revisionRateAnalysisSummary4 setInputMode:v14];

  revisionRateAnalysisSummary5 = [(TIRevisionRateAnalyzer *)self revisionRateAnalysisSummary];
  [revisionRateAnalysisSummary5 setTappedCount:0];

  revisionRateAnalysisSummary6 = [(TIRevisionRateAnalyzer *)self revisionRateAnalysisSummary];
  [revisionRateAnalysisSummary6 setAutocorrectedCount:0];

  revisionRateAnalysisSummary7 = [(TIRevisionRateAnalyzer *)self revisionRateAnalysisSummary];
  [revisionRateAnalysisSummary7 setRevisedCount:0];

  revisionRateAnalysisSummary8 = [(TIRevisionRateAnalyzer *)self revisionRateAnalysisSummary];
  [revisionRateAnalysisSummary8 setRevisedAutocorrectionCount:0];

  v20 = MEMORY[0x277CBEB98];
  v62[0] = @"Tapped";
  v62[1] = @"Candidate Bar";
  v62[2] = @"TappedWithBackspace";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:3];
  v22 = [v20 setWithArray:v21];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v23 = dictionaryCopy;
  selfCopy = self;
  obj = v23;
  v25 = [v23 countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v58;
    v28 = @"enteredModality";
    v56 = selfCopy;
    do
    {
      v29 = 0;
      v54 = v26;
      do
      {
        if (*v58 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v57 + 1) + 8 * v29);
        v31 = [v30 objectForKey:v28];
        if ([v22 containsObject:v31])
        {
          v32 = v28;
          v33 = v27;
          v34 = v22;
          revisionRateAnalysisSummary9 = [(TIRevisionRateAnalyzer *)selfCopy revisionRateAnalysisSummary];
          tappedCount = [revisionRateAnalysisSummary9 tappedCount];
          revisionRateAnalysisSummary10 = [(TIRevisionRateAnalyzer *)selfCopy revisionRateAnalysisSummary];
          [revisionRateAnalysisSummary10 setTappedCount:tappedCount + 1];

          v38 = [v30 objectForKey:@"revisedModality"];
          v39 = [v38 length];

          v40 = [v30 objectForKey:@"correctedSource"];
          v41 = [v40 length];

          if (v41)
          {
            revisionRateAnalysisSummary11 = [(TIRevisionRateAnalyzer *)selfCopy revisionRateAnalysisSummary];
            autocorrectedCount = [revisionRateAnalysisSummary11 autocorrectedCount];
            revisionRateAnalysisSummary12 = [(TIRevisionRateAnalyzer *)selfCopy revisionRateAnalysisSummary];
            [revisionRateAnalysisSummary12 setAutocorrectedCount:autocorrectedCount + 1];

            selfCopy = v56;
          }

          v22 = v34;
          v27 = v33;
          v28 = v32;
          v26 = v54;
          if (v39)
          {
            revisionRateAnalysisSummary13 = [(TIRevisionRateAnalyzer *)selfCopy revisionRateAnalysisSummary];
            revisedCount = [revisionRateAnalysisSummary13 revisedCount];
            revisionRateAnalysisSummary14 = [(TIRevisionRateAnalyzer *)v56 revisionRateAnalysisSummary];
            v48 = revisedCount + 1;
            selfCopy = v56;
            [revisionRateAnalysisSummary14 setRevisedCount:v48];

            if (v41)
            {
              revisionRateAnalysisSummary15 = [(TIRevisionRateAnalyzer *)v56 revisionRateAnalysisSummary];
              revisedAutocorrectionCount = [revisionRateAnalysisSummary15 revisedAutocorrectionCount];
              revisionRateAnalysisSummary16 = [(TIRevisionRateAnalyzer *)v56 revisionRateAnalysisSummary];
              v52 = revisedAutocorrectionCount + 1;
              selfCopy = v56;
              [revisionRateAnalysisSummary16 setRevisedAutocorrectionCount:v52];
            }
          }
        }

        ++v29;
      }

      while (v26 != v29);
      v26 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v26);
  }
}

- (id)getSessionFields
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[TIRevisionRateAnalyzer hasEmojiInput](self, "hasEmojiInput")}];
  [v3 setObject:v4 forKeyedSubscript:@"hasEmojiInput"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[TIRevisionRateAnalyzer hasCursorMovement](self, "hasCursorMovement")}];
  [v3 setObject:v5 forKeyedSubscript:@"hasCursorMovement"];

  sessionAlignmentConfidence = [(TIRevisionRateAnalyzer *)self sessionAlignmentConfidence];
  [v3 setObject:sessionAlignmentConfidence forKeyedSubscript:kFeatureStringSessionAlignmentConfidence];

  return v3;
}

- (id)_createEventSpec
{
  if (_createEventSpec_onceToken != -1)
  {
    dispatch_once(&_createEventSpec_onceToken, &__block_literal_global_7820);
  }

  v3 = _createEventSpec___eventSpec;

  return v3;
}

void __42__TIRevisionRateAnalyzer__createEventSpec__block_invoke()
{
  v63[8] = *MEMORY[0x277D85DE8];
  v63[0] = @"OriginalText";
  v63[1] = @"Tapped";
  v63[2] = @"Pathed";
  v63[3] = @"Candidate Bar";
  v63[4] = @"TappedWithBackspace";
  v63[5] = @"Deleted";
  v63[6] = @"RevisionBubble";
  v63[7] = @"InlineCompletion";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:8];
  v62[0] = @"Lower";
  v62[1] = @"Title";
  v62[2] = @"Upper";
  v62[3] = @"Mixed";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:4];
  v61[0] = @"None";
  v61[1] = @"Short";
  v61[2] = @"Medium";
  v61[3] = @"Long";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:4];
  v3 = TIFeatureUsageAllowedValues();
  v29 = TITypingSpeedAllowedValues();
  v52 = v0;
  v59 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"enteredModality" allowedValues:v0];
  v60[0] = v59;
  v58 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"enteredSource" allowedValues:0];
  v60[1] = v58;
  v57 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"enteredCapitalization" allowedValues:v1];
  v60[2] = v57;
  v56 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"enteredDiacritics"];
  v60[3] = v56;
  v55 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"enteredApostrophe"];
  v60[4] = v55;
  v54 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"enteredWordLength" minValue:&unk_28400BD60 maxValue:&unk_28400BD78 significantDigits:0];
  v60[5] = v54;
  v53 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"correctedSource" allowedValues:0];
  v60[6] = v53;
  v49 = v1;
  v51 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"correctedCapitalization" allowedValues:v1];
  v60[7] = v51;
  v50 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"correctedDiacritics"];
  v60[8] = v50;
  v48 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"correctedApostrophe"];
  v60[9] = v48;
  v46 = v2;
  v47 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"correctedEditDistance" allowedValues:v2];
  v60[10] = v47;
  v45 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"correctedWordLength" minValue:&unk_28400BD60 maxValue:&unk_28400BD78 significantDigits:0];
  v60[11] = v45;
  v44 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"correctedHasLeftHandContext"];
  v60[12] = v44;
  v43 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"correctedOperationType" allowedValues:0];
  v60[13] = v43;
  v42 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"revisedModality" allowedValues:v0];
  v60[14] = v42;
  v41 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"revisedSource" allowedValues:0];
  v60[15] = v41;
  v40 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"revisedCapitalization" allowedValues:v1];
  v60[16] = v40;
  v39 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"revisedDiacritics"];
  v60[17] = v39;
  v38 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"revisedApostrophe"];
  v60[18] = v38;
  v37 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"revisedEditDistance" allowedValues:v2];
  v60[19] = v37;
  v36 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"revisedWordLength" minValue:&unk_28400BD60 maxValue:&unk_28400BD78 significantDigits:0];
  v60[20] = v36;
  v35 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"revisedWordRevisionCount" minValue:&unk_28400BD60 maxValue:&unk_28400BD78 significantDigits:0];
  v60[21] = v35;
  v34 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"textTraitAutocorrectionEnabled"];
  v60[22] = v34;
  v33 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardType];
  v60[23] = v33;
  v32 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLayout];
  v60[24] = v32;
  v30 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLanguage];
  v60[25] = v30;
  v28 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardRegion];
  v60[26] = v28;
  v27 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardVariant];
  v60[27] = v27;
  v26 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryLanguage];
  v60[28] = v26;
  v25 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryRegion];
  v60[29] = v25;
  v4 = MEMORY[0x277D6F308];
  v5 = kFeatureStringTypingEngine;
  v24 = TITypingEngineAllowedValues();
  v23 = [v4 stringFieldSpecWithName:v5 allowedValues:v24];
  v60[30] = v23;
  v6 = MEMORY[0x277D6F308];
  v7 = kFeatureStringAssetAvailabilityStatus;
  v22 = TIAssetAvailabilityStatusAllowedValues();
  v21 = [v6 stringFieldSpecWithName:v7 allowedValues:v22];
  v60[31] = v21;
  v8 = v3;
  v9 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureKeyboardUsage allowedValues:v3];
  v60[32] = v9;
  v31 = v3;
  v10 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureContinuousPathUsage allowedValues:v3];
  v60[33] = v10;
  v11 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureCandidateBarUsage allowedValues:v3];
  v60[34] = v11;
  v12 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureAutocorrectionUsage allowedValues:v8];
  v60[35] = v12;
  v13 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureMultilingualUsage allowedValues:v8];
  v60[36] = v13;
  v14 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringTypingSpeed allowedValues:v29];
  v60[37] = v14;
  v15 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"hasCursorMovement"];
  v60[38] = v15;
  v16 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"hasEmojiInput"];
  v60[39] = v16;
  v17 = [MEMORY[0x277D6F308] integerFieldSpecWithName:kFeatureStringSessionAlignmentConfidence minValue:&unk_28400BD60 maxValue:&unk_28400BD90 significantDigits:0];
  v60[40] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:41];

  v19 = [MEMORY[0x277D6F300] eventSpecWithName:@"revisionRate" inputModeRequired:0 fieldSpecs:v18];
  v20 = _createEventSpec___eventSpec;
  _createEventSpec___eventSpec = v19;
}

- (void)_registerAnalyticsEventSpecWithAnalyticsService
{
  _createEventSpec = [(TIRevisionRateAnalyzer *)self _createEventSpec];
  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318] registerEventSpec:_createEventSpec];
}

- (void)_dispatchEventPayloads:(id)payloads analyticsService:(id)service typingSession:(id)session
{
  v26 = *MEMORY[0x277D85DE8];
  payloadsCopy = payloads;
  serviceCopy = service;
  sessionCopy = session;
  v20 = serviceCopy;
  if (serviceCopy)
  {
    mEMORY[0x277D6F318] = serviceCopy;
  }

  else
  {
    mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  }

  v11 = mEMORY[0x277D6F318];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = payloadsCopy;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        sessionParams = [sessionCopy sessionParams];
        testingParameters = [sessionParams testingParameters];
        [v11 dispatchEventWithName:@"revisionRate" payload:v17 testingParameters:testingParameters allowSparsePayload:1];
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }
}

- (TIRevisionRateAnalyzer)init
{
  v7.receiver = self;
  v7.super_class = TIRevisionRateAnalyzer;
  v2 = [(TIRevisionRateAnalyzer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(TIRevisionRateAnalyzer *)v2 _registerAnalyticsEventSpecWithAnalyticsService];
    v4 = objc_alloc_init(TIRevisionRateAnalysisSummary);
    revisionRateAnalysisSummary = v3->_revisionRateAnalysisSummary;
    v3->_revisionRateAnalysisSummary = v4;
  }

  return v3;
}

- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence
{
  v21 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  if (confidence)
  {
    v9 = MEMORY[0x277D6F320];
    [TIStandardTypingSessionConfidenceEvaluator calculateAlignedTypingSessionConfidence:alignedSession];
    v10 = [v9 bucketRatioWithValue:10 bucketCount:?];
    [(TIRevisionRateAnalyzer *)self setSessionAlignmentConfidence:v10];

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    getSessionFields = [(TIRevisionRateAnalyzer *)self getSessionFields];
    v13 = _analyzeEditEvents(sessionCopy, getSessionFields);
    [v11 addObjectsFromArray:v13];

    v14 = _analyzeNonEditEvents(sessionCopy, getSessionFields);
    [v11 addObjectsFromArray:v14];

    v15 = _analyzeDeletedOriginalWordEvents(sessionCopy, getSessionFields);
    [v11 addObjectsFromArray:v15];

    if ([v11 count])
    {
      [(TIRevisionRateAnalyzer *)self summarizeWithEventDictionary:v11 withSession:sessionCopy];
      [(TIRevisionRateAnalyzer *)self _dispatchEventPayloads:v11 analyticsService:0 typingSession:sessionCopy];
    }

    else if (IXACanLogMessageAtLevel())
    {
      v16 = IXADefaultLogFacility();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s No revision metric payloads could be generated from the keyboard typing session.", "-[TIRevisionRateAnalyzer analyzeSession:alignedSession:withConfidence:]"];
        *buf = 138412290;
        v20 = v18;
        _os_log_debug_impl(&dword_22CA55000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    goto LABEL_10;
  }

  v11 = IXADefaultLogFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    getSessionFields = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Typing session confidence is set to 'none' and will not be analyzed by the autocorrection revision rate analyzer.", "-[TIRevisionRateAnalyzer analyzeSession:alignedSession:withConfidence:]"];
    *buf = 138412290;
    v20 = getSessionFields;
    _os_log_debug_impl(&dword_22CA55000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
LABEL_10:
  }

  return confidence != 0;
}

@end