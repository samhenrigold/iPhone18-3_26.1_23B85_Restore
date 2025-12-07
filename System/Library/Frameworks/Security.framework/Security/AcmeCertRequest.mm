@interface AcmeCertRequest
- (AcmeCertRequest)initWithSubject:(id)subject parameters:(id)parameters;
- (BOOL)deviceAttestationSupported;
- (BOOL)valueForBooleanDefault:(id)default;
- (__SecIdentity)identityWithError:(id *)error;
- (id)acmeRequest;
- (id)attestationChainPEMRepresentation;
- (id)attestationObjectWithCertificates:(id)certificates;
- (id)createCSR;
- (id)createCertificate;
- (id)createKeyPair;
- (id)executeRequest;
- (id)hardwareAttestationWithError:(id *)error;
- (id)pollForStatus:(id)status until:(id)until;
- (id)processReply:(id)reply;
- (id)requestAttestationChainWithError:(id *)error;
- (id)sanitizeParameters;
- (id)sanitizeSubject;
- (id)sendRequestToXPCService:(id)service response:(id *)response;
- (id)serialNumber;
- (int)errorStatusWithHTTPErrorCode:(int)code;
- (void)dealloc;
@end

@implementation AcmeCertRequest

- (__SecIdentity)identityWithError:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  self->_identity = 0;
  executeRequest = [(AcmeCertRequest *)self executeRequest];
  if (executeRequest)
  {
    v6 = executeRequest;
    if (self->_identity)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  certificate = self->_certificate;
  if (!certificate || (privateKey = self->_privateKey) == 0)
  {
    if (!self->_identity)
    {
      goto LABEL_7;
    }

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  v9 = SecIdentityCreate(*MEMORY[0x1E695E480], certificate, privateKey);
  self->_identity = v9;
  if (v9)
  {
    goto LABEL_11;
  }

LABEL_7:
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to create identity (check input values)"];
  v11 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A768];
  v27 = *MEMORY[0x1E696A578];
  v28[0] = v10;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v6 = [v11 errorWithDomain:v12 code:-67838 userInfo:v13];

LABEL_8:
  v14 = self->_privateKey;
  if (v14)
  {
    v25[0] = @"class";
    v25[1] = @"v_Ref";
    v26[0] = @"keys";
    v26[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
    SecItemDelete(v15);
  }

LABEL_12:
  publicKey = self->_publicKey;
  if (publicKey)
  {
    v23[0] = @"class";
    v23[1] = @"v_Ref";
    v24[0] = @"keys";
    v24[1] = publicKey;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    SecItemDelete(v17);
  }

  if (v6)
  {
    v18 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v6;
      _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "identityWithError: %@", &v21, 0xCu);
    }
  }

  if (error)
  {
    v19 = v6;
    *error = v6;
  }

  return self->_identity;
}

- (id)executeRequest
{
  v32 = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (state > 0)
  {
    createCertificate = 0;
    goto LABEL_3;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__AcmeCertRequest_executeRequest__block_invoke;
  block[3] = &unk_1E70E4300;
  block[4] = self;
  dispatch_sync(queue, block);
  createKeyPair = [(AcmeCertRequest *)self createKeyPair];
  if (createKeyPair || ([(AcmeCertRequest *)self createCSR], (createKeyPair = objc_claimAutoreleasedReturnValue()) != 0))
  {
    createCertificate = createKeyPair;
    goto LABEL_12;
  }

  v18 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"acmeDirectory"];
  absoluteString = [v18 absoluteString];
  nextMessageURL = self->_nextMessageURL;
  self->_nextMessageURL = absoluteString;

  if (self->_nextMessageURL)
  {
    createCertificate = 0;
    v21 = 1;
  }

  else
  {
    v22 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"acmeServerURL"];
    absoluteString2 = [v22 absoluteString];
    v24 = self->_nextMessageURL;
    self->_nextMessageURL = absoluteString2;

    v25 = self->_nextMessageURL;
    self->_state = 1;
    if (v25)
    {
      createCertificate = 0;
      goto LABEL_34;
    }

    createCertificate = [(AcmeCertRequest *)self createCertificate];
    v21 = 10;
  }

  self->_state = v21;
LABEL_34:
  state = self->_state;
LABEL_3:
  if (state > 9)
  {
LABEL_12:
    v6 = 0;
    goto LABEL_26;
  }

  v5 = *MEMORY[0x1E695E4D0];

  v6 = 0;
  while (1)
  {

    acmeRequest = [(AcmeCertRequest *)self acmeRequest];
    v26 = 0;
    createCertificate = [(AcmeCertRequest *)self sendRequestToXPCService:acmeRequest response:&v26];
    v6 = v26;

    if (createCertificate)
    {
      break;
    }

    v8 = [(AcmeCertRequest *)self processReply:v6];
    if (v8)
    {
      createCertificate = v8;
      break;
    }

    if (self->_state >= 10)
    {
      createCertificate = 0;
      goto LABEL_26;
    }
  }

  v11 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_state;
    *buf = 134218242;
    v29 = v12;
    v30 = 2112;
    v31 = createCertificate;
    _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "ACME request flow failed at step %lld: %@", buf, 0x16u);
  }

  v13 = [(NSDictionary *)self->_parameters objectForKey:@"acmeLocalIssuer"];
  v14 = v13;
  if (v13)
  {
    CFRetain(v13);
    if (!self->_permitLocalIssuer)
    {
      v15 = CFGetTypeID(v14);
      if (v15 != CFBooleanGetTypeID() || !v5 || !CFEqual(v14, v5))
      {
        goto LABEL_24;
      }
    }
  }

  else if (!self->_permitLocalIssuer)
  {
    goto LABEL_25;
  }

  createCertificate2 = [(AcmeCertRequest *)self createCertificate];

  createCertificate = createCertificate2;
  if (v14)
  {
LABEL_24:
    CFRelease(v14);
  }

LABEL_25:
  self->_state = 10;
LABEL_26:

  return createCertificate;
}

void __33__AcmeCertRequest_executeRequest__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 264);
  if (v3)
  {
    *(v2 + 264) = 0;
    CFRelease(v3);
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 272);
  if (v4)
  {
    *(v2 + 272) = 0;
    CFRelease(v4);
  }

  v10 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v5 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v10 setLocale:v5];

  [v10 setDateFormat:@"yyyy-MM-dd-HH-mm-ss-SSSS"];
  v6 = [MEMORY[0x1E695DF00] now];
  v7 = [v10 stringFromDate:v6];
  v8 = *(a1 + 32);
  v9 = *(v8 + 136);
  *(v8 + 136) = v7;

  *(*(a1 + 32) + 8) = [*(a1 + 32) valueForBooleanDefault:@"LogAcmeCSR"];
  *(*(a1 + 32) + 9) = [*(a1 + 32) valueForBooleanDefault:@"PermitLocalIssuer"];
  *(*(a1 + 32) + 10) = [*(a1 + 32) valueForBooleanDefault:@"RequireAttestation"];
}

