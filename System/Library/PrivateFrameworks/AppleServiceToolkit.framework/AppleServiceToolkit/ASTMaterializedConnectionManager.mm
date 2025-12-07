@interface ASTMaterializedConnectionManager
- (ASTConnectionManagerDelegate)delegate;
- (ASTMaterializedConnectionManager)initWithSOCKSProxyServer:(id)server port:(id)port;
- (BOOL)isValidUUID:(id)d;
- (BOOL)postAuthInfo:(id)info allowsCellularAccess:(BOOL)access;
- (BOOL)postProfile:(id)profile allowsCellularAccess:(BOOL)access;
- (id)postEnrollAllowingCellularAccess:(BOOL)access;
- (id)postRequest:(id)request allowsCellularAccess:(BOOL)access;
- (void)cancelAllTestResults;
- (void)connection:(id)connection connectionStateChanged:(int64_t)changed;
- (void)connection:(id)connection didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpected:(int64_t)expected;
- (void)dealloc;
- (void)downloadAsset:(id)asset serverURL:(id)l endpoint:(id)endpoint destinationFileHandle:(id)handle allowsCellularAccess:(BOOL)access completion:(id)completion;
- (void)postPrepareDeviceWithIdentities:(id)identities allowsCellularAccess:(BOOL)access completionHandler:(id)handler;
- (void)postSealableFile:(id)file fileSequence:(id)sequence totalFiles:(id)files testId:(id)id dataId:(id)dataId allowsCellularAccess:(BOOL)access completion:(id)completion;
- (void)postSelectSelfServiceSuite:(id)suite withPayloadSigner:(id)signer allowsCellularAccess:(BOOL)access completionHandler:(id)handler;
- (void)postSessionStatusForIdentities:(id)identities ticket:(id)ticket timeout:(double)timeout allowsCellularAccess:(BOOL)access requestQueuedSuiteInfo:(BOOL)info completion:(id)completion;
- (void)postTestResult:(id)result allowsCellularAccess:(BOOL)access completion:(id)completion;
- (void)requestInstructionalPromptDetailsWithInstructionID:(id)d type:(id)type withPayloadSigner:(id)signer language:(id)language locale:(id)locale allowsCellularAccess:(BOOL)access completionHandler:(id)handler;
- (void)requestSelfServiceSuiteResultsWithDiagnosticEventID:(id)d withPayloadSigner:(id)signer allowsCellularAccess:(BOOL)access completionHandler:(id)handler;
- (void)requestSelfServiceSuitesAvailableWithConfigCode:(id)code withPayloadSigner:(id)signer allowsCellularAccess:(BOOL)access completionHandler:(id)handler;
- (void)requestSessionArchiveWithSessionID:(id)d withPayloadSigner:(id)signer allowsCellularAccess:(BOOL)access completionHandler:(id)handler;
@end

@implementation ASTMaterializedConnectionManager

- (ASTMaterializedConnectionManager)initWithSOCKSProxyServer:(id)server port:(id)port
{
  serverCopy = server;
  portCopy = port;
  v12.receiver = self;
  v12.super_class = ASTMaterializedConnectionManager;
  v8 = [(ASTMaterializedConnectionManager *)&v12 init];
  if (v8)
  {
    v9 = [[ASTNetworking alloc] initWithSOCKSProxyServer:serverCopy port:portCopy];
    networking = v8->_networking;
    v8->_networking = v9;
  }

  return v8;
}

- (void)postSessionStatusForIdentities:(id)identities ticket:(id)ticket timeout:(double)timeout allowsCellularAccess:(BOOL)access requestQueuedSuiteInfo:(BOOL)info completion:(id)completion
{
  infoCopy = info;
  accessCopy = access;
  v28 = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  ticketCopy = ticket;
  completionCopy = completion;
  v17 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = identitiesCopy;
    v26 = 2112;
    v27 = ticketCopy;
    _os_log_impl(&dword_240F3C000, v17, OS_LOG_TYPE_DEFAULT, "[Session] > Identities: %@, Ticket: %@", buf, 0x16u);
  }

  v18 = [[ASTConnectionSession alloc] initWithIdentities:identitiesCopy ticket:ticketCopy requestQueuedSuiteInfo:infoCopy];
  [(ASTMaterializedConnection *)v18 setTimeout:timeout];
  firstObject = [identitiesCopy firstObject];
  [(ASTMaterializedConnection *)v18 setIdentity:firstObject];

  [(ASTMaterializedConnection *)v18 setAllowsCellularAccess:accessCopy];
  [(ASTMaterializedConnection *)v18 setDelegate:self];
  [(ASTMaterializedConnection *)v18 setRetryOnNetworkDisconnected:0];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __137__ASTMaterializedConnectionManager_postSessionStatusForIdentities_ticket_timeout_allowsCellularAccess_requestQueuedSuiteInfo_completion___block_invoke;
  v22[3] = &unk_278CBD338;
  v23 = completionCopy;
  v20 = completionCopy;
  [(ASTMaterializedConnection *)v18 setDidReceiveResponse:v22];
  networking = [(ASTMaterializedConnectionManager *)self networking];
  [networking addConnection:v18];
}

