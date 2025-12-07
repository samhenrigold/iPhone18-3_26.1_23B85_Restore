@interface MSCMSSignedData
+ (id)decodeMessageSecurityObject:(id)object options:(id)options error:(id *)error;
- (BOOL)addCertificatesForSigner:(id)signer mode:(unint64_t)mode error:(id *)error;
- (BOOL)addSigner:(id)signer withChainMode:(unint64_t)mode error:(id *)error;
- (BOOL)checkSignedPerRFC5652:(id *)c5652;
- (BOOL)verifySignatures:(id *)signatures;
- (BOOL)verifySignaturesAndSignersWithPolicies:(id)policies verifyTime:(id)time anchorCertificates:(id)certificates error:(id *)error;
- (BOOL)verifySignaturesAndSignersWithPolicies:(id)policies verifyTime:(id)time error:(id *)error;
- (MSCMSSignedData)initWithDataContent:(id)content isDetached:(BOOL)detached signer:(id)signer additionalCertificates:(id)certificates error:(id *)error;
- (MSCMSSignedData)initWithDataContent:(id)content isDetached:(BOOL)detached signer:(id)signer error:(id *)error;
- (MSCMSSignedData)initWithDataContent:(id)content isDetached:(BOOL)detached signer:(id)signer signerChainMode:(unint64_t)mode error:(id *)error;
- (MSCMSSignedData)initWithEmbeddedContent:(id)content signer:(id)signer additionalCertificates:(id)certificates error:(id *)error;
- (MSCMSSignedData)initWithEmbeddedContent:(id)content signer:(id)signer error:(id *)error;
- (MSCMSSignedData)initWithEmbeddedContent:(id)content signer:(id)signer signerChainMode:(unint64_t)mode error:(id *)error;
- (__SecCertificate)getSignerCertificate:(unint64_t)certificate error:(id *)error;
- (id)calculateContentDigestWithAlgorithm:(id)algorithm error:(id *)error;
- (id)encodeMessageSecurityObject:(id *)object;
- (id)initCertsOnlyWithCertificates:(id)certificates error:(id *)error;
- (void)addCounterSignerCertificates:(id)certificates mode:(unint64_t)mode error:(id *)error;
- (void)addDigestAlgorithmFromSigner:(id)signer;
- (void)addSigner:(id)signer;
- (void)addSigner:(id)signer withCertificates:(id)certificates;
- (void)removeSignerCertificatesWithIndexes:(id)indexes;
- (void)removeSignersWithCertificate:(__SecCertificate *)certificate error:(id *)error;
- (void)removeSignersWithEmailAddress:(id)address error:(id *)error;
- (void)removeSignersWithIdentity:(__SecIdentity *)identity error:(id *)error;
- (void)removeSignersWithIndexes:(id)indexes error:(id *)error;
- (void)setContentType:(id)type;
- (void)setDataContent:(id)content;
- (void)setEmbeddedContent:(id)content;
@end

@implementation MSCMSSignedData

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

- (void)addCounterSignerCertificates:(id)certificates mode:(unint64_t)mode error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  unprotectedAttributes = [certificates unprotectedAttributes];
  v9 = [MSOID OIDWithString:@"1.2.840.113549.1.9.6" error:0];
  v10 = [unprotectedAttributes getAttributesWithType:v9];

  if (v10)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v27 = v10;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (!v11)
    {
      goto LABEL_25;
    }

    v12 = v11;
    v13 = *v36;
    v14 = 0x2798BD000uLL;
    v28 = *v36;
    while (1)
    {
      v15 = 0;
      v29 = v12;
      do
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v35 + 1) + 8 * v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [objc_alloc(*(v14 + 3184)) initWithAttribute:v16 certificates:0 LAContext:0 containingSignerInfo:0 error:0];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_23;
          }

          v17 = v16;
        }

        v18 = v17;
        if (v17)
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          signers = [v17 signers];
          v20 = [signers countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v32;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v32 != v22)
                {
                  objc_enumerationMutation(signers);
                }

                v24 = *(*(&v31 + 1) + 8 * i);
                chainMode = [v18 chainMode];
                if (chainMode <= mode)
                {
                  modeCopy = mode;
                }

                else
                {
                  modeCopy = chainMode;
                }

                [(MSCMSSignedData *)self addCertificatesForSigner:v24 mode:modeCopy error:error];
              }

              v21 = [signers countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v21);
          }

          v13 = v28;
          v12 = v29;
          v14 = 0x2798BD000;
        }

LABEL_23:
        ++v15;
      }

      while (v15 != v12);
      v12 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (!v12)
      {
LABEL_25:

        v10 = v27;
        break;
      }
    }
  }
}

- (BOOL)addCertificatesForSigner:(id)signer mode:(unint64_t)mode error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  signerCopy = signer;
  if (error && *error)
  {
    v9 = [*error copy];
  }

  else
  {
    v9 = 0;
  }

  if (mode - 2 < 2)
  {
    if (signerCopy && [signerCopy signerCertificate])
    {
      v25 = v9;
      v10 = MSSecTrustCreateWithError([signerCopy signerCertificate], 0, 0, 0, &v25);
      v12 = v25;

      if (v10)
      {
        err = 0;
        if (!SecTrustEvaluateWithError(v10, &err))
        {
          if (err)
          {
            v13 = CFErrorCopyDescription(err);
          }

          else
          {
            v13 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], "Error Unavailable", 0x8000100u);
          }

          v14 = v13;
          if (MS_DEFAULT_LOG_BLOCK != -1)
          {
            [MSCMSSignedData addCertificatesForSigner:mode:error:];
          }

          v15 = MS_DEFAULT_LOG_INTERNAL;
          if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v14;
            _os_log_impl(&dword_258C80000, v15, OS_LOG_TYPE_DEFAULT, "MSCMSChainMode with chain specified, but no trusted chain found (%@), continuing with untrusted chain", buf, 0xCu);
          }

          v16 = err;
          if (err)
          {
            err = 0;
            CFRelease(v16);
          }
        }

        v17 = SecTrustCopyCertificateChain(v10);
        v18 = [(__CFArray *)v17 mutableCopy];

        v19 = [v18 count];
        v20 = v19 - 1;
        if (v19 <= 1)
        {
          if (MS_DEFAULT_LOG_BLOCK != -1)
          {
            [MSCMSSignedData addCertificatesForSigner:mode:error:];
          }

          v21 = MS_DEFAULT_LOG_INTERNAL;
          if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_258C80000, v21, OS_LOG_TYPE_DEFAULT, "MSCMSChainMode with chain specified, but could not build chain beyond leaf, continuing with single certificate", buf, 2u);
          }
        }

        if (mode == 2)
        {
          [v18 objectAtIndexedSubscript:v20];

          buf[0] = 0;
          if (!SecCertificateIsSelfSigned())
          {
            if (buf[0])
            {
              [v18 removeLastObject];
            }
          }
        }

        [(NSMutableSet *)self->_certificates addObjectsFromArray:v18];

        v11 = 1;
        if (!error)
        {
          goto LABEL_40;
        }

        goto LABEL_38;
      }

      [MSCMSSignedData addCertificatesForSigner:v12 mode:buf error:?];
      goto LABEL_48;
    }

    [MSCMSSignedData addCertificatesForSigner:mode:error:];