- (BOOL)valueForBooleanDefault:(id)default
{
  v3 = CFPreferencesCopyValue(default, @"com.apple.security", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  v6 = v5 == CFBooleanGetTypeID() && CFBooleanGetValue(v4) != 0;
  CFRelease(v4);
  return v6;
}

- (id)processReply:(id)reply
{
  v110[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v5 = replyCopy;
  state = self->_state;
  if (state > 5)
  {
    if (state > 7)
    {
      if (state != 8)
      {
        if (state != 9)
        {
          if (state == 10)
          {
            v17 = 0;
            v18 = 0;
            goto LABEL_77;
          }

          goto LABEL_47;
        }

        v22 = [replyCopy objectForKey:@"certificate"];
        NSLog(&cfstr_GotCertificate.isa, v22);
        v57 = SecCertificateCreateWithPEM(v56, v22);
        self->_certificate = v57;
        if (v57)
        {
          v17 = 0;
        }

        else
        {
          v79 = MEMORY[0x1E696ABC0];
          v80 = *MEMORY[0x1E696A768];
          v17 = @"failed to obtain certificate";
          v93 = *MEMORY[0x1E696A578];
          v94 = @"failed to obtain certificate";
          v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
          v18 = [v79 errorWithDomain:v80 code:-67673 userInfo:v81];

          if (v18)
          {
            goto LABEL_76;
          }
        }

        nextMessageURL = self->_nextMessageURL;
        self->_nextMessageURL = 0;

        v18 = 0;
        v59 = 10;
LABEL_75:
        self->_state = v59;
        goto LABEL_76;
      }

      v38 = [replyCopy objectForKey:@"certificate"];
      certificateURL = self->_certificateURL;
      self->_certificateURL = v38;

      v22 = [v5 objectForKey:@"status"];
      v40 = [(__CFData *)v22 isEqualToString:@"valid"];
      v41 = self->_certificateURL;
      if (v41 && (v40 & 1) != 0)
      {
        v17 = 0;
LABEL_57:
        objc_storeStrong(&self->_nextMessageURL, v41);
        v18 = 0;
        v59 = 9;
        goto LABEL_75;
      }

      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"order status is %@, not yet valid", v22];
      v70 = MEMORY[0x1E696ABC0];
      v71 = *MEMORY[0x1E696A768];
      v95 = *MEMORY[0x1E696A578];
      v96 = v17;
      v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
      v18 = [v70 errorWithDomain:v71 code:-67673 userInfo:v72];

      if (!v18)
      {
        v41 = self->_certificateURL;
        goto LABEL_57;
      }

LABEL_76:

      goto LABEL_77;
    }

    if (state == 6)
    {
      v22 = [replyCopy objectForKey:@"status"];
      if ([(__CFData *)v22 isEqualToString:@"invalid"])
      {
        v33 = MEMORY[0x1E696ABC0];
        v34 = *MEMORY[0x1E696A768];
        v17 = @"failed to successfully respond to challenge";
        v99 = *MEMORY[0x1E696A578];
        v100 = @"failed to successfully respond to challenge";
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
        v18 = [v33 errorWithDomain:v34 code:-67673 userInfo:v35];

        if (v18)
        {
          goto LABEL_76;
        }
      }

      else if (([(__CFData *)v22 isEqualToString:@"valid"]& 1) != 0)
      {
        v17 = 0;
      }

      else
      {
        v18 = [(AcmeCertRequest *)self pollForStatus:self->_orderURL until:@"ready"];
        v17 = 0;
        if (v18)
        {
          goto LABEL_76;
        }
      }

      objc_storeStrong(&self->_nextMessageURL, self->_finalizeOrderURL);
      v18 = 0;
      v59 = 7;
      goto LABEL_75;
    }

    v22 = [replyCopy objectForKey:@"status"];
    if ([(__CFData *)v22 isEqualToString:@"invalid"])
    {
      v23 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A768];
      v17 = @"failed to finalize order";
      v97 = *MEMORY[0x1E696A578];
      v98 = @"failed to finalize order";
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
      v18 = [v23 errorWithDomain:v24 code:-67673 userInfo:v25];

      if (v18)
      {
        goto LABEL_76;
      }
    }

    else if (([(__CFData *)v22 isEqualToString:@"valid"]& 1) != 0)
    {
      v17 = 0;
    }

    else
    {
      v18 = [(AcmeCertRequest *)self pollForStatus:self->_orderURL until:@"valid"];
      v17 = 0;
      if (v18)
      {
        goto LABEL_76;
      }
    }

    objc_storeStrong(&self->_nextMessageURL, self->_orderURL);
    v18 = 0;
    v59 = 8;
    goto LABEL_75;
  }

  if (state <= 2)
  {
    if (state == 1)
    {
      v26 = [replyCopy objectForKey:@"newAccount"];
      acmeNewAccountURL = self->_acmeNewAccountURL;
      self->_acmeNewAccountURL = v26;

      v28 = [v5 objectForKey:@"newNonce"];
      acmeNewNonceURL = self->_acmeNewNonceURL;
      self->_acmeNewNonceURL = v28;

      v30 = [v5 objectForKey:@"newOrder"];
      acmeNewOrderURL = self->_acmeNewOrderURL;
      self->_acmeNewOrderURL = v30;

      if (self->_acmeNewAccountURL)
      {
        v32 = self->_acmeNewNonceURL;
        if (v32)
        {
          if (self->_acmeNewOrderURL)
          {
            objc_storeStrong(&self->_nextMessageURL, v32);
            v17 = 0;
            v18 = 0;
            v21 = 2;
            goto LABEL_29;
          }
        }
      }

      v65 = MEMORY[0x1E696ABC0];
      v66 = *MEMORY[0x1E696A768];
      v17 = @"failed to get directory info";
      v109 = *MEMORY[0x1E696A578];
      v110[0] = @"failed to get directory info";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:&v109 count:1];
      v64 = -67683;
      v62 = v65;
      v63 = v66;
      goto LABEL_59;
    }

    if (state == 2)
    {
      v19 = [replyCopy objectForKey:@"Replay-Nonce"];
      nonce = self->_nonce;
      self->_nonce = v19;

      if (self->_nonce)
      {
        objc_storeStrong(&self->_nextMessageURL, self->_acmeNewAccountURL);
        v17 = 0;
        v18 = 0;
        v21 = 3;
LABEL_29:
        self->_state = v21;
        goto LABEL_77;
      }

      v73 = MEMORY[0x1E696ABC0];
      v74 = *MEMORY[0x1E696A768];
      v17 = @"failed to get initial nonce";
      v107 = *MEMORY[0x1E696A578];
      v108 = @"failed to get initial nonce";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
      v62 = v73;
      v63 = v74;
      v64 = -67673;
      goto LABEL_59;
    }

LABEL_47:
    v60 = MEMORY[0x1E696ABC0];
    v61 = *MEMORY[0x1E696A768];
    v17 = @"unknown or uninitialized ACME state";
    v91 = *MEMORY[0x1E696A578];
    v92 = @"unknown or uninitialized ACME state";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
    v62 = v60;
    v63 = v61;
    v64 = -909;
LABEL_59:
    v18 = [v62 errorWithDomain:v63 code:v64 userInfo:v22];
    goto LABEL_76;
  }

  if (state == 3)
  {
    v22 = [replyCopy objectForKey:@"orders"];
    v36 = [v5 objectForKey:@"status"];
    v37 = [v36 isEqualToString:@"valid"];
    objc_storeStrong(&self->_account, self->_location);
    if (v37 && v22)
    {
      objc_storeStrong(&self->_nextMessageURL, self->_acmeNewOrderURL);
      v17 = 0;
      v18 = 0;
      self->_state = 4;
    }

    else
    {
      v67 = MEMORY[0x1E696ABC0];
      v68 = *MEMORY[0x1E696A768];
      v105 = *MEMORY[0x1E696A578];
      v17 = @"failed to establish account";
      v106 = @"failed to establish account";
      v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
      v18 = [v67 errorWithDomain:v68 code:-67673 userInfo:v69];
    }

    goto LABEL_76;
  }

  if (state == 4)
  {
    v90 = [replyCopy objectForKey:@"status"];
    v88 = [v90 isEqualToString:@"pending"];
    v42 = [v5 objectForKey:@"authorizations"];
    authorizations = self->_authorizations;
    self->_authorizations = v42;

    v44 = [(NSArray *)self->_authorizations objectAtIndex:0];
    authorizationURL = self->_authorizationURL;
    self->_authorizationURL = v44;

    v46 = [v5 objectForKey:@"finalize"];
    finalizeOrderURL = self->_finalizeOrderURL;
    self->_finalizeOrderURL = v46;

    objc_storeStrong(&self->_orderURL, self->_location);
    v48 = [v5 objectForKey:@"identifiers"];
    v49 = [v48 count];
    if (v49)
    {
      v50 = v49;
      v51 = 0;
      for (i = 0; i != v50; v51 = i >= v50)
      {
        v53 = [v48 objectAtIndex:i];
        v54 = [v53 objectForKey:@"type"];
        v55 = [v54 isEqualToString:@"permanent-identifier"];

        if (v55)
        {
          break;
        }

        ++i;
      }
    }

    else
    {
      v51 = 1;
    }

    v75 = self->_authorizationURL;
    if (v75 && !v51 && self->_finalizeOrderURL != 0 && (v88 & 1) != 0)
    {
      objc_storeStrong(&self->_nextMessageURL, v75);
      v17 = 0;
      v18 = 0;
      self->_state = 5;
    }

    else
    {
      if (v51)
      {
        v17 = @"'permanent-identifier' type not supported by this server";
      }

      else
      {
        v17 = @"failed to submit order";
      }

      v76 = MEMORY[0x1E696ABC0];
      v77 = *MEMORY[0x1E696A768];
      v103 = *MEMORY[0x1E696A578];
      v104 = v17;
      v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
      v18 = [v76 errorWithDomain:v77 code:-67673 userInfo:v78];
    }
  }

  else
  {
    v89 = [replyCopy objectForKey:@"status"];
    v87 = [v89 isEqualToString:@"pending"];
    v7 = [v5 objectForKey:@"challenges"];
    v8 = [v7 count];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      while (1)
      {
        v11 = [v7 objectAtIndex:v10];
        v12 = [v11 objectForKey:@"type"];
        v13 = [v11 objectForKey:@"url"];
        challengeURL = self->_challengeURL;
        self->_challengeURL = v13;

        v15 = [v11 objectForKey:@"token"];
        token = self->_token;
        self->_token = v15;

        if ([v12 isEqualToString:@"device-attest-01"])
        {
          if (self->_challengeURL && self->_token)
          {
            break;
          }
        }

        if (v9 == ++v10)
        {
          goto LABEL_81;
        }
      }
    }

