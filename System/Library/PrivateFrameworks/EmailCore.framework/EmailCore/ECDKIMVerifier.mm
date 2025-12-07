@interface ECDKIMVerifier
- (BOOL)_verifyMessageBodyData:(id)data withOptions:(int64_t)options usingSignature:(id)signature;
- (BOOL)_verifyMessageHeaders:(id)headers usingSignature:(id)signature publicKeySource:(id)source error:(id *)error;
- (BOOL)verifyMessageData:(id)data options:(int64_t)options;
- (BOOL)verifyMessageData:(id)data publicKeySource:(id)source options:(int64_t)options;
- (BOOL)verifyMessageWithContext:(id)context options:(int64_t)options error:(id *)error;
- (BOOL)verifyMessageWithContext:(id)context publicKeySource:(id)source options:(int64_t)options error:(id *)error;
- (ECDKIMVerifier)init;
- (ECDKIMVerifier)initWithPublicKeySource:(id)source;
- (id)_base64HashBodyData:(id)data usingSignature:(id)signature;
- (id)_canonicalizeHeaders:(id)headers usingRelaxedAlgorithmWithSignatureHeader:(id)header;
- (id)_canonicalizeHeaders:(id)headers usingSimpleAlgorithmWithSignatureHeader:(id)header;
- (id)_relaxedCanonicalizationForHeaderName:(id)name headerBody:(id)body;
- (id)_verifyMessage:(id)message withDKIMSignatureHeaders:(id)headers publicKeySource:(id)source options:(int64_t)options error:(id *)error;
- (id)verifiableMessageForMessageData:(id)data dkimSignatureHeaders:(id *)headers error:(id *)error;
- (id)verificationContextForMessageData:(id)data error:(id *)error;
- (id)verifyMessage:(id)message withDKIMSignatureHeaders:(id)headers options:(int64_t)options error:(id *)error;
- (void)_canonicalizeBodyDataUsingRelaxedAlgorithm:(id)algorithm;
- (void)_canonicalizeBodyDataUsingSimpleAlgorithm:(id)algorithm;
@end

@implementation ECDKIMVerifier

uint64_t ___ef_log_ECDKIMVerifier_block_invoke()
{
  _ef_log_ECDKIMVerifier_log = os_log_create("com.apple.email", "ECDKIMVerifier");

  return MEMORY[0x2821F96F8]();
}

- (ECDKIMVerifier)initWithPublicKeySource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = ECDKIMVerifier;
  v6 = [(ECDKIMVerifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_publicKeySource, source);
  }

  return v7;
}

- (ECDKIMVerifier)init
{
  v3 = objc_alloc_init(ECDNSClient);
  v4 = [(ECDKIMVerifier *)self initWithPublicKeySource:v3];

  return v4;
}

