@interface DRSConfigMetadata
+ (BOOL)_isValidState:(unsigned __int8)state completionType:(unint64_t)type receivedDate:(id)date appliedDate:(id)appliedDate completedDate:(id)completedDate completionDescription:(id)description;
+ (id)_ON_CONTEXT_QUEUE_configMetadataForFilterPredicate:(id)predicate context:(id)context sortDescriptors:(id)descriptors fetchLimit:(unint64_t)limit errorOut:(id *)out;
+ (id)_ON_CONTEXT_QUEUE_existingBackingMOWithConfigUUID:(id)d context:(id)context errorOut:(id *)out;
+ (unint64_t)_ON_CONTEXT_QUEUE_countForFilterPredicate:(id)predicate context:(id)context errorOut:(id *)out;
- (BOOL)_updateContextWithMORepresentation:(id)representation errorOut:(id *)out;
- (BOOL)isEqual:(id)equal;
- (DRSConfigMetadata)initWithTeamID:(id)d configUUID:(id)iD state:(unsigned __int8)state completionType:(unint64_t)type receivedDate:(id)date appliedDate:(id)appliedDate completedDate:(id)completedDate completionDescription:(id)self0 config:(id)self1 logTelemetry:(BOOL)self2 reportToDecisionServer:(BOOL)self3;
- (id)_ON_CONTEXT_QUEUE_initWithConfigMetadataMO:(id)o;
- (id)_ON_CONTEXT_QUEUE_moRepresentationInContext:(id)context createIfMissing:(BOOL)missing errorOut:(id *)out;
- (id)_uuidPredicate;
- (id)jsonDictionaryRepresentation;
@end

@implementation DRSConfigMetadata

