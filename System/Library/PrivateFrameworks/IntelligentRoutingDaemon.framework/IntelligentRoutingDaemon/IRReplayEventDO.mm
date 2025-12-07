@interface IRReplayEventDO
+ (id)replayEventDOWithDate:(id)date contextChangeReason:(id)reason candidatesContainer:(id)container miloLslPrediction:(id)prediction systemState:(id)state nearbyDeviceContainerDO:(id)o;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToReplayEventDO:(id)o;
- (IRReplayEventDO)initWithCoder:(id)coder;
- (IRReplayEventDO)initWithDate:(id)date contextChangeReason:(id)reason candidatesContainer:(id)container miloLslPrediction:(id)prediction systemState:(id)state nearbyDeviceContainerDO:(id)o;
- (id)copyWithReplacementCandidatesContainer:(id)container;
- (id)copyWithReplacementContextChangeReason:(id)reason;
- (id)copyWithReplacementDate:(id)date;
- (id)copyWithReplacementMiloLslPrediction:(id)prediction;
- (id)copyWithReplacementNearbyDeviceContainerDO:(id)o;
- (id)copyWithReplacementSystemState:(id)state;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IRReplayEventDO

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_date hash];
  v4 = [(NSString *)self->_contextChangeReason hash]- v3 + 32 * v3;
  v5 = [(IRCandidatesContainerDO *)self->_candidatesContainer hash]- v4 + 32 * v4;
  v6 = [(IRMiloLslPredictionDO *)self->_miloLslPrediction hash]- v5 + 32 * v5;
  v7 = [(IRSystemStateDO *)self->_systemState hash]- v6 + 32 * v6;
  return [(IRNearbyDeviceContainerDO *)self->_nearbyDeviceContainerDO hash]- v7 + 32 * v7;
}

- (IRReplayEventDO)initWithDate:(id)date contextChangeReason:(id)reason candidatesContainer:(id)container miloLslPrediction:(id)prediction systemState:(id)state nearbyDeviceContainerDO:(id)o
{
  dateCopy = date;
  reasonCopy = reason;
  containerCopy = container;
  predictionCopy = prediction;
  stateCopy = state;
  oCopy = o;
  v24.receiver = self;
  v24.super_class = IRReplayEventDO;
  v18 = [(IRReplayEventDO *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_date, date);
    objc_storeStrong(&v19->_contextChangeReason, reason);
    objc_storeStrong(&v19->_candidatesContainer, container);
    objc_storeStrong(&v19->_miloLslPrediction, prediction);
    objc_storeStrong(&v19->_systemState, state);
    objc_storeStrong(&v19->_nearbyDeviceContainerDO, o);
  }

  return v19;
}

+ (id)replayEventDOWithDate:(id)date contextChangeReason:(id)reason candidatesContainer:(id)container miloLslPrediction:(id)prediction systemState:(id)state nearbyDeviceContainerDO:(id)o
{
  oCopy = o;
  stateCopy = state;
  predictionCopy = prediction;
  containerCopy = container;
  reasonCopy = reason;
  dateCopy = date;
  v20 = [[self alloc] initWithDate:dateCopy contextChangeReason:reasonCopy candidatesContainer:containerCopy miloLslPrediction:predictionCopy systemState:stateCopy nearbyDeviceContainerDO:oCopy];

  return v20;
}

- (id)copyWithReplacementDate:(id)date
{
  dateCopy = date;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:dateCopy contextChangeReason:self->_contextChangeReason candidatesContainer:self->_candidatesContainer miloLslPrediction:self->_miloLslPrediction systemState:self->_systemState nearbyDeviceContainerDO:self->_nearbyDeviceContainerDO];

  return v5;
}

- (id)copyWithReplacementContextChangeReason:(id)reason
{
  reasonCopy = reason;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date contextChangeReason:reasonCopy candidatesContainer:self->_candidatesContainer miloLslPrediction:self->_miloLslPrediction systemState:self->_systemState nearbyDeviceContainerDO:self->_nearbyDeviceContainerDO];

  return v5;
}