void __137__ASTMaterializedConnectionManager_postSessionStatusForIdentities_ticket_timeout_allowsCellularAccess_requestQueuedSuiteInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = ASTLogHandleForCategory(1);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[Session] < Session Successful", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __137__ASTMaterializedConnectionManager_postSessionStatusForIdentities_ticket_timeout_allowsCellularAccess_requestQueuedSuiteInfo_completion___block_invoke_cold_1();
  }

  v44 = v5;

  v8 = [v4 objectForKeyedSubscript:@"diagsChannel"];
  if (v8 && (v9 = v8, [v4 objectForKeyedSubscript:@"diagsChannel"], v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, v9, (isKindOfClass & 1) != 0))
  {
    v12 = [v4 objectForKeyedSubscript:@"diagsChannel"];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v4 objectForKeyedSubscript:@"configCode"];
  if (v13 && (v14 = v13, [v4 objectForKeyedSubscript:@"configCode"], v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v16 = objc_opt_isKindOfClass(), v15, v14, (v16 & 1) != 0))
  {
    v17 = [v4 objectForKeyedSubscript:@"configCode"];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v4 objectForKeyedSubscript:@"guided"];
  if (v18)
  {
    v19 = v18;
    v20 = [v4 objectForKeyedSubscript:@"guided"];
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();

    if ((v21 & 1) == 0)
    {
      v22 = [v4 objectForKeyedSubscript:@"guided"];
      [v22 BOOLValue];
    }
  }

  v23 = [v4 objectForKeyedSubscript:@"queuedSuiteType"];
  if (v23)
  {
    v24 = v23;
    v25 = [v4 objectForKeyedSubscript:@"queuedSuiteType"];
    objc_opt_class();
    v26 = objc_opt_isKindOfClass();

    if (v26)
    {
      v27 = [v4 objectForKeyedSubscript:@"queuedSuiteType"];
      if (([v27 isEqualToString:@"None"] & 1) == 0)
      {
        [v27 isEqualToString:@"Logging"];
      }
    }
  }

  v28 = [v4 objectForKeyedSubscript:@"deviceIndex"];
  [v28 intValue];

  v29 = [v4 objectForKeyedSubscript:@"sessionType"];
  if (v29)
  {
    v30 = v29;
    v31 = [v4 objectForKeyedSubscript:@"sessionType"];
    objc_opt_class();
    v32 = objc_opt_isKindOfClass();

    if (v32)
    {
      v33 = [v4 objectForKeyedSubscript:@"sessionType"];
      v34 = [v33 lowercaseString];

      if (([v34 isEqualToString:@"diags"] & 1) == 0 && (objc_msgSend(v34, "isEqualToString:", @"nonguided") & 1) == 0 && (objc_msgSend(v34, "isEqualToString:", @"logging") & 1) == 0 && (objc_msgSend(v34, "isEqualToString:", @"mas") & 1) == 0 && (objc_msgSend(v34, "isEqualToString:", @"wbd") & 1) == 0)
      {
        [v34 isEqualToString:@"ssr"];
      }
    }
  }

  v35 = [v4 objectForKeyedSubscript:@"assetURL"];
  if (v35 && (v36 = v35, [v4 objectForKeyedSubscript:@"assetURL"], v37 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v38 = objc_opt_isKindOfClass(), v37, v36, (v38 & 1) != 0))
  {
    v39 = MEMORY[0x277CBEBC0];
    v40 = [v4 objectForKeyedSubscript:@"assetURL"];
    v41 = [v39 URLWithString:v40];
  }

  else
  {
    v41 = 0;
  }

  v42 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = v12;
    _os_log_impl(&dword_240F3C000, v42, OS_LOG_TYPE_DEFAULT, "[Session] Received diags channel: %@", buf, 0xCu);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v4 != 0);
}

- (void)downloadAsset:(id)asset serverURL:(id)l endpoint:(id)endpoint destinationFileHandle:(id)handle allowsCellularAccess:(BOOL)access completion:(id)completion
{
  accessCopy = access;
  v34 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  completionCopy = completion;
  handleCopy = handle;
  endpointCopy = endpoint;
  lCopy = l;
  v19 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = assetCopy;
    _os_log_impl(&dword_240F3C000, v19, OS_LOG_TYPE_DEFAULT, "[Asset] > %@", buf, 0xCu);
  }

  v20 = [[ASTConnectionAsset alloc] initWithServerURL:lCopy endpoint:endpointCopy assetName:assetCopy destinationFileHandle:handleCopy];
  identity = [(ASTMaterializedConnectionManager *)self identity];
  [(ASTMaterializedConnection *)v20 setIdentity:identity];

  sessionId = [(ASTMaterializedConnectionManager *)self sessionId];
  [(ASTMaterializedConnection *)v20 setSessionId:sessionId];

  [(ASTMaterializedConnection *)v20 setAllowsCellularAccess:accessCopy];
  [(ASTMaterializedConnection *)v20 setDelegate:self];
  [(ASTMaterializedConnection *)v20 setRetryOnNetworkDisconnected:1];
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __123__ASTMaterializedConnectionManager_downloadAsset_serverURL_endpoint_destinationFileHandle_allowsCellularAccess_completion___block_invoke;
  v29 = &unk_278CBD360;
  v30 = assetCopy;
  v31 = completionCopy;
  v23 = completionCopy;
  v24 = assetCopy;
  [(ASTMaterializedConnection *)v20 setDidReceiveResponse:&v26];
  v25 = [(ASTMaterializedConnectionManager *)self networking:v26];
  [v25 addConnection:v20];
}