LABEL_46:
    v10 = 0;
LABEL_48:
    v11 = 0;
    v12 = *buf;
    if (!error)
    {
      goto LABEL_40;
    }

LABEL_38:
    if (v12)
    {
      v22 = v12;
      *error = v12;
    }

    goto LABEL_40;
  }

  if (!mode)
  {
    v11 = 1;
    goto LABEL_43;
  }

  if (mode == 1)
  {
    if (signerCopy && [signerCopy signerCertificate])
    {
      -[NSMutableSet addObject:](self->_certificates, "addObject:", [signerCopy signerCertificate]);
      v10 = 0;
      v11 = 1;
      goto LABEL_19;
    }

    [MSCMSSignedData addCertificatesForSigner:mode:error:];
    goto LABEL_46;
  }

  v10 = 0;
  v11 = 0;
LABEL_19:
  v12 = v9;
  if (error)
  {
    goto LABEL_38;
  }

LABEL_40:
  if (v10)
  {
    CFRelease(v10);
  }

  v9 = v12;
LABEL_43:

  return v11;
}

uint64_t __55__MSCMSSignedData_addCertificatesForSigner_mode_error___block_invoke()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __55__MSCMSSignedData_addCertificatesForSigner_mode_error___block_invoke_14()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (MSCMSSignedData)initWithDataContent:(id)content isDetached:(BOOL)detached signer:(id)signer error:(id *)error
{
  contentCopy = content;
  signerCopy = signer;
  v30.receiver = self;
  v30.super_class = MSCMSSignedData;
  v13 = [(MSCMSSignedData *)&v30 init];
  if (v13)
  {
    signatureAlgorithm = [signerCopy signatureAlgorithm];
    algorithm = [signatureAlgorithm algorithm];
    v16 = [MSOID digestOIDWithSignatureAlgorithm:algorithm error:error];

    if (!v16 || (v17 = MEMORY[0x277CBEB98], +[MSAlgorithmIdentifier algorithmIdentifierWithOID:](MSAlgorithmIdentifier, "algorithmIdentifierWithOID:", v16), v18 = objc_claimAutoreleasedReturnValue(), [v17 setWithObject:v18], v19 = objc_claimAutoreleasedReturnValue(), digestAlgorithms = v13->_digestAlgorithms, v13->_digestAlgorithms = v19, digestAlgorithms, v18, objc_storeStrong(&v13->_dataContent, content), v13->_contentChanged = 1, embeddedContent = v13->_embeddedContent, v13->_embeddedContent = 0, embeddedContent, v13->_detached = detached, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", signerCopy), v22 = objc_claimAutoreleasedReturnValue(), signers = v13->_signers, v13->_signers = v22, signers, objc_msgSend(signerCopy, "setContainingSignedData:", v13), +[MSOID OIDWithString:error:](MSOID, "OIDWithString:error:", @"1.2.840.113549.1.7.1", error), v24 = objc_claimAutoreleasedReturnValue(), contentType = v13->_contentType, v13->_contentType = v24, contentType, !objc_msgSend(signerCopy, "signerCertificate")))
    {

      v28 = 0;
      goto LABEL_7;
    }

    v26 = [MEMORY[0x277CBEB58] setWithObject:{objc_msgSend(signerCopy, "signerCertificate")}];
    certificates = v13->_certificates;
    v13->_certificates = v26;

    [(MSCMSSignedData *)v13 addCounterSignerCertificates:signerCopy mode:1 error:0];
  }

  v28 = v13;
LABEL_7:

  return v28;
}

- (MSCMSSignedData)initWithDataContent:(id)content isDetached:(BOOL)detached signer:(id)signer additionalCertificates:(id)certificates error:(id *)error
{
  detachedCopy = detached;
  certificatesCopy = certificates;
  v13 = [(MSCMSSignedData *)self initWithDataContent:content isDetached:detachedCopy signer:signer error:error];
  v14 = v13;
  if (certificatesCopy && v13)
  {
    [(NSMutableSet *)v13->_certificates addObjectsFromArray:certificatesCopy];
  }

  return v14;
}

- (MSCMSSignedData)initWithDataContent:(id)content isDetached:(BOOL)detached signer:(id)signer signerChainMode:(unint64_t)mode error:(id *)error
{
  detachedCopy = detached;
  signerCopy = signer;
  v13 = [(MSCMSSignedData *)self initWithDataContent:content isDetached:detachedCopy signer:signerCopy error:error];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_7;
  }

  if (!mode)
  {
    [(NSMutableSet *)v13->_certificates removeAllObjects];
    goto LABEL_6;
  }

  if ([(MSCMSSignedData *)v13 addCertificatesForSigner:signerCopy mode:mode error:error])
  {
LABEL_6:
    [(MSCMSSignedData *)v14 addCounterSignerCertificates:signerCopy mode:mode error:0];
LABEL_7:
    v15 = v14;
    goto LABEL_8;
  }

  v15 = 0;
LABEL_8:

  return v15;
}

- (MSCMSSignedData)initWithEmbeddedContent:(id)content signer:(id)signer error:(id *)error
{
  contentCopy = content;
  signerCopy = signer;
  v27.receiver = self;
  v27.super_class = MSCMSSignedData;
  v11 = [(MSCMSSignedData *)&v27 init];
  if (!v11)
  {
    goto LABEL_4;
  }

  signatureAlgorithm = [signerCopy signatureAlgorithm];
  algorithm = [signatureAlgorithm algorithm];
  v14 = [MSOID digestOIDWithSignatureAlgorithm:algorithm error:error];

  if (v14)
  {
    v15 = MEMORY[0x277CBEB98];
    v16 = [MSAlgorithmIdentifier algorithmIdentifierWithOID:v14];
    v17 = [v15 setWithObject:v16];
    digestAlgorithms = v11->_digestAlgorithms;
    v11->_digestAlgorithms = v17;

    dataContent = v11->_dataContent;
    v11->_dataContent = 0;

    objc_storeStrong(&v11->_embeddedContent, content);
    v11->_detached = 0;
    v20 = [MEMORY[0x277CBEA60] arrayWithObject:signerCopy];
    signers = v11->_signers;
    v11->_signers = v20;

    [signerCopy setContainingSignedData:v11];
    type = [contentCopy type];
    contentType = v11->_contentType;
    v11->_contentType = type;

    v24 = [MEMORY[0x277CBEB58] setWithObject:{objc_msgSend(signerCopy, "signerCertificate")}];
    certificates = v11->_certificates;
    v11->_certificates = v24;

    [(MSCMSSignedData *)v11 addCounterSignerCertificates:signerCopy mode:1 error:0];
LABEL_4:
    v14 = v11;
  }

  return v14;
}

- (MSCMSSignedData)initWithEmbeddedContent:(id)content signer:(id)signer additionalCertificates:(id)certificates error:(id *)error
{
  certificatesCopy = certificates;
  v11 = [(MSCMSSignedData *)self initWithEmbeddedContent:content signer:signer error:error];
  v12 = v11;
  if (certificatesCopy && v11)
  {
    [(NSMutableSet *)v11->_certificates addObjectsFromArray:certificatesCopy];
  }

  return v12;
}

- (MSCMSSignedData)initWithEmbeddedContent:(id)content signer:(id)signer signerChainMode:(unint64_t)mode error:(id *)error
{
  signerCopy = signer;
  v11 = [(MSCMSSignedData *)self initWithEmbeddedContent:content signer:signerCopy error:error];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_7;
  }

  if (!mode)
  {
    [(NSMutableSet *)v11->_certificates removeAllObjects];
    goto LABEL_6;
  }

  if ([(MSCMSSignedData *)v11 addCertificatesForSigner:signerCopy mode:mode error:error])
  {
LABEL_6:
    [(MSCMSSignedData *)v12 addCounterSignerCertificates:signerCopy mode:mode error:0];
LABEL_7:
    v13 = v12;
    goto LABEL_8;
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)initCertsOnlyWithCertificates:(id)certificates error:(id *)error
{
  certificatesCopy = certificates;
  v20.receiver = self;
  v20.super_class = MSCMSSignedData;
  v7 = [(MSCMSSignedData *)&v20 init];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB98] set];
    digestAlgorithms = v7->_digestAlgorithms;
    v7->_digestAlgorithms = v8;

    dataContent = v7->_dataContent;
    v7->_dataContent = 0;

    embeddedContent = v7->_embeddedContent;
    v7->_embeddedContent = 0;

    v7->_detached = 1;
    array = [MEMORY[0x277CBEA60] array];
    signers = v7->_signers;
    v7->_signers = array;

    v14 = [MSOID OIDWithString:@"1.2.840.113549.1.7.1" error:error];
    contentType = v7->_contentType;
    v7->_contentType = v14;

    if (!v7->_contentType)
    {
      v18 = 0;
      goto LABEL_6;
    }

    v16 = [MEMORY[0x277CBEB58] setWithArray:certificatesCopy];
    certificates = v7->_certificates;
    v7->_certificates = v16;
  }

  v18 = v7;