+ (BOOL)_isValidState:(unsigned __int8)state completionType:(unint64_t)type receivedDate:(id)date appliedDate:(id)appliedDate completedDate:(id)completedDate completionDescription:(id)description
{
  stateCopy = state;
  v27 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  appliedDateCopy = appliedDate;
  completedDateCopy = completedDate;
  descriptionCopy = description;
  v17 = descriptionCopy;
  if (dateCopy)
  {
    if ((stateCopy - 1) < 2 != (type != 4097))
    {
      if (stateCopy == 3 || !descriptionCopy)
      {
        switch(stateCopy)
        {
          case 3:
            if (!appliedDateCopy)
            {
              v18 = DPLogHandle_ConfigPersistedStoreError(descriptionCopy);
              if (!os_signpost_enabled(v18))
              {
                goto LABEL_13;
              }

              LOWORD(v24[0]) = 0;
              v19 = "Missing applied date";
              goto LABEL_9;
            }

            if (!completedDateCopy)
            {
              v18 = DPLogHandle_ConfigPersistedStoreError(descriptionCopy);
              if (!os_signpost_enabled(v18))
              {
                goto LABEL_13;
              }

              LOWORD(v24[0]) = 0;
              v19 = "Complete state must have a non-nil completed date";
              goto LABEL_9;
            }

            if ([appliedDateCopy compare:dateCopy] == -1)
            {
              v18 = DPLogHandle_ConfigPersistedStoreError(-1);
              if (!os_signpost_enabled(v18))
              {
                goto LABEL_13;
              }

              LOWORD(v24[0]) = 0;
              v19 = "Applied date < received date";
              goto LABEL_9;
            }

            if ([completedDateCopy compare:appliedDateCopy] == -1)
            {
              v18 = DPLogHandle_ConfigPersistedStoreError(-1);
              if (!os_signpost_enabled(v18))
              {
                goto LABEL_13;
              }

              LOWORD(v24[0]) = 0;
              v19 = "Completed date > applied date";
              goto LABEL_9;
            }

            break;
          case 2:
            if (!appliedDateCopy)
            {
              v18 = DPLogHandle_ConfigPersistedStoreError(descriptionCopy);
              if (!os_signpost_enabled(v18))
              {
                goto LABEL_13;
              }

              LOWORD(v24[0]) = 0;
              v19 = "Missing applied date";
              goto LABEL_9;
            }

            if (completedDateCopy)
            {
              v18 = DPLogHandle_ConfigPersistedStoreError(descriptionCopy);
              if (!os_signpost_enabled(v18))
              {
                goto LABEL_13;
              }

              LOWORD(v24[0]) = 0;
              v19 = "Active state must have a nil completed date";
              goto LABEL_9;
            }

            if ([appliedDateCopy compare:dateCopy] == -1)
            {
              v18 = DPLogHandle_ConfigPersistedStoreError(-1);
              if (!os_signpost_enabled(v18))
              {
                goto LABEL_13;
              }

              LOWORD(v24[0]) = 0;
              v19 = "Applied date > received date";
              goto LABEL_9;
            }

            break;
          case 1:
            if (appliedDateCopy)
            {
              v18 = DPLogHandle_ConfigPersistedStoreError(descriptionCopy);
              if (!os_signpost_enabled(v18))
              {
                goto LABEL_13;
              }

              LOWORD(v24[0]) = 0;
              v19 = "Waiting state must have nil applied date";
              goto LABEL_9;
            }

            if (completedDateCopy)
            {
              v18 = DPLogHandle_ConfigPersistedStoreError(descriptionCopy);
              if (!os_signpost_enabled(v18))
              {
                goto LABEL_13;
              }

              LOWORD(v24[0]) = 0;
              v19 = "Waiting state must have nil completed date";
              goto LABEL_9;
            }

            break;
        }

        v22 = 1;
        goto LABEL_14;
      }

      v18 = DPLogHandle_ConfigPersistedStoreError(descriptionCopy);
      if (os_signpost_enabled(v18))
      {
        LOWORD(v24[0]) = 0;
        v19 = "Waiting state must have nil completion description";
LABEL_9:
        v20 = v18;
        v21 = 2;
LABEL_12:
        _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidMetadataConfiguration", v19, v24, v21);
      }
    }

    else
    {
      v18 = DPLogHandle_ConfigPersistedStoreError(descriptionCopy);
      if (os_signpost_enabled(v18))
      {
        v24[0] = 67109376;
        v24[1] = stateCopy;
        v25 = 2048;
        typeCopy = type;
        v19 = "State %u is incompatible with completion type: %llu";
        v20 = v18;
        v21 = 18;
        goto LABEL_12;
      }
    }
  }

  else
  {
    v18 = DPLogHandle_ConfigPersistedStoreError(descriptionCopy);
    if (os_signpost_enabled(v18))
    {
      LOWORD(v24[0]) = 0;
      v19 = "Missing received date";
      goto LABEL_9;
    }
  }

LABEL_13:

  v22 = 0;
LABEL_14:

  return v22;
}

