@interface ACProtobufCredentialItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDirtyProperties:(id)properties;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ACProtobufCredentialItem

- (void)addDirtyProperties:(id)properties
{
  propertiesCopy = properties;
  dirtyProperties = self->_dirtyProperties;
  v8 = propertiesCopy;
  if (!dirtyProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_dirtyProperties;
    self->_dirtyProperties = v6;

    propertiesCopy = v8;
    dirtyProperties = self->_dirtyProperties;
  }

  [(NSMutableArray *)dirtyProperties addObject:propertiesCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ACProtobufCredentialItem;
  v4 = [(ACProtobufCredentialItem *)&v8 description];
  dictionaryRepresentation = [(ACProtobufCredentialItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {
    [dictionary setObject:accountIdentifier forKey:@"accountIdentifier"];
  }

  expirationDate = self->_expirationDate;
  if (expirationDate)
  {
    dictionaryRepresentation = [(ACProtobufDate *)expirationDate dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"expirationDate"];
  }

  serviceName = self->_serviceName;
  if (serviceName)
  {
    [v4 setObject:serviceName forKey:@"serviceName"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isPersistent];
    [v4 setObject:v9 forKey:@"isPersistent"];
  }

  objectID = self->_objectID;
  if (objectID)
  {
    dictionaryRepresentation2 = [(ACProtobufURL *)objectID dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"objectID"];
  }

  dirtyProperties = self->_dirtyProperties;
  if (dirtyProperties)
  {
    [v4 setObject:dirtyProperties forKey:@"dirtyProperties"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  PBDataWriterWriteStringField();
  if (self->_expirationDate)
  {
    PBDataWriterWriteSubmessage();
  }

  PBDataWriterWriteStringField();
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_objectID)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_dirtyProperties;
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
  [toCopy setAccountIdentifier:self->_accountIdentifier];
  if (self->_expirationDate)
  {
    [toCopy setExpirationDate:?];
  }

  [toCopy setServiceName:self->_serviceName];
  if (*&self->_has)
  {
    toCopy[48] = self->_isPersistent;
    toCopy[52] |= 1u;
  }

  if (self->_objectID)
  {
    [toCopy setObjectID:?];
  }

  if ([(ACProtobufCredentialItem *)self dirtyPropertiesCount])
  {
    [toCopy clearDirtyProperties];
    dirtyPropertiesCount = [(ACProtobufCredentialItem *)self dirtyPropertiesCount];
    if (dirtyPropertiesCount)
    {
      v5 = dirtyPropertiesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ACProtobufCredentialItem *)self dirtyPropertiesAtIndex:i];
        [toCopy addDirtyProperties:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_accountIdentifier copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(ACProtobufDate *)self->_expirationDate copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_serviceName copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_isPersistent;
    *(v5 + 52) |= 1u;
  }

  v12 = [(ACProtobufURL *)self->_objectID copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_dirtyProperties;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v21 + 1) + 8 * v18) copyWithZone:{zone, v21}];
        [v5 addDirtyProperties:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)accountIdentifier isEqual:?])
    {
      goto LABEL_15;
    }
  }

  expirationDate = self->_expirationDate;
  if (expirationDate | *(equalCopy + 3))
  {
    if (![(ACProtobufDate *)expirationDate isEqual:?])
    {
      goto LABEL_15;
    }
  }

  serviceName = self->_serviceName;
  if (serviceName | *(equalCopy + 5))
  {
    if (![(NSString *)serviceName isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = *(equalCopy + 52);
  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0)
    {
      goto LABEL_15;
    }

    v8 = *(equalCopy + 48);
    if (self->_isPersistent)
    {
      if (*(equalCopy + 48))
      {
        goto LABEL_10;
      }

LABEL_15:
      v11 = 0;
      goto LABEL_16;
    }
  }

  if (v8)
  {
    goto LABEL_15;
  }

LABEL_10:
  objectID = self->_objectID;
  if (objectID | *(equalCopy + 4) && ![(ACProtobufURL *)objectID isEqual:?])
  {
    goto LABEL_15;
  }

  dirtyProperties = self->_dirtyProperties;
  if (dirtyProperties | *(equalCopy + 2))
  {
    v11 = [(NSMutableArray *)dirtyProperties isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_16:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_accountIdentifier hash];
  v4 = [(ACProtobufDate *)self->_expirationDate hash];
  v5 = [(NSString *)self->_serviceName hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_isPersistent;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 ^ v3 ^ v5 ^ v6;
  v8 = [(ACProtobufURL *)self->_objectID hash];
  return v7 ^ v8 ^ [(NSMutableArray *)self->_dirtyProperties hash];
}

- (void)mergeFrom:(id)from
{
  v19 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    [(ACProtobufCredentialItem *)self setAccountIdentifier:?];
  }

  expirationDate = self->_expirationDate;
  v6 = *(fromCopy + 3);
  if (expirationDate)
  {
    if (v6)
    {
      [(ACProtobufDate *)expirationDate mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ACProtobufCredentialItem *)self setExpirationDate:?];
  }

  if (*(fromCopy + 5))
  {
    [(ACProtobufCredentialItem *)self setServiceName:?];
  }

  if (*(fromCopy + 52))
  {
    self->_isPersistent = *(fromCopy + 48);
    *&self->_has |= 1u;
  }

  objectID = self->_objectID;
  v8 = *(fromCopy + 4);
  if (objectID)
  {
    if (v8)
    {
      [(ACProtobufURL *)objectID mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(ACProtobufCredentialItem *)self setObjectID:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = *(fromCopy + 2);
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

        [(ACProtobufCredentialItem *)self addDirtyProperties:*(*(&v14 + 1) + 8 * i), v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

@end