LABEL_6:

  return v18;
}

- (void)addSigner:(id)signer
{
  if (signer)
  {
    v4 = MEMORY[0x277CBEB18];
    signers = self->_signers;
    signerCopy = signer;
    v6 = [v4 arrayWithArray:signers];
    [(NSArray *)v6 addObject:signerCopy];
    [(MSCMSSignedData *)self addDigestAlgorithmFromSigner:signerCopy];
    -[NSMutableSet addObject:](self->_certificates, "addObject:", [signerCopy signerCertificate]);
    v7 = self->_signers;
    self->_signers = v6;

    [signerCopy setContainingSignedData:self];
    [(MSCMSSignedData *)self addCounterSignerCertificates:signerCopy mode:1 error:0];
  }
}

- (void)addSigner:(id)signer withCertificates:(id)certificates
{
  signerCopy = signer;
  certificatesCopy = certificates;
  if (signerCopy)
  {
    [(MSCMSSignedData *)self addSigner:signerCopy];
    if (certificatesCopy)
    {
      [(NSMutableSet *)self->_certificates addObjectsFromArray:certificatesCopy];
    }

    [(MSCMSSignedData *)self addCounterSignerCertificates:signerCopy mode:1 error:0];
  }
}

- (BOOL)addSigner:(id)signer withChainMode:(unint64_t)mode error:(id *)error
{
  signerCopy = signer;
  if (signerCopy)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithArray:self->_signers];
    [v9 addObject:signerCopy];
    [(MSCMSSignedData *)self addDigestAlgorithmFromSigner:signerCopy];
    v10 = [(MSCMSSignedData *)self addCertificatesForSigner:signerCopy mode:mode error:error];
    if (v10)
    {
      [(MSCMSSignedData *)self addCounterSignerCertificates:signerCopy mode:mode error:0];
      objc_storeStrong(&self->_signers, v9);
      [signerCopy setContainingSignedData:self];
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)removeSignerCertificatesWithIndexes:(id)indexes
{
  signers = self->_signers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__MSCMSSignedData_removeSignerCertificatesWithIndexes___block_invoke;
  v4[3] = &unk_2798BE1F8;
  v4[4] = self;
  [(NSArray *)signers enumerateObjectsAtIndexes:indexes options:0 usingBlock:v4];
}

uint64_t __55__MSCMSSignedData_removeSignerCertificatesWithIndexes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setContainingSignedData:0];
  v4 = *(*(a1 + 32) + 56);
  v5 = [v3 signerCertificate];

  return [v4 removeObject:v5];
}

- (void)removeSignersWithIndexes:(id)indexes error:(id *)error
{
  indexesCopy = indexes;
  if ([indexesCopy count])
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithArray:self->_signers];
    [v7 removeObjectsAtIndexes:indexesCopy];
    [(MSCMSSignedData *)self removeSignerCertificatesWithIndexes:indexesCopy];
    objc_storeStrong(&self->_signers, v7);
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__0;
    v17 = __Block_byref_object_dispose__0;
    v18 = [MEMORY[0x277CBEB58] set];
    signers = self->_signers;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__MSCMSSignedData_removeSignersWithIndexes_error___block_invoke;
    v12[3] = &unk_2798BE220;
    v12[4] = &v13;
    [(NSArray *)signers enumerateObjectsUsingBlock:v12];
    objc_storeStrong(&self->_digestAlgorithms, v14[5]);
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    if (error && *error)
    {
      v9 = [*error copy];
    }

    else
    {
      v9 = 0;
    }

    v10 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:v9 description:@"no signer with input certificate hash"];

    if (error && v10)
    {
      v11 = v10;
      *error = v10;
    }
  }
}

uint64_t __50__MSCMSSignedData_removeSignersWithIndexes_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 digestAlgorithm];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)removeSignersWithCertificate:(__SecCertificate *)certificate error:(id *)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  signers = self->_signers;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__MSCMSSignedData_removeSignersWithCertificate_error___block_invoke;
  v8[3] = &unk_2798BE248;
  v8[4] = &v9;
  v8[5] = certificate;
  [(NSArray *)signers enumerateObjectsUsingBlock:v8];
  [(MSCMSSignedData *)self removeSignersWithIndexes:v10[5] error:error];
  _Block_object_dispose(&v9, 8);
}

void *__54__MSCMSSignedData_removeSignersWithCertificate_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = CFEqual(*(a1 + 40), [a2 signerCertificate]);
  if (result)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);

    return [v6 addIndex:a3];
  }

  return result;
}

- (void)removeSignersWithEmailAddress:(id)address error:(id *)error
{
  addressCopy = address;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  signers = self->_signers;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __55__MSCMSSignedData_removeSignersWithEmailAddress_error___block_invoke;
  v12 = &unk_2798BE298;
  v8 = addressCopy;
  v13 = v8;
  v14 = &v15;
  [(NSArray *)signers enumerateObjectsUsingBlock:&v9];
  [(MSCMSSignedData *)self removeSignersWithIndexes:v16[5] error:error, v9, v10, v11, v12];

  _Block_object_dispose(&v15, 8);
}

