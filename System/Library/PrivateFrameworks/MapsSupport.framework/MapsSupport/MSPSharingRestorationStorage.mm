@interface MSPSharingRestorationStorage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMapsIdentifier:(id)identifier;
- (void)addMessagesIdentifier:(id)identifier;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MSPSharingRestorationStorage

- (void)addMapsIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mapsIdentifiers = self->_mapsIdentifiers;
  v8 = identifierCopy;
  if (!mapsIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_mapsIdentifiers;
    self->_mapsIdentifiers = v6;

    identifierCopy = v8;
    mapsIdentifiers = self->_mapsIdentifiers;
  }

  [(NSMutableArray *)mapsIdentifiers addObject:identifierCopy];
}

- (void)addMessagesIdentifier:(id)identifier
{
  identifierCopy = identifier;
  messagesIdentifiers = self->_messagesIdentifiers;
  v8 = identifierCopy;
  if (!messagesIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_messagesIdentifiers;
    self->_messagesIdentifiers = v6;

    identifierCopy = v8;
    messagesIdentifiers = self->_messagesIdentifiers;
  }

  [(NSMutableArray *)messagesIdentifiers addObject:identifierCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPSharingRestorationStorage;
  v4 = [(MSPSharingRestorationStorage *)&v8 description];
  dictionaryRepresentation = [(MSPSharingRestorationStorage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_createdTimestamp];
    [dictionary setObject:v4 forKey:@"created_timestamp"];
  }

  groupIdentifier = self->_groupIdentifier;
  if (groupIdentifier)
  {
    [dictionary setObject:groupIdentifier forKey:@"group_identifier"];
  }

  mapsIdentifiers = self->_mapsIdentifiers;
  if (mapsIdentifiers)
  {
    [dictionary setObject:mapsIdentifiers forKey:@"maps_identifier"];
  }

  messagesIdentifiers = self->_messagesIdentifiers;
  if (messagesIdentifiers)
  {
    [dictionary setObject:messagesIdentifiers forKey:@"messages_identifier"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    dictionaryRepresentation = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"Unknown Fields"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_groupIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_mapsIdentifiers;
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
  v10 = self->_messagesIdentifiers;
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

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy, v15];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = *&self->_createdTimestamp;
    *(toCopy + 48) |= 1u;
  }

  v13 = toCopy;
  if (self->_groupIdentifier)
  {
    [toCopy setGroupIdentifier:?];
  }

  if ([(MSPSharingRestorationStorage *)self mapsIdentifiersCount])
  {
    [v13 clearMapsIdentifiers];
    mapsIdentifiersCount = [(MSPSharingRestorationStorage *)self mapsIdentifiersCount];
    if (mapsIdentifiersCount)
    {
      v6 = mapsIdentifiersCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(MSPSharingRestorationStorage *)self mapsIdentifierAtIndex:i];
        [v13 addMapsIdentifier:v8];
      }
    }
  }

  if ([(MSPSharingRestorationStorage *)self messagesIdentifiersCount])
  {
    [v13 clearMessagesIdentifiers];
    messagesIdentifiersCount = [(MSPSharingRestorationStorage *)self messagesIdentifiersCount];
    if (messagesIdentifiersCount)
    {
      v10 = messagesIdentifiersCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(MSPSharingRestorationStorage *)self messagesIdentifierAtIndex:j];
        [v13 addMessagesIdentifier:v12];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_createdTimestamp;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSString *)self->_groupIdentifier copyWithZone:zone];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = self->_mapsIdentifiers;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      v13 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v26 + 1) + 8 * v13) copyWithZone:zone];
        [v6 addMapsIdentifier:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v11);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = self->_messagesIdentifiers;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v22 + 1) + 8 * v19) copyWithZone:{zone, v22}];
        [v6 addMessagesIdentifier:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  objc_storeStrong((v6 + 8), self->_unknownFields);
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
    if ((*(equalCopy + 48) & 1) == 0 || self->_createdTimestamp != *(equalCopy + 2))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  groupIdentifier = self->_groupIdentifier;
  if (groupIdentifier | *(equalCopy + 3) && ![(NSString *)groupIdentifier isEqual:?])
  {
    goto LABEL_13;
  }

  mapsIdentifiers = self->_mapsIdentifiers;
  if (mapsIdentifiers | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)mapsIdentifiers isEqual:?])
    {
      goto LABEL_13;
    }
  }

  messagesIdentifiers = self->_messagesIdentifiers;
  if (messagesIdentifiers | *(equalCopy + 5))
  {
    v8 = [(NSMutableArray *)messagesIdentifiers isEqual:?];
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
    createdTimestamp = self->_createdTimestamp;
    if (createdTimestamp < 0.0)
    {
      createdTimestamp = -createdTimestamp;
    }

    *v2.i64 = floor(createdTimestamp + 0.5);
    v7 = (createdTimestamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(NSString *)self->_groupIdentifier hash]^ v5;
  v10 = [(NSMutableArray *)self->_mapsIdentifiers hash];
  return v9 ^ v10 ^ [(NSMutableArray *)self->_messagesIdentifiers hash];
}

- (void)mergeFrom:(id)from
{
  v26 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 48))
  {
    self->_createdTimestamp = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(MSPSharingRestorationStorage *)self setGroupIdentifier:?];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v5[4];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(MSPSharingRestorationStorage *)self addMapsIdentifier:*(*(&v20 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v5[5];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(MSPSharingRestorationStorage *)self addMessagesIdentifier:*(*(&v16 + 1) + 8 * j), v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

@end