@interface TRIRolloutHistoryRecord
+ (id)recordWithEventLogTime:(id)time eventType:(unsigned __int8)type rolloutId:(id)id rampId:(id)rampId factorPackSetId:(id)setId deploymentId:(int)deploymentId namespaces:(id)namespaces;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRecord:(id)record;
- (TRIRolloutHistoryRecord)initWithCoder:(id)coder;
- (TRIRolloutHistoryRecord)initWithEventLogTime:(id)time eventType:(unsigned __int8)type rolloutId:(id)id rampId:(id)rampId factorPackSetId:(id)setId deploymentId:(int)deploymentId namespaces:(id)namespaces;
- (id)copyWithReplacementEventLogTime:(id)time;
- (id)copyWithReplacementFactorPackSetId:(id)id;
- (id)copyWithReplacementNamespaces:(id)namespaces;
- (id)copyWithReplacementRampId:(id)id;
- (id)copyWithReplacementRolloutId:(id)id;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIRolloutHistoryRecord

- (TRIRolloutHistoryRecord)initWithEventLogTime:(id)time eventType:(unsigned __int8)type rolloutId:(id)id rampId:(id)rampId factorPackSetId:(id)setId deploymentId:(int)deploymentId namespaces:(id)namespaces
{
  timeCopy = time;
  idCopy = id;
  rampIdCopy = rampId;
  setIdCopy = setId;
  namespacesCopy = namespaces;
  if (timeCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:2170 description:{@"Invalid parameter not satisfying: %@", @"eventLogTime != nil"}];

    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:2171 description:{@"Invalid parameter not satisfying: %@", @"rolloutId != nil"}];

LABEL_3:
  v27.receiver = self;
  v27.super_class = TRIRolloutHistoryRecord;
  v18 = [(TRIRolloutHistoryRecord *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_eventLogTime, time);
    v19->_eventType = type;
    objc_storeStrong(&v19->_rolloutId, id);
    objc_storeStrong(&v19->_rampId, rampId);
    objc_storeStrong(&v19->_factorPackSetId, setId);
    v19->_deploymentId = deploymentId;
    objc_storeStrong(&v19->_namespaces, namespaces);
  }

  return v19;
}

+ (id)recordWithEventLogTime:(id)time eventType:(unsigned __int8)type rolloutId:(id)id rampId:(id)rampId factorPackSetId:(id)setId deploymentId:(int)deploymentId namespaces:(id)namespaces
{
  v9 = *&deploymentId;
  typeCopy = type;
  namespacesCopy = namespaces;
  setIdCopy = setId;
  rampIdCopy = rampId;
  idCopy = id;
  timeCopy = time;
  v21 = [[self alloc] initWithEventLogTime:timeCopy eventType:typeCopy rolloutId:idCopy rampId:rampIdCopy factorPackSetId:setIdCopy deploymentId:v9 namespaces:namespacesCopy];

  return v21;
}

- (id)copyWithReplacementEventLogTime:(id)time
{
  timeCopy = time;
  v5 = [objc_alloc(objc_opt_class()) initWithEventLogTime:timeCopy eventType:self->_eventType rolloutId:self->_rolloutId rampId:self->_rampId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId namespaces:self->_namespaces];

  return v5;
}

- (id)copyWithReplacementRolloutId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithEventLogTime:self->_eventLogTime eventType:self->_eventType rolloutId:idCopy rampId:self->_rampId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId namespaces:self->_namespaces];

  return v5;
}

- (id)copyWithReplacementRampId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithEventLogTime:self->_eventLogTime eventType:self->_eventType rolloutId:self->_rolloutId rampId:idCopy factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId namespaces:self->_namespaces];

  return v5;
}

- (id)copyWithReplacementFactorPackSetId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithEventLogTime:self->_eventLogTime eventType:self->_eventType rolloutId:self->_rolloutId rampId:self->_rampId factorPackSetId:idCopy deploymentId:self->_deploymentId namespaces:self->_namespaces];

  return v5;
}

- (id)copyWithReplacementNamespaces:(id)namespaces
{
  namespacesCopy = namespaces;
  v5 = [objc_alloc(objc_opt_class()) initWithEventLogTime:self->_eventLogTime eventType:self->_eventType rolloutId:self->_rolloutId rampId:self->_rampId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId namespaces:namespacesCopy];

  return v5;
}

