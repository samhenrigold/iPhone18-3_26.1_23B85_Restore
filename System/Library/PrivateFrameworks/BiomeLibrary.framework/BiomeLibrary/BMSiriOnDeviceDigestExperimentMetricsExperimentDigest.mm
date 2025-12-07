@interface BMSiriOnDeviceDigestExperimentMetricsExperimentDigest
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriOnDeviceDigestExperimentMetricsExperimentDigest)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriOnDeviceDigestExperimentMetricsExperimentDigest)initWithSystemBuild:(id)build dataSharingOptInStatus:(id)status viewInterface:(id)interface audioInterfaceVendorId:(id)id audioInterfaceProductId:(id)productId asrLocation:(id)location nlLocation:(id)nlLocation siriInputLocale:(id)self0 subDomain:(id)self1 responseCategory:(id)self2 experimentAllocationStatus:(id)self3 isTriggered:(id)self4 isFirstTriggerOrAfterFirstTrigger:(id)self5 codePathIdUUID:(id)self6 totalTurnCount:(id)self7 validTurnCount:(id)self8 siriTasksStarted:(id)self9 siriTasksCompleted:(id)completed flowTasksStarted:(id)tasksStarted flowTasksCompleted:(id)tasksCompleted reliabilityRequestCount:(id)requestCount reliabilityTurnCount:(id)reliabilityTurnCount clientErrorCount:(id)errorCount undesiredResponseCount:(id)responseCount fatalResponseCount:(id)fatalResponseCount failureResponseCount:(id)failureResponseCount siriUnavailableResponseCount:(id)unavailableResponseCount usdxSessionCount:(id)build0 tuples:(id)build1 isIntelligenceEngineRequest:(id)build2 intelligenceEngineRouting:(id)build3 invocationSource:(id)build4;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_intelligenceEngineRoutingJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriOnDeviceDigestExperimentMetricsExperimentDigest

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    systemBuild = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self systemBuild];
    systemBuild2 = [v5 systemBuild];
    v8 = systemBuild2;
    if (systemBuild == systemBuild2)
    {
    }

    else
    {
      systemBuild3 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self systemBuild];
      systemBuild4 = [v5 systemBuild];
      v11 = [systemBuild3 isEqual:systemBuild4];

      if (!v11)
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasDataSharingOptInStatus](self, "hasDataSharingOptInStatus") || [v5 hasDataSharingOptInStatus])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasDataSharingOptInStatus])
      {
        goto LABEL_155;
      }

      if (![v5 hasDataSharingOptInStatus])
      {
        goto LABEL_155;
      }

      dataSharingOptInStatus = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self dataSharingOptInStatus];
      if (dataSharingOptInStatus != [v5 dataSharingOptInStatus])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasViewInterface](self, "hasViewInterface") || [v5 hasViewInterface])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasViewInterface])
      {
        goto LABEL_155;
      }

      if (![v5 hasViewInterface])
      {
        goto LABEL_155;
      }

      viewInterface = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self viewInterface];
      if (viewInterface != [v5 viewInterface])
      {
        goto LABEL_155;
      }
    }

    audioInterfaceVendorId = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self audioInterfaceVendorId];
    audioInterfaceVendorId2 = [v5 audioInterfaceVendorId];
    v17 = audioInterfaceVendorId2;
    if (audioInterfaceVendorId == audioInterfaceVendorId2)
    {
    }

    else
    {
      audioInterfaceVendorId3 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self audioInterfaceVendorId];
      audioInterfaceVendorId4 = [v5 audioInterfaceVendorId];
      v20 = [audioInterfaceVendorId3 isEqual:audioInterfaceVendorId4];

      if (!v20)
      {
        goto LABEL_155;
      }
    }

    audioInterfaceProductId = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self audioInterfaceProductId];
    audioInterfaceProductId2 = [v5 audioInterfaceProductId];
    v23 = audioInterfaceProductId2;
    if (audioInterfaceProductId == audioInterfaceProductId2)
    {
    }

    else
    {
      audioInterfaceProductId3 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self audioInterfaceProductId];
      audioInterfaceProductId4 = [v5 audioInterfaceProductId];
      v26 = [audioInterfaceProductId3 isEqual:audioInterfaceProductId4];

      if (!v26)
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasAsrLocation](self, "hasAsrLocation") || [v5 hasAsrLocation])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasAsrLocation])
      {
        goto LABEL_155;
      }

      if (![v5 hasAsrLocation])
      {
        goto LABEL_155;
      }

      asrLocation = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self asrLocation];
      if (asrLocation != [v5 asrLocation])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasNlLocation](self, "hasNlLocation") || [v5 hasNlLocation])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasNlLocation])
      {
        goto LABEL_155;
      }

      if (![v5 hasNlLocation])
      {
        goto LABEL_155;
      }

      nlLocation = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self nlLocation];
      if (nlLocation != [v5 nlLocation])
      {
        goto LABEL_155;
      }
    }

    siriInputLocale = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self siriInputLocale];
    siriInputLocale2 = [v5 siriInputLocale];
    v31 = siriInputLocale2;
    if (siriInputLocale == siriInputLocale2)
    {
    }

    else
    {
      siriInputLocale3 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self siriInputLocale];
      siriInputLocale4 = [v5 siriInputLocale];
      v34 = [siriInputLocale3 isEqual:siriInputLocale4];

      if (!v34)
      {
        goto LABEL_155;
      }
    }

    subDomain = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self subDomain];
    subDomain2 = [v5 subDomain];
    v37 = subDomain2;
    if (subDomain == subDomain2)
    {
    }

    else
    {
      subDomain3 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self subDomain];
      subDomain4 = [v5 subDomain];
      v40 = [subDomain3 isEqual:subDomain4];

      if (!v40)
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasResponseCategory](self, "hasResponseCategory") || [v5 hasResponseCategory])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasResponseCategory])
      {
        goto LABEL_155;
      }

      if (![v5 hasResponseCategory])
      {
        goto LABEL_155;
      }

      responseCategory = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self responseCategory];
      if (responseCategory != [v5 responseCategory])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasExperimentAllocationStatus](self, "hasExperimentAllocationStatus") || [v5 hasExperimentAllocationStatus])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasExperimentAllocationStatus])
      {
        goto LABEL_155;
      }

      if (![v5 hasExperimentAllocationStatus])
      {
        goto LABEL_155;
      }

      experimentAllocationStatus = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self experimentAllocationStatus];
      if (experimentAllocationStatus != [v5 experimentAllocationStatus])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasIsTriggered](self, "hasIsTriggered") || [v5 hasIsTriggered])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasIsTriggered])
      {
        goto LABEL_155;
      }

      if (![v5 hasIsTriggered])
      {
        goto LABEL_155;
      }

      isTriggered = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self isTriggered];
      if (isTriggered != [v5 isTriggered])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasIsFirstTriggerOrAfterFirstTrigger](self, "hasIsFirstTriggerOrAfterFirstTrigger") || [v5 hasIsFirstTriggerOrAfterFirstTrigger])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasIsFirstTriggerOrAfterFirstTrigger])
      {
        goto LABEL_155;
      }

      if (![v5 hasIsFirstTriggerOrAfterFirstTrigger])
      {
        goto LABEL_155;
      }

      isFirstTriggerOrAfterFirstTrigger = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self isFirstTriggerOrAfterFirstTrigger];
      if (isFirstTriggerOrAfterFirstTrigger != [v5 isFirstTriggerOrAfterFirstTrigger])
      {
        goto LABEL_155;
      }
    }

    codePathIdUUID = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self codePathIdUUID];
    codePathIdUUID2 = [v5 codePathIdUUID];
    v47 = codePathIdUUID2;
    if (codePathIdUUID == codePathIdUUID2)
    {
    }

    else
    {
      codePathIdUUID3 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self codePathIdUUID];
      codePathIdUUID4 = [v5 codePathIdUUID];
      v50 = [codePathIdUUID3 isEqual:codePathIdUUID4];

      if (!v50)
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasTotalTurnCount](self, "hasTotalTurnCount") || [v5 hasTotalTurnCount])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasTotalTurnCount])
      {
        goto LABEL_155;
      }

      if (![v5 hasTotalTurnCount])
      {
        goto LABEL_155;
      }

      totalTurnCount = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self totalTurnCount];
      if (totalTurnCount != [v5 totalTurnCount])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasValidTurnCount](self, "hasValidTurnCount") || [v5 hasValidTurnCount])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasValidTurnCount])
      {
        goto LABEL_155;
      }

      if (![v5 hasValidTurnCount])
      {
        goto LABEL_155;
      }

      validTurnCount = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self validTurnCount];
      if (validTurnCount != [v5 validTurnCount])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasSiriTasksStarted](self, "hasSiriTasksStarted") || [v5 hasSiriTasksStarted])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasSiriTasksStarted])
      {
        goto LABEL_155;
      }

      if (![v5 hasSiriTasksStarted])
      {
        goto LABEL_155;
      }

      siriTasksStarted = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self siriTasksStarted];
      if (siriTasksStarted != [v5 siriTasksStarted])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasSiriTasksCompleted](self, "hasSiriTasksCompleted") || [v5 hasSiriTasksCompleted])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasSiriTasksCompleted])
      {
        goto LABEL_155;
      }

      if (![v5 hasSiriTasksCompleted])
      {
        goto LABEL_155;
      }

      siriTasksCompleted = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self siriTasksCompleted];
      if (siriTasksCompleted != [v5 siriTasksCompleted])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasFlowTasksStarted](self, "hasFlowTasksStarted") || [v5 hasFlowTasksStarted])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasFlowTasksStarted])
      {
        goto LABEL_155;
      }

      if (![v5 hasFlowTasksStarted])
      {
        goto LABEL_155;
      }

      flowTasksStarted = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self flowTasksStarted];
      if (flowTasksStarted != [v5 flowTasksStarted])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasFlowTasksCompleted](self, "hasFlowTasksCompleted") || [v5 hasFlowTasksCompleted])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasFlowTasksCompleted])
      {
        goto LABEL_155;
      }

      if (![v5 hasFlowTasksCompleted])
      {
        goto LABEL_155;
      }

      flowTasksCompleted = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self flowTasksCompleted];
      if (flowTasksCompleted != [v5 flowTasksCompleted])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasReliabilityRequestCount](self, "hasReliabilityRequestCount") || [v5 hasReliabilityRequestCount])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasReliabilityRequestCount])
      {
        goto LABEL_155;
      }

      if (![v5 hasReliabilityRequestCount])
      {
        goto LABEL_155;
      }

      reliabilityRequestCount = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self reliabilityRequestCount];
      if (reliabilityRequestCount != [v5 reliabilityRequestCount])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasReliabilityTurnCount](self, "hasReliabilityTurnCount") || [v5 hasReliabilityTurnCount])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasReliabilityTurnCount])
      {
        goto LABEL_155;
      }

      if (![v5 hasReliabilityTurnCount])
      {
        goto LABEL_155;
      }

      reliabilityTurnCount = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self reliabilityTurnCount];
      if (reliabilityTurnCount != [v5 reliabilityTurnCount])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasClientErrorCount](self, "hasClientErrorCount") || [v5 hasClientErrorCount])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasClientErrorCount])
      {
        goto LABEL_155;
      }

      if (![v5 hasClientErrorCount])
      {
        goto LABEL_155;
      }

      clientErrorCount = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self clientErrorCount];
      if (clientErrorCount != [v5 clientErrorCount])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasUndesiredResponseCount](self, "hasUndesiredResponseCount") || [v5 hasUndesiredResponseCount])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasUndesiredResponseCount])
      {
        goto LABEL_155;
      }

      if (![v5 hasUndesiredResponseCount])
      {
        goto LABEL_155;
      }

      undesiredResponseCount = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self undesiredResponseCount];
      if (undesiredResponseCount != [v5 undesiredResponseCount])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasFatalResponseCount](self, "hasFatalResponseCount") || [v5 hasFatalResponseCount])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasFatalResponseCount])
      {
        goto LABEL_155;
      }

      if (![v5 hasFatalResponseCount])
      {
        goto LABEL_155;
      }

      fatalResponseCount = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self fatalResponseCount];
      if (fatalResponseCount != [v5 fatalResponseCount])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasFailureResponseCount](self, "hasFailureResponseCount") || [v5 hasFailureResponseCount])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasFailureResponseCount])
      {
        goto LABEL_155;
      }

      if (![v5 hasFailureResponseCount])
      {
        goto LABEL_155;
      }

      failureResponseCount = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self failureResponseCount];
      if (failureResponseCount != [v5 failureResponseCount])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasSiriUnavailableResponseCount](self, "hasSiriUnavailableResponseCount") || [v5 hasSiriUnavailableResponseCount])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasSiriUnavailableResponseCount])
      {
        goto LABEL_155;
      }

      if (![v5 hasSiriUnavailableResponseCount])
      {
        goto LABEL_155;
      }

      siriUnavailableResponseCount = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self siriUnavailableResponseCount];
      if (siriUnavailableResponseCount != [v5 siriUnavailableResponseCount])
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasUsdxSessionCount](self, "hasUsdxSessionCount") || [v5 hasUsdxSessionCount])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasUsdxSessionCount])
      {
        goto LABEL_155;
      }

      if (![v5 hasUsdxSessionCount])
      {
        goto LABEL_155;
      }

      usdxSessionCount = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self usdxSessionCount];
      if (usdxSessionCount != [v5 usdxSessionCount])
      {
        goto LABEL_155;
      }
    }

    tuples = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self tuples];
    tuples2 = [v5 tuples];
    v67 = tuples2;
    if (tuples == tuples2)
    {
    }

    else
    {
      tuples3 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self tuples];
      tuples4 = [v5 tuples];
      v70 = [tuples3 isEqual:tuples4];

      if (!v70)
      {
        goto LABEL_155;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasIsIntelligenceEngineRequest](self, "hasIsIntelligenceEngineRequest") || [v5 hasIsIntelligenceEngineRequest])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasIsIntelligenceEngineRequest])
      {
        goto LABEL_155;
      }

      if (![v5 hasIsIntelligenceEngineRequest])
      {
        goto LABEL_155;
      }

      isIntelligenceEngineRequest = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self isIntelligenceEngineRequest];
      if (isIntelligenceEngineRequest != [v5 isIntelligenceEngineRequest])
      {
        goto LABEL_155;
      }
    }

    intelligenceEngineRouting = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self intelligenceEngineRouting];
    intelligenceEngineRouting2 = [v5 intelligenceEngineRouting];
    v74 = intelligenceEngineRouting2;
    if (intelligenceEngineRouting == intelligenceEngineRouting2)
    {
    }

    else
    {
      intelligenceEngineRouting3 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self intelligenceEngineRouting];
      intelligenceEngineRouting4 = [v5 intelligenceEngineRouting];
      v77 = [intelligenceEngineRouting3 isEqual:intelligenceEngineRouting4];

      if (!v77)
      {
        goto LABEL_155;
      }
    }

    if (!-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasInvocationSource](self, "hasInvocationSource") && ![v5 hasInvocationSource])
    {
      v12 = 1;
      goto LABEL_156;
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest hasInvocationSource](self, "hasInvocationSource") && [v5 hasInvocationSource])
    {
      invocationSource = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self invocationSource];
      v12 = invocationSource == [v5 invocationSource];