LABEL_81:
    v83 = self->_challengeURL;
    if (v83 && ((self->_token != 0) & v87) != 0)
    {
      objc_storeStrong(&self->_nextMessageURL, v83);
      v17 = 0;
      v18 = 0;
      self->_state = 6;
    }

    else
    {
      v84 = MEMORY[0x1E696ABC0];
      v85 = *MEMORY[0x1E696A768];
      v17 = @"failed to request authorization";
      v101 = *MEMORY[0x1E696A578];
      v102 = @"failed to request authorization";
      v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
      v18 = [v84 errorWithDomain:v85 code:-67673 userInfo:v86];
    }
  }

LABEL_77:

  return v18;
}

- (id)acmeRequest
{
  v65[1] = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  state = self->_state;
  v5 = @"{}";
  if (state <= 5)
  {
    switch(state)
    {
      case 3:
        if (!self->_encoder)
        {
          v20 = objc_alloc_init(SecJWSEncoder);
          encoder = self->_encoder;
          self->_encoder = v20;
        }

        [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"termsOfServiceAgreed"];
        v22 = self->_encoder;
        nonce = self->_nonce;
        acmeNewAccountURL = self->_acmeNewAccountURL;
        v60 = 0;
        v5 = [(SecJWSEncoder *)v22 encodedJWSWithPayload:dictionary kid:0 nonce:nonce url:acmeNewAccountURL error:&v60];
        v10 = v60;
        break;
      case 4:
        v26 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"clientIdentifier"];
        if (v26)
        {
          v27 = v26;
        }

        else
        {
          v27 = @"TEST";
        }

        v63[0] = @"type";
        v63[1] = @"value";
        v64[0] = @"permanent-identifier";
        v64[1] = v27;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];
        v65[0] = v28;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:1];
        [dictionary setObject:v29 forKeyedSubscript:@"identifiers"];

        v30 = self->_encoder;
        account = self->_account;
        v32 = self->_nonce;
        nextMessageURL = self->_nextMessageURL;
        v59 = 0;
        v5 = [(SecJWSEncoder *)v30 encodedJWSWithPayload:dictionary kid:account nonce:v32 url:nextMessageURL error:&v59];
        v25 = v59;

        goto LABEL_39;
      case 5:
        v6 = self->_encoder;
        v7 = self->_account;
        v8 = self->_nonce;
        v9 = self->_nextMessageURL;
        v58 = 0;
        v5 = [(SecJWSEncoder *)v6 encodedJWSWithPayload:0 kid:v7 nonce:v8 url:v9 error:&v58];
        v10 = v58;
        break;
      default:
        goto LABEL_40;
    }

    goto LABEL_14;
  }

  if ((state - 8) >= 2)
  {
    if (state != 6)
    {
      if (state != 7)
      {
        goto LABEL_40;
      }

      v11 = [(SecJWSEncoder *)self->_encoder base64URLEncodedStringRepresentationWithData:self->_csr];
      [dictionary setObject:v11 forKeyedSubscript:@"csr"];

      v12 = self->_encoder;
      v13 = self->_account;
      v14 = self->_nonce;
      v15 = self->_nextMessageURL;
      v54 = 0;
      v5 = [(SecJWSEncoder *)v12 encodedJWSWithPayload:dictionary kid:v13 nonce:v14 url:v15 error:&v54];
      v10 = v54;
      goto LABEL_14;
    }

    if (!self->_attestationOids)
    {
      v35 = 0;
LABEL_38:
      v47 = self->_encoder;
      v48 = self->_account;
      v49 = self->_nonce;
      v50 = self->_nextMessageURL;
      v55 = v35;
      v5 = [(SecJWSEncoder *)v47 encodedJWSWithPayload:dictionary kid:v48 nonce:v49 url:v50 error:&v55];
      v25 = v55;

      goto LABEL_39;
    }

    if (self->_attestationCRKey && (v57 = 0, [(AcmeCertRequest *)self hardwareAttestationWithError:&v57], v34 = objc_claimAutoreleasedReturnValue(), v35 = v57, attestation = self->_attestation, self->_attestation = v34, attestation, v35) || (v56 = 0, [(AcmeCertRequest *)self requestAttestationChainWithError:&v56], v37 = objc_claimAutoreleasedReturnValue(), v35 = v56, attestationChain = self->_attestationChain, self->_attestationChain = v37, attestationChain, v35))
    {
      v39 = secLogObjForScope("acme");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v62 = v35;
        _os_log_impl(&dword_1887D2000, v39, OS_LOG_TYPE_DEFAULT, "attestation request failed with error %@", buf, 0xCu);
      }

      localizedDescription = [v35 localizedDescription];
      [dictionary setObject:localizedDescription forKeyedSubscript:@"error"];

      requireAttestation = self->_requireAttestation;
      v42 = secLogObjForScope("acme");
      v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
      if (requireAttestation)
      {
        if (v43)
        {
          *buf = 0;
          _os_log_impl(&dword_1887D2000, v42, OS_LOG_TYPE_DEFAULT, "attestation explicitly required, cannot continue with ACME", buf, 2u);
        }

        goto LABEL_35;
      }

      if (v43)
      {
        *buf = 0;
        _os_log_impl(&dword_1887D2000, v42, OS_LOG_TYPE_DEFAULT, "attestation not explicitly required, ignoring error", buf, 2u);
      }

      v42 = v35;
    }

    else
    {
      v42 = secLogObjForScope("acme");
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v44 = [(NSArray *)self->_attestationChain count];
        *buf = 134217984;
        v62 = v44;
        _os_log_impl(&dword_1887D2000, v42, OS_LOG_TYPE_DEFAULT, "attestation request succeeded; got %llu certificates", buf, 0xCu);
      }
    }

    v35 = 0;
