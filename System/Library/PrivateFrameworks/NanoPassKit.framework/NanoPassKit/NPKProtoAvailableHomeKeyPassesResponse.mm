@interface NPKProtoAvailableHomeKeyPassesResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addPassesData:(id)data;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoAvailableHomeKeyPassesResponse

- (void)addPassesData:(id)data
{
  dataCopy = data;
  passesDatas = self->_passesDatas;
  v8 = dataCopy;
  if (!passesDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_passesDatas;
    self->_passesDatas = v6;

    dataCopy = v8;
    passesDatas = self->_passesDatas;
  }

  [(NSMutableArray *)passesDatas addObject:dataCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoAvailableHomeKeyPassesResponse;
  v4 = [(NPKProtoAvailableHomeKeyPassesResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoAvailableHomeKeyPassesResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  passesDatas = self->_passesDatas;
  if (passesDatas)
  {
    [dictionary setObject:passesDatas forKey:@"passesData"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [v4 setObject:errorData forKey:@"errorData"];
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
  v5 = self->_passesDatas;
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

        PBDataWriterWriteDataField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NPKProtoAvailableHomeKeyPassesResponse *)self passesDatasCount])
  {
    [toCopy clearPassesDatas];
    passesDatasCount = [(NPKProtoAvailableHomeKeyPassesResponse *)self passesDatasCount];
    if (passesDatasCount)
    {
      v5 = passesDatasCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoAvailableHomeKeyPassesResponse *)self passesDataAtIndex:i];
        [toCopy addPassesData:v7];
      }
    }
  }

  if (self->_errorData)
  {
    [toCopy setErrorData:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_passesDatas;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) copyWithZone:{zone, v15}];
        [v5 addPassesData:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [(NSData *)self->_errorData copyWithZone:zone];
  v13 = v5[1];
  v5[1] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((passesDatas = self->_passesDatas, !(passesDatas | equalCopy[2])) || -[NSMutableArray isEqual:](passesDatas, "isEqual:")))
  {
    errorData = self->_errorData;
    if (errorData | equalCopy[1])
    {
      v7 = [(NSData *)errorData isEqual:?];
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
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = fromCopy[2];
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

        [(NPKProtoAvailableHomeKeyPassesResponse *)self addPassesData:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (fromCopy[1])
  {
    [(NPKProtoAvailableHomeKeyPassesResponse *)self setErrorData:?];
  }
}

@end