- (id)verifiableMessageForMessageData:(id)data dkimSignatureHeaders:(id *)headers error:(id *)error
{
  v60 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (headers)
  {
    *headers = 0;
  }

  if (error)
  {
    *error = 0;
  }

  v56 = 168626701;
  v44 = [MEMORY[0x277CBEA90] dataWithBytes:&v56 length:4];
  v7 = [dataCopy ef_rangeOfData:?];
  v9 = v8;
  errorCopy = error;
  if (v8)
  {
    v10 = v7;
    v41 = [dataCopy ef_subdataToIndex:{objc_msgSend(@"\r\n", "length") + v7}];
    v42 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v41 encoding:4];
    v39 = [dataCopy ef_subdataFromIndex:v10 + v9];
    v40 = [[ECRawMessageHeaders alloc] initWithHeaderString:v42];
    v38 = [(ECRawMessageHeaders *)v40 headersForKey:@"dkim-signature"];
    v46 = objc_opt_new();
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v11 = v38;
    v12 = 0;
    v13 = [v11 countByEnumeratingWithState:&v52 objects:v59 count:16];
    if (v13)
    {
      v14 = *v53;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v53 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v52 + 1) + 8 * i);
          v17 = [ECDKIMMessageHeader alloc];
          transmittedName = [v16 transmittedName];
          body = [v16 body];
          v51 = 0;
          v20 = [(ECDKIMMessageHeader *)v17 initWithHeaderFieldName:transmittedName headerBody:body error:&v51];
          v21 = v51;

          if (v21)
          {
            v23 = _ef_log_ECDKIMVerifier(v22);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              ef_publicDescription = [v21 ef_publicDescription];
              [(ECDKIMVerifier *)ef_publicDescription verifiableMessageForMessageData:buf dkimSignatureHeaders:&v58 error:v23];
            }

            v12 = v21;
          }

          else
          {
            agentOrUserIdentifier = [(ECDKIMMessageHeader *)v20 agentOrUserIdentifier];
            signingDomainIdentifier = [(ECDKIMMessageHeader *)v20 signingDomainIdentifier];
            v27 = [agentOrUserIdentifier ef_hasCaseInsensitiveSuffix:signingDomainIdentifier];

            if (v27)
            {
              signedHeaderFields = [(ECDKIMMessageHeader *)v20 signedHeaderFields];
              v30 = [signedHeaderFields containsObject:@"from"];

              if (v30)
              {
                [v46 addObject:v20];
                v12 = 0;
                goto LABEL_23;
              }

              v32 = _ef_log_ECDKIMVerifier(v31);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                [ECDKIMVerifier verifiableMessageForMessageData:v48 dkimSignatureHeaders:? error:?];
              }
            }

            else
            {
              v32 = _ef_log_ECDKIMVerifier(v28);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                [ECDKIMVerifier verifiableMessageForMessageData:v50 dkimSignatureHeaders:? error:?];
              }
            }

            v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ECDKIMVerifier" code:1 userInfo:0];
          }

LABEL_23:
        }

        v13 = [v11 countByEnumeratingWithState:&v52 objects:v59 count:16];
      }

      while (v13);
    }

    if ([v46 count] || !v12)
    {
      if (headers)
      {
        v36 = v46;
        *headers = v46;
      }

      v34 = [[ECDKIMVerifiableMessage alloc] initWithHeaders:v40 bodyData:v39];
    }

    else if (errorCopy)
    {
      v33 = v12;
      v34 = 0;
      *errorCopy = v12;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v35 = _ef_log_ECDKIMVerifier(v7);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [ECDKIMVerifier verifiableMessageForMessageData:v35 dkimSignatureHeaders:? error:?];
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"ECDKIMVerifier" code:1 userInfo:0];
      *error = v34 = 0;
    }

    else
    {
      v34 = 0;
    }
  }

  return v34;
}

- (BOOL)verifyMessageData:(id)data options:(int64_t)options
{
  v10 = 0;
  v6 = [(ECDKIMVerifier *)self verifiableMessageForMessageData:data dkimSignatureHeaders:&v10 error:0];
  v7 = v10;
  v8 = [(ECDKIMVerifier *)self verifyMessage:v6 withDKIMSignatureHeaders:v7 options:options error:0];

  return v8 != 0;
}

- (id)verifyMessage:(id)message withDKIMSignatureHeaders:(id)headers options:(int64_t)options error:(id *)error
{
  messageCopy = message;
  headersCopy = headers;
  publicKeySource = [(ECDKIMVerifier *)self publicKeySource];
  v13 = [(ECDKIMVerifier *)self _verifyMessage:messageCopy withDKIMSignatureHeaders:headersCopy publicKeySource:publicKeySource options:options error:error];

  return v13;
}

