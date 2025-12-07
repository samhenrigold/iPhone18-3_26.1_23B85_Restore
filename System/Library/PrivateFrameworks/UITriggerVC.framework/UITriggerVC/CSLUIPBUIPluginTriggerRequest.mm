@interface CSLUIPBUIPluginTriggerRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDictionary:(id)dictionary;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSLUIPBUIPluginTriggerRequest

- (void)addDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  dictionarys = self->_dictionarys;
  v8 = dictionaryCopy;
  if (!dictionarys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_dictionarys;
    self->_dictionarys = v6;

    dictionaryCopy = v8;
    dictionarys = self->_dictionarys;
  }

  [(NSMutableArray *)dictionarys addObject:dictionaryCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CSLUIPBUIPluginTriggerRequest;
  v4 = [(CSLUIPBUIPluginTriggerRequest *)&v8 description];
  dictionaryRepresentation = [(CSLUIPBUIPluginTriggerRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  if ([(NSMutableArray *)self->_dictionarys count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_dictionarys, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_dictionarys;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"dictionary"];
  }

  if (*&self->_has)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInt:self->_reason];
    [v4 setObject:v13 forKey:@"reason"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_dictionarys;
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

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_name)
  {
    [toCopy setName:?];
  }

  if ([(CSLUIPBUIPluginTriggerRequest *)self dictionarysCount])
  {
    [toCopy clearDictionarys];
    dictionarysCount = [(CSLUIPBUIPluginTriggerRequest *)self dictionarysCount];
    if (dictionarysCount)
    {
      v5 = dictionarysCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(CSLUIPBUIPluginTriggerRequest *)self dictionaryAtIndex:i];
        [toCopy addDictionary:v7];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 6) = self->_reason;
    *(toCopy + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_dictionarys;
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
        [v5 addDictionary:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if (*&self->_has)
  {
    *(v5 + 24) = self->_reason;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  name = self->_name;
  if (name | *(equalCopy + 2))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_10;
    }
  }

  dictionarys = self->_dictionarys;
  if (dictionarys | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)dictionarys isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) != 0 && self->_reason == *(equalCopy + 6))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSMutableArray *)self->_dictionarys hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_reason;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(CSLUIPBUIPluginTriggerRequest *)self setName:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 1);
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

        [(CSLUIPBUIPluginTriggerRequest *)self addDictionary:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 28))
  {
    self->_reason = *(fromCopy + 6);
    *&self->_has |= 1u;
  }
}

@end