LABEL_35:

    v45 = [(AcmeCertRequest *)self attestationObjectWithCertificates:self->_attestationChain];
    if (v45)
    {
      v46 = [(SecJWSEncoder *)self->_encoder base64URLEncodedStringRepresentationWithData:v45];
      [dictionary setObject:v46 forKeyedSubscript:@"attObj"];
    }

    goto LABEL_38;
  }

  v16 = self->_encoder;
  v17 = self->_account;
  v18 = self->_nonce;
  v19 = self->_nextMessageURL;
  v53 = 0;
  v5 = [(SecJWSEncoder *)v16 encodedJWSWithPayload:0 kid:v17 nonce:v18 url:v19 error:&v53];
  v10 = v53;
LABEL_14:
  v25 = v10;
LABEL_39:

LABEL_40:
  v51 = [(__CFString *)v5 dataUsingEncoding:4];

  return v51;
}

- (id)pollForStatus:(id)status until:(id)until
{
  v4 = dispatch_semaphore_create(0);
  v5 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v4, v5);

  return 0;
}

- (id)sendRequestToXPCService:(id)service response:(id *)response
{
  v57 = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AcmeCertRequest_sendRequestToXPCService_response___block_invoke;
  block[3] = &unk_1E70E4300;
  block[4] = self;
  serviceCopy = service;
  dispatch_sync(queue, block);
  state = self->_state;
  v9 = "POST";
  if (state == 1)
  {
    v9 = "GET";
  }

  if (state == 2)
  {
    v10 = "HEAD";
  }

  else
  {
    v10 = v9;
  }

  v11 = xpc_string_create(v10);
  uTF8String = [(NSString *)self->_nextMessageURL UTF8String];
  if (!uTF8String)
  {
    uTF8String = &unk_188967DD7;
  }

  v13 = xpc_string_create(uTF8String);
  v14 = self->_state;
  bytes = [serviceCopy bytes];
  v16 = [serviceCopy length];

  v17 = xpc_data_create(bytes, v16);
  v18 = xpc_create_with_format("{operation: AcmeRequest, state: %int64, url: %value, method: %value, request: %value}", v14, v13, v11, v17);
  v19 = xpc_connection_send_message_with_reply_sync(self->_connection, v18);
  v20 = MEMORY[0x18CFDC200]();
  if (v20 == MEMORY[0x1E69E9E98])
  {
    v22 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      string = xpc_dictionary_get_string(v19, *MEMORY[0x1E69E9E28]);
      *buf = 136315138;
      v56 = string;
      v23 = "message error: %s";
      goto LABEL_15;
    }

LABEL_16:
    v25 = 0;
    CFErrorWithXPCObject = 0;
    goto LABEL_17;
  }

  v21 = v20;
  if (v20 == MEMORY[0x1E69E9E68])
  {
    CFErrorWithXPCObject = 0;
    v25 = 0;
    v27 = 0;
    if (!response)
    {
      goto LABEL_23;
    }

LABEL_22:
    v28 = v25;
    *response = v25;
    v27 = v25;
    goto LABEL_23;
  }

  if (v20 != MEMORY[0x1E69E9E80])
  {
    v22 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v56 = v21;
      v23 = "unexpected message reply type %p";
LABEL_15:
      _os_log_impl(&dword_1887D2000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v31 = xpc_dictionary_get_value(v19, "AcmeReply");
  v22 = v31;
  if (v31)
  {
    length = xpc_data_get_length(v31);
  }

  else
  {
    length = 0;
  }

  v32 = xpc_dictionary_get_value(v19, "AcmeError");
  xint = xpc_dictionary_get_value(v19, "AcmeStatus");
  v33 = xpc_dictionary_get_value(v19, "AcmeNonce");
  v50 = xpc_dictionary_get_value(v19, "AcmeLocation");
  xstring = v33;
  if (v33)
  {
    string_ptr = xpc_string_get_string_ptr(v33);
    v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:string_ptr length:xpc_string_get_length(xstring) encoding:4];
    if ([v35 length])
    {
      objc_storeStrong(&self->_nonce, v35);
    }
  }

  if (v50)
  {
    v36 = xpc_string_get_string_ptr(v50);
    v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v36 length:xpc_string_get_length(v50) encoding:4];
    if ([v37 length])
    {
      objc_storeStrong(&self->_location, v37);
    }
  }

  if (v32)
  {
    CFErrorWithXPCObject = SecCreateCFErrorWithXPCObject(v32);
  }

  else
  {
    CFErrorWithXPCObject = 0;
  }

  if (xint)
  {
    value = xpc_int64_get_value(xint);
  }

  else
  {
    value = 0;
  }

  if ([(AcmeCertRequest *)self errorStatusWithHTTPErrorCode:value])
  {
    v25 = 0;
  }

  else
  {
    if (v22)
    {
      bytes_ptr = xpc_data_get_bytes_ptr(v22);
    }

    else
    {
      bytes_ptr = &unk_188967DD7;
    }

    v40 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes_ptr length:length];
    if (self->_state == 9)
    {
      v53 = @"certificate";
      v54 = v40;
      v41 = v40;
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      v43 = v41;
      v25 = v42;
    }

    else
    {
      v51 = CFErrorWithXPCObject;
      v45 = v40;
      v25 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v40 options:0 error:&v51];
      v47 = v51;

      if (v47)
      {
        v44 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v56 = v47;
          _os_log_impl(&dword_1887D2000, v44, OS_LOG_TYPE_DEFAULT, "error converting json to dictionary: %@", buf, 0xCu);
        }

        v43 = v45;
        CFErrorWithXPCObject = v47;
      }

      else
      {
        CFErrorWithXPCObject = 0;
        v43 = v45;
      }
    }
  }

LABEL_17:
  if (response)
  {
    goto LABEL_22;
  }

  if (v25)
  {
  }

  v27 = 0;
LABEL_23:

  v29 = CFErrorWithXPCObject;
  return CFErrorWithXPCObject;
}

void __52__AcmeCertRequest_sendRequestToXPCService_response___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 224))
  {
    v3 = dispatch_queue_create("com.apple.security.XPCAcmeService", 0);
    v4 = *(a1 + 32);
    v5 = *(v4 + 224);
    *(v4 + 224) = v3;

    v2 = *(a1 + 32);
  }

  if (!*(v2 + 232))
  {
    v6 = xpc_connection_create("com.apple.security.XPCAcmeService", *(v2 + 224));
    v7 = *(a1 + 32);
    v8 = *(v7 + 232);
    *(v7 + 232) = v6;

    xpc_connection_set_event_handler(*(*(a1 + 32) + 232), &__block_literal_global_186);
    v9 = *(*(a1 + 32) + 232);

    xpc_connection_resume(v9);
  }
}

void __52__AcmeCertRequest_sendRequestToXPCService_response___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = MEMORY[0x18CFDC200]();
  v4 = MEMORY[0x1E69E9E98];
  v5 = secLogObjForScope("SecError");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3 == v4)
  {
    if (v6)
    {
      string = xpc_dictionary_get_string(v2, *MEMORY[0x1E69E9E28]);
      v9 = 136315138;
      v10 = string;
      v7 = "connection error: %s";
      goto LABEL_6;
    }
  }

  else if (v6)
  {
    v9 = 134217984;
    v10 = v2;
    v7 = "unexpected connection event %p";
LABEL_6:
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, v7, &v9, 0xCu);
  }
}

- (int)errorStatusWithHTTPErrorCode:(int)code
{
  if (code > 399)
  {
    if ((code - 400) > 0x11)
    {
      goto LABEL_11;
    }

    if (((1 << (code + 112)) & 0x2021A) == 0)
    {
      if (code == 400)
      {
        return -67847;
      }

LABEL_11:
      if ((code - 500) <= 7 && ((1 << (code + 12)) & 0x89) != 0)
      {
        return -67585;
      }

      return code;
    }

    return -67585;
  }

  result = 0;
  if ((code - 200) >= 2 && code != 100)
  {
    if (code != 204)
    {
      return code;
    }

    return -67585;
  }

  return result;
}

