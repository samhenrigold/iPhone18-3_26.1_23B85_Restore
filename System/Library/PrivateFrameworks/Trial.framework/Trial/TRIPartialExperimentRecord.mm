@interface TRIPartialExperimentRecord
+ (id)recordWithDeploymentEnvironment:(int)environment experimentDeployment:(id)deployment treatmentId:(id)id factorPackSetId:(id)setId type:(int)type status:(int64_t)status startDate:(id)date endDate:(id)self0 namespaces:(id)self1 experimentType:(int)self2 counterfactualTreatmentIds:(id)self3;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRecord:(id)record;
- (TRIPartialExperimentRecord)initWithCoder:(id)coder;
- (TRIPartialExperimentRecord)initWithDeploymentEnvironment:(int)environment experimentDeployment:(id)deployment treatmentId:(id)id factorPackSetId:(id)setId type:(int)type status:(int64_t)status startDate:(id)date endDate:(id)self0 namespaces:(id)self1 experimentType:(int)self2 counterfactualTreatmentIds:(id)self3;
- (id)copyWithReplacementCounterfactualTreatmentIds:(id)ids;
- (id)copyWithReplacementDeploymentEnvironment:(int)environment;
- (id)copyWithReplacementEndDate:(id)date;
- (id)copyWithReplacementExperimentDeployment:(id)deployment;
- (id)copyWithReplacementFactorPackSetId:(id)id;
- (id)copyWithReplacementNamespaces:(id)namespaces;
- (id)copyWithReplacementStartDate:(id)date;
- (id)copyWithReplacementStatus:(int64_t)status;
- (id)copyWithReplacementTreatmentId:(id)id;
- (id)copyWithReplacementType:(int)type;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIPartialExperimentRecord

- (TRIPartialExperimentRecord)initWithDeploymentEnvironment:(int)environment experimentDeployment:(id)deployment treatmentId:(id)id factorPackSetId:(id)setId type:(int)type status:(int64_t)status startDate:(id)date endDate:(id)self0 namespaces:(id)self1 experimentType:(int)self2 counterfactualTreatmentIds:(id)self3
{
  deploymentCopy = deployment;
  idCopy = id;
  idCopy2 = id;
  setIdCopy = setId;
  setIdCopy2 = setId;
  dateCopy = date;
  endDateCopy = endDate;
  namespacesCopy = namespaces;
  idsCopy = ids;
  v39 = namespacesCopy;
  if (deploymentCopy)
  {
    if (namespacesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v29 = idsCopy;
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:638 description:{@"Invalid parameter not satisfying: %@", @"experimentDeployment != nil"}];

    idsCopy = v29;
    if (v39)
    {
      goto LABEL_3;
    }
  }

  v30 = idsCopy;
  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:639 description:{@"Invalid parameter not satisfying: %@", @"namespaces != nil"}];

  idsCopy = v30;
LABEL_3:
  v23 = idsCopy;
  if (!idsCopy)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:640 description:{@"Invalid parameter not satisfying: %@", @"counterfactualTreatmentIds != nil"}];
  }

  v40.receiver = self;
  v40.super_class = TRIPartialExperimentRecord;
  v24 = [(TRIPartialExperimentRecord *)&v40 init];
  v25 = v24;
  if (v24)
  {
    v24->_deploymentEnvironment = environment;
    objc_storeStrong(&v24->_experimentDeployment, deployment);
    objc_storeStrong(&v25->_treatmentId, idCopy);
    objc_storeStrong(&v25->_factorPackSetId, setIdCopy);
    v25->_type = type;
    v25->_status = status;
    objc_storeStrong(&v25->_startDate, date);
    objc_storeStrong(&v25->_endDate, endDate);
    objc_storeStrong(&v25->_namespaces, namespaces);
    v25->_experimentType = experimentType;
    objc_storeStrong(&v25->_counterfactualTreatmentIds, ids);
  }

  return v25;
}

