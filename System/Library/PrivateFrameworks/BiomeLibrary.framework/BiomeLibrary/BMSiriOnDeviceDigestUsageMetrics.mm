@interface BMSiriOnDeviceDigestUsageMetrics
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriOnDeviceDigestUsageMetrics)initWithEventMetadata:(id)metadata deviceType:(id)type programCode:(id)code productId:(id)id systemBuild:(id)build dataSharingOptInStatus:(id)status viewInterface:(id)interface audioInterfaceVendorId:(id)self0 audioInterfaceProductId:(id)self1 asrLocation:(id)self2 nlLocation:(id)self3 siriInputLocale:(id)self4 dictationLocale:(id)self5 subDomain:(id)self6 totalTurnCount:(id)self7 validTurnCount:(id)self8 siriTasksStarted:(id)self9 siriTasksCompleted:(id)completed flowTasksStarted:(id)tasksStarted flowTasksCompleted:(id)tasksCompleted reliabilityRequestCount:(id)requestCount reliabilityTurnCount:(id)reliabilityTurnCount clientErrorCount:(id)errorCount undesiredResponseCount:(id)responseCount fatalResponseCount:(id)fatalResponseCount failureResponseCount:(id)failureResponseCount siriUnavailableResponseCount:(id)unavailableResponseCount asrTurnCount:(id)metadata0 siriResponseId:(id)metadata1 responseCategory:(id)metadata2 isIntelligenceEngineRequest:(id)metadata3 intelligenceEngineRouting:(id)metadata4 invocationSource:(id)metadata5;
- (BMSiriOnDeviceDigestUsageMetrics)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_intelligenceEngineRoutingJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriOnDeviceDigestUsageMetrics

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    eventMetadata = [(BMSiriOnDeviceDigestUsageMetrics *)self eventMetadata];
    eventMetadata2 = [v5 eventMetadata];
    v8 = eventMetadata2;
    if (eventMetadata == eventMetadata2)
    {
    }

    else
    {
      eventMetadata3 = [(BMSiriOnDeviceDigestUsageMetrics *)self eventMetadata];
      eventMetadata4 = [v5 eventMetadata];
      v11 = [eventMetadata3 isEqual:eventMetadata4];

      if (!v11)
      {
        goto LABEL_158;
      }
    }

    deviceType = [(BMSiriOnDeviceDigestUsageMetrics *)self deviceType];
    deviceType2 = [v5 deviceType];
    v15 = deviceType2;
    if (deviceType == deviceType2)
    {
    }

    else
    {
      deviceType3 = [(BMSiriOnDeviceDigestUsageMetrics *)self deviceType];
      deviceType4 = [v5 deviceType];
      v18 = [deviceType3 isEqual:deviceType4];

      if (!v18)
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasProgramCode](self, "hasProgramCode") || [v5 hasProgramCode])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasProgramCode])
      {
        goto LABEL_158;
      }

      if (![v5 hasProgramCode])
      {
        goto LABEL_158;
      }

      programCode = [(BMSiriOnDeviceDigestUsageMetrics *)self programCode];
      if (programCode != [v5 programCode])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasProductId](self, "hasProductId") || [v5 hasProductId])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasProductId])
      {
        goto LABEL_158;
      }

      if (![v5 hasProductId])
      {
        goto LABEL_158;
      }

      productId = [(BMSiriOnDeviceDigestUsageMetrics *)self productId];
      if (productId != [v5 productId])
      {
        goto LABEL_158;
      }
    }

    systemBuild = [(BMSiriOnDeviceDigestUsageMetrics *)self systemBuild];
    systemBuild2 = [v5 systemBuild];
    v23 = systemBuild2;
    if (systemBuild == systemBuild2)
    {
    }

    else
    {
      systemBuild3 = [(BMSiriOnDeviceDigestUsageMetrics *)self systemBuild];
      systemBuild4 = [v5 systemBuild];
      v26 = [systemBuild3 isEqual:systemBuild4];

      if (!v26)
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasDataSharingOptInStatus](self, "hasDataSharingOptInStatus") || [v5 hasDataSharingOptInStatus])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasDataSharingOptInStatus])
      {
        goto LABEL_158;
      }

      if (![v5 hasDataSharingOptInStatus])
      {
        goto LABEL_158;
      }

      dataSharingOptInStatus = [(BMSiriOnDeviceDigestUsageMetrics *)self dataSharingOptInStatus];
      if (dataSharingOptInStatus != [v5 dataSharingOptInStatus])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasViewInterface](self, "hasViewInterface") || [v5 hasViewInterface])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasViewInterface])
      {
        goto LABEL_158;
      }

      if (![v5 hasViewInterface])
      {
        goto LABEL_158;
      }

      viewInterface = [(BMSiriOnDeviceDigestUsageMetrics *)self viewInterface];
      if (viewInterface != [v5 viewInterface])
      {
        goto LABEL_158;
      }
    }

    audioInterfaceVendorId = [(BMSiriOnDeviceDigestUsageMetrics *)self audioInterfaceVendorId];
    audioInterfaceVendorId2 = [v5 audioInterfaceVendorId];
    v31 = audioInterfaceVendorId2;
    if (audioInterfaceVendorId == audioInterfaceVendorId2)
    {
    }

    else
    {
      audioInterfaceVendorId3 = [(BMSiriOnDeviceDigestUsageMetrics *)self audioInterfaceVendorId];
      audioInterfaceVendorId4 = [v5 audioInterfaceVendorId];
      v34 = [audioInterfaceVendorId3 isEqual:audioInterfaceVendorId4];

      if (!v34)
      {
        goto LABEL_158;
      }
    }

    audioInterfaceProductId = [(BMSiriOnDeviceDigestUsageMetrics *)self audioInterfaceProductId];
    audioInterfaceProductId2 = [v5 audioInterfaceProductId];
    v37 = audioInterfaceProductId2;
    if (audioInterfaceProductId == audioInterfaceProductId2)
    {
    }

    else
    {
      audioInterfaceProductId3 = [(BMSiriOnDeviceDigestUsageMetrics *)self audioInterfaceProductId];
      audioInterfaceProductId4 = [v5 audioInterfaceProductId];
      v40 = [audioInterfaceProductId3 isEqual:audioInterfaceProductId4];

      if (!v40)
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasAsrLocation](self, "hasAsrLocation") || [v5 hasAsrLocation])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasAsrLocation])
      {
        goto LABEL_158;
      }

      if (![v5 hasAsrLocation])
      {
        goto LABEL_158;
      }

      asrLocation = [(BMSiriOnDeviceDigestUsageMetrics *)self asrLocation];
      if (asrLocation != [v5 asrLocation])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasNlLocation](self, "hasNlLocation") || [v5 hasNlLocation])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasNlLocation])
      {
        goto LABEL_158;
      }

      if (![v5 hasNlLocation])
      {
        goto LABEL_158;
      }

      nlLocation = [(BMSiriOnDeviceDigestUsageMetrics *)self nlLocation];
      if (nlLocation != [v5 nlLocation])
      {
        goto LABEL_158;
      }
    }

    siriInputLocale = [(BMSiriOnDeviceDigestUsageMetrics *)self siriInputLocale];
    siriInputLocale2 = [v5 siriInputLocale];
    v45 = siriInputLocale2;
    if (siriInputLocale == siriInputLocale2)
    {
    }

    else
    {
      siriInputLocale3 = [(BMSiriOnDeviceDigestUsageMetrics *)self siriInputLocale];
      siriInputLocale4 = [v5 siriInputLocale];
      v48 = [siriInputLocale3 isEqual:siriInputLocale4];

      if (!v48)
      {
        goto LABEL_158;
      }
    }

    dictationLocale = [(BMSiriOnDeviceDigestUsageMetrics *)self dictationLocale];
    dictationLocale2 = [v5 dictationLocale];
    v51 = dictationLocale2;
    if (dictationLocale == dictationLocale2)
    {
    }

    else
    {
      dictationLocale3 = [(BMSiriOnDeviceDigestUsageMetrics *)self dictationLocale];
      dictationLocale4 = [v5 dictationLocale];
      v54 = [dictationLocale3 isEqual:dictationLocale4];

      if (!v54)
      {
        goto LABEL_158;
      }
    }

    subDomain = [(BMSiriOnDeviceDigestUsageMetrics *)self subDomain];
    subDomain2 = [v5 subDomain];
    v57 = subDomain2;
    if (subDomain == subDomain2)
    {
    }

    else
    {
      subDomain3 = [(BMSiriOnDeviceDigestUsageMetrics *)self subDomain];
      subDomain4 = [v5 subDomain];
      v60 = [subDomain3 isEqual:subDomain4];

      if (!v60)
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasTotalTurnCount](self, "hasTotalTurnCount") || [v5 hasTotalTurnCount])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasTotalTurnCount])
      {
        goto LABEL_158;
      }

      if (![v5 hasTotalTurnCount])
      {
        goto LABEL_158;
      }

      totalTurnCount = [(BMSiriOnDeviceDigestUsageMetrics *)self totalTurnCount];
      if (totalTurnCount != [v5 totalTurnCount])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasValidTurnCount](self, "hasValidTurnCount") || [v5 hasValidTurnCount])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasValidTurnCount])
      {
        goto LABEL_158;
      }

      if (![v5 hasValidTurnCount])
      {
        goto LABEL_158;
      }

      validTurnCount = [(BMSiriOnDeviceDigestUsageMetrics *)self validTurnCount];
      if (validTurnCount != [v5 validTurnCount])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasSiriTasksStarted](self, "hasSiriTasksStarted") || [v5 hasSiriTasksStarted])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasSiriTasksStarted])
      {
        goto LABEL_158;
      }

      if (![v5 hasSiriTasksStarted])
      {
        goto LABEL_158;
      }

      siriTasksStarted = [(BMSiriOnDeviceDigestUsageMetrics *)self siriTasksStarted];
      if (siriTasksStarted != [v5 siriTasksStarted])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasSiriTasksCompleted](self, "hasSiriTasksCompleted") || [v5 hasSiriTasksCompleted])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasSiriTasksCompleted])
      {
        goto LABEL_158;
      }

      if (![v5 hasSiriTasksCompleted])
      {
        goto LABEL_158;
      }

      siriTasksCompleted = [(BMSiriOnDeviceDigestUsageMetrics *)self siriTasksCompleted];
      if (siriTasksCompleted != [v5 siriTasksCompleted])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasFlowTasksStarted](self, "hasFlowTasksStarted") || [v5 hasFlowTasksStarted])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasFlowTasksStarted])
      {
        goto LABEL_158;
      }

      if (![v5 hasFlowTasksStarted])
      {
        goto LABEL_158;
      }

      flowTasksStarted = [(BMSiriOnDeviceDigestUsageMetrics *)self flowTasksStarted];
      if (flowTasksStarted != [v5 flowTasksStarted])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasFlowTasksCompleted](self, "hasFlowTasksCompleted") || [v5 hasFlowTasksCompleted])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasFlowTasksCompleted])
      {
        goto LABEL_158;
      }

      if (![v5 hasFlowTasksCompleted])
      {
        goto LABEL_158;
      }

      flowTasksCompleted = [(BMSiriOnDeviceDigestUsageMetrics *)self flowTasksCompleted];
      if (flowTasksCompleted != [v5 flowTasksCompleted])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasReliabilityRequestCount](self, "hasReliabilityRequestCount") || [v5 hasReliabilityRequestCount])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasReliabilityRequestCount])
      {
        goto LABEL_158;
      }

      if (![v5 hasReliabilityRequestCount])
      {
        goto LABEL_158;
      }

      reliabilityRequestCount = [(BMSiriOnDeviceDigestUsageMetrics *)self reliabilityRequestCount];
      if (reliabilityRequestCount != [v5 reliabilityRequestCount])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasReliabilityTurnCount](self, "hasReliabilityTurnCount") || [v5 hasReliabilityTurnCount])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasReliabilityTurnCount])
      {
        goto LABEL_158;
      }

      if (![v5 hasReliabilityTurnCount])
      {
        goto LABEL_158;
      }

      reliabilityTurnCount = [(BMSiriOnDeviceDigestUsageMetrics *)self reliabilityTurnCount];
      if (reliabilityTurnCount != [v5 reliabilityTurnCount])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasClientErrorCount](self, "hasClientErrorCount") || [v5 hasClientErrorCount])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasClientErrorCount])
      {
        goto LABEL_158;
      }

      if (![v5 hasClientErrorCount])
      {
        goto LABEL_158;
      }

      clientErrorCount = [(BMSiriOnDeviceDigestUsageMetrics *)self clientErrorCount];
      if (clientErrorCount != [v5 clientErrorCount])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasUndesiredResponseCount](self, "hasUndesiredResponseCount") || [v5 hasUndesiredResponseCount])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasUndesiredResponseCount])
      {
        goto LABEL_158;
      }

      if (![v5 hasUndesiredResponseCount])
      {
        goto LABEL_158;
      }

      undesiredResponseCount = [(BMSiriOnDeviceDigestUsageMetrics *)self undesiredResponseCount];
      if (undesiredResponseCount != [v5 undesiredResponseCount])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasFatalResponseCount](self, "hasFatalResponseCount") || [v5 hasFatalResponseCount])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasFatalResponseCount])
      {
        goto LABEL_158;
      }

      if (![v5 hasFatalResponseCount])
      {
        goto LABEL_158;
      }

      fatalResponseCount = [(BMSiriOnDeviceDigestUsageMetrics *)self fatalResponseCount];
      if (fatalResponseCount != [v5 fatalResponseCount])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasFailureResponseCount](self, "hasFailureResponseCount") || [v5 hasFailureResponseCount])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasFailureResponseCount])
      {
        goto LABEL_158;
      }

      if (![v5 hasFailureResponseCount])
      {
        goto LABEL_158;
      }

      failureResponseCount = [(BMSiriOnDeviceDigestUsageMetrics *)self failureResponseCount];
      if (failureResponseCount != [v5 failureResponseCount])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasSiriUnavailableResponseCount](self, "hasSiriUnavailableResponseCount") || [v5 hasSiriUnavailableResponseCount])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasSiriUnavailableResponseCount])
      {
        goto LABEL_158;
      }

      if (![v5 hasSiriUnavailableResponseCount])
      {
        goto LABEL_158;
      }

      siriUnavailableResponseCount = [(BMSiriOnDeviceDigestUsageMetrics *)self siriUnavailableResponseCount];
      if (siriUnavailableResponseCount != [v5 siriUnavailableResponseCount])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasAsrTurnCount](self, "hasAsrTurnCount") || [v5 hasAsrTurnCount])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasAsrTurnCount])
      {
        goto LABEL_158;
      }

      if (![v5 hasAsrTurnCount])
      {
        goto LABEL_158;
      }

      asrTurnCount = [(BMSiriOnDeviceDigestUsageMetrics *)self asrTurnCount];
      if (asrTurnCount != [v5 asrTurnCount])
      {
        goto LABEL_158;
      }
    }

    siriResponseId = [(BMSiriOnDeviceDigestUsageMetrics *)self siriResponseId];
    siriResponseId2 = [v5 siriResponseId];
    v77 = siriResponseId2;
    if (siriResponseId == siriResponseId2)
    {
    }

    else
    {
      siriResponseId3 = [(BMSiriOnDeviceDigestUsageMetrics *)self siriResponseId];
      siriResponseId4 = [v5 siriResponseId];
      v80 = [siriResponseId3 isEqual:siriResponseId4];

      if (!v80)
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasResponseCategory](self, "hasResponseCategory") || [v5 hasResponseCategory])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasResponseCategory])
      {
        goto LABEL_158;
      }

      if (![v5 hasResponseCategory])
      {
        goto LABEL_158;
      }

      responseCategory = [(BMSiriOnDeviceDigestUsageMetrics *)self responseCategory];
      if (responseCategory != [v5 responseCategory])
      {
        goto LABEL_158;
      }
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasIsIntelligenceEngineRequest](self, "hasIsIntelligenceEngineRequest") || [v5 hasIsIntelligenceEngineRequest])
    {
      if (![(BMSiriOnDeviceDigestUsageMetrics *)self hasIsIntelligenceEngineRequest])
      {
        goto LABEL_158;
      }

      if (![v5 hasIsIntelligenceEngineRequest])
      {
        goto LABEL_158;
      }

      isIntelligenceEngineRequest = [(BMSiriOnDeviceDigestUsageMetrics *)self isIntelligenceEngineRequest];
      if (isIntelligenceEngineRequest != [v5 isIntelligenceEngineRequest])
      {
        goto LABEL_158;
      }
    }

    intelligenceEngineRouting = [(BMSiriOnDeviceDigestUsageMetrics *)self intelligenceEngineRouting];
    intelligenceEngineRouting2 = [v5 intelligenceEngineRouting];
    v85 = intelligenceEngineRouting2;
    if (intelligenceEngineRouting == intelligenceEngineRouting2)
    {
    }

    else
    {
      intelligenceEngineRouting3 = [(BMSiriOnDeviceDigestUsageMetrics *)self intelligenceEngineRouting];
      intelligenceEngineRouting4 = [v5 intelligenceEngineRouting];
      v88 = [intelligenceEngineRouting3 isEqual:intelligenceEngineRouting4];

      if (!v88)
      {
        goto LABEL_158;
      }
    }

    if (!-[BMSiriOnDeviceDigestUsageMetrics hasInvocationSource](self, "hasInvocationSource") && ![v5 hasInvocationSource])
    {
      v12 = 1;
      goto LABEL_159;
    }

    if (-[BMSiriOnDeviceDigestUsageMetrics hasInvocationSource](self, "hasInvocationSource") && [v5 hasInvocationSource])
    {
      invocationSource = [(BMSiriOnDeviceDigestUsageMetrics *)self invocationSource];
      v12 = invocationSource == [v5 invocationSource];
LABEL_159:

      goto LABEL_160;
    }