void __123__ASTMaterializedConnectionManager_downloadAsset_serverURL_endpoint_destinationFileHandle_allowsCellularAccess_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = ASTLogHandleForCategory(1);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[Asset] < %@ Download Successful", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __123__ASTMaterializedConnectionManager_downloadAsset_serverURL_endpoint_destinationFileHandle_allowsCellularAccess_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (id)postEnrollAllowingCellularAccess:(BOOL)access
{
  accessCopy = access;
  v24 = *MEMORY[0x277D85DE8];
  v5 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identity = [(ASTMaterializedConnectionManager *)self identity];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = identity;
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[Enroll] > Identity: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = [ASTConnectionEnroll alloc];
  identity2 = [(ASTMaterializedConnectionManager *)self identity];
  v10 = [(ASTConnectionEnroll *)v8 initWithIdentity:identity2];

  identity3 = [(ASTMaterializedConnectionManager *)self identity];
  [(ASTMaterializedConnection *)v10 setIdentity:identity3];

  [(ASTMaterializedConnection *)v10 setAllowsCellularAccess:accessCopy];
  [(ASTMaterializedConnection *)v10 setDelegate:self];
  [(ASTMaterializedConnection *)v10 setRetryOnNetworkDisconnected:1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__ASTMaterializedConnectionManager_postEnrollAllowingCellularAccess___block_invoke;
  v16[3] = &unk_278CBD388;
  p_buf = &buf;
  v16[4] = self;
  v12 = v7;
  v17 = v12;
  [(ASTMaterializedConnection *)v10 setDidReceiveResponse:v16];
  networking = [(ASTMaterializedConnectionManager *)self networking];
  [networking addConnection:v10];

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  [(ASTMaterializedConnectionManager *)self setSessionId:*(*(&buf + 1) + 40)];
  v14 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v14;
}

void __69__ASTMaterializedConnectionManager_postEnrollAllowingCellularAccess___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && ([v5 objectForKeyedSubscript:@"sessionId"], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [v5 objectForKeyedSubscript:@"sessionId"];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v11 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __69__ASTMaterializedConnectionManager_postEnrollAllowingCellularAccess___block_invoke_cold_1();
    }
  }

  v12 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 32) identity];
    v14 = *(*(*(a1 + 48) + 8) + 40);
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    v18 = v14;
    _os_log_impl(&dword_240F3C000, v12, OS_LOG_TYPE_DEFAULT, "[Enroll] < Identity: %@, Session: %@", &v15, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)postAuthInfo:(id)info allowsCellularAccess:(BOOL)access
{
  accessCopy = access;
  v24 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = infoCopy;
    _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[AuthInfo] > Auth info: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x2020000000;
  v23 = 1;
  v8 = dispatch_semaphore_create(0);
  v9 = [[ASTConnectionAuthInfo alloc] initWithAuthInfo:infoCopy];
  identity = [(ASTMaterializedConnectionManager *)self identity];
  [(ASTMaterializedConnection *)v9 setIdentity:identity];

  sessionId = [(ASTMaterializedConnectionManager *)self sessionId];
  [(ASTMaterializedConnection *)v9 setSessionId:sessionId];

  [(ASTMaterializedConnection *)v9 setAllowsCellularAccess:accessCopy];
  [(ASTMaterializedConnection *)v9 setDelegate:self];
  [(ASTMaterializedConnection *)v9 setRetryOnNetworkDisconnected:1];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __70__ASTMaterializedConnectionManager_postAuthInfo_allowsCellularAccess___block_invoke;
  v18 = &unk_278CBD3B0;
  p_buf = &buf;
  v12 = v8;
  v19 = v12;
  [(ASTMaterializedConnection *)v9 setDidReceiveResponse:&v15];
  v13 = [(ASTMaterializedConnectionManager *)self networking:v15];
  [v13 addConnection:v9];

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v13) = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  return v13 & 1;
}

void __70__ASTMaterializedConnectionManager_postAuthInfo_allowsCellularAccess___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = ASTLogHandleForCategory(1);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[AuthInfo] < Auth Info Successful", v8, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __70__ASTMaterializedConnectionManager_postAuthInfo_allowsCellularAccess___block_invoke_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)postProfile:(id)profile allowsCellularAccess:(BOOL)access
{
  accessCopy = access;
  v24 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v7 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = profileCopy;
    _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[Profile] > Profile: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x2020000000;
  v23 = 1;
  v8 = dispatch_semaphore_create(0);
  v9 = [[ASTConnectionProfile alloc] initWithProfile:profileCopy];
  identity = [(ASTMaterializedConnectionManager *)self identity];
  [(ASTMaterializedConnection *)v9 setIdentity:identity];

  sessionId = [(ASTMaterializedConnectionManager *)self sessionId];
  [(ASTMaterializedConnection *)v9 setSessionId:sessionId];

  [(ASTMaterializedConnection *)v9 setAllowsCellularAccess:accessCopy];
  [(ASTMaterializedConnection *)v9 setDelegate:self];
  [(ASTMaterializedConnection *)v9 setRetryOnNetworkDisconnected:1];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __69__ASTMaterializedConnectionManager_postProfile_allowsCellularAccess___block_invoke;
  v18 = &unk_278CBD3B0;
  p_buf = &buf;
  v12 = v8;
  v19 = v12;
  [(ASTMaterializedConnection *)v9 setDidReceiveResponse:&v15];
  v13 = [(ASTMaterializedConnectionManager *)self networking:v15];
  [v13 addConnection:v9];

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v13) = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  return v13 & 1;
}

void __69__ASTMaterializedConnectionManager_postProfile_allowsCellularAccess___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = ASTLogHandleForCategory(1);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[Profile] < Profile Successful", v8, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __69__ASTMaterializedConnectionManager_postProfile_allowsCellularAccess___block_invoke_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)postRequest:(id)request allowsCellularAccess:(BOOL)access
{
  accessCopy = access;
  v26 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = requestCopy;
    _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[Status] > %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v8 = dispatch_semaphore_create(0);
  v9 = [[ASTConnectionClientStatus alloc] initWithClientStatus:requestCopy];
  identity = [(ASTMaterializedConnectionManager *)self identity];
  [(ASTMaterializedConnection *)v9 setIdentity:identity];

  sessionId = [(ASTMaterializedConnectionManager *)self sessionId];
  [(ASTMaterializedConnection *)v9 setSessionId:sessionId];

  [(ASTMaterializedConnection *)v9 setAllowsCellularAccess:accessCopy];
  [(ASTMaterializedConnection *)v9 setDelegate:self];
  -[ASTMaterializedConnection setRetryOnNetworkDisconnected:](v9, "setRetryOnNetworkDisconnected:", [requestCopy clientStatus] != 9);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__ASTMaterializedConnectionManager_postRequest_allowsCellularAccess___block_invoke;
  v17[3] = &unk_278CBD388;
  p_buf = &buf;
  v12 = v8;
  v18 = v12;
  v13 = requestCopy;
  v19 = v13;
  [(ASTMaterializedConnection *)v9 setDidReceiveResponse:v17];
  networking = [(ASTMaterializedConnectionManager *)self networking];
  [networking addConnection:v9];

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v15 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v15;
}

void __69__ASTMaterializedConnectionManager_postRequest_allowsCellularAccess___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = ASTLogHandleForCategory(1);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "Response: %@, error: %@", &v17, 0x16u);
    }

    v9 = [ASTResponse responseWithDictionary:v5];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = *(*(*(a1 + 48) + 8) + 40);
    v13 = ASTLogHandleForCategory(1);
    v8 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(*(*(a1 + 48) + 8) + 40);
        v17 = 138412290;
        v18 = v14;
        _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[Status] < %@", &v17, 0xCu);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __69__ASTMaterializedConnectionManager_postRequest_allowsCellularAccess___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __69__ASTMaterializedConnectionManager_postRequest_allowsCellularAccess___block_invoke_cold_2();
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v15 = [*(a1 + 40) completion];

  if (v15)
  {
    v16 = [*(a1 + 40) completion];
    v16[2]();
  }
}