- (id)attestationChainPEMRepresentation
{
  if (self->_attestationChain)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
    v4 = [(NSArray *)self->_attestationChain count];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NSArray *)self->_attestationChain objectAtIndex:i];
        if (v7)
        {
          v8 = SecCertificateCopyPEMRepresentation(v7);
          if (v8)
          {
            v9 = v8;
            [v3 appendString:v8];
            CFRelease(v9);
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)createCertificate
{
  v12[1] = *MEMORY[0x1E69E9840];
  SelfSignedCertificateWithError = SecGenerateSelfSignedCertificateWithError(self->_subject, self->_parameters, v2, self->_privateKey, 0);
  v5 = 0;
  self->_certificate = SelfSignedCertificateWithError;
  if (!SelfSignedCertificateWithError)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to create certificate (bad input values)"];
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A768];
    v11 = *MEMORY[0x1E696A578];
    v12[0] = v6;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v5 = [v7 errorWithDomain:v8 code:-67838 userInfo:v9];
  }

  return v5;
}

- (id)hardwareAttestationWithError:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0;
  attestation = self->_attestation;
  if (attestation)
  {
    self->_attestation = 0;
  }

  attestationCRKey = self->_attestationCRKey;
  if (attestationCRKey && (privateKey = self->_privateKey) != 0)
  {
    v8 = SecKeyCreateAttestation(attestationCRKey, privateKey, &v23);
    v9 = self->_attestation;
    self->_attestation = v8;

    v10 = v23;
    v11 = v23 != 0;
  }

  else
  {
    v12 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_attestationCRKey)
      {
        v13 = @"_privateKey";
      }

      else
      {
        v13 = @"_attestationCRKey";
      }

      *buf = 138412290;
      v27 = v13;
      _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, "missing %@ for attestation", buf, 0xCu);
    }

    v14 = [(NSDictionary *)self->_parameters objectForKey:@"acmeLocalIssuer"];
    v11 = 0;
    v10 = 0;
    if (!self->_permitLocalIssuer && v14)
    {
      v15 = CFGetTypeID(v14);
      if (v15 == CFBooleanGetTypeID() && *MEMORY[0x1E695E4D0])
      {
        CFEqual(v14, *MEMORY[0x1E695E4D0]);
      }

      v10 = 0;
      v11 = 0;
    }
  }

  if (!self->_attestation && !v11)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to create attestation"];
    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A768];
    v24 = *MEMORY[0x1E696A578];
    v25 = v16;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v20 = [v17 errorWithDomain:v18 code:-50 userInfo:v19];

    v23 = v20;
    v10 = v23;
  }

  if (error)
  {
    *error = v10;
  }

  else if (v10)
  {
    v23 = 0;
    CFRelease(v10);
  }

  v21 = self->_attestation;

  return v21;
}

- (id)attestationObjectWithCertificates:(id)certificates
{
  certificatesCopy = certificates;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(SecCBORArray);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [certificatesCopy count] == 2 && objc_msgSend(certificatesCopy, "count"))
  {
    v7 = 0;
    while (1)
    {
      v8 = [certificatesCopy objectAtIndexedSubscript:v7];
      if (v8)
      {
        v9 = v8;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v10 = CFGetTypeID(v9);
        if (v10 != SecCertificateGetTypeID())
        {
          goto LABEL_10;
        }

        v11 = CFGetAllocator(v9);
        v12 = CFDataCreate(v11, *(v9 + 16), *(v9 + 24));

        v9 = v12;
        if (v12)
        {
          break;
        }
      }

LABEL_11:
      if (++v7 >= [certificatesCopy count])
      {
        goto LABEL_12;
      }
    }

    v13 = [[SecCBORData alloc] initWith:v9];
    [(SecCBORArray *)v6 addObject:v13];

LABEL_10:
    goto LABEL_11;
  }

LABEL_12:
  v14 = objc_alloc_init(SecCBORMap);
  v15 = [[SecCBORString alloc] initWith:@"x5c"];
  [(SecCBORMap *)v14 setKey:v15 value:v6];

  v16 = objc_alloc_init(SecCBORMap);
  v17 = [[SecCBORString alloc] initWith:@"fmt"];
  v18 = [[SecCBORString alloc] initWith:@"apple"];
  [(SecCBORMap *)v16 setKey:v17 value:v18];

  v19 = [[SecCBORString alloc] initWith:@"attStmt"];
  [(SecCBORMap *)v16 setKey:v19 value:v14];

  v20 = objc_alloc_init(MEMORY[0x1E695DF88]);
  [(SecCBORMap *)v16 write:v20];
  v21 = [v20 copy];

  objc_autoreleasePoolPop(v5);
  if (v21 && self->_logAcmeCSR)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/AcmeAtt_%@", self->_timestamp];
    v23 = [(SecJWSEncoder *)self->_encoder base64URLEncodedStringRepresentationWithData:v21];
    v24 = [v23 dataUsingEncoding:4];

    [v24 writeToFile:v22 atomically:1];
  }

  return v21;
}

- (id)requestAttestationChainWithError:(id *)error
{
  v61 = *MEMORY[0x1E69E9840];
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__15916;
  v52 = __Block_byref_object_dispose__15917;
  v53 = 0;
  if (![(AcmeCertRequest *)self deviceAttestationSupported])
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-67849 userInfo:0];
    }

    v26 = v49[5];
    goto LABEL_58;
  }

  CFAbsoluteTimeGetCurrent();
  if (requestAttestationChainWithError__onceToken != -1)
  {
    dispatch_once(&requestAttestationChainWithError__onceToken, &__block_literal_global_143_15918);
  }

  v37 = [(NSString *)self->_token dataUsingEncoding:4];
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  [v4 setObject:&unk_1EFAAC7F0 forKeyedSubscript:@"Validity"];
  [v4 setObject:self->_attestationOids forKeyedSubscript:@"OIDSToInclude"];
  [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"UseXPC"];
  v36 = v4;
  if (v37)
  {
    md = 0u;
    v57 = 0u;
    v5 = v37;
    CC_SHA256([v37 bytes], objc_msgSend(v37, "length"), &md);
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&md length:32];
    [v4 setObject:v6 forKeyedSubscript:@"nonce"];
  }

  attestation = self->_attestation;
  if (attestation)
  {
    [v4 setObject:attestation forKeyedSubscript:@"ClientAttestationData"];
  }

  attestationCRKey = self->_attestationCRKey;
  if (!attestationCRKey)
  {
    goto LABEL_13;
  }

  v9 = SecKeyCopyPublicKey(attestationCRKey);
  v10 = v9;
  if (!v9)
  {
    v27 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(md) = 0;
      _os_log_impl(&dword_1887D2000, v27, OS_LOG_TYPE_DEFAULT, "Failed to obtain public key for attestation key, skipping attestation", &md, 2u);
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-67811 userInfo:0];
      *error = v26 = 0;
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  *&md = 0;
  v11 = SecKeyCopyExternalRepresentation(v9, &md);
  CFRelease(v10);
  if (md || !v11)
  {
    v30 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v30, OS_LOG_TYPE_DEFAULT, "Failed to copy public key data for co-residency, skipping attestation", buf, 2u);
    }

    v31 = md;
    if (error)
    {
      *error = md;
    }

    else if (md)
    {
      *&md = 0;
      CFRelease(v31);
    }

LABEL_56:
    v26 = 0;
    goto LABEL_57;
  }

  [v4 setObject:v11 forKeyedSubscript:@"ClientAttestationPublicKey"];

