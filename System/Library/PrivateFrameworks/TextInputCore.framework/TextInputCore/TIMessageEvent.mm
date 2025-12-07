@interface TIMessageEvent
- (BOOL)hasText:(id)text;
- (BOOL)hasTextInWordEntry:(id)entry;
- (TIMessageEvent)init;
- (void)adjustEmojiCountsFromKeyboardInputForWordAligned:(id)aligned;
- (void)analyzeWordEntry:(id)entry;
- (void)analyzeWordEntryAligned:(id)aligned;
- (void)dispatchWithFeatureUsageMetricsCache:(id)cache andContext:(id)context assetAvailabilityStatus:(int64_t)status;
@end

@implementation TIMessageEvent

- (void)dispatchWithFeatureUsageMetricsCache:(id)cache andContext:(id)context assetAvailabilityStatus:(int64_t)status
{
  v92[36] = *MEMORY[0x277D85DE8];
  if (self->_wordsEnteredCount >= 1)
  {
    messageText = self->_messageText;
    contextCopy = context;
    cacheCopy = cache;
    _graphemeCount = [(NSString *)messageText _graphemeCount];
    v11 = [(TIMessageEvent *)self durationInSecondsFromStartTime:self->_startTime endTime:self->_endTime];
    v91[0] = @"totalMessageDuration";
    v90 = [MEMORY[0x277CCABB0] numberWithInt:v11];
    v92[0] = v90;
    v91[1] = @"totalMessageLength";
    v89 = [MEMORY[0x277CCABB0] numberWithInt:_graphemeCount];
    v92[1] = v89;
    v91[2] = @"totalWordsEntered";
    v88 = [MEMORY[0x277CCABB0] numberWithInt:self->_wordsEnteredCount];
    v92[2] = v88;
    v91[3] = @"totalFinalWordEntered";
    v87 = [MEMORY[0x277CCABB0] numberWithInt:self->_finalWordsEnteredCount];
    v92[3] = v87;
    v91[4] = @"messageDuration";
    v12 = MEMORY[0x277D6F320];
    v86 = [MEMORY[0x277CCABB0] numberWithInt:v11];
    v85 = [v12 bucketNumber:v86 bucketThresholds:&unk_28400BB08 bucketValues:0];
    v92[4] = v85;
    v91[5] = @"messageLength";
    v13 = MEMORY[0x277D6F320];
    v84 = [MEMORY[0x277CCABB0] numberWithInt:_graphemeCount];
    v83 = [v13 bucketNumber:v84 bucketThresholds:&unk_28400BB20 bucketValues:0];
    v92[5] = v83;
    v91[6] = @"wordsEntered";
    v14 = MEMORY[0x277D6F320];
    v82 = [MEMORY[0x277CCABB0] numberWithInt:self->_wordsEnteredCount];
    v81 = [v14 bucketNumber:v82 bucketThresholds:&unk_28400BB38 bucketValues:0];
    v92[6] = v81;
    v91[7] = @"finalWordEntered";
    v15 = MEMORY[0x277D6F320];
    v80 = [MEMORY[0x277CCABB0] numberWithInt:self->_finalWordsEnteredCount];
    v79 = [v15 bucketNumber:v80 bucketThresholds:&unk_28400BB38 bucketValues:0];
    v92[7] = v79;
    v91[8] = @"static";
    v16 = MEMORY[0x277D6F320];
    v78 = [MEMORY[0x277CCABB0] numberWithInt:self->_staticCount];
    v77 = [v16 bucketNumber:v78 bucketThresholds:&unk_28400BB38 bucketValues:0];
    v92[8] = v77;
    v91[9] = @"dynamic";
    v17 = MEMORY[0x277D6F320];
    v76 = [MEMORY[0x277CCABB0] numberWithInt:self->_dynamicCount];
    v75 = [v17 bucketNumber:v76 bucketThresholds:&unk_28400BB38 bucketValues:0];
    v92[9] = v75;
    v91[10] = @"textReplacements";
    v18 = MEMORY[0x277D6F320];
    v74 = [MEMORY[0x277CCABB0] numberWithInt:self->_textReplacementsCount];
    v73 = [v18 bucketNumber:v74 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v92[10] = v73;
    v91[11] = @"addressBook";
    v19 = MEMORY[0x277D6F320];
    v72 = [MEMORY[0x277CCABB0] numberWithInt:self->_addressBookCount];
    v71 = [v19 bucketNumber:v72 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v92[11] = v71;
    v91[12] = @"namedEntities";
    v20 = MEMORY[0x277D6F320];
    v68 = [MEMORY[0x277CCABB0] numberWithInt:self->_namedEntitiesCount];
    v67 = [v20 bucketNumber:v68 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v92[12] = v67;
    v91[13] = @"oov";
    v21 = MEMORY[0x277D6F320];
    v66 = [MEMORY[0x277CCABB0] numberWithInt:self->_oovCount];
    v65 = [v21 bucketNumber:v66 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v92[13] = v65;
    v91[14] = @"supplementalLexicon";
    v22 = MEMORY[0x277D6F320];
    v64 = [MEMORY[0x277CCABB0] numberWithInt:self->_supplementalLexiconCount];
    v63 = [v22 bucketNumber:v64 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v92[14] = v63;
    v91[15] = @"emojiPlane";
    v23 = MEMORY[0x277D6F320];
    v62 = [MEMORY[0x277CCABB0] numberWithInt:self->_emojiPlaneCount];
    v61 = [v23 bucketNumber:v62 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v92[15] = v61;
    v91[16] = @"emojiPrediction";
    v24 = MEMORY[0x277D6F320];
    v60 = [MEMORY[0x277CCABB0] numberWithInt:self->_emojiPredictionCount];
    v59 = [v24 bucketNumber:v60 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v92[16] = v59;
    v91[17] = @"emojiSearch";
    v25 = MEMORY[0x277D6F320];
    v58 = [MEMORY[0x277CCABB0] numberWithInt:self->_emojiSearchCount];
    v57 = [v25 bucketNumber:v58 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v92[17] = v57;
    v91[18] = @"emojiPopover";
    v26 = MEMORY[0x277D6F320];
    v56 = [MEMORY[0x277CCABB0] numberWithInt:self->_emojiPopoverCount];
    v55 = [v26 bucketNumber:v56 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v92[18] = v55;
    v91[19] = @"responseKit";
    v27 = MEMORY[0x277D6F320];
    v54 = [MEMORY[0x277CCABB0] numberWithInt:self->_responseKitCount];
    v53 = [v27 bucketNumber:v54 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v92[19] = v53;
    v91[20] = @"pqt";
    v28 = MEMORY[0x277D6F320];
    v52 = [MEMORY[0x277CCABB0] numberWithInt:self->_pqtCount];
    v51 = [v28 bucketNumber:v52 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v92[20] = v51;
    v91[21] = @"multilingual";
    v29 = MEMORY[0x277D6F320];
    v50 = [MEMORY[0x277CCABB0] numberWithInt:self->_multilingualCount];
    v49 = [v29 bucketNumber:v50 bucketThresholds:&unk_28400BB50 bucketValues:0];
    v92[21] = v49;
    v91[22] = kFeatureKeyboardUsage;
    v48 = [cacheCopy featureUsageMetricFromName:? forContext:?];
    v92[22] = v48;
    v91[23] = kFeatureContinuousPathUsage;
    v47 = [cacheCopy featureUsageMetricFromName:? forContext:?];
    v92[23] = v47;
    v91[24] = kFeatureAutocorrectionUsage;
    v46 = [cacheCopy featureUsageMetricFromName:? forContext:?];
    v92[24] = v46;
    v91[25] = kFeatureCandidateBarUsage;
    v45 = [cacheCopy featureUsageMetricFromName:? forContext:?];
    v92[25] = v45;
    v91[26] = kFeatureMultilingualUsage;
    v44 = [cacheCopy featureUsageMetricFromName:? forContext:?];
    v92[26] = v44;
    v91[27] = kFeatureStringTypingSpeed;
    v30 = [cacheCopy featureUsageMetricFromName:? forContext:?];

    v92[27] = v30;
    v91[28] = kFeatureStringAssetAvailabilityStatus;
    v31 = @"Installed";
    if (!status)
    {
      v31 = @"Unavailable";
    }

    v32 = v31;
    v92[28] = v32;
    v91[29] = kFeatureStringKeyboardLanguage;
    inputLanguage = [contextCopy inputLanguage];
    v92[29] = inputLanguage;
    v91[30] = kFeatureStringKeyboardRegion;
    inputRegion = [contextCopy inputRegion];
    v92[30] = inputRegion;
    v91[31] = kFeatureStringKeyboardVariant;
    inputVariant = [contextCopy inputVariant];
    v92[31] = inputVariant;
    v91[32] = kFeatureStringKeyboardSecondaryLanguage;
    secondaryLanguage = [contextCopy secondaryLanguage];
    v92[32] = secondaryLanguage;
    v91[33] = kFeatureStringKeyboardSecondaryRegion;
    secondaryRegion = [contextCopy secondaryRegion];
    v92[33] = secondaryRegion;
    v91[34] = kFeatureStringKeyboardLayout;
    layoutName = [contextCopy layoutName];
    v92[34] = layoutName;
    v91[35] = kFeatureStringKeyboardType;
    v39 = +[TIKBAnalyticsMetricsContext keyboardTypeEnumToString:](TIKBAnalyticsMetricsContext, "keyboardTypeEnumToString:", [contextCopy keyboardType]);
    v92[35] = v39;
    v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:36];

    mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
    testingParameters = [contextCopy testingParameters];

    [mEMORY[0x277D6F318] dispatchEventWithName:@"typingSpeedDetails" payload:v70 testingParameters:testingParameters allowSparsePayload:0];
    v42 = +[TIProactiveQuickTypeManager sharedInstance];
    v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SpeedMetric"];
    [v42 propogateMetrics:v43 data:v70];
  }
}

- (BOOL)hasText:(id)text
{
  v3 = MEMORY[0x277CCA900];
  textCopy = text;
  whitespaceCharacterSet = [v3 whitespaceCharacterSet];
  v6 = [textCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:punctuationCharacterSet];

  LOBYTE(punctuationCharacterSet) = [v8 length] != 0;
  return punctuationCharacterSet;
}

- (void)adjustEmojiCountsFromKeyboardInputForWordAligned:(id)aligned
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  alignedKeyboardInputs = [aligned alignedKeyboardInputs];
  v5 = [alignedKeyboardInputs countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(alignedKeyboardInputs);
        }

        v12 = objc_msgSend_string(*(*(&v14 + 1) + 8 * i));
        if ([v12 _containsEmoji])
        {
          ++v9;
          if (v7 > 0)
          {
            ++v8;
          }

          v7 = 0;
        }

        else
        {
          v7 += [(TIMessageEvent *)self hasText:v12];
        }
      }

      v6 = [alignedKeyboardInputs countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);

    if (v7 <= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 1;
    }

    if (v9 >= 1)
    {
      self->_emojiPlaneCount += v9;
      v13 += v9;
      self->_wordsEnteredCount = v13 + self->_wordsEnteredCount - 1;
    }
  }

  else
  {

    v13 = 0;
  }

  self->_finalWordsEnteredCount += v13;
}

- (void)analyzeWordEntryAligned:(id)aligned
{
  alignedCopy = aligned;
  originalWord = [alignedCopy originalWord];
  editedEntry = [originalWord editedEntry];
  originalWord2 = [alignedCopy originalWord];
  v7 = originalWord2;
  if (editedEntry)
  {
    editedEntry2 = [originalWord2 editedEntry];

    v7 = editedEntry2;
  }

  acceptedCandidate = [v7 acceptedCandidate];
  candidate = [acceptedCandidate candidate];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v12 = [candidate stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  keyboardState = [v7 keyboardState];
  emojiSearchMode = [keyboardState emojiSearchMode];

  keyboardState2 = [v7 keyboardState];
  emojiPopoverMode = [keyboardState2 emojiPopoverMode];

  if (![v12 _containsEmoji])
  {
    if (emojiSearchMode)
    {
      goto LABEL_12;
    }

    if ([acceptedCandidate isContinuousPathConversion])
    {
      ++self->_finalWordsEnteredCount;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if ((emojiPopoverMode & 1) == 0)
  {
    if (emojiSearchMode)
    {
      ++self->_finalWordsEnteredCount;
      ++self->_emojiSearchCount;
LABEL_12:
      if (![v12 length])
      {
        goto LABEL_41;
      }

      goto LABEL_17;
    }

    if (([v7 wordEntryType] & 4) != 0)
    {
      ++self->_finalWordsEnteredCount;
      ++self->_emojiPredictionCount;
      goto LABEL_17;
    }

LABEL_15:
    [(TIMessageEvent *)self adjustEmojiCountsFromKeyboardInputForWordAligned:alignedCopy];
    goto LABEL_17;
  }

  ++self->_finalWordsEnteredCount;
  ++self->_emojiPopoverCount;
  if (emojiSearchMode)
  {
    goto LABEL_12;
  }

LABEL_17:
  if (([acceptedCandidate sourceMask] & 0x8000) != 0 || (objc_msgSend(acceptedCandidate, "sourceMask") & 0x20000) != 0)
  {
    ++self->_staticCount;
  }

  if (([acceptedCandidate sourceMask] & 0x10000) != 0 || (objc_msgSend(acceptedCandidate, "sourceMask") & 0x40000) != 0)
  {
    ++self->_dynamicCount;
  }

  if (([acceptedCandidate sourceMask] & 4) != 0)
  {
    ++self->_textReplacementsCount;
  }

  if (([acceptedCandidate sourceMask] & 8) != 0)
  {
    ++self->_addressBookCount;
  }

  if (([acceptedCandidate sourceMask] & 0x10) != 0)
  {
    ++self->_namedEntitiesCount;
  }

  if (([acceptedCandidate sourceMask] & 0x20) != 0)
  {
    ++self->_oovCount;
  }

  if (([acceptedCandidate sourceMask] & 0x400) != 0)
  {
    ++self->_supplementalLexiconCount;
  }

  if ([acceptedCandidate isResponseKitCandidate])
  {
    ++self->_responseKitCount;
  }

  if ([v7 isMultilingual])
  {
    ++self->_multilingualCount;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    proactiveTrigger = [acceptedCandidate proactiveTrigger];
    if (proactiveTrigger)
    {
      ++self->_pqtCount;
    }
  }

LABEL_41:
}

- (BOOL)hasTextInWordEntry:(id)entry
{
  v22 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  acceptedCandidate = [entryCopy acceptedCandidate];
  candidate = [acceptedCandidate candidate];
  v7 = [(TIMessageEvent *)self hasText:candidate];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    allKeyboardInputs = [entryCopy allKeyboardInputs];
    v10 = [allKeyboardInputs countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(allKeyboardInputs);
          }

          v14 = objc_msgSend_string(*(*(&v17 + 1) + 8 * i));
          v15 = [(TIMessageEvent *)self hasText:v14];

          if (v15)
          {
            v8 = 1;
            goto LABEL_13;
          }
        }

        v11 = [allKeyboardInputs countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_13:
  }

  return v8;
}

- (void)analyzeWordEntry:(id)entry
{
  entryCopy = entry;
  keyboardState = [entryCopy keyboardState];
  documentState = [keyboardState documentState];
  contextBeforeInput = [documentState contextBeforeInput];
  if (contextBeforeInput)
  {
    contextBeforeInput2 = [documentState contextBeforeInput];
  }

  else
  {
    contextBeforeInput2 = &stru_283FDFAF8;
  }

  contextAfterInput = [documentState contextAfterInput];
  if (contextAfterInput)
  {
    contextAfterInput2 = [documentState contextAfterInput];
  }

  else
  {
    contextAfterInput2 = &stru_283FDFAF8;
  }

  v10 = [(__CFString *)contextBeforeInput2 stringByAppendingString:contextAfterInput2];
  messageText = self->_messageText;
  self->_messageText = v10;

  [entryCopy startTime];
  if (v12 > 0.0)
  {
    startTime = self->_startTime;
    [entryCopy startTime];
    if (startTime >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = startTime;
    }

    if (startTime != 0.0)
    {
      v14 = v15;
    }

    self->_startTime = v14;
  }

  [entryCopy endTime];
  if (v16 > 0.0)
  {
    endTime = self->_endTime;
    [entryCopy endTime];
    if (endTime >= v18 && endTime != 0.0)
    {
      v18 = endTime;
    }

    self->_endTime = v18;
  }

  keyboardState2 = [entryCopy keyboardState];
  emojiSearchMode = [keyboardState2 emojiSearchMode];

  v22 = [(TIMessageEvent *)self hasTextInWordEntry:entryCopy];
  if ((emojiSearchMode & 1) == 0 && v22)
  {
    ++self->_wordsEnteredCount;
  }
}

- (TIMessageEvent)init
{
  v6.receiver = self;
  v6.super_class = TIMessageEvent;
  v2 = [(TIMessageEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    messageText = v2->_messageText;
    v2->_messageText = &stru_283FDFAF8;
  }

  return v3;
}

@end