+ (id)recordWithDeploymentEnvironment:(int)environment experimentDeployment:(id)deployment treatmentId:(id)id factorPackSetId:(id)setId type:(int)type status:(int64_t)status startDate:(id)date endDate:(id)self0 namespaces:(id)self1 experimentType:(int)self2 counterfactualTreatmentIds:(id)self3
{
  v16 = *&environment;
  idsCopy = ids;
  namespacesCopy = namespaces;
  endDateCopy = endDate;
  dateCopy = date;
  setIdCopy = setId;
  idCopy = id;
  deploymentCopy = deployment;
  LODWORD(v27) = experimentType;
  v25 = [[self alloc] initWithDeploymentEnvironment:v16 experimentDeployment:deploymentCopy treatmentId:idCopy factorPackSetId:setIdCopy type:type status:status startDate:dateCopy endDate:endDateCopy namespaces:namespacesCopy experimentType:v27 counterfactualTreatmentIds:idsCopy];

  return v25;
}

- (id)copyWithReplacementDeploymentEnvironment:(int)environment
{
  v3 = *&environment;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v7) = self->_experimentType;
  return [v5 initWithDeploymentEnvironment:v3 experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces experimentType:v7 counterfactualTreatmentIds:self->_counterfactualTreatmentIds];
}

- (id)copyWithReplacementExperimentDeployment:(id)deployment
{
  deploymentCopy = deployment;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_experimentType;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:deploymentCopy treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces experimentType:v8 counterfactualTreatmentIds:self->_counterfactualTreatmentIds];

  return v6;
}

- (id)copyWithReplacementTreatmentId:(id)id
{
  idCopy = id;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_experimentType;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:idCopy factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces experimentType:v8 counterfactualTreatmentIds:self->_counterfactualTreatmentIds];

  return v6;
}

- (id)copyWithReplacementFactorPackSetId:(id)id
{
  idCopy = id;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_experimentType;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:idCopy type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces experimentType:v8 counterfactualTreatmentIds:self->_counterfactualTreatmentIds];

  return v6;
}

- (id)copyWithReplacementType:(int)type
{
  v3 = *&type;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v7) = self->_experimentType;
  return [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:v3 status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces experimentType:v7 counterfactualTreatmentIds:self->_counterfactualTreatmentIds];
}

- (id)copyWithReplacementStatus:(int64_t)status
{
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v7) = self->_experimentType;
  return [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces experimentType:v7 counterfactualTreatmentIds:self->_counterfactualTreatmentIds];
}

- (id)copyWithReplacementStartDate:(id)date
{
  dateCopy = date;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_experimentType;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:dateCopy endDate:self->_endDate namespaces:self->_namespaces experimentType:v8 counterfactualTreatmentIds:self->_counterfactualTreatmentIds];

  return v6;
}

- (id)copyWithReplacementEndDate:(id)date
{
  dateCopy = date;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_experimentType;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:dateCopy namespaces:self->_namespaces experimentType:v8 counterfactualTreatmentIds:self->_counterfactualTreatmentIds];

  return v6;
}

- (id)copyWithReplacementNamespaces:(id)namespaces
{
  namespacesCopy = namespaces;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_experimentType;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:namespacesCopy experimentType:v8 counterfactualTreatmentIds:self->_counterfactualTreatmentIds];

  return v6;
}

- (id)copyWithReplacementCounterfactualTreatmentIds:(id)ids
{
  idsCopy = ids;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_experimentType;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces experimentType:v8 counterfactualTreatmentIds:idsCopy];

  return v6;
}

