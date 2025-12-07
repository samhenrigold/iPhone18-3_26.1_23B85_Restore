@interface LIGHTHOUSE_BITACORA_PROTOExperimentIdentifiers
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation LIGHTHOUSE_BITACORA_PROTOExperimentIdentifiers

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = LIGHTHOUSE_BITACORA_PROTOExperimentIdentifiers;
  v4 = [(LIGHTHOUSE_BITACORA_PROTOExperimentIdentifiers *)&v13 description];
  v8 = objc_msgSend_dictionaryRepresentation(self, v5, v7, v6);
  v11 = objc_msgSend_stringWithFormat_(v3, v9, v10, @"%@ %@", v4, v8);

  return v11;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v3, v2);
  v8 = v5;
  trialExperimentID = self->_trialExperimentID;
  if (trialExperimentID)
  {
    objc_msgSend_setObject_forKey_(v5, v6, v7, trialExperimentID, @"trialExperimentID");
  }

  trialDeploymentID = self->_trialDeploymentID;
  if (trialDeploymentID)
  {
    objc_msgSend_setObject_forKey_(v8, v6, v7, trialDeploymentID, @"trialDeploymentID");
  }

  trialTreatmentID = self->_trialTreatmentID;
  if (trialTreatmentID)
  {
    objc_msgSend_setObject_forKey_(v8, v6, v7, trialTreatmentID, @"trialTreatmentID");
  }

  return v8;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_trialExperimentID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_trialDeploymentID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_trialTreatmentID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  trialExperimentID = self->_trialExperimentID;
  v10 = toCopy;
  if (trialExperimentID)
  {
    objc_msgSend_setTrialExperimentID_(toCopy, v5, v6, trialExperimentID);
    toCopy = v10;
  }

  trialDeploymentID = self->_trialDeploymentID;
  if (trialDeploymentID)
  {
    objc_msgSend_setTrialDeploymentID_(v10, v5, v6, trialDeploymentID);
    toCopy = v10;
  }

  trialTreatmentID = self->_trialTreatmentID;
  if (trialTreatmentID)
  {
    objc_msgSend_setTrialTreatmentID_(v10, v5, v6, trialTreatmentID);
    toCopy = v10;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, v7, zone);
  v12 = objc_msgSend_init(v8, v9, v11, v10);
  v15 = objc_msgSend_copyWithZone_(self->_trialExperimentID, v13, v14, zone);
  v16 = v12[2];
  v12[2] = v15;

  v19 = objc_msgSend_copyWithZone_(self->_trialDeploymentID, v17, v18, zone);
  v20 = v12[1];
  v12[1] = v19;

  v23 = objc_msgSend_copyWithZone_(self->_trialTreatmentID, v21, v22, zone);
  v24 = v12[3];
  v12[3] = v23;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v7, v5) && ((trialExperimentID = self->_trialExperimentID, v11 = equalCopy[2], !(trialExperimentID | v11)) || objc_msgSend_isEqual_(trialExperimentID, v8, v9, v11)) && ((trialDeploymentID = self->_trialDeploymentID, v13 = equalCopy[1], !(trialDeploymentID | v13)) || objc_msgSend_isEqual_(trialDeploymentID, v8, v9, v13)))
  {
    trialTreatmentID = self->_trialTreatmentID;
    v15 = equalCopy[3];
    if (trialTreatmentID | v15)
    {
      isEqual = objc_msgSend_isEqual_(trialTreatmentID, v8, v9, v15);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v5 = objc_msgSend_hash(self->_trialExperimentID, a2, v3, v2);
  v9 = objc_msgSend_hash(self->_trialDeploymentID, v6, v8, v7) ^ v5;
  return v9 ^ objc_msgSend_hash(self->_trialTreatmentID, v10, v12, v11);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy[2];
  v10 = fromCopy;
  if (v7)
  {
    objc_msgSend_setTrialExperimentID_(self, v5, v6, v7);
    fromCopy = v10;
  }

  v8 = fromCopy[1];
  if (v8)
  {
    objc_msgSend_setTrialDeploymentID_(self, v5, v6, v8);
    fromCopy = v10;
  }

  v9 = fromCopy[3];
  if (v9)
  {
    objc_msgSend_setTrialTreatmentID_(self, v5, v6, v9);
    fromCopy = v10;
  }
}

@end