@interface IRMiloLslPredictionDO
+ (IRMiloLslPredictionDO)miloLslPredictionDOWithPredictionId:(id)id isPredictionValid:(BOOL)valid isMapValid:(BOOL)mapValid isMotionDetected:(BOOL)detected scores:(id)scores predictionTime:(id)time;
- (BOOL)canUse;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMiloLslPredictionDO:(id)o;
- (BOOL)isTemporarilyUnavailable;
- (IRMiloLslPredictionDO)initWithCoder:(id)coder;
- (IRMiloLslPredictionDO)initWithPredictionId:(id)id isPredictionValid:(BOOL)valid isMapValid:(BOOL)mapValid isMotionDetected:(BOOL)detected scores:(id)scores predictionTime:(id)time;
- (id)copyWithReplacementIsMapValid:(BOOL)valid;
- (id)copyWithReplacementIsMotionDetected:(BOOL)detected;
- (id)copyWithReplacementIsPredictionValid:(BOOL)valid;
- (id)copyWithReplacementPredictionId:(id)id;
- (id)copyWithReplacementPredictionTime:(id)time;
- (id)copyWithReplacementScores:(id)scores;
- (id)description;
- (id)exportAsDictionary;
- (id)scoreForPredictionEventEvent:(id)event;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IRMiloLslPredictionDO

- (id)exportAsDictionary
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  predictionId = [(IRMiloLslPredictionDO *)self predictionId];
  v21 = v3;
  [v3 setObject:predictionId forKeyedSubscript:@"predictionId"];

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  selfCopy = self;
  scores = [(IRMiloLslPredictionDO *)self scores];
  v7 = [scores countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(scores);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = MEMORY[0x277CCABB0];
        [v11 score];
        v13 = [v12 numberWithDouble:?];
        [v5 setObject:v13 forKeyedSubscript:@"score"];

        eventID = [v11 eventID];
        [v5 setObject:eventID forKeyedSubscript:@"eventID"];
      }

      v8 = [scores countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  [v21 setObject:v5 forKeyedSubscript:@"scores"];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRMiloLslPredictionDO isPredictionValid](selfCopy, "isPredictionValid")}];
  [v21 setObject:v15 forKeyedSubscript:@"isPredictionValid"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRMiloLslPredictionDO isMapValid](selfCopy, "isMapValid")}];
  [v21 setObject:v16 forKeyedSubscript:@"isMapValid"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRMiloLslPredictionDO isMotionDetected](selfCopy, "isMotionDetected")}];
  [v21 setObject:v17 forKeyedSubscript:@"isMotionDetected"];

  predictionTime = [(IRMiloLslPredictionDO *)selfCopy predictionTime];
  [v21 setObject:predictionTime forKeyedSubscript:@"predictionTime"];

  return v21;
}

