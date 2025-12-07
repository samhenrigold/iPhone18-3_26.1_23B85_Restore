@interface BMSpanEvent
+ (BMSpanEvent)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)columns;
+ (id)protoFields;
- (BMSpanEvent)initWithDeviceIdentifier:(id)identifier testKey:(id)key version:(id)version name:(id)name trialDeploymentId:(id)id trialExperimentId:(id)experimentId trialTreatmentId:(id)treatmentId traceId:(id)self0 parentSpanId:(id)self1 spanId:(id)self2 privatizedStartTime:(id)self3 privatizedEndTime:(id)self4 intervalInMilliSeconds:(id)self5 errorString:(id)self6 errorCode:(id)self7 processName:(id)self8 startMemoryLevelInKB:(id)self9 endMemoryLevelInKB:(id)kB memoryLevelDeltaInKB:(id)inKB gcdQueueName:(id)queueName qosClassName:(id)className relativePriority:(id)priority projectName:(id)projectName attributes:(id)attributes infoEvents:(id)events warningEvents:(id)warningEvents debugEvents:(id)debugEvents errorEvents:(id)identifier0;
- (BMSpanEvent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_attributesJSONArray;
- (id)_debugEventsJSONArray;
- (id)_errorEventsJSONArray;
- (id)_infoEventsJSONArray;
- (id)_warningEventsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSpanEvent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    deviceIdentifier = [(BMSpanEvent *)self deviceIdentifier];
    deviceIdentifier2 = [v5 deviceIdentifier];
    v8 = deviceIdentifier2;
    if (deviceIdentifier == deviceIdentifier2)
    {
    }

    else
    {
      deviceIdentifier3 = [(BMSpanEvent *)self deviceIdentifier];
      deviceIdentifier4 = [v5 deviceIdentifier];
      v11 = [deviceIdentifier3 isEqual:deviceIdentifier4];

      if (!v11)
      {
        goto LABEL_116;
      }
    }

    testKey = [(BMSpanEvent *)self testKey];
    testKey2 = [v5 testKey];
    v15 = testKey2;
    if (testKey == testKey2)
    {
    }

    else
    {
      testKey3 = [(BMSpanEvent *)self testKey];
      testKey4 = [v5 testKey];
      v18 = [testKey3 isEqual:testKey4];

      if (!v18)
      {
        goto LABEL_116;
      }
    }

    version = [(BMSpanEvent *)self version];
    version2 = [v5 version];
    v21 = version2;
    if (version == version2)
    {
    }

    else
    {
      version3 = [(BMSpanEvent *)self version];
      version4 = [v5 version];
      v24 = [version3 isEqual:version4];

      if (!v24)
      {
        goto LABEL_116;
      }
    }

    name = [(BMSpanEvent *)self name];
    name2 = [v5 name];
    v27 = name2;
    if (name == name2)
    {
    }

    else
    {
      name3 = [(BMSpanEvent *)self name];
      name4 = [v5 name];
      v30 = [name3 isEqual:name4];

      if (!v30)
      {
        goto LABEL_116;
      }
    }

    trialDeploymentId = [(BMSpanEvent *)self trialDeploymentId];
    trialDeploymentId2 = [v5 trialDeploymentId];
    v33 = trialDeploymentId2;
    if (trialDeploymentId == trialDeploymentId2)
    {
    }

    else
    {
      trialDeploymentId3 = [(BMSpanEvent *)self trialDeploymentId];
      trialDeploymentId4 = [v5 trialDeploymentId];
      v36 = [trialDeploymentId3 isEqual:trialDeploymentId4];

      if (!v36)
      {
        goto LABEL_116;
      }
    }

    trialExperimentId = [(BMSpanEvent *)self trialExperimentId];
    trialExperimentId2 = [v5 trialExperimentId];
    v39 = trialExperimentId2;
    if (trialExperimentId == trialExperimentId2)
    {
    }

    else
    {
      trialExperimentId3 = [(BMSpanEvent *)self trialExperimentId];
      trialExperimentId4 = [v5 trialExperimentId];
      v42 = [trialExperimentId3 isEqual:trialExperimentId4];

      if (!v42)
      {
        goto LABEL_116;
      }
    }

    trialTreatmentId = [(BMSpanEvent *)self trialTreatmentId];
    trialTreatmentId2 = [v5 trialTreatmentId];
    v45 = trialTreatmentId2;
    if (trialTreatmentId == trialTreatmentId2)
    {
    }

    else
    {
      trialTreatmentId3 = [(BMSpanEvent *)self trialTreatmentId];
      trialTreatmentId4 = [v5 trialTreatmentId];
      v48 = [trialTreatmentId3 isEqual:trialTreatmentId4];

      if (!v48)
      {
        goto LABEL_116;
      }
    }

    traceId = [(BMSpanEvent *)self traceId];
    traceId2 = [v5 traceId];
    v51 = traceId2;
    if (traceId == traceId2)
    {
    }

    else
    {
      traceId3 = [(BMSpanEvent *)self traceId];
      traceId4 = [v5 traceId];
      v54 = [traceId3 isEqual:traceId4];

      if (!v54)
      {
        goto LABEL_116;
      }
    }

    parentSpanId = [(BMSpanEvent *)self parentSpanId];
    parentSpanId2 = [v5 parentSpanId];
    v57 = parentSpanId2;
    if (parentSpanId == parentSpanId2)
    {
    }

    else
    {
      parentSpanId3 = [(BMSpanEvent *)self parentSpanId];
      parentSpanId4 = [v5 parentSpanId];
      v60 = [parentSpanId3 isEqual:parentSpanId4];

      if (!v60)
      {
        goto LABEL_116;
      }
    }

    spanId = [(BMSpanEvent *)self spanId];
    spanId2 = [v5 spanId];
    v63 = spanId2;
    if (spanId == spanId2)
    {
    }

    else
    {
      spanId3 = [(BMSpanEvent *)self spanId];
      spanId4 = [v5 spanId];
      v66 = [spanId3 isEqual:spanId4];

      if (!v66)
      {
        goto LABEL_116;
      }
    }

    if (-[BMSpanEvent hasPrivatizedStartTime](self, "hasPrivatizedStartTime") || [v5 hasPrivatizedStartTime])
    {
      if (![(BMSpanEvent *)self hasPrivatizedStartTime])
      {
        goto LABEL_116;
      }

      if (![v5 hasPrivatizedStartTime])
      {
        goto LABEL_116;
      }

      privatizedStartTime = [(BMSpanEvent *)self privatizedStartTime];
      if (privatizedStartTime != [v5 privatizedStartTime])
      {
        goto LABEL_116;
      }
    }

    if (-[BMSpanEvent hasPrivatizedEndTime](self, "hasPrivatizedEndTime") || [v5 hasPrivatizedEndTime])
    {
      if (![(BMSpanEvent *)self hasPrivatizedEndTime])
      {
        goto LABEL_116;
      }

      if (![v5 hasPrivatizedEndTime])
      {
        goto LABEL_116;
      }

      privatizedEndTime = [(BMSpanEvent *)self privatizedEndTime];
      if (privatizedEndTime != [v5 privatizedEndTime])
      {
        goto LABEL_116;
      }
    }

    if (-[BMSpanEvent hasIntervalInMilliSeconds](self, "hasIntervalInMilliSeconds") || [v5 hasIntervalInMilliSeconds])
    {
      if (![(BMSpanEvent *)self hasIntervalInMilliSeconds])
      {
        goto LABEL_116;
      }

      if (![v5 hasIntervalInMilliSeconds])
      {
        goto LABEL_116;
      }

      intervalInMilliSeconds = [(BMSpanEvent *)self intervalInMilliSeconds];
      if (intervalInMilliSeconds != [v5 intervalInMilliSeconds])
      {
        goto LABEL_116;
      }
    }

    errorString = [(BMSpanEvent *)self errorString];
    errorString2 = [v5 errorString];
    v72 = errorString2;
    if (errorString == errorString2)
    {
    }

    else
    {
      errorString3 = [(BMSpanEvent *)self errorString];
      errorString4 = [v5 errorString];
      v75 = [errorString3 isEqual:errorString4];

      if (!v75)
      {
        goto LABEL_116;
      }
    }

    if (-[BMSpanEvent hasErrorCode](self, "hasErrorCode") || [v5 hasErrorCode])
    {
      if (![(BMSpanEvent *)self hasErrorCode])
      {
        goto LABEL_116;
      }

      if (![v5 hasErrorCode])
      {
        goto LABEL_116;
      }

      errorCode = [(BMSpanEvent *)self errorCode];
      if (errorCode != [v5 errorCode])
      {
        goto LABEL_116;
      }
    }

    processName = [(BMSpanEvent *)self processName];
    processName2 = [v5 processName];
    v79 = processName2;
    if (processName == processName2)
    {
    }

    else
    {
      processName3 = [(BMSpanEvent *)self processName];
      processName4 = [v5 processName];
      v82 = [processName3 isEqual:processName4];

      if (!v82)
      {
        goto LABEL_116;
      }
    }

    if (-[BMSpanEvent hasStartMemoryLevelInKB](self, "hasStartMemoryLevelInKB") || [v5 hasStartMemoryLevelInKB])
    {
      if (![(BMSpanEvent *)self hasStartMemoryLevelInKB])
      {
        goto LABEL_116;
      }

      if (![v5 hasStartMemoryLevelInKB])
      {
        goto LABEL_116;
      }

      startMemoryLevelInKB = [(BMSpanEvent *)self startMemoryLevelInKB];
      if (startMemoryLevelInKB != [v5 startMemoryLevelInKB])
      {
        goto LABEL_116;
      }
    }

    if (-[BMSpanEvent hasEndMemoryLevelInKB](self, "hasEndMemoryLevelInKB") || [v5 hasEndMemoryLevelInKB])
    {
      if (![(BMSpanEvent *)self hasEndMemoryLevelInKB])
      {
        goto LABEL_116;
      }

      if (![v5 hasEndMemoryLevelInKB])
      {
        goto LABEL_116;
      }

      endMemoryLevelInKB = [(BMSpanEvent *)self endMemoryLevelInKB];
      if (endMemoryLevelInKB != [v5 endMemoryLevelInKB])
      {
        goto LABEL_116;
      }
    }

    if (-[BMSpanEvent hasMemoryLevelDeltaInKB](self, "hasMemoryLevelDeltaInKB") || [v5 hasMemoryLevelDeltaInKB])
    {
      if (![(BMSpanEvent *)self hasMemoryLevelDeltaInKB])
      {
        goto LABEL_116;
      }

      if (![v5 hasMemoryLevelDeltaInKB])
      {
        goto LABEL_116;
      }

      memoryLevelDeltaInKB = [(BMSpanEvent *)self memoryLevelDeltaInKB];
      if (memoryLevelDeltaInKB != [v5 memoryLevelDeltaInKB])
      {
        goto LABEL_116;
      }
    }

    gcdQueueName = [(BMSpanEvent *)self gcdQueueName];
    gcdQueueName2 = [v5 gcdQueueName];
    v88 = gcdQueueName2;
    if (gcdQueueName == gcdQueueName2)
    {
    }

    else
    {
      gcdQueueName3 = [(BMSpanEvent *)self gcdQueueName];
      gcdQueueName4 = [v5 gcdQueueName];
      v91 = [gcdQueueName3 isEqual:gcdQueueName4];

      if (!v91)
      {
        goto LABEL_116;
      }
    }

    qosClassName = [(BMSpanEvent *)self qosClassName];
    qosClassName2 = [v5 qosClassName];
    v94 = qosClassName2;
    if (qosClassName == qosClassName2)
    {
    }

    else
    {
      qosClassName3 = [(BMSpanEvent *)self qosClassName];
      qosClassName4 = [v5 qosClassName];
      v97 = [qosClassName3 isEqual:qosClassName4];

      if (!v97)
      {
        goto LABEL_116;
      }
    }

    relativePriority = [(BMSpanEvent *)self relativePriority];
    relativePriority2 = [v5 relativePriority];
    v100 = relativePriority2;
    if (relativePriority == relativePriority2)
    {
    }

    else
    {
      relativePriority3 = [(BMSpanEvent *)self relativePriority];
      relativePriority4 = [v5 relativePriority];
      v103 = [relativePriority3 isEqual:relativePriority4];

      if (!v103)
      {
        goto LABEL_116;
      }
    }

    projectName = [(BMSpanEvent *)self projectName];
    projectName2 = [v5 projectName];
    v106 = projectName2;
    if (projectName == projectName2)
    {
    }

    else
    {
      projectName3 = [(BMSpanEvent *)self projectName];
      projectName4 = [v5 projectName];
      v109 = [projectName3 isEqual:projectName4];

      if (!v109)
      {
        goto LABEL_116;
      }
    }

    attributes = [(BMSpanEvent *)self attributes];
    attributes2 = [v5 attributes];
    v112 = attributes2;
    if (attributes == attributes2)
    {
    }

    else
    {
      attributes3 = [(BMSpanEvent *)self attributes];
      attributes4 = [v5 attributes];
      v115 = [attributes3 isEqual:attributes4];

      if (!v115)
      {
        goto LABEL_116;
      }
    }

    infoEvents = [(BMSpanEvent *)self infoEvents];
    infoEvents2 = [v5 infoEvents];
    v118 = infoEvents2;
    if (infoEvents == infoEvents2)
    {
    }

    else
    {
      infoEvents3 = [(BMSpanEvent *)self infoEvents];
      infoEvents4 = [v5 infoEvents];
      v121 = [infoEvents3 isEqual:infoEvents4];

      if (!v121)
      {
        goto LABEL_116;
      }
    }

    warningEvents = [(BMSpanEvent *)self warningEvents];
    warningEvents2 = [v5 warningEvents];
    v124 = warningEvents2;
    if (warningEvents == warningEvents2)
    {
    }

    else
    {
      warningEvents3 = [(BMSpanEvent *)self warningEvents];
      warningEvents4 = [v5 warningEvents];
      v127 = [warningEvents3 isEqual:warningEvents4];

      if (!v127)
      {
        goto LABEL_116;
      }
    }

    debugEvents = [(BMSpanEvent *)self debugEvents];
    debugEvents2 = [v5 debugEvents];
    v130 = debugEvents2;
    if (debugEvents == debugEvents2)
    {
    }

    else
    {
      debugEvents3 = [(BMSpanEvent *)self debugEvents];
      debugEvents4 = [v5 debugEvents];
      v133 = [debugEvents3 isEqual:debugEvents4];

      if (!v133)
      {
LABEL_116:
        v12 = 0;
LABEL_117:

        goto LABEL_118;
      }
    }

    errorEvents = [(BMSpanEvent *)self errorEvents];
    errorEvents2 = [v5 errorEvents];
    if (errorEvents == errorEvents2)
    {
      v12 = 1;
    }

    else
    {
      errorEvents3 = [(BMSpanEvent *)self errorEvents];
      errorEvents4 = [v5 errorEvents];
      v12 = [errorEvents3 isEqual:errorEvents4];
    }

    goto LABEL_117;
  }

  v12 = 0;
