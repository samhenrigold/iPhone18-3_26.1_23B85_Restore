@interface NPKProtoGenerateISOEncryptionCertificateForSubCredentialIdResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAttestation:(id)attestation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoGenerateISOEncryptionCertificateForSubCredentialIdResponse

- (void)addAttestation:(id)attestation
{
  attestationCopy = attestation;
  attestations = self->_attestations;
  v8 = attestationCopy;
  if (!attestations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_attestations;
    self->_attestations = v6;

    attestationCopy = v8;
    attestations = self->_attestations;
  }

  [(NSMutableArray *)attestations addObject:attestationCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoGenerateISOEncryptionCertificateForSubCredentialIdResponse;
  v4 = [(NPKProtoGenerateISOEncryptionCertificateForSubCredentialIdResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoGenerateISOEncryptionCertificateForSubCredentialIdResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  attestations = self->_attestations;
  if (attestations)
  {
    [dictionary setObject:attestations forKey:@"attestation"];
  }

  authorization = self->_authorization;
  if (authorization)
  {
    [v4 setObject:authorization forKey:@"authorization"];
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
  v5 = self->_attestations;
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

  if (self->_authorization)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NPKProtoGenerateISOEncryptionCertificateForSubCredentialIdResponse *)self attestationsCount])
  {
    [toCopy clearAttestations];
    attestationsCount = [(NPKProtoGenerateISOEncryptionCertificateForSubCredentialIdResponse *)self attestationsCount];
    if (attestationsCount)
    {
      v5 = attestationsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoGenerateISOEncryptionCertificateForSubCredentialIdResponse *)self attestationAtIndex:i];
        [toCopy addAttestation:v7];
      }
    }
  }

  if (self->_authorization)
  {
    [toCopy setAuthorization:?];
  }

  v8 = toCopy;
  if (self->_errorData)
  {
    [toCopy setErrorData:?];
    v8 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_attestations;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v17 + 1) + 8 * v10) copyWithZone:{zone, v17}];
        [v5 addAttestation:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v12 = [(NSData *)self->_authorization copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(NSData *)self->_errorData copyWithZone:zone];
  v15 = v5[3];
  v5[3] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((attestations = self->_attestations, !(attestations | equalCopy[1])) || -[NSMutableArray isEqual:](attestations, "isEqual:")) && ((authorization = self->_authorization, !(authorization | equalCopy[2])) || -[NSData isEqual:](authorization, "isEqual:")))
  {
    errorData = self->_errorData;
    if (errorData | equalCopy[3])
    {
      v8 = [(NSData *)errorData isEqual:?];
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
  v3 = [(NSMutableArray *)self->_attestations hash];
  v4 = [(NSData *)self->_authorization hash]^ v3;
  return v4 ^ [(NSData *)self->_errorData hash];
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = fromCopy[1];
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

        [(NPKProtoGenerateISOEncryptionCertificateForSubCredentialIdResponse *)self addAttestation:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (fromCopy[2])
  {
    [(NPKProtoGenerateISOEncryptionCertificateForSubCredentialIdResponse *)self setAuthorization:?];
  }

  if (fromCopy[3])
  {
    [(NPKProtoGenerateISOEncryptionCertificateForSubCredentialIdResponse *)self setErrorData:?];
  }
}

@end