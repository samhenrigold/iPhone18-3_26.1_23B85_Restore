@interface MSOID
+ (id)ECSignatureOIDWithDigestAlgorithm:(id)algorithm error:(id *)error;
+ (id)OIDWithAsn1OID:(heim_oid *)d error:(id *)error;
+ (id)OIDWithData:(id)data error:(id *)error;
+ (id)OIDWithString:(id)string error:(id *)error;
+ (id)RSASignatureOIDWithDigestAlgorithm:(id)algorithm error:(id *)error;
+ (id)digestOIDWithSignatureAlgorithm:(id)algorithm error:(id *)error;
+ (id)signatureAlgorithmOIDWithSecKeyAlgorithm:(__CFString *)algorithm error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)setAsn1OidFromOIDString:(id)string error:(id *)error;
- (MSOID)initWithAsn1OID:(heim_oid *)d error:(id *)error;
- (MSOID)initWithData:(id)data error:(id *)error;
- (MSOID)initWithString:(id)string error:(id *)error;
- (__CFString)secKeyAlgorithm;
- (const)ccdigest;
- (heim_oid)Asn1OID;
- (id)initDigestOIDWithSignatureAlgorithm:(id)algorithm error:(id *)error;
- (id)initECSignatureOIDWithDigestAlgorithm:(id)algorithm error:(id *)error;
- (id)initRSASignatureOIDWithDigestAlgorithm:(id)algorithm error:(id *)error;
- (id)initSignatureOIDWithSecKeyAlgorithm:(__CFString *)algorithm error:(id *)error;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MSOID

- (unint64_t)hash
{
  oIDBytes = [(MSOID *)self OIDBytes];
  v3 = [oIDBytes hash];

  return v3;
}

- (void)dealloc
{
  der_free_oid();
  v3.receiver = self;
  v3.super_class = MSOID;
  [(MSOID *)&v3 dealloc];
}

- (const)ccdigest
{
  if ([(NSString *)self->_OIDString isEqual:@"1.2.840.113549.2.5"])
  {

    return MEMORY[0x282201798]();
  }

  else if ([(NSString *)self->_OIDString isEqual:@"1.3.14.3.2.26"])
  {

    return MEMORY[0x2822018B8]();
  }

  else if ([(NSString *)self->_OIDString isEqual:@"2.16.840.1.101.3.4.2.4"])
  {

    return MEMORY[0x2822018C0]();
  }

  else if ([(NSString *)self->_OIDString isEqual:@"2.16.840.1.101.3.4.2.1"])
  {

    return MEMORY[0x2822018C8]();
  }

  else if ([(NSString *)self->_OIDString isEqual:@"2.16.840.1.101.3.4.2.2"])
  {

    return MEMORY[0x2822018D0]();
  }

  else if ([(NSString *)self->_OIDString isEqual:@"2.16.840.1.101.3.4.2.3"])
  {

    return MEMORY[0x2822018F8]();
  }

  else
  {
    return 0;
  }
}

- (__CFString)secKeyAlgorithm
{
  if (secKeyAlgorithm_onceToken != -1)
  {
    [MSOID secKeyAlgorithm];
  }

  v3 = [secKeyAlgorithm_sAlgorithmOIDToKeyAlgorithm objectForKeyedSubscript:self->_OIDString];

  return v3;
}

