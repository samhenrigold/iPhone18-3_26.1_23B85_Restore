@interface TITypingSessionBenchmarkAnalyzer
- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence;
- (TITypingSessionBenchmarkAnalyzer)init;
- (void)dispatchEvent;
- (void)registerEventSpec;
@end

@implementation TITypingSessionBenchmarkAnalyzer

- (void)dispatchEvent
{
  v31[15] = *MEMORY[0x277D85DE8];
  userActionHistory = [(TITypingSession *)self->_session userActionHistory];
  lastObject = [userActionHistory lastObject];
  keyboardState = [lastObject keyboardState];

  v5 = [TIKBAnalyticsMetricsContext alloc];
  sessionParams = [(TITypingSession *)self->_session sessionParams];
  activeInputModes = [sessionParams activeInputModes];
  sessionParams2 = [(TITypingSession *)self->_session sessionParams];
  testingParameters = [sessionParams2 testingParameters];
  v10 = [(TIKBAnalyticsMetricsContext *)v5 initWithKeyboardState:keyboardState activeInputModes:activeInputModes testingParameters:testingParameters];

  v30[0] = @"typingSessionConfidence";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_typingSessionConfidence];
  v31[0] = v28;
  v30[1] = kFeatureStringSessionAlignmentConfidence;
  v27 = [MEMORY[0x277D6F320] bucketRatioWithValue:10 bucketCount:self->_sessionAlignmentConfidence];
  v31[1] = v27;
  v30[2] = @"candidatesAccepted";
  v26 = [MEMORY[0x277CCABB0] numberWithInt:{-[TITypingSession candidatesAccepted](self->_session, "candidatesAccepted")}];
  v31[2] = v26;
  v30[3] = @"candidatesAcceptedWithText";
  v25 = [MEMORY[0x277CCABB0] numberWithInt:{-[TITypingSession candidatesAcceptedWithText](self->_session, "candidatesAcceptedWithText")}];
  v31[3] = v25;
  v30[4] = @"sessionWords";
  v24 = [MEMORY[0x277CCABB0] numberWithInt:self->_sessionWords];
  v31[4] = v24;
  v30[5] = @"sessionWordsWithText";
  v23 = [MEMORY[0x277CCABB0] numberWithInt:self->_sessionWordsWithText];
  v31[5] = v23;
  v30[6] = @"alignedWords";
  v22 = [MEMORY[0x277CCABB0] numberWithInt:self->_alignedWords];
  v31[6] = v22;
  v30[7] = @"alignedWordsWithText";
  v11 = [MEMORY[0x277CCABB0] numberWithInt:self->_alignedWordsWithText];
  v31[7] = v11;
  v30[8] = kFeatureStringKeyboardLanguage;
  inputLanguage = [(TIAnalyticsMetricsContext *)v10 inputLanguage];
  v31[8] = inputLanguage;
  v30[9] = kFeatureStringKeyboardRegion;
  inputRegion = [(TIAnalyticsMetricsContext *)v10 inputRegion];
  v31[9] = inputRegion;
  v30[10] = kFeatureStringKeyboardVariant;
  inputVariant = [(TIKBAnalyticsMetricsContext *)v10 inputVariant];
  v31[10] = inputVariant;
  v30[11] = kFeatureStringKeyboardSecondaryLanguage;
  secondaryLanguage = [(TIKBAnalyticsMetricsContext *)v10 secondaryLanguage];
  v31[11] = secondaryLanguage;
  v30[12] = kFeatureStringKeyboardSecondaryRegion;
  secondaryRegion = [(TIKBAnalyticsMetricsContext *)v10 secondaryRegion];
  v31[12] = secondaryRegion;
  v30[13] = kFeatureStringKeyboardLayout;
  layoutName = [(TIKBAnalyticsMetricsContext *)v10 layoutName];
  v31[13] = layoutName;
  v30[14] = kFeatureStringKeyboardType;
  v18 = [TIKBAnalyticsMetricsContext keyboardTypeEnumToString:[(TIKBAnalyticsMetricsContext *)v10 keyboardType]];
  v31[14] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:15];

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  testingParameters2 = [(TIKBAnalyticsMetricsContext *)v10 testingParameters];
  [mEMORY[0x277D6F318] dispatchEventWithName:@"typingSessionBenchmark" payload:v19 testingParameters:testingParameters2 allowSparsePayload:0];
}

