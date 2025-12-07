@interface MSPTransitStorageAttribution
- (BOOL)isEqual:(id)equal;
- (MSPTransitStorageAttribution)initWithAttribution:(id)attribution;
- (NSArray)_providerNames;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addProviderNames:(id)names;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MSPTransitStorageAttribution

- (MSPTransitStorageAttribution)initWithAttribution:(id)attribution
{
  v19 = *MEMORY[0x277D85DE8];
  attributionCopy = attribution;
  v17.receiver = self;
  v17.super_class = MSPTransitStorageAttribution;
  v5 = [(MSPTransitStorageAttribution *)&v17 init];
  v6 = v5;
  if (v5)
  {
    [(MSPTransitStorageAttribution *)v5 clearProviderNames];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    _providerNames = [attributionCopy _providerNames];
    v8 = [_providerNames countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(_providerNames);
          }

          [(MSPTransitStorageAttribution *)v6 addProviderNames:*(*(&v13 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [_providerNames countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v9);
    }
  }

  return v6;
}

- (NSArray)_providerNames
{
  v2 = [(NSMutableArray *)self->_providerNames copy];

  return v2;
}

- (void)addProviderNames:(id)names
{
  namesCopy = names;
  providerNames = self->_providerNames;
  v8 = namesCopy;
  if (!providerNames)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_providerNames;
    self->_providerNames = v6;

    namesCopy = v8;
    providerNames = self->_providerNames;
  }

  [(NSMutableArray *)providerNames addObject:namesCopy];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPTransitStorageAttribution;
  v4 = [(MSPTransitStorageAttribution *)&v8 description];
  dictionaryRepresentation = [(MSPTransitStorageAttribution *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  providerNames = self->_providerNames;
  if (providerNames)
  {
    [dictionary setObject:providerNames forKey:@"provider_names"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    dictionaryRepresentation = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"Unknown Fields"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_providerNames;
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

        PBDataWriterWriteStringField();
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
  if ([(MSPTransitStorageAttribution *)self providerNamesCount])
  {
    [toCopy clearProviderNames];
    providerNamesCount = [(MSPTransitStorageAttribution *)self providerNamesCount];
    if (providerNamesCount)
    {
      v5 = providerNamesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(MSPTransitStorageAttribution *)self providerNamesAtIndex:i];
        [toCopy addProviderNames:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_providerNames;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{zone, v13}];
        [v5 addProviderNames:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  objc_storeStrong(v5 + 1, self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    providerNames = self->_providerNames;
    if (providerNames | equalCopy[2])
    {
      v6 = [(NSMutableArray *)providerNames isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(from + 2);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(MSPTransitStorageAttribution *)self addProviderNames:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end