LABEL_156:

      goto LABEL_157;
    }

LABEL_155:
    v12 = 0;
    goto LABEL_156;
  }

  v12 = 0;
LABEL_157:

  return v12;
}

- (id)jsonDictionary
{
  v105[32] = *MEMORY[0x1E69E9840];
  systemBuild = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self systemBuild];
  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasDataSharingOptInStatus])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest dataSharingOptInStatus](self, "dataSharingOptInStatus")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasViewInterface])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest viewInterface](self, "viewInterface")}];
  }

  else
  {
    v4 = 0;
  }

  audioInterfaceVendorId = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self audioInterfaceVendorId];
  audioInterfaceProductId = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self audioInterfaceProductId];
  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasAsrLocation])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest asrLocation](self, "asrLocation")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasNlLocation])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest nlLocation](self, "nlLocation")}];
  }

  else
  {
    v8 = 0;
  }

  siriInputLocale = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self siriInputLocale];
  jsonDictionary = [siriInputLocale jsonDictionary];

  subDomain = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self subDomain];
  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasResponseCategory])
  {
    v101 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest responseCategory](self, "responseCategory")}];
  }

  else
  {
    v101 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasExperimentAllocationStatus])
  {
    v100 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest experimentAllocationStatus](self, "experimentAllocationStatus")}];
  }

  else
  {
    v100 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasIsTriggered])
  {
    v99 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest isTriggered](self, "isTriggered")}];
  }

  else
  {
    v99 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasIsFirstTriggerOrAfterFirstTrigger])
  {
    v98 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest isFirstTriggerOrAfterFirstTrigger](self, "isFirstTriggerOrAfterFirstTrigger")}];
  }

  else
  {
    v98 = 0;
  }

  codePathIdUUID = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self codePathIdUUID];
  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasTotalTurnCount])
  {
    v96 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest totalTurnCount](self, "totalTurnCount")}];
  }

  else
  {
    v96 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasValidTurnCount])
  {
    v95 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest validTurnCount](self, "validTurnCount")}];
  }

  else
  {
    v95 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasSiriTasksStarted])
  {
    v94 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest siriTasksStarted](self, "siriTasksStarted")}];
  }

  else
  {
    v94 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasSiriTasksCompleted])
  {
    v93 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest siriTasksCompleted](self, "siriTasksCompleted")}];
  }

  else
  {
    v93 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasFlowTasksStarted])
  {
    v92 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest flowTasksStarted](self, "flowTasksStarted")}];
  }

  else
  {
    v92 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasFlowTasksCompleted])
  {
    v91 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest flowTasksCompleted](self, "flowTasksCompleted")}];
  }

  else
  {
    v91 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasReliabilityRequestCount])
  {
    v90 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest reliabilityRequestCount](self, "reliabilityRequestCount")}];
  }

  else
  {
    v90 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasReliabilityTurnCount])
  {
    v89 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest reliabilityTurnCount](self, "reliabilityTurnCount")}];
  }

  else
  {
    v89 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasClientErrorCount])
  {
    v88 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest clientErrorCount](self, "clientErrorCount")}];
  }

  else
  {
    v88 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasUndesiredResponseCount])
  {
    v87 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest undesiredResponseCount](self, "undesiredResponseCount")}];
  }

  else
  {
    v87 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasFatalResponseCount])
  {
    v86 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest fatalResponseCount](self, "fatalResponseCount")}];
  }

  else
  {
    v86 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasFailureResponseCount])
  {
    v85 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest failureResponseCount](self, "failureResponseCount")}];
  }

  else
  {
    v85 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasSiriUnavailableResponseCount])
  {
    v84 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest siriUnavailableResponseCount](self, "siriUnavailableResponseCount")}];
  }

  else
  {
    v84 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasUsdxSessionCount])
  {
    v83 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest usdxSessionCount](self, "usdxSessionCount")}];
  }

  else
  {
    v83 = 0;
  }

  tuples = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self tuples];
  jsonDictionary2 = [tuples jsonDictionary];

  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasIsIntelligenceEngineRequest])
  {
    v81 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest isIntelligenceEngineRequest](self, "isIntelligenceEngineRequest")}];
  }

  else
  {
    v81 = 0;
  }

  _intelligenceEngineRoutingJSONArray = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self _intelligenceEngineRoutingJSONArray];
  if ([(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self hasInvocationSource])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest invocationSource](self, "invocationSource")}];
  }

  else
  {
    v11 = 0;
  }

  v104[0] = @"systemBuild";
  null = systemBuild;
  if (!systemBuild)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v71 = null;
  v105[0] = null;
  v104[1] = @"dataSharingOptInStatus";
  null2 = v3;
  if (!v3)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v70 = null2;
  v105[1] = null2;
  v104[2] = @"viewInterface";
  null3 = v4;
  if (!v4)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = null3;
  v105[2] = null3;
  v104[3] = @"audioInterfaceVendorId";
  null4 = audioInterfaceVendorId;
  if (!audioInterfaceVendorId)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = null4;
  v105[3] = null4;
  v104[4] = @"audioInterfaceProductId";
  null5 = audioInterfaceProductId;
  if (!audioInterfaceProductId)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = null5;
  v105[4] = null5;
  v104[5] = @"asrLocation";
  null6 = v7;
  if (!v7)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = null6;
  v105[5] = null6;
  v104[6] = @"nlLocation";
  null7 = v8;
  if (!v8)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = null7;
  v105[6] = null7;
  v104[7] = @"siriInputLocale";
  null8 = jsonDictionary;
  if (!jsonDictionary)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v105[7] = null8;
  v104[8] = @"subDomain";
  null9 = subDomain;
  if (!subDomain)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v105[8] = null9;
  v104[9] = @"responseCategory";
  null10 = v101;
  if (!v101)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = null10;
  v105[9] = null10;
  v104[10] = @"experimentAllocationStatus";
  null11 = v100;
  if (!v100)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = null11;
  v105[10] = null11;
  v104[11] = @"isTriggered";
  null12 = v99;
  if (!v99)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v73 = null12;
  v105[11] = null12;
  v104[12] = @"isFirstTriggerOrAfterFirstTrigger";
  null13 = v98;
  if (!v98)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null13;
  v105[12] = null13;
  v104[13] = @"codePathIdUUID";
  null14 = codePathIdUUID;
  if (!codePathIdUUID)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = null14;
  v105[13] = null14;
  v104[14] = @"totalTurnCount";
  null15 = v96;
  if (!v96)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = null15;
  v105[14] = null15;
  v104[15] = @"validTurnCount";
  null16 = v95;
  if (!v95)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = null16;
  v105[15] = null16;
  v104[16] = @"siriTasksStarted";
  null17 = v94;
  if (!v94)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = null17;
  v105[16] = null17;
  v104[17] = @"siriTasksCompleted";
  null18 = v93;
  if (!v93)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = null18;
  v105[17] = null18;
  v104[18] = @"flowTasksStarted";
  null19 = v92;
  if (!v92)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = null19;
  v105[18] = null19;
  v104[19] = @"flowTasksCompleted";
  null20 = v91;
  if (!v91)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = null20;
  v105[19] = null20;
  v104[20] = @"reliabilityRequestCount";
  null21 = v90;
  if (!v90)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = null21;
  v105[20] = null21;
  v104[21] = @"reliabilityTurnCount";
  null22 = v89;
  if (!v89)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v53 = null22;
  v105[21] = null22;
  v104[22] = @"clientErrorCount";
  null23 = v88;
  if (!v88)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v76 = audioInterfaceProductId;
  v52 = null23;
  v105[22] = null23;
  v104[23] = @"undesiredResponseCount";
  null24 = v87;
  if (!v87)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = null24;
  v105[23] = null24;
  v104[24] = @"fatalResponseCount";
  null25 = v86;
  if (!v86)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v77 = audioInterfaceVendorId;
  v50 = null25;
  v105[24] = null25;
  v104[25] = @"failureResponseCount";
  null26 = v85;
  if (!v85)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = null8;
  v78 = v4;
  v48 = null26;
  v105[25] = null26;
  v104[26] = @"siriUnavailableResponseCount";
  null27 = v84;
  if (!v84)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v75 = v3;
  v105[26] = null27;
  v104[27] = @"usdxSessionCount";
  null28 = v83;
  if (!v83)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = null9;
  v105[27] = null28;
  v104[28] = @"tuples";
  null29 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v8;
  v105[28] = null29;
  v104[29] = @"isIntelligenceEngineRequest";
  null30 = v81;
  if (!v81)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v105[29] = null30;
  v104[30] = @"intelligenceEngineRouting";
  null31 = _intelligenceEngineRoutingJSONArray;
  if (!_intelligenceEngineRoutingJSONArray)
  {
    null31 = [MEMORY[0x1E695DFB0] null];
  }

  v105[30] = null31;
  v104[31] = @"invocationSource";
  null32 = v11;
  if (!v11)
  {
    null32 = [MEMORY[0x1E695DFB0] null];
  }

  v105[31] = null32;
  v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:{32, v48}];
  if (!v11)
  {
  }

  v46 = v25;
  if (!_intelligenceEngineRoutingJSONArray)
  {

    v46 = v25;
  }

  if (!v81)
  {

    v46 = v25;
  }

  if (!jsonDictionary2)
  {

    v46 = v25;
  }

  if (!v83)
  {

    v46 = v25;
  }

  if (!v84)
  {

    v46 = v25;
  }

  if (!v85)
  {

    v46 = v25;
  }

  if (!v86)
  {

    v46 = v25;
  }

  if (!v87)
  {

    v46 = v25;
  }

  if (!v88)
  {

    v46 = v25;
  }

  if (!v89)
  {

    v46 = v25;
  }

  if (!v90)
  {

    v46 = v25;
  }

  if (!v91)
  {

    v46 = v25;
  }

  if (!v92)
  {

    v46 = v25;
  }

  if (!v93)
  {

    v46 = v25;
  }

  if (!v94)
  {

    v46 = v25;
  }

  if (!v95)
  {

    v46 = v25;
  }

  if (!v96)
  {

    v46 = v25;
  }

  if (!codePathIdUUID)
  {

    v46 = v25;
  }

  if (!v98)
  {
  }

  if (!v99)
  {
  }

  if (!v100)
  {
  }

  if (!v101)
  {
  }

  if (!subDomain)
  {
  }

  if (jsonDictionary)
  {
    if (v42)
    {
      goto LABEL_187;
    }
  }

  else
  {

    if (v42)
    {
LABEL_187:
      if (v7)
      {
        goto LABEL_188;
      }

      goto LABEL_198;
    }
  }

  if (v7)
  {
LABEL_188:
    if (v76)
    {
      goto LABEL_189;
    }

    goto LABEL_199;
  }

LABEL_198:

  if (v76)
  {
LABEL_189:
    if (v77)
    {
      goto LABEL_190;
    }

    goto LABEL_200;
  }

LABEL_199:

  if (v77)
  {
LABEL_190:
    if (v78)
    {
      goto LABEL_191;
    }

    goto LABEL_201;
  }

LABEL_200:

  if (v78)
  {
LABEL_191:
    if (v75)
    {
      goto LABEL_192;
    }

LABEL_202:

    if (systemBuild)
    {
      goto LABEL_193;
    }

    goto LABEL_203;
  }

LABEL_201:

  if (!v75)
  {
    goto LABEL_202;
  }

LABEL_192:
  if (systemBuild)
  {
    goto LABEL_193;
  }

LABEL_203:

LABEL_193:

  return v72;
}

- (id)_intelligenceEngineRoutingJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  intelligenceEngineRouting = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self intelligenceEngineRouting];
  v5 = [intelligenceEngineRouting countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(intelligenceEngineRouting);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [intelligenceEngineRouting countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMSiriOnDeviceDigestExperimentMetricsExperimentDigest)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v568[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"systemBuild"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v492 = 0;
    goto LABEL_4;
  }

  errorCopy = error;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v492 = v7;
LABEL_4:
    v493 = [dictionaryCopy objectForKeyedSubscript:@"dataSharingOptInStatus"];
    if (!v493 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v490 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v490 = v493;
LABEL_7:
      v8 = [dictionaryCopy objectForKeyedSubscript:@"viewInterface"];
      v491 = v8;
      if (!v8 || (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v488 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v488 = v9;
LABEL_10:
        v10 = [dictionaryCopy objectForKeyedSubscript:@"audioInterfaceVendorId"];
        v489 = dictionaryCopy;
        if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v485 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v485 = v10;
LABEL_13:
          v11 = [dictionaryCopy objectForKeyedSubscript:@"audioInterfaceProductId"];
          v487 = v11;
          if (!v11 || (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v486 = 0;
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v486 = v12;
LABEL_16:
            v13 = [dictionaryCopy objectForKeyedSubscript:@"asrLocation"];
            v484 = v13;
            if (!v13 || (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v483 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v483 = v14;
LABEL_19:
              v15 = [dictionaryCopy objectForKeyedSubscript:@"nlLocation"];
              v482 = v15;
              if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v481 = 0;
                goto LABEL_22;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v481 = v16;
LABEL_22:
                v17 = [dictionaryCopy objectForKeyedSubscript:@"siriInputLocale"];
                if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v478 = v17;
                  v479 = 0;
                  goto LABEL_25;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v41 = v7;
                  selfCopy = self;
                  v43 = v17;
                  v499 = 0;
                  v44 = [[BMSiriOnDeviceDigestExperimentMetricsISOLocale alloc] initWithJSONDictionary:v43 error:&v499];
                  v45 = v499;
                  if (v45)
                  {
                    v39 = v485;
                    if (error)
                    {
                      v45 = v45;
                      *error = v45;
                    }

                    selfCopy9 = 0;
                    error = v490;
                    v46 = v44;
                    self = selfCopy;
                    v7 = v41;
                    goto LABEL_307;
                  }

                  v478 = v17;

                  v479 = v44;
                  self = selfCopy;
                  v7 = v41;
LABEL_25:
                  v480 = [dictionaryCopy objectForKeyedSubscript:@"subDomain"];
                  if (v480 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (!error)
                      {
                        v18 = 0;
                        selfCopy9 = 0;
                        v39 = v485;
                        v43 = v478;
                        error = v490;
LABEL_306:

                        v46 = v479;
                        goto LABEL_307;
                      }

                      v126 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v127 = *MEMORY[0x1E698F240];
                      v551 = *MEMORY[0x1E696A578];
                      v128 = v7;
                      errorCopy2 = error;
                      selfCopy2 = self;
                      v131 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v396 = objc_opt_class();
                      v132 = v131;
                      self = selfCopy2;
                      error = v490;
                      v133 = [v132 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v396, @"subDomain"];
                      v552 = v133;
                      v477 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v552 forKeys:&v551 count:1];
                      v134 = [v126 initWithDomain:v127 code:2 userInfo:?];
                      v18 = 0;
                      selfCopy9 = 0;
                      *errorCopy2 = v134;
                      v7 = v128;
                      v135 = v133;
                      v39 = v485;
                      v43 = v478;
                      goto LABEL_305;
                    }

                    v18 = v480;
                  }

                  else
                  {
                    v18 = 0;
                  }

                  v19 = [dictionaryCopy objectForKeyedSubscript:@"responseCategory"];
                  v477 = v19;
                  if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v472 = 0;
                    goto LABEL_31;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v472 = v20;
LABEL_31:
                    v21 = [dictionaryCopy objectForKeyedSubscript:@"experimentAllocationStatus"];
                    v475 = v21;
                    if (!v21 || (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v473 = 0;
LABEL_34:
                      v23 = [dictionaryCopy objectForKeyedSubscript:@"isTriggered"];
                      v471 = v23;
                      if (v23 && (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          if (!error)
                          {
                            v469 = 0;
                            selfCopy9 = 0;
                            v39 = v485;
                            v43 = v478;
                            error = v490;
LABEL_302:
                            v135 = v472;
                            goto LABEL_303;
                          }

                          v155 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v470 = *MEMORY[0x1E698F240];
                          v545 = *MEMORY[0x1E696A578];
                          v156 = v18;
                          v157 = v7;
                          errorCopy3 = error;
                          selfCopy3 = self;
                          v160 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v399 = objc_opt_class();
                          v161 = v160;
                          self = selfCopy3;
                          error = v490;
                          v162 = v157;
                          v18 = v156;
                          v25 = [v161 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v399, @"isTriggered"];
                          v546 = v25;
                          v468 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v546 forKeys:&v545 count:1];
                          v163 = [v155 initWithDomain:v470 code:2 userInfo:?];
                          v469 = 0;
                          selfCopy9 = 0;
                          *errorCopy3 = v163;
                          v7 = v162;
                          v39 = v485;
                          v43 = v478;
                          goto LABEL_301;
                        }

                        v469 = v24;
                      }

                      else
                      {
                        v469 = 0;
                      }

                      v25 = [dictionaryCopy objectForKeyedSubscript:@"isFirstTriggerOrAfterFirstTrigger"];
                      v468 = v25;
                      if (!v25)
                      {
                        v464 = v18;
                        goto LABEL_90;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v464 = v18;
                        v25 = 0;
                        goto LABEL_90;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v464 = v18;
                        v25 = v25;
LABEL_90:
                        v88 = [dictionaryCopy objectForKeyedSubscript:@"codePathIdUUID"];
                        v465 = v88;
                        if (!v88 || (v89 = v88, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v467 = 0;
                          goto LABEL_93;
                        }

                        v450 = v25;
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v467 = v89;
LABEL_93:
                          v90 = [dictionaryCopy objectForKeyedSubscript:@"totalTurnCount"];
                          v463 = v90;
                          if (!v90 || (v91 = v90, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v462 = 0;
                            goto LABEL_96;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v462 = v91;
LABEL_96:
                            v92 = [dictionaryCopy objectForKeyedSubscript:@"validTurnCount"];
                            v461 = v92;
                            if (!v92 || (v93 = v92, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v460 = 0;
                              goto LABEL_99;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v460 = v93;
LABEL_99:
                              v94 = [dictionaryCopy objectForKeyedSubscript:@"siriTasksStarted"];
                              v459 = v94;
                              if (!v94 || (v95 = v94, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v458 = 0;
                                goto LABEL_102;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v458 = v95;
LABEL_102:
                                v96 = [dictionaryCopy objectForKeyedSubscript:@"siriTasksCompleted"];
                                v457 = v96;
                                if (!v96 || (v97 = v96, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v456 = 0;
                                  goto LABEL_105;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v456 = v97;
LABEL_105:
                                  v98 = [dictionaryCopy objectForKeyedSubscript:@"flowTasksStarted"];
                                  v455 = v98;
                                  if (!v98 || (v99 = v98, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v454 = 0;
                                    goto LABEL_108;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v454 = v99;
LABEL_108:
                                    v100 = [dictionaryCopy objectForKeyedSubscript:@"flowTasksCompleted"];
                                    v453 = v100;
                                    if (!v100 || (v101 = v100, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v452 = 0;
                                      goto LABEL_111;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v452 = v101;
LABEL_111:
                                      v102 = [dictionaryCopy objectForKeyedSubscript:@"reliabilityRequestCount"];
                                      v448 = v102;
                                      if (!v102 || (v103 = v102, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v447 = 0;
                                        goto LABEL_114;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v447 = v103;
LABEL_114:
                                        v104 = [dictionaryCopy objectForKeyedSubscript:@"reliabilityTurnCount"];
                                        v441 = v104;
                                        if (!v104 || (v105 = v104, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v440 = 0;
                                          goto LABEL_117;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v440 = v105;
LABEL_117:
                                          v106 = [dictionaryCopy objectForKeyedSubscript:@"clientErrorCount"];
                                          v439 = v106;
                                          if (!v106 || (v107 = v106, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v438 = 0;
                                            goto LABEL_120;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v438 = v107;
LABEL_120:
                                            v108 = [dictionaryCopy objectForKeyedSubscript:@"undesiredResponseCount"];
                                            v436 = v108;
                                            if (!v108 || (v109 = v108, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v435 = 0;
                                              goto LABEL_123;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v435 = v109;
LABEL_123:
                                              v110 = [dictionaryCopy objectForKeyedSubscript:@"fatalResponseCount"];
                                              v434 = v110;
                                              if (!v110 || (v111 = v110, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v437 = 0;
                                                goto LABEL_126;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v437 = v111;
LABEL_126:
                                                v112 = [dictionaryCopy objectForKeyedSubscript:@"failureResponseCount"];
                                                v432 = v112;
                                                if (!v112 || (v113 = v112, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v433 = 0;
                                                  goto LABEL_129;
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v433 = v113;
LABEL_129:
                                                  v114 = [dictionaryCopy objectForKeyedSubscript:@"siriUnavailableResponseCount"];
                                                  v430 = v114;
                                                  if (!v114 || (v115 = v114, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v431 = 0;
                                                    goto LABEL_132;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v431 = v115;
LABEL_132:
                                                    v116 = [dictionaryCopy objectForKeyedSubscript:@"usdxSessionCount"];
                                                    v428 = v116;
                                                    if (!v116 || (v117 = v116, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v429 = 0;
                                                      goto LABEL_135;
                                                    }

                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v429 = v117;
LABEL_135:
                                                      v118 = [dictionaryCopy objectForKeyedSubscript:@"tuples"];
                                                      if (!v118 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                      {
                                                        v419 = v118;
                                                        v427 = 0;
                                                        goto LABEL_138;
                                                      }

                                                      v426 = v10;
                                                      v443 = v7;
                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v292 = v118;
                                                        v293 = [BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples alloc];
                                                        v498 = 0;
                                                        v294 = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)v293 initWithJSONDictionary:v292 error:&v498];
                                                        v295 = v498;
                                                        v427 = v294;
                                                        if (v295)
                                                        {
                                                          v43 = v478;
                                                          if (error)
                                                          {
                                                            v295 = v295;
                                                            *error = v295;
                                                          }

                                                          selfCopy9 = 0;
                                                          v296 = v292;
                                                          v7 = v443;
                                                          v39 = v485;
                                                          error = v490;
                                                          v124 = v437;
                                                          goto LABEL_283;
                                                        }

                                                        v419 = v118;

                                                        v7 = v443;
                                                        dictionaryCopy = v489;
LABEL_138:
                                                        v119 = [dictionaryCopy objectForKeyedSubscript:@"isIntelligenceEngineRequest"];
                                                        v422 = v119;
                                                        if (v119 && (v120 = v119, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                        {
                                                          objc_opt_class();
                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                          {
                                                            if (error)
                                                            {
                                                              v368 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v369 = *MEMORY[0x1E698F240];
                                                              v509 = *MEMORY[0x1E696A578];
                                                              v370 = v10;
                                                              v371 = v25;
                                                              v372 = v7;
                                                              errorCopy4 = error;
                                                              selfCopy4 = self;
                                                              v375 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                              v417 = objc_opt_class();
                                                              v376 = v375;
                                                              self = selfCopy4;
                                                              v124 = v437;
                                                              error = v490;
                                                              v377 = v372;
                                                              v25 = v371;
                                                              v10 = v370;
                                                              v423 = [v376 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v417, @"isIntelligenceEngineRequest"];
                                                              v510 = v423;
                                                              v421 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v510 forKeys:&v509 count:1];
                                                              v378 = [v368 initWithDomain:v369 code:2 userInfo:?];
                                                              v424 = 0;
                                                              selfCopy9 = 0;
                                                              *errorCopy4 = v378;
                                                              v7 = v377;
                                                              v39 = v485;
                                                              v43 = v478;
                                                              v296 = v419;

                                                              goto LABEL_281;
                                                            }

                                                            v424 = 0;
                                                            selfCopy9 = 0;
                                                            v39 = v485;
                                                            v43 = v478;
                                                            error = v490;
                                                            v296 = v419;
                                                            v124 = v437;
                                                            goto LABEL_282;
                                                          }

                                                          v424 = v120;
                                                        }

                                                        else
                                                        {
                                                          v424 = 0;
                                                        }

                                                        v121 = [dictionaryCopy objectForKeyedSubscript:@"intelligenceEngineRouting"];
                                                        null = [MEMORY[0x1E695DFB0] null];
                                                        v123 = [v121 isEqual:null];

                                                        v124 = v437;
                                                        if (v123)
                                                        {
                                                          v449 = v25;
                                                          v425 = v10;
                                                          selfCopy7 = self;

                                                          v121 = 0;
                                                        }

                                                        else if (v121)
                                                        {
                                                          objc_opt_class();
                                                          v423 = v121;
                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                          {
                                                            if (!error)
                                                            {
                                                              selfCopy9 = 0;
                                                              v39 = v485;
                                                              v43 = v478;
                                                              error = v490;
                                                              v296 = v419;
                                                              goto LABEL_281;
                                                            }

                                                            v379 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v380 = *MEMORY[0x1E698F240];
                                                            v507 = *MEMORY[0x1E696A578];
                                                            v420 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"intelligenceEngineRouting"];
                                                            v508 = v420;
                                                            v367 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v508 forKeys:&v507 count:1];
                                                            v381 = [v379 initWithDomain:v380 code:2 userInfo:v367];
                                                            selfCopy9 = 0;
                                                            *error = v381;
                                                            v39 = v485;
                                                            v43 = v478;
                                                            error = v490;
                                                            goto LABEL_272;
                                                          }

                                                          v449 = v25;
                                                          v425 = v10;
                                                          selfCopy7 = self;
                                                        }

                                                        else
                                                        {
                                                          v449 = v25;
                                                          v425 = v10;
                                                          selfCopy7 = self;
                                                        }

                                                        v349 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v121, "count")}];
                                                        v494 = 0u;
                                                        v495 = 0u;
                                                        v496 = 0u;
                                                        v497 = 0u;
                                                        v350 = v121;
                                                        v351 = v349;
                                                        v352 = v350;
                                                        v353 = [v350 countByEnumeratingWithState:&v494 objects:v506 count:16];
                                                        v423 = v352;
                                                        v420 = v349;
                                                        if (!v353)
                                                        {
                                                          goto LABEL_258;
                                                        }

                                                        v354 = v353;
                                                        v445 = *v495;
LABEL_251:
                                                        v355 = 0;
                                                        while (1)
                                                        {
                                                          if (*v495 != v445)
                                                          {
                                                            objc_enumerationMutation(v352);
                                                          }

                                                          v356 = *(*(&v494 + 1) + 8 * v355);
                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            break;
                                                          }

                                                          objc_opt_class();
                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                          {
                                                            if (error)
                                                            {
                                                              v365 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v366 = *MEMORY[0x1E698F240];
                                                              v502 = *MEMORY[0x1E696A578];
                                                              v446 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"intelligenceEngineRouting"];
                                                              v503 = v446;
                                                              v362 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v503 forKeys:&v502 count:1];
                                                              v363 = v365;
                                                              v364 = v366;
                                                              goto LABEL_265;
                                                            }

                                                            goto LABEL_266;
                                                          }

                                                          v357 = v356;
                                                          [v351 addObject:v357];

                                                          if (v354 == ++v355)
                                                          {
                                                            v354 = [v352 countByEnumeratingWithState:&v494 objects:v506 count:16];
                                                            if (v354)
                                                            {
                                                              goto LABEL_251;
                                                            }

LABEL_258:

                                                            v358 = [v489 objectForKeyedSubscript:@"invocationSource"];
                                                            v446 = v358;
                                                            if (v358)
                                                            {
                                                              v359 = v358;
                                                              objc_opt_class();
                                                              self = selfCopy7;
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v358 = 0;
                                                                goto LABEL_276;
                                                              }

                                                              objc_opt_class();
                                                              v10 = v425;
                                                              v39 = v485;
                                                              v25 = v449;
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v358 = v359;
                                                                v382 = v464;
                                                                v383 = v472;
                                                                v384 = v473;
                                                                v385 = v469;
                                                                goto LABEL_277;
                                                              }

                                                              v296 = v419;
                                                              if (error)
                                                              {
                                                                v387 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v388 = *MEMORY[0x1E698F240];
                                                                v500 = *MEMORY[0x1E696A578];
                                                                selfCopy8 = self;
                                                                v389 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"invocationSource"];
                                                                v501 = v389;
                                                                v390 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v501 forKeys:&v500 count:1];
                                                                v391 = v388;
                                                                v39 = v485;
                                                                *error = [v387 initWithDomain:v391 code:2 userInfo:v390];

                                                                self = selfCopy8;
                                                                v10 = v425;
                                                              }

                                                              v367 = 0;
                                                              selfCopy9 = 0;
                                                              v43 = v478;
                                                              error = v490;
                                                            }

                                                            else
                                                            {
                                                              self = selfCopy7;
LABEL_276:
                                                              v10 = v425;
                                                              v39 = v485;
                                                              v382 = v464;
                                                              v383 = v472;
                                                              v384 = v473;
                                                              v385 = v469;
                                                              v25 = v449;
LABEL_277:
                                                              v296 = v419;
                                                              v367 = v358;
                                                              v469 = v385;
                                                              v473 = v384;
                                                              v472 = v383;
                                                              v464 = v382;
                                                              error = v490;
                                                              self = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self initWithSystemBuild:v492 dataSharingOptInStatus:v490 viewInterface:v488 audioInterfaceVendorId:v39 audioInterfaceProductId:v486 asrLocation:v483 nlLocation:v481 siriInputLocale:v479 subDomain:v382 responseCategory:v383 experimentAllocationStatus:v384 isTriggered:v385 isFirstTriggerOrAfterFirstTrigger:v25 codePathIdUUID:v467 totalTurnCount:v462 validTurnCount:v460 siriTasksStarted:v458 siriTasksCompleted:v456 flowTasksStarted:v454 flowTasksCompleted:v452 reliabilityRequestCount:v447 reliabilityTurnCount:v440 clientErrorCount:v438 undesiredResponseCount:v435 fatalResponseCount:v437 failureResponseCount:v433 siriUnavailableResponseCount:v431 usdxSessionCount:v429 tuples:v427 isIntelligenceEngineRequest:v424 intelligenceEngineRouting:v420 invocationSource:v358];
                                                              selfCopy9 = self;
                                                              v43 = v478;
                                                            }

LABEL_278:

LABEL_279:
                                                            v124 = v437;

LABEL_281:
LABEL_282:

LABEL_283:
                                                            v339 = v427;
LABEL_284:

                                                            goto LABEL_285;
                                                          }
                                                        }

                                                        if (error)
                                                        {
                                                          v360 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v361 = *MEMORY[0x1E698F240];
                                                          v504 = *MEMORY[0x1E696A578];
                                                          v446 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"intelligenceEngineRouting"];
                                                          v505 = v446;
                                                          v362 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v505 forKeys:&v504 count:1];
                                                          v363 = v360;
                                                          v364 = v361;
LABEL_265:
                                                          self = selfCopy7;
                                                          *error = [v363 initWithDomain:v364 code:2 userInfo:v362];

                                                          selfCopy9 = 0;
                                                          v367 = v352;
                                                          v10 = v425;
                                                          v39 = v485;
                                                          v43 = v478;
                                                          error = v490;
                                                          v25 = v449;
                                                          v296 = v419;
                                                          goto LABEL_278;
                                                        }

LABEL_266:
                                                        selfCopy9 = 0;
                                                        v367 = v352;
                                                        self = selfCopy7;
                                                        v10 = v425;
                                                        v39 = v485;
                                                        v43 = v478;
                                                        error = v490;
                                                        v25 = v449;
LABEL_272:
                                                        v296 = v419;
                                                        goto LABEL_279;
                                                      }

                                                      v296 = v118;
                                                      if (error)
                                                      {
                                                        v340 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v341 = *MEMORY[0x1E698F240];
                                                        v511 = *MEMORY[0x1E696A578];
                                                        errorCopy5 = error;
                                                        selfCopy10 = self;
                                                        v344 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                        v345 = v296;
                                                        v416 = objc_opt_class();
                                                        v346 = v344;
                                                        self = selfCopy10;
                                                        error = v490;
                                                        v347 = [v346 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v416, @"tuples"];
                                                        v512 = v347;
                                                        v348 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v512 forKeys:&v511 count:1];
                                                        *errorCopy5 = [v340 initWithDomain:v341 code:2 userInfo:v348];

                                                        v339 = v347;
                                                        selfCopy9 = 0;
                                                        v296 = v345;
                                                        v7 = v443;
                                                        v10 = v426;
                                                        v39 = v485;
                                                        v43 = v478;
                                                        v124 = v437;
                                                        goto LABEL_284;
                                                      }

                                                      selfCopy9 = 0;
                                                      v39 = v485;
                                                      v43 = v478;
                                                      error = v490;
                                                      v124 = v437;
LABEL_285:

                                                      dictionaryCopy = v489;
                                                      goto LABEL_286;
                                                    }

                                                    if (error)
                                                    {
                                                      v330 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v444 = *MEMORY[0x1E698F240];
                                                      v513 = *MEMORY[0x1E696A578];
                                                      v451 = v25;
                                                      v331 = v7;
                                                      errorCopy6 = error;
                                                      selfCopy11 = self;
                                                      v334 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                      v415 = objc_opt_class();
                                                      v335 = v334;
                                                      self = selfCopy11;
                                                      v124 = v437;
                                                      error = v490;
                                                      v336 = v331;
                                                      v25 = v451;
                                                      v296 = [v335 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v415, @"usdxSessionCount"];
                                                      v514 = v296;
                                                      v337 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v514 forKeys:&v513 count:1];
                                                      v338 = [v330 initWithDomain:v444 code:2 userInfo:v337];
                                                      v429 = 0;
                                                      selfCopy9 = 0;
                                                      *errorCopy6 = v338;
                                                      v339 = v337;
                                                      v7 = v336;
                                                      v39 = v485;
                                                      v43 = v478;
                                                      goto LABEL_284;
                                                    }

                                                    v429 = 0;
                                                    selfCopy9 = 0;
                                                    v39 = v485;
                                                    v43 = v478;
                                                    error = v490;
                                                    v124 = v437;
LABEL_286:

                                                    goto LABEL_287;
                                                  }

                                                  if (error)
                                                  {
                                                    v319 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v320 = *MEMORY[0x1E698F240];
                                                    v515 = *MEMORY[0x1E696A578];
                                                    v321 = v10;
                                                    v322 = v25;
                                                    v323 = v7;
                                                    errorCopy7 = error;
                                                    selfCopy12 = self;
                                                    v326 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                    v414 = objc_opt_class();
                                                    v327 = v326;
                                                    self = selfCopy12;
                                                    v124 = v437;
                                                    error = v490;
                                                    v328 = v323;
                                                    v25 = v322;
                                                    v10 = v321;
                                                    dictionaryCopy = v489;
                                                    v429 = [v327 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v414, @"siriUnavailableResponseCount"];
                                                    v516 = v429;
                                                    v428 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v516 forKeys:&v515 count:1];
                                                    v329 = [v319 initWithDomain:v320 code:2 userInfo:?];
                                                    v431 = 0;
                                                    selfCopy9 = 0;
                                                    *errorCopy7 = v329;
                                                    v7 = v328;
                                                    v39 = v485;
                                                    v43 = v478;
                                                    goto LABEL_286;
                                                  }

                                                  v431 = 0;
                                                  selfCopy9 = 0;
                                                  v39 = v485;
                                                  v43 = v478;
                                                  error = v490;
                                                  v124 = v437;
LABEL_287:

                                                  goto LABEL_288;
                                                }

                                                if (error)
                                                {
                                                  v308 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v309 = *MEMORY[0x1E698F240];
                                                  v517 = *MEMORY[0x1E696A578];
                                                  v310 = v10;
                                                  v311 = v25;
                                                  v312 = v7;
                                                  errorCopy8 = error;
                                                  selfCopy13 = self;
                                                  v315 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                  v413 = objc_opt_class();
                                                  v316 = v315;
                                                  self = selfCopy13;
                                                  v124 = v437;
                                                  error = v490;
                                                  v317 = v312;
                                                  v25 = v311;
                                                  v10 = v310;
                                                  dictionaryCopy = v489;
                                                  v431 = [v316 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v413, @"failureResponseCount"];
                                                  v518 = v431;
                                                  v430 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v518 forKeys:&v517 count:1];
                                                  v318 = [v308 initWithDomain:v309 code:2 userInfo:?];
                                                  v433 = 0;
                                                  selfCopy9 = 0;
                                                  *errorCopy8 = v318;
                                                  v7 = v317;
                                                  v39 = v485;
                                                  v43 = v478;
                                                  goto LABEL_287;
                                                }

                                                v433 = 0;
                                                selfCopy9 = 0;
                                                v39 = v485;
                                                v43 = v478;
                                                error = v490;
                                                v124 = v437;
LABEL_288:

                                                goto LABEL_289;
                                              }

                                              if (error)
                                              {
                                                v297 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v298 = *MEMORY[0x1E698F240];
                                                v519 = *MEMORY[0x1E696A578];
                                                v299 = v10;
                                                v300 = v25;
                                                v301 = v7;
                                                errorCopy9 = error;
                                                selfCopy14 = self;
                                                v304 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                v412 = objc_opt_class();
                                                v305 = v304;
                                                self = selfCopy14;
                                                error = v490;
                                                v306 = v301;
                                                v25 = v300;
                                                v10 = v299;
                                                dictionaryCopy = v489;
                                                v433 = [v305 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v412, @"fatalResponseCount"];
                                                v520 = v433;
                                                v432 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v520 forKeys:&v519 count:1];
                                                v307 = [v297 initWithDomain:v298 code:2 userInfo:?];
                                                v124 = 0;
                                                selfCopy9 = 0;
                                                *errorCopy9 = v307;
                                                v7 = v306;
                                                v39 = v485;
                                                v43 = v478;
                                                goto LABEL_288;
                                              }

                                              v124 = 0;
                                              selfCopy9 = 0;
                                              v39 = v485;
                                              v43 = v478;
                                              error = v490;
LABEL_289:

                                              goto LABEL_290;
                                            }

                                            if (error)
                                            {
                                              v281 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v282 = *MEMORY[0x1E698F240];
                                              v521 = *MEMORY[0x1E696A578];
                                              v283 = v10;
                                              v284 = v25;
                                              v285 = v7;
                                              errorCopy10 = error;
                                              selfCopy15 = self;
                                              v288 = objc_alloc(MEMORY[0x1E696AEC0]);
                                              v411 = objc_opt_class();
                                              v289 = v288;
                                              self = selfCopy15;
                                              error = v490;
                                              v290 = v285;
                                              v25 = v284;
                                              v10 = v283;
                                              dictionaryCopy = v489;
                                              v124 = [v289 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v411, @"undesiredResponseCount"];
                                              v522 = v124;
                                              v434 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v522 forKeys:&v521 count:1];
                                              v291 = [v281 initWithDomain:v282 code:2 userInfo:?];
                                              v435 = 0;
                                              selfCopy9 = 0;
                                              *errorCopy10 = v291;
                                              v7 = v290;
                                              v39 = v485;
                                              v43 = v478;
                                              goto LABEL_289;
                                            }

                                            v435 = 0;
                                            selfCopy9 = 0;
                                            v39 = v485;
                                            v43 = v478;
                                            error = v490;
LABEL_290:

                                            goto LABEL_291;
                                          }

                                          if (error)
                                          {
                                            v270 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v271 = *MEMORY[0x1E698F240];
                                            v523 = *MEMORY[0x1E696A578];
                                            v272 = v10;
                                            v273 = v25;
                                            v274 = v7;
                                            errorCopy11 = error;
                                            selfCopy16 = self;
                                            v277 = objc_alloc(MEMORY[0x1E696AEC0]);
                                            v410 = objc_opt_class();
                                            v278 = v277;
                                            self = selfCopy16;
                                            error = v490;
                                            v279 = v274;
                                            v25 = v273;
                                            v10 = v272;
                                            dictionaryCopy = v489;
                                            v435 = [v278 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v410, @"clientErrorCount"];
                                            v524 = v435;
                                            v436 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v524 forKeys:&v523 count:1];
                                            v280 = [v270 initWithDomain:v271 code:2 userInfo:?];
                                            v438 = 0;
                                            selfCopy9 = 0;
                                            *errorCopy11 = v280;
                                            v7 = v279;
                                            v39 = v485;
                                            v43 = v478;
                                            goto LABEL_290;
                                          }

                                          v438 = 0;
                                          selfCopy9 = 0;
                                          v39 = v485;
                                          v43 = v478;
                                          error = v490;
LABEL_291:

                                          goto LABEL_292;
                                        }

                                        if (error)
                                        {
                                          v259 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v260 = *MEMORY[0x1E698F240];
                                          v525 = *MEMORY[0x1E696A578];
                                          v261 = v10;
                                          v262 = v25;
                                          v263 = v7;
                                          errorCopy12 = error;
                                          selfCopy17 = self;
                                          v266 = objc_alloc(MEMORY[0x1E696AEC0]);
                                          v409 = objc_opt_class();
                                          v267 = v266;
                                          self = selfCopy17;
                                          error = v490;
                                          v268 = v263;
                                          v25 = v262;
                                          v10 = v261;
                                          dictionaryCopy = v489;
                                          v438 = [v267 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v409, @"reliabilityTurnCount"];
                                          v526 = v438;
                                          v439 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v526 forKeys:&v525 count:1];
                                          v269 = [v259 initWithDomain:v260 code:2 userInfo:?];
                                          v440 = 0;
                                          selfCopy9 = 0;
                                          *errorCopy12 = v269;
                                          v7 = v268;
                                          v39 = v485;
                                          v43 = v478;
                                          goto LABEL_291;
                                        }

                                        v440 = 0;
                                        selfCopy9 = 0;
                                        v39 = v485;
                                        v43 = v478;
                                        error = v490;
LABEL_292:

                                        goto LABEL_293;
                                      }

                                      if (error)
                                      {
                                        v248 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v249 = *MEMORY[0x1E698F240];
                                        v527 = *MEMORY[0x1E696A578];
                                        v250 = v10;
                                        v251 = v25;
                                        v252 = v7;
                                        errorCopy13 = error;
                                        selfCopy18 = self;
                                        v255 = objc_alloc(MEMORY[0x1E696AEC0]);
                                        v408 = objc_opt_class();
                                        v256 = v255;
                                        self = selfCopy18;
                                        error = v490;
                                        v257 = v252;
                                        v25 = v251;
                                        v10 = v250;
                                        dictionaryCopy = v489;
                                        v440 = [v256 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v408, @"reliabilityRequestCount"];
                                        v528 = v440;
                                        v441 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v528 forKeys:&v527 count:1];
                                        v258 = [v248 initWithDomain:v249 code:2 userInfo:?];
                                        v447 = 0;
                                        selfCopy9 = 0;
                                        *errorCopy13 = v258;
                                        v7 = v257;
                                        v39 = v485;
                                        v43 = v478;
                                        goto LABEL_292;
                                      }

                                      v447 = 0;
                                      selfCopy9 = 0;
                                      v39 = v485;
                                      v43 = v478;
                                      error = v490;
LABEL_293:

                                      goto LABEL_294;
                                    }

                                    if (error)
                                    {
                                      v237 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v238 = *MEMORY[0x1E698F240];
                                      v529 = *MEMORY[0x1E696A578];
                                      v239 = v10;
                                      v240 = v25;
                                      v241 = v7;
                                      errorCopy14 = error;
                                      selfCopy19 = self;
                                      v244 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v407 = objc_opt_class();
                                      v245 = v244;
                                      self = selfCopy19;
                                      error = v490;
                                      v246 = v241;
                                      v25 = v240;
                                      v10 = v239;
                                      dictionaryCopy = v489;
                                      v447 = [v245 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v407, @"flowTasksCompleted"];
                                      v530 = v447;
                                      v448 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v530 forKeys:&v529 count:1];
                                      v247 = [v237 initWithDomain:v238 code:2 userInfo:?];
                                      v452 = 0;
                                      selfCopy9 = 0;
                                      *errorCopy14 = v247;
                                      v7 = v246;
                                      v39 = v485;
                                      v43 = v478;
                                      goto LABEL_293;
                                    }

                                    v452 = 0;
                                    selfCopy9 = 0;
                                    v39 = v485;
                                    v43 = v478;
                                    error = v490;
LABEL_294:

                                    goto LABEL_295;
                                  }

                                  if (error)
                                  {
                                    v226 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v227 = *MEMORY[0x1E698F240];
                                    v531 = *MEMORY[0x1E696A578];
                                    v228 = v10;
                                    v229 = v25;
                                    v230 = v7;
                                    errorCopy15 = error;
                                    selfCopy20 = self;
                                    v233 = objc_alloc(MEMORY[0x1E696AEC0]);
                                    v406 = objc_opt_class();
                                    v234 = v233;
                                    self = selfCopy20;
                                    error = v490;
                                    v235 = v230;
                                    v25 = v229;
                                    v10 = v228;
                                    dictionaryCopy = v489;
                                    v452 = [v234 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v406, @"flowTasksStarted"];
                                    v532 = v452;
                                    v453 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v532 forKeys:&v531 count:1];
                                    v236 = [v226 initWithDomain:v227 code:2 userInfo:?];
                                    v454 = 0;
                                    selfCopy9 = 0;
                                    *errorCopy15 = v236;
                                    v7 = v235;
                                    v39 = v485;
                                    v43 = v478;
                                    goto LABEL_294;
                                  }

                                  v454 = 0;
                                  selfCopy9 = 0;
                                  v39 = v485;
                                  v43 = v478;
                                  error = v490;
