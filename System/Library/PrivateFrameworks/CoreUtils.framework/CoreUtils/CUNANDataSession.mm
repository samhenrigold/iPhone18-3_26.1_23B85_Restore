@interface CUNANDataSession
- ($4FF8D77539A8BD95DCE0A545902499A9)peerAddress;
- (BOOL)_dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info error:(id *)error;
- (CUNANDataSession)init;
- (NSString)peerAddressString;
- (NSString)peerEndpointString;
- (WiFiAwareDataSessionPairingDelegate)wfaPairingDelegate;
- (id)descriptionWithLevel:(int)level;
- (void)_activateWithCompletion:(id)completion;
- (void)_invalidate;
- (void)_invalidated;
- (void)_pairingRequestStartedForDataSession:(id)session pinCodeInputCompletionHandler:(id)handler;
- (void)_terminateServerDataSession;
- (void)activateWithCompletion:(id)completion;
- (void)dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info;
- (void)dataSession:(id)session failedToStartWithError:(int64_t)error;
- (void)dataSession:(id)session terminatedWithReason:(int64_t)reason;
- (void)dataSessionRequestStarted:(id)started;
- (void)generateStatisticsReportWithCompletionHandler:(id)handler;
- (void)invalidate;
- (void)pairingRequestStartedForDataSession:(id)session pinCodeInputCompletionHandler:(id)handler;
- (void)reportIssue:(id)issue;
- (void)setPeerAddress:(id *)address;
- (void)setPeerEndpoint:(id)endpoint;
- (void)tryPairingPassword:(id)password;
- (void)updateLinkStatus:(int)status;
@end

@implementation CUNANDataSession

- (WiFiAwareDataSessionPairingDelegate)wfaPairingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_wfaPairingDelegate);

  return WeakRetained;
}

- (void)setPeerAddress:(id *)address
{
  var0 = address->var0;
  *(&self->_peerAddress.v6.sin6_addr + 4) = *(&address->var2.sin6_addr + 4);
  self->_peerAddress.sa = var0;
}

- ($4FF8D77539A8BD95DCE0A545902499A9)peerAddress
{
  retstr->var0 = *(&self[6].var2.sin6_addr + 8);
  *(&retstr->var2.sin6_addr + 4) = self[7].var0;
  return self;
}

- (void)_pairingRequestStartedForDataSession:(id)session pinCodeInputCompletionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  sessionCopy = session;
  v8 = [[CUNANPairingPromptInfo alloc] initWithDataSession:sessionCopy];

  v9 = logger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "";
    if (!self->_pairingPromptHandler)
    {
      v10 = "(no handler)";
    }

    v13 = 138412546;
    v14 = v8;
    v15 = 2080;
    v16 = v10;
    _os_log_impl(&dword_191EAF000, v9, OS_LOG_TYPE_DEFAULT, "PairingPrompt: %@ %s", &v13, 0x16u);
  }

  if (self->_pairingPromptHandler)
  {
    v11 = _Block_copy(handlerCopy);
    pinCodeInputCompletionHandler = self->_pinCodeInputCompletionHandler;
    self->_pinCodeInputCompletionHandler = v11;

    (*(self->_pairingPromptHandler + 2))();
  }
}

- (void)pairingRequestStartedForDataSession:(id)session pinCodeInputCompletionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__CUNANDataSession_pairingRequestStartedForDataSession_pinCodeInputCompletionHandler___block_invoke;
  block[3] = &unk_1E73A4BD8;
  block[4] = self;
  v12 = sessionCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = sessionCopy;
  dispatch_async(dispatchQueue, block);
}

void *__86__CUNANDataSession_pairingRequestStartedForDataSession_pinCodeInputCompletionHandler___block_invoke(void *a1)
{
  result = a1[4];
  if (result[15])
  {
    return [result _pairingRequestStartedForDataSession:a1[5] pinCodeInputCompletionHandler:a1[6]];
  }

  return result;
}

- (void)dataSession:(id)session terminatedWithReason:(int64_t)reason
{
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__CUNANDataSession_dataSession_terminatedWithReason___block_invoke;
  v5[3] = &unk_1E73A4340;
  v5[4] = self;
  v5[5] = reason;
  dispatch_async(dispatchQueue, v5);
}

