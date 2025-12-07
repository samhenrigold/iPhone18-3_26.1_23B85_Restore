@interface LegacySigningKeyPrivate
- (LegacySigningKeyPrivate)init;
- (LegacySigningKeyPrivate)initWithData:(id)data error:(id *)error;
- (id)dataRepresentation;
- (id)publicKey;
- (id)signData:(id)data error:(id *)error;
@end

@implementation LegacySigningKeyPrivate

- (id)publicKey
{
  v2 = SecKeyCopyPublicKey(self->_secKeyRef);
  v3 = SecKeyCopyExternalRepresentation(v2, 0);
  v4 = [[LegacySigningKeyPublic alloc] initWithData:v3 error:0];

  return v4;
}

- (LegacySigningKeyPrivate)init
{
  v13[4] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = LegacySigningKeyPrivate;
  v2 = [(LegacySigningKeyPrivate *)&v11 init];
  v3 = *MEMORY[0x277CDC040];
  v4 = *MEMORY[0x277CDBFE0];
  v12[0] = *MEMORY[0x277CDC028];
  v12[1] = v4;
  v5 = *MEMORY[0x277CDBFF0];
  v13[0] = v3;
  v13[1] = v5;
  v6 = *MEMORY[0x277CDBFD0];
  v12[2] = *MEMORY[0x277CDC018];
  v12[3] = v6;
  v13[2] = &unk_283F13B08;
  v13[3] = MEMORY[0x277CBEC28];
  RandomKey = SecKeyCreateRandomKey([MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4], 0);
  secKeyRef = v2->_secKeyRef;
  v2->_secKeyRef = RandomKey;

  if (v2->_secKeyRef)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (LegacySigningKeyPrivate)initWithData:(id)data error:(id *)error
{
  v17[4] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = LegacySigningKeyPrivate;
  dataCopy = data;
  v5 = [(LegacySigningKeyPrivate *)&v15 init];
  v6 = *MEMORY[0x277CDC040];
  v7 = *MEMORY[0x277CDBFE0];
  v16[0] = *MEMORY[0x277CDC028];
  v16[1] = v7;
  v8 = *MEMORY[0x277CDBFF0];
  v17[0] = v6;
  v17[1] = v8;
  v9 = *MEMORY[0x277CDBFD0];
  v16[2] = *MEMORY[0x277CDC018];
  v16[3] = v9;
  v17[2] = &unk_283F13B08;
  v17[3] = MEMORY[0x277CBEC28];
  v10 = SecKeyCreateWithData(dataCopy, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4], 0);

  secKeyRef = v5->_secKeyRef;
  v5->_secKeyRef = v10;

  if (v5->_secKeyRef)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v13;
}

- (id)signData:(id)data error:(id *)error
{
  Signature = SecKeyCreateSignature(self->_secKeyRef, *MEMORY[0x277CDC2E8], data, 0);

  return Signature;
}

- (id)dataRepresentation
{
  v2 = SecKeyCopyExternalRepresentation(self->_secKeyRef, 0);

  return v2;
}

@end