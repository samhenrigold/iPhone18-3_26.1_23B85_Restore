@interface TRIContentDescriptorUnion
+ (id)unionWithType:(unsigned __int8)type experiment:(id)experiment treatment:(id)treatment rollout:(id)rollout factorPackSet:(id)set;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUnion:(id)union;
- (TRIContentDescriptorUnion)initWithType:(unsigned __int8)type experiment:(id)experiment treatment:(id)treatment rollout:(id)rollout factorPackSet:(id)set;
- (id)copyWithReplacementExperiment:(id)experiment;
- (id)copyWithReplacementFactorPackSet:(id)set;
- (id)copyWithReplacementRollout:(id)rollout;
- (id)copyWithReplacementTreatment:(id)treatment;
- (id)copyWithReplacementType:(unsigned __int8)type;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIContentDescriptorUnion

- (TRIContentDescriptorUnion)initWithType:(unsigned __int8)type experiment:(id)experiment treatment:(id)treatment rollout:(id)rollout factorPackSet:(id)set
{
  experimentCopy = experiment;
  treatmentCopy = treatment;
  rolloutCopy = rollout;
  setCopy = set;
  v20.receiver = self;
  v20.super_class = TRIContentDescriptorUnion;
  v17 = [(TRIContentDescriptorUnion *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_type = type;
    objc_storeStrong(&v17->_experiment, experiment);
    objc_storeStrong(&v18->_treatment, treatment);
    objc_storeStrong(&v18->_rollout, rollout);
    objc_storeStrong(&v18->_factorPackSet, set);
  }

  return v18;
}

+ (id)unionWithType:(unsigned __int8)type experiment:(id)experiment treatment:(id)treatment rollout:(id)rollout factorPackSet:(id)set
{
  typeCopy = type;
  setCopy = set;
  rolloutCopy = rollout;
  treatmentCopy = treatment;
  experimentCopy = experiment;
  v16 = [[self alloc] initWithType:typeCopy experiment:experimentCopy treatment:treatmentCopy rollout:rolloutCopy factorPackSet:setCopy];

  return v16;
}

- (id)copyWithReplacementType:(unsigned __int8)type
{
  typeCopy = type;
  v5 = objc_alloc(objc_opt_class());
  experiment = self->_experiment;
  treatment = self->_treatment;
  rollout = self->_rollout;
  factorPackSet = self->_factorPackSet;

  return [v5 initWithType:typeCopy experiment:experiment treatment:treatment rollout:rollout factorPackSet:factorPackSet];
}

- (id)copyWithReplacementExperiment:(id)experiment
{
  experimentCopy = experiment;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type experiment:experimentCopy treatment:self->_treatment rollout:self->_rollout factorPackSet:self->_factorPackSet];

  return v5;
}

- (id)copyWithReplacementTreatment:(id)treatment
{
  treatmentCopy = treatment;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type experiment:self->_experiment treatment:treatmentCopy rollout:self->_rollout factorPackSet:self->_factorPackSet];

  return v5;
}

- (id)copyWithReplacementRollout:(id)rollout
{
  rolloutCopy = rollout;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type experiment:self->_experiment treatment:self->_treatment rollout:rolloutCopy factorPackSet:self->_factorPackSet];

  return v5;
}

- (id)copyWithReplacementFactorPackSet:(id)set
{
  setCopy = set;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type experiment:self->_experiment treatment:self->_treatment rollout:self->_rollout factorPackSet:setCopy];

  return v5;
}

- (BOOL)isEqualToUnion:(id)union
{
  unionCopy = union;
  v5 = unionCopy;
  if (!unionCopy || (type = self->_type, type != [unionCopy type]) || (v7 = self->_experiment == 0, objc_msgSend(v5, "experiment"), v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 != 0, v8, v7 == v9) || (experiment = self->_experiment) != 0 && (objc_msgSend(v5, "experiment"), v11 = objc_claimAutoreleasedReturnValue(), v12 = -[TRIExperimentDeployment isEqual:](experiment, "isEqual:", v11), v11, !v12) || (v13 = self->_treatment == 0, objc_msgSend(v5, "treatment"), v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 != 0, v14, v13 == v15) || (treatment = self->_treatment) != 0 && (objc_msgSend(v5, "treatment"), v17 = objc_claimAutoreleasedReturnValue(), v18 = -[TRITreatmentContentDescriptor isEqual:](treatment, "isEqual:", v17), v17, !v18) || (v19 = self->_rollout == 0, objc_msgSend(v5, "rollout"), v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 != 0, v20, v19 == v21) || (rollout = self->_rollout) != 0 && (objc_msgSend(v5, "rollout"), v23 = objc_claimAutoreleasedReturnValue(), v24 = -[TRIRolloutDeployment isEqual:](rollout, "isEqual:", v23), v23, !v24) || (v25 = self->_factorPackSet == 0, objc_msgSend(v5, "factorPackSet"), v26 = objc_claimAutoreleasedReturnValue(), v27 = v26 != 0, v26, v25 == v27))
  {
    v30 = 0;
  }

  else
  {
    factorPackSet = self->_factorPackSet;
    if (factorPackSet)
    {
      factorPackSet = [v5 factorPackSet];
      v30 = [(TRIFactorPackSetId *)factorPackSet isEqual:factorPackSet];
    }

    else
    {
      v30 = 1;
    }
  }

  return v30 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIContentDescriptorUnion *)self isEqualToUnion:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  type = self->_type;
  v4 = [(TRIExperimentDeployment *)self->_experiment hash]- type + 32 * type;
  v5 = [(TRITreatmentContentDescriptor *)self->_treatment hash]- v4 + 32 * v4;
  v6 = [(TRIRolloutDeployment *)self->_rollout hash]- v5 + 32 * v5;
  return [(TRIFactorPackSetId *)self->_factorPackSet hash]- v6 + 32 * v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_type];
  v5 = [v3 initWithFormat:@"<TRIContentDescriptorUnion | type:%@ experiment:%@ treatment:%@ rollout:%@ factorPackSet:%@>", v4, self->_experiment, self->_treatment, self->_rollout, self->_factorPackSet];

  return v5;
}

@end