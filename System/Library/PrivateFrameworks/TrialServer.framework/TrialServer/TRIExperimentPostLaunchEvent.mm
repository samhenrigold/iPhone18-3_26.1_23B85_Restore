@interface TRIExperimentPostLaunchEvent
+ (id)_experimentStateNameForType:(unsigned __int8)type;
+ (id)activatedEventWithExperimentRecord:(id)record;
+ (id)allocationEventWithTriple:(id)triple isDynamicEnrollment:(BOOL)enrollment environment:(int)environment namespaces:(id)namespaces;
+ (id)deactivationEventWithTriggerEvent:(unint64_t)event experimentRecord:(id)record additionalTelemetry:(id)telemetry;
+ (id)eventWithEventType:(unsigned __int8)type experimentRecord:(id)record;
+ (id)eventWithEventType:(unsigned __int8)type treatmentTriple:(id)triple;
+ (id)failureEventWithEventType:(unsigned __int8)type treatmentTriple:(id)triple failureReason:(id)reason;
+ (id)fetchedEventWithExperimentRecord:(id)record;
+ (id)obsoletionOrDeactivationEventWithTriggerEvent:(unint64_t)event previousStateProvider:(id)provider experimentRecord:(id)record additionalTelemetry:(id)telemetry;
- (TRIExperimentPostLaunchEvent)initWithEventType:(unsigned __int8)type experimentStateName:(id)name experimentRecord:(id)record errorOrDeactivationReason:(id)reason telemetry:(id)telemetry;
- (TRIExperimentPostLaunchEvent)initWithEventType:(unsigned __int8)type experimentStateName:(id)name treatmentTriple:(id)triple errorOrDeactivationReason:(id)reason deploymentEnvironment:(int)environment versionedNamespaces:(id)namespaces telemetry:(id)telemetry;
- (id)experimentRecord;
@end

@implementation TRIExperimentPostLaunchEvent

- (id)experimentRecord
{
  treatmentTriple = [(TRIExperimentPostLaunchEvent *)self treatmentTriple];
  experimentId = [treatmentTriple experimentId];

  treatmentTriple2 = [(TRIExperimentPostLaunchEvent *)self treatmentTriple];
  deploymentId = [treatmentTriple2 deploymentId];

  treatmentTriple3 = [(TRIExperimentPostLaunchEvent *)self treatmentTriple];
  treatmentId = [treatmentTriple3 treatmentId];

  v9 = MEMORY[0x277D736C8];
  v10 = objc_opt_new();
  eventType = [(TRIExperimentPostLaunchEvent *)self eventType];
  deploymentEnvironment = [(TRIExperimentPostLaunchEvent *)self deploymentEnvironment];
  errorOrDeactivationReason = [(TRIExperimentPostLaunchEvent *)self errorOrDeactivationReason];
  versionedNamespaces = [(TRIExperimentPostLaunchEvent *)self versionedNamespaces];
  v15 = [v9 recordWithEventDate:v10 eventType:eventType deploymentEnvironment:deploymentEnvironment experimentId:experimentId deploymentId:deploymentId treatmentId:treatmentId errorOrDeactivationReason:errorOrDeactivationReason namespaces:versionedNamespaces];

  return v15;
}

- (TRIExperimentPostLaunchEvent)initWithEventType:(unsigned __int8)type experimentStateName:(id)name treatmentTriple:(id)triple errorOrDeactivationReason:(id)reason deploymentEnvironment:(int)environment versionedNamespaces:(id)namespaces telemetry:(id)telemetry
{
  nameCopy = name;
  tripleCopy = triple;
  reasonCopy = reason;
  namespacesCopy = namespaces;
  telemetryCopy = telemetry;
  if (!tripleCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentPostLaunchEvent.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"treatmentTriple"}];
  }

  v26.receiver = self;
  v26.super_class = TRIExperimentPostLaunchEvent;
  v18 = [(TRIExperimentPostLaunchEvent *)&v26 init];
  v19 = v18;
  if (v18)
  {
    v18->_eventType = type;
    objc_storeStrong(&v18->_experimentStateName, name);
    objc_storeStrong(&v19->_treatmentTriple, triple);
    objc_storeStrong(&v19->_errorOrDeactivationReason, reason);
    v19->_deploymentEnvironment = environment;
    objc_storeStrong(&v19->_versionedNamespaces, namespaces);
    objc_storeStrong(&v19->_additionalTelemetry, telemetry);
  }

  return v19;
}