- (void)postTestResult:(id)result allowsCellularAccess:(BOOL)access completion:(id)completion
{
  accessCopy = access;
  v25 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  completionCopy = completion;
  v10 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = resultCopy;
    _os_log_impl(&dword_240F3C000, v10, OS_LOG_TYPE_DEFAULT, "[Test Results] > Results: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x2020000000;
  v24 = 1;
  v11 = [[ASTConnectionTestResult alloc] initWithTestResults:resultCopy];
  identity = [(ASTMaterializedConnectionManager *)self identity];
  [(ASTMaterializedConnection *)v11 setIdentity:identity];

  sessionId = [(ASTMaterializedConnectionManager *)self sessionId];
  [(ASTMaterializedConnection *)v11 setSessionId:sessionId];

  [(ASTMaterializedConnection *)v11 setAllowsCellularAccess:accessCopy];
  [(ASTMaterializedConnection *)v11 setDelegate:self];
  [(ASTMaterializedConnection *)v11 setRetryOnNetworkDisconnected:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __83__ASTMaterializedConnectionManager_postTestResult_allowsCellularAccess_completion___block_invoke;
  v19 = &unk_278CBD3D8;
  p_buf = &buf;
  v14 = completionCopy;
  v20 = v14;
  [(ASTMaterializedConnection *)v11 setDidReceiveResponse:&v16];
  v15 = [(ASTMaterializedConnectionManager *)self networking:v16];
  [v15 addConnection:v11];

  _Block_object_dispose(&buf, 8);
}

void __83__ASTMaterializedConnectionManager_postTestResult_allowsCellularAccess_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = ASTLogHandleForCategory(1);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[Test Results] < Test Results Successful", v8, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __83__ASTMaterializedConnectionManager_postTestResult_allowsCellularAccess_completion___block_invoke_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)postSealableFile:(id)file fileSequence:(id)sequence totalFiles:(id)files testId:(id)id dataId:(id)dataId allowsCellularAccess:(BOOL)access completion:(id)completion
{
  accessCopy = access;
  v43 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  completionCopy = completion;
  v15 = MEMORY[0x277CCAA00];
  dataIdCopy = dataId;
  idCopy = id;
  filesCopy = files;
  sequenceCopy = sequence;
  defaultManager = [v15 defaultManager];
  fileURL = [fileCopy fileURL];
  path = [fileURL path];
  v22 = [defaultManager attributesOfItemAtPath:path error:0];
  fileSize = [v22 fileSize];

  v24 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    fileURL2 = [fileCopy fileURL];
    path2 = [fileURL2 path];
    *buf = 138412546;
    v40 = path2;
    v41 = 2048;
    v42 = fileSize;
    _os_log_impl(&dword_240F3C000, v24, OS_LOG_TYPE_DEFAULT, "[File Upload] > File: %@, File Size: %llu bytes", buf, 0x16u);
  }

  v27 = [[ASTConnectionTestResultBinary alloc] initWithSealableFile:fileCopy fileSequence:sequenceCopy totalFiles:filesCopy testId:idCopy dataId:dataIdCopy];
  identity = [(ASTMaterializedConnectionManager *)self identity];
  [(ASTMaterializedConnection *)v27 setIdentity:identity];

  sessionId = [(ASTMaterializedConnectionManager *)self sessionId];
  [(ASTMaterializedConnection *)v27 setSessionId:sessionId];

  [(ASTMaterializedConnection *)v27 setAllowsCellularAccess:accessCopy];
  [(ASTMaterializedConnection *)v27 setDelegate:self];
  [(ASTMaterializedConnection *)v27 setRetryOnNetworkDisconnected:1];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __123__ASTMaterializedConnectionManager_postSealableFile_fileSequence_totalFiles_testId_dataId_allowsCellularAccess_completion___block_invoke;
  v36[3] = &unk_278CBD360;
  v37 = fileCopy;
  v38 = completionCopy;
  v30 = completionCopy;
  v31 = fileCopy;
  [(ASTMaterializedConnection *)v27 setDidReceiveResponse:v36];
  networking = [(ASTMaterializedConnectionManager *)self networking];
  [networking addConnection:v27];
}

void __123__ASTMaterializedConnectionManager_postSealableFile_fileSequence_totalFiles_testId_dataId_allowsCellularAccess_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASTLogHandleForCategory(1);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[File Upload] < File Upload Successful", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __123__ASTMaterializedConnectionManager_postSealableFile_fileSequence_totalFiles_testId_dataId_allowsCellularAccess_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = *(a1 + 32);
  v10 = (a1 + 32);
  v12 = [v11 fileURL];
  v16 = 0;
  v13 = [v9 removeItemAtURL:v12 error:&v16];
  v14 = v16;

  if ((v13 & 1) == 0)
  {
    v15 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __123__ASTMaterializedConnectionManager_postSealableFile_fileSequence_totalFiles_testId_dataId_allowsCellularAccess_completion___block_invoke_cold_2(v10);
    }
  }
}

- (void)cancelAllTestResults
{
  networking = [(ASTMaterializedConnectionManager *)self networking];
  [networking cancelConnectionsOfClass:objc_opt_class()];

  networking2 = [(ASTMaterializedConnectionManager *)self networking];
  [networking2 cancelConnectionsOfClass:objc_opt_class()];
}