- (id)_verifyMessage:(id)message withDKIMSignatureHeaders:(id)headers publicKeySource:(id)source options:(int64_t)options error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  headersCopy = headers;
  sourceCopy = source;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = headersCopy;
  v12 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v12)
  {
    v13 = *v33;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v33 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v32 + 1) + 8 * v14);
      if ((options & 2) != 0)
      {
        bodyData = [messageCopy bodyData];
        v19 = [(ECDKIMVerifier *)self _verifyMessageBodyData:bodyData withOptions:options usingSignature:v15];

        v16 = !v19;
        if ((options & 1) == 0)
        {
LABEL_8:
          v17 = 0;
          goto LABEL_12;
        }
      }

      else
      {
        v16 = 0;
        if ((options & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      headers = [messageCopy headers];
      v31 = 0;
      v21 = [(ECDKIMVerifier *)self _verifyMessageHeaders:headers usingSignature:v15 publicKeySource:sourceCopy error:&v31];
      v22 = v31;

      if (v22)
      {
        if (error)
        {
          v24 = MEMORY[0x277CCA9B8];
          v36 = *MEMORY[0x277CCA7E8];
          v37 = v22;
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          *error = [v24 errorWithDomain:@"ECDKIMVerifier" code:0 userInfo:v25];
        }

        v23 = 0;
        goto LABEL_23;
      }

      v17 = !v21;
LABEL_12:
      if (((v16 | v17) & 1) == 0)
      {
        if (error)
        {
          *error = 0;
        }

        v23 = v15;
LABEL_23:

        goto LABEL_24;
      }

      if (v12 == ++v14)
      {
        v12 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"ECDKIMVerifier" code:1 userInfo:0];
    *error = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

LABEL_24:

  return v23;
}

- (BOOL)_verifyMessageBodyData:(id)data withOptions:(int64_t)options usingSignature:(id)signature
{
  optionsCopy = options;
  signatureCopy = signature;
  v9 = [data mutableCopy];
  bodyCanonicalizationAlgorithm = [signatureCopy bodyCanonicalizationAlgorithm];
  if (bodyCanonicalizationAlgorithm)
  {
    if (bodyCanonicalizationAlgorithm == 1)
    {
      [(ECDKIMVerifier *)self _canonicalizeBodyDataUsingRelaxedAlgorithm:v9];
    }
  }

  else
  {
    [(ECDKIMVerifier *)self _canonicalizeBodyDataUsingSimpleAlgorithm:v9];
  }

  bodyLength = [signatureCopy bodyLength];
  if (!bodyLength)
  {
    goto LABEL_7;
  }

  bodyLength2 = [signatureCopy bodyLength];
  unsignedIntegerValue = [bodyLength2 unsignedIntegerValue];
  v14 = [v9 length];

  if (unsignedIntegerValue == v14)
  {
    goto LABEL_7;
  }

  bodyLength3 = [signatureCopy bodyLength];
  unsignedIntegerValue2 = [bodyLength3 unsignedIntegerValue];
  v20 = [v9 length];

  if (unsignedIntegerValue2 > v20)
  {
    v22 = _ef_log_ECDKIMVerifier(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ECDKIMVerifier _verifyMessageBodyData:v22 withOptions:? usingSignature:?];
    }

LABEL_14:

    v17 = 0;
    goto LABEL_15;
  }

  if ((optionsCopy & 4) != 0)
  {
    v22 = _ef_log_ECDKIMVerifier(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_22D092000, v22, OS_LOG_TYPE_DEFAULT, "Ignoring DKIM signature that did not sign the entire body (required by options).", v24, 2u);
    }

    goto LABEL_14;
  }

LABEL_7:
  v15 = [(ECDKIMVerifier *)self _base64HashBodyData:v9 usingSignature:signatureCopy];
  canonicalizedBodyHash = [signatureCopy canonicalizedBodyHash];
  v17 = [v15 isEqualToString:canonicalizedBodyHash];

LABEL_15:
  return v17;
}

