@interface MSPPinnedPlaceStorage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)typeAsString:(int)string;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)addContactStorage:(id)storage;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasHidden:(BOOL)hidden;
- (void)writeTo:(id)to;
@end

@implementation MSPPinnedPlaceStorage

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (id)typeAsString:(int)string
{
  if (string >= 6)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_279866348[string];
  }

  return v4;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"MAP_ITEM"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"HOME"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"WORK"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"PARKED_CAR"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"SCHOOL"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addContactStorage:(id)storage
{
  storageCopy = storage;
  contactStorages = self->_contactStorages;
  v8 = storageCopy;
  if (!contactStorages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_contactStorages;
    self->_contactStorages = v6;

    storageCopy = v8;
    contactStorages = self->_contactStorages;
  }

  [(NSMutableArray *)contactStorages addObject:storageCopy];
}

- (void)setHasHidden:(BOOL)hidden
{
  if (hidden)
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
  v8.receiver = self;
  v8.super_class = MSPPinnedPlaceStorage;
  v4 = [(MSPPinnedPlaceStorage *)&v8 description];
  dictionaryRepresentation = [(MSPPinnedPlaceStorage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v27 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    type = self->_type;
    if (type >= 6)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v5 = off_279866348[type];
    }

    [dictionary setObject:v5 forKey:@"type"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  customName = self->_customName;
  if (customName)
  {
    [dictionary setObject:customName forKey:@"customName"];
  }

  mapItemStorage = self->_mapItemStorage;
  if (mapItemStorage)
  {
    dictionaryRepresentation = [(GEOMapItemStorage *)mapItemStorage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"mapItemStorage"];
  }

  if ([(NSMutableArray *)self->_contactStorages count])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_contactStorages, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = self->_contactStorages;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation2 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation2];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    [dictionary setObject:v10 forKey:@"contactStorage"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_hidden];
    [dictionary setObject:v17 forKey:@"hidden"];
  }

  originatingAddressString = self->_originatingAddressString;
  if (originatingAddressString)
  {
    [dictionary setObject:originatingAddressString forKey:@"originatingAddressString"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    dictionaryRepresentation3 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"Unknown Fields"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_customName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_mapItemStorage)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_contactStorages;
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

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_originatingAddressString)
  {
    PBDataWriterWriteStringField();
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy, v10];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[14] = self->_type;
    *(toCopy + 64) |= 1u;
  }

  v10 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
  }

  if (self->_customName)
  {
    [v10 setCustomName:?];
  }

  if (self->_mapItemStorage)
  {
    [v10 setMapItemStorage:?];
  }

  if ([(MSPPinnedPlaceStorage *)self contactStoragesCount])
  {
    [v10 clearContactStorages];
    contactStoragesCount = [(MSPPinnedPlaceStorage *)self contactStoragesCount];
    if (contactStoragesCount)
    {
      v6 = contactStoragesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(MSPPinnedPlaceStorage *)self contactStorageAtIndex:i];
        [v10 addContactStorage:v8];
      }
    }
  }

  v9 = v10;
  if ((*&self->_has & 2) != 0)
  {
    v10[60] = self->_hidden;
    v10[64] |= 2u;
  }

  if (self->_originatingAddressString)
  {
    [v10 setOriginatingAddressString:?];
    v9 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 56) = self->_type;
    *(v5 + 64) |= 1u;
  }

  v7 = [(NSString *)self->_identifier copyWithZone:zone];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  v9 = [(NSString *)self->_customName copyWithZone:zone];
  v10 = *(v6 + 24);
  *(v6 + 24) = v9;

  v11 = [(GEOMapItemStorage *)self->_mapItemStorage copyWithZone:zone];
  v12 = *(v6 + 40);
  *(v6 + 40) = v11;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = self->_contactStorages;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v22 + 1) + 8 * v17) copyWithZone:{zone, v22}];
        [v6 addContactStorage:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 60) = self->_hidden;
    *(v6 + 64) |= 2u;
  }

  v19 = [(NSString *)self->_originatingAddressString copyWithZone:zone, v22];
  v20 = *(v6 + 48);
  *(v6 + 48) = v19;

  objc_storeStrong((v6 + 8), self->_unknownFields);
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_type != *(equalCopy + 14))
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_20;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 4) && ![(NSString *)identifier isEqual:?])
  {
    goto LABEL_20;
  }

  customName = self->_customName;
  if (customName | *(equalCopy + 3))
  {
    if (![(NSString *)customName isEqual:?])
    {
      goto LABEL_20;
    }
  }

  mapItemStorage = self->_mapItemStorage;
  if (mapItemStorage | *(equalCopy + 5))
  {
    if (![(GEOMapItemStorage *)mapItemStorage isEqual:?])
    {
      goto LABEL_20;
    }
  }

  contactStorages = self->_contactStorages;
  if (contactStorages | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)contactStorages isEqual:?])
    {
      goto LABEL_20;
    }
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 64) & 2) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v10 = 0;
    goto LABEL_21;
  }

  if ((*(equalCopy + 64) & 2) == 0)
  {
    goto LABEL_20;
  }

  if (self->_hidden)
  {
    if ((*(equalCopy + 60) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_20;
  }

LABEL_17:
  originatingAddressString = self->_originatingAddressString;
  if (originatingAddressString | *(equalCopy + 6))
  {
    v10 = [(NSString *)originatingAddressString isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_21:

  return v10;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_identifier hash];
  v5 = [(NSString *)self->_customName hash];
  v6 = [(GEOMapItemStorage *)self->_mapItemStorage hash];
  v7 = [(NSMutableArray *)self->_contactStorages hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_hidden;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_originatingAddressString hash];
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[16])
  {
    self->_type = fromCopy[14];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(MSPPinnedPlaceStorage *)self setIdentifier:?];
  }

  if (*(v5 + 3))
  {
    [(MSPPinnedPlaceStorage *)self setCustomName:?];
  }

  mapItemStorage = self->_mapItemStorage;
  v7 = *(v5 + 5);
  if (mapItemStorage)
  {
    if (v7)
    {
      [(GEOMapItemStorage *)mapItemStorage mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(MSPPinnedPlaceStorage *)self setMapItemStorage:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = *(v5 + 2);
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(MSPPinnedPlaceStorage *)self addContactStorage:*(*(&v13 + 1) + 8 * i), v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  if ((*(v5 + 64) & 2) != 0)
  {
    self->_hidden = *(v5 + 60);
    *&self->_has |= 2u;
  }

  if (*(v5 + 6))
  {
    [(MSPPinnedPlaceStorage *)self setOriginatingAddressString:?];
  }
}

@end