LABEL_158:
    v12 = 0;
    goto LABEL_159;
  }

  v12 = 0;
LABEL_160:

  return v12;
}

- (id)jsonDictionary
{
  v110[33] = *MEMORY[0x1E69E9840];
  eventMetadata = [(BMSiriOnDeviceDigestUsageMetrics *)self eventMetadata];
  jsonDictionary = [eventMetadata jsonDictionary];

  deviceType = [(BMSiriOnDeviceDigestUsageMetrics *)self deviceType];
  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasProgramCode])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics programCode](self, "programCode")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasProductId])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics productId](self, "productId")}];
  }

  else
  {
    v7 = 0;
  }

  systemBuild = [(BMSiriOnDeviceDigestUsageMetrics *)self systemBuild];
  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasDataSharingOptInStatus])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics dataSharingOptInStatus](self, "dataSharingOptInStatus")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasViewInterface])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics viewInterface](self, "viewInterface")}];
  }

  else
  {
    v10 = 0;
  }

  audioInterfaceVendorId = [(BMSiriOnDeviceDigestUsageMetrics *)self audioInterfaceVendorId];
  audioInterfaceProductId = [(BMSiriOnDeviceDigestUsageMetrics *)self audioInterfaceProductId];
  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasAsrLocation])
  {
    v105 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics asrLocation](self, "asrLocation")}];
  }

  else
  {
    v105 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasNlLocation])
  {
    v104 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics nlLocation](self, "nlLocation")}];
  }

  else
  {
    v104 = 0;
  }

  siriInputLocale = [(BMSiriOnDeviceDigestUsageMetrics *)self siriInputLocale];
  jsonDictionary2 = [siriInputLocale jsonDictionary];

  dictationLocale = [(BMSiriOnDeviceDigestUsageMetrics *)self dictationLocale];
  jsonDictionary3 = [dictationLocale jsonDictionary];

  subDomain = [(BMSiriOnDeviceDigestUsageMetrics *)self subDomain];
  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasTotalTurnCount])
  {
    v100 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics totalTurnCount](self, "totalTurnCount")}];
  }

  else
  {
    v100 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasValidTurnCount])
  {
    v99 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics validTurnCount](self, "validTurnCount")}];
  }

  else
  {
    v99 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasSiriTasksStarted])
  {
    v98 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics siriTasksStarted](self, "siriTasksStarted")}];
  }

  else
  {
    v98 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasSiriTasksCompleted])
  {
    v97 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics siriTasksCompleted](self, "siriTasksCompleted")}];
  }

  else
  {
    v97 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasFlowTasksStarted])
  {
    v96 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics flowTasksStarted](self, "flowTasksStarted")}];
  }

  else
  {
    v96 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasFlowTasksCompleted])
  {
    v95 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics flowTasksCompleted](self, "flowTasksCompleted")}];
  }

  else
  {
    v95 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasReliabilityRequestCount])
  {
    v94 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics reliabilityRequestCount](self, "reliabilityRequestCount")}];
  }

  else
  {
    v94 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasReliabilityTurnCount])
  {
    v93 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics reliabilityTurnCount](self, "reliabilityTurnCount")}];
  }

  else
  {
    v93 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasClientErrorCount])
  {
    v92 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics clientErrorCount](self, "clientErrorCount")}];
  }

  else
  {
    v92 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasUndesiredResponseCount])
  {
    v91 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics undesiredResponseCount](self, "undesiredResponseCount")}];
  }

  else
  {
    v91 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasFatalResponseCount])
  {
    v90 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics fatalResponseCount](self, "fatalResponseCount")}];
  }

  else
  {
    v90 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasFailureResponseCount])
  {
    v89 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics failureResponseCount](self, "failureResponseCount")}];
  }

  else
  {
    v89 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasSiriUnavailableResponseCount])
  {
    v88 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics siriUnavailableResponseCount](self, "siriUnavailableResponseCount")}];
  }

  else
  {
    v88 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasAsrTurnCount])
  {
    v87 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics asrTurnCount](self, "asrTurnCount")}];
  }

  else
  {
    v87 = 0;
  }

  siriResponseId = [(BMSiriOnDeviceDigestUsageMetrics *)self siriResponseId];
  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasResponseCategory])
  {
    v85 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics responseCategory](self, "responseCategory")}];
  }

  else
  {
    v85 = 0;
  }

  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasIsIntelligenceEngineRequest])
  {
    v84 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriOnDeviceDigestUsageMetrics isIntelligenceEngineRequest](self, "isIntelligenceEngineRequest")}];
  }

  else
  {
    v84 = 0;
  }

  _intelligenceEngineRoutingJSONArray = [(BMSiriOnDeviceDigestUsageMetrics *)self _intelligenceEngineRoutingJSONArray];
  if ([(BMSiriOnDeviceDigestUsageMetrics *)self hasInvocationSource])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics invocationSource](self, "invocationSource")}];
  }

  else
  {
    v13 = 0;
  }

  v109[0] = @"eventMetadata";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v75 = null;
  v110[0] = null;
  v109[1] = @"deviceType";
  null2 = deviceType;
  if (!deviceType)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = null2;
  v110[1] = null2;
  v109[2] = @"programCode";
  null3 = v6;
  if (!v6)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v73 = null3;
  v110[2] = null3;
  v109[3] = @"productId";
  null4 = v7;
  if (!v7)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v72 = null4;
  v110[3] = null4;
  v109[4] = @"systemBuild";
  null5 = systemBuild;
  if (!systemBuild)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v71 = null5;
  v110[4] = null5;
  v109[5] = @"dataSharingOptInStatus";
  null6 = v9;
  if (!v9)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v70 = null6;
  v110[5] = null6;
  v109[6] = @"viewInterface";
  null7 = v10;
  if (!v10)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = null7;
  v110[6] = null7;
  v109[7] = @"audioInterfaceVendorId";
  null8 = audioInterfaceVendorId;
  if (!audioInterfaceVendorId)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v110[7] = null8;
  v109[8] = @"audioInterfaceProductId";
  null9 = audioInterfaceProductId;
  if (!audioInterfaceProductId)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v110[8] = null9;
  v109[9] = @"asrLocation";
  null10 = v105;
  if (!v105)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v78 = null10;
  v110[9] = null10;
  v109[10] = @"nlLocation";
  null11 = v104;
  if (!v104)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v77 = null11;
  v110[10] = null11;
  v109[11] = @"siriInputLocale";
  null12 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v108 = null12;
  v110[11] = null12;
  v109[12] = @"dictationLocale";
  null13 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = null13;
  v110[12] = null13;
  v109[13] = @"subDomain";
  null14 = subDomain;
  if (!subDomain)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = null14;
  v110[13] = null14;
  v109[14] = @"totalTurnCount";
  null15 = v100;
  if (!v100)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = null15;
  v110[14] = null15;
  v109[15] = @"validTurnCount";
  null16 = v99;
  if (!v99)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = null16;
  v110[15] = null16;
  v109[16] = @"siriTasksStarted";
  null17 = v98;
  if (!v98)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = null17;
  v110[16] = null17;
  v109[17] = @"siriTasksCompleted";
  null18 = v97;
  if (!v97)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = null18;
  v110[17] = null18;
  v109[18] = @"flowTasksStarted";
  null19 = v96;
  if (!v96)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = null19;
  v110[18] = null19;
  v109[19] = @"flowTasksCompleted";
  null20 = v95;
  if (!v95)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = null20;
  v110[19] = null20;
  v109[20] = @"reliabilityRequestCount";
  null21 = v94;
  if (!v94)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = null21;
  v110[20] = null21;
  v109[21] = @"reliabilityTurnCount";
  null22 = v93;
  if (!v93)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = null22;
  v110[21] = null22;
  v109[22] = @"clientErrorCount";
  null23 = v92;
  if (!v92)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = null23;
  v110[22] = null23;
  v109[23] = @"undesiredResponseCount";
  null24 = v91;
  if (!v91)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v81 = jsonDictionary;
  v56 = null24;
  v110[23] = null24;
  v109[24] = @"fatalResponseCount";
  null25 = v90;
  if (!v90)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = null25;
  v110[24] = null25;
  v109[25] = @"failureResponseCount";
  null26 = v89;
  if (!v89)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v79 = v10;
  v54 = null26;
  v110[25] = null26;
  v109[26] = @"siriUnavailableResponseCount";
  null27 = v88;
  if (!v88)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v80 = deviceType;
  v53 = null27;
  v110[26] = null27;
  v109[27] = @"asrTurnCount";
  null28 = v87;
  if (!v87)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = null8;
  v51 = null28;
  v110[27] = null28;
  v109[28] = @"siriResponseId";
  null29 = siriResponseId;
  if (!siriResponseId)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v82 = v13;
  v110[28] = null29;
  v109[29] = @"responseCategory";
  null30 = v85;
  if (!v85)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = systemBuild;
  v110[29] = null30;
  v109[30] = @"isIntelligenceEngineRequest";
  null31 = v84;
  if (!v84)
  {
    null31 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = null9;
  v110[30] = null31;
  v109[31] = @"intelligenceEngineRouting";
  null32 = _intelligenceEngineRoutingJSONArray;
  if (!_intelligenceEngineRoutingJSONArray)
  {
    null32 = [MEMORY[0x1E695DFB0] null];
  }

  v110[31] = null32;
  v109[32] = @"invocationSource";
  null33 = v82;
  if (!v82)
  {
    null33 = [MEMORY[0x1E695DFB0] null];
  }

  v110[32] = null33;
  v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:{33, v51}];
  if (!v82)
  {
  }

  v49 = v108;
  if (!_intelligenceEngineRoutingJSONArray)
  {

    v49 = v108;
  }

  if (!v84)
  {

    v49 = v108;
  }

  if (!v85)
  {

    v49 = v108;
  }

  if (!siriResponseId)
  {

    v49 = v108;
  }

  if (!v87)
  {

    v49 = v108;
  }

  if (!v88)
  {

    v49 = v108;
  }

  if (!v89)
  {

    v49 = v108;
  }

  if (!v90)
  {

    v49 = v108;
  }

  if (!v91)
  {

    v49 = v108;
  }

  if (!v92)
  {

    v49 = v108;
  }

  if (!v93)
  {

    v49 = v108;
  }

  if (!v94)
  {

    v49 = v108;
  }

  if (!v95)
  {

    v49 = v108;
  }

  if (!v96)
  {

    v49 = v108;
  }

  if (!v97)
  {

    v49 = v108;
  }

  if (!v98)
  {

    v49 = v108;
  }

  if (!v99)
  {

    v49 = v108;
  }

  if (!v100)
  {

    v49 = v108;
  }

  if (!subDomain)
  {

    v49 = v108;
  }

  if (!jsonDictionary3)
  {

    v49 = v108;
  }

  if (!jsonDictionary2)
  {
  }

  if (!v104)
  {
  }

  if (!v105)
  {
  }

  if (!audioInterfaceProductId)
  {
  }

  if (audioInterfaceVendorId)
  {
    if (v79)
    {
      goto LABEL_188;
    }
  }

  else
  {

    if (v79)
    {
LABEL_188:
      if (v9)
      {
        goto LABEL_189;
      }

      goto LABEL_199;
    }
  }

  if (v9)
  {
LABEL_189:
    if (v44)
    {
      goto LABEL_190;
    }

    goto LABEL_200;
  }

