@interface NEIKEv2AuthPayload
- (BOOL)generatePayloadData;
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)data;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (void)copyFullAuthenticationData;
- (void)setAuthProtocol:(uint64_t)protocol;
- (void)setAuthenticationData:(uint64_t)data;
@end

@implementation NEIKEv2AuthPayload

- (BOOL)parsePayloadData:(id)data
{
  v53 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if ([dataCopy length] > 3)
  {
    v47 = 0;
    [dataCopy getBytes:&v47 length:4];
    if ([dataCopy length] == 4)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        String = NEIKEv2AuthenticationMethodCreateString(v47);
        *buf = 138412290;
        *&buf[4] = String;
        _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "Auth payload with method %@ does not have any data", buf, 0xCu);
      }

      goto LABEL_5;
    }

    v7 = [dataCopy length] - 4;
    if (v47 == 12)
    {
      v24 = [[NEIKEv2AuthenticationProtocol alloc] initWithSecurePassword:-1];
    }

    else
    {
      if (v47 == 14)
      {
        v46 = 0;
        [dataCopy getBytes:&v46 range:{4, 1}];
        v8 = v46;
        v9 = v46 + 1;
        if (v7 > v46)
        {
          v10 = [dataCopy subdataWithRange:{4, v46 + 1}];
          v11 = [NEIKEv2AuthenticationProtocol alloc];
          v12 = v10;
          v13 = v12;
          if (v11)
          {
            if (v12)
            {
              if ([v12 length] == 5)
              {
                bytes = [v13 bytes];
                if (*bytes == 1694695684 && *(bytes + 4) == 112)
                {
                  v11 = [(NEIKEv2AuthenticationProtocol *)v11 initWithNonStandardDigitalSignature:3];
                  v27 = v11;
LABEL_42:

                  [(NEIKEv2AuthPayload *)self setAuthProtocol:v27];
                  if (self && self->_authProtocol)
                  {
                    if (v7 != v9)
                    {
                      v29 = [dataCopy subdataWithRange:{v8 + 5, v7 - v9}];
                      [(NEIKEv2AuthPayload *)self setAuthenticationData:v29];

                      goto LABEL_46;
                    }

                    v40 = ne_log_obj();
                    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                    {
                      v42 = self->_authProtocol;
                      v43 = NEIKEv2DigitalSignatureAlgorithmCreateString([(NEIKEv2AuthenticationProtocol *)v42 digitalSignatureAlgorithm]);
                      *buf = 138412290;
                      *&buf[4] = v43;
                      _os_log_error_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_ERROR, "Auth payload with digital signature method %@ does not have any data", buf, 0xCu);
                    }
                  }

                  goto LABEL_6;
                }
              }

              v44 = v8;
              v45 = v9;
              v16 = v13;
              objc_opt_self();
              v17 = [v16 bytes] + 1;
              v18 = [v16 length];
              memset(buf, 0, 32);
              v48[0] = v17;
              v48[1] = (v18 - 1);
              v19 = DERParseSequenceToObject(v48, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, buf, 0x20uLL, 0x20uLL);
              v49 = v19;
              if (v19)
              {
                v39 = v19;
                v31 = ne_log_obj();
                if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_73;
                }

                *v50 = 67109378;
                *v51 = v39;
                *&v51[4] = 2112;
                *&v51[6] = v16;
                v32 = "Could not parse AlgorithmIdentifier, error %d payload %@";
              }

              else
              {
                v20 = NEIKEv2ASN1CheckForNULLItem(&buf[16], &v49);
                v21 = v49;
                if (!v49)
                {
                  v22 = v20;
                  if (DEROidCompare(buf, &oidEd25519))
                  {
                    v23 = 3;
LABEL_39:
                    if (v22)
                    {
LABEL_40:

                      v11 = [(NEIKEv2AuthenticationProtocol *)v11 initWithDigitalSignature:v23];
                      v27 = v11;
                      v9 = v45;
LABEL_41:
                      v8 = v44;
                      goto LABEL_42;
                    }

                    v31 = ne_log_obj();
                    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                    {
                      v41 = NEIKEv2DigitalSignatureAlgorithmCreateString(v23);
                      *v50 = 138412546;
                      *v51 = v41;
                      *&v51[8] = 2112;
                      *&v51[10] = v16;
                      _os_log_error_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_ERROR, "Unexpected non-NULL parameters for signature algorithm %@, payload %@", v50, 0x16u);
                    }

LABEL_73:
                    v9 = v45;

                    v27 = 0;
                    goto LABEL_41;
                  }

                  if (DEROidCompare(buf, &oidEd448))
                  {
                    v23 = 4;
                    goto LABEL_39;
                  }

                  if (DEROidCompare(buf, &oidSha256Rsa))
                  {
                    v23 = 1;
                    goto LABEL_39;
                  }

                  if (DEROidCompare(buf, &oidSha384Rsa))
                  {
                    v23 = 5;
                    goto LABEL_39;
                  }

                  if (DEROidCompare(buf, &oidSha512Rsa))
                  {
                    v23 = 6;
                    goto LABEL_39;
                  }

                  if (DEROidCompare(buf, &oidSha256Ecdsa))
                  {
                    v23 = 2;
                    goto LABEL_39;
                  }

                  if (DEROidCompare(buf, &oidSha384Ecdsa))
                  {
                    v23 = 7;
                    goto LABEL_39;
                  }

                  if (DEROidCompare(buf, &oidSha512Ecdsa))
                  {
                    v23 = 8;
                    goto LABEL_39;
                  }

                  if (DEROidCompare(buf, &oidPSSRsa))
                  {
                    if (v22)
                    {
                      v31 = ne_log_obj();
                      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_73;
                      }

                      *v50 = 138412290;
                      *v51 = v16;
                      v32 = "Unexpected NULL parameters for RSA-PSS, payload %@";
                    }

                    else
                    {
                      v23 = [NEIKEv2AuthenticationProtocol getAlgorithmForRSAPSSParameters:?];
                      if (v23)
                      {
                        goto LABEL_40;
                      }

                      v31 = ne_log_obj();
                      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_73;
                      }

                      *v50 = 138412290;
                      *v51 = v16;
                      v32 = "Unable to get RSA-PSS authentication protocol, payload %@";
                    }
                  }

                  else
                  {
                    v31 = ne_log_obj();
                    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_73;
                    }

                    *v50 = 138412290;
                    *v51 = v16;
                    v32 = "Unrecognized digital signature AlgorithmIdentifier OID, payload %@";
                  }

                  v36 = v31;
                  v37 = 12;
LABEL_70:
                  _os_log_error_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_ERROR, v32, v50, v37);
                  goto LABEL_73;
                }

                v31 = ne_log_obj();
                if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_73;
                }

                *v50 = 67109378;
                *v51 = v21;
                *&v51[4] = 2112;
                *&v51[6] = v16;
                v32 = "Could not parse AlgorithmIdentifier parameters, error %d payload %@";
              }

              v36 = v31;
              v37 = 18;
              goto LABEL_70;
            }

            v38 = ne_log_obj();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315138;
              *&buf[4] = "[NEIKEv2AuthenticationProtocol(Packet) initWithDigitalSignatureAlgorithmIdentifier:]";
              _os_log_fault_impl(&dword_1BA83C000, v38, OS_LOG_TYPE_FAULT, "%s called with null digitalSignatureAlgorithmIdentifier", buf, 0xCu);
            }
          }

          v27 = 0;
          goto LABEL_42;
        }

        v5 = ne_log_obj();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          *&buf[4] = v9;
          *&buf[12] = 2112;
          *&buf[14] = dataCopy;
          v33 = "AuthData too short for AlgorithmIdentifier len %zu, payload %@";
          v34 = v5;
          v35 = 22;
          goto LABEL_55;
        }

        goto LABEL_5;
      }

      v24 = [[NEIKEv2AuthenticationProtocol alloc] initWithMethod:v47];
    }

    v25 = v24;
    [(NEIKEv2AuthPayload *)self setAuthProtocol:v24];

    v26 = [dataCopy subdataWithRange:{4, v7}];
    [(NEIKEv2AuthPayload *)self setAuthenticationData:v26];

