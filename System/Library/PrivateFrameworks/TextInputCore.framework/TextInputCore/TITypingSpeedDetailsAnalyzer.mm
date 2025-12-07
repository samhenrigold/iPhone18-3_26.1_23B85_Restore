@interface TITypingSpeedDetailsAnalyzer
- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence;
- (TITypingSpeedDetailsAnalyzer)init;
- (void)registerEventSpec;
@end

@implementation TITypingSpeedDetailsAnalyzer

- (void)registerEventSpec
{
  v63[36] = *MEMORY[0x277D85DE8];
  v50 = MEMORY[0x277D6F300];
  v62 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"totalMessageDuration" minValue:&unk_28400C150 maxValue:0 significantDigits:0];
  v63[0] = v62;
  v61 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"totalMessageLength" minValue:&unk_28400C150 maxValue:0 significantDigits:0];
  v63[1] = v61;
  v60 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"totalWordsEntered" minValue:&unk_28400C150 maxValue:0 significantDigits:0];
  v63[2] = v60;
  v59 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"totalFinalWordEntered" minValue:&unk_28400C150 maxValue:0 significantDigits:0];
  v63[3] = v59;
  v58 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"messageDuration" minValue:&unk_28400C150 maxValue:&unk_28400C168 significantDigits:0];
  v63[4] = v58;
  v57 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"messageLength" minValue:&unk_28400C150 maxValue:&unk_28400C168 significantDigits:0];
  v63[5] = v57;
  v56 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"wordsEntered" minValue:&unk_28400C150 maxValue:&unk_28400C168 significantDigits:0];
  v63[6] = v56;
  v55 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"finalWordEntered" minValue:&unk_28400C150 maxValue:&unk_28400C168 significantDigits:0];
  v63[7] = v55;
  v54 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"static" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v63[8] = v54;
  v53 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"dynamic" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v63[9] = v53;
  v52 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"textReplacements" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v63[10] = v52;
  v49 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"addressBook" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v63[11] = v49;
  v48 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"namedEntities" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v63[12] = v48;
  v47 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"oov" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v63[13] = v47;
  v46 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"supplementalLexicon" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v63[14] = v46;
  v45 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiPlane" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v63[15] = v45;
  v44 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiPrediction" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v63[16] = v44;
  v43 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearch" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v63[17] = v43;
  v42 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiPopover" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v63[18] = v42;
  v41 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"responseKit" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v63[19] = v41;
  v40 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pqt" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v63[20] = v40;
  v39 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"multilingual" minValue:&unk_28400C150 maxValue:&unk_28400C180 significantDigits:0];
  v63[21] = v39;
  v2 = MEMORY[0x277D6F308];
  v3 = kFeatureKeyboardUsage;
  v38 = TIFeatureUsageAllowedValues();
  v37 = [v2 stringFieldSpecWithName:v3 allowedValues:v38];
  v63[22] = v37;
  v4 = MEMORY[0x277D6F308];
  v5 = kFeatureContinuousPathUsage;
  v36 = TIFeatureUsageAllowedValues();
  v35 = [v4 stringFieldSpecWithName:v5 allowedValues:v36];
  v63[23] = v35;
  v6 = MEMORY[0x277D6F308];
  v7 = kFeatureAutocorrectionUsage;
  v34 = TIFeatureUsageAllowedValues();
  v33 = [v6 stringFieldSpecWithName:v7 allowedValues:v34];
  v63[24] = v33;
  v8 = MEMORY[0x277D6F308];
  v9 = kFeatureCandidateBarUsage;
  v32 = TIFeatureUsageAllowedValues();
  v31 = [v8 stringFieldSpecWithName:v9 allowedValues:v32];
  v63[25] = v31;
  v10 = MEMORY[0x277D6F308];
  v11 = kFeatureMultilingualUsage;
  v30 = TIFeatureUsageAllowedValues();
  v29 = [v10 stringFieldSpecWithName:v11 allowedValues:v30];
  v63[26] = v29;
  v12 = MEMORY[0x277D6F308];
  v13 = kFeatureStringTypingSpeed;
  v28 = TITypingSpeedAllowedValues();
  v27 = [v12 stringFieldSpecWithName:v13 allowedValues:v28];
  v63[27] = v27;
  v14 = MEMORY[0x277D6F308];
  v15 = kFeatureStringAssetAvailabilityStatus;
  v16 = TIAssetAvailabilityStatusAllowedValues();
  v17 = [v14 stringFieldSpecWithName:v15 allowedValues:v16];
  v63[28] = v17;
  v18 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLanguage];
  v63[29] = v18;
  v19 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardRegion];
  v63[30] = v19;
  v20 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardVariant];
  v63[31] = v20;
  v21 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryLanguage];
  v63[32] = v21;
  v22 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryRegion];
  v63[33] = v22;
  v23 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLayout];
  v63[34] = v23;
  v24 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardType];
  v63[35] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:36];
  v51 = [v50 eventSpecWithName:@"typingSpeedDetails" inputModeRequired:0 fieldSpecs:v25];

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318] registerEventSpec:v51];
}

- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence
{
  v67 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  alignedSessionCopy = alignedSession;
  if (confidence)
  {
    applicationID = [sessionCopy applicationID];
    isEqualToString = objc_msgSend_isEqualToString_(applicationID);

    if (isEqualToString)
    {
      v48 = alignedSessionCopy;
      v49 = objc_opt_new();
      v11 = objc_alloc(MEMORY[0x277CCAB00]);
      userActionHistory = [sessionCopy userActionHistory];
      v13 = [v11 initWithKeyOptions:0 valueOptions:5 capacity:{objc_msgSend(userActionHistory, "count")}];

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      userActionHistory2 = [sessionCopy userActionHistory];
      v15 = [userActionHistory2 countByEnumeratingWithState:&v60 objects:v66 count:16];
      if (v15)
      {
        v16 = v15;
        v51 = 0;
        v17 = 0;
        v18 = *v61;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v61 != v18)
            {
              objc_enumerationMutation(userActionHistory2);
            }

            v20 = *(*(&v60 + 1) + 8 * i);
            documentState = [v20 documentState];
            documentIsEmpty = [documentState documentIsEmpty];

            if (documentIsEmpty)
            {

              v17 = 0;
            }

            if (![v20 actionType])
            {
              v23 = v20;
              if (!v17)
              {
                v17 = objc_opt_new();
                [v49 addObject:v17];
              }

              [v17 analyzeWordEntry:v23];
              [v13 setObject:v17 forKey:v23];
              keyboardState = [v23 keyboardState];

              v51 = keyboardState;
            }
          }

          v16 = [userActionHistory2 countByEnumeratingWithState:&v60 objects:v66 count:16];
        }

        while (v16);
      }

      else
      {
        v51 = 0;
        v17 = 0;
      }

      v50 = sessionCopy;

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      alignedSessionCopy = v48;
      alignedEntries = [v48 alignedEntries];
      v26 = [alignedEntries countByEnumeratingWithState:&v56 objects:v65 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v57;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v57 != v28)
            {
              objc_enumerationMutation(alignedEntries);
            }

            v30 = *(*(&v56 + 1) + 8 * j);
            originalWord = [v30 originalWord];
            v32 = [v13 objectForKey:originalWord];

            [v32 analyzeWordEntryAligned:v30];
          }

          v27 = [alignedEntries countByEnumeratingWithState:&v56 objects:v65 count:16];
        }

        while (v27);
      }

      confidence = v49;
      if ([v49 count])
      {
        v33 = [TIKBAnalyticsMetricsContext alloc];
        sessionParams = [v50 sessionParams];
        activeInputModes = [sessionParams activeInputModes];
        sessionParams2 = [v50 sessionParams];
        testingParameters = [sessionParams2 testingParameters];
        v38 = [(TIKBAnalyticsMetricsContext *)v33 initWithKeyboardState:v51 activeInputModes:activeInputModes testingParameters:testingParameters];

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v39 = v49;
        v40 = [v39 countByEnumeratingWithState:&v52 objects:v64 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v53;
          do
          {
            for (k = 0; k != v41; ++k)
            {
              if (*v53 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = *(*(&v52 + 1) + 8 * k);
              featureUsageMetricsCache = [v50 featureUsageMetricsCache];
              sessionParams3 = [v50 sessionParams];
              [v44 dispatchWithFeatureUsageMetricsCache:featureUsageMetricsCache andContext:v38 assetAvailabilityStatus:{objc_msgSend(sessionParams3, "assetAvailabilityStatus")}];
            }

            v41 = [v39 countByEnumeratingWithState:&v52 objects:v64 count:16];
          }

          while (v41);
        }

        alignedSessionCopy = v48;
        confidence = v49;
      }

      LOBYTE(confidence) = 1;
      sessionCopy = v50;
    }

    else
    {
      LOBYTE(confidence) = 0;
    }
  }

  return confidence;
}

- (TITypingSpeedDetailsAnalyzer)init
{
  v5.receiver = self;
  v5.super_class = TITypingSpeedDetailsAnalyzer;
  v2 = [(TITypingSpeedDetailsAnalyzer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TITypingSpeedDetailsAnalyzer *)v2 registerEventSpec];
  }

  return v3;
}

@end