LABEL_199:

  if (v44)
  {
LABEL_190:
    if (v7)
    {
      goto LABEL_191;
    }

    goto LABEL_201;
  }

LABEL_200:

  if (v7)
  {
LABEL_191:
    if (v6)
    {
      goto LABEL_192;
    }

    goto LABEL_202;
  }

LABEL_201:

  if (v6)
  {
LABEL_192:
    if (v80)
    {
      goto LABEL_193;
    }

LABEL_203:

    if (v81)
    {
      goto LABEL_194;
    }

    goto LABEL_204;
  }

LABEL_202:

  if (!v80)
  {
    goto LABEL_203;
  }

LABEL_193:
  if (v81)
  {
    goto LABEL_194;
  }

LABEL_204:

LABEL_194:

  return v76;
}

- (id)_intelligenceEngineRoutingJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  intelligenceEngineRouting = [(BMSiriOnDeviceDigestUsageMetrics *)self intelligenceEngineRouting];
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

- (BMSiriOnDeviceDigestUsageMetrics)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v395[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v317 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
  if (v317 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v64 = objc_alloc(MEMORY[0x1E696ABC0]);
        v65 = *MEMORY[0x1E698F240];
        v394 = *MEMORY[0x1E696A578];
        v316 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"eventMetadata"];
        v395[0] = v316;
        v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v395 forKeys:&v394 count:1];
        v67 = v64;
        v8 = v66;
        v63 = 0;
        *error = [v67 initWithDomain:v65 code:2 userInfo:v66];
        goto LABEL_338;
      }

      v63 = 0;
      goto LABEL_339;
    }

    v8 = v317;
    v324 = 0;
    v316 = [[BMSiriOnDeviceDigestUsageMetricsEventMetadata alloc] initWithJSONDictionary:v8 error:&v324];
    v62 = v324;
    if (v62)
    {
      if (error)
      {
        v62 = v62;
        *error = v62;
      }

      v63 = 0;
      goto LABEL_338;
    }
  }

  else
  {
    v316 = 0;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v68 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v70 = *MEMORY[0x1E698F240];
        v392 = *MEMORY[0x1E696A578];
        v315 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceType"];
        v393 = v315;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v393 forKeys:&v392 count:1];
        v71 = [v68 initWithDomain:v70 code:2 userInfo:v9];
        v8 = 0;
        v63 = 0;
        *errorCopy = v71;
        goto LABEL_336;
      }

      v8 = 0;
      v63 = 0;
      goto LABEL_337;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"programCode"];
  selfCopy = self;
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v72 = v7;
        v73 = v8;
        v74 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v76 = *MEMORY[0x1E698F240];
        v390 = *MEMORY[0x1E696A578];
        error = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"programCode"];
        errorCopy3 = error;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy3 forKeys:&v390 count:1];
        v77 = v74;
        v8 = v73;
        v7 = v72;
        v315 = 0;
        v63 = 0;
        *errorCopy2 = [v77 initWithDomain:v76 code:2 userInfo:v10];
        goto LABEL_335;
      }

      v315 = 0;
      v63 = 0;
      goto LABEL_336;
    }

    v315 = v9;
  }

  else
  {
    v315 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"productId"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v295 = dictionaryCopy;
        v80 = v7;
        v81 = v9;
        v82 = v8;
        v83 = objc_alloc(MEMORY[0x1E696ABC0]);
        v84 = *MEMORY[0x1E698F240];
        v388 = *MEMORY[0x1E696A578];
        errorCopy4 = error;
        v313 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"productId"];
        v389 = v313;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v389 forKeys:&v388 count:1];
        v86 = v83;
        v8 = v82;
        v9 = v81;
        v7 = v80;
        dictionaryCopy = v295;
        error = 0;
        v63 = 0;
        *errorCopy4 = [v86 initWithDomain:v84 code:2 userInfo:v11];
        goto LABEL_334;
      }

      v63 = 0;
      goto LABEL_335;
    }

    v310 = v10;
  }

  else
  {
    v310 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"systemBuild"];
  errorCopy5 = error;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v313 = 0;
        v63 = 0;
        error = v310;
        goto LABEL_334;
      }

      v296 = dictionaryCopy;
      v87 = objc_alloc(MEMORY[0x1E696ABC0]);
      v88 = *MEMORY[0x1E698F240];
      v386 = *MEMORY[0x1E696A578];
      v309 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"systemBuild"];
      v387 = v309;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v387 forKeys:&v386 count:1];
      v89 = v87;
      dictionaryCopy = v296;
      v313 = 0;
      v63 = 0;
      *errorCopy5 = [v89 initWithDomain:v88 code:2 userInfo:v12];
      goto LABEL_160;
    }

    v313 = v11;
  }

  else
  {
    v313 = 0;
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"dataSharingOptInStatus"];
  v308 = v8;
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v309 = v12;
        goto LABEL_19;
      }

      if (error)
      {
        v90 = objc_alloc(MEMORY[0x1E696ABC0]);
        v91 = *MEMORY[0x1E698F240];
        v384 = *MEMORY[0x1E696A578];
        v307 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"dataSharingOptInStatus"];
        v385 = v307;
        v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v385 forKeys:&v384 count:1];
        v93 = v90;
        v13 = v92;
        v309 = 0;
        v63 = 0;
        *errorCopy5 = [v93 initWithDomain:v91 code:2 userInfo:v92];
        goto LABEL_166;
      }

      v309 = 0;
      v63 = 0;
LABEL_160:
      error = v310;
      goto LABEL_333;
    }
  }

  v309 = 0;
LABEL_19:
  v13 = [dictionaryCopy objectForKeyedSubscript:@"viewInterface"];
  v306 = v13;
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v307 = v13;
        goto LABEL_22;
      }

      if (error)
      {
        v94 = objc_alloc(MEMORY[0x1E696ABC0]);
        v95 = *MEMORY[0x1E698F240];
        v382 = *MEMORY[0x1E696A578];
        v304 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"viewInterface"];
        v383 = v304;
        v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v383 forKeys:&v382 count:1];
        v97 = v94;
        v13 = v306;
        v305 = v96;
        v307 = 0;
        v63 = 0;
        *errorCopy5 = [v97 initWithDomain:v95 code:2 userInfo:?];
        error = v310;
        goto LABEL_331;
      }

      v307 = 0;
      v63 = 0;
LABEL_166:
      error = v310;
      goto LABEL_332;
    }
  }

  v307 = 0;
LABEL_22:
  v14 = [dictionaryCopy objectForKeyedSubscript:@"audioInterfaceVendorId"];
  v305 = v14;
  if (v14 && (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v78 = v11;
    v79 = v10;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!errorCopy5)
      {
        v304 = 0;
        v63 = 0;
        error = v310;
        v11 = v78;
        v13 = v306;
        goto LABEL_331;
      }

      v297 = dictionaryCopy;
      v102 = objc_alloc(MEMORY[0x1E696ABC0]);
      v103 = *MEMORY[0x1E698F240];
      v380 = *MEMORY[0x1E696A578];
      v302 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"audioInterfaceVendorId"];
      v381 = v302;
      v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v381 forKeys:&v380 count:1];
      v105 = v102;
      dictionaryCopy = v297;
      v303 = v104;
      v304 = 0;
      v63 = 0;
      *errorCopy5 = [v105 initWithDomain:v103 code:2 userInfo:?];
      goto LABEL_175;
    }

    v304 = v15;
    v11 = v78;
    v13 = v306;
  }

  else
  {
    v304 = 0;
  }

  v16 = [dictionaryCopy objectForKeyedSubscript:@"audioInterfaceProductId"];
  v303 = v16;
  if (v16)
  {
    v17 = v16;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v78 = v11;
      v79 = v10;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v302 = v17;
        v11 = v78;
        v13 = v306;
        goto LABEL_28;
      }

      if (errorCopy5)
      {
        v298 = dictionaryCopy;
        v106 = objc_alloc(MEMORY[0x1E696ABC0]);
        v107 = *MEMORY[0x1E698F240];
        v378 = *MEMORY[0x1E696A578];
        v293 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"audioInterfaceProductId"];
        v379 = v293;
        v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v379 forKeys:&v378 count:1];
        v109 = v106;
        dictionaryCopy = v298;
        v294 = v108;
        v302 = 0;
        v63 = 0;
        *errorCopy5 = [v109 initWithDomain:v107 code:2 userInfo:?];
        error = v310;
        v11 = v78;
        v13 = v306;
        goto LABEL_329;
      }

      v302 = 0;
      v63 = 0;
LABEL_175:
      v10 = v79;
      error = v310;
      v11 = v78;
      v13 = v306;
      goto LABEL_330;
    }
  }

  v302 = 0;
