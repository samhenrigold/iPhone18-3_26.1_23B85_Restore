@interface TIAutocorrectionAccuracyAnalyzer
- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence;
- (BOOL)analyzeWordEntryAligned:(id)aligned;
- (TIAutocorrectionAccuracyAnalyzer)init;
- (void)registerEventSpec;
@end

@implementation TIAutocorrectionAccuracyAnalyzer

- (void)registerEventSpec
{
  v110 = *MEMORY[0x277D85DE8];
  v94 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"outcome"];
  v101[0] = v94;
  v92 = [MEMORY[0x277D6F308] stringFieldSpecWithName:@"alignmentConfidence"];
  v101[1] = v92;
  v2 = MEMORY[0x277D6F308];
  v3 = kFeatureKeyboardUsage;
  v90 = TIFeatureUsageAllowedValues();
  v88 = [v2 stringFieldSpecWithName:v3 allowedValues:v90];
  v101[2] = v88;
  v4 = MEMORY[0x277D6F308];
  v5 = kFeatureContinuousPathUsage;
  v86 = TIFeatureUsageAllowedValues();
  v84 = [v4 stringFieldSpecWithName:v5 allowedValues:v86];
  v101[3] = v84;
  v6 = MEMORY[0x277D6F308];
  v7 = kFeatureAutocorrectionUsage;
  v82 = TIFeatureUsageAllowedValues();
  v80 = [v6 stringFieldSpecWithName:v7 allowedValues:v82];
  v101[4] = v80;
  v8 = MEMORY[0x277D6F308];
  v9 = kFeatureCandidateBarUsage;
  v78 = TIFeatureUsageAllowedValues();
  v76 = [v8 stringFieldSpecWithName:v9 allowedValues:v78];
  v101[5] = v76;
  v10 = MEMORY[0x277D6F308];
  v11 = kFeatureMultilingualUsage;
  v74 = TIFeatureUsageAllowedValues();
  v72 = [v10 stringFieldSpecWithName:v11 allowedValues:v74];
  v101[6] = v72;
  v12 = MEMORY[0x277D6F308];
  v13 = kFeatureStringTypingSpeed;
  v70 = TITypingSpeedAllowedValues();
  v68 = [v12 stringFieldSpecWithName:v13 allowedValues:v70];
  v101[7] = v68;
  v14 = MEMORY[0x277D6F308];
  v15 = kFeatureStringTypingEngine;
  v66 = TITypingEngineAllowedValues();
  v64 = [v14 stringFieldSpecWithName:v15 allowedValues:v66];
  v101[8] = v64;
  v16 = MEMORY[0x277D6F308];
  v17 = kFeatureStringAssetAvailabilityStatus;
  v18 = TIAssetAvailabilityStatusAllowedValues();
  v19 = [v16 stringFieldSpecWithName:v17 allowedValues:v18];
  v101[9] = v19;
  v20 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLanguage];
  v101[10] = v20;
  v21 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardRegion];
  v101[11] = v21;
  v22 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardVariant];
  v101[12] = v22;
  v23 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryLanguage];
  v101[13] = v23;
  v24 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardSecondaryRegion];
  v101[14] = v24;
  v25 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardLayout];
  v101[15] = v25;
  v26 = [MEMORY[0x277D6F308] stringFieldSpecWithName:kFeatureStringKeyboardType];
  v101[16] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v101 count:17];

  v61 = v27;
  v100[0] = v27;
  v28 = fieldNameSuffices();
  array = [MEMORY[0x277CBEB18] array];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = v28;
  v67 = [obj countByEnumeratingWithState:&v96 objects:v109 count:16];
  if (v67)
  {
    v63 = *v97;
    do
    {
      for (i = 0; i != v67; ++i)
      {
        if (*v97 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v96 + 1) + 8 * i);
        v31 = MEMORY[0x277D6F308];
        v95 = [@"sourceBitset" stringByAppendingString:v30];
        v93 = [v31 integerFieldSpecWithName:v95 minValue:&unk_28400BCE8 maxValue:0 significantDigits:0];
        *&v102 = v93;
        v32 = MEMORY[0x277D6F308];
        v91 = [@"length" stringByAppendingString:v30];
        v89 = [v32 integerFieldSpecWithName:v91 minValue:&unk_28400BCE8 maxValue:0 significantDigits:0];
        *(&v102 + 1) = v89;
        v33 = MEMORY[0x277D6F308];
        v87 = [@"capitalization" stringByAppendingString:v30];
        v85 = [v33 stringFieldSpecWithName:v87];
        *&v103 = v85;
        v34 = MEMORY[0x277D6F308];
        v83 = [@"diacritics" stringByAppendingString:v30];
        v81 = [v34 BOOLeanFieldSpecWithName:v83];
        *(&v103 + 1) = v81;
        v35 = MEMORY[0x277D6F308];
        v79 = [@"punctuation" stringByAppendingString:v30];
        v77 = [v35 BOOLeanFieldSpecWithName:v79];
        *&v104 = v77;
        v36 = MEMORY[0x277D6F308];
        v75 = [@"multiword" stringByAppendingString:v30];
        v73 = [v36 BOOLeanFieldSpecWithName:v75];
        *(&v104 + 1) = v73;
        v37 = MEMORY[0x277D6F308];
        v71 = [@"geometryScore" stringByAppendingString:v30];
        v69 = [v37 integerFieldSpecWithName:v71 minValue:0 maxValue:0 significantDigits:0];
        *&v105 = v69;
        v38 = MEMORY[0x277D6F308];
        v39 = [@"languageModelScore" stringByAppendingString:v30];
        v40 = [v38 integerFieldSpecWithName:v39 minValue:0 maxValue:0 significantDigits:0];
        *(&v105 + 1) = v40;
        v41 = MEMORY[0x277D6F308];
        v42 = [@"language" stringByAppendingString:v30];
        v43 = [v41 stringFieldSpecWithName:v42];
        v106 = v43;
        v44 = MEMORY[0x277D6F308];
        v45 = [@"localUsageCount" stringByAppendingString:v30];
        v46 = [v44 integerFieldSpecWithName:v45 minValue:0 maxValue:0 significantDigits:0];
        v107 = v46;
        v47 = MEMORY[0x277D6F308];
        v48 = [@"localPenaltyCount" stringByAppendingString:v30];
        v49 = [v47 integerFieldSpecWithName:v48 minValue:0 maxValue:0 significantDigits:0];
        v108 = v49;
        v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v102 count:11];
        [array addObjectsFromArray:v50];
      }

      v67 = [obj countByEnumeratingWithState:&v96 objects:v109 count:16];
    }

    while (v67);
  }

  v100[1] = array;
  v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:2];
  array2 = [MEMORY[0x277CBEB18] array];
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v53 = v51;
  v54 = [v53 countByEnumeratingWithState:&v102 objects:v109 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v103;
    do
    {
      for (j = 0; j != v55; ++j)
      {
        if (*v103 != v56)
        {
          objc_enumerationMutation(v53);
        }

        [array2 addObjectsFromArray:*(*(&v102 + 1) + 8 * j)];
      }

      v55 = [v53 countByEnumeratingWithState:&v102 objects:v109 count:16];
    }

    while (v55);
  }

  v58 = [array2 copy];
  v59 = [MEMORY[0x277D6F300] eventSpecWithName:@"autocorrectionAccuracy" inputModeRequired:0 fieldSpecs:v58];
  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318] registerEventSpec:v59];
}

