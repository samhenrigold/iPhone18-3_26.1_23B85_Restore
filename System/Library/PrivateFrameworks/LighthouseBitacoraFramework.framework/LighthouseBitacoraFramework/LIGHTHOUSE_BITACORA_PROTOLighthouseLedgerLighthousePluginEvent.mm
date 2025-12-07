@interface LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerLighthousePluginEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerLighthousePluginEvent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerLighthousePluginEvent;
  v4 = [(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerLighthousePluginEvent *)&v13 description];
  v8 = objc_msgSend_dictionaryRepresentation(self, v5, v7, v6);
  v11 = objc_msgSend_stringWithFormat_(v3, v9, v10, @"%@ %@", v4, v8);

  return v11;
}

- (id)dictionaryRepresentation
{
  v7 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v3, v2);
  trialIdentifiers = self->_trialIdentifiers;
  if (trialIdentifiers)
  {
    v10 = objc_msgSend_dictionaryRepresentation(trialIdentifiers, v5, v8, v6);
    objc_msgSend_setObject_forKey_(v7, v11, v12, v10, @"trialIdentifiers");
  }

  contextID = self->_contextID;
  if (contextID)
  {
    objc_msgSend_setObject_forKey_(v7, v5, v8, contextID, @"contextID");
  }

  if (*&self->_has)
  {
    v8.n128_u64[0] = *&self->_timestamp;
    v14 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v5, v8, contextID);
    objc_msgSend_setObject_forKey_(v7, v15, v16, v14, @"timestamp");
  }

  performTaskStatus = self->_performTaskStatus;
  if (performTaskStatus)
  {
    v18 = objc_msgSend_dictionaryRepresentation(performTaskStatus, v5, v8, contextID);
    objc_msgSend_setObject_forKey_(v7, v19, v20, v18, @"performTaskStatus");
  }

  performTrialTaskStatus = self->_performTrialTaskStatus;
  if (performTrialTaskStatus)
  {
    v22 = objc_msgSend_dictionaryRepresentation(performTrialTaskStatus, v5, v8, contextID);
    objc_msgSend_setObject_forKey_(v7, v23, v24, v22, @"performTrialTaskStatus");
  }

  stop = self->_stop;
  if (stop)
  {
    v26 = objc_msgSend_dictionaryRepresentation(stop, v5, v8, contextID);
    objc_msgSend_setObject_forKey_(v7, v27, v28, v26, @"stop");
  }

  return v7;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_trialIdentifiers)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_contextID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }

  if (self->_performTaskStatus)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_performTrialTaskStatus)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_stop)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  trialIdentifiers = self->_trialIdentifiers;
  v12 = toCopy;
  if (trialIdentifiers)
  {
    objc_msgSend_setTrialIdentifiers_(toCopy, v5, v6, trialIdentifiers);
    toCopy = v12;
  }

  contextID = self->_contextID;
  if (contextID)
  {
    objc_msgSend_setContextID_(v12, v5, v6, contextID);
    toCopy = v12;
  }

  if (*&self->_has)
  {
    v6.n128_u64[0] = *&self->_timestamp;
    *(toCopy + 1) = v6.n128_u64[0];
    *(toCopy + 56) |= 1u;
  }

  performTaskStatus = self->_performTaskStatus;
  if (performTaskStatus)
  {
    objc_msgSend_setPerformTaskStatus_(v12, v5, v6, performTaskStatus);
    toCopy = v12;
  }

  performTrialTaskStatus = self->_performTrialTaskStatus;
  if (performTrialTaskStatus)
  {
    objc_msgSend_setPerformTrialTaskStatus_(v12, v5, v6, performTrialTaskStatus);
    toCopy = v12;
  }

  stop = self->_stop;
  if (stop)
  {
    objc_msgSend_setStop_(v12, v5, v6, stop);
    toCopy = v12;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, v7, zone);
  v12 = objc_msgSend_init(v8, v9, v11, v10);
  v15 = objc_msgSend_copyWithZone_(self->_trialIdentifiers, v13, v14, zone);
  v16 = *(v12 + 48);
  *(v12 + 48) = v15;

  v19 = objc_msgSend_copyWithZone_(self->_contextID, v17, v18, zone);
  v20 = *(v12 + 16);
  *(v12 + 16) = v19;

  if (*&self->_has)
  {
    v22.n128_u64[0] = *&self->_timestamp;
    *(v12 + 8) = v22.n128_u64[0];
    *(v12 + 56) |= 1u;
  }

  v23 = objc_msgSend_copyWithZone_(self->_performTaskStatus, v21, v22, zone);
  v24 = *(v12 + 24);
  *(v12 + 24) = v23;

  v27 = objc_msgSend_copyWithZone_(self->_performTrialTaskStatus, v25, v26, zone);
  v28 = *(v12 + 32);
  *(v12 + 32) = v27;

  v31 = objc_msgSend_copyWithZone_(self->_stop, v29, v30, zone);
  v32 = *(v12 + 40);
  *(v12 + 40) = v31;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v7, v5))
  {
    goto LABEL_17;
  }

  trialIdentifiers = self->_trialIdentifiers;
  v11 = equalCopy[6];
  if (trialIdentifiers | v11)
  {
    if (!objc_msgSend_isEqual_(trialIdentifiers, v8, v9, v11))
    {
      goto LABEL_17;
    }
  }

  contextID = self->_contextID;
  v13 = equalCopy[2];
  if (contextID | v13)
  {
    if (!objc_msgSend_isEqual_(contextID, v8, v9, v13))
    {
      goto LABEL_17;
    }
  }

  if (*&self->_has)
  {
    if ((equalCopy[7] & 1) == 0)
    {
      goto LABEL_17;
    }

    v9.n128_u64[0] = *&self->_timestamp;
    if (v9.n128_f64[0] != *(equalCopy + 1))
    {
      goto LABEL_17;
    }
  }

  else if (equalCopy[7])
  {
LABEL_17:
    isEqual = 0;
    goto LABEL_18;
  }

  performTaskStatus = self->_performTaskStatus;
  v15 = equalCopy[3];
  if (performTaskStatus | v15 && !objc_msgSend_isEqual_(performTaskStatus, v8, v9, v15))
  {
    goto LABEL_17;
  }

  performTrialTaskStatus = self->_performTrialTaskStatus;
  v17 = equalCopy[4];
  if (performTrialTaskStatus | v17)
  {
    if (!objc_msgSend_isEqual_(performTrialTaskStatus, v8, v9, v17))
    {
      goto LABEL_17;
    }
  }

  stop = self->_stop;
  v19 = equalCopy[5];
  if (stop | v19)
  {
    isEqual = objc_msgSend_isEqual_(stop, v8, v9, v19);
  }

  else
  {
    isEqual = 1;
  }