LABEL_28:
  v18 = [dictionaryCopy objectForKeyedSubscript:@"asrLocation"];
  v294 = v18;
  if (v18 && (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!errorCopy5)
      {
        v293 = 0;
        v63 = 0;
        error = v310;
        goto LABEL_329;
      }

      v113 = objc_alloc(MEMORY[0x1E696ABC0]);
      v114 = *MEMORY[0x1E698F240];
      v376 = *MEMORY[0x1E696A578];
      v291 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"asrLocation"];
      v377 = v291;
      v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v377 forKeys:&v376 count:1];
      v116 = v113;
      v13 = v306;
      v292 = v115;
      v293 = 0;
      v63 = 0;
      *errorCopy5 = [v116 initWithDomain:v114 code:2 userInfo:?];
      goto LABEL_186;
    }

    v293 = v19;
  }

  else
  {
    v293 = 0;
  }

  v20 = [dictionaryCopy objectForKeyedSubscript:@"nlLocation"];
  v301 = v7;
  v290 = v9;
  v292 = v20;
  if (v20)
  {
    v21 = v20;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v291 = v21;
        goto LABEL_34;
      }

      if (errorCopy5)
      {
        v117 = objc_alloc(MEMORY[0x1E696ABC0]);
        v118 = *MEMORY[0x1E698F240];
        v374 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"nlLocation"];
        v375 = v22;
        v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v375 forKeys:&v374 count:1];
        v291 = 0;
        v63 = 0;
        *errorCopy5 = [v117 initWithDomain:v118 code:2 userInfo:v100];
        error = v310;
        goto LABEL_326;
      }

      v291 = 0;
      v63 = 0;
LABEL_186:
      error = v310;
      goto LABEL_328;
    }
  }

  v291 = 0;
LABEL_34:
  v22 = [dictionaryCopy objectForKeyedSubscript:@"siriInputLocale"];
  if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v98 = v22;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy5)
      {
        v299 = objc_alloc(MEMORY[0x1E696ABC0]);
        v119 = *MEMORY[0x1E698F240];
        v372 = *MEMORY[0x1E696A578];
        v120 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"siriInputLocale"];
        v373 = v120;
        v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v373 forKeys:&v372 count:1];
        v122 = v119;
        v100 = v120;
        *errorCopy5 = [v299 initWithDomain:v122 code:2 userInfo:v121];

        v63 = 0;
        v22 = v98;
        error = v310;
        goto LABEL_326;
      }

      v63 = 0;
      error = v310;
      goto LABEL_327;
    }

    v22 = v22;
    v99 = [BMSiriOnDeviceDigestUsageMetricsISOLocale alloc];
    v323 = 0;
    v100 = [(BMSiriOnDeviceDigestUsageMetricsISOLocale *)v99 initWithJSONDictionary:v22 error:&v323];
    v101 = v323;
    if (v101)
    {
      error = v310;
      if (errorCopy5)
      {
        v101 = v101;
        *errorCopy5 = v101;
      }

      v63 = 0;
      goto LABEL_326;
    }

    v287 = v100;

    v22 = v98;
  }

  else
  {
    v287 = 0;
  }

  v23 = [dictionaryCopy objectForKeyedSubscript:@"dictationLocale"];
  v288 = v23;
  if (v23 && (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy5)
      {
        v300 = objc_alloc(MEMORY[0x1E696ABC0]);
        v123 = *MEMORY[0x1E698F240];
        v370 = *MEMORY[0x1E696A578];
        v285 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"dictationLocale"];
        v371 = v285;
        v286 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v371 forKeys:&v370 count:1];
        v63 = 0;
        *errorCopy5 = [v300 initWithDomain:v123 code:2 userInfo:?];
        error = v310;
        v100 = v287;
        goto LABEL_324;
      }

      v63 = 0;
      error = v310;
      v100 = v287;
      goto LABEL_325;
    }

    v110 = v24;
    v111 = [BMSiriOnDeviceDigestUsageMetricsISOLocale alloc];
    v322 = 0;
    v285 = [(BMSiriOnDeviceDigestUsageMetricsISOLocale *)v111 initWithJSONDictionary:v110 error:&v322];
    v112 = v322;
    v100 = v287;
    if (v112)
    {
      v286 = v110;
      error = v310;
      if (errorCopy5)
      {
        v112 = v112;
        *errorCopy5 = v112;
      }

      v63 = 0;
      goto LABEL_324;
    }
  }

  else
  {
    v285 = 0;
  }

  v25 = [dictionaryCopy objectForKeyedSubscript:@"subDomain"];
  v284 = v25;
  if (v25 && (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!errorCopy5)
      {
        v286 = 0;
        v63 = 0;
        error = v310;
        v100 = v287;
        goto LABEL_323;
      }

      v124 = objc_alloc(MEMORY[0x1E696ABC0]);
      v125 = *MEMORY[0x1E698F240];
      v368 = *MEMORY[0x1E696A578];
      v282 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"subDomain"];
      v369 = v282;
      v283 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v369 forKeys:&v368 count:1];
      v286 = 0;
      v63 = 0;
      *errorCopy5 = [v124 initWithDomain:v125 code:2 userInfo:?];
      error = v310;
      goto LABEL_213;
    }

    v286 = v26;
  }

  else
  {
    v286 = 0;
  }

  v27 = [dictionaryCopy objectForKeyedSubscript:@"totalTurnCount"];
  v283 = v27;
  if (v27)
  {
    v28 = v27;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v282 = v28;
        goto LABEL_46;
      }

      if (errorCopy5)
      {
        v126 = v22;
        v127 = objc_alloc(MEMORY[0x1E696ABC0]);
        v128 = *MEMORY[0x1E698F240];
        v366 = *MEMORY[0x1E696A578];
        v279 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalTurnCount"];
        v367 = v279;
        v129 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v367 forKeys:&v366 count:1];
        v130 = v127;
        v22 = v126;
        v281 = v129;
        v282 = 0;
        v63 = 0;
        *errorCopy5 = [v130 initWithDomain:v128 code:2 userInfo:?];
        goto LABEL_219;
      }

      v282 = 0;
      v63 = 0;
      error = v310;
LABEL_213:
      v100 = v287;
      goto LABEL_322;
    }
  }

  v282 = 0;
LABEL_46:
  v29 = [dictionaryCopy objectForKeyedSubscript:@"validTurnCount"];
  v281 = v29;
  if (v29)
  {
    v30 = v29;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v279 = v30;
        goto LABEL_49;
      }

      if (errorCopy5)
      {
        v131 = v22;
        v132 = objc_alloc(MEMORY[0x1E696ABC0]);
        v133 = *MEMORY[0x1E698F240];
        v364 = *MEMORY[0x1E696A578];
        v277 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"validTurnCount"];
        v365 = v277;
        v134 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v365 forKeys:&v364 count:1];
        v135 = v132;
        v22 = v131;
        v278 = v134;
        v279 = 0;
        v63 = 0;
        *errorCopy5 = [v135 initWithDomain:v133 code:2 userInfo:?];
        goto LABEL_225;
      }

      v279 = 0;
      v63 = 0;
LABEL_219:
      error = v310;
      v100 = v287;
      goto LABEL_321;
    }
  }

  v279 = 0;
LABEL_49:
  v31 = [dictionaryCopy objectForKeyedSubscript:@"siriTasksStarted"];
  v278 = v31;
  if (v31)
  {
    v32 = v31;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v277 = v32;
        goto LABEL_52;
      }

      if (errorCopy5)
      {
        v136 = v22;
        v137 = objc_alloc(MEMORY[0x1E696ABC0]);
        v138 = *MEMORY[0x1E698F240];
        v362 = *MEMORY[0x1E696A578];
        v274 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"siriTasksStarted"];
        v363 = v274;
        v139 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v363 forKeys:&v362 count:1];
        v140 = v137;
        v22 = v136;
        v275 = v139;
        v277 = 0;
        v63 = 0;
        *errorCopy5 = [v140 initWithDomain:v138 code:2 userInfo:?];
        goto LABEL_231;
      }

      v277 = 0;
      v63 = 0;
LABEL_225:
      error = v310;
      v100 = v287;
      goto LABEL_320;
    }
  }

  v277 = 0;
LABEL_52:
  v33 = [dictionaryCopy objectForKeyedSubscript:@"siriTasksCompleted"];
  v275 = v33;
  if (v33)
  {
    v34 = v33;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v274 = v34;
        goto LABEL_55;
      }

      if (errorCopy5)
      {
        v141 = v22;
        v142 = objc_alloc(MEMORY[0x1E696ABC0]);
        v143 = *MEMORY[0x1E698F240];
        v360 = *MEMORY[0x1E696A578];
        v144 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"siriTasksCompleted"];
        v361 = v144;
        v145 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v361 forKeys:&v360 count:1];
        v146 = v142;
        v22 = v141;
        v147 = v144;
        v273 = v145;
        v274 = 0;
        v63 = 0;
        *errorCopy5 = [v146 initWithDomain:v143 code:2 userInfo:?];
        goto LABEL_237;
      }

      v274 = 0;
      v63 = 0;
LABEL_231:
      error = v310;
      v100 = v287;
      goto LABEL_319;
    }
  }

  v274 = 0;
LABEL_55:
  v35 = [dictionaryCopy objectForKeyedSubscript:@"flowTasksStarted"];
  v273 = v35;
  if (v35)
  {
    v36 = v35;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v270 = v36;
        goto LABEL_58;
      }

      if (errorCopy5)
      {
        v148 = v22;
        v149 = objc_alloc(MEMORY[0x1E696ABC0]);
        v150 = *MEMORY[0x1E698F240];
        v358 = *MEMORY[0x1E696A578];
        v271 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"flowTasksStarted"];
        v359 = v271;
        v151 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v359 forKeys:&v358 count:1];
        v152 = v149;
        v22 = v148;
        v272 = v151;
        v147 = 0;
        v63 = 0;
        *errorCopy5 = [v152 initWithDomain:v150 code:2 userInfo:?];
        error = v310;
        v100 = v287;
        goto LABEL_317;
      }

      v147 = 0;
      v63 = 0;
LABEL_237:
      error = v310;
      v100 = v287;
      goto LABEL_318;
    }
  }

  v270 = 0;
LABEL_58:
  v37 = [dictionaryCopy objectForKeyedSubscript:@"flowTasksCompleted"];
  v272 = v37;
  if (v37 && (v38 = v37, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!errorCopy5)
      {
        v271 = 0;
        v63 = 0;
        error = v310;
        v100 = v287;
        v147 = v270;
        goto LABEL_317;
      }

      v153 = v22;
      v154 = objc_alloc(MEMORY[0x1E696ABC0]);
      v155 = *MEMORY[0x1E698F240];
      v356 = *MEMORY[0x1E696A578];
      v268 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"flowTasksCompleted"];
      v357 = v268;
      v156 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v357 forKeys:&v356 count:1];
      v157 = v154;
      v22 = v153;
      v269 = v156;
      v271 = 0;
      v63 = 0;
      *errorCopy5 = [v157 initWithDomain:v155 code:2 userInfo:?];
      goto LABEL_249;
    }

    v271 = v38;
  }

  else
  {
    v271 = 0;
  }

  v39 = [dictionaryCopy objectForKeyedSubscript:@"reliabilityRequestCount"];
  v269 = v39;
  if (v39)
  {
    v40 = v39;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v268 = v40;
        goto LABEL_64;
      }

      if (errorCopy5)
      {
        v158 = v22;
        v159 = objc_alloc(MEMORY[0x1E696ABC0]);
        v160 = *MEMORY[0x1E698F240];
        v354 = *MEMORY[0x1E696A578];
        v266 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"reliabilityRequestCount"];
        v355 = v266;
        v161 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v355 forKeys:&v354 count:1];
        v162 = v159;
        v22 = v158;
        v267 = v161;
        v268 = 0;
        v63 = 0;
        *errorCopy5 = [v162 initWithDomain:v160 code:2 userInfo:?];
        goto LABEL_271;
      }

      v268 = 0;
      v63 = 0;
LABEL_249:
      error = v310;
      v100 = v287;
      v147 = v270;
      goto LABEL_316;
    }
  }

  v268 = 0;
LABEL_64:
  v41 = [dictionaryCopy objectForKeyedSubscript:@"reliabilityTurnCount"];
  v267 = v41;
  if (v41)
  {
    v42 = v41;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v266 = v42;
        goto LABEL_67;
      }

      if (errorCopy5)
      {
        v163 = v22;
        v164 = objc_alloc(MEMORY[0x1E696ABC0]);
        v165 = *MEMORY[0x1E698F240];
        v352 = *MEMORY[0x1E696A578];
        v264 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"reliabilityTurnCount"];
        v353 = v264;
        v166 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v353 forKeys:&v352 count:1];
        v167 = v164;
        v22 = v163;
        v265 = v166;
        v266 = 0;
        v63 = 0;
        *errorCopy5 = [v167 initWithDomain:v165 code:2 userInfo:?];
        goto LABEL_275;
      }

      v266 = 0;
      v63 = 0;
LABEL_271:
      error = v310;
      v100 = v287;
      v147 = v270;
      goto LABEL_315;
    }
  }

  v266 = 0;
