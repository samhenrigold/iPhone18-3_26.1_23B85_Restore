@interface MSCMSEnvelopedData
+ (id)decodeMessageSecurityObject:(id)object options:(id)options error:(id *)error;
+ (id)encodeOriginatorInfoCertificates:(id)certificates error:(id *)error;
- (BOOL)addRecipient:(id)recipient error:(id *)error;
- (BOOL)checkDecryptionResult:(id)result;
- (BOOL)encodeEncryptionParameters:(id *)parameters;
- (MSCMSEnvelopedData)initWithDataContent:(id)content recipient:(id)recipient;
- (MSCMSEnvelopedData)initWithDataContent:(id)content recipient:(id)recipient encryptionAlgorithm:(id)algorithm;
- (MSCMSEnvelopedData)initWithEmbeddedContent:(id)content recipient:(id)recipient;
- (MSCMSEnvelopedData)initWithEmbeddedContent:(id)content recipient:(id)recipient encryptionAlgorithm:(id)algorithm;
- (id)bulkEncryptDecrypt:(unsigned int)decrypt algorithm:(unsigned int)algorithm mode:(unsigned int)mode key:(id)key iv:(id)iv error:(id *)error;
- (id)encodeMessageSecurityObject:(id *)object;
- (id)encryptDecryptContent:(id)content ccOperation:(unsigned int)operation error:(id *)error;
- (id)findBestEncryptionAlgorithmForNewRecipient:(id)recipient;
- (id)generateEncryptionKey:(id *)key;
- (void)addRecipient:(id)recipient;
- (void)setContentType:(id)type;
- (void)setDataContent:(id)content;
- (void)setEmbeddedContent:(id)content;
@end

@implementation MSCMSEnvelopedData

- (void)setDataContent:(id)content
{
  contentCopy = content;
  dataContent = self->_dataContent;
  if (dataContent != contentCopy)
  {
    self->_dataContent = 0;
    v7 = contentCopy;

    objc_storeStrong(&self->_dataContent, content);
    contentCopy = v7;
    self->_contentChanged = 1;
  }
}

- (void)setEmbeddedContent:(id)content
{
  contentCopy = content;
  embeddedContent = self->_embeddedContent;
  if (embeddedContent != contentCopy)
  {
    self->_embeddedContent = 0;
    v7 = contentCopy;

    objc_storeStrong(&self->_embeddedContent, content);
    contentCopy = v7;
    self->_contentChanged = 1;
  }
}

- (void)setContentType:(id)type
{
  typeCopy = type;
  contentType = self->_contentType;
  if (contentType != typeCopy)
  {
    self->_contentType = 0;
    v7 = typeCopy;

    objc_storeStrong(&self->_contentType, type);
    typeCopy = v7;
    self->_contentChanged = 1;
  }
}

- (MSCMSEnvelopedData)initWithDataContent:(id)content recipient:(id)recipient
{
  recipientCopy = recipient;
  contentCopy = content;
  v8 = [(MSCMSEnvelopedData *)self findBestEncryptionAlgorithmForNewRecipient:recipientCopy];
  algorithm = [v8 algorithm];
  v10 = [(MSCMSEnvelopedData *)self initWithDataContent:contentCopy recipient:recipientCopy encryptionAlgorithm:algorithm];

  return v10;
}

