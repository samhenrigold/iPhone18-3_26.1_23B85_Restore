@interface SAURLSizer
- (SAURLSizer)init;
- (void)callHandlerWithError:(id)error;
- (void)invalidateConnection;
- (void)startObservingURLs:(id)ls updateHandler:(id)handler;
- (void)stopObserving;
@end

@implementation SAURLSizer

- (SAURLSizer)init
{
  v3.receiver = self;
  v3.super_class = SAURLSizer;
  result = [(SAURLSizer *)&v3 init];
  if (result)
  {
    *&result->_alreadyObservingURLs = 0;
  }

  return result;
}

- (void)invalidateConnection
{
  [(SADaemonXPC *)self->_xpcOut invalidate];
  xpcOut = self->_xpcOut;
  self->_xpcOut = 0;
}

- (void)callHandlerWithError:(id)error
{
  errorCopy = error;
  sarc = self->_sarc;
  if (sarc && !self->_alreadyReportedXPCError)
  {
    self->_alreadyReportedXPCError = 1;
    [(SAReplyController *)sarc callURLSizerHandlerWithError:errorCopy];
    v6 = self->_sarc;
    self->_sarc = 0;

    [(SAURLSizer *)self invalidateConnection];
  }

  MEMORY[0x2821F96F8]();
}

- (void)startObservingURLs:(id)ls updateHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  handlerCopy = handler;
  if (handlerCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_alreadyObservingURLs)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s can't be called more than once per URLSizer instance", "-[SAURLSizer startObservingURLs:updateHandler:]"];
      v10 = SALog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        -[SAURLSizer startObservingURLs:updateHandler:].cold.1([v9 UTF8String], buf, v10);
      }

      v11 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA470];
      v38 = v9;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v13 = [v11 errorWithDomain:*MEMORY[0x277CCA5B8] code:17 userInfo:v12];

      handlerCopy[2](handlerCopy, 0, v13);
    }

    else
    {
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __47__SAURLSizer_startObservingURLs_updateHandler___block_invoke;
      v36[3] = &unk_279CD6CF8;
      v36[4] = selfCopy;
      v21 = [SADaemonXPC newWithInvalidationHandler:v36];
      xpcOut = selfCopy->_xpcOut;
      selfCopy->_xpcOut = v21;

      v23 = objc_opt_new();
      sarc = selfCopy->_sarc;
      selfCopy->_sarc = v23;

      [(SAReplyController *)selfCopy->_sarc setUrlSizerUpdateHandler:handlerCopy];
      selfCopy->_alreadyReportedXPCError = 0;
      v25 = selfCopy->_xpcOut;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __47__SAURLSizer_startObservingURLs_updateHandler___block_invoke_2;
      v34[3] = &unk_279CD6D20;
      v34[4] = selfCopy;
      v35 = 0;
      v26 = [(SADaemonXPC *)v25 synchronousRemoteObjectProxyWithErrorHandler:v34];
      v27 = selfCopy->_sarc;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __47__SAURLSizer_startObservingURLs_updateHandler___block_invoke_3;
      v33[3] = &unk_279CD6D48;
      v33[4] = selfCopy;
      [v26 addURLSizerHandler:v27 withURLs:lsCopy reply:v33];

      selfCopy->_alreadyObservingURLs = 1;
      v28 = selfCopy->_xpcOut;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __47__SAURLSizer_startObservingURLs_updateHandler___block_invoke_4;
      v32[3] = &unk_279CD6CF8;
      v32[4] = selfCopy;
      v29 = [(SADaemonXPC *)v28 remoteObjectProxyWithErrorHandler:v32];
      sizerID = selfCopy->_sizerID;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __47__SAURLSizer_startObservingURLs_updateHandler___block_invoke_5;
      v31[3] = &unk_279CD6CF8;
      v31[4] = selfCopy;
      [v29 runURLSizerWithID:sizerID reply:v31];

      v9 = 0;
      v13 = 0;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v13 = SALog(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SAURLSizer *)v13 startObservingURLs:v14 updateHandler:v15, v16, v17, v18, v19, v20];
    }
  }
}

void __47__SAURLSizer_startObservingURLs_updateHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 16) setControllerID:v3];
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = v3;
}

void __47__SAURLSizer_startObservingURLs_updateHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = SALog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __47__SAURLSizer_startObservingURLs_updateHandler___block_invoke_5_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    [*(*(a1 + 32) + 16) callURLSizerHandlerWithError:v4];
  }
}

- (void)stopObserving
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SAURLSizer stopObserving]";
  OUTLINED_FUNCTION_0_1(&dword_26B26B000, self, a3, "%s handler is not registered", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __27__SAURLSizer_stopObserving__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = SALog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __27__SAURLSizer_stopObserving__block_invoke_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    [*(a1 + 32) callHandlerWithError:v4];
  }
}

- (void)startObservingURLs:(os_log_t)log updateHandler:.cold.1(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_26B26B000, log, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
}

- (void)startObservingURLs:(uint64_t)a3 updateHandler:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SAURLSizer startObservingURLs:updateHandler:]";
  OUTLINED_FUNCTION_0_1(&dword_26B26B000, a1, a3, "%s: updateHandler is nil", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __47__SAURLSizer_startObservingURLs_updateHandler___block_invoke_5_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_1(&dword_26B26B000, a2, a3, "runURLSizerWithID failed with error %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __27__SAURLSizer_stopObserving__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_1(&dword_26B26B000, a2, a3, "stopObserving error %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end