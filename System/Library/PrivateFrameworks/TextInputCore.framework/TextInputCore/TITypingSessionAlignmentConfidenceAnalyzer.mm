@interface TITypingSessionAlignmentConfidenceAnalyzer
- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence;
- (TITypingSessionAlignmentConfidenceAnalyzer)init;
- (id)_generateCountsOfWordsForAlignmentConfidences;
- (id)_generateFeatureUsageMetricsForContext:(id)context;
- (id)_generateMetadataForTypingSessionFromContext:(id)context;
- (id)_generatePercentageOfTotalWordsForAlignmentConfidencesFromRawCounts:(id)counts;
- (void)dispatchEventWithPayload:(id)payload;
- (void)registerEventSpec;
@end

@implementation TITypingSessionAlignmentConfidenceAnalyzer

- (void)dispatchEventWithPayload:(id)payload
{
  v3 = MEMORY[0x277D6F318];
  payloadCopy = payload;
  sharedInstance = [v3 sharedInstance];
  [sharedInstance dispatchEventWithName:@"alignmentConfidence" payload:payloadCopy testingParameters:0 allowSparsePayload:1];
}

- (void)registerEventSpec
{
  v48[24] = *MEMORY[0x277D85DE8];
  v39 = MEMORY[0x277D6F300];
  v47 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"countWordsAlignmentConfidenceHigh" minValue:&unk_28400BD18 maxValue:0 significantDigits:0];
  v48[0] = v47;
  v46 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"countWordsAlignmentConfidenceMid" minValue:&unk_28400BD18 maxValue:0 significantDigits:0];
  v48[1] = v46;
  v45 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"countWordsAlignmentConfidenceLow" minValue:&unk_28400BD18 maxValue:0 significantDigits:0];
  v48[2] = v45;
  v44 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"countWordsAlignmentConfidenceNone" minValue:&unk_28400BD18 maxValue:0 significantDigits:0];
  v48[3] = v44;
  v43 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"totalAlignedWords" minValue:&unk_28400BD18 maxValue:0 significantDigits:0];
  v48[4] = v43;
  v42 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"fractionWordsAlignmentConfidenceHigh" minValue:&unk_28400BD18 maxValue:0 significantDigits:0];
  v48[5] = v42;
  v41 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"fractionWordsAlignmentConfidenceMid" minValue:&unk_28400BD18 maxValue:0 significantDigits:0];
  v48[6] = v41;
  v40 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"fractionWordsAlignmentConfidenceLow" minValue:&unk_28400BD18 maxValue:0 significantDigits:0];
  v48[7] = v40;
  v38 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"fractionWordsAlignmentConfidenceNone" minValue:&unk_28400BD18 maxValue:0 significantDigits:0];
  v48[8] = v38;
  v37 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"sessionAlignmentSuccess"];
  v48[9] = v37;
  v36 = [MEMORY[0x277D6F308] integerFieldSpecWithName:kFeatureStringSessionAlignmentConfidence minValue:&unk_28400BD18 maxValue:0 significantDigits:0];
  v48[10] = v36;
  v2 = MEMORY[0x277D6F308];
  v3 = kFeatureKeyboardUsage;
  v35 = TIFeatureUsageAllowedValues();
  v34 = [v2 stringFieldSpecWithName:v3 allowedValues:v35];
  v48[11] = v34;
  v4 = MEMORY[0x277D6F308];
  v5 = kFeatureContinuousPathUsage;
  v33 = TIFeatureUsageAllowedValues();
  v32 = [v4 stringFieldSpecWithName:v5 allowedValues:v33];
  v48[12] = v32;
  v6 = MEMORY[0x277D6F308];
  v7 = kFeatureAutocorrectionUsage;
  v31 = TIFeatureUsageAllowedValues();
  v30 = [v6 stringFieldSpecWithName:v7 allowedValues:v31];
  v48[13] = v30;
  v8 = MEMORY[0x277D6F308];
  v9 = kFeatureCandidateBarUsage;
  v29 = TIFeatureUsageAllowedValues();
  v28 = [v8 stringFieldSpecWithName:v9 allowedValues:v29];
  v48[14] = v28;
  v10 = MEMORY[0x277D6F308];
  v11 = kFeatureMultilingualUsage;
  v27 = TIFeatureUsageAllowedValues();
  v26 = [v10 stringFieldSpecWithName:v11 allowedValues:v27];
  v48[15] = v26;
  v12 = MEMORY[0x277D6F308];
  v13 = kFeatureStringTypingSpeed;
  v25 = TITypingSpeedAllowedValues();
  v14 = [v12 stringFieldSpecWithName:v13 allowedValues:v25];
  v48[16] = v14;
  v15 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLanguage];
  v48[17] = v15;
  v16 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardRegion];
  v48[18] = v16;
  v17 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardVariant];
  v48[19] = v17;
  v18 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryLanguage];
  v48[20] = v18;
  v19 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryRegion];
  v48[21] = v19;
  v20 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLayout];
  v48[22] = v20;
  v21 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardType];
  v48[23] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:24];
  v23 = [v39 eventSpecWithName:@"alignmentConfidence" inputModeRequired:0 fieldSpecs:v22];

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318] registerEventSpec:v23];
}

- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence
{
  sessionCopy = session;
  alignedSessionCopy = alignedSession;
  if (confidence)
  {
    v31 = alignedSessionCopy;
    objc_storeStrong(&self->_session, session);
    objc_storeStrong(&self->_alignedSession, alignedSession);
    _generateCountsOfWordsForAlignmentConfidences = [(TITypingSessionAlignmentConfidenceAnalyzer *)self _generateCountsOfWordsForAlignmentConfidences];
    [(NSMutableDictionary *)self->_payload addEntriesFromDictionary:_generateCountsOfWordsForAlignmentConfidences];
    payload = self->_payload;
    v13 = [(TITypingSessionAlignmentConfidenceAnalyzer *)self _generatePercentageOfTotalWordsForAlignmentConfidencesFromRawCounts:_generateCountsOfWordsForAlignmentConfidences];
    [(NSMutableDictionary *)payload addEntriesFromDictionary:v13];

    [TIStandardTypingSessionConfidenceEvaluator calculateAlignedTypingSessionConfidence:self->_alignedSession];
    v14 = [MEMORY[0x277D6F320] bucketPercentageWithValue:?];
    [(NSMutableDictionary *)self->_payload setObject:v14 forKeyedSubscript:kFeatureStringSessionAlignmentConfidence];

    v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[TITypingSessionAligned success](self->_alignedSession, "success")}];
    [(NSMutableDictionary *)self->_payload setObject:v15 forKeyedSubscript:@"sessionAlignmentSuccess"];

    userActionHistory = [(TITypingSession *)self->_session userActionHistory];
    lastObject = [userActionHistory lastObject];
    keyboardState = [lastObject keyboardState];

    v19 = [TIKBAnalyticsMetricsContext alloc];
    sessionParams = [(TITypingSession *)self->_session sessionParams];
    activeInputModes = [sessionParams activeInputModes];
    sessionParams2 = [(TITypingSession *)self->_session sessionParams];
    testingParameters = [sessionParams2 testingParameters];
    v24 = [(TIKBAnalyticsMetricsContext *)v19 initWithKeyboardState:keyboardState activeInputModes:activeInputModes testingParameters:testingParameters];

    v25 = self->_payload;
    v26 = [(TITypingSessionAlignmentConfidenceAnalyzer *)self _generateMetadataForTypingSessionFromContext:v24];
    [(NSMutableDictionary *)v25 addEntriesFromDictionary:v26];

    v27 = self->_payload;
    v28 = [(TITypingSessionAlignmentConfidenceAnalyzer *)self _generateFeatureUsageMetricsForContext:v24];
    [(NSMutableDictionary *)v27 addEntriesFromDictionary:v28];

    v29 = [(NSMutableDictionary *)self->_payload copy];
    [(TITypingSessionAlignmentConfidenceAnalyzer *)self dispatchEventWithPayload:v29];

    alignedSessionCopy = v31;
  }

  return confidence != 0;
}

