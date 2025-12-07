@interface TICandidateBarUsageAnalyzer
- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence;
- (TICandidateBarUsageAnalyzer)init;
- (id)stringFromInputMethod:(unint64_t)method;
- (id)stringFromSelectionType:(unint64_t)type;
- (void)analyzeWordEntry:(id)entry;
- (void)dispatchEventWithInputMethod:(unint64_t)method typingEngineType:(unsigned int)type selectionType:(unint64_t)selectionType keyboardState:(id)state;
- (void)registerEventSpec;
@end

@implementation TICandidateBarUsageAnalyzer

- (id)stringFromSelectionType:(unint64_t)type
{
  if (type - 1 > 9)
  {
    return @"None";
  }

  else
  {
    return *(&off_278732010 + type - 1);
  }
}

- (id)stringFromInputMethod:(unint64_t)method
{
  if (method)
  {
    return @"Pathed";
  }

  else
  {
    return @"Tapped";
  }
}

- (void)dispatchEventWithInputMethod:(unint64_t)method typingEngineType:(unsigned int)type selectionType:(unint64_t)selectionType keyboardState:(id)state
{
  v52[20] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v10 = [TIKBAnalyticsMetricsContext alloc];
  sessionParams = [(TITypingSession *)self->_currentSession sessionParams];
  activeInputModes = [sessionParams activeInputModes];
  sessionParams2 = [(TITypingSession *)self->_currentSession sessionParams];
  testingParameters = [sessionParams2 testingParameters];
  v15 = [(TIKBAnalyticsMetricsContext *)v10 initWithKeyboardState:stateCopy activeInputModes:activeInputModes testingParameters:testingParameters];

  v51[0] = @"inputMethod";
  v50 = [(TICandidateBarUsageAnalyzer *)self stringFromInputMethod:method];
  v52[0] = v50;
  v51[1] = @"selectionType";
  v49 = [(TICandidateBarUsageAnalyzer *)self stringFromSelectionType:selectionType];
  v52[1] = v49;
  v51[2] = @"predictionEnabled";
  v48 = [MEMORY[0x277CCABB0] numberWithBool:self->_predictionEnabled];
  v52[2] = v48;
  v51[3] = @"continuousPathEnabled";
  v47 = [MEMORY[0x277CCABB0] numberWithBool:self->_continuousPathEnabled];
  v52[3] = v47;
  v51[4] = @"autocorrectionEnabled";
  v16 = MEMORY[0x277CCABB0];
  keyboardType = [(TIKBAnalyticsMetricsContext *)v15 keyboardType];
  v18 = 18;
  if (keyboardType == 5)
  {
    v18 = 19;
  }

  v46 = [v16 numberWithBool:*(&self->super.isa + v18)];
  v52[4] = v46;
  v51[5] = kFeatureKeyboardUsage;
  featureUsageMetricsCache = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
  v44 = [featureUsageMetricsCache featureUsageMetricFromName:kFeatureKeyboardUsage forContext:v15];
  v52[5] = v44;
  v51[6] = kFeatureContinuousPathUsage;
  featureUsageMetricsCache2 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
  v42 = [featureUsageMetricsCache2 featureUsageMetricFromName:kFeatureContinuousPathUsage forContext:v15];
  v52[6] = v42;
  v51[7] = kFeatureAutocorrectionUsage;
  featureUsageMetricsCache3 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
  v40 = [featureUsageMetricsCache3 featureUsageMetricFromName:kFeatureAutocorrectionUsage forContext:v15];
  v52[7] = v40;
  v51[8] = kFeatureCandidateBarUsage;
  featureUsageMetricsCache4 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
  v38 = [featureUsageMetricsCache4 featureUsageMetricFromName:kFeatureCandidateBarUsage forContext:v15];
  v52[8] = v38;
  v51[9] = kFeatureMultilingualUsage;
  featureUsageMetricsCache5 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
  v36 = [featureUsageMetricsCache5 featureUsageMetricFromName:kFeatureMultilingualUsage forContext:v15];
  v52[9] = v36;
  v51[10] = kFeatureStringTypingSpeed;
  featureUsageMetricsCache6 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
  v34 = [featureUsageMetricsCache6 featureUsageMetricFromName:kFeatureStringTypingSpeed forContext:v15];
  v52[10] = v34;
  v51[11] = kFeatureStringTypingEngine;
  v33 = TIKeyboardCandidateTypingEngineTypeToString();
  v52[11] = v33;
  v51[12] = kFeatureStringAssetAvailabilityStatus;
  sessionParams3 = [(TITypingSession *)self->_currentSession sessionParams];
  assetAvailabilityStatus = [sessionParams3 assetAvailabilityStatus];
  v21 = @"Installed";
  if (!assetAvailabilityStatus)
  {
    v21 = @"Unavailable";
  }

  v22 = v21;
  v52[12] = v22;
  v51[13] = kFeatureStringKeyboardLanguage;
  inputLanguage = [(TIAnalyticsMetricsContext *)v15 inputLanguage];
  v52[13] = inputLanguage;
  v51[14] = kFeatureStringKeyboardRegion;
  inputRegion = [(TIAnalyticsMetricsContext *)v15 inputRegion];
  v52[14] = inputRegion;
  v51[15] = kFeatureStringKeyboardVariant;
  inputVariant = [(TIKBAnalyticsMetricsContext *)v15 inputVariant];
  v52[15] = inputVariant;
  v51[16] = kFeatureStringKeyboardSecondaryLanguage;
  secondaryLanguage = [(TIKBAnalyticsMetricsContext *)v15 secondaryLanguage];
  v52[16] = secondaryLanguage;
  v51[17] = kFeatureStringKeyboardSecondaryRegion;
  secondaryRegion = [(TIKBAnalyticsMetricsContext *)v15 secondaryRegion];
  v52[17] = secondaryRegion;
  v51[18] = kFeatureStringKeyboardLayout;
  layoutName = [(TIKBAnalyticsMetricsContext *)v15 layoutName];
  v52[18] = layoutName;
  v51[19] = kFeatureStringKeyboardType;
  v29 = [TIKBAnalyticsMetricsContext keyboardTypeEnumToString:[(TIKBAnalyticsMetricsContext *)v15 keyboardType]];
  v52[19] = v29;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:20];

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  testingParameters2 = [(TIKBAnalyticsMetricsContext *)v15 testingParameters];
  [mEMORY[0x277D6F318] dispatchEventWithName:@"candidateBarUsage" payload:v32 testingParameters:testingParameters2 allowSparsePayload:0];
}