- (id)copyWithReplacementCandidatesContainer:(id)container
{
  containerCopy = container;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date contextChangeReason:self->_contextChangeReason candidatesContainer:containerCopy miloLslPrediction:self->_miloLslPrediction systemState:self->_systemState nearbyDeviceContainerDO:self->_nearbyDeviceContainerDO];

  return v5;
}

- (id)copyWithReplacementMiloLslPrediction:(id)prediction
{
  predictionCopy = prediction;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date contextChangeReason:self->_contextChangeReason candidatesContainer:self->_candidatesContainer miloLslPrediction:predictionCopy systemState:self->_systemState nearbyDeviceContainerDO:self->_nearbyDeviceContainerDO];

  return v5;
}

- (id)copyWithReplacementSystemState:(id)state
{
  stateCopy = state;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date contextChangeReason:self->_contextChangeReason candidatesContainer:self->_candidatesContainer miloLslPrediction:self->_miloLslPrediction systemState:stateCopy nearbyDeviceContainerDO:self->_nearbyDeviceContainerDO];

  return v5;
}

- (id)copyWithReplacementNearbyDeviceContainerDO:(id)o
{
  oCopy = o;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date contextChangeReason:self->_contextChangeReason candidatesContainer:self->_candidatesContainer miloLslPrediction:self->_miloLslPrediction systemState:self->_systemState nearbyDeviceContainerDO:oCopy];

  return v5;
}

- (BOOL)isEqualToReplayEventDO:(id)o
{
  oCopy = o;
  v5 = oCopy;
  if (!oCopy || (v6 = self->_date == 0, [oCopy date], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (date = self->_date) != 0 && (objc_msgSend(v5, "date"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSDate isEqual:](date, "isEqual:", v10), v10, !v11) || (v12 = self->_contextChangeReason == 0, objc_msgSend(v5, "contextChangeReason"), v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 != 0, v13, v12 == v14) || (contextChangeReason = self->_contextChangeReason) != 0 && (objc_msgSend(v5, "contextChangeReason"), v16 = objc_claimAutoreleasedReturnValue(), v17 = -[NSString isEqual:](contextChangeReason, "isEqual:", v16), v16, !v17) || (v18 = self->_candidatesContainer == 0, objc_msgSend(v5, "candidatesContainer"), v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 != 0, v19, v18 == v20) || (candidatesContainer = self->_candidatesContainer) != 0 && (objc_msgSend(v5, "candidatesContainer"), v22 = objc_claimAutoreleasedReturnValue(), v23 = -[IRCandidatesContainerDO isEqual:](candidatesContainer, "isEqual:", v22), v22, !v23) || (v24 = self->_miloLslPrediction == 0, objc_msgSend(v5, "miloLslPrediction"), v25 = objc_claimAutoreleasedReturnValue(), v26 = v25 != 0, v25, v24 == v26) || (miloLslPrediction = self->_miloLslPrediction) != 0 && (objc_msgSend(v5, "miloLslPrediction"), v28 = objc_claimAutoreleasedReturnValue(), v29 = -[IRMiloLslPredictionDO isEqual:](miloLslPrediction, "isEqual:", v28), v28, !v29) || (v30 = self->_systemState == 0, objc_msgSend(v5, "systemState"), v31 = objc_claimAutoreleasedReturnValue(), v32 = v31 != 0, v31, v30 == v32) || (systemState = self->_systemState) != 0 && (objc_msgSend(v5, "systemState"), v34 = objc_claimAutoreleasedReturnValue(), v35 = -[IRSystemStateDO isEqual:](systemState, "isEqual:", v34), v34, !v35) || (v36 = self->_nearbyDeviceContainerDO == 0, objc_msgSend(v5, "nearbyDeviceContainerDO"), v37 = objc_claimAutoreleasedReturnValue(), v38 = v37 != 0, v37, v36 == v38))
  {
    v41 = 0;
  }

  else
  {
    nearbyDeviceContainerDO = self->_nearbyDeviceContainerDO;
    if (nearbyDeviceContainerDO)
    {
      nearbyDeviceContainerDO = [v5 nearbyDeviceContainerDO];
      v41 = [(IRNearbyDeviceContainerDO *)nearbyDeviceContainerDO isEqual:nearbyDeviceContainerDO];
    }

    else
    {
      v41 = 1;
    }
  }

  return v41 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRReplayEventDO *)self isEqualToReplayEventDO:v5];
  }

  return v6;
}

