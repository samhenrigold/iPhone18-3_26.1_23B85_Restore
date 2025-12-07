@interface PPFeedbackUtils
+ (BOOL)shouldSample:(id)sample;
+ (BOOL)shouldSampleExtraction:(id)extraction;
+ (id)_flattenArraylikeToFeatures:(void *)features featureName:;
+ (id)featuresForScoreDict:(id)dict;
+ (id)feedbackItemForPPFeedbackItem:(id)item;
+ (id)feedbackItemsByItemString:(id)string;
+ (id)feedbackMetadataForBaseFeedback:(id)feedback;
+ (id)scoredItemWithFeaturesForFeatureDictionary:(id)dictionary score:(float)score;
+ (void)addBoilerplateToFeedbackLog:(id)log;
+ (void)recordUniversalSearchSpotlightStatsFromFeedback:(id)feedback clientBundleId:(id)id clientIdentifier:(id)identifier;
+ (void)recordUserEventsFromFeedback:(id)feedback matchingFeedbackItems:(id)items clientBundleId:(id)id clientIdentifier:(id)identifier domain:(unsigned __int8)domain;
@end

@implementation PPFeedbackUtils

+ (id)featuresForScoreDict:(id)dict
{
  v46 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v4 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [dictCopy featureNames];
  v5 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    do
    {
      v8 = 0;
      do
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v38 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        if ([v9 hasPrefix:@"scalar"])
        {
          v11 = [dictCopy featureValueForName:v9];
          multiArrayValue = [v11 multiArrayValue];
          v13 = [multiArrayValue objectAtIndexedSubscript:0];
          [v4 setObject:v13 forKeyedSubscript:v9];

LABEL_24:
          goto LABEL_25;
        }

        if ([v9 hasPrefix:@"array"])
        {
          v11 = [dictCopy featureValueForName:v9];
          if (v11)
          {
            v14 = v11;
          }

          else
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"PPFeedbackUtils.m" lineNumber:314 description:@"The value at a listed feature output should be nonnull."];

            v14 = 0;
          }

          multiArrayValue = [PPFeedbackUtils _flattenArraylikeToFeatures:v14 featureName:v9];
LABEL_12:
          [v4 addEntriesFromDictionary:multiArrayValue];
          goto LABEL_24;
        }

        if (![v9 hasPrefix:@"object"])
        {
          goto LABEL_26;
        }

        v11 = [dictCopy featureValueForName:v9];
        type = [v11 type];
        if (type > 2)
        {
          if (type == 6)
          {
            v11 = v11;
            v22 = v9;
            v23 = objc_opt_self();
            if ([v11 type] != 6)
            {
              currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler2 handleFailureInMethod:sel__flattenDictionarylikeToFeatures_featureName_ object:v23 file:@"PPFeedbackUtils.m" lineNumber:297 description:{@"Invalid parameter not satisfying: %@", @"value.type == MLFeatureTypeDictionary"}];
            }

            v24 = objc_alloc(MEMORY[0x277CBEB38]);
            dictionaryValue = [v11 dictionaryValue];
            v26 = [v24 initWithCapacity:{objc_msgSend(dictionaryValue, "count")}];

            dictionaryValue2 = [v11 dictionaryValue];
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = __64__PPFeedbackUtils__flattenDictionarylikeToFeatures_featureName___block_invoke;
            v42[3] = &unk_278971548;
            v28 = v26;
            v43 = v28;
            v44 = v22;
            v36 = v22;
            [dictionaryValue2 enumerateKeysAndObjectsUsingBlock:v42];

            v29 = v44;
            multiArrayValue = v28;

            goto LABEL_12;
          }

          if (type == 3)
          {
            v18 = objc_alloc(MEMORY[0x277CCACA8]);
            multiArrayValue = [v11 stringValue];
            v19 = [v18 initWithFormat:@"%@_str_%@", v9, multiArrayValue];
            v20 = v4;
            v21 = &unk_284783A50;
LABEL_23:
            [v20 setObject:v21 forKeyedSubscript:v19];

            goto LABEL_24;
          }
        }

        else
        {
          if (type == 1)
          {
            multiArrayValue = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v11, "int64Value")}];
            v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_int", v9];
            goto LABEL_22;
          }

          if (type == 2)
          {
            v16 = MEMORY[0x277CCABB0];
            [v11 doubleValue];
            multiArrayValue = [v16 numberWithDouble:?];
            v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_dbl", v9];
LABEL_22:
            v19 = v17;
            v20 = v4;
            v21 = multiArrayValue;
            goto LABEL_23;
          }
        }