void __53__CUNANDataSession_dataSession_terminatedWithReason___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 120))
  {
    v2 = (*(a1 + 40) + 313370);
    v3 = logger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(*(a1 + 32) + 96) identifier];
      v12 = NSPrintF("%#m", v5, v6, v7, v8, v9, v10, v11, v2);
      *buf = 138412546;
      v35 = v4;
      v36 = 2112;
      v37 = v12;
      _os_log_impl(&dword_191EAF000, v3, OS_LOG_TYPE_DEFAULT, "WFA DataSession terminated: %@, %@", buf, 0x16u);
    }

    v19 = _Block_copy(*(*(a1 + 32) + 104));
    if (v19)
    {
      v20 = NSErrorWithOSStatusF(v2, "DataSession terminated", v13, v14, v15, v16, v17, v18, v33);
      v19[2](v19, v20);
    }

    v21 = _Block_copy(*(*(a1 + 32) + 8));
    v22 = *(a1 + 32);
    v23 = *(v22 + 8);
    *(v22 + 8) = 0;

    if (v21)
    {
      v30 = NSErrorWithOSStatusF(v2, "DataSession terminated", v24, v25, v26, v27, v28, v29, v33);
      v21[2](v21, v30);
    }

    v31 = *(a1 + 32);
    v32 = *(v31 + 120);
    *(v31 + 120) = 0;

    [*(a1 + 32) _invalidated];
  }
}

- (BOOL)_dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info error:(id *)error
{
  sessionCopy = session;
  infoCopy = info;
  ipv6LinkLocalAddress = [address ipv6LinkLocalAddress];
  v13 = [ipv6LinkLocalAddress length];
  if (v13 == 16)
  {
    *&self->_peerAddress.v6.sin6_addr.__u6_addr16[1] = 0;
    *&self->_peerAddress.v4.sin_port = 0;
    HIWORD(self->_peerAddress.v6.sin6_scope_id) = 0;
    *(&self->_peerAddress.v6.sin6_addr.__u6_addr32[2] + 2) = 0;
    *&self->_peerAddress.sa.sa_len = 7708;
    self->_peerAddress.v6.sin6_addr = *[ipv6LinkLocalAddress bytes];
    self->_peerAddress.v6.sin6_scope_id = [sessionCopy localInterfaceIndex];
    self->_peerAddress.v4.sin_port = __rev16([infoCopy servicePort]);
    self->_localInterfaceIndex = [sessionCopy localInterfaceIndex];
  }

  else if (error)
  {
    v14 = [ipv6LinkLocalAddress length];
    *error = NSErrorWithOSStatusF(4294960553, "Bad IPv6 length (%d bytes)", v15, v16, v17, v18, v19, v20, v14);
  }

  return v13 == 16;
}

- (void)dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info
{
  sessionCopy = session;
  addressCopy = address;
  infoCopy = info;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__CUNANDataSession_dataSession_confirmedForPeerDataAddress_serviceSpecificInfo___block_invoke;
  v15[3] = &unk_1E73A40E0;
  v15[4] = self;
  v16 = addressCopy;
  v17 = infoCopy;
  v18 = sessionCopy;
  v12 = sessionCopy;
  v13 = infoCopy;
  v14 = addressCopy;
  dispatch_async(dispatchQueue, v15);
}

void __80__CUNANDataSession_dataSession_confirmedForPeerDataAddress_serviceSpecificInfo___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 120))
  {
    v2 = logger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(*(a1 + 32) + 96) identifier];
      v4 = *(a1 + 40);
      v5 = [*(a1 + 48) servicePort];
      v6 = [*(a1 + 56) localInterfaceIndex];
      *buf = 138413058;
      v17 = v3;
      v18 = 2112;
      v19 = v4;
      v20 = 1024;
      v21 = v5;
      v22 = 1024;
      v23 = v6;
      _os_log_impl(&dword_191EAF000, v2, OS_LOG_TYPE_DEFAULT, "WFA DataSession confirmed: id=%@, mac=%@, port=%d, ifindex=%u", buf, 0x22u);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(a1 + 48);
    v9 = *(a1 + 56);
    v15 = 0;
    [v7 _dataSession:v9 confirmedForPeerDataAddress:v8 serviceSpecificInfo:v10 error:&v15];
    v11 = v15;
    v12 = _Block_copy(*(*(a1 + 32) + 8));
    v13 = *(a1 + 32);
    v14 = *(v13 + 8);
    *(v13 + 8) = 0;

    if (v12)
    {
      v12[2](v12, v11);
    }
  }
}

- (void)dataSession:(id)session failedToStartWithError:(int64_t)error
{
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__CUNANDataSession_dataSession_failedToStartWithError___block_invoke;
  v5[3] = &unk_1E73A4340;
  v5[4] = self;
  v5[5] = error;
  dispatch_async(dispatchQueue, v5);
}