LABEL_46:
    hasRequiredFields = [(NEIKEv2AuthPayload *)self hasRequiredFields];
    goto LABEL_47;
  }

  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "[NEIKEv2AuthPayload parsePayloadData:]";
    v33 = "BACKTRACE %s called with null (payloadData.length >= sizeof(ikev2_payload_auth_hdr_t))";
    v34 = v5;
    v35 = 12;
LABEL_55:
    _os_log_error_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_ERROR, v33, buf, v35);
  }

LABEL_5:

LABEL_6:
  hasRequiredFields = 0;
LABEL_47:

  return hasRequiredFields;
}

- (void)setAuthProtocol:(uint64_t)protocol
{
  if (protocol)
  {
    objc_storeStrong((protocol + 32), a2);
  }
}

- (void)setAuthenticationData:(uint64_t)data
{
  if (data)
  {
    objc_storeStrong((data + 40), a2);
  }
}

- (BOOL)generatePayloadData
{
  v27 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    if ([0 hasRequiredFields])
    {
      method = [0 method];

      isDigitalSignature = [0 isDigitalSignature];
      v8 = 0;
      if (isDigitalSignature)
      {
        goto LABEL_54;
      }

      goto LABEL_14;
    }

LABEL_51:
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, "Auth payload missing required fields", buf, 2u);
    }

    goto LABEL_54;
  }

  if (!self->super._payloadDataVector)
  {
    if ([(NEIKEv2AuthPayload *)self hasRequiredFields])
    {
      method = 0;
      LOBYTE(method) = [(NEIKEv2AuthenticationProtocol *)self->_authProtocol method];
      v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&method length:4];
      objc_storeStrong(&self->super._payloadSubHeader, v4);

      if ([(NEIKEv2AuthenticationProtocol *)self->_authProtocol isDigitalSignature])
      {
        authProtocol = self->_authProtocol;
        if (!authProtocol)
        {
          return authProtocol;
        }

        if (![(NEIKEv2AuthenticationProtocol *)self->_authProtocol isDigitalSignature])
        {
          v11 = ne_log_obj();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_38;
          }

          *buf = 136315138;
          v26 = "[NEIKEv2AuthenticationProtocol(Packet) copyDigitalSignatureAlgorithmIdentifier]";
          v18 = "%s called with null self.isDigitalSignature";
          goto LABEL_45;
        }

        digitalSignatureAlgorithm = [authProtocol digitalSignatureAlgorithm];
        if (digitalSignatureAlgorithm > 5)
        {
          if (digitalSignatureAlgorithm <= 8)
          {
            if (digitalSignatureAlgorithm != 6)
            {
              if (digitalSignatureAlgorithm == 7)
              {
                v6 = objc_alloc(MEMORY[0x1E695DEF0]);
                v7 = &NEIKEv2ASN1AlgorithmIdECDSA384;
              }

              else
              {
                v6 = objc_alloc(MEMORY[0x1E695DEF0]);
                v7 = &NEIKEv2ASN1AlgorithmIdECDSA512;
              }

              goto LABEL_29;
            }

            v6 = objc_alloc(MEMORY[0x1E695DEF0]);
            v7 = &NEIKEv2ASN1AlgorithmIdRSAPKCS512;
            goto LABEL_34;
          }

          switch(digitalSignatureAlgorithm)
          {
            case 9:
              v6 = objc_alloc(MEMORY[0x1E695DEF0]);
              v7 = &NEIKEv2ASN1AlgorithmIdRSAPSS256;
              goto LABEL_36;
            case 10:
              v6 = objc_alloc(MEMORY[0x1E695DEF0]);
              v7 = &NEIKEv2ASN1AlgorithmIdRSAPSS384;
              goto LABEL_36;
            case 11:
              v6 = objc_alloc(MEMORY[0x1E695DEF0]);
              v7 = &NEIKEv2ASN1AlgorithmIdRSAPSS512;
LABEL_36:
              v12 = 68;
              goto LABEL_41;
          }

          goto LABEL_37;
        }

        if (digitalSignatureAlgorithm > 2)
        {
          if (digitalSignatureAlgorithm == 3)
          {
            isNonStandard = [authProtocol isNonStandard];
            v6 = objc_alloc(MEMORY[0x1E695DEF0]);
            if (isNonStandard)
            {
              v7 = &NEIKEv2ASN1AlgorithmIdED25519NonStandard;
              v12 = 5;
              goto LABEL_41;
            }

            v7 = &NEIKEv2ASN1AlgorithmIdED25519;
          }

          else
          {
            if (digitalSignatureAlgorithm != 4)
            {
              v6 = objc_alloc(MEMORY[0x1E695DEF0]);
              v7 = &NEIKEv2ASN1AlgorithmIdRSAPKCS384;
              goto LABEL_34;
            }

            v6 = objc_alloc(MEMORY[0x1E695DEF0]);
            v7 = &NEIKEv2ASN1AlgorithmIdED448;
          }

          v12 = 8;
LABEL_41:
          v14 = [v6 initWithBytesNoCopy:v7 length:v12 freeWhenDone:0];
          v11 = v14;
          if (v14)
          {
            authenticationData = self->_authenticationData;
            v24[0] = v14;
            v24[1] = authenticationData;
            v16 = MEMORY[0x1E695DEC8];
            v17 = authenticationData;
            authProtocol = [v16 arrayWithObjects:v24 count:2];
            [(NEIKEv2KeyExchangeHandler *)self setSharedSecret:?];

            LOBYTE(authProtocol) = 1;
            goto LABEL_43;
          }

LABEL_54:
          LOBYTE(authProtocol) = 0;
          return authProtocol;
        }

        if (digitalSignatureAlgorithm != 1)
        {
          if (digitalSignatureAlgorithm == 2)
          {
            v6 = objc_alloc(MEMORY[0x1E695DEF0]);
            v7 = &NEIKEv2ASN1AlgorithmIdECDSA256;
LABEL_29:
            v12 = 13;
            goto LABEL_41;
          }

LABEL_37:
          v11 = ne_log_obj();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
LABEL_38:
            LOBYTE(authProtocol) = 0;
            goto LABEL_43;
          }

          *buf = 138412290;
          v26 = authProtocol;
          v18 = "Cannot create algorithm identifier for authentication protocol %@";
LABEL_45:
          _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, v18, buf, 0xCu);
          goto LABEL_38;
        }

        v6 = objc_alloc(MEMORY[0x1E695DEF0]);
        v7 = &NEIKEv2ASN1AlgorithmIdRSAPKCS256;