LABEL_13:
  if (self->_attestationCRChain)
  {
    data = [MEMORY[0x1E695DF88] data];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v13 = self->_attestationCRChain;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v44 objects:v60 count:16];
    if (v14)
    {
      v15 = *v45;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v45 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = SecCertificateCopyData(*(*(&v44 + 1) + 8 * i));
          [data appendData:v17];
        }

        v14 = [(NSArray *)v13 countByEnumeratingWithState:&v44 objects:v60 count:16];
      }

      while (v14);
    }

    [v36 setObject:data forKeyedSubscript:@"ClientDirectAttestationCertificate"];
    v4 = v36;
  }

  v39 = [v4 copy];
  v18 = dispatch_semaphore_create(0);
  *&md = 0;
  *(&md + 1) = &md;
  *&v57 = 0x3032000000;
  *(&v57 + 1) = __Block_byref_object_copy__15916;
  v58 = __Block_byref_object_dispose__15917;
  v59 = 0;
  v19 = MEMORY[0x1E69E9820];
  for (j = 2; j != -1; --j)
  {
    v21 = requestAttestationChainWithError__soft_AppAttest_DeviceAttestation_AttestKey;
    privateKey = self->_privateKey;
    v40[0] = v19;
    v40[1] = 3221225472;
    v40[2] = __52__AcmeCertRequest_requestAttestationChainWithError___block_invoke_148;
    v40[3] = &unk_1E70E42B8;
    p_md = &md;
    v43 = &v48;
    v23 = v18;
    v41 = v23;
    v21(privateKey, v39, v40);
    dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
    if (v49[5])
    {
      v28 = secLogObjForScope("acme");
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
LABEL_48:

        v25 = v41;
        goto LABEL_49;
      }

      *buf = 0;
      v29 = "Successfully retrieved attestation certificate";
LABEL_47:
      _os_log_impl(&dword_1887D2000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 2u);
      goto LABEL_48;
    }

    if ([*(*(&md + 1) + 40) code] != -67671)
    {
      v32 = secLogObjForScope("acme");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        code = [*(*(&md + 1) + 40) code];
        *buf = 134217984;
        v55 = code;
        _os_log_impl(&dword_1887D2000, v32, OS_LOG_TYPE_DEFAULT, "Attempt to fetch attestation certificate failed (error %lld)", buf, 0xCu);
      }

      v28 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      *buf = 0;
      v29 = "Failed to fetch attestation certificate, not retrying";
      goto LABEL_47;
    }

    v24 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v55) = j;
      _os_log_impl(&dword_1887D2000, v24, OS_LOG_TYPE_DEFAULT, "Failed to fetch attestation certificate, %u retries left", buf, 8u);
    }
  }

  v25 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "Out of retries retrieving attestation certificate", buf, 2u);
  }

LABEL_49:

  v34 = *(*(&md + 1) + 40);
  if (error)
  {
    *error = v34;
  }

  else
  {
    *(*(&md + 1) + 40) = 0;
  }

  v26 = v49[5];
  _Block_object_dispose(&md, 8);

LABEL_57:
LABEL_58:
  _Block_object_dispose(&v48, 8);

  return v26;
}

void __52__AcmeCertRequest_requestAttestationChainWithError___block_invoke_148(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  if (v5)
  {
    v8 = *(*(a1 + 40) + 8);
    v9 = v5;
LABEL_3:
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
    goto LABEL_8;
  }

  if (v13 && [v13 count] == 2)
  {
    v8 = *(*(a1 + 48) + 8);
    v9 = v13;
    goto LABEL_3;
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-67671 userInfo:0];
  v12 = *(*(a1 + 40) + 8);
  v10 = *(v12 + 40);
  *(v12 + 40) = v11;
LABEL_8:

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)deviceAttestationSupported
{
  if (deviceAttestationSupported_onceToken != -1)
  {
    dispatch_once(&deviceAttestationSupported_onceToken, &__block_literal_global_15932);
  }

  return deviceAttestationSupported_appAttestSupported;
}

uint64_t __45__AcmeCertRequest_deviceAttestationSupported__block_invoke()
{
  v1 = 0;
  _getAppAttestInternalSymbol(&v1, "AppAttest_DeviceAttestation_IsSupported");
  result = v1();
  deviceAttestationSupported_appAttestSupported = result;
  return result;
}

- (id)createCSR
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15916;
  v11 = __Block_byref_object_dispose__15917;
  v12 = 0;
  queue = [(AcmeCertRequest *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__AcmeCertRequest_createCSR__block_invoke;
  v6[3] = &unk_1E70E41D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __28__AcmeCertRequest_createCSR__block_invoke(uint64_t a1)
{
  CertificateRequest = SecGenerateCertificateRequest(*(*(a1 + 32) + 32), *(*(a1 + 32) + 40), *(*(a1 + 32) + 248), *(*(a1 + 32) + 256));
  v3 = *(a1 + 32);
  v10 = CertificateRequest;
  if (*(v3 + 8) == 1)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/AcmeCsr_%@", *(v3 + 136)];
    [(__CFData *)v10 writeToFile:v4 atomically:1];

    v5 = v10;
    v3 = *(a1 + 32);
  }

  else
  {
    v5 = CertificateRequest;
  }

  objc_storeStrong((v3 + 96), v5);
  v6 = v10;
  if (!v10)
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-67838 userInfo:0];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v6 = 0;
  }
}

- (id)createKeyPair
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = [(AcmeCertRequest *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__AcmeCertRequest_createKeyPair__block_invoke;
  v6[3] = &unk_1E70E41D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __32__AcmeCertRequest_createKeyPair__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 256);
  if (v3)
  {
    *(v2 + 256) = 0;
    CFRelease(v3);
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 248);
  if (v4)
  {
    *(v2 + 248) = 0;
    CFRelease(v4);
    v2 = *(a1 + 32);
  }

  *(*(a1 + 32) + 256) = SecKeyCreateRandomKey(*(v2 + 48), (*(*(a1 + 40) + 8) + 24));
  v5 = *(*(a1 + 32) + 256);
  if (!v5 || (*(*(a1 + 32) + 248) = SecKeyCopyPublicKey(v5), v6 = *(a1 + 32), !*(v6 + 256)) || !*(v6 + 248))
  {
    if (!*(*(*(a1 + 40) + 8) + 24))
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-26275 userInfo:0];
      *(*(*(a1 + 40) + 8) + 24) = v7;
    }
  }

  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 256);
    if (v9)
    {
      *(v8 + 256) = 0;
      CFRelease(v9);
      v8 = *(a1 + 32);
    }

    v10 = *(v8 + 248);
    if (v10)
    {
      *(v8 + 248) = 0;

      CFRelease(v10);
    }
  }
}