- (MSCMSEnvelopedData)initWithDataContent:(id)content recipient:(id)recipient encryptionAlgorithm:(id)algorithm
{
  contentCopy = content;
  recipientCopy = recipient;
  algorithmCopy = algorithm;
  if (recipientCopy)
  {
    [(MSCMSEnvelopedData *)self setDataContent:contentCopy];
    v11 = [[MSOID alloc] initWithString:@"1.2.840.113549.1.7.1" error:0];
    [(MSCMSEnvelopedData *)self setContentType:v11];

    [(MSCMSEnvelopedData *)self addRecipient:recipientCopy];
    selfCopy = [(MSCMSEnvelopedData *)self recipients];

    if (selfCopy)
    {
      v13 = [[MSAlgorithmIdentifier alloc] initWithOID:algorithmCopy];
      [(MSCMSEnvelopedData *)self setEncryptionAlgorithm:v13];

      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MSCMSEnvelopedData)initWithEmbeddedContent:(id)content recipient:(id)recipient
{
  recipientCopy = recipient;
  contentCopy = content;
  v8 = [(MSCMSEnvelopedData *)self findBestEncryptionAlgorithmForNewRecipient:recipientCopy];
  algorithm = [v8 algorithm];
  v10 = [(MSCMSEnvelopedData *)self initWithEmbeddedContent:contentCopy recipient:recipientCopy encryptionAlgorithm:algorithm];

  return v10;
}

- (MSCMSEnvelopedData)initWithEmbeddedContent:(id)content recipient:(id)recipient encryptionAlgorithm:(id)algorithm
{
  contentCopy = content;
  recipientCopy = recipient;
  algorithmCopy = algorithm;
  if (recipientCopy)
  {
    [(MSCMSEnvelopedData *)self setEmbeddedContent:contentCopy];
    type = [contentCopy type];
    [(MSCMSEnvelopedData *)self setContentType:type];

    [(MSCMSEnvelopedData *)self addRecipient:recipientCopy];
    selfCopy = [(MSCMSEnvelopedData *)self recipients];

    if (selfCopy)
    {
      v13 = [[MSAlgorithmIdentifier alloc] initWithOID:algorithmCopy];
      [(MSCMSEnvelopedData *)self setEncryptionAlgorithm:v13];

      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)findBestEncryptionAlgorithmForNewRecipient:(id)recipient
{
  recipientCopy = recipient;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = v5;
  recipients = self->_recipients;
  if (recipients)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __65__MSCMSEnvelopedData_findBestEncryptionAlgorithmForNewRecipient___block_invoke;
    v19[3] = &unk_2798BE6B0;
    v20 = v5;
    [(NSArray *)recipients enumerateObjectsUsingBlock:v19];
  }

  if (recipientCopy)
  {
    algorithmCapabilities = [recipientCopy algorithmCapabilities];

    if (algorithmCapabilities)
    {
      algorithmCapabilities2 = [recipientCopy algorithmCapabilities];
      v10 = [algorithmCapabilities2 objectAtIndex:0];
      [v6 addObject:v10];
    }
  }

  v11 = findBestMutuallySupportedEncryptionAlgorithm(v6);
  if (!v11 || recipientCopy && ([recipientCopy algorithmCapabilities], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(recipientCopy, "algorithmCapabilities"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "objectAtIndex:", 0), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "containsObject:", v11), v15, v14, v13, !v16))
  {
    v17 = 0;
  }

  else
  {
    v17 = [[MSAlgorithmIdentifier alloc] initWithOID:v11];
  }

  return v17;
}

void __65__MSCMSEnvelopedData_findBestEncryptionAlgorithmForNewRecipient___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 algorithmCapabilities];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v7 algorithmCapabilities];
    v6 = [v5 objectAtIndex:0];
    [v4 addObject:v6];
  }
}

- (BOOL)addRecipient:(id)recipient error:(id *)error
{
  recipientCopy = recipient;
  if (error && *error)
  {
    v7 = [*error copy];
  }

  else
  {
    v7 = 0;
  }

  recipients = [(MSCMSEnvelopedData *)self recipients];

  if (recipients)
  {
    recipients2 = [(MSCMSEnvelopedData *)self recipients];
    v10 = [recipients2 count];

    v11 = v10 + 1;
  }

  else
  {
    v11 = 1;
  }

  [(MSCMSEnvelopedData *)self addRecipient:recipientCopy];
  recipients3 = [(MSCMSEnvelopedData *)self recipients];
  v13 = [recipients3 count];

  if (error && v13 != v11)
  {
    *error = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-1 underlyingError:v7 description:@"unable to add recipient"];
  }

  return v13 == v11;
}

