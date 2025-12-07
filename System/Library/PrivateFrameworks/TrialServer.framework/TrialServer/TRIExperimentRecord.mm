@interface TRIExperimentRecord
+ (TRIExperimentRecord)recordWithDeploymentEnvironment:(int)environment experimentDeployment:(id)deployment treatmentId:(id)id factorPackSetId:(id)setId type:(int)type status:(int64_t)status startDate:(id)date endDate:(id)self0 namespaces:(id)self1 isManuallyTargeted:(BOOL)self2 artifact:(id)self3 experimentType:(int)self4;
- (BOOL)hasCounterfactualTreatmentReferencingFactorPackSetId:(id)id;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRecord:(id)record;
- (BOOL)isExpiredExperiment;
- (TRIExperimentRecord)initWithDeploymentEnvironment:(int)environment experimentDeployment:(id)deployment treatmentId:(id)id factorPackSetId:(id)setId type:(int)type status:(int64_t)status startDate:(id)date endDate:(id)self0 namespaces:(id)self1 isManuallyTargeted:(BOOL)self2 artifact:(id)self3 experimentType:(int)self4;
- (id)copyWithReplacementArtifact:(id)artifact;
- (id)copyWithReplacementDeploymentEnvironment:(int)environment;
- (id)copyWithReplacementEndDate:(id)date;
- (id)copyWithReplacementExperimentDeployment:(id)deployment;
- (id)copyWithReplacementExperimentType:(int)type;
- (id)copyWithReplacementFactorPackSetId:(id)id;
- (id)copyWithReplacementIsManuallyTargeted:(BOOL)targeted;
- (id)copyWithReplacementNamespaces:(id)namespaces;
- (id)copyWithReplacementStartDate:(id)date;
- (id)copyWithReplacementStatus:(int64_t)status;
- (id)copyWithReplacementTreatmentId:(id)id;
- (id)copyWithReplacementType:(int)type;
- (id)counterfactualsTreatmentsToFactorPackSetIds;
- (id)description;
- (id)versionedNamespaces;
- (unint64_t)hash;
@end

@implementation TRIExperimentRecord

- (id)versionedNamespaces
{
  namespaces = [(TRIExperimentRecord *)self namespaces];
  v3 = [namespaces _pas_mappedArrayWithTransform:&__block_literal_global_26];

  return v3;
}

id __63__TRIExperimentRecord_VersionedNamespaces__versionedNamespaces__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D73808];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 name];
  v6 = [v3 compatibilityVersion];

  v7 = [v4 initWithName:v5 compatibilityVersion:v6];

  return v7;
}

- (id)counterfactualsTreatmentsToFactorPackSetIds
{
  artifact = [(TRIExperimentRecord *)self artifact];
  treatmentId = [(TRIExperimentRecord *)self treatmentId];
  v5 = [artifact counterfactualsTreatmentsToFactorPackSetIdsWithActiveTreatmentId:treatmentId];

  return v5;
}

- (BOOL)hasCounterfactualTreatmentReferencingFactorPackSetId:(id)id
{
  idCopy = id;
  counterfactualsTreatmentsToFactorPackSetIds = [(TRIExperimentRecord *)self counterfactualsTreatmentsToFactorPackSetIds];
  allValues = [counterfactualsTreatmentsToFactorPackSetIds allValues];
  v7 = [allValues containsObject:idCopy];

  return v7;
}

- (BOOL)isExpiredExperiment
{
  endDate = [(TRIExperimentRecord *)self endDate];
  type = [(TRIExperimentRecord *)self type];
  v5 = 0;
  if (type == 1 && endDate)
  {
    v6 = objc_opt_new();
    v5 = [endDate compare:v6] == -1;
  }

  return v5;
}

