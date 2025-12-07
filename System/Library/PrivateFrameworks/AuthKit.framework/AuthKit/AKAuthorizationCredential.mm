@interface AKAuthorizationCredential
- (AKAuthorizationCredential)init;
- (AKAuthorizationCredential)initWithCoder:(id)coder;
- (AKAuthorizationCredential)initWithServerResponse:(id)response;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKAuthorizationCredential

- (AKAuthorizationCredential)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = AKAuthorizationCredential;
  v6 = [(AKAuthorizationCredential *)&v4 init];
  v3 = MEMORY[0x1E69E5928](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (AKAuthorizationCredential)initWithServerResponse:(id)response
{
  v47 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v3 = selfCopy;
  selfCopy = 0;
  v42.receiver = v3;
  v42.super_class = AKAuthorizationCredential;
  v32 = [(AKAuthorizationCredential *)&v42 init];
  selfCopy = v32;
  objc_storeStrong(&selfCopy, v32);
  if (v32)
  {
    v41 = _AKLogSiwa();
    v40 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      serverProvidedData = [location[0] serverProvidedData];
      __os_log_helper_16_2_1_8_64(v46, serverProvidedData);
      _os_log_impl(&dword_193225000, v41, v40, "Parsing server provided Data %@", v46, 0xCu);
      MEMORY[0x1E69E5920](serverProvidedData);
    }

    objc_storeStrong(&v41, 0);
    serverProvidedData2 = [location[0] serverProvidedData];
    v4 = [serverProvidedData2 objectForKeyedSubscript:@"uid"];
    userIdentifier = selfCopy->_userIdentifier;
    selfCopy->_userIdentifier = v4;
    MEMORY[0x1E69E5920](userIdentifier);
    serviceTokens = [location[0] serviceTokens];
    v37 = [serviceTokens objectForKeyedSubscript:@"IDToken"];
    if (v37)
    {
      stringValue = [v37 stringValue];
      v6 = [stringValue dataUsingEncoding:4];
      identityToken = selfCopy->_identityToken;
      selfCopy->_identityToken = v6;
      MEMORY[0x1E69E5920](identityToken);
      MEMORY[0x1E69E5920](stringValue);
    }

    v36 = [serviceTokens objectForKeyedSubscript:@"authCode"];
    if (v36)
    {
      stringValue2 = [v36 stringValue];
      v8 = [stringValue2 dataUsingEncoding:4];
      authorizationCode = selfCopy->_authorizationCode;
      selfCopy->_authorizationCode = v8;
      MEMORY[0x1E69E5920](authorizationCode);
      MEMORY[0x1E69E5920](stringValue2);
    }

    v35 = [serverProvidedData2 objectForKeyedSubscript:@"apd"];
    v10 = [v35 objectForKeyedSubscript:@"state"];
    state = selfCopy->_state;
    selfCopy->_state = v10;
    MEMORY[0x1E69E5920](state);
    v34 = [serverProvidedData2 objectForKeyedSubscript:@"isLikelyRealUser"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v34 integerValue] == 1;
      selfCopy->_isLikelyRealUser = v12;
    }

    v13 = [serverProvidedData2 objectForKeyedSubscript:@"scopes"];
    authorizedScopes = selfCopy->_authorizedScopes;
    selfCopy->_authorizedScopes = v13;
    MEMORY[0x1E69E5920](authorizedScopes);
    transactionId = [location[0] transactionId];
    transactionID = selfCopy->_transactionID;
    selfCopy->_transactionID = transactionId;
    MEMORY[0x1E69E5920](transactionID);
    v33 = _AKLogSiwa();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      transactionId2 = [location[0] transactionId];
      __os_log_helper_16_2_1_8_64(v45, transactionId2);
      _os_log_debug_impl(&dword_193225000, v33, OS_LOG_TYPE_DEBUG, "AKAuthorizationCredential Successfully created with transaction id:%@", v45, 0xCu);
      MEMORY[0x1E69E5920](transactionId2);
    }

    objc_storeStrong(&v33, 0);
    v17 = objc_alloc_init(AKUserInformation);
    userInformation = selfCopy->_userInformation;
    selfCopy->_userInformation = v17;
    MEMORY[0x1E69E5920](userInformation);
    privateEmail = [location[0] privateEmail];
    [(AKUserInformation *)selfCopy->_userInformation setSelectedEmail:?];
    MEMORY[0x1E69E5920](privateEmail);
    v22 = objc_opt_class();
    v24 = [serverProvidedData2 objectForKeyedSubscript:@"webAccessEnabled"];
    v23 = _AKSafeCast_17(v22, v24);
    [(AKUserInformation *)selfCopy->_userInformation setWebAccessEnabled:?];
    MEMORY[0x1E69E5920](v23);
    MEMORY[0x1E69E5920](v24);
    v25 = objc_opt_class();
    v27 = [serverProvidedData2 objectForKeyedSubscript:@"serverExperimentalFeatures"];
    v26 = _AKSafeCast_17(v25, v27);
    [(AKUserInformation *)selfCopy->_userInformation setServerExperimentalFeatures:?];
    MEMORY[0x1E69E5920](v26);
    MEMORY[0x1E69E5920](v27);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&serviceTokens, 0);
    objc_storeStrong(&serverProvidedData2, 0);
  }

  v20 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v20;
}

