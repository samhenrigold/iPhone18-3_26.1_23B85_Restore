@interface NPKProtoProvisionHomeKeyPassForSerialNumbersRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addSerialNumbers:(id)numbers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoProvisionHomeKeyPassForSerialNumbersRequest

- (void)addSerialNumbers:(id)numbers
{
  numbersCopy = numbers;
  serialNumbers = self->_serialNumbers;
  v8 = numbersCopy;
  if (!serialNumbers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_serialNumbers;
    self->_serialNumbers = v6;

    numbersCopy = v8;
    serialNumbers = self->_serialNumbers;
  }

  [(NSMutableArray *)serialNumbers addObject:numbersCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoProvisionHomeKeyPassForSerialNumbersRequest;
  v4 = [(NPKProtoProvisionHomeKeyPassForSerialNumbersRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoProvisionHomeKeyPassForSerialNumbersRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  serialNumbers = self->_serialNumbers;
  if (serialNumbers)
  {
    [dictionary setObject:serialNumbers forKey:@"serialNumbers"];
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
  v5 = self->_serialNumbers;
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
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NPKProtoProvisionHomeKeyPassForSerialNumbersRequest *)self serialNumbersCount])
  {
    [toCopy clearSerialNumbers];
    serialNumbersCount = [(NPKProtoProvisionHomeKeyPassForSerialNumbersRequest *)self serialNumbersCount];
    if (serialNumbersCount)
    {
      v5 = serialNumbersCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoProvisionHomeKeyPassForSerialNumbersRequest *)self serialNumbersAtIndex:i];
        [toCopy addSerialNumbers:v7];
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
  v6 = self->_serialNumbers;
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
        [v5 addSerialNumbers:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    serialNumbers = self->_serialNumbers;
    if (serialNumbers | equalCopy[1])
    {
      v6 = [(NSMutableArray *)serialNumbers isEqual:?];
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
  v4 = *(from + 1);
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

        [(NPKProtoProvisionHomeKeyPassForSerialNumbersRequest *)self addSerialNumbers:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end