- (BOOL)isEqualToRecord:(id)record
{
  recordCopy = record;
  v5 = recordCopy;
  if (!recordCopy || (deploymentEnvironment = self->_deploymentEnvironment, deploymentEnvironment != [recordCopy deploymentEnvironment]) || (v7 = self->_experimentDeployment == 0, objc_msgSend(v5, "experimentDeployment"), v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 != 0, v8, v7 == v9) || (experimentDeployment = self->_experimentDeployment) != 0 && (objc_msgSend(v5, "experimentDeployment"), v11 = objc_claimAutoreleasedReturnValue(), v12 = -[TRIExperimentDeployment isEqual:](experimentDeployment, "isEqual:", v11), v11, !v12) || (v13 = self->_treatmentId == 0, objc_msgSend(v5, "treatmentId"), v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 != 0, v14, v13 == v15) || (treatmentId = self->_treatmentId) != 0 && (objc_msgSend(v5, "treatmentId"), v17 = objc_claimAutoreleasedReturnValue(), v18 = -[NSString isEqual:](treatmentId, "isEqual:", v17), v17, !v18) || (v19 = self->_factorPackSetId == 0, objc_msgSend(v5, "factorPackSetId"), v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 != 0, v20, v19 == v21) || (factorPackSetId = self->_factorPackSetId) != 0 && (objc_msgSend(v5, "factorPackSetId"), v23 = objc_claimAutoreleasedReturnValue(), v24 = -[TRIFactorPackSetId isEqual:](factorPackSetId, "isEqual:", v23), v23, !v24) || (type = self->_type, type != objc_msgSend(v5, "type")) || (status = self->_status, status != objc_msgSend(v5, "status")) || (v27 = self->_startDate == 0, objc_msgSend(v5, "startDate"), v28 = objc_claimAutoreleasedReturnValue(), v29 = v28 != 0, v28, v27 == v29) || (startDate = self->_startDate) != 0 && (objc_msgSend(v5, "startDate"), v31 = objc_claimAutoreleasedReturnValue(), v32 = -[NSDate isEqual:](startDate, "isEqual:", v31), v31, !v32) || (v33 = self->_endDate == 0, objc_msgSend(v5, "endDate"), v34 = objc_claimAutoreleasedReturnValue(), v35 = v34 != 0, v34, v33 == v35) || (endDate = self->_endDate) != 0 && (objc_msgSend(v5, "endDate"), v37 = objc_claimAutoreleasedReturnValue(), v38 = -[NSDate isEqual:](endDate, "isEqual:", v37), v37, !v38) || (v39 = self->_namespaces == 0, objc_msgSend(v5, "namespaces"), v40 = objc_claimAutoreleasedReturnValue(), v41 = v40 != 0, v40, v39 == v41) || (namespaces = self->_namespaces) != 0 && (objc_msgSend(v5, "namespaces"), v43 = objc_claimAutoreleasedReturnValue(), v44 = -[NSArray isEqual:](namespaces, "isEqual:", v43), v43, !v44) || (experimentType = self->_experimentType, experimentType != objc_msgSend(v5, "experimentType")) || (v46 = self->_counterfactualTreatmentIds == 0, objc_msgSend(v5, "counterfactualTreatmentIds"), v47 = objc_claimAutoreleasedReturnValue(), v48 = v47 != 0, v47, v46 == v48))
  {
    v51 = 0;
  }

  else
  {
    counterfactualTreatmentIds = self->_counterfactualTreatmentIds;
    if (counterfactualTreatmentIds)
    {
      counterfactualTreatmentIds = [v5 counterfactualTreatmentIds];
      v51 = [(NSArray *)counterfactualTreatmentIds isEqual:counterfactualTreatmentIds];
    }

    else
    {
      v51 = 1;
    }
  }

  return v51 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIPartialExperimentRecord *)self isEqualToRecord:v5];
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
  v12 = self->_experimentType - (v11 - v10 + 32 * v10) + 32 * (v11 - v10 + 32 * v10);
  return [(NSArray *)self->_counterfactualTreatmentIds hash]- v12 + 32 * v12;
}

