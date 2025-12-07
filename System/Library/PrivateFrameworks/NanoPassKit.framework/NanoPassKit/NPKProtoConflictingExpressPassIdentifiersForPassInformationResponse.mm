@interface NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addConflictingExpressPassIdentifiers:(id)identifiers;
- (void)addConflictingReferenceExpressPassIdentifiers:(id)identifiers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse

- (void)addConflictingExpressPassIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  conflictingExpressPassIdentifiers = self->_conflictingExpressPassIdentifiers;
  v8 = identifiersCopy;
  if (!conflictingExpressPassIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_conflictingExpressPassIdentifiers;
    self->_conflictingExpressPassIdentifiers = v6;

    identifiersCopy = v8;
    conflictingExpressPassIdentifiers = self->_conflictingExpressPassIdentifiers;
  }

  [(NSMutableArray *)conflictingExpressPassIdentifiers addObject:identifiersCopy];
}

- (void)addConflictingReferenceExpressPassIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  conflictingReferenceExpressPassIdentifiers = self->_conflictingReferenceExpressPassIdentifiers;
  v8 = identifiersCopy;
  if (!conflictingReferenceExpressPassIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_conflictingReferenceExpressPassIdentifiers;
    self->_conflictingReferenceExpressPassIdentifiers = v6;

    identifiersCopy = v8;
    conflictingReferenceExpressPassIdentifiers = self->_conflictingReferenceExpressPassIdentifiers;
  }

  [(NSMutableArray *)conflictingReferenceExpressPassIdentifiers addObject:identifiersCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse;
  v4 = [(NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [dictionary setObject:v4 forKey:@"pending"];
  }

  conflictingExpressPassIdentifiers = self->_conflictingExpressPassIdentifiers;
  if (conflictingExpressPassIdentifiers)
  {
    [dictionary setObject:conflictingExpressPassIdentifiers forKey:@"conflictingExpressPassIdentifiers"];
  }

  conflictingReferenceExpressPassIdentifiers = self->_conflictingReferenceExpressPassIdentifiers;
  if (conflictingReferenceExpressPassIdentifiers)
  {
    [dictionary setObject:conflictingReferenceExpressPassIdentifiers forKey:@"conflictingReferenceExpressPassIdentifiers"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_conflictingExpressPassIdentifiers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_conflictingReferenceExpressPassIdentifiers;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[24] = self->_pending;
    toCopy[28] |= 1u;
  }

  v13 = toCopy;
  if ([(NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse *)self conflictingExpressPassIdentifiersCount])
  {
    [v13 clearConflictingExpressPassIdentifiers];
    conflictingExpressPassIdentifiersCount = [(NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse *)self conflictingExpressPassIdentifiersCount];
    if (conflictingExpressPassIdentifiersCount)
    {
      v6 = conflictingExpressPassIdentifiersCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse *)self conflictingExpressPassIdentifiersAtIndex:i];
        [v13 addConflictingExpressPassIdentifiers:v8];
      }
    }
  }

  if ([(NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse *)self conflictingReferenceExpressPassIdentifiersCount])
  {
    [v13 clearConflictingReferenceExpressPassIdentifiers];
    conflictingReferenceExpressPassIdentifiersCount = [(NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse *)self conflictingReferenceExpressPassIdentifiersCount];
    if (conflictingReferenceExpressPassIdentifiersCount)
    {
      v10 = conflictingReferenceExpressPassIdentifiersCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse *)self conflictingReferenceExpressPassIdentifiersAtIndex:j];
        [v13 addConflictingReferenceExpressPassIdentifiers:v12];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_pending;
    *(v5 + 28) |= 1u;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_conflictingExpressPassIdentifiers;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v24 + 1) + 8 * v11) copyWithZone:zone];
        [v6 addConflictingExpressPassIdentifiers:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = self->_conflictingReferenceExpressPassIdentifiers;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v20 + 1) + 8 * v17) copyWithZone:{zone, v20}];
        [v6 addConflictingReferenceExpressPassIdentifiers:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
      goto LABEL_9;
    }

    v5 = *(equalCopy + 24);
    if (self->_pending)
    {
      if (*(equalCopy + 24))
      {
        goto LABEL_4;
      }

LABEL_9:
      v8 = 0;
      goto LABEL_10;
    }
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  conflictingExpressPassIdentifiers = self->_conflictingExpressPassIdentifiers;
  if (conflictingExpressPassIdentifiers | *(equalCopy + 1) && ![(NSMutableArray *)conflictingExpressPassIdentifiers isEqual:?])
  {
    goto LABEL_9;
  }

  conflictingReferenceExpressPassIdentifiers = self->_conflictingReferenceExpressPassIdentifiers;
  if (conflictingReferenceExpressPassIdentifiers | *(equalCopy + 2))
  {
    v8 = [(NSMutableArray *)conflictingReferenceExpressPassIdentifiers isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_pending;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_conflictingExpressPassIdentifiers hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_conflictingReferenceExpressPassIdentifiers hash];
}

- (void)mergeFrom:(id)from
{
  v26 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 28))
  {
    self->_pending = *(fromCopy + 24);
    *&self->_has |= 1u;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = *(fromCopy + 1);
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse *)self addConflictingExpressPassIdentifiers:*(*(&v20 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v5[2];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse *)self addConflictingReferenceExpressPassIdentifiers:*(*(&v16 + 1) + 8 * v15++), v16];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

@end