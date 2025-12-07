@interface NDNewsServiceConnection
- (NDNewsServiceClient)client;
- (NDNewsServiceConnection)initWithClient:(id)client;
- (void)_establishConnectionIfNeededWithCompletion:(id)completion;
- (void)_unsafeEstablishConnectionIfNeededWithCompletion:(id)completion;
- (void)dealloc;
- (void)fetchLatestResultsWithParameters:(id)parameters completion:(id)completion;
- (void)fetchModuleDescriptorsWithCompletion:(id)completion;
- (void)fetchPlaceholderResultsWithOperationInfo:(id)info syncCompletion:(id)completion;
- (void)markAnalyticsElement:(id)element asReadAtDate:(id)date withCompletion:(id)completion;
- (void)markAnalyticsElements:(id)elements asSeenAtDate:(id)date withCompletion:(id)completion;
- (void)serviceHasNewTodayResults;
@end

@implementation NDNewsServiceConnection

- (NDNewsServiceConnection)initWithClient:(id)client
{
  clientCopy = client;
  if (!clientCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsServiceConnection initWithClient:];
  }

  v10.receiver = self;
  v10.super_class = NDNewsServiceConnection;
  v5 = [(NDNewsServiceConnection *)&v10 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.newsdaemon.accessQueue", v6);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v7;

    objc_storeWeak(&v5->_client, clientCopy);
  }

  return v5;
}

- (void)dealloc
{
  connection = [(NDNewsServiceConnection *)self connection];
  [connection invalidate];

  v4.receiver = self;
  v4.super_class = NDNewsServiceConnection;
  [(NDNewsServiceConnection *)&v4 dealloc];
}

- (void)serviceHasNewTodayResults
{
  client = [(NDNewsServiceConnection *)self client];
  [client serviceHasNewTodayResults];
}

- (void)fetchModuleDescriptorsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsServiceConnection fetchModuleDescriptorsWithCompletion:];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__NDNewsServiceConnection_fetchModuleDescriptorsWithCompletion___block_invoke;
  v6[3] = &unk_27997C188;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(NDNewsServiceConnection *)self _establishConnectionIfNeededWithCompletion:v6];
}

void __64__NDNewsServiceConnection_fetchModuleDescriptorsWithCompletion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NDSharedClientLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[NDNewsServiceConnection fetchModuleDescriptorsWithCompletion:]_block_invoke";
    _os_log_impl(&dword_25BE24000, v2, OS_LOG_TYPE_INFO, "Calling %s on daemon", buf, 0xCu);
  }

  v3 = [*(a1 + 32) connection];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__NDNewsServiceConnection_fetchModuleDescriptorsWithCompletion___block_invoke_61;
  v5[3] = &unk_27997C160;
  v6 = *(a1 + 40);
  v4 = [v3 remoteObjectProxyWithErrorHandler:v5];

  [v4 fetchModuleDescriptorsWithCompletion:*(a1 + 40)];
}

- (void)fetchLatestResultsWithParameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  if (!parametersCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsServiceConnection fetchLatestResultsWithParameters:completion:];
    if (completionCopy)
    {
      goto LABEL_6;
    }
  }

  else if (completionCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsServiceConnection fetchLatestResultsWithParameters:completion:];
  }

LABEL_6:
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__NDNewsServiceConnection_fetchLatestResultsWithParameters_completion___block_invoke;
  v10[3] = &unk_27997C1B0;
  v11 = parametersCopy;
  v12 = completionCopy;
  v10[4] = self;
  v8 = parametersCopy;
  v9 = completionCopy;
  [(NDNewsServiceConnection *)self _establishConnectionIfNeededWithCompletion:v10];
}

void __71__NDNewsServiceConnection_fetchLatestResultsWithParameters_completion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NDSharedClientLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[NDNewsServiceConnection fetchLatestResultsWithParameters:completion:]_block_invoke";
    _os_log_impl(&dword_25BE24000, v2, OS_LOG_TYPE_INFO, "Calling %s on daemon", buf, 0xCu);
  }

  v3 = [*(a1 + 32) connection];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__NDNewsServiceConnection_fetchLatestResultsWithParameters_completion___block_invoke_65;
  v5[3] = &unk_27997C160;
  v6 = *(a1 + 48);
  v4 = [v3 remoteObjectProxyWithErrorHandler:v5];

  [v4 fetchLatestResultsWithParameters:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)markAnalyticsElements:(id)elements asSeenAtDate:(id)date withCompletion:(id)completion
{
  elementsCopy = elements;
  dateCopy = date;
  completionCopy = completion;
  if (!elementsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsServiceConnection markAnalyticsElements:asSeenAtDate:withCompletion:];
    if (dateCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dateCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsServiceConnection markAnalyticsElements:asSeenAtDate:withCompletion:];
  }

