@interface TITypingEffortAnalyzer
- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence;
- (BOOL)hasEmojiInKeyboardInputs:(id)inputs;
- (BOOL)isEmojiSearchCandidateSelection:(id)selection;
- (BOOL)isFlickInput:(id)input;
- (BOOL)isPopupVariantInput:(id)input inputMode:(id)mode;
- (BOOL)isTenKeyInputMode:(id)mode;
- (TITypingEffortAnalyzer)init;
- (id)countActions;
- (id)countOutput;
- (id)keyStringWithCode:(int64_t)code fromLayout:(id)layout;
- (int)countComposedCharactersInText:(id)text;
- (void)addActionsForCursorEvent:(id)event lastAction:(id)action nextAction:(id)nextAction toActionSummary:(id)summary emojiSearchMode:(BOOL)mode;
- (void)addActionsForDeleteWord:(id)word toActionSummary:(id)summary emojiSearchMode:(BOOL)mode;
- (void)addActionsForWordEntry:(id)entry toActionSummary:(id)summary emojiSearchMode:(BOOL)mode;
- (void)addCountsForAlignedEntry:(id)entry toOutputSummary:(id)summary;
- (void)addCountsForEmojiInputs:(id)inputs toOutputSummary:(id)summary;
- (void)addCountsForPropertyWithName:(id)name andEmojiSearchPropertyName:(id)propertyName contributesToTotal:(BOOL)total toActionSummary:(id)summary emojiSearchMode:(BOOL)mode;
- (void)addCountsForWord:(id)word toOutputSummary:(id)summary;
- (void)addKeyboardInputActionsForKeyboardInputs:(id)inputs inputMode:(id)mode toActionSummary:(id)summary andKeyboardInputTouches:(id)touches emojiSearchMode:(BOOL)searchMode;
- (void)addPathAndCandidateBarActionsForWordEntry:(id)entry toActionSummary:(id)summary andPathTouches:(id)touches emojiSearchMode:(BOOL)mode;
- (void)addPathWeightActionsForTouches:(id)touches withLayout:(id)layout forWord:(id)word toActionSummary:(id)summary emojiSearchMode:(BOOL)mode;
- (void)addSpecialKeyActionsForFirstTouch:(id)touch andLastTouch:(id)lastTouch fromLayout:(id)layout toActionSummary:(id)summary emojiSearchMode:(BOOL)mode;
- (void)addTouchRelatedActionsForTouches:(id)touches layouts:(id)layouts acceptedCandidate:(id)candidate toActionSummary:(id)summary keyboardInputTouches:(id)inputTouches pathTouches:(id)pathTouches emojiSearchMode:(BOOL)mode;
- (void)dispatchEventWithActionSummary:(id)summary outputSummary:(id)outputSummary;
- (void)registerEventSpec;
@end

@implementation TITypingEffortAnalyzer

