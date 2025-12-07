@interface IRHistoryEventDO
+ (id)historyEventDOWithDate:(id)date candidateIdentifier:(id)identifier event:(id)event miloPredictionEvent:(id)predictionEvent systemState:(id)state sharingPolicy:(id)policy;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHistoryEventDO:(id)o;
- (IRHistoryEventDO)initWithCoder:(id)coder;
- (IRHistoryEventDO)initWithDate:(id)date candidateIdentifier:(id)identifier event:(id)event miloPredictionEvent:(id)predictionEvent systemState:(id)state sharingPolicy:(id)policy;
- (id)copyWithReplacementCandidateIdentifier:(id)identifier;
- (id)copyWithReplacementDate:(id)date;
- (id)copyWithReplacementEvent:(id)event;
- (id)copyWithReplacementMiloPredictionEvent:(id)event;
- (id)copyWithReplacementSharingPolicy:(id)policy;
- (id)copyWithReplacementSystemState:(id)state;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IRHistoryEventDO

- (IRHistoryEventDO)initWithDate:(id)date candidateIdentifier:(id)identifier event:(id)event miloPredictionEvent:(id)predictionEvent systemState:(id)state sharingPolicy:(id)policy
{
  dateCopy = date;
  identifierCopy = identifier;
  eventCopy = event;
  predictionEventCopy = predictionEvent;
  stateCopy = state;
  policyCopy = policy;
  v24.receiver = self;
  v24.super_class = IRHistoryEventDO;
  v18 = [(IRHistoryEventDO *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_date, date);
    objc_storeStrong(&v19->_candidateIdentifier, identifier);
    objc_storeStrong(&v19->_event, event);
    objc_storeStrong(&v19->_miloPredictionEvent, predictionEvent);
    objc_storeStrong(&v19->_systemState, state);
    objc_storeStrong(&v19->_sharingPolicy, policy);
  }

  return v19;
}

+ (id)historyEventDOWithDate:(id)date candidateIdentifier:(id)identifier event:(id)event miloPredictionEvent:(id)predictionEvent systemState:(id)state sharingPolicy:(id)policy
{
  policyCopy = policy;
  stateCopy = state;
  predictionEventCopy = predictionEvent;
  eventCopy = event;
  identifierCopy = identifier;
  dateCopy = date;
  v20 = [[self alloc] initWithDate:dateCopy candidateIdentifier:identifierCopy event:eventCopy miloPredictionEvent:predictionEventCopy systemState:stateCopy sharingPolicy:policyCopy];

  return v20;
}

- (id)copyWithReplacementDate:(id)date
{
  dateCopy = date;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:dateCopy candidateIdentifier:self->_candidateIdentifier event:self->_event miloPredictionEvent:self->_miloPredictionEvent systemState:self->_systemState sharingPolicy:self->_sharingPolicy];

  return v5;
}

- (id)copyWithReplacementCandidateIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date candidateIdentifier:identifierCopy event:self->_event miloPredictionEvent:self->_miloPredictionEvent systemState:self->_systemState sharingPolicy:self->_sharingPolicy];

  return v5;
}

- (id)copyWithReplacementEvent:(id)event
{
  eventCopy = event;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date candidateIdentifier:self->_candidateIdentifier event:eventCopy miloPredictionEvent:self->_miloPredictionEvent systemState:self->_systemState sharingPolicy:self->_sharingPolicy];

  return v5;
}

- (id)copyWithReplacementMiloPredictionEvent:(id)event
{
  eventCopy = event;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date candidateIdentifier:self->_candidateIdentifier event:self->_event miloPredictionEvent:eventCopy systemState:self->_systemState sharingPolicy:self->_sharingPolicy];

  return v5;
}

- (id)copyWithReplacementSystemState:(id)state
{
  stateCopy = state;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date candidateIdentifier:self->_candidateIdentifier event:self->_event miloPredictionEvent:self->_miloPredictionEvent systemState:stateCopy sharingPolicy:self->_sharingPolicy];

  return v5;
}