LABEL_25:

LABEL_26:
        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v32 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
      v6 = v32;
    }

    while (v32);
  }

  return v4;
}

+ (id)_flattenArraylikeToFeatures:(void *)features featureName:
{
  v4 = a2;
  featuresCopy = features;
  v6 = objc_opt_self();
  if ([v4 type] != 5)
  {
    if ([v4 type] != 7 || (objc_msgSend(v4, "sequenceValue"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "type"), v7, v8 != 1))
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__flattenArraylikeToFeatures_featureName_ object:v6 file:@"PPFeedbackUtils.m" lineNumber:275 description:{@"Invalid parameter not satisfying: %@", @"value.type == MLFeatureTypeMultiArray || (value.type == MLFeatureTypeSequence && value.sequenceValue.type == MLFeatureTypeInt64)"}];
    }
  }

  if ([v4 type] == 7)
  {
    sequenceValue = [v4 sequenceValue];
    int64Values = [sequenceValue int64Values];
  }

  else
  {
    sequenceValue = [v4 multiArrayValue];
    int64Values = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(sequenceValue, "count")}];
    if ([sequenceValue count])
    {
      v12 = 0;
      do
      {
        v13 = [sequenceValue objectAtIndexedSubscript:v12];
        [int64Values setObject:v13 atIndexedSubscript:v12];

        ++v12;
      }

      while (v12 < [sequenceValue count]);
    }
  }

  v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(int64Values, "count")}];
  if ([int64Values count])
  {
    v15 = 0;
    do
    {
      v16 = [int64Values objectAtIndexedSubscript:v15];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%lu", featuresCopy, v15];
      [v14 setObject:v16 forKeyedSubscript:v17];

      ++v15;
    }

    while (v15 < [int64Values count]);
  }

  return v14;
}

void __64__PPFeedbackUtils__flattenDictionarylikeToFeatures_featureName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  v8 = a2;
  v9 = [[v6 alloc] initWithFormat:@"%@_dict_%@", *(a1 + 40), v8];

  [v5 setObject:v7 forKeyedSubscript:v9];
}

+ (void)recordUniversalSearchSpotlightStatsFromFeedback:(id)feedback clientBundleId:(id)id clientIdentifier:(id)identifier
{
  v21[4] = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  idCopy = id;
  identifierCopy = identifier;
  v9 = objc_autoreleasePoolPush();
  v20[0] = *MEMORY[0x277D3A270];
  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = [PPMetricsUtils stringifyDomain:7];
  v12 = [v10 initWithFormat:@"%@%@", @"Portrait", v11];
  v21[0] = v12;
  v20[1] = *MEMORY[0x277D3A288];
  v13 = +[PPTrialWrapper sharedInstance];
  concatenatedTreatmentNames = [v13 concatenatedTreatmentNames];
  v21[1] = concatenatedTreatmentNames;
  v20[2] = *MEMORY[0x277D3A280];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(feedbackCopy, "offeredCSSICount")}];
  v21[2] = v15;
  v20[3] = *MEMORY[0x277D3A260];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(feedbackCopy, "engagedCSSICount")}];
  v21[3] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];

  mEMORY[0x277D3A250] = [MEMORY[0x277D3A250] sharedInstance];
  [mEMORY[0x277D3A250] logMessage:v17 messageName:*MEMORY[0x277D3A268]];

  objc_autoreleasePoolPop(v9);
}