- (void)dispatchEventWithActionSummary:(id)summary outputSummary:(id)outputSummary
{
  v146[86] = *MEMORY[0x277D85DE8];
  session = self->_session;
  outputSummaryCopy = outputSummary;
  summaryCopy = summary;
  userActionHistory = [(TITypingSession *)session userActionHistory];
  lastObject = [userActionHistory lastObject];
  keyboardState = [lastObject keyboardState];

  v12 = [TIKBAnalyticsMetricsContext alloc];
  sessionParams = [(TITypingSession *)self->_session sessionParams];
  activeInputModes = [sessionParams activeInputModes];
  sessionParams2 = [(TITypingSession *)self->_session sessionParams];
  testingParameters = [sessionParams2 testingParameters];
  v144 = keyboardState;
  v17 = [(TIKBAnalyticsMetricsContext *)v12 initWithKeyboardState:keyboardState activeInputModes:activeInputModes testingParameters:testingParameters];

  userActionHistory2 = [(TITypingSession *)self->_session userActionHistory];
  firstObject = [userActionHistory2 firstObject];
  keyboardState2 = [firstObject keyboardState];
  documentState = [keyboardState2 documentState];

  contextBeforeInput = [documentState contextBeforeInput];
  if (contextBeforeInput)
  {
    contextBeforeInput2 = [documentState contextBeforeInput];
    v24 = [contextBeforeInput2 length] != 0;
  }

  else
  {
    v24 = 0;
  }

  contextAfterInput = [documentState contextAfterInput];
  if (contextAfterInput)
  {
    contextAfterInput2 = [documentState contextAfterInput];
    v27 = [contextAfterInput2 length] != 0;
  }

  else
  {
    v27 = 0;
  }

  selectedText = [documentState selectedText];
  v143 = documentState;
  if (selectedText)
  {
    selectedText2 = [documentState selectedText];
    v30 = [selectedText2 length] != 0;

    v27 |= v30;
  }

  v31 = v27 | v24;
  v32 = [summaryCopy totalInputActions] > 0;
  v33 = [outputSummaryCopy charactersOutput] > 0;
  self->_hasCursorMovement = [summaryCopy cursorMovements] > 0;
  emojiSelections = [summaryCopy emojiSelections];
  v35 = [summaryCopy emojiCandidateSelections] + emojiSelections;
  emojiSearchCandidateSelections = [summaryCopy emojiSearchCandidateSelections];
  if ((v35 + emojiSearchCandidateSelections < 0) ^ __OFADD__(v35, emojiSearchCandidateSelections) | (v35 + emojiSearchCandidateSelections == 0))
  {
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  self->_hasEmojiInput = v37;
  [TIStandardTypingSessionConfidenceEvaluator calculateAlignedTypingSessionConfidence:self->_alignedSession];
  v39 = v38;
  v145[0] = @"totalInputActions";
  v142 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "totalInputActions")}];
  v146[0] = v142;
  v145[1] = @"characterKeyTaps";
  v141 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "characterKeyTaps")}];
  v146[1] = v141;
  v145[2] = @"backspaceKeyTaps";
  v140 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "backspaceKeyTaps")}];
  v146[2] = v140;
  v145[3] = @"spaceKeyTaps";
  v139 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "spaceKeyTaps")}];
  v146[3] = v139;
  v145[4] = @"returnKeyTaps";
  v138 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "returnKeyTaps")}];
  v146[4] = v138;
  v145[5] = @"shiftKeyTaps";
  v137 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "shiftKeyTaps")}];
  v146[5] = v137;
  v145[6] = @"moreKeyTaps";
  v136 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "moreKeyTaps")}];
  v146[6] = v136;
  v145[7] = @"emojiKeyTaps";
  v135 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiKeyTaps")}];
  v146[7] = v135;
  v145[8] = @"unknownKeyTaps";
  v134 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "unknownKeyTaps")}];
  v146[8] = v134;
  v145[9] = @"paths";
  v133 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "paths")}];
  v146[9] = v133;
  v145[10] = @"pathsWithWeight1";
  v132 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "pathsWithWeight1")}];
  v146[10] = v132;
  v145[11] = @"pathsWithWeight2";
  v131 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "pathsWithWeight2")}];
  v146[11] = v131;
  v145[12] = @"pathsWithWeight3";
  v130 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "pathsWithWeight3")}];
  v146[12] = v130;
  v145[13] = @"pathsWithWeight4";
  v129 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "pathsWithWeight4")}];
  v146[13] = v129;
  v145[14] = @"pathsWithWeight5";
  v128 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "pathsWithWeight5")}];
  v146[14] = v128;
  v145[15] = @"pathsWithWeight6";
  v127 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "pathsWithWeight6")}];
  v146[15] = v127;
  v145[16] = @"pathsWithWeight7";
  v126 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "pathsWithWeight7")}];
  v146[16] = v126;
  v145[17] = @"pathsWithWeight8";
  v125 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "pathsWithWeight8")}];
  v146[17] = v125;
  v145[18] = @"pathsWithWeight9";
  v124 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "pathsWithWeight9")}];
  v146[18] = v124;
  v145[19] = @"pathsWithWeight10";
  v123 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "pathsWithWeight10")}];
  v146[19] = v123;
  v145[20] = @"flicks";
  v122 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "flicks")}];
  v146[20] = v122;
  v145[21] = @"gestures";
  v121 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "gestures")}];
  v146[21] = v121;
  v145[22] = @"popupVariants";
  v120 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "popupVariants")}];
  v146[22] = v120;
  v145[23] = @"cursorMovements";
  v119 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "cursorMovements")}];
  v146[23] = v119;
  v145[24] = @"candidateSelections";
  v118 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "candidateSelections")}];
  v146[24] = v118;
  v145[25] = @"cuts";
  v117 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "cuts")}];
  v146[25] = v117;
  v145[26] = @"pastes";
  v116 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "pastes")}];
  v146[26] = v116;
  v145[27] = @"emojiSelections";
  v115 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSelections")}];
  v146[27] = v115;
  v145[28] = @"emojiCandidateSelections";
  v114 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiCandidateSelections")}];
  v146[28] = v114;
  v145[29] = @"emojiSearchCharacterKeyTaps";
  v113 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchCharacterKeyTaps")}];
  v146[29] = v113;
  v145[30] = @"emojiSearchBackspaceKeyTaps";
  v112 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchBackspaceKeyTaps")}];
  v146[30] = v112;
  v145[31] = @"emojiSearchSpaceKeyTaps";
  v111 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchSpaceKeyTaps")}];
  v146[31] = v111;
  v145[32] = @"emojiSearchShiftKeyTaps";
  v110 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchShiftKeyTaps")}];
  v146[32] = v110;
  v145[33] = @"emojiSearchMoreKeyTaps";
  v109 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchMoreKeyTaps")}];
  v146[33] = v109;
  v145[34] = @"emojiSearchEmojiKeyTaps";
  v108 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchEmojiKeyTaps")}];
  v146[34] = v108;
  v145[35] = @"emojiSearchUnknownKeyTaps";
  v107 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchUnknownKeyTaps")}];
  v146[35] = v107;
  v145[36] = @"emojiSearchPaths";
  v106 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPaths")}];
  v146[36] = v106;
  v145[37] = @"emojiSearchPathsWithWeight1";
  v105 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPathsWithWeight1")}];
  v146[37] = v105;
  v145[38] = @"emojiSearchPathsWithWeight2";
  v104 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPathsWithWeight2")}];
  v146[38] = v104;
  v145[39] = @"emojiSearchPathsWithWeight3";
  v103 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPathsWithWeight3")}];
  v146[39] = v103;
  v145[40] = @"emojiSearchPathsWithWeight4";
  v102 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPathsWithWeight4")}];
  v146[40] = v102;
  v145[41] = @"emojiSearchPathsWithWeight5";
  v101 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPathsWithWeight5")}];
  v146[41] = v101;
  v145[42] = @"emojiSearchPathsWithWeight6";
  v100 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPathsWithWeight6")}];
  v146[42] = v100;
  v145[43] = @"emojiSearchPathsWithWeight7";
  v99 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPathsWithWeight7")}];
  v146[43] = v99;
  v145[44] = @"emojiSearchPathsWithWeight8";
  v98 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPathsWithWeight8")}];
  v146[44] = v98;
  v145[45] = @"emojiSearchPathsWithWeight9";
  v97 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPathsWithWeight9")}];
  v146[45] = v97;
  v145[46] = @"emojiSearchPathsWithWeight10";
  v96 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPathsWithWeight10")}];
  v146[46] = v96;
  v145[47] = @"emojiSearchFlicks";
  v95 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchFlicks")}];
  v146[47] = v95;
  v145[48] = @"emojiSearchGestures";
  v94 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchGestures")}];
  v146[48] = v94;
  v145[49] = @"emojiSearchPopupVariants";
  v93 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchPopupVariants")}];
  v146[49] = v93;
  v145[50] = @"emojiSearchCursorMovements";
  v92 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchCursorMovements")}];
  v146[50] = v92;
  v145[51] = @"emojiSearchCandidateSelections";
  v91 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchCandidateSelections")}];
  v146[51] = v91;
  v145[52] = @"emojiSearchCuts";
  v90 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(summaryCopy, "emojiSearchCuts")}];
  v146[52] = v90;
  v145[53] = @"emojiSearchPastes";
  v40 = MEMORY[0x277CCABB0];
  emojiSearchPastes = [summaryCopy emojiSearchPastes];

  v89 = [v40 numberWithInt:emojiSearchPastes];
  v146[53] = v89;
  v145[54] = @"emojisOutput";
  v88 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(outputSummaryCopy, "emojisOutput")}];
  v146[54] = v88;
  v145[55] = @"wordsOutput";
  v87 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(outputSummaryCopy, "wordsOutput")}];
  v146[55] = v87;
  v145[56] = @"charactersOutput";
  v86 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(outputSummaryCopy, "charactersOutput")}];
  v146[56] = v86;
  v145[57] = @"char1WordsOutput";
  v85 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(outputSummaryCopy, "char1WordsOutput")}];
  v146[57] = v85;
  v145[58] = @"char2WordsOutput";
  v84 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(outputSummaryCopy, "char2WordsOutput")}];
  v146[58] = v84;
  v145[59] = @"char3WordsOutput";
  v83 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(outputSummaryCopy, "char3WordsOutput")}];
  v146[59] = v83;
  v145[60] = @"char4WordsOutput";
  v82 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(outputSummaryCopy, "char4WordsOutput")}];
  v146[60] = v82;
  v145[61] = @"char5WordsOutput";
  v81 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(outputSummaryCopy, "char5WordsOutput")}];
  v146[61] = v81;
  v145[62] = @"char6WordsOutput";
  v80 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(outputSummaryCopy, "char6WordsOutput")}];
  v146[62] = v80;
  v145[63] = @"char7WordsOutput";
  v79 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(outputSummaryCopy, "char7WordsOutput")}];
  v146[63] = v79;
  v145[64] = @"char8WordsOutput";
  v78 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(outputSummaryCopy, "char8WordsOutput")}];
  v146[64] = v78;
  v145[65] = @"char9PlusWordsOutput";
  v42 = MEMORY[0x277CCABB0];
  char9PlusWordsOutput = [outputSummaryCopy char9PlusWordsOutput];

  v77 = [v42 numberWithInt:char9PlusWordsOutput];
  v146[65] = v77;
  v145[66] = @"hasExistingText";
  v75 = [MEMORY[0x277CCABB0] numberWithBool:v31 & 1];
  v146[66] = v75;
  v145[67] = @"hasInput";
  v74 = [MEMORY[0x277CCABB0] numberWithBool:v32];
  v146[67] = v74;
  v145[68] = @"hasOutput";
  v73 = [MEMORY[0x277CCABB0] numberWithBool:v33];
  v146[68] = v73;
  v145[69] = @"hasCursorMovement";
  v72 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasCursorMovement];
  v146[69] = v72;
  v145[70] = @"hasEmojiInput";
  v71 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasEmojiInput];
  v146[70] = v71;
  v145[71] = kFeatureKeyboardUsage;
  featureUsageMetricsCache = [(TITypingSession *)self->_session featureUsageMetricsCache];
  v69 = [featureUsageMetricsCache featureUsageMetricFromName:kFeatureKeyboardUsage forContext:v17];
  v146[71] = v69;
  v145[72] = kFeatureContinuousPathUsage;
  featureUsageMetricsCache2 = [(TITypingSession *)self->_session featureUsageMetricsCache];
  v67 = [featureUsageMetricsCache2 featureUsageMetricFromName:kFeatureContinuousPathUsage forContext:v17];
  v146[72] = v67;
  v145[73] = kFeatureAutocorrectionUsage;
  featureUsageMetricsCache3 = [(TITypingSession *)self->_session featureUsageMetricsCache];
  v65 = [featureUsageMetricsCache3 featureUsageMetricFromName:kFeatureAutocorrectionUsage forContext:v17];
  v146[73] = v65;
  v145[74] = kFeatureCandidateBarUsage;
  featureUsageMetricsCache4 = [(TITypingSession *)self->_session featureUsageMetricsCache];
  v63 = [featureUsageMetricsCache4 featureUsageMetricFromName:kFeatureCandidateBarUsage forContext:v17];
  v146[74] = v63;
  v145[75] = kFeatureMultilingualUsage;
  featureUsageMetricsCache5 = [(TITypingSession *)self->_session featureUsageMetricsCache];
  v61 = [featureUsageMetricsCache5 featureUsageMetricFromName:kFeatureMultilingualUsage forContext:v17];
  v146[75] = v61;
  v145[76] = kFeatureStringTypingSpeed;
  featureUsageMetricsCache6 = [(TITypingSession *)self->_session featureUsageMetricsCache];
  v59 = [featureUsageMetricsCache6 featureUsageMetricFromName:kFeatureStringTypingSpeed forContext:v17];
  v146[76] = v59;
  v145[77] = kFeatureStringAssetAvailabilityStatus;
  sessionParams3 = [(TITypingSession *)self->_session sessionParams];
  assetAvailabilityStatus = [sessionParams3 assetAvailabilityStatus];
  v45 = @"Installed";
  if (!assetAvailabilityStatus)
  {
    v45 = @"Unavailable";
  }

  v46 = v45;
  v146[77] = v46;
  v145[78] = kFeatureStringSessionAlignmentConfidence;
  v47 = [MEMORY[0x277D6F320] bucketRatioWithValue:10 bucketCount:v39];
  v146[78] = v47;
  v145[79] = kFeatureStringKeyboardLanguage;
  inputLanguage = [(TIAnalyticsMetricsContext *)v17 inputLanguage];
  v146[79] = inputLanguage;
  v145[80] = kFeatureStringKeyboardRegion;
  inputRegion = [(TIAnalyticsMetricsContext *)v17 inputRegion];
  v146[80] = inputRegion;
  v145[81] = kFeatureStringKeyboardVariant;
  inputVariant = [(TIKBAnalyticsMetricsContext *)v17 inputVariant];
  v146[81] = inputVariant;
  v145[82] = kFeatureStringKeyboardSecondaryLanguage;
  secondaryLanguage = [(TIKBAnalyticsMetricsContext *)v17 secondaryLanguage];
  v146[82] = secondaryLanguage;
  v145[83] = kFeatureStringKeyboardSecondaryRegion;
  [(TIKBAnalyticsMetricsContext *)v17 secondaryRegion];
  v53 = v52 = v17;
  v146[83] = v53;
  v145[84] = kFeatureStringKeyboardLayout;
  layoutName = [(TIKBAnalyticsMetricsContext *)v52 layoutName];
  v146[84] = layoutName;
  v145[85] = kFeatureStringKeyboardType;
  v55 = [TIKBAnalyticsMetricsContext keyboardTypeEnumToString:[(TIKBAnalyticsMetricsContext *)v52 keyboardType]];
  v146[85] = v55;
  v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v146 forKeys:v145 count:86];

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  testingParameters2 = [(TIKBAnalyticsMetricsContext *)v52 testingParameters];
  [mEMORY[0x277D6F318] dispatchEventWithName:@"typingEffort" payload:v76 testingParameters:testingParameters2 allowSparsePayload:0];
}

