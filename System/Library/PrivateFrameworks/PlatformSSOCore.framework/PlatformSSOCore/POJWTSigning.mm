@interface POJWTSigning
+ (BOOL)verifyJWTSignature:(id)signature algorithm:(id)algorithm key:(__SecKey *)key;
+ (BOOL)verifyJWTSignature:(id)signature signingAlgorithm:(id)algorithm key:(__SecKey *)key;
+ (id)algorithmWithIdentifier:(id)identifier;
+ (id)algorithmWithSigningAlgorithm:(id)algorithm;
+ (id)encodeAndSignJWT:(id)t algorithm:(id)algorithm key:(__SecKey *)key certificate:(__SecCertificate *)certificate error:(id *)error;
+ (id)encodeAndSignJWT:(id)t signingAlgorithm:(id)algorithm key:(__SecKey *)key certificate:(__SecCertificate *)certificate error:(id *)error;
- (BOOL)verifyJWTSignature:(id)signature key:(__SecKey *)key;
- (BOOL)verifySignature:(id)signature onData:(id)data usingCertificateString:(id)string;
- (BOOL)verifySignature:(id)signature onData:(id)data usingKey:(__SecKey *)key;
- (POJWTSigning)initWithSecKeyAlgorithm:(__CFString *)algorithm algorithmName:(id)name alg:(id)alg;
- (id)encodeAndSignJWT:(id)t key:(__SecKey *)key certificate:(__SecCertificate *)certificate error:(id *)error;
- (id)signData:(id)data usingKey:(__SecKey *)key error:(id *)error;
@end

@implementation POJWTSigning

- (POJWTSigning)initWithSecKeyAlgorithm:(__CFString *)algorithm algorithmName:(id)name alg:(id)alg
{
  nameCopy = name;
  algCopy = alg;
  v14.receiver = self;
  v14.super_class = POJWTSigning;
  v11 = [(POJWTSigning *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_algorithm = algorithm;
    objc_storeStrong(&v11->_algorithmName, name);
    objc_storeStrong(&v12->_alg, alg);
  }

  return v12;
}

+ (id)algorithmWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"ES256"])
  {
    v4 = [POJWTSigning alloc];
    v5 = *MEMORY[0x277CDC2D0];
    v6 = @"kSecKeyAlgorithmECDSASignatureMessageRFC4754SHA256";
    v7 = @"ES256";
LABEL_13:
    v8 = [(POJWTSigning *)v4 initWithSecKeyAlgorithm:v5 algorithmName:v6 alg:v7];
LABEL_14:
    v9 = v8;
    goto LABEL_15;
  }

  if ([identifierCopy isEqualToString:@"ES384"])
  {
    v4 = [POJWTSigning alloc];
    v5 = *MEMORY[0x277CDC2D8];
    v6 = @"kSecKeyAlgorithmECDSASignatureMessageRFC4754SHA384";
    v7 = @"ES384";
    goto LABEL_13;
  }

  if ([identifierCopy isEqualToString:@"ES512"])
  {
    v4 = [POJWTSigning alloc];
    v5 = *MEMORY[0x277CDC2E0];
    v6 = @"kSecKeyAlgorithmECDSASignatureMessageRFC4754SHA512";
    v7 = @"ES512";
    goto LABEL_13;
  }

  if ([identifierCopy isEqualToString:@"RS256"])
  {
    v4 = [POJWTSigning alloc];
    v5 = *MEMORY[0x277CDC3B8];
    v6 = @"kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA256";
    v7 = @"RS256";
    goto LABEL_13;
  }

  if ([identifierCopy isEqualToString:@"RS384"])
  {
    v4 = [POJWTSigning alloc];
    v5 = *MEMORY[0x277CDC3C0];
    v6 = @"kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA384";
    v7 = @"RS384";
    goto LABEL_13;
  }

  if ([identifierCopy isEqualToString:@"RS512"])
  {
    v4 = [POJWTSigning alloc];
    v5 = *MEMORY[0x277CDC3C8];
    v6 = @"kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA512";
    v7 = @"RS512";
    goto LABEL_13;
  }

  if ([identifierCopy isEqualToString:@"EdDSA"])
  {
    v8 = objc_alloc_init(_TtC15PlatformSSOCore30POCryptoKitAlgorithmCurve25519);
    goto LABEL_14;
  }

  v9 = 0;