- (heim_oid)Asn1OID
{
  objc_copyStruct(v4, &self->_Asn1OID, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.components = v3;
  result.length = v2;
  return result;
}

- (BOOL)setAsn1OidFromOIDString:(id)string error:(id *)error
{
  stringCopy = string;
  v7 = stringCopy;
  if (stringCopy)
  {
    if ([stringCopy length] >= 3)
    {
      v8 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789."];
      invertedSet = [v8 invertedSet];
      v10 = [v7 rangeOfCharacterFromSet:invertedSet];
      v12 = v11;

      [v7 getCharacters:v21 range:{0, 2}];
      if (v21[1] == 46 && v21[0] - 51 > 0xFFFFFFFC && v10 == 0x7FFFFFFFFFFFFFFFLL && !v12)
      {
        v15 = [v7 componentsSeparatedByString:@"."];
        v16 = v15;
        if (v15 && [v15 count])
        {
          v17 = malloc_type_malloc(4 * [v16 count], 0x100004052888210uLL);
          if (v17)
          {
            v18 = v17;
            v20[0] = MEMORY[0x277D85DD0];
            v20[1] = 3221225472;
            v20[2] = __39__MSOID_setAsn1OidFromOIDString_error___block_invoke;
            v20[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
            v20[4] = v17;
            [v16 enumerateObjectsUsingBlock:v20];
            self->_Asn1OID.length = [v16 count];
            self->_Asn1OID.components = v18;
            v13 = 1;
LABEL_20:

            goto LABEL_8;
          }

          [MSError MSErrorWithDomain:MSErrorAllocationDomain[0] code:-108 underlyingError:*error description:@"could allocate OID components", v19];
        }

        else
        {
          if (!error)
          {
            v13 = 0;
            goto LABEL_20;
          }

          [MSError MSErrorWithDomain:MSErrorAllocationDomain[0] code:-108 underlyingError:*error description:@"could not parse OID into parts %@", v7];
        }

        *error = v13 = 0;
        goto LABEL_20;
      }
    }
  }

  if (error)
  {
    [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:-50 underlyingError:*error description:@"missing or invalid OID string %@", v7];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_8:

  return v13;
}

void __39__MSOID_setAsn1OidFromOIDString_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v15 = v7;
  if ([v15 length] && ((objc_msgSend(MEMORY[0x277CCA900], "decimalDigitCharacterSet"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "invertedSet"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v15, "rangeOfCharacterFromSet:", v10), v13 = v12, v10, v9, v11 == 0x7FFFFFFFFFFFFFFFLL) ? (v14 = v13 == 0) : (v14 = 0), v14))
  {
    if (v8)
    {
      *(v8 + 4 * a3) = [v15 intValue];
    }
  }

  else
  {

    *a4 = 1;
  }
}

+ (id)OIDWithString:(id)string error:(id *)error
{
  stringCopy = string;
  v7 = [[self alloc] initWithString:stringCopy error:error];

  return v7;
}

+ (id)OIDWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [[self alloc] initWithData:dataCopy error:error];

  return v7;
}

+ (id)digestOIDWithSignatureAlgorithm:(id)algorithm error:(id *)error
{
  algorithmCopy = algorithm;
  v7 = [[self alloc] initDigestOIDWithSignatureAlgorithm:algorithmCopy error:error];

  return v7;
}

+ (id)signatureAlgorithmOIDWithSecKeyAlgorithm:(__CFString *)algorithm error:(id *)error
{
  v4 = [[self alloc] initSignatureOIDWithSecKeyAlgorithm:algorithm error:error];

  return v4;
}

+ (id)OIDWithAsn1OID:(heim_oid *)d error:(id *)error
{
  v4 = [[self alloc] initWithAsn1OID:d error:error];

  return v4;
}

+ (id)RSASignatureOIDWithDigestAlgorithm:(id)algorithm error:(id *)error
{
  algorithmCopy = algorithm;
  v7 = [[self alloc] initRSASignatureOIDWithDigestAlgorithm:algorithmCopy error:error];

  return v7;
}

+ (id)ECSignatureOIDWithDigestAlgorithm:(id)algorithm error:(id *)error
{
  algorithmCopy = algorithm;
  v7 = [[self alloc] initECSignatureOIDWithDigestAlgorithm:algorithmCopy error:error];

  return v7;
}

- (MSOID)initWithString:(id)string error:(id *)error
{
  stringCopy = string;
  v14.receiver = self;
  v14.super_class = MSOID;
  v8 = [(MSOID *)&v14 init];
  v9 = v8;
  if (!v8 || (objc_storeStrong(&v8->_OIDString, string), [(MSOID *)v9 setAsn1OidFromOIDString:stringCopy error:error]) && (NSDataFromIntegerArray(v9->_Asn1OID.components, v9->_Asn1OID.length), v10 = objc_claimAutoreleasedReturnValue(), OIDBytes = v9->_OIDBytes, v9->_OIDBytes = v10, OIDBytes, v9->_OIDBytes))
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (MSOID)initWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = MSOID;
  v8 = [(MSOID *)&v15 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v8->_OIDBytes, data);
  v10 = NSStringFromOIDData(dataCopy);
  OIDString = v9->_OIDString;
  v9->_OIDString = v10;

  v12 = v9->_OIDString;
  if (!v12)
  {
    if (error)
    {
      [MSError MSErrorWithDomain:MSErrorAllocationDomain[0] code:-108 underlyingError:*error description:@"could not parse OID into string"];
      *error = v13 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  if (![(MSOID *)v9 setAsn1OidFromOIDString:v12 error:error])
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = v9;
LABEL_8:

  return v13;
}

- (id)initDigestOIDWithSignatureAlgorithm:(id)algorithm error:(id *)error
{
  algorithmCopy = algorithm;
  if (initDigestOIDWithSignatureAlgorithm_error__onceToken != -1)
  {
    [MSOID initDigestOIDWithSignatureAlgorithm:error:];
  }

  v7 = initDigestOIDWithSignatureAlgorithm_error__sSigAlgToDigAlg;
  oIDString = [algorithmCopy OIDString];
  v9 = [v7 objectForKeyedSubscript:oIDString];

  if (v9)
  {
    error = [MSOID OIDWithString:v9 error:error];
  }

  else if (error)
  {
    v10 = MSErrorCryptoDomain[0];
    v11 = *error;
    oIDString2 = [algorithmCopy OIDString];
    *error = [MSError MSErrorWithDomain:v10 code:-50 underlyingError:v11 description:@"MSOID %@ does not indicate a digest algorithm", oIDString2];

    error = 0;
  }

  return error;
}

void __51__MSOID_initDigestOIDWithSignatureAlgorithm_error___block_invoke()
{
  v3[11] = *MEMORY[0x277D85DE8];
  v2[0] = @"1.2.840.113549.1.1.4";
  v2[1] = @"1.2.840.113549.1.1.5";
  v3[0] = @"1.2.840.113549.2.5";
  v3[1] = @"1.3.14.3.2.26";
  v2[2] = @"1.2.840.10045.4.1";
  v2[3] = @"1.2.840.113549.1.1.14";
  v3[2] = @"1.3.14.3.2.26";
  v3[3] = @"2.16.840.1.101.3.4.2.4";
  v2[4] = @"1.2.840.10045.4.3.1";
  v2[5] = @"1.2.840.113549.1.1.11";
  v3[4] = @"2.16.840.1.101.3.4.2.4";
  v3[5] = @"2.16.840.1.101.3.4.2.1";
  v2[6] = @"1.2.840.10045.4.3.2";
  v2[7] = @"1.2.840.113549.1.1.12";
  v3[6] = @"2.16.840.1.101.3.4.2.1";
  v3[7] = @"2.16.840.1.101.3.4.2.2";
  v2[8] = @"1.2.840.10045.4.3.3";
  v2[9] = @"1.2.840.113549.1.1.13";
  v3[8] = @"2.16.840.1.101.3.4.2.2";
  v3[9] = @"2.16.840.1.101.3.4.2.3";
  v2[10] = @"1.2.840.10045.4.3.4";
  v3[10] = @"2.16.840.1.101.3.4.2.3";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:11];
  v1 = initDigestOIDWithSignatureAlgorithm_error__sSigAlgToDigAlg;
  initDigestOIDWithSignatureAlgorithm_error__sSigAlgToDigAlg = v0;
}

- (id)initRSASignatureOIDWithDigestAlgorithm:(id)algorithm error:(id *)error
{
  algorithmCopy = algorithm;
  if (initRSASignatureOIDWithDigestAlgorithm_error__onceToken != -1)
  {
    [MSOID initRSASignatureOIDWithDigestAlgorithm:error:];
  }

  v7 = initRSASignatureOIDWithDigestAlgorithm_error__sDigAlgToSigAlg;
  oIDString = [algorithmCopy OIDString];
  v9 = [v7 objectForKeyedSubscript:oIDString];

  if (v9)
  {
    error = [MSOID OIDWithString:v9 error:error];
  }

  else if (error)
  {
    v10 = MSErrorCryptoDomain[0];
    v11 = *error;
    oIDString2 = [algorithmCopy OIDString];
    *error = [MSError MSErrorWithDomain:v10 code:-50 underlyingError:v11 description:@"MSOID %@ does not indicate a signature algorithm", oIDString2];

    error = 0;
  }

  return error;
}

void __54__MSOID_initRSASignatureOIDWithDigestAlgorithm_error___block_invoke()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v2[0] = @"1.2.840.113549.2.5";
  v2[1] = @"1.3.14.3.2.26";
  v3[0] = @"1.2.840.113549.1.1.4";
  v3[1] = @"1.2.840.113549.1.1.5";
  v2[2] = @"2.16.840.1.101.3.4.2.4";
  v2[3] = @"2.16.840.1.101.3.4.2.1";
  v3[2] = @"1.2.840.113549.1.1.14";
  v3[3] = @"1.2.840.113549.1.1.11";
  v2[4] = @"2.16.840.1.101.3.4.2.2";
  v2[5] = @"2.16.840.1.101.3.4.2.3";
  v3[4] = @"1.2.840.113549.1.1.12";
  v3[5] = @"1.2.840.113549.1.1.13";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = initRSASignatureOIDWithDigestAlgorithm_error__sDigAlgToSigAlg;
  initRSASignatureOIDWithDigestAlgorithm_error__sDigAlgToSigAlg = v0;
}

- (id)initECSignatureOIDWithDigestAlgorithm:(id)algorithm error:(id *)error
{
  algorithmCopy = algorithm;
  if (initECSignatureOIDWithDigestAlgorithm_error__onceToken != -1)
  {
    [MSOID initECSignatureOIDWithDigestAlgorithm:error:];
  }

  v7 = initECSignatureOIDWithDigestAlgorithm_error__sDigAlgToSigAlg;
  oIDString = [algorithmCopy OIDString];
  v9 = [v7 objectForKeyedSubscript:oIDString];

  if (v9)
  {
    error = [MSOID OIDWithString:v9 error:error];
  }

  else if (error)
  {
    v10 = MSErrorCryptoDomain[0];
    v11 = *error;
    oIDString2 = [algorithmCopy OIDString];
    *error = [MSError MSErrorWithDomain:v10 code:-50 underlyingError:v11 description:@"MSOID %@ does not indicate a signature algorithm", oIDString2];

    error = 0;
  }

  return error;
}

void __53__MSOID_initECSignatureOIDWithDigestAlgorithm_error___block_invoke()
{
  v3[5] = *MEMORY[0x277D85DE8];
  v2[0] = @"1.3.14.3.2.26";
  v2[1] = @"2.16.840.1.101.3.4.2.4";
  v3[0] = @"1.2.840.10045.4.1";
  v3[1] = @"1.2.840.10045.4.3.1";
  v2[2] = @"2.16.840.1.101.3.4.2.1";
  v2[3] = @"2.16.840.1.101.3.4.2.2";
  v3[2] = @"1.2.840.10045.4.3.2";
  v3[3] = @"1.2.840.10045.4.3.3";
  v2[4] = @"2.16.840.1.101.3.4.2.3";
  v3[4] = @"1.2.840.10045.4.3.4";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:5];
  v1 = initECSignatureOIDWithDigestAlgorithm_error__sDigAlgToSigAlg;
  initECSignatureOIDWithDigestAlgorithm_error__sDigAlgToSigAlg = v0;
}