void __55__CUNANDataSession_dataSession_failedToStartWithError___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 120))
  {
    v2 = (*(a1 + 40) + 313300);
    v3 = logger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(*(a1 + 32) + 96) identifier];
      v22 = NSPrintF("%#m", v15, v16, v17, v18, v19, v20, v21, v2);
      *buf = 138412546;
      v25 = v14;
      v26 = 2112;
      v27 = v22;
      _os_log_error_impl(&dword_191EAF000, v3, OS_LOG_TYPE_ERROR, "### WFA DataSession start failed: %@, %@", buf, 0x16u);
    }

    v4 = _Block_copy(*(*(a1 + 32) + 8));
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    *(v5 + 8) = 0;

    if (v4)
    {
      v13 = NSErrorWithOSStatusF(v2, "DataSession start failed", v7, v8, v9, v10, v11, v12, v23);
      v4[2](v4, v13);
    }
  }
}

- (void)dataSessionRequestStarted:(id)started
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CUNANDataSession_dataSessionRequestStarted___block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __46__CUNANDataSession_dataSessionRequestStarted___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 120))
  {
    v2 = logger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(*(a1 + 32) + 96) identifier];
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&dword_191EAF000, v2, OS_LOG_TYPE_DEFAULT, "WFA DataSession request started: %@", &v4, 0xCu);
    }
  }
}

- (void)_terminateServerDataSession
{
  wfaDataSessionServer = self->_wfaDataSessionServer;
  if (wfaDataSessionServer)
  {
    v4 = wfaDataSessionServer;
    v5 = logger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_191EAF000, v5, OS_LOG_TYPE_DEFAULT, "WFA DataSession terminate start", buf, 2u);
    }

    publisher = self->_publisher;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__CUNANDataSession__terminateServerDataSession__block_invoke;
    v7[3] = &unk_1E73A3680;
    v7[4] = self;
    [(WiFiAwarePublisher *)publisher terminateDataSession:v4 completionHandler:v7];
  }
}

void __47__CUNANDataSession__terminateServerDataSession__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__CUNANDataSession__terminateServerDataSession__block_invoke_2;
  v4[3] = &unk_1E73A4340;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void __47__CUNANDataSession__terminateServerDataSession__block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 176))
  {
    v2 = logger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSPrintF("%#m", v3, v4, v5, v6, v7, v8, v9, *(a1 + 40));
      *buf = 138412290;
      v25 = v10;
      _os_log_impl(&dword_191EAF000, v2, OS_LOG_TYPE_DEFAULT, "WFA DataSession terminate completed: %@", buf, 0xCu);
    }

    v11 = _Block_copy(*(*(a1 + 32) + 8));
    v12 = *(a1 + 32);
    v13 = *(v12 + 8);
    *(v12 + 8) = 0;

    if (v11)
    {
      v20 = NSErrorWithOSStatusF(*(a1 + 40), "DataSession terminate failed", v14, v15, v16, v17, v18, v19, v23);
      v11[2](v11, v20);
    }

    v21 = *(a1 + 32);
    v22 = *(v21 + 176);
    *(v21 + 176) = 0;

    [*(a1 + 32) _invalidated];
  }
}

- (void)updateLinkStatus:(int)status
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__CUNANDataSession_updateLinkStatus___block_invoke;
  v4[3] = &unk_1E73A42A0;
  v4[4] = self;
  statusCopy = status;
  dispatch_async(dispatchQueue, v4);
}

void __37__CUNANDataSession_updateLinkStatus___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  v3 = v2;
  if (v2)
  {
    [v2 updateLinkStatus:*(a1 + 40) == 1];
  }

  else
  {
    v4 = *(a1 + 32);
    v6 = *(v4 + 168);
    v5 = *(v4 + 176);
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
      v9 = logger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_error_impl(&dword_191EAF000, v9, OS_LOG_TYPE_ERROR, "### Update link status without underlying data session", v10, 2u);
      }
    }

    else
    {
      [v6 updateLinkStatus:*(a1 + 40) == 1 forDataSession:v5];
    }
  }
}

- (void)tryPairingPassword:(id)password
{
  passwordCopy = password;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__CUNANDataSession_tryPairingPassword___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = passwordCopy;
  v6 = passwordCopy;
  dispatch_async(dispatchQueue, v7);
}