- (BOOL)isEqualToRecord:(id)record
{
  recordCopy = record;
  v5 = recordCopy;
  if (!recordCopy || (v6 = self->_eventLogTime == 0, [recordCopy eventLogTime], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (eventLogTime = self->_eventLogTime) != 0 && (objc_msgSend(v5, "eventLogTime"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSDate isEqual:](eventLogTime, "isEqual:", v10), v10, !v11) || (eventType = self->_eventType, eventType != objc_msgSend(v5, "eventType")) || (v13 = self->_rolloutId == 0, objc_msgSend(v5, "rolloutId"), v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 != 0, v14, v13 == v15) || (rolloutId = self->_rolloutId) != 0 && (objc_msgSend(v5, "rolloutId"), v17 = objc_claimAutoreleasedReturnValue(), v18 = -[NSString isEqual:](rolloutId, "isEqual:", v17), v17, !v18) || (v19 = self->_rampId == 0, objc_msgSend(v5, "rampId"), v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 != 0, v20, v19 == v21) || (rampId = self->_rampId) != 0 && (objc_msgSend(v5, "rampId"), v23 = objc_claimAutoreleasedReturnValue(), v24 = -[NSString isEqual:](rampId, "isEqual:", v23), v23, !v24) || (v25 = self->_factorPackSetId == 0, objc_msgSend(v5, "factorPackSetId"), v26 = objc_claimAutoreleasedReturnValue(), v27 = v26 != 0, v26, v25 == v27) || (factorPackSetId = self->_factorPackSetId) != 0 && (objc_msgSend(v5, "factorPackSetId"), v29 = objc_claimAutoreleasedReturnValue(), v30 = -[TRIFactorPackSetId isEqual:](factorPackSetId, "isEqual:", v29), v29, !v30) || (deploymentId = self->_deploymentId, deploymentId != objc_msgSend(v5, "deploymentId")) || (v32 = self->_namespaces == 0, objc_msgSend(v5, "namespaces"), v33 = objc_claimAutoreleasedReturnValue(), v34 = v33 != 0, v33, v32 == v34))
  {
    v37 = 0;
  }

  else
  {
    namespaces = self->_namespaces;
    if (namespaces)
    {
      namespaces = [v5 namespaces];
      v37 = [(NSArray *)namespaces isEqual:namespaces];
    }

    else
    {
      v37 = 1;
    }
  }

  return v37 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIRolloutHistoryRecord *)self isEqualToRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_eventLogTime hash];
  v4 = self->_eventType - v3 + 32 * v3;
  v5 = [(NSString *)self->_rolloutId hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_rampId hash]- v5 + 32 * v5;
  v7 = [(TRIFactorPackSetId *)self->_factorPackSetId hash];
  v8 = self->_deploymentId - (v7 - v6 + 32 * v6) + 32 * (v7 - v6 + 32 * v6);
  return [(NSArray *)self->_namespaces hash]- v8 + 32 * v8;
}