- (BOOL)analyzeWordEntryAligned:(id)aligned
{
  v151 = *MEMORY[0x277D85DE8];
  alignedCopy = aligned;
  originalWord = [alignedCopy originalWord];
  keyboardState = [originalWord keyboardState];

  v7 = [TIKBAnalyticsMetricsContext alloc];
  sessionParams = [(TITypingSession *)self->_currentSession sessionParams];
  activeInputModes = [sessionParams activeInputModes];
  sessionParams2 = [(TITypingSession *)self->_currentSession sessionParams];
  testingParameters = [sessionParams2 testingParameters];
  v12 = [(TIKBAnalyticsMetricsContext *)v7 initWithKeyboardState:keyboardState activeInputModes:activeInputModes testingParameters:testingParameters];

  v13 = v12;
  v14 = objc_alloc(MEMORY[0x277CBEAF8]);
  inputLanguageAndRegion = [v13 inputLanguageAndRegion];
  v16 = [v14 initWithLocaleIdentifier:inputLanguageAndRegion];

  if (v16)
  {
    v124 = keyboardState;
    v17 = alignedCopy;
    v125 = v16;
    v127 = v17;
    originalWord2 = [v17 originalWord];
    candidatesOffered = [originalWord2 candidatesOffered];
    lastObject = [candidatesOffered lastObject];

    corrections = [lastObject corrections];
    autocorrection = [corrections autocorrection];

    input = [autocorrection input];
    candidate = [autocorrection candidate];
    v129 = originalWord2;
    acceptedString = [originalWord2 acceptedString];
    v26 = [acceptedString stringByReplacingOccurrencesOfString:@"’" withString:@"'"];

    v123 = v16;
    if (objc_msgSend_isEqualToString_(input))
    {
      v27 = 0;
    }

    else if (objc_msgSend_isEqualToString_(v26))
    {
      if (([v129 wordEntryType] & 4) != 0)
      {
        v27 = @"selectedAutocorrection";
      }

      else
      {
        editedEntry = [v129 editedEntry];
        if (editedEntry)
        {
          v100 = editedEntry;
          acceptedString2 = [editedEntry acceptedString];
          v121 = acceptedString2;
          if (objc_msgSend_isEqualToString_(acceptedString2))
          {
            v27 = @"revisedToInput";
          }

          else if (objc_msgSend_isEqualToString_(acceptedString2))
          {
            v27 = @"revisedBackToAutocorrection";
          }

          else
          {
            v145 = 0u;
            v146 = 0u;
            v143 = 0u;
            v144 = 0u;
            objb = [lastObject predictions];
            v119 = [objb countByEnumeratingWithState:&v143 objects:buf count:16];
            if (v119)
            {
              v108 = v13;
              v111 = alignedCopy;
              v114 = *v144;
              v27 = @"revisedToAlternate";
LABEL_60:
              v92 = 0;
              while (1)
              {
                if (*v144 != v114)
                {
                  objc_enumerationMutation(objb);
                }

                candidate2 = [*(*(&v143 + 1) + 8 * v92) candidate];
                isEqualToString = objc_msgSend_isEqualToString_(v121);

                if (isEqualToString)
                {
                  break;
                }

                if (v119 == ++v92)
                {
                  v119 = [objb countByEnumeratingWithState:&v143 objects:buf count:16];
                  if (v119)
                  {
                    goto LABEL_60;
                  }

                  v27 = @"revisedToNew";
                  break;
                }
              }

              v13 = v108;
              alignedCopy = v111;
              v16 = v123;
            }

            else
            {
              v27 = @"revisedToNew";
            }
          }

          editedEntry = v100;
        }

        else
        {
          v27 = @"acceptedAutocorrection";
        }
      }
    }

    else if (objc_msgSend_isEqualToString_(v26))
    {
      if (([v129 wordEntryType] & 4) != 0)
      {
        v27 = @"selectedInput";
      }

      else
      {
        v27 = @"rejectedAutocorrection";
      }
    }

    else
    {
      v27 = @"selectedAlternate";
    }

    v28 = v129;
    v29 = v27;
    v30 = v29;
    if (v29)
    {
      v148[0] = v29;
      v147[0] = @"outcome";
      v147[1] = @"alignmentConfidence";
      v31 = v127;
      inSessionAlignmentConfidence = [v127 inSessionAlignmentConfidence];
      v120 = v30;
      if (alignmentConfidence_onceToken != -1)
      {
        dispatch_once(&alignmentConfidence_onceToken, &__block_literal_global_21666);
      }

      v33 = alignmentConfidence_map;
      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:inSessionAlignmentConfidence];
      v35 = [v33 objectForKeyedSubscript:v34];

      v148[1] = v35;
      v147[2] = kFeatureStringTypingEngine;
      acceptedCandidate = [v129 acceptedCandidate];
      [acceptedCandidate typingEngine];
      v37 = TIKeyboardCandidateTypingEngineTypeToString();
      v148[2] = v37;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v148 forKeys:v147 count:3];

      candidatesOffered2 = [v129 candidatesOffered];
      lastObject2 = [candidatesOffered2 lastObject];

      corrections2 = [lastObject2 corrections];
      autocorrection2 = [corrections2 autocorrection];

      v43 = autocorrection2;
      selfCopy = self;
      v117 = lastObject2;
      if ([autocorrection2 isAutocorrection])
      {
        v106 = v13;
        v109 = alignedCopy;
        predictions = [lastObject2 predictions];
        v112 = autocorrection2;
        input2 = [autocorrection2 input];
        v135 = 0u;
        v136 = 0u;
        v137 = 0u;
        v138 = 0u;
        v46 = predictions;
        v47 = [v46 countByEnumeratingWithState:&v135 objects:buf count:16];
        obj = v38;
        if (v47)
        {
          v48 = v47;
          v49 = *v136;
LABEL_10:
          v50 = 0;
          while (1)
          {
            if (*v136 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = *(*(&v135 + 1) + 8 * v50);
            candidate3 = [v51 candidate];
            if (candidate3)
            {
              v53 = candidate3;
              candidate4 = [v51 candidate];
              v55 = objc_msgSend_isEqualToString_(candidate4);

              if (v55)
              {
                break;
              }
            }

            if (v48 == ++v50)
            {
              v48 = [v46 countByEnumeratingWithState:&v135 objects:buf count:16];
              if (v48)
              {
                goto LABEL_10;
              }

              goto LABEL_17;
            }
          }

          v56 = v125;
          v62 = payloadForCandidate(v51, @"_input", v125);

          if (v62)
          {
            goto LABEL_33;
          }
        }

        else
        {
LABEL_17:

          v56 = v125;
        }

        v62 = payloadForText(input2, @"_input", v56);
LABEL_33:
        v63 = payloadForCandidate(v112, @"_autocorrection", v56);
        v131 = 0u;
        v132 = 0u;
        v133 = 0u;
        v134 = 0u;
        v64 = v46;
        v65 = [v64 countByEnumeratingWithState:&v131 objects:&v143 count:16];
        if (v65)
        {
          v66 = v65;
          v98 = v63;
          v101 = v62;
          v67 = *v132;
          while (2)
          {
            for (i = 0; i != v66; ++i)
            {
              if (*v132 != v67)
              {
                objc_enumerationMutation(v64);
              }

              v69 = *(*(&v131 + 1) + 8 * i);
              candidate5 = [v69 candidate];
              if (candidate5)
              {
                v71 = candidate5;
                candidate6 = [v69 candidate];
                v73 = objc_msgSend_isEqualToString_(candidate6);

                if ((v73 & 1) == 0)
                {
                  v56 = v125;
                  v74 = payloadForCandidate(v69, @"_alternate", v125);
                  v63 = v98;
                  v62 = v101;
                  goto LABEL_45;
                }
              }
            }

            v66 = [v64 countByEnumeratingWithState:&v131 objects:&v143 count:16];
            if (v66)
            {
              continue;
            }

            break;
          }

          v56 = v125;
          v63 = v98;
          v62 = v101;
        }

        v74 = MEMORY[0x277CBEC10];
LABEL_45:

        v142[0] = v62;
        v142[1] = v63;
        v142[2] = v74;
        v38 = obj;
        v142[3] = obj;
        v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v142 count:4];
        v61 = mergeDicts(v75);

        v13 = v106;
        alignedCopy = v109;
        v30 = v120;
        v16 = v123;
        v31 = v127;
        v28 = v129;
        v43 = v112;
      }

      else
      {
        v61 = 0;
        v56 = v125;
        v30 = v120;
      }

      v57 = v61;
      self = selfCopy;
    }

    else
    {
      v57 = 0;
      v56 = v125;
      v31 = v127;
    }

    if (v57)
    {
      v140[0] = kFeatureKeyboardUsage;
      featureUsageMetricsCache = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
      v128 = [featureUsageMetricsCache featureUsageMetricFromName:kFeatureKeyboardUsage forContext:v13];
      v141[0] = v128;
      v140[1] = kFeatureContinuousPathUsage;
      featureUsageMetricsCache2 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
      v122 = [featureUsageMetricsCache2 featureUsageMetricFromName:kFeatureContinuousPathUsage forContext:v13];
      v141[1] = v122;
      v140[2] = kFeatureAutocorrectionUsage;
      featureUsageMetricsCache3 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
      v113 = [featureUsageMetricsCache3 featureUsageMetricFromName:kFeatureAutocorrectionUsage forContext:v13];
      v141[2] = v113;
      v140[3] = kFeatureCandidateBarUsage;
      featureUsageMetricsCache4 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
      v107 = [featureUsageMetricsCache4 featureUsageMetricFromName:kFeatureCandidateBarUsage forContext:v13];
      v141[3] = v107;
      v140[4] = kFeatureMultilingualUsage;
      obja = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
      v102 = [obja featureUsageMetricFromName:kFeatureMultilingualUsage forContext:v13];
      v141[4] = v102;
      v140[5] = kFeatureStringTypingSpeed;
      featureUsageMetricsCache5 = [(TITypingSession *)self->_currentSession featureUsageMetricsCache];
      v97 = [featureUsageMetricsCache5 featureUsageMetricFromName:kFeatureStringTypingSpeed forContext:v13];
      v141[5] = v97;
      v140[6] = kFeatureStringAssetAvailabilityStatus;
      sessionParams3 = [(TITypingSession *)self->_currentSession sessionParams];
      assetAvailabilityStatus = [sessionParams3 assetAvailabilityStatus];
      v77 = @"Installed";
      if (!assetAvailabilityStatus)
      {
        v77 = @"Unavailable";
      }

      v96 = v77;
      v141[6] = v96;
      v140[7] = kFeatureStringKeyboardLanguage;
      inputLanguage = [v13 inputLanguage];
      v141[7] = inputLanguage;
      v140[8] = kFeatureStringKeyboardRegion;
      inputRegion = [v13 inputRegion];
      v141[8] = inputRegion;
      v140[9] = kFeatureStringKeyboardVariant;
      inputVariant = [v13 inputVariant];
      v141[9] = inputVariant;
      v140[10] = kFeatureStringKeyboardSecondaryLanguage;
      secondaryLanguage = [v13 secondaryLanguage];
      v141[10] = secondaryLanguage;
      v140[11] = kFeatureStringKeyboardSecondaryRegion;
      secondaryRegion = [v13 secondaryRegion];
      v141[11] = secondaryRegion;
      v140[12] = kFeatureStringKeyboardLayout;
      [v13 layoutName];
      v84 = v83 = alignedCopy;
      v141[12] = v84;
      v140[13] = kFeatureStringKeyboardType;
      +[TIKBAnalyticsMetricsContext keyboardTypeEnumToString:](TIKBAnalyticsMetricsContext, "keyboardTypeEnumToString:", [v13 keyboardType]);
      v86 = v85 = v57;
      v141[13] = v86;
      v95 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v141 forKeys:v140 count:14];

      v57 = v85;
      alignedCopy = v83;

      v139[0] = v95;
      v139[1] = v85;
      v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v139 count:2];
      v88 = mergeDicts(v87);

      v16 = v123;
      mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
      testingParameters2 = [v13 testingParameters];
      [mEMORY[0x277D6F318] dispatchEventWithName:@"autocorrectionAccuracy" payload:v88 testingParameters:testingParameters2 allowSparsePayload:1];
    }

    keyboardState = v124;
  }

  else
  {
    v57 = IXADefaultLogFacility();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Input context has no locale", "-[TIAutocorrectionAccuracyAnalyzer analyzeWordEntryAligned:]"];
      *buf = 138412290;
      v150 = v58;
      _os_log_error_impl(&dword_22CA55000, v57, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  return v16 != 0;
}

- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence
{
  v23 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  alignedSessionCopy = alignedSession;
  objc_storeStrong(&self->_currentSession, session);
  if (confidence)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    alignedEntries = [alignedSessionCopy alignedEntries];
    v12 = [alignedEntries countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(alignedEntries);
          }

          if (![(TIAutocorrectionAccuracyAnalyzer *)self analyzeWordEntryAligned:*(*(&v18 + 1) + 8 * i)])
          {
            v16 = 0;
            goto LABEL_12;
          }
        }

        v13 = [alignedEntries countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v16 = 1;
LABEL_12:
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (TIAutocorrectionAccuracyAnalyzer)init
{
  v5.receiver = self;
  v5.super_class = TIAutocorrectionAccuracyAnalyzer;
  v2 = [(TIAutocorrectionAccuracyAnalyzer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TIAutocorrectionAccuracyAnalyzer *)v2 registerEventSpec];
  }

  return v3;
}

@end