- (TRIPartialExperimentRecord)initWithCoder:(id)coder
{
  v107[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"deploymentEnvironment"];
  if (v5)
  {
    goto LABEL_2;
  }

  error = [coderCopy error];

  if (!error)
  {
    if (([coderCopy containsValueForKey:@"deploymentEnvironment"] & 1) == 0)
    {
      v106 = *MEMORY[0x277CCA450];
      v107[0] = @"Missing serialized value for TRIPartialExperimentRecord.deploymentEnvironment";
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:&v106 count:1];
      v7 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialExperimentRecordOCNTErrorDomain" code:1 userInfo:v6];
      [coderCopy failWithError:v7];
      goto LABEL_16;
    }

LABEL_2:
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"experimentDeployment"];
    if (!v6)
    {
      error2 = [coderCopy error];

      if (error2)
      {
        v6 = 0;
        selfCopy = 0;
LABEL_58:

        goto LABEL_59;
      }

      v104 = *MEMORY[0x277CCA450];
      v105 = @"Retrieved nil serialized value for nonnull TRIPartialExperimentRecord.experimentDeployment";
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
      v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialExperimentRecordOCNTErrorDomain" code:2 userInfo:v7];
      [coderCopy failWithError:v8];
      goto LABEL_29;
    }

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"treatmentId"];
    if (!v7)
    {
      error3 = [coderCopy error];

      if (error3)
      {
        v7 = 0;
LABEL_16:
        selfCopy = 0;
LABEL_57:

        goto LABEL_58;
      }
    }

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"factorPackSetId"];
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIPartialExperimentRecord key factorPackSetId (expected %@, decoded %@)", v10, v12, 0];
        v102 = *MEMORY[0x277CCA450];
        v103 = v13;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
        v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialExperimentRecordOCNTErrorDomain" code:3 userInfo:v14];
        [coderCopy failWithError:v15];

LABEL_7:
        selfCopy = 0;