LABEL_118:

  return v12;
}

- (id)jsonDictionary
{
  v90[28] = *MEMORY[0x1E69E9840];
  deviceIdentifier = [(BMSpanEvent *)self deviceIdentifier];
  testKey = [(BMSpanEvent *)self testKey];
  version = [(BMSpanEvent *)self version];
  name = [(BMSpanEvent *)self name];
  trialDeploymentId = [(BMSpanEvent *)self trialDeploymentId];
  trialExperimentId = [(BMSpanEvent *)self trialExperimentId];
  trialTreatmentId = [(BMSpanEvent *)self trialTreatmentId];
  traceId = [(BMSpanEvent *)self traceId];
  parentSpanId = [(BMSpanEvent *)self parentSpanId];
  spanId = [(BMSpanEvent *)self spanId];
  if ([(BMSpanEvent *)self hasPrivatizedStartTime])
  {
    v85 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent privatizedStartTime](self, "privatizedStartTime")}];
  }

  else
  {
    v85 = 0;
  }

  if ([(BMSpanEvent *)self hasPrivatizedEndTime])
  {
    v84 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent privatizedEndTime](self, "privatizedEndTime")}];
  }

  else
  {
    v84 = 0;
  }

  if ([(BMSpanEvent *)self hasIntervalInMilliSeconds])
  {
    v83 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent intervalInMilliSeconds](self, "intervalInMilliSeconds")}];
  }

  else
  {
    v83 = 0;
  }

  errorString = [(BMSpanEvent *)self errorString];
  if ([(BMSpanEvent *)self hasErrorCode])
  {
    v81 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent errorCode](self, "errorCode")}];
  }

  else
  {
    v81 = 0;
  }

  processName = [(BMSpanEvent *)self processName];
  if ([(BMSpanEvent *)self hasStartMemoryLevelInKB])
  {
    v79 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent startMemoryLevelInKB](self, "startMemoryLevelInKB")}];
  }

  else
  {
    v79 = 0;
  }

  if ([(BMSpanEvent *)self hasEndMemoryLevelInKB])
  {
    v78 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent endMemoryLevelInKB](self, "endMemoryLevelInKB")}];
  }

  else
  {
    v78 = 0;
  }

  if ([(BMSpanEvent *)self hasMemoryLevelDeltaInKB])
  {
    v77 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent memoryLevelDeltaInKB](self, "memoryLevelDeltaInKB")}];
  }

  else
  {
    v77 = 0;
  }

  gcdQueueName = [(BMSpanEvent *)self gcdQueueName];
  qosClassName = [(BMSpanEvent *)self qosClassName];
  relativePriority = [(BMSpanEvent *)self relativePriority];
  projectName = [(BMSpanEvent *)self projectName];
  _attributesJSONArray = [(BMSpanEvent *)self _attributesJSONArray];
  _infoEventsJSONArray = [(BMSpanEvent *)self _infoEventsJSONArray];
  _warningEventsJSONArray = [(BMSpanEvent *)self _warningEventsJSONArray];
  _debugEventsJSONArray = [(BMSpanEvent *)self _debugEventsJSONArray];
  _errorEventsJSONArray = [(BMSpanEvent *)self _errorEventsJSONArray];
  v89[0] = @"deviceIdentifier";
  null = deviceIdentifier;
  if (!deviceIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v60 = null;
  v90[0] = null;
  v89[1] = @"testKey";
  null2 = testKey;
  if (!testKey)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = null2;
  v90[1] = null2;
  v89[2] = @"version";
  null3 = version;
  if (!version)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = null3;
  v90[2] = null3;
  v89[3] = @"name";
  null4 = name;
  if (!name)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = null4;
  v90[3] = null4;
  v89[4] = @"trialDeploymentId";
  null5 = trialDeploymentId;
  if (!trialDeploymentId)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = null5;
  v90[4] = null5;
  v89[5] = @"trialExperimentId";
  null6 = trialExperimentId;
  if (!trialExperimentId)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = null6;
  v90[5] = null6;
  v89[6] = @"trialTreatmentId";
  null7 = trialTreatmentId;
  if (!trialTreatmentId)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = null7;
  v90[6] = null7;
  v89[7] = @"traceId";
  null8 = traceId;
  if (!traceId)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v90[7] = null8;
  v89[8] = @"parentSpanId";
  null9 = parentSpanId;
  if (!parentSpanId)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v90[8] = null9;
  v89[9] = @"spanId";
  null10 = spanId;
  if (!spanId)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = null10;
  v90[9] = null10;
  v89[10] = @"privatizedStartTime";
  null11 = v85;
  if (!v85)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = null11;
  v90[10] = null11;
  v89[11] = @"privatizedEndTime";
  null12 = v84;
  if (!v84)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = version;
  v63 = null12;
  v90[11] = null12;
  v89[12] = @"intervalInMilliSeconds";
  null13 = v83;
  if (!v83)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null13;
  v90[12] = null13;
  v89[13] = @"errorString";
  null14 = errorString;
  if (!errorString)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = null14;
  v90[13] = null14;
  v89[14] = @"errorCode";
  null15 = v81;
  if (!v81)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = null15;
  v90[14] = null15;
  v89[15] = @"processName";
  null16 = processName;
  if (!processName)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = null16;
  v90[15] = null16;
  v89[16] = @"startMemoryLevelInKB";
  null17 = v79;
  if (!v79)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = null17;
  v90[16] = null17;
  v89[17] = @"endMemoryLevelInKB";
  null18 = v78;
  if (!v78)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = testKey;
  v46 = null18;
  v90[17] = null18;
  v89[18] = @"memoryLevelDeltaInKB";
  null19 = v77;
  if (!v77)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = name;
  v45 = null19;
  v90[18] = null19;
  v89[19] = @"gcdQueueName";
  null20 = gcdQueueName;
  if (!gcdQueueName)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = null20;
  v90[19] = null20;
  v89[20] = @"qosClassName";
  null21 = qosClassName;
  if (!qosClassName)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = trialTreatmentId;
  v43 = null21;
  v90[20] = null21;
  v89[21] = @"relativePriority";
  null22 = relativePriority;
  if (!relativePriority)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = _errorEventsJSONArray;
  v42 = null22;
  v90[21] = null22;
  v89[22] = @"projectName";
  null23 = projectName;
  if (!projectName)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v53 = null8;
  v90[22] = null23;
  v89[23] = @"attributes";
  null24 = _attributesJSONArray;
  if (!_attributesJSONArray)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v90[23] = null24;
  v89[24] = @"infoEvents";
  null25 = _infoEventsJSONArray;
  if (!_infoEventsJSONArray)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v90[24] = null25;
  v89[25] = @"warningEvents";
  null26 = _warningEventsJSONArray;
  if (!_warningEventsJSONArray)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = null9;
  v90[25] = null26;
  v89[26] = @"debugEvents";
  null27 = _debugEventsJSONArray;
  if (!_debugEventsJSONArray)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v90[26] = null27;
  v89[27] = @"errorEvents";
  null28 = v68;
  if (!v68)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v90[27] = null28;
  v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:28];
  if (!v68)
  {
  }

  v40 = v24;
  if (!_debugEventsJSONArray)
  {

    v40 = v24;
  }

  if (!_warningEventsJSONArray)
  {

    v40 = v24;
  }

  if (!_infoEventsJSONArray)
  {

    v40 = v24;
  }

  if (!_attributesJSONArray)
  {

    v40 = v24;
  }

  if (!projectName)
  {

    v40 = v24;
  }

  if (!relativePriority)
  {

    v40 = v24;
  }

  if (!qosClassName)
  {

    v40 = v24;
  }

  if (!gcdQueueName)
  {

    v40 = v24;
  }

  if (!v77)
  {

    v40 = v24;
  }

  if (!v78)
  {

    v40 = v24;
  }

  if (!v79)
  {

    v40 = v24;
  }

  if (!processName)
  {

    v40 = v24;
  }

  if (!v81)
  {

    v40 = v24;
  }

  if (!errorString)
  {

    v40 = v24;
  }

  if (!v83)
  {
  }

  if (!v84)
  {
  }

  if (!v85)
  {
  }

  if (!spanId)
  {
  }

  if (!parentSpanId)
  {
  }

  if (traceId)
  {
    if (v65)
    {
      goto LABEL_120;
    }
  }

  else
  {

    if (v65)
    {
LABEL_120:
      if (trialExperimentId)
      {
        goto LABEL_121;
      }

      goto LABEL_131;
    }
  }

  if (trialExperimentId)
  {
LABEL_121:
    if (trialDeploymentId)
    {
      goto LABEL_122;
    }

    goto LABEL_132;
  }

LABEL_131:

  if (trialDeploymentId)
  {
LABEL_122:
    if (v66)
    {
      goto LABEL_123;
    }

    goto LABEL_133;
  }

LABEL_132:

  if (v66)
  {
LABEL_123:
    if (v62)
    {
      goto LABEL_124;
    }

    goto LABEL_134;
  }

LABEL_133:

  if (v62)
  {
LABEL_124:
    if (v67)
    {
      goto LABEL_125;
    }

LABEL_135:

    if (deviceIdentifier)
    {
      goto LABEL_126;
    }

    goto LABEL_136;
  }

LABEL_134:

  if (!v67)
  {
    goto LABEL_135;
  }

LABEL_125:
  if (deviceIdentifier)
  {
    goto LABEL_126;
  }

LABEL_136:

LABEL_126:

  return v61;
}