LABEL_15:

  return v9;
}

+ (id)algorithmWithSigningAlgorithm:(id)algorithm
{
  algorithmCopy = algorithm;
  if ([algorithmCopy isEqualToNumber:0x2870A9198])
  {
    v4 = [POJWTSigning alloc];
    v5 = *MEMORY[0x277CDC2D0];
    v6 = @"kSecKeyAlgorithmECDSASignatureMessageRFC4754SHA256";
    v7 = @"ES256";
LABEL_5:
    v8 = [(POJWTSigning *)v4 initWithSecKeyAlgorithm:v5 algorithmName:v6 alg:v7];
LABEL_6:
    v9 = v8;
    goto LABEL_7;
  }

  if ([algorithmCopy isEqualToNumber:0x2870A91B0])
  {
    v4 = [POJWTSigning alloc];
    v5 = *MEMORY[0x277CDC2D8];
    v6 = @"kSecKeyAlgorithmECDSASignatureMessageRFC4754SHA384";
    v7 = @"ES384";
    goto LABEL_5;
  }

  if ([algorithmCopy isEqualToNumber:0x2870A91C8])
  {
    v8 = objc_alloc_init(_TtC15PlatformSSOCore30POCryptoKitAlgorithmCurve25519);
    goto LABEL_6;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (BOOL)verifyJWTSignature:(id)signature algorithm:(id)algorithm key:(__SecKey *)key
{
  signatureCopy = signature;
  v8 = [POJWTSigning algorithmWithIdentifier:algorithm];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 verifyJWTSignature:signatureCopy key:key];
  }

  else
  {
    v11 = __49__POJWTSigning_verifyJWTSignature_algorithm_key___block_invoke();
    v10 = 0;
  }

  return v10;
}

id __49__POJWTSigning_verifyJWTSignature_algorithm_key___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Algorithm not found when verifying JWT."];
  v1 = PO_LOG_POJWTSigning(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

+ (BOOL)verifyJWTSignature:(id)signature signingAlgorithm:(id)algorithm key:(__SecKey *)key
{
  signatureCopy = signature;
  v8 = [POJWTSigning algorithmWithSigningAlgorithm:algorithm];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 verifyJWTSignature:signatureCopy key:key];
  }

  else
  {
    v11 = __49__POJWTSigning_verifyJWTSignature_algorithm_key___block_invoke();
    v10 = 0;
  }

  return v10;
}

- (BOOL)verifyJWTSignature:(id)signature key:(__SecKey *)key
{
  signatureCopy = signature;
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  rawSignature = [signatureCopy rawSignature];
  v9 = [v7 psso_initWithBase64URLEncodedString:rawSignature];

  if (v9)
  {
    v10 = MEMORY[0x277CCACA8];
    rawHeader = [signatureCopy rawHeader];
    rawBody = [signatureCopy rawBody];
    v13 = [v10 stringWithFormat:@"%@.%@", rawHeader, rawBody];
    v14 = [v13 dataUsingEncoding:1];

    v15 = [(POJWTSigning *)self verifySignature:v9 onData:v14 usingKey:key];
  }

  else
  {
    v16 = __39__POJWTSigning_verifyJWTSignature_key___block_invoke();
    v15 = 0;
  }

  return v15;
}

id __39__POJWTSigning_verifyJWTSignature_key___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to decode signature."];
  v1 = PO_LOG_POJWTSigning(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

+ (id)encodeAndSignJWT:(id)t algorithm:(id)algorithm key:(__SecKey *)key certificate:(__SecCertificate *)certificate error:(id *)error
{
  tCopy = t;
  v12 = [POJWTSigning algorithmWithIdentifier:algorithm];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 encodeAndSignJWT:tCopy key:key certificate:certificate error:error];
  }

  else
  {
    v15 = __65__POJWTSigning_encodeAndSignJWT_algorithm_key_certificate_error___block_invoke();
    v14 = 0;
  }

  return v14;
}