+ (void)recordUserEventsFromFeedback:(id)feedback matchingFeedbackItems:(id)items clientBundleId:(id)id clientIdentifier:(id)identifier domain:(unsigned __int8)domain
{
  domainCopy = domain;
  v126 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  itemsCopy = items;
  idCopy = id;
  identifierCopy = identifier;
  v95 = itemsCopy;
  if (![identifierCopy isEqualToString:@"ICLex"])
  {
    _pas_stringBackedByUTF8CString = [idCopy _pas_stringBackedByUTF8CString];

    _pas_stringBackedByUTF8CString2 = [identifierCopy _pas_stringBackedByUTF8CString];

    feedbackItems = [feedbackCopy feedbackItems];
    v92 = [feedbackItems count];

    v49 = [PPMetricsUtils stringifyDomain:domainCopy];
    v50 = objc_autoreleasePoolPush();
    v100 = v49;
    contexta = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%@", v49, _pas_stringBackedByUTF8CString];
    objc_autoreleasePoolPop(v50);
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    feedbackItems2 = [feedbackCopy feedbackItems];
    v52 = [feedbackItems2 countByEnumeratingWithState:&v104 objects:v118 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = 0;
      v55 = 0;
      v56 = *v105;
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v105 != v56)
          {
            objc_enumerationMutation(feedbackItems2);
          }

          v58 = *(*(&v104 + 1) + 8 * i);
          if ([v58 itemFeedbackType] == 3)
          {
            v54 = (v54 + 1);
          }

          else if ([v58 itemFeedbackType] == 1 || objc_msgSend(v58, "itemFeedbackType") == 2)
          {
            v55 = (v55 + 1);
          }
        }

        v53 = [feedbackItems2 countByEnumeratingWithState:&v104 objects:v118 count:16];
      }

      while (v53);
    }

    else
    {
      v54 = 0;
      v55 = 0;
    }

    v59 = objc_autoreleasePoolPush();
    v116[0] = @"clientId";
    v116[1] = @"bundleId";
    v117[0] = _pas_stringBackedByUTF8CString2;
    v117[1] = _pas_stringBackedByUTF8CString;
    v116[2] = @"domain";
    v60 = [PPMetricsUtils stringifyDomain:domainCopy];
    v117[2] = v60;
    v116[3] = @"eventCount";
    v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v55];
    v117[3] = v61;
    v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:4];

    objc_autoreleasePoolPop(v59);
    [PPMetricsDispatcher logPayloadForEvent:@"com.apple.proactive.PersonalizationPortrait.PositivePersonalizationEvent" payload:v62 inBackground:1];

    v63 = objc_autoreleasePoolPush();
    v114[0] = @"clientId";
    v114[1] = @"bundleId";
    v115[0] = _pas_stringBackedByUTF8CString2;
    v115[1] = _pas_stringBackedByUTF8CString;
    v114[2] = @"domain";
    v64 = [PPMetricsUtils stringifyDomain:domainCopy];
    v115[2] = v64;
    v114[3] = @"eventCount";
    v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v54];
    v115[3] = v65;
    v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:4];

    objc_autoreleasePoolPop(v63);
    [PPMetricsDispatcher logPayloadForEvent:@"com.apple.proactive.PersonalizationPortrait.FrustrationEvent" payload:v66 inBackground:1];

    v67 = objc_autoreleasePoolPush();
    v68 = *MEMORY[0x277D3A270];
    v113[0] = contexta;
    v69 = *MEMORY[0x277D3A288];
    v112[0] = v68;
    v112[1] = v69;
    v70 = +[PPTrialWrapper sharedInstance];
    concatenatedTreatmentNames = [v70 concatenatedTreatmentNames];
    v113[1] = concatenatedTreatmentNames;
    v112[2] = *MEMORY[0x277D3A278];
    v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v54];
    v113[2] = v72;
    v112[3] = *MEMORY[0x277D3A260];
    v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v55];
    v113[3] = v73;
    v112[4] = *MEMORY[0x277D3A280];
    v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v92];
    v113[4] = v74;
    v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:5];

    mEMORY[0x277D3A250] = [MEMORY[0x277D3A250] sharedInstance];
    [mEMORY[0x277D3A250] logMessage:v75 messageName:*MEMORY[0x277D3A268]];

    objc_autoreleasePoolPop(v67);
    v77 = _pas_stringBackedByUTF8CString2;
    goto LABEL_45;
  }

  v89 = identifierCopy;
  v15 = itemsCopy;
  v16 = idCopy;
  objc_opt_self();
  [v16 _pas_stringBackedByUTF8CString];
  v91 = v90 = v16;

  v17 = [v15 count];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v108 objects:v125 count:16];
  v99 = v18;
  if (!v19)
  {
    v44 = 0;
    v102 = 0;
    itemString4 = 0;
    v46 = v18;
LABEL_40:

    goto LABEL_44;
  }

  v88 = v17;
  v93 = domainCopy;
  v94 = feedbackCopy;
  v20 = 0;
  v21 = 0;
  itemString4 = 0;
  v23 = *v109;
  v24 = v19;
  context = *v109;
  do
  {
    v25 = 0;
    v101 = v24;
    do
    {
      v26 = itemString4;
      if (*v109 != v23)
      {
        objc_enumerationMutation(v18);
      }

      v27 = *(*(&v108 + 1) + 8 * v25);
      if (v26)
      {
        itemString = [*(*(&v108 + 1) + 8 * v25) itemString];
        if ([itemString isEqualToString:v26])
        {
          itemFeedbackType = [v27 itemFeedbackType];

          if (itemFeedbackType == 2)
          {
            v21 = (v21 + 1);
            goto LABEL_20;
          }
        }

        else
        {
        }
      }

      else if ([v18 count] >= 2)
      {
        v30 = v20;
        v31 = v21;
        firstObject = [v18 firstObject];
        itemString2 = [firstObject itemString];
        v34 = [v18 objectAtIndexedSubscript:1];
        itemString3 = [v34 itemString];
        v36 = [itemString2 isEqual:itemString3];

        if (v36)
        {
          v21 = (v31 + 1);
          v18 = v99;
          v20 = v30;
        }

        else
        {
          v20 = (v30 + 1);
          v18 = v99;
          v21 = v31;
        }

        v23 = context;
        v24 = v101;
        goto LABEL_20;
      }

      if ([v27 itemFeedbackType] == 2 || objc_msgSend(v27, "itemFeedbackType") == 1)
      {
        v20 = (v20 + 1);
      }

LABEL_20:
      itemString4 = [v27 itemString];

      ++v25;
    }

    while (v24 != v25);
    v24 = [v18 countByEnumeratingWithState:&v108 objects:v125 count:16];
  }

  while (v24);

  if (v21)
  {
    v37 = objc_autoreleasePoolPush();
    v123[0] = @"clientId";
    v123[1] = @"bundleId";
    v124[0] = @"ICLex";
    v124[1] = v91;
    v123[2] = @"domain";
    v38 = [PPMetricsUtils stringifyDomain:v93];
    v124[2] = v38;
    v123[3] = @"eventCount";
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v21];
    v124[3] = v39;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:4];
    v41 = v40 = v20;

    objc_autoreleasePoolPop(v37);
    [PPMetricsDispatcher logPayloadForEvent:@"com.apple.proactive.PersonalizationPortrait.FrustrationEvent" payload:v41 inBackground:1];

    v20 = v40;
  }

  v102 = v21;
  feedbackCopy = v94;
  v17 = v88;
  if (v20)
  {
    v42 = objc_autoreleasePoolPush();
    v121[0] = @"clientId";
    v121[1] = @"bundleId";
    v122[0] = @"ICLex";
    v122[1] = v91;
    v121[2] = @"domain";
    v43 = [PPMetricsUtils stringifyDomain:v93];
    v122[2] = v43;
    v121[3] = @"eventCount";
    v44 = v20;
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v20];
    v122[3] = v45;
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:v121 count:4];

    objc_autoreleasePoolPop(v42);
    [PPMetricsDispatcher logPayloadForEvent:@"com.apple.proactive.PersonalizationPortrait.PositivePersonalizationEvent" payload:v46 inBackground:1];
    goto LABEL_40;
  }

  v44 = 0;