LABEL_18:

  return isEqual;
}

- (unint64_t)hash
{
  v5 = objc_msgSend_hash(self->_trialIdentifiers, a2, v3, v2);
  v9 = objc_msgSend_hash(self->_contextID, v6, v8, v7);
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v13.i64 = floor(timestamp + 0.5);
    v12.n128_f64[0] = (timestamp - *v13.i64) * 1.84467441e19;
    *v14.i64 = *v13.i64 - trunc(*v13.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v15 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v14, v13).i64;
    if (v12.n128_f64[0] >= 0.0)
    {
      if (v12.n128_f64[0] > 0.0)
      {
        v15 += v12.n128_f64[0];
      }
    }

    else
    {
      v12.n128_f64[0] = fabs(v12.n128_f64[0]);
      v15 -= v12.n128_f64[0];
    }
  }

  else
  {
    v15 = 0;
  }

  v18 = v9 ^ v5 ^ v15 ^ objc_msgSend_hash(self->_performTaskStatus, v10, v12, v11);
  v22 = objc_msgSend_hash(self->_performTrialTaskStatus, v19, v21, v20);
  return v18 ^ v22 ^ objc_msgSend_hash(self->_stop, v23, v25, v24);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  trialIdentifiers = self->_trialIdentifiers;
  v7 = fromCopy[6];
  v15 = fromCopy;
  if (trialIdentifiers)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(trialIdentifiers, fromCopy, v5, v7);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    objc_msgSend_setTrialIdentifiers_(self, fromCopy, v5, v7);
  }

  fromCopy = v15;
LABEL_7:
  v8 = fromCopy[2];
  if (v8)
  {
    objc_msgSend_setContextID_(self, fromCopy, v5, v8);
    fromCopy = v15;
  }

  if (fromCopy[7])
  {
    v5.n128_u64[0] = fromCopy[1];
    *&self->_timestamp = v5.n128_u64[0];
    *&self->_has |= 1u;
  }

  performTaskStatus = self->_performTaskStatus;
  v10 = fromCopy[3];
  if (performTaskStatus)
  {
    if (!v10)
    {
      goto LABEL_17;
    }

    objc_msgSend_mergeFrom_(performTaskStatus, fromCopy, v5, v10);
  }

  else
  {
    if (!v10)
    {
      goto LABEL_17;
    }

    objc_msgSend_setPerformTaskStatus_(self, fromCopy, v5, v10);
  }

  fromCopy = v15;
LABEL_17:
  performTrialTaskStatus = self->_performTrialTaskStatus;
  v12 = fromCopy[4];
  if (performTrialTaskStatus)
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    objc_msgSend_mergeFrom_(performTrialTaskStatus, fromCopy, v5, v12);
  }

  else
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    objc_msgSend_setPerformTrialTaskStatus_(self, fromCopy, v5, v12);
  }

  fromCopy = v15;
LABEL_23:
  stop = self->_stop;
  v14 = fromCopy[5];
  if (stop)
  {
    if (v14)
    {
      objc_msgSend_mergeFrom_(stop, fromCopy, v5, v14);
    }
  }

  else if (v14)
  {
    objc_msgSend_setStop_(self, fromCopy, v5, v14);
  }

  MEMORY[0x2821F96F8]();
}

@end