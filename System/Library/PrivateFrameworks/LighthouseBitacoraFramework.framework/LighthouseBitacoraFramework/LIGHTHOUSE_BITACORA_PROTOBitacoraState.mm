@interface LIGHTHOUSE_BITACORA_PROTOBitacoraState
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)trialIdentifierTypeAsString:(int)string;
- (int)StringAsTrialIdentifierType:(id)type;
- (int)trialIdentifierType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCountCustomTargettingMet:(BOOL)met;
- (void)setHasCountGeneralTargetting:(BOOL)targetting;
- (void)setHasCountGeneralTargettingMet:(BOOL)met;
- (void)setHasCountPerformTaskFailed:(BOOL)failed;
- (void)setHasCountPerformTaskSucceeded:(BOOL)succeeded;
- (void)setHasCountStopFailed:(BOOL)failed;
- (void)setHasCountStopSucceeded:(BOOL)succeeded;
- (void)setHasCountTaskCompletedFailed:(BOOL)failed;
- (void)setHasCountTaskCompletedSucceeded:(BOOL)succeeded;
- (void)setHasCountTaskFetchedFailed:(BOOL)failed;
- (void)setHasCountTaskFetchedSucceeded:(BOOL)succeeded;
- (void)setHasCountTaskScheduledFailed:(BOOL)failed;
- (void)setHasCountTaskScheduledSucceeded:(BOOL)succeeded;
- (void)setHasIsActivated:(BOOL)activated;
- (void)setHasIsAllocated:(BOOL)allocated;
- (void)setHasTrialIdentifierType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation LIGHTHOUSE_BITACORA_PROTOBitacoraState