- (IRReplayEventDO)initWithCoder:(id)coder
{
  v31[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRReplayEventDO key date (expected %@, decoded %@)", v7, v9, 0];
      v30 = *MEMORY[0x277CCA450];
      v31[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRReplayEventDOOCNTErrorDomain" code:3 userInfo:v11];
      [coderCopy failWithError:v12];
LABEL_9:

LABEL_10:
      selfCopy = 0;
LABEL_29:

      goto LABEL_30;
    }

LABEL_6:
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextChangeReason"];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = objc_opt_class();
        v9 = NSStringFromClass(v15);
        v16 = objc_opt_class();
        v10 = NSStringFromClass(v16);
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRReplayEventDO key contextChangeReason (expected %@, decoded %@)", v9, v10, 0];
        v28 = *MEMORY[0x277CCA450];
        v29 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v17 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRReplayEventDOOCNTErrorDomain" code:3 userInfo:v12];
        [coderCopy failWithError:v17];

        goto LABEL_9;
      }
    }

    else
    {
      error = [coderCopy error];

      if (error)
      {
        goto LABEL_10;
      }
    }

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidatesContainer"];
    if (v19 || ([coderCopy error], v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
    {
      v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"miloLslPrediction"];
      if (v20 || ([coderCopy error], v24 = objc_claimAutoreleasedReturnValue(), v24, !v24))
      {
        v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemState"];
        if (v21 || ([coderCopy error], v25 = objc_claimAutoreleasedReturnValue(), v25, !v25))
        {
          v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nearbyDeviceContainerDO"];
          if (v22 || ([coderCopy error], v26 = objc_claimAutoreleasedReturnValue(), v26, !v26))
          {
            self = [(IRReplayEventDO *)self initWithDate:v5 contextChangeReason:v7 candidatesContainer:v19 miloLslPrediction:v20 systemState:v21 nearbyDeviceContainerDO:v22];
            selfCopy = self;
          }

          else
          {
            selfCopy = 0;
          }
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }

    goto LABEL_29;
  }

  error2 = [coderCopy error];

  if (!error2)
  {
    goto LABEL_6;
  }

  selfCopy = 0;
LABEL_30:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  date = self->_date;
  v11 = coderCopy;
  if (date)
  {
    [coderCopy encodeObject:date forKey:@"date"];
    coderCopy = v11;
  }

  contextChangeReason = self->_contextChangeReason;
  if (contextChangeReason)
  {
    [v11 encodeObject:contextChangeReason forKey:@"contextChangeReason"];
    coderCopy = v11;
  }

  candidatesContainer = self->_candidatesContainer;
  if (candidatesContainer)
  {
    [v11 encodeObject:candidatesContainer forKey:@"candidatesContainer"];
    coderCopy = v11;
  }

  miloLslPrediction = self->_miloLslPrediction;
  if (miloLslPrediction)
  {
    [v11 encodeObject:miloLslPrediction forKey:@"miloLslPrediction"];
    coderCopy = v11;
  }

  systemState = self->_systemState;
  if (systemState)
  {
    [v11 encodeObject:systemState forKey:@"systemState"];
    coderCopy = v11;
  }

  nearbyDeviceContainerDO = self->_nearbyDeviceContainerDO;
  if (nearbyDeviceContainerDO)
  {
    [v11 encodeObject:nearbyDeviceContainerDO forKey:@"nearbyDeviceContainerDO"];
    coderCopy = v11;
  }
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<IRReplayEventDO | date:%@ contextChangeReason:%@ candidatesContainer:%@ miloLslPrediction:%@ systemState:%@ nearbyDeviceContainerDO:%@>", self->_date, self->_contextChangeReason, self->_candidatesContainer, self->_miloLslPrediction, self->_systemState, self->_nearbyDeviceContainerDO];

  return v2;
}

@end