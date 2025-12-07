@interface LCFELCoreAnalyticsHandler
+ (BOOL)emitChangePointDetectionEvent:(id)event;
+ (BOOL)emitFeatureImportanceEvent:(id)event;
+ (BOOL)emitFeatureStatisticEvents:(id)events usageType:(int64_t)type batchProviderInfo:(id)info;
+ (BOOL)emitModelTrainingEvent:(id)event;
+ (BOOL)emitShadowEvaluationEvent:(id)event;
@end

@implementation LCFELCoreAnalyticsHandler

+ (BOOL)emitFeatureStatisticEvents:(id)events usageType:(int64_t)type batchProviderInfo:(id)info
{
  v108 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  infoCopy = info;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = [infoCopy positiveFeatureStatistics];
  v7 = 0x277CCA000uLL;
  v84 = infoCopy;
  v54 = [obj countByEnumeratingWithState:&v95 objects:v107 count:16];
  if (v54)
  {
    v51 = *v96;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v96 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v95 + 1) + 8 * i);
        v105[0] = @"contextId";
        contextId = [infoCopy contextId];
        uUIDString = [contextId UUIDString];
        v106[0] = uUIDString;
        v105[1] = @"eventId";
        eventId = [infoCopy eventId];
        uUIDString2 = [eventId UUIDString];
        v106[1] = uUIDString2;
        v105[2] = @"featureValueStatisticId";
        uUIDString3 = [eventsCopy UUIDString];
        v106[2] = uUIDString3;
        v105[3] = @"usageType";
        v66 = [MEMORY[0x277CCABB0] numberWithInteger:type];
        v106[3] = v66;
        v105[4] = @"timeRange";
        timeRange = [infoCopy timeRange];
        v106[4] = timeRange;
        v105[5] = @"faetureStoreKey";
        featureStoreKey = [infoCopy featureStoreKey];
        v11 = featureStoreKey;
        if (!featureStoreKey)
        {
          null = [MEMORY[0x277CBEB68] null];
          v11 = null;
        }

        v106[5] = v11;
        v105[6] = @"featureCount";
        featureCount = [infoCopy featureCount];
        v106[6] = featureCount;
        v106[7] = &unk_2868047F8;
        v105[7] = @"sampleType";
        v105[8] = @"featureName";
        featureName = [v9 featureName];
        v106[8] = featureName;
        v105[9] = @"featureStat_count";
        v12 = [v9 count];
        v106[9] = v12;
        v105[10] = @"featureStat_mean";
        mean = [v9 mean];
        notANumber = [MEMORY[0x277CCA980] notANumber];
        if ([mean isEqualToNumber:notANumber])
        {
          [MEMORY[0x277CBEB68] null];
        }

        else
        {
          [v9 mean];
        }
        v15 = ;
        v106[10] = v15;
        v105[11] = @"featureStat_stddev";
        stddev = [v9 stddev];
        notANumber2 = [MEMORY[0x277CCA980] notANumber];
        if ([stddev isEqualToNumber:notANumber2])
        {
          [MEMORY[0x277CBEB68] null];
        }

        else
        {
          [v9 stddev];
        }
        v18 = ;
        v106[11] = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:12];

        if (!featureStoreKey)
        {
        }

        [LCFELCoreAnalyticsHandler myAnalyticsSendEvent:@"com.apple.LighthouseCoreMLFoundations.LCFELFeatureValueStatistic" eventPayload:v19];
        infoCopy = v84;
        v7 = 0x277CCA000uLL;
      }

      v54 = [obj countByEnumeratingWithState:&v95 objects:v107 count:16];
    }

    while (v54);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obja = [infoCopy negativeFeatureStatistics];
  v55 = [obja countByEnumeratingWithState:&v91 objects:v104 count:16];
  if (v55)
  {
    v52 = *v92;
    do
    {
      for (j = 0; j != v55; ++j)
      {
        if (*v92 != v52)
        {
          objc_enumerationMutation(obja);
        }

        v21 = *(*(&v91 + 1) + 8 * j);
        v102[0] = @"contextId";
        contextId2 = [infoCopy contextId];
        uUIDString4 = [contextId2 UUIDString];
        v103[0] = uUIDString4;
        v102[1] = @"eventId";
        eventId2 = [infoCopy eventId];
        uUIDString5 = [eventId2 UUIDString];
        v103[1] = uUIDString5;
        v102[2] = @"featureValueStatisticId";
        uUIDString6 = [eventsCopy UUIDString];
        v103[2] = uUIDString6;
        v102[3] = @"usageType";
        v67 = [MEMORY[0x277CCABB0] numberWithInteger:type];
        v103[3] = v67;
        v102[4] = @"timeRange";
        timeRange2 = [infoCopy timeRange];
        v103[4] = timeRange2;
        v102[5] = @"faetureStoreKey";
        featureStoreKey2 = [infoCopy featureStoreKey];
        v23 = featureStoreKey2;
        if (!featureStoreKey2)
        {
          null = [MEMORY[0x277CBEB68] null];
          v23 = null;
        }

        v103[5] = v23;
        v102[6] = @"featureCount";
        featureCount2 = [infoCopy featureCount];
        v103[6] = featureCount2;
        v103[7] = &unk_286804810;
        v102[7] = @"sampleType";
        v102[8] = @"featureName";
        featureName2 = [v21 featureName];
        v103[8] = featureName2;
        v102[9] = @"featureStat_count";
        v24 = [v21 count];
        v103[9] = v24;
        v102[10] = @"featureStat_mean";
        mean2 = [v21 mean];
        notANumber3 = [MEMORY[0x277CCA980] notANumber];
        if ([mean2 isEqualToNumber:notANumber3])
        {
          [MEMORY[0x277CBEB68] null];
        }

        else
        {
          [v21 mean];
        }
        v27 = ;
        v103[10] = v27;
        v102[11] = @"featureStat_stddev";
        stddev2 = [v21 stddev];
        notANumber4 = [MEMORY[0x277CCA980] notANumber];
        if ([stddev2 isEqualToNumber:notANumber4])
        {
          [MEMORY[0x277CBEB68] null];
        }

        else
        {
          [v21 stddev];
        }
        v30 = ;
        v103[11] = v30;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:12];

        if (!featureStoreKey2)
        {
        }

        [LCFELCoreAnalyticsHandler myAnalyticsSendEvent:@"com.apple.LighthouseCoreMLFoundations.LCFELFeatureValueStatistic" eventPayload:v31];
        infoCopy = v84;
        v7 = 0x277CCA000uLL;
      }

      v55 = [obja countByEnumeratingWithState:&v91 objects:v104 count:16];
    }

    while (v55);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  totalFeatureStatistics = [infoCopy totalFeatureStatistics];
  allValues = [totalFeatureStatistics allValues];

  objb = allValues;
  v56 = [allValues countByEnumeratingWithState:&v87 objects:v101 count:16];
  if (v56)
  {
    v53 = *v88;
    do
    {
      for (k = 0; k != v56; ++k)
      {
        if (*v88 != v53)
        {
          objc_enumerationMutation(objb);
        }

        v35 = *(*(&v87 + 1) + 8 * k);
        v99[0] = @"contextId";
        contextId3 = [infoCopy contextId];
        uUIDString7 = [contextId3 UUIDString];
        v100[0] = uUIDString7;
        v99[1] = @"eventId";
        eventId3 = [infoCopy eventId];
        uUIDString8 = [eventId3 UUIDString];
        v100[1] = uUIDString8;
        v99[2] = @"featureValueStatisticId";
        uUIDString9 = [eventsCopy UUIDString];
        v100[2] = uUIDString9;
        v99[3] = @"usageType";
        v68 = [MEMORY[0x277CCABB0] numberWithInteger:type];
        v100[3] = v68;
        v99[4] = @"timeRange";
        timeRange3 = [infoCopy timeRange];
        v100[4] = timeRange3;
        v99[5] = @"faetureStoreKey";
        featureStoreKey3 = [infoCopy featureStoreKey];
        v37 = featureStoreKey3;
        if (!featureStoreKey3)
        {
          null = [MEMORY[0x277CBEB68] null];
          v37 = null;
        }

        v100[5] = v37;
        v99[6] = @"featureCount";
        featureCount3 = [infoCopy featureCount];
        v100[6] = featureCount3;
        v100[7] = &unk_286804828;
        v99[7] = @"sampleType";
        v99[8] = @"featureName";
        featureName3 = [v35 featureName];
        v100[8] = featureName3;
        v99[9] = @"featureStat_count";
        v38 = [v35 count];
        v100[9] = v38;
        v99[10] = @"featureStat_mean";
        mean3 = [v35 mean];
        notANumber5 = [*(v7 + 2432) notANumber];
        if ([mean3 isEqualToNumber:notANumber5])
        {
          [MEMORY[0x277CBEB68] null];
        }

        else
        {
          [v35 mean];
        }
        v41 = ;
        v100[10] = v41;
        v99[11] = @"featureStat_stddev";
        stddev3 = [v35 stddev];
        notANumber6 = [*(v7 + 2432) notANumber];
        if ([stddev3 isEqualToNumber:notANumber6])
        {
          [MEMORY[0x277CBEB68] null];
        }

        else
        {
          [v35 stddev];
        }
        v44 = ;
        v100[11] = v44;
        v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:12];

        if (!featureStoreKey3)
        {
        }

        [LCFELCoreAnalyticsHandler myAnalyticsSendEvent:@"com.apple.LighthouseCoreMLFoundations.LCFELFeatureValueStatistic" eventPayload:v45];
        infoCopy = v84;
        v7 = 0x277CCA000;
      }

      v56 = [objb countByEnumeratingWithState:&v87 objects:v101 count:16];
    }

    while (v56);
  }

  return 1;
}