- (id)_base64HashBodyData:(id)data usingSignature:(id)signature
{
  dataCopy = data;
  signatureCopy = signature;
  hashingAlgorithm = [signatureCopy hashingAlgorithm];
  if (hashingAlgorithm)
  {
    v8 = 32 * (hashingAlgorithm == 1);
  }

  else
  {
    v8 = 20;
  }

  v9 = [MEMORY[0x277CBEB28] dataWithLength:v8];
  bodyLength = [signatureCopy bodyLength];
  if (bodyLength)
  {
    bodyLength2 = [signatureCopy bodyLength];
    unsignedIntegerValue = [bodyLength2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = [dataCopy length];
  }

  v13 = [dataCopy subdataWithRange:{0, unsignedIntegerValue}];
  bytes = [v13 bytes];

  hashingAlgorithm2 = [signatureCopy hashingAlgorithm];
  if (hashingAlgorithm2)
  {
    if (hashingAlgorithm2 == 1)
    {
      CC_SHA256(bytes, unsignedIntegerValue, [v9 mutableBytes]);
    }
  }

  else
  {
    CC_SHA1(bytes, unsignedIntegerValue, [v9 mutableBytes]);
  }

  v16 = [v9 base64EncodedStringWithOptions:0];

  return v16;
}

- (BOOL)_verifyMessageHeaders:(id)headers usingSignature:(id)signature publicKeySource:(id)source error:(id *)error
{
  selfCopy = self;
  v64 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  sourceCopy = source;
  allHeaders = [headers allHeaders];
  reverseObjectEnumerator = [allHeaders reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v10 = objc_opt_new();
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  signedHeaderFields = [signatureCopy signedHeaderFields];
  obj = signedHeaderFields;
  v12 = [signedHeaderFields countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v12)
  {
    v36 = *v59;
    do
    {
      v38 = v12;
      for (i = 0; i != v38; ++i)
      {
        if (*v59 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v58 + 1) + 8 * i);
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v15 = allObjects;
        v16 = [v15 countByEnumeratingWithState:&v54 objects:v62 count:16];
        if (v16)
        {
          v17 = *v55;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v55 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v54 + 1) + 8 * j);
              name = [v19 name];
              if ([name isEqualToString:v14])
              {
                v21 = [v10 containsObject:v19];

                if ((v21 & 1) == 0)
                {
                  [v10 addObject:v19];
                  goto LABEL_17;
                }
              }

              else
              {
              }
            }

            v16 = [v15 countByEnumeratingWithState:&v54 objects:v62 count:16];
          }

          while (v16);
        }

LABEL_17:
      }

      signedHeaderFields = obj;
      v12 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v12);
  }

  headerCanonicalizationAlgorithm = [signatureCopy headerCanonicalizationAlgorithm];
  if (!headerCanonicalizationAlgorithm)
  {
    v23 = [(ECDKIMVerifier *)selfCopy _canonicalizeHeaders:v10 usingSimpleAlgorithmWithSignatureHeader:signatureCopy];
    goto LABEL_23;
  }

  if (headerCanonicalizationAlgorithm == 1)
  {
    v23 = [(ECDKIMVerifier *)selfCopy _canonicalizeHeaders:v10 usingRelaxedAlgorithmWithSignatureHeader:signatureCopy];
LABEL_23:
    v24 = v23;
    goto LABEL_25;
  }

  v24 = 0;
LABEL_25:
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy_;
  v48 = __Block_byref_object_dispose_;
  v49 = 0;
  signingDomainIdentifier = [signatureCopy signingDomainIdentifier];
  selector = [signatureCopy selector];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __77__ECDKIMVerifier__verifyMessageHeaders_usingSignature_publicKeySource_error___block_invoke;
  v39[3] = &unk_27874B768;
  v42 = &v50;
  v43 = &v44;
  v27 = v24;
  v40 = v27;
  v28 = signatureCopy;
  v41 = v28;
  [sourceCopy getPublicKeyRecordsFromDomain:signingDomainIdentifier withSelector:selector completionHandler:v39];

  if (error)
  {
    *error = v45[5];
  }

  v29 = *(v51 + 24);

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v50, 8);

  return v29 & 1;
}