LABEL_44:
  contextb = objc_autoreleasePoolPush();
  v119[0] = *MEMORY[0x277D3A270];
  v78 = objc_alloc(MEMORY[0x277CCACA8]);
  v79 = [PPMetricsUtils stringifyDomain:1];
  v80 = [v78 initWithFormat:@"%@%@", @"Portrait", v79];
  v120[0] = v80;
  v119[1] = *MEMORY[0x277D3A288];
  v81 = +[PPTrialWrapper sharedInstance];
  concatenatedTreatmentNames2 = [v81 concatenatedTreatmentNames];
  v120[1] = concatenatedTreatmentNames2;
  v119[2] = *MEMORY[0x277D3A280];
  v83 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17];
  v120[2] = v83;
  v119[3] = *MEMORY[0x277D3A260];
  v84 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v44];
  v120[3] = v84;
  v119[4] = *MEMORY[0x277D3A278];
  v85 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v102];
  v120[4] = v85;
  v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:5];

  mEMORY[0x277D3A250]2 = [MEMORY[0x277D3A250] sharedInstance];
  [mEMORY[0x277D3A250]2 logMessage:v86 messageName:*MEMORY[0x277D3A268]];

  objc_autoreleasePoolPop(contextb);
  v77 = v89;
  _pas_stringBackedByUTF8CString = v90;
LABEL_45:
}