void __39__CUNANDataSession_tryPairingPassword___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  v3 = logger();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 40) length];
      v7[0] = 67109120;
      v7[1] = v5;
      _os_log_impl(&dword_191EAF000, v4, OS_LOG_TYPE_DEFAULT, "tryPairingPassword: length=%d", v7, 8u);
    }

    (*(*(*(a1 + 32) + 24) + 16))();
    v6 = *(a1 + 32);
    v4 = *(v6 + 24);
    *(v6 + 24) = 0;
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v7[0]) = 0;
    _os_log_error_impl(&dword_191EAF000, v4, OS_LOG_TYPE_ERROR, "### tryPairingPassword with no input handler", v7, 2u);
  }
}

- (void)reportIssue:(id)issue
{
  issueCopy = issue;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__CUNANDataSession_reportIssue___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = issueCopy;
  v6 = issueCopy;
  dispatch_async(dispatchQueue, v7);
}

void __32__CUNANDataSession_reportIssue___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  v3 = v2;
  if (v2)
  {
    [v2 reportIssue:*(a1 + 40)];
  }

  else
  {
    v4 = *(a1 + 32);
    v6 = *(v4 + 168);
    v5 = *(v4 + 176);
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
      v9 = logger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_error_impl(&dword_191EAF000, v9, OS_LOG_TYPE_ERROR, "### Report issue without underlying data session", v10, 2u);
      }
    }

    else
    {
      [v6 reportIssue:*(a1 + 40) forDataSession:v5];
    }
  }
}

- (void)generateStatisticsReportWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__CUNANDataSession_generateStatisticsReportWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

void __66__CUNANDataSession_generateStatisticsReportWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  if (v2)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __66__CUNANDataSession_generateStatisticsReportWithCompletionHandler___block_invoke_2;
    v16[3] = &unk_1E73A36C8;
    v3 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v3;
    [v2 generateStatisticsReportWithCompletionHandler:v16];
  }

  else
  {
    v4 = *(a1 + 32);
    v6 = *(v4 + 168);
    v5 = *(v4 + 176);
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = *MEMORY[0x1E696A768];
      v10 = v5;
      v11 = v6;
      v12 = NSErrorF_safe(v9, 4294960596, "No underlying data session");
      (*(v8 + 16))(v8, 0, v12);
    }

    else
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __66__CUNANDataSession_generateStatisticsReportWithCompletionHandler___block_invoke_4;
      v14[3] = &unk_1E73A36C8;
      v14[4] = v4;
      v15 = *(a1 + 40);
      v13 = v5;
      [v6 generateStatisticsReportForDataSession:v13 completionHandler:v14];
    }
  }
}

void __66__CUNANDataSession_generateStatisticsReportWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__CUNANDataSession_generateStatisticsReportWithCompletionHandler___block_invoke_3;
  block[3] = &unk_1E73A4BB0;
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v12 = a2;
  v8 = v5;
  dispatch_async(v6, block);
}

void __66__CUNANDataSession_generateStatisticsReportWithCompletionHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__CUNANDataSession_generateStatisticsReportWithCompletionHandler___block_invoke_5;
  block[3] = &unk_1E73A4BB0;
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v12 = a2;
  v8 = v5;
  dispatch_async(v6, block);
}

void __66__CUNANDataSession_generateStatisticsReportWithCompletionHandler___block_invoke_5(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  if (v3)
  {
    v6 = NSErrorF_safe(*MEMORY[0x1E696A768], (v3 + 313300), "Generate report failed");
    (*(v1 + 16))(v1, v2, v6);
  }

  else
  {
    v4 = *(v1 + 16);
    v5 = a1[5];

    v4(v5, v2, 0);
  }
}

void __66__CUNANDataSession_generateStatisticsReportWithCompletionHandler___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  if (v3)
  {
    v6 = NSErrorF_safe(*MEMORY[0x1E696A768], (v3 + 313300), "Generate report failed");
    (*(v1 + 16))(v1, v2, v6);
  }

  else
  {
    v4 = *(v1 + 16);
    v5 = a1[5];

    v4(v5, v2, 0);
  }
}