void __55__MSCMSSignedData_removeSignersWithEmailAddress_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 signerCertificate];
  v5 = SecCertificateCopyRFC822Names();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__MSCMSSignedData_removeSignersWithEmailAddress_error___block_invoke_2;
  v8[3] = &unk_2798BE270;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = v6;
  v10 = v7;
  v11 = a3;
  [v5 enumerateObjectsUsingBlock:v8];
}

void *__55__MSCMSSignedData_removeSignersWithEmailAddress_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) caseInsensitiveCompare:a2];
  if (!result)
  {
    v4 = *(a1 + 48);
    v5 = *(*(*(a1 + 40) + 8) + 40);

    return [v5 addIndex:v4];
  }

  return result;
}

- (__SecCertificate)getSignerCertificate:(unint64_t)certificate error:(id *)error
{
  if ([(NSArray *)self->_signers count]- 1 >= certificate)
  {
    v8 = [(NSArray *)self->_signers objectAtIndex:certificate];
    signerCertificate = [v8 signerCertificate];

    return signerCertificate;
  }

  else
  {
    if (error)
    {
      *error = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:*error description:@"signer index, %lu, out of range of signer count, %lu", certificate, [(NSArray *)self->_signers count]];
    }

    return 0;
  }
}

- (BOOL)verifySignatures:(id *)signatures
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  if (signatures)
  {
    v5 = *signatures;
    if (*signatures)
    {
      v5 = [v5 copy];
    }
  }

  else
  {
    v5 = 0;
  }

  v18 = v5;
  signers = self->_signers;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __36__MSCMSSignedData_verifySignatures___block_invoke;
  v12[3] = &unk_2798BE1F8;
  v12[4] = self;
  [(NSArray *)signers enumerateObjectsUsingBlock:v12];
  v7 = self->_signers;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__MSCMSSignedData_verifySignatures___block_invoke_3;
  v11[3] = &unk_2798BE2E8;
  v11[4] = &v13;
  v11[5] = &v19;
  v11[6] = signatures;
  [(NSArray *)v7 enumerateObjectsUsingBlock:v11];
  if (signatures)
  {
    v8 = v14[5];
    if (v8)
    {
      *signatures = v8;
    }
  }

  v9 = *(v20 + 24);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return (v9 & 1) == 0;
}

void __36__MSCMSSignedData_verifySignatures___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 protectedAttributes];
  v5 = [MSOID OIDWithString:@"1.2.840.113549.1.9.2.51" error:0];
  v6 = [v4 getAttributesWithType:v5];

  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = [v6 count];
  v7 = *(*(a1 + 32) + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __36__MSCMSSignedData_verifySignatures___block_invoke_2;
  v10[3] = &unk_2798BE2C0;
  v8 = v3;
  v11 = v8;
  v13 = v14;
  v9 = v6;
  v12 = v9;
  [v7 enumerateObjectsUsingBlock:v10];

  _Block_object_dispose(v14, 8);
}

void __36__MSCMSSignedData_verifySignatures___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (a1[4] != v3)
  {
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 24);
    if (v5)
    {
      v9 = v3;
      v6 = a1[5];
      *(v4 + 24) = v5 - 1;
      v7 = [v6 objectAtIndex:?];
      v8 = [v9 calculateSignedAttributesDigest:0];
      [v7 setSignedAttrsHash:v8];

      v3 = v9;
    }
  }
}

void __36__MSCMSSignedData_verifySignatures___block_invoke_3(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  if (([v16 verifySignature:a1[6]] & 1) == 0)
  {
    v7 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-67808 underlyingError:*(*(a1[4] + 8) + 40) description:@"signature verification failed for signer %lu", a3];
    v8 = *(a1[4] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
    *(*(a1[5] + 8) + 24) = 1;
  }

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    if (([v16 verifyCountersignatures:a1[6]] & 1) == 0)
    {
      v10 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-67808 underlyingError:*(*(a1[4] + 8) + 40) description:@"countersignature verification failed for signer %lu", a3];
      v11 = *(a1[4] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      *a4 = 1;
      *(*(a1[5] + 8) + 24) = 1;
    }

    if ((*(*(a1[5] + 8) + 24) & 1) == 0 && ([v16 verifyTimestamps:a1[6]] & 1) == 0)
    {
      v13 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-67808 underlyingError:*(*(a1[4] + 8) + 40) description:@"timestamp verification failed for signer %lu", a3];
      v14 = *(a1[4] + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      *a4 = 1;
      *(*(a1[5] + 8) + 24) = 1;
    }
  }
}

- (BOOL)verifySignaturesAndSignersWithPolicies:(id)policies verifyTime:(id)time anchorCertificates:(id)certificates error:(id *)error
{
  policiesCopy = policies;
  timeCopy = time;
  certificatesCopy = certificates;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__0;
  v32 = __Block_byref_object_dispose__0;
  if (error)
  {
    v13 = *error;
    if (*error)
    {
      v13 = [v13 copy];
    }
  }

  else
  {
    v13 = 0;
  }

  v33 = v13;
  signers = self->_signers;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __94__MSCMSSignedData_verifySignaturesAndSignersWithPolicies_verifyTime_anchorCertificates_error___block_invoke;
  v21[3] = &unk_2798BE310;
  v15 = policiesCopy;
  v22 = v15;
  v16 = timeCopy;
  v23 = v16;
  v17 = certificatesCopy;
  v24 = v17;
  v25 = &v28;
  v26 = &v34;
  errorCopy = error;
  [(NSArray *)signers enumerateObjectsUsingBlock:v21];
  if (error)
  {
    v18 = v29[5];
    if (v18)
    {
      *error = v18;
    }
  }

  v19 = *(v35 + 24);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return (v19 & 1) == 0;
}

void __94__MSCMSSignedData_verifySignaturesAndSignersWithPolicies_verifyTime_anchorCertificates_error___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  if (([v16 verifySignatureAndSignerWithPolicies:a1[4] verifyTime:a1[5] anchorCertificates:a1[6] error:a1[9]] & 1) == 0)
  {
    v7 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-67808 underlyingError:*(*(a1[7] + 8) + 40) description:@"signer verification failed for signer %lu", a3];
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
    *(*(a1[8] + 8) + 24) = 1;
  }

  if ((*(*(a1[8] + 8) + 24) & 1) == 0)
  {
    if (([v16 verifyCountersignaturesAndCountersignersWithPolicies:a1[4] verifyTime:a1[5] anchorCertificates:a1[6] error:a1[9]] & 1) == 0)
    {
      v10 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-67808 underlyingError:*(*(a1[7] + 8) + 40) description:@"countersigner verification failed for signer %lu", a3];
      v11 = *(a1[7] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      *a4 = 1;
      *(*(a1[8] + 8) + 24) = 1;
    }

    if ((*(*(a1[8] + 8) + 24) & 1) == 0 && ([v16 verifyTimestamps:a1[9]] & 1) == 0)
    {
      v13 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-67808 underlyingError:*(*(a1[7] + 8) + 40) description:@"countersignature verification failed for signer %lu", a3];
      v14 = *(a1[7] + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      *a4 = 1;
      *(*(a1[8] + 8) + 24) = 1;
    }
  }
}

