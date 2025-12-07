@interface TRIExperimentIdentifiers
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToExperimentIdentifiers:(id)identifiers;
- (TRIExperimentIdentifiers)initWithExperimentId:(id)id deploymentId:(int)deploymentId treatmentId:(id)treatmentId;
- (id)asFactorsState;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIExperimentIdentifiers

- (TRIExperimentIdentifiers)initWithExperimentId:(id)id deploymentId:(int)deploymentId treatmentId:(id)treatmentId
{
  idCopy = id;
  treatmentIdCopy = treatmentId;
  v14.receiver = self;
  v14.super_class = TRIExperimentIdentifiers;
  v11 = [(TRIExperimentIdentifiers *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_experimentId, id);
    v12->_deploymentId = deploymentId;
    objc_storeStrong(&v12->_treatmentId, treatmentId);
  }

  return v12;
}

- (BOOL)isEqualToExperimentIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = identifiersCopy;
  if (!identifiersCopy || (v6 = self->_experimentId == 0, [identifiersCopy experimentId], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (experimentId = self->_experimentId) != 0 && (objc_msgSend(v5, "experimentId"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSString isEqual:](experimentId, "isEqual:", v10), v10, !v11) || (deploymentId = self->_deploymentId, deploymentId != objc_msgSend(v5, "deploymentId")) || (v13 = self->_treatmentId == 0, objc_msgSend(v5, "treatmentId"), v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 != 0, v14, v13 == v15))
  {
    v18 = 0;
  }

  else
  {
    treatmentId = self->_treatmentId;
    if (treatmentId)
    {
      treatmentId = [v5 treatmentId];
      v18 = [(NSString *)treatmentId isEqual:treatmentId];
    }

    else
    {
      v18 = 1;
    }
  }

  return v18 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIExperimentIdentifiers *)self isEqualToExperimentIdentifiers:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_experimentId hash];
  v4 = self->_deploymentId - v3 + 32 * v3;
  return [(NSString *)self->_treatmentId hash]- v4 + 32 * v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  experimentId = self->_experimentId;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_deploymentId];
  v6 = [v3 initWithFormat:@"<TRIExperimentIdentifiers | experimentId:%@ deploymentId:%@ treatmentId:%@>", experimentId, v5, self->_treatmentId];

  return v6;
}

- (id)asFactorsState
{
  v3 = [[TRIExperimentDeployment alloc] initWithExperimentId:self->_experimentId deploymentId:self->_deploymentId];
  v4 = [[TRIExperimentFactorsState alloc] initWithDeployment:v3 treatmentId:self->_treatmentId];

  return v4;
}

@end