- (void)requestSessionArchiveWithSessionID:(id)d withPayloadSigner:(id)signer allowsCellularAccess:(BOOL)access completionHandler:(id)handler
{
  accessCopy = access;
  v29 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  signerCopy = signer;
  dCopy = d;
  v13 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[ASTMaterializedConnectionManager requestSessionArchiveWithSessionID:withPayloadSigner:allowsCellularAccess:completionHandler:]";
    _os_log_impl(&dword_240F3C000, v13, OS_LOG_TYPE_DEFAULT, "[ASTConnectionManager] %s", buf, 0xCu);
  }

  v14 = dispatch_semaphore_create(0);
  v15 = objc_alloc_init(ASTConnectionArchiveSelfServiceSession);
  identity = [(ASTMaterializedConnectionManager *)self identity];
  [(ASTMaterializedConnection *)v15 setIdentity:identity];

  [(ASTConnectionArchiveSelfServiceSession *)v15 setSessionId:dCopy];
  [(ASTMaterializedConnection *)v15 setAllowsCellularAccess:accessCopy];
  [(ASTMaterializedConnection *)v15 setDelegate:self];
  [(ASTMaterializedConnection *)v15 setRetryOnNetworkDisconnected:1];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __128__ASTMaterializedConnectionManager_requestSessionArchiveWithSessionID_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke;
  v24 = &unk_278CBD400;
  v25 = v14;
  v26 = handlerCopy;
  v17 = v14;
  v18 = handlerCopy;
  [(ASTMaterializedConnection *)v15 setDidReceiveResponse:&v21];
  [(ASTMaterializedConnection *)v15 signBodyWithPayloadSigner:signerCopy, v21, v22, v23, v24];

  networking = [(ASTMaterializedConnectionManager *)self networking];
  [networking addConnection:v15];

  v20 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v17, v20);
}

void __128__ASTMaterializedConnectionManager_requestSessionArchiveWithSessionID_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v9 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __128__ASTMaterializedConnectionManager_requestSessionArchiveWithSessionID_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_2();
    }

    v10 = *(a1 + 40);
    v11 = MEMORY[0x277CCA9B8];
    v12 = -7000;
    goto LABEL_10;
  }

  v7 = [v5 objectForKeyedSubscript:@"archived"];
  v8 = [v7 BOOLValue];

  if ((v8 & 1) == 0)
  {
    v13 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __128__ASTMaterializedConnectionManager_requestSessionArchiveWithSessionID_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_1();
    }

    v10 = *(a1 + 40);
    v11 = MEMORY[0x277CCA9B8];
    v12 = -1008;
LABEL_10:
    v14 = [v11 errorWithDomain:@"ASTErrorDomain" code:v12 userInfo:0];
    (*(v10 + 16))(v10, v14);

    goto LABEL_11;
  }

  (*(*(a1 + 40) + 16))();
LABEL_11:
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)requestSelfServiceSuitesAvailableWithConfigCode:(id)code withPayloadSigner:(id)signer allowsCellularAccess:(BOOL)access completionHandler:(id)handler
{
  accessCopy = access;
  v26 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  handlerCopy = handler;
  v11 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[ASTMaterializedConnectionManager requestSelfServiceSuitesAvailableWithConfigCode:withPayloadSigner:allowsCellularAccess:completionHandler:]";
    _os_log_impl(&dword_240F3C000, v11, OS_LOG_TYPE_DEFAULT, "[ASTConnectionManager] %s", buf, 0xCu);
  }

  v12 = [[ASTConnectionRetrieveSelfServiceSuites alloc] initWithConfigCode:codeCopy];
  identity = [(ASTMaterializedConnectionManager *)self identity];
  [(ASTMaterializedConnection *)v12 setIdentity:identity];

  sessionId = [(ASTMaterializedConnectionManager *)self sessionId];
  [(ASTMaterializedConnection *)v12 setSessionId:sessionId];

  [(ASTMaterializedConnection *)v12 setAllowsCellularAccess:accessCopy];
  [(ASTMaterializedConnection *)v12 setDelegate:self];
  [(ASTMaterializedConnection *)v12 setRetryOnNetworkDisconnected:1];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __141__ASTMaterializedConnectionManager_requestSelfServiceSuitesAvailableWithConfigCode_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke;
  v21 = &unk_278CBD360;
  v22 = codeCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = codeCopy;
  [(ASTMaterializedConnection *)v12 setDidReceiveResponse:&v18];
  v17 = [(ASTMaterializedConnectionManager *)self networking:v18];
  [v17 addConnection:v12];
}

void __141__ASTMaterializedConnectionManager_requestSelfServiceSuitesAvailableWithConfigCode_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = [v5 objectForKeyedSubscript:@"suites"];
    v9 = [v8 arrayDroppingNSNullValues];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __141__ASTMaterializedConnectionManager_requestSelfServiceSuitesAvailableWithConfigCode_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_103;
    v13[3] = &unk_278CBD428;
    v14 = v7;
    v10 = v7;
    [v9 enumerateObjectsUsingBlock:v13];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __141__ASTMaterializedConnectionManager_requestSelfServiceSuitesAvailableWithConfigCode_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_1();
    }

    v12 = *(a1 + 40);
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-7000 userInfo:0];
    (*(v12 + 16))(v12, 0, v9);
  }
}

void __141__ASTMaterializedConnectionManager_requestSelfServiceSuitesAvailableWithConfigCode_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_103(uint64_t a1, void *a2)
{
  v12 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v12 objectForKeyedSubscript:@"id"];
    v4 = [v12 objectForKeyedSubscript:@"name"];
    v5 = [v12 objectForKeyedSubscript:@"description"];
    v6 = [v12 objectForKeyedSubscript:@"timeEstimateStr"];
    v7 = [v12 objectForKeyedSubscript:@"assets"];
    v8 = [ASTSuite alloc];
    v9 = [v7 objectForKeyedSubscript:@"primary"];
    v10 = [v7 objectForKeyedSubscript:@"secondary"];
    v11 = [(ASTSuite *)v8 initWithId:v3 suiteNameLocalizedString:v4 suiteDescriptionLocalizedString:v5 estimatedCompletionTimeLocalizedString:v6 primaryAssetLocator:v9 secondaryAssetLocator:v10];

    [*(a1 + 32) addObject:v11];
  }
}