- (TRIExperimentPostLaunchEvent)initWithEventType:(unsigned __int8)type experimentStateName:(id)name experimentRecord:(id)record errorOrDeactivationReason:(id)reason telemetry:(id)telemetry
{
  typeCopy = type;
  telemetryCopy = telemetry;
  reasonCopy = reason;
  recordCopy = record;
  nameCopy = name;
  treatmentId = [recordCopy treatmentId];
  v16 = treatmentId;
  v17 = @"unspecified-or-default-treatment";
  if (treatmentId)
  {
    v17 = treatmentId;
  }

  v18 = v17;

  experimentDeployment = [recordCopy experimentDeployment];
  experimentId = [experimentDeployment experimentId];
  experimentDeployment2 = [recordCopy experimentDeployment];
  v22 = +[TRIExperimentDeploymentTreatment treatmentTripleWithExperimentId:deploymentId:treatmentId:](TRIExperimentDeploymentTreatment, "treatmentTripleWithExperimentId:deploymentId:treatmentId:", experimentId, [experimentDeployment2 deploymentId], v18);

  deploymentEnvironment = [recordCopy deploymentEnvironment];
  versionedNamespaces = [recordCopy versionedNamespaces];

  v25 = [(TRIExperimentPostLaunchEvent *)self initWithEventType:typeCopy experimentStateName:nameCopy treatmentTriple:v22 errorOrDeactivationReason:reasonCopy deploymentEnvironment:deploymentEnvironment versionedNamespaces:versionedNamespaces telemetry:telemetryCopy];
  return v25;
}

+ (id)eventWithEventType:(unsigned __int8)type experimentRecord:(id)record
{
  typeCopy = type;
  recordCopy = record;
  if (!recordCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentPostLaunchEvent.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"record"}];
  }

  if ([TRIExperimentPostLaunchEvent _isCategoricalLoggingEventType:typeCopy])
  {
    v8 = 0;
  }

  else
  {
    v9 = [TRIExperimentPostLaunchEvent alloc];
    v10 = [TRIExperimentPostLaunchEvent _experimentStateNameForType:typeCopy];
    v8 = [(TRIExperimentPostLaunchEvent *)v9 initWithEventType:typeCopy experimentStateName:v10 experimentRecord:recordCopy errorOrDeactivationReason:0];
  }

  return v8;
}

+ (id)eventWithEventType:(unsigned __int8)type treatmentTriple:(id)triple
{
  typeCopy = type;
  tripleCopy = triple;
  if (!tripleCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentPostLaunchEvent.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"treatmentTriple"}];
  }

  if ([TRIExperimentPostLaunchEvent _isCategoricalLoggingEventType:typeCopy])
  {
    v8 = 0;
  }

  else
  {
    v9 = [TRIExperimentPostLaunchEvent alloc];
    v10 = [TRIExperimentPostLaunchEvent _experimentStateNameForType:typeCopy];
    v8 = [(TRIExperimentPostLaunchEvent *)v9 initWithEventType:typeCopy experimentStateName:v10 treatmentTriple:tripleCopy errorOrDeactivationReason:0 deploymentEnvironment:0 versionedNamespaces:0 telemetry:0];
  }

  return v8;
}

+ (id)activatedEventWithExperimentRecord:(id)record
{
  v5 = [TRIExperimentPostLaunchEvent eventWithEventType:2 experimentRecord:record];
  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentPostLaunchEvent.m" lineNumber:169 description:{@"Expression was unexpectedly nil/false: %@", @"[TRIExperimentPostLaunchEvent eventWithEventType:TRIInternalExperimentAllocationStatusTypeActivatedTreatment experimentRecord:record]"}];
  }

  return v5;
}

+ (id)fetchedEventWithExperimentRecord:(id)record
{
  v5 = [TRIExperimentPostLaunchEvent eventWithEventType:4 experimentRecord:record];
  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentPostLaunchEvent.m" lineNumber:173 description:{@"Expression was unexpectedly nil/false: %@", @"[TRIExperimentPostLaunchEvent eventWithEventType:TRIInternalExperimentAllocationStatusTypeFetchedTreatment experimentRecord:record]"}];
  }

  return v5;
}

+ (id)deactivationEventWithTriggerEvent:(unint64_t)event experimentRecord:(id)record additionalTelemetry:(id)telemetry
{
  recordCopy = record;
  telemetryCopy = telemetry;
  v11 = telemetryCopy;
  if (recordCopy)
  {
    if (telemetryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentPostLaunchEvent.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"record"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIExperimentPostLaunchEvent.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"telemetry"}];

LABEL_3:
  v12 = [TRIDeactivationTriggerEventString categoricalValueForTriggerEvent:event];
  v13 = [TRIExperimentPostLaunchEvent alloc];
  v14 = [TRIExperimentPostLaunchEvent _experimentStateNameForType:3];
  v15 = [(TRIExperimentPostLaunchEvent *)v13 initWithEventType:3 experimentStateName:v14 experimentRecord:recordCopy errorOrDeactivationReason:v12 telemetry:v11];

  return v15;
}

