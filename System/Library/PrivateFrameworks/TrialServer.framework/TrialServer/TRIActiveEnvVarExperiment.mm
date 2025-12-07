@interface TRIActiveEnvVarExperiment
+ (id)envVarExperimentWithTargetedBundleIds:(id)ids factorLevelStrings:(id)strings;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToenvVarExperiment:(id)experiment;
- (TRIActiveEnvVarExperiment)initWithCoder:(id)coder;
- (TRIActiveEnvVarExperiment)initWithTargetedBundleIds:(id)ids factorLevelStrings:(id)strings;
- (id)copyWithReplacementFactorLevelStrings:(id)strings;
- (id)copyWithReplacementTargetedBundleIds:(id)ids;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIActiveEnvVarExperiment

- (TRIActiveEnvVarExperiment)initWithTargetedBundleIds:(id)ids factorLevelStrings:(id)strings
{
  idsCopy = ids;
  stringsCopy = strings;
  v10 = stringsCopy;
  if (idsCopy)
  {
    if (stringsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4700 description:{@"Invalid parameter not satisfying: %@", @"targetedBundleIds != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4701 description:{@"Invalid parameter not satisfying: %@", @"factorLevelStrings != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRIActiveEnvVarExperiment;
  v11 = [(TRIActiveEnvVarExperiment *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_targetedBundleIds, ids);
    objc_storeStrong(&v12->_factorLevelStrings, strings);
  }

  return v12;
}

+ (id)envVarExperimentWithTargetedBundleIds:(id)ids factorLevelStrings:(id)strings
{
  stringsCopy = strings;
  idsCopy = ids;
  v8 = [[self alloc] initWithTargetedBundleIds:idsCopy factorLevelStrings:stringsCopy];

  return v8;
}

- (id)copyWithReplacementTargetedBundleIds:(id)ids
{
  idsCopy = ids;
  v5 = [objc_alloc(objc_opt_class()) initWithTargetedBundleIds:idsCopy factorLevelStrings:self->_factorLevelStrings];

  return v5;
}

- (id)copyWithReplacementFactorLevelStrings:(id)strings
{
  stringsCopy = strings;
  v5 = [objc_alloc(objc_opt_class()) initWithTargetedBundleIds:self->_targetedBundleIds factorLevelStrings:stringsCopy];

  return v5;
}

- (BOOL)isEqualToenvVarExperiment:(id)experiment
{
  experimentCopy = experiment;
  v5 = experimentCopy;
  if (!experimentCopy || (v6 = self->_targetedBundleIds == 0, [experimentCopy targetedBundleIds], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (targetedBundleIds = self->_targetedBundleIds) != 0 && (objc_msgSend(v5, "targetedBundleIds"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSArray isEqual:](targetedBundleIds, "isEqual:", v10), v10, !v11) || (v12 = self->_factorLevelStrings == 0, objc_msgSend(v5, "factorLevelStrings"), v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 != 0, v13, v12 == v14))
  {
    v17 = 0;
  }

  else
  {
    factorLevelStrings = self->_factorLevelStrings;
    if (factorLevelStrings)
    {
      factorLevelStrings = [v5 factorLevelStrings];
      v17 = [(NSArray *)factorLevelStrings isEqual:factorLevelStrings];
    }

    else
    {
      v17 = 1;
    }
  }

  return v17 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIActiveEnvVarExperiment *)self isEqualToenvVarExperiment:v5];
  }

  return v6;
}

- (TRIActiveEnvVarExperiment)initWithCoder:(id)coder
{
  v35[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"targetedBundleIds"];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = objc_alloc(MEMORY[0x277CBEB98]);
      v10 = objc_opt_class();
      v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
      v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"factorLevelStrings"];

      if (!v12)
      {
        error = [coderCopy error];

        if (!error)
        {
          v30 = *MEMORY[0x277CCA450];
          v31 = @"Retrieved nil serialized value for nonnull TRIActiveEnvVarExperiment.factorLevelStrings";
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          v23 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIActiveEnvVarExperimentOCNTErrorDomain" code:2 userInfo:v22];
          [coderCopy failWithError:v23];
        }

        v12 = 0;
        goto LABEL_16;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self = [(TRIActiveEnvVarExperiment *)self initWithTargetedBundleIds:v8 factorLevelStrings:v12];
        selfCopy = self;
LABEL_17:

        goto LABEL_18;
      }

      v24 = objc_opt_class();
      v17 = NSStringFromClass(v24);
      v25 = objc_opt_class();
      v18 = NSStringFromClass(v25);
      v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIActiveEnvVarExperiment key factorLevelStrings (expected %@, decoded %@)", v17, v18, 0];
      v28 = *MEMORY[0x277CCA450];
      v29 = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v26 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIActiveEnvVarExperimentOCNTErrorDomain" code:3 userInfo:v20];
      [coderCopy failWithError:v26];
    }

    else
    {
      v15 = objc_opt_class();
      v12 = NSStringFromClass(v15);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIActiveEnvVarExperiment key targetedBundleIds (expected %@, decoded %@)", v12, v17, 0];
      v32 = *MEMORY[0x277CCA450];
      v33 = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v20 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIActiveEnvVarExperimentOCNTErrorDomain" code:3 userInfo:v19];
      [coderCopy failWithError:v20];
    }

LABEL_15:
LABEL_16:
    selfCopy = 0;
    goto LABEL_17;
  }

  error2 = [coderCopy error];

  if (!error2)
  {
    v34 = *MEMORY[0x277CCA450];
    v35[0] = @"Retrieved nil serialized value for nonnull TRIActiveEnvVarExperiment.targetedBundleIds";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v17 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIActiveEnvVarExperimentOCNTErrorDomain" code:2 userInfo:v12];
    [coderCopy failWithError:v17];
    goto LABEL_15;
  }

  selfCopy = 0;
LABEL_18:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  targetedBundleIds = self->_targetedBundleIds;
  v7 = coderCopy;
  if (targetedBundleIds)
  {
    [coderCopy encodeObject:targetedBundleIds forKey:@"targetedBundleIds"];
    coderCopy = v7;
  }

  factorLevelStrings = self->_factorLevelStrings;
  if (factorLevelStrings)
  {
    [v7 encodeObject:factorLevelStrings forKey:@"factorLevelStrings"];
    coderCopy = v7;
  }
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIActiveEnvVarExperiment | targetedBundleIds:%@ factorLevelStrings:%@>", self->_targetedBundleIds, self->_factorLevelStrings];

  return v2;
}

@end