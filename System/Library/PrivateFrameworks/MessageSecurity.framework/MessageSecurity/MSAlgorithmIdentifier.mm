@interface MSAlgorithmIdentifier
+ (MSAlgorithmIdentifier)algorithmIdentifierWithAsn1AlgId:(AlgorithmIdentifier *)id error:(id *)error;
+ (MSAlgorithmIdentifier)algorithmIdentifierWithOID:(id)d;
+ (id)digestAlgorithmWithSignatureAlgorithm:(id)algorithm error:(id *)error;
- (AlgorithmIdentifier)encode;
- (BOOL)isEqual:(id)equal;
- (MSAlgorithmIdentifier)initWithAsn1AlgId:(AlgorithmIdentifier *)id error:(id *)error;
- (MSAlgorithmIdentifier)initWithOID:(id)d;
- (MSAlgorithmIdentifier)initWithOID:(id)d parameters:(id)parameters;
- (id)decode:(id)decode error:(id *)error;
- (id)initDigestAlgorithmWithSignatureAlgorithm:(id)algorithm error:(id *)error;
- (id)signatureAlgorithmWithDigestAlgorithm:(id)algorithm error:(id *)error;
- (unint64_t)blockSize:(id *)size;
- (unint64_t)hash;
- (unint64_t)keySize:(id *)size;
- (unsigned)ccAlgorithm:(id *)algorithm;
- (unsigned)ccMode:(id *)mode;
- (void)dealloc;
@end

@implementation MSAlgorithmIdentifier

- (unint64_t)hash
{
  parameters = self->_parameters;
  algorithm = [(MSAlgorithmIdentifier *)self algorithm];
  v5 = [algorithm hash];
  if (parameters)
  {
    parameters = [(MSAlgorithmIdentifier *)self parameters];
    v5 += [parameters hash];
  }

  return v5;
}

- (void)dealloc
{
  asn1AlgId = self->_asn1AlgId;
  if (asn1AlgId)
  {
    free_AlgorithmIdentifier(asn1AlgId);
    free(self->_asn1AlgId);
    self->_asn1AlgId = 0;
  }

  v4.receiver = self;
  v4.super_class = MSAlgorithmIdentifier;
  [(MSAlgorithmIdentifier *)&v4 dealloc];
}

- (AlgorithmIdentifier)encode
{
  v3 = malloc_type_malloc(0x18uLL, 0x10300406712BA52uLL);
  if (v3)
  {
    algorithm = [(MSAlgorithmIdentifier *)self algorithm];
    asn1OID = [algorithm Asn1OID];
    v15 = v5;

    der_copy_oid();
    parameters = [(MSAlgorithmIdentifier *)self parameters];

    if (parameters)
    {
      v3->var1 = malloc_type_malloc(0x10uLL, 0x108004057E67DB5uLL);
      v7 = [(MSAlgorithmIdentifier *)self parameters:0];
      v8 = [v7 length];

      if (v8)
      {
        parameters2 = [(MSAlgorithmIdentifier *)self parameters];
        v12 = [parameters2 length];

        parameters3 = [(MSAlgorithmIdentifier *)self parameters];
        bytes = [parameters3 bytes];
      }

      else
      {
        v12 = 2;
        bytes = &asn1NULL;
      }

      MEMORY[0x259C98440](&v12, v3->var1);
    }

    else
    {
      v3->var1 = 0;
    }
  }

  return v3;
}

+ (MSAlgorithmIdentifier)algorithmIdentifierWithOID:(id)d
{
  dCopy = d;
  v5 = [[self alloc] initWithOID:dCopy];

  return v5;
}

+ (MSAlgorithmIdentifier)algorithmIdentifierWithAsn1AlgId:(AlgorithmIdentifier *)id error:(id *)error
{
  v4 = [[self alloc] initWithAsn1AlgId:id error:error];

  return v4;
}

+ (id)digestAlgorithmWithSignatureAlgorithm:(id)algorithm error:(id *)error
{
  algorithmCopy = algorithm;
  v7 = [[self alloc] initDigestAlgorithmWithSignatureAlgorithm:algorithmCopy error:error];

  return v7;
}

- (MSAlgorithmIdentifier)initWithOID:(id)d
{
  dCopy = d;
  data = [MEMORY[0x277CBEA90] data];
  if (algorithmOIDToParameters_onceToken != -1)
  {
    [MSAlgorithmIdentifier initWithOID:];
  }

  oIDString = [dCopy OIDString];
  v7 = [algorithmOIDToParameters_sAlgorithmOIDStringIsAbsentParameters objectForKeyedSubscript:oIDString];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    v9 = 0;
  }

  else
  {
    v9 = data;
  }

  v10 = [(MSAlgorithmIdentifier *)self initWithOID:dCopy parameters:v9];
  return v10;
}