- (void)setHasIsAllocated:(BOOL)allocated
{
  if (allocated)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasIsActivated:(BOOL)activated
{
  if (activated)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasCountGeneralTargetting:(BOOL)targetting
{
  if (targetting)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasCountGeneralTargettingMet:(BOOL)met
{
  if (met)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasCountCustomTargettingMet:(BOOL)met
{
  if (met)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasCountTaskFetchedSucceeded:(BOOL)succeeded
{
  if (succeeded)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasCountTaskFetchedFailed:(BOOL)failed
{
  if (failed)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasCountTaskScheduledSucceeded:(BOOL)succeeded
{
  if (succeeded)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasCountTaskScheduledFailed:(BOOL)failed
{
  if (failed)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasCountTaskCompletedSucceeded:(BOOL)succeeded
{
  if (succeeded)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasCountTaskCompletedFailed:(BOOL)failed
{
  if (failed)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasCountPerformTaskSucceeded:(BOOL)succeeded
{
  if (succeeded)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasCountPerformTaskFailed:(BOOL)failed
{
  if (failed)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasCountStopSucceeded:(BOOL)succeeded
{
  if (succeeded)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasCountStopFailed:(BOOL)failed
{
  if (failed)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (int)trialIdentifierType
{
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    return self->_trialIdentifierType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTrialIdentifierType:(BOOL)type
{
  if (type)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (id)trialIdentifierTypeAsString:(int)string
{
  if (string >= 3)
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, v4, @"(unknown: %i)", string);
  }

  else
  {
    v5 = off_279813C80[string];
  }

  return v5;
}

- (int)StringAsTrialIdentifierType:(id)type
{
  typeCopy = type;
  if (objc_msgSend_isEqualToString_(typeCopy, v4, v5, @"Unknown"))
  {
    v8 = 0;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v6, v7, @"experiment"))
  {
    v8 = 1;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v9, v10, @"BMLT"))
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = LIGHTHOUSE_BITACORA_PROTOBitacoraState;
  v4 = [(LIGHTHOUSE_BITACORA_PROTOBitacoraState *)&v13 description];
  v8 = objc_msgSend_dictionaryRepresentation(self, v5, v7, v6);
  v11 = objc_msgSend_stringWithFormat_(v3, v9, v10, @"%@ %@", v4, v8);

  return v11;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v3, v2);
  v8 = v5;
  telemetryID = self->_telemetryID;
  if (telemetryID)
  {
    objc_msgSend_setObject_forKey_(v5, v6, v7, telemetryID, @"telemetryID");
  }

  trialIdentifiers = self->_trialIdentifiers;
  if (trialIdentifiers)
  {
    v11 = objc_msgSend_dictionaryRepresentation(trialIdentifiers, v6, v7, telemetryID);
    objc_msgSend_setObject_forKey_(v8, v12, v13, v11, @"trialIdentifiers");
  }

  contextID = self->_contextID;
  if (contextID)
  {
    objc_msgSend_setObject_forKey_(v8, v6, v7, contextID, @"contextID");
  }

  v15 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v6, v7, self->_timestamp);
  objc_msgSend_setObject_forKey_(v8, v16, v17, v15, @"timestamp");

  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    v21 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v18, v19, self->_isAllocated);
    objc_msgSend_setObject_forKey_(v8, v22, v23, v21, @"isAllocated");

    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_9:
      if ((*&has & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_27;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_9;
  }

  v24 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v18, v19, self->_isActivated);
  objc_msgSend_setObject_forKey_(v8, v25, v26, v24, @"isActivated");

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_10:
    if ((*&has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v27 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, v19, self->_countGeneralTargetting);
  objc_msgSend_setObject_forKey_(v8, v28, v29, v27, @"countGeneralTargetting");

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_11:
    if ((*&has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v30 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, v19, self->_countGeneralTargettingMet);
  objc_msgSend_setObject_forKey_(v8, v31, v32, v30, @"countGeneralTargettingMet");

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_12:
    if ((*&has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v33 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, v19, self->_countCustomTargetting);
  objc_msgSend_setObject_forKey_(v8, v34, v35, v33, @"countCustomTargetting");

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_13:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v36 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, v19, self->_countCustomTargettingMet);
  objc_msgSend_setObject_forKey_(v8, v37, v38, v36, @"countCustomTargettingMet");

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_14:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  v39 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, v19, self->_countTaskFetchedSucceeded);
  objc_msgSend_setObject_forKey_(v8, v40, v41, v39, @"countTaskFetchedSucceeded");

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_15:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  v42 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, v19, self->_countTaskFetchedFailed);
  objc_msgSend_setObject_forKey_(v8, v43, v44, v42, @"countTaskFetchedFailed");

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_16:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  v45 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, v19, self->_countTaskScheduledSucceeded);
  objc_msgSend_setObject_forKey_(v8, v46, v47, v45, @"countTaskScheduledSucceeded");

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_17:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  v48 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, v19, self->_countTaskScheduledFailed);
  objc_msgSend_setObject_forKey_(v8, v49, v50, v48, @"countTaskScheduledFailed");

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_18:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  v51 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, v19, self->_countTaskCompletedSucceeded);
  objc_msgSend_setObject_forKey_(v8, v52, v53, v51, @"countTaskCompletedSucceeded");

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_19:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_36:
  v54 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, v19, self->_countTaskCompletedFailed);
  objc_msgSend_setObject_forKey_(v8, v55, v56, v54, @"countTaskCompletedFailed");

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_20:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

LABEL_37:
  v57 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, v19, self->_countPerformTaskSucceeded);
  objc_msgSend_setObject_forKey_(v8, v58, v59, v57, @"countPerformTaskSucceeded");

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_21:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

LABEL_38:
  v60 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, v19, self->_countPerformTaskFailed);
  objc_msgSend_setObject_forKey_(v8, v61, v62, v60, @"countPerformTaskFailed");

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_22:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_39:
  v63 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, v19, self->_countStopSucceeded);
  objc_msgSend_setObject_forKey_(v8, v64, v65, v63, @"countStopSucceeded");

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_23:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

LABEL_40:
  v66 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v18, v19, self->_countStopFailed);
  objc_msgSend_setObject_forKey_(v8, v67, v68, v66, @"countStopFailed");

  if ((*&self->_has & 0x4000) == 0)
  {
    goto LABEL_45;
  }

LABEL_41:
  trialIdentifierType = self->_trialIdentifierType;
  if (trialIdentifierType >= 3)
  {
    v70 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, v19, @"(unknown: %i)", self->_trialIdentifierType);
  }

  else
  {
    v70 = off_279813C80[trialIdentifierType];
  }

  objc_msgSend_setObject_forKey_(v8, v18, v19, v70, @"trialIdentifierType");

LABEL_45:
  trialExperimentID = self->_trialExperimentID;
  if (trialExperimentID)
  {
    objc_msgSend_setObject_forKey_(v8, v18, v19, trialExperimentID, @"trialExperimentID");
  }

  trialDeploymentID = self->_trialDeploymentID;
  if (trialDeploymentID)
  {
    objc_msgSend_setObject_forKey_(v8, v18, v19, trialDeploymentID, @"trialDeploymentID");
  }

  trialTreatmentID = self->_trialTreatmentID;
  if (trialTreatmentID)
  {
    objc_msgSend_setObject_forKey_(v8, v18, v19, trialTreatmentID, @"trialTreatmentID");
  }

  trialTaskID = self->_trialTaskID;
  if (trialTaskID)
  {
    objc_msgSend_setObject_forKey_(v8, v18, v19, trialTaskID, @"trialTaskID");
  }

  return v8;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_telemetryID)
  {
    sub_255F0BF24();
  }

  v7 = toCopy;
  PBDataWriterWriteStringField();
  if (!self->_trialIdentifiers)
  {
    sub_255F0BEF8();
  }

  PBDataWriterWriteSubmessage();
  if (!self->_contextID)
  {
    sub_255F0BECC();
  }

  PBDataWriterWriteStringField();
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((*&has & 0x8000) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  v6 = v7;
  if ((*&has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
    v6 = v7;
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_10:
      if ((*&has & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_37;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_10;
  }

  PBDataWriterWriteUint32Field();
  v6 = v7;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_11:
    if ((*&has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  PBDataWriterWriteUint32Field();
  v6 = v7;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_12:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  PBDataWriterWriteUint32Field();
  v6 = v7;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  PBDataWriterWriteUint32Field();
  v6 = v7;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  PBDataWriterWriteUint32Field();
  v6 = v7;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_15:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  PBDataWriterWriteUint32Field();
  v6 = v7;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  PBDataWriterWriteUint32Field();
  v6 = v7;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_17:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  PBDataWriterWriteUint32Field();
  v6 = v7;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_18:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  PBDataWriterWriteUint32Field();
  v6 = v7;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_19:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  PBDataWriterWriteUint32Field();
  v6 = v7;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_20:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  PBDataWriterWriteUint32Field();
  v6 = v7;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_21:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  PBDataWriterWriteUint32Field();
  v6 = v7;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_22:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_48:
  PBDataWriterWriteUint32Field();
  v6 = v7;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_23:
    PBDataWriterWriteInt32Field();
    v6 = v7;
  }

LABEL_24:
  if (self->_trialExperimentID)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }

  if (self->_trialDeploymentID)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }

  if (self->_trialTreatmentID)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }

  if (self->_trialTaskID)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  objc_msgSend_setTelemetryID_(toCopy, v4, v5, self->_telemetryID);
  objc_msgSend_setTrialIdentifiers_(toCopy, v6, v7, self->_trialIdentifiers);
  objc_msgSend_setContextID_(toCopy, v8, v9, self->_contextID);
  v12 = toCopy;
  *(toCopy + 1) = self->_timestamp;
  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    *(toCopy + 137) = self->_isAllocated;
    *(toCopy + 35) |= 0x10000u;
    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 136) = self->_isActivated;
  *(toCopy + 35) |= 0x8000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_4:
    if ((*&has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(toCopy + 8) = self->_countGeneralTargetting;
  *(toCopy + 35) |= 4u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_5:
    if ((*&has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(toCopy + 9) = self->_countGeneralTargettingMet;
  *(toCopy + 35) |= 8u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_6:
    if ((*&has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(toCopy + 6) = self->_countCustomTargetting;
  *(toCopy + 35) |= 1u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_7:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(toCopy + 7) = self->_countCustomTargettingMet;
  *(toCopy + 35) |= 2u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_8:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(toCopy + 17) = self->_countTaskFetchedSucceeded;
  *(toCopy + 35) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(toCopy + 16) = self->_countTaskFetchedFailed;
  *(toCopy + 35) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(toCopy + 19) = self->_countTaskScheduledSucceeded;
  *(toCopy + 35) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_11:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(toCopy + 18) = self->_countTaskScheduledFailed;
  *(toCopy + 35) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_12:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(toCopy + 15) = self->_countTaskCompletedSucceeded;
  *(toCopy + 35) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_13:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(toCopy + 14) = self->_countTaskCompletedFailed;
  *(toCopy + 35) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_14:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(toCopy + 11) = self->_countPerformTaskSucceeded;
  *(toCopy + 35) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_15:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(toCopy + 10) = self->_countPerformTaskFailed;
  *(toCopy + 35) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(toCopy + 13) = self->_countStopSucceeded;
  *(toCopy + 35) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_17:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_45:
  *(toCopy + 12) = self->_countStopFailed;
  *(toCopy + 35) |= 0x40u;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_18:
    *(toCopy + 26) = self->_trialIdentifierType;
    *(toCopy + 35) |= 0x4000u;
  }

LABEL_19:
  trialExperimentID = self->_trialExperimentID;
  if (trialExperimentID)
  {
    objc_msgSend_setTrialExperimentID_(toCopy, v10, v11, trialExperimentID);
    v12 = toCopy;
  }

  trialDeploymentID = self->_trialDeploymentID;
  if (trialDeploymentID)
  {
    objc_msgSend_setTrialDeploymentID_(toCopy, v10, v11, trialDeploymentID);
    v12 = toCopy;
  }

  trialTreatmentID = self->_trialTreatmentID;
  if (trialTreatmentID)
  {
    objc_msgSend_setTrialTreatmentID_(toCopy, v10, v11, trialTreatmentID);
    v12 = toCopy;
  }

  trialTaskID = self->_trialTaskID;
  if (trialTaskID)
  {
    objc_msgSend_setTrialTaskID_(toCopy, v10, v11, trialTaskID);
    v12 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, v7, zone);
  v12 = objc_msgSend_init(v8, v9, v11, v10);
  v15 = objc_msgSend_copyWithZone_(self->_telemetryID, v13, v14, zone);
  v16 = *(v12 + 80);
  *(v12 + 80) = v15;

  v19 = objc_msgSend_copyWithZone_(self->_trialIdentifiers, v17, v18, zone);
  v20 = *(v12 + 112);
  *(v12 + 112) = v19;

  v23 = objc_msgSend_copyWithZone_(self->_contextID, v21, v22, zone);
  v24 = *(v12 + 16);
  *(v12 + 16) = v23;

  *(v12 + 8) = self->_timestamp;
  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    *(v12 + 137) = self->_isAllocated;
    *(v12 + 140) |= 0x10000u;
    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  *(v12 + 136) = self->_isActivated;
  *(v12 + 140) |= 0x8000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_4:
    if ((*&has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v12 + 32) = self->_countGeneralTargetting;
  *(v12 + 140) |= 4u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_5:
    if ((*&has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v12 + 36) = self->_countGeneralTargettingMet;
  *(v12 + 140) |= 8u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_6:
    if ((*&has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v12 + 24) = self->_countCustomTargetting;
  *(v12 + 140) |= 1u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_7:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v12 + 28) = self->_countCustomTargettingMet;
  *(v12 + 140) |= 2u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_8:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v12 + 68) = self->_countTaskFetchedSucceeded;
  *(v12 + 140) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v12 + 64) = self->_countTaskFetchedFailed;
  *(v12 + 140) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v12 + 76) = self->_countTaskScheduledSucceeded;
  *(v12 + 140) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_11:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v12 + 72) = self->_countTaskScheduledFailed;
  *(v12 + 140) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_12:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v12 + 60) = self->_countTaskCompletedSucceeded;
  *(v12 + 140) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_13:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v12 + 56) = self->_countTaskCompletedFailed;
  *(v12 + 140) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_14:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v12 + 44) = self->_countPerformTaskSucceeded;
  *(v12 + 140) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_15:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v12 + 40) = self->_countPerformTaskFailed;
  *(v12 + 140) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

LABEL_35:
    *(v12 + 48) = self->_countStopFailed;
    *(v12 + 140) |= 0x40u;
    if ((*&self->_has & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_34:
  *(v12 + 52) = self->_countStopSucceeded;
  *(v12 + 140) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    goto LABEL_35;
  }

LABEL_17:
  if ((*&has & 0x4000) != 0)
  {
LABEL_18:
    *(v12 + 104) = self->_trialIdentifierType;
    *(v12 + 140) |= 0x4000u;
  }

LABEL_19:
  v28 = objc_msgSend_copyWithZone_(self->_trialExperimentID, v25, v26, zone);
  v29 = *(v12 + 96);
  *(v12 + 96) = v28;

  v32 = objc_msgSend_copyWithZone_(self->_trialDeploymentID, v30, v31, zone);
  v33 = *(v12 + 88);
  *(v12 + 88) = v32;

  v36 = objc_msgSend_copyWithZone_(self->_trialTreatmentID, v34, v35, zone);
  v37 = *(v12 + 128);
  *(v12 + 128) = v36;

  v40 = objc_msgSend_copyWithZone_(self->_trialTaskID, v38, v39, zone);
  v41 = *(v12 + 120);
  *(v12 + 120) = v40;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v7, v5))
  {
    goto LABEL_108;
  }

  telemetryID = self->_telemetryID;
  v11 = equalCopy[10];
  if (telemetryID | v11)
  {
    if (!objc_msgSend_isEqual_(telemetryID, v8, v9, v11))
    {
      goto LABEL_108;
    }
  }

  trialIdentifiers = self->_trialIdentifiers;
  v13 = equalCopy[14];
  if (trialIdentifiers | v13)
  {
    if (!objc_msgSend_isEqual_(trialIdentifiers, v8, v9, v13))
    {
      goto LABEL_108;
    }
  }

  contextID = self->_contextID;
  v15 = equalCopy[2];
  if (contextID | v15)
  {
    if (!objc_msgSend_isEqual_(contextID, v8, v9, v15))
    {
      goto LABEL_108;
    }
  }

  if (self->_timestamp != equalCopy[1])
  {
    goto LABEL_108;
  }

  has = self->_has;
  v17 = *(equalCopy + 35);
  if ((*&has & 0x10000) != 0)
  {
    if ((v17 & 0x10000) == 0)
    {
      goto LABEL_108;
    }

    if (self->_isAllocated)
    {
      if ((*(equalCopy + 137) & 1) == 0)
      {
        goto LABEL_108;
      }
    }

    else if (*(equalCopy + 137))
    {
      goto LABEL_108;
    }
  }

  else if ((v17 & 0x10000) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x8000) == 0)
  {
    if ((v17 & 0x8000) == 0)
    {
      goto LABEL_13;
    }

LABEL_108:
    isEqual = 0;
    goto LABEL_109;
  }

  if ((v17 & 0x8000) == 0)
  {
    goto LABEL_108;
  }

  if (self->_isActivated)
  {
    if ((equalCopy[17] & 1) == 0)
    {
      goto LABEL_108;
    }
  }

  else if (equalCopy[17])
  {
    goto LABEL_108;
  }