- (void)registerEventSpec
{
  v113[86] = *MEMORY[0x277D85DE8];
  v88 = MEMORY[0x277D6F300];
  v112 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"totalInputActions" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[0] = v112;
  v111 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"characterKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[1] = v111;
  v110 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"backspaceKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[2] = v110;
  v109 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"spaceKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[3] = v109;
  v108 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"returnKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[4] = v108;
  v107 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"shiftKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[5] = v107;
  v106 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"moreKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[6] = v106;
  v105 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[7] = v105;
  v104 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"unknownKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[8] = v104;
  v103 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"paths" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[9] = v103;
  v102 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pathsWithWeight1" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[10] = v102;
  v101 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pathsWithWeight2" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[11] = v101;
  v100 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pathsWithWeight3" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[12] = v100;
  v99 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pathsWithWeight4" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[13] = v99;
  v98 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pathsWithWeight5" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[14] = v98;
  v97 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pathsWithWeight6" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[15] = v97;
  v96 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pathsWithWeight7" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[16] = v96;
  v95 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pathsWithWeight8" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[17] = v95;
  v94 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pathsWithWeight9" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[18] = v94;
  v93 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pathsWithWeight10" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[19] = v93;
  v92 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"flicks" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[20] = v92;
  v91 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"gestures" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[21] = v91;
  v90 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"popupVariants" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[22] = v90;
  v87 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"cursorMovements" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[23] = v87;
  v86 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"candidateSelections" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[24] = v86;
  v85 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"cuts" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[25] = v85;
  v84 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"pastes" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[26] = v84;
  v83 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSelections" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[27] = v83;
  v82 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiCandidateSelections" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[28] = v82;
  v81 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchCharacterKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[29] = v81;
  v80 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchBackspaceKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[30] = v80;
  v79 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchSpaceKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[31] = v79;
  v78 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchShiftKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[32] = v78;
  v77 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchMoreKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[33] = v77;
  v76 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchEmojiKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[34] = v76;
  v75 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchUnknownKeyTaps" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[35] = v75;
  v74 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPaths" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[36] = v74;
  v73 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPathsWithWeight1" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[37] = v73;
  v72 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPathsWithWeight2" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[38] = v72;
  v71 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPathsWithWeight3" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[39] = v71;
  v70 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPathsWithWeight4" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[40] = v70;
  v69 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPathsWithWeight5" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[41] = v69;
  v68 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPathsWithWeight6" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[42] = v68;
  v67 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPathsWithWeight7" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[43] = v67;
  v66 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPathsWithWeight8" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[44] = v66;
  v65 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPathsWithWeight9" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[45] = v65;
  v64 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPathsWithWeight10" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[46] = v64;
  v63 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchFlicks" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[47] = v63;
  v62 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchGestures" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[48] = v62;
  v61 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPopupVariants" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[49] = v61;
  v60 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchCursorMovements" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[50] = v60;
  v59 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchCandidateSelections" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[51] = v59;
  v58 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchCuts" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[52] = v58;
  v57 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojiSearchPastes" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[53] = v57;
  v56 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"emojisOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[54] = v56;
  v55 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"wordsOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[55] = v55;
  v54 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"charactersOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[56] = v54;
  v53 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"char1WordsOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[57] = v53;
  v52 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"char2WordsOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[58] = v52;
  v51 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"char3WordsOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[59] = v51;
  v50 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"char4WordsOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[60] = v50;
  v49 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"char5WordsOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[61] = v49;
  v48 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"char6WordsOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[62] = v48;
  v47 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"char7WordsOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[63] = v47;
  v46 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"char8WordsOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[64] = v46;
  v45 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"char9PlusWordsOutput" minValue:&unk_28400BE80 maxValue:0 significantDigits:0];
  v113[65] = v45;
  v44 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"hasExistingText"];
  v113[66] = v44;
  v43 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"hasInput"];
  v113[67] = v43;
  v42 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"hasOutput"];
  v113[68] = v42;
  v41 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"hasCursorMovement"];
  v113[69] = v41;
  v40 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"hasEmojiInput"];
  v113[70] = v40;
  v2 = MEMORY[0x277D6F308];
  v3 = kFeatureKeyboardUsage;
  v39 = TIFeatureUsageAllowedValues();
  v38 = [v2 stringFieldSpecWithName:v3 allowedValues:v39];
  v113[71] = v38;
  v4 = MEMORY[0x277D6F308];
  v5 = kFeatureContinuousPathUsage;
  v37 = TIFeatureUsageAllowedValues();
  v36 = [v4 stringFieldSpecWithName:v5 allowedValues:v37];
  v113[72] = v36;
  v6 = MEMORY[0x277D6F308];
  v7 = kFeatureAutocorrectionUsage;
  v35 = TIFeatureUsageAllowedValues();
  v34 = [v6 stringFieldSpecWithName:v7 allowedValues:v35];
  v113[73] = v34;
  v8 = MEMORY[0x277D6F308];
  v9 = kFeatureCandidateBarUsage;
  v33 = TIFeatureUsageAllowedValues();
  v32 = [v8 stringFieldSpecWithName:v9 allowedValues:v33];
  v113[74] = v32;
  v10 = MEMORY[0x277D6F308];
  v11 = kFeatureMultilingualUsage;
  v31 = TIFeatureUsageAllowedValues();
  v30 = [v10 stringFieldSpecWithName:v11 allowedValues:v31];
  v113[75] = v30;
  v12 = MEMORY[0x277D6F308];
  v13 = kFeatureStringTypingSpeed;
  v29 = TITypingSpeedAllowedValues();
  v28 = [v12 stringFieldSpecWithName:v13 allowedValues:v29];
  v113[76] = v28;
  v14 = MEMORY[0x277D6F308];
  v15 = kFeatureStringAssetAvailabilityStatus;
  v27 = TIAssetAvailabilityStatusAllowedValues();
  v16 = [v14 stringFieldSpecWithName:v15 allowedValues:v27];
  v113[77] = v16;
  v17 = [MEMORY[0x277D6F308] integerFieldSpecWithName:kFeatureStringSessionAlignmentConfidence minValue:&unk_28400BE80 maxValue:&unk_28400BE98 significantDigits:0];
  v113[78] = v17;
  v18 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLanguage];
  v113[79] = v18;
  v19 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardRegion];
  v113[80] = v19;
  v20 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardVariant];
  v113[81] = v20;
  v21 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryLanguage];
  v113[82] = v21;
  v22 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryRegion];
  v113[83] = v22;
  v23 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLayout];
  v113[84] = v23;
  v24 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardType];
  v113[85] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:86];
  v89 = [v88 eventSpecWithName:@"typingEffort" inputModeRequired:0 fieldSpecs:v25];

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318] registerEventSpec:v89];
}