- (id)_errorEventsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  errorEvents = [(BMSpanEvent *)self errorEvents];
  v5 = [errorEvents countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(errorEvents);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [errorEvents countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_debugEventsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  debugEvents = [(BMSpanEvent *)self debugEvents];
  v5 = [debugEvents countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(debugEvents);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [debugEvents countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_warningEventsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  warningEvents = [(BMSpanEvent *)self warningEvents];
  v5 = [warningEvents countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(warningEvents);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [warningEvents countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_infoEventsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  infoEvents = [(BMSpanEvent *)self infoEvents];
  v5 = [infoEvents countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(infoEvents);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [infoEvents countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_attributesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  attributes = [(BMSpanEvent *)self attributes];
  v5 = [attributes countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(attributes);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [attributes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMSpanEvent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v488[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"deviceIdentifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"testKey"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
LABEL_7:
      v11 = [dictionaryCopy objectForKeyedSubscript:@"version"];
      v381 = v8;
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v40 = 0;
            v27 = 0;
LABEL_378:
            v8 = v381;
            goto LABEL_379;
          }

          v367 = dictionaryCopy;
          v41 = v7;
          v42 = v9;
          v43 = v10;
          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v45 = *MEMORY[0x1E698F240];
          v483 = *MEMORY[0x1E696A578];
          v379 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"version"];
          v484 = v379;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v484 forKeys:&v483 count:1];
          v46 = v44;
          v10 = v43;
          v9 = v42;
          v7 = v41;
          dictionaryCopy = v367;
          v47 = [v46 initWithDomain:v45 code:2 userInfo:v12];
          v40 = 0;
          v27 = 0;
          *error = v47;
LABEL_377:

          goto LABEL_378;
        }

        v378 = v11;
      }

      else
      {
        v378 = 0;
      }

      v12 = [dictionaryCopy objectForKeyedSubscript:@"name"];
      v382 = v12;
      v380 = v10;
      errorCopy = error;
      if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v379 = 0;
            v27 = 0;
LABEL_376:
            v40 = v378;
            goto LABEL_377;
          }

          v360 = v7;
          selfCopy = self;
          v49 = objc_alloc(MEMORY[0x1E696ABC0]);
          v50 = *MEMORY[0x1E698F240];
          v481 = *MEMORY[0x1E696A578];
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
          v482 = v15;
          v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v482 forKeys:&v481 count:1];
          v52 = v49;
          self = selfCopy;
          v7 = v360;
          v53 = v50;
          v54 = v51;
          v379 = 0;
          v27 = 0;
          *errorCopy = [v52 initWithDomain:v53 code:2 userInfo:v51];
          goto LABEL_375;
        }

        v13 = v9;
        errorCopy3 = error;
        v379 = v12;
      }

      else
      {
        v13 = v9;
        errorCopy3 = error;
        v379 = 0;
      }

      v15 = [dictionaryCopy objectForKeyedSubscript:@"trialDeploymentId"];
      selfCopy2 = self;
      if (!v15)
      {
        v16 = v7;
        v17 = v11;
        v373 = 0;
        goto LABEL_27;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v7;
        v17 = v11;
        v373 = v15;
        v15 = 0;
        goto LABEL_27;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v7;
        v17 = v11;
        v373 = v15;
        v15 = v15;
LABEL_27:
        v18 = [dictionaryCopy objectForKeyedSubscript:@"trialExperimentId"];
        v371 = v15;
        v376 = v18;
        if (!v18 || (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v374 = 0;
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v374 = v19;
LABEL_30:
          v20 = [dictionaryCopy objectForKeyedSubscript:@"trialTreatmentId"];
          v11 = v17;
          v372 = v20;
          if (v20)
          {
            v21 = v20;
            objc_opt_class();
            v7 = v16;
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v22 = v21;
LABEL_38:
                v28 = [dictionaryCopy objectForKeyedSubscript:@"traceId"];
                v366 = v28;
                if (v28 && (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (errorCopy3)
                    {
                      v369 = dictionaryCopy;
                      v351 = v13;
                      v342 = v11;
                      v97 = v22;
                      v98 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v99 = *MEMORY[0x1E698F240];
                      v473 = *MEMORY[0x1E696A578];
                      v100 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"traceId"];
                      v474 = v100;
                      v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v474 forKeys:&v473 count:1];
                      v102 = v98;
                      v103 = v100;
                      v22 = v97;
                      v10 = v380;
                      v11 = v342;
                      v9 = v351;
                      dictionaryCopy = v369;
                      v364 = v101;
                      v365 = 0;
                      v27 = 0;
                      *errorCopy = [v102 initWithDomain:v99 code:2 userInfo:?];
                      v54 = v373;
                      goto LABEL_370;
                    }

                    v365 = 0;
                    v27 = 0;
                    v54 = v373;
                    v9 = v13;
                    v10 = v380;
                    goto LABEL_371;
                  }

                  v365 = v29;
                }

                else
                {
                  v365 = 0;
                }

                v30 = [dictionaryCopy objectForKeyedSubscript:@"parentSpanId"];
                v364 = v30;
                if (v30 && (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (errorCopy3)
                    {
                      v352 = v13;
                      v343 = v11;
                      v104 = v22;
                      v105 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v106 = *MEMORY[0x1E698F240];
                      v471 = *MEMORY[0x1E696A578];
                      v346 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"parentSpanId"];
                      v472 = v346;
                      v107 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v472 forKeys:&v471 count:1];
                      v108 = v105;
                      v22 = v104;
                      v10 = v380;
                      v11 = v343;
                      v9 = v352;
                      v347 = v107;
                      v103 = 0;
                      v27 = 0;
                      *errorCopy = [v108 initWithDomain:v106 code:2 userInfo:?];
                      v54 = v373;
                      goto LABEL_369;
                    }

                    v103 = 0;
                    v27 = 0;
                    v54 = v373;
                    v9 = v13;
                    v10 = v380;
                    goto LABEL_370;
                  }

                  v341 = v31;
                }

                else
                {
                  v341 = 0;
                }

                v32 = [dictionaryCopy objectForKeyedSubscript:@"spanId"];
                v347 = v32;
                if (v32)
                {
                  v33 = v32;
                  objc_opt_class();
                  v9 = v13;
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    v10 = v380;
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (!errorCopy)
                      {
                        v346 = 0;
                        v27 = 0;
                        v54 = v373;
                        v103 = v341;
                        goto LABEL_369;
                      }

                      v344 = v11;
                      v109 = v22;
                      v110 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v111 = *MEMORY[0x1E698F240];
                      v469 = *MEMORY[0x1E696A578];
                      v339 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"spanId"];
                      v470 = v339;
                      v112 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v470 forKeys:&v469 count:1];
                      v113 = v110;
                      v22 = v109;
                      v10 = v380;
                      v11 = v344;
                      v340 = v112;
                      v346 = 0;
                      v27 = 0;
                      *errorCopy = [v113 initWithDomain:v111 code:2 userInfo:?];
                      goto LABEL_159;
                    }

                    v346 = v33;