- (id)copyWithReplacementSharingPolicy:(id)policy
{
  policyCopy = policy;
  v5 = [objc_alloc(objc_opt_class()) initWithDate:self->_date candidateIdentifier:self->_candidateIdentifier event:self->_event miloPredictionEvent:self->_miloPredictionEvent systemState:self->_systemState sharingPolicy:policyCopy];

  return v5;
}

- (BOOL)isEqualToHistoryEventDO:(id)o
{
  oCopy = o;
  v5 = oCopy;
  if (!oCopy || (v6 = self->_date == 0, [oCopy date], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (date = self->_date) != 0 && (objc_msgSend(v5, "date"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSDate isEqual:](date, "isEqual:", v10), v10, !v11) || (v12 = self->_candidateIdentifier == 0, objc_msgSend(v5, "candidateIdentifier"), v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 != 0, v13, v12 == v14) || (candidateIdentifier = self->_candidateIdentifier) != 0 && (objc_msgSend(v5, "candidateIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), v17 = -[NSString isEqual:](candidateIdentifier, "isEqual:", v16), v16, !v17) || (v18 = self->_event == 0, objc_msgSend(v5, "event"), v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 != 0, v19, v18 == v20) || (event = self->_event) != 0 && (objc_msgSend(v5, "event"), v22 = objc_claimAutoreleasedReturnValue(), v23 = -[IREventDO isEqual:](event, "isEqual:", v22), v22, !v23) || (v24 = self->_miloPredictionEvent == 0, objc_msgSend(v5, "miloPredictionEvent"), v25 = objc_claimAutoreleasedReturnValue(), v26 = v25 != 0, v25, v24 == v26) || (miloPredictionEvent = self->_miloPredictionEvent) != 0 && (objc_msgSend(v5, "miloPredictionEvent"), v28 = objc_claimAutoreleasedReturnValue(), v29 = -[IRMiLoPredictionEventDO isEqual:](miloPredictionEvent, "isEqual:", v28), v28, !v29) || (v30 = self->_systemState == 0, objc_msgSend(v5, "systemState"), v31 = objc_claimAutoreleasedReturnValue(), v32 = v31 != 0, v31, v30 == v32) || (systemState = self->_systemState) != 0 && (objc_msgSend(v5, "systemState"), v34 = objc_claimAutoreleasedReturnValue(), v35 = -[IRSystemStateDO isEqual:](systemState, "isEqual:", v34), v34, !v35) || (v36 = self->_sharingPolicy == 0, objc_msgSend(v5, "sharingPolicy"), v37 = objc_claimAutoreleasedReturnValue(), v38 = v37 != 0, v37, v36 == v38))
  {
    v41 = 0;
  }

  else
  {
    sharingPolicy = self->_sharingPolicy;
    if (sharingPolicy)
    {
      sharingPolicy = [v5 sharingPolicy];
      v41 = [(NSString *)sharingPolicy isEqual:sharingPolicy];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRHistoryEventDO *)self isEqualToHistoryEventDO:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_date hash];
  v4 = [(NSString *)self->_candidateIdentifier hash]- v3 + 32 * v3;
  v5 = [(IREventDO *)self->_event hash]- v4 + 32 * v4;
  v6 = [(IRMiLoPredictionEventDO *)self->_miloPredictionEvent hash]- v5 + 32 * v5;
  v7 = [(IRSystemStateDO *)self->_systemState hash]- v6 + 32 * v6;
  return [(NSString *)self->_sharingPolicy hash]- v7 + 32 * v7;
}

- (IRHistoryEventDO)initWithCoder:(id)coder
{
  v36[1] = *MEMORY[0x277D85DE8];
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
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRHistoryEventDO key date (expected %@, decoded %@)", v7, v9, 0];
      v35 = *MEMORY[0x277CCA450];
      v36[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRHistoryEventDOOCNTErrorDomain" code:3 userInfo:v11];
      [coderCopy failWithError:v12];
LABEL_9:
      selfCopy = 0;
LABEL_10:

LABEL_11:
LABEL_12:

LABEL_13:
LABEL_14:

      goto LABEL_15;
    }

LABEL_6:
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidateIdentifier"];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = objc_opt_class();
        v9 = NSStringFromClass(v15);
        v16 = objc_opt_class();
        v10 = NSStringFromClass(v16);
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRHistoryEventDO key candidateIdentifier (expected %@, decoded %@)", v9, v10, 0];
        v33 = *MEMORY[0x277CCA450];
        v34 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v17 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRHistoryEventDOOCNTErrorDomain" code:3 userInfo:v12];
        [coderCopy failWithError:v17];

        goto LABEL_9;
      }
    }

    else
    {
      error = [coderCopy error];

      if (error)
      {
        selfCopy = 0;
        goto LABEL_14;
      }
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"event"];
    if (!v9)
    {
      error2 = [coderCopy error];

      if (error2)
      {
        selfCopy = 0;
        goto LABEL_13;
      }
    }

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"miloPredictionEvent"];
    if (!v10)
    {
      error3 = [coderCopy error];

      if (error3)
      {
        selfCopy = 0;
        goto LABEL_12;
      }
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemState"];
    if (!v11)
    {
      error4 = [coderCopy error];

      if (error4)
      {
        selfCopy = 0;
        goto LABEL_11;
      }
    }

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingPolicy"];
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = objc_opt_class();
        v30 = NSStringFromClass(v20);
        v21 = objc_opt_class();
        v29 = NSStringFromClass(v21);
        v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRHistoryEventDO key sharingPolicy (expected %@, decoded %@)", v30, v29, 0];
        v31 = *MEMORY[0x277CCA450];
        v32 = v28;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v23 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRHistoryEventDOOCNTErrorDomain" code:3 userInfo:v22];
        [coderCopy failWithError:v23];

        goto LABEL_9;
      }
    }

    else
    {
      error5 = [coderCopy error];

      if (error5)
      {
        goto LABEL_9;
      }
    }

    self = [(IRHistoryEventDO *)self initWithDate:v5 candidateIdentifier:v7 event:v9 miloPredictionEvent:v10 systemState:v11 sharingPolicy:v12];
    selfCopy = self;
    goto LABEL_10;
  }

  error6 = [coderCopy error];

  if (!error6)
  {
    goto LABEL_6;
  }

  selfCopy = 0;
