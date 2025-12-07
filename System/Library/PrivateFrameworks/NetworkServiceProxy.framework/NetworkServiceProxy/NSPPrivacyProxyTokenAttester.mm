@interface NSPPrivacyProxyTokenAttester
- (BOOL)isEqual:(id)equal;
- (id)authTypeAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAuthType:(id)type;
- (int)authType;
- (unint64_t)hash;
- (void)addAssociatedIssuers:(id)issuers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSPPrivacyProxyTokenAttester

- (int)authType
{
  if (*&self->_has)
  {
    return self->_authType;
  }

  else
  {
    return 0;
  }
}

- (id)authTypeAsString:(int)string
{
  if (string >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E7A31060[string];
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

  else if ([typeCopy isEqualToString:@"BAA_ANISETTE"])
  {
    v4 = 3;
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

- (void)addAssociatedIssuers:(id)issuers
{
  issuersCopy = issuers;
  associatedIssuers = self->_associatedIssuers;
  v8 = issuersCopy;
  if (!associatedIssuers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_associatedIssuers;
    self->_associatedIssuers = v6;

    issuersCopy = v8;
    associatedIssuers = self->_associatedIssuers;
  }

  [(NSMutableArray *)associatedIssuers addObject:issuersCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyTokenAttester;
  v4 = [(NSPPrivacyProxyTokenAttester *)&v8 description];
  dictionaryRepresentation = [(NSPPrivacyProxyTokenAttester *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    authType = self->_authType;
    if (authType >= 5)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_authType];
    }

    else
    {
      v5 = off_1E7A31060[authType];
    }

    [dictionary setObject:v5 forKey:@"authType"];
  }

  attesterURL = self->_attesterURL;
  if (attesterURL)
  {
    [dictionary setObject:attesterURL forKey:@"attesterURL"];
  }

  if ([(NSMutableArray *)self->_associatedIssuers count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_associatedIssuers, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->_associatedIssuers;
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

    [dictionary setObject:v7 forKey:@"associatedIssuers"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  if (!self->_attesterURL)
  {
    __assert_rtn("[NSPPrivacyProxyTokenAttester writeTo:]", "NSPPrivacyProxyTokenAttester.m", 184, "nil != self->_attesterURL");
  }

  PBDataWriterWriteStringField();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_associatedIssuers;
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
  if (*&self->_has)
  {
    toCopy[6] = self->_authType;
    *(toCopy + 28) |= 1u;
  }

  v9 = toCopy;
  [toCopy setAttesterURL:self->_attesterURL];
  if ([(NSPPrivacyProxyTokenAttester *)self associatedIssuersCount])
  {
    [v9 clearAssociatedIssuers];
    associatedIssuersCount = [(NSPPrivacyProxyTokenAttester *)self associatedIssuersCount];
    if (associatedIssuersCount)
    {
      v6 = associatedIssuersCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NSPPrivacyProxyTokenAttester *)self associatedIssuersAtIndex:i];
        [v9 addAssociatedIssuers:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_authType;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_attesterURL copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_associatedIssuers;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * i) copyWithZone:{zone, v16}];
        [v6 addAssociatedIssuers:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
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
    if ((*(equalCopy + 28) & 1) == 0 || self->_authType != *(equalCopy + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  attesterURL = self->_attesterURL;
  if (attesterURL | *(equalCopy + 2) && ![(NSString *)attesterURL isEqual:?])
  {
    goto LABEL_11;
  }

  associatedIssuers = self->_associatedIssuers;
  if (associatedIssuers | *(equalCopy + 1))
  {
    v7 = [(NSMutableArray *)associatedIssuers isEqual:?];
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
    v3 = 2654435761 * self->_authType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_attesterURL hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_associatedIssuers hash];
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 28))
  {
    self->_authType = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(NSPPrivacyProxyTokenAttester *)self setAttesterURL:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5[1];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NSPPrivacyProxyTokenAttester *)self addAssociatedIssuers:*(*(&v11 + 1) + 8 * i), v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end