@interface NPKIDVRemoteDeviceProtoGenerateKeyRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addConfiguredPartitionsIdentifiers:(id)identifiers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKIDVRemoteDeviceProtoGenerateKeyRequest

- (void)addConfiguredPartitionsIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  configuredPartitionsIdentifiers = self->_configuredPartitionsIdentifiers;
  v8 = identifiersCopy;
  if (!configuredPartitionsIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_configuredPartitionsIdentifiers;
    self->_configuredPartitionsIdentifiers = v6;

    identifiersCopy = v8;
    configuredPartitionsIdentifiers = self->_configuredPartitionsIdentifiers;
  }

  [(NSMutableArray *)configuredPartitionsIdentifiers addObject:identifiersCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKIDVRemoteDeviceProtoGenerateKeyRequest;
  v4 = [(NPKIDVRemoteDeviceProtoGenerateKeyRequest *)&v8 description];
  dictionaryRepresentation = [(NPKIDVRemoteDeviceProtoGenerateKeyRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  credentialIdentifier = self->_credentialIdentifier;
  if (credentialIdentifier)
  {
    [dictionary setObject:credentialIdentifier forKey:@"credentialIdentifier"];
  }

  keyTypeString = self->_keyTypeString;
  if (keyTypeString)
  {
    [v4 setObject:keyTypeString forKey:@"keyTypeString"];
  }

  configuredPartitionsIdentifiers = self->_configuredPartitionsIdentifiers;
  if (configuredPartitionsIdentifiers)
  {
    [v4 setObject:configuredPartitionsIdentifiers forKey:@"configuredPartitionsIdentifiers"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_credentialIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_keyTypeString)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_configuredPartitionsIdentifiers;
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
  if (self->_credentialIdentifier)
  {
    [toCopy setCredentialIdentifier:?];
  }

  if (self->_keyTypeString)
  {
    [toCopy setKeyTypeString:?];
  }

  if ([(NPKIDVRemoteDeviceProtoGenerateKeyRequest *)self configuredPartitionsIdentifiersCount])
  {
    [toCopy clearConfiguredPartitionsIdentifiers];
    configuredPartitionsIdentifiersCount = [(NPKIDVRemoteDeviceProtoGenerateKeyRequest *)self configuredPartitionsIdentifiersCount];
    if (configuredPartitionsIdentifiersCount)
    {
      v5 = configuredPartitionsIdentifiersCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKIDVRemoteDeviceProtoGenerateKeyRequest *)self configuredPartitionsIdentifiersAtIndex:i];
        [toCopy addConfiguredPartitionsIdentifiers:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_credentialIdentifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_keyTypeString copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_configuredPartitionsIdentifiers;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * v14) copyWithZone:{zone, v17}];
        [v5 addConfiguredPartitionsIdentifiers:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((credentialIdentifier = self->_credentialIdentifier, !(credentialIdentifier | equalCopy[2])) || -[NSString isEqual:](credentialIdentifier, "isEqual:")) && ((keyTypeString = self->_keyTypeString, !(keyTypeString | equalCopy[3])) || -[NSString isEqual:](keyTypeString, "isEqual:")))
  {
    configuredPartitionsIdentifiers = self->_configuredPartitionsIdentifiers;
    if (configuredPartitionsIdentifiers | equalCopy[1])
    {
      v8 = [(NSMutableArray *)configuredPartitionsIdentifiers isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_credentialIdentifier hash];
  v4 = [(NSString *)self->_keyTypeString hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_configuredPartitionsIdentifiers hash];
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(NPKIDVRemoteDeviceProtoGenerateKeyRequest *)self setCredentialIdentifier:?];
  }

  if (*(fromCopy + 3))
  {
    [(NPKIDVRemoteDeviceProtoGenerateKeyRequest *)self setKeyTypeString:?];
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

        [(NPKIDVRemoteDeviceProtoGenerateKeyRequest *)self addConfiguredPartitionsIdentifiers:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end