- (void)addRecipient:(id)recipient
{
  recipientCopy = recipient;
  if (!recipientCopy)
  {
    v7 = 0;
LABEL_10:
    [(MSCMSEnvelopedData *)v7 addRecipient:?];
    v7 = v12;
    goto LABEL_8;
  }

  recipients = self->_recipients;
  if (recipients)
  {
    v6 = [(NSArray *)recipients mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v7 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  v8 = [(MSCMSEnvelopedData *)self findBestEncryptionAlgorithmForNewRecipient:recipientCopy];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  [v7 addObject:recipientCopy];
  objc_storeStrong(&self->_recipients, v7);
  encryptionAlgorithm = self->_encryptionAlgorithm;
  self->_encryptionAlgorithm = v9;
  v11 = v9;

LABEL_8:
}

uint64_t __35__MSCMSEnvelopedData_addRecipient___block_invoke()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)encodeMessageSecurityObject:(id *)object
{
  v4 = [[MSCMSEnvelopedDataInternal alloc] initWithEnvelopedData:self];
  v5 = [(MSCMSEnvelopedDataInternal *)v4 encodeMessageSecurityObject:object];

  return v5;
}

- (BOOL)encodeEncryptionParameters:(id *)parameters
{
  v43[1] = *MEMORY[0x277D85DE8];
  if (parameters && *parameters)
  {
    v5 = [*parameters copy];
  }

  else
  {
    v5 = 0;
  }

  encryptionAlgorithm = self->_encryptionAlgorithm;
  v39 = 0;
  v7 = [(MSAlgorithmIdentifier *)encryptionAlgorithm blockSize:&v39];
  v8 = v39;
  if (v8)
  {
    [MSCMSEnvelopedData encodeEncryptionParameters:];
    v31 = 0;
    v32 = v36;
LABEL_26:

    v5 = v32;
    if (!parameters)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v9 = malloc_type_malloc(v7, 0x7DDA46D6uLL);
  if (v9)
  {
    v10 = v9;
    if (SecRandomCopyBytes(*MEMORY[0x277CDC540], v7, v9))
    {
      v13 = 0;
      goto LABEL_34;
    }

    if ([(MSAlgorithmIdentifier *)self->_encryptionAlgorithm ccAlgorithm:0]== 5)
    {
      v37 = v7;
      v36 = 58;
      v38 = v10;
      v35 = 0;
      v11 = length_CMSRC2CBCParameter(&v36);
      v12 = [MEMORY[0x277CBEB28] dataWithLength:v11];
      if (!v12)
      {
LABEL_17:
        v16 = 12;
        goto LABEL_18;
      }

      v13 = v12;
      v14 = encode_CMSRC2CBCParameter([v12 mutableBytes] + v11 - 1, v11, &v36, &v35);
      if (v14)
      {
        v15 = v14;

        v16 = v15;
LABEL_18:
        v20 = MEMORY[0x277CCA9B8];
        v42 = *MEMORY[0x277CCA450];
        v43[0] = @"Failed encoding type CMSRC2CBCParameter";
        v21 = MEMORY[0x277CBEAC0];
        v22 = v43;
        v23 = &v42;
LABEL_21:
        v24 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:{1, v35}];
        v25 = [v20 errorWithDomain:@"com.apple.HeimASN1" code:v16 userInfo:v24];

        v13 = 0;
        v5 = v25;
        goto LABEL_22;
      }

LABEL_15:
      if (v11 == v35)
      {
LABEL_22:
        if ([v13 length])
        {
          v26 = [MSAlgorithmIdentifier alloc];
          algorithm = [(MSAlgorithmIdentifier *)self->_encryptionAlgorithm algorithm];
          v28 = [(MSAlgorithmIdentifier *)v26 initWithOID:algorithm parameters:v13];

          if (v28)
          {
            v29 = self->_encryptionAlgorithm;
            self->_encryptionAlgorithm = v28;
            v30 = v28;

            v31 = 1;
LABEL_25:
            v32 = v5;
            free(v10);
            v5 = v13;
            goto LABEL_26;
          }
        }

LABEL_34:
        v31 = 0;
        goto LABEL_25;
      }

      asn1_abort();
      goto LABEL_17;
    }

    v36 = v7;
    v37 = v10;
    v35 = 0;
    v11 = length_CMSCBCParameter(&v36);
    v17 = [MEMORY[0x277CBEB28] dataWithLength:v11];
    if (v17)
    {
      v13 = v17;
      v18 = encode_CMSCBCParameter([v17 mutableBytes] + v11 - 1, v11, &v36, &v35);
      if (!v18)
      {
        goto LABEL_15;
      }

      v19 = v18;

      v16 = v19;
    }

    else
    {
      v16 = 12;
    }

    v20 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    v41 = @"Failed encoding type CMSCBCParameter";
    v21 = MEMORY[0x277CBEAC0];
    v22 = &v41;
    v23 = &v40;
    goto LABEL_21;
  }

  v31 = 0;
  if (!parameters)
  {
    goto LABEL_29;
  }

LABEL_27:
  if (v5)
  {
    v33 = v5;
    *parameters = v5;
  }

LABEL_29:

  return v31;
}

- (BOOL)checkDecryptionResult:(id)result
{
  v12[1] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v4 = resultCopy;
  if (resultCopy && [resultCopy length])
  {
    v11 = *MEMORY[0x277CCA678];
    v12[0] = MEMORY[0x277CBEC28];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v10 = 0;
    v9 = 0;
    if ([MEMORY[0x277CCACA8] stringEncodingForData:v4 encodingOptions:v5 convertedString:&v9 usedLossyConversion:&v10])
    {
      v6 = v9 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v10 == 1)
    {
      [v4 bytes];
      [v4 length];
      if (!der_get_tag())
      {
        [v4 length];
      }

      v7 = 0;
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

- (id)encryptDecryptContent:(id)content ccOperation:(unsigned int)operation error:(id *)error
{
  v6 = *&operation;
  contentCopy = content;
  if (error && *error)
  {
    keyEncryptionAlgorithm = [*error copy];
  }

  else
  {
    keyEncryptionAlgorithm = 0;
  }

  encryptionAlgorithm = self->_encryptionAlgorithm;
  v36 = 0;
  v11 = [(MSAlgorithmIdentifier *)encryptionAlgorithm ccAlgorithm:&v36];
  v12 = v36;
  if (v12)
  {
    v22 = v12;
    [MSCMSEnvelopedData encodeEncryptionParameters:];
    v13 = 0;
    goto LABEL_28;
  }

  if (v6)
  {
    v13 = [contentCopy key:0];
    if (v13)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  v35 = keyEncryptionAlgorithm;
  v13 = [(MSCMSEnvelopedData *)self generateEncryptionKey:&v35];
  v23 = v35;

  keyEncryptionAlgorithm = v23;
  if (!v13)
  {
LABEL_17:
    [MSCMSEnvelopedData encryptDecryptContent:ccOperation:error:];
    v22 = 0;
LABEL_28:
    v18 = 0;
    v19 = v37;
LABEL_23:

    if (!error)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

LABEL_8:
  v14 = self->_encryptionAlgorithm;
  v34 = 0;
  error = [(MSAlgorithmIdentifier *)v14 ccMode:&v34, error];
  v16 = v34;
  if (v16)
  {
    v22 = v16;
    [MSCMSEnvelopedData encodeEncryptionParameters:];
    v18 = 0;
    v19 = v37;
LABEL_22:
    error = v30;
    goto LABEL_23;
  }

  if (!v6)
  {
    v33 = keyEncryptionAlgorithm;
    [(MSCMSEnvelopedData *)self encodeEncryptionParameters:&v33];
    v17 = v33;

    keyEncryptionAlgorithm = v17;
  }

  v32 = keyEncryptionAlgorithm;
  v18 = [(MSCMSEnvelopedData *)self bulkEncryptDecrypt:v6 algorithm:v11 mode:error key:v13 iv:0 error:&v32];
  v19 = v32;

  if (v6 == 1)
  {
    keyEncryptionAlgorithm = [contentCopy keyEncryptionAlgorithm];
    algorithm = [keyEncryptionAlgorithm algorithm];
    if ([algorithm isEqualToString:@"1.3.133.16.840.63.0.2"])
    {
      v21 = [(MSCMSEnvelopedData *)self checkDecryptionResult:v18];

      if (v21)
      {
        goto LABEL_14;
      }

      keyEncryptionAlgorithm = [contentCopy key:1];
      v31 = v19;
      v24 = [(MSCMSEnvelopedData *)self bulkEncryptDecrypt:1 algorithm:v11 mode:error key:keyEncryptionAlgorithm iv:0 error:&v31];
      v25 = v31;

      if ([(MSCMSEnvelopedData *)self checkDecryptionResult:v24])
      {
        v26 = v24;

        v18 = v26;
      }

      v22 = 0;
      v19 = v25;
    }

    else
    {

      v22 = 0;
    }

    goto LABEL_22;
  }

LABEL_14:
  v22 = 0;
  error = v30;
  if (!v30)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (v19)
  {
    v27 = v19;
    *error = v19;
  }

LABEL_26:
  v28 = v18;

  return v18;
}

uint64_t __64__MSCMSEnvelopedData_decodeMessageSecurityObject_options_error___block_invoke()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)encodeOriginatorInfoCertificates:(id)certificates error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  certificatesCopy = certificates;
  if (error && *error)
  {
    v6 = [*error copy];
  }

  else
  {
    v6 = 0;
  }

  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  if (certificatesCopy)
  {
    v32 = v6;
    LODWORD(v38) = [certificatesCopy count];
    v7 = malloc_type_malloc(24 * v38, 0x10800404ACF7207uLL);
    v39 = v7;
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v9 = certificatesCopy;
    v10 = [v9 countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v35;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = SecCertificateCopyData(*(*(&v34 + 1) + 8 * i));
          if (v15)
          {
            [v8 addObject:v15];
            v16 = &v7[24 * v12];
            *v16 = 1;
            *(v16 + 1) = [(__CFData *)v15 length];
            bytes = [(__CFData *)v15 bytes];
            v7 = v39;
            *(v39 + 3 * v12++ + 2) = bytes;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v34 objects:v44 count:16];
      }

      while (v11);
    }

    v40 = &v38;
    v41 = 0;
    v33 = 0;
    v18 = length_OriginatorInfo(&v40);
    v19 = [MEMORY[0x277CBEB28] dataWithLength:v18];
    if (v19)
    {
      v20 = v19;
      v21 = encode_OriginatorInfo([v19 mutableBytes] + v18 - 1, v18, &v40, &v33);
      if (!v21)
      {
        v27 = v18 == v33;
        v6 = v32;
        if (!v27)
        {
          v29 = asn1_abort();
          return [(MSCMSEnvelopedData *)v29 type];
        }

        goto LABEL_23;
      }

      v22 = v21;

      v23 = v22;
    }

    else
    {
      v23 = 12;
    }

    v25 = MEMORY[0x277CCA9B8];
    v42 = *MEMORY[0x277CCA450];
    v43 = @"Failed encoding type OriginatorInfo";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v6 = [v25 errorWithDomain:@"com.apple.HeimASN1" code:v23 userInfo:v26];

    v20 = 0;
LABEL_23:
    free(v39);
    if (error && v6)
    {
      v28 = v6;
      *error = v6;
    }

    v24 = v20;

    goto LABEL_27;
  }

  v24 = 0;
LABEL_27:

  return v24;
}

- (id)generateEncryptionKey:(id *)key
{
  if (key && *key)
  {
    v5 = [*key copy];
  }

  else
  {
    v5 = 0;
  }

  encryptionAlgorithm = self->_encryptionAlgorithm;
  v16 = 0;
  v7 = [(MSAlgorithmIdentifier *)encryptionAlgorithm keySize:&v16];
  v8 = v16;
  if (v8)
  {
    v15 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:v5 description:@"unable to encrypt/decrypt the content"];

    v11 = 0;
    v5 = v15;
  }

  else
  {
    v9 = malloc_type_malloc(v7, 0x54B2D484uLL);
    if (v9)
    {
      v10 = v9;
      if (SecRandomCopyBytes(*MEMORY[0x277CDC540], v7, v9))
      {
        v11 = 0;
      }

      else
      {
        v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v10 length:v7];
        objc_storeStrong(&self->_encryptionKey, v11);
      }

      bzero(v10, v7);
      free(v10);
    }

    else
    {
      v11 = 0;
    }
  }

  if (key && v5)
  {
    v12 = v5;
    *key = v5;
  }

  v13 = v11;

  return v11;
}

- (id)bulkEncryptDecrypt:(unsigned int)decrypt algorithm:(unsigned int)algorithm mode:(unsigned int)mode key:(id)key iv:(id)iv error:(id *)error
{
  keyCopy = key;
  ivCopy = iv;
  if (error && *error)
  {
    v16 = [*error copy];
  }

  else
  {
    v16 = 0;
  }

  v46 = 0;
  v47[0] = 0;
  v47[1] = 0;
  v45[0] = 0;
  v45[1] = 0;
  dataOutMoved = 0;
  cryptorRef = 0;
  v17 = [(MSAlgorithmIdentifier *)self->_encryptionAlgorithm ccAlgorithm:0];
  parameters = [(MSAlgorithmIdentifier *)self->_encryptionAlgorithm parameters];
  v19 = parameters;
  if (v17 == 5)
  {
    v42 = keyCopy;
    errorCopy = error;
    v21 = nsheim_decode_CMSRC2CBCParameter(parameters, &v46);

    if (v21)
    {
      v40 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:v16 description:@"unable to encrypt/decrypt the content"];

      v29 = 0;
      v28 = 0;
      v16 = v40;
      error = errorCopy;
      keyCopy = v42;
      goto LABEL_23;
    }

    v22 = NSDataFromOctetString(v47);

    free_CMSRC2CBCParameter(&v46);
    ivCopy = v22;
    keyCopy = v42;
    if (v22)
    {
LABEL_8:
      bytes = [ivCopy bytes];
      goto LABEL_12;
    }
  }

  else
  {
    v24 = nsheim_decode_CMSCBCParameter(parameters, v45);

    if (v24)
    {
      v41 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:v16 description:@"unable to encrypt/decrypt the content"];

      v29 = 0;
      v28 = 0;
      v16 = v41;
      goto LABEL_23;
    }

    v25 = NSDataFromOctetString(v45);

    free_CMSCBCParameter(v45);
    ivCopy = v25;
    if (v25)
    {
      goto LABEL_8;
    }
  }

  bytes = 0;
