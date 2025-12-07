@interface DAEASOAuthJWTValidator
+ (id)base64URLDecode:(id)decode;
+ (id)base64URLEncode:(id)encode;
- (BOOL)_signatureValid:(id)valid;
- (BOOL)idTokenValidWithJWKS:(id)s withAudience:(id)audience withIssuer:(id)issuer;
- (BOOL)personalAccount;
- (DAEASOAuthJWTValidator)init;
- (DAEASOAuthJWTValidator)initWithIdToken:(id)token;
@end

@implementation DAEASOAuthJWTValidator

- (DAEASOAuthJWTValidator)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"DAEASOAuthJWTValidator.m" lineNumber:41 description:@"DAEASOAuthJWTValidator cannot be initialized with this method."];

  return 0;
}

- (DAEASOAuthJWTValidator)initWithIdToken:(id)token
{
  v43 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  if (!tokenCopy)
  {
    [(DAEASOAuthJWTValidator *)a2 initWithIdToken:?];
  }

  v38.receiver = self;
  v38.super_class = DAEASOAuthJWTValidator;
  v6 = [(DAEASOAuthJWTValidator *)&v38 init];
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = [tokenCopy componentsSeparatedByString:@"."];
  if ([v7 count] <= 2)
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = [v7 count];
      *buf = 138412546;
      v40 = v7;
      v41 = 2048;
      v42 = v10;
      _os_log_impl(&dword_247E05000, v8, v9, "DAEASOAuthJWTValidator Error separating idToken components: %@ %lu", buf, 0x16u);
    }

    v11 = 0;
    goto LABEL_12;
  }

  v12 = [v7 objectAtIndexedSubscript:0];
  rawHeader = v6->_rawHeader;
  v6->_rawHeader = v12;

  v14 = [v7 objectAtIndexedSubscript:1];
  rawPayload = v6->_rawPayload;
  v6->_rawPayload = v14;

  v16 = [v7 objectAtIndexedSubscript:2];
  rawSignature = v6->_rawSignature;
  v6->_rawSignature = v16;

  v18 = [DAEASOAuthJWTValidator base64URLDecode:v6->_rawHeader];
  decodedHeader = v6->_decodedHeader;
  v6->_decodedHeader = v18;

  v20 = [DAEASOAuthJWTValidator base64URLDecode:v6->_rawPayload];
  decodedPayload = v6->_decodedPayload;
  v6->_decodedPayload = v20;

  v22 = [DAEASOAuthJWTValidator base64URLDecode:v6->_rawSignature];
  decodedSignature = v6->_decodedSignature;
  v6->_decodedSignature = v22;

  v24 = v6->_decodedHeader;
  v37 = 0;
  v25 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v24 options:4 error:&v37];
  v11 = v37;
  headerJSONObject = v6->_headerJSONObject;
  v6->_headerJSONObject = v25;

  if (v11 || !v6->_headerJSONObject)
  {
    v8 = DALoggingwithCategory();
    v27 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v8, v27))
    {
      v28 = v6->_rawHeader;
      *buf = 138412546;
      v40 = v11;
      v41 = 2112;
      v42 = v28;
      v29 = "DAEASOAuthJWTValidator Error parsing JWT header: %@ %@";
LABEL_11:
      _os_log_impl(&dword_247E05000, v8, v27, v29, buf, 0x16u);
    }
  }

  else
  {
    v31 = v6->_decodedPayload;
    v36 = 0;
    v32 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v31 options:1 error:&v36];
    v11 = v36;
    payloadJSONObject = v6->_payloadJSONObject;
    v6->_payloadJSONObject = v32;

    if (!v11 && v6->_payloadJSONObject)
    {

LABEL_19:
      v30 = v6;
      goto LABEL_20;
    }

    v8 = DALoggingwithCategory();
    v27 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v8, v27))
    {
      v34 = v6->_rawPayload;
      *buf = 138412546;
      v40 = v11;
      v41 = 2112;
      v42 = v34;
      v29 = "DAEASOAuthJWTValidator Error parsing JWT payload: %@ %@";
      goto LABEL_11;
    }
  }

LABEL_12:

  v30 = 0;
LABEL_20:

  return v30;
}