LABEL_295:

                                  goto LABEL_296;
                                }

                                if (error)
                                {
                                  v215 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v216 = *MEMORY[0x1E698F240];
                                  v533 = *MEMORY[0x1E696A578];
                                  v217 = v10;
                                  v218 = v25;
                                  v219 = v7;
                                  errorCopy16 = error;
                                  selfCopy21 = self;
                                  v222 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v405 = objc_opt_class();
                                  v223 = v222;
                                  self = selfCopy21;
                                  error = v490;
                                  v224 = v219;
                                  v25 = v218;
                                  v10 = v217;
                                  dictionaryCopy = v489;
                                  v454 = [v223 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v405, @"siriTasksCompleted"];
                                  v534 = v454;
                                  v455 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v534 forKeys:&v533 count:1];
                                  v225 = [v215 initWithDomain:v216 code:2 userInfo:?];
                                  v456 = 0;
                                  selfCopy9 = 0;
                                  *errorCopy16 = v225;
                                  v7 = v224;
                                  v39 = v485;
                                  v43 = v478;
                                  goto LABEL_295;
                                }

                                v456 = 0;
                                selfCopy9 = 0;
                                v39 = v485;
                                v43 = v478;
                                error = v490;
LABEL_296:

                                goto LABEL_297;
                              }

                              if (error)
                              {
                                v204 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v205 = *MEMORY[0x1E698F240];
                                v535 = *MEMORY[0x1E696A578];
                                v206 = v10;
                                v207 = v25;
                                v208 = v7;
                                errorCopy17 = error;
                                selfCopy22 = self;
                                v211 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v404 = objc_opt_class();
                                v212 = v211;
                                self = selfCopy22;
                                error = v490;
                                v213 = v208;
                                v25 = v207;
                                v10 = v206;
                                dictionaryCopy = v489;
                                v456 = [v212 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v404, @"siriTasksStarted"];
                                v536 = v456;
                                v457 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v536 forKeys:&v535 count:1];
                                v214 = [v204 initWithDomain:v205 code:2 userInfo:?];
                                v458 = 0;
                                selfCopy9 = 0;
                                *errorCopy17 = v214;
                                v7 = v213;
                                v39 = v485;
                                v43 = v478;
                                goto LABEL_296;
                              }

                              v458 = 0;
                              selfCopy9 = 0;
                              v39 = v485;
                              v43 = v478;
                              error = v490;