- (id)scoreForPredictionEventEvent:(id)event
{
  v23 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ([(IRMiloLslPredictionDO *)self canUse])
  {
    predictionId = [(IRMiloLslPredictionDO *)self predictionId];
    predictionId2 = [eventCopy predictionId];
    v7 = [predictionId isEqual:predictionId2];

    if (v7)
    {
      v8 = &unk_286768F98;
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      scores = [(IRMiloLslPredictionDO *)self scores];
      v8 = [scores countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v10 = *v19;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(scores);
            }

            v12 = *(*(&v18 + 1) + 8 * i);
            eventID = [v12 eventID];
            label = [eventCopy label];
            v15 = [eventID isEqual:label];

            if (v15)
            {
              v16 = MEMORY[0x277CCABB0];
              [v12 score];
              v8 = [v16 numberWithDouble:?];
              goto LABEL_15;
            }
          }

          v8 = [scores countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)canUse
{
  isMapValid = [(IRMiloLslPredictionDO *)self isMapValid];
  if (isMapValid)
  {

    LOBYTE(isMapValid) = [(IRMiloLslPredictionDO *)self isPredictionValid];
  }

  return isMapValid;
}

- (BOOL)isTemporarilyUnavailable
{
  isMapValid = [(IRMiloLslPredictionDO *)self isMapValid];
  if (isMapValid)
  {
    LOBYTE(isMapValid) = ![(IRMiloLslPredictionDO *)self isPredictionValid];
  }

  return isMapValid;
}

- (IRMiloLslPredictionDO)initWithPredictionId:(id)id isPredictionValid:(BOOL)valid isMapValid:(BOOL)mapValid isMotionDetected:(BOOL)detected scores:(id)scores predictionTime:(id)time
{
  idCopy = id;
  scoresCopy = scores;
  timeCopy = time;
  v21.receiver = self;
  v21.super_class = IRMiloLslPredictionDO;
  v18 = [(IRMiloLslPredictionDO *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_predictionId, id);
    v19->_isPredictionValid = valid;
    v19->_isMapValid = mapValid;
    v19->_isMotionDetected = detected;
    objc_storeStrong(&v19->_scores, scores);
    objc_storeStrong(&v19->_predictionTime, time);
  }

  return v19;
}

+ (IRMiloLslPredictionDO)miloLslPredictionDOWithPredictionId:(id)id isPredictionValid:(BOOL)valid isMapValid:(BOOL)mapValid isMotionDetected:(BOOL)detected scores:(id)scores predictionTime:(id)time
{
  detectedCopy = detected;
  mapValidCopy = mapValid;
  validCopy = valid;
  timeCopy = time;
  scoresCopy = scores;
  idCopy = id;
  v17 = [[self alloc] initWithPredictionId:idCopy isPredictionValid:validCopy isMapValid:mapValidCopy isMotionDetected:detectedCopy scores:scoresCopy predictionTime:timeCopy];

  return v17;
}

- (id)copyWithReplacementPredictionId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithPredictionId:idCopy isPredictionValid:self->_isPredictionValid isMapValid:self->_isMapValid isMotionDetected:self->_isMotionDetected scores:self->_scores predictionTime:self->_predictionTime];

  return v5;
}

- (id)copyWithReplacementIsPredictionValid:(BOOL)valid
{
  validCopy = valid;
  v5 = objc_alloc(objc_opt_class());
  isMapValid = self->_isMapValid;
  isMotionDetected = self->_isMotionDetected;
  predictionId = self->_predictionId;
  scores = self->_scores;
  predictionTime = self->_predictionTime;

  return [v5 initWithPredictionId:predictionId isPredictionValid:validCopy isMapValid:isMapValid isMotionDetected:isMotionDetected scores:scores predictionTime:predictionTime];
}

- (id)copyWithReplacementIsMapValid:(BOOL)valid
{
  validCopy = valid;
  v5 = objc_alloc(objc_opt_class());
  isPredictionValid = self->_isPredictionValid;
  isMotionDetected = self->_isMotionDetected;
  predictionId = self->_predictionId;
  scores = self->_scores;
  predictionTime = self->_predictionTime;

  return [v5 initWithPredictionId:predictionId isPredictionValid:isPredictionValid isMapValid:validCopy isMotionDetected:isMotionDetected scores:scores predictionTime:predictionTime];
}

- (id)copyWithReplacementIsMotionDetected:(BOOL)detected
{
  detectedCopy = detected;
  v5 = objc_alloc(objc_opt_class());
  isPredictionValid = self->_isPredictionValid;
  isMapValid = self->_isMapValid;
  predictionId = self->_predictionId;
  scores = self->_scores;
  predictionTime = self->_predictionTime;

  return [v5 initWithPredictionId:predictionId isPredictionValid:isPredictionValid isMapValid:isMapValid isMotionDetected:detectedCopy scores:scores predictionTime:predictionTime];
}

- (id)copyWithReplacementScores:(id)scores
{
  scoresCopy = scores;
  v5 = [objc_alloc(objc_opt_class()) initWithPredictionId:self->_predictionId isPredictionValid:self->_isPredictionValid isMapValid:self->_isMapValid isMotionDetected:self->_isMotionDetected scores:scoresCopy predictionTime:self->_predictionTime];

  return v5;
}

