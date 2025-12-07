@interface ACDOAuthSigner
- (ACDOAuthSigner)init;
- (ACDOAuthSigner)initWithClient:(id)client databaseConnection:(id)connection;
- (BOOL)_permissionGrantedForBundleID:(id)d onAccountType:(id)type;
- (id)_signedRequest:(id)request withAccountObject:(id)object applicationID:(id)d timestamp:(id)timestamp;
- (id)ckForAccountType:(id)type;
- (id)csForAccountType:(id)type;
- (id)signedRequest:(id)request withAccount:(id)account applicationID:(id)d timestamp:(id)timestamp;
- (void)setClientBundleID:(id)d withHandler:(id)handler;
- (void)signURLRequest:(id)request withAccount:(id)account applicationID:(id)d timestamp:(id)timestamp handler:(id)handler;
- (void)signURLRequest:(id)request withAccount:(id)account callingPID:(id)d timestamp:(id)timestamp handler:(id)handler;
@end

@implementation ACDOAuthSigner

- (ACDOAuthSigner)init
{
  [(ACDOAuthSigner *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ACDOAuthSigner)initWithClient:(id)client databaseConnection:(id)connection
{
  clientCopy = client;
  connectionCopy = connection;
  v14.receiver = self;
  v14.super_class = ACDOAuthSigner;
  v9 = [(ACDOAuthSigner *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_client, client);
    objc_storeStrong(&v10->_databaseConnection, connection);
    v10->_shouldIncludeAppIdInRequest = 1;
    v11 = [[ACDClientAuthorizationManager alloc] initWithDatabaseConnection:v10->_databaseConnection];
    authorizationManager = v10->_authorizationManager;
    v10->_authorizationManager = v11;
  }

  return v10;
}

- (void)setClientBundleID:(id)d withHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if ([(ACDClient *)self->_client hasEntitlement:*MEMORY[0x277CB9010]]&& (client = self->_client) != 0)
  {
    [(ACDClient *)client setBundleID:dCopy];
    handlerCopy[2](handlerCopy, 1, 0);
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, v8);
  }
}

- (id)_signedRequest:(id)request withAccountObject:(id)object applicationID:(id)d timestamp:(id)timestamp
{
  requestCopy = request;
  objectCopy = object;
  dCopy = d;
  timestampCopy = timestamp;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__5;
  v35 = __Block_byref_object_dispose__5;
  v36 = 0;
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __75__ACDOAuthSigner__signedRequest_withAccountObject_applicationID_timestamp___block_invoke;
  v26 = &unk_27848CA80;
  v15 = objectCopy;
  v27 = v15;
  v30 = &v31;
  v16 = requestCopy;
  v28 = v16;
  selfCopy = self;
  [managedObjectContext performBlockAndWait:&v23];

  v17 = objc_alloc(MEMORY[0x277D36A38]);
  v18 = [v17 initWithCredential:{v32[5], v23, v24, v25, v26}];
  v19 = v18;
  if (self->_shouldIncludeAppIdInRequest)
  {
    v20 = dCopy;
  }

  else
  {
    v20 = 0;
  }

  v21 = [v18 signedURLRequestWithRequest:v16 applicationID:v20 timestamp:timestampCopy];

  _Block_object_dispose(&v31, 8);

  return v21;
}

void __75__ACDOAuthSigner__signedRequest_withAccountObject_applicationID_timestamp___block_invoke(uint64_t a1)
{
  v14 = [*(a1 + 32) accountType];
  v2 = objc_alloc_init(MEMORY[0x277D36A30]);
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 40) _propertyForKey:@"PreferredOAuthConsumerKey"];
  v6 = [*(a1 + 40) _propertyForKey:@"PreferredOAuthConsumerSecret"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = [*(a1 + 48) ckForAccountType:v14];
    [*(*(*(a1 + 56) + 8) + 40) setConsumerKey:v9];

    v10 = [*(a1 + 48) csForAccountType:v14];
    [*(*(*(a1 + 56) + 8) + 40) setConsumerSecret:v10];
  }

  else
  {
    [*(*(*(a1 + 56) + 8) + 40) setConsumerKey:v5];
    [*(*(*(a1 + 56) + 8) + 40) setConsumerSecret:v7];
  }

  v11 = [ACDKeychainManager credentialForManagedAccountObject:*(a1 + 32)];
  v12 = [v11 oauthToken];
  [*(*(*(a1 + 56) + 8) + 40) setOauthToken:v12];

  v13 = [v11 oauthTokenSecret];
  [*(*(*(a1 + 56) + 8) + 40) setOauthTokenSecret:v13];
}