LABEL_6:
  if ([elementsCopy count])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __77__NDNewsServiceConnection_markAnalyticsElements_asSeenAtDate_withCompletion___block_invoke;
    v11[3] = &unk_27997C1D8;
    v11[4] = self;
    v14 = completionCopy;
    v12 = elementsCopy;
    v13 = dateCopy;
    [(NDNewsServiceConnection *)self _establishConnectionIfNeededWithCompletion:v11];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __77__NDNewsServiceConnection_markAnalyticsElements_asSeenAtDate_withCompletion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NDSharedClientLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[NDNewsServiceConnection markAnalyticsElements:asSeenAtDate:withCompletion:]_block_invoke";
    _os_log_impl(&dword_25BE24000, v2, OS_LOG_TYPE_INFO, "Calling %s on daemon", &v7, 0xCu);
  }

  v3 = [*(a1 + 32) connection];
  v4 = [v3 remoteObjectProxyWithErrorHandler:*(a1 + 56)];

  if (*(a1 + 56))
  {
    v5 = *(a1 + 56);
  }

  else
  {
    v5 = &__block_literal_global_3;
  }

  v6 = _Block_copy(v5);
  [v4 markAnalyticsElements:*(a1 + 40) asSeenAtDate:*(a1 + 48) withCompletion:v6];
}

- (void)markAnalyticsElement:(id)element asReadAtDate:(id)date withCompletion:(id)completion
{
  elementCopy = element;
  dateCopy = date;
  completionCopy = completion;
  if (!elementCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsServiceConnection markAnalyticsElement:asReadAtDate:withCompletion:];
    if (dateCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dateCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsServiceConnection markAnalyticsElement:asReadAtDate:withCompletion:];
  }

LABEL_6:
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__NDNewsServiceConnection_markAnalyticsElement_asReadAtDate_withCompletion___block_invoke;
  v14[3] = &unk_27997C1D8;
  v14[4] = self;
  v15 = elementCopy;
  v16 = dateCopy;
  v17 = completionCopy;
  v11 = dateCopy;
  v12 = elementCopy;
  v13 = completionCopy;
  [(NDNewsServiceConnection *)self _establishConnectionIfNeededWithCompletion:v14];
}

void __76__NDNewsServiceConnection_markAnalyticsElement_asReadAtDate_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v5 = [v2 remoteObjectProxyWithErrorHandler:*(a1 + 56)];

  if (*(a1 + 56))
  {
    v3 = *(a1 + 56);
  }

  else
  {
    v3 = &__block_literal_global_71;
  }

  v4 = _Block_copy(v3);
  [v5 markAnalyticsElement:*(a1 + 40) asReadAtDate:*(a1 + 48) withCompletion:v4];
}

- (void)fetchPlaceholderResultsWithOperationInfo:(id)info syncCompletion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  if (!infoCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsServiceConnection fetchPlaceholderResultsWithOperationInfo:syncCompletion:];
    if (completionCopy)
    {
      goto LABEL_6;
    }
  }

  else if (completionCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDNewsServiceConnection fetchPlaceholderResultsWithOperationInfo:syncCompletion:];
  }

LABEL_6:
  accessQueue = [(NDNewsServiceConnection *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__NDNewsServiceConnection_fetchPlaceholderResultsWithOperationInfo_syncCompletion___block_invoke;
  block[3] = &unk_27997C1B0;
  v12 = infoCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = infoCopy;
  v10 = completionCopy;
  dispatch_sync(accessQueue, block);
}

void __83__NDNewsServiceConnection_fetchPlaceholderResultsWithOperationInfo_syncCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __83__NDNewsServiceConnection_fetchPlaceholderResultsWithOperationInfo_syncCompletion___block_invoke_2;
  v3[3] = &unk_27997C1B0;
  v3[4] = v2;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 _unsafeEstablishConnectionIfNeededWithCompletion:v3];
}

void __83__NDNewsServiceConnection_fetchPlaceholderResultsWithOperationInfo_syncCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __83__NDNewsServiceConnection_fetchPlaceholderResultsWithOperationInfo_syncCompletion___block_invoke_3;
  v4[3] = &unk_27997C160;
  v5 = *(a1 + 48);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v4];

  [v3 fetchPlaceholderResultsWithOperationInfo:*(a1 + 40) syncCompletion:*(a1 + 48)];
}