- (id)copyWithReplacementPredictionTime:(id)time
{
  timeCopy = time;
  v5 = [objc_alloc(objc_opt_class()) initWithPredictionId:self->_predictionId isPredictionValid:self->_isPredictionValid isMapValid:self->_isMapValid isMotionDetected:self->_isMotionDetected scores:self->_scores predictionTime:timeCopy];

  return v5;
}

- (BOOL)isEqualToMiloLslPredictionDO:(id)o
{
  oCopy = o;
  v5 = oCopy;
  if (oCopy && (v6 = self->_predictionId == 0, [oCopy predictionId], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 != v8) && ((predictionId = self->_predictionId) == 0 || (objc_msgSend(v5, "predictionId"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSString isEqual:](predictionId, "isEqual:", v10), v10, v11)) && (isPredictionValid = self->_isPredictionValid, isPredictionValid == objc_msgSend(v5, "isPredictionValid")) && (isMapValid = self->_isMapValid, isMapValid == objc_msgSend(v5, "isMapValid")) && (isMotionDetected = self->_isMotionDetected, isMotionDetected == objc_msgSend(v5, "isMotionDetected")) && (v15 = self->_scores == 0, objc_msgSend(v5, "scores"), v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 != 0, v16, v15 != v17) && ((scores = self->_scores) == 0 || (objc_msgSend(v5, "scores"), v19 = objc_claimAutoreleasedReturnValue(), v20 = -[NSSet isEqual:](scores, "isEqual:", v19), v19, v20)) && (v21 = self->_predictionTime == 0, objc_msgSend(v5, "predictionTime"), v22 = objc_claimAutoreleasedReturnValue(), v23 = v22 != 0, v22, v21 != v23))
  {
    predictionTime = self->_predictionTime;
    if (predictionTime)
    {
      predictionTime = [v5 predictionTime];
      v26 = [(NSDate *)predictionTime isEqual:predictionTime];
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRMiloLslPredictionDO *)self isEqualToMiloLslPredictionDO:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_predictionId hash];
  v4 = self->_isPredictionValid - v3 + 32 * v3;
  v5 = self->_isMapValid - v4 + 32 * v4;
  v6 = self->_isMotionDetected - v5 + 32 * v5;
  v7 = [(NSSet *)self->_scores hash]- v6 + 32 * v6;
  return [(NSDate *)self->_predictionTime hash]- v7 + 32 * v7;
}

