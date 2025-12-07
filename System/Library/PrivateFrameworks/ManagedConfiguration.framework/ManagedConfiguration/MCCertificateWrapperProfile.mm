@interface MCCertificateWrapperProfile
+ (id)_basicWrapperProfileDictForCertificateName:(id)name fileName:(id)fileName identifier:(id)identifier;
+ (id)_identifierHashFromData:(id)data;
+ (id)_wrapperPayloadDictWithCertData:(id)data fileName:(id)name name:(id)a5 identifier:(id)identifier type:(id)type;
+ (id)_wrapperProfileDictForCertificate:(__SecCertificate *)certificate fileName:(id)name certData:(id)data type:(id)type;
+ (id)_wrapperProfileForWAPICertificate:(__SecCertificate *)certificate fileName:(id)name PEMData:(id)data;
+ (id)_wrapperWAPIPayloadDictWithPEMData:(id)data fileName:(id)name name:(id)a5 identifier:(id)identifier;
+ (id)wrapperProfileDictionaryWithCertificateData:(id)data fileName:(id)name outSignerCerts:(id *)certs;
- (BOOL)isSigned;
- (MCCertificateWrapperProfile)initWithDictionary:(id)dictionary signerCerts:(id)certs allowEmptyPayload:(BOOL)payload outError:(id *)error;
- (id)_certificatePayload;
- (id)earliestCertificateExpiryDate;
- (id)stubDictionary;
- (int)trustLevel;
@end

@implementation MCCertificateWrapperProfile

- (id)_certificatePayload
{
  payloads = [(MCConfigurationProfile *)self payloads];
  v3 = [payloads objectAtIndex:0];

  return v3;
}

- (MCCertificateWrapperProfile)initWithDictionary:(id)dictionary signerCerts:(id)certs allowEmptyPayload:(BOOL)payload outError:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = MCCertificateWrapperProfile;
  v7 = [(MCConfigurationProfile *)&v27 initWithDictionary:dictionary options:0 signerCerts:certs allowEmptyPayload:payload outError:error];
  v8 = v7;
  if (v7)
  {
    payloads = [(MCConfigurationProfile *)v7 payloads];
    if ([payloads count] == 1)
    {
      payloads2 = [(MCConfigurationProfile *)v8 payloads];
      v11 = [payloads2 objectAtIndexedSubscript:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        payloads3 = [(MCConfigurationProfile *)v8 payloads];
        v14 = [payloads3 objectAtIndexedSubscript:0];

        copyCertificate = [v14 copyCertificate];
        if (copyCertificate)
        {
          v16 = copyCertificate;
          v28[0] = copyCertificate;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
          [(MCProfile *)v8 setSignerCertificates:v17];

          CFRelease(v16);
        }

LABEL_9:

        return v8;
      }
    }

    else
    {
    }

    if (!error)
    {
      return 0;
    }

    v25 = MEMORY[0x1E696ABC0];
    v14 = MCErrorArray(@"MALFORMED_PAYLOAD_ERROR_DESCRIPTION", v18, v19, v20, v21, v22, v23, v24, 0);
    [v25 MCErrorWithDomain:@"MCProfileErrorDomain" code:1000 descriptionArray:v14 errorType:@"MCFatalError"];
    *error = v8 = 0;
    goto LABEL_9;
  }

  return v8;
}

- (id)stubDictionary
{
  v4.receiver = self;
  v4.super_class = MCCertificateWrapperProfile;
  stubDictionary = [(MCConfigurationProfile *)&v4 stubDictionary];
  [stubDictionary setObject:@"CertificateWrapper" forKey:@"PayloadType"];

  return stubDictionary;
}