- (void)registerEventSpec
{
  v56[20] = *MEMORY[0x277D85DE8];
  v47 = MEMORY[0x277D6F300];
  v2 = MEMORY[0x277D6F308];
  v55[0] = @"Tapped";
  v55[1] = @"Pathed";
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
  v52 = [v2 stringFieldSpecWithName:@"inputMethod" allowedValues:v53];
  v56[0] = v52;
  v3 = MEMORY[0x277D6F308];
  v54[0] = @"None";
  v54[1] = @"Typed String";
  v54[2] = @"Autocorrection";
  v54[3] = @"Prediction";
  v54[4] = @"Completion";
  v54[5] = @"Emoji Prediction";
  v54[6] = @"Emoji Replacement";
  v54[7] = @"Text Replacement";
  v54[8] = @"PQT";
  v54[9] = @"Smart Response";
  v54[10] = @"Other";
  v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:11];
  v50 = [v3 stringFieldSpecWithName:@"selectionType" allowedValues:v51];
  v56[1] = v50;
  v49 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"predictionEnabled"];
  v56[2] = v49;
  v48 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"continuousPathEnabled"];
  v56[3] = v48;
  v46 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"autocorrectionEnabled"];
  v56[4] = v46;
  v4 = MEMORY[0x277D6F308];
  v5 = kFeatureKeyboardUsage;
  v45 = TIFeatureUsageAllowedValues();
  v44 = [v4 stringFieldSpecWithName:v5 allowedValues:v45];
  v56[5] = v44;
  v6 = MEMORY[0x277D6F308];
  v7 = kFeatureContinuousPathUsage;
  v43 = TIFeatureUsageAllowedValues();
  v42 = [v6 stringFieldSpecWithName:v7 allowedValues:v43];
  v56[6] = v42;
  v8 = MEMORY[0x277D6F308];
  v9 = kFeatureAutocorrectionUsage;
  v41 = TIFeatureUsageAllowedValues();
  v40 = [v8 stringFieldSpecWithName:v9 allowedValues:v41];
  v56[7] = v40;
  v10 = MEMORY[0x277D6F308];
  v11 = kFeatureCandidateBarUsage;
  v39 = TIFeatureUsageAllowedValues();
  v38 = [v10 stringFieldSpecWithName:v11 allowedValues:v39];
  v56[8] = v38;
  v12 = MEMORY[0x277D6F308];
  v13 = kFeatureMultilingualUsage;
  v37 = TIFeatureUsageAllowedValues();
  v36 = [v12 stringFieldSpecWithName:v13 allowedValues:v37];
  v56[9] = v36;
  v14 = MEMORY[0x277D6F308];
  v15 = kFeatureStringTypingSpeed;
  v35 = TITypingSpeedAllowedValues();
  v34 = [v14 stringFieldSpecWithName:v15 allowedValues:v35];
  v56[10] = v34;
  v16 = MEMORY[0x277D6F308];
  v17 = kFeatureStringTypingEngine;
  v33 = TITypingEngineAllowedValues();
  v32 = [v16 stringFieldSpecWithName:v17 allowedValues:v33];
  v56[11] = v32;
  v18 = MEMORY[0x277D6F308];
  v19 = kFeatureStringAssetAvailabilityStatus;
  v31 = TIAssetAvailabilityStatusAllowedValues();
  v20 = [v18 stringFieldSpecWithName:v19 allowedValues:v31];
  v56[12] = v20;
  v21 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLanguage];
  v56[13] = v21;
  v22 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardRegion];
  v56[14] = v22;
  v23 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardVariant];
  v56[15] = v23;
  v24 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryLanguage];
  v56[16] = v24;
  v25 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryRegion];
  v56[17] = v25;
  v26 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLayout];
  v56[18] = v26;
  v27 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardType];
  v56[19] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:20];
  v29 = [v47 eventSpecWithName:@"candidateBarUsage" inputModeRequired:0 fieldSpecs:v28];

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318] registerEventSpec:v29];
}