id __65__POJWTSigning_encodeAndSignJWT_algorithm_key_certificate_error___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Algorithm not found when signing JWT."];
  v1 = PO_LOG_POJWTSigning(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

+ (id)encodeAndSignJWT:(id)t signingAlgorithm:(id)algorithm key:(__SecKey *)key certificate:(__SecCertificate *)certificate error:(id *)error
{
  tCopy = t;
  v12 = [POJWTSigning algorithmWithSigningAlgorithm:algorithm];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 encodeAndSignJWT:tCopy key:key certificate:certificate error:error];
  }

  else
  {
    v15 = __65__POJWTSigning_encodeAndSignJWT_algorithm_key_certificate_error___block_invoke();
    v14 = 0;
  }

  return v14;
}

- (id)encodeAndSignJWT:(id)t key:(__SecKey *)key certificate:(__SecCertificate *)certificate error:(id *)error
{
  v52[1] = *MEMORY[0x277D85DE8];
  tCopy = t;
  header = [tCopy header];

  if (!header)
  {
    v12 = objc_alloc_init(POMutableJWTHeader);
    [tCopy setHeader:v12];
  }

  v13 = [(POJWTSigning *)self alg];
  header2 = [tCopy header];
  [header2 setAlg:v13];

  header3 = [tCopy header];
  v16 = [header3 typ];

  if (!v16)
  {
    header4 = [tCopy header];
    [header4 setTyp:@"JWT"];
  }

  v18 = SecKeyCopyPublicKey(key);
  if (!v18)
  {
    v23 = __55__POJWTSigning_encodeAndSignJWT_key_certificate_error___block_invoke();
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v19 = v18;
  header5 = [tCopy header];
  v21 = [header5 kid];
  v22 = [v21 length];

  if (v22)
  {
    if (!certificate)
    {
      goto LABEL_17;
    }

LABEL_13:
    v29 = SecCertificateCopyData(certificate);
    if (v29)
    {
      v30 = v29;
      v31 = [(__CFData *)v29 base64EncodedStringWithOptions:0];
      v32 = v31;
      v33 = &stru_28708EE58;
      if (v31)
      {
        v33 = v31;
      }

      v52[0] = v33;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
      header6 = [tCopy header];
      [header6 setX5c:v34];

      goto LABEL_17;
    }

    v23 = __55__POJWTSigning_encodeAndSignJWT_key_certificate_error___block_invoke_71();
    if (!error)
    {
LABEL_11:

      v24 = 0;
      goto LABEL_25;
    }

LABEL_10:
    v23 = v23;
    *error = v23;
    goto LABEL_11;
  }

  v25 = SecKeyCopyExternalRepresentation(v19, 0);
  psso_sha256Hash = [(__CFData *)v25 psso_sha256Hash];
  v27 = [psso_sha256Hash base64EncodedStringWithOptions:0];
  header7 = [tCopy header];
  [header7 setKid:v27];

  if (certificate)
  {
    goto LABEL_13;
  }

LABEL_17:
  CFRelease(v19);
  header8 = [tCopy header];
  dataRepresentation = [header8 dataRepresentation];

  psso_base64URLEncodedString = [dataRepresentation psso_base64URLEncodedString];
  body = [tCopy body];
  dataRepresentation2 = [body dataRepresentation];

  psso_base64URLEncodedString2 = [dataRepresentation2 psso_base64URLEncodedString];
  v42 = SecCFAllocatorZeroize();
  v43 = CFStringCreateWithFormat(v42, 0, @"%@.%@", psso_base64URLEncodedString, psso_base64URLEncodedString2);
  v44 = SecCFAllocatorZeroize();
  ExternalRepresentation = CFStringCreateExternalRepresentation(v44, v43, 0x8000100u, 0);
  v46 = ExternalRepresentation;
  if (v43)
  {
    CFRelease(v43);
  }

  v47 = PO_LOG_POJWTSigning(ExternalRepresentation);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
  {
    [POJWTSigning encodeAndSignJWT:v46 key:v47 certificate:? error:?];
  }

  v48 = [(POJWTSigning *)self signData:v46 usingKey:key error:error];

  if ([v48 length])
  {
    psso_base64URLEncodedString3 = [v48 psso_base64URLEncodedString];
    v50 = SecCFAllocatorZeroize();
    v24 = CFStringCreateWithFormat(v50, 0, @"%@.%@.%@", psso_base64URLEncodedString, psso_base64URLEncodedString2, psso_base64URLEncodedString3);
  }

  else
  {
    v24 = 0;
  }

LABEL_25:

  return v24;
}

id __55__POJWTSigning_encodeAndSignJWT_key_certificate_error___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to copy public key when signing JWT."];
  v1 = PO_LOG_POJWTSigning(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __55__POJWTSigning_encodeAndSignJWT_key_certificate_error___block_invoke_71()
{
  v0 = [POError errorWithCode:-1004 description:@"Failed to extract certificate data when signing JWT."];
  v1 = PO_LOG_POJWTSigning(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)signData:(id)data usingKey:(__SecKey *)key error:(id *)error
{
  dataCopy = data;
  if (!SecKeyIsAlgorithmSupported(key, kSecKeyOperationTypeSign, [(POJWTSigning *)self algorithm]))
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __40__POJWTSigning_signData_usingKey_error___block_invoke;
    v18[3] = &unk_279A3DC48;
    v18[4] = self;
    v11 = __40__POJWTSigning_signData_usingKey_error___block_invoke(v18);
    if (!error)
    {
LABEL_9:

      v12 = 0;
      goto LABEL_17;
    }

LABEL_8:
    v11 = v11;
    *error = v11;
    goto LABEL_9;
  }

  if (![dataCopy length])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __40__POJWTSigning_signData_usingKey_error___block_invoke_87;
    v17[3] = &unk_279A3DC48;
    v17[4] = self;
    v11 = __40__POJWTSigning_signData_usingKey_error___block_invoke_87(v17);
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  error = 0;
  v9 = SecKeyCreateSignature(key, [(POJWTSigning *)self algorithm], dataCopy, &error);
  if (error)
  {
    if (CFErrorGetCode(error) == -3)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __40__POJWTSigning_signData_usingKey_error___block_invoke_91;
      v15[3] = &unk_279A3E0D8;
      v15[4] = self;
      v15[5] = error;
      v10 = __40__POJWTSigning_signData_usingKey_error___block_invoke_91(v15);
      if (!error)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __40__POJWTSigning_signData_usingKey_error___block_invoke_95;
      v14[3] = &unk_279A3E0D8;
      v14[4] = self;
      v14[5] = error;
      v10 = __40__POJWTSigning_signData_usingKey_error___block_invoke_95(v14);
      if (!error)
      {
LABEL_15:

        v12 = 0;
        goto LABEL_16;
      }
    }

    v10 = v10;
    *error = v10;
    goto LABEL_15;
  }

  v12 = v9;
LABEL_16:

LABEL_17:

  return v12;
}

id __40__POJWTSigning_signData_usingKey_error___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 description:@"Signing algorithm not supported"];
  v2 = PO_LOG_POJWTSigning(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v1;
}

