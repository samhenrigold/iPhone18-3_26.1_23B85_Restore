@interface PBBProtoWarrantySentinel
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAppleLanguages:(id)languages;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSentinelExists:(BOOL)exists;
- (void)writeTo:(id)to;
@end

@implementation PBBProtoWarrantySentinel

- (void)setHasSentinelExists:(BOOL)exists
{
  if (exists)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addAppleLanguages:(id)languages
{
  languagesCopy = languages;
  appleLanguages = self->_appleLanguages;
  v8 = languagesCopy;
  if (!appleLanguages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_appleLanguages;
    self->_appleLanguages = v6;

    languagesCopy = v8;
    appleLanguages = self->_appleLanguages;
  }

  [(NSMutableArray *)appleLanguages addObject:languagesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoWarrantySentinel;
  v4 = [(PBBProtoWarrantySentinel *)&v8 description];
  dictionaryRepresentation = [(PBBProtoWarrantySentinel *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_sentinelExists];
    [dictionary setObject:v5 forKey:@"sentinelExists"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_removeSentinel];
    [dictionary setObject:v6 forKey:@"removeSentinel"];
  }

  appleLanguages = self->_appleLanguages;
  if (appleLanguages)
  {
    [dictionary setObject:appleLanguages forKey:@"appleLanguages"];
  }

  appleLocale = self->_appleLocale;
  if (appleLocale)
  {
    [dictionary setObject:appleLocale forKey:@"appleLocale"];
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    [dictionary setObject:deviceName forKey:@"deviceName"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x277D85DE8];
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_appleLanguages;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteStringField();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if (self->_appleLocale)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[33] = self->_sentinelExists;
    toCopy[36] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[32] = self->_removeSentinel;
    toCopy[36] |= 1u;
  }

  v11 = toCopy;
  if ([(PBBProtoWarrantySentinel *)self appleLanguagesCount])
  {
    [v11 clearAppleLanguages];
    appleLanguagesCount = [(PBBProtoWarrantySentinel *)self appleLanguagesCount];
    if (appleLanguagesCount)
    {
      v7 = appleLanguagesCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PBBProtoWarrantySentinel *)self appleLanguagesAtIndex:i];
        [v11 addAppleLanguages:v9];
      }
    }
  }

  if (self->_appleLocale)
  {
    [v11 setAppleLocale:?];
  }

  v10 = v11;
  if (self->_deviceName)
  {
    [v11 setDeviceName:?];
    v10 = v11;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5[33] = self->_sentinelExists;
    v5[36] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v5[32] = self->_removeSentinel;
    v5[36] |= 1u;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_appleLanguages;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v19 + 1) + 8 * i) copyWithZone:{zone, v19}];
        [v6 addAppleLanguages:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v14 = [(NSString *)self->_appleLocale copyWithZone:zone];
  v15 = v6[2];
  v6[2] = v14;

  v16 = [(NSString *)self->_deviceName copyWithZone:zone];
  v17 = v6[3];
  v6[3] = v16;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = *(equalCopy + 36);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0)
    {
      goto LABEL_21;
    }

    if (self->_sentinelExists)
    {
      if ((*(equalCopy + 33) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if (*(equalCopy + 33))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(equalCopy + 36) & 1) == 0)
  {
    goto LABEL_21;
  }

  v5 = *(equalCopy + 32);
  if (!self->_removeSentinel)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

  if ((*(equalCopy + 32) & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  appleLanguages = self->_appleLanguages;
  if (appleLanguages | *(equalCopy + 1) && ![(NSMutableArray *)appleLanguages isEqual:?])
  {
    goto LABEL_21;
  }

  appleLocale = self->_appleLocale;
  if (appleLocale | *(equalCopy + 2))
  {
    if (![(NSString *)appleLocale isEqual:?])
    {
      goto LABEL_21;
    }
  }

  deviceName = self->_deviceName;
  if (deviceName | *(equalCopy + 3))
  {
    v9 = [(NSString *)deviceName isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_22:

  return v9;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_sentinelExists;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_removeSentinel;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSMutableArray *)self->_appleLanguages hash];
  v6 = [(NSString *)self->_appleLocale hash];
  return v5 ^ v6 ^ [(NSString *)self->_deviceName hash];
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 36);
  if ((v6 & 2) != 0)
  {
    self->_sentinelExists = *(fromCopy + 33);
    *&self->_has |= 2u;
    v6 = *(fromCopy + 36);
  }

  if (v6)
  {
    self->_removeSentinel = *(fromCopy + 32);
    *&self->_has |= 1u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(fromCopy + 1);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(PBBProtoWarrantySentinel *)self addAppleLanguages:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  if (v5[2])
  {
    [(PBBProtoWarrantySentinel *)self setAppleLocale:?];
  }

  if (v5[3])
  {
    [(PBBProtoWarrantySentinel *)self setDeviceName:?];
  }
}

@end