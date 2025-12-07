@interface TRIRolloutRecord
+ (id)recordWithDeployment:(id)deployment rampId:(id)id activeFactorPackSetId:(id)setId activeTargetingRuleIndex:(id)index targetedFactorPackSetId:(id)packSetId targetedTargetingRuleIndex:(id)ruleIndex status:(int64_t)status namespaces:(id)self0 artifact:(id)self1;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRecord:(id)record;
- (TRIRolloutRecord)initWithDeployment:(id)deployment rampId:(id)id activeFactorPackSetId:(id)setId activeTargetingRuleIndex:(id)index targetedFactorPackSetId:(id)packSetId targetedTargetingRuleIndex:(id)ruleIndex status:(int64_t)status namespaces:(id)self0 artifact:(id)self1;
- (id)copyWithReplacementActiveFactorPackSetId:(id)id;
- (id)copyWithReplacementActiveTargetingRuleIndex:(id)index;
- (id)copyWithReplacementArtifact:(id)artifact;
- (id)copyWithReplacementDeployment:(id)deployment;
- (id)copyWithReplacementNamespaces:(id)namespaces;
- (id)copyWithReplacementRampId:(id)id;
- (id)copyWithReplacementTargetedFactorPackSetId:(id)id;
- (id)copyWithReplacementTargetedTargetingRuleIndex:(id)index;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIRolloutRecord

- (TRIRolloutRecord)initWithDeployment:(id)deployment rampId:(id)id activeFactorPackSetId:(id)setId activeTargetingRuleIndex:(id)index targetedFactorPackSetId:(id)packSetId targetedTargetingRuleIndex:(id)ruleIndex status:(int64_t)status namespaces:(id)self0 artifact:(id)self1
{
  deploymentCopy = deployment;
  idCopy = id;
  idCopy2 = id;
  setIdCopy = setId;
  setIdCopy2 = setId;
  indexCopy = index;
  indexCopy2 = index;
  packSetIdCopy = packSetId;
  ruleIndexCopy = ruleIndex;
  namespacesCopy = namespaces;
  artifactCopy = artifact;
  v36 = artifactCopy;
  if (!deploymentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1925 description:{@"Invalid parameter not satisfying: %@", @"deployment != nil"}];

    artifactCopy = v36;
  }

  v33 = namespacesCopy;
  if (namespacesCopy)
  {
    if (artifactCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1926 description:{@"Invalid parameter not satisfying: %@", @"namespaces != nil"}];

    if (v36)
    {
      goto LABEL_5;
    }
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1927 description:{@"Invalid parameter not satisfying: %@", @"artifact != nil"}];

LABEL_5:
  v38.receiver = self;
  v38.super_class = TRIRolloutRecord;
  v23 = [(TRIRolloutRecord *)&v38 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_deployment, deployment);
    objc_storeStrong(&v24->_rampId, idCopy);
    objc_storeStrong(&v24->_activeFactorPackSetId, setIdCopy);
    objc_storeStrong(&v24->_activeTargetingRuleIndex, indexCopy);
    objc_storeStrong(&v24->_targetedFactorPackSetId, packSetId);
    objc_storeStrong(&v24->_targetedTargetingRuleIndex, ruleIndex);
    v24->_status = status;
    objc_storeStrong(&v24->_namespaces, namespaces);
    objc_storeStrong(&v24->_artifact, artifact);
  }

  return v24;
}

+ (id)recordWithDeployment:(id)deployment rampId:(id)id activeFactorPackSetId:(id)setId activeTargetingRuleIndex:(id)index targetedFactorPackSetId:(id)packSetId targetedTargetingRuleIndex:(id)ruleIndex status:(int64_t)status namespaces:(id)self0 artifact:(id)self1
{
  artifactCopy = artifact;
  namespacesCopy = namespaces;
  ruleIndexCopy = ruleIndex;
  packSetIdCopy = packSetId;
  indexCopy = index;
  setIdCopy = setId;
  idCopy = id;
  deploymentCopy = deployment;
  v26 = [[self alloc] initWithDeployment:deploymentCopy rampId:idCopy activeFactorPackSetId:setIdCopy activeTargetingRuleIndex:indexCopy targetedFactorPackSetId:packSetIdCopy targetedTargetingRuleIndex:ruleIndexCopy status:status namespaces:namespacesCopy artifact:artifactCopy];

  return v26;
}

- (id)copyWithReplacementDeployment:(id)deployment
{
  deploymentCopy = deployment;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:deploymentCopy rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:self->_namespaces artifact:self->_artifact];

  return v5;
}

- (id)copyWithReplacementRampId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:idCopy activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:self->_namespaces artifact:self->_artifact];

  return v5;
}

- (id)copyWithReplacementActiveFactorPackSetId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:idCopy activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:self->_namespaces artifact:self->_artifact];

  return v5;
}

- (id)copyWithReplacementActiveTargetingRuleIndex:(id)index
{
  indexCopy = index;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:indexCopy targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:self->_namespaces artifact:self->_artifact];

  return v5;
}

- (id)copyWithReplacementTargetedFactorPackSetId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:idCopy targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:self->_namespaces artifact:self->_artifact];

  return v5;
}

- (id)copyWithReplacementTargetedTargetingRuleIndex:(id)index
{
  indexCopy = index;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:indexCopy status:self->_status namespaces:self->_namespaces artifact:self->_artifact];

  return v5;
}

- (id)copyWithReplacementNamespaces:(id)namespaces
{
  namespacesCopy = namespaces;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:namespacesCopy artifact:self->_artifact];

  return v5;
}

- (id)copyWithReplacementArtifact:(id)artifact
{
  artifactCopy = artifact;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:self->_namespaces artifact:artifactCopy];

  return v5;
}