- (BOOL)verifySignaturesAndSignersWithPolicies:(id)policies verifyTime:(id)time error:(id *)error
{
  policiesCopy = policies;
  timeCopy = time;
  v10 = timeCopy;
  if (timeCopy)
  {
    verifyTime = timeCopy;
  }

  else
  {
    options = [(MSCMSSignedData *)self options];
    verifyTime = [options verifyTime];
  }

  options2 = [(MSCMSSignedData *)self options];
  anchorCertificates = [options2 anchorCertificates];
  v15 = [(MSCMSSignedData *)self verifySignaturesAndSignersWithPolicies:policiesCopy verifyTime:verifyTime anchorCertificates:anchorCertificates error:error];

  return v15;
}

- (BOOL)checkSignedPerRFC5652:(id *)c5652
{
  if (c5652 && *c5652)
  {
    v5 = [*c5652 copy];
  }

  else
  {
    v5 = 0;
  }

  if (![(NSArray *)self->_signers count]&& (![(MSOID *)self->_contentType isEqualToString:@"1.2.840.113549.1.7.1"]|| (dataContent = self->_dataContent) != 0 && [(NSData *)dataContent length]))
  {
    [MSCMSSignedData checkSignedPerRFC5652:];
    v7 = 0;
    v5 = v10;
    if (!c5652)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (![(MSOID *)self->_contentType isEqualToString:@"1.2.840.113549.1.7.1"])
  {
    [(NSArray *)self->_signers enumerateObjectsUsingBlock:&__block_literal_global_50];
  }

  v7 = 1;
  if (c5652)
  {
LABEL_12:
    if (v5)
    {
      v8 = v5;
      *c5652 = v5;
    }
  }

LABEL_14:

  return v7;
}

void __41__MSCMSSignedData_checkSignedPerRFC5652___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [a2 protectedAttributes];
  v5 = [v4 count];

  if (!v5)
  {
    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      __41__MSCMSSignedData_checkSignedPerRFC5652___block_invoke_cold_1();
    }

    v6 = MS_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = a3;
      _os_log_impl(&dword_258C80000, v6, OS_LOG_TYPE_DEFAULT, "signedData contains embedded content but signer %lu does not have signed attributes.", &v7, 0xCu);
    }
  }
}

uint64_t __41__MSCMSSignedData_checkSignedPerRFC5652___block_invoke_2()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)addDigestAlgorithmFromSigner:(id)signer
{
  digestAlgorithm = [signer digestAlgorithm];
  if (digestAlgorithm)
  {
    v5 = MEMORY[0x277CBEB58];
    v8 = digestAlgorithm;
    digestAlgorithms = [(MSCMSSignedData *)self digestAlgorithms];
    v7 = [v5 setWithSet:digestAlgorithms];

    [v7 addObject:v8];
    [(MSCMSSignedData *)self setDigestAlgorithms:v7];

    digestAlgorithm = v8;
  }
}

- (id)calculateContentDigestWithAlgorithm:(id)algorithm error:(id *)error
{
  algorithmCopy = algorithm;
  ccdigest = [algorithmCopy ccdigest];
  if (ccdigest)
  {
    error = [MEMORY[0x277CBEB28] dataWithLength:*ccdigest];
    [(NSData *)self->_dataContent length];
    [(NSData *)self->_dataContent bytes];
    [error mutableBytes];
    ccdigest();
  }

  else if (error)
  {
    v8 = MSErrorCryptoDomain[0];
    v9 = *error;
    oIDString = [algorithmCopy OIDString];
    *error = [MSError MSErrorWithDomain:v8 code:-4 underlyingError:v9 description:@"%@ is not a supported digest algorithm", oIDString];

    error = 0;
  }

  return error;
}

- (id)encodeMessageSecurityObject:(id *)object
{
  v97[1] = *MEMORY[0x277D85DE8];
  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = __Block_byref_object_copy__0;
  v94 = __Block_byref_object_dispose__0;
  objectCopy = object;
  if (object)
  {
    v4 = *object;
    if (*object)
    {
      v4 = [v4 copy];
    }
  }

  else
  {
    v4 = 0;
  }

  v95 = v4;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v85 = 0u;
  v83 = 0;
  bytes = 0;
  v81 = 0;
  v82 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x2020000000;
  v76[3] = 0;
  digestAlgorithms = self->_digestAlgorithms;
  if (!digestAlgorithms)
  {
    v53 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:v91[5] description:@"Unable to encode signedData: missing digest algorithms"];
    v54 = v91[5];
    v91[5] = v53;

    goto LABEL_76;
  }

  if ([(NSSet *)digestAlgorithms count])
  {
    v6 = [(NSSet *)self->_digestAlgorithms count];
    v7 = malloc_type_malloc(24 * [(NSSet *)self->_digestAlgorithms count], 0x10300406712BA52uLL);
    if (v7)
    {
      v8 = self->_digestAlgorithms;
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __47__MSCMSSignedData_encodeMessageSecurityObject___block_invoke;
      v75[3] = &unk_2798BE358;
      v75[4] = v76;
      v75[5] = v7;
      [(NSSet *)v8 enumerateObjectsUsingBlock:v75];
      goto LABEL_13;
    }

    v57 = [MSError MSErrorWithDomain:MSErrorAllocationDomain[0] code:-67672 underlyingError:v91[5] description:@"Unable to encode signedData: unable to allocate digest algorithm array"];
    v58 = v91[5];
    v91[5] = v57;

LABEL_76:
    v7 = 0;
    goto LABEL_77;
  }

  if ([(NSArray *)self->_signers count]|| self->_dataContent || self->_embeddedContent)
  {
    objectCopy = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:v91[5] description:@"Unable to encode signedData: missing digest algorithm and not certs-only message", objectCopy];
    v50 = v91[5];
    v91[5] = objectCopy;

    goto LABEL_76;
  }

  v6 = 0;
  v7 = 0;