- (TRIExperimentRecord)initWithDeploymentEnvironment:(int)environment experimentDeployment:(id)deployment treatmentId:(id)id factorPackSetId:(id)setId type:(int)type status:(int64_t)status startDate:(id)date endDate:(id)self0 namespaces:(id)self1 isManuallyTargeted:(BOOL)self2 artifact:(id)self3 experimentType:(int)self4
{
  deploymentCopy = deployment;
  idCopy = id;
  idCopy2 = id;
  setIdCopy = setId;
  setIdCopy2 = setId;
  dateCopy = date;
  endDateCopy = endDate;
  namespacesCopy = namespaces;
  artifactCopy = artifact;
  if (!deploymentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3307 description:{@"Invalid parameter not satisfying: %@", @"experimentDeployment != nil"}];
  }

  v35 = namespacesCopy;
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
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3308 description:{@"Invalid parameter not satisfying: %@", @"namespaces != nil"}];

    if (artifactCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3309 description:{@"Invalid parameter not satisfying: %@", @"artifact != nil"}];

LABEL_5:
  v38.receiver = self;
  v38.super_class = TRIExperimentRecord;
  v23 = [(TRIExperimentRecord *)&v38 init];
  v24 = v23;
  if (v23)
  {
    v23->_deploymentEnvironment = environment;
    objc_storeStrong(&v23->_experimentDeployment, deployment);
    objc_storeStrong(&v24->_treatmentId, idCopy);
    objc_storeStrong(&v24->_factorPackSetId, setIdCopy);
    v24->_type = type;
    v24->_status = status;
    objc_storeStrong(&v24->_startDate, date);
    objc_storeStrong(&v24->_endDate, endDate);
    objc_storeStrong(&v24->_namespaces, namespaces);
    v24->_isManuallyTargeted = targeted;
    objc_storeStrong(&v24->_artifact, artifact);
    v24->_experimentType = experimentType;
  }

  return v24;
}

+ (TRIExperimentRecord)recordWithDeploymentEnvironment:(int)environment experimentDeployment:(id)deployment treatmentId:(id)id factorPackSetId:(id)setId type:(int)type status:(int64_t)status startDate:(id)date endDate:(id)self0 namespaces:(id)self1 isManuallyTargeted:(BOOL)self2 artifact:(id)self3 experimentType:(int)self4
{
  artifactCopy = artifact;
  namespacesCopy = namespaces;
  endDateCopy = endDate;
  dateCopy = date;
  setIdCopy = setId;
  idCopy = id;
  deploymentCopy = deployment;
  LODWORD(v28) = experimentType;
  LOBYTE(v27) = targeted;
  v25 = [[self alloc] initWithDeploymentEnvironment:environment experimentDeployment:deploymentCopy treatmentId:idCopy factorPackSetId:setIdCopy type:type status:status startDate:dateCopy endDate:endDateCopy namespaces:namespacesCopy isManuallyTargeted:v27 artifact:artifactCopy experimentType:v28];

  return v25;
}

- (id)copyWithReplacementDeploymentEnvironment:(int)environment
{
  v3 = *&environment;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_experimentType;
  LOBYTE(v7) = self->_isManuallyTargeted;
  return [v5 initWithDeploymentEnvironment:v3 experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v7 artifact:self->_artifact experimentType:v8];
}

- (id)copyWithReplacementExperimentDeployment:(id)deployment
{
  deploymentCopy = deployment;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v9) = self->_experimentType;
  LOBYTE(v8) = self->_isManuallyTargeted;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:deploymentCopy treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v8 artifact:self->_artifact experimentType:v9];

  return v6;
}

- (id)copyWithReplacementTreatmentId:(id)id
{
  idCopy = id;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v9) = self->_experimentType;
  LOBYTE(v8) = self->_isManuallyTargeted;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:idCopy factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v8 artifact:self->_artifact experimentType:v9];

  return v6;
}

- (id)copyWithReplacementFactorPackSetId:(id)id
{
  idCopy = id;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v9) = self->_experimentType;
  LOBYTE(v8) = self->_isManuallyTargeted;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:idCopy type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v8 artifact:self->_artifact experimentType:v9];

  return v6;
}