- (void)postSelectSelfServiceSuite:(id)suite withPayloadSigner:(id)signer allowsCellularAccess:(BOOL)access completionHandler:(id)handler
{
  accessCopy = access;
  v26 = *MEMORY[0x277D85DE8];
  suiteCopy = suite;
  handlerCopy = handler;
  signerCopy = signer;
  v13 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[ASTMaterializedConnectionManager postSelectSelfServiceSuite:withPayloadSigner:allowsCellularAccess:completionHandler:]";
    _os_log_impl(&dword_240F3C000, v13, OS_LOG_TYPE_DEFAULT, "[ASTConnectionManager] %s", buf, 0xCu);
  }

  v14 = [[ASTConnectionSelectSelfServiceSuite alloc] initWithSuiteID:suiteCopy];
  identity = [(ASTMaterializedConnectionManager *)self identity];
  [(ASTMaterializedConnection *)v14 setIdentity:identity];

  sessionId = [(ASTMaterializedConnectionManager *)self sessionId];
  [(ASTMaterializedConnection *)v14 setSessionId:sessionId];

  [(ASTMaterializedConnection *)v14 setAllowsCellularAccess:accessCopy];
  [(ASTMaterializedConnection *)v14 setDelegate:self];
  [(ASTMaterializedConnection *)v14 setRetryOnNetworkDisconnected:1];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __120__ASTMaterializedConnectionManager_postSelectSelfServiceSuite_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke;
  v20[3] = &unk_278CBD450;
  selfCopy = self;
  v23 = handlerCopy;
  v21 = suiteCopy;
  v17 = handlerCopy;
  v18 = suiteCopy;
  [(ASTMaterializedConnection *)v14 setDidReceiveResponse:v20];
  [(ASTMaterializedConnection *)v14 signBodyWithPayloadSigner:signerCopy];

  networking = [(ASTMaterializedConnectionManager *)self networking];
  [networking addConnection:v14];
}

void __120__ASTMaterializedConnectionManager_postSelectSelfServiceSuite_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    v8 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __120__ASTMaterializedConnectionManager_postSelectSelfServiceSuite_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_2();
    }

    v9 = *(a1 + 48);
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-7000 userInfo:0];
    v7 = *(v9 + 16);
    goto LABEL_7;
  }

  v6 = [a2 objectForKeyedSubscript:@"diagnosticEventId"];
  if ([*(a1 + 40) isValidUUID:v6])
  {
    v7 = *(*(a1 + 48) + 16);
LABEL_7:
    v7();
    goto LABEL_11;
  }

  v10 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __120__ASTMaterializedConnectionManager_postSelectSelfServiceSuite_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_1();
  }

  v11 = *(a1 + 48);
  v12 = *(a1 + 32);
  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-7000 userInfo:0];
  (*(v11 + 16))(v11, v12, 0, 0, v13);

LABEL_11:
}

- (void)requestSelfServiceSuiteResultsWithDiagnosticEventID:(id)d withPayloadSigner:(id)signer allowsCellularAccess:(BOOL)access completionHandler:(id)handler
{
  accessCopy = access;
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  signerCopy = signer;
  v13 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[ASTMaterializedConnectionManager requestSelfServiceSuiteResultsWithDiagnosticEventID:withPayloadSigner:allowsCellularAccess:completionHandler:]";
    _os_log_impl(&dword_240F3C000, v13, OS_LOG_TYPE_DEFAULT, "[ASTConnectionManager] %s", buf, 0xCu);
  }

  v14 = [[ASTConnectionRetrieveSelfServiceSuiteResults alloc] initWithDiagnosticEventID:dCopy];
  identity = [(ASTMaterializedConnectionManager *)self identity];
  [(ASTMaterializedConnection *)v14 setIdentity:identity];

  sessionId = [(ASTMaterializedConnectionManager *)self sessionId];
  [(ASTMaterializedConnection *)v14 setSessionId:sessionId];

  [(ASTMaterializedConnection *)v14 setAllowsCellularAccess:accessCopy];
  [(ASTMaterializedConnection *)v14 setDelegate:self];
  [(ASTMaterializedConnection *)v14 setRetryOnNetworkDisconnected:1];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __145__ASTMaterializedConnectionManager_requestSelfServiceSuiteResultsWithDiagnosticEventID_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke;
  v23 = &unk_278CBD360;
  v24 = dCopy;
  v25 = handlerCopy;
  v17 = handlerCopy;
  v18 = dCopy;
  [(ASTMaterializedConnection *)v14 setDidReceiveResponse:&v20];
  [(ASTMaterializedConnection *)v14 signBodyWithPayloadSigner:signerCopy, v20, v21, v22, v23];

  networking = [(ASTMaterializedConnectionManager *)self networking];
  [networking addConnection:v14];
}

void __145__ASTMaterializedConnectionManager_requestSelfServiceSuiteResultsWithDiagnosticEventID_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a2 dictionaryDroppingNSNullValues];
    v11 = 0;
    v7 = [[ASTSuiteResult alloc] initWithDictionary:v6 error:&v11];
    v8 = v11;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __145__ASTMaterializedConnectionManager_requestSelfServiceSuiteResultsWithDiagnosticEventID_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_1();
    }

    v10 = *(a1 + 40);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-7000 userInfo:0];
    (*(v10 + 16))(v10, 0, v8);
  }
}

