@interface SecKeyP256Private
+ (id)compactPrivateKeyWithAccessControl:(id)control;
+ (id)generate;
+ (id)generateWithAccessControl:(id)control;
- (SecKeyP256Private)initWithData:(id)data error:(id *)error;
- (SecKeyP256Public)publicKey;
- (id)getPrivateKeyRefWithError:(id *)error;
- (id)keyAgreement:(id)agreement error:(id *)error isRetry:(BOOL)retry;
- (id)signData:(id)data error:(id *)error;
@end

@implementation SecKeyP256Private

+ (id)generate
{
  defaultProtectionClassForPlatform = [self defaultProtectionClassForPlatform];
  v4 = [self generateWithAccessControl:defaultProtectionClassForPlatform];

  return v4;
}

+ (id)compactPrivateKeyWithAccessControl:(id)control
{
  v32[5] = *MEMORY[0x277D85DE8];
  controlCopy = control;
  error = 0;
  v4 = *MEMORY[0x277CBECE8];
  v29 = controlCopy;
  v5 = SecAccessControlCreateWithFlags(v4, controlCopy, 0x40000000uLL, 0);
  v6 = *MEMORY[0x277CDC040];
  v7 = *MEMORY[0x277CDC018];
  v31[0] = *MEMORY[0x277CDC028];
  v31[1] = v7;
  v32[0] = v6;
  v32[1] = &unk_283F13BB0;
  v8 = *MEMORY[0x277CDBEC0];
  v31[2] = *MEMORY[0x277CDBFD0];
  v31[3] = v8;
  v32[2] = MEMORY[0x277CBEC28];
  v32[3] = v5;
  v28 = v5;
  v31[4] = *MEMORY[0x277CDC158];
  v32[4] = *MEMORY[0x277CDC160];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:5];
  v10 = 1000;
  while (1)
  {
    v11 = SecKeyCreateRandomKey(v9, &error);
    if (!v11)
    {
      break;
    }

    v12 = v11;
    v13 = SecKeyCopyPublicKey(v11);
    if (!v13)
    {
      CFRelease(v12);
      v15 = MessageProtectionLog(v24);
      v25 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      v22 = v29;
      if (v25)
      {
        +[SecKeyP256Private compactPrivateKeyWithAccessControl:];
      }

      goto LABEL_19;
    }

    v14 = v13;
    v15 = SecKeyCopyExternalRepresentation(v13, &error);
    CFRelease(v14);
    if (v15)
    {
      v16 = MEMORY[0x2318925A0]();
      MEMORY[0x28223BE20](v16);
      v18 = (&v28 - v17);
      [v15 length];
      [v15 bytes];
      v19 = ccec_x963_import_pub();
      if (ccec_validate_pub())
      {
        v20 = v19 == 0;
      }

      else
      {
        v20 = 0;
      }

      if (v20)
      {
        MEMORY[0x28223BE20](*v18);
        cczp_prime();
        ccn_sub();
        if ((ccn_cmp() & 0x80000000) == 0)
        {
          v26 = SecKeyCopyAttributes(v12);
          v21 = [(__CFDictionary *)v26 objectForKeyedSubscript:*MEMORY[0x277CDC178]];

          CFRelease(v12);
          goto LABEL_21;
        }
      }

      CFRelease(v12);
    }

    else
    {
      CFRelease(v12);
    }

    if (!--v10)
    {
      v21 = 0;
      v23 = v28;
      v22 = v29;
      goto LABEL_23;
    }
  }

  v15 = MessageProtectionLog(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v22 = v29;
    +[SecKeyP256Private compactPrivateKeyWithAccessControl:];
LABEL_19:
    v21 = 0;
    goto LABEL_22;
  }

  v21 = 0;
LABEL_21:
  v22 = v29;
LABEL_22:
  v23 = v28;

LABEL_23:

  return v21;
}

+ (id)generateWithAccessControl:(id)control
{
  v3 = [self compactPrivateKeyWithAccessControl:control];
  v4 = [[SecKeyP256Private alloc] initWithData:v3 error:0];

  return v4;
}

- (id)getPrivateKeyRefWithError:(id *)error
{
  v16[2] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CDC158];
  v16[0] = *MEMORY[0x277CDC160];
  v6 = *MEMORY[0x277CDC178];
  v15[0] = v5;
  v15[1] = v6;
  privateKeyBlob = [(SecKeyP256Private *)self privateKeyBlob];
  v16[1] = privateKeyBlob;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  error = 0;
  privateKeyBlob2 = [(SecKeyP256Private *)self privateKeyBlob];
  v10 = SecKeyCreateWithData(privateKeyBlob2, v8, &error);

  if (error)
  {
    v11 = CFErrorCopyDescription(error);
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Deserialization of SecKey failed with description: %@", v11];
    MPLogAndAssignError(3, error, v12);

    CFRelease(error);
  }

  return v10;
}