LABEL_15:

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

  candidateIdentifier = self->_candidateIdentifier;
  if (candidateIdentifier)
  {
    [v11 encodeObject:candidateIdentifier forKey:@"candidateIdentifier"];
    coderCopy = v11;
  }

  event = self->_event;
  if (event)
  {
    [v11 encodeObject:event forKey:@"event"];
    coderCopy = v11;
  }

  miloPredictionEvent = self->_miloPredictionEvent;
  if (miloPredictionEvent)
  {
    [v11 encodeObject:miloPredictionEvent forKey:@"miloPredictionEvent"];
    coderCopy = v11;
  }

  systemState = self->_systemState;
  if (systemState)
  {
    [v11 encodeObject:systemState forKey:@"systemState"];
    coderCopy = v11;
  }

  sharingPolicy = self->_sharingPolicy;
  if (sharingPolicy)
  {
    [v11 encodeObject:sharingPolicy forKey:@"sharingPolicy"];
    coderCopy = v11;
  }
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<IRHistoryEventDO | date:%@ candidateIdentifier:%@ event:%@ miloPredictionEvent:%@ systemState:%@ sharingPolicy:%@>", self->_date, self->_candidateIdentifier, self->_event, self->_miloPredictionEvent, self->_systemState, self->_sharingPolicy];

  return v2;
}

@end