LABEL_59:
                    v55 = [dictionaryCopy objectForKeyedSubscript:@"privatizedStartTime"];
                    v340 = v55;
                    v337 = v22;
                    if (!v55 || (v56 = v55, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v339 = 0;
                      goto LABEL_62;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v339 = v56;
LABEL_62:
                      v57 = [dictionaryCopy objectForKeyedSubscript:@"privatizedEndTime"];
                      v338 = v57;
                      if (!v57 || (v58 = v57, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v59 = 0;
                        goto LABEL_65;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v59 = v58;
LABEL_65:
                        v60 = [dictionaryCopy objectForKeyedSubscript:@"intervalInMilliSeconds"];
                        v336 = v60;
                        if (!v60 || (v61 = v60, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v334 = 0;
                          goto LABEL_68;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v334 = v61;
LABEL_68:
                          v62 = [dictionaryCopy objectForKeyedSubscript:@"errorString"];
                          v333 = v62;
                          if (!v62 || (v63 = v62, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v332 = 0;
                            goto LABEL_71;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v332 = v63;
LABEL_71:
                            v64 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
                            v331 = v64;
                            if (!v64 || (v65 = v64, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v329 = 0;
                              goto LABEL_74;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v329 = v65;
LABEL_74:
                              v66 = [dictionaryCopy objectForKeyedSubscript:@"processName"];
                              v328 = v66;
                              if (!v66 || (v67 = v66, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v327 = 0;
                                goto LABEL_77;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v327 = v67;
LABEL_77:
                                v68 = [dictionaryCopy objectForKeyedSubscript:@"startMemoryLevelInKB"];
                                v326 = v68;
                                if (!v68 || (v69 = v68, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v320 = 0;
                                  goto LABEL_80;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v320 = v69;
LABEL_80:
                                  v70 = [dictionaryCopy objectForKeyedSubscript:@"endMemoryLevelInKB"];
                                  v319 = v70;
                                  if (!v70 || (v71 = v70, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v318 = 0;
                                    goto LABEL_83;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v318 = v71;
LABEL_83:
                                    v72 = [dictionaryCopy objectForKeyedSubscript:@"memoryLevelDeltaInKB"];
                                    v316 = v72;
                                    if (!v72 || (v73 = v72, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v315 = 0;
                                      goto LABEL_86;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v315 = v73;
LABEL_86:
                                      v74 = [dictionaryCopy objectForKeyedSubscript:@"gcdQueueName"];
                                      v314 = v74;
                                      if (!v74 || (v75 = v74, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v313 = 0;
                                        goto LABEL_89;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v313 = v75;
LABEL_89:
                                        v76 = [dictionaryCopy objectForKeyedSubscript:@"qosClassName"];
                                        v312 = v76;
                                        if (!v76 || (v77 = v76, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v311 = 0;
                                          goto LABEL_92;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v311 = v77;
LABEL_92:
                                          v78 = [dictionaryCopy objectForKeyedSubscript:@"relativePriority"];
                                          v310 = v78;
                                          if (!v78 || (v79 = v78, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v309 = 0;
                                            goto LABEL_95;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v309 = v79;
LABEL_95:
                                            v80 = [dictionaryCopy objectForKeyedSubscript:@"projectName"];
                                            v307 = v80;
                                            if (!v80 || (v81 = v80, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v303 = v59;
                                              v306 = 0;
                                              goto LABEL_98;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v303 = v59;
                                              v306 = v81;
LABEL_98:
                                              v82 = [dictionaryCopy objectForKeyedSubscript:@"attributes"];
                                              null = [MEMORY[0x1E695DFB0] null];
                                              v84 = [v82 isEqual:null];

                                              if (v84)
                                              {

                                                v82 = 0;
                                              }

                                              else if (v82)
                                              {
                                                objc_opt_class();
                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                {
                                                  obj = v82;
                                                  if (!errorCopy)
                                                  {
                                                    v27 = 0;
                                                    v54 = v373;
                                                    v103 = v341;
                                                    v59 = v303;
                                                    goto LABEL_355;
                                                  }

                                                  v197 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v198 = *MEMORY[0x1E698F240];
                                                  v441 = *MEMORY[0x1E696A578];
                                                  v322 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"attributes"];
                                                  v442 = v322;
                                                  v359 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v442 forKeys:&v441 count:1];
                                                  v199 = [v197 initWithDomain:v198 code:2 userInfo:?];
                                                  v27 = 0;
                                                  *errorCopy = v199;
                                                  v54 = v373;
                                                  goto LABEL_239;
                                                }
                                              }

                                              v322 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v82, "count")}];
                                              v404 = 0u;
                                              v405 = 0u;
                                              v406 = 0u;
                                              v407 = 0u;
                                              obj = v82;
                                              v140 = [obj countByEnumeratingWithState:&v404 objects:v440 count:16];
                                              if (!v140)
                                              {
                                                goto LABEL_176;
                                              }

                                              v141 = v140;
                                              v142 = *v405;
LABEL_168:
                                              v143 = 0;
                                              while (1)
                                              {
                                                if (*v405 != v142)
                                                {
                                                  objc_enumerationMutation(obj);
                                                }

                                                v144 = *(*(&v404 + 1) + 8 * v143);
                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  break;
                                                }

                                                objc_opt_class();
                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                {
                                                  if (errorCopy)
                                                  {
                                                    v181 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v182 = *MEMORY[0x1E698F240];
                                                    v436 = *MEMORY[0x1E696A578];
                                                    v308 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"attributes"];
                                                    v437 = v308;
                                                    v183 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v437 forKeys:&v436 count:1];
                                                    v27 = 0;
                                                    *errorCopy = [v181 initWithDomain:v182 code:2 userInfo:v183];
                                                    v180 = v183;
                                                    goto LABEL_210;
                                                  }

                                                  goto LABEL_237;
                                                }

                                                v145 = v144;
                                                v146 = [BMSpanEventAttribute alloc];
                                                v403 = 0;
                                                v147 = [(BMSpanEventAttribute *)v146 initWithJSONDictionary:v145 error:&v403];
                                                v148 = v403;
                                                if (v148)
                                                {
                                                  v308 = v145;
                                                  v12 = v382;
                                                  v54 = v373;
                                                  v10 = v380;
                                                  v184 = v148;
                                                  if (errorCopy)
                                                  {
                                                    v185 = v148;
                                                    *errorCopy = v184;
                                                  }

                                                  v180 = v184;
                                                  v27 = 0;
                                                  v359 = obj;
                                                  goto LABEL_216;
                                                }

                                                [v322 addObject:v147];

                                                if (v141 == ++v143)
                                                {
                                                  v141 = [obj countByEnumeratingWithState:&v404 objects:v440 count:16];
                                                  v12 = v382;
                                                  if (!v141)
                                                  {
LABEL_176:

                                                    v149 = [dictionaryCopy objectForKeyedSubscript:@"infoEvents"];
                                                    null2 = [MEMORY[0x1E695DFB0] null];
                                                    v151 = [v149 isEqual:null2];

                                                    if (v151)
                                                    {

                                                      v149 = 0;
                                                      goto LABEL_221;
                                                    }

                                                    if (!v149 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
LABEL_221:
                                                      v308 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v149, "count")}];
                                                      v399 = 0u;
                                                      v400 = 0u;
                                                      v401 = 0u;
                                                      v402 = 0u;
                                                      v359 = v149;
                                                      v186 = [v359 countByEnumeratingWithState:&v399 objects:v433 count:16];
                                                      if (!v186)
                                                      {
                                                        goto LABEL_231;
                                                      }

                                                      v187 = v186;
                                                      v304 = *v400;
LABEL_223:
                                                      v188 = 0;
                                                      while (1)
                                                      {
                                                        if (*v400 != v304)
                                                        {
                                                          objc_enumerationMutation(v359);
                                                        }

                                                        v189 = *(*(&v399 + 1) + 8 * v188);
                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          break;
                                                        }

                                                        objc_opt_class();
                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                        {
                                                          if (errorCopy)
                                                          {
                                                            v205 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v206 = *MEMORY[0x1E698F240];
                                                            v429 = *MEMORY[0x1E696A578];
                                                            v300 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"infoEvents"];
                                                            v430 = v300;
                                                            v207 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v430 forKeys:&v429 count:1];
                                                            v27 = 0;
                                                            *errorCopy = [v205 initWithDomain:v206 code:2 userInfo:v207];
                                                            v204 = v207;
                                                            goto LABEL_253;
                                                          }

                                                          goto LABEL_276;
                                                        }

                                                        v190 = v189;
                                                        v191 = [BMSpanEventSubEvent alloc];
                                                        v398 = 0;
                                                        v192 = [(BMSpanEventSubEvent *)v191 initWithJSONDictionary:v190 error:&v398];
                                                        v193 = v398;
                                                        if (v193)
                                                        {
                                                          v300 = v190;
                                                          v12 = v382;
                                                          v208 = v193;
                                                          if (errorCopy)
                                                          {
                                                            v209 = v193;
                                                            *errorCopy = v208;
                                                          }

                                                          v204 = v208;
                                                          v27 = 0;
                                                          v305 = v359;
                                                          goto LABEL_258;
                                                        }

                                                        [v308 addObject:v192];

                                                        if (v187 == ++v188)
                                                        {
                                                          v187 = [v359 countByEnumeratingWithState:&v399 objects:v433 count:16];
                                                          v12 = v382;
                                                          if (!v187)
                                                          {
LABEL_231:

                                                            v194 = [dictionaryCopy objectForKeyedSubscript:@"warningEvents"];
                                                            null3 = [MEMORY[0x1E695DFB0] null];
                                                            v196 = [v194 isEqual:null3];

                                                            if (v196)
                                                            {

                                                              v194 = 0;
                                                            }

                                                            else
                                                            {
                                                              v10 = v380;
                                                              if (v194)
                                                              {
                                                                objc_opt_class();
                                                                v305 = v194;
                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                {
                                                                  if (!errorCopy)
                                                                  {
                                                                    v27 = 0;
                                                                    v54 = v373;
                                                                    v103 = v341;
                                                                    v59 = v303;
                                                                    goto LABEL_352;
                                                                  }

                                                                  v249 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v250 = *MEMORY[0x1E698F240];
                                                                  v427 = *MEMORY[0x1E696A578];
                                                                  v300 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"warningEvents"];
                                                                  v428 = v300;
                                                                  v251 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v428 forKeys:&v427 count:1];
                                                                  v252 = [v249 initWithDomain:v250 code:2 userInfo:v251];
                                                                  v27 = 0;
                                                                  *errorCopy = v252;
                                                                  v204 = v251;
                                                                  v54 = v373;
                                                                  goto LABEL_259;
                                                                }
                                                              }
                                                            }

                                                            v300 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v194, "count")}];
                                                            v394 = 0u;
                                                            v395 = 0u;
                                                            v396 = 0u;
                                                            v397 = 0u;
                                                            v305 = v194;
                                                            v210 = [v305 countByEnumeratingWithState:&v394 objects:v426 count:16];
                                                            if (!v210)
                                                            {
                                                              goto LABEL_272;
                                                            }

                                                            v211 = v210;
                                                            v301 = *v395;
                                                            while (1)
                                                            {
                                                              for (i = 0; i != v211; ++i)
                                                              {
                                                                if (*v395 != v301)
                                                                {
                                                                  objc_enumerationMutation(v305);
                                                                }

                                                                v213 = *(*(&v394 + 1) + 8 * i);
                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  if (errorCopy)
                                                                  {
                                                                    v225 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v226 = *MEMORY[0x1E698F240];
                                                                    v424 = *MEMORY[0x1E696A578];
                                                                    v302 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"warningEvents"];
                                                                    v425 = v302;
                                                                    v227 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v425 forKeys:&v424 count:1];
                                                                    v228 = [v225 initWithDomain:v226 code:2 userInfo:v227];
                                                                    v27 = 0;
                                                                    *errorCopy = v228;
                                                                    v229 = v227;
LABEL_282:
                                                                    v299 = v305;
                                                                    goto LABEL_283;
                                                                  }

LABEL_306:
                                                                  v27 = 0;
                                                                  v204 = v305;
LABEL_254:
                                                                  v12 = v382;
LABEL_258:
                                                                  v54 = v373;
                                                                  v10 = v380;
LABEL_259:
                                                                  v103 = v341;
                                                                  v59 = v303;
                                                                  goto LABEL_351;
                                                                }

                                                                objc_opt_class();
                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                {
                                                                  if (errorCopy)
                                                                  {
                                                                    v230 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v231 = *MEMORY[0x1E698F240];
                                                                    v422 = *MEMORY[0x1E696A578];
                                                                    v302 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"warningEvents"];
                                                                    v423 = v302;
                                                                    v232 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v423 forKeys:&v422 count:1];
                                                                    v27 = 0;
                                                                    *errorCopy = [v230 initWithDomain:v231 code:2 userInfo:v232];
                                                                    v229 = v232;
                                                                    goto LABEL_282;
                                                                  }

                                                                  goto LABEL_306;
                                                                }

                                                                v214 = v213;
                                                                v215 = [BMSpanEventSubEvent alloc];
                                                                v393 = 0;
                                                                v216 = [(BMSpanEventSubEvent *)v215 initWithJSONDictionary:v214 error:&v393];
                                                                v217 = v393;
                                                                if (v217)
                                                                {
                                                                  v302 = v214;
                                                                  v12 = v382;
                                                                  v233 = v217;
                                                                  if (errorCopy)
                                                                  {
                                                                    v234 = v217;
                                                                    *errorCopy = v233;
                                                                  }

                                                                  v229 = v233;
                                                                  v27 = 0;
                                                                  v299 = v305;
                                                                  goto LABEL_287;
                                                                }

                                                                [v300 addObject:v216];
                                                              }

                                                              v211 = [v305 countByEnumeratingWithState:&v394 objects:v426 count:16];
                                                              v12 = v382;
                                                              if (!v211)
                                                              {
LABEL_272:

                                                                v218 = [dictionaryCopy objectForKeyedSubscript:@"debugEvents"];
                                                                null4 = [MEMORY[0x1E695DFB0] null];
                                                                v220 = [v218 isEqual:null4];

                                                                if (v220)
                                                                {

                                                                  goto LABEL_291;
                                                                }

                                                                if (v218)
                                                                {
                                                                  objc_opt_class();
                                                                  v299 = v218;
                                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                  {
                                                                    if (!errorCopy)
                                                                    {
                                                                      v27 = 0;
                                                                      v54 = v373;
                                                                      v10 = v380;
                                                                      v103 = v341;
                                                                      v59 = v303;
                                                                      goto LABEL_350;
                                                                    }

                                                                    v274 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v275 = *MEMORY[0x1E698F240];
                                                                    v420 = *MEMORY[0x1E696A578];
                                                                    v302 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"debugEvents"];
                                                                    v421 = v302;
                                                                    v276 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v421 forKeys:&v420 count:1];
                                                                    v277 = [v274 initWithDomain:v275 code:2 userInfo:v276];
                                                                    v27 = 0;
                                                                    *errorCopy = v277;
                                                                    v229 = v276;
                                                                    goto LABEL_287;
                                                                  }

                                                                  v235 = v218;
                                                                }

                                                                else
                                                                {
LABEL_291:
                                                                  v235 = 0;
                                                                }

                                                                v302 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v235, "count")}];
                                                                v389 = 0u;
                                                                v390 = 0u;
                                                                v391 = 0u;
                                                                v392 = 0u;
                                                                v299 = v235;
                                                                v236 = [v299 countByEnumeratingWithState:&v389 objects:v419 count:16];
                                                                if (!v236)
                                                                {
                                                                  goto LABEL_302;
                                                                }

                                                                v237 = v236;
                                                                v297 = *v390;
                                                                while (1)
                                                                {
                                                                  for (j = 0; j != v237; ++j)
                                                                  {
                                                                    if (*v390 != v297)
                                                                    {
                                                                      objc_enumerationMutation(v299);
                                                                    }

                                                                    v239 = *(*(&v389 + 1) + 8 * j);
                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      if (errorCopy)
                                                                      {
                                                                        v253 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v254 = *MEMORY[0x1E698F240];
                                                                        v417 = *MEMORY[0x1E696A578];
                                                                        v255 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"debugEvents"];
                                                                        v418 = v255;
                                                                        v256 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v418 forKeys:&v417 count:1];
                                                                        *errorCopy = [v253 initWithDomain:v254 code:2 userInfo:v256];

LABEL_312:
                                                                        v27 = 0;
                                                                        v298 = v299;
                                                                        v260 = v255;
                                                                        v12 = v382;
                                                                        v54 = v373;
                                                                        v10 = v380;
                                                                        goto LABEL_313;
                                                                      }

LABEL_334:
                                                                      v27 = 0;
                                                                      v229 = v299;
LABEL_283:
                                                                      v12 = v382;
LABEL_287:
                                                                      v54 = v373;
                                                                      v10 = v380;
                                                                      v103 = v341;
                                                                      v59 = v303;
                                                                      goto LABEL_349;
                                                                    }

                                                                    objc_opt_class();
                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                    {
                                                                      if (errorCopy)
                                                                      {
                                                                        v257 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v258 = *MEMORY[0x1E698F240];
                                                                        v415 = *MEMORY[0x1E696A578];
                                                                        v255 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"debugEvents"];
                                                                        v416 = v255;
                                                                        v259 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v416 forKeys:&v415 count:1];
                                                                        *errorCopy = [v257 initWithDomain:v258 code:2 userInfo:v259];

                                                                        goto LABEL_312;
                                                                      }

                                                                      goto LABEL_334;
                                                                    }

                                                                    v240 = v239;
                                                                    v241 = [BMSpanEventSubEvent alloc];
                                                                    v388 = 0;
                                                                    v242 = [(BMSpanEventSubEvent *)v241 initWithJSONDictionary:v240 error:&v388];
                                                                    v243 = v388;
                                                                    if (v243)
                                                                    {
                                                                      v261 = v243;
                                                                      v296 = v240;
                                                                      if (errorCopy)
                                                                      {
                                                                        v262 = v243;
                                                                        *errorCopy = v261;
                                                                      }

                                                                      v27 = 0;
                                                                      v298 = v299;
                                                                      v12 = v382;
                                                                      v54 = v373;
                                                                      v10 = v380;
LABEL_346:
                                                                      v103 = v341;
                                                                      v59 = v303;
                                                                      v260 = v296;
                                                                      goto LABEL_347;
                                                                    }

                                                                    [v302 addObject:v242];
                                                                  }

                                                                  v237 = [v299 countByEnumeratingWithState:&v389 objects:v419 count:16];
                                                                  if (!v237)
                                                                  {
LABEL_302:

                                                                    v244 = [dictionaryCopy objectForKeyedSubscript:@"errorEvents"];
                                                                    null5 = [MEMORY[0x1E695DFB0] null];
                                                                    v246 = [v244 isEqual:null5];

                                                                    v370 = dictionaryCopy;
                                                                    v363 = v7;
                                                                    v345 = v11;
                                                                    v247 = v9;
                                                                    if (v246)
                                                                    {
                                                                      v248 = v380;

                                                                      goto LABEL_320;
                                                                    }

                                                                    v248 = v380;
                                                                    if (!v244)
                                                                    {
LABEL_320:
                                                                      v263 = 0;
                                                                      goto LABEL_321;
                                                                    }

                                                                    objc_opt_class();
                                                                    v298 = v244;
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      v263 = v244;
LABEL_321:
                                                                      v264 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v263, "count")}];
                                                                      v384 = 0u;
                                                                      v385 = 0u;
                                                                      v386 = 0u;
                                                                      v387 = 0u;
                                                                      v298 = v263;
                                                                      v265 = [v298 countByEnumeratingWithState:&v384 objects:v412 count:16];
                                                                      if (!v265)
                                                                      {
                                                                        goto LABEL_331;
                                                                      }

                                                                      v266 = v265;
                                                                      v267 = *v385;
                                                                      v296 = v264;