- (void)addCountsForPropertyWithName:(id)name andEmojiSearchPropertyName:(id)propertyName contributesToTotal:(BOOL)total toActionSummary:(id)summary emojiSearchMode:(BOOL)mode
{
  modeCopy = mode;
  totalCopy = total;
  nameCopy = name;
  propertyNameCopy = propertyName;
  summaryCopy = summary;
  v14 = objc_msgSend_isEqualToString_(nameCopy) | modeCopy;
  if (v14 == 1 && !self->_emojiPlaneActive)
  {
    [summaryCopy setEmojiKeyTaps:{objc_msgSend(summaryCopy, "emojiKeyTaps") + 1}];
    [summaryCopy setTotalInputActions:{objc_msgSend(summaryCopy, "totalInputActions") + 1}];
    self->_emojiPlaneActive = 1;
  }

  if (modeCopy)
  {
    if (!self->_emojiSearchActive)
    {
      [summaryCopy setEmojiSearchCursorMovements:{objc_msgSend(summaryCopy, "emojiSearchCursorMovements") + 1}];
      [summaryCopy setTotalInputActions:{objc_msgSend(summaryCopy, "totalInputActions") + 1}];
      self->_emojiSearchActive = 1;
    }
  }

  else
  {
    if (self->_emojiSearchActive)
    {
      [summaryCopy setEmojiSearchEmojiKeyTaps:{objc_msgSend(summaryCopy, "emojiSearchEmojiKeyTaps") + 1}];
      [summaryCopy setReturnKeyTaps:{objc_msgSend(summaryCopy, "returnKeyTaps") - 1}];
      self->_emojiSearchActive = 0;
    }

    if ((v14 & 1) == 0 && self->_emojiPlaneActive)
    {
      [summaryCopy setMoreKeyTaps:{objc_msgSend(summaryCopy, "moreKeyTaps") + 1}];
      [summaryCopy setTotalInputActions:{objc_msgSend(summaryCopy, "totalInputActions") + 1}];
      self->_emojiPlaneActive = 0;
    }
  }

  if (propertyNameCopy != 0 && modeCopy)
  {
    v15 = propertyNameCopy;
  }

  else
  {
    v15 = nameCopy;
  }

  v16 = v15;
  v17 = [summaryCopy valueForKey:v16];
  intValue = [v17 intValue];

  v19 = [MEMORY[0x277CCABB0] numberWithInt:(intValue + 1)];
  [summaryCopy setValue:v19 forKey:v16];

  if (totalCopy)
  {
    [summaryCopy setTotalInputActions:{objc_msgSend(summaryCopy, "totalInputActions") + 1}];
  }
}

- (int)countComposedCharactersInText:(id)text
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  textCopy = text;
  v4 = [textCopy length];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__TITypingEffortAnalyzer_countComposedCharactersInText___block_invoke;
  v6[3] = &unk_278732850;
  v6[4] = &v7;
  [textCopy enumerateSubstringsInRange:0 options:v4 usingBlock:{2, v6}];

  LODWORD(textCopy) = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return textCopy;
}

- (BOOL)hasEmojiInKeyboardInputs:(id)inputs
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  inputsCopy = inputs;
  v4 = [inputsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(inputsCopy);
        }

        v7 = objc_msgSend_string(*(*(&v10 + 1) + 8 * i), v10);
        _containsEmoji = [v7 _containsEmoji];

        if (_containsEmoji)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [inputsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)addCountsForWord:(id)word toOutputSummary:(id)summary
{
  summaryCopy = summary;
  v6 = [(TITypingEffortAnalyzer *)self countComposedCharactersInText:word];
  if (v6 >= 1)
  {
    if (v6 > 4)
    {
      if (v6 > 6)
      {
        if (v6 == 7)
        {
          [summaryCopy setChar7WordsOutput:{objc_msgSend(summaryCopy, "char7WordsOutput") + 1}];
        }

        else if (v6 == 8)
        {
          [summaryCopy setChar8WordsOutput:{objc_msgSend(summaryCopy, "char8WordsOutput") + 1}];
        }

        else
        {
          [summaryCopy setChar9PlusWordsOutput:{objc_msgSend(summaryCopy, "char9PlusWordsOutput") + 1}];
        }
      }

      else if (v6 == 5)
      {
        [summaryCopy setChar5WordsOutput:{objc_msgSend(summaryCopy, "char5WordsOutput") + 1}];
      }

      else
      {
        [summaryCopy setChar6WordsOutput:{objc_msgSend(summaryCopy, "char6WordsOutput") + 1}];
      }
    }

    else if (v6 > 2)
    {
      if (v6 == 3)
      {
        [summaryCopy setChar3WordsOutput:{objc_msgSend(summaryCopy, "char3WordsOutput") + 1}];
      }

      else
      {
        [summaryCopy setChar4WordsOutput:{objc_msgSend(summaryCopy, "char4WordsOutput") + 1}];
      }
    }

    else if (v6 == 1)
    {
      [summaryCopy setChar1WordsOutput:{objc_msgSend(summaryCopy, "char1WordsOutput") + 1}];
    }

    else
    {
      [summaryCopy setChar2WordsOutput:{objc_msgSend(summaryCopy, "char2WordsOutput") + 1}];
    }

    [summaryCopy setWordsOutput:{objc_msgSend(summaryCopy, "wordsOutput") + 1}];
  }
}