LABEL_67:
  v43 = [dictionaryCopy objectForKeyedSubscript:@"clientErrorCount"];
  v265 = v43;
  if (v43)
  {
    v44 = v43;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v264 = v44;
        goto LABEL_70;
      }

      if (errorCopy5)
      {
        v168 = v22;
        v169 = objc_alloc(MEMORY[0x1E696ABC0]);
        v170 = *MEMORY[0x1E698F240];
        v350 = *MEMORY[0x1E696A578];
        v260 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"clientErrorCount"];
        v351 = v260;
        v171 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v351 forKeys:&v350 count:1];
        v172 = v169;
        v22 = v168;
        v261 = v171;
        v264 = 0;
        v63 = 0;
        *errorCopy5 = [v172 initWithDomain:v170 code:2 userInfo:?];
        goto LABEL_284;
      }

      v264 = 0;
      v63 = 0;
LABEL_275:
      error = v310;
      v100 = v287;
      v147 = v270;
      goto LABEL_314;
    }
  }

  v264 = 0;
LABEL_70:
  v45 = [dictionaryCopy objectForKeyedSubscript:@"undesiredResponseCount"];
  v261 = v45;
  if (v45)
  {
    v46 = v45;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v260 = v46;
        goto LABEL_73;
      }

      if (errorCopy5)
      {
        v173 = v22;
        v174 = objc_alloc(MEMORY[0x1E696ABC0]);
        v175 = *MEMORY[0x1E698F240];
        v348 = *MEMORY[0x1E696A578];
        v258 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"undesiredResponseCount"];
        v349 = v258;
        v176 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v349 forKeys:&v348 count:1];
        v177 = v174;
        v22 = v173;
        v259 = v176;
        v260 = 0;
        v63 = 0;
        *errorCopy5 = [v177 initWithDomain:v175 code:2 userInfo:?];
        goto LABEL_289;
      }

      v260 = 0;
      v63 = 0;
LABEL_284:
      error = v310;
      v100 = v287;
      v147 = v270;
      goto LABEL_313;
    }
  }

  v260 = 0;
LABEL_73:
  v47 = [dictionaryCopy objectForKeyedSubscript:@"fatalResponseCount"];
  v259 = v47;
  if (v47)
  {
    v48 = v47;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v258 = v48;
        goto LABEL_76;
      }

      if (errorCopy5)
      {
        v178 = v22;
        v179 = objc_alloc(MEMORY[0x1E696ABC0]);
        v180 = *MEMORY[0x1E698F240];
        v346 = *MEMORY[0x1E696A578];
        v256 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"fatalResponseCount"];
        v347 = v256;
        v181 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v347 forKeys:&v346 count:1];
        v182 = v179;
        v22 = v178;
        v255 = v181;
        v258 = 0;
        v63 = 0;
        *errorCopy5 = [v182 initWithDomain:v180 code:2 userInfo:?];
        goto LABEL_293;
      }

      v258 = 0;
      v63 = 0;
LABEL_289:
      error = v310;
      v100 = v287;
      v147 = v270;
      goto LABEL_312;
    }
  }

  v258 = 0;
LABEL_76:
  v49 = [dictionaryCopy objectForKeyedSubscript:@"failureResponseCount"];
  v255 = v49;
  if (v49)
  {
    v50 = v49;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v256 = v50;
        goto LABEL_79;
      }

      if (errorCopy5)
      {
        v183 = v22;
        v184 = objc_alloc(MEMORY[0x1E696ABC0]);
        v185 = *MEMORY[0x1E698F240];
        v344 = *MEMORY[0x1E696A578];
        v254 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"failureResponseCount"];
        v345 = v254;
        v186 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v345 forKeys:&v344 count:1];
        v187 = v184;
        v22 = v183;
        v253 = v186;
        v256 = 0;
        v63 = 0;
        *errorCopy5 = [v187 initWithDomain:v185 code:2 userInfo:?];
        goto LABEL_298;
      }

      v256 = 0;
      v63 = 0;
LABEL_293:
      error = v310;
      v100 = v287;
      v147 = v270;
      goto LABEL_311;
    }
  }

  v256 = 0;
LABEL_79:
  v51 = [dictionaryCopy objectForKeyedSubscript:@"siriUnavailableResponseCount"];
  v253 = v51;
  if (v51)
  {
    v52 = v51;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v254 = v52;
        goto LABEL_82;
      }

      if (errorCopy5)
      {
        v202 = v22;
        v203 = objc_alloc(MEMORY[0x1E696ABC0]);
        v204 = *MEMORY[0x1E698F240];
        v342 = *MEMORY[0x1E696A578];
        v205 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"siriUnavailableResponseCount"];
        v343 = v205;
        v206 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v343 forKeys:&v342 count:1];
        v207 = v203;
        v22 = v202;
        v252 = v206;
        v254 = 0;
        v63 = 0;
        *errorCopy5 = [v207 initWithDomain:v204 code:2 userInfo:?];
        goto LABEL_341;
      }

      v254 = 0;
      v63 = 0;
LABEL_298:
      error = v310;
      v100 = v287;
      v147 = v270;
      goto LABEL_310;
    }
  }

  v254 = 0;
LABEL_82:
  v53 = [dictionaryCopy objectForKeyedSubscript:@"asrTurnCount"];
  v252 = v53;
  if (v53)
  {
    v54 = v53;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v248 = v54;
        goto LABEL_85;
      }

      if (errorCopy5)
      {
        v208 = v22;
        v209 = objc_alloc(MEMORY[0x1E696ABC0]);
        v210 = *MEMORY[0x1E698F240];
        v340 = *MEMORY[0x1E696A578];
        v251 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"asrTurnCount"];
        v341 = v251;
        v211 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v341 forKeys:&v340 count:1];
        v212 = v209;
        v22 = v208;
        v250 = v211;
        v205 = 0;
        v63 = 0;
        *errorCopy5 = [v212 initWithDomain:v210 code:2 userInfo:?];
        error = v310;
        v100 = v287;
        v147 = v270;
        goto LABEL_308;
      }

      v205 = 0;
      v63 = 0;
LABEL_341:
      error = v310;
      v100 = v287;
      v147 = v270;
      goto LABEL_309;
    }
  }

  v248 = 0;
LABEL_85:
  v55 = [dictionaryCopy objectForKeyedSubscript:@"siriResponseId"];
  v280 = v22;
  v250 = v55;
  if (v55 && (v56 = v55, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!errorCopy5)
      {
        v251 = 0;
        v63 = 0;
        error = v310;
        v100 = v287;
        v147 = v270;
        v205 = v248;
        goto LABEL_308;
      }

      v219 = objc_alloc(MEMORY[0x1E696ABC0]);
      v220 = *MEMORY[0x1E698F240];
      v338 = *MEMORY[0x1E696A578];
      v249 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"siriResponseId"];
      v339 = v249;
      v247 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v339 forKeys:&v338 count:1];
      v251 = 0;
      v63 = 0;
      *errorCopy5 = [v219 initWithDomain:v220 code:2 userInfo:?];
      error = v310;
      goto LABEL_346;
    }

    v251 = v56;
  }

  else
  {
    v251 = 0;
  }

  v57 = [dictionaryCopy objectForKeyedSubscript:@"responseCategory"];
  v247 = v57;
  if (!v57 || (v58 = v57, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v249 = 0;
    goto LABEL_91;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (errorCopy5)
    {
      v222 = v22;
      v223 = objc_alloc(MEMORY[0x1E696ABC0]);
      v224 = *MEMORY[0x1E698F240];
      v336 = *MEMORY[0x1E696A578];
      v246 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"responseCategory"];
      v337 = v246;
      v225 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v337 forKeys:&v336 count:1];
      v226 = v223;
      v22 = v222;
      v245 = v225;
      v249 = 0;
      v63 = 0;
      *errorCopy5 = [v226 initWithDomain:v224 code:2 userInfo:?];
      error = v310;
      goto LABEL_348;
    }

    v249 = 0;
    v63 = 0;
    error = v310;
LABEL_346:
    v100 = v287;
    v147 = v270;
    v205 = v248;
    goto LABEL_307;
  }

  v249 = v58;
LABEL_91:
  v276 = v12;
  v59 = [dictionaryCopy objectForKeyedSubscript:@"isIntelligenceEngineRequest"];
  v245 = v59;
  v289 = v11;
  if (!v59)
  {
    v246 = 0;
    v61 = 0x1E695D000;
    goto LABEL_252;
  }

  v60 = v59;
  v61 = 0x1E695D000uLL;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v246 = v60;
      goto LABEL_252;
    }

    if (errorCopy5)
    {
      v228 = v22;
      v229 = objc_alloc(MEMORY[0x1E696ABC0]);
      v230 = *MEMORY[0x1E698F240];
      v334 = *MEMORY[0x1E696A578];
      obj = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isIntelligenceEngineRequest"];
      v335 = obj;
      v231 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v335 forKeys:&v334 count:1];
      v232 = v229;
      v22 = v228;
      v263 = v231;
      v246 = 0;
      v63 = 0;
      *errorCopy5 = [v232 initWithDomain:v230 code:2 userInfo:?];
      error = v310;
      v12 = v276;
      v100 = v287;
      v205 = v248;

      goto LABEL_305;
    }

    v246 = 0;
    v63 = 0;
    error = v310;
LABEL_348:
    v100 = v287;
    v147 = v270;
    v205 = v248;
    goto LABEL_306;
  }

  v246 = 0;
LABEL_252:
  v188 = [dictionaryCopy objectForKeyedSubscript:@"intelligenceEngineRouting"];
  null = [*(v61 + 4016) null];
  v190 = [v188 isEqual:null];

  if (v190)
  {

    v188 = 0;
  }

  else if (v188)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      obj = v188;
      if (!errorCopy5)
      {
        v63 = 0;
        error = v310;
        v11 = v289;
        v22 = v280;
        v100 = v287;
        v205 = v248;
        goto LABEL_305;
      }

      v233 = objc_alloc(MEMORY[0x1E696ABC0]);
      v234 = *MEMORY[0x1E698F240];
      v332 = *MEMORY[0x1E696A578];
      v262 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"intelligenceEngineRouting"];
      v333 = v262;
      v235 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v333 forKeys:&v332 count:1];
      v236 = [v233 initWithDomain:v234 code:2 userInfo:v235];
      v63 = 0;
      *errorCopy5 = v236;
      v227 = v235;
LABEL_296:
      error = v310;
      v11 = v289;
      v12 = v276;
      v22 = v280;
      v205 = v248;
      goto LABEL_304;
    }
  }

  v262 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v188, "count")}];
  v318 = 0u;
  v319 = 0u;
  v320 = 0u;
  v321 = 0u;
  v191 = v188;
  v192 = [v191 countByEnumeratingWithState:&v318 objects:v331 count:16];
  obj = v191;
  if (!v192)
  {
    goto LABEL_265;
  }

  v193 = v192;
  v194 = *v319;
  while (2)
  {
    for (i = 0; i != v193; ++i)
    {
      if (*v319 != v194)
      {
        objc_enumerationMutation(obj);
      }

      v196 = *(*(&v318 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v213 = errorCopy5;
        if (errorCopy5)
        {
          v214 = objc_alloc(MEMORY[0x1E696ABC0]);
          v215 = *MEMORY[0x1E698F240];
          v329 = *MEMORY[0x1E696A578];
          v244 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"intelligenceEngineRouting"];
          v330 = v244;
          v216 = MEMORY[0x1E695DF20];
          v217 = &v330;
          v218 = &v329;
LABEL_282:
          v221 = [v216 dictionaryWithObjects:v217 forKeys:v218 count:1];
          v205 = v248;
          *v213 = [v214 initWithDomain:v215 code:2 userInfo:v221];

          v63 = 0;
          v312 = obj;
          error = v310;
          v11 = v289;
          v12 = v276;
          v22 = v280;
          goto LABEL_303;
        }

        goto LABEL_287;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v213 = errorCopy5;
        if (errorCopy5)
        {
          v214 = objc_alloc(MEMORY[0x1E696ABC0]);
          v215 = *MEMORY[0x1E698F240];
          v327 = *MEMORY[0x1E696A578];
          v244 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"intelligenceEngineRouting"];
          v328 = v244;
          v216 = MEMORY[0x1E695DF20];
          v217 = &v328;
          v218 = &v327;
          goto LABEL_282;
        }

LABEL_287:
        v63 = 0;
        v227 = obj;
        goto LABEL_296;
      }

      v197 = v196;
      [v262 addObject:v197];
    }

    v191 = obj;
    v193 = [obj countByEnumeratingWithState:&v318 objects:v331 count:16];
    if (v193)
    {
      continue;
    }

    break;
  }