- (id)_generateFeatureUsageMetricsForContext:(id)context
{
  v15[6] = *MEMORY[0x277D85DE8];
  session = self->_session;
  contextCopy = context;
  featureUsageMetricsCache = [(TITypingSession *)session featureUsageMetricsCache];
  v14[0] = kFeatureKeyboardUsage;
  v6 = [featureUsageMetricsCache featureUsageMetricFromName:? forContext:?];
  v15[0] = v6;
  v14[1] = kFeatureContinuousPathUsage;
  v7 = [featureUsageMetricsCache featureUsageMetricFromName:? forContext:?];
  v15[1] = v7;
  v14[2] = kFeatureCandidateBarUsage;
  v8 = [featureUsageMetricsCache featureUsageMetricFromName:? forContext:?];
  v15[2] = v8;
  v14[3] = kFeatureAutocorrectionUsage;
  v9 = [featureUsageMetricsCache featureUsageMetricFromName:? forContext:?];
  v15[3] = v9;
  v14[4] = kFeatureMultilingualUsage;
  v10 = [featureUsageMetricsCache featureUsageMetricFromName:? forContext:?];
  v15[4] = v10;
  v14[5] = kFeatureStringTypingSpeed;
  v11 = [featureUsageMetricsCache featureUsageMetricFromName:? forContext:?];

  v15[5] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:6];

  return v12;
}

- (id)_generateMetadataForTypingSessionFromContext:(id)context
{
  v15[7] = *MEMORY[0x277D85DE8];
  v14[0] = kFeatureStringKeyboardLanguage;
  contextCopy = context;
  inputLanguage = [contextCopy inputLanguage];
  v15[0] = inputLanguage;
  v14[1] = kFeatureStringKeyboardRegion;
  inputRegion = [contextCopy inputRegion];
  v15[1] = inputRegion;
  v14[2] = kFeatureStringKeyboardVariant;
  inputVariant = [contextCopy inputVariant];
  v15[2] = inputVariant;
  v14[3] = kFeatureStringKeyboardSecondaryLanguage;
  secondaryLanguage = [contextCopy secondaryLanguage];
  v15[3] = secondaryLanguage;
  v14[4] = kFeatureStringKeyboardSecondaryRegion;
  secondaryRegion = [contextCopy secondaryRegion];
  v15[4] = secondaryRegion;
  v14[5] = kFeatureStringKeyboardLayout;
  layoutName = [contextCopy layoutName];
  v15[5] = layoutName;
  v14[6] = kFeatureStringKeyboardType;
  keyboardType = [contextCopy keyboardType];

  v11 = [TIKBAnalyticsMetricsContext keyboardTypeEnumToString:keyboardType];
  v15[6] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:7];

  return v12;
}