LABEL_323:
                                                                      v268 = 0;
                                                                      while (1)
                                                                      {
                                                                        if (*v385 != v267)
                                                                        {
                                                                          objc_enumerationMutation(v298);
                                                                        }

                                                                        v269 = *(*(&v384 + 1) + 8 * v268);
                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          break;
                                                                        }

                                                                        objc_opt_class();
                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                        {
                                                                          if (!errorCopy)
                                                                          {
                                                                            goto LABEL_345;
                                                                          }

                                                                          v282 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v279 = *MEMORY[0x1E698F240];
                                                                          v408 = *MEMORY[0x1E696A578];
                                                                          v270 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"errorEvents"];
                                                                          v409 = v270;
                                                                          v280 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v409 forKeys:&v408 count:1];
                                                                          v281 = v282;
                                                                          goto LABEL_340;
                                                                        }

                                                                        v270 = v269;
                                                                        v271 = [BMSpanEventSubEvent alloc];
                                                                        v383 = 0;
                                                                        v272 = [(BMSpanEventSubEvent *)v271 initWithJSONDictionary:v270 error:&v383];
                                                                        v273 = v383;
                                                                        if (v273)
                                                                        {
                                                                          v280 = v273;
                                                                          if (errorCopy)
                                                                          {
                                                                            v283 = v273;
                                                                            *errorCopy = v280;
                                                                          }

LABEL_344:
LABEL_345:

                                                                          v27 = 0;
                                                                          v10 = v248;
                                                                          v11 = v345;
                                                                          v9 = v247;
                                                                          v7 = v363;
                                                                          dictionaryCopy = v370;
                                                                          v12 = v382;
                                                                          v54 = v373;
                                                                          goto LABEL_346;
                                                                        }

                                                                        v264 = v296;
                                                                        [v296 addObject:v272];

                                                                        if (v266 == ++v268)
                                                                        {
                                                                          v266 = [v298 countByEnumeratingWithState:&v384 objects:v412 count:16];
                                                                          if (v266)
                                                                          {
                                                                            goto LABEL_323;
                                                                          }

LABEL_331:

                                                                          v59 = v303;
                                                                          v103 = v341;
                                                                          v10 = v248;
                                                                          selfCopy2 = [(BMSpanEvent *)selfCopy2 initWithDeviceIdentifier:v381 testKey:v248 version:v378 name:v379 trialDeploymentId:v371 trialExperimentId:v374 trialTreatmentId:v337 traceId:v365 parentSpanId:v341 spanId:v346 privatizedStartTime:v339 privatizedEndTime:v303 intervalInMilliSeconds:v334 errorString:v332 errorCode:v329 processName:v327 startMemoryLevelInKB:v320 endMemoryLevelInKB:v318 memoryLevelDeltaInKB:v315 gcdQueueName:v313 qosClassName:v311 relativePriority:v309 projectName:v306 attributes:v322 infoEvents:v308 warningEvents:v300 debugEvents:v302 errorEvents:v264];
                                                                          v260 = v264;
                                                                          v27 = selfCopy2;
                                                                          v11 = v345;
                                                                          v9 = v247;
                                                                          v7 = v363;
                                                                          dictionaryCopy = v370;
                                                                          v12 = v382;
                                                                          v54 = v373;
LABEL_347:

LABEL_348:
                                                                          v229 = v298;
LABEL_349:

LABEL_350:
                                                                          v204 = v299;
LABEL_351:

LABEL_352:
                                                                          v180 = v305;
LABEL_353:

LABEL_354:
LABEL_355:

LABEL_356:
LABEL_357:

LABEL_358:
LABEL_359:

LABEL_360:
LABEL_361:

LABEL_362:
LABEL_363:

LABEL_364:
LABEL_365:

LABEL_366:
LABEL_367:

                                                                          v22 = v337;
LABEL_368:

LABEL_369:
LABEL_370:

LABEL_371:
                                                                          v15 = v371;
LABEL_372:

                                                                          goto LABEL_373;
                                                                        }
                                                                      }

                                                                      if (!errorCopy)
                                                                      {
                                                                        goto LABEL_345;
                                                                      }

                                                                      v278 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                      v279 = *MEMORY[0x1E698F240];
                                                                      v410 = *MEMORY[0x1E696A578];
                                                                      v270 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"errorEvents"];
                                                                      v411 = v270;
                                                                      v280 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v411 forKeys:&v410 count:1];
                                                                      v281 = v278;
LABEL_340:
                                                                      *errorCopy = [v281 initWithDomain:v279 code:2 userInfo:v280];
                                                                      goto LABEL_344;
                                                                    }

                                                                    if (!errorCopy)
                                                                    {
                                                                      v27 = 0;
                                                                      v10 = v380;
                                                                      v103 = v341;
                                                                      v9 = v247;
                                                                      v7 = v363;
                                                                      v12 = v382;
                                                                      v54 = v373;
                                                                      v59 = v303;
                                                                      goto LABEL_348;
                                                                    }

                                                                    v285 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v286 = *MEMORY[0x1E698F240];
                                                                    v413 = *MEMORY[0x1E696A578];
                                                                    v287 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"errorEvents"];
                                                                    v414 = v287;
                                                                    v288 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v414 forKeys:&v413 count:1];
                                                                    *errorCopy = [v285 initWithDomain:v286 code:2 userInfo:v288];

                                                                    v260 = v287;
                                                                    v27 = 0;
                                                                    v10 = v380;
                                                                    v9 = v247;
                                                                    v7 = v363;
                                                                    v12 = v382;
                                                                    v54 = v373;
LABEL_313:
                                                                    v103 = v341;
                                                                    v59 = v303;
                                                                    goto LABEL_347;
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }

                                                          goto LABEL_223;
                                                        }
                                                      }

                                                      if (errorCopy)
                                                      {
                                                        v200 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v201 = *MEMORY[0x1E698F240];
                                                        v431 = *MEMORY[0x1E696A578];
                                                        v300 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"infoEvents"];
                                                        v432 = v300;
                                                        v202 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v432 forKeys:&v431 count:1];
                                                        v203 = [v200 initWithDomain:v201 code:2 userInfo:v202];
                                                        v27 = 0;
                                                        *errorCopy = v203;
                                                        v204 = v202;
LABEL_253:
                                                        v305 = v359;
                                                        goto LABEL_254;
                                                      }

LABEL_276:
                                                      v27 = 0;
                                                      v180 = v359;
LABEL_211:
                                                      v12 = v382;
LABEL_212:
                                                      v54 = v373;
                                                      v10 = v380;
LABEL_216:
                                                      v103 = v341;
                                                      v59 = v303;
                                                      goto LABEL_353;
                                                    }

                                                    v359 = v149;
                                                    if (errorCopy)
                                                    {
                                                      v221 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v222 = *MEMORY[0x1E698F240];
                                                      v434 = *MEMORY[0x1E696A578];
                                                      v308 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"infoEvents"];
                                                      v435 = v308;
                                                      v223 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v435 forKeys:&v434 count:1];
                                                      v224 = [v221 initWithDomain:v222 code:2 userInfo:v223];
                                                      v27 = 0;
                                                      *errorCopy = v224;
                                                      v180 = v223;
                                                      goto LABEL_212;
                                                    }

                                                    v27 = 0;
LABEL_238:
                                                    v54 = v373;
                                                    v10 = v380;
LABEL_239:
                                                    v103 = v341;
                                                    v59 = v303;
                                                    goto LABEL_354;
                                                  }

                                                  goto LABEL_168;
                                                }
                                              }

                                              if (errorCopy)
                                              {
                                                v176 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v177 = *MEMORY[0x1E698F240];
                                                v438 = *MEMORY[0x1E696A578];
                                                v308 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"attributes"];
                                                v439 = v308;
                                                v178 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v439 forKeys:&v438 count:1];
                                                v179 = [v176 initWithDomain:v177 code:2 userInfo:v178];
                                                v27 = 0;
                                                *errorCopy = v179;
                                                v180 = v178;
LABEL_210:
                                                v359 = obj;
                                                goto LABEL_211;
                                              }

LABEL_237:
                                              v27 = 0;
                                              v359 = obj;
                                              v12 = v382;
                                              goto LABEL_238;
                                            }

                                            if (errorCopy)
                                            {
                                              v171 = v59;
                                              v172 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v173 = *MEMORY[0x1E698F240];
                                              v443 = *MEMORY[0x1E696A578];
                                              obj = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"projectName"];
                                              v444 = obj;
                                              v174 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v444 forKeys:&v443 count:1];
                                              v175 = v172;
                                              v59 = v171;
                                              v10 = v380;
                                              v325 = v174;
                                              v306 = 0;
                                              v27 = 0;
                                              *errorCopy = [v175 initWithDomain:v173 code:2 userInfo:?];
                                              v54 = v373;
                                              v103 = v341;

                                              goto LABEL_355;
                                            }

                                            v306 = 0;
                                            v27 = 0;
LABEL_247:
                                            v54 = v373;
                                            v103 = v341;
                                            goto LABEL_356;
                                          }

                                          if (errorCopy)
                                          {
                                            v166 = v59;
                                            v167 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v168 = *MEMORY[0x1E698F240];
                                            v445 = *MEMORY[0x1E696A578];
                                            v306 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"relativePriority"];
                                            v446 = v306;
                                            v169 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v446 forKeys:&v445 count:1];
                                            v170 = v167;
                                            v59 = v166;
                                            v10 = v380;
                                            v307 = v169;
                                            v309 = 0;
                                            v27 = 0;
                                            *errorCopy = [v170 initWithDomain:v168 code:2 userInfo:?];
                                            goto LABEL_247;
                                          }

                                          v309 = 0;
                                          v27 = 0;
LABEL_245:
                                          v54 = v373;
                                          v103 = v341;
                                          goto LABEL_357;
                                        }

                                        if (errorCopy)
                                        {
                                          v161 = v59;
                                          v162 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v163 = *MEMORY[0x1E698F240];
                                          v447 = *MEMORY[0x1E696A578];
                                          v309 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"qosClassName"];
                                          v448 = v309;
                                          v164 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v448 forKeys:&v447 count:1];
                                          v165 = v162;
                                          v59 = v161;
                                          v10 = v380;
                                          v310 = v164;
                                          v311 = 0;
                                          v27 = 0;
                                          *errorCopy = [v165 initWithDomain:v163 code:2 userInfo:?];
                                          goto LABEL_245;
                                        }

                                        v311 = 0;
                                        v27 = 0;