+ (BOOL)emitModelTrainingEvent:(id)event
{
  v25[7] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  uUID = [MEMORY[0x277CCAD78] UUID];
  bachProviderInfo = [eventCopy bachProviderInfo];
  if (bachProviderInfo)
  {
    [LCFELCoreAnalyticsHandler emitFeatureStatisticEvents:uUID usageType:1 batchProviderInfo:bachProviderInfo];
  }

  v22 = bachProviderInfo;
  v24[0] = @"contextId";
  contextId = [eventCopy contextId];
  uUIDString = [contextId UUIDString];
  v25[0] = uUIDString;
  v24[1] = @"eventId";
  eventId = [eventCopy eventId];
  uUIDString2 = [eventId UUIDString];
  v25[1] = uUIDString2;
  v24[2] = @"modelName";
  modelName = [eventCopy modelName];
  v25[2] = modelName;
  v24[3] = @"succeeded";
  succeeded = [eventCopy succeeded];
  v25[3] = succeeded;
  v24[4] = @"errorDomain";
  trainingError = [eventCopy trainingError];
  domain = [trainingError domain];
  null = domain;
  if (!domain)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v25[4] = null;
  v24[5] = @"errorCodeEnum";
  v10 = MEMORY[0x277CCABB0];
  trainingError2 = [eventCopy trainingError];
  v12 = [v10 numberWithInteger:{objc_msgSend(trainingError2, "code")}];
  null2 = v12;
  if (!v12)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v25[5] = null2;
  v24[6] = @"featureValueStatisticId";
  v23 = uUID;
  uUIDString3 = [uUID UUIDString];
  v25[6] = uUIDString3;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:7];

  if (!v12)
  {
  }

  if (!domain)
  {
  }

  [LCFELCoreAnalyticsHandler myAnalyticsSendEvent:@"com.apple.LighthouseCoreMLFoundations.LCFELModelTrainingEvent" eventPayload:v15];
  return 1;
}