LABEL_13:
  if ((*&has & 4) != 0)
  {
    if ((v17 & 4) == 0 || self->_countGeneralTargetting != *(equalCopy + 8))
    {
      goto LABEL_108;
    }
  }

  else if ((v17 & 4) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 8) != 0)
  {
    if ((v17 & 8) == 0 || self->_countGeneralTargettingMet != *(equalCopy + 9))
    {
      goto LABEL_108;
    }
  }

  else if ((v17 & 8) != 0)
  {
    goto LABEL_108;
  }

  if (*&has)
  {
    if ((v17 & 1) == 0 || self->_countCustomTargetting != *(equalCopy + 6))
    {
      goto LABEL_108;
    }
  }

  else if (v17)
  {
    goto LABEL_108;
  }

  if ((*&has & 2) != 0)
  {
    if ((v17 & 2) == 0 || self->_countCustomTargettingMet != *(equalCopy + 7))
    {
      goto LABEL_108;
    }
  }

  else if ((v17 & 2) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v17 & 0x800) == 0 || self->_countTaskFetchedSucceeded != *(equalCopy + 17))
    {
      goto LABEL_108;
    }
  }

  else if ((v17 & 0x800) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v17 & 0x400) == 0 || self->_countTaskFetchedFailed != *(equalCopy + 16))
    {
      goto LABEL_108;
    }
  }

  else if ((v17 & 0x400) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v17 & 0x2000) == 0 || self->_countTaskScheduledSucceeded != *(equalCopy + 19))
    {
      goto LABEL_108;
    }
  }

  else if ((v17 & 0x2000) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v17 & 0x1000) == 0 || self->_countTaskScheduledFailed != *(equalCopy + 18))
    {
      goto LABEL_108;
    }
  }

  else if ((v17 & 0x1000) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v17 & 0x200) == 0 || self->_countTaskCompletedSucceeded != *(equalCopy + 15))
    {
      goto LABEL_108;
    }
  }

  else if ((v17 & 0x200) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v17 & 0x100) == 0 || self->_countTaskCompletedFailed != *(equalCopy + 14))
    {
      goto LABEL_108;
    }
  }

  else if ((v17 & 0x100) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v17 & 0x20) == 0 || self->_countPerformTaskSucceeded != *(equalCopy + 11))
    {
      goto LABEL_108;
    }
  }

  else if ((v17 & 0x20) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v17 & 0x10) == 0 || self->_countPerformTaskFailed != *(equalCopy + 10))
    {
      goto LABEL_108;
    }
  }

  else if ((v17 & 0x10) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v17 & 0x80) == 0 || self->_countStopSucceeded != *(equalCopy + 13))
    {
      goto LABEL_108;
    }
  }

  else if ((v17 & 0x80) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v17 & 0x40) == 0 || self->_countStopFailed != *(equalCopy + 12))
    {
      goto LABEL_108;
    }
  }

  else if ((v17 & 0x40) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v17 & 0x4000) == 0 || self->_trialIdentifierType != *(equalCopy + 26))
    {
      goto LABEL_108;
    }
  }

  else if ((v17 & 0x4000) != 0)
  {
    goto LABEL_108;
  }

  trialExperimentID = self->_trialExperimentID;
  v19 = equalCopy[12];
  if (trialExperimentID | v19 && !objc_msgSend_isEqual_(trialExperimentID, v8, v9, v19))
  {
    goto LABEL_108;
  }

  trialDeploymentID = self->_trialDeploymentID;
  v21 = equalCopy[11];
  if (trialDeploymentID | v21)
  {
    if (!objc_msgSend_isEqual_(trialDeploymentID, v8, v9, v21))
    {
      goto LABEL_108;
    }
  }

  trialTreatmentID = self->_trialTreatmentID;
  v23 = equalCopy[16];
  if (trialTreatmentID | v23)
  {
    if (!objc_msgSend_isEqual_(trialTreatmentID, v8, v9, v23))
    {
      goto LABEL_108;
    }
  }

  trialTaskID = self->_trialTaskID;
  v25 = equalCopy[15];
  if (trialTaskID | v25)
  {
    isEqual = objc_msgSend_isEqual_(trialTaskID, v8, v9, v25);
  }

  else
  {
    isEqual = 1;
  }