LABEL_243:
                                        v54 = v373;
                                        v103 = v341;
                                        goto LABEL_358;
                                      }

                                      if (errorCopy)
                                      {
                                        v156 = v59;
                                        v157 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v158 = *MEMORY[0x1E698F240];
                                        v449 = *MEMORY[0x1E696A578];
                                        v311 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"gcdQueueName"];
                                        v450 = v311;
                                        v159 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v450 forKeys:&v449 count:1];
                                        v160 = v157;
                                        v59 = v156;
                                        v10 = v380;
                                        v312 = v159;
                                        v313 = 0;
                                        v27 = 0;
                                        *errorCopy = [v160 initWithDomain:v158 code:2 userInfo:?];
                                        goto LABEL_243;
                                      }

                                      v313 = 0;
                                      v27 = 0;
LABEL_241:
                                      v54 = v373;
                                      v103 = v341;
                                      goto LABEL_359;
                                    }

                                    if (errorCopy)
                                    {
                                      v358 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v324 = *MEMORY[0x1E698F240];
                                      v451 = *MEMORY[0x1E696A578];
                                      v154 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v295 = objc_opt_class();
                                      v155 = v154;
                                      v10 = v380;
                                      v313 = [v155 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v295, @"memoryLevelDeltaInKB"];
                                      v452 = v313;
                                      v314 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v452 forKeys:&v451 count:1];
                                      v315 = 0;
                                      v27 = 0;
                                      *errorCopy = [v358 initWithDomain:v324 code:2 userInfo:?];
                                      goto LABEL_241;
                                    }

                                    v315 = 0;
                                    v27 = 0;
LABEL_236:
                                    v54 = v373;
                                    v103 = v341;
                                    goto LABEL_360;
                                  }

                                  if (errorCopy)
                                  {
                                    v357 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v323 = *MEMORY[0x1E698F240];
                                    v453 = *MEMORY[0x1E696A578];
                                    v152 = objc_alloc(MEMORY[0x1E696AEC0]);
                                    v294 = objc_opt_class();
                                    v153 = v152;
                                    v10 = v380;
                                    v315 = [v153 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v294, @"endMemoryLevelInKB"];
                                    v454 = v315;
                                    v316 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v454 forKeys:&v453 count:1];
                                    v318 = 0;
                                    v27 = 0;
                                    *errorCopy = [v357 initWithDomain:v323 code:2 userInfo:?];
                                    goto LABEL_236;
                                  }

                                  v318 = 0;
                                  v27 = 0;
LABEL_218:
                                  v54 = v373;
                                  v103 = v341;
                                  goto LABEL_361;
                                }

                                if (errorCopy)
                                {
                                  v356 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v321 = *MEMORY[0x1E698F240];
                                  v455 = *MEMORY[0x1E696A578];
                                  v138 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v293 = objc_opt_class();
                                  v139 = v138;
                                  v10 = v380;
                                  v318 = [v139 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v293, @"startMemoryLevelInKB"];
                                  v456 = v318;
                                  v319 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v456 forKeys:&v455 count:1];
                                  v320 = 0;
                                  v27 = 0;
                                  *errorCopy = [v356 initWithDomain:v321 code:2 userInfo:?];
                                  goto LABEL_218;
                                }

                                v320 = 0;
                                v27 = 0;
LABEL_203:
                                v54 = v373;
                                v103 = v341;
                                goto LABEL_362;
                              }

                              if (errorCopy)
                              {
                                v133 = v59;
                                v134 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v135 = *MEMORY[0x1E698F240];
                                v457 = *MEMORY[0x1E696A578];
                                v320 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"processName"];
                                v458 = v320;
                                v136 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v458 forKeys:&v457 count:1];
                                v137 = v134;
                                v59 = v133;
                                v10 = v380;
                                v326 = v136;
                                v327 = 0;
                                v27 = 0;
                                *errorCopy = [v137 initWithDomain:v135 code:2 userInfo:?];
                                goto LABEL_203;
                              }

                              v327 = 0;
                              v27 = 0;
LABEL_199:
                              v54 = v373;
                              v103 = v341;
                              goto LABEL_363;
                            }

                            if (errorCopy)
                            {
                              v355 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v330 = *MEMORY[0x1E698F240];
                              v459 = *MEMORY[0x1E696A578];
                              v130 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v292 = objc_opt_class();
                              v131 = v130;
                              v10 = v380;
                              v327 = [v131 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v292, @"errorCode"];
                              v460 = v327;
                              v328 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v460 forKeys:&v459 count:1];
                              v132 = [v355 initWithDomain:v330 code:2 userInfo:?];
                              v329 = 0;
                              v27 = 0;
                              *errorCopy = v132;
                              goto LABEL_199;
                            }

                            v329 = 0;
                            v27 = 0;
LABEL_195:
                            v54 = v373;
                            v103 = v341;
                            goto LABEL_364;
                          }

                          if (errorCopy)
                          {
                            v125 = v59;
                            v126 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v127 = *MEMORY[0x1E698F240];
                            v461 = *MEMORY[0x1E696A578];
                            v329 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"errorString"];
                            v462 = v329;
                            v128 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v462 forKeys:&v461 count:1];
                            v129 = v126;
                            v59 = v125;
                            v10 = v380;
                            v331 = v128;
                            v332 = 0;
                            v27 = 0;
                            *errorCopy = [v129 initWithDomain:v127 code:2 userInfo:?];
                            goto LABEL_195;
                          }

                          v332 = 0;
                          v27 = 0;
LABEL_191:
                          v54 = v373;
                          v103 = v341;
                          goto LABEL_365;
                        }

                        if (errorCopy)
                        {
                          v354 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v335 = *MEMORY[0x1E698F240];
                          v463 = *MEMORY[0x1E696A578];
                          v122 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v291 = objc_opt_class();
                          v123 = v122;
                          v10 = v380;
                          v332 = [v123 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v291, @"intervalInMilliSeconds"];
                          v464 = v332;
                          v333 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v464 forKeys:&v463 count:1];
                          v124 = [v354 initWithDomain:v335 code:2 userInfo:?];
                          v334 = 0;
                          v27 = 0;
                          *errorCopy = v124;
                          goto LABEL_191;
                        }

                        v334 = 0;
                        v27 = 0;
LABEL_185:
                        v54 = v373;
                        v103 = v341;
                        goto LABEL_366;
                      }

                      if (errorCopy)
                      {
                        v117 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v118 = *MEMORY[0x1E698F240];
                        v465 = *MEMORY[0x1E696A578];
                        v119 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v290 = objc_opt_class();
                        v120 = v119;
                        v10 = v380;
                        v334 = [v120 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v290, @"privatizedEndTime"];
                        v466 = v334;
                        v336 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v466 forKeys:&v465 count:1];
                        v121 = [v117 initWithDomain:v118 code:2 userInfo:?];
                        v59 = 0;
                        v27 = 0;
                        *errorCopy = v121;
                        goto LABEL_185;
                      }

                      v59 = 0;
                      v27 = 0;
LABEL_179:
                      v54 = v373;
                      v103 = v341;
                      goto LABEL_367;
                    }

                    if (errorCopy)
                    {
                      v114 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v353 = *MEMORY[0x1E698F240];
                      v467 = *MEMORY[0x1E696A578];
                      v115 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v289 = objc_opt_class();
                      v116 = v115;
                      v10 = v380;
                      v59 = [v116 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v289, @"privatizedStartTime"];
                      v468 = v59;
                      v338 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v468 forKeys:&v467 count:1];
                      v339 = 0;
                      v27 = 0;
                      *errorCopy = [v114 initWithDomain:v353 code:2 userInfo:?];
                      goto LABEL_179;
                    }

                    v339 = 0;
                    v27 = 0;
LABEL_159:
                    v54 = v373;
                    v103 = v341;
                    goto LABEL_368;
                  }

                  v346 = 0;
                }

                else
                {
                  v346 = 0;
                  v9 = v13;
                }

                v10 = v380;
                goto LABEL_59;
              }

              if (errorCopy3)
              {
                v350 = v13;
                v362 = v16;
                v94 = objc_alloc(MEMORY[0x1E696ABC0]);
                v95 = *MEMORY[0x1E698F240];
                v475 = *MEMORY[0x1E696A578];
                v365 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialTreatmentId"];
                v476 = v365;
                [MEMORY[0x1E695DF20] dictionaryWithObjects:&v476 forKeys:&v475 count:1];
                v15 = v371;
                v10 = v380;
                v9 = v350;
                v366 = v7 = v362;
                v96 = [v94 initWithDomain:v95 code:2 userInfo:?];
                v22 = 0;
                v27 = 0;
                *errorCopy = v96;
                v54 = v373;
                goto LABEL_372;
              }

              v22 = 0;
              v27 = 0;
              v54 = v373;
              v9 = v13;
              v10 = v380;
              v15 = v371;
LABEL_373:

              goto LABEL_374;
            }
          }

          else
          {
            v7 = v16;
          }

          v22 = 0;
          goto LABEL_38;
        }

        if (errorCopy3)
        {
          v368 = dictionaryCopy;
          v349 = v13;
          v361 = v16;
          v89 = objc_alloc(MEMORY[0x1E696ABC0]);
          v90 = *MEMORY[0x1E698F240];
          v477 = *MEMORY[0x1E696A578];
          v91 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialExperimentId"];
          v478 = v91;
          v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v478 forKeys:&v477 count:1];
          v93 = v89;
          v22 = v91;
          v10 = v380;
          v11 = v17;
          v9 = v349;
          v7 = v361;
          dictionaryCopy = v368;
          v372 = v92;
          v374 = 0;
          v27 = 0;
          *errorCopy = [v93 initWithDomain:v90 code:2 userInfo:?];
          v54 = v373;
          goto LABEL_373;
        }

        v374 = 0;
        v27 = 0;
        v54 = v373;
        v9 = v13;
        v10 = v380;
        v11 = v17;
        v7 = v16;
LABEL_374:

        self = selfCopy2;
        goto LABEL_375;
      }

      v54 = v15;
      if (errorCopy3)
      {
        v348 = v13;
        v85 = objc_alloc(MEMORY[0x1E696ABC0]);
        v86 = *MEMORY[0x1E698F240];
        v479 = *MEMORY[0x1E696A578];
        v374 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialDeploymentId"];
        v480 = v374;
        v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v480 forKeys:&v479 count:1];
        v10 = v380;
        v88 = v86;
        v9 = v348;
        v376 = v87;
        v15 = 0;
        v27 = 0;
        *errorCopy = [v85 initWithDomain:v88 code:2 userInfo:v87];
        goto LABEL_374;
      }

      v15 = 0;
      v27 = 0;
      v9 = v13;
      v10 = v380;
LABEL_375:

      goto LABEL_376;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      goto LABEL_7;
    }

    if (error)
    {
      selfCopy3 = self;
      v35 = objc_alloc(MEMORY[0x1E696ABC0]);
      v36 = *MEMORY[0x1E698F240];
      v485 = *MEMORY[0x1E696A578];
      v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"testKey"];
      v486 = v37;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v486 forKeys:&v485 count:1];
      v38 = v35;
      self = selfCopy3;
      v39 = v36;
      v40 = v37;
      v10 = 0;
      v27 = 0;
      *error = [v38 initWithDomain:v39 code:2 userInfo:v11];
LABEL_379:

      goto LABEL_380;
    }

    v10 = 0;
    v27 = 0;
LABEL_380:

    goto LABEL_381;
  }

  if (error)
  {
    selfCopy4 = self;
    v24 = objc_alloc(MEMORY[0x1E696ABC0]);
    v25 = *MEMORY[0x1E698F240];
    v487 = *MEMORY[0x1E696A578];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceIdentifier"];
    v488[0] = v10;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v488 forKeys:&v487 count:1];
    v26 = v24;
    self = selfCopy4;
    v8 = 0;
    v27 = 0;
    *error = [v26 initWithDomain:v25 code:2 userInfo:v9];
    goto LABEL_380;
  }

  v8 = 0;
  v27 = 0;