- (id)copyWithReplacementType:(int)type
{
  v3 = *&type;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_experimentType;
  LOBYTE(v7) = self->_isManuallyTargeted;
  return [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:v3 status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v7 artifact:self->_artifact experimentType:v8];
}

- (id)copyWithReplacementStatus:(int64_t)status
{
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_experimentType;
  LOBYTE(v7) = self->_isManuallyTargeted;
  return [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v7 artifact:self->_artifact experimentType:v8];
}

- (id)copyWithReplacementStartDate:(id)date
{
  dateCopy = date;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v9) = self->_experimentType;
  LOBYTE(v8) = self->_isManuallyTargeted;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:dateCopy endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v8 artifact:self->_artifact experimentType:v9];

  return v6;
}

- (id)copyWithReplacementEndDate:(id)date
{
  dateCopy = date;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v9) = self->_experimentType;
  LOBYTE(v8) = self->_isManuallyTargeted;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:dateCopy namespaces:self->_namespaces isManuallyTargeted:v8 artifact:self->_artifact experimentType:v9];

  return v6;
}

- (id)copyWithReplacementNamespaces:(id)namespaces
{
  namespacesCopy = namespaces;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v9) = self->_experimentType;
  LOBYTE(v8) = self->_isManuallyTargeted;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:namespacesCopy isManuallyTargeted:v8 artifact:self->_artifact experimentType:v9];

  return v6;
}

- (id)copyWithReplacementIsManuallyTargeted:(BOOL)targeted
{
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_experimentType;
  LOBYTE(v7) = targeted;
  return [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v7 artifact:self->_artifact experimentType:v8];
}

- (id)copyWithReplacementArtifact:(id)artifact
{
  artifactCopy = artifact;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v9) = self->_experimentType;
  LOBYTE(v8) = self->_isManuallyTargeted;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v8 artifact:artifactCopy experimentType:v9];

  return v6;
}

- (id)copyWithReplacementExperimentType:(int)type
{
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = type;
  LOBYTE(v7) = self->_isManuallyTargeted;
  return [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v7 artifact:self->_artifact experimentType:v8];
}