- (id)initSignatureOIDWithSecKeyAlgorithm:(__CFString *)algorithm error:(id *)error
{
  if (initSignatureOIDWithSecKeyAlgorithm_error__onceToken != -1)
  {
    [MSOID initSignatureOIDWithSecKeyAlgorithm:error:];
  }

  v7 = [initSignatureOIDWithSecKeyAlgorithm_error__sKeyAlgorithmToSignatureAlgorithm objectForKeyedSubscript:algorithm];
  if (v7)
  {
    v8 = [MSOID OIDWithString:v7 error:error];
  }

  else if (error)
  {
    [MSError MSErrorWithDomain:MSErrorCryptoDomain[0] code:-50 underlyingError:*error description:@"SecKeyAlgorithm %@ does not indicate a signature algorithm", algorithm];
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __51__MSOID_initSignatureOIDWithSecKeyAlgorithm_error___block_invoke()
{
  v14[22] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CDC3A0];
  v13[0] = *MEMORY[0x277CDC370];
  v13[1] = v0;
  v14[0] = @"1.2.840.113549.1.1.4";
  v14[1] = @"1.2.840.113549.1.1.4";
  v1 = *MEMORY[0x277CDC3A8];
  v13[2] = *MEMORY[0x277CDC378];
  v13[3] = v1;
  v14[2] = @"1.2.840.113549.1.1.5";
  v14[3] = @"1.2.840.113549.1.1.5";
  v2 = *MEMORY[0x277CDC2E8];
  v13[4] = *MEMORY[0x277CDC2A8];
  v13[5] = v2;
  v14[4] = @"1.2.840.10045.4.1";
  v14[5] = @"1.2.840.10045.4.1";
  v3 = *MEMORY[0x277CDC3B0];
  v13[6] = *MEMORY[0x277CDC380];
  v13[7] = v3;
  v14[6] = @"1.2.840.113549.1.1.14";
  v14[7] = @"1.2.840.113549.1.1.14";
  v4 = *MEMORY[0x277CDC2F0];
  v13[8] = *MEMORY[0x277CDC2B0];
  v13[9] = v4;
  v14[8] = @"1.2.840.10045.4.3.1";
  v14[9] = @"1.2.840.10045.4.3.1";
  v5 = *MEMORY[0x277CDC3B8];
  v13[10] = *MEMORY[0x277CDC388];
  v13[11] = v5;
  v14[10] = @"1.2.840.113549.1.1.11";
  v14[11] = @"1.2.840.113549.1.1.11";
  v6 = *MEMORY[0x277CDC300];
  v13[12] = *MEMORY[0x277CDC2B8];
  v13[13] = v6;
  v14[12] = @"1.2.840.10045.4.3.2";
  v14[13] = @"1.2.840.10045.4.3.2";
  v7 = *MEMORY[0x277CDC3C0];
  v13[14] = *MEMORY[0x277CDC390];
  v13[15] = v7;
  v14[14] = @"1.2.840.113549.1.1.12";
  v14[15] = @"1.2.840.113549.1.1.12";
  v8 = *MEMORY[0x277CDC308];
  v13[16] = *MEMORY[0x277CDC2C0];
  v13[17] = v8;
  v14[16] = @"1.2.840.10045.4.3.3";
  v14[17] = @"1.2.840.10045.4.3.3";
  v9 = *MEMORY[0x277CDC3C8];
  v13[18] = *MEMORY[0x277CDC398];
  v13[19] = v9;
  v14[18] = @"1.2.840.113549.1.1.13";
  v14[19] = @"1.2.840.113549.1.1.13";
  v10 = *MEMORY[0x277CDC310];
  v13[20] = *MEMORY[0x277CDC2C8];
  v13[21] = v10;
  v14[20] = @"1.2.840.10045.4.3.4";
  v14[21] = @"1.2.840.10045.4.3.4";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:22];
  v12 = initSignatureOIDWithSecKeyAlgorithm_error__sKeyAlgorithmToSignatureAlgorithm;
  initSignatureOIDWithSecKeyAlgorithm_error__sKeyAlgorithmToSignatureAlgorithm = v11;
}

