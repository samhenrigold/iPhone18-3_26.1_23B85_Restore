@interface LBFTrialIdentifiers
- (LBFTrialIdentifiers)initWithBMLTTaskID:(id)d deploymentID:(int)iD;
- (LBFTrialIdentifiers)initWithExperimentID:(id)d deploymentID:(int)iD treatmentID:(id)treatmentID;
@end

@implementation LBFTrialIdentifiers

- (LBFTrialIdentifiers)initWithExperimentID:(id)d deploymentID:(int)iD treatmentID:(id)treatmentID
{
  v6 = *&iD;
  dCopy = d;
  treatmentIDCopy = treatmentID;
  v18.receiver = self;
  v18.super_class = LBFTrialIdentifiers;
  v11 = [(LBFTrialIdentifiers *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_experimentID, d);
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, v14, @"%d", v6);
    deploymentID = v12->_deploymentID;
    v12->_deploymentID = v15;

    objc_storeStrong(&v12->_treatmentID, treatmentID);
    v12->_identifierType = 1;
  }

  return v12;
}

- (LBFTrialIdentifiers)initWithBMLTTaskID:(id)d deploymentID:(int)iD
{
  v4 = *&iD;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = LBFTrialIdentifiers;
  v8 = [(LBFTrialIdentifiers *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_trialTaskID, d);
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, v11, @"%d", v4);
    deploymentID = v9->_deploymentID;
    v9->_deploymentID = v12;

    v9->_identifierType = 2;
  }

  return v9;
}

@end