LABEL_297:

                              goto LABEL_298;
                            }

                            if (error)
                            {
                              v193 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v194 = *MEMORY[0x1E698F240];
                              v537 = *MEMORY[0x1E696A578];
                              v195 = v10;
                              v196 = v25;
                              v197 = v7;
                              errorCopy18 = error;
                              selfCopy23 = self;
                              v200 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v403 = objc_opt_class();
                              v201 = v200;
                              self = selfCopy23;
                              error = v490;
                              v202 = v197;
                              v25 = v196;
                              v10 = v195;
                              dictionaryCopy = v489;
                              v458 = [v201 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v403, @"validTurnCount"];
                              v538 = v458;
                              v459 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v538 forKeys:&v537 count:1];
                              v203 = [v193 initWithDomain:v194 code:2 userInfo:?];
                              v460 = 0;
                              selfCopy9 = 0;
                              *errorCopy18 = v203;
                              v7 = v202;
                              v39 = v485;
                              v43 = v478;
                              goto LABEL_297;
                            }

                            v460 = 0;
                            selfCopy9 = 0;
                            v39 = v485;
                            v43 = v478;
                            error = v490;
LABEL_298:

                            goto LABEL_299;
                          }

                          if (error)
                          {
                            v182 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v183 = *MEMORY[0x1E698F240];
                            v539 = *MEMORY[0x1E696A578];
                            v184 = v10;
                            v185 = v25;
                            v186 = v7;
                            errorCopy19 = error;
                            selfCopy24 = self;
                            v189 = objc_alloc(MEMORY[0x1E696AEC0]);
                            v402 = objc_opt_class();
                            v190 = v189;
                            self = selfCopy24;
                            error = v490;
                            v191 = v186;
                            v25 = v185;
                            v10 = v184;
                            dictionaryCopy = v489;
                            v460 = [v190 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v402, @"totalTurnCount"];
                            v540 = v460;
                            v461 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v540 forKeys:&v539 count:1];
                            v192 = [v182 initWithDomain:v183 code:2 userInfo:?];
                            v462 = 0;
                            selfCopy9 = 0;
                            *errorCopy19 = v192;
                            v7 = v191;
                            v39 = v485;
                            v43 = v478;
                            goto LABEL_298;
                          }

                          v462 = 0;
                          selfCopy9 = 0;
                          v39 = v485;
                          v43 = v478;
                          error = v490;
LABEL_299:

                          v18 = v464;
                          goto LABEL_300;
                        }

                        if (error)
                        {
                          v174 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v175 = *MEMORY[0x1E698F240];
                          v541 = *MEMORY[0x1E696A578];
                          v176 = v7;
                          errorCopy20 = error;
                          selfCopy25 = self;
                          v179 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v401 = objc_opt_class();
                          v180 = v179;
                          self = selfCopy25;
                          error = v490;
                          v462 = [v180 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v401, @"codePathIdUUID"];
                          v542 = v462;
                          v463 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v542 forKeys:&v541 count:1];
                          v181 = [v174 initWithDomain:v175 code:2 userInfo:?];
                          v467 = 0;
                          selfCopy9 = 0;
                          *errorCopy20 = v181;
                          v7 = v176;
                          v39 = v485;
                          v43 = v478;
                          v25 = v450;
                          goto LABEL_299;
                        }

                        v467 = 0;
                        selfCopy9 = 0;
                        v39 = v485;
                        v43 = v478;
                        error = v490;
                        v18 = v464;
LABEL_300:

                        goto LABEL_301;
                      }

                      if (error)
                      {
                        v164 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v466 = *MEMORY[0x1E698F240];
                        v543 = *MEMORY[0x1E696A578];
                        v165 = v18;
                        v166 = v7;
                        errorCopy21 = error;
                        selfCopy26 = self;
                        v169 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v400 = objc_opt_class();
                        v170 = v169;
                        self = selfCopy26;
                        error = v490;
                        v171 = v166;
                        v18 = v165;
                        v467 = [v170 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v400, @"isFirstTriggerOrAfterFirstTrigger"];
                        v544 = v467;
                        v172 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v544 forKeys:&v543 count:1];
                        v173 = v466;
                        v465 = v172;
                        v25 = 0;
                        selfCopy9 = 0;
                        *errorCopy21 = [v164 initWithDomain:v173 code:2 userInfo:?];
                        v7 = v171;
                        v39 = v485;
                        v43 = v478;
                        goto LABEL_300;
                      }

                      v25 = 0;
                      selfCopy9 = 0;
                      v39 = v485;
                      v43 = v478;
                      error = v490;
LABEL_301:

                      goto LABEL_302;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v473 = v22;
                      goto LABEL_34;
                    }

                    if (error)
                    {
                      v474 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v146 = *MEMORY[0x1E698F240];
                      v547 = *MEMORY[0x1E696A578];
                      v147 = v18;
                      v148 = v7;
                      errorCopy22 = error;
                      selfCopy27 = self;
                      v151 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v398 = objc_opt_class();
                      v152 = v151;
                      self = selfCopy27;
                      error = v490;
                      v153 = v148;
                      v135 = v472;
                      v18 = v147;
                      v469 = [v152 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v398, @"experimentAllocationStatus"];
                      v548 = v469;
                      v471 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v548 forKeys:&v547 count:1];
                      v154 = [v474 initWithDomain:v146 code:2 userInfo:?];
                      v473 = 0;
                      selfCopy9 = 0;
                      *errorCopy22 = v154;
                      v7 = v153;
                      v39 = v485;
                      v43 = v478;
LABEL_303:

                      goto LABEL_304;
                    }

                    v473 = 0;
                    selfCopy9 = 0;
                    v39 = v485;
                    v43 = v478;
                    error = v490;
                    v135 = v472;
LABEL_304:

                    goto LABEL_305;
                  }

                  if (error)
                  {
                    v476 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v136 = *MEMORY[0x1E698F240];
                    v549 = *MEMORY[0x1E696A578];
                    v137 = v18;
                    v138 = v7;
                    errorCopy23 = error;
                    selfCopy28 = self;
                    v141 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v397 = objc_opt_class();
                    v142 = v141;
                    self = selfCopy28;
                    error = v490;
                    v143 = v138;
                    v18 = v137;
                    v473 = [v142 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v397, @"responseCategory"];
                    v550 = v473;
                    v144 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v550 forKeys:&v549 count:1];
                    v145 = v476;
                    v475 = v144;
                    v135 = 0;
                    selfCopy9 = 0;
                    *errorCopy23 = [v145 initWithDomain:v136 code:2 userInfo:?];
                    v7 = v143;
                    v39 = v485;
                    v43 = v478;
                    goto LABEL_304;
                  }

                  v135 = 0;
                  selfCopy9 = 0;
                  v39 = v485;
                  v43 = v478;
                  error = v490;
LABEL_305:

                  goto LABEL_306;
                }

                if (!error)
                {
                  selfCopy9 = 0;
                  error = v490;
                  v39 = v485;
                  v43 = v17;
LABEL_308:

                  v33 = v488;
                  goto LABEL_309;
                }

                v81 = objc_alloc(MEMORY[0x1E696ABC0]);
                v442 = v7;
                errorCopy24 = error;
                selfCopy29 = self;
                v84 = *MEMORY[0x1E698F240];
                v553 = *MEMORY[0x1E696A578];
                v85 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"siriInputLocale"];
                v554 = v85;
                v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v554 forKeys:&v553 count:1];
                v87 = v84;
                self = selfCopy29;
                *errorCopy24 = [v81 initWithDomain:v87 code:2 userInfo:v86];
                v7 = v442;

                selfCopy9 = 0;
                v43 = v17;
                v46 = v85;
                error = v490;
