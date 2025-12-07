@interface TIAsteriskCorrectionAnalyzer
- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence;
- (BOOL)checkIfSession:(id)session isFromAllowedApp:(id)app;
- (TIAsteriskCorrectionAnalyzer)init;
- (void)registerEventSpec;
@end

@implementation TIAsteriskCorrectionAnalyzer

- (void)registerEventSpec
{
  v53[6] = *MEMORY[0x277D85DE8];
  v48 = MEMORY[0x277D6F300];
  v2 = MEMORY[0x277D6F308];
  v53[0] = @"None";
  v53[1] = @"SingleWord";
  v3 = [@"SingleWord" stringByAppendingString:@"BeginAsterisk"];
  v53[2] = v3;
  v4 = [@"SingleWord" stringByAppendingString:@"EndAsterisk"];
  v53[3] = v4;
  v5 = [@"MultiWord" stringByAppendingString:@"BeginAsterisk"];
  v53[4] = v5;
  v6 = [@"MultiWord" stringByAppendingString:@"EndAsterisk"];
  v53[5] = v6;
  v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:6];

  v50 = [v2 stringFieldSpecWithName:@"correctionType" allowedValues:v51];
  v52[0] = v50;
  v49 = [MEMORY[0x277D6F308] enumFieldSpecWithName:@"prevMessageAutoCorrectionType"];
  v52[1] = v49;
  v7 = MEMORY[0x277D6F308];
  v8 = &unk_28400B8F8;
  v47 = [v7 stringFieldSpecWithName:@"bundleId" allowedValues:&unk_28400B8F8];
  v52[2] = v47;
  v9 = MEMORY[0x277D6F308];
  v10 = kFeatureKeyboardUsage;
  v46 = TIFeatureUsageAllowedValues();
  v45 = [v9 stringFieldSpecWithName:v10 allowedValues:v46];
  v52[3] = v45;
  v11 = MEMORY[0x277D6F308];
  v12 = kFeatureContinuousPathUsage;
  v44 = TIFeatureUsageAllowedValues();
  v43 = [v11 stringFieldSpecWithName:v12 allowedValues:v44];
  v52[4] = v43;
  v13 = MEMORY[0x277D6F308];
  v14 = kFeatureAutocorrectionUsage;
  v42 = TIFeatureUsageAllowedValues();
  v41 = [v13 stringFieldSpecWithName:v14 allowedValues:v42];
  v52[5] = v41;
  v15 = MEMORY[0x277D6F308];
  v16 = kFeatureCandidateBarUsage;
  v40 = TIFeatureUsageAllowedValues();
  v39 = [v15 stringFieldSpecWithName:v16 allowedValues:v40];
  v52[6] = v39;
  v17 = MEMORY[0x277D6F308];
  v18 = kFeatureMultilingualUsage;
  v38 = TIFeatureUsageAllowedValues();
  v37 = [v17 stringFieldSpecWithName:v18 allowedValues:v38];
  v52[7] = v37;
  v19 = MEMORY[0x277D6F308];
  v20 = kFeatureStringTypingSpeed;
  v36 = TITypingSpeedAllowedValues();
  v35 = [v19 stringFieldSpecWithName:v20 allowedValues:v36];
  v52[8] = v35;
  v21 = MEMORY[0x277D6F308];
  v22 = kFeatureStringAssetAvailabilityStatus;
  v34 = TIAssetAvailabilityStatusAllowedValues();
  v23 = [v21 stringFieldSpecWithName:v22 allowedValues:v34];
  v52[9] = v23;
  v24 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLanguage];
  v52[10] = v24;
  v25 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardRegion];
  v52[11] = v25;
  v26 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardVariant];
  v52[12] = v26;
  v27 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryLanguage];
  v52[13] = v27;
  v28 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryRegion];
  v52[14] = v28;
  v29 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLayout];
  v52[15] = v29;
  v30 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardType];
  v52[16] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:17];
  v32 = [v48 eventSpecWithName:@"asteriskCorrection" inputModeRequired:0 fieldSpecs:v31];

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318] registerEventSpec:v32];
}

- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence
{
  v47 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  alignedSessionCopy = alignedSession;
  if (confidence)
  {
    v10 = &unk_28400B8F8;
    v11 = [(TIAsteriskCorrectionAnalyzer *)self checkIfSession:sessionCopy isFromAllowedApp:&unk_28400B8F8];

    if (v11)
    {
      v37 = alignedSessionCopy;
      array = [MEMORY[0x277CBEB18] array];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v39 = sessionCopy;
      userActionHistory = [sessionCopy userActionHistory];
      v14 = [userActionHistory countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (!v14)
      {
        v16 = 0;
        goto LABEL_26;
      }

      v15 = v14;
      v41 = 0;
      v16 = 0;
      v17 = 1;
      v18 = *v43;
      v38 = userActionHistory;
      while (1)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v43 != v18)
          {
            objc_enumerationMutation(userActionHistory);
          }

          v20 = *(*(&v42 + 1) + 8 * i);
          if ([v20 actionType])
          {
            documentState = [v20 documentState];
            if (![documentState documentIsEmpty] || !objc_msgSend(array, "count"))
            {

              goto LABEL_21;
            }

            if ([v20 actionType] == 2)
            {
            }

            else
            {
              actionType = [v20 actionType];

              if (actionType != 11)
              {
                goto LABEL_21;
              }
            }

            v25 = [TITypingSession alloc];
            locale = [v39 locale];
            v27 = [(TITypingSession *)v25 initWithLocale:locale keyboardLayout:0];

            sessionParams = [v39 sessionParams];
            [(TITypingSession *)v27 setSessionParams:sessionParams];

            featureUsageMetricsCache = [v39 featureUsageMetricsCache];
            [(TITypingSession *)v27 setFeatureUsageMetricsCache:featureUsageMetricsCache];

            [(TITypingSession *)v27 setUserActionHistory:array];
            array2 = [MEMORY[0x277CBEB18] array];

            v30 = [TIAsteriskCorrectionMessageEvent alloc];
            [v39 applicationID];
            v31 = v15;
            v32 = v18;
            v34 = v33 = v16;
            v35 = [(TIAsteriskCorrectionMessageEvent *)v30 initWithSession:v27 andPrevMsgAutocorrectionType:v41 andBundleId:v34];

            v18 = v32;
            v15 = v31;

            [(TIAsteriskCorrectionMessageEvent *)v35 analyzeEvent];
            v41 = v17;
            v17 = 1;
            array = array2;
            v16 = v35;
            userActionHistory = v38;
          }

          else
          {
            wordEntryType = [v20 wordEntryType];
            v23 = 2;
            if (v17 != 3)
            {
              v23 = v17;
            }

            if (wordEntryType)
            {
              v17 = 3;
            }

            else
            {
              v17 = v23;
            }
          }

LABEL_21:
          [array addObject:v20];
        }

        v15 = [userActionHistory countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (!v15)
        {
LABEL_26:

          LOBYTE(v11) = 1;
          sessionCopy = v39;
          alignedSessionCopy = v37;
          break;
        }
      }
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)checkIfSession:(id)session isFromAllowedApp:(id)app
{
  v18 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  appCopy = app;
  v7 = [appCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(appCopy);
        }

        applicationID = [sessionCopy applicationID];
        isEqualToString = objc_msgSend_isEqualToString_(applicationID);

        if (isEqualToString)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [appCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (TIAsteriskCorrectionAnalyzer)init
{
  v5.receiver = self;
  v5.super_class = TIAsteriskCorrectionAnalyzer;
  v2 = [(TIAsteriskCorrectionAnalyzer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TIAsteriskCorrectionAnalyzer *)v2 registerEventSpec];
  }

  return v3;
}

@end