- (MSAlgorithmIdentifier)initWithOID:(id)d parameters:(id)parameters
{
  dCopy = d;
  parametersCopy = parameters;
  v12.receiver = self;
  v12.super_class = MSAlgorithmIdentifier;
  v9 = [(MSAlgorithmIdentifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_algorithm, d);
    objc_storeStrong(&v10->_parameters, parameters);
    v10->_asn1AlgId = [(MSAlgorithmIdentifier *)v10 encode];
  }

  return v10;
}

- (id)decode:(id)decode error:(id *)error
{
  memset(v8, 0, sizeof(v8));
  if (nsheim_decode_AlgorithmIdentifier(decode, v8))
  {
    if (error)
    {
      [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:-26275 underlyingError:*error description:@"unable to decode Algorithm Identifier"];
      *error = v6 = 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = [(MSAlgorithmIdentifier *)self initWithAsn1AlgId:v8 error:error];
    free_AlgorithmIdentifier(v8);
  }

  return v6;
}

- (id)initDigestAlgorithmWithSignatureAlgorithm:(id)algorithm error:(id *)error
{
  algorithm = [algorithm algorithm];
  v7 = [MSOID digestOIDWithSignatureAlgorithm:algorithm error:error];

  if (v7)
  {
    self = [(MSAlgorithmIdentifier *)self initWithOID:v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MSAlgorithmIdentifier)initWithAsn1AlgId:(AlgorithmIdentifier *)id error:(id *)error
{
  v17.receiver = self;
  v17.super_class = MSAlgorithmIdentifier;
  v6 = [(MSAlgorithmIdentifier *)&v17 init];
  if (!v6)
  {
LABEL_14:
    v9 = v6;
    goto LABEL_16;
  }

  v7 = malloc_type_malloc(0x18uLL, 0x10300406712BA52uLL);
  v6->_asn1AlgId = v7;
  if (!v7)
  {
    if (error)
    {
      [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:-108 underlyingError:*error description:@"unable to allocate Algorithm Identifier"];
      *error = v9 = 0;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v8 = copy_AlgorithmIdentifier(id, v7);
  if (!v8)
  {
    v10 = [MSOID OIDWithAsn1OID:v6->_asn1AlgId error:error];
    algorithm = v6->_algorithm;
    v6->_algorithm = v10;

    if (v6->_algorithm)
    {
      var1 = v6->_asn1AlgId->var1;
      if (var1)
      {
        if (var1->var0)
        {
          v13 = var1->var1;
          if (v13)
          {
            v14 = [MEMORY[0x277CBEA90] dataWithBytes:v13 length:id->var1->var0];
            parameters = v6->_parameters;
            v6->_parameters = v14;
          }
        }
      }

      goto LABEL_14;
    }

LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  if (error)
  {
    *error = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:v8 underlyingError:*error description:@"unable to copy Algorithm Identifier"];
  }

  free(v6->_asn1AlgId);
  v9 = 0;
  v6->_asn1AlgId = 0;
LABEL_16:

  return v9;
}

- (id)signatureAlgorithmWithDigestAlgorithm:(id)algorithm error:(id *)error
{
  algorithmCopy = algorithm;
  algorithm = [(MSAlgorithmIdentifier *)self algorithm];
  v8 = [algorithm isEqualToString:@"1.2.840.113549.1.1.1"];

  if (v8)
  {
    algorithm2 = [algorithmCopy algorithm];
    v10 = [MSOID RSASignatureOIDWithDigestAlgorithm:algorithm2 error:error];
LABEL_5:
    error = v10;
LABEL_6:

    goto LABEL_7;
  }

  algorithm3 = [(MSAlgorithmIdentifier *)self algorithm];
  v12 = [algorithm3 isEqualToString:@"1.2.840.10045.2.1"];

  if (v12)
  {
    algorithm2 = [algorithmCopy algorithm];
    v10 = [MSOID ECSignatureOIDWithDigestAlgorithm:algorithm2 error:error];
    goto LABEL_5;
  }

  if (error)
  {
    v14 = MSErrorCryptoDomain[0];
    v15 = *error;
    algorithm2 = [(MSAlgorithmIdentifier *)self algorithm];
    oIDString = [algorithm2 OIDString];
    *error = [MSError MSErrorWithDomain:v14 code:-50 underlyingError:v15 description:@"Algorithm Identifier %@ does not indicate a public key algorithm", oIDString];

    error = 0;
    goto LABEL_6;
  }

LABEL_7:

  return error;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    algorithm = [equalCopy algorithm];
    if (![algorithm isEqual:self->_algorithm])
    {
      v11 = 0;
      goto LABEL_16;
    }

    parameters = self->_parameters;
    if (parameters)
    {
LABEL_4:
      parameters = [equalCopy parameters];
      if (parameters)
      {
        v9 = parameters;
        parameters2 = [equalCopy parameters];
        v11 = [parameters2 isEqualToData:self->_parameters];

        if (!parameters)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v11 = 0;
        if (!parameters)
        {
          goto LABEL_15;
        }
      }

LABEL_16:

      goto LABEL_17;
    }

    parameters3 = [equalCopy parameters];
    if (parameters3)
    {
      if (self->_parameters)
      {
        goto LABEL_4;
      }

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

LABEL_15:

    goto LABEL_16;
  }

  v11 = 0;
LABEL_17:

  return v11;
}

- (unsigned)ccAlgorithm:(id *)algorithm
{
  if (algorithm && *algorithm)
  {
    v5 = [*algorithm copy];
  }

  else
  {
    v5 = 0;
  }

  if (ccAlgorithm__onceToken != -1)
  {
    [MSAlgorithmIdentifier ccAlgorithm:];
  }

  algorithm = [(MSAlgorithmIdentifier *)self algorithm];
  oIDString = [algorithm OIDString];

  v8 = ccAlgorithm__knownEncryptionAlgs;
  algorithm2 = [(MSAlgorithmIdentifier *)self algorithm];
  oIDString2 = [algorithm2 OIDString];
  v11 = [v8 objectForKeyedSubscript:oIDString2];

  if (v11)
  {
    unsignedIntValue = [v11 unsignedIntValue];
    if (!algorithm)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:v5 description:@"unknown ccAlg -- unexpected encryption algorithm: %@", oIDString];

    unsignedIntValue = 0;
    v5 = v13;
    if (!algorithm)
    {
      goto LABEL_13;
    }
  }

  if (v5)
  {
    v14 = v5;
    *algorithm = v5;
  }

LABEL_13:

  return unsignedIntValue;
}

void __37__MSAlgorithmIdentifier_ccAlgorithm___block_invoke()
{
  v22[19] = *MEMORY[0x277D85DE8];
  v21[0] = @"1.3.14.3.2.6";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v22[0] = v20;
  v21[1] = @"1.3.14.3.2.7";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v22[1] = v19;
  v21[2] = @"1.2.840.113549.3.7";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
  v22[2] = v18;
  v21[3] = @"1.2.840.113549.3.2";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:5];
  v22[3] = v17;
  v21[4] = @"2.16.840.1.101.3.4.1.1";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v22[4] = v16;
  v21[5] = @"2.16.840.1.101.3.4.1.2";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v22[5] = v15;
  v21[6] = @"2.16.840.1.101.3.4.1.21";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v22[6] = v14;
  v21[7] = @"2.16.840.1.101.3.4.1.22";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v22[7] = v13;
  v21[8] = @"2.16.840.1.101.3.4.1.41";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v22[8] = v12;
  v21[9] = @"2.16.840.1.101.3.4.1.42";
  v0 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v22[9] = v0;
  v21[10] = @"2.16.840.1.101.3.4.1.7";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v22[10] = v1;
  v21[11] = @"2.16.840.1.101.3.4.1.6";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v22[11] = v2;
  v21[12] = @"2.16.840.1.101.3.4.1.47";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v22[12] = v3;
  v21[13] = @"2.16.840.1.101.3.4.1.46";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v22[13] = v4;
  v21[14] = @"2.16.840.1.101.3.4.1.27";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v22[14] = v5;
  v21[15] = @"2.16.840.1.101.3.4.1.26";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v22[15] = v6;
  v21[16] = @"2.16.840.1.101.3.4.1.5";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v22[16] = v7;
  v21[17] = @"2.16.840.1.101.3.4.1.25";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v22[17] = v8;
  v21[18] = @"2.16.840.1.101.3.4.1.45";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v22[18] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:19];
  v11 = ccAlgorithm__knownEncryptionAlgs;
  ccAlgorithm__knownEncryptionAlgs = v10;
}

- (unsigned)ccMode:(id *)mode
{
  if (mode && *mode)
  {
    v5 = [*mode copy];
  }

  else
  {
    v5 = 0;
  }

  if (ccMode__onceToken != -1)
  {
    [MSAlgorithmIdentifier ccMode:];
  }

  algorithm = [(MSAlgorithmIdentifier *)self algorithm];
  oIDString = [algorithm OIDString];

  v8 = [ccMode__knownEncryptionAlgs objectForKeyedSubscript:oIDString];
  v9 = v8;
  if (v8)
  {
    unsignedIntValue = [v8 unsignedIntValue];
    if (!mode)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:v5 description:@"unknown ccMode -- unexpected encryption algorithm: %@", oIDString];

    unsignedIntValue = 0;
    v5 = v11;
    if (!mode)
    {
      goto LABEL_13;
    }
  }

  if (v5)
  {
    v12 = v5;
    *mode = v5;
  }

LABEL_13:

  return unsignedIntValue;
}

void __32__MSAlgorithmIdentifier_ccMode___block_invoke()
{
  v19[16] = *MEMORY[0x277D85DE8];
  v18[0] = @"1.3.14.3.2.6";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v19[0] = v17;
  v18[1] = @"1.3.14.3.2.7";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
  v19[1] = v16;
  v18[2] = @"1.2.840.113549.3.7";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
  v19[2] = v15;
  v18[3] = @"1.2.840.113549.3.2";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
  v19[3] = v14;
  v18[4] = @"2.16.840.1.101.3.4.1.1";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v19[4] = v13;
  v18[5] = @"2.16.840.1.101.3.4.1.2";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
  v19[5] = v12;
  v18[6] = @"2.16.840.1.101.3.4.1.21";
  v0 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v19[6] = v0;
  v18[7] = @"2.16.840.1.101.3.4.1.22";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
  v19[7] = v1;
  v18[8] = @"2.16.840.1.101.3.4.1.41";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v19[8] = v2;
  v18[9] = @"2.16.840.1.101.3.4.1.42";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
  v19[9] = v3;
  v18[10] = @"2.16.840.1.101.3.4.1.7";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:12];
  v19[10] = v4;
  v18[11] = @"2.16.840.1.101.3.4.1.6";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:11];
  v19[11] = v5;
  v18[12] = @"2.16.840.1.101.3.4.1.47";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:12];
  v19[12] = v6;
  v18[13] = @"2.16.840.1.101.3.4.1.46";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:11];
  v19[13] = v7;
  v18[14] = @"2.16.840.1.101.3.4.1.27";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:12];
  v19[14] = v8;
  v18[15] = @"2.16.840.1.101.3.4.1.26";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:11];
  v19[15] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:16];
  v11 = ccMode__knownEncryptionAlgs;
  ccMode__knownEncryptionAlgs = v10;
}