- (BOOL)personalAccount
{
  payloadJSONObject = [(DAEASOAuthJWTValidator *)self payloadJSONObject];
  v4 = [payloadJSONObject objectForKeyedSubscript:@"tid"];

  result = 0;
  if (v4)
  {
    payloadJSONObject2 = [(DAEASOAuthJWTValidator *)self payloadJSONObject];
    v6 = [payloadJSONObject2 objectForKeyedSubscript:@"tid"];
    v7 = [v6 isEqualToString:@"9188040d-6c67-4c5b-b112-36a304b66dad"];

    if (v7)
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)idTokenValidWithJWKS:(id)s withAudience:(id)audience withIssuer:(id)issuer
{
  v51 = *MEMORY[0x277D85DE8];
  sCopy = s;
  audienceCopy = audience;
  issuerCopy = issuer;
  v11 = issuerCopy;
  if (!sCopy || !audienceCopy || !issuerCopy)
  {
    v14 = DALoggingwithCategory();
    v21 = *(MEMORY[0x277D03988] + 3);
    if (!os_log_type_enabled(v14, v21))
    {
      goto LABEL_16;
    }

    v45 = 138412802;
    v46 = sCopy;
    v47 = 2112;
    v48 = audienceCopy;
    v49 = 2112;
    v50 = v11;
    v22 = "DAEASOAuthJWTValidator idToken could not be validated, nil params %@ %@ %@";
    v23 = v14;
    v24 = v21;
    v25 = 32;
LABEL_15:
    _os_log_impl(&dword_247E05000, v23, v24, v22, &v45, v25);
    goto LABEL_16;
  }

  if (![(DAEASOAuthJWTValidator *)self _signatureValid:sCopy])
  {
    v14 = DALoggingwithCategory();
    v26 = *(MEMORY[0x277D03988] + 7);
    if (!os_log_type_enabled(v14, v26))
    {
      goto LABEL_16;
    }

    LOWORD(v45) = 0;
    v22 = "DAEASOAuthJWTValidator idToken could not be validated, invalid signature";
    v23 = v14;
    v24 = v26;
    v25 = 2;
    goto LABEL_15;
  }

  v12 = [self->_payloadJSONObject objectForKeyedSubscript:@"iss"];

  if (v12)
  {
    v13 = [self->_payloadJSONObject objectForKeyedSubscript:@"tid"];
    v14 = [v11 stringByReplacingOccurrencesOfString:@"{tenantid}" withString:v13];

    v15 = [self->_payloadJSONObject objectForKeyedSubscript:@"iss"];
    v16 = [v14 caseInsensitiveCompare:v15];

    if (v16)
    {
      v17 = DALoggingwithCategory();
      v18 = *(MEMORY[0x277D03988] + 7);
      if (os_log_type_enabled(v17, v18))
      {
        v19 = [self->_payloadJSONObject objectForKeyedSubscript:@"iss"];
        v45 = 138412546;
        v46 = v14;
        v47 = 2112;
        v48 = v19;
        v20 = "DAEASOAuthJWTValidator idToken could not be validated, issuer mismatch: %@ %@";
LABEL_24:
        _os_log_impl(&dword_247E05000, v17, v18, v20, &v45, 0x16u);
      }
    }

    else
    {
      v31 = [self->_payloadJSONObject objectForKeyedSubscript:@"aud"];
      v32 = [v31 isEqualToString:audienceCopy];

      if (v32)
      {
        v33 = [self->_payloadJSONObject objectForKeyedSubscript:@"nbf"];
        integerValue = [v33 integerValue];

        v35 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:300.0];
        [v35 timeIntervalSince1970];
        if (v36 >= integerValue)
        {
          v40 = [self->_payloadJSONObject objectForKeyedSubscript:@"exp"];
          integerValue2 = [v40 integerValue];

          v17 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-300.0];
          [v17 timeIntervalSince1970];
          if (v42 <= integerValue2)
          {
            v29 = 1;
            goto LABEL_26;
          }

          v37 = DALoggingwithCategory();
          v43 = *(MEMORY[0x277D03988] + 7);
          if (os_log_type_enabled(v37, v43))
          {
            [v17 timeIntervalSince1970];
            v45 = 134218240;
            v46 = *&integerValue2;
            v47 = 2048;
            v48 = v44;
            _os_log_impl(&dword_247E05000, v37, v43, "DAEASOAuthJWTValidator idToken could not be validated, exp validation failed: %f %f", &v45, 0x16u);
          }

          v35 = v17;
        }

        else
        {
          v37 = DALoggingwithCategory();
          v38 = *(MEMORY[0x277D03988] + 7);
          if (os_log_type_enabled(v37, v38))
          {
            [v35 timeIntervalSince1970];
            v45 = 134218240;
            v46 = *&integerValue;
            v47 = 2048;
            v48 = v39;
            _os_log_impl(&dword_247E05000, v37, v38, "DAEASOAuthJWTValidator idToken could not be validated, nbf validation failed: %f %f", &v45, 0x16u);
          }
        }

        v29 = 0;
        v17 = v35;
        goto LABEL_26;
      }

      v17 = DALoggingwithCategory();
      v18 = *(MEMORY[0x277D03988] + 7);
      if (os_log_type_enabled(v17, v18))
      {
        v19 = [self->_payloadJSONObject objectForKeyedSubscript:@"aud"];
        v45 = 138412546;
        v46 = audienceCopy;
        v47 = 2112;
        v48 = v19;
        v20 = "DAEASOAuthJWTValidator idToken could not be validated, audience mismatch: %@ %@";
        goto LABEL_24;
      }
    }

    v29 = 0;
LABEL_26:

    goto LABEL_17;
  }

  v14 = DALoggingwithCategory();
  v27 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v14, v27))
  {
    payloadJSONObject = self->_payloadJSONObject;
    v45 = 138412546;
    v46 = @"iss";
    v47 = 2112;
    v48 = payloadJSONObject;
    v22 = "DAEASOAuthJWTValidator idToken could not be validated, payload didn't contain the required key: %@ %@";
    v23 = v14;
    v24 = v27;
    v25 = 22;
    goto LABEL_15;
  }