- (TRIRolloutHistoryRecord)initWithCoder:(id)coder
{
  v61[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventLogTime"];
  if (!v5)
  {
    error = [coderCopy error];

    if (error)
    {
      goto LABEL_15;
    }

    v60 = *MEMORY[0x277CCA450];
    v61[0] = @"Retrieved nil serialized value for nonnull TRIRolloutHistoryRecord.eventLogTime";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:&v60 count:1];
    v18 = objc_alloc(MEMORY[0x277CCA9B8]);
    v19 = 2;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = objc_opt_class();
    v7 = NSStringFromClass(v20);
    v21 = objc_opt_class();
    v8 = NSStringFromClass(v21);
    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIRolloutHistoryRecord key eventLogTime (expected %@, decoded %@)", v7, v8, 0];
    v58 = *MEMORY[0x277CCA450];
    v59 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v24 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIRolloutHistoryRecordOCNTErrorDomain" code:3 userInfo:v23];
    [coderCopy failWithError:v24];

    goto LABEL_13;
  }

  v6 = [coderCopy decodeInt64ForKey:@"eventType"];
  if (v6)
  {
    goto LABEL_4;
  }

  error2 = [coderCopy error];

  if (!error2)
  {
    if ([coderCopy containsValueForKey:@"eventType"])
    {
LABEL_4:
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rolloutId"];
      if (!v7)
      {
        error3 = [coderCopy error];

        if (error3)
        {
          v7 = 0;
          selfCopy = 0;
LABEL_40:

          goto LABEL_41;
        }

        v54 = *MEMORY[0x277CCA450];
        v55 = @"Retrieved nil serialized value for nonnull TRIRolloutHistoryRecord.rolloutId";
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v9 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIRolloutHistoryRecordOCNTErrorDomain" code:2 userInfo:v8];
        [coderCopy failWithError:v9];
        goto LABEL_30;
      }

      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rampId"];
      if (!v8)
      {
        error4 = [coderCopy error];

        if (error4)
        {
          v8 = 0;
          goto LABEL_13;
        }
      }

      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"factorPackSetId"];
      if (v9)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = objc_opt_class();
          v45 = NSStringFromClass(v10);
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIRolloutHistoryRecord key factorPackSetId (expected %@, decoded %@)", v45, v12, 0];
          v52 = *MEMORY[0x277CCA450];
          v53 = v13;
          v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
          v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIRolloutHistoryRecordOCNTErrorDomain" code:3 userInfo:v14];
          [coderCopy failWithError:v15];

          v16 = v45;
LABEL_36:
          selfCopy = 0;
          goto LABEL_37;
        }
      }

      else
      {
        error5 = [coderCopy error];

        if (error5)
        {
          v9 = 0;
          goto LABEL_30;
        }
      }

      v30 = [coderCopy decodeInt64ForKey:@"deploymentId"];
      if (v30)
      {
        goto LABEL_25;
      }

      error6 = [coderCopy error];

      if (!error6)
      {
        if (([coderCopy containsValueForKey:@"deploymentId"] & 1) == 0)
        {
          v50 = *MEMORY[0x277CCA450];
          v51 = @"Missing serialized value for TRIRolloutHistoryRecord.deploymentId";
          v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
          v42 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIRolloutHistoryRecordOCNTErrorDomain" code:1 userInfo:v16];
          [coderCopy failWithError:v42];

          goto LABEL_36;
        }

LABEL_25:
        v46 = v30;
        v31 = objc_alloc(MEMORY[0x277CBEB98]);
        v32 = objc_opt_class();
        v33 = [v31 initWithObjects:{v32, objc_opt_class(), 0}];
        v16 = [coderCopy decodeObjectOfClasses:v33 forKey:@"namespaces"];

        if (v16)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v34 = objc_opt_class();
            v47 = NSStringFromClass(v34);
            v35 = objc_opt_class();
            v44 = NSStringFromClass(v35);
            v36 = v16;
            v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIRolloutHistoryRecord key namespaces (expected %@, decoded %@)", v47, v44, 0];
            v48 = *MEMORY[0x277CCA450];
            v49 = v37;
            v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
            v39 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIRolloutHistoryRecordOCNTErrorDomain" code:3 userInfo:v38];
            [coderCopy failWithError:v39];

            v16 = v36;
            goto LABEL_36;
          }
        }

        else
        {
          error7 = [coderCopy error];

          if (error7)
          {
            v16 = 0;
            goto LABEL_36;
          }
        }

        self = [(TRIRolloutHistoryRecord *)self initWithEventLogTime:v5 eventType:v6 rolloutId:v7 rampId:v8 factorPackSetId:v9 deploymentId:v46 namespaces:v16];
        selfCopy = self;
LABEL_37:

        goto LABEL_38;
      }

LABEL_30:
      selfCopy = 0;
LABEL_38:

      goto LABEL_39;
    }

    v56 = *MEMORY[0x277CCA450];
    v57 = @"Missing serialized value for TRIRolloutHistoryRecord.eventType";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v18 = objc_alloc(MEMORY[0x277CCA9B8]);
    v19 = 1;
LABEL_11:
    v8 = [v18 initWithDomain:@"TRIRolloutHistoryRecordOCNTErrorDomain" code:v19 userInfo:v7];
    [coderCopy failWithError:v8];
LABEL_13:
    selfCopy = 0;
LABEL_39:

    goto LABEL_40;
  }

LABEL_15:
  selfCopy = 0;
LABEL_41:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  eventLogTime = self->_eventLogTime;
  v11 = coderCopy;
  if (eventLogTime)
  {
    [coderCopy encodeObject:eventLogTime forKey:@"eventLogTime"];
    coderCopy = v11;
  }

  [coderCopy encodeInt64:self->_eventType forKey:@"eventType"];
  rolloutId = self->_rolloutId;
  if (rolloutId)
  {
    [v11 encodeObject:rolloutId forKey:@"rolloutId"];
  }

  rampId = self->_rampId;
  if (rampId)
  {
    [v11 encodeObject:rampId forKey:@"rampId"];
  }

  factorPackSetId = self->_factorPackSetId;
  v9 = v11;
  if (factorPackSetId)
  {
    [v11 encodeObject:factorPackSetId forKey:@"factorPackSetId"];
    v9 = v11;
  }

  [v9 encodeInt64:self->_deploymentId forKey:@"deploymentId"];
  namespaces = self->_namespaces;
  if (namespaces)
  {
    [v11 encodeObject:namespaces forKey:@"namespaces"];
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  eventLogTime = self->_eventLogTime;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_eventType];
  v10 = *&self->_rolloutId;
  factorPackSetId = self->_factorPackSetId;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_deploymentId];
  v8 = [v3 initWithFormat:@"<TRIRolloutHistoryRecord | eventLogTime:%@ eventType:%@ rolloutId:%@ rampId:%@ factorPackSetId:%@ deploymentId:%@ namespaces:%@>", eventLogTime, v5, v10, factorPackSetId, v7, self->_namespaces];

  return v8;
}

@end