- (void)addCountsForEmojiInputs:(id)inputs toOutputSummary:(id)summary
{
  v18 = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  summaryCopy = summary;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [inputsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(inputsCopy);
        }

        v11 = objc_msgSend_string(*(*(&v13 + 1) + 8 * v10));
        _containsEmoji = [v11 _containsEmoji];

        if (_containsEmoji)
        {
          [summaryCopy setEmojisOutput:{objc_msgSend(summaryCopy, "emojisOutput") + 1}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [inputsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)addCountsForAlignedEntry:(id)entry toOutputSummary:(id)summary
{
  entryCopy = entry;
  summaryCopy = summary;
  originalWord = [entryCopy originalWord];
  editedEntry = [originalWord editedEntry];
  originalWord2 = [entryCopy originalWord];
  v10 = originalWord2;
  if (editedEntry)
  {
    editedEntry2 = [originalWord2 editedEntry];

    v10 = editedEntry2;
  }

  acceptedCandidate = [v10 acceptedCandidate];
  candidate = [acceptedCandidate candidate];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v15 = [candidate stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
  v17 = [v15 stringByTrimmingCharactersInSet:punctuationCharacterSet];

  keyboardState = [v10 keyboardState];
  LOBYTE(v15) = [keyboardState emojiSearchMode];

  if ((v15 & 1) == 0)
  {
    if ([v17 _containsEmoji])
    {
      [summaryCopy setEmojisOutput:{objc_msgSend(summaryCopy, "emojisOutput") + 1}];
    }

    else
    {
      alignedKeyboardInputs = [entryCopy alignedKeyboardInputs];
      [(TITypingEffortAnalyzer *)self addCountsForEmojiInputs:alignedKeyboardInputs toOutputSummary:summaryCopy];

      [(TITypingEffortAnalyzer *)self addCountsForWord:v17 toOutputSummary:summaryCopy];
    }
  }
}

- (id)countOutput
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  alignedEntries = [(TITypingSessionAligned *)self->_alignedSession alignedEntries];
  v5 = [alignedEntries countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(alignedEntries);
        }

        [(TITypingEffortAnalyzer *)self addCountsForAlignedEntry:*(*(&v11 + 1) + 8 * i) toOutputSummary:v3];
      }

      v6 = [alignedEntries countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  completeText = [(TITypingSessionAligned *)self->_alignedSession completeText];
  [v3 setCharactersOutput:{-[TITypingEffortAnalyzer countComposedCharactersInText:](self, "countComposedCharactersInText:", completeText)}];

  return v3;
}

- (BOOL)isEmojiSearchCandidateSelection:(id)selection
{
  selectionCopy = selection;
  acceptedString = [selectionCopy acceptedString];
  if (acceptedString)
  {
    acceptedString2 = [selectionCopy acceptedString];
    v6 = [acceptedString2 length];

    if (v6 && ([selectionCopy acceptedCandidate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isContinuousPathConversion"), v7, (v8 & 1) == 0) && (objc_msgSend(selectionCopy, "wordEntryType") & 4) != 0)
    {
      acceptedCandidate = [selectionCopy acceptedCandidate];
      candidate = [acceptedCandidate candidate];
      LOBYTE(acceptedString) = [candidate _containsEmoji];
    }

    else
    {
      LOBYTE(acceptedString) = 0;
    }
  }

  return acceptedString;
}

- (void)addActionsForCursorEvent:(id)event lastAction:(id)action nextAction:(id)nextAction toActionSummary:(id)summary emojiSearchMode:(BOOL)mode
{
  modeCopy = mode;
  eventCopy = event;
  actionCopy = action;
  nextActionCopy = nextAction;
  summaryCopy = summary;
  userActionHistory = [(TITypingSession *)self->_session userActionHistory];
  firstObject = [userActionHistory firstObject];
  if (firstObject == eventCopy)
  {

    goto LABEL_17;
  }

  userActionHistory2 = [(TITypingSession *)self->_session userActionHistory];
  lastObject = [userActionHistory2 lastObject];

  if (lastObject == eventCopy)
  {
    goto LABEL_17;
  }

  keyboardState = [actionCopy keyboardState];
  emojiSearchMode = [keyboardState emojiSearchMode];
  v21 = emojiSearchMode;
  if (!modeCopy)
  {
    if (emojiSearchMode)
    {
      v23 = actionCopy;
LABEL_13:
      actionType = [v23 actionType];

      if (actionType == 2)
      {
        goto LABEL_17;
      }

LABEL_16:
      [(TITypingEffortAnalyzer *)self addCountsForPropertyWithName:@"cursorMovements" andEmojiSearchPropertyName:@"emojiSearchCursorMovements" contributesToTotal:1 toActionSummary:summaryCopy emojiSearchMode:modeCopy];
      goto LABEL_17;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!v21)
  {
    goto LABEL_17;
  }

  keyboardState2 = [actionCopy keyboardState];
  if (![keyboardState2 emojiSearchMode] || objc_msgSend(actionCopy, "actionType"))
  {

    goto LABEL_8;
  }

  v25 = [(TITypingEffortAnalyzer *)self isEmojiSearchCandidateSelection:actionCopy];

  if (!v25)
  {
LABEL_8:
    keyboardState = [nextActionCopy keyboardState];
    if (([keyboardState emojiSearchMode] & 1) == 0)
    {
      v23 = nextActionCopy;
      goto LABEL_13;
    }

    goto LABEL_15;
  }

LABEL_17:
}

- (id)keyStringWithCode:(int64_t)code fromLayout:(id)layout
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__TITypingEffortAnalyzer_keyStringWithCode_fromLayout___block_invoke;
  v6[3] = &unk_2787335F8;
  v6[4] = &v7;
  v6[5] = code;
  [layout enumerateKeysUsingBlock:v6];
  if (v8[3])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __55__TITypingEffortAnalyzer_keyStringWithCode_fromLayout___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 40) == a3)
  {
    *(*(*(result + 32) + 8) + 24) = a2;
    *a4 = 1;
  }

  return result;
}

- (void)addSpecialKeyActionsForFirstTouch:(id)touch andLastTouch:(id)lastTouch fromLayout:(id)layout toActionSummary:(id)summary emojiSearchMode:(BOOL)mode
{
  modeCopy = mode;
  touchCopy = touch;
  lastTouchCopy = lastTouch;
  summaryCopy = summary;
  if (layout)
  {
    layoutCopy = layout;
    v15 = [lastTouchCopy forcedKeyCode] == -1;
    v16 = touchCopy;
    if (!v15)
    {
      v16 = lastTouchCopy;
    }

    v17 = -[TITypingEffortAnalyzer keyStringWithCode:fromLayout:](self, "keyStringWithCode:fromLayout:", [v16 forcedKeyCode], layoutCopy);

    if (objc_msgSend_isEqualToString_(v17))
    {
      v18 = @"shiftKeyTaps";
      v19 = @"emojiSearchShiftKeyTaps";
    }

    else if (objc_msgSend_isEqualToString_(v17))
    {
      v18 = @"moreKeyTaps";
      v19 = @"emojiSearchMoreKeyTaps";
    }

    else if (objc_msgSend_isEqualToString_(v17))
    {
      v18 = @"returnKeyTaps";
      v19 = @"emojiSearchEmojiKeyTaps";
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(v17))
      {
LABEL_13:

        goto LABEL_14;
      }

      v18 = @"spaceKeyTaps";
      v19 = @"emojiSearchSpaceKeyTaps";
    }

    [(TITypingEffortAnalyzer *)self addCountsForPropertyWithName:v18 andEmojiSearchPropertyName:v19 contributesToTotal:1 toActionSummary:summaryCopy emojiSearchMode:modeCopy];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)addPathWeightActionsForTouches:(id)touches withLayout:(id)layout forWord:(id)word toActionSummary:(id)summary emojiSearchMode:(BOOL)mode
{
  modeCopy = mode;
  v46 = *MEMORY[0x277D85DE8];
  touchesCopy = touches;
  layoutCopy = layout;
  wordCopy = word;
  summaryCopy = summary;
  if (layoutCopy)
  {
    [layoutCopy frame];
    v17 = v16;
    [layoutCopy frame];
    v19 = v18;
    [layoutCopy frame];
    v21 = v20;
    [layoutCopy frame];
    v23 = v22;
    if (v21 <= 0.0 || v22 <= 0.0)
    {
      v41 = IXADefaultLogFacility();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Invalid layout dimensions: width: %f height: %f", "-[TITypingEffortAnalyzer addPathWeightActionsForTouches:withLayout:forWord:toActionSummary:emojiSearchMode:]", *&v21, *&v23];
        *buf = 138412290;
        v45 = v42;
        _os_log_error_impl(&dword_22CA55000, v41, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    else
    {
      if ([touchesCopy count] < 2)
      {
        goto LABEL_8;
      }

      v43 = v17;
      v24 = 0.0;
      v25 = 1;
      do
      {
        v26 = [touchesCopy objectAtIndex:v25 - 1];
        [v26 location];
        v27 = v23;
        v28 = v21;
        v30 = v29;
        v32 = v31;

        v33 = [touchesCopy objectAtIndex:v25];
        [v33 location];
        v35 = v34;
        v37 = v36;

        v38 = v30 - v43;
        v21 = v28;
        v23 = v27;
        v24 = v24 + sqrt(((v35 - v43) / v21 - v38 / v21) * ((v35 - v43) / v21 - v38 / v21) + ((v37 - v19) / v27 - (v32 - v19) / v27) * ((v37 - v19) / v27 - (v32 - v19) / v27));
        ++v25;
      }

      while ([touchesCopy count] > v25);
      if (v24 >= 0.5)
      {
        if (v24 >= 1.0)
        {
          if (v24 >= 1.5)
          {
            if (v24 >= 2.0)
            {
              if (v24 >= 2.5)
              {
                if (v24 >= 3.0)
                {
                  if (v24 >= 3.5)
                  {
                    if (v24 >= 4.0)
                    {
                      if (v24 >= 4.5)
                      {
                        v40 = @"pathsWithWeight10";
                      }

                      else
                      {
                        v40 = @"pathsWithWeight9";
                      }

                      if (v24 >= 4.5)
                      {
                        v39 = @"emojiSearchPathsWithWeight10";
                      }

                      else
                      {
                        v39 = @"emojiSearchPathsWithWeight9";
                      }
                    }

                    else
                    {
                      v39 = @"emojiSearchPathsWithWeight8";
                      v40 = @"pathsWithWeight8";
                    }
                  }

                  else
                  {
                    v39 = @"emojiSearchPathsWithWeight7";
                    v40 = @"pathsWithWeight7";
                  }
                }

                else
                {
                  v39 = @"emojiSearchPathsWithWeight6";
                  v40 = @"pathsWithWeight6";
                }
              }

              else
              {
                v39 = @"emojiSearchPathsWithWeight5";
                v40 = @"pathsWithWeight5";
              }
            }

            else
            {
              v39 = @"emojiSearchPathsWithWeight4";
              v40 = @"pathsWithWeight4";
            }
          }

          else
          {
            v39 = @"emojiSearchPathsWithWeight3";
            v40 = @"pathsWithWeight3";
          }
        }

        else
        {
          v39 = @"emojiSearchPathsWithWeight2";
          v40 = @"pathsWithWeight2";
        }
      }

      else
      {
LABEL_8:
        v39 = @"emojiSearchPathsWithWeight1";
        v40 = @"pathsWithWeight1";
      }

      [(TITypingEffortAnalyzer *)self addCountsForPropertyWithName:v40 andEmojiSearchPropertyName:v39 contributesToTotal:0 toActionSummary:summaryCopy emojiSearchMode:modeCopy];
    }
  }
}

- (void)addTouchRelatedActionsForTouches:(id)touches layouts:(id)layouts acceptedCandidate:(id)candidate toActionSummary:(id)summary keyboardInputTouches:(id)inputTouches pathTouches:(id)pathTouches emojiSearchMode:(BOOL)mode
{
  v45 = *MEMORY[0x277D85DE8];
  layoutsCopy = layouts;
  candidateCopy = candidate;
  summaryCopy = summary;
  inputTouchesCopy = inputTouches;
  pathTouchesCopy = pathTouches;
  v15 = [touches mutableCopy];
  v37 = layoutsCopy;
  v16 = [layoutsCopy mutableCopy];
  if (![v15 count])
  {
    goto LABEL_33;
  }

  v17 = 0x277CCA000uLL;
  do
  {
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v20 = [v16 objectAtIndex:0];
    integerValue = [v20 integerValue];

    layouts = [(TITypingSession *)self->_session layouts];
    v23 = [layouts objectAtIndexedSubscript:integerValue];

    v24 = [v15 objectAtIndex:0];
    v25 = [*(v17 + 2992) numberWithInteger:0];
    [v19 addObject:v25];

    [v18 addObject:v24];
    if ([v15 count] < 2)
    {
LABEL_12:
      v30 = 0;
      goto LABEL_16;
    }

    v26 = 1;
    while (1)
    {
      v27 = [v15 objectAtIndex:v26];
      pathIndex = [v27 pathIndex];
      if (pathIndex != [v24 pathIndex])
      {
        goto LABEL_11;
      }

      if (![v27 stage])
      {
        break;
      }

      if ([v27 stage] == 2 || objc_msgSend(v27, "stage") == 3 || objc_msgSend(v27, "stage") == 5)
      {
        v27 = v27;
        v31 = [*(v17 + 2992) numberWithInt:v26];
        [v19 addObject:v31];

        [v18 addObject:v27];
        v30 = v27;
        goto LABEL_15;
      }

      v29 = [*(v17 + 2992) numberWithInt:v26];
      [v19 addObject:v29];

      [v18 addObject:v27];
LABEL_11:

      if ([v15 count] <= ++v26)
      {
        goto LABEL_12;
      }
    }

    v30 = 0;
LABEL_15:

LABEL_16:
    if ([v24 stage])
    {

      v24 = 0;
      goto LABEL_18;
    }

    if (v24 && v30)
    {
      if (pathTouchesCopy && [pathTouchesCopy containsObject:v30])
      {
        candidate = [candidateCopy candidate];
        [(TITypingEffortAnalyzer *)self addPathWeightActionsForTouches:v18 withLayout:v23 forWord:candidate toActionSummary:summaryCopy emojiSearchMode:mode];
        goto LABEL_21;
      }

      if (([inputTouchesCopy containsObject:v30] & 1) == 0)
      {
        [(TITypingEffortAnalyzer *)self addSpecialKeyActionsForFirstTouch:v24 andLastTouch:v30 fromLayout:v23 toActionSummary:summaryCopy emojiSearchMode:mode];
      }
    }

    else
    {
LABEL_18:
      if (IXACanLogMessageAtLevel())
      {
        candidate = IXADefaultLogFacility();
        if (os_log_type_enabled(candidate, OS_LOG_TYPE_DEBUG))
        {
          v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s An incomplete touch path was detected", "-[TITypingEffortAnalyzer addTouchRelatedActionsForTouches:layouts:acceptedCandidate:toActionSummary:keyboardInputTouches:pathTouches:emojiSearchMode:]"];
          *buf = 138412290;
          v44 = v36;
          _os_log_debug_impl(&dword_22CA55000, candidate, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

LABEL_21:
      }
    }

    v33 = [v19 count] - 1;
    if (v33 >= 0)
    {
      do
      {
        v34 = [v19 objectAtIndex:v33];
        integerValue2 = [v34 integerValue];

        [v15 removeObjectAtIndex:integerValue2];
        [v16 removeObjectAtIndex:integerValue2];
        --v33;
      }

      while (v33 != -1);
    }

    v17 = 0x277CCA000;
  }

  while ([v15 count]);
LABEL_33:
}

- (void)addPathAndCandidateBarActionsForWordEntry:(id)entry toActionSummary:(id)summary andPathTouches:(id)touches emojiSearchMode:(BOOL)mode
{
  modeCopy = mode;
  v35 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  summaryCopy = summary;
  touchesCopy = touches;
  acceptedCandidate = [entryCopy acceptedCandidate];
  if (acceptedCandidate)
  {
    v14 = acceptedCandidate;
    acceptedString = [entryCopy acceptedString];
    if (acceptedString)
    {
      v16 = acceptedString;
      acceptedString2 = [entryCopy acceptedString];
      v18 = [acceptedString2 length];

      if (v18)
      {
        acceptedCandidate2 = [entryCopy acceptedCandidate];
        isContinuousPathConversion = [acceptedCandidate2 isContinuousPathConversion];

        if (isContinuousPathConversion)
        {
          allTouches = [entryCopy allTouches];
          v22 = [allTouches count];

          if (v22)
          {
            allTouches2 = [entryCopy allTouches];
            lastObject = [allTouches2 lastObject];
            [touchesCopy addObject:lastObject];

            v25 = @"paths";
            v26 = @"emojiSearchPaths";
            goto LABEL_11;
          }

          v31 = IXADefaultLogFacility();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s A continuous path conversion with no touch data was found.", "-[TITypingEffortAnalyzer addPathAndCandidateBarActionsForWordEntry:toActionSummary:andPathTouches:emojiSearchMode:]"];
            *buf = 138412290;
            v34 = v32;
            _os_log_error_impl(&dword_22CA55000, v31, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }

        else if (([entryCopy wordEntryType] & 4) != 0)
        {
          acceptedCandidate3 = [entryCopy acceptedCandidate];
          candidate = [acceptedCandidate3 candidate];
          _containsEmoji = [candidate _containsEmoji];

          if (!_containsEmoji)
          {
            v25 = @"candidateSelections";
            selfCopy2 = self;
            v26 = 0;
            goto LABEL_16;
          }

          v25 = @"emojiCandidateSelections";
          v26 = @"emojiSearchCandidateSelections";
LABEL_11:
          selfCopy2 = self;
LABEL_16:
          [(TITypingEffortAnalyzer *)selfCopy2 addCountsForPropertyWithName:v25 andEmojiSearchPropertyName:v26 contributesToTotal:1 toActionSummary:summaryCopy emojiSearchMode:modeCopy];
        }
      }
    }

    else
    {
    }
  }
}

- (BOOL)isTenKeyInputMode:(id)mode
{
  modeCopy = mode;
  v4 = TIInputModeGetNormalizedIdentifier();
  v5 = TIInputModeGetSWLayout();

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@@sw=%@", v4, v5];
  v7 = [&unk_28400BAF0 containsObject:v6];

  return v7;
}

- (BOOL)isPopupVariantInput:(id)input inputMode:(id)mode
{
  modeCopy = mode;
  if ([input isPopupVariant])
  {
    v7 = ![(TITypingEffortAnalyzer *)self isTenKeyInputMode:modeCopy];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)isFlickInput:(id)input
{
  inputCopy = input;
  if ([inputCopy isFlick])
  {
    isGesture = 1;
  }

  else
  {
    isGesture = [inputCopy isGesture];
  }

  return isGesture;
}

- (void)addKeyboardInputActionsForKeyboardInputs:(id)inputs inputMode:(id)mode toActionSummary:(id)summary andKeyboardInputTouches:(id)touches emojiSearchMode:(BOOL)searchMode
{
  searchModeCopy = searchMode;
  v52 = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  modeCopy = mode;
  v14 = searchModeCopy;
  v46 = modeCopy;
  summaryCopy = summary;
  touchesCopy = touches;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v17 = [inputsCopy countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v48;
    v45 = summaryCopy;
    v43 = inputsCopy;
    v42 = searchModeCopy;
    do
    {
      v20 = 0;
      do
      {
        if (*v48 != v19)
        {
          objc_enumerationMutation(inputsCopy);
        }

        v21 = *(*(&v47 + 1) + 8 * v20);
        touchEvent = [v21 touchEvent];

        if (touchEvent)
        {
          touchEvent2 = [v21 touchEvent];
          [touchesCopy addObject:touchEvent2];
        }

        if (([v21 isSynthesizedByAcceptingCandidate] & 1) == 0)
        {
          touchEvent3 = [v21 touchEvent];

          if (touchEvent3)
          {
            goto LABEL_37;
          }

          v28 = objc_msgSend_string(v21);
          _containsEmoji = [v28 _containsEmoji];

          if (_containsEmoji)
          {
            selfCopy5 = self;
            v26 = @"emojiSelections";
            v27 = 0;
            summaryCopy = v45;
            goto LABEL_24;
          }

          summaryCopy = v45;
          if (objc_msgSend_isEqualToString_(v46))
          {
LABEL_37:
            if ([(TITypingEffortAnalyzer *)self isFlickInput:v21])
            {
              selfCopy5 = self;
              v26 = @"flicks";
              v27 = @"emojiSearchFlicks";
              goto LABEL_24;
            }

            if ([(TITypingEffortAnalyzer *)self isPopupVariantInput:v21 inputMode:v46])
            {
              selfCopy5 = self;
              v26 = @"popupVariants";
              v27 = @"emojiSearchPopupVariants";
              goto LABEL_24;
            }

            if ([v21 isBackspace])
            {
              selfCopy5 = self;
              v26 = @"backspaceKeyTaps";
              v27 = @"emojiSearchBackspaceKeyTaps";
              goto LABEL_24;
            }

            v30 = objc_msgSend_string(v21);
            if (objc_msgSend_isEqualToString_(v30))
            {

LABEL_23:
              selfCopy5 = self;
              v26 = @"spaceKeyTaps";
              v27 = @"emojiSearchSpaceKeyTaps";
LABEL_24:
              [(TITypingEffortAnalyzer *)selfCopy5 addCountsForPropertyWithName:v26 andEmojiSearchPropertyName:v27 contributesToTotal:1 toActionSummary:summaryCopy emojiSearchMode:v14];
              goto LABEL_25;
            }

            v31 = objc_msgSend_string(v21);
            sessionParams = [(TITypingSession *)self->_session sessionParams];
            wordSeparator = [sessionParams wordSeparator];
            isEqualToString = objc_msgSend_isEqualToString_(v31);

            inputsCopy = v43;
            v14 = v42;

            summaryCopy = v45;
            if (isEqualToString)
            {
              goto LABEL_23;
            }

            v34 = objc_msgSend_string(v21);
            v35 = objc_msgSend_isEqualToString_(v34);

            if (v35)
            {
              selfCopy7 = self;
              v37 = @"returnKeyTaps";
              v38 = 0;
            }

            else
            {
              v39 = objc_msgSend_string(v21);
              v40 = [v39 length];

              selfCopy7 = self;
              if (v40 == 1)
              {
                v37 = @"characterKeyTaps";
                v38 = @"emojiSearchCharacterKeyTaps";
              }

              else
              {
                v37 = @"unknownKeyTaps";
                v38 = @"unknownKeyTaps";
              }
            }

            v14 = v42;
            [(TITypingEffortAnalyzer *)selfCopy7 addCountsForPropertyWithName:v37 andEmojiSearchPropertyName:v38 contributesToTotal:1 toActionSummary:v45 emojiSearchMode:v42];
            inputsCopy = v43;
          }
        }

LABEL_25:
        ++v20;
      }

      while (v18 != v20);
      v41 = [inputsCopy countByEnumeratingWithState:&v47 objects:v51 count:16];
      v18 = v41;
    }

    while (v41);
  }
}

- (void)addActionsForDeleteWord:(id)word toActionSummary:(id)summary emojiSearchMode:(BOOL)mode
{
  modeCopy = mode;
  summaryCopy = summary;
  wordCopy = word;
  v16 = objc_opt_new();
  keyboardState = [wordCopy keyboardState];
  inputMode = [keyboardState inputMode];

  allKeyboardInputs = [wordCopy allKeyboardInputs];
  [(TITypingEffortAnalyzer *)self addKeyboardInputActionsForKeyboardInputs:allKeyboardInputs inputMode:inputMode toActionSummary:summaryCopy andKeyboardInputTouches:v16 emojiSearchMode:modeCopy];

  allTouches = [wordCopy allTouches];
  touchLayouts = [wordCopy touchLayouts];

  LOBYTE(v15) = modeCopy;
  [(TITypingEffortAnalyzer *)self addTouchRelatedActionsForTouches:allTouches layouts:touchLayouts acceptedCandidate:0 toActionSummary:summaryCopy keyboardInputTouches:v16 pathTouches:0 emojiSearchMode:v15];
}

- (void)addActionsForWordEntry:(id)entry toActionSummary:(id)summary emojiSearchMode:(BOOL)mode
{
  modeCopy = mode;
  summaryCopy = summary;
  entryCopy = entry;
  v18 = objc_opt_new();
  v10 = objc_opt_new();
  keyboardState = [entryCopy keyboardState];
  inputMode = [keyboardState inputMode];

  allKeyboardInputs = [entryCopy allKeyboardInputs];
  [(TITypingEffortAnalyzer *)self addKeyboardInputActionsForKeyboardInputs:allKeyboardInputs inputMode:inputMode toActionSummary:summaryCopy andKeyboardInputTouches:v18 emojiSearchMode:modeCopy];

  [(TITypingEffortAnalyzer *)self addPathAndCandidateBarActionsForWordEntry:entryCopy toActionSummary:summaryCopy andPathTouches:v10 emojiSearchMode:modeCopy];
  allTouches = [entryCopy allTouches];
  touchLayouts = [entryCopy touchLayouts];
  acceptedCandidate = [entryCopy acceptedCandidate];

  LOBYTE(v17) = modeCopy;
  [(TITypingEffortAnalyzer *)self addTouchRelatedActionsForTouches:allTouches layouts:touchLayouts acceptedCandidate:acceptedCandidate toActionSummary:summaryCopy keyboardInputTouches:v18 pathTouches:v10 emojiSearchMode:v17];
}

- (id)countActions
{
  v3 = objc_opt_new();
  userActionHistory = [(TITypingSession *)self->_session userActionHistory];
  v5 = [userActionHistory count];

  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = v5 - 1;
    v9 = v5 & 0x7FFFFFFF;
    do
    {
      v10 = v7;
      userActionHistory2 = [(TITypingSession *)self->_session userActionHistory];
      v7 = [userActionHistory2 objectAtIndex:v6];

      keyboardState = [v7 keyboardState];
      emojiSearchMode = [keyboardState emojiSearchMode];

      actionType = [v7 actionType];
      if (actionType <= 2)
      {
        if (actionType)
        {
          if (actionType == 1)
          {
            [(TITypingEffortAnalyzer *)self addActionsForDeleteWord:v7 toActionSummary:v3 emojiSearchMode:emojiSearchMode];
          }

          else if (actionType == 2)
          {
            if (v6 >= v8)
            {
              v16 = 0;
            }

            else
            {
              userActionHistory3 = [(TITypingSession *)self->_session userActionHistory];
              v16 = [userActionHistory3 objectAtIndex:v6 + 1];
            }

            [(TITypingEffortAnalyzer *)self addActionsForCursorEvent:v7 lastAction:v10 nextAction:v16 toActionSummary:v3 emojiSearchMode:emojiSearchMode];
          }
        }

        else
        {
          [(TITypingEffortAnalyzer *)self addActionsForWordEntry:v7 toActionSummary:v3 emojiSearchMode:emojiSearchMode];
        }
      }

      else if (actionType > 7)
      {
        if (actionType == 8)
        {
          [(TITypingEffortAnalyzer *)self addActionsForCut:v7 toActionSummary:v3 emojiSearchMode:emojiSearchMode];
        }

        else if (actionType == 9)
        {
          [(TITypingEffortAnalyzer *)self addActionsForPaste:v7 toActionSummary:v3 emojiSearchMode:emojiSearchMode];
        }
      }

      else if (actionType == 3)
      {
        [(TITypingEffortAnalyzer *)self addActionsForDocumentStateChange:v7 toActionSummary:v3 emojiSearchMode:emojiSearchMode];
      }

      else if (actionType == 6)
      {
        [(TITypingEffortAnalyzer *)self addActionsForArrowKey:v7 toActionSummary:v3 emojiSearchMode:emojiSearchMode];
      }

      ++v6;
    }

    while (v9 != v6);
  }

  return v3;
}

- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence
{
  sessionCopy = session;
  alignedSessionCopy = alignedSession;
  if (confidence)
  {
    objc_storeStrong(&self->_session, session);
    objc_storeStrong(&self->_alignedSession, alignedSession);
    *&self->_emojiPlaneActive = 0;
    countActions = [(TITypingEffortAnalyzer *)self countActions];
    countOutput = [(TITypingEffortAnalyzer *)self countOutput];
    [(TITypingEffortAnalyzer *)self dispatchEventWithActionSummary:countActions outputSummary:countOutput];
  }

  return confidence != 0;
}

- (TITypingEffortAnalyzer)init
{
  v5.receiver = self;
  v5.super_class = TITypingEffortAnalyzer;
  v2 = [(TITypingEffortAnalyzer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TITypingEffortAnalyzer *)v2 registerEventSpec];
  }

  return v3;
}

@end