- (unint64_t)blockSize:(id *)size
{
  if (size && *size)
  {
    v5 = [*size copy];
  }

  else
  {
    v5 = 0;
  }

  if (blockSize__onceToken != -1)
  {
    [MSAlgorithmIdentifier blockSize:];
  }

  algorithm = [(MSAlgorithmIdentifier *)self algorithm];
  oIDString = [algorithm OIDString];

  v8 = [blockSize__knownEncryptionAlgs objectForKeyedSubscript:oIDString];
  v9 = v8;
  if (v8)
  {
    unsignedIntValue = [v8 unsignedIntValue];
    if (!size)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:v5 description:@"unknown blockSize -- unexpected encryption algorithm: %@", oIDString];

    unsignedIntValue = 0;
    v5 = v11;
    if (!size)
    {
      goto LABEL_13;
    }
  }

  if (v5)
  {
    v12 = v5;
    *size = v5;
  }

LABEL_13:

  return unsignedIntValue;
}

void __35__MSAlgorithmIdentifier_blockSize___block_invoke()
{
  v22[19] = *MEMORY[0x277D85DE8];
  v21[0] = @"1.3.14.3.2.6";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:8];
  v22[0] = v20;
  v21[1] = @"1.3.14.3.2.7";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:8];
  v22[1] = v19;
  v21[2] = @"1.2.840.113549.3.7";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:8];
  v22[2] = v18;
  v21[3] = @"1.2.840.113549.3.2";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:8];
  v22[3] = v17;
  v21[4] = @"2.16.840.1.101.3.4.1.1";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v22[4] = v16;
  v21[5] = @"2.16.840.1.101.3.4.1.2";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v22[5] = v15;
  v21[6] = @"2.16.840.1.101.3.4.1.21";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v22[6] = v14;
  v21[7] = @"2.16.840.1.101.3.4.1.22";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v22[7] = v13;
  v21[8] = @"2.16.840.1.101.3.4.1.41";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v22[8] = v12;
  v21[9] = @"2.16.840.1.101.3.4.1.42";
  v0 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v22[9] = v0;
  v21[10] = @"2.16.840.1.101.3.4.1.7";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v22[10] = v1;
  v21[11] = @"2.16.840.1.101.3.4.1.6";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v22[11] = v2;
  v21[12] = @"2.16.840.1.101.3.4.1.47";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v22[12] = v3;
  v21[13] = @"2.16.840.1.101.3.4.1.46";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v22[13] = v4;
  v21[14] = @"2.16.840.1.101.3.4.1.27";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v22[14] = v5;
  v21[15] = @"2.16.840.1.101.3.4.1.26";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v22[15] = v6;
  v21[16] = @"2.16.840.1.101.3.4.1.5";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v22[16] = v7;
  v21[17] = @"2.16.840.1.101.3.4.1.25";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v22[17] = v8;
  v21[18] = @"2.16.840.1.101.3.4.1.45";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v22[18] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:19];
  v11 = blockSize__knownEncryptionAlgs;
  blockSize__knownEncryptionAlgs = v10;
}