id __40__POJWTSigning_signData_usingKey_error___block_invoke_87(uint64_t a1)
{
  v1 = [POError errorWithCode:-1005 description:@"No data to sign."];
  v2 = PO_LOG_POJWTSigning(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v1;
}

id __40__POJWTSigning_signData_usingKey_error___block_invoke_91(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [POError errorWithCode:-1010 underlyingError:v1 description:@"Key error creating signature"];

  v4 = PO_LOG_POJWTSigning(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v2;
}

id __40__POJWTSigning_signData_usingKey_error___block_invoke_95(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error creating signature"];

  v4 = PO_LOG_POJWTSigning(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v2;
}

- (BOOL)verifySignature:(id)signature onData:(id)data usingCertificateString:(id)string
{
  signatureCopy = signature;
  dataCopy = data;
  stringCopy = string;
  if ([stringCopy length])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:stringCopy options:0];
    if ([(__CFData *)v11 length])
    {
      v12 = SecCertificateCreateWithData(0, v11);
      if (v12)
      {
        v13 = v12;
        v14 = SecCertificateCopyKey(v12);
        CFRelease(v13);
        if (v14)
        {
          v15 = [(POJWTSigning *)self verifySignature:signatureCopy onData:dataCopy usingKey:v14];
          CFRelease(v14);
LABEL_11:

          goto LABEL_12;
        }

        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __62__POJWTSigning_verifySignature_onData_usingCertificateString___block_invoke_110;
        v21[3] = &unk_279A3DC48;
        v21[4] = self;
        v19 = __62__POJWTSigning_verifySignature_onData_usingCertificateString___block_invoke_110(v21);
      }

      else
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __62__POJWTSigning_verifySignature_onData_usingCertificateString___block_invoke_106;
        v22[3] = &unk_279A3DC48;
        v22[4] = self;
        v18 = __62__POJWTSigning_verifySignature_onData_usingCertificateString___block_invoke_106(v22);
      }
    }

    else
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __62__POJWTSigning_verifySignature_onData_usingCertificateString___block_invoke_102;
      v23[3] = &unk_279A3DC48;
      v23[4] = self;
      v17 = __62__POJWTSigning_verifySignature_onData_usingCertificateString___block_invoke_102(v23);
    }

    v15 = 0;
    goto LABEL_11;
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __62__POJWTSigning_verifySignature_onData_usingCertificateString___block_invoke;
  v24[3] = &unk_279A3DC48;
  v24[4] = self;
  v16 = __62__POJWTSigning_verifySignature_onData_usingCertificateString___block_invoke(v24);
  v15 = 0;
LABEL_12:

  return v15;
}