LABEL_13:
  contentType = self->_contentType;
  if (!contentType)
  {
    v55 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:v91[5] description:@"Unable to encode signedData: missing content type"];
    v56 = v91[5];
    v91[5] = v55;

    goto LABEL_77;
  }

  if (!self->_detached && !self->_dataContent && !self->_embeddedContent)
  {
    v65 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:v91[5] description:@"Unable to encode signedData: content is not detached and no content specified"];
    v66 = v91[5];
    v91[5] = v65;

    goto LABEL_77;
  }

  asn1OID = [(MSOID *)contentType Asn1OID];
  v12 = v11;
  if (self->_detached)
  {
    v13 = 0;
  }

  else
  {
    if ([(MSOID *)self->_contentType isEqualToString:@"1.2.840.113549.1.7.1"])
    {
      dataContent = self->_dataContent;
      if (!dataContent)
      {
        v15 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:v91[5] description:@"Unable to encode signedData: id-data content type and no data content"];
        v16 = v91[5];
        v91[5] = v15;

        goto LABEL_77;
      }
    }

    else if (self->_contentType)
    {
      embeddedContent = self->_embeddedContent;
      if (!embeddedContent)
      {
        v67 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:v91[5] description:@"Unable to encode signedData: embedded content type specified and no embedded content"];
        v68 = v91[5];
        v91[5] = v67;

        goto LABEL_77;
      }

      v18 = v91;
      obj = v91[5];
      v19 = [(MSCMSMessage *)embeddedContent encodeMessageSecurityObject:&obj];
      objc_storeStrong(v18 + 5, obj);
      v20 = self->_dataContent;
      self->_dataContent = v19;

      self->_contentChanged = 1;
      dataContent = self->_dataContent;
      if (!dataContent)
      {
        goto LABEL_77;
      }
    }

    else
    {
      dataContent = self->_dataContent;
    }

    bytes = [(NSData *)dataContent bytes];
    v83 = [(NSData *)self->_dataContent length];
    v13 = &v83;
  }

  certificates = self->_certificates;
  if (certificates)
  {
    certificates = [(NSMutableSet *)certificates count];
    if (certificates)
    {
      v22 = malloc_type_malloc(24 * [(NSMutableSet *)self->_certificates count], 0x10800404ACF7207uLL);
      if (v22)
      {
        allObjects = [(NSMutableSet *)self->_certificates allObjects];
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __47__MSCMSSignedData_encodeMessageSecurityObject___block_invoke_2;
        v73[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
        v73[4] = v22;
        [allObjects enumerateObjectsUsingBlock:v73];

        LODWORD(certificates) = [(NSMutableSet *)self->_certificates count];
        goto LABEL_33;
      }

      v63 = [MSError MSErrorWithDomain:MSErrorAllocationDomain[0] code:-67672 underlyingError:v91[5] description:@"Unable to encode signedData: unable to allocate certificates array"];
      v64 = v91[5];
      v91[5] = v63;

LABEL_77:
      v22 = 0;
LABEL_78:
      v24 = 0;
      goto LABEL_79;
    }
  }

  v22 = 0;
LABEL_33:
  LODWORD(v81) = certificates;
  v82 = v22;
  if (![(NSArray *)self->_signers count])
  {
    if (![(NSSet *)self->_digestAlgorithms count]&& !self->_embeddedContent && !self->_dataContent)
    {
      v27 = 0;
      v24 = 0;
LABEL_41:
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v85 = 0u;
      if ([(NSArray *)self->_signers indexOfObjectPassingTest:&__block_literal_global_93]== 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = [(MSOID *)self->_contentType isEqualToString:@"1.2.840.113549.1.7.1"];
        if (v28)
        {
          v29 = 1;
        }

        else
        {
          v29 = 3;
        }

        if (v28)
        {
          v30 = 1;
        }

        else
        {
          v30 = 3;
        }
      }

      else
      {
        v29 = 3;
        v30 = 3;
      }

      LODWORD(v85) = v29;
      v31 = [MEMORY[0x277CCABB0] numberWithInteger:v30];
      version = self->_version;
      self->_version = v31;

      *(&v85 + 1) = v6;
      *&v86 = v7;
      *(&v86 + 1) = asn1OID;
      *&v87 = v12;
      *(&v87 + 1) = v13;
      *&v88 = &v81;
      *&v89 = v27;
      *(&v89 + 1) = v24;
      v70 = 0;
      v33 = length_CMSSignedData(&v85);
      v34 = [MEMORY[0x277CBEB28] dataWithLength:v33];
      v35 = v34;
      if (v34)
      {
        v36 = v34;
        v37 = encode_CMSSignedData([v35 mutableBytes] + v33 - 1, v33, &v85, &v70);
        if (!v37)
        {
          if (v33 != v70)
          {
            result = asn1_abort();
            __break(1u);
            return result;
          }

          goto LABEL_55;
        }

        v38 = v37;
      }

      else
      {
        v38 = 12;
      }

      v39 = MEMORY[0x277CCA9B8];
      v96 = *MEMORY[0x277CCA450];
      v97[0] = @"Failed encoding type CMSSignedData";
      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:&v96 count:1];
      v41 = [v39 errorWithDomain:@"com.apple.HeimASN1" code:v38 userInfo:v40];
      v42 = v91[5];
      v91[5] = v41;

      v35 = 0;
LABEL_55:
      self->_contentChanged = 0;
      goto LABEL_56;
    }

    v51 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:v91[5] description:@"Unable to encode signedData: no signers and not certs-only message"];
    v52 = v91[5];
    v91[5] = v51;

    goto LABEL_78;
  }

  v24 = malloc_type_malloc(104 * [(NSArray *)self->_signers count], 0x10B00404EF9CE24uLL);
  if (!v24)
  {
    v59 = [MSError MSErrorWithDomain:MSErrorAllocationDomain[0] code:-67672 underlyingError:v91[5] description:@"Unable to encode signedData: unable to allocate signerInfos array"];
    v60 = v91[5];
    v91[5] = v59;

    goto LABEL_78;
  }

  signers = self->_signers;
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __47__MSCMSSignedData_encodeMessageSecurityObject___block_invoke_3;
  v72[3] = &unk_2798BE1F8;
  v72[4] = self;
  [(NSArray *)signers enumerateObjectsUsingBlock:v72];
  v26 = self->_signers;
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __47__MSCMSSignedData_encodeMessageSecurityObject___block_invoke_5;
  v71[3] = &unk_2798BE2E8;
  v71[4] = &v90;
  v71[5] = &v77;
  v71[6] = v24;
  [(NSArray *)v26 enumerateObjectsUsingBlock:v71];
  if (*(v78 + 24) != 1)
  {
    v27 = [(NSArray *)self->_signers count];
    goto LABEL_41;
  }

  v61 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-50 underlyingError:v91[5] description:@"Unable to encode signedData: failed to encode a SignerInfo"];
  v62 = v91[5];
  v91[5] = v61;

LABEL_79:
  v35 = 0;
LABEL_56:
  if (objectCopy)
  {
    v43 = v91[5];
    if (v43)
    {
      *objectCopy = v43;
    }
  }

  if (v7)
  {
    free(v7);
  }

  if (v22)
  {
    free(v22);
  }

  if (v24)
  {
    v44 = 0;
    for (i = v24; ; i += 104)
    {
      signers = [(MSCMSSignedData *)self signers];
      v47 = v44 < [signers count];

      if (!v47)
      {
        break;
      }

      free_SignerInfo(i);
      ++v44;
    }

    free(v24);
  }

  _Block_object_dispose(v76, 8);
  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v90, 8);

  return v35;
}