- (void)registerEventSpec
{
  v21[15] = *MEMORY[0x277D85DE8];
  v16 = MEMORY[0x277D6F300];
  v20 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"typingSessionConfidence" minValue:&unk_28400BDA8 maxValue:&unk_28400BDC0 significantDigits:0];
  v21[0] = v20;
  v19 = [MEMORY[0x277D6F308] integerFieldSpecWithName:kFeatureStringSessionAlignmentConfidence minValue:&unk_28400BDA8 maxValue:&unk_28400BDD8 significantDigits:0];
  v21[1] = v19;
  v18 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"candidatesAccepted" minValue:&unk_28400BDA8 maxValue:0 significantDigits:0];
  v21[2] = v18;
  v17 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"candidatesAcceptedWithText" minValue:&unk_28400BDA8 maxValue:0 significantDigits:0];
  v21[3] = v17;
  v15 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"sessionWords" minValue:&unk_28400BDA8 maxValue:0 significantDigits:0];
  v21[4] = v15;
  v14 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"sessionWordsWithText" minValue:&unk_28400BDA8 maxValue:0 significantDigits:0];
  v21[5] = v14;
  v13 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"alignedWords" minValue:&unk_28400BDA8 maxValue:0 significantDigits:0];
  v21[6] = v13;
  v2 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"alignedWordsWithText" minValue:&unk_28400BDA8 maxValue:0 significantDigits:0];
  v21[7] = v2;
  v3 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLanguage];
  v21[8] = v3;
  v4 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardRegion];
  v21[9] = v4;
  v5 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardVariant];
  v21[10] = v5;
  v6 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryLanguage];
  v21[11] = v6;
  v7 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryRegion];
  v21[12] = v7;
  v8 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLayout];
  v21[13] = v8;
  v9 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardType];
  v21[14] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:15];
  v11 = [v16 eventSpecWithName:@"typingSessionBenchmark" inputModeRequired:0 fieldSpecs:v10];

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318] registerEventSpec:v11];
}

- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence
{
  v40 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  alignedSessionCopy = alignedSession;
  if (confidence)
  {
    v29 = alignedSessionCopy;
    objc_storeStrong(&self->_session, session);
    objc_storeStrong(&self->_alignedSession, alignedSession);
    self->_typingSessionConfidence = confidence;
    [TIStandardTypingSessionConfidenceEvaluator calculateAlignedTypingSessionConfidence:self->_alignedSession];
    self->_sessionAlignmentConfidence = v11;
    self->_sessionWords = 0;
    self->_sessionWordsWithText = 0;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    userActionHistory = [sessionCopy userActionHistory];
    v13 = [userActionHistory countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(userActionHistory);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          if (![v17 actionType])
          {
            ++self->_sessionWords;
            v18 = MEMORY[0x277D6F320];
            acceptedString = [v17 acceptedString];
            LODWORD(v18) = [v18 hasNonWhitespaceNonPunctuationText:acceptedString];

            if (v18)
            {
              ++self->_sessionWordsWithText;
            }
          }
        }

        v14 = [userActionHistory countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v14);
    }

    self->_alignedWords = 0;
    self->_alignedWordsWithText = 0;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    alignedEntries = [(TITypingSessionAligned *)self->_alignedSession alignedEntries];
    v21 = [alignedEntries countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v31;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(alignedEntries);
          }

          v25 = *(*(&v30 + 1) + 8 * j);
          ++self->_alignedWords;
          v26 = MEMORY[0x277D6F320];
          expectedString = [v25 expectedString];
          LODWORD(v26) = [v26 hasNonWhitespaceNonPunctuationText:expectedString];

          if (v26)
          {
            ++self->_alignedWordsWithText;
          }
        }

        v22 = [alignedEntries countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v22);
    }

    [(TITypingSessionBenchmarkAnalyzer *)self dispatchEvent];
    alignedSessionCopy = v29;
  }

  return confidence != 0;
}

- (TITypingSessionBenchmarkAnalyzer)init
{
  v5.receiver = self;
  v5.super_class = TITypingSessionBenchmarkAnalyzer;
  v2 = [(TITypingSessionBenchmarkAnalyzer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TITypingSessionBenchmarkAnalyzer *)v2 registerEventSpec];
  }

  return v3;
}

@end