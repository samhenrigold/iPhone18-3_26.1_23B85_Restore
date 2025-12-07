@interface MSPCollectionItemReplicaStorage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addRecords:(id)records;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MSPCollectionItemReplicaStorage

- (void)addRecords:(id)records
{
  recordsCopy = records;
  records = self->_records;
  v8 = recordsCopy;
  if (!records)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_records;
    self->_records = v6;

    recordsCopy = v8;
    records = self->_records;
  }

  [(NSMutableArray *)records addObject:recordsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPCollectionItemReplicaStorage;
  v4 = [(MSPCollectionItemReplicaStorage *)&v8 description];
  dictionaryRepresentation = [(MSPCollectionItemReplicaStorage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier)
  {
    [dictionary setObject:clientIdentifier forKey:@"clientIdentifier"];
  }

  if ([(NSMutableArray *)self->_records count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_records, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = self->_records;
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

    [v4 setObject:v6 forKey:@"records"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    dictionaryRepresentation2 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"Unknown Fields"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_records;
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

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy, v10];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_clientIdentifier)
  {
    [toCopy setClientIdentifier:?];
  }

  if ([(MSPCollectionItemReplicaStorage *)self recordsCount])
  {
    [toCopy clearRecords];
    recordsCount = [(MSPCollectionItemReplicaStorage *)self recordsCount];
    if (recordsCount)
    {
      v5 = recordsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(MSPCollectionItemReplicaStorage *)self recordsAtIndex:i];
        [toCopy addRecords:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_clientIdentifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_records;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) copyWithZone:{zone, v15}];
        [v5 addRecords:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  objc_storeStrong((v5 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((clientIdentifier = self->_clientIdentifier, !(clientIdentifier | equalCopy[2])) || -[NSString isEqual:](clientIdentifier, "isEqual:")))
  {
    records = self->_records;
    if (records | equalCopy[3])
    {
      v7 = [(NSMutableArray *)records isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(MSPCollectionItemReplicaStorage *)self setClientIdentifier:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 3);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(MSPCollectionItemReplicaStorage *)self addRecords:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end