__n128 __47__MSCMSSignedData_encodeMessageSecurityObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = (*(a1 + 40) + 24 * *(*(*(a1 + 32) + 8) + 24));
  v4 = [a2 asn1AlgId];
  result = *v4;
  v3[1].n128_u64[0] = v4[1].n128_u64[0];
  *v3 = result;
  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __47__MSCMSSignedData_encodeMessageSecurityObject___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = 3 * a3;
  *(*(a1 + 32) + 24 * a3) = 1;
  v5 = a2;
  *(*(a1 + 32) + 8 * v4 + 16) = SecCertificateGetBytePtr();
  Length = SecCertificateGetLength();

  *(*(a1 + 32) + 8 * v4 + 8) = Length;
}

void __47__MSCMSSignedData_encodeMessageSecurityObject___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 protectedAttributes];
  v5 = [MSOID OIDWithString:@"1.2.840.113549.1.9.2.51" error:0];
  v6 = [v4 getAttributesWithType:v5];

  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = [v6 count];
  v7 = *(*(a1 + 32) + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__MSCMSSignedData_encodeMessageSecurityObject___block_invoke_4;
  v10[3] = &unk_2798BE2C0;
  v8 = v3;
  v11 = v8;
  v13 = v14;
  v9 = v6;
  v12 = v9;
  [v7 enumerateObjectsUsingBlock:v10];

  _Block_object_dispose(v14, 8);
}

void __47__MSCMSSignedData_encodeMessageSecurityObject___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  if (a1[4] != v3)
  {
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 24);
    if (v5)
    {
      v9 = v3;
      v6 = a1[5];
      *(v4 + 24) = v5 - 1;
      v7 = [v6 objectAtIndex:?];
      v8 = [v9 calculateSignedAttributesDigest:0];
      [v7 setSignedAttrsHash:v8];

      v3 = v9;
    }
  }
}

void __47__MSCMSSignedData_encodeMessageSecurityObject___block_invoke_5(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[6] + 104 * a3;
  v7 = *(a1[4] + 8);
  obj = *(v7 + 40);
  v8 = [a2 encodeSignerInfo:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if ((v8 & 1) == 0)
  {
    *a4 = 1;
    *(*(a1[5] + 8) + 24) = 1;
  }
}

BOOL __47__MSCMSSignedData_encodeMessageSecurityObject___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 version];
  v3 = [v2 integerValue] > 1;

  return v3;
}

+ (id)decodeMessageSecurityObject:(id)object options:(id)options error:(id *)error
{
  v82 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  optionsCopy = options;
  errorCopy = error;
  if (error && *error)
  {
    v8 = [*error copy];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MSCMSSignedData alloc];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v60 = objectCopy;
  v10 = nsheim_decode_CMSSignedData(objectCopy, &v72);
  if (v10)
  {
    v11 = MSErrorASN1Domain[0];
    if (objectCopy)
    {
      v12 = [objectCopy length];
    }

    else
    {
      v12 = -1;
    }

    v19 = [MSError MSErrorWithDomain:v11 code:v10 underlyingError:v8 description:@"unable to decode signedData (%ld bytes)", v12];

    dumpNSData("CMSSignedData", objectCopy);
    v20 = 0;
    v61 = 0;
    v62 = 0;
    v57 = 0;
    v59 = 0;
    v9 = 0;
    goto LABEL_16;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInt:v72];
  [(MSCMSSignedData *)v9 setVersion:v13];

  v61 = [MEMORY[0x277CBEB58] setWithCapacity:DWORD2(v72)];
  if (DWORD2(v72))
  {
    v14 = 0;
    v15 = 0;
    do
    {
      memset(buf, 0, sizeof(buf));
      v78 = 0;
      v16 = *(v73 + v14 + 16);
      *buf = *(v73 + v14);
      v78 = v16;
      v71 = v8;
      v17 = [MSAlgorithmIdentifier algorithmIdentifierWithAsn1AlgId:buf error:&v71];
      v18 = v71;

      if (v17)
      {
        [v61 addObject:v17];
      }

      ++v15;
      v14 += 24;
      v8 = v18;
    }

    while (v15 < DWORD2(v72));
  }

  else
  {
    v18 = v8;
  }

  [(MSCMSSignedData *)v9 setDigestAlgorithms:v61];
  v70 = v18;
  v59 = [MSOID OIDWithAsn1OID:&v73 + 8 error:&v70];
  v24 = v70;

  if (!v59)
  {
    [MSCMSSignedData decodeMessageSecurityObject:v24 options:v9 error:buf];
    v20 = 0;
    v62 = 0;
    v57 = 0;
    v59 = 0;
LABEL_78:
    v9 = 0;
    v19 = *buf;
    goto LABEL_16;
  }

  [(MSCMSSignedData *)v9 setContentType:?];
  v25 = *(&v74 + 1);
  if (*(&v74 + 1))
  {
    v26 = NSDataFromAny(*(&v74 + 1));
    [(MSCMSSignedData *)v9 setDataContent:v26];
  }

  [(MSCMSSignedData *)v9 setDetached:v25 == 0];
  if ([v59 isEqualToString:@"1.2.840.113549.1.7.1"])
  {
    v57 = 0;
  }

  else
  {
    dataContent = [(MSCMSSignedData *)v9 dataContent];
    v69 = v24;
    v57 = decodeEmbeddedCMSContent(v59, dataContent, optionsCopy, &v69);
    v28 = v69;

    if (v57)
    {
      [(MSCMSSignedData *)v9 setEmbeddedContent:?];
    }

    else
    {
      v57 = 0;
    }

    v24 = v28;
  }

  [(MSCMSSignedData *)v9 setContentChanged:0];
  if (v75)
  {
    v20 = [MEMORY[0x277CBEB58] setWithCapacity:*v75];
    v29 = v75;
    if (*v75)
    {
      v30 = 0;
      v31 = 0;
      while (*(*(v29 + 8) + v30) == 1)
      {
        v32 = SecCertificateCreateWithBytes();
        if (!v32)
        {
          if (MS_DEFAULT_LOG_BLOCK != -1)
          {
            +[MSCMSSignedData decodeMessageSecurityObject:options:error:];
          }

          v36 = MS_DEFAULT_LOG_INTERNAL;
          if (!os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_47;
          }

          *buf = 67109120;
          *&buf[4] = v31;
          v34 = v36;
          v35 = "unable to parse certificate at %u";
          goto LABEL_46;
        }

        [v20 addObject:v32];

LABEL_47:
        ++v31;
        v29 = v75;
        v30 += 24;
        if (v31 >= *v75)
        {
          goto LABEL_54;
        }
      }

      if (MS_DEFAULT_LOG_BLOCK != -1)
      {
        +[MSCMSSignedData decodeMessageSecurityObject:options:error:];
      }

      v33 = MS_DEFAULT_LOG_INTERNAL;
      if (!os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_47;
      }

      *buf = 67109120;
      *&buf[4] = v31;
      v34 = v33;
      v35 = "skipping non-certificate CertificateChoice at %u";
LABEL_46:
      _os_log_impl(&dword_258C80000, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 8u);
      goto LABEL_47;
    }
  }

  else
  {
    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      +[MSCMSSignedData decodeMessageSecurityObject:options:error:];
    }

    v37 = MS_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_258C80000, v37, OS_LOG_TYPE_INFO, "No certificates in SignedData", buf, 2u);
    }

    v20 = [MEMORY[0x277CBEB58] set];
  }