void __77__ECDKIMVerifier__verifyMessageHeaders_usingSignature_publicKeySource_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v22 = a2;
  v21 = a3;
  if (v21)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  else
  {
    v23 = [*(a1 + 32) dataUsingEncoding:1];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v22;
    v5 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v5)
    {
      v6 = *v31;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v31 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = [[ECDKIMPublicKey alloc] initWithRecord:*(*(&v30 + 1) + 8 * i)];
          v9 = [(ECDKIMPublicKey *)v8 publicKeyData];
          v10 = v9 == 0;

          if (v10)
          {
            v18 = _ef_log_ECDKIMVerifier(v11);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              __77__ECDKIMVerifier__verifyMessageHeaders_usingSignature_publicKeySource_error___block_invoke_cold_2(&v28, v29);
            }
          }

          else
          {
            v12 = [(ECDKIMPublicKey *)v8 signingAlgorithm];
            v13 = [*(a1 + 40) signingAlgorithm];
            if (v12 == v13)
            {
              v14 = [*(a1 + 40) signatureData];
              v15 = [(ECDKIMPublicKey *)v8 publicKeyData];
              v16 = [*(a1 + 40) hashingAlgorithm];
              v25 = 0;
              v17 = [ECDKIMCryptoUtil verifySignedData:v23 withSignatureData:v14 publicKeyData:v15 hashingAlgorithm:v16 error:&v25];
              v18 = v25;
              *(*(*(a1 + 48) + 8) + 24) = v17;

              if (*(*(*(a1 + 48) + 8) + 24) == 1)
              {

                goto LABEL_22;
              }

              v20 = _ef_log_ECDKIMVerifier(v19);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v35 = v18;
                _os_log_error_impl(&dword_22D092000, v20, OS_LOG_TYPE_ERROR, "Failed to verify DKIM signed data: %{public}@", buf, 0xCu);
              }
            }

            else
            {
              v18 = _ef_log_ECDKIMVerifier(v13);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                __77__ECDKIMVerifier__verifyMessageHeaders_usingSignature_publicKeySource_error___block_invoke_cold_1(&v26, v27);
              }
            }
          }
        }

        v5 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }
}

- (void)_canonicalizeBodyDataUsingSimpleAlgorithm:(id)algorithm
{
  algorithmCopy = algorithm;
  ef_crlfData = [MEMORY[0x277CBEA90] ef_crlfData];
  v4 = [algorithmCopy ef_hasSuffix:ef_crlfData];

  if (v4)
  {
    while ([algorithmCopy length] >= 4)
    {
      v5 = [algorithmCopy length];
      ef_crlfData2 = [MEMORY[0x277CBEA90] ef_crlfData];
      v7 = [algorithmCopy subdataWithRange:{v5 - 4, objc_msgSend(ef_crlfData2, "length")}];
      ef_crlfData3 = [MEMORY[0x277CBEA90] ef_crlfData];
      v9 = [v7 isEqualToData:ef_crlfData3];

      if (!v9)
      {
        break;
      }

      v10 = [algorithmCopy length];
      ef_crlfData4 = [MEMORY[0x277CBEA90] ef_crlfData];
      [algorithmCopy ef_deleteBytesInRange:{v10 - 4, objc_msgSend(ef_crlfData4, "length")}];
    }
  }

  else
  {
    ef_crlfData5 = [MEMORY[0x277CBEA90] ef_crlfData];
    [algorithmCopy appendData:ef_crlfData5];
  }
}