void __24__MSOID_secKeyAlgorithm__block_invoke()
{
  v13[11] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CDC370];
  v12[0] = @"1.2.840.113549.1.1.4";
  v12[1] = @"1.2.840.113549.1.1.5";
  v1 = *MEMORY[0x277CDC378];
  v13[0] = v0;
  v13[1] = v1;
  v2 = *MEMORY[0x277CDC380];
  v12[2] = @"1.2.840.113549.1.1.14";
  v12[3] = @"1.2.840.113549.1.1.11";
  v3 = *MEMORY[0x277CDC388];
  v13[2] = v2;
  v13[3] = v3;
  v4 = *MEMORY[0x277CDC390];
  v12[4] = @"1.2.840.113549.1.1.12";
  v12[5] = @"1.2.840.113549.1.1.13";
  v5 = *MEMORY[0x277CDC398];
  v13[4] = v4;
  v13[5] = v5;
  v6 = *MEMORY[0x277CDC2A8];
  v12[6] = @"1.2.840.10045.4.1";
  v12[7] = @"1.2.840.10045.4.3.1";
  v7 = *MEMORY[0x277CDC2B0];
  v13[6] = v6;
  v13[7] = v7;
  v8 = *MEMORY[0x277CDC2B8];
  v12[8] = @"1.2.840.10045.4.3.2";
  v12[9] = @"1.2.840.10045.4.3.3";
  v9 = *MEMORY[0x277CDC2C0];
  v13[8] = v8;
  v13[9] = v9;
  v12[10] = @"1.2.840.10045.4.3.4";
  v13[10] = *MEMORY[0x277CDC2C8];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:11];
  v11 = secKeyAlgorithm_sAlgorithmOIDToKeyAlgorithm;
  secKeyAlgorithm_sAlgorithmOIDToKeyAlgorithm = v10;
}