- (BOOL)isEqualToRecord:(id)record
{
  recordCopy = record;
  v5 = recordCopy;
  if (!recordCopy || (deploymentEnvironment = self->_deploymentEnvironment, deploymentEnvironment != [recordCopy deploymentEnvironment]) || (v7 = self->_experimentDeployment == 0, objc_msgSend(v5, "experimentDeployment"), v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 != 0, v8, v7 == v9) || (experimentDeployment = self->_experimentDeployment) != 0 && (objc_msgSend(v5, "experimentDeployment"), v11 = objc_claimAutoreleasedReturnValue(), v12 = -[TRIExperimentDeployment isEqual:](experimentDeployment, "isEqual:", v11), v11, !v12) || (v13 = self->_treatmentId == 0, objc_msgSend(v5, "treatmentId"), v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 != 0, v14, v13 == v15) || (treatmentId = self->_treatmentId) != 0 && (objc_msgSend(v5, "treatmentId"), v17 = objc_claimAutoreleasedReturnValue(), v18 = -[NSString isEqual:](treatmentId, "isEqual:", v17), v17, !v18) || (v19 = self->_factorPackSetId == 0, objc_msgSend(v5, "factorPackSetId"), v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 != 0, v20, v19 == v21) || (factorPackSetId = self->_factorPackSetId) != 0 && (objc_msgSend(v5, "factorPackSetId"), v23 = objc_claimAutoreleasedReturnValue(), v24 = -[TRIFactorPackSetId isEqual:](factorPackSetId, "isEqual:", v23), v23, !v24) || (type = self->_type, type != objc_msgSend(v5, "type")) || (status = self->_status, status != objc_msgSend(v5, "status")) || (v27 = self->_startDate == 0, objc_msgSend(v5, "startDate"), v28 = objc_claimAutoreleasedReturnValue(), v29 = v28 != 0, v28, v27 == v29) || (startDate = self->_startDate) != 0 && (objc_msgSend(v5, "startDate"), v31 = objc_claimAutoreleasedReturnValue(), v32 = -[NSDate isEqual:](startDate, "isEqual:", v31), v31, !v32) || (v33 = self->_endDate == 0, objc_msgSend(v5, "endDate"), v34 = objc_claimAutoreleasedReturnValue(), v35 = v34 != 0, v34, v33 == v35) || (endDate = self->_endDate) != 0 && (objc_msgSend(v5, "endDate"), v37 = objc_claimAutoreleasedReturnValue(), v38 = -[NSDate isEqual:](endDate, "isEqual:", v37), v37, !v38) || (v39 = self->_namespaces == 0, objc_msgSend(v5, "namespaces"), v40 = objc_claimAutoreleasedReturnValue(), v41 = v40 != 0, v40, v39 == v41) || (namespaces = self->_namespaces) != 0 && (objc_msgSend(v5, "namespaces"), v43 = objc_claimAutoreleasedReturnValue(), v44 = -[NSArray isEqual:](namespaces, "isEqual:", v43), v43, !v44) || (isManuallyTargeted = self->_isManuallyTargeted, isManuallyTargeted != objc_msgSend(v5, "isManuallyTargeted")) || (v46 = self->_artifact == 0, objc_msgSend(v5, "artifact"), v47 = objc_claimAutoreleasedReturnValue(), v48 = v47 != 0, v47, v46 == v48) || (artifact = self->_artifact) != 0 && (objc_msgSend(v5, "artifact"), v50 = objc_claimAutoreleasedReturnValue(), v51 = -[TRIClientExperimentArtifact isEqual:](artifact, "isEqual:", v50), v50, !v51))
  {
    v53 = 0;
  }

  else
  {
    experimentType = self->_experimentType;
    v53 = experimentType == [v5 experimentType];
  }

  return v53;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIExperimentRecord *)self isEqualToRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  deploymentEnvironment = self->_deploymentEnvironment;
  v4 = [(TRIExperimentDeployment *)self->_experimentDeployment hash]- deploymentEnvironment + 32 * deploymentEnvironment;
  v5 = [(NSString *)self->_treatmentId hash]- v4 + 32 * v4;
  v6 = [(TRIFactorPackSetId *)self->_factorPackSetId hash];
  v7 = self->_type - (v6 - v5 + 32 * v5) + 32 * (v6 - v5 + 32 * v5);
  v8 = self->_status - v7 + 32 * v7;
  v9 = [(NSDate *)self->_startDate hash]- v8 + 32 * v8;
  v10 = [(NSDate *)self->_endDate hash]- v9 + 32 * v9;
  v11 = [(NSArray *)self->_namespaces hash];
  v12 = self->_isManuallyTargeted - (v11 - v10 + 32 * v10) + 32 * (v11 - v10 + 32 * v10);
  v13 = [(TRIClientExperimentArtifact *)self->_artifact hash];
  return self->_experimentType - (v13 - v12 + 32 * v12) + 32 * (v13 - v12 + 32 * v12);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_deploymentEnvironment];
  v15 = *&self->_experimentDeployment;
  factorPackSetId = self->_factorPackSetId;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_type];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_status];
  v14 = *&self->_startDate;
  namespaces = self->_namespaces;
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_isManuallyTargeted];
  artifact = self->_artifact;
  v11 = [MEMORY[0x277CCABB0] numberWithInt:self->_experimentType];
  v12 = [v3 initWithFormat:@"<TRIExperimentRecord | deploymentEnvironment:%@ experimentDeployment:%@ treatmentId:%@ factorPackSetId:%@ type:%@ status:%@ startDate:%@ endDate:%@ namespaces:%@ isManuallyTargeted:%@ artifact:%@ experimentType:%@>", v4, v15, factorPackSetId, v6, v7, v14, namespaces, v9, artifact, v11];

  return v12;
}

@end