LABEL_265:

  v198 = [dictionaryCopy objectForKeyedSubscript:@"invocationSource"];
  v244 = v198;
  if (v198)
  {
    v199 = v198;
    objc_opt_class();
    v22 = v280;
    v200 = v254;
    if (objc_opt_isKindOfClass())
    {
      v198 = 0;
      error = v310;
      v11 = v289;
      v201 = v308;
      goto LABEL_300;
    }

    objc_opt_class();
    error = v310;
    v205 = v248;
    if (objc_opt_isKindOfClass())
    {
      v198 = v199;
      v11 = v289;
      v201 = v308;
      goto LABEL_301;
    }

    if (errorCopy5)
    {
      v238 = objc_alloc(MEMORY[0x1E696ABC0]);
      v239 = *MEMORY[0x1E698F240];
      v325 = *MEMORY[0x1E696A578];
      v240 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"invocationSource"];
      v326 = v240;
      v241 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v326 forKeys:&v325 count:1];
      v242 = v238;
      v22 = v280;
      v243 = v239;
      error = v310;
      *errorCopy5 = [v242 initWithDomain:v243 code:2 userInfo:v241];

      v205 = v248;
    }

    v312 = 0;
    v63 = 0;
    v11 = v289;
  }

  else
  {
    v201 = v308;
    error = v310;
    v11 = v289;
    v22 = v280;
    v200 = v254;
LABEL_300:
    v205 = v248;
LABEL_301:
    v312 = v198;
    v254 = v200;
    v63 = [(BMSiriOnDeviceDigestUsageMetrics *)selfCopy initWithEventMetadata:v316 deviceType:v201 programCode:v315 productId:error systemBuild:v313 dataSharingOptInStatus:v309 viewInterface:v307 audioInterfaceVendorId:v304 audioInterfaceProductId:v302 asrLocation:v293 nlLocation:v291 siriInputLocale:v287 dictationLocale:v285 subDomain:v286 totalTurnCount:v282 validTurnCount:v279 siriTasksStarted:v277 siriTasksCompleted:v274 flowTasksStarted:v270 flowTasksCompleted:v271 reliabilityRequestCount:v268 reliabilityTurnCount:v266 clientErrorCount:v264 undesiredResponseCount:v260 fatalResponseCount:v258 failureResponseCount:v256 siriUnavailableResponseCount:v200 asrTurnCount:v205 siriResponseId:v251 responseCategory:v249 isIntelligenceEngineRequest:v246 intelligenceEngineRouting:v262 invocationSource:v198];
    selfCopy = v63;
  }

  v12 = v276;
LABEL_303:

  v227 = v312;
LABEL_304:

  v100 = v287;
LABEL_305:

  v147 = v270;
LABEL_306:

LABEL_307:
LABEL_308:

LABEL_309:
LABEL_310:

LABEL_311:
LABEL_312:

LABEL_313:
LABEL_314:

LABEL_315:
LABEL_316:

LABEL_317:
LABEL_318:

LABEL_319:
LABEL_320:

LABEL_321:
LABEL_322:

LABEL_323:
LABEL_324:

LABEL_325:
LABEL_326:

LABEL_327:
  v9 = v290;
  v7 = v301;
  v13 = v306;
LABEL_328:

LABEL_329:
LABEL_330:

LABEL_331:
LABEL_332:

  v8 = v308;
LABEL_333:

LABEL_334:
LABEL_335:

  self = selfCopy;
LABEL_336:

LABEL_337:
LABEL_338:

LABEL_339:
  return v63;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriOnDeviceDigestUsageMetrics *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_eventMetadata)
  {
    v14 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriOnDeviceDigestUsageMetricsEventMetadata *)self->_eventMetadata writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_deviceType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasProgramCode)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasProductId)
  {
    PBDataWriterWriteInt32Field();
  }

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
    [(BMSiriOnDeviceDigestUsageMetricsISOLocale *)self->_siriInputLocale writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_dictationLocale)
  {
    v14 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriOnDeviceDigestUsageMetricsISOLocale *)self->_dictationLocale writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_subDomain)
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

  if (self->_hasAsrTurnCount)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_siriResponseId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasResponseCategory)
  {
    PBDataWriterWriteUint32Field();
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
  v178.receiver = self;
  v178.super_class = BMSiriOnDeviceDigestUsageMetrics;
  v5 = [(BMEventBase *)&v178 init];
  if (!v5)
  {
LABEL_353:
    v176 = v5;
    goto LABEL_354;
  }

  v6 = objc_opt_new();
  while (2)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      goto LABEL_351;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      LOBYTE(v179) = 0;
      v11 = [fromCopy position] + 1;
      if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v10 |= (v179 & 0x7F) << v8;
      if ((v179 & 0x80) == 0)
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
LABEL_351:
      v173 = [v6 copy];
      intelligenceEngineRouting = v5->_intelligenceEngineRouting;
      v5->_intelligenceEngineRouting = v173;

      hasError = [fromCopy hasError];
      if (hasError)
      {
        goto LABEL_352;
      }

      goto LABEL_353;
    }

    switch((v15 >> 3))
    {
      case 1u:
        v179 = 0;
        v180 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_355;
        }

        v16 = [[BMSiriOnDeviceDigestUsageMetricsEventMetadata alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_355;
        }

        v17 = 136;
        goto LABEL_57;
      case 2u:
        v37 = PBReaderReadString();
        v38 = 144;
        goto LABEL_234;
      case 3u:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v5->_hasProgramCode = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v61 = [fromCopy position] + 1;
          if (v61 >= [fromCopy position] && (v62 = objc_msgSend(fromCopy, "position") + 1, v62 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v60 |= (v179 & 0x7F) << v58;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v14 = v59++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_282;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v60;
        }

LABEL_282:
        v170 = 44;
        goto LABEL_350;
      case 4u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v5->_hasProductId = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v73 = [fromCopy position] + 1;
          if (v73 >= [fromCopy position] && (v74 = objc_msgSend(fromCopy, "position") + 1, v74 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v72 |= (v179 & 0x7F) << v70;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v14 = v71++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_290;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v72;
        }

LABEL_290:
        v170 = 48;
        goto LABEL_350;
      case 5u:
        v37 = PBReaderReadString();
        v38 = 152;
        goto LABEL_234;
      case 6u:
        v96 = 0;
        v97 = 0;
        v98 = 0;
        v5->_hasDataSharingOptInStatus = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v99 = [fromCopy position] + 1;
          if (v99 >= [fromCopy position] && (v100 = objc_msgSend(fromCopy, "position") + 1, v100 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v98 |= (v179 & 0x7F) << v96;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v96 += 7;
          v14 = v97++ >= 9;
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
          v24 = v98;
        }

LABEL_307:
        v170 = 52;
        goto LABEL_350;
      case 7u:
        v108 = 0;
        v109 = 0;
        v110 = 0;
        v5->_hasViewInterface = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v111 = [fromCopy position] + 1;
          if (v111 >= [fromCopy position] && (v112 = objc_msgSend(fromCopy, "position") + 1, v112 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v110 |= (v179 & 0x7F) << v108;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v108 += 7;
          v14 = v109++ >= 9;
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
          v24 = v110;
        }

LABEL_315:
        v170 = 56;
        goto LABEL_350;
      case 8u:
        v37 = PBReaderReadString();
        v38 = 160;
        goto LABEL_234;
      case 9u:
        v37 = PBReaderReadString();
        v38 = 168;
        goto LABEL_234;
      case 0xAu:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v5->_hasAsrLocation = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v43 = [fromCopy position] + 1;
          if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 1, v44 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v42 |= (v179 & 0x7F) << v40;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v14 = v41++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_270;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v42;
        }

LABEL_270:
        v170 = 60;
        goto LABEL_350;
      case 0xBu:
        v120 = 0;
        v121 = 0;
        v122 = 0;
        v5->_hasNlLocation = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v123 = [fromCopy position] + 1;
          if (v123 >= [fromCopy position] && (v124 = objc_msgSend(fromCopy, "position") + 1, v124 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v122 |= (v179 & 0x7F) << v120;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v14 = v121++ >= 9;
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
          v24 = v122;
        }

LABEL_323:
        v170 = 64;
        goto LABEL_350;
      case 0xCu:
        v179 = 0;
        v180 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_355;
        }

        v16 = [[BMSiriOnDeviceDigestUsageMetricsISOLocale alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_355;
        }

        v17 = 176;
        goto LABEL_57;
      case 0xDu:
        v179 = 0;
        v180 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_355;
        }

        v16 = [[BMSiriOnDeviceDigestUsageMetricsISOLocale alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_355;
        }

        v17 = 184;
LABEL_57:
        v39 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        PBReaderRecallMark();
        continue;
      case 0xEu:
        v37 = PBReaderReadString();
        v38 = 192;
        goto LABEL_234;
      case 0xFu:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v5->_hasTotalTurnCount = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v34 = [fromCopy position] + 1;
          if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v33 |= (v179 & 0x7F) << v31;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v14 = v32++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_266;
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

LABEL_266:
        v170 = 68;
        goto LABEL_350;
      case 0x10u:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        v5->_hasValidTurnCount = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v67 = [fromCopy position] + 1;
          if (v67 >= [fromCopy position] && (v68 = objc_msgSend(fromCopy, "position") + 1, v68 <= objc_msgSend(fromCopy, "length")))
          {
            data9 = [fromCopy data];
            [data9 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v66 |= (v179 & 0x7F) << v64;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v14 = v65++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_286;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v66;
        }

LABEL_286:
        v170 = 72;
        goto LABEL_350;
      case 0x11u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v5->_hasSiriTasksStarted = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v28 = [fromCopy position] + 1;
          if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
          {
            data10 = [fromCopy data];
            [data10 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v27 |= (v179 & 0x7F) << v25;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v14 = v26++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_262;
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

LABEL_262:
        v170 = 76;
        goto LABEL_350;
      case 0x12u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        v5->_hasSiriTasksCompleted = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v87 = [fromCopy position] + 1;
          if (v87 >= [fromCopy position] && (v88 = objc_msgSend(fromCopy, "position") + 1, v88 <= objc_msgSend(fromCopy, "length")))
          {
            data11 = [fromCopy data];
            [data11 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v86 |= (v179 & 0x7F) << v84;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v14 = v85++ >= 9;
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
          v24 = v86;
        }

LABEL_299:
        v170 = 80;
        goto LABEL_350;
      case 0x13u:
        v114 = 0;
        v115 = 0;
        v116 = 0;
        v5->_hasFlowTasksStarted = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v117 = [fromCopy position] + 1;
          if (v117 >= [fromCopy position] && (v118 = objc_msgSend(fromCopy, "position") + 1, v118 <= objc_msgSend(fromCopy, "length")))
          {
            data12 = [fromCopy data];
            [data12 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v116 |= (v179 & 0x7F) << v114;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v114 += 7;
          v14 = v115++ >= 9;
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
          v24 = v116;
        }

LABEL_319:
        v170 = 84;
        goto LABEL_350;
      case 0x14u:
        v145 = 0;
        v146 = 0;
        v147 = 0;
        v5->_hasFlowTasksCompleted = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v148 = [fromCopy position] + 1;
          if (v148 >= [fromCopy position] && (v149 = objc_msgSend(fromCopy, "position") + 1, v149 <= objc_msgSend(fromCopy, "length")))
          {
            data13 = [fromCopy data];
            [data13 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v147 |= (v179 & 0x7F) << v145;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v145 += 7;
          v14 = v146++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_337;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v147;
        }

LABEL_337:
        v170 = 88;
        goto LABEL_350;
      case 0x15u:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v5->_hasReliabilityRequestCount = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v93 = [fromCopy position] + 1;
          if (v93 >= [fromCopy position] && (v94 = objc_msgSend(fromCopy, "position") + 1, v94 <= objc_msgSend(fromCopy, "length")))
          {
            data14 = [fromCopy data];
            [data14 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v92 |= (v179 & 0x7F) << v90;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v14 = v91++ >= 9;
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
          v24 = v92;
        }

LABEL_303:
        v170 = 92;
        goto LABEL_350;
      case 0x16u:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        v5->_hasReliabilityTurnCount = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v105 = [fromCopy position] + 1;
          if (v105 >= [fromCopy position] && (v106 = objc_msgSend(fromCopy, "position") + 1, v106 <= objc_msgSend(fromCopy, "length")))
          {
            data15 = [fromCopy data];
            [data15 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v104 |= (v179 & 0x7F) << v102;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v102 += 7;
          v14 = v103++ >= 9;
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
          v24 = v104;
        }

LABEL_311:
        v170 = 96;
        goto LABEL_350;
      case 0x17u:
        v139 = 0;
        v140 = 0;
        v141 = 0;
        v5->_hasClientErrorCount = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v142 = [fromCopy position] + 1;
          if (v142 >= [fromCopy position] && (v143 = objc_msgSend(fromCopy, "position") + 1, v143 <= objc_msgSend(fromCopy, "length")))
          {
            data16 = [fromCopy data];
            [data16 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v141 |= (v179 & 0x7F) << v139;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v139 += 7;
          v14 = v140++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_333;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v141;
        }

LABEL_333:
        v170 = 100;
        goto LABEL_350;
      case 0x18u:
        v151 = 0;
        v152 = 0;
        v153 = 0;
        v5->_hasUndesiredResponseCount = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v154 = [fromCopy position] + 1;
          if (v154 >= [fromCopy position] && (v155 = objc_msgSend(fromCopy, "position") + 1, v155 <= objc_msgSend(fromCopy, "length")))
          {
            data17 = [fromCopy data];
            [data17 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v153 |= (v179 & 0x7F) << v151;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v151 += 7;
          v14 = v152++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_341;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v153;
        }

LABEL_341:
        v170 = 104;
        goto LABEL_350;
      case 0x19u:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v5->_hasFatalResponseCount = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v55 = [fromCopy position] + 1;
          if (v55 >= [fromCopy position] && (v56 = objc_msgSend(fromCopy, "position") + 1, v56 <= objc_msgSend(fromCopy, "length")))
          {
            data18 = [fromCopy data];
            [data18 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v54 |= (v179 & 0x7F) << v52;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v14 = v53++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_278;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v54;
        }

LABEL_278:
        v170 = 108;
        goto LABEL_350;
      case 0x1Au:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v5->_hasFailureResponseCount = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v49 = [fromCopy position] + 1;
          if (v49 >= [fromCopy position] && (v50 = objc_msgSend(fromCopy, "position") + 1, v50 <= objc_msgSend(fromCopy, "length")))
          {
            data19 = [fromCopy data];
            [data19 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v48 |= (v179 & 0x7F) << v46;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v14 = v47++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_274;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v48;
        }

LABEL_274:
        v170 = 112;
        goto LABEL_350;
      case 0x1Bu:
        v164 = 0;
        v165 = 0;
        v166 = 0;
        v5->_hasSiriUnavailableResponseCount = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v167 = [fromCopy position] + 1;
          if (v167 >= [fromCopy position] && (v168 = objc_msgSend(fromCopy, "position") + 1, v168 <= objc_msgSend(fromCopy, "length")))
          {
            data20 = [fromCopy data];
            [data20 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v166 |= (v179 & 0x7F) << v164;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v164 += 7;
          v14 = v165++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_349;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v166;
        }

LABEL_349:
        v170 = 116;
        goto LABEL_350;
      case 0x1Cu:
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v5->_hasAsrTurnCount = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v21 = [fromCopy position] + 1;
          if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
          {
            data21 = [fromCopy data];
            [data21 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v20 |= (v179 & 0x7F) << v18;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v14 = v19++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_258;
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

LABEL_258:
        v170 = 120;
        goto LABEL_350;
      case 0x1Du:
        v37 = PBReaderReadString();
        v38 = 200;
LABEL_234:
        v157 = *(&v5->super.super.isa + v38);
        *(&v5->super.super.isa + v38) = v37;

        continue;
      case 0x1Eu:
        v158 = 0;
        v159 = 0;
        v160 = 0;
        v5->_hasResponseCategory = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v161 = [fromCopy position] + 1;
          if (v161 >= [fromCopy position] && (v162 = objc_msgSend(fromCopy, "position") + 1, v162 <= objc_msgSend(fromCopy, "length")))
          {
            data22 = [fromCopy data];
            [data22 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v160 |= (v179 & 0x7F) << v158;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v158 += 7;
          v14 = v159++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_345;
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

LABEL_345:
        v170 = 124;
        goto LABEL_350;
      case 0x1Fu:
        v126 = 0;
        v127 = 0;
        v128 = 0;
        v5->_hasIsIntelligenceEngineRequest = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v129 = [fromCopy position] + 1;
          if (v129 >= [fromCopy position] && (v130 = objc_msgSend(fromCopy, "position") + 1, v130 <= objc_msgSend(fromCopy, "length")))
          {
            data23 = [fromCopy data];
            [data23 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v128 |= (v179 & 0x7F) << v126;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v126 += 7;
          v14 = v127++ >= 9;
          if (v14)
          {
            LOBYTE(v132) = 0;
            goto LABEL_325;
          }
        }

        v132 = (v128 != 0) & ~[fromCopy hasError];
LABEL_325:
        v5->_isIntelligenceEngineRequest = v132;
        continue;
      case 0x20u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v79 = MEMORY[0x1E696AD98];
        while (1)
        {
          LOBYTE(v179) = 0;
          v80 = [fromCopy position] + 1;
          if (v80 >= [fromCopy position] && (v81 = objc_msgSend(fromCopy, "position") + 1, v81 <= objc_msgSend(fromCopy, "length")))
          {
            data24 = [fromCopy data];
            [data24 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v78 |= (v179 & 0x7F) << v76;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v14 = v77++ >= 9;
          if (v14)
          {
            v83 = 0;
            goto LABEL_294;
          }
        }

        if ([fromCopy hasError])
        {
          v83 = 0;
        }

        else
        {
          v83 = v78;
        }

LABEL_294:
        v171 = [v79 numberWithUnsignedInt:v83];
        if (v171)
        {
          v172 = v171;
          [v6 addObject:v171];

          continue;
        }

LABEL_355:

LABEL_352:
        v176 = 0;
LABEL_354:

        return v176;
      case 0x21u:
        v133 = 0;
        v134 = 0;
        v135 = 0;
        v5->_hasInvocationSource = 1;
        while (1)
        {
          LOBYTE(v179) = 0;
          v136 = [fromCopy position] + 1;
          if (v136 >= [fromCopy position] && (v137 = objc_msgSend(fromCopy, "position") + 1, v137 <= objc_msgSend(fromCopy, "length")))
          {
            data25 = [fromCopy data];
            [data25 getBytes:&v179 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v135 |= (v179 & 0x7F) << v133;
          if ((v179 & 0x80) == 0)
          {
            break;
          }

          v133 += 7;
          v14 = v134++ >= 9;
          if (v14)
          {
            v24 = 0;
            goto LABEL_329;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v135;
        }

LABEL_329:
        v170 = 128;
LABEL_350:
        *(&v5->super.super.isa + v170) = v24;
        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

        goto LABEL_355;
    }
  }
}

- (NSString)description
{
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  eventMetadata = [(BMSiriOnDeviceDigestUsageMetrics *)self eventMetadata];
  deviceType = [(BMSiriOnDeviceDigestUsageMetrics *)self deviceType];
  v37 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics programCode](self, "programCode")}];
  v33 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics productId](self, "productId")}];
  systemBuild = [(BMSiriOnDeviceDigestUsageMetrics *)self systemBuild];
  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics dataSharingOptInStatus](self, "dataSharingOptInStatus")}];
  v34 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics viewInterface](self, "viewInterface")}];
  audioInterfaceVendorId = [(BMSiriOnDeviceDigestUsageMetrics *)self audioInterfaceVendorId];
  audioInterfaceProductId = [(BMSiriOnDeviceDigestUsageMetrics *)self audioInterfaceProductId];
  v28 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics asrLocation](self, "asrLocation")}];
  v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestUsageMetrics nlLocation](self, "nlLocation")}];
  siriInputLocale = [(BMSiriOnDeviceDigestUsageMetrics *)self siriInputLocale];
  dictationLocale = [(BMSiriOnDeviceDigestUsageMetrics *)self dictationLocale];
  subDomain = [(BMSiriOnDeviceDigestUsageMetrics *)self subDomain];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics totalTurnCount](self, "totalTurnCount")}];
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics validTurnCount](self, "validTurnCount")}];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics siriTasksStarted](self, "siriTasksStarted")}];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics siriTasksCompleted](self, "siriTasksCompleted")}];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics flowTasksStarted](self, "flowTasksStarted")}];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics flowTasksCompleted](self, "flowTasksCompleted")}];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics reliabilityRequestCount](self, "reliabilityRequestCount")}];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics reliabilityTurnCount](self, "reliabilityTurnCount")}];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics clientErrorCount](self, "clientErrorCount")}];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics undesiredResponseCount](self, "undesiredResponseCount")}];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics fatalResponseCount](self, "fatalResponseCount")}];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics failureResponseCount](self, "failureResponseCount")}];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics siriUnavailableResponseCount](self, "siriUnavailableResponseCount")}];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics asrTurnCount](self, "asrTurnCount")}];
  siriResponseId = [(BMSiriOnDeviceDigestUsageMetrics *)self siriResponseId];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics responseCategory](self, "responseCategory")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriOnDeviceDigestUsageMetrics isIntelligenceEngineRequest](self, "isIntelligenceEngineRequest")}];
  intelligenceEngineRouting = [(BMSiriOnDeviceDigestUsageMetrics *)self intelligenceEngineRouting];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriOnDeviceDigestUsageMetrics invocationSource](self, "invocationSource")}];
  v18 = [v17 initWithFormat:@"BMSiriOnDeviceDigestUsageMetrics with eventMetadata: %@, deviceType: %@, programCode: %@, productId: %@, systemBuild: %@, dataSharingOptInStatus: %@, viewInterface: %@, audioInterfaceVendorId: %@, audioInterfaceProductId: %@, asrLocation: %@, nlLocation: %@, siriInputLocale: %@, dictationLocale: %@, subDomain: %@, totalTurnCount: %@, validTurnCount: %@, siriTasksStarted: %@, siriTasksCompleted: %@, flowTasksStarted: %@, flowTasksCompleted: %@, reliabilityRequestCount: %@, reliabilityTurnCount: %@, clientErrorCount: %@, undesiredResponseCount: %@, fatalResponseCount: %@, failureResponseCount: %@, siriUnavailableResponseCount: %@, asrTurnCount: %@, siriResponseId: %@, responseCategory: %@, isIntelligenceEngineRequest: %@, intelligenceEngineRouting: %@, invocationSource: %@", eventMetadata, deviceType, v37, v33, systemBuild, v32, v34, audioInterfaceVendorId, audioInterfaceProductId, v28, v29, siriInputLocale, dictationLocale, subDomain, v16, v24, v15, v23, v14, v22, v21, v20, v13, v19, v12, v11, v10, v3, siriResponseId, v5, v6, intelligenceEngineRouting, v8];

  return v18;
}