- (BOOL)isEqualToRecord:(id)record
{
  recordCopy = record;
  v5 = recordCopy;
  if (!recordCopy || (v6 = self->_deployment == 0, [recordCopy deployment], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (deployment = self->_deployment) != 0 && (objc_msgSend(v5, "deployment"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[TRIRolloutDeployment isEqual:](deployment, "isEqual:", v10), v10, !v11) || (v12 = self->_rampId == 0, objc_msgSend(v5, "rampId"), v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 != 0, v13, v12 == v14) || (rampId = self->_rampId) != 0 && (objc_msgSend(v5, "rampId"), v16 = objc_claimAutoreleasedReturnValue(), v17 = -[TRIRampId isEqual:](rampId, "isEqual:", v16), v16, !v17) || (v18 = self->_activeFactorPackSetId == 0, objc_msgSend(v5, "activeFactorPackSetId"), v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 != 0, v19, v18 == v20) || (activeFactorPackSetId = self->_activeFactorPackSetId) != 0 && (objc_msgSend(v5, "activeFactorPackSetId"), v22 = objc_claimAutoreleasedReturnValue(), v23 = -[TRIFactorPackSetId isEqual:](activeFactorPackSetId, "isEqual:", v22), v22, !v23) || (v24 = self->_activeTargetingRuleIndex == 0, objc_msgSend(v5, "activeTargetingRuleIndex"), v25 = objc_claimAutoreleasedReturnValue(), v26 = v25 != 0, v25, v24 == v26) || (activeTargetingRuleIndex = self->_activeTargetingRuleIndex) != 0 && (objc_msgSend(v5, "activeTargetingRuleIndex"), v28 = objc_claimAutoreleasedReturnValue(), v29 = -[NSNumber isEqual:](activeTargetingRuleIndex, "isEqual:", v28), v28, !v29) || (v30 = self->_targetedFactorPackSetId == 0, objc_msgSend(v5, "targetedFactorPackSetId"), v31 = objc_claimAutoreleasedReturnValue(), v32 = v31 != 0, v31, v30 == v32) || (targetedFactorPackSetId = self->_targetedFactorPackSetId) != 0 && (objc_msgSend(v5, "targetedFactorPackSetId"), v34 = objc_claimAutoreleasedReturnValue(), v35 = -[TRIFactorPackSetId isEqual:](targetedFactorPackSetId, "isEqual:", v34), v34, !v35) || (v36 = self->_targetedTargetingRuleIndex == 0, objc_msgSend(v5, "targetedTargetingRuleIndex"), v37 = objc_claimAutoreleasedReturnValue(), v38 = v37 != 0, v37, v36 == v38) || (targetedTargetingRuleIndex = self->_targetedTargetingRuleIndex) != 0 && (objc_msgSend(v5, "targetedTargetingRuleIndex"), v40 = objc_claimAutoreleasedReturnValue(), v41 = -[NSNumber isEqual:](targetedTargetingRuleIndex, "isEqual:", v40), v40, !v41) || (status = self->_status, status != objc_msgSend(v5, "status")) || (v43 = self->_namespaces == 0, objc_msgSend(v5, "namespaces"), v44 = objc_claimAutoreleasedReturnValue(), v45 = v44 != 0, v44, v43 == v45) || (namespaces = self->_namespaces) != 0 && (objc_msgSend(v5, "namespaces"), v47 = objc_claimAutoreleasedReturnValue(), v48 = -[NSArray isEqual:](namespaces, "isEqual:", v47), v47, !v48) || (v49 = self->_artifact == 0, objc_msgSend(v5, "artifact"), v50 = objc_claimAutoreleasedReturnValue(), v51 = v50 != 0, v50, v49 == v51))
  {
    v54 = 0;
  }

  else
  {
    artifact = self->_artifact;
    if (artifact)
    {
      artifact = [v5 artifact];
      v54 = [(TRIClientRolloutArtifact *)artifact isEqual:artifact];
    }

    else
    {
      v54 = 1;
    }
  }

  return v54 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIRolloutRecord *)self isEqualToRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(TRIRolloutDeployment *)self->_deployment hash];
  v4 = [(TRIRampId *)self->_rampId hash]- v3 + 32 * v3;
  v5 = [(TRIFactorPackSetId *)self->_activeFactorPackSetId hash]- v4 + 32 * v4;
  v6 = [(NSNumber *)self->_activeTargetingRuleIndex hash]- v5 + 32 * v5;
  v7 = [(TRIFactorPackSetId *)self->_targetedFactorPackSetId hash]- v6 + 32 * v6;
  v8 = [(NSNumber *)self->_targetedTargetingRuleIndex hash];
  v9 = self->_status - (v8 - v7 + 32 * v7) + 32 * (v8 - v7 + 32 * v7);
  v10 = [(NSArray *)self->_namespaces hash]- v9 + 32 * v9;
  return [(TRIClientRolloutArtifact *)self->_artifact hash]- v10 + 32 * v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = *&self->_deployment;
  v9 = *&self->_activeFactorPackSetId;
  targetedFactorPackSetId = self->_targetedFactorPackSetId;
  targetedTargetingRuleIndex = self->_targetedTargetingRuleIndex;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_status];
  v7 = [v3 initWithFormat:@"<TRIRolloutRecord | deployment:%@ rampId:%@ activeFactorPackSetId:%@ activeTargetingRuleIndex:%@ targetedFactorPackSetId:%@ targetedTargetingRuleIndex:%@ status:%@ namespaces:%@ artifact:%@>", v10, v9, targetedFactorPackSetId, targetedTargetingRuleIndex, v6, self->_namespaces, self->_artifact];

  return v7;
}

@end