- (id)_generatePercentageOfTotalWordsForAlignmentConfidencesFromRawCounts:(id)counts
{
  countsCopy = counts;
  v4 = objc_opt_new();
  v5 = [countsCopy objectForKeyedSubscript:@"totalAlignedWords"];
  intValue = [v5 intValue];

  if (intValue < 1)
  {
    [v4 setObject:&unk_28400BD18 forKeyedSubscript:@"fractionWordsAlignmentConfidenceHigh"];
    [v4 setObject:&unk_28400BD18 forKeyedSubscript:@"fractionWordsAlignmentConfidenceMid"];
    [v4 setObject:&unk_28400BD18 forKeyedSubscript:@"fractionWordsAlignmentConfidenceLow"];
    [v4 setObject:&unk_28400BD18 forKeyedSubscript:@"fractionWordsAlignmentConfidenceNone"];
  }

  else
  {
    v7 = MEMORY[0x277D6F320];
    v8 = [countsCopy objectForKeyedSubscript:@"countWordsAlignmentConfidenceHigh"];
    v9 = [countsCopy objectForKeyedSubscript:@"totalAlignedWords"];
    v10 = [v7 bucketPercentageWithNumerator:v8 andDenominator:v9];
    [v4 setObject:v10 forKeyedSubscript:@"fractionWordsAlignmentConfidenceHigh"];

    v11 = MEMORY[0x277D6F320];
    v12 = [countsCopy objectForKeyedSubscript:@"countWordsAlignmentConfidenceMid"];
    v13 = [countsCopy objectForKeyedSubscript:@"totalAlignedWords"];
    v14 = [v11 bucketPercentageWithNumerator:v12 andDenominator:v13];
    [v4 setObject:v14 forKeyedSubscript:@"fractionWordsAlignmentConfidenceMid"];

    v15 = MEMORY[0x277D6F320];
    v16 = [countsCopy objectForKeyedSubscript:@"countWordsAlignmentConfidenceLow"];
    v17 = [countsCopy objectForKeyedSubscript:@"totalAlignedWords"];
    v18 = [v15 bucketPercentageWithNumerator:v16 andDenominator:v17];
    [v4 setObject:v18 forKeyedSubscript:@"fractionWordsAlignmentConfidenceLow"];

    v19 = MEMORY[0x277D6F320];
    v20 = [countsCopy objectForKeyedSubscript:@"countWordsAlignmentConfidenceNone"];
    v21 = [countsCopy objectForKeyedSubscript:@"totalAlignedWords"];
    v22 = [v19 bucketPercentageWithNumerator:v20 andDenominator:v21];
    [v4 setObject:v22 forKeyedSubscript:@"fractionWordsAlignmentConfidenceNone"];
  }

  return v4;
}

- (id)_generateCountsOfWordsForAlignmentConfidences
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"countWordsAlignmentConfidenceHigh", &unk_28400BD18, @"countWordsAlignmentConfidenceMid", &unk_28400BD18, @"countWordsAlignmentConfidenceLow", &unk_28400BD18, @"countWordsAlignmentConfidenceNone", &unk_28400BD18, @"totalAlignedWords", 0}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  selfCopy = self;
  alignedEntries = [(TITypingSessionAligned *)self->_alignedSession alignedEntries];
  v5 = [alignedEntries countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(alignedEntries);
        }

        inSessionAlignmentConfidence = [*(*(&v19 + 1) + 8 * i) inSessionAlignmentConfidence];
        v10 = MEMORY[0x277CCABB0];
        v11 = @"countWordsAlignmentConfidenceNone";
        if ((inSessionAlignmentConfidence - 1) <= 2)
        {
          v11 = off_2787301E0[inSessionAlignmentConfidence - 1];
        }

        v12 = [v3 objectForKeyedSubscript:v11];
        v13 = [v10 numberWithInt:{objc_msgSend(v12, "intValue") + 1}];
        [v3 setObject:v13 forKeyedSubscript:v11];
      }

      v6 = [alignedEntries countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v14 = MEMORY[0x277CCABB0];
  alignedEntries2 = [(TITypingSessionAligned *)selfCopy->_alignedSession alignedEntries];
  v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(alignedEntries2, "count")}];
  [v3 setObject:v16 forKeyedSubscript:@"totalAlignedWords"];

  return v3;
}

- (TITypingSessionAlignmentConfidenceAnalyzer)init
{
  v6.receiver = self;
  v6.super_class = TITypingSessionAlignmentConfidenceAnalyzer;
  v2 = [(TITypingSessionAlignmentConfidenceAnalyzer *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    payload = v2->_payload;
    v2->_payload = v3;

    [(TITypingSessionAlignmentConfidenceAnalyzer *)v2 registerEventSpec];
  }

  return v2;
}

@end