+ (BOOL)emitShadowEvaluationEvent:(id)event
{
  v27[8] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  uUID = [MEMORY[0x277CCAD78] UUID];
  inputBachProviderInfo = [eventCopy inputBachProviderInfo];
  if (inputBachProviderInfo)
  {
    [LCFELCoreAnalyticsHandler emitFeatureStatisticEvents:uUID usageType:2 batchProviderInfo:inputBachProviderInfo];
  }

  v24 = inputBachProviderInfo;
  v26[0] = @"contextId";
  contextId = [eventCopy contextId];
  uUIDString = [contextId UUIDString];
  v27[0] = uUIDString;
  v26[1] = @"eventId";
  eventId = [eventCopy eventId];
  uUIDString2 = [eventId UUIDString];
  v27[1] = uUIDString2;
  v26[2] = @"modelName";
  modelName = [eventCopy modelName];
  v27[2] = modelName;
  v26[3] = @"succeeded";
  succeeded = [eventCopy succeeded];
  v27[3] = succeeded;
  v26[4] = @"errorDomain";
  evaluationError = [eventCopy evaluationError];
  domain = [evaluationError domain];
  null = domain;
  if (!domain)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v27[4] = null;
  v26[5] = @"errorCodeEnum";
  v8 = MEMORY[0x277CCABB0];
  evaluationError2 = [eventCopy evaluationError];
  v10 = [v8 numberWithInteger:{objc_msgSend(evaluationError2, "code")}];
  null2 = v10;
  if (!v10)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v27[5] = null2;
  v26[6] = @"featureValueStatisticId";
  v25 = uUID;
  uUIDString3 = [uUID UUIDString];
  v27[6] = uUIDString3;
  v26[7] = @"accuracy";
  accuracy = [eventCopy accuracy];
  null3 = accuracy;
  if (!accuracy)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v27[7] = null3;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:8];
  if (!accuracy)
  {
  }

  if (!v10)
  {
  }

  if (!domain)
  {
  }

  [LCFELCoreAnalyticsHandler myAnalyticsSendEvent:@"com.apple.LighthouseCoreMLFoundations.LCFELShadowEvaluationEvent" eventPayload:v15];
  return 1;
}