LABEL_54:

        goto LABEL_55;
      }
    }

    else
    {
      error4 = [coderCopy error];

      if (error4)
      {
        v8 = 0;
        goto LABEL_29;
      }
    }

    v21 = [coderCopy decodeInt64ForKey:@"type"];
    if (!v21)
    {
      error5 = [coderCopy error];

      if (error5)
      {
        goto LABEL_29;
      }

      if (([coderCopy containsValueForKey:@"type"] & 1) == 0)
      {
        v100 = *MEMORY[0x277CCA450];
        v101 = @"Missing serialized value for TRIPartialExperimentRecord.type";
        v30 = MEMORY[0x277CBEAC0];
        v31 = &v101;
        v32 = &v100;
        goto LABEL_37;
      }
    }

    v22 = [coderCopy decodeInt64ForKey:@"status"];
    if (v22)
    {
      goto LABEL_21;
    }

    error6 = [coderCopy error];

    if (!error6)
    {
      if ([coderCopy containsValueForKey:@"status"])
      {
LABEL_21:
        v79 = v22;
        v83 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
        if (v83)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v23 = objc_opt_class();
            v12 = NSStringFromClass(v23);
            v10 = v83;
            v24 = objc_opt_class();
            v25 = NSStringFromClass(v24);
            v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIPartialExperimentRecord key startDate (expected %@, decoded %@)", v12, v25, 0];
            v96 = *MEMORY[0x277CCA450];
            v80 = v26;
            v97 = v26;
            v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
            v28 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialExperimentRecordOCNTErrorDomain" code:3 userInfo:v27];
            [coderCopy failWithError:v28];

            selfCopy = 0;
LABEL_53:

            goto LABEL_54;
          }
        }

        else
        {
          error7 = [coderCopy error];

          if (error7)
          {
            v10 = 0;
            selfCopy = 0;
LABEL_55:

            goto LABEL_56;
          }
        }

        v78 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
        if (v78)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v35 = objc_opt_class();
            v25 = NSStringFromClass(v35);
            v12 = v78;
            v36 = objc_opt_class();
            v81 = NSStringFromClass(v36);
            v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIPartialExperimentRecord key endDate (expected %@, decoded %@)", v25, v81, 0];
            v94 = *MEMORY[0x277CCA450];
            v95 = v37;
            v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
            v39 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialExperimentRecordOCNTErrorDomain" code:3 userInfo:v38];
            [coderCopy failWithError:v39];

            selfCopy = 0;
            v10 = v83;

            goto LABEL_53;
          }
        }

        else
        {
          error8 = [coderCopy error];

          if (error8)
          {
            v12 = 0;
            selfCopy = 0;
            v10 = v83;
            goto LABEL_54;
          }
        }

        v41 = objc_alloc(MEMORY[0x277CBEB98]);
        v42 = objc_opt_class();
        v43 = [v41 initWithObjects:{v42, objc_opt_class(), 0}];
        v44 = [coderCopy decodeObjectOfClasses:v43 forKey:@"namespaces"];

        if (v44)
        {
          objc_opt_class();
          v45 = v44;
          if (objc_opt_isKindOfClass())
          {
            v77 = v44;
            v76 = [coderCopy decodeInt64ForKey:@"experimentType"];
            if (!v76)
            {
              error9 = [coderCopy error];

              if (error9)
              {
                selfCopy = 0;
                v10 = v83;
                v25 = v77;
                v12 = v78;
                goto LABEL_53;
              }

              if (([coderCopy containsValueForKey:@"experimentType"] & 1) == 0)
              {
                v88 = *MEMORY[0x277CCA450];
                v89 = @"Missing serialized value for TRIPartialExperimentRecord.experimentType";
                v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
                v73 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialExperimentRecordOCNTErrorDomain" code:1 userInfo:v82];
                [coderCopy failWithError:v73];

                goto LABEL_68;
              }
            }

            v46 = objc_alloc(MEMORY[0x277CBEB98]);
            v47 = objc_opt_class();
            v48 = [v46 initWithObjects:{v47, objc_opt_class(), 0}];
            v49 = [coderCopy decodeObjectOfClasses:v48 forKey:@"counterfactualTreatmentIds"];

            if (v49)
            {
              objc_opt_class();
              v82 = v49;
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v65 = objc_opt_class();
                v66 = NSStringFromClass(v65);
                v67 = objc_opt_class();
                v68 = NSStringFromClass(v67);
                v69 = v66;
                v70 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIPartialExperimentRecord key counterfactualTreatmentIds (expected %@, decoded %@)", v66, v68, 0];
                v84 = *MEMORY[0x277CCA450];
                v85 = v70;
                v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
                v72 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialExperimentRecordOCNTErrorDomain" code:3 userInfo:v71];
                [coderCopy failWithError:v72];

LABEL_68:
                selfCopy = 0;
                v10 = v83;
                v25 = v77;
                v12 = v78;
                goto LABEL_52;
              }

              v75 = v49;
              LODWORD(v74) = v76;
              v12 = v78;
              v10 = v83;
              v50 = v5;
              v25 = v77;
              self = [(TRIPartialExperimentRecord *)self initWithDeploymentEnvironment:v50 experimentDeployment:v6 treatmentId:v7 factorPackSetId:v8 type:v21 status:v79 startDate:v83 endDate:v78 namespaces:v77 experimentType:v74 counterfactualTreatmentIds:v75];
              selfCopy = self;
LABEL_52:

              goto LABEL_53;
            }

            error10 = [coderCopy error];

            v10 = v83;
            v25 = v77;
            if (!error10)
            {
              v86 = *MEMORY[0x277CCA450];
              v87 = @"Retrieved nil serialized value for nonnull TRIPartialExperimentRecord.counterfactualTreatmentIds";
              v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
              v64 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialExperimentRecordOCNTErrorDomain" code:2 userInfo:v63];
              [coderCopy failWithError:v64];

              v10 = v83;
            }

            v82 = 0;
            selfCopy = 0;
LABEL_51:
            v12 = v78;
            goto LABEL_52;
          }

          v52 = objc_opt_class();
          v53 = NSStringFromClass(v52);
          v25 = v45;
          v54 = objc_opt_class();
          v55 = NSStringFromClass(v54);
          v82 = v53;
          v56 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIPartialExperimentRecord key namespaces (expected %@, decoded %@)", v53, v55, 0];
          v90 = *MEMORY[0x277CCA450];
          v91 = v56;
          v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
          v58 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialExperimentRecordOCNTErrorDomain" code:3 userInfo:v57];
          [coderCopy failWithError:v58];
        }

        else
        {
          error11 = [coderCopy error];

          if (error11)
          {
            v25 = 0;
            selfCopy = 0;
            v10 = v83;
            v12 = v78;
            goto LABEL_53;
          }

          v92 = *MEMORY[0x277CCA450];
          v93 = @"Retrieved nil serialized value for nonnull TRIPartialExperimentRecord.namespaces";
          v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
          v59 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialExperimentRecordOCNTErrorDomain" code:2 userInfo:v82];
          [coderCopy failWithError:v59];

          v25 = 0;
        }

        selfCopy = 0;
        v10 = v83;
        goto LABEL_51;
      }

      v98 = *MEMORY[0x277CCA450];
      v99 = @"Missing serialized value for TRIPartialExperimentRecord.status";
      v30 = MEMORY[0x277CBEAC0];
      v31 = &v99;
      v32 = &v98;