LABEL_54:
  additionalCertificates = [optionsCopy additionalCertificates];

  if (additionalCertificates)
  {
    additionalCertificates2 = [optionsCopy additionalCertificates];
    [v20 addObjectsFromArray:additionalCertificates2];
  }

  [(MSCMSSignedData *)v9 setCertificates:v20];
  v62 = [MEMORY[0x277CBEB18] arrayWithCapacity:v76];
  if (v76)
  {
    v40 = 0;
    v41 = 0;
    do
    {
      v42 = *(&v76 + 1);
      allObjects = [v20 allObjects];
      lAContext = [optionsCopy LAContext];
      v68 = v24;
      v45 = [MSCMSSignerInfo decodeSignerInfo:v42 + v40 certificates:allObjects LAContext:lAContext error:&v68];
      v46 = v68;

      if (v45)
      {
        [v45 setContainingSignedData:v9];
        [v62 addObject:v45];
        [(MSCMSSignedData *)v9 addDigestAlgorithmFromSigner:v45];
        v24 = v46;
      }

      else
      {
        v24 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 errorLevel:2 underlyingError:v46 description:@"failed to create signerInfo object for signer %u", v41];
      }

      ++v41;
      v40 += 104;
    }

    while (v41 < v76);
  }

  [(MSCMSSignedData *)v9 setSigners:v62];
  v67 = v24;
  v47 = [(MSCMSSignedData *)v9 checkSignedPerRFC5652:&v67];
  v48 = v67;

  if (!v47)
  {
    [MSCMSSignedData decodeMessageSecurityObject:v48 options:v9 error:buf];
    goto LABEL_78;
  }

  [(MSCMSSignedData *)v9 setOptions:optionsCopy];
  if ([optionsCopy verifySigners])
  {
    signerPolicies = [optionsCopy signerPolicies];
    verifyTime = [optionsCopy verifyTime];
    anchorCertificates = [optionsCopy anchorCertificates];
    v66 = v48;
    v52 = [(MSCMSSignedData *)v9 verifySignaturesAndSignersWithPolicies:signerPolicies verifyTime:verifyTime anchorCertificates:anchorCertificates error:&v66];
    v19 = v66;

    if (!v52)
    {
      v53 = [MSError MSErrorWithDomain:MSErrorTrustDomain code:-67808 underlyingError:v19 description:@"decode failed due to signer verification failure"];

      v9 = 0;
      v19 = v53;
    }
  }

  else if (([optionsCopy verifySignatures] & 1) != 0 || objc_msgSend(optionsCopy, "verifyTimestamps"))
  {
    v65 = v48;
    v54 = [(MSCMSSignedData *)v9 verifySignatures:&v65];
    v19 = v65;

    if (!v54)
    {
      v55 = [MSError MSErrorWithDomain:MSErrorCryptoDomain[0] code:-67808 underlyingError:v19 description:@"decode failed due to signature verification failure"];

      v9 = 0;
      v19 = v55;
    }

    if ([optionsCopy verifyTimestamps])
    {
      *buf = 0;
      *&buf[8] = buf;
      v78 = 0x3032000000;
      v79 = __Block_byref_object_copy__0;
      v80 = __Block_byref_object_dispose__0;
      v81 = 0;
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __61__MSCMSSignedData_decodeMessageSecurityObject_options_error___block_invoke_133;
      v64[3] = &unk_2798BE220;
      v64[4] = buf;
      [v62 enumerateObjectsUsingBlock:v64];
      if (*(*&buf[8] + 40) || ![v62 count])
      {
        v56 = [MSError MSErrorWithDomain:MSErrorCryptoDomain[0] code:-67808 underlyingError:v19 description:@"decode failed due to timestamp verification failure"];

        v9 = 0;
        v19 = v56;
      }

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v19 = v48;
  }

LABEL_16:
  if (errorCopy && v19)
  {
    v21 = v19;
    *errorCopy = v19;
  }

  free_CMSSignedData(&v72);
  v22 = v9;

  return v22;
}

uint64_t __61__MSCMSSignedData_decodeMessageSecurityObject_options_error___block_invoke()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __61__MSCMSSignedData_decodeMessageSecurityObject_options_error___block_invoke_114()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __61__MSCMSSignedData_decodeMessageSecurityObject_options_error___block_invoke_117()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __61__MSCMSSignedData_decodeMessageSecurityObject_options_error___block_invoke_133(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(*(a1 + 32) + 8);
  obj = *(v5 + 40);
  v6 = [a2 verifyTimestamps:1 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if ((v6 & 1) == 0)
  {
    *a4 = 1;
  }
}

- (void)removeSignersWithIdentity:(__SecIdentity *)identity error:(id *)error
{
  if (error && *error)
  {
    v7 = [*error copy];
  }

  else
  {
    v7 = 0;
  }

  v13 = v7;
  v8 = MSSecIdentityCopyCertificateWithError(identity, &v13);
  v9 = v13;

  if (v8)
  {
    v12 = v9;
    [(MSCMSSignedData *)self removeSignersWithCertificate:v8 error:&v12];
    v10 = v12;

    v9 = v10;
  }

  if (error && v9)
  {
    v11 = v9;
    *error = v9;
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

- (void)addCertificatesForSigner:(void *)a1 mode:(uint64_t *)a2 error:.cold.3(void *a1, uint64_t *a2)
{
  *a2 = [MSError MSErrorWithDomain:MSErrorTrustDomain code:-25245 underlyingError:a1 description:@"unable to build chain according to mode could not evaluate trust"];;
}

- (void)addCertificatesForSigner:mode:error:.cold.4()
{
  OUTLINED_FUNCTION_0();
  *v0 = [MSError MSErrorWithDomain:"MSErrorWithDomain:code:underlyingError:description:" code:MSErrorCMSDomain[0] underlyingError:-50 description:?];
}

- (void)addCertificatesForSigner:mode:error:.cold.5()
{
  OUTLINED_FUNCTION_0();
  *v0 = [MSError MSErrorWithDomain:"MSErrorWithDomain:code:underlyingError:description:" code:MSErrorCMSDomain[0] underlyingError:-50 description:?];
}

- (void)checkSignedPerRFC5652:.cold.1()
{
  OUTLINED_FUNCTION_0();
  *v0 = [MSError MSErrorWithDomain:"MSErrorWithDomain:code:underlyingError:description:" code:MSErrorCMSDomain[0] underlyingError:-26275 description:?];
}

+ (void)decodeMessageSecurityObject:(void *)a1 options:(void *)a2 error:(uint64_t *)a3 .cold.4(void *a1, void *a2, uint64_t *a3)
{
  *a3 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:a1 description:@"decode failed for signedData due to RFC 5652 violation"];
}

+ (void)decodeMessageSecurityObject:(void *)a1 options:(void *)a2 error:(uint64_t *)a3 .cold.5(void *a1, void *a2, uint64_t *a3)
{
  *a3 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:a1 description:@"unable to get contentType from signedData"];
}

@end