- (void)signURLRequest:(id)request withAccount:(id)account callingPID:(id)d timestamp:(id)timestamp handler:(id)handler
{
  requestCopy = request;
  accountCopy = account;
  dCopy = d;
  timestampCopy = timestamp;
  handlerCopy = handler;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__5;
  v59 = __Block_byref_object_dispose__5;
  v60 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__5;
  v53 = __Block_byref_object_dispose__5;
  v54 = 0;
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v41 = MEMORY[0x277D85DD0];
  v42 = 3221225472;
  v43 = __74__ACDOAuthSigner_signURLRequest_withAccount_callingPID_timestamp_handler___block_invoke;
  v44 = &unk_27848C130;
  v47 = &v55;
  selfCopy = self;
  v18 = accountCopy;
  v46 = v18;
  v48 = &v49;
  [managedObjectContext performBlockAndWait:&v41];

  if (!v56[5])
  {
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:6 userInfo:{0, v41, v42, v43, v44, selfCopy}];
    handlerCopy[2](handlerCopy, 0, v21);
    goto LABEL_19;
  }

  if (dCopy && [dCopy intValue] >= 1)
  {
    v19 = [(ACDClient *)self->_client hasEntitlement:*MEMORY[0x277CB9000]];
    if (!v19)
    {
      v33 = _ACDLogSystem(v19);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [(ACDOAuthSigner *)v33 signURLRequest:v34 withAccount:v35 callingPID:v36 timestamp:v37 handler:v38, v39, v40];
      }

      v21 = 0;
      goto LABEL_8;
    }

    [dCopy intValue];
    v20 = ACDGetAdamOrDisplayIDForPID();
  }

  else
  {
    v20 = [(ACDClient *)self->_client adamOrDisplayID:v41];
  }

  v21 = v20;
LABEL_8:
  if ([(ACDClient *)self->_client hasEntitlement:*MEMORY[0x277CB8FE0]]|| ([(ACDClient *)self->_client bundleID], v22 = objc_claimAutoreleasedReturnValue(), v23 = [(ACDOAuthSigner *)self _permissionGrantedForBundleID:v22 onAccountType:v50[5]], v22, v23))
  {
    if (v21 || !self->_shouldIncludeAppIdInRequest)
    {
      v24 = [(ACDOAuthSigner *)self _signedRequest:requestCopy withAccountObject:v56[5] applicationID:v21 timestamp:timestampCopy];
      (handlerCopy)[2](handlerCopy, v24, 0);
    }

    else
    {
      v25 = _ACLogSystem();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(ACDOAuthSigner *)v25 signURLRequest:v26 withAccount:v27 callingPID:v28 timestamp:v29 handler:v30, v31, v32];
      }

      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:1 userInfo:0];
      handlerCopy[2](handlerCopy, 0, v24);
    }
  }

  else
  {
    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v24);
  }

LABEL_19:
  _Block_object_dispose(&v49, 8);

  _Block_object_dispose(&v55, 8);
}

void __74__ACDOAuthSigner_signURLRequest_withAccount_callingPID_timestamp_handler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) objectID];
  v4 = [v2 existingObjectWithURI:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = objc_alloc(MEMORY[0x277CB8F58]);
    v11 = [*(*(*(a1 + 48) + 8) + 40) accountType];
    v8 = [v7 initWithManagedAccountType:v11];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (id)signedRequest:(id)request withAccount:(id)account applicationID:(id)d timestamp:(id)timestamp
{
  requestCopy = request;
  accountCopy = account;
  dCopy = d;
  timestampCopy = timestamp;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5;
  v25 = __Block_byref_object_dispose__5;
  v26 = 0;
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __68__ACDOAuthSigner_signedRequest_withAccount_applicationID_timestamp___block_invoke;
  v18[3] = &unk_27848BCD0;
  v20 = &v21;
  v18[4] = self;
  v15 = accountCopy;
  v19 = v15;
  [managedObjectContext performBlockAndWait:v18];

  v16 = [(ACDOAuthSigner *)self _signedRequest:requestCopy withAccountObject:v22[5] applicationID:dCopy timestamp:timestampCopy];

  _Block_object_dispose(&v21, 8);

  return v16;
}

void __68__ACDOAuthSigner_signedRequest_withAccount_applicationID_timestamp___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v6 = [*(a1 + 40) objectID];
  v3 = [v2 existingObjectWithURI:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)signURLRequest:(id)request withAccount:(id)account applicationID:(id)d timestamp:(id)timestamp handler:(id)handler
{
  requestCopy = request;
  accountCopy = account;
  dCopy = d;
  timestampCopy = timestamp;
  handlerCopy = handler;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__5;
  v49 = __Block_byref_object_dispose__5;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__5;
  v43 = __Block_byref_object_dispose__5;
  v44 = 0;
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __77__ACDOAuthSigner_signURLRequest_withAccount_applicationID_timestamp_handler___block_invoke;
  v34 = &unk_27848C130;
  v37 = &v45;
  selfCopy = self;
  v18 = accountCopy;
  v36 = v18;
  v38 = &v39;
  [managedObjectContext performBlockAndWait:&v31];

  if (!v46[5])
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:6 userInfo:{0, v31, v32, v33, v34, selfCopy}];
    handlerCopy[2](handlerCopy, 0, v22);
    goto LABEL_11;
  }

  selfCopy = [(ACDClient *)self->_client hasEntitlement:*MEMORY[0x277CB8FE0], v31, v32, v33, v34, selfCopy];
  if (!dCopy)
  {
    v23 = _ACDLogSystem(selfCopy);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(ACDOAuthSigner *)v23 signURLRequest:v24 withAccount:v25 applicationID:v26 timestamp:v27 handler:v28, v29, v30];
    }

    goto LABEL_10;
  }

  if ((selfCopy & 1) == 0)
  {
    bundleID = [(ACDClient *)self->_client bundleID];
    v21 = [(ACDOAuthSigner *)self _permissionGrantedForBundleID:bundleID onAccountType:v40[5]];

    if (!v21)
    {
LABEL_10:
      v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:1 userInfo:0];
      handlerCopy[2](handlerCopy, 0, v22);
      goto LABEL_11;
    }
  }

  v22 = [(ACDOAuthSigner *)self _signedRequest:requestCopy withAccountObject:v46[5] applicationID:dCopy timestamp:timestampCopy];
  (handlerCopy)[2](handlerCopy, v22, 0);