LABEL_37:
      v10 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:1];
      v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialExperimentRecordOCNTErrorDomain" code:1 userInfo:v10];
      [coderCopy failWithError:v12];
      goto LABEL_7;
    }

LABEL_29:
    selfCopy = 0;
LABEL_56:

    goto LABEL_57;
  }

  selfCopy = 0;
LABEL_59:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_deploymentEnvironment forKey:@"deploymentEnvironment"];
  experimentDeployment = self->_experimentDeployment;
  if (experimentDeployment)
  {
    [coderCopy encodeObject:experimentDeployment forKey:@"experimentDeployment"];
  }

  treatmentId = self->_treatmentId;
  if (treatmentId)
  {
    [coderCopy encodeObject:treatmentId forKey:@"treatmentId"];
  }

  factorPackSetId = self->_factorPackSetId;
  v7 = coderCopy;
  if (factorPackSetId)
  {
    [coderCopy encodeObject:factorPackSetId forKey:@"factorPackSetId"];
    v7 = coderCopy;
  }

  [v7 encodeInt64:self->_type forKey:@"type"];
  [coderCopy encodeInt64:self->_status forKey:@"status"];
  startDate = self->_startDate;
  if (startDate)
  {
    [coderCopy encodeObject:startDate forKey:@"startDate"];
  }

  endDate = self->_endDate;
  if (endDate)
  {
    [coderCopy encodeObject:endDate forKey:@"endDate"];
  }

  namespaces = self->_namespaces;
  v11 = coderCopy;
  if (namespaces)
  {
    [coderCopy encodeObject:namespaces forKey:@"namespaces"];
    v11 = coderCopy;
  }

  [v11 encodeInt64:self->_experimentType forKey:@"experimentType"];
  counterfactualTreatmentIds = self->_counterfactualTreatmentIds;
  if (counterfactualTreatmentIds)
  {
    [coderCopy encodeObject:counterfactualTreatmentIds forKey:@"counterfactualTreatmentIds"];
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_deploymentEnvironment];
  v13 = *&self->_experimentDeployment;
  factorPackSetId = self->_factorPackSetId;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_type];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_status];
  v12 = *&self->_startDate;
  namespaces = self->_namespaces;
  v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_experimentType];
  v10 = [v3 initWithFormat:@"<TRIPartialExperimentRecord | deploymentEnvironment:%@ experimentDeployment:%@ treatmentId:%@ factorPackSetId:%@ type:%@ status:%@ startDate:%@ endDate:%@ namespaces:%@ experimentType:%@ counterfactualTreatmentIds:%@>", v4, v13, factorPackSetId, v6, v7, v12, namespaces, v9, self->_counterfactualTreatmentIds];

  return v10;
}

@end