LABEL_381:

  return v27;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSpanEvent *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v61 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_deviceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_testKey)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_version)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trialDeploymentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trialExperimentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trialTreatmentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_traceId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_parentSpanId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_spanId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasPrivatizedStartTime)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasPrivatizedEndTime)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasIntervalInMilliSeconds)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_errorString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasErrorCode)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_processName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasStartMemoryLevelInKB)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasEndMemoryLevelInKB)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasMemoryLevelDeltaInKB)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_gcdQueueName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_qosClassName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_relativePriority)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_projectName)
  {
    PBDataWriterWriteStringField();
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v5 = self->_attributes;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v53;
    do
    {
      v9 = 0;
      do
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v52 + 1) + 8 * v9);
        v51 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v7);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v11 = self->_infoEvents;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v48;
    do
    {
      v15 = 0;
      do
      {
        if (*v48 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v47 + 1) + 8 * v15);
        v51 = 0;
        PBDataWriterPlaceMark();
        [v16 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v47 objects:v59 count:16];
    }

    while (v13);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v17 = self->_warningEvents;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v43 objects:v58 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v44;
    do
    {
      v21 = 0;
      do
      {
        if (*v44 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v43 + 1) + 8 * v21);
        v51 = 0;
        PBDataWriterPlaceMark();
        [v22 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v43 objects:v58 count:16];
    }

    while (v19);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v23 = self->_debugEvents;
  v24 = [(NSArray *)v23 countByEnumeratingWithState:&v39 objects:v57 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v40;
    do
    {
      v27 = 0;
      do
      {
        if (*v40 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v39 + 1) + 8 * v27);
        v51 = 0;
        PBDataWriterPlaceMark();
        [v28 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSArray *)v23 countByEnumeratingWithState:&v39 objects:v57 count:16];
    }

    while (v25);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v29 = self->_errorEvents;
  v30 = [(NSArray *)v29 countByEnumeratingWithState:&v35 objects:v56 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v36;
    do
    {
      v33 = 0;
      do
      {
        if (*v36 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v35 + 1) + 8 * v33);
        v51 = 0;
        PBDataWriterPlaceMark();
        [v34 writeTo:{toCopy, v35}];
        PBDataWriterRecallMark();
        ++v33;
      }

      while (v31 != v33);
      v31 = [(NSArray *)v29 countByEnumeratingWithState:&v35 objects:v56 count:16];
    }

    while (v31);
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v86.receiver = self;
  v86.super_class = BMSpanEvent;
  v5 = [(BMEventBase *)&v86 init];
  if (!v5)
  {
    goto LABEL_148;
  }

  v85 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  while (1)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      break;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      LOBYTE(v87) = 0;
      v14 = [fromCopy position] + 1;
      if (v14 >= [fromCopy position] && (v15 = objc_msgSend(fromCopy, "position") + 1, v15 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v87 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v13 |= (v87 & 0x7F) << v11;
      if ((v87 & 0x80) == 0)
      {
        break;
      }

      v11 += 7;
      v17 = v12++ >= 9;
      if (v17)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    if ([fromCopy hasError])
    {
      v13 = 0;
    }

LABEL_16:
    if (([fromCopy hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v18 = PBReaderReadString();
        v19 = 56;
        goto LABEL_109;
      case 2u:
        v18 = PBReaderReadString();
        v19 = 64;
        goto LABEL_109;
      case 0xAu:
        v18 = PBReaderReadString();
        v19 = 72;
        goto LABEL_109;
      case 0xBu:
        v18 = PBReaderReadString();
        v19 = 80;
        goto LABEL_109;
      case 0xCu:
        v18 = PBReaderReadString();
        v19 = 88;
        goto LABEL_109;
      case 0xDu:
        v18 = PBReaderReadString();
        v19 = 96;
        goto LABEL_109;
      case 0xEu:
        v18 = PBReaderReadString();
        v19 = 104;
        goto LABEL_109;
      case 0xFu:
        v18 = PBReaderReadString();
        v19 = 112;
        goto LABEL_109;
      case 0x10u:
        v18 = PBReaderReadString();
        v19 = 120;
        goto LABEL_109;
      case 0x11u:
        v18 = PBReaderReadString();
        v19 = 128;
        goto LABEL_109;
      case 0x12u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        v5->_hasPrivatizedStartTime = 1;
        while (1)
        {
          LOBYTE(v87) = 0;
          v59 = [fromCopy position] + 1;
          if (v59 >= [fromCopy position] && (v60 = objc_msgSend(fromCopy, "position") + 1, v60 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v87 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v58 |= (v87 & 0x7F) << v56;
          if ((v87 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v17 = v57++ >= 9;
          if (v17)
          {
            v26 = 0;
            goto LABEL_140;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v58;
        }

LABEL_140:
        v71 = 28;
        goto LABEL_145;
      case 0x13u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v5->_hasPrivatizedEndTime = 1;
        while (1)
        {
          LOBYTE(v87) = 0;
          v40 = [fromCopy position] + 1;
          if (v40 >= [fromCopy position] && (v41 = objc_msgSend(fromCopy, "position") + 1, v41 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v87 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v39 |= (v87 & 0x7F) << v37;
          if ((v87 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v17 = v38++ >= 9;
          if (v17)
          {
            v26 = 0;
            goto LABEL_128;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v39;
        }

LABEL_128:
        v71 = 32;
        goto LABEL_145;
      case 0x14u:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v5->_hasIntervalInMilliSeconds = 1;
        while (1)
        {
          LOBYTE(v87) = 0;
          v34 = [fromCopy position] + 1;
          if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v87 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v33 |= (v87 & 0x7F) << v31;
          if ((v87 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v17 = v32++ >= 9;
          if (v17)
          {
            v26 = 0;
            goto LABEL_124;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v33;
        }

LABEL_124:
        v71 = 36;
        goto LABEL_145;
      case 0x15u:
        v18 = PBReaderReadString();
        v19 = 136;
        goto LABEL_109;
      case 0x16u:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v5->_hasErrorCode = 1;
        while (1)
        {
          LOBYTE(v87) = 0;
          v47 = [fromCopy position] + 1;
          if (v47 >= [fromCopy position] && (v48 = objc_msgSend(fromCopy, "position") + 1, v48 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v87 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v46 |= (v87 & 0x7F) << v44;
          if ((v87 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v17 = v45++ >= 9;
          if (v17)
          {
            v26 = 0;
            goto LABEL_132;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v46;
        }

LABEL_132:
        v71 = 40;
        goto LABEL_145;
      case 0x17u:
        v18 = PBReaderReadString();
        v19 = 144;
        goto LABEL_109;
      case 0x18u:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        v5->_hasStartMemoryLevelInKB = 1;
        while (1)
        {
          LOBYTE(v87) = 0;
          v65 = [fromCopy position] + 1;
          if (v65 >= [fromCopy position] && (v66 = objc_msgSend(fromCopy, "position") + 1, v66 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v87 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v64 |= (v87 & 0x7F) << v62;
          if ((v87 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v17 = v63++ >= 9;
          if (v17)
          {
            v26 = 0;
            goto LABEL_144;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v64;
        }

LABEL_144:
        v71 = 44;
        goto LABEL_145;
      case 0x19u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v5->_hasEndMemoryLevelInKB = 1;
        while (1)
        {
          LOBYTE(v87) = 0;
          v53 = [fromCopy position] + 1;
          if (v53 >= [fromCopy position] && (v54 = objc_msgSend(fromCopy, "position") + 1, v54 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v87 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v52 |= (v87 & 0x7F) << v50;
          if ((v87 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v17 = v51++ >= 9;
          if (v17)
          {
            v26 = 0;
            goto LABEL_136;
          }
        }

        if ([fromCopy hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v52;
        }

LABEL_136:
        v71 = 48;
        goto LABEL_145;
      case 0x1Au:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v5->_hasMemoryLevelDeltaInKB = 1;
        break;
      case 0x1Bu:
        v18 = PBReaderReadString();
        v19 = 152;
        goto LABEL_109;
      case 0x1Cu:
        v18 = PBReaderReadString();
        v19 = 160;
        goto LABEL_109;
      case 0x1Du:
        v18 = PBReaderReadString();
        v19 = 168;
        goto LABEL_109;
      case 0x1Eu:
        v18 = PBReaderReadString();
        v19 = 176;
LABEL_109:
        v68 = *(&v5->super.super.isa + v19);
        *(&v5->super.super.isa + v19) = v18;

        continue;
      case 0x28u:
        v87 = 0;
        v88 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_150;
        }

        v30 = [[BMSpanEventAttribute alloc] initByReadFrom:fromCopy];
        if (!v30)
        {
          goto LABEL_150;
        }

        v28 = v30;
        v29 = v85;
        goto LABEL_116;
      case 0x29u:
        v87 = 0;
        v88 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_150;
        }

        v43 = [[BMSpanEventSubEvent alloc] initByReadFrom:fromCopy];
        if (!v43)
        {
          goto LABEL_150;
        }

        v28 = v43;
        v29 = v6;
        goto LABEL_116;
      case 0x2Au:
        v87 = 0;
        v88 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_150;
        }

        v27 = [[BMSpanEventSubEvent alloc] initByReadFrom:fromCopy];
        if (!v27)
        {
          goto LABEL_150;
        }

        v28 = v27;
        v29 = v7;
        goto LABEL_116;
      case 0x2Bu:
        v87 = 0;
        v88 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_150;
        }

        v70 = [[BMSpanEventSubEvent alloc] initByReadFrom:fromCopy];
        if (!v70)
        {
          goto LABEL_150;
        }

        v28 = v70;
        v29 = v8;
        goto LABEL_116;
      case 0x2Cu:
        v87 = 0;
        v88 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_150;
        }

        v69 = [[BMSpanEventSubEvent alloc] initByReadFrom:fromCopy];
        if (!v69)
        {
          goto LABEL_150;
        }

        v28 = v69;
        v29 = v9;
LABEL_116:
        [v29 addObject:v28];
        PBReaderRecallMark();

        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

LABEL_150:

        goto LABEL_147;
    }

    while (1)
    {
      LOBYTE(v87) = 0;
      v23 = [fromCopy position] + 1;
      if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 1, v24 <= objc_msgSend(fromCopy, "length")))
      {
        data8 = [fromCopy data];
        [data8 getBytes:&v87 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v22 |= (v87 & 0x7F) << v20;
      if ((v87 & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v17 = v21++ >= 9;
      if (v17)
      {
        v26 = 0;
        goto LABEL_120;
      }
    }

    if ([fromCopy hasError])
    {
      v26 = 0;
    }

    else
    {
      v26 = v22;
    }

LABEL_120:
    v71 = 52;
LABEL_145:
    *(&v5->super.super.isa + v71) = v26;
  }

  v72 = [v85 copy];
  attributes = v5->_attributes;
  v5->_attributes = v72;

  v74 = [v6 copy];
  infoEvents = v5->_infoEvents;
  v5->_infoEvents = v74;

  v76 = [v7 copy];
  warningEvents = v5->_warningEvents;
  v5->_warningEvents = v76;

  v78 = [v8 copy];
  debugEvents = v5->_debugEvents;
  v5->_debugEvents = v78;

  v80 = [v9 copy];
  errorEvents = v5->_errorEvents;
  v5->_errorEvents = v80;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_147:
    v83 = 0;
  }

  else
  {
LABEL_148:
    v83 = v5;
  }

  return v83;
}

- (NSString)description
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  deviceIdentifier = [(BMSpanEvent *)self deviceIdentifier];
  testKey = [(BMSpanEvent *)self testKey];
  version = [(BMSpanEvent *)self version];
  name = [(BMSpanEvent *)self name];
  trialDeploymentId = [(BMSpanEvent *)self trialDeploymentId];
  trialExperimentId = [(BMSpanEvent *)self trialExperimentId];
  trialTreatmentId = [(BMSpanEvent *)self trialTreatmentId];
  traceId = [(BMSpanEvent *)self traceId];
  parentSpanId = [(BMSpanEvent *)self parentSpanId];
  spanId = [(BMSpanEvent *)self spanId];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent privatizedStartTime](self, "privatizedStartTime")}];
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent privatizedEndTime](self, "privatizedEndTime")}];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent intervalInMilliSeconds](self, "intervalInMilliSeconds")}];
  errorString = [(BMSpanEvent *)self errorString];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent errorCode](self, "errorCode")}];
  processName = [(BMSpanEvent *)self processName];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent startMemoryLevelInKB](self, "startMemoryLevelInKB")}];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent endMemoryLevelInKB](self, "endMemoryLevelInKB")}];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSpanEvent memoryLevelDeltaInKB](self, "memoryLevelDeltaInKB")}];
  gcdQueueName = [(BMSpanEvent *)self gcdQueueName];
  qosClassName = [(BMSpanEvent *)self qosClassName];
  relativePriority = [(BMSpanEvent *)self relativePriority];
  projectName = [(BMSpanEvent *)self projectName];
  attributes = [(BMSpanEvent *)self attributes];
  infoEvents = [(BMSpanEvent *)self infoEvents];
  warningEvents = [(BMSpanEvent *)self warningEvents];
  debugEvents = [(BMSpanEvent *)self debugEvents];
  errorEvents = [(BMSpanEvent *)self errorEvents];
  v19 = [v18 initWithFormat:@"BMSpanEvent with deviceIdentifier: %@, testKey: %@, version: %@, name: %@, trialDeploymentId: %@, trialExperimentId: %@, trialTreatmentId: %@, traceId: %@, parentSpanId: %@, spanId: %@, privatizedStartTime: %@, privatizedEndTime: %@, intervalInMilliSeconds: %@, errorString: %@, errorCode: %@, processName: %@, startMemoryLevelInKB: %@, endMemoryLevelInKB: %@, memoryLevelDeltaInKB: %@, gcdQueueName: %@, qosClassName: %@, relativePriority: %@, projectName: %@, attributes: %@, infoEvents: %@, warningEvents: %@, debugEvents: %@, errorEvents: %@", deviceIdentifier, testKey, version, name, trialDeploymentId, trialExperimentId, trialTreatmentId, traceId, parentSpanId, spanId, v16, v25, v15, errorString, v14, processName, v21, v20, v13, gcdQueueName, qosClassName, relativePriority, projectName, attributes, infoEvents, warningEvents, debugEvents, errorEvents];

  return v19;
}

- (BMSpanEvent)initWithDeviceIdentifier:(id)identifier testKey:(id)key version:(id)version name:(id)name trialDeploymentId:(id)id trialExperimentId:(id)experimentId trialTreatmentId:(id)treatmentId traceId:(id)self0 parentSpanId:(id)self1 spanId:(id)self2 privatizedStartTime:(id)self3 privatizedEndTime:(id)self4 intervalInMilliSeconds:(id)self5 errorString:(id)self6 errorCode:(id)self7 processName:(id)self8 startMemoryLevelInKB:(id)self9 endMemoryLevelInKB:(id)kB memoryLevelDeltaInKB:(id)inKB gcdQueueName:(id)queueName qosClassName:(id)className relativePriority:(id)priority projectName:(id)projectName attributes:(id)attributes infoEvents:(id)events warningEvents:(id)warningEvents debugEvents:(id)debugEvents errorEvents:(id)identifier0
{
  identifierCopy = identifier;
  keyCopy = key;
  versionCopy = version;
  nameCopy = name;
  nameCopy2 = name;
  idCopy = id;
  idCopy2 = id;
  experimentIdCopy = experimentId;
  treatmentIdCopy = treatmentId;
  traceIdCopy = traceId;
  spanIdCopy = spanId;
  v64 = a12;
  timeCopy = time;
  endTimeCopy = endTime;
  secondsCopy = seconds;
  stringCopy = string;
  codeCopy = code;
  processNameCopy = processName;
  bCopy = b;
  kBCopy = kB;
  inKBCopy = inKB;
  queueNameCopy = queueName;
  classNameCopy = className;
  priorityCopy = priority;
  projectNameCopy = projectName;
  attributesCopy = attributes;
  eventsCopy = events;
  warningEventsCopy = warningEvents;
  debugEventsCopy = debugEvents;
  errorEventsCopy = errorEvents;
  v76.receiver = self;
  v76.super_class = BMSpanEvent;
  v38 = [(BMEventBase *)&v76 init];
  if (v38)
  {
    v38->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v38->_deviceIdentifier, identifier);
    objc_storeStrong(&v38->_testKey, key);
    objc_storeStrong(&v38->_version, version);
    objc_storeStrong(&v38->_name, nameCopy);
    objc_storeStrong(&v38->_trialDeploymentId, idCopy);
    objc_storeStrong(&v38->_trialExperimentId, experimentId);
    objc_storeStrong(&v38->_trialTreatmentId, treatmentId);
    objc_storeStrong(&v38->_traceId, traceId);
    objc_storeStrong(&v38->_parentSpanId, spanId);
    objc_storeStrong(&v38->_spanId, a12);
    if (timeCopy)
    {
      v38->_hasPrivatizedStartTime = 1;
      unsignedIntValue = [timeCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v38->_hasPrivatizedStartTime = 0;
    }

    v38->_privatizedStartTime = unsignedIntValue;
    if (endTimeCopy)
    {
      v38->_hasPrivatizedEndTime = 1;
      unsignedIntValue2 = [endTimeCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v38->_hasPrivatizedEndTime = 0;
    }

    v38->_privatizedEndTime = unsignedIntValue2;
    if (secondsCopy)
    {
      v38->_hasIntervalInMilliSeconds = 1;
      unsignedIntValue3 = [secondsCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue3 = 0;
      v38->_hasIntervalInMilliSeconds = 0;
    }

    v38->_intervalInMilliSeconds = unsignedIntValue3;
    objc_storeStrong(&v38->_errorString, string);
    if (codeCopy)
    {
      v38->_hasErrorCode = 1;
      unsignedIntValue4 = [codeCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue4 = 0;
      v38->_hasErrorCode = 0;
    }

    v38->_errorCode = unsignedIntValue4;
    objc_storeStrong(&v38->_processName, processName);
    if (bCopy)
    {
      v38->_hasStartMemoryLevelInKB = 1;
      unsignedIntValue5 = [bCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue5 = 0;
      v38->_hasStartMemoryLevelInKB = 0;
    }

    v38->_startMemoryLevelInKB = unsignedIntValue5;
    if (kBCopy)
    {
      v38->_hasEndMemoryLevelInKB = 1;
      unsignedIntValue6 = [kBCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue6 = 0;
      v38->_hasEndMemoryLevelInKB = 0;
    }

    v38->_endMemoryLevelInKB = unsignedIntValue6;
    unsignedIntValue7 = inKBCopy;
    if (inKBCopy)
    {
      v38->_hasMemoryLevelDeltaInKB = 1;
      unsignedIntValue7 = [inKBCopy unsignedIntValue];
    }

    else
    {
      v38->_hasMemoryLevelDeltaInKB = 0;
    }

    v38->_memoryLevelDeltaInKB = unsignedIntValue7;
    objc_storeStrong(&v38->_gcdQueueName, queueName);
    objc_storeStrong(&v38->_qosClassName, className);
    objc_storeStrong(&v38->_relativePriority, priority);
    objc_storeStrong(&v38->_projectName, projectName);
    objc_storeStrong(&v38->_attributes, attributes);
    objc_storeStrong(&v38->_infoEvents, events);
    objc_storeStrong(&v38->_warningEvents, warningEvents);
    objc_storeStrong(&v38->_debugEvents, debugEvents);
    objc_storeStrong(&v38->_errorEvents, errorEvents);
  }

  return v38;
}

+ (id)protoFields
{
  v32[28] = *MEMORY[0x1E69E9840];
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceIdentifier" number:1 type:13 subMessageClass:0];
  v32[0] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"testKey" number:2 type:13 subMessageClass:0];
  v32[1] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"version" number:10 type:13 subMessageClass:0];
  v32[2] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:11 type:13 subMessageClass:0];
  v32[3] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialDeploymentId" number:12 type:13 subMessageClass:0];
  v32[4] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialExperimentId" number:13 type:13 subMessageClass:0];
  v32[5] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialTreatmentId" number:14 type:13 subMessageClass:0];
  v32[6] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"traceId" number:15 type:13 subMessageClass:0];
  v32[7] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"parentSpanId" number:16 type:13 subMessageClass:0];
  v32[8] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"spanId" number:17 type:13 subMessageClass:0];
  v32[9] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"privatizedStartTime" number:18 type:4 subMessageClass:0];
  v32[10] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"privatizedEndTime" number:19 type:4 subMessageClass:0];
  v32[11] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"intervalInMilliSeconds" number:20 type:4 subMessageClass:0];
  v32[12] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"errorString" number:21 type:13 subMessageClass:0];
  v32[13] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"errorCode" number:22 type:4 subMessageClass:0];
  v32[14] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"processName" number:23 type:13 subMessageClass:0];
  v32[15] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startMemoryLevelInKB" number:24 type:4 subMessageClass:0];
  v32[16] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endMemoryLevelInKB" number:25 type:4 subMessageClass:0];
  v32[17] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"memoryLevelDeltaInKB" number:26 type:4 subMessageClass:0];
  v32[18] = v13;
  v12 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"gcdQueueName" number:27 type:13 subMessageClass:0];
  v32[19] = v12;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"qosClassName" number:28 type:13 subMessageClass:0];
  v32[20] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"relativePriority" number:29 type:13 subMessageClass:0];
  v32[21] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"projectName" number:30 type:13 subMessageClass:0];
  v32[22] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"attributes" number:40 type:14 subMessageClass:objc_opt_class()];
  v32[23] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"infoEvents" number:41 type:14 subMessageClass:objc_opt_class()];
  v32[24] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"warningEvents" number:42 type:14 subMessageClass:objc_opt_class()];
  v32[25] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"debugEvents" number:43 type:14 subMessageClass:objc_opt_class()];
  v32[26] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"errorEvents" number:44 type:14 subMessageClass:objc_opt_class()];
  v32[27] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:28];

  return v10;
}