- (void)_canonicalizeBodyDataUsingRelaxedAlgorithm:(id)algorithm
{
  algorithmCopy = algorithm;
  v14 = 2336;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&v14 length:2];
  ef_crlfData = [MEMORY[0x277CBEA90] ef_crlfData];
  [algorithmCopy ef_deleteBytesInData:v4 beforeOccurrencesOfData:ef_crlfData];

  v13 = 32;
  ef_crlfData3 = [MEMORY[0x277CBEA90] dataWithBytes:&v13 length:1];
  [algorithmCopy ef_replaceContiguousSequencesOfBytesInData:v4 withData:ef_crlfData3];
  while (1)
  {

    ef_crlfData2 = [MEMORY[0x277CBEA90] ef_crlfData];
    v8 = [algorithmCopy ef_hasSuffix:ef_crlfData2];

    if (!v8)
    {
      break;
    }

    v9 = [algorithmCopy length];
    ef_crlfData3 = [MEMORY[0x277CBEA90] ef_crlfData];
    [algorithmCopy ef_deleteBytesInRange:{v9 - 2, objc_msgSend(ef_crlfData3, "length")}];
  }

  if ([algorithmCopy length])
  {
    ef_crlfData4 = [MEMORY[0x277CBEA90] ef_crlfData];
    v11 = [algorithmCopy ef_hasSuffix:ef_crlfData4];

    if ((v11 & 1) == 0)
    {
      ef_crlfData5 = [MEMORY[0x277CBEA90] ef_crlfData];
      [algorithmCopy appendData:ef_crlfData5];
    }
  }
}

- (id)_canonicalizeHeaders:(id)headers usingSimpleAlgorithmWithSignatureHeader:(id)header
{
  v23 = *MEMORY[0x277D85DE8];
  headersCopy = headers;
  headerCopy = header;
  v7 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = headersCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        transmittedName = [v12 transmittedName];
        body = [v12 body];
        [v7 appendFormat:@"%@:%@", transmittedName, body, v18];
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  headerNameForCanonicalization = [headerCopy headerNameForCanonicalization];
  bodyForCanonicalization = [headerCopy bodyForCanonicalization];
  [v7 appendFormat:@"%@:%@", headerNameForCanonicalization, bodyForCanonicalization];

  while ([v7 hasSuffix:@"\r\n"])
  {
    [v7 deleteCharactersInRange:{objc_msgSend(v7, "length") - objc_msgSend(@"\r\n", "length"), objc_msgSend(@"\r\n", "length")}];
  }

  return v7;
}

- (id)_canonicalizeHeaders:(id)headers usingRelaxedAlgorithmWithSignatureHeader:(id)header
{
  v26 = *MEMORY[0x277D85DE8];
  headersCopy = headers;
  headerCopy = header;
  v8 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = headersCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        name = [v13 name];
        body = [v13 body];
        v16 = [(ECDKIMVerifier *)self _relaxedCanonicalizationForHeaderName:name headerBody:body];

        [v8 appendString:v16];
      }

      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  headerNameForCanonicalization = [headerCopy headerNameForCanonicalization];
  bodyForCanonicalization = [headerCopy bodyForCanonicalization];
  v19 = [(ECDKIMVerifier *)self _relaxedCanonicalizationForHeaderName:headerNameForCanonicalization headerBody:bodyForCanonicalization];

  [v8 appendString:v19];
  while ([v8 hasSuffix:@"\r\n"])
  {
    [v8 deleteCharactersInRange:{objc_msgSend(v8, "length") - objc_msgSend(@"\r\n", "length"), objc_msgSend(@"\r\n", "length")}];
  }

  return v8;
}

