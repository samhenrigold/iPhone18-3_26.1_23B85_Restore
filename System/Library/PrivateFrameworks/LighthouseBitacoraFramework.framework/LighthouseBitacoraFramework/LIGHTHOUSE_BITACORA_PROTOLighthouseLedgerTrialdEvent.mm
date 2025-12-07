@interface LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialdEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)eventTypeAsString:(int)string;
- (int)StringAsEventType:(id)type;
- (int)eventType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEventSucceeded:(BOOL)succeeded;
- (void)setHasEventType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialdEvent

- (int)eventType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_eventType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEventType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)eventTypeAsString:(int)string
{
  if (string >= 4)
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, v4, @"(unknown: %i)", string);
  }

  else
  {
    v5 = off_279813C60[string];
  }

  return v5;
}

- (int)StringAsEventType:(id)type
{
  typeCopy = type;
  if (objc_msgSend_isEqualToString_(typeCopy, v4, v5, @"Unknown"))
  {
    v8 = 0;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v6, v7, @"allocation"))
  {
    v8 = 1;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v9, v10, @"activation"))
  {
    v8 = 2;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v11, v12, @"deactivation"))
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setHasEventSucceeded:(BOOL)succeeded
{
  if (succeeded)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialdEvent;
  v4 = [(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialdEvent *)&v13 description];
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

  has = self->_has;
  if (has)
  {
    v8.n128_u64[0] = *&self->_timestamp;
    v19 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v5, v8, contextID);
    objc_msgSend_setObject_forKey_(v7, v20, v21, v19, @"timestamp");

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  eventType = self->_eventType;
  if (eventType >= 4)
  {
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, v8, @"(unknown: %i)", self->_eventType);
  }

  else
  {
    v23 = off_279813C60[eventType];
  }

  objc_msgSend_setObject_forKey_(v7, v5, v8, v23, @"eventType");

  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  v15 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, v8, self->_eventSucceeded);
  objc_msgSend_setObject_forKey_(v7, v16, v17, v15, @"eventSucceeded");

LABEL_9:

  return v7;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_trialIdentifiers)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_contextID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteInt32Field();
  toCopy = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

LABEL_9:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  trialIdentifiers = self->_trialIdentifiers;
  v10 = toCopy;
  if (trialIdentifiers)
  {
    objc_msgSend_setTrialIdentifiers_(toCopy, v5, v6, trialIdentifiers);
    toCopy = v10;
  }

  contextID = self->_contextID;
  if (contextID)
  {
    objc_msgSend_setContextID_(v10, v5, v6, contextID);
    toCopy = v10;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = *&self->_timestamp;
    *(toCopy + 44) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 6) = self->_eventType;
  *(toCopy + 44) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    *(toCopy + 40) = self->_eventSucceeded;
    *(toCopy + 44) |= 4u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, v7, zone);
  v12 = objc_msgSend_init(v8, v9, v11, v10);
  v15 = objc_msgSend_copyWithZone_(self->_trialIdentifiers, v13, v14, zone);
  v16 = *(v12 + 32);
  *(v12 + 32) = v15;

  v19 = objc_msgSend_copyWithZone_(self->_contextID, v17, v18, zone);
  v20 = *(v12 + 16);
  *(v12 + 16) = v19;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v12 + 24) = self->_eventType;
    *(v12 + 44) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      return v12;
    }

    goto LABEL_4;
  }

  *(v12 + 8) = self->_timestamp;
  *(v12 + 44) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v12 + 40) = self->_eventSucceeded;
    *(v12 + 44) |= 4u;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v7, v5))
  {
    goto LABEL_18;
  }

  trialIdentifiers = self->_trialIdentifiers;
  v11 = equalCopy[4];
  if (trialIdentifiers | v11)
  {
    if (!objc_msgSend_isEqual_(trialIdentifiers, v8, v9, v11))
    {
      goto LABEL_18;
    }
  }

  contextID = self->_contextID;
  v13 = equalCopy[2];
  if (contextID | v13)
  {
    if (!objc_msgSend_isEqual_(contextID, v8, v9, v13))
    {
      goto LABEL_18;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_18;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_eventType != *(equalCopy + 6))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_18;
  }

  v14 = (*(equalCopy + 44) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 44) & 4) == 0)
    {
LABEL_18:
      v14 = 0;
      goto LABEL_19;
    }

    if (self->_eventSucceeded)
    {
      if ((equalCopy[5] & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (*(equalCopy + 40))
    {
      goto LABEL_18;
    }

    v14 = 1;
  }

LABEL_19:

  return v14;
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

    *v10.i64 = floor(timestamp + 0.5);
    v14 = (timestamp - *v10.i64) * 1.84467441e19;
    *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v11, v10).i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v16 = 2654435761 * self->_eventType;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v17 = 0;
    return v9 ^ v5 ^ v12 ^ v16 ^ v17;
  }

  v16 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v17 = 2654435761 * self->_eventSucceeded;
  return v9 ^ v5 ^ v12 ^ v16 ^ v17;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  trialIdentifiers = self->_trialIdentifiers;
  v7 = *(fromCopy + 4);
  v10 = fromCopy;
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

  fromCopy = v10;
LABEL_7:
  v8 = *(fromCopy + 2);
  if (v8)
  {
    objc_msgSend_setContextID_(self, fromCopy, v5, v8);
    fromCopy = v10;
  }

  v9 = *(fromCopy + 44);
  if (v9)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v9 = *(fromCopy + 44);
    if ((v9 & 2) == 0)
    {
LABEL_11:
      if ((v9 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*(fromCopy + 44) & 2) == 0)
  {
    goto LABEL_11;
  }

  self->_eventType = *(fromCopy + 6);
  *&self->_has |= 2u;
  if ((*(fromCopy + 44) & 4) != 0)
  {
LABEL_12:
    self->_eventSucceeded = *(fromCopy + 40);
    *&self->_has |= 4u;
  }

LABEL_13:

  MEMORY[0x2821F96F8]();
}

@end