- (AKAuthorizationCredential)initWithCoder:(id)coder
{
  v35 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v37.receiver = v3;
  v37.super_class = AKAuthorizationCredential;
  selfCopy = [(AKAuthorizationCredential *)&v37 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (!selfCopy || (v23 = location[0], v33 = 0x1E696A000uLL, v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"AKUserIdentifier"], v5 = *(selfCopy + 2), *(selfCopy + 2) = v4, MEMORY[0x1E69E5920](v5), v26 = location[0], v25 = MEMORY[0x1E695DFD8], v24 = objc_opt_class(), v27 = objc_msgSend(v25, "setWithObjects:", v24, objc_opt_class(), 0), v6 = objc_msgSend(v26, "decodeObjectOfClasses:forKey:"), v7 = *(selfCopy + 3), *(selfCopy + 3) = v6, MEMORY[0x1E69E5920](v7), MEMORY[0x1E69E5920](v27), v28 = location[0], v8 = objc_msgSend(location[0], "decodeObjectOfClass:forKey:", objc_opt_class(), @"AKUserInformation"), v9 = *(selfCopy + 7), *(selfCopy + 7) = v8, MEMORY[0x1E69E5920](v9), v29 = location[0], v30 = 0x1E695D000uLL, v10 = objc_msgSend(location[0], "decodeObjectOfClass:forKey:", objc_opt_class(), @"AKAuthorizationCode"), v11 = *(selfCopy + 5), *(selfCopy + 5) = v10, MEMORY[0x1E69E5920](v11), v31 = location[0], v12 = objc_msgSend(location[0], "decodeObjectOfClass:forKey:", objc_opt_class(), @"AKIdentityToken"), v13 = *(selfCopy + 4), *(selfCopy + 4) = v12, MEMORY[0x1E69E5920](v13), v32 = location[0], v14 = objc_msgSend(location[0], "decodeObjectOfClass:forKey:", objc_opt_class(), @"_state"), v15 = *(selfCopy + 6), *(selfCopy + 6) = v14, MEMORY[0x1E69E5920](v15), v16 = objc_msgSend(location[0], "decodeBoolForKey:", @"_isLikelyRealUser"), *(selfCopy + 8) = v16, v34 = location[0], v17 = objc_msgSend(location[0], "decodeObjectOfClass:forKey:", objc_opt_class(), @"_transactionID"), v18 = *(selfCopy + 8), *(selfCopy + 8) = v17, MEMORY[0x1E69E5920](v18), *(selfCopy + 2)))
  {
    v40 = MEMORY[0x1E69E5928](selfCopy);
    v36 = 1;
  }

  else
  {
    v21 = location[0];
    v22 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7044];
    [v21 failWithError:?];
    MEMORY[0x1E69E5920](v22);
    v40 = 0;
    v36 = 1;
  }

  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, obj);
  return v40;
}

- (NSString)description
{
  v6 = MEMORY[0x1E696AEC0];
  userIdentifier = self->_userIdentifier;
  identityToken = self->_identityToken;
  authorizationCode = self->_authorizationCode;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLikelyRealUser];
  v8 = [v6 stringWithFormat:@"Authorization Credential:\n UID: %@ \n Identity Token: %@ \n AuthorizationCode: %@ \n User Verification Result: %@ \n User Info: %@ /n Transaction ID: %@", userIdentifier, identityToken, authorizationCode, v7, self->_userInformation, self->_transactionID];
  MEMORY[0x1E69E5920](v7);

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_userIdentifier forKey:@"AKUserIdentifier"];
  [location[0] encodeObject:selfCopy->_authorizedScopes forKey:@"AKAuthorizedScopes"];
  [location[0] encodeObject:selfCopy->_userInformation forKey:@"AKUserInformation"];
  [location[0] encodeObject:selfCopy->_authorizationCode forKey:@"AKAuthorizationCode"];
  [location[0] encodeObject:selfCopy->_identityToken forKey:@"AKIdentityToken"];
  [location[0] encodeObject:selfCopy->_state forKey:@"_state"];
  [location[0] encodeBool:selfCopy->_isLikelyRealUser forKey:@"_isLikelyRealUser"];
  [location[0] encodeObject:selfCopy->_transactionID forKey:@"_transactionID"];
  objc_storeStrong(location, 0);
}

@end