- (void)_establishConnectionIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = [(NDNewsServiceConnection *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__NDNewsServiceConnection__establishConnectionIfNeededWithCompletion___block_invoke;
  v7[3] = &unk_27997C188;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(accessQueue, v7);
}

- (void)_unsafeEstablishConnectionIfNeededWithCompletion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = completionCopy;
  if (!completionCopy)
  {
    completionCopy = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (completionCopy)
    {
      [NDNewsServiceConnection _unsafeEstablishConnectionIfNeededWithCompletion:];
    }
  }

  v6 = NDSharedClientLog(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v32 = "[NDNewsServiceConnection _unsafeEstablishConnectionIfNeededWithCompletion:]";
    _os_log_impl(&dword_25BE24000, v6, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  connection = [(NDNewsServiceConnection *)self connection];
  v8 = connection == 0;

  if (v8)
  {
    ++_unsafeEstablishConnectionIfNeededWithCompletion__connectionIdentifier;
    v10 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.newsd.today" options:0];
    v11 = NDSharedClientLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v32 = _unsafeEstablishConnectionIfNeededWithCompletion__connectionIdentifier;
      _os_log_impl(&dword_25BE24000, v11, OS_LOG_TYPE_INFO, "Created connection %ld to newsd for NewsToday mach service", buf, 0xCu);
    }

    [v10 setInterruptionHandler:&__block_literal_global_76];
    objc_initWeak(buf, self);
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __76__NDNewsServiceConnection__unsafeEstablishConnectionIfNeededWithCompletion___block_invoke_77;
    v28 = &unk_27997C228;
    selfCopy = self;
    objc_copyWeak(&v30, buf);
    [v10 setInvalidationHandler:&v25];
    v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286D7EAA0];
    [v10 setRemoteObjectInterface:v12];
    v13 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286D7E910];
    [v10 setExportedInterface:v13];

    remoteObjectInterface = [v10 remoteObjectInterface];
    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0, v25, v26, v27, v28, selfCopy}];
    [remoteObjectInterface setClasses:v17 forSelector:sel_fetchLatestResultsWithParameters_completion_ argumentIndex:1 ofReply:1];

    remoteObjectInterface2 = [v10 remoteObjectInterface];
    v19 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    [remoteObjectInterface2 setClasses:v19 forSelector:sel_fetchLatestResultsWithParameters_completion_ argumentIndex:2 ofReply:1];

    remoteObjectInterface3 = [v10 remoteObjectInterface];
    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    [remoteObjectInterface3 setClasses:v23 forSelector:sel_fetchModuleDescriptorsWithCompletion_ argumentIndex:0 ofReply:1];

    v24 = objc_alloc_init(NDNewsServiceConnectionClientProxy);
    [(NDNewsServiceConnectionClientProxy *)v24 setClient:self];
    [v10 setExportedObject:v24];
    [v10 resume];
    [(NDNewsServiceConnection *)self setConnection:v10];

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  else
  {
    v10 = NDSharedClientLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v32 = _unsafeEstablishConnectionIfNeededWithCompletion__connectionIdentifier;
      _os_log_impl(&dword_25BE24000, v10, OS_LOG_TYPE_INFO, "Reusing connection %ld", buf, 0xCu);
    }
  }

  if (v5)
  {
    v5[2](v5);
  }
}

void __76__NDNewsServiceConnection__unsafeEstablishConnectionIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = NDSharedClientLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v2 = 134217984;
    v3 = _unsafeEstablishConnectionIfNeededWithCompletion__connectionIdentifier;
    _os_log_impl(&dword_25BE24000, v1, OS_LOG_TYPE_INFO, "Connection %ld was interrupted", &v2, 0xCu);
  }
}

void __76__NDNewsServiceConnection__unsafeEstablishConnectionIfNeededWithCompletion___block_invoke_77(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = NDSharedClientLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v7 = _unsafeEstablishConnectionIfNeededWithCompletion__connectionIdentifier;
    _os_log_impl(&dword_25BE24000, v2, OS_LOG_TYPE_INFO, "Connection %ld was invalidated", buf, 0xCu);
  }

  v3 = [*(a1 + 32) accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__NDNewsServiceConnection__unsafeEstablishConnectionIfNeededWithCompletion___block_invoke_78;
  block[3] = &unk_27997C200;
  objc_copyWeak(&v5, (a1 + 40));
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
}

void __76__NDNewsServiceConnection__unsafeEstablishConnectionIfNeededWithCompletion___block_invoke_78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnection:0];
}

- (NDNewsServiceClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

- (void)initWithClient:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "client"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)fetchModuleDescriptorsWithCompletion:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "completion"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)fetchLatestResultsWithParameters:completion:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "parameters"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)fetchLatestResultsWithParameters:completion:.cold.2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "completion"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)markAnalyticsElements:asSeenAtDate:withCompletion:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "headlineAnalyticsElements"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)markAnalyticsElements:asSeenAtDate:withCompletion:.cold.2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "date"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)markAnalyticsElement:asReadAtDate:withCompletion:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "analyticsElement"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)markAnalyticsElement:asReadAtDate:withCompletion:.cold.2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "date"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)fetchPlaceholderResultsWithOperationInfo:syncCompletion:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "operationInfo"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)fetchPlaceholderResultsWithOperationInfo:syncCompletion:.cold.2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "syncCompletion"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)_unsafeEstablishConnectionIfNeededWithCompletion:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "completion"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25BE24000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

@end