- (id)sanitizeParameters
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__15916;
  v14 = __Block_byref_object_dispose__15917;
  v15 = 0;
  queue = [(AcmeCertRequest *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__AcmeCertRequest_sanitizeParameters__block_invoke;
  v9[3] = &unk_1E70E41D0;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(queue, v9);

  v4 = v11[5];
  if (!v4)
  {
    sanitizeSubject = [(AcmeCertRequest *)self sanitizeSubject];
    v6 = v11[5];
    v11[5] = sanitizeSubject;

    v4 = v11[5];
  }

  v7 = v4;
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __37__AcmeCertRequest_sanitizeParameters__block_invoke(uint64_t a1)
{
  v88[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
  v4 = [*(a1 + 32) parameters];
  [v2 setDictionary:v4];

  v5 = [v2 objectForKey:@"hardwareBound"];
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 != CFBooleanGetTypeID())
    {
      v11 = "kSecUseHardwareBoundKey";
      goto LABEL_85;
    }

    if (*MEMORY[0x1E695E4D0] && CFEqual(v6, *MEMORY[0x1E695E4D0]))
    {
      [v3 setObject:@"com.apple.setoken" forKeyedSubscript:@"tkid"];
    }
  }

  v8 = [v2 objectForKey:@"type"];
  if (v8)
  {
    v9 = v8;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v11 = 0;
    }

    else
    {
      v11 = "kSecAttrKeyType";
    }

    [v3 setObject:v9 forKeyedSubscript:@"type"];

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_85;
    }
  }

  else
  {
    v12 = *MEMORY[0x1E695E4D0];
    if (v6 && v12)
    {
      v13 = CFEqual(v6, v12) != 0;
    }

    else
    {
      v13 = v6 == v12;
    }

    if (v13)
    {
      v14 = @"73";
    }

    else
    {
      v14 = @"42";
    }

    v15 = v14;
    [v3 setObject:v15 forKeyedSubscript:@"type"];
  }

  v16 = [v2 objectForKey:@"bsiz"];
  if (v16)
  {
    v17 = v16;
    objc_opt_class();
    v18 = objc_opt_isKindOfClass();
    if (v18)
    {
      v11 = 0;
    }

    else
    {
      v11 = "kSecAttrKeySizeInBits";
    }

    [v3 setObject:v17 forKeyedSubscript:@"bsiz"];

    if ((v18 & 1) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_35;
  }

  v19 = [v2 objectForKey:@"type"];
  v20 = *MEMORY[0x1E695E4D0];
  if (!v6 || !v20)
  {
    if (v6 == v20)
    {
      goto LABEL_30;
    }

LABEL_32:
    v22 = [v19 isEqualToString:@"42"];
    v21 = &unk_1EFAAC7A8;
    if (v22)
    {
      v21 = &unk_1EFAAC7C0;
    }

    goto LABEL_34;
  }

  if (!CFEqual(v6, v20))
  {
    goto LABEL_32;
  }

LABEL_30:
  v21 = &unk_1EFAAC7A8;
LABEL_34:
  v23 = v21;

  [v3 setObject:v23 forKeyedSubscript:@"bsiz"];
LABEL_35:
  v24 = [v2 objectForKey:@"private"];
  if (v24)
  {
    v25 = v24;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [v3 setObject:v25 forKeyedSubscript:@"private"];

      v11 = "kSecPrivateKeyAttrs";
      goto LABEL_85;
    }

    if (!v6 || (v26 = CFGetTypeID(v6), v26 != CFBooleanGetTypeID()))
    {
      [v3 setObject:v25 forKeyedSubscript:@"private"];
      v27 = [v25 objectForKey:@"labl"];
      if (v27)
      {
        [v3 setObject:v27 forKeyedSubscript:@"labl"];
      }

      v28 = [v25 objectForKey:@"atag"];
      if (v28)
      {
        [v3 setObject:v28 forKeyedSubscript:@"atag"];
      }

      v29 = [v25 objectForKey:@"perm"];
      if (v29)
      {
        [v3 setObject:v29 forKeyedSubscript:@"perm"];
      }

      v30 = [v25 objectForKey:@"extr"];
      if (v30)
      {
        [v3 setObject:v30 forKeyedSubscript:@"extr"];
      }

      v31 = [v25 objectForKey:@"sens"];
      if (v31)
      {
        [v3 setObject:v31 forKeyedSubscript:@"sens"];
      }

      v32 = [v25 objectForKey:@"nleg"];
      if (v32)
      {
        [v3 setObject:v32 forKeyedSubscript:@"nleg"];
      }

      v33 = [v25 objectForKey:@"accc"];
      if (v33)
      {
        [v3 setObject:v33 forKeyedSubscript:@"accc"];
      }
    }

    [v3 setObject:v25 forKeyedSubscript:@"private"];
  }

  v34 = [v2 objectForKey:@"labl"];
  if (v34)
  {
    objc_opt_class();
    v35 = objc_opt_isKindOfClass();
    [v3 setObject:v34 forKeyedSubscript:@"labl"];
    if ((v35 & 1) == 0)
    {

      v11 = "kSecAttrLabel";
      goto LABEL_85;
    }
  }

  v36 = [v2 objectForKey:@"atag"];
  if (v36)
  {
    objc_opt_class();
    v37 = objc_opt_isKindOfClass();
    [v3 setObject:v36 forKeyedSubscript:@"atag"];
    if ((v37 & 1) == 0)
    {

      v11 = "kSecAttrApplicationTag";
      goto LABEL_85;
    }
  }

  v38 = [v2 objectForKey:@"perm"];
  if (v38)
  {
    v39 = v38;
    v40 = CFGetTypeID(v38);
    TypeID = CFBooleanGetTypeID();
    [v3 setObject:v39 forKeyedSubscript:@"perm"];
    if (v40 != TypeID)
    {
      v11 = "kSecAttrIsPermanent";
      goto LABEL_85;
    }
  }

  v42 = [v2 objectForKey:@"extr"];
  if (v42)
  {
    v43 = v42;
    v44 = CFGetTypeID(v42);
    v45 = CFBooleanGetTypeID();
    [v3 setObject:v43 forKeyedSubscript:@"extr"];
    if (v44 != v45)
    {
      v11 = "kSecAttrIsExtractable";
      goto LABEL_85;
    }
  }

  v46 = [v2 objectForKey:@"sens"];
  if (v46)
  {
    v47 = v46;
    v48 = CFGetTypeID(v46);
    v49 = CFBooleanGetTypeID();
    [v3 setObject:v47 forKeyedSubscript:@"sens"];
    if (v48 != v49)
    {
      v11 = "kSecAttrIsSensitive";
      goto LABEL_85;
    }
  }

  v50 = [v2 objectForKey:@"nleg"];
  if (v50)
  {
    v51 = v50;
    v52 = CFGetTypeID(v50);
    v53 = CFBooleanGetTypeID();
    [v3 setObject:v51 forKeyedSubscript:@"nleg"];
    if (v52 != v53)
    {
      v11 = "kSecUseDataProtectionKeychain";
      goto LABEL_85;
    }
  }

  v54 = [v2 objectForKey:@"accc"];
  if (v54)
  {
    v55 = v54;
    v56 = CFGetTypeID(v54);
    v57 = SecAccessControlGetTypeID();
    [v3 setObject:v55 forKeyedSubscript:@"accc"];
    if (v56 != v57)
    {
      v11 = "kSecAttrAccessControl";
      goto LABEL_85;
    }
  }

  v58 = [v2 objectForKey:@"clientIdentifier"];
  if (!v58 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v11 = "kSecClientIdentifier";
    goto LABEL_85;
  }

  v59 = [v2 objectForKey:@"certificateLifetime"];
  if (v59)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v11 = "kSecCertificateLifetime";
      goto LABEL_85;
    }
  }

  v60 = [v2 objectForKey:@"certificateSerial"];
  if (v60)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v11 = "kSecCertificateSerialNumber";
      goto LABEL_85;
    }
  }

  else
  {
    v68 = [*(a1 + 32) serialNumber];
    [v2 setObject:v68 forKeyedSubscript:@"certificateSerial"];
  }

  v69 = [v2 objectForKey:@"keyUsage"];
  if (v69)
  {
    v70 = v69;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v11 = "kSecCertificateKeyUsage";
      goto LABEL_85;
    }
  }

  else
  {
    v70 = &unk_1EFAAC7D8;
    [v2 setObject:&unk_1EFAAC7D8 forKeyedSubscript:@"keyUsage"];
  }

  v71 = [v2 objectForKey:@"certificateEKUs"];
  if (v71)
  {
    v72 = v71;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v11 = "kSecCertificateExtendedKeyUsage";
      goto LABEL_85;
    }
  }

  else
  {
    v88[0] = @"1.3.6.1.5.5.7.3.2";
    v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:1];
    [v2 setObject:v72 forKeyedSubscript:@"certificateEKUs"];
  }

  v73 = [v2 objectForKey:kSecCMSSignHashAlgorithm];
  if (v73)
  {
    v74 = v73;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v11 = "kSecCMSSignHashAlgorithm";
      goto LABEL_85;
    }
  }

  else
  {
    v74 = kSecCMSHashingAlgorithmSHA256;
    [v2 setObject:v74 forKeyedSubscript:kSecCMSSignHashAlgorithm];
  }

  v75 = [v2 objectForKey:@"subjectAltName"];
  if (v75 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v11 = "kSecSubjectAltName";
  }

  else
  {

    v76 = [v2 objectForKey:@"acmeDirectory"];
    if (v76 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v11 = "kSecACMEDirectoryURL";
    }

    else
    {

      v77 = [v2 objectForKey:@"attestationIdentity"];
      if (v77 && (v78 = CFGetTypeID(v77), v78 != SecIdentityGetTypeID()))
      {
        v11 = "kSecAttestationIdentity";
      }

      else
      {
        v79 = [v2 objectForKey:@"attestationOids"];
        if (v79)
        {
          objc_opt_class();
          v80 = objc_opt_isKindOfClass();
          if (v80)
          {
            v11 = 0;
          }

          else
          {
            v11 = "kSecAttestationOids";
          }
        }

        else
        {
          v11 = 0;
          v80 = 1;
        }

        [*(a1 + 32) setAttestationOids:v79];

        if (v80)
        {
          v81 = [v2 objectForKey:@"attestationKey"];
          v82 = v81;
          if (v81 && (v83 = CFGetTypeID(v81), v83 != SecKeyGetTypeID()))
          {
            [*(a1 + 32) setAttestationCRKey:v82];
            v11 = "kSecAttestationKey";
          }

          else
          {
            [*(a1 + 32) setAttestationCRKey:v82];
            v84 = [v2 objectForKey:@"attestationChain"];
            if (v84)
            {
              objc_opt_class();
              v85 = objc_opt_isKindOfClass();
              if (v85)
              {
                v11 = 0;
              }

              else
              {
                v11 = "kSecAttestationChain";
              }
            }

            else
            {
              v11 = 0;
              v85 = 1;
            }

            [*(a1 + 32) setAttestationCRChain:v84];

            if (v85)
            {
              [*(a1 + 32) setParameters:v2];
              [*(a1 + 32) setKeyParams:v3];
              goto LABEL_86;
            }
          }
        }
      }
    }
  }