LABEL_83:
                v39 = v485;
LABEL_307:

                goto LABEL_308;
              }

              if (error)
              {
                v71 = objc_alloc(MEMORY[0x1E696ABC0]);
                v72 = *MEMORY[0x1E698F240];
                v555 = *MEMORY[0x1E696A578];
                v73 = v7;
                errorCopy25 = error;
                selfCopy30 = self;
                v76 = objc_alloc(MEMORY[0x1E696AEC0]);
                v395 = objc_opt_class();
                v77 = v76;
                self = selfCopy30;
                v78 = v73;
                v43 = [v77 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v395, @"nlLocation"];
                v556 = v43;
                v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v556 forKeys:&v555 count:1];
                v80 = [v71 initWithDomain:v72 code:2 userInfo:v79];
                v481 = 0;
                selfCopy9 = 0;
                *errorCopy25 = v80;
                v46 = v79;
                v7 = v78;
                error = v490;
                goto LABEL_83;
              }

              v481 = 0;
              selfCopy9 = 0;
              v33 = v488;
              v39 = v485;
              error = v490;
LABEL_309:

              goto LABEL_310;
            }

            if (error)
            {
              v63 = objc_alloc(MEMORY[0x1E696ABC0]);
              v64 = *MEMORY[0x1E698F240];
              v557 = *MEMORY[0x1E696A578];
              v65 = v7;
              errorCopy26 = error;
              selfCopy31 = self;
              v68 = objc_alloc(MEMORY[0x1E696AEC0]);
              v394 = objc_opt_class();
              v69 = v68;
              self = selfCopy31;
              error = v490;
              v481 = [v69 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v394, @"asrLocation"];
              v558 = v481;
              v482 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v558 forKeys:&v557 count:1];
              v70 = [v63 initWithDomain:v64 code:2 userInfo:?];
              v483 = 0;
              selfCopy9 = 0;
              *errorCopy26 = v70;
              v7 = v65;
              v33 = v488;
              v39 = v485;
              goto LABEL_309;
            }

            v483 = 0;
            selfCopy9 = 0;
            v33 = v488;
            v39 = v485;
            error = v490;
LABEL_310:

            goto LABEL_311;
          }

          if (error)
          {
            v55 = objc_alloc(MEMORY[0x1E696ABC0]);
            v56 = *MEMORY[0x1E698F240];
            v559 = *MEMORY[0x1E696A578];
            v57 = v7;
            errorCopy27 = error;
            selfCopy32 = self;
            v60 = objc_alloc(MEMORY[0x1E696AEC0]);
            v393 = objc_opt_class();
            v61 = v60;
            self = selfCopy32;
            error = v490;
            v483 = [v61 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v393, @"audioInterfaceProductId"];
            v560 = v483;
            v484 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v560 forKeys:&v559 count:1];
            v62 = [v55 initWithDomain:v56 code:2 userInfo:?];
            v486 = 0;
            selfCopy9 = 0;
            *errorCopy27 = v62;
            v7 = v57;
            v33 = v488;
            v39 = v485;
            goto LABEL_310;
          }

          v486 = 0;
          selfCopy9 = 0;
          v33 = v488;
          v39 = v485;
          error = v490;
LABEL_311:

          goto LABEL_312;
        }

        if (error)
        {
          v47 = objc_alloc(MEMORY[0x1E696ABC0]);
          v48 = *MEMORY[0x1E698F240];
          v561 = *MEMORY[0x1E696A578];
          v49 = v7;
          errorCopy28 = error;
          selfCopy33 = self;
          v52 = objc_alloc(MEMORY[0x1E696AEC0]);
          v392 = objc_opt_class();
          v53 = v52;
          self = selfCopy33;
          error = v490;
          v486 = [v53 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v392, @"audioInterfaceVendorId"];
          v562 = v486;
          v487 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v562 forKeys:&v561 count:1];
          v54 = [v47 initWithDomain:v48 code:2 userInfo:?];
          v39 = 0;
          selfCopy9 = 0;
          *errorCopy28 = v54;
          v7 = v49;
          v33 = v488;
          dictionaryCopy = v489;
          goto LABEL_311;
        }

        v39 = 0;
        selfCopy9 = 0;
        v33 = v488;
LABEL_146:
        error = v490;
LABEL_312:

        goto LABEL_313;
      }

      if (error)
      {
        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v563 = *MEMORY[0x1E696A578];
        v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"viewInterface"];
        v564 = v37;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v564 forKeys:&v563 count:1];
        v38 = v36;
        v39 = v37;
        v40 = [v35 initWithDomain:v38 code:2 userInfo:v10];
        v33 = 0;
        selfCopy9 = 0;
        *error = v40;
        goto LABEL_146;
      }

      v33 = 0;
      selfCopy9 = 0;
      error = v490;
LABEL_313:

      goto LABEL_314;
    }

    if (error)
    {
      v31 = objc_alloc(MEMORY[0x1E696ABC0]);
      v32 = *MEMORY[0x1E698F240];
      v565 = *MEMORY[0x1E696A578];
      v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"dataSharingOptInStatus"];
      v566 = v33;
      v491 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v566 forKeys:&v565 count:1];
      v34 = [v31 initWithDomain:v32 code:2 userInfo:?];
      selfCopy9 = 0;
      *error = v34;
      error = 0;
      goto LABEL_313;
    }

    selfCopy9 = 0;
LABEL_314:

    goto LABEL_315;
  }

  if (error)
  {
    v27 = objc_alloc(MEMORY[0x1E696ABC0]);
    v28 = *MEMORY[0x1E698F240];
    v567 = *MEMORY[0x1E696A578];
    error = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"systemBuild"];
    v568[0] = error;
    v493 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v568 forKeys:&v567 count:1];
    v29 = [v27 initWithDomain:v28 code:2 userInfo:?];
    v492 = 0;
    selfCopy9 = 0;
    *errorCopy = v29;
    goto LABEL_314;
  }

  v492 = 0;
  selfCopy9 = 0;
