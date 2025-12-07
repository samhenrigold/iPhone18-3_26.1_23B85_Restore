@interface LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiers
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiers

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiers;
  v4 = [(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiers *)&v13 description];
  v8 = objc_msgSend_dictionaryRepresentation(self, v5, v7, v6);
  v11 = objc_msgSend_stringWithFormat_(v3, v9, v10, @"%@ %@", v4, v8);

  return v11;
}

- (id)dictionaryRepresentation
{
  v7 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v3, v2);
  experimentIdentifiers = self->_experimentIdentifiers;
  if (experimentIdentifiers)
  {
    v10 = objc_msgSend_dictionaryRepresentation(experimentIdentifiers, v5, v8, v6);
    objc_msgSend_setObject_forKey_(v7, v11, v12, v10, @"experimentIdentifiers");
  }

  bmltIdentifiers = self->_bmltIdentifiers;
  if (bmltIdentifiers)
  {
    v14 = objc_msgSend_dictionaryRepresentation(bmltIdentifiers, v5, v8, v6);
    objc_msgSend_setObject_forKey_(v7, v15, v16, v14, @"bmltIdentifiers");
  }

  return v7;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_experimentIdentifiers)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_bmltIdentifiers)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  experimentIdentifiers = self->_experimentIdentifiers;
  v9 = toCopy;
  if (experimentIdentifiers)
  {
    objc_msgSend_setExperimentIdentifiers_(toCopy, v5, v6, experimentIdentifiers);
    toCopy = v9;
  }

  bmltIdentifiers = self->_bmltIdentifiers;
  if (bmltIdentifiers)
  {
    objc_msgSend_setBmltIdentifiers_(v9, v5, v6, bmltIdentifiers);
    toCopy = v9;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, v7, zone);
  v12 = objc_msgSend_init(v8, v9, v11, v10);
  v15 = objc_msgSend_copyWithZone_(self->_experimentIdentifiers, v13, v14, zone);
  v16 = v12[2];
  v12[2] = v15;

  v19 = objc_msgSend_copyWithZone_(self->_bmltIdentifiers, v17, v18, zone);
  v20 = v12[1];
  v12[1] = v19;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v7, v5) && ((experimentIdentifiers = self->_experimentIdentifiers, v11 = equalCopy[2], !(experimentIdentifiers | v11)) || objc_msgSend_isEqual_(experimentIdentifiers, v8, v9, v11)))
  {
    bmltIdentifiers = self->_bmltIdentifiers;
    v13 = equalCopy[1];
    if (bmltIdentifiers | v13)
    {
      isEqual = objc_msgSend_isEqual_(bmltIdentifiers, v8, v9, v13);
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
  experimentIdentifiers = self->_experimentIdentifiers;
  v7 = fromCopy[2];
  v10 = fromCopy;
  if (experimentIdentifiers)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(experimentIdentifiers, fromCopy, v5, v7);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    objc_msgSend_setExperimentIdentifiers_(self, fromCopy, v5, v7);
  }

  fromCopy = v10;
LABEL_7:
  bmltIdentifiers = self->_bmltIdentifiers;
  v9 = fromCopy[1];
  if (bmltIdentifiers)
  {
    if (v9)
    {
      objc_msgSend_mergeFrom_(bmltIdentifiers, fromCopy, v5, v9);
    }
  }

  else if (v9)
  {
    objc_msgSend_setBmltIdentifiers_(self, fromCopy, v5, v9);
  }

  MEMORY[0x2821F96F8]();
}

@end