- (void)_invalidated
{
  if (!self->_invalidateDone && !self->_wfaDataSessionClient && !self->_wfaDataSessionServer)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2](invalidationHandler, a2);
    }

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v5 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    pairingPromptHandler = self->_pairingPromptHandler;
    self->_pairingPromptHandler = 0;

    pinCodeInputCompletionHandler = self->_pinCodeInputCompletionHandler;
    self->_pinCodeInputCompletionHandler = 0;

    terminationHandler = self->_terminationHandler;
    self->_terminationHandler = 0;

    self->_invalidateDone = 1;
    v9 = logger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_191EAF000, v9, OS_LOG_TYPE_DEFAULT, "Invalidated", v10, 2u);
    }
  }
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    v3 = logger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_191EAF000, v3, OS_LOG_TYPE_DEFAULT, "Invalidate", v4, 2u);
    }

    [(WiFiAwareDataSession *)self->_wfaDataSessionClient stop];
    [(CUNANDataSession *)self _terminateServerDataSession];
    [(CUNANDataSession *)self _invalidated];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__CUNANDataSession_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activateWithCompletion:(id)completion
{
  v62 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = logger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    peerEndpoint = self->_peerEndpoint;
    v7 = CUPrintFlags(self->_controlFlags, byte_191FF9D48, 1);
    v8 = CUPrintFlags(self->_trafficFlags, byte_191FFA046, 1);
    v9 = v8;
    pairingPromptHandler = self->_pairingPromptHandler;
    *buf = 138413058;
    v55 = peerEndpoint;
    if (pairingPromptHandler)
    {
      v11 = "yes";
    }

    else
    {
      v11 = "no";
    }

    v56 = 2112;
    v57 = v7;
    v58 = 2112;
    v59 = v8;
    v60 = 2080;
    v61 = v11;
    _os_log_impl(&dword_191EAF000, v5, OS_LOG_TYPE_DEFAULT, "Activate: endpoint=%@, controlFlags=%@, trafficFlags=%@, pair=%s", buf, 0x2Au);
  }

  mockPeerEndpointString = [(CUNANEndpoint *)self->_peerEndpoint mockPeerEndpointString];
  v13 = mockPeerEndpointString;
  if (!mockPeerEndpointString)
  {
    discoveryResult = [(CUNANEndpoint *)self->_peerEndpoint discoveryResult];
    if (discoveryResult)
    {
      trafficFlags = self->_trafficFlags;
      if ((trafficFlags & 0x800) != 0)
      {
        v23 = 2;
      }

      else
      {
        v23 = (trafficFlags & 0x63300) != 0;
      }

      v24 = [objc_alloc(getWiFiAwareDataSessionClass()) initWithDiscoveryResult:discoveryResult serviceType:v23 serviceSpecificInfo:self->_wfaServiceSpecificInfo];
      wfaDataSessionClient = self->_wfaDataSessionClient;
      self->_wfaDataSessionClient = v24;

      v32 = self->_wfaDataSessionClient;
      if (v32)
      {
        if (self->_wfaConnectionMode)
        {
          [(WiFiAwareDataSession *)v32 setConnectionMode:?];
          v32 = self->_wfaDataSessionClient;
        }

        [(WiFiAwareDataSession *)v32 setDelegate:self];
        if (self->_pairingPromptHandler)
        {
          if (!self->_wfaConnectionMode)
          {
            [(WiFiAwareDataSession *)self->_wfaDataSessionClient setConnectionMode:2];
          }

          [(WiFiAwareDataSession *)self->_wfaDataSessionClient setPairingCachingEnabled:1];
          [(WiFiAwareDataSession *)self->_wfaDataSessionClient setPairingDelegate:self];
          v33 = [(WiFiAwareDataSession *)self->_wfaDataSessionClient setPairingMethod:2];
          v34 = objc_alloc(getWiFiAwarePairingMetadataClass(v33));
          if (self->_pairingBundleID)
          {
            pairingBundleID = self->_pairingBundleID;
          }

          else
          {
            pairingBundleID = @"com.apple.Setup";
          }

          WeakRetained = [v34 initWithBundleID:pairingBundleID selfPairingName:@"Device" peerDeviceName:0 storageClass:1 lifetime:1 pairingClient:0.0];
          [(WiFiAwareDataSession *)self->_wfaDataSessionClient setPairingMetadata:WeakRetained];
        }

        else
        {
          WeakRetained = objc_loadWeakRetained(&self->_wfaPairingDelegate);
          if (WeakRetained)
          {
            [(WiFiAwareDataSession *)self->_wfaDataSessionClient setPairingDelegate:WeakRetained];
          }

          if (self->_wfaPairingCacheEnabled)
          {
            [(WiFiAwareDataSession *)self->_wfaDataSessionClient setPairingCachingEnabled:1];
          }

          if (self->_wfaPairingMethod)
          {
            [(WiFiAwareDataSession *)self->_wfaDataSessionClient setPairingMethod:?];
          }
        }

        if (self->_wfaPairingMetadata)
        {
          v46 = [(WiFiAwareDataSession *)self->_wfaDataSessionClient setPairingMetadata:?];
        }

        if (self->_wfaPairSetupServiceSpecificInfo)
        {
          v46 = [(WiFiAwareDataSession *)self->_wfaDataSessionClient setPairSetupServiceSpecificInfo:?];
        }

        if ((self->_controlFlags & 2) != 0)
        {
          automaticallyProvideInternetToResponders = [getWiFiAwareInternetSharingConfigurationClass(v46) automaticallyProvideInternetToResponders];
          if (automaticallyProvideInternetToResponders)
          {
            [(WiFiAwareDataSession *)self->_wfaDataSessionClient setInternetSharingConfiguration:automaticallyProvideInternetToResponders];
          }

          v48 = logger();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v49 = "success";
            if (!automaticallyProvideInternetToResponders)
            {
              v49 = "failed";
            }

            *buf = 136315138;
            v55 = v49;
            _os_log_impl(&dword_191EAF000, v48, OS_LOG_TYPE_DEFAULT, "AutomaticInfraRelay: %s", buf, 0xCu);
          }
        }

        v50 = _Block_copy(completionCopy);
        activateCompletion = self->_activateCompletion;
        self->_activateCompletion = v50;

        [(WiFiAwareDataSession *)self->_wfaDataSessionClient start];
        goto LABEL_50;
      }

      v37 = NSErrorWithOSStatusF(4294960596, "Create WFA DataSession failed", v26, v27, v28, v29, v30, v31, v53);
      v38 = logger();
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
LABEL_28:

        if (completionCopy)
        {
          (*(completionCopy + 2))(completionCopy, v37);
        }

        goto LABEL_50;
      }
    }

    else
    {
      v37 = NSErrorWithOSStatusF(4294960591, "No discovery result", v16, v17, v18, v19, v20, v21, v53);
      v38 = logger();
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }
    }

    v52 = NSPrintF("%{error}", v39, v40, v41, v42, v43, v44, v45, v37);
    *buf = 138412290;
    v55 = v52;
    _os_log_error_impl(&dword_191EAF000, v38, OS_LOG_TYPE_ERROR, "### Activate failed: %@", buf, 0xCu);

    goto LABEL_28;
  }

  v14 = StringToSockAddr([mockPeerEndpointString UTF8String], &self->_peerAddress, 0x1CuLL, 0);
  if (completionCopy)
  {
    if (v14)
    {
      discoveryResult = NSErrorF_safe(*MEMORY[0x1E696A768], v14, "Bad mock peer endpoint string");
      (*(completionCopy + 2))(completionCopy, discoveryResult);
LABEL_50:

      goto LABEL_51;
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }

LABEL_51:
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__CUNANDataSession_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)setPeerEndpoint:(id)endpoint
{
  objc_storeStrong(&self->_peerEndpoint, endpoint);
  endpointCopy = endpoint;
  identifier = [endpointCopy identifier];
  identifier = self->_identifier;
  self->_identifier = identifier;
}