+ (BOOL)emitFeatureImportanceEvent:(id)event
{
  v97 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = [eventCopy results];
  v69 = [obj countByEnumeratingWithState:&v90 objects:v96 count:16];
  if (v69)
  {
    v68 = *v91;
    do
    {
      v4 = 0;
      do
      {
        if (*v91 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v87 = v4;
        v5 = *(*(&v90 + 1) + 8 * v4);
        inputBachProviderInfo = [eventCopy inputBachProviderInfo];
        totalFeatureStatistics = [inputBachProviderInfo totalFeatureStatistics];
        featureName = [v5 featureName];
        v9 = [totalFeatureStatistics objectForKeyedSubscript:featureName];

        if (v9)
        {
          inputBachProviderInfo2 = [eventCopy inputBachProviderInfo];
          totalFeatureStatistics2 = [inputBachProviderInfo2 totalFeatureStatistics];
          featureName2 = [v5 featureName];
          v13 = [totalFeatureStatistics2 objectForKeyedSubscript:featureName2];
          v88 = [v13 count];

          inputBachProviderInfo3 = [eventCopy inputBachProviderInfo];
          totalFeatureStatistics3 = [inputBachProviderInfo3 totalFeatureStatistics];
          featureName3 = [v5 featureName];
          v17 = [totalFeatureStatistics3 objectForKeyedSubscript:featureName3];
          mean = [v17 mean];
          notANumber = [MEMORY[0x277CCA980] notANumber];
          v20 = [mean isEqualToNumber:notANumber];

          if (v20)
          {
            mean2 = 0;
          }

          else
          {
            inputBachProviderInfo4 = [eventCopy inputBachProviderInfo];
            totalFeatureStatistics4 = [inputBachProviderInfo4 totalFeatureStatistics];
            featureName4 = [v5 featureName];
            v27 = [totalFeatureStatistics4 objectForKeyedSubscript:featureName4];
            mean2 = [v27 mean];
          }

          inputBachProviderInfo5 = [eventCopy inputBachProviderInfo];
          totalFeatureStatistics5 = [inputBachProviderInfo5 totalFeatureStatistics];
          featureName5 = [v5 featureName];
          v31 = [totalFeatureStatistics5 objectForKeyedSubscript:featureName5];
          stddev = [v31 stddev];
          notANumber2 = [MEMORY[0x277CCA980] notANumber];
          v34 = [stddev isEqualToNumber:notANumber2];

          if (v34)
          {
            stddev2 = 0;
          }

          else
          {
            inputBachProviderInfo6 = [eventCopy inputBachProviderInfo];
            totalFeatureStatistics6 = [inputBachProviderInfo6 totalFeatureStatistics];
            featureName6 = [v5 featureName];
            v38 = [totalFeatureStatistics6 objectForKeyedSubscript:featureName6];
            stddev2 = [v38 stddev];
          }

          v23 = v88;
        }

        else
        {
          mean2 = 0;
          stddev2 = 0;
          v23 = &unk_286804840;
        }

        v94[0] = @"contextId";
        contextId = [eventCopy contextId];
        uUIDString = [contextId UUIDString];
        v95[0] = uUIDString;
        v94[1] = @"eventId";
        eventId = [eventCopy eventId];
        uUIDString2 = [eventId UUIDString];
        v95[1] = uUIDString2;
        v94[2] = @"succeeded";
        succeeded = [eventCopy succeeded];
        v95[2] = succeeded;
        v94[3] = @"errorDomain";
        analysisError = [eventCopy analysisError];
        domain = [analysisError domain];
        v40 = domain;
        if (!domain)
        {
          null = [MEMORY[0x277CBEB68] null];
          v40 = null;
        }

        v78 = domain;
        v95[3] = v40;
        v94[4] = @"errorCodeEnum";
        v41 = MEMORY[0x277CCABB0];
        analysisError2 = [eventCopy analysisError];
        v42 = [v41 numberWithInteger:{objc_msgSend(analysisError2, "code")}];
        v76 = v42;
        if (!v42)
        {
          null2 = [MEMORY[0x277CBEB68] null];
          v42 = null2;
        }

        v95[4] = v42;
        v94[5] = @"timeRange";
        inputBachProviderInfo7 = [eventCopy inputBachProviderInfo];
        timeRange = [inputBachProviderInfo7 timeRange];
        v95[5] = timeRange;
        v94[6] = @"faetureStoreKey";
        inputBachProviderInfo8 = [eventCopy inputBachProviderInfo];
        featureStoreKey = [inputBachProviderInfo8 featureStoreKey];
        v44 = featureStoreKey;
        if (!featureStoreKey)
        {
          null3 = [MEMORY[0x277CBEB68] null];
          v44 = null3;
        }

        v95[6] = v44;
        v94[7] = @"featureCount";
        inputBachProviderInfo9 = [eventCopy inputBachProviderInfo];
        featureCount = [inputBachProviderInfo9 featureCount];
        v95[7] = featureCount;
        v94[8] = @"featureName";
        featureName7 = [v5 featureName];
        v46 = featureName7;
        if (!featureName7)
        {
          null4 = [MEMORY[0x277CBEB68] null];
          v46 = null4;
        }

        v95[8] = v46;
        v95[9] = v23;
        v47 = mean2;
        v94[9] = @"featureStat_count";
        v94[10] = @"featureStat_mean";
        if (!mean2)
        {
          null5 = [MEMORY[0x277CBEB68] null];
          v47 = null5;
        }

        v85 = stddev2;
        v86 = mean2;
        v95[10] = v47;
        v94[11] = @"featureStat_stddev";
        v48 = stddev2;
        if (!stddev2)
        {
          null6 = [MEMORY[0x277CBEB68] null];
          v48 = null6;
        }

        v95[11] = v48;
        v94[12] = @"correlationCoefficient";
        correlationCoefficient = [v5 correlationCoefficient];
        notANumber3 = [MEMORY[0x277CCA980] notANumber];
        v89 = v23;
        if ([correlationCoefficient isEqualToNumber:notANumber3])
        {
          [MEMORY[0x277CBEB68] null];
        }

        else
        {
          [v5 correlationCoefficient];
        }
        v51 = ;
        v95[12] = v51;
        v94[13] = @"featureImportance";
        featureImportance = [v5 featureImportance];
        notANumber4 = [MEMORY[0x277CCA980] notANumber];
        if ([featureImportance isEqualToNumber:notANumber4])
        {
          [MEMORY[0x277CBEB68] null];
        }

        else
        {
          [v5 featureImportance];
        }
        v54 = ;
        v95[13] = v54;
        v94[14] = @"targetLabelFeatureName";
        v55 = eventCopy;
        targetLabelFeatureName = [eventCopy targetLabelFeatureName];
        v57 = targetLabelFeatureName;
        if (!targetLabelFeatureName)
        {
          null7 = [MEMORY[0x277CBEB68] null];
          v57 = null7;
        }

        v95[14] = v57;
        v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:15];
        if (!targetLabelFeatureName)
        {
        }

        if (!v85)
        {
        }

        eventCopy = v55;
        if (v86)
        {
          if (featureName7)
          {
            goto LABEL_41;
          }
        }

        else
        {

          if (featureName7)
          {
            goto LABEL_41;
          }
        }

LABEL_41:
        if (!featureStoreKey)
        {
        }

        if (!v76)
        {
        }

        if (!v78)
        {
        }

        [LCFELCoreAnalyticsHandler myAnalyticsSendEvent:@"com.apple.LighthouseCoreMLFoundations.LCFELFeatureImportanceEvent" eventPayload:v70];
        v4 = v87 + 1;
      }

      while (v69 != v87 + 1);
      v58 = [obj countByEnumeratingWithState:&v90 objects:v96 count:16];
      v69 = v58;
    }

    while (v58);
  }

  return 1;
}

