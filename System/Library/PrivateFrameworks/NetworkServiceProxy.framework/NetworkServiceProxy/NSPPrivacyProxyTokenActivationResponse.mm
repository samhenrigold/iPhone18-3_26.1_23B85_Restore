@interface NSPPrivacyProxyTokenActivationResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addActivatedTokenList:(id)list;
- (void)addAuxiliaryAuthArray:(id)array;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSPPrivacyProxyTokenActivationResponse

- (void)addActivatedTokenList:(id)list
{
  listCopy = list;
  activatedTokenLists = self->_activatedTokenLists;
  v8 = listCopy;
  if (!activatedTokenLists)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_activatedTokenLists;
    self->_activatedTokenLists = v6;

    listCopy = v8;
    activatedTokenLists = self->_activatedTokenLists;
  }

  [(NSMutableArray *)activatedTokenLists addObject:listCopy];
}

- (void)addAuxiliaryAuthArray:(id)array
{
  arrayCopy = array;
  auxiliaryAuthArrays = self->_auxiliaryAuthArrays;
  v8 = arrayCopy;
  if (!auxiliaryAuthArrays)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_auxiliaryAuthArrays;
    self->_auxiliaryAuthArrays = v6;

    arrayCopy = v8;
    auxiliaryAuthArrays = self->_auxiliaryAuthArrays;
  }

  [(NSMutableArray *)auxiliaryAuthArrays addObject:arrayCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyTokenActivationResponse;
  v4 = [(NSPPrivacyProxyTokenActivationResponse *)&v8 description];
  dictionaryRepresentation = [(NSPPrivacyProxyTokenActivationResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_tokenExpiryTimestamp];
    [dictionary setObject:v4 forKey:@"tokenExpiryTimestamp"];
  }

  activatedTokenLists = self->_activatedTokenLists;
  if (activatedTokenLists)
  {
    [dictionary setObject:activatedTokenLists forKey:@"activatedTokenList"];
  }

  if ([(NSMutableArray *)self->_auxiliaryAuthArrays count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_auxiliaryAuthArrays, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = self->_auxiliaryAuthArrays;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"auxiliaryAuthArray"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_activatedTokenLists;
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

        PBDataWriterWriteDataField();
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
  v10 = self->_auxiliaryAuthArrays;
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

        PBDataWriterWriteSubmessage();
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
    toCopy[1] = self->_tokenExpiryTimestamp;
    *(toCopy + 32) |= 1u;
  }

  v13 = toCopy;
  if ([(NSPPrivacyProxyTokenActivationResponse *)self activatedTokenListsCount])
  {
    [v13 clearActivatedTokenLists];
    activatedTokenListsCount = [(NSPPrivacyProxyTokenActivationResponse *)self activatedTokenListsCount];
    if (activatedTokenListsCount)
    {
      v6 = activatedTokenListsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NSPPrivacyProxyTokenActivationResponse *)self activatedTokenListAtIndex:i];
        [v13 addActivatedTokenList:v8];
      }
    }
  }

  if ([(NSPPrivacyProxyTokenActivationResponse *)self auxiliaryAuthArraysCount])
  {
    [v13 clearAuxiliaryAuthArrays];
    auxiliaryAuthArraysCount = [(NSPPrivacyProxyTokenActivationResponse *)self auxiliaryAuthArraysCount];
    if (auxiliaryAuthArraysCount)
    {
      v10 = auxiliaryAuthArraysCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(NSPPrivacyProxyTokenActivationResponse *)self auxiliaryAuthArrayAtIndex:j];
        [v13 addAuxiliaryAuthArray:v12];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_tokenExpiryTimestamp;
    *(v5 + 32) |= 1u;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_activatedTokenLists;
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
        [v6 addActivatedTokenList:v12];

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
  v13 = self->_auxiliaryAuthArrays;
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
        [v6 addAuxiliaryAuthArray:v18];

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
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_tokenExpiryTimestamp != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  activatedTokenLists = self->_activatedTokenLists;
  if (activatedTokenLists | *(equalCopy + 2) && ![(NSMutableArray *)activatedTokenLists isEqual:?])
  {
    goto LABEL_11;
  }

  auxiliaryAuthArrays = self->_auxiliaryAuthArrays;
  if (auxiliaryAuthArrays | *(equalCopy + 3))
  {
    v7 = [(NSMutableArray *)auxiliaryAuthArrays isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_12:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_tokenExpiryTimestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_activatedTokenLists hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_auxiliaryAuthArrays hash];
}

- (void)mergeFrom:(id)from
{
  v26 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 32))
  {
    self->_tokenExpiryTimestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = *(fromCopy + 2);
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

        [(NSPPrivacyProxyTokenActivationResponse *)self addActivatedTokenList:*(*(&v20 + 1) + 8 * v10++)];
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
  v11 = v5[3];
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

        [(NSPPrivacyProxyTokenActivationResponse *)self addAuxiliaryAuthArray:*(*(&v16 + 1) + 8 * v15++), v16];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

@end