- (id)keyAgreement:(id)agreement error:(id *)error isRetry:(BOOL)retry
{
  agreementCopy = agreement;
  v8 = *MEMORY[0x277CDC280];
  if (SecKeyIsAlgorithmSupported(self->_privateKey, kSecKeyOperationTypeKeyExchange, *MEMORY[0x277CDC280]))
  {
    error = 0;
    dataRepresentation = [agreementCopy dataRepresentation];
    if (dataRepresentation)
    {
      v10 = [[SecKeyP256Public alloc] initWithData:dataRepresentation error:error];
      v11 = v10;
      if (v10)
      {
        privateKey = self->_privateKey;
        publicKeyRef = [(SecKeyP256Public *)v10 publicKeyRef];
        v14 = SecKeyCopyKeyExchangeResult(privateKey, v8, publicKeyRef, MEMORY[0x277CBEC10], &error);
        v15 = v14;
        if (v14)
        {
          v15 = v14;
          v16 = v15;
        }

        else
        {
          if (error)
          {
            *error = error;
          }

          else
          {
            CFRelease(error);
          }

          v16 = 0;
        }
      }

      else
      {
        v15 = MessageProtectionLog(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(SecKeyP256Private *)error keyAgreement:v15 error:v17 isRetry:v18, v19, v20, v21, v22];
        }

        v16 = 0;
      }
    }

    else
    {
      MPLogAndAssignError(7, error, @"Failed to obtain data for the public key.");
      v16 = 0;
    }
  }

  else
  {
    MPLogAndAssignError(3, error, @"This key is not allowed to do a DH key agreement.");
    v16 = 0;
  }

  return v16;
}

- (SecKeyP256Public)publicKey
{
  publicKey = self->_publicKey;
  if (publicKey)
  {
    goto LABEL_4;
  }

  v4 = SecKeyCopyPublicKey(self->_privateKey);
  if (v4)
  {
    v5 = [[SecKeyP256Public alloc] initWithSecKeyRef:v4];
    v6 = self->_publicKey;
    self->_publicKey = v5;

    publicKey = self->_publicKey;
LABEL_4:
    v7 = publicKey;
    goto LABEL_5;
  }

  v9 = MessageProtectionLog(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    +[SecKeyP256Private compactPrivateKeyWithAccessControl:];
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (id)signData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = *MEMORY[0x277CDC318];
  if (SecKeyIsAlgorithmSupported(self->_privateKey, kSecKeyOperationTypeSign, *MEMORY[0x277CDC318]))
  {
    error = 0;
    v8 = [MEMORY[0x277CBEB28] dataWithLength:32];
    CC_SHA256([dataCopy bytes], objc_msgSend(dataCopy, "length"), objc_msgSend(v8, "bytes"));
    v9 = SecKeyCreateSignature(self->_privateKey, v7, v8, &error);
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else if (error)
    {
      *error = error;
    }
  }

  else
  {
    MPLogAndAssignError(2, error, @"Attempting to sign with a key that doesn't support that operation.");
    v10 = 0;
  }

  return v10;
}

- (SecKeyP256Private)initWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v20.receiver = self;
  v20.super_class = SecKeyP256Private;
  v8 = [(SecKeyP256Private *)&v20 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_7;
  }

  if (!dataCopy)
  {
    MPLogAndAssignError(1, error, @"Attempting to initialize a key with missing OID data.");
LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  objc_storeStrong(&v8->_privateKeyBlob, data);
  v10 = [(SecKeyP256Private *)v9 getPrivateKeyRefWithError:error];
  privateKey = v9->_privateKey;
  v9->_privateKey = v10;

  if (!v9->_privateKey)
  {
    v13 = MessageProtectionLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SecKeyP256Private initWithData:error error:v13];
    }

    goto LABEL_14;
  }

  v13 = [@"Key Validation String" dataUsingEncoding:4];
  v14 = [(SecKeyP256Private *)v9 signData:v13 error:error];
  if (!v14)
  {
    v18 = @"Failed to test sign with SecKeyP256 during initialization.";
LABEL_13:
    MPLogAndAssignError(407, error, v18);

LABEL_14:
    goto LABEL_15;
  }

  publicKey = [(SecKeyP256Private *)v9 publicKey];
  v16 = [publicKey verifySignature:v14 data:v13];

  if (!v16)
  {
    v18 = @"Failed to verify signature with SecKeyP256 during initialization.";
    goto LABEL_13;
  }

LABEL_7:
  v17 = v9;
LABEL_16:

  return v17;
}

- (void)keyAgreement:(uint64_t)a3 error:(uint64_t)a4 isRetry:(uint64_t)a5 .cold.1(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = [*a1 description];
  }

  else
  {
    v9 = 0;
  }

  LODWORD(v10) = 138412290;
  HIDWORD(v10) = v9;
  OUTLINED_FUNCTION_1_1(&dword_22B404000, a2, a3, "Failed to initialize the public key with error: %@", a5, a6, a7, a8, v10, HIDWORD(v9));
  if (a1)
  {
  }
}

- (void)initWithData:(id *)a1 error:(NSObject *)a2 .cold.1(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_22B404000, a2, OS_LOG_TYPE_ERROR, "Failed to get a Private Key Ref with error while initializing SecKeyP256: %@", &v4, 0xCu);
}

@end