- (unint64_t)keySize:(id *)size
{
  if (size && *size)
  {
    v5 = [*size copy];
  }

  else
  {
    v5 = 0;
  }

  if (keySize__onceToken != -1)
  {
    [MSAlgorithmIdentifier keySize:];
  }

  algorithm = [(MSAlgorithmIdentifier *)self algorithm];
  oIDString = [algorithm OIDString];

  v8 = [keySize__knownEncryptionAlgs objectForKeyedSubscript:oIDString];
  v9 = v8;
  if (v8)
  {
    unsignedIntValue = [v8 unsignedIntValue];
    if (!size)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:v5 description:@"unknown keySize -- unexpected encryption algorithm: %@", oIDString];

    unsignedIntValue = 0;
    v5 = v11;
    if (!size)
    {
      goto LABEL_13;
    }
  }

  if (v5)
  {
    v12 = v5;
    *size = v5;
  }

LABEL_13:

  return unsignedIntValue;
}

void __33__MSAlgorithmIdentifier_keySize___block_invoke()
{
  v22[19] = *MEMORY[0x277D85DE8];
  v21[0] = @"1.3.14.3.2.6";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:8];
  v22[0] = v20;
  v21[1] = @"1.3.14.3.2.7";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:8];
  v22[1] = v19;
  v21[2] = @"1.2.840.113549.3.7";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:24];
  v22[2] = v18;
  v21[3] = @"1.2.840.113549.3.2";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:128];
  v22[3] = v17;
  v21[4] = @"2.16.840.1.101.3.4.1.1";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v22[4] = v16;
  v21[5] = @"2.16.840.1.101.3.4.1.2";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v22[5] = v15;
  v21[6] = @"2.16.840.1.101.3.4.1.21";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:24];
  v22[6] = v14;
  v21[7] = @"2.16.840.1.101.3.4.1.22";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:24];
  v22[7] = v13;
  v21[8] = @"2.16.840.1.101.3.4.1.41";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:32];
  v22[8] = v12;
  v21[9] = @"2.16.840.1.101.3.4.1.42";
  v0 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:32];
  v22[9] = v0;
  v21[10] = @"2.16.840.1.101.3.4.1.7";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v22[10] = v1;
  v21[11] = @"2.16.840.1.101.3.4.1.6";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v22[11] = v2;
  v21[12] = @"2.16.840.1.101.3.4.1.47";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:32];
  v22[12] = v3;
  v21[13] = @"2.16.840.1.101.3.4.1.46";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:32];
  v22[13] = v4;
  v21[14] = @"2.16.840.1.101.3.4.1.27";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:24];
  v22[14] = v5;
  v21[15] = @"2.16.840.1.101.3.4.1.26";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:24];
  v22[15] = v6;
  v21[16] = @"2.16.840.1.101.3.4.1.5";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:16];
  v22[16] = v7;
  v21[17] = @"2.16.840.1.101.3.4.1.25";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:24];
  v22[17] = v8;
  v21[18] = @"2.16.840.1.101.3.4.1.45";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:32];
  v22[18] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:19];
  v11 = keySize__knownEncryptionAlgs;
  keySize__knownEncryptionAlgs = v10;
}

@end