- (NSString)peerEndpointString
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  SockAddrToString(&self->_peerAddress, 0, v4);
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];

  return v2;
}

- (NSString)peerAddressString
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  SockAddrToString(&self->_peerAddress, 1, v4);
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];

  return v2;
}

- (id)descriptionWithLevel:(int)level
{
  v32 = 0;
  NSAppendPrintF_safe(&v32, "CUNANDataSession %@", *&level, v3, v4, v5, v6, v7, self->_identifier);
  v10 = v32;
  v18 = v10;
  if (self->_peerAddress.sa.sa_family)
  {
    v31 = v10;
    v19 = NSPrintF("%##a", v11, v12, v13, v14, v15, v16, v17, &self->_peerAddress);
    NSAppendPrintF_safe(&v31, ", IP %@", v20, v21, v22, v23, v24, v25, v19);
    v26 = v31;

    v18 = v26;
  }

  if (level <= 20)
  {
    v30 = v18;
    NSAppendPrintF_safe(&v30, "\n", v12, v13, v14, v15, v16, v17, v29);
    v27 = v30;

    v18 = v27;
  }

  return v18;
}

- (CUNANDataSession)init
{
  v5.receiver = self;
  v5.super_class = CUNANDataSession;
  v2 = [(CUNANDataSession *)&v5 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    v3 = v2;
  }

  return v2;
}

@end