- (BMSiriOnDeviceDigestUsageMetrics)initWithEventMetadata:(id)metadata deviceType:(id)type programCode:(id)code productId:(id)id systemBuild:(id)build dataSharingOptInStatus:(id)status viewInterface:(id)interface audioInterfaceVendorId:(id)self0 audioInterfaceProductId:(id)self1 asrLocation:(id)self2 nlLocation:(id)self3 siriInputLocale:(id)self4 dictationLocale:(id)self5 subDomain:(id)self6 totalTurnCount:(id)self7 validTurnCount:(id)self8 siriTasksStarted:(id)self9 siriTasksCompleted:(id)completed flowTasksStarted:(id)tasksStarted flowTasksCompleted:(id)tasksCompleted reliabilityRequestCount:(id)requestCount reliabilityTurnCount:(id)reliabilityTurnCount clientErrorCount:(id)errorCount undesiredResponseCount:(id)responseCount fatalResponseCount:(id)fatalResponseCount failureResponseCount:(id)failureResponseCount siriUnavailableResponseCount:(id)unavailableResponseCount asrTurnCount:(id)metadata0 siriResponseId:(id)metadata1 responseCategory:(id)metadata2 isIntelligenceEngineRequest:(id)metadata3 intelligenceEngineRouting:(id)metadata4 invocationSource:(id)metadata5
{
  metadataCopy = metadata;
  typeCopy = type;
  typeCopy2 = type;
  codeCopy = code;
  idCopy = id;
  buildCopy = build;
  statusCopy = status;
  interfaceCopy = interface;
  vendorIdCopy = vendorId;
  productIdCopy = productId;
  locationCopy = location;
  nlLocationCopy = nlLocation;
  localeCopy = locale;
  dictationLocaleCopy = dictationLocale;
  domainCopy = domain;
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
  asrTurnCountCopy = asrTurnCount;
  responseIdCopy = responseId;
  categoryCopy = category;
  requestCopy = request;
  routingCopy = routing;
  sourceCopy = source;
  v100.receiver = self;
  v100.super_class = BMSiriOnDeviceDigestUsageMetrics;
  v42 = [(BMEventBase *)&v100 init];
  if (v42)
  {
    v42->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v42->_eventMetadata, metadata);
    objc_storeStrong(&v42->_deviceType, typeCopy);
    if (codeCopy)
    {
      v42->_hasProgramCode = 1;
      intValue = [codeCopy intValue];
    }

    else
    {
      codeCopy = 0;
      v42->_hasProgramCode = 0;
      intValue = -1;
    }

    v42->_programCode = intValue;
    if (idCopy)
    {
      v42->_hasProductId = 1;
      intValue2 = [idCopy intValue];
    }

    else
    {
      v42->_hasProductId = 0;
      intValue2 = -1;
    }

    v42->_productId = intValue2;
    objc_storeStrong(&v42->_systemBuild, build);
    if (statusCopy)
    {
      v42->_hasDataSharingOptInStatus = 1;
      intValue3 = [statusCopy intValue];
    }

    else
    {
      v42->_hasDataSharingOptInStatus = 0;
      intValue3 = -1;
    }

    v42->_dataSharingOptInStatus = intValue3;
    if (interfaceCopy)
    {
      v42->_hasViewInterface = 1;
      intValue4 = [interfaceCopy intValue];
    }

    else
    {
      v42->_hasViewInterface = 0;
      intValue4 = -1;
    }

    v42->_viewInterface = intValue4;
    objc_storeStrong(&v42->_audioInterfaceVendorId, vendorId);
    objc_storeStrong(&v42->_audioInterfaceProductId, productId);
    if (locationCopy)
    {
      v42->_hasAsrLocation = 1;
      intValue5 = [locationCopy intValue];
    }

    else
    {
      v42->_hasAsrLocation = 0;
      intValue5 = -1;
    }

    v42->_asrLocation = intValue5;
    if (nlLocationCopy)
    {
      v42->_hasNlLocation = 1;
      intValue6 = [nlLocationCopy intValue];
    }

    else
    {
      v42->_hasNlLocation = 0;
      intValue6 = -1;
    }

    v42->_nlLocation = intValue6;
    objc_storeStrong(&v42->_siriInputLocale, locale);
    objc_storeStrong(&v42->_dictationLocale, dictationLocale);
    objc_storeStrong(&v42->_subDomain, domain);
    if (countCopy)
    {
      v42->_hasTotalTurnCount = 1;
      unsignedIntValue = [countCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v42->_hasTotalTurnCount = 0;
    }

    v42->_totalTurnCount = unsignedIntValue;
    unsignedIntValue2 = turnCountCopy;
    if (turnCountCopy)
    {
      v42->_hasValidTurnCount = 1;
      unsignedIntValue2 = [turnCountCopy unsignedIntValue];
    }

    else
    {
      v42->_hasValidTurnCount = 0;
    }

    v42->_validTurnCount = unsignedIntValue2;
    unsignedIntValue3 = startedCopy;
    if (startedCopy)
    {
      v42->_hasSiriTasksStarted = 1;
      unsignedIntValue3 = [startedCopy unsignedIntValue];
    }

    else
    {
      v42->_hasSiriTasksStarted = 0;
    }

    v42->_siriTasksStarted = unsignedIntValue3;
    unsignedIntValue4 = completedCopy;
    if (completedCopy)
    {
      v42->_hasSiriTasksCompleted = 1;
      unsignedIntValue4 = [completedCopy unsignedIntValue];
    }

    else
    {
      v42->_hasSiriTasksCompleted = 0;
    }

    v42->_siriTasksCompleted = unsignedIntValue4;
    unsignedIntValue5 = tasksStartedCopy;
    if (tasksStartedCopy)
    {
      v42->_hasFlowTasksStarted = 1;
      unsignedIntValue5 = [tasksStartedCopy unsignedIntValue];
    }

    else
    {
      v42->_hasFlowTasksStarted = 0;
    }

    v42->_flowTasksStarted = unsignedIntValue5;
    unsignedIntValue6 = tasksCompletedCopy;
    if (tasksCompletedCopy)
    {
      v42->_hasFlowTasksCompleted = 1;
      unsignedIntValue6 = [tasksCompletedCopy unsignedIntValue];
    }

    else
    {
      v42->_hasFlowTasksCompleted = 0;
    }

    v42->_flowTasksCompleted = unsignedIntValue6;
    unsignedIntValue7 = requestCountCopy;
    if (requestCountCopy)
    {
      v42->_hasReliabilityRequestCount = 1;
      unsignedIntValue7 = [requestCountCopy unsignedIntValue];
    }

    else
    {
      v42->_hasReliabilityRequestCount = 0;
    }

    v42->_reliabilityRequestCount = unsignedIntValue7;
    unsignedIntValue8 = reliabilityTurnCountCopy;
    if (reliabilityTurnCountCopy)
    {
      v42->_hasReliabilityTurnCount = 1;
      unsignedIntValue8 = [reliabilityTurnCountCopy unsignedIntValue];
    }

    else
    {
      v42->_hasReliabilityTurnCount = 0;
    }

    v42->_reliabilityTurnCount = unsignedIntValue8;
    unsignedIntValue9 = errorCountCopy;
    if (errorCountCopy)
    {
      v42->_hasClientErrorCount = 1;
      unsignedIntValue9 = [errorCountCopy unsignedIntValue];
    }

    else
    {
      v42->_hasClientErrorCount = 0;
    }

    v42->_clientErrorCount = unsignedIntValue9;
    unsignedIntValue10 = responseCountCopy;
    if (responseCountCopy)
    {
      v42->_hasUndesiredResponseCount = 1;
      unsignedIntValue10 = [responseCountCopy unsignedIntValue];
    }

    else
    {
      v42->_hasUndesiredResponseCount = 0;
    }

    v42->_undesiredResponseCount = unsignedIntValue10;
    unsignedIntValue11 = fatalResponseCountCopy;
    if (fatalResponseCountCopy)
    {
      v42->_hasFatalResponseCount = 1;
      unsignedIntValue11 = [fatalResponseCountCopy unsignedIntValue];
    }

    else
    {
      v42->_hasFatalResponseCount = 0;
    }

    v42->_fatalResponseCount = unsignedIntValue11;
    unsignedIntValue12 = failureResponseCountCopy;
    if (failureResponseCountCopy)
    {
      v42->_hasFailureResponseCount = 1;
      unsignedIntValue12 = [failureResponseCountCopy unsignedIntValue];
    }

    else
    {
      v42->_hasFailureResponseCount = 0;
    }

    v42->_failureResponseCount = unsignedIntValue12;
    unsignedIntValue13 = unavailableResponseCountCopy;
    if (unavailableResponseCountCopy)
    {
      v42->_hasSiriUnavailableResponseCount = 1;
      unsignedIntValue13 = [unavailableResponseCountCopy unsignedIntValue];
    }

    else
    {
      v42->_hasSiriUnavailableResponseCount = 0;
    }

    v42->_siriUnavailableResponseCount = unsignedIntValue13;
    unsignedIntValue14 = asrTurnCountCopy;
    if (asrTurnCountCopy)
    {
      v42->_hasAsrTurnCount = 1;
      unsignedIntValue14 = [asrTurnCountCopy unsignedIntValue];
    }

    else
    {
      v42->_hasAsrTurnCount = 0;
    }

    v42->_asrTurnCount = unsignedIntValue14;
    objc_storeStrong(&v42->_siriResponseId, responseId);
    unsignedIntValue15 = categoryCopy;
    if (categoryCopy)
    {
      v42->_hasResponseCategory = 1;
      unsignedIntValue15 = [categoryCopy unsignedIntValue];
    }

    else
    {
      v42->_hasResponseCategory = 0;
    }

    v42->_responseCategory = unsignedIntValue15;
    if (requestCopy)
    {
      v42->_hasIsIntelligenceEngineRequest = 1;
      v42->_isIntelligenceEngineRequest = [requestCopy BOOLValue];
    }

    else
    {
      v42->_hasIsIntelligenceEngineRequest = 0;
      v42->_isIntelligenceEngineRequest = 0;
    }

    objc_storeStrong(&v42->_intelligenceEngineRouting, routing);
    if (sourceCopy)
    {
      v42->_hasInvocationSource = 1;
      unsignedIntValue16 = [sourceCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue16 = 0;
      v42->_hasInvocationSource = 0;
    }

    v42->_invocationSource = unsignedIntValue16;
  }

  return v42;
}

+ (id)protoFields
{
  v37[33] = *MEMORY[0x1E69E9840];
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventMetadata" number:1 type:14 subMessageClass:objc_opt_class()];
  v37[0] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceType" number:2 type:13 subMessageClass:0];
  v37[1] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"programCode" number:3 type:2 subMessageClass:0];
  v37[2] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"productId" number:4 type:2 subMessageClass:0];
  v37[3] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"systemBuild" number:5 type:13 subMessageClass:0];
  v37[4] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dataSharingOptInStatus" number:6 type:2 subMessageClass:0];
  v37[5] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"viewInterface" number:7 type:2 subMessageClass:0];
  v37[6] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"audioInterfaceVendorId" number:8 type:13 subMessageClass:0];
  v37[7] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"audioInterfaceProductId" number:9 type:13 subMessageClass:0];
  v37[8] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"asrLocation" number:10 type:2 subMessageClass:0];
  v37[9] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nlLocation" number:11 type:2 subMessageClass:0];
  v37[10] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriInputLocale" number:12 type:14 subMessageClass:objc_opt_class()];
  v37[11] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dictationLocale" number:13 type:14 subMessageClass:objc_opt_class()];
  v37[12] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subDomain" number:14 type:13 subMessageClass:0];
  v37[13] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalTurnCount" number:15 type:4 subMessageClass:0];
  v37[14] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"validTurnCount" number:16 type:4 subMessageClass:0];
  v37[15] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriTasksStarted" number:17 type:4 subMessageClass:0];
  v37[16] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriTasksCompleted" number:18 type:4 subMessageClass:0];
  v37[17] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"flowTasksStarted" number:19 type:4 subMessageClass:0];
  v37[18] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"flowTasksCompleted" number:20 type:4 subMessageClass:0];
  v37[19] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reliabilityRequestCount" number:21 type:4 subMessageClass:0];
  v37[20] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reliabilityTurnCount" number:22 type:4 subMessageClass:0];
  v37[21] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientErrorCount" number:23 type:4 subMessageClass:0];
  v37[22] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"undesiredResponseCount" number:24 type:4 subMessageClass:0];
  v37[23] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fatalResponseCount" number:25 type:4 subMessageClass:0];
  v37[24] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"failureResponseCount" number:26 type:4 subMessageClass:0];
  v37[25] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriUnavailableResponseCount" number:27 type:4 subMessageClass:0];
  v37[26] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"asrTurnCount" number:28 type:4 subMessageClass:0];
  v37[27] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"siriResponseId" number:29 type:13 subMessageClass:0];
  v37[28] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"responseCategory" number:30 type:4 subMessageClass:0];
  v37[29] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isIntelligenceEngineRequest" number:31 type:12 subMessageClass:0];
  v37[30] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"intelligenceEngineRouting" number:32 type:4 subMessageClass:0];
  v37[31] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"invocationSource" number:33 type:4 subMessageClass:0];
  v37[32] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:33];

  return v11;
}