- (int)trustLevel
{
  _certificatePayload = [(MCCertificateWrapperProfile *)self _certificatePayload];
  copyCertificate = [_certificatePayload copyCertificate];
  if (copyCertificate)
  {
    v4 = copyCertificate;
    if (SecCertificateIsSelfSignedCA())
    {
      v5 = 2;
      if (![MCKeychain itemExistsInKeychain:v4 useSystemKeychain:1])
      {
        if ([MCKeychain itemExistsInKeychain:v4 useSystemKeychain:0])
        {
          v5 = 2;
        }

        else
        {
          v5 = 0;
        }
      }
    }

    else
    {
      BasicX509 = SecPolicyCreateBasicX509();
      trust = 0;
      if (SecTrustCreateWithCertificates([MEMORY[0x1E695DEC8] arrayWithObject:v4], BasicX509, &trust))
      {
        v5 = 0;
      }

      else
      {
        cf = 0;
        if (SecTrustEvaluateWithError(trust, &cf))
        {
          v5 = 2;
        }

        else
        {
          CFRelease(cf);
          v5 = 0;
        }

        if (trust)
        {
          CFRelease(trust);
        }
      }

      if (BasicX509)
      {
        CFRelease(BasicX509);
      }

      CFRelease(v4);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isSigned
{
  _certificatePayload = [(MCCertificateWrapperProfile *)self _certificatePayload];
  isSigned = [_certificatePayload isSigned];

  return isSigned;
}

- (id)earliestCertificateExpiryDate
{
  _certificatePayload = [(MCCertificateWrapperProfile *)self _certificatePayload];
  expiry = [_certificatePayload expiry];

  return expiry;
}

+ (id)_identifierHashFromData:(id)data
{
  v8 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  CC_SHA256([dataCopy bytes], objc_msgSend(dataCopy, "length"), md);
  string = [MEMORY[0x1E696AD60] string];
  for (i = 0; i != 32; ++i)
  {
    [string appendFormat:@"%02x", md[i]];
  }

  [string appendString:@"a"];

  return string;
}

+ (id)_wrapperPayloadDictWithCertData:(id)data fileName:(id)name name:(id)a5 identifier:(id)identifier type:(id)type
{
  nameCopy = name;
  v12 = a5;
  v13 = MEMORY[0x1E696AEC0];
  typeCopy = type;
  identifierCopy = identifier;
  dataCopy = data;
  mCMakeUUID = [v13 MCMakeUUID];
  v18 = +[MCPayload wrapperPayloadDictionary];
  [v18 setObject:typeCopy forKey:@"PayloadType"];

  [v18 setObject:identifierCopy forKey:@"PayloadIdentifier"];
  [v18 setObject:mCMakeUUID forKey:@"PayloadUUID"];
  [v18 setObject:v12 forKey:@"PayloadDisplayName"];
  if (nameCopy)
  {
    v19 = nameCopy;
  }

  else
  {
    v19 = v12;
  }

  [v18 setObject:v19 forKey:@"PayloadCertificateFileName"];
  [v18 setObject:dataCopy forKey:@"PayloadContent"];

  return v18;
}

+ (id)_wrapperWAPIPayloadDictWithPEMData:(id)data fileName:(id)name name:(id)a5 identifier:(id)identifier
{
  v8 = MEMORY[0x1E696AEC0];
  identifierCopy = identifier;
  v10 = a5;
  dataCopy = data;
  mCMakeUUID = [v8 MCMakeUUID];
  v13 = +[MCPayload wrapperPayloadDictionary];
  [v13 setObject:@"com.apple.security.wapi-identity" forKey:@"PayloadType"];
  [v13 setObject:identifierCopy forKey:@"PayloadIdentifier"];

  [v13 setObject:mCMakeUUID forKey:@"PayloadUUID"];
  [v13 setObject:v10 forKey:@"PayloadDisplayName"];

  [v13 setObject:dataCopy forKey:@"PEMData"];

  return v13;
}

+ (id)_basicWrapperProfileDictForCertificateName:(id)name fileName:(id)fileName identifier:(id)identifier
{
  v6 = MEMORY[0x1E695DF90];
  identifierCopy = identifier;
  nameCopy = name;
  dictionary = [v6 dictionary];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:1];
  [dictionary setObject:v10 forKey:@"PayloadVersion"];

  [dictionary setObject:@"CertificateWrapper" forKey:@"PayloadType"];
  [dictionary setObject:identifierCopy forKey:@"PayloadIdentifier"];

  mCMakeUUID = [MEMORY[0x1E696AEC0] MCMakeUUID];
  [dictionary setObject:mCMakeUUID forKey:@"PayloadUUID"];

  [dictionary setObject:nameCopy forKey:@"PayloadDisplayName"];

  return dictionary;
}

+ (id)_wrapperProfileDictForCertificate:(__SecCertificate *)certificate fileName:(id)name certData:(id)data type:(id)type
{
  typeCopy = type;
  dataCopy = data;
  nameCopy = name;
  v13 = SecCertificateCopySubjectSummary(certificate);
  v14 = [self _identifierHashFromData:dataCopy];
  v15 = [self _basicWrapperProfileDictForCertificateName:v13 fileName:nameCopy identifier:v14];
  array = [MEMORY[0x1E695DF70] array];
  v17 = [self _wrapperPayloadDictWithCertData:dataCopy fileName:nameCopy name:v13 identifier:v14 type:typeCopy];

  [array addObject:v17];
  [v15 setObject:array forKey:@"PayloadContent"];

  return v15;
}

+ (id)_wrapperProfileForWAPICertificate:(__SecCertificate *)certificate fileName:(id)name PEMData:(id)data
{
  dataCopy = data;
  nameCopy = name;
  v10 = SecCertificateCopySubjectSummary(certificate);
  v11 = [self _identifierHashFromData:dataCopy];
  v12 = [self _basicWrapperProfileDictForCertificateName:v10 fileName:nameCopy identifier:v11];
  array = [MEMORY[0x1E695DF70] array];
  v14 = [self _wrapperWAPIPayloadDictWithPEMData:dataCopy fileName:nameCopy name:v10 identifier:v11];

  [array addObject:v14];
  [v12 setObject:array forKey:@"PayloadContent"];

  return v12;
}

+ (id)wrapperProfileDictionaryWithCertificateData:(id)data fileName:(id)name outSignerCerts:(id *)certs
{
  v37[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  nameCopy = name;
  if (dataCopy)
  {
    v10 = [MCCrypto copyCertificateRefFromPEMData:dataCopy];
    if (v10)
    {
      v11 = v10;
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:dataCopy encoding:1];
      if ([v12 rangeOfString:@"-----BEGIN EC PRIVATE KEY-----"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [self _wrapperProfileDictForCertificate:v11 fileName:nameCopy certData:dataCopy type:@"com.apple.security.pem"];
      }

      else
      {
        [self _wrapperProfileForWAPICertificate:v11 fileName:nameCopy PEMData:dataCopy];
      }
      v13 = ;
      v37[0] = v11;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
      CFRelease(v11);
    }

    else
    {
      v14 = [MCCrypto copyCertificateRefFromPKCS1Data:dataCopy];
      if (v14)
      {
        v15 = v14;
        v13 = [self _wrapperProfileDictForCertificate:v14 fileName:nameCopy certData:dataCopy type:@"com.apple.security.pkcs1"];
        v36 = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
        CFRelease(v15);
      }

      else
      {
        if ([MCCrypto isValidPKCS12Data:dataCopy])
        {
          v26 = MCLocalizedString(@"PKCS12_CERTIFICATE_DESCRIPTION_SINGULAR_FORMAT");
          v27 = [self _identifierHashFromData:dataCopy];
          v13 = [self _basicWrapperProfileDictForCertificateName:v26 fileName:nameCopy identifier:v27];
          array = [MEMORY[0x1E695DF70] array];
          v29 = [self _wrapperPayloadDictWithCertData:dataCopy fileName:nameCopy name:v26 identifier:v27 type:@"com.apple.security.pkcs12"];
          [array addObject:v29];
          [v13 setObject:array forKey:@"PayloadContent"];
        }

        else
        {
          v13 = 0;
        }

        v16 = 0;
      }
    }

    if ([v16 count])
    {
      certsCopy = certs;
      v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v16, "count")}];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v32;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v32 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = SecCertificateCopyData(*(*(&v31 + 1) + 8 * i));
            if (v23)
            {
              [v17 addObject:v23];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v20);
      }

      if (certsCopy)
      {
        v24 = v17;
        *certsCopy = v17;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end