LABEL_34:
        v12 = 16;
        goto LABEL_41;
      }

      v8 = self->_authenticationData;
LABEL_14:
      v23 = v8;
      v9 = MEMORY[0x1E695DEC8];
      v10 = v8;
      LOBYTE(authProtocol) = 1;
      v11 = [v9 arrayWithObjects:&v23 count:1];
      [(NEIKEv2KeyExchangeHandler *)self setSharedSecret:v11];

LABEL_43:
      return authProtocol;
    }

    goto LABEL_51;
  }

  LOBYTE(authProtocol) = 1;
  return authProtocol;
}

- (BOOL)hasRequiredFields
{
  selfCopy = self;
  if (self)
  {
    v3 = self->_authenticationData;
    if (v3)
    {
      v4 = v3;
      authProtocol = selfCopy->_authProtocol;
      if (authProtocol)
      {
        v6 = authProtocol;
        LOBYTE(selfCopy) = [(NEIKEv2AuthenticationProtocol *)v6 method]!= 0;
      }

      else
      {
        LOBYTE(selfCopy) = 0;
      }
    }

    else
    {
      LOBYTE(selfCopy) = 0;
    }
  }

  return selfCopy;
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  typeDescription = [(NEIKEv2AuthPayload *)self typeDescription];
  [v7 appendPrettyObject:typeDescription withName:@"Payload Type" andIndent:v5 options:options];

  if (self)
  {
    [v7 appendPrettyObject:self->_authProtocol withName:@"Authentication Protocol" andIndent:v5 options:options];
    authenticationData = self->_authenticationData;
  }

  else
  {
    [v7 appendPrettyObject:0 withName:@"Authentication Protocol" andIndent:v5 options:options];
    authenticationData = 0;
  }

  [v7 appendPrettyObject:authenticationData withName:@"Authentication Data" andIndent:v5 options:options];

  return v7;
}

- (void)copyFullAuthenticationData
{
  if (!self || (*(self + 8) & 1) != 0)
  {
    return 0;
  }

  v2 = *(self + 24);
  if (v2)
  {

    goto LABEL_6;
  }

  if (([self generatePayloadData] & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v3 = [*(self + 24) count];
  v4 = *(self + 24);
  if (v3 == 1)
  {
    [v4 objectAtIndexedSubscript:0];
    return objc_claimAutoreleasedReturnValue();
  }

  else
  {
    v6 = v4;
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v7 length];
    v9 = [*(self + 24) objectAtIndexedSubscript:1];
    v10 = [v9 length];

    v5 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v10 + v8];
    v11 = [*(self + 24) objectAtIndexedSubscript:0];
    [v5 appendData:v11];

    v12 = [*(self + 24) objectAtIndexedSubscript:1];
    [v5 appendData:v12];
  }

  return v5;
}

@end