+ (id)columns
{
  v32[28] = *MEMORY[0x1E69E9840];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"testKey" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"version" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trialDeploymentId" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trialExperimentId" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trialTreatmentId" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"traceId" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"parentSpanId" dataType:2 requestOnly:0 fieldNumber:16 protoDataType:13 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"spanId" dataType:2 requestOnly:0 fieldNumber:17 protoDataType:13 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"privatizedStartTime" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:4 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"privatizedEndTime" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:4 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"intervalInMilliSeconds" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:4 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"errorString" dataType:2 requestOnly:0 fieldNumber:21 protoDataType:13 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"errorCode" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:4 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"processName" dataType:2 requestOnly:0 fieldNumber:23 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startMemoryLevelInKB" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:4 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endMemoryLevelInKB" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:4 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"memoryLevelDeltaInKB" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"gcdQueueName" dataType:2 requestOnly:0 fieldNumber:27 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"qosClassName" dataType:2 requestOnly:0 fieldNumber:28 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"relativePriority" dataType:2 requestOnly:0 fieldNumber:29 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"projectName" dataType:2 requestOnly:0 fieldNumber:30 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"attributes_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_366];
  v12 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"infoEvents_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_368];
  v11 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"warningEvents_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_370_78096];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"debugEvents_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_372_78098];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"errorEvents_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_374_78100];
  v32[0] = v31;
  v32[1] = v30;
  v32[2] = v29;
  v32[3] = v28;
  v32[4] = v27;
  v32[5] = v26;
  v32[6] = v25;
  v32[7] = v24;
  v32[8] = v23;
  v32[9] = v22;
  v32[10] = v21;
  v32[11] = v19;
  v32[12] = v17;
  v32[13] = v16;
  v32[14] = v20;
  v32[15] = v15;
  v32[16] = v18;
  v32[17] = v14;
  v32[18] = v2;
  v32[19] = v3;
  v32[20] = v4;
  v32[21] = v13;
  v32[22] = v5;
  v32[23] = v6;
  v32[24] = v12;
  v32[25] = v11;
  v32[26] = v7;
  v32[27] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:28];

  return v10;
}

id __22__BMSpanEvent_columns__block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _errorEventsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMSpanEvent_columns__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _debugEventsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMSpanEvent_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _warningEventsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMSpanEvent_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _infoEventsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __22__BMSpanEvent_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _attributesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (BMSpanEvent)eventWithData:(id)data dataVersion:(unsigned int)version
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

    v8 = [[BMSpanEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end