LABEL_315:

  return selfCopy9;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_systemBuild)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasDataSharingOptInStatus)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasViewInterface)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_audioInterfaceVendorId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_audioInterfaceProductId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasAsrLocation)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNlLocation)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_siriInputLocale)
  {
    v14 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriOnDeviceDigestExperimentMetricsISOLocale *)self->_siriInputLocale writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_subDomain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasResponseCategory)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasExperimentAllocationStatus)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasIsTriggered)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsFirstTriggerOrAfterFirstTrigger)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_codePathIdUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasTotalTurnCount)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasValidTurnCount)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasSiriTasksStarted)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasSiriTasksCompleted)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasFlowTasksStarted)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasFlowTasksCompleted)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasReliabilityRequestCount)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasReliabilityTurnCount)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasClientErrorCount)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasUndesiredResponseCount)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasFatalResponseCount)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasFailureResponseCount)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasSiriUnavailableResponseCount)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasUsdxSessionCount)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_tuples)
  {
    v14 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples *)self->_tuples writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasIsIntelligenceEngineRequest)
  {
    PBDataWriterWriteBOOLField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_intelligenceEngineRouting;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }

  if (self->_hasInvocationSource)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v186.receiver = self;
  v186.super_class = BMSiriOnDeviceDigestExperimentMetricsExperimentDigest;
  v5 = [(BMEventBase *)&v186 init];
  if (!v5)
  {
LABEL_358:
    v184 = v5;
    goto LABEL_359;
  }

  v6 = objc_opt_new();
  while (2)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      goto LABEL_356;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      LOBYTE(v187) = 0;
      v11 = [fromCopy position] + 1;
      if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v10 |= (v187 & 0x7F) << v8;
      if ((v187 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      v14 = v9++ >= 9;
      if (v14)
      {
        v15 = 0;
        goto LABEL_17;
      }
    }

    v15 = [fromCopy hasError] ? 0 : v10;
LABEL_17:
    if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
    {
LABEL_356:
      v181 = [v6 copy];
      intelligenceEngineRouting = v5->_intelligenceEngineRouting;
      v5->_intelligenceEngineRouting = v181;

      hasError = [fromCopy hasError];
      if (hasError)
      {
        goto LABEL_357;
      }

      goto LABEL_358;
    }

    switch((v15 >> 3))
    {
      case 1u:
        v16 = PBReaderReadString();
        v17 = 136;
        goto LABEL_199;
      case 2u:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        v5->_hasDataSharingOptInStatus = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v86 = [fromCopy position] + 1;
          if (v86 >= [fromCopy position] && (v87 = objc_msgSend(fromCopy, "position") + 1, v87 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v85 |= (v187 & 0x7F) << v83;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v14 = v84++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_299;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v85;
        }

LABEL_299:
        v178 = 48;
        goto LABEL_355;
      case 3u:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        v5->_hasViewInterface = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v72 = [fromCopy position] + 1;
          if (v72 >= [fromCopy position] && (v73 = objc_msgSend(fromCopy, "position") + 1, v73 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v71 |= (v187 & 0x7F) << v69;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v14 = v70++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_291;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v71;
        }

LABEL_291:
        v178 = 52;
        goto LABEL_355;
      case 4u:
        v16 = PBReaderReadString();
        v17 = 144;
        goto LABEL_199;
      case 5u:
        v16 = PBReaderReadString();
        v17 = 152;
        goto LABEL_199;
      case 6u:
        v107 = 0;
        v108 = 0;
        v109 = 0;
        v5->_hasAsrLocation = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v110 = [fromCopy position] + 1;
          if (v110 >= [fromCopy position] && (v111 = objc_msgSend(fromCopy, "position") + 1, v111 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v109 |= (v187 & 0x7F) << v107;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v14 = v108++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_315;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v109;
        }

LABEL_315:
        v178 = 56;
        goto LABEL_355;
      case 7u:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        v5->_hasNlLocation = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v122 = [fromCopy position] + 1;
          if (v122 >= [fromCopy position] && (v123 = objc_msgSend(fromCopy, "position") + 1, v123 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v121 |= (v187 & 0x7F) << v119;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v14 = v120++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_323;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v121;
        }

LABEL_323:
        v178 = 60;
        goto LABEL_355;
      case 8u:
        v187 = 0;
        v188 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_360;
        }

        v81 = [[BMSiriOnDeviceDigestExperimentMetricsISOLocale alloc] initByReadFrom:fromCopy];
        if (!v81)
        {
          goto LABEL_360;
        }

        v82 = 160;
        goto LABEL_241;
      case 9u:
        v16 = PBReaderReadString();
        v17 = 168;
        goto LABEL_199;
      case 0xAu:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v5->_hasResponseCategory = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v54 = [fromCopy position] + 1;
          if (v54 >= [fromCopy position] && (v55 = objc_msgSend(fromCopy, "position") + 1, v55 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v53 |= (v187 & 0x7F) << v51;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v14 = v52++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_279;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v53;
        }

LABEL_279:
        v178 = 64;
        goto LABEL_355;
      case 0xBu:
        v131 = 0;
        v132 = 0;
        v133 = 0;
        v5->_hasExperimentAllocationStatus = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v134 = [fromCopy position] + 1;
          if (v134 >= [fromCopy position] && (v135 = objc_msgSend(fromCopy, "position") + 1, v135 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v133 |= (v187 & 0x7F) << v131;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v131 += 7;
          v14 = v132++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_331;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v133;
        }

LABEL_331:
        v178 = 68;
        goto LABEL_355;
      case 0xCu:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v5->_hasIsTriggered = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v40 = [fromCopy position] + 1;
          if (v40 >= [fromCopy position] && (v41 = objc_msgSend(fromCopy, "position") + 1, v41 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v39 |= (v187 & 0x7F) << v37;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v14 = v38++ >= 9;
          if (v14)
          {
            LOBYTE(v43) = 0;
            goto LABEL_273;
          }
        }

        v43 = (v39 != 0) & ~[fromCopy hasError];
LABEL_273:
        v5->_isTriggered = v43;
        continue;
      case 0xDu:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v5->_hasIsFirstTriggerOrAfterFirstTrigger = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v47 = [fromCopy position] + 1;
          if (v47 >= [fromCopy position] && (v48 = objc_msgSend(fromCopy, "position") + 1, v48 <= objc_msgSend(fromCopy, "length")))
          {
            data9 = [fromCopy data];
            [data9 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v46 |= (v187 & 0x7F) << v44;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v14 = v45++ >= 9;
          if (v14)
          {
            LOBYTE(v50) = 0;
            goto LABEL_275;
          }
        }

        v50 = (v46 != 0) & ~[fromCopy hasError];
LABEL_275:
        v5->_isFirstTriggerOrAfterFirstTrigger = v50;
        continue;
      case 0xEu:
        v16 = PBReaderReadString();
        v17 = 176;
LABEL_199:
        v137 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        continue;
      case 0xFu:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v5->_hasTotalTurnCount = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v34 = [fromCopy position] + 1;
          if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
          {
            data10 = [fromCopy data];
            [data10 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v33 |= (v187 & 0x7F) << v31;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v14 = v32++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_271;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v33;
        }

LABEL_271:
        v178 = 72;
        goto LABEL_355;
      case 0x10u:
        v75 = 0;
        v76 = 0;
        v77 = 0;
        v5->_hasValidTurnCount = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v78 = [fromCopy position] + 1;
          if (v78 >= [fromCopy position] && (v79 = objc_msgSend(fromCopy, "position") + 1, v79 <= objc_msgSend(fromCopy, "length")))
          {
            data11 = [fromCopy data];
            [data11 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v77 |= (v187 & 0x7F) << v75;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v75 += 7;
          v14 = v76++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_295;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v77;
        }

LABEL_295:
        v178 = 76;
        goto LABEL_355;
      case 0x11u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v5->_hasSiriTasksStarted = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v28 = [fromCopy position] + 1;
          if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
          {
            data12 = [fromCopy data];
            [data12 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v27 |= (v187 & 0x7F) << v25;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v14 = v26++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_267;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v27;
        }

LABEL_267:
        v178 = 80;
        goto LABEL_355;
      case 0x12u:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        v5->_hasSiriTasksCompleted = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v98 = [fromCopy position] + 1;
          if (v98 >= [fromCopy position] && (v99 = objc_msgSend(fromCopy, "position") + 1, v99 <= objc_msgSend(fromCopy, "length")))
          {
            data13 = [fromCopy data];
            [data13 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v97 |= (v187 & 0x7F) << v95;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v14 = v96++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_307;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v97;
        }

LABEL_307:
        v178 = 84;
        goto LABEL_355;
      case 0x13u:
        v125 = 0;
        v126 = 0;
        v127 = 0;
        v5->_hasFlowTasksStarted = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v128 = [fromCopy position] + 1;
          if (v128 >= [fromCopy position] && (v129 = objc_msgSend(fromCopy, "position") + 1, v129 <= objc_msgSend(fromCopy, "length")))
          {
            data14 = [fromCopy data];
            [data14 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v127 |= (v187 & 0x7F) << v125;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v14 = v126++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_327;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v127;
        }

LABEL_327:
        v178 = 88;
        goto LABEL_355;
      case 0x14u:
        v152 = 0;
        v153 = 0;
        v154 = 0;
        v5->_hasFlowTasksCompleted = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v155 = [fromCopy position] + 1;
          if (v155 >= [fromCopy position] && (v156 = objc_msgSend(fromCopy, "position") + 1, v156 <= objc_msgSend(fromCopy, "length")))
          {
            data15 = [fromCopy data];
            [data15 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v154 |= (v187 & 0x7F) << v152;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v152 += 7;
          v14 = v153++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_344;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v154;
        }

LABEL_344:
        v178 = 92;
        goto LABEL_355;
      case 0x15u:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        v5->_hasReliabilityRequestCount = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v104 = [fromCopy position] + 1;
          if (v104 >= [fromCopy position] && (v105 = objc_msgSend(fromCopy, "position") + 1, v105 <= objc_msgSend(fromCopy, "length")))
          {
            data16 = [fromCopy data];
            [data16 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v103 |= (v187 & 0x7F) << v101;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v14 = v102++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_311;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v103;
        }

LABEL_311:
        v178 = 96;
        goto LABEL_355;
      case 0x16u:
        v113 = 0;
        v114 = 0;
        v115 = 0;
        v5->_hasReliabilityTurnCount = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v116 = [fromCopy position] + 1;
          if (v116 >= [fromCopy position] && (v117 = objc_msgSend(fromCopy, "position") + 1, v117 <= objc_msgSend(fromCopy, "length")))
          {
            data17 = [fromCopy data];
            [data17 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v115 |= (v187 & 0x7F) << v113;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v113 += 7;
          v14 = v114++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_319;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v115;
        }

LABEL_319:
        v178 = 100;
        goto LABEL_355;
      case 0x17u:
        v146 = 0;
        v147 = 0;
        v148 = 0;
        v5->_hasClientErrorCount = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v149 = [fromCopy position] + 1;
          if (v149 >= [fromCopy position] && (v150 = objc_msgSend(fromCopy, "position") + 1, v150 <= objc_msgSend(fromCopy, "length")))
          {
            data18 = [fromCopy data];
            [data18 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v148 |= (v187 & 0x7F) << v146;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v146 += 7;
          v14 = v147++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_340;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v148;
        }

LABEL_340:
        v178 = 104;
        goto LABEL_355;
      case 0x18u:
        v158 = 0;
        v159 = 0;
        v160 = 0;
        v5->_hasUndesiredResponseCount = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v161 = [fromCopy position] + 1;
          if (v161 >= [fromCopy position] && (v162 = objc_msgSend(fromCopy, "position") + 1, v162 <= objc_msgSend(fromCopy, "length")))
          {
            data19 = [fromCopy data];
            [data19 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v160 |= (v187 & 0x7F) << v158;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v158 += 7;
          v14 = v159++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_348;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v160;
        }

LABEL_348:
        v178 = 108;
        goto LABEL_355;
      case 0x19u:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v5->_hasFatalResponseCount = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v66 = [fromCopy position] + 1;
          if (v66 >= [fromCopy position] && (v67 = objc_msgSend(fromCopy, "position") + 1, v67 <= objc_msgSend(fromCopy, "length")))
          {
            data20 = [fromCopy data];
            [data20 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v65 |= (v187 & 0x7F) << v63;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v14 = v64++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_287;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v65;
        }

LABEL_287:
        v178 = 112;
        goto LABEL_355;
      case 0x1Au:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v5->_hasFailureResponseCount = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v60 = [fromCopy position] + 1;
          if (v60 >= [fromCopy position] && (v61 = objc_msgSend(fromCopy, "position") + 1, v61 <= objc_msgSend(fromCopy, "length")))
          {
            data21 = [fromCopy data];
            [data21 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v59 |= (v187 & 0x7F) << v57;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v14 = v58++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_283;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v59;
        }

LABEL_283:
        v178 = 116;
        goto LABEL_355;
      case 0x1Bu:
        v172 = 0;
        v173 = 0;
        v174 = 0;
        v5->_hasSiriUnavailableResponseCount = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v175 = [fromCopy position] + 1;
          if (v175 >= [fromCopy position] && (v176 = objc_msgSend(fromCopy, "position") + 1, v176 <= objc_msgSend(fromCopy, "length")))
          {
            data22 = [fromCopy data];
            [data22 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v174 |= (v187 & 0x7F) << v172;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v172 += 7;
          v14 = v173++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_354;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v174;
        }

LABEL_354:
        v178 = 120;
        goto LABEL_355;
      case 0x1Cu:
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v5->_hasUsdxSessionCount = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v21 = [fromCopy position] + 1;
          if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
          {
            data23 = [fromCopy data];
            [data23 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v20 |= (v187 & 0x7F) << v18;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v14 = v19++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_263;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v20;
        }

LABEL_263:
        v178 = 124;
        goto LABEL_355;
      case 0x1Du:
        v187 = 0;
        v188 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_360;
        }

        v81 = [[BMSiriOnDeviceDigestExperimentMetricsExperimentDigestExperimentTuples alloc] initByReadFrom:fromCopy];
        if (!v81)
        {
          goto LABEL_360;
        }

        v82 = 184;
LABEL_241:
        v164 = *(&v5->super.super.isa + v82);
        *(&v5->super.super.isa + v82) = v81;

        PBReaderRecallMark();
        continue;
      case 0x1Eu:
        v165 = 0;
        v166 = 0;
        v167 = 0;
        v5->_hasIsIntelligenceEngineRequest = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v168 = [fromCopy position] + 1;
          if (v168 >= [fromCopy position] && (v169 = objc_msgSend(fromCopy, "position") + 1, v169 <= objc_msgSend(fromCopy, "length")))
          {
            data24 = [fromCopy data];
            [data24 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v167 |= (v187 & 0x7F) << v165;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v165 += 7;
          v14 = v166++ >= 9;
          if (v14)
          {
            LOBYTE(v171) = 0;
            goto LABEL_350;
          }
        }

        v171 = (v167 != 0) & ~[fromCopy hasError];
LABEL_350:
        v5->_isIntelligenceEngineRequest = v171;
        continue;
      case 0x1Fu:
        v138 = 0;
        v139 = 0;
        v140 = 0;
        v141 = MEMORY[0x1E696AD98];
        while (1)
        {
          LOBYTE(v187) = 0;
          v142 = [fromCopy position] + 1;
          if (v142 >= [fromCopy position] && (v143 = objc_msgSend(fromCopy, "position") + 1, v143 <= objc_msgSend(fromCopy, "length")))
          {
            data25 = [fromCopy data];
            [data25 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v140 |= (v187 & 0x7F) << v138;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v138 += 7;
          v14 = v139++ >= 9;
          if (v14)
          {
            v145 = 0;
            goto LABEL_335;
          }
        }

        if ([fromCopy hasError])
        {
          v145 = 0;
        }

        else
        {
          v145 = v140;
        }

LABEL_335:
        v179 = [v141 numberWithUnsignedInt:v145];
        if (v179)
        {
          v180 = v179;
          [v6 addObject:v179];

          continue;
        }

LABEL_360:

LABEL_357:
        v184 = 0;
LABEL_359:

        return v184;
      case 0x20u:
        v89 = 0;
        v90 = 0;
        v91 = 0;
        v5->_hasInvocationSource = 1;
        while (1)
        {
          LOBYTE(v187) = 0;
          v92 = [fromCopy position] + 1;
          if (v92 >= [fromCopy position] && (v93 = objc_msgSend(fromCopy, "position") + 1, v93 <= objc_msgSend(fromCopy, "length")))
          {
            data26 = [fromCopy data];
            [data26 getBytes:&v187 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v91 |= (v187 & 0x7F) << v89;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v89 += 7;
          v14 = v90++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_303;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v91;
        }

LABEL_303:
        v178 = 128;
LABEL_355:
        *(&v5->super.super.isa + v178) = v24;
        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

        goto LABEL_360;
    }
  }
}

- (NSString)description
{
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  systemBuild = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self systemBuild];
  v35 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest dataSharingOptInStatus](self, "dataSharingOptInStatus")}];
  v36 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest viewInterface](self, "viewInterface")}];
  audioInterfaceVendorId = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self audioInterfaceVendorId];
  audioInterfaceProductId = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self audioInterfaceProductId];
  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest asrLocation](self, "asrLocation")}];
  v30 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest nlLocation](self, "nlLocation")}];
  siriInputLocale = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self siriInputLocale];
  subDomain = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self subDomain];
  v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest responseCategory](self, "responseCategory")}];
  v27 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest experimentAllocationStatus](self, "experimentAllocationStatus")}];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest isTriggered](self, "isTriggered")}];
  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest isFirstTriggerOrAfterFirstTrigger](self, "isFirstTriggerOrAfterFirstTrigger")}];
  codePathIdUUID = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self codePathIdUUID];
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest totalTurnCount](self, "totalTurnCount")}];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest validTurnCount](self, "validTurnCount")}];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest siriTasksStarted](self, "siriTasksStarted")}];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest siriTasksCompleted](self, "siriTasksCompleted")}];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest flowTasksStarted](self, "flowTasksStarted")}];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest flowTasksCompleted](self, "flowTasksCompleted")}];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest reliabilityRequestCount](self, "reliabilityRequestCount")}];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest reliabilityTurnCount](self, "reliabilityTurnCount")}];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest clientErrorCount](self, "clientErrorCount")}];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest undesiredResponseCount](self, "undesiredResponseCount")}];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest fatalResponseCount](self, "fatalResponseCount")}];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest failureResponseCount](self, "failureResponseCount")}];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest siriUnavailableResponseCount](self, "siriUnavailableResponseCount")}];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest usdxSessionCount](self, "usdxSessionCount")}];
  tuples = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self tuples];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest isIntelligenceEngineRequest](self, "isIntelligenceEngineRequest")}];
  intelligenceEngineRouting = [(BMSiriOnDeviceDigestExperimentMetricsExperimentDigest *)self intelligenceEngineRouting];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest invocationSource](self, "invocationSource")}];
  v18 = [v17 initWithFormat:@"BMSiriOnDeviceDigestExperimentMetricsExperimentDigest with systemBuild: %@, dataSharingOptInStatus: %@, viewInterface: %@, audioInterfaceVendorId: %@, audioInterfaceProductId: %@, asrLocation: %@, nlLocation: %@, siriInputLocale: %@, subDomain: %@, responseCategory: %@, experimentAllocationStatus: %@, isTriggered: %@, isFirstTriggerOrAfterFirstTrigger: %@, codePathIdUUID: %@, totalTurnCount: %@, validTurnCount: %@, siriTasksStarted: %@, siriTasksCompleted: %@, flowTasksStarted: %@, flowTasksCompleted: %@, reliabilityRequestCount: %@, reliabilityTurnCount: %@, clientErrorCount: %@, undesiredResponseCount: %@, fatalResponseCount: %@, failureResponseCount: %@, siriUnavailableResponseCount: %@, usdxSessionCount: %@, tuples: %@, isIntelligenceEngineRequest: %@, intelligenceEngineRouting: %@, invocationSource: %@", systemBuild, v35, v36, audioInterfaceVendorId, audioInterfaceProductId, v32, v30, siriInputLocale, subDomain, v29, v27, v25, v26, codePathIdUUID, v24, v15, v23, v14, v22, v21, v20, v19, v13, v12, v11, v10, v3, v4, tuples, v6, intelligenceEngineRouting, v8];

  return v18;
}