LABEL_85:
  v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SecRequestClientIdentity parameters dictionary has missing value or wrong type for %s key", v11];
  v62 = MEMORY[0x1E696ABC0];
  v63 = *MEMORY[0x1E696A768];
  v86 = *MEMORY[0x1E696A578];
  v87 = v61;
  v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
  v65 = [v62 errorWithDomain:v63 code:-50 userInfo:v64];
  v66 = *(*(a1 + 40) + 8);
  v67 = *(v66 + 40);
  *(v66 + 40) = v65;

LABEL_86:
}

- (id)sanitizeSubject
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15916;
  v11 = __Block_byref_object_dispose__15917;
  v12 = 0;
  queue = [(AcmeCertRequest *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__AcmeCertRequest_sanitizeSubject__block_invoke;
  v6[3] = &unk_1E70E41D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __34__AcmeCertRequest_sanitizeSubject__block_invoke(uint64_t a1)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = 0;
LABEL_6:
    v4 = "unknown";
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = 0;
    LODWORD(v2) = 0;
    goto LABEL_6;
  }

  v3 = [*(*(a1 + 32) + 32) count];
  v4 = 0;
  LODWORD(v2) = 1;
LABEL_7:
  v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  if (v3 && v2)
  {
    v5 = 1;
    while (1)
    {
      v6 = [*(*(a1 + 32) + 32) objectAtIndex:v5 - 1];
      if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"index %lu", v5 - 1];
        [v12 UTF8String];

        v7 = 0;
LABEL_22:
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"index %lu", v5 - 1];
        v4 = [(__CFString *)v8 UTF8String];
        goto LABEL_23;
      }

      v7 = [v6 objectAtIndex:0];
      if (!v7)
      {
        goto LABEL_22;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_22;
      }

      v8 = [v7 objectAtIndex:0];
      v9 = [v7 objectAtIndex:1];
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v26 = v9;
        v10 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@".0123456789"];
        v11 = [v10 invertedSet];

        if ([(__CFString *)v8 rangeOfCharacterFromSet:v11]== 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_30;
        }

        if ([(__CFString *)v8 isEqualToString:@"EMAIL"])
        {

          v8 = @"1.2.840.113549.1.9.1";
LABEL_30:
          v9 = v26;

LABEL_31:
          v30[0] = v8;
          v30[1] = v9;
          [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
          v14 = v13 = v9;
          v31[0] = v14;
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];

          v9 = v13;
          [v27 addObject:v15];

          v4 = 0;
          goto LABEL_32;
        }

        if ([&unk_1EFAAC688 containsObject:v8])
        {
          goto LABEL_30;
        }

        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"index %lu %@", v5 - 1, v8];
        v4 = [v16 UTF8String];

        v9 = v26;
      }

      else
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"index %lu", v5 - 1];
        v4 = [v11 UTF8String];
      }

      if (!v4)
      {
        goto LABEL_31;
      }

LABEL_32:

LABEL_23:
      LOBYTE(v2) = v4 == 0;
      if (v5 < v3)
      {
        ++v5;
        if (!v4)
        {
          continue;
        }
      }

      break;
    }
  }

  if (v2)
  {
    v17 = *(a1 + 32);
    v18 = v27;
    [v17 setSubject:v27];
  }

  else
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SecRequestClientIdentity: subject array has missing value or wrong type for %s key", v4];
    v20 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A768];
    v28 = *MEMORY[0x1E696A578];
    v29 = v19;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v23 = [v20 errorWithDomain:v21 code:-50 userInfo:v22];
    v24 = *(*(a1 + 40) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;

    v18 = v27;
  }
}

- (id)serialNumber
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = 0;
  v8[0] = bswap64(dispatch_time(0, 0));
  v3 = 8;
  while (!*(v8 + v2))
  {
    --v3;
    if (++v2 == 8)
    {
      v3 = 0;
      break;
    }
  }

  v4 = [MEMORY[0x1E695DF88] dataWithCapacity:0];
  v5 = v4;
  if (*(v8 + v2) < 0)
  {
    v7 = 0;
    [v4 appendBytes:&v7 length:1];
  }

  [v5 appendBytes:v8 + v2 length:v3];

  return v5;
}

- (void)dealloc
{
  privateKey = self->_privateKey;
  if (privateKey)
  {
    self->_privateKey = 0;
    CFRelease(privateKey);
  }

  publicKey = self->_publicKey;
  if (publicKey)
  {
    self->_publicKey = 0;
    CFRelease(publicKey);
  }

  certificate = self->_certificate;
  if (certificate)
  {
    self->_certificate = 0;
    CFRelease(certificate);
  }

  identity = self->_identity;
  if (identity)
  {
    self->_identity = 0;
    CFRelease(identity);
  }

  v7.receiver = self;
  v7.super_class = AcmeCertRequest;
  [(AcmeCertRequest *)&v7 dealloc];
}

- (AcmeCertRequest)initWithSubject:(id)subject parameters:(id)parameters
{
  subjectCopy = subject;
  parametersCopy = parameters;
  v12.receiver = self;
  v12.super_class = AcmeCertRequest;
  v8 = [(AcmeCertRequest *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(AcmeCertRequest *)v8 setSubject:subjectCopy];
    [(AcmeCertRequest *)v9 setParameters:parametersCopy];
    v10 = dispatch_queue_create("com.apple.certrequest", 0);
    [(AcmeCertRequest *)v9 setQueue:v10];
  }

  return v9;
}

@end