id __62__POJWTSigning_verifySignature_onData_usingCertificateString___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"No certificate string."];
  v2 = PO_LOG_POJWTSigning(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v1;
}

id __62__POJWTSigning_verifySignature_onData_usingCertificateString___block_invoke_102(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"Failed to base64 decode."];
  v2 = PO_LOG_POJWTSigning(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v1;
}

id __62__POJWTSigning_verifySignature_onData_usingCertificateString___block_invoke_106(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"Failed to create certificate."];
  v2 = PO_LOG_POJWTSigning(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v1;
}

id __62__POJWTSigning_verifySignature_onData_usingCertificateString___block_invoke_110(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"Failed to get public key."];
  v2 = PO_LOG_POJWTSigning(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v1;
}

- (BOOL)verifySignature:(id)signature onData:(id)data usingKey:(__SecKey *)key
{
  signatureCopy = signature;
  dataCopy = data;
  if (!SecKeyIsAlgorithmSupported(key, kSecKeyOperationTypeVerify, [(POJWTSigning *)self algorithm]))
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke;
    v21[3] = &unk_279A3DC48;
    v21[4] = self;
    v13 = __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke(v21);
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  if (![signatureCopy length])
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke_117;
    v20[3] = &unk_279A3DC48;
    v20[4] = self;
    v14 = __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke_117(v20);
    goto LABEL_9;
  }

  if (![dataCopy length])
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke_121;
    v19[3] = &unk_279A3DC48;
    v19[4] = self;
    v15 = __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke_121(v19);
    goto LABEL_9;
  }

  error = 0;
  v10 = SecKeyVerifySignature(key, [(POJWTSigning *)self algorithm], dataCopy, signatureCopy, &error);
  v11 = v10 != 0;
  if (!v10)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke_125;
    v17[3] = &unk_279A3E0D8;
    v17[4] = self;
    v17[5] = error;
    v12 = __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke_125(v17);
  }

LABEL_10:

  return v11;
}

id __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"Signing algorithm not supported for verification."];
  v2 = PO_LOG_POJWTSigning(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v1;
}

id __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke_117(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"No signature to verify for verification."];
  v2 = PO_LOG_POJWTSigning(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v1;
}

id __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke_121(uint64_t a1)
{
  v1 = [POError errorWithCode:-1008 description:@"No data to verify."];
  v2 = PO_LOG_POJWTSigning(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v1;
}

id __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke_125(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [POError errorWithCode:-1008 underlyingError:v1 description:@"Error verifying signature."];

  v4 = PO_LOG_POJWTSigning(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v2;
}

- (void)encodeAndSignJWT:(const __CFData *)a1 key:(NSObject *)a2 certificate:error:.cold.1(const __CFData *a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  CFDataGetLength(a1);
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_25E8B1000, a2, OS_LOG_TYPE_DEBUG, "Signing Data: %ld", v3, 0xCu);
}

void __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = [OUTLINED_FUNCTION_3_0(v0 v1)];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E8B1000, v3, v4, "%{public}@, %{public}@", v5, v6, v7, v8);
}

@end