+ (id)columns
{
  v37[33] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"eventMetadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_370];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceType" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"programCode" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"productId" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"systemBuild" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dataSharingOptInStatus" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"viewInterface" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:2 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"audioInterfaceVendorId" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"audioInterfaceProductId" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"asrLocation" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:2 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nlLocation" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:2 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"siriInputLocale_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_372];
  v25 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"dictationLocale_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_374];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subDomain" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalTurnCount" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:4 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"validTurnCount" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:4 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"siriTasksStarted" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:4 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"siriTasksCompleted" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:4 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"flowTasksStarted" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:4 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"flowTasksCompleted" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:4 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reliabilityRequestCount" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:4 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reliabilityTurnCount" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:4 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientErrorCount" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:4 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"undesiredResponseCount" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fatalResponseCount" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"failureResponseCount" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:4 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"siriUnavailableResponseCount" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:4 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"asrTurnCount" dataType:0 requestOnly:0 fieldNumber:28 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"siriResponseId" dataType:2 requestOnly:0 fieldNumber:29 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"responseCategory" dataType:0 requestOnly:0 fieldNumber:30 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isIntelligenceEngineRequest" dataType:0 requestOnly:0 fieldNumber:31 protoDataType:12 convertedType:0];
  v11 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"intelligenceEngineRouting_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_376];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"invocationSource" dataType:0 requestOnly:0 fieldNumber:33 protoDataType:4 convertedType:0];
  v37[0] = v14;
  v37[1] = v36;
  v37[2] = v35;
  v37[3] = v34;
  v37[4] = v33;
  v37[5] = v32;
  v37[6] = v31;
  v37[7] = v30;
  v37[8] = v29;
  v37[9] = v28;
  v37[10] = v27;
  v37[11] = v26;
  v37[12] = v25;
  v37[13] = v24;
  v37[14] = v23;
  v37[15] = v22;
  v37[16] = v21;
  v37[17] = v20;
  v37[18] = v19;
  v37[19] = v18;
  v37[20] = v17;
  v37[21] = v16;
  v37[22] = v15;
  v37[23] = v2;
  v37[24] = v3;
  v37[25] = v4;
  v37[26] = v13;
  v37[27] = v12;
  v37[28] = v5;
  v37[29] = v6;
  v37[30] = v7;
  v37[31] = v11;
  v37[32] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:33];

  return v10;
}

id __43__BMSiriOnDeviceDigestUsageMetrics_columns__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _intelligenceEngineRoutingJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __43__BMSiriOnDeviceDigestUsageMetrics_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 dictationLocale];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __43__BMSiriOnDeviceDigestUsageMetrics_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 siriInputLocale];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __43__BMSiriOnDeviceDigestUsageMetrics_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 eventMetadata];
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

    v8 = [[BMSiriOnDeviceDigestUsageMetrics alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end