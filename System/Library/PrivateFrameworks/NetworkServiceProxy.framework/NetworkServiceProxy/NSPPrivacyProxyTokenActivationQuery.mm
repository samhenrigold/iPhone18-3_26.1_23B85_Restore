@interface NSPPrivacyProxyTokenActivationQuery
- (BOOL)isEqual:(id)equal;
- (id)authTypeAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAuthType:(id)type;
- (unint64_t)hash;
- (void)addAuxiliaryAuthArray:(id)array;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSPPrivacyProxyTokenActivationQuery

- (id)authTypeAsString:(int)string
{
  if (string < 5 && ((0x17u >> string) & 1) != 0)
  {
    v4 = off_1E7A30730[string];
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

- (int)StringAsAuthType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"BAA"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ANISETTE"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"TOKEN"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
  v8.super_class = NSPPrivacyProxyTokenActivationQuery;
  v4 = [(NSPPrivacyProxyTokenActivationQuery *)&v8 description];
  dictionaryRepresentation = [(NSPPrivacyProxyTokenActivationQuery *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  authType = self->_authType;
  if (authType < 5 && ((0x17u >> authType) & 1) != 0)
  {
    v5 = off_1E7A30730[authType];
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_authType];
  }

  [dictionary setObject:v5 forKey:@"authType"];

  baaParameters = self->_baaParameters;
  if (baaParameters)
  {
    dictionaryRepresentation = [(NSPPrivacyProxyBAAValidation *)baaParameters dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"baaParameters"];
  }

  tokenInfo = self->_tokenInfo;
  if (tokenInfo)
  {
    dictionaryRepresentation2 = [(NSPPrivacyProxyTokenInfo *)tokenInfo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"tokenInfo"];
  }

  authInfo = self->_authInfo;
  if (authInfo)
  {
    [dictionary setObject:authInfo forKey:@"authInfo"];
  }

  if ([(NSMutableArray *)self->_auxiliaryAuthArrays count])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_auxiliaryAuthArrays, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = self->_auxiliaryAuthArrays;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation3 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation3];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"auxiliaryAuthArray"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  PBDataWriterWriteInt32Field();
  if (self->_baaParameters)
  {
    PBDataWriterWriteSubmessage();
  }

  if (!self->_tokenInfo)
  {
    __assert_rtn("[NSPPrivacyProxyTokenActivationQuery writeTo:]", "NSPPrivacyProxyTokenActivationQuery.m", 222, "self->_tokenInfo != nil");
  }

  PBDataWriterWriteSubmessage();
  if (self->_authInfo)
  {
    PBDataWriterWriteDataField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_auxiliaryAuthArrays;
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
  toCopy[4] = self->_authType;
  v9 = toCopy;
  if (self->_baaParameters)
  {
    [toCopy setBaaParameters:?];
    toCopy = v9;
  }

  [toCopy setTokenInfo:self->_tokenInfo];
  if (self->_authInfo)
  {
    [v9 setAuthInfo:?];
  }

  if ([(NSPPrivacyProxyTokenActivationQuery *)self auxiliaryAuthArraysCount])
  {
    [v9 clearAuxiliaryAuthArrays];
    auxiliaryAuthArraysCount = [(NSPPrivacyProxyTokenActivationQuery *)self auxiliaryAuthArraysCount];
    if (auxiliaryAuthArraysCount)
    {
      v6 = auxiliaryAuthArraysCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NSPPrivacyProxyTokenActivationQuery *)self auxiliaryAuthArrayAtIndex:i];
        [v9 addAuxiliaryAuthArray:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_authType;
  v6 = [(NSPPrivacyProxyBAAValidation *)self->_baaParameters copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSPPrivacyProxyTokenInfo *)self->_tokenInfo copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSData *)self->_authInfo copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_auxiliaryAuthArrays;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * v16) copyWithZone:{zone, v19}];
        [v5 addAuxiliaryAuthArray:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_authType == *(equalCopy + 4) && ((baaParameters = self->_baaParameters, !(baaParameters | equalCopy[4])) || -[NSPPrivacyProxyBAAValidation isEqual:](baaParameters, "isEqual:")) && ((tokenInfo = self->_tokenInfo, !(tokenInfo | equalCopy[5])) || -[NSPPrivacyProxyTokenInfo isEqual:](tokenInfo, "isEqual:")) && ((authInfo = self->_authInfo, !(authInfo | equalCopy[1])) || -[NSData isEqual:](authInfo, "isEqual:")))
  {
    auxiliaryAuthArrays = self->_auxiliaryAuthArrays;
    if (auxiliaryAuthArrays | equalCopy[3])
    {
      v9 = [(NSMutableArray *)auxiliaryAuthArrays isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_authType;
  v4 = [(NSPPrivacyProxyBAAValidation *)self->_baaParameters hash];
  v5 = v4 ^ [(NSPPrivacyProxyTokenInfo *)self->_tokenInfo hash];
  v6 = v5 ^ [(NSData *)self->_authInfo hash];
  return v6 ^ [(NSMutableArray *)self->_auxiliaryAuthArrays hash]^ v3;
}

- (void)mergeFrom:(id)from
{
  v19 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  self->_authType = *(fromCopy + 4);
  baaParameters = self->_baaParameters;
  v6 = *(fromCopy + 4);
  if (baaParameters)
  {
    if (v6)
    {
      [(NSPPrivacyProxyBAAValidation *)baaParameters mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(NSPPrivacyProxyTokenActivationQuery *)self setBaaParameters:?];
  }

  tokenInfo = self->_tokenInfo;
  v8 = *(fromCopy + 5);
  if (tokenInfo)
  {
    if (v8)
    {
      [(NSPPrivacyProxyTokenInfo *)tokenInfo mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(NSPPrivacyProxyTokenActivationQuery *)self setTokenInfo:?];
  }

  if (*(fromCopy + 1))
  {
    [(NSPPrivacyProxyTokenActivationQuery *)self setAuthInfo:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = *(fromCopy + 3);
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(NSPPrivacyProxyTokenActivationQuery *)self addAuxiliaryAuthArray:*(*(&v14 + 1) + 8 * i), v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

@end