- (BMSiriOnDeviceDigestExperimentMetricsExperimentDigest)initWithSystemBuild:(id)build dataSharingOptInStatus:(id)status viewInterface:(id)interface audioInterfaceVendorId:(id)id audioInterfaceProductId:(id)productId asrLocation:(id)location nlLocation:(id)nlLocation siriInputLocale:(id)self0 subDomain:(id)self1 responseCategory:(id)self2 experimentAllocationStatus:(id)self3 isTriggered:(id)self4 isFirstTriggerOrAfterFirstTrigger:(id)self5 codePathIdUUID:(id)self6 totalTurnCount:(id)self7 validTurnCount:(id)self8 siriTasksStarted:(id)self9 siriTasksCompleted:(id)completed flowTasksStarted:(id)tasksStarted flowTasksCompleted:(id)tasksCompleted reliabilityRequestCount:(id)requestCount reliabilityTurnCount:(id)reliabilityTurnCount clientErrorCount:(id)errorCount undesiredResponseCount:(id)responseCount fatalResponseCount:(id)fatalResponseCount failureResponseCount:(id)failureResponseCount siriUnavailableResponseCount:(id)unavailableResponseCount usdxSessionCount:(id)build0 tuples:(id)build1 isIntelligenceEngineRequest:(id)build2 intelligenceEngineRouting:(id)build3 invocationSource:(id)build4
{
  buildCopy = build;
  statusCopy = status;
  interfaceCopy = interface;
  idCopy = id;
  idCopy2 = id;
  productIdCopy = productId;
  productIdCopy2 = productId;
  locationCopy = location;
  nlLocationCopy = nlLocation;
  localeCopy = locale;
  domainCopy = domain;
  categoryCopy = category;
  allocationStatusCopy = allocationStatus;
  triggeredCopy = triggered;
  triggerCopy = trigger;
  dCopy = d;
  countCopy = count;
  turnCountCopy = turnCount;
  startedCopy = started;
  completedCopy = completed;
  tasksStartedCopy = tasksStarted;
  tasksCompletedCopy = tasksCompleted;
  requestCountCopy = requestCount;
  reliabilityTurnCountCopy = reliabilityTurnCount;
  errorCountCopy = errorCount;
  responseCountCopy = responseCount;
  fatalResponseCountCopy = fatalResponseCount;
  failureResponseCountCopy = failureResponseCount;
  unavailableResponseCountCopy = unavailableResponseCount;
  sessionCountCopy = sessionCount;
  tuplesCopy = tuples;
  requestCopy = request;
  routingCopy = routing;
  sourceCopy = source;
  v98.receiver = self;
  v98.super_class = BMSiriOnDeviceDigestExperimentMetricsExperimentDigest;
  v47 = [(BMEventBase *)&v98 init];
  if (v47)
  {
    v47->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v47->_systemBuild, build);
    if (statusCopy)
    {
      v47->_hasDataSharingOptInStatus = 1;
      intValue = [statusCopy intValue];
    }

    else
    {
      v47->_hasDataSharingOptInStatus = 0;
      intValue = -1;
    }

    v47->_dataSharingOptInStatus = intValue;
    if (interfaceCopy)
    {
      v47->_hasViewInterface = 1;
      intValue2 = [interfaceCopy intValue];
    }

    else
    {
      v47->_hasViewInterface = 0;
      intValue2 = -1;
    }

    v47->_viewInterface = intValue2;
    objc_storeStrong(&v47->_audioInterfaceVendorId, idCopy);
    objc_storeStrong(&v47->_audioInterfaceProductId, productIdCopy);
    if (locationCopy)
    {
      v47->_hasAsrLocation = 1;
      intValue3 = [locationCopy intValue];
    }

    else
    {
      v47->_hasAsrLocation = 0;
      intValue3 = -1;
    }

    v47->_asrLocation = intValue3;
    if (nlLocationCopy)
    {
      v47->_hasNlLocation = 1;
      intValue4 = [nlLocationCopy intValue];
    }

    else
    {
      v47->_hasNlLocation = 0;
      intValue4 = -1;
    }

    v47->_nlLocation = intValue4;
    objc_storeStrong(&v47->_siriInputLocale, locale);
    objc_storeStrong(&v47->_subDomain, domain);
    if (categoryCopy)
    {
      v47->_hasResponseCategory = 1;
      intValue5 = [categoryCopy intValue];
    }

    else
    {
      v47->_hasResponseCategory = 0;
      intValue5 = -1;
    }

    v47->_responseCategory = intValue5;
    if (allocationStatusCopy)
    {
      v47->_hasExperimentAllocationStatus = 1;
      intValue6 = [allocationStatusCopy intValue];
    }

    else
    {
      v47->_hasExperimentAllocationStatus = 0;
      intValue6 = -1;
    }

    v47->_experimentAllocationStatus = intValue6;
    if (triggeredCopy)
    {
      v47->_hasIsTriggered = 1;
      v47->_isTriggered = [triggeredCopy BOOLValue];
    }

    else
    {
      v47->_hasIsTriggered = 0;
      v47->_isTriggered = 0;
    }

    if (triggerCopy)
    {
      v47->_hasIsFirstTriggerOrAfterFirstTrigger = 1;
      v47->_isFirstTriggerOrAfterFirstTrigger = [triggerCopy BOOLValue];
    }

    else
    {
      v47->_hasIsFirstTriggerOrAfterFirstTrigger = 0;
      v47->_isFirstTriggerOrAfterFirstTrigger = 0;
    }

    objc_storeStrong(&v47->_codePathIdUUID, d);
    if (countCopy)
    {
      v47->_hasTotalTurnCount = 1;
      unsignedIntValue = [countCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v47->_hasTotalTurnCount = 0;
    }

    v47->_totalTurnCount = unsignedIntValue;
    if (turnCountCopy)
    {
      v47->_hasValidTurnCount = 1;
      unsignedIntValue2 = [turnCountCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v47->_hasValidTurnCount = 0;
    }

    v47->_validTurnCount = unsignedIntValue2;
    if (startedCopy)
    {
      v47->_hasSiriTasksStarted = 1;
      unsignedIntValue3 = [startedCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue3 = 0;
      v47->_hasSiriTasksStarted = 0;
    }

    v47->_siriTasksStarted = unsignedIntValue3;
    if (completedCopy)
    {
      v47->_hasSiriTasksCompleted = 1;
      unsignedIntValue4 = [completedCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue4 = 0;
      v47->_hasSiriTasksCompleted = 0;
    }

    v47->_siriTasksCompleted = unsignedIntValue4;
    if (tasksStartedCopy)
    {
      v47->_hasFlowTasksStarted = 1;
      unsignedIntValue5 = [tasksStartedCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue5 = 0;
      v47->_hasFlowTasksStarted = 0;
    }

    v47->_flowTasksStarted = unsignedIntValue5;
    if (tasksCompletedCopy)
    {
      v47->_hasFlowTasksCompleted = 1;
      unsignedIntValue6 = [tasksCompletedCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue6 = 0;
      v47->_hasFlowTasksCompleted = 0;
    }

    v47->_flowTasksCompleted = unsignedIntValue6;
    if (requestCountCopy)
    {
      v47->_hasReliabilityRequestCount = 1;
      unsignedIntValue7 = [requestCountCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue7 = 0;
      v47->_hasReliabilityRequestCount = 0;
    }

    v47->_reliabilityRequestCount = unsignedIntValue7;
    if (reliabilityTurnCountCopy)
    {
      v47->_hasReliabilityTurnCount = 1;
      unsignedIntValue8 = [reliabilityTurnCountCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue8 = 0;
      v47->_hasReliabilityTurnCount = 0;
    }

    v47->_reliabilityTurnCount = unsignedIntValue8;
    unsignedIntValue9 = errorCountCopy;
    if (errorCountCopy)
    {
      v47->_hasClientErrorCount = 1;
      unsignedIntValue9 = [errorCountCopy unsignedIntValue];
    }

    else
    {
      v47->_hasClientErrorCount = 0;
    }

    v47->_clientErrorCount = unsignedIntValue9;
    unsignedIntValue10 = responseCountCopy;
    if (responseCountCopy)
    {
      v47->_hasUndesiredResponseCount = 1;
      unsignedIntValue10 = [responseCountCopy unsignedIntValue];
    }

    else
    {
      v47->_hasUndesiredResponseCount = 0;
    }

    v47->_undesiredResponseCount = unsignedIntValue10;
    unsignedIntValue11 = fatalResponseCountCopy;
    if (fatalResponseCountCopy)
    {
      v47->_hasFatalResponseCount = 1;
      unsignedIntValue11 = [fatalResponseCountCopy unsignedIntValue];
    }

    else
    {
      v47->_hasFatalResponseCount = 0;
    }

    v47->_fatalResponseCount = unsignedIntValue11;
    unsignedIntValue12 = failureResponseCountCopy;
    if (failureResponseCountCopy)
    {
      v47->_hasFailureResponseCount = 1;
      unsignedIntValue12 = [failureResponseCountCopy unsignedIntValue];
    }

    else
    {
      v47->_hasFailureResponseCount = 0;
    }

    v47->_failureResponseCount = unsignedIntValue12;
    unsignedIntValue13 = unavailableResponseCountCopy;
    if (unavailableResponseCountCopy)
    {
      v47->_hasSiriUnavailableResponseCount = 1;
      unsignedIntValue13 = [unavailableResponseCountCopy unsignedIntValue];
    }

    else
    {
      v47->_hasSiriUnavailableResponseCount = 0;
    }

    v47->_siriUnavailableResponseCount = unsignedIntValue13;
    unsignedIntValue14 = sessionCountCopy;
    if (sessionCountCopy)
    {
      v47->_hasUsdxSessionCount = 1;
      unsignedIntValue14 = [sessionCountCopy unsignedIntValue];
    }

    else
    {
      v47->_hasUsdxSessionCount = 0;
    }

    v47->_usdxSessionCount = unsignedIntValue14;
    objc_storeStrong(&v47->_tuples, tuples);
    if (requestCopy)
    {
      v47->_hasIsIntelligenceEngineRequest = 1;
      v47->_isIntelligenceEngineRequest = [requestCopy BOOLValue];
    }

    else
    {
      v47->_hasIsIntelligenceEngineRequest = 0;
      v47->_isIntelligenceEngineRequest = 0;
    }

    objc_storeStrong(&v47->_intelligenceEngineRouting, routing);
    if (sourceCopy)
    {
      v47->_hasInvocationSource = 1;
      unsignedIntValue15 = [sourceCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue15 = 0;
      v47->_hasInvocationSource = 0;
    }

    v47->_invocationSource = unsignedIntValue15;
  }

  return v47;
}

+ (id)protoFields
{
  v36[32] = *MEMORY[0x1E69E9840];
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"systemBuild" number:1 type:13 subMessageClass:0];
  v36[0] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dataSharingOptInStatus" number:2 type:2 subMessageClass:0];
  v36[1] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"viewInterface" number:3 type:2 subMessageClass:0];
  v36[2] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"audioInterfaceVendorId" number:4 type:13 subMessageClass:0];
  v36[3] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"audioInterfaceProductId" number:5 type:13 subMessageClass:0];
  v36[4] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"asrLocation" number:6 type:2 subMessageClass:0];
  v36[5] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nlLocation" number:7 type:2 subMessageClass:0];
  v36[6] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriInputLocale" number:8 type:14 subMessageClass:objc_opt_class()];
  v36[7] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subDomain" number:9 type:13 subMessageClass:0];
  v36[8] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"responseCategory" number:10 type:2 subMessageClass:0];
  v36[9] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"experimentAllocationStatus" number:11 type:2 subMessageClass:0];
  v36[10] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isTriggered" number:12 type:12 subMessageClass:0];
  v36[11] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFirstTriggerOrAfterFirstTrigger" number:13 type:12 subMessageClass:0];
  v36[12] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"codePathIdUUID" number:14 type:13 subMessageClass:0];
  v36[13] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalTurnCount" number:15 type:4 subMessageClass:0];
  v36[14] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"validTurnCount" number:16 type:4 subMessageClass:0];
  v36[15] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriTasksStarted" number:17 type:4 subMessageClass:0];
  v36[16] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriTasksCompleted" number:18 type:4 subMessageClass:0];
  v36[17] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"flowTasksStarted" number:19 type:4 subMessageClass:0];
  v36[18] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"flowTasksCompleted" number:20 type:4 subMessageClass:0];
  v36[19] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reliabilityRequestCount" number:21 type:4 subMessageClass:0];
  v36[20] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reliabilityTurnCount" number:22 type:4 subMessageClass:0];
  v36[21] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientErrorCount" number:23 type:4 subMessageClass:0];
  v36[22] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"undesiredResponseCount" number:24 type:4 subMessageClass:0];
  v36[23] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fatalResponseCount" number:25 type:4 subMessageClass:0];
  v36[24] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"failureResponseCount" number:26 type:4 subMessageClass:0];
  v36[25] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriUnavailableResponseCount" number:27 type:4 subMessageClass:0];
  v36[26] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"usdxSessionCount" number:28 type:4 subMessageClass:0];
  v36[27] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tuples" number:29 type:14 subMessageClass:objc_opt_class()];
  v36[28] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isIntelligenceEngineRequest" number:30 type:12 subMessageClass:0];
  v36[29] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"intelligenceEngineRouting" number:31 type:4 subMessageClass:0];
  v36[30] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"invocationSource" number:32 type:4 subMessageClass:0];
  v36[31] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:32];

  return v11;
}

+ (id)columns
{
  v36[32] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"systemBuild" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dataSharingOptInStatus" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:2 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"viewInterface" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"audioInterfaceVendorId" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"audioInterfaceProductId" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"asrLocation" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nlLocation" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:2 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"siriInputLocale_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_445];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subDomain" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"responseCategory" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:2 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"experimentAllocationStatus" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:2 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isTriggered" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:12 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFirstTriggerOrAfterFirstTrigger" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"codePathIdUUID" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalTurnCount" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:4 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"validTurnCount" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:4 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"siriTasksStarted" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:4 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"siriTasksCompleted" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:4 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"flowTasksStarted" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:4 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"flowTasksCompleted" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:4 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reliabilityRequestCount" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:4 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reliabilityTurnCount" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:4 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientErrorCount" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"undesiredResponseCount" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fatalResponseCount" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:4 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"failureResponseCount" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:4 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"siriUnavailableResponseCount" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:4 convertedType:0];
  v11 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"usdxSessionCount" dataType:0 requestOnly:0 fieldNumber:28 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"tuples_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_447];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isIntelligenceEngineRequest" dataType:0 requestOnly:0 fieldNumber:30 protoDataType:12 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"intelligenceEngineRouting_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_449];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"invocationSource" dataType:0 requestOnly:0 fieldNumber:32 protoDataType:4 convertedType:0];
  v36[0] = v14;
  v36[1] = v35;
  v36[2] = v34;
  v36[3] = v33;
  v36[4] = v32;
  v36[5] = v31;
  v36[6] = v30;
  v36[7] = v29;
  v36[8] = v28;
  v36[9] = v27;
  v36[10] = v26;
  v36[11] = v25;
  v36[12] = v24;
  v36[13] = v23;
  v36[14] = v22;
  v36[15] = v21;
  v36[16] = v20;
  v36[17] = v19;
  v36[18] = v18;
  v36[19] = v17;
  v36[20] = v16;
  v36[21] = v15;
  v36[22] = v2;
  v36[23] = v3;
  v36[24] = v4;
  v36[25] = v13;
  v36[26] = v12;
  v36[27] = v11;
  v36[28] = v5;
  v36[29] = v6;
  v36[30] = v10;
  v36[31] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:32];

  return v9;
}

id __64__BMSiriOnDeviceDigestExperimentMetricsExperimentDigest_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _intelligenceEngineRoutingJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __64__BMSiriOnDeviceDigestExperimentMetricsExperimentDigest_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 tuples];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __64__BMSiriOnDeviceDigestExperimentMetricsExperimentDigest_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 siriInputLocale];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMSiriOnDeviceDigestExperimentMetricsExperimentDigest alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[11] = 0;
    }
  }

  return v4;
}

@end