LABEL_16:
  v29 = 0;
LABEL_17:

  return v29;
}

- (BOOL)_signatureValid:(id)valid
{
  v68 = *MEMORY[0x277D85DE8];
  validCopy = valid;
  v5 = [self->_headerJSONObject objectForKeyedSubscript:@"kid"];
  if (v5 && (v6 = v5, [self->_payloadJSONObject objectForKeyedSubscript:@"iss"], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v58 = 0;
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:validCopy options:0 error:&v58];
    v9 = v58;
    v10 = MEMORY[0x277D03988];
    if (v9 || !v8)
    {
      v11 = DALoggingwithCategory();
      v24 = *(v10 + 3);
      if (os_log_type_enabled(v11, v24))
      {
        *buf = 138412546;
        v61 = v9;
        v62 = 2112;
        v63 = validCopy;
        _os_log_impl(&dword_247E05000, v11, v24, "DAEASOAuthJWTValidator signature could not be validated: %@ %@", buf, 0x16u);
      }

      v23 = 0;
    }

    else
    {
      v52 = validCopy;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v51 = v8;
      v11 = [v8 objectForKeyedSubscript:@"keys"];
      v12 = [v11 countByEnumeratingWithState:&v54 objects:v59 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v55;
LABEL_7:
        v15 = 0;
        while (1)
        {
          if (*v55 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v54 + 1) + 8 * v15);
          v17 = [v16 objectForKeyedSubscript:@"kid"];
          v18 = [self->_headerJSONObject objectForKeyedSubscript:@"kid"];
          v19 = [v17 isEqualToString:v18];

          if (v19)
          {
            break;
          }

          if (v13 == ++v15)
          {
            v13 = [v11 countByEnumeratingWithState:&v54 objects:v59 count:16];
            if (v13)
            {
              goto LABEL_7;
            }

            goto LABEL_45;
          }
        }

        v25 = MEMORY[0x277CCACA8];
        rawHeader = [(DAEASOAuthJWTValidator *)self rawHeader];
        rawPayload = [(DAEASOAuthJWTValidator *)self rawPayload];
        v28 = [v25 stringWithFormat:@"%@.%@", rawHeader, rawPayload];

        v29 = [v28 dataUsingEncoding:1];
        v30 = [v16 objectForKeyedSubscript:@"x5c"];
        firstObject = [v30 firstObject];

        v32 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:firstObject options:0];
        if (v32)
        {
          v50 = v28;
          v33 = SecCertificateCreateWithData(0, v32);
          v34 = SecCertificateCopyKey(v33);
          if (v33)
          {
            CFRelease(v33);
          }

          error = 0;
          v35 = [self->_headerJSONObject objectForKeyedSubscript:@"alg"];
          if ([v35 isEqualToString:@"RS256"])
          {
            v36 = MEMORY[0x277CDC3B8];
          }

          else
          {
            v36 = MEMORY[0x277CDC318];
          }

          if (v34)
          {
            if (v29)
            {
              decodedSignature = self->_decodedSignature;
              if (decodedSignature)
              {
                v38 = SecKeyVerifySignature(v34, *v36, v29, decodedSignature, &error) == 1;
                goto LABEL_34;
              }
            }
          }

          v39 = DALoggingwithCategory();
          v40 = *(MEMORY[0x277D03988] + 7);
          if (os_log_type_enabled(v39, v40))
          {
            v41 = self->_decodedSignature;
            *buf = 138412802;
            v61 = v34;
            v62 = 2112;
            v63 = v29;
            v64 = 2112;
            v65 = v41;
            _os_log_impl(&dword_247E05000, v39, v40, "DAEASOAuthJWTValidator SecKeyVerifySignature not invoked with invalid params: %@ %@ %@", buf, 0x20u);
          }

          if (v34)
          {
            v38 = 0;
LABEL_34:
            CFRelease(v34);
            if (error)
            {
              v42 = DALoggingwithCategory();
              v43 = *(MEMORY[0x277D03988] + 7);
              if (os_log_type_enabled(v42, v43))
              {
                v44 = self->_decodedSignature;
                *buf = 138412802;
                v61 = v29;
                v62 = 2112;
                v63 = v44;
                v64 = 2112;
                v65 = error;
                _os_log_impl(&dword_247E05000, v42, v43, "DAEASOAuthJWTValidator Error occurred while verifying signature: %@ %@ %@", buf, 0x20u);
              }
            }

            v28 = v50;
            if (v38)
            {

              v23 = 1;
              goto LABEL_48;
            }

            goto LABEL_44;
          }

          v28 = v50;
        }

        else
        {
          v45 = DALoggingwithCategory();
          v46 = *(MEMORY[0x277D03988] + 7);
          if (os_log_type_enabled(v45, v46))
          {
            *buf = 138412290;
            v61 = 0;
            _os_log_impl(&dword_247E05000, v45, v46, "DAEASOAuthJWTValidator SecCertificateCreateWithData not invoked with invalid param: %@ ", buf, 0xCu);
          }
        }

LABEL_44:
      }

LABEL_45:

      v11 = DALoggingwithCategory();
      v47 = *(MEMORY[0x277D03988] + 7);
      if (os_log_type_enabled(v11, v47))
      {
        headerJSONObject = self->_headerJSONObject;
        *buf = 138412546;
        v8 = v51;
        v61 = v51;
        v62 = 2112;
        v63 = headerJSONObject;
        _os_log_impl(&dword_247E05000, v11, v47, "DAEASOAuthJWTValidator signature could not be validated: %@ %@", buf, 0x16u);
        v23 = 0;
        v9 = 0;
        validCopy = v52;
      }

      else
      {
        v23 = 0;
LABEL_48:
        v9 = 0;
        validCopy = v52;
        v8 = v51;
      }
    }
  }

  else
  {
    v9 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v9, v20))
    {
      v21 = self->_headerJSONObject;
      payloadJSONObject = self->_payloadJSONObject;
      *buf = 138413058;
      v61 = v21;
      v62 = 2112;
      v63 = @"kid";
      v64 = 2112;
      v65 = payloadJSONObject;
      v66 = 2112;
      v67 = @"iss";
      _os_log_impl(&dword_247E05000, v9, v20, "DAEASOAuthJWTValidator signature could not be validated, keys not found %@ %@ %@ %@", buf, 0x2Au);
    }

    v23 = 0;
  }

  return v23;
}