- (IRMiloLslPredictionDO)initWithCoder:(id)coder
{
  v43[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predictionId"];
  if (!v5)
  {
    error = [coderCopy error];

    if (error)
    {
      goto LABEL_23;
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_9:
    v15 = [coderCopy decodeInt64ForKey:@"isPredictionValid"];
    if (!v15)
    {
      error2 = [coderCopy error];

      if (error2)
      {
        goto LABEL_23;
      }

      if (([coderCopy containsValueForKey:@"isPredictionValid"] & 1) == 0)
      {
        v40 = *MEMORY[0x277CCA450];
        v41 = @"Missing serialized value for IRMiloLslPredictionDO.isPredictionValid";
        v26 = MEMORY[0x277CBEAC0];
        v27 = &v41;
        v28 = &v40;
        goto LABEL_31;
      }
    }

    v16 = [coderCopy decodeInt64ForKey:@"isMapValid"];
    if (!v16)
    {
      error3 = [coderCopy error];

      if (error3)
      {
        goto LABEL_23;
      }

      if (([coderCopy containsValueForKey:@"isMapValid"] & 1) == 0)
      {
        v38 = *MEMORY[0x277CCA450];
        v39 = @"Missing serialized value for IRMiloLslPredictionDO.isMapValid";
        v26 = MEMORY[0x277CBEAC0];
        v27 = &v39;
        v28 = &v38;
        goto LABEL_31;
      }
    }

    v17 = [coderCopy decodeInt64ForKey:@"isMotionDetected"];
    if (v17)
    {
LABEL_12:
      v18 = objc_alloc(MEMORY[0x277CBEB98]);
      v19 = objc_opt_class();
      v20 = [v18 initWithObjects:{v19, objc_opt_class(), 0}];
      v7 = [coderCopy decodeObjectOfClasses:v20 forKey:@"scores"];

      if (!v7)
      {
        error4 = [coderCopy error];

        if (error4)
        {
          selfCopy = 0;
          goto LABEL_7;
        }
      }

      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predictionTime"];
      if (v9)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = objc_opt_class();
          v10 = NSStringFromClass(v21);
          v22 = objc_opt_class();
          v11 = NSStringFromClass(v22);
          v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRMiloLslPredictionDO key predictionTime (expected %@, decoded %@)", v10, v11, 0];
          v34 = *MEMORY[0x277CCA450];
          v35 = v12;
          v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
          v24 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRMiloLslPredictionDOOCNTErrorDomain" code:3 userInfo:v23];
          [coderCopy failWithError:v24];

          goto LABEL_4;
        }
      }

      else
      {
        error5 = [coderCopy error];

        if (error5)
        {
          goto LABEL_5;
        }
      }

      self = [(IRMiloLslPredictionDO *)self initWithPredictionId:v5 isPredictionValid:v15 != 0 isMapValid:v16 != 0 isMotionDetected:v17 != 0 scores:v7 predictionTime:v9];
      selfCopy = self;
      goto LABEL_6;
    }

    error6 = [coderCopy error];

    if (!error6)
    {
      if ([coderCopy containsValueForKey:@"isMotionDetected"])
      {
        goto LABEL_12;
      }

      v36 = *MEMORY[0x277CCA450];
      v37 = @"Missing serialized value for IRMiloLslPredictionDO.isMotionDetected";
      v26 = MEMORY[0x277CBEAC0];
      v27 = &v37;
      v28 = &v36;
LABEL_31:
      v7 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:1];
      v9 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRMiloLslPredictionDOOCNTErrorDomain" code:1 userInfo:v7];
      [coderCopy failWithError:v9];
      goto LABEL_5;
    }

LABEL_23:
    selfCopy = 0;
    goto LABEL_24;
  }

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRMiloLslPredictionDO key predictionId (expected %@, decoded %@)", v7, v9, 0];
  v42 = *MEMORY[0x277CCA450];
  v43[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
  v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRMiloLslPredictionDOOCNTErrorDomain" code:3 userInfo:v11];
  [coderCopy failWithError:v12];
LABEL_4:

LABEL_5:
  selfCopy = 0;
LABEL_6:

LABEL_7:
LABEL_24:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  predictionId = self->_predictionId;
  v8 = coderCopy;
  if (predictionId)
  {
    [coderCopy encodeObject:predictionId forKey:@"predictionId"];
    coderCopy = v8;
  }

  [coderCopy encodeInt64:self->_isPredictionValid forKey:@"isPredictionValid"];
  [v8 encodeInt64:self->_isMapValid forKey:@"isMapValid"];
  [v8 encodeInt64:self->_isMotionDetected forKey:@"isMotionDetected"];
  scores = self->_scores;
  if (scores)
  {
    [v8 encodeObject:scores forKey:@"scores"];
  }

  predictionTime = self->_predictionTime;
  if (predictionTime)
  {
    [v8 encodeObject:predictionTime forKey:@"predictionTime"];
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  predictionId = self->_predictionId;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPredictionValid];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMapValid];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMotionDetected];
  v8 = [v3 initWithFormat:@"<IRMiloLslPredictionDO | predictionId:%@ isPredictionValid:%@ isMapValid:%@ isMotionDetected:%@ scores:%@ predictionTime:%@>", predictionId, v5, v6, v7, self->_scores, self->_predictionTime];

  return v8;
}

@end