- (id)_relaxedCanonicalizationForHeaderName:(id)name headerBody:(id)body
{
  bodyCopy = body;
  lowercaseString = [name lowercaseString];
  v7 = [lowercaseString mutableCopy];

  v8 = [bodyCopy mutableCopy];
  [v8 ef_rfc5322Unfold];
  ef_rfc6376WhitespaceCharacterSet = [MEMORY[0x277CCA900] ef_rfc6376WhitespaceCharacterSet];
  [v8 ef_replaceContiguousSequencesOfCharactersInSet:ef_rfc6376WhitespaceCharacterSet withString:@" "];

  ef_rfc6376WhitespaceCharacterSet2 = [MEMORY[0x277CCA900] ef_rfc6376WhitespaceCharacterSet];
  [v8 ef_trimTrailingCharactersInSetIgnoringNewline:ef_rfc6376WhitespaceCharacterSet2];

  ef_rfc6376WhitespaceCharacterSet3 = [MEMORY[0x277CCA900] ef_rfc6376WhitespaceCharacterSet];
  [v7 ef_trimTrailingCharactersInSet:ef_rfc6376WhitespaceCharacterSet3];

  ef_rfc6376WhitespaceCharacterSet4 = [MEMORY[0x277CCA900] ef_rfc6376WhitespaceCharacterSet];
  [v8 ef_trimLeadingCharactersInSet:ef_rfc6376WhitespaceCharacterSet4];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v7, v8];

  return v13;
}

- (id)verificationContextForMessageData:(id)data error:(id *)error
{
  v12 = 0;
  v5 = [(ECDKIMVerifier *)self verifiableMessageForMessageData:data dkimSignatureHeaders:&v12 error:error];
  v6 = v12;
  v7 = v6;
  if (!v5)
  {
    goto LABEL_8;
  }

  if ([v6 count])
  {
    v8 = [[ECDKIMVerificationContext alloc] initWithVerifiableMessage:v5 dkimSignatureHeaders:v7];
    goto LABEL_9;
  }

  v9 = _ef_log_ECDKIMVerifier(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_22D092000, v9, OS_LOG_TYPE_DEFAULT, "No DKIM signature headers found.", v11, 2u);
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"ECDKIMVerifier" code:1 userInfo:0];
    *error = v8 = 0;
  }

  else
  {
LABEL_8:
    v8 = 0;
  }

LABEL_9:

  return v8;
}

- (BOOL)verifyMessageData:(id)data publicKeySource:(id)source options:(int64_t)options
{
  sourceCopy = source;
  v13 = 0;
  v9 = [(ECDKIMVerifier *)self verifiableMessageForMessageData:data dkimSignatureHeaders:&v13 error:0];
  v10 = v13;
  v11 = [(ECDKIMVerifier *)self _verifyMessage:v9 withDKIMSignatureHeaders:v10 publicKeySource:sourceCopy options:options error:0];

  return v11 != 0;
}

- (BOOL)verifyMessageWithContext:(id)context options:(int64_t)options error:(id *)error
{
  contextCopy = context;
  publicKeySource = [(ECDKIMVerifier *)self publicKeySource];
  LOBYTE(error) = [(ECDKIMVerifier *)self verifyMessageWithContext:contextCopy publicKeySource:publicKeySource options:options error:error];

  return error;
}

- (BOOL)verifyMessageWithContext:(id)context publicKeySource:(id)source options:(int64_t)options error:(id *)error
{
  contextCopy = context;
  sourceCopy = source;
  if ([contextCopy requireFullBodySignature])
  {
    optionsCopy = options | 4;
  }

  else
  {
    optionsCopy = options;
  }

  verifiableMessage = [contextCopy verifiableMessage];
  dkimSignatureHeaders = [contextCopy dkimSignatureHeaders];
  v15 = [(ECDKIMVerifier *)self _verifyMessage:verifiableMessage withDKIMSignatureHeaders:dkimSignatureHeaders publicKeySource:sourceCopy options:optionsCopy error:error];
  v16 = v15 != 0;

  return v16;
}

- (void)verifiableMessageForMessageData:(void *)a3 dkimSignatureHeaders:(os_log_t)log error:.cold.1(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_error_impl(&dword_22D092000, log, OS_LOG_TYPE_ERROR, "Error parsing DKIM signature: %{public}@", buf, 0xCu);
}

@end