LABEL_109:

  return isEqual;
}

- (unint64_t)hash
{
  v5 = objc_msgSend_hash(self->_telemetryID, a2, v3, v2);
  v9 = objc_msgSend_hash(self->_trialIdentifiers, v6, v8, v7);
  v13 = objc_msgSend_hash(self->_contextID, v10, v12, v11);
  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    v16 = 2654435761 * self->_isAllocated;
    if ((*&has & 0x8000) != 0)
    {
LABEL_3:
      v17 = 2654435761 * self->_isActivated;
      if ((*&has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v16 = 0;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_4:
    v18 = 2654435761 * self->_countGeneralTargetting;
    if ((*&has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v18 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_5:
    v19 = 2654435761 * self->_countGeneralTargettingMet;
    if (*&has)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v19 = 0;
  if (*&has)
  {
LABEL_6:
    v20 = 2654435761 * self->_countCustomTargetting;
    if ((*&has & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v20 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_7:
    v21 = 2654435761 * self->_countCustomTargettingMet;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v21 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_8:
    v22 = 2654435761 * self->_countTaskFetchedSucceeded;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v22 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_9:
    v23 = 2654435761 * self->_countTaskFetchedFailed;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v23 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_10:
    v24 = 2654435761 * self->_countTaskScheduledSucceeded;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v24 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_11:
    v25 = 2654435761 * self->_countTaskScheduledFailed;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v25 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_12:
    v26 = 2654435761 * self->_countTaskCompletedSucceeded;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v26 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_13:
    v27 = 2654435761 * self->_countTaskCompletedFailed;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v28 = 0;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_27:
  v27 = 0;
  if ((*&has & 0x20) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v28 = 2654435761 * self->_countPerformTaskSucceeded;
  if ((*&has & 0x10) != 0)
  {
LABEL_15:
    v29 = 2654435761 * self->_countPerformTaskFailed;
    goto LABEL_30;
  }

LABEL_29:
  v29 = 0;
LABEL_30:
  if ((*&has & 0x80) != 0)
  {
    v30 = 2654435761 * self->_countStopSucceeded;
  }

  else
  {
    v30 = 0;
  }

  if ((*&has & 0x40) != 0)
  {
    v31 = 2654435761 * self->_countStopFailed;
  }

  else
  {
    v31 = 0;
  }

  if ((*&has & 0x4000) != 0)
  {
    v32 = 2654435761 * self->_trialIdentifierType;
  }

  else
  {
    v32 = 0;
  }

  v33 = v9 ^ v5 ^ v13 ^ v16 ^ v17 ^ (2654435761u * self->_timestamp);
  v34 = v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ objc_msgSend_hash(self->_trialExperimentID, v25, v14, v26);
  v38 = v33 ^ v34 ^ objc_msgSend_hash(self->_trialDeploymentID, v35, v37, v36);
  v42 = objc_msgSend_hash(self->_trialTreatmentID, v39, v41, v40);
  return v38 ^ v42 ^ objc_msgSend_hash(self->_trialTaskID, v43, v45, v44);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = *(fromCopy + 10);
  v15 = fromCopy;
  if (v6)
  {
    objc_msgSend_setTelemetryID_(self, fromCopy, v5, v6);
    fromCopy = v15;
  }

  trialIdentifiers = self->_trialIdentifiers;
  v8 = *(fromCopy + 14);
  if (trialIdentifiers)
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    objc_msgSend_mergeFrom_(trialIdentifiers, fromCopy, v5, v8);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    objc_msgSend_setTrialIdentifiers_(self, fromCopy, v5, v8);
  }

  fromCopy = v15;
LABEL_9:
  v9 = *(fromCopy + 2);
  if (v9)
  {
    objc_msgSend_setContextID_(self, fromCopy, v5, v9);
    fromCopy = v15;
  }

  self->_timestamp = *(fromCopy + 1);
  v10 = *(fromCopy + 35);
  if ((v10 & 0x10000) != 0)
  {
    self->_isAllocated = *(fromCopy + 137);
    *&self->_has |= 0x10000u;
    v10 = *(fromCopy + 35);
    if ((v10 & 0x8000) == 0)
    {
LABEL_13:
      if ((v10 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_42;
    }
  }

  else if ((v10 & 0x8000) == 0)
  {
    goto LABEL_13;
  }

  self->_isActivated = *(fromCopy + 136);
  *&self->_has |= 0x8000u;
  v10 = *(fromCopy + 35);
  if ((v10 & 4) == 0)
  {
LABEL_14:
    if ((v10 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_countGeneralTargetting = *(fromCopy + 8);
  *&self->_has |= 4u;
  v10 = *(fromCopy + 35);
  if ((v10 & 8) == 0)
  {
LABEL_15:
    if ((v10 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_countGeneralTargettingMet = *(fromCopy + 9);
  *&self->_has |= 8u;
  v10 = *(fromCopy + 35);
  if ((v10 & 1) == 0)
  {
LABEL_16:
    if ((v10 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_countCustomTargetting = *(fromCopy + 6);
  *&self->_has |= 1u;
  v10 = *(fromCopy + 35);
  if ((v10 & 2) == 0)
  {
LABEL_17:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_countCustomTargettingMet = *(fromCopy + 7);
  *&self->_has |= 2u;
  v10 = *(fromCopy + 35);
  if ((v10 & 0x800) == 0)
  {
LABEL_18:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_countTaskFetchedSucceeded = *(fromCopy + 17);
  *&self->_has |= 0x800u;
  v10 = *(fromCopy + 35);
  if ((v10 & 0x400) == 0)
  {
LABEL_19:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_countTaskFetchedFailed = *(fromCopy + 16);
  *&self->_has |= 0x400u;
  v10 = *(fromCopy + 35);
  if ((v10 & 0x2000) == 0)
  {
LABEL_20:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_countTaskScheduledSucceeded = *(fromCopy + 19);
  *&self->_has |= 0x2000u;
  v10 = *(fromCopy + 35);
  if ((v10 & 0x1000) == 0)
  {
LABEL_21:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_countTaskScheduledFailed = *(fromCopy + 18);
  *&self->_has |= 0x1000u;
  v10 = *(fromCopy + 35);
  if ((v10 & 0x200) == 0)
  {
LABEL_22:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_countTaskCompletedSucceeded = *(fromCopy + 15);
  *&self->_has |= 0x200u;
  v10 = *(fromCopy + 35);
  if ((v10 & 0x100) == 0)
  {
LABEL_23:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_countTaskCompletedFailed = *(fromCopy + 14);
  *&self->_has |= 0x100u;
  v10 = *(fromCopy + 35);
  if ((v10 & 0x20) == 0)
  {
LABEL_24:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_countPerformTaskSucceeded = *(fromCopy + 11);
  *&self->_has |= 0x20u;
  v10 = *(fromCopy + 35);
  if ((v10 & 0x10) == 0)
  {
LABEL_25:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_countPerformTaskFailed = *(fromCopy + 10);
  *&self->_has |= 0x10u;
  v10 = *(fromCopy + 35);
  if ((v10 & 0x80) == 0)
  {
LABEL_26:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_countStopSucceeded = *(fromCopy + 13);
  *&self->_has |= 0x80u;
  v10 = *(fromCopy + 35);
  if ((v10 & 0x40) == 0)
  {
LABEL_27:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_55:
  self->_countStopFailed = *(fromCopy + 12);
  *&self->_has |= 0x40u;
  if ((*(fromCopy + 35) & 0x4000) != 0)
  {
LABEL_28:
    self->_trialIdentifierType = *(fromCopy + 26);
    *&self->_has |= 0x4000u;
  }

LABEL_29:
  v11 = *(fromCopy + 12);
  if (v11)
  {
    objc_msgSend_setTrialExperimentID_(self, fromCopy, v5, v11);
    fromCopy = v15;
  }

  v12 = *(fromCopy + 11);
  if (v12)
  {
    objc_msgSend_setTrialDeploymentID_(self, fromCopy, v5, v12);
    fromCopy = v15;
  }

  v13 = *(fromCopy + 16);
  if (v13)
  {
    objc_msgSend_setTrialTreatmentID_(self, fromCopy, v5, v13);
    fromCopy = v15;
  }

  v14 = *(fromCopy + 15);
  if (v14)
  {
    objc_msgSend_setTrialTaskID_(self, fromCopy, v5, v14);
  }

  MEMORY[0x2821F96F8]();
}

@end