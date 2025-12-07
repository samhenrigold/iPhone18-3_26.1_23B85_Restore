@interface LIGHTHOUSE_BITACORA_PROTOBMLTIdentifiers
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation LIGHTHOUSE_BITACORA_PROTOBMLTIdentifiers

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = LIGHTHOUSE_BITACORA_PROTOBMLTIdentifiers;
  v4 = [(LIGHTHOUSE_BITACORA_PROTOBMLTIdentifiers *)&v13 description];
  v8 = objc_msgSend_dictionaryRepresentation(self, v5, v7, v6);
  v11 = objc_msgSend_stringWithFormat_(v3, v9, v10, @"%@ %@", v4, v8);

  return v11;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v3, v2);
  v8 = v5;
  trialTaskID = self->_trialTaskID;
  if (trialTaskID)
  {
    objc_msgSend_setObject_forKey_(v5, v6, v7, trialTaskID, @"trialTaskID");
  }

  trialDeploymentID = self->_trialDeploymentID;
  if (trialDeploymentID)
  {
    objc_msgSend_setObject_forKey_(v8, v6, v7, trialDeploymentID, @"trialDeploymentID");
  }

  return v8;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_trialTaskID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_trialDeploymentID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  trialTaskID = self->_trialTaskID;
  v9 = toCopy;
  if (trialTaskID)
  {
    objc_msgSend_setTrialTaskID_(toCopy, v5, v6, trialTaskID);
    toCopy = v9;
  }

  trialDeploymentID = self->_trialDeploymentID;
  if (trialDeploymentID)
  {
    objc_msgSend_setTrialDeploymentID_(v9, v5, v6, trialDeploymentID);
    toCopy = v9;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, v7, zone);
  v12 = objc_msgSend_init(v8, v9, v11, v10);
  v15 = objc_msgSend_copyWithZone_(self->_trialTaskID, v13, v14, zone);
  v16 = v12[2];
  v12[2] = v15;

  v19 = objc_msgSend_copyWithZone_(self->_trialDeploymentID, v17, v18, zone);
  v20 = v12[1];
  v12[1] = v19;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v7, v5) && ((trialTaskID = self->_trialTaskID, v11 = equalCopy[2], !(trialTaskID | v11)) || objc_msgSend_isEqual_(trialTaskID, v8, v9, v11)))
  {
    trialDeploymentID = self->_trialDeploymentID;
    v13 = equalCopy[1];
    if (trialDeploymentID | v13)
    {
      isEqual = objc_msgSend_isEqual_(trialDeploymentID, v8, v9, v13);
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy[2];
  v9 = fromCopy;
  if (v7)
  {
    objc_msgSend_setTrialTaskID_(self, v5, v6, v7);
    fromCopy = v9;
  }

  v8 = fromCopy[1];
  if (v8)
  {
    objc_msgSend_setTrialDeploymentID_(self, v5, v6, v8);
    fromCopy = v9;
  }
}

@end