+ (id)allocationEventWithTriple:(id)triple isDynamicEnrollment:(BOOL)enrollment environment:(int)environment namespaces:(id)namespaces
{
  v7 = *&environment;
  v9 = @"retargeting_by_dynamic_enrollment";
  if (!enrollment)
  {
    v9 = 0;
  }

  v10 = v9;
  tripleCopy = triple;
  v12 = [namespaces _pas_mappedArrayWithTransform:&__block_literal_global_107_0];
  v13 = [TRIExperimentPostLaunchEvent alloc];
  v14 = [TRIExperimentPostLaunchEvent _experimentStateNameForType:1];
  v15 = [(TRIExperimentPostLaunchEvent *)v13 initWithEventType:1 experimentStateName:v14 treatmentTriple:tripleCopy errorOrDeactivationReason:v10 deploymentEnvironment:v7 versionedNamespaces:v12 telemetry:0];

  return v15;
}

id __115__TRIExperimentPostLaunchEvent_EventFactory__allocationEventWithTriple_isDynamicEnrollment_environment_namespaces___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D73808];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 name];
  v6 = [v3 compatibilityVersion];

  v7 = [v4 initWithName:v5 compatibilityVersion:v6];

  return v7;
}

+ (id)failureEventWithEventType:(unsigned __int8)type treatmentTriple:(id)triple failureReason:(id)reason
{
  typeCopy = type;
  tripleCopy = triple;
  reasonCopy = reason;
  if ([self _isErrorType:typeCopy])
  {
    v10 = [TRIExperimentPostLaunchEvent alloc];
    v11 = [TRIExperimentPostLaunchEvent _experimentStateNameForType:typeCopy];
    v12 = [(TRIExperimentPostLaunchEvent *)v10 initWithEventType:typeCopy experimentStateName:v11 treatmentTriple:tripleCopy errorOrDeactivationReason:reasonCopy deploymentEnvironment:0 versionedNamespaces:0 telemetry:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)obsoletionOrDeactivationEventWithTriggerEvent:(unint64_t)event previousStateProvider:(id)provider experimentRecord:(id)record additionalTelemetry:(id)telemetry
{
  providerCopy = provider;
  recordCopy = record;
  telemetryCopy = telemetry;
  if ([recordCopy status] == 2)
  {
    if (providerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIExperimentPostLaunchEvent.m" lineNumber:233 description:@"Cannot attempt to obsolete for a record not in enrollment"];

    if (providerCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIExperimentPostLaunchEvent.m" lineNumber:234 description:{@"Invalid parameter not satisfying: %@", @"prevProvider"}];

LABEL_3:
  treatmentId = [recordCopy treatmentId];

  if (treatmentId)
  {
    if (telemetryCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIExperimentPostLaunchEvent.m" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"record.treatmentId"}];

    if (telemetryCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRIExperimentPostLaunchEvent.m" lineNumber:236 description:{@"Invalid parameter not satisfying: %@", @"telemetry"}];

LABEL_5:
  experimentDeployment = [recordCopy experimentDeployment];
  experimentId = [experimentDeployment experimentId];
  experimentDeployment2 = [recordCopy experimentDeployment];
  deploymentId = [experimentDeployment2 deploymentId];
  treatmentId2 = [recordCopy treatmentId];
  v20 = [TRIExperimentDeploymentTreatment treatmentTripleWithExperimentId:experimentId deploymentId:deploymentId treatmentId:treatmentId2];

  v21 = [providerCopy previousExperimentStateForTriple:v20];
  v22 = [TRIDeactivationTriggerEventString categoricalValueForTriggerEvent:event];
  v23 = [TRIExperimentPostLaunchEvent alloc];
  v24 = 5;
  if (v21 != 1)
  {
    v24 = 0;
  }

  if (v21 == 4)
  {
    v24 = 6;
  }

  v25 = [(TRIExperimentPostLaunchEvent *)v23 initWithEventType:3 experimentStateName:off_279DE2188[v24] experimentRecord:recordCopy errorOrDeactivationReason:v22 telemetry:telemetryCopy];

  return v25;
}

+ (id)_experimentStateNameForType:(unsigned __int8)type
{
  typeCopy = type;
  result = 0;
  v9 = *MEMORY[0x277D85DE8];
  if (type <= 4)
  {
    if (type > 1)
    {
      if (type == 2)
      {
        return @"exp_st_AC";
      }

      if (type == 3)
      {
        return @"exp_st_DE";
      }

      return @"exp_st_FE";
    }

    if (!type)
    {
      return result;
    }

    if (type == 1)
    {
      return @"exp_st_AL";
    }

    goto LABEL_20;
  }

  if (type > 6)
  {
    switch(type)
    {
      case 7u:
        return @"exp_st_FE_F";
      case 8u:
        return @"exp_st_AC_F";
      case 9u:
        return @"exp_st_DE_F";
    }

LABEL_20:
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:typeCopy];
      v7 = 138412290;
      v8 = v6;
      _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "Unexpected eventType %@ encountered", &v7, 0xCu);
    }

    return 0;
  }

  if (type != 5)
  {
    return @"exp_st_AL_F";
  }

  return result;
}

@end