- (void)requestInstructionalPromptDetailsWithInstructionID:(id)d type:(id)type withPayloadSigner:(id)signer language:(id)language locale:(id)locale allowsCellularAccess:(BOOL)access completionHandler:(id)handler
{
  accessCopy = access;
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  typeCopy = type;
  handlerCopy = handler;
  localeCopy = locale;
  languageCopy = language;
  signerCopy = signer;
  v21 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = "[ASTMaterializedConnectionManager requestInstructionalPromptDetailsWithInstructionID:type:withPayloadSigner:language:locale:allowsCellularAccess:completionHandler:]";
    _os_log_impl(&dword_240F3C000, v21, OS_LOG_TYPE_DEFAULT, "[ASTConnectionManager] %s", buf, 0xCu);
  }

  v22 = [[ASTConnectionRetrieveInstructionalPromptDetails alloc] initWithInstructionID:dCopy type:typeCopy language:languageCopy locale:localeCopy];
  identity = [(ASTMaterializedConnectionManager *)self identity];
  [(ASTMaterializedConnection *)v22 setIdentity:identity];

  sessionId = [(ASTMaterializedConnectionManager *)self sessionId];
  [(ASTMaterializedConnection *)v22 setSessionId:sessionId];

  [(ASTMaterializedConnection *)v22 setAllowsCellularAccess:accessCopy];
  [(ASTMaterializedConnection *)v22 setDelegate:self];
  [(ASTMaterializedConnection *)v22 setRetryOnNetworkDisconnected:1];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __165__ASTMaterializedConnectionManager_requestInstructionalPromptDetailsWithInstructionID_type_withPayloadSigner_language_locale_allowsCellularAccess_completionHandler___block_invoke;
  v29[3] = &unk_278CBD478;
  v31 = dCopy;
  v32 = handlerCopy;
  v30 = typeCopy;
  v25 = dCopy;
  v26 = typeCopy;
  v27 = handlerCopy;
  [(ASTMaterializedConnection *)v22 setDidReceiveResponse:v29];
  [(ASTMaterializedConnection *)v22 signBodyWithPayloadSigner:signerCopy];

  networking = [(ASTMaterializedConnectionManager *)self networking];
  [networking addConnection:v22];
}

void __165__ASTMaterializedConnectionManager_requestInstructionalPromptDetailsWithInstructionID_type_withPayloadSigner_language_locale_allowsCellularAccess_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a2 dictionaryDroppingNSNullValues];
    v7 = [v6 objectForKeyedSubscript:@"messages"];
    v8 = [v6 objectForKeyedSubscript:@"images"];
    v9 = v8;
    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = ASTLogHandleForCategory(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __165__ASTMaterializedConnectionManager_requestInstructionalPromptDetailsWithInstructionID_type_withPayloadSigner_language_locale_allowsCellularAccess_completionHandler___block_invoke_cold_1();
      }
    }

    else
    {
      if ([*(a1 + 32) isEqualToString:@"Alert"])
      {
        v24 = v5;
        v16 = 1;
LABEL_18:
        v17 = [v6 objectForKeyedSubscript:@"iconIdentifier"];
        v18 = [v6 objectForKeyedSubscript:@"title"];
        v19 = [v6 objectForKeyedSubscript:@"subtitle"];
        v20 = [v6 objectForKeyedSubscript:@"options"];
        v21 = [v6 objectForKeyedSubscript:@"navigationBarActions"];
        v22 = [[ASTInstructionalPrompt alloc] initWithID:*(a1 + 40) type:v16 iconLocator:v17 localizedTitle:v18 localizedSubtitle:v19 imageLocators:v9 instructions:v7 options:v20];
        [(ASTInstructionalPrompt *)v22 setNavigationBarActions:v21];
        (*(*(a1 + 48) + 16))();

        v5 = v24;
        goto LABEL_19;
      }

      if ([*(a1 + 32) isEqualToString:@"Query"])
      {
        v24 = v5;
        v16 = 0;
        goto LABEL_18;
      }

      v23 = ASTLogHandleForCategory(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __165__ASTMaterializedConnectionManager_requestInstructionalPromptDetailsWithInstructionID_type_withPayloadSigner_language_locale_allowsCellularAccess_completionHandler___block_invoke_cold_2();
      }
    }

    v12 = *(a1 + 48);
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-7000 userInfo:0];
    (*(v12 + 16))(v12, 0, v13);

LABEL_19:
    goto LABEL_20;
  }

  v14 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    __165__ASTMaterializedConnectionManager_requestInstructionalPromptDetailsWithInstructionID_type_withPayloadSigner_language_locale_allowsCellularAccess_completionHandler___block_invoke_cold_3();
  }

  v15 = *(a1 + 48);
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-7000 userInfo:0];
  (*(v15 + 16))(v15, 0, v6);
LABEL_20:
}

- (void)postPrepareDeviceWithIdentities:(id)identities allowsCellularAccess:(BOOL)access completionHandler:(id)handler
{
  accessCopy = access;
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  identitiesCopy = identities;
  v10 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[ASTMaterializedConnectionManager postPrepareDeviceWithIdentities:allowsCellularAccess:completionHandler:]";
    _os_log_impl(&dword_240F3C000, v10, OS_LOG_TYPE_DEFAULT, "[ASTConnectionManager] %s", buf, 0xCu);
  }

  v11 = [[ASTConnectionPrepareDevice alloc] initWithIdentities:identitiesCopy];
  identity = [(ASTMaterializedConnectionManager *)self identity];
  [(ASTMaterializedConnection *)v11 setIdentity:identity];

  sessionId = [(ASTMaterializedConnectionManager *)self sessionId];
  [(ASTMaterializedConnection *)v11 setSessionId:sessionId];

  [(ASTMaterializedConnection *)v11 setAllowsCellularAccess:accessCopy];
  [(ASTMaterializedConnection *)v11 setDelegate:self];
  [(ASTMaterializedConnection *)v11 setRetryOnNetworkDisconnected:1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __107__ASTMaterializedConnectionManager_postPrepareDeviceWithIdentities_allowsCellularAccess_completionHandler___block_invoke;
  v16[3] = &unk_278CBD338;
  v17 = handlerCopy;
  v14 = handlerCopy;
  [(ASTMaterializedConnection *)v11 setDidReceiveResponse:v16];
  networking = [(ASTMaterializedConnectionManager *)self networking];
  [networking addConnection:v11];
}

void __107__ASTMaterializedConnectionManager_postPrepareDeviceWithIdentities_allowsCellularAccess_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v11 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __107__ASTMaterializedConnectionManager_postPrepareDeviceWithIdentities_allowsCellularAccess_completionHandler___block_invoke_cold_2();
    }

    v10 = *(*(a1 + 32) + 16);
    goto LABEL_7;
  }

  v7 = [v5 objectForKeyedSubscript:@"response"];
  v8 = [v7 lowercaseString];
  v9 = [v8 isEqualToString:@"success"];

  if (v9)
  {
    v10 = *(*(a1 + 32) + 16);
LABEL_7:
    v10();
    goto LABEL_11;
  }

  v12 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    __107__ASTMaterializedConnectionManager_postPrepareDeviceWithIdentities_allowsCellularAccess_completionHandler___block_invoke_cold_1();
  }

  v13 = *(a1 + 32);
  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-7000 userInfo:0];
  (*(v13 + 16))(v13, v14);