LABEL_11:

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);
}

void __77__ACDOAuthSigner_signURLRequest_withAccount_applicationID_timestamp_handler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) objectID];
  v4 = [v2 existingObjectWithURI:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = objc_alloc(MEMORY[0x277CB8F58]);
    v11 = [*(*(*(a1 + 48) + 8) + 40) accountType];
    v8 = [v7 initWithManagedAccountType:v11];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (BOOL)_permissionGrantedForBundleID:(id)d onAccountType:(id)type
{
  typeCopy = type;
  v7 = [ACDClient clientWithBundleID:d];
  v8 = [(ACDClientAuthorizationManager *)self->_authorizationManager authorizationForClient:v7 accountType:typeCopy];

  isGranted = [v8 isGranted];
  return isGranted;
}

- (id)ckForAccountType:(id)type
{
  v14[6] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CB8D00];
  v13[0] = *MEMORY[0x277CB8D28];
  v13[1] = v3;
  v14[0] = @"XX[E:QjlmkJZqTBNhLOT:g";
  v14[1] = @"3878861889";
  v4 = *MEMORY[0x277CB8C30];
  v13[2] = @"com.apple.linkedin";
  v13[3] = v4;
  v14[2] = @"lh11ykuiycpw";
  v14[3] = @"b84f8d61205456:e:416:fd08c7811:4";
  v5 = *MEMORY[0x277CB8D18];
  v13[4] = *MEMORY[0x277CB8D30];
  v13[5] = v5;
  v14[4] = @"97d4b8:a6350926e2ab4gedefa7432:2:88530f7";
  v14[5] = @"902265845";
  v6 = MEMORY[0x277CBEAC0];
  typeCopy = type;
  v8 = [v6 dictionaryWithObjects:v14 forKeys:v13 count:6];
  identifier = [typeCopy identifier];

  v10 = [v8 objectForKey:identifier];

  if (v10)
  {
    v11 = decodeString(v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)csForAccountType:(id)type
{
  v14[6] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CB8D00];
  v13[0] = *MEMORY[0x277CB8D28];
  v13[1] = v3;
  v14[0] = @"Bav5TVOpCZd0XCrn8DuQrMGZbkHivaFYBnsbz3HUJE";
  v14[1] = @"9911g0d2c25782d6ebed:a4dbc14762c";
  v4 = *MEMORY[0x277CB8C30];
  v13[2] = @"com.apple.linkedin";
  v13[3] = v4;
  v14[2] = @"{Mgj6CGuJT:c{qMb";
  v14[3] = @"f058gbed57167f91";
  v5 = *MEMORY[0x277CB8D18];
  v13[4] = *MEMORY[0x277CB8D30];
  v13[5] = v5;
  v14[4] = @"33b67328e3fe8c697325g9d1666c672agbcagc1f";
  v14[5] = @"49b7ccffdbg14a5b234345cf1acc86c4";
  v6 = MEMORY[0x277CBEAC0];
  typeCopy = type;
  v8 = [v6 dictionaryWithObjects:v14 forKeys:v13 count:6];
  identifier = [typeCopy identifier];

  v10 = [v8 objectForKey:identifier];

  if (v10)
  {
    v11 = decodeString(v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end