@interface DDUIRapportOutgoingTransportSession
@end

@implementation DDUIRapportOutgoingTransportSession

void __104___DDUIRapportOutgoingTransportSession_generateNetworkEndpointIdentifierForRemoteDevice_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 134218498;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_230EF9000, v7, OS_LOG_TYPE_DEFAULT, "_DDUIRapportOutgoingTransportSession finished generating mapping {self: %p, endpointUUID: %@, inError: %@}", &v9, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __91___DDUIRapportOutgoingTransportSession_activateWithErrorHandler_messageHandler_completion___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = WeakRetained;
    _os_log_impl(&dword_230EF9000, v3, OS_LOG_TYPE_DEFAULT, "_DDUIRapportOutgoingTransportSession did disconnect {self: %p}", &v4, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __91___DDUIRapportOutgoingTransportSession_activateWithErrorHandler_messageHandler_completion___block_invoke_4(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = WeakRetained;
    _os_log_impl(&dword_230EF9000, v3, OS_LOG_TYPE_DEFAULT, "_DDUIRapportOutgoingTransportSession did interrupt {self: %p}", &v4, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __91___DDUIRapportOutgoingTransportSession_activateWithErrorHandler_messageHandler_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 134218242;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "_DDUIRapportOutgoingTransportSession activation completed {self: %p, inError: %@}", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 32));
  }
}

void __75___DDUIRapportOutgoingTransportSession_sendMessage_withTimeout_completion___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    v10 = [v9 sessionID];
    v11 = a1[5];
    v13 = 134218754;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_230EF9000, v8, OS_LOG_TYPE_DEFAULT, "_DDUIRapportOutgoingTransportSession finished sending message {self: %p, sessionID: %@, messageID: %@, inResponse: %@}", &v13, 0x2Au);
  }

  v12 = a1[6];
  if (v12)
  {
    (*(v12 + 16))(v12, v7);
  }
}

@end