- (void)analyzeWordEntry:(id)entry
{
  v47 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  acceptedCandidate = [entryCopy acceptedCandidate];
  candidatesOffered = [entryCopy candidatesOffered];
  lastObject = [candidatesOffered lastObject];

  candidate = [acceptedCandidate candidate];
  v9 = [candidate length];

  if (v9)
  {
    isContinuousPathConversion = [acceptedCandidate isContinuousPathConversion];
    if (([entryCopy wordEntryType] & 4) != 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([acceptedCandidate proactiveTrigger], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
      {
        v11 = 8;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = 7;
        }

        else
        {
          if (([acceptedCandidate isResponseKitCandidate] & 1) == 0)
          {
            candidate2 = [acceptedCandidate candidate];
            if ([candidate2 _containsEmoji])
            {
              input = [acceptedCandidate input];
              v15 = [input length];

              if (!v15)
              {
                v11 = 5;
                goto LABEL_35;
              }
            }

            else
            {
            }

            candidate3 = [acceptedCandidate candidate];
            if ([candidate3 _containsEmoji])
            {
              input2 = [acceptedCandidate input];
              v18 = [input2 length];

              if (v18)
              {
                v11 = 6;
                goto LABEL_35;
              }
            }

            else
            {
            }

            input3 = [acceptedCandidate input];
            v20 = [input3 length];

            if (v20)
            {
              candidate4 = [acceptedCandidate candidate];
              corrections = [lastObject corrections];
              autocorrection = [corrections autocorrection];
              input4 = [autocorrection input];
              isEqualToString = objc_msgSend_isEqualToString_(candidate4);

              if (isEqualToString)
              {
                v11 = 1;
              }

              else
              {
                candidate5 = [acceptedCandidate candidate];
                corrections2 = [lastObject corrections];
                autocorrection2 = [corrections2 autocorrection];
                candidate6 = [autocorrection2 candidate];
                v30 = objc_msgSend_isEqualToString_(candidate5);

                if (v30)
                {
                  v11 = 2;
                }

                else
                {
                  v44 = 0u;
                  v45 = 0u;
                  v42 = 0u;
                  v43 = 0u;
                  obj = [lastObject predictions];
                  v41 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
                  if (v41)
                  {
                    v40 = *v43;
                    v11 = 4;
LABEL_27:
                    v31 = 0;
                    while (1)
                    {
                      if (*v43 != v40)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v32 = *(*(&v42 + 1) + 8 * v31);
                      candidate7 = [acceptedCandidate candidate];
                      candidate8 = [v32 candidate];
                      v35 = objc_msgSend_isEqualToString_(candidate7);

                      if (v35)
                      {
                        break;
                      }

                      if (v41 == ++v31)
                      {
                        v41 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
                        if (v41)
                        {
                          goto LABEL_27;
                        }

                        goto LABEL_33;
                      }
                    }
                  }

                  else
                  {
LABEL_33:
                    v11 = 10;
                  }
                }
              }
            }

            else
            {
              v11 = 3;
            }

            goto LABEL_35;
          }

          v11 = 9;
        }
      }
    }

    else
    {
      v11 = 0;
    }

LABEL_35:
    acceptedCandidate2 = [entryCopy acceptedCandidate];
    typingEngine = [acceptedCandidate2 typingEngine];
    keyboardState = [entryCopy keyboardState];
    [(TICandidateBarUsageAnalyzer *)self dispatchEventWithInputMethod:isContinuousPathConversion typingEngineType:typingEngine selectionType:v11 keyboardState:keyboardState];
  }
}

- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence
{
  v22 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  if (confidence)
  {
    objc_storeStrong(&self->_currentSession, session);
    mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
    self->_predictionEnabled = [mEMORY[0x277D6F470] BOOLForPreferenceKey:*MEMORY[0x277D6F928]];
    self->_continuousPathEnabled = [mEMORY[0x277D6F470] BOOLForPreferenceKey:*MEMORY[0x277D6F848]];
    self->_autocorrectionEnabled = [mEMORY[0x277D6F470] BOOLForPreferenceKey:*MEMORY[0x277D6F7C0]];
    self->_hwAutocorrectionEnabled = [mEMORY[0x277D6F470] BOOLForPreferenceKey:*MEMORY[0x277D6F638]];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    userActionHistory = [(TITypingSession *)self->_currentSession userActionHistory];
    v11 = [userActionHistory countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(userActionHistory);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          if (![v15 actionType])
          {
            [(TICandidateBarUsageAnalyzer *)self analyzeWordEntry:v15];
          }
        }

        v12 = [userActionHistory countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }

  return confidence != 0;
}

- (TICandidateBarUsageAnalyzer)init
{
  v5.receiver = self;
  v5.super_class = TICandidateBarUsageAnalyzer;
  v2 = [(TICandidateBarUsageAnalyzer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TICandidateBarUsageAnalyzer *)v2 registerEventSpec];
  }

  return v3;
}

@end