@interface NSPPrivacyProxyAuthenticationInfo
- (BOOL)isEqual:(id)equal;
- (id)authTypeAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAuthType:(id)type;
- (int)authType;
- (unint64_t)hash;
- (unsigned)accessTokenTypesAtIndex:(unint64_t)index;
- (void)addAccessTokenBlockedIssuers:(id)issuers;
- (void)addAccessTokenKnownOrigins:(id)origins;
- (void)addNonDefaultAttesters:(id)attesters;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSPPrivacyProxyAuthenticationInfo

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = NSPPrivacyProxyAuthenticationInfo;
  [(NSPPrivacyProxyAuthenticationInfo *)&v3 dealloc];
}

- (int)authType
{
  if (*&self->_has)
  {
    return self->_authType;
  }

  else
  {
    return 3;
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
    v4 = off_1E7A308C8[string];
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

- (unsigned)accessTokenTypesAtIndex:(unint64_t)index
{
  p_accessTokenTypes = &self->_accessTokenTypes;
  count = self->_accessTokenTypes.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_accessTokenTypes->list[index];
}

- (void)addAccessTokenKnownOrigins:(id)origins
{
  originsCopy = origins;
  accessTokenKnownOrigins = self->_accessTokenKnownOrigins;
  v8 = originsCopy;
  if (!accessTokenKnownOrigins)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_accessTokenKnownOrigins;
    self->_accessTokenKnownOrigins = v6;

    originsCopy = v8;
    accessTokenKnownOrigins = self->_accessTokenKnownOrigins;
  }

  [(NSMutableArray *)accessTokenKnownOrigins addObject:originsCopy];
}

- (void)addAccessTokenBlockedIssuers:(id)issuers
{
  issuersCopy = issuers;
  accessTokenBlockedIssuers = self->_accessTokenBlockedIssuers;
  v8 = issuersCopy;
  if (!accessTokenBlockedIssuers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_accessTokenBlockedIssuers;
    self->_accessTokenBlockedIssuers = v6;

    issuersCopy = v8;
    accessTokenBlockedIssuers = self->_accessTokenBlockedIssuers;
  }

  [(NSMutableArray *)accessTokenBlockedIssuers addObject:issuersCopy];
}

- (void)addNonDefaultAttesters:(id)attesters
{
  attestersCopy = attesters;
  nonDefaultAttesters = self->_nonDefaultAttesters;
  v8 = attestersCopy;
  if (!nonDefaultAttesters)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_nonDefaultAttesters;
    self->_nonDefaultAttesters = v6;

    attestersCopy = v8;
    nonDefaultAttesters = self->_nonDefaultAttesters;
  }

  [(NSMutableArray *)nonDefaultAttesters addObject:attestersCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyAuthenticationInfo;
  v4 = [(NSPPrivacyProxyAuthenticationInfo *)&v8 description];
  dictionaryRepresentation = [(NSPPrivacyProxyAuthenticationInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
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
      v5 = off_1E7A308C8[authType];
    }

    [dictionary setObject:v5 forKey:@"authType"];
  }

  authURL = self->_authURL;
  if (authURL)
  {
    [dictionary setObject:authURL forKey:@"authURL"];
  }

  accessTokenURL = self->_accessTokenURL;
  if (accessTokenURL)
  {
    [dictionary setObject:accessTokenURL forKey:@"accessTokenURL"];
  }

  v8 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v8 forKey:@"accessTokenTypes"];

  accessTokenKnownOrigins = self->_accessTokenKnownOrigins;
  if (accessTokenKnownOrigins)
  {
    [dictionary setObject:accessTokenKnownOrigins forKey:@"accessTokenKnownOrigins"];
  }

  accessTokenBlockedIssuers = self->_accessTokenBlockedIssuers;
  if (accessTokenBlockedIssuers)
  {
    [dictionary setObject:accessTokenBlockedIssuers forKey:@"accessTokenBlockedIssuers"];
  }

  if ([(NSMutableArray *)self->_nonDefaultAttesters count])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_nonDefaultAttesters, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = self->_nonDefaultAttesters;
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

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"nonDefaultAttesters"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v36 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  if (!self->_authURL)
  {
    __assert_rtn("[NSPPrivacyProxyAuthenticationInfo writeTo:]", "NSPPrivacyProxyAuthenticationInfo.m", 341, "nil != self->_authURL");
  }

  PBDataWriterWriteStringField();
  if (self->_accessTokenURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_accessTokenTypes.count)
  {
    v5 = 0;
    do
    {
      PBDataWriterWriteUint32Field();
      ++v5;
    }

    while (v5 < self->_accessTokenTypes.count);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = self->_accessTokenKnownOrigins;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v8);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = self->_accessTokenBlockedIssuers;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v13);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = self->_nonDefaultAttesters;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        PBDataWriterWriteSubmessage();
        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v18);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[14] = self->_authType;
    *(toCopy + 80) |= 1u;
  }

  v20 = toCopy;
  [toCopy setAuthURL:self->_authURL];
  if (self->_accessTokenURL)
  {
    [v20 setAccessTokenURL:?];
  }

  if ([(NSPPrivacyProxyAuthenticationInfo *)self accessTokenTypesCount])
  {
    [v20 clearAccessTokenTypes];
    accessTokenTypesCount = [(NSPPrivacyProxyAuthenticationInfo *)self accessTokenTypesCount];
    if (accessTokenTypesCount)
    {
      v6 = accessTokenTypesCount;
      for (i = 0; i != v6; ++i)
      {
        [v20 addAccessTokenTypes:{-[NSPPrivacyProxyAuthenticationInfo accessTokenTypesAtIndex:](self, "accessTokenTypesAtIndex:", i)}];
      }
    }
  }

  if ([(NSPPrivacyProxyAuthenticationInfo *)self accessTokenKnownOriginsCount])
  {
    [v20 clearAccessTokenKnownOrigins];
    accessTokenKnownOriginsCount = [(NSPPrivacyProxyAuthenticationInfo *)self accessTokenKnownOriginsCount];
    if (accessTokenKnownOriginsCount)
    {
      v9 = accessTokenKnownOriginsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NSPPrivacyProxyAuthenticationInfo *)self accessTokenKnownOriginsAtIndex:j];
        [v20 addAccessTokenKnownOrigins:v11];
      }
    }
  }

  if ([(NSPPrivacyProxyAuthenticationInfo *)self accessTokenBlockedIssuersCount])
  {
    [v20 clearAccessTokenBlockedIssuers];
    accessTokenBlockedIssuersCount = [(NSPPrivacyProxyAuthenticationInfo *)self accessTokenBlockedIssuersCount];
    if (accessTokenBlockedIssuersCount)
    {
      v13 = accessTokenBlockedIssuersCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(NSPPrivacyProxyAuthenticationInfo *)self accessTokenBlockedIssuersAtIndex:k];
        [v20 addAccessTokenBlockedIssuers:v15];
      }
    }
  }

  if ([(NSPPrivacyProxyAuthenticationInfo *)self nonDefaultAttestersCount])
  {
    [v20 clearNonDefaultAttesters];
    nonDefaultAttestersCount = [(NSPPrivacyProxyAuthenticationInfo *)self nonDefaultAttestersCount];
    if (nonDefaultAttestersCount)
    {
      v17 = nonDefaultAttestersCount;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(NSPPrivacyProxyAuthenticationInfo *)self nonDefaultAttestersAtIndex:m];
        [v20 addNonDefaultAttesters:v19];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 56) = self->_authType;
    *(v5 + 80) |= 1u;
  }

  v7 = [(NSString *)self->_authURL copyWithZone:zone];
  v8 = v6[8];
  v6[8] = v7;

  v9 = [(NSString *)self->_accessTokenURL copyWithZone:zone];
  v10 = v6[6];
  v6[6] = v9;

  PBRepeatedUInt32Copy();
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = self->_accessTokenKnownOrigins;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v38 + 1) + 8 * i) copyWithZone:zone];
        [v6 addAccessTokenKnownOrigins:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v13);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = self->_accessTokenBlockedIssuers;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v34 + 1) + 8 * j) copyWithZone:zone];
        [v6 addAccessTokenBlockedIssuers:v22];
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v19);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = self->_nonDefaultAttesters;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v31;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v30 + 1) + 8 * k) copyWithZone:{zone, v30}];
        [v6 addNonDefaultAttesters:v28];
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v25);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 80) & 1) == 0 || self->_authType != *(equalCopy + 14))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 80))
  {
LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  authURL = self->_authURL;
  if (authURL | *(equalCopy + 8) && ![(NSString *)authURL isEqual:?])
  {
    goto LABEL_18;
  }

  accessTokenURL = self->_accessTokenURL;
  if (accessTokenURL | *(equalCopy + 6))
  {
    if (![(NSString *)accessTokenURL isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_18;
  }

  accessTokenKnownOrigins = self->_accessTokenKnownOrigins;
  if (accessTokenKnownOrigins | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)accessTokenKnownOrigins isEqual:?])
    {
      goto LABEL_18;
    }
  }

  accessTokenBlockedIssuers = self->_accessTokenBlockedIssuers;
  if (accessTokenBlockedIssuers | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)accessTokenBlockedIssuers isEqual:?])
    {
      goto LABEL_18;
    }
  }

  nonDefaultAttesters = self->_nonDefaultAttesters;
  if (nonDefaultAttesters | *(equalCopy + 9))
  {
    v10 = [(NSMutableArray *)nonDefaultAttesters isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_19:

  return v10;
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

  v4 = [(NSString *)self->_authURL hash]^ v3;
  v5 = [(NSString *)self->_accessTokenURL hash];
  v6 = v4 ^ v5 ^ PBRepeatedUInt32Hash();
  v7 = [(NSMutableArray *)self->_accessTokenKnownOrigins hash];
  v8 = v7 ^ [(NSMutableArray *)self->_accessTokenBlockedIssuers hash];
  return v6 ^ v8 ^ [(NSMutableArray *)self->_nonDefaultAttesters hash];
}

- (void)mergeFrom:(id)from
{
  v39 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[20])
  {
    self->_authType = fromCopy[14];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 8))
  {
    [(NSPPrivacyProxyAuthenticationInfo *)self setAuthURL:?];
  }

  if (*(v5 + 6))
  {
    [(NSPPrivacyProxyAuthenticationInfo *)self setAccessTokenURL:?];
  }

  accessTokenTypesCount = [v5 accessTokenTypesCount];
  if (accessTokenTypesCount)
  {
    v7 = accessTokenTypesCount;
    for (i = 0; i != v7; ++i)
    {
      -[NSPPrivacyProxyAuthenticationInfo addAccessTokenTypes:](self, "addAccessTokenTypes:", [v5 accessTokenTypesAtIndex:i]);
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = *(v5 + 5);
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(NSPPrivacyProxyAuthenticationInfo *)self addAccessTokenKnownOrigins:*(*(&v32 + 1) + 8 * j)];
      }

      v11 = [v9 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v11);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = *(v5 + 4);
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      for (k = 0; k != v16; ++k)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(NSPPrivacyProxyAuthenticationInfo *)self addAccessTokenBlockedIssuers:*(*(&v28 + 1) + 8 * k)];
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v16);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v19 = *(v5 + 9);
  v20 = [v19 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v25;
    do
    {
      for (m = 0; m != v21; ++m)
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(NSPPrivacyProxyAuthenticationInfo *)self addNonDefaultAttesters:*(*(&v24 + 1) + 8 * m), v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v21);
  }
}

@end