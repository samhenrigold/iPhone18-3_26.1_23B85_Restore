@interface TRIExperimentDeployment
+ (id)deploymentWithExperimentId:(id)id deploymentId:(int)deploymentId;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDeployment:(id)deployment;
- (TRIExperimentDeployment)initWithCoder:(id)coder;
- (TRIExperimentDeployment)initWithExperimentId:(id)id deploymentId:(int)deploymentId;
- (id)copyWithReplacementDeploymentId:(int)id;
- (id)copyWithReplacementExperimentId:(id)id;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIExperimentDeployment

- (TRIExperimentDeployment)initWithExperimentId:(id)id deploymentId:(int)deploymentId
{
  idCopy = id;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:396 description:{@"Invalid parameter not satisfying: %@", @"experimentId != nil"}];
  }

  v13.receiver = self;
  v13.super_class = TRIExperimentDeployment;
  v9 = [(TRIExperimentDeployment *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_experimentId, id);
    v10->_deploymentId = deploymentId;
  }

  return v10;
}

+ (id)deploymentWithExperimentId:(id)id deploymentId:(int)deploymentId
{
  v4 = *&deploymentId;
  idCopy = id;
  v7 = [[self alloc] initWithExperimentId:idCopy deploymentId:v4];

  return v7;
}

- (id)copyWithReplacementExperimentId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithExperimentId:idCopy deploymentId:self->_deploymentId];

  return v5;
}

- (id)copyWithReplacementDeploymentId:(int)id
{
  v3 = *&id;
  v5 = objc_alloc(objc_opt_class());
  experimentId = self->_experimentId;

  return [v5 initWithExperimentId:experimentId deploymentId:v3];
}

- (BOOL)isEqualToDeployment:(id)deployment
{
  deploymentCopy = deployment;
  v5 = deploymentCopy;
  if (!deploymentCopy || (v6 = self->_experimentId == 0, [deploymentCopy experimentId], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (experimentId = self->_experimentId) != 0 && (objc_msgSend(v5, "experimentId"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSString isEqual:](experimentId, "isEqual:", v10), v10, !v11))
  {
    v13 = 0;
  }

  else
  {
    deploymentId = self->_deploymentId;
    v13 = deploymentId == [v5 deploymentId];
  }

  return v13;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIExperimentDeployment *)self isEqualToDeployment:v5];
  }

  return v6;
}

- (TRIExperimentDeployment)initWithCoder:(id)coder
{
  v18[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"experimentId"];
  if (!v5)
  {
    error = [coderCopy error];

    if (!error)
    {
      v17 = *MEMORY[0x277CCA450];
      v18[0] = @"Retrieved nil serialized value for nonnull TRIExperimentDeployment.experimentId";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v10 = objc_alloc(MEMORY[0x277CCA9B8]);
      v11 = 2;
LABEL_9:
      v13 = [v10 initWithDomain:@"TRIExperimentDeploymentOCNTErrorDomain" code:v11 userInfo:v9];
      [coderCopy failWithError:v13];
    }

LABEL_10:
    selfCopy = 0;
    goto LABEL_11;
  }

  v6 = [coderCopy decodeInt64ForKey:@"deploymentId"];
  if (!v6)
  {
    error2 = [coderCopy error];

    if (!error2)
    {
      if ([coderCopy containsValueForKey:@"deploymentId"])
      {
        goto LABEL_3;
      }

      v15 = *MEMORY[0x277CCA450];
      v16 = @"Missing serialized value for TRIExperimentDeployment.deploymentId";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v10 = objc_alloc(MEMORY[0x277CCA9B8]);
      v11 = 1;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

LABEL_3:
  self = [(TRIExperimentDeployment *)self initWithExperimentId:v5 deploymentId:v6];
  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  experimentId = self->_experimentId;
  v6 = coderCopy;
  if (experimentId)
  {
    [coderCopy encodeObject:experimentId forKey:@"experimentId"];
    coderCopy = v6;
  }

  [coderCopy encodeInt64:self->_deploymentId forKey:@"deploymentId"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  experimentId = self->_experimentId;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_deploymentId];
  v6 = [v3 initWithFormat:@"<TRIExperimentDeployment | experimentId:%@ deploymentId:%@>", experimentId, v5];

  return v6;
}

@end