+ (BOOL)emitChangePointDetectionEvent:(id)event
{
  v93 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = [eventCopy results];
  v68 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
  if (v68)
  {
    v66 = *v87;
    v67 = eventCopy;
    do
    {
      v4 = 0;
      do
      {
        if (*v87 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v81 = v4;
        v5 = *(*(&v86 + 1) + 8 * v4);
        v6 = MEMORY[0x277CCAAA0];
        changepointTimestamps = [v5 changepointTimestamps];
        v85 = 0;
        v8 = [v6 dataWithJSONObject:changepointTimestamps options:1 error:&v85];
        v79 = v85;

        v80 = v8;
        v84 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
        inputBachProviderInfo = [eventCopy inputBachProviderInfo];
        totalFeatureStatistics = [inputBachProviderInfo totalFeatureStatistics];
        featureName = [v5 featureName];
        v12 = [totalFeatureStatistics objectForKeyedSubscript:featureName];

        if (v12)
        {
          inputBachProviderInfo2 = [eventCopy inputBachProviderInfo];
          totalFeatureStatistics2 = [inputBachProviderInfo2 totalFeatureStatistics];
          featureName2 = [v5 featureName];
          v16 = [totalFeatureStatistics2 objectForKeyedSubscript:featureName2];
          v83 = [v16 count];

          inputBachProviderInfo3 = [eventCopy inputBachProviderInfo];
          totalFeatureStatistics3 = [inputBachProviderInfo3 totalFeatureStatistics];
          featureName3 = [v5 featureName];
          v20 = [totalFeatureStatistics3 objectForKeyedSubscript:featureName3];
          mean = [v20 mean];
          notANumber = [MEMORY[0x277CCA980] notANumber];
          v23 = [mean isEqualToNumber:notANumber];

          if (v23)
          {
            mean2 = 0;
          }

          else
          {
            inputBachProviderInfo4 = [eventCopy inputBachProviderInfo];
            totalFeatureStatistics4 = [inputBachProviderInfo4 totalFeatureStatistics];
            featureName4 = [v5 featureName];
            v30 = [totalFeatureStatistics4 objectForKeyedSubscript:featureName4];
            mean2 = [v30 mean];
          }

          inputBachProviderInfo5 = [eventCopy inputBachProviderInfo];
          totalFeatureStatistics5 = [inputBachProviderInfo5 totalFeatureStatistics];
          featureName5 = [v5 featureName];
          v34 = [totalFeatureStatistics5 objectForKeyedSubscript:featureName5];
          stddev = [v34 stddev];
          notANumber2 = [MEMORY[0x277CCA980] notANumber];
          v37 = [stddev isEqualToNumber:notANumber2];

          if (v37)
          {
            stddev2 = 0;
          }

          else
          {
            inputBachProviderInfo6 = [eventCopy inputBachProviderInfo];
            totalFeatureStatistics6 = [inputBachProviderInfo6 totalFeatureStatistics];
            featureName6 = [v5 featureName];
            v41 = [totalFeatureStatistics6 objectForKeyedSubscript:featureName6];
            stddev2 = [v41 stddev];
          }

          v25 = mean2;
        }

        else
        {
          v25 = 0;
          stddev2 = 0;
          v83 = &unk_286804840;
        }

        v90[0] = @"contextId";
        contextId = [eventCopy contextId];
        uUIDString = [contextId UUIDString];
        v91[0] = uUIDString;
        v90[1] = @"eventId";
        eventId = [eventCopy eventId];
        uUIDString2 = [eventId UUIDString];
        v91[1] = uUIDString2;
        v90[2] = @"succeeded";
        succeeded = [eventCopy succeeded];
        v91[2] = succeeded;
        v90[3] = @"errorDomain";
        analysisError = [eventCopy analysisError];
        domain = [analysisError domain];
        v43 = domain;
        if (!domain)
        {
          null = [MEMORY[0x277CBEB68] null];
          v43 = null;
        }

        v82 = stddev2;
        v91[3] = v43;
        v90[4] = @"errorCodeEnum";
        v44 = MEMORY[0x277CCABB0];
        analysisError2 = [eventCopy analysisError];
        v45 = [v44 numberWithInteger:{objc_msgSend(analysisError2, "code")}];
        v46 = v45;
        if (!v45)
        {
          null2 = [MEMORY[0x277CBEB68] null];
          v46 = null2;
        }

        v91[4] = v46;
        v90[5] = @"timeRange";
        inputBachProviderInfo7 = [eventCopy inputBachProviderInfo];
        timeRange = [inputBachProviderInfo7 timeRange];
        v91[5] = timeRange;
        v90[6] = @"faetureStoreKey";
        inputBachProviderInfo8 = [eventCopy inputBachProviderInfo];
        featureStoreKey = [inputBachProviderInfo8 featureStoreKey];
        v48 = featureStoreKey;
        if (!featureStoreKey)
        {
          null3 = [MEMORY[0x277CBEB68] null];
          v48 = null3;
        }

        v91[6] = v48;
        v90[7] = @"featureCount";
        inputBachProviderInfo9 = [eventCopy inputBachProviderInfo];
        featureCount = [inputBachProviderInfo9 featureCount];
        v91[7] = featureCount;
        v90[8] = @"featureName";
        featureName7 = [v5 featureName];
        v52 = featureName7;
        if (!featureName7)
        {
          null4 = [MEMORY[0x277CBEB68] null];
          v52 = null4;
        }

        v91[8] = v52;
        v91[9] = v83;
        v53 = v25;
        v90[9] = @"featureStat_count";
        v90[10] = @"featureStat_mean";
        if (!v25)
        {
          null5 = [MEMORY[0x277CBEB68] null];
          v53 = null5;
        }

        v91[10] = v53;
        v90[11] = @"featureStat_stddev";
        v54 = v82;
        if (!v82)
        {
          null6 = [MEMORY[0x277CBEB68] null];
          v54 = null6;
        }

        v91[11] = v54;
        v90[12] = @"changePoints_count";
        detectedChangePointCount = [v5 detectedChangePointCount];
        v90[13] = @"changePoints";
        v91[12] = detectedChangePointCount;
        v91[13] = v84;
        v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:14];

        if (!v82)
        {
        }

        if (v25)
        {
          if (featureName7)
          {
            goto LABEL_31;
          }
        }

        else
        {

          if (featureName7)
          {
            goto LABEL_31;
          }
        }

LABEL_31:
        if (!featureStoreKey)
        {
        }

        eventCopy = v67;
        if (!v45)
        {
        }

        if (!domain)
        {
        }

        [LCFELCoreAnalyticsHandler myAnalyticsSendEvent:@"com.apple.LighthouseCoreMLFoundations.LCFELChangePointDetectionEvent" eventPayload:v56];
        v4 = v81 + 1;
      }

      while (v68 != v81 + 1);
      v57 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
      v68 = v57;
    }

    while (v57);
  }

  return 1;
}

@end