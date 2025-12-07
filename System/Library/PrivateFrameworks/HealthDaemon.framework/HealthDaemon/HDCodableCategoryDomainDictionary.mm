@interface HDCodableCategoryDomainDictionary
- (BOOL)_validateForInsertionWithError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HDCodableCategoryDomainDictionary)initWithCategory:(int64_t)category domain:(id)domain;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addKeyValuePairs:(id)pairs;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableCategoryDomainDictionary

- (HDCodableCategoryDomainDictionary)initWithCategory:(int64_t)category domain:(id)domain
{
  domainCopy = domain;
  v11.receiver = self;
  v11.super_class = HDCodableCategoryDomainDictionary;
  v7 = [(HDCodableCategoryDomainDictionary *)&v11 init];
  v8 = v7;
  if (v7)
  {
    [(HDCodableCategoryDomainDictionary *)v7 setCategory:category];
    v9 = objc_msgSend_copy(domainCopy);
    [(HDCodableCategoryDomainDictionary *)v8 setDomain:v9];
  }

  return v8;
}

- (void)addKeyValuePairs:(id)pairs
{
  pairsCopy = pairs;
  keyValuePairs = self->_keyValuePairs;
  v8 = pairsCopy;
  if (!keyValuePairs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_keyValuePairs;
    self->_keyValuePairs = v6;

    pairsCopy = v8;
    keyValuePairs = self->_keyValuePairs;
  }

  [(NSMutableArray *)keyValuePairs addObject:pairsCopy];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableCategoryDomainDictionary;
  v4 = [(HDCodableCategoryDomainDictionary *)&v8 description];
  dictionaryRepresentation = [(HDCodableCategoryDomainDictionary *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_category];
    [dictionary setObject:v4 forKey:@"category"];
  }

  domain = self->_domain;
  if (domain)
  {
    [dictionary setObject:domain forKey:@"domain"];
  }

  if ([(NSMutableArray *)self->_keyValuePairs count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_keyValuePairs, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = self->_keyValuePairs;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"keyValuePairs"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    dictionaryRepresentation2 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"syncIdentity"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_domain)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_keyValuePairs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_category;
    *(toCopy + 40) |= 1u;
  }

  v9 = toCopy;
  if (self->_domain)
  {
    [toCopy setDomain:?];
  }

  if ([(HDCodableCategoryDomainDictionary *)self keyValuePairsCount])
  {
    [v9 clearKeyValuePairs];
    keyValuePairsCount = [(HDCodableCategoryDomainDictionary *)self keyValuePairsCount];
    if (keyValuePairsCount)
    {
      v6 = keyValuePairsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(HDCodableCategoryDomainDictionary *)self keyValuePairsAtIndex:i];
        [v9 addKeyValuePairs:v8];
      }
    }
  }

  if (self->_syncIdentity)
  {
    [v9 setSyncIdentity:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_category;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSString *)self->_domain copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_keyValuePairs;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v18 + 1) + 8 * v13) copyWithZone:{zone, v18}];
        [v6 addKeyValuePairs:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:zone];
  v16 = v6[4];
  v6[4] = v15;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_category != *(equalCopy + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  domain = self->_domain;
  if (domain | *(equalCopy + 2) && ![(NSString *)domain isEqual:?])
  {
    goto LABEL_13;
  }

  keyValuePairs = self->_keyValuePairs;
  if (keyValuePairs | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)keyValuePairs isEqual:?])
    {
      goto LABEL_13;
    }
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(equalCopy + 4))
  {
    v8 = [(HDCodableSyncIdentity *)syncIdentity isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_14:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_category;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_domain hash]^ v3;
  v5 = [(NSMutableArray *)self->_keyValuePairs hash];
  return v4 ^ v5 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[5])
  {
    self->_category = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[2])
  {
    [(HDCodableCategoryDomainDictionary *)self setDomain:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5[3];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(HDCodableCategoryDomainDictionary *)self addKeyValuePairs:*(*(&v13 + 1) + 8 * i), v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  syncIdentity = self->_syncIdentity;
  v12 = v5[4];
  if (syncIdentity)
  {
    if (v12)
    {
      [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(HDCodableCategoryDomainDictionary *)self setSyncIdentity:?];
  }
}

- (BOOL)_validateForInsertionWithError:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  if ([(HDCodableCategoryDomainDictionary *)self hasCategory])
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Missing category"];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_keyValuePairs;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    v11 = @"Missing key in pair for %ld (%@)";
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if (!v13[5])
        {
          goto LABEL_15;
        }

        if (![v13 hasTimestamp])
        {
          v11 = @"Missing timestamp in pair for %ld (%@)";
LABEL_15:
          v14 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{v11, self->_category, self->_domain, v18}];

          v6 = v14;
          goto LABEL_16;
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v15 = v6;
  if (v15)
  {
    if (error)
    {
      v16 = v15;
      *error = v15;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v15 == 0;
}

@end