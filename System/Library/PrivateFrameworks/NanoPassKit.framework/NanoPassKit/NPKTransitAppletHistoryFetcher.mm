@interface NPKTransitAppletHistoryFetcher
- (NPKTransitAppletHistoryFetcher)initWithCallbackQueue:(id)queue;
- (NPKTransitAppletHistoryFetcherDelegate)delegate;
- (void)_handleActiveSecureElementManagerSession:(id)session;
- (void)_handleSecureElementSessionFailureWithError:(id)error;
- (void)requestTransitHistoryFetch;
- (void)setAIDToFetch:(id)fetch;
@end

@implementation NPKTransitAppletHistoryFetcher

- (NPKTransitAppletHistoryFetcher)initWithCallbackQueue:(id)queue
{
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = NPKTransitAppletHistoryFetcher;
  v6 = [(NPKTransitAppletHistoryFetcher *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callbackQueue, queue);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v9 = dispatch_queue_create("NPKTransitAppletHistoryFetcher", v8);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v9;
  }

  return v7;
}

- (void)setAIDToFetch:(id)fetch
{
  fetchCopy = fetch;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__NPKTransitAppletHistoryFetcher_setAIDToFetch___block_invoke;
  v7[3] = &unk_2799454E0;
  v7[4] = self;
  v8 = fetchCopy;
  v6 = fetchCopy;
  dispatch_async(internalQueue, v7);
}

void __48__NPKTransitAppletHistoryFetcher_setAIDToFetch___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v3 = pk_Payment_log(v2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: History fetcher set AID to %@", &v8, 0xCu);
    }
  }
}

- (void)requestTransitHistoryFetch
{
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: History fetcher received fetch request", buf, 2u);
    }
  }

  internalQueue = [(NPKTransitAppletHistoryFetcher *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__NPKTransitAppletHistoryFetcher_requestTransitHistoryFetch__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __60__NPKTransitAppletHistoryFetcher_requestTransitHistoryFetch__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingSessionHandle];

  if (v2)
  {
    v4 = pk_Payment_log(v3);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (!v5)
    {
      return;
    }

    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: History fetcher already has an outstanding session handle; not creating a new session.", v9, 2u);
    }
  }

  else
  {
    v7 = [PKGetClassNFHardwareManager() sharedHardwareManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__NPKTransitAppletHistoryFetcher_requestTransitHistoryFetch__block_invoke_2;
    v10[3] = &unk_279946D48;
    v10[4] = *(a1 + 32);
    v8 = [v7 startSecureElementManagerSession:v10];
    [*(a1 + 32) setPendingSessionHandle:v8];
  }
}

void __60__NPKTransitAppletHistoryFetcher_requestTransitHistoryFetch__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__NPKTransitAppletHistoryFetcher_requestTransitHistoryFetch__block_invoke_3;
  block[3] = &unk_279945880;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __60__NPKTransitAppletHistoryFetcher_requestTransitHistoryFetch__block_invoke_3(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 _handleActiveSecureElementManagerSession:?];
    [*(a1 + 32) endSession];
  }

  else
  {
    [v2 _handleSecureElementSessionFailureWithError:*(a1 + 48)];
  }

  v4 = *(a1 + 40);

  return [v4 setPendingSessionHandle:0];
}

- (void)_handleActiveSecureElementManagerSession:(id)session
{
  v46 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  internalQueue = [(NPKTransitAppletHistoryFetcher *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v7 = pk_Payment_log(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Payment_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      aidToFetch = self->_aidToFetch;
      *buf = 138412546;
      v41 = aidToFetch;
      v42 = 2112;
      v43 = sessionCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: History fetcher (AID %@) got secure element manager session: %@", buf, 0x16u);
    }
  }

  v12 = self->_aidToFetch;
  v13 = [(NSString *)sessionCopy appletWithIdentifier:v12];
  v14 = v13;
  if (v13)
  {
    if ([v13 isTypeF] && objc_msgSend(v14, "supportedTypeFSystem") == 1)
    {
      v39 = 0;
      v15 = &v39;
      v16 = [(NSString *)sessionCopy felicaAppletState:v14 error:&v39];
      v17 = 0x277D37ED8;
    }

    else
    {
      v38 = 0;
      v15 = &v38;
      v16 = [(NSString *)sessionCopy transitAppletState:v14 error:&v38];
      v17 = 0x277D38300;
    }

    v18 = *v15;
    v19 = [objc_alloc(*v17) initWithDictionary:v16 source:1];

    if (v18)
    {
      v21 = pk_General_log(v20);
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

      if (v22)
      {
        v24 = pk_General_log(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v41 = v14;
          v42 = 2112;
          v43 = v12;
          v44 = 2112;
          v45 = v18;
          _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_ERROR, "Error: Fail to creat Transit Applet history with Applet:%@ AID:%@ with error:%@", buf, 0x20u);
        }
      }
    }

LABEL_19:

    goto LABEL_20;
  }

  v25 = pk_General_log(0);
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

  if (v26)
  {
    v18 = pk_General_log(v27);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v41 = v12;
      v42 = 2112;
      v43 = sessionCopy;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: Could not fetch Applet with ID:%@ from session:%@", buf, 0x16u);
    }

    v19 = 0;
    goto LABEL_19;
  }

  v19 = 0;
LABEL_20:
  v28 = pk_Payment_log(v27);
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

  if (v29)
  {
    v31 = pk_Payment_log(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v41 = v19;
      v42 = 2112;
      v43 = v14;
      _os_log_impl(&dword_25B300000, v31, OS_LOG_TYPE_DEFAULT, "Notice: History fetcher got applet history: %@ for applet: %@", buf, 0x16u);
    }
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__NPKTransitAppletHistoryFetcher__handleActiveSecureElementManagerSession___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v36 = v19;
  v37 = v12;
  v33 = v12;
  v34 = v19;
  dispatch_async(callbackQueue, block);
}

void __75__NPKTransitAppletHistoryFetcher__handleActiveSecureElementManagerSession___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transitAppletHistoryFetcher:*(a1 + 32) gotTransitAppletHistory:*(a1 + 40) forAppletWithAID:*(a1 + 48)];
}

- (void)_handleSecureElementSessionFailureWithError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  internalQueue = [(NPKTransitAppletHistoryFetcher *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v7 = pk_Payment_log(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

  if (v8)
  {
    v10 = pk_Payment_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = errorCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: History fetcher failed to start secure element manager session: %@", &v11, 0xCu);
    }
  }
}

- (NPKTransitAppletHistoryFetcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end