+ (id)scoredItemWithFeaturesForFeatureDictionary:(id)dictionary score:(float)score
{
  v23 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = dictionaryCopy;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 isEqualToString:{@"score", v18}])
        {
          v13 = [v7 objectForKeyedSubscript:v12];
          [v13 floatValue];
          score = v14;
        }

        else
        {
          v13 = objc_opt_new();
          [v13 setFeatureId:v12];
          v15 = [v7 objectForKeyedSubscript:v12];
          [v15 floatValue];
          [v13 setValue:?];

          [v6 addFeatures:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  *&v16 = score;
  [v6 setScore:v16];

  return v6;
}

+ (id)feedbackMetadataForBaseFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v4 = objc_opt_new();
  clientBundleId = [feedbackCopy clientBundleId];
  [v4 setClientBundleId:clientBundleId];

  clientIdentifier = [feedbackCopy clientIdentifier];
  [v4 setClientIdentifier:clientIdentifier];

  isMapped = [feedbackCopy isMapped];
  [v4 setIsMapped:isMapped];

  return v4;
}

+ (id)feedbackItemForPPFeedbackItem:(id)item
{
  itemCopy = item;
  v4 = objc_opt_new();
  [v4 setFeedbackType:0];
  itemFeedbackType = [itemCopy itemFeedbackType];

  if (itemFeedbackType <= 5)
  {
    [v4 setFeedbackType:itemFeedbackType];
  }

  return v4;
}

+ (void)addBoilerplateToFeedbackLog:(id)log
{
  logCopy = log;
  v3 = objc_opt_new();
  v4 = +[PPTrialWrapper sharedInstance];
  concatenatedTreatmentNames = [v4 concatenatedTreatmentNames];
  [v3 setAbGroupIdentifier:concatenatedTreatmentNames];

  [logCopy addExperimentalGroups:v3];
  v6 = +[PPConfiguration sharedInstance];
  feedbackSessionLogsGeohashLength = [v6 feedbackSessionLogsGeohashLength];

  if (feedbackSessionLogsGeohashLength >= 1)
  {
    v8 = +[PPSettings sharedInstance];
    isAuthorizedToLogLocation = [v8 isAuthorizedToLogLocation];

    if (isAuthorizedToLogLocation)
    {
      v10 = [PPRoutineSupport fetchLocationOfInterestByType:0];
      v11 = v10;
      if (v10)
      {
        v12 = MEMORY[0x277D3A578];
        location = [v10 location];
        [location latitude];
        v15 = v14;
        location2 = [v11 location];
        [location2 longitude];
        v18 = [v12 coordinatesToGeoHashWithLength:feedbackSessionLogsGeohashLength latitude:v15 longitude:v17];
        [logCopy setHomeLocationGeohash:v18];
      }
    }
  }
}

+ (BOOL)shouldSampleExtraction:(id)extraction
{
  if (![MEMORY[0x277D3A578] isFirstPartyApp:extraction])
  {
    return 0;
  }

  v3 = +[PPConfiguration sharedInstance];
  [v3 feedbackSessionLogsExtractionsSamplingRate];
  v5 = v4;
  objc_opt_self();
  v6 = arc4random_uniform(0xFFFFFFFF) / 4294967300.0 < v5;

  return v6;
}

+ (BOOL)shouldSample:(id)sample
{
  sampleCopy = sample;
  v4 = +[PPConfiguration sharedInstance];
  feedbackSessionLogsSamplingRateOverrides = [v4 feedbackSessionLogsSamplingRateOverrides];

  allKeys = [feedbackSessionLogsSamplingRateOverrides allKeys];
  v7 = [allKeys containsObject:sampleCopy];

  if (v7)
  {
    v8 = [feedbackSessionLogsSamplingRateOverrides objectForKeyedSubscript:sampleCopy];
    [v8 doubleValue];
    v10 = v9;
    objc_opt_self();
    v11 = arc4random_uniform(0xFFFFFFFF) / 4294967300.0 < v10;
  }

  else
  {
    v12 = +[PPConfiguration sharedInstance];
    [v12 feedbackSessionLogsSamplingRate];
    v14 = v13;

    objc_opt_self();
    v11 = arc4random_uniform(0xFFFFFFFF) / 4294967300.0 < v14;
  }

  return v11;
}

+ (id)feedbackItemsByItemString:(id)string
{
  v22 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = stringCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        itemString = [v10 itemString];
        v13 = [v4 objectForKeyedSubscript:itemString];

        if (!v13)
        {
          v14 = objc_opt_new();
          [v4 setObject:v14 forKeyedSubscript:itemString];
        }

        v15 = [v4 objectForKeyedSubscript:itemString];
        [v15 addObject:v10];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v4;
}

@end