LABEL_11:
}

- (void)connection:(id)connection connectionStateChanged:(int64_t)changed
{
  connectionCopy = connection;
  if ([connectionCopy conformsToProtocol:&unk_2852DAEB8])
  {
    testId = [connectionCopy testId];
    if (changed == 1)
    {
      request = [connectionCopy request];
      allowsCellularAccess = [request allowsCellularAccess];

      delegate = [(ASTMaterializedConnectionManager *)self delegate];
      [delegate connectionManager:self pausedSendingResultForTest:testId reason:allowsCellularAccess == 0];
    }

    else
    {
      delegate = [(ASTMaterializedConnectionManager *)self delegate];
      [delegate connectionManager:self resumedSendingResultForTest:testId];
    }
  }

  else
  {
    delegate2 = [(ASTMaterializedConnectionManager *)self delegate];
    testId = delegate2;
    if (changed == 1)
    {
      [delegate2 connectionManagerRequestPaused:self];
    }

    else
    {
      [delegate2 connectionManagerRequestResumed:self];
    }
  }
}

- (void)connection:(id)connection didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpected:(int64_t)expected
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = ASTLogHandleForCategory(1);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (expected < 1)
  {
    if (v10)
    {
      v15 = 134218240;
      dataCopy2 = data;
      v17 = 2048;
      sentCopy2 = sent;
      v12 = "bytes sent: %lld, total bytes sent: %lld";
      v13 = v9;
      v14 = 22;
      goto LABEL_6;
    }
  }

  else if (v10)
  {
    v11 = sent / expected;
    v15 = 134218752;
    dataCopy2 = data;
    v17 = 2048;
    sentCopy2 = sent;
    v19 = 2048;
    expectedCopy = expected;
    v21 = 2048;
    v22 = (v11 * 100.0);
    v12 = "bytes sent: %lld, total bytes sent: %lld, expected: %lld, complete: %0.1f%%";
    v13 = v9;
    v14 = 42;
LABEL_6:
    _os_log_impl(&dword_240F3C000, v13, OS_LOG_TYPE_DEFAULT, v12, &v15, v14);
  }
}

- (void)dealloc
{
  networking = [(ASTMaterializedConnectionManager *)self networking];
  [networking invalidate];

  v4.receiver = self;
  v4.super_class = ASTMaterializedConnectionManager;
  [(ASTMaterializedConnectionManager *)&v4 dealloc];
}

- (BOOL)isValidUUID:(id)d
{
  v3 = MEMORY[0x277CCAD78];
  dCopy = d;
  v5 = [[v3 alloc] initWithUUIDString:dCopy];

  return v5 != 0;
}

- (ASTConnectionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __137__ASTMaterializedConnectionManager_postSessionStatusForIdentities_ticket_timeout_allowsCellularAccess_requestQueuedSuiteInfo_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __123__ASTMaterializedConnectionManager_downloadAsset_serverURL_endpoint_destinationFileHandle_allowsCellularAccess_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_240F3C000, v0, v1, "[Asset] <ERROR> %@, %@");
}

void __69__ASTMaterializedConnectionManager_postEnrollAllowingCellularAccess___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __70__ASTMaterializedConnectionManager_postAuthInfo_allowsCellularAccess___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __69__ASTMaterializedConnectionManager_postProfile_allowsCellularAccess___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __69__ASTMaterializedConnectionManager_postRequest_allowsCellularAccess___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __69__ASTMaterializedConnectionManager_postRequest_allowsCellularAccess___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __83__ASTMaterializedConnectionManager_postTestResult_allowsCellularAccess_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __123__ASTMaterializedConnectionManager_postSealableFile_fileSequence_totalFiles_testId_dataId_allowsCellularAccess_completion___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) fileURL];
  v2 = [v1 path];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_240F3C000, v3, v4, "[File Upload] <ERROR> File: %@, Error %@", v5, v6, v7, v8);
}

void __123__ASTMaterializedConnectionManager_postSealableFile_fileSequence_totalFiles_testId_dataId_allowsCellularAccess_completion___block_invoke_cold_2(id *a1)
{
  v1 = [*a1 fileURL];
  v2 = [v1 path];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_240F3C000, v3, v4, "[File Upload] <ERROR> Could not remove file: %@, Error %@", v5, v6, v7, v8);
}

void __128__ASTMaterializedConnectionManager_requestSessionArchiveWithSessionID_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __128__ASTMaterializedConnectionManager_requestSessionArchiveWithSessionID_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __141__ASTMaterializedConnectionManager_requestSelfServiceSuitesAvailableWithConfigCode_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_240F3C000, v0, v1, "[ASTConnectionManager] Self service session failed to retrieve the suites available for config: %@, error: %@");
}

void __120__ASTMaterializedConnectionManager_postSelectSelfServiceSuite_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __120__ASTMaterializedConnectionManager_postSelectSelfServiceSuite_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_240F3C000, v0, v1, "[ASTConnectionManager] Failed to select suite with ID: %@, error %@");
}

void __145__ASTMaterializedConnectionManager_requestSelfServiceSuiteResultsWithDiagnosticEventID_withPayloadSigner_allowsCellularAccess_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_240F3C000, v0, v1, "[ASTConnectionManager] Failed to retrieve suite run results, deid: %@, error %@");
}

void __165__ASTMaterializedConnectionManager_requestInstructionalPromptDetailsWithInstructionID_type_withPayloadSigner_language_locale_allowsCellularAccess_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __165__ASTMaterializedConnectionManager_requestInstructionalPromptDetailsWithInstructionID_type_withPayloadSigner_language_locale_allowsCellularAccess_completionHandler___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __107__ASTMaterializedConnectionManager_postPrepareDeviceWithIdentities_allowsCellularAccess_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __107__ASTMaterializedConnectionManager_postPrepareDeviceWithIdentities_allowsCellularAccess_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end