+ (id)base64URLDecode:(id)decode
{
  v17 = *MEMORY[0x277D85DE8];
  decodeCopy = decode;
  if (decodeCopy)
  {
    v4 = decodeCopy;
    v5 = [decodeCopy length] & 3;
    if (v5)
    {
      v6 = (4 - v5);
      string = [MEMORY[0x277CCACA8] string];
      v8 = [string stringByPaddingToLength:v6 withString:@"=" startingAtIndex:0];
    }

    else
    {
      v8 = &stru_2859ED5C8;
    }

    v12 = [v4 stringByAppendingString:v8];

    v13 = [v12 stringByReplacingOccurrencesOfString:@"-" withString:@"+"];

    v9 = [v13 stringByReplacingOccurrencesOfString:@"_" withString:@"/"];

    v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v9 options:0];
  }

  else
  {
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v9, v10))
    {
      v15 = 138412290;
      v16 = 0;
      _os_log_impl(&dword_247E05000, v9, v10, "DAEASOAuthJWTValidator cannot base64URLDecode: %@", &v15, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

+ (id)base64URLEncode:(id)encode
{
  v12 = *MEMORY[0x277D85DE8];
  if (encode)
  {
    v3 = [encode base64EncodedStringWithOptions:0];
    v4 = [v3 stringByReplacingOccurrencesOfString:@"+" withString:@"-"];

    v5 = [v4 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

    v6 = [v5 stringByReplacingOccurrencesOfString:@"=" withString:&stru_2859ED5C8];
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      v10 = 138412290;
      v11 = 0;
      _os_log_impl(&dword_247E05000, v7, v8, "DAEASOAuthJWTValidator cannot base64URLEncode: %@", &v10, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (void)initWithIdToken:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DAEASOAuthJWTValidator.m" lineNumber:46 description:@"DAEASOAuthJWTValidator cannot be initialized with nil idToken"];
}

@end