- (MSOID)initWithAsn1OID:(heim_oid *)d error:(id *)error
{
  v19.receiver = self;
  v19.super_class = MSOID;
  v6 = [(MSOID *)&v19 init];
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = der_copy_oid();
  if (v7)
  {
    if (error)
    {
      v8 = MSErrorASN1Domain[0];
      v9 = v7;
      v10 = *error;
      v11 = @"unable to copy OID";
LABEL_13:
      [MSError MSErrorWithDomain:v8 code:v9 underlyingError:v10 description:v11];
      *error = v17 = 0;
      goto LABEL_15;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v12 = NSDataFromIntegerArray(d->components, d->length);
  OIDBytes = v6->_OIDBytes;
  v6->_OIDBytes = v12;

  v14 = v6->_OIDBytes;
  if (!v14)
  {
    if (!error)
    {
      goto LABEL_14;
    }

    v8 = MSErrorAllocationDomain[0];
    v10 = *error;
    v11 = @"could not parse OID into data";
LABEL_12:
    v9 = -108;
    goto LABEL_13;
  }

  v15 = NSStringFromOIDData(v14);
  OIDString = v6->_OIDString;
  v6->_OIDString = v15;

  if (!v6->_OIDString)
  {
    if (!error)
    {
      goto LABEL_14;
    }

    v8 = MSErrorAllocationDomain[0];
    v10 = *error;
    v11 = @"could not parse OID into string";
    goto LABEL_12;
  }

LABEL_7:
  v17 = v6;
LABEL_15:

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    oIDString = [equalCopy OIDString];
    if ([oIDString isEqualToString:self->_OIDString])
    {
      oIDBytes = [equalCopy OIDBytes];
      v7 = [oIDBytes isEqualToData:self->_OIDBytes];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end