LABEL_12:
  if (CCCryptorCreateWithMode(decrypt, mode, algorithm, 1u, bytes, [keyCopy bytes], objc_msgSend(keyCopy, "length"), 0, 0, 0, 0, &cryptorRef))
  {
    v29 = 0;
    v28 = 0;
    goto LABEL_23;
  }

  if (decrypt == 1)
  {
    encryptedContent = self->_encryptedContent;
  }

  else
  {
    if (![(MSOID *)self->_contentType isEqualToString:@"1.2.840.113549.1.7.1"])
    {
      v27 = [(MSCMSMessage *)self->_embeddedContent encodeMessageSecurityObject:0];
      goto LABEL_19;
    }

    encryptedContent = self->_dataContent;
  }

  v27 = encryptedContent;
LABEL_19:
  v28 = v27;
  if (v27)
  {
    v29 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{CCCryptorGetOutputLength(cryptorRef, -[NSData length](v27, "length"), 1)}];
    mutableBytes = [v29 mutableBytes];
    v31 = [v29 length];
    if (!CCCryptorUpdate(cryptorRef, [(NSData *)v28 bytes], [(NSData *)v28 length], mutableBytes, v31, &dataOutMoved))
    {
      v32 = v31 - dataOutMoved;
      if (!CCCryptorFinal(cryptorRef, &mutableBytes[dataOutMoved], v32, &dataOutMoved))
      {
        v33 = keyCopy;
        errorCopy2 = error;
        v35 = v16;
        v36 = dataOutMoved - v32;
        v37 = v36 + [v29 length];
        v16 = v35;
        error = errorCopy2;
        keyCopy = v33;
        [v29 setLength:v37];
        goto LABEL_23;
      }
    }
  }

  v29 = 0;
