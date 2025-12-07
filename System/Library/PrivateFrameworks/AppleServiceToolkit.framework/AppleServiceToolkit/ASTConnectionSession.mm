@interface ASTConnectionSession
- (ASTConnectionSession)initWithIdentities:(id)identities ticket:(id)ticket requestQueuedSuiteInfo:(BOOL)info;
- (void)_addTokenToHeaderField;
@end

@implementation ASTConnectionSession

- (ASTConnectionSession)initWithIdentities:(id)identities ticket:(id)ticket requestQueuedSuiteInfo:(BOOL)info
{
  infoCopy = info;
  v32[1] = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  ticketCopy = ticket;
  v30.receiver = self;
  v30.super_class = ASTConnectionSession;
  v10 = [(ASTMaterializedConnection *)&v30 init];
  v11 = v10;
  if (v10)
  {
    v26 = v10;
    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([identitiesCopy count])
    {
      v12 = 0;
      do
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v14 = [identitiesCopy objectAtIndexedSubscript:v12];
        json = [v14 json];
        [dictionary setObject:json forKeyedSubscript:@"deviceIdentifiers"];

        v16 = [MEMORY[0x277CCABB0] numberWithInt:++v12];
        [dictionary setObject:v16 forKeyedSubscript:@"deviceIndex"];

        v17 = MEMORY[0x277CCABB0];
        v18 = +[ASTEnvironment currentEnvironment];
        v19 = [v17 numberWithBool:{objc_msgSend(v18, "isDiagnosticsMode")}];
        [dictionary setObject:v19 forKeyedSubscript:@"isDiagnosticMode"];

        v20 = [MEMORY[0x277CCABB0] numberWithBool:{+[ASTEnvironment isServicePart](ASTEnvironment, "isServicePart")}];
        [dictionary setObject:v20 forKeyedSubscript:@"isServicePart"];

        if (ticketCopy && ([ticketCopy isEqualToString:@"IN_CURRENT_SESSION"] & 1) == 0)
        {
          [dictionary setObject:ticketCopy forKeyedSubscript:@"ticketNumber"];
        }

        if (infoCopy)
        {
          [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"queuedSuiteInfo"];
        }

        [v28 addObject:dictionary];
      }

      while ([identitiesCopy count] > v12);
    }

    v31 = @"devices";
    v32[0] = v28;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:{1, v26}];
    v29 = 0;
    v22 = [ASTEncodingUtilities jsonSerializeObject:v21 error:&v29];
    v23 = v29;

    if (v22)
    {
      v11 = v27;
      [(ASTMaterializedConnection *)v27 addBody:v22 gzip:+[ASTConnectionUtilities isGzipEnabled]];
    }

    else
    {
      v24 = ASTLogHandleForCategory(0);
      v11 = v27;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [ASTConnectionSession initWithIdentities:v23 ticket:v24 requestQueuedSuiteInfo:?];
      }
    }

    [(ASTConnectionSession *)v11 _addTokenToHeaderField];
  }

  return v11;
}

- (void)_addTokenToHeaderField
{
  v16 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CF97E8] isCheckerBoardActive])
  {
    proxyServer = [MEMORY[0x277CF97E8] proxyServer];
    v4 = proxyServer;
    if (proxyServer)
    {
      server = [proxyServer server];
      if (server)
      {
        v6 = server;
        port = [v4 port];
        if (port)
        {
          v8 = port;
          token = [v4 token];

          if (token)
          {
            v10 = ASTLogHandleForCategory(0);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              token2 = [v4 token];
              v14 = 138412290;
              v15 = token2;
              _os_log_impl(&dword_240F3C000, v10, OS_LOG_TYPE_DEFAULT, "Set token for session's header: %@", &v14, 0xCu);
            }

            request = [(ASTMaterializedConnection *)self request];
            token3 = [v4 token];
            [request setValue:token3 forHTTPHeaderField:@"Token"];
          }
        }

        else
        {
        }
      }
    }
  }
}

- (void)initWithIdentities:(uint64_t)a1 ticket:(NSObject *)a2 requestQueuedSuiteInfo:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_240F3C000, a2, OS_LOG_TYPE_ERROR, "JSON serialization failed with error: %@", &v2, 0xCu);
}

@end