- (DRSConfigMetadata)initWithTeamID:(id)d configUUID:(id)iD state:(unsigned __int8)state completionType:(unint64_t)type receivedDate:(id)date appliedDate:(id)appliedDate completedDate:(id)completedDate completionDescription:(id)self0 config:(id)self1 logTelemetry:(BOOL)self2 reportToDecisionServer:(BOOL)self3
{
  stateCopy = state;
  descriptionCopy = description;
  configCopy = config;
  completedDateCopy = completedDate;
  v51 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  dateCopy = date;
  appliedDateCopy = appliedDate;
  completedDateCopy2 = completedDate;
  descriptionCopy2 = description;
  configCopy2 = config;
  v23 = configCopy2;
  if (!dCopy)
  {
    v28 = DPLogHandle_ConfigPersistedStoreError(configCopy2);
    if (os_signpost_enabled(v28))
    {
      *buf = 0;
      v29 = "Missing teamID";
      goto LABEL_16;
    }

LABEL_17:

LABEL_18:
    v32 = 0;
    selfCopy2 = self;
    goto LABEL_19;
  }

  v39 = dCopy;
  if (configCopy2 && ([configCopy2 teamID], v24 = v23, v25 = type, v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isEqualToString:", dCopy), v26, type = v25, v23 = v24, configCopy = config, descriptionCopy = description, completedDateCopy = completedDate, (v27 & 1) == 0))
  {
    v30 = DPLogHandle_ConfigPersistedStoreError(configCopy2);
    if (os_signpost_enabled(v30))
    {
      teamID = [v23 teamID];
      *buf = 138543618;
      v48 = v39;
      v49 = 2114;
      v50 = teamID;
      _os_signpost_emit_with_name_impl(&dword_232906000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidMetadataConfiguration", "teamID does not match config teamID (%{public}@ vs %{public}@)", buf, 0x16u);
    }

    v32 = 0;
    dCopy = v39;
    selfCopy2 = self;
  }

  else
  {
    if (!iDCopy)
    {
      v28 = DPLogHandle_ConfigPersistedStoreError(configCopy2);
      dCopy = v39;
      if (os_signpost_enabled(v28))
      {
        *buf = 0;
        v29 = "Missing UUID";
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    dCopy = v39;
    if (stateCopy != 3 && !v23)
    {
      v28 = DPLogHandle_ConfigPersistedStoreError(configCopy2);
      if (os_signpost_enabled(v28))
      {
        *buf = 0;
        v29 = "Waiting or active state must have config";
LABEL_16:
        _os_signpost_emit_with_name_impl(&dword_232906000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidMetadataConfiguration", v29, buf, 2u);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    if (![objc_opt_class() _isValidState:stateCopy completionType:type receivedDate:dateCopy appliedDate:appliedDateCopy completedDate:completedDateCopy2 completionDescription:descriptionCopy2])
    {
      goto LABEL_18;
    }

    typeCopy = type;
    v46.receiver = self;
    v46.super_class = DRSConfigMetadata;
    v35 = [(DRSConfigMetadata *)&v46 init];
    v36 = v35;
    if (v35)
    {
      objc_storeStrong(&v35->_teamID, d);
      objc_storeStrong(&v36->_configUUID, iD);
      v36->_state = stateCopy;
      v36->_completionType = typeCopy;
      objc_storeStrong(&v36->_receivedDate, date);
      objc_storeStrong(&v36->_appliedDate, appliedDate);
      objc_storeStrong(&v36->_completedDate, completedDateCopy);
      objc_storeStrong(&v36->_completionDescription, descriptionCopy);
      objc_storeStrong(&v36->_config, configCopy);
      v36->_logTelemetry = telemetry;
      dCopy = v39;
      v36->_reportToDecisionServer = server;
    }

    selfCopy2 = v36;
    v32 = selfCopy2;
  }

LABEL_19:

  return v32;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_23;
  }

  if (equalCopy == self)
  {
    v47 = 1;
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    state = [(DRSConfigMetadata *)self state];
    if (state == [(DRSConfigMetadata *)v6 state]
      && (v8 = [(DRSConfigMetadata *)self completionType], v8 == [(DRSConfigMetadata *)v6 completionType])
      && (v9 = [(DRSConfigMetadata *)self logTelemetry], v9 == [(DRSConfigMetadata *)v6 logTelemetry])
      && (v10 = [(DRSConfigMetadata *)self reportToDecisionServer], v10 == [(DRSConfigMetadata *)v6 reportToDecisionServer])
      && (-[DRSConfigMetadata teamID](self, "teamID"), v11 = objc_claimAutoreleasedReturnValue(), -[DRSConfigMetadata teamID](v6, "teamID"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v11 isEqualToString:v12], v12, v11, v13)
      && (-[DRSConfigMetadata configUUID](self, "configUUID"), v14 = objc_claimAutoreleasedReturnValue(), -[DRSConfigMetadata configUUID](v6, "configUUID"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v14 isEqual:v15], v15, v14, v16)
      && (-[DRSConfigMetadata receivedDate](self, "receivedDate"), v17 = objc_claimAutoreleasedReturnValue(), -[DRSConfigMetadata receivedDate](v6, "receivedDate"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v17 isEqualToDate:v18], v18, v17, v19)
      && ([(DRSConfigMetadata *)self appliedDate], v20 = objc_claimAutoreleasedReturnValue(), [(DRSConfigMetadata *)v6 appliedDate], v21 = objc_claimAutoreleasedReturnValue(), IsNil = _oneIsNil(v20, v21), v21, v20, (IsNil & 1) == 0)
      && ((-[DRSConfigMetadata appliedDate](self, "appliedDate"), (v23 = objc_claimAutoreleasedReturnValue()) == 0) || (v24 = v23, -[DRSConfigMetadata appliedDate](self, "appliedDate"), v25 = objc_claimAutoreleasedReturnValue(), -[DRSConfigMetadata appliedDate](v6, "appliedDate"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v25 isEqualToDate:v26], v26, v25, v24, v27))
      && ([(DRSConfigMetadata *)self completedDate], v28 = objc_claimAutoreleasedReturnValue(), [(DRSConfigMetadata *)v6 completedDate], v29 = objc_claimAutoreleasedReturnValue(), v30 = _oneIsNil(v28, v29), v29, v28, (v30 & 1) == 0)
      && ((-[DRSConfigMetadata completedDate](self, "completedDate"), (v31 = objc_claimAutoreleasedReturnValue()) == 0) || (v32 = v31, -[DRSConfigMetadata completedDate](self, "completedDate"), v33 = objc_claimAutoreleasedReturnValue(), -[DRSConfigMetadata completedDate](v6, "completedDate"), v34 = objc_claimAutoreleasedReturnValue(), v35 = [v33 isEqualToDate:v34], v34, v33, v32, v35))
      && ([(DRSConfigMetadata *)self completionDescription], v36 = objc_claimAutoreleasedReturnValue(), [(DRSConfigMetadata *)v6 completionDescription], v37 = objc_claimAutoreleasedReturnValue(), v38 = _oneIsNil(v36, v37), v37, v36, (v38 & 1) == 0)
      && ((-[DRSConfigMetadata completionDescription](self, "completionDescription"), (v39 = objc_claimAutoreleasedReturnValue()) == 0) || (v40 = v39, -[DRSConfigMetadata completionDescription](self, "completionDescription"), v41 = objc_claimAutoreleasedReturnValue(), -[DRSConfigMetadata completionDescription](v6, "completionDescription"), v42 = objc_claimAutoreleasedReturnValue(), v43 = [v41 isEqualToString:v42], v42, v41, v40, v43))
      && ([(DRSConfigMetadata *)self config], v44 = objc_claimAutoreleasedReturnValue(), [(DRSConfigMetadata *)v6 config], v45 = objc_claimAutoreleasedReturnValue(), v46 = _oneIsNil(v44, v45), v45, v44, (v46 & 1) == 0))
    {
      config = [(DRSConfigMetadata *)self config];
      if (config)
      {
        v50 = config;
        config2 = [(DRSConfigMetadata *)self config];
        config3 = [(DRSConfigMetadata *)v6 config];
        v47 = [config2 isEqual:config3];
      }

      else
      {
        v47 = 1;
      }
    }

    else
    {
      v47 = 0;
    }
  }

  else
  {
LABEL_23:
    v47 = 0;
  }

LABEL_25:

  return v47 & 1;
}

- (id)_ON_CONTEXT_QUEUE_initWithConfigMetadataMO:(id)o
{
  oCopy = o;
  configMO = [oCopy configMO];
  v22 = configMO;
  if (configMO)
  {
    v6 = configMO;
    v7 = objc_alloc(MEMORY[0x277D051F8]);
    v23 = [v7 ON_CONTEXT_QUEUE_initWithConfigMO:v6];
  }

  else
  {
    v23 = 0;
  }

  selfCopy = self;
  teamID = [oCopy teamID];
  configUUID = [oCopy configUUID];
  state = [oCopy state];
  completionType = [oCopy completionType];
  receivedDate = [oCopy receivedDate];
  appliedDate = [oCopy appliedDate];
  completedDate = [oCopy completedDate];
  completionDescription = [oCopy completionDescription];
  logTelemetry = [oCopy logTelemetry];
  reportToDecisionServer = [oCopy reportToDecisionServer];

  BYTE1(v19) = reportToDecisionServer;
  LOBYTE(v19) = logTelemetry;
  v17 = [(DRSConfigMetadata *)selfCopy initWithTeamID:teamID configUUID:configUUID state:state completionType:completionType receivedDate:receivedDate appliedDate:appliedDate completedDate:completedDate completionDescription:completionDescription config:v23 logTelemetry:v19 reportToDecisionServer:?];

  return v17;
}

- (id)_uuidPredicate
{
  v2 = MEMORY[0x277CCAC30];
  configUUID = [(DRSConfigMetadata *)self configUUID];
  v4 = [v2 predicateWithFormat:@"configUUID == %@", configUUID];

  return v4;
}

+ (id)_ON_CONTEXT_QUEUE_existingBackingMOWithConfigUUID:(id)d context:(id)context errorOut:(id *)out
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = MEMORY[0x277CCAC30];
  contextCopy = context;
  dCopy = [v9 predicateWithFormat:@"configUUID == %@", dCopy];
  v12 = [self _ON_CONTEXT_QUEUE_configMetadataForFilterPredicate:dCopy context:contextCopy sortDescriptors:0 fetchLimit:0 errorOut:out];

  firstObject = 0;
  if (!*out && v12)
  {
    if ([v12 count])
    {
      v14 = [v12 count];
      if (v14 == 1)
      {
        firstObject = [v12 firstObject];
        goto LABEL_10;
      }

      v15 = DPLogHandle_ConfigPersistedStoreError(v14);
      if (os_signpost_enabled(v15))
      {
        *buf = 138543362;
        v22 = dCopy;
        _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigMetadataQueryFailed", "Found more than 1 ConfigMetadata with UUID %{public}@", buf, 0xCu);
      }

      v16 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      v20 = @"Duplicate UUIDs";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      *out = [v16 errorWithDomain:@"DRSConfigPersistenceError" code:0 userInfo:v17];
    }

    firstObject = 0;
  }

LABEL_10:

  return firstObject;
}

+ (id)_ON_CONTEXT_QUEUE_configMetadataForFilterPredicate:(id)predicate context:(id)context sortDescriptors:(id)descriptors fetchLimit:(unint64_t)limit errorOut:(id *)out
{
  v25 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  v14 = +[DRSConfigMetadataMO fetchRequest];
  [v14 setPredicate:predicateCopy];

  [v14 setSortDescriptors:descriptorsCopy];
  if (limit)
  {
    [v14 setFetchLimit:limit];
  }

  v22 = 0;
  v15 = [contextCopy executeFetchRequest:v14 error:&v22];
  v16 = v22;
  v17 = v16;
  if (v16)
  {
    v18 = v16;
    *out = v17;
    v19 = DPLogHandle_ConfigPersistedStoreError(v18);
    if (os_signpost_enabled(v19))
    {
      *buf = 138543362;
      v24 = v17;
      _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigMetadataQueryFailed", "Failed due to error %{public}@", buf, 0xCu);
    }

    v20 = 0;
  }

  else
  {
    v20 = v15;
  }

  return v20;
}

+ (unint64_t)_ON_CONTEXT_QUEUE_countForFilterPredicate:(id)predicate context:(id)context errorOut:(id *)out
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  predicateCopy = predicate;
  v9 = +[DRSConfigMetadataMO fetchRequest];
  [v9 setPredicate:predicateCopy];

  v16 = 0;
  v10 = [contextCopy countForFetchRequest:v9 error:&v16];

  v11 = v16;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    *out = v12;
    v14 = DPLogHandle_ConfigPersistedStoreError(v13);
    if (os_signpost_enabled(v14))
    {
      *buf = 138543362;
      v18 = v12;
      _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigMetadataCountQueryFailed", "Failed due to error %{public}@", buf, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

- (id)_ON_CONTEXT_QUEUE_moRepresentationInContext:(id)context createIfMissing:(BOOL)missing errorOut:(id *)out
{
  missingCopy = missing;
  v35[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v9 = objc_opt_class();
  configUUID = [(DRSConfigMetadata *)self configUUID];
  v11 = [v9 _ON_CONTEXT_QUEUE_existingBackingMOWithConfigUUID:configUUID context:contextCopy errorOut:out];

  if (*out)
  {
    goto LABEL_2;
  }

  v13 = v11;
  if (!v11)
  {
    if (missingCopy)
    {
      v13 = [[DRSConfigMetadataMO alloc] initWithContext:contextCopy];
      if (v13)
      {
        goto LABEL_4;
      }

      v24 = MEMORY[0x277CCACA8];
      configUUID2 = [(DRSConfigMetadata *)self configUUID];
      v26 = [v24 stringWithFormat:@"Could not create DRSConfigMetadataMO instance for %@", configUUID2];

      v27 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277CCA450];
      v35[0] = v26;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      *out = [v27 errorWithDomain:@"DRSConfigPersistenceError" code:0 userInfo:v28];

      v30 = DPLogHandle_ConfigPersistedStoreError(v29);
      if (os_signpost_enabled(v30))
      {
        configUUID3 = [(DRSConfigMetadata *)self configUUID];
        *buf = 138543362;
        v33 = configUUID3;
        _os_signpost_emit_with_name_impl(&dword_232906000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigMetadataQueryFailed", "Could not initalize DRSConfigMetadataMO instance for %{public}@", buf, 0xCu);
      }
    }

    v11 = 0;
LABEL_2:
    v12 = 0;
    goto LABEL_8;
  }

LABEL_4:
  teamID = [(DRSConfigMetadata *)self teamID];
  [(DRSConfigMetadataMO *)v13 setTeamID:teamID];

  configUUID4 = [(DRSConfigMetadata *)self configUUID];
  [(DRSConfigMetadataMO *)v13 setConfigUUID:configUUID4];

  [(DRSConfigMetadataMO *)v13 setState:[(DRSConfigMetadata *)self state]];
  [(DRSConfigMetadataMO *)v13 setCompletionType:[(DRSConfigMetadata *)self completionType]];
  receivedDate = [(DRSConfigMetadata *)self receivedDate];
  [(DRSConfigMetadataMO *)v13 setReceivedDate:receivedDate];

  appliedDate = [(DRSConfigMetadata *)self appliedDate];
  [(DRSConfigMetadataMO *)v13 setAppliedDate:appliedDate];

  completedDate = [(DRSConfigMetadata *)self completedDate];
  [(DRSConfigMetadataMO *)v13 setCompletedDate:completedDate];

  completionDescription = [(DRSConfigMetadata *)self completionDescription];
  [(DRSConfigMetadataMO *)v13 setCompletionDescription:completionDescription];

  [(DRSConfigMetadataMO *)v13 setLogTelemetry:[(DRSConfigMetadata *)self logTelemetry]];
  [(DRSConfigMetadataMO *)v13 setReportToDecisionServer:[(DRSConfigMetadata *)self reportToDecisionServer]];
  if (!v11)
  {
    config = [(DRSConfigMetadata *)self config];

    if (config)
    {
      config2 = [(DRSConfigMetadata *)self config];
      v22 = [config2 ON_CONTEXT_QUEUE_configMOInContext:contextCopy];

      [(DRSConfigMetadataMO *)v13 setConfigMO:v22];
    }
  }

  v11 = v13;
  v12 = v11;
LABEL_8:

  return v12;
}

- (BOOL)_updateContextWithMORepresentation:(id)representation errorOut:(id *)out
{
  representationCopy = representation;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7;
  v18 = __Block_byref_object_dispose__7;
  v19 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__DRSConfigMetadata__updateContextWithMORepresentation_errorOut___block_invoke;
  v10[3] = &unk_27899ED80;
  v10[4] = self;
  v7 = representationCopy;
  v11 = v7;
  v12 = &v14;
  v13 = &v20;
  [v7 performBlockAndWait:v10];
  if (out)
  {
    *out = v15[5];
  }

  v8 = *(v21 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

void __65__DRSConfigMetadata__updateContextWithMORepresentation_errorOut___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = 0;
  v4 = [v2 _ON_CONTEXT_QUEUE_moRepresentationInContext:v3 createIfMissing:1 errorOut:&v7];
  v5 = v7;
  v6 = v7;
  objc_storeStrong((*(a1[6] + 8) + 40), v5);
  if (v4)
  {
    *(*(a1[7] + 8) + 24) = 1;
  }
}

- (id)jsonDictionaryRepresentation
{
  v30[6] = *MEMORY[0x277D85DE8];
  v29[0] = @"teamID";
  teamID = [(DRSConfigMetadata *)self teamID];
  v30[0] = teamID;
  v29[1] = @"configUUID";
  configUUID = [(DRSConfigMetadata *)self configUUID];
  uUIDString = [configUUID UUIDString];
  v30[1] = uUIDString;
  v29[2] = @"receivedDate";
  v5 = MEMORY[0x277CCABB0];
  receivedDate = [(DRSConfigMetadata *)self receivedDate];
  [receivedDate timeIntervalSince1970];
  v7 = [v5 numberWithDouble:?];
  v30[2] = v7;
  v29[3] = @"state";
  [(DRSConfigMetadata *)self state];
  v8 = DRConfigStringForState();
  v30[3] = v8;
  v29[4] = @"logTelemetry";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[DRSConfigMetadata logTelemetry](self, "logTelemetry")}];
  v30[4] = v9;
  v29[5] = @"reportToDPDS";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[DRSConfigMetadata reportToDecisionServer](self, "reportToDecisionServer")}];
  v30[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];
  v12 = [v11 mutableCopy];

  appliedDate = [(DRSConfigMetadata *)self appliedDate];

  if (appliedDate)
  {
    v14 = MEMORY[0x277CCABB0];
    appliedDate2 = [(DRSConfigMetadata *)self appliedDate];
    [appliedDate2 timeIntervalSince1970];
    v16 = [v14 numberWithDouble:?];
    [v12 setObject:v16 forKeyedSubscript:@"appliedDate"];
  }

  completedDate = [(DRSConfigMetadata *)self completedDate];

  if (completedDate)
  {
    v18 = MEMORY[0x277CCABB0];
    completedDate2 = [(DRSConfigMetadata *)self completedDate];
    [completedDate2 timeIntervalSince1970];
    v20 = [v18 numberWithDouble:?];
    [v12 setObject:v20 forKeyedSubscript:@"completedDate"];
  }

  if ([(DRSConfigMetadata *)self completionType]!= 4097)
  {
    v21 = DRConfigCompletionTypeString([(DRSConfigMetadata *)self completionType]);
    [v12 setObject:v21 forKeyedSubscript:@"completionType"];

    completionDescription = [(DRSConfigMetadata *)self completionDescription];

    if (completionDescription)
    {
      completionDescription2 = [(DRSConfigMetadata *)self completionDescription];
      [v12 setObject:completionDescription2 forKeyedSubscript:@"completionDescription"];
    }
  }

  config = [(DRSConfigMetadata *)self config];

  if (config)
  {
    config2 = [(DRSConfigMetadata *)self config];
    jsonDictRepresentation = [config2 jsonDictRepresentation];
    [v12 setObject:jsonDictRepresentation forKeyedSubscript:@"config"];
  }

  return v12;
}

@end