LABEL_23:
  if (cryptorRef)
  {
    CCCryptorRelease(cryptorRef);
  }

  if (error && v16)
  {
    v38 = v16;
    *error = v16;
  }

  return v29;
}

+ (id)decodeMessageSecurityObject:(id)object options:(id)options error:(id *)error
{
  v83 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  optionsCopy = options;
  if (error && *error)
  {
    v12 = [*error copy];
  }

  else
  {
    v12 = 0;
  }

  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v74 = 0u;
  v13 = nsheim_decode_EnvelopedData(objectCopy, &v74);
  v14 = MSErrorASN1Domain;
  if (v13)
  {
    v5 = v13;
    if (nsheim_decode_SecCMS_EnvelopedData(objectCopy, &v74))
    {
      v14 = MSErrorASN1Domain[0];
      v5 = v5;
      if (objectCopy)
      {
        v15 = [objectCopy length];
      }

      else
      {
        v15 = -1;
      }

      v20 = [MSError MSErrorWithDomain:v14 code:v5 underlyingError:v12 description:@"unable to decode envelopedData (%ld bytes)", v15];

      dumpNSData("EnvelopedData", objectCopy);
      OUTLINED_FUNCTION_0_1();
      v66 = 0;
      goto LABEL_52;
    }
  }

  v16 = [MSCMSEnvelopedData alloc];
  if (!v16)
  {
    OUTLINED_FUNCTION_0_1();
    v66 = 0;
    goto LABEL_67;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithInt:v74];
  [(MSCMSEnvelopedData *)v16 setVersion:v17];

  errorCopy = error;
  v63 = optionsCopy;
  if (*(&v74 + 1))
  {
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = *(&v74 + 1);
    v6 = v18;
    v20 = v12;
    __dst[0] = 0uLL;
    v21 = NSDataFromAny(v19);
    v14 = nsheim_decode_OriginatorInfo(v21, __dst);

    v66 = v6;
    if (v14)
    {
      v5 = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:v14 underlyingError:v20 description:@"unable to decode envelopedData.originatorInfo"];
    }

    else
    {
      v5 = v20;
      if (v6)
      {
        v6 = *&__dst[0];
        v5 = v20;
        if (*&__dst[0])
        {
          v5 = v20;
          if (**&__dst[0])
          {
            v22 = 0;
            v7 = 0;
            do
            {
              if (*(v6[1] + v22) == 1)
              {
                v23 = SecCertificateCreateWithBytes();
                if (v23)
                {
                  v24 = v23;
                  [v66 addObject:v23];
                }
              }

              ++v7;
              v22 += 24;
            }

            while (v7 < *v6);
            v5 = v20;
            error = errorCopy;
          }
        }
      }
    }

    free_OriginatorInfo(__dst);

    if (v14)
    {

      OUTLINED_FUNCTION_0_1();
LABEL_52:
      v16 = 0;
      v12 = v20;
      goto LABEL_67;
    }

    v25 = v66;
  }

  else
  {
    v25 = 0;
  }

  v61 = objectCopy;
  v66 = v25;
  [(MSCMSEnvelopedData *)v16 setOriginatorCertificates:?];
  if (v75)
  {
    v26 = 0;
    v27 = 0;
    v6 = 0;
    v5 = 0x2798BD000uLL;
    v65 = 67109378;
    do
    {
      v28 = v6;
      v29 = v12;
      memset(__dst, 0, sizeof(__dst));
      memcpy(__dst, (*(&v75 + 1) + v26), sizeof(__dst));
      v72 = v12;
      v6 = [MSCMSRecipientInfo decodeRecipientInfo:__dst certificates:v66 LAContext:0 error:&v72];
      v12 = v72;

      if (v6)
      {
        if (v66 && [v66 count])
        {
          *buf = 0;
          v30 = SecCertificateCopyKey([v66 objectAtIndex:0]);
          SecKeyCopyPublicBytes();
          if (v30)
          {
            CFRelease(v30);
          }

          v31 = *buf;
          [v6 setOriginatorPubKey:*buf];
        }

        [(MSCMSEnvelopedData *)v16 addRecipient:v6];
      }

      else
      {
        if (MS_DEFAULT_LOG_BLOCK != -1)
        {
          dispatch_once(&MS_DEFAULT_LOG_BLOCK, &__block_literal_global_38);
        }

        v32 = MS_DEFAULT_LOG_INTERNAL;
        if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          *&buf[4] = v27;
          v81 = 2112;
          v82 = v12;
          _os_log_impl(&dword_258C80000, v32, OS_LOG_TYPE_ERROR, "failed to decode recipient %u: %@", buf, 0x12u);
        }
      }

      ++v27;
      v26 += 112;
    }

    while (v27 < v75);
  }

  else
  {
    v6 = 0;
  }

  recipients = [(MSCMSEnvelopedData *)v16 recipients];
  v14 = [recipients count];

  if (!v14)
  {
    v58 = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:0 underlyingError:v12 description:@"unable to decode envelopedData.recipientInfos"];

    v7 = 0;
    OUTLINED_FUNCTION_1_1();
    v12 = v58;
    objectCopy = v61;
    error = errorCopy;
    optionsCopy = v63;
    goto LABEL_67;
  }

  v34 = NSDataFromOctetString(*(&v78 + 1));
  [(MSCMSEnvelopedData *)v16 setEncryptedContent:v34];

  v71 = 0;
  v35 = [MSAlgorithmIdentifier algorithmIdentifierWithAsn1AlgId:&v77 error:&v71];
  v12 = v71;
  v60 = v35;
  [(MSCMSEnvelopedData *)v16 setEncryptionAlgorithm:v35];
  recipients2 = [(MSCMSEnvelopedData *)v16 recipients];
  v37 = [recipients2 count];

  objectCopy = v61;
  if (v37)
  {
    v38 = 0;
    while (1)
    {
      v5 = v6;
      v39 = v12;
      recipients3 = [(MSCMSEnvelopedData *)v16 recipients];
      v6 = [recipients3 objectAtIndex:v38];

      v70 = v12;
      v7 = [(MSCMSEnvelopedData *)v16 decryptContent:v6 error:&v70];
      v12 = v70;

      if (v7)
      {
        break;
      }

      ++v38;
      recipients4 = [(MSCMSEnvelopedData *)v16 recipients];
      v5 = [recipients4 count];

      if (v38 >= v5)
      {
        goto LABEL_45;
      }
    }

    v69 = 0;
    v42 = [MSOID OIDWithAsn1OID:&v76 error:&v69];
    v12 = v69;
    if (v42)
    {
      v65 = v42;
      [(MSCMSEnvelopedData *)v16 setContentType:v42];
      contentType = [(MSCMSEnvelopedData *)v16 contentType];
      v44 = [contentType isEqualToString:@"1.2.840.113549.1.7.1"];

      error = errorCopy;
      optionsCopy = v63;
      if (v44)
      {
        [(MSCMSEnvelopedData *)v16 setDataContent:v7];
        v64 = 0;
      }

      else
      {
        contentType2 = [(MSCMSEnvelopedData *)v16 contentType];
        v68 = v12;
        v46 = decodeEmbeddedCMSContent(contentType2, v7, v63, &v68);
        v47 = v68;

        v64 = v46;
        [(MSCMSEnvelopedData *)v16 setEmbeddedContent:v46];
        v12 = v47;
      }

      v14 = v60;
      if (!v79)
      {
        v5 = 0;
        goto LABEL_66;
      }

      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (v5 && (v48 = v79, *v79))
      {
        v49 = 0;
        v50 = 0;
        do
        {
          memset(__dst, 0, 32);
          v51 = (*(v48 + 1) + v49);
          v52 = v51[1];
          __dst[0] = *v51;
          __dst[1] = v52;
          v67 = v12;
          v53 = [MSCMSAttribute decodeAttribute:__dst error:&v67];
          v54 = v67;

          if (v53)
          {
            [v5 addObject:v53];
          }

          ++v50;
          v48 = v79;
          v49 += 32;
          v12 = v54;
        }

        while (v50 < *v79);
      }

      else
      {
        v54 = v12;
      }

      if ([v5 count])
      {
        v12 = v54;
        objectCopy = v61;
        error = errorCopy;
        optionsCopy = v63;
        v14 = v60;
LABEL_66:
        [(MSCMSEnvelopedData *)v16 setUnprotectedAttributes:v5];
        goto LABEL_67;
      }

      v12 = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:0 underlyingError:v54 description:@"unable to decode envelopedData.unprotectedAttrs"];

      v16 = 0;
      objectCopy = v61;
    }

    else
    {
      v59 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:v12 description:@"unable to get contentType from envelopedData.encryptedContentnInfo"];

      OUTLINED_FUNCTION_1_1();
      v12 = v59;
    }
  }

  else
  {
LABEL_45:

    v7 = 0;
    OUTLINED_FUNCTION_1_1();
  }

  error = errorCopy;
  optionsCopy = v63;
  v14 = v60;
