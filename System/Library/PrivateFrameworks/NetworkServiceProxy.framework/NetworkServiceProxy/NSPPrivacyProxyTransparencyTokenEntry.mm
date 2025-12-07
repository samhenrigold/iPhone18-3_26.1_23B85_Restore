@interface NSPPrivacyProxyTransparencyTokenEntry
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTokenKeys:(id)keys;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSPPrivacyProxyTransparencyTokenEntry

- (void)addTokenKeys:(id)keys
{
  keysCopy = keys;
  tokenKeys = self->_tokenKeys;
  v8 = keysCopy;
  if (!tokenKeys)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_tokenKeys;
    self->_tokenKeys = v6;

    keysCopy = v8;
    tokenKeys = self->_tokenKeys;
  }

  [(NSMutableArray *)tokenKeys addObject:keysCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyTransparencyTokenEntry;
  v4 = [(NSPPrivacyProxyTransparencyTokenEntry *)&v8 description];
  dictionaryRepresentation = [(NSPPrivacyProxyTransparencyTokenEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_configurationDeliveryStart];
  [dictionary setObject:v4 forKey:@"configurationDeliveryStart"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_configurationDeliveryEnd];
  [dictionary setObject:v5 forKey:@"configurationDeliveryEnd"];

  issuerName = self->_issuerName;
  if (issuerName)
  {
    [dictionary setObject:issuerName forKey:@"issuerName"];
  }

  if ([(NSMutableArray *)self->_tokenKeys count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_tokenKeys, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->_tokenKeys;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"tokenKeys"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  PBDataWriterWriteUint64Field();
  PBDataWriterWriteUint64Field();
  if (!self->_issuerName)
  {
    __assert_rtn("[NSPPrivacyProxyTransparencyTokenEntry writeTo:]", "NSPPrivacyProxyTransparencyTokenEntry.m", 163, "nil != self->_issuerName");
  }

  PBDataWriterWriteStringField();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_tokenKeys;
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
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[2] = self->_configurationDeliveryStart;
  toCopy[1] = self->_configurationDeliveryEnd;
  v9 = toCopy;
  [toCopy setIssuerName:self->_issuerName];
  if ([(NSPPrivacyProxyTransparencyTokenEntry *)self tokenKeysCount])
  {
    [v9 clearTokenKeys];
    tokenKeysCount = [(NSPPrivacyProxyTransparencyTokenEntry *)self tokenKeysCount];
    if (tokenKeysCount)
    {
      v6 = tokenKeysCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NSPPrivacyProxyTransparencyTokenEntry *)self tokenKeysAtIndex:i];
        [v9 addTokenKeys:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[2] = self->_configurationDeliveryStart;
  v5[1] = self->_configurationDeliveryEnd;
  v6 = [(NSString *)self->_issuerName copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_tokenKeys;
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
        [v5 addTokenKeys:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_configurationDeliveryStart == equalCopy[2] && self->_configurationDeliveryEnd == equalCopy[1] && ((issuerName = self->_issuerName, !(issuerName | equalCopy[3])) || -[NSString isEqual:](issuerName, "isEqual:")))
  {
    tokenKeys = self->_tokenKeys;
    if (tokenKeys | equalCopy[4])
    {
      v7 = [(NSMutableArray *)tokenKeys isEqual:?];
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

- (unint64_t)hash
{
  v3 = (2654435761u * self->_configurationDeliveryEnd) ^ (2654435761u * self->_configurationDeliveryStart);
  v4 = [(NSString *)self->_issuerName hash];
  return v3 ^ v4 ^ [(NSMutableArray *)self->_tokenKeys hash];
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  self->_configurationDeliveryStart = *(fromCopy + 2);
  self->_configurationDeliveryEnd = *(fromCopy + 1);
  if (*(fromCopy + 3))
  {
    [(NSPPrivacyProxyTransparencyTokenEntry *)self setIssuerName:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 4);
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

        [(NSPPrivacyProxyTransparencyTokenEntry *)self addTokenKeys:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end