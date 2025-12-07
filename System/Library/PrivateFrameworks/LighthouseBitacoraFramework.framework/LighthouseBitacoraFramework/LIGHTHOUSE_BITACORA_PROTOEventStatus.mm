@interface LIGHTHOUSE_BITACORA_PROTOEventStatus
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSucceeded:(BOOL)succeeded;
- (void)writeTo:(id)to;
@end

@implementation LIGHTHOUSE_BITACORA_PROTOEventStatus

- (void)setHasSucceeded:(BOOL)succeeded
{
  if (succeeded)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = LIGHTHOUSE_BITACORA_PROTOEventStatus;
  v4 = [(LIGHTHOUSE_BITACORA_PROTOEventStatus *)&v13 description];
  v8 = objc_msgSend_dictionaryRepresentation(self, v5, v7, v6);
  v11 = objc_msgSend_stringWithFormat_(v3, v9, v10, @"%@ %@", v4, v8);

  return v11;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v3, v2);
  if ((*&self->_has & 2) != 0)
  {
    v8 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, v7, self->_succeeded);
    objc_msgSend_setObject_forKey_(v6, v9, v10, v8, @"succeeded");
  }

  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    objc_msgSend_setObject_forKey_(v6, v5, v7, errorDomain, @"errorDomain");
  }

  if (*&self->_has)
  {
    v12 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v5, v7, self->_errorCode);
    objc_msgSend_setObject_forKey_(v6, v13, v14, v12, @"errorCode");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[24] = self->_succeeded;
    toCopy[28] |= 2u;
  }

  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    v8 = toCopy;
    objc_msgSend_setErrorDomain_(toCopy, v5, v6, errorDomain);
    toCopy = v8;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_errorCode;
    toCopy[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, v7, zone);
  v12 = objc_msgSend_init(v8, v9, v11, v10);
  v15 = v12;
  if ((*&self->_has & 2) != 0)
  {
    *(v12 + 24) = self->_succeeded;
    *(v12 + 28) |= 2u;
  }

  v16 = objc_msgSend_copyWithZone_(self->_errorDomain, v13, v14, zone);
  v17 = *(v15 + 16);
  *(v15 + 16) = v16;

  if (*&self->_has)
  {
    *(v15 + 8) = self->_errorCode;
    *(v15 + 28) |= 1u;
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v7, v5))
  {
    goto LABEL_12;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0)
    {
      goto LABEL_12;
    }

    if (self->_succeeded)
    {
      if ((equalCopy[3] & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (equalCopy[3])
    {
      goto LABEL_12;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_12;
  }

  errorDomain = self->_errorDomain;
  v12 = equalCopy[2];
  if (errorDomain | v12)
  {
    if (!objc_msgSend_isEqual_(errorDomain, v8, v9, v12))
    {
      goto LABEL_12;
    }

    has = self->_has;
  }

  v13 = (*(equalCopy + 28) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 28) & 1) != 0 && self->_errorCode == *(equalCopy + 2))
    {
      v13 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v13 = 0;
  }

LABEL_13:

  return v13;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_succeeded;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_msgSend_hash(self->_errorDomain, a2, v3, v2);
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_errorCode;
  }

  else
  {
    v7 = 0;
  }

  return v6 ^ v5 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 28) & 2) != 0)
  {
    self->_succeeded = *(fromCopy + 24);
    *&self->_has |= 2u;
  }

  v7 = *(fromCopy + 2);
  if (v7)
  {
    v8 = fromCopy;
    objc_msgSend_setErrorDomain_(self, v5, v6, v7);
    fromCopy = v8;
  }

  if (*(fromCopy + 28))
  {
    self->_errorCode = *(fromCopy + 2);
    *&self->_has |= 1u;
  }
}

@end