LABEL_67:
  free_EnvelopedData(&v74);
  if (error && v12)
  {
    v55 = v12;
    *error = v12;
  }

  v56 = v16;

  return v56;
}

- (void)addRecipient:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  if (MS_DEFAULT_LOG_BLOCK != -1)
  {
    dispatch_once(&MS_DEFAULT_LOG_BLOCK, &__block_literal_global_7);
  }

  v4 = MS_DEFAULT_LOG_INTERNAL;
  if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_258C80000, v4, OS_LOG_TYPE_ERROR, "failed to add recipient. No shared encryption algorithm with the rest of the recipients", v5, 2u);
  }

  *a2 = a1;
}

- (uint64_t)encodeEncryptionParameters:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  result = [MSError MSErrorWithDomain:"MSErrorWithDomain:code:underlyingError:description:" code:MSErrorCMSDomain[0] underlyingError:-26275 description:?];
  *v0 = result;
  return result;
}

- (uint64_t)encryptDecryptContent:ccOperation:error:.cold.3()
{
  OUTLINED_FUNCTION_2_1();
  result = [MSError MSErrorWithDomain:"MSErrorWithDomain:code:underlyingError:description:" code:MSErrorCMSDomain[0] underlyingError:-26275 description:?];
  *v0 = result;
  return result;
}

@end