@interface ICFCallServer
+ (id)sharedInstance;
- (ICFCallServer)init;
- (void)_cleanup;
- (void)_cleanupClient:(id)client;
- (void)_clientConnected;
- (void)_configureWithClient:(id)client;
- (void)_requestCallGrantForIdentifier:(id)identifier forProviderIdentifier:(id)providerIdentifier waitForResponse:(BOOL)response completionBlock:(id)block;
- (void)dealloc;
- (void)init;
- (void)shouldAllowIncomingCallForNumber:(id)number forProviderIdentifier:(id)identifier response:(id)response;
@end

@implementation ICFCallServer

+ (id)sharedInstance
{
  if (sharedInstance_creation != -1)
  {
    +[ICFCallServer sharedInstance];
  }

  return sharedInstance_sInstance;
}

ICFCallServer *__31__ICFCallServer_sharedInstance__block_invoke()
{
  result = objc_alloc_init(ICFCallServer);
  sharedInstance_sInstance = result;
  return result;
}

- (ICFCallServer)init
{
  v22.receiver = self;
  v22.super_class = ICFCallServer;
  v2 = [(ICFCallServer *)&v22 init];
  v3 = v2;
  if (v2)
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __21__ICFCallServer_init__block_invoke;
    v20 = &unk_2797A9470;
    v21 = v2;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __21__ICFCallServer_init__block_invoke_18;
    v15 = &unk_2797A9498;
    v16 = v2;
    v4 = IMXPCCreateServerConnection();
    v3->_connection = v4;
    if (v4)
    {
      xpc_connection_resume(v4);
      v6 = notify_post("com.apple.incoming-call-filter-server-started");
    }

    else
    {
      v8 = ICFDefaultLog(0, v5);
      v6 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (v6)
      {
        [(ICFCallServer *)v8 init];
      }
    }

    v9 = ICFDefaultLog(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_254B1F000, v9, OS_LOG_TYPE_DEFAULT, "Setup ICFCallServer", v11, 2u);
    }
  }

  return v3;
}

uint64_t __21__ICFCallServer_init__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = ICFDefaultLog(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __21__ICFCallServer_init__block_invoke_cold_1(v3);
  }

  return [*(a1 + 32) _cleanup];
}

void __21__ICFCallServer_init__block_invoke_18(uint64_t a1, _xpc_connection_s *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  xpc_connection_get_audit_token();
  if (IMDAuditTokenTaskHasEntitlement())
  {
    goto LABEL_2;
  }

  pid = xpc_connection_get_pid(a2);
  v7 = IMProcessNameForPid();
  v8 = [*(*(a1 + 32) + 16) containsObject:{a2, 0, 0, 0, 0}];
  v9 = v8;
  v11 = ICFDefaultLog(v8, v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v12)
    {
      *buf = 138412802;
      v14 = v7;
      v15 = 1024;
      *v16 = pid;
      *&v16[4] = 2112;
      *&v16[6] = @"com.apple.private.icfcallserver";
      _os_log_impl(&dword_254B1F000, v11, OS_LOG_TYPE_DEFAULT, "Handling xpc event for previously configured peer(%@:%d) that does not have entitlement (%@).", buf, 0x1Cu);
    }

LABEL_2:
    __ICFXPCServer_peer_event_handler(a2, a3);
    return;
  }

  if (v12)
  {
    *buf = 138412802;
    v14 = @"com.apple.private.icfcallserver";
    v15 = 2112;
    *v16 = v7;
    *&v16[8] = 1024;
    *&v16[10] = pid;
    _os_log_impl(&dword_254B1F000, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Denying xpc connection, task does not have entitlement: %@  (%@:%d)", buf, 0x1Cu);
  }

  xpc_connection_cancel(a2);
}

- (void)_requestCallGrantForIdentifier:(id)identifier forProviderIdentifier:(id)providerIdentifier waitForResponse:(BOOL)response completionBlock:(id)block
{
  responseCopy = response;
  v75 = *MEMORY[0x277D85DE8];
  v7 = ICFDefaultLog(self, a2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    *buf = 138413058;
    *&buf[4] = identifier;
    if (responseCopy)
    {
      v8 = @"YES";
    }

    *&buf[12] = 2112;
    *&buf[14] = providerIdentifier;
    *&buf[22] = 2112;
    v72 = v8;
    v73 = 2112;
    blockCopy = block;
    _os_log_impl(&dword_254B1F000, v7, OS_LOG_TYPE_DEFAULT, "Requesting call grant for identifier %@ providerIdentifier %@ waitForResponse %@ completionBlock %@", buf, 0x2Au);
  }

  v9 = [block copy];
  v10 = CMFItemCreateWithEmailAddress();
  v11 = IMPhoneNumberRefCopyForPhoneNumber();
  v12 = CMFItemCreateWithPhoneNumber();
  IsItemBlocked = CMFBlockListIsItemBlocked();
  if (!IsItemBlocked)
  {
    IsItemBlocked = CMFBlockListIsItemBlocked();
    v15 = IsItemBlocked != 0;
    if (!v10)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v15 = 1;
  if (v10)
  {
LABEL_9:
    CFRelease(v10);
  }

LABEL_10:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v16 = ICFDefaultLog(IsItemBlocked, v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"NO";
    if (v15)
    {
      v17 = @"YES";
    }

    *buf = 138412546;
    *&buf[4] = identifier;
    *&buf[12] = 2112;
    *&buf[14] = v17;
    _os_log_impl(&dword_254B1F000, v16, OS_LOG_TYPE_DEFAULT, "%@ returning %@", buf, 0x16u);
  }

  if (v15)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __102__ICFCallServer__requestCallGrantForIdentifier_forProviderIdentifier_waitForResponse_completionBlock___block_invoke;
    block[3] = &unk_2797A94C0;
    block[4] = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else if ([(NSMutableArray *)self->_clients count])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v72) = 0;
    v63 = 0;
    v64 = &v63;
    v65 = 0x2020000000;
    v66 = 0;
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    v19 = dispatch_group_create();
    v20 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    [v20 lock];
    for (i = 0; [(NSMutableArray *)self->_clients count]> i; ++i)
    {
      dispatch_group_enter(v19);
      ++*(v60 + 6);
    }

    [v20 unlock];
    v40 = v9;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    clients = self->_clients;
    v23 = [(NSMutableArray *)clients countByEnumeratingWithState:&v55 objects:v70 count:16];
    if (v23)
    {
      v24 = *v56;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v56 != v24)
          {
            objc_enumerationMutation(clients);
          }

          v26 = *(*(&v55 + 1) + 8 * j);
          v27 = xpc_dictionary_create(0, 0, 0);
          if (v27)
          {
            IMInsertNSStringsToXPCDictionary();
            providerIdentifierCopy = providerIdentifier;
            v39 = 0;
            v28 = IMInsertNSStringsToXPCDictionary();
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 3221225472;
            v47 = __102__ICFCallServer__requestCallGrantForIdentifier_forProviderIdentifier_waitForResponse_completionBlock___block_invoke_33;
            v48 = &unk_2797A94E8;
            selfCopy = self;
            v50 = v19;
            v51 = v20;
            v52 = buf;
            v53 = &v63;
            v54 = &v59;
            v30 = ICFDefaultLog(v28, v29);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *v68 = 134217984;
              v69 = v26;
              _os_log_impl(&dword_254B1F000, v30, OS_LOG_TYPE_DEFAULT, "Asking peer %p if we should allow the call", v68, 0xCu);
            }

            if (responseCopy)
            {
              v31 = xpc_connection_send_message_with_reply_sync(v26, v27);
              if (v31)
              {
                v47(handler, v31);
                xpc_release(v31);
              }
            }

            else
            {
              xpc_connection_send_message_with_reply(v26, v27, MEMORY[0x277D85CD0], handler);
            }

            xpc_release(v27);
          }

          else
          {
            dispatch_group_leave(v19);
            [v20 lock];
            --*(v60 + 6);
            [v20 unlock];
          }
        }

        v23 = [(NSMutableArray *)clients countByEnumeratingWithState:&v55 objects:v70 count:16];
      }

      while (v23);
    }

    [v20 lock];
    v32 = *(v60 + 6);
    unlock = [v20 unlock];
    if (v32 < 1)
    {
      v36 = ICFDefaultLog(unlock, v34);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        if (*(*&buf[8] + 24))
        {
          v37 = @"NO";
        }

        else
        {
          v37 = @"YES";
        }

        *v68 = 138412290;
        v69 = v37;
        _os_log_impl(&dword_254B1F000, v36, OS_LOG_TYPE_DEFAULT, "Sync - All done with group, overall result was: %@", v68, 0xCu);
      }

      (v40)[2](v40, (*(*&buf[8] + 24) & 1) == 0, *(v64 + 24));
      dispatch_release(v19);
    }

    else
    {
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __102__ICFCallServer__requestCallGrantForIdentifier_forProviderIdentifier_waitForResponse_completionBlock___block_invoke_35;
      v45[3] = &unk_2797A9510;
      v45[6] = buf;
      v45[7] = &v63;
      v45[4] = v19;
      v45[5] = v40;
      dispatch_group_notify(v19, MEMORY[0x277D85CD0], v45);
    }

    _Block_object_dispose(&v59, 8);
    _Block_object_dispose(&v63, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v35 = ICFDefaultLog(0, v18);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = identifier;
      *&buf[12] = 2112;
      *&buf[14] = providerIdentifier;
      _os_log_impl(&dword_254B1F000, v35, OS_LOG_TYPE_DEFAULT, "No client, but we're asking for %@ on %@", buf, 0x16u);
    }

    v9[2](v9, 1, 0);
  }
}

uint64_t __102__ICFCallServer__requestCallGrantForIdentifier_forProviderIdentifier_waitForResponse_completionBlock___block_invoke_33(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x259C24500](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v14 = ICFDefaultLog(v4, v5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __102__ICFCallServer__requestCallGrantForIdentifier_forProviderIdentifier_waitForResponse_completionBlock___block_invoke_33_cold_1(a2, a1, v14);
    }

    LOBYTE(v8) = 0;
    v13 = 0;
  }

  else
  {
    v6 = xpc_dictionary_get_BOOL(a2, "response");
    v7 = xpc_dictionary_get_BOOL(a2, "isBlocked");
    v8 = v7;
    v10 = ICFDefaultLog(v7, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      if (v6)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      if (v8)
      {
        v11 = @"YES";
      }

      v16 = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_254B1F000, v10, OS_LOG_TYPE_DEFAULT, "Got allowCall: %@, blocked: %@", &v16, 0x16u);
    }

    v13 = !v6;
  }

  *(*(*(a1 + 56) + 8) + 24) |= v13;
  *(*(*(a1 + 64) + 8) + 24) |= v8;
  dispatch_group_leave(*(a1 + 40));
  [*(a1 + 48) lock];
  --*(*(*(a1 + 72) + 8) + 24);
  return [*(a1 + 48) unlock];
}

void __102__ICFCallServer__requestCallGrantForIdentifier_forProviderIdentifier_waitForResponse_completionBlock___block_invoke_35(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = ICFDefaultLog(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v4 = @"NO";
    }

    else
    {
      v4 = @"YES";
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_254B1F000, v3, OS_LOG_TYPE_DEFAULT, "Async - All done with group, overall result was: %@", &v5, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  dispatch_release(*(a1 + 32));
}

- (void)_clientConnected
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_hasRegistered)
  {
    v3 = ICFDefaultLog(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254B1F000, v3, OS_LOG_TYPE_DEFAULT, "Client connected, noting registered", buf, 2u);
    }

    self->_hasRegistered = 1;
    v4 = ICFCallServerCTServerConnection();
    if (v4)
    {
      v6 = v4;
      v7 = ICFDefaultLog(v4, v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v13 = v6;
        _os_log_impl(&dword_254B1F000, v7, OS_LOG_TYPE_DEFAULT, "Registering CT quiet hours callback: connection %p", buf, 0xCu);
      }

      if (_clientConnected__pred__CTServerConnectionRegisterSilentHoursCallbackCoreTelephony != -1)
      {
        [ICFCallServer _clientConnected];
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __33__ICFCallServer__clientConnected__block_invoke_2;
      v11[3] = &unk_2797A9560;
      v11[4] = self;
      v8 = _clientConnected___CTServerConnectionRegisterSilentHoursCallback(v6, v11);
      if (HIDWORD(v8))
      {
        v10 = ICFDefaultLog(v8, v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [(ICFCallServer *)v10 _clientConnected];
        }
      }
    }
  }
}

uint64_t (*__33__ICFCallServer__clientConnected__block_invoke())(void, void)
{
  result = MEMORY[0x259C24230]("_CTServerConnectionRegisterSilentHoursCallback", @"CoreTelephony");
  _clientConnected___CTServerConnectionRegisterSilentHoursCallback = result;
  return result;
}

uint64_t __33__ICFCallServer__clientConnected__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__ICFCallServer__clientConnected__block_invoke_3;
  v9[3] = &unk_2797A9538;
  v9[4] = &v10;
  v3 = [v2 _requestCallGrantForIdentifier:a2 forProviderIdentifier:"com.apple.coretelephony" waitForResponse:1 completionBlock:v9];
  v5 = ICFDefaultLog(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v11 + 24))
    {
      v6 = @"allowed";
    }

    else
    {
      v6 = @"not allowed";
    }

    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_254B1F000, v5, OS_LOG_TYPE_DEFAULT, "Telling CT that this call is %@", buf, 0xCu);
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (void)_cleanup
{
  if (self->_hasRegistered)
  {
    v8 = v2;
    v9 = v3;
    self->_hasRegistered = 0;
    v4 = ICFDefaultLog(self, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_254B1F000, v4, OS_LOG_TYPE_DEFAULT, "Client Disconnected, unregistering", v7, 2u);
    }

    v5 = ICFCallServerCTServerConnection();
    if (v5)
    {
      v6 = v5;
      if (_cleanup__pred__CTServerConnectionUnregisterSilentHoursCallbackCoreTelephony != -1)
      {
        [ICFCallServer _cleanup];
      }

      _cleanup___CTServerConnectionUnregisterSilentHoursCallback(v6);
    }
  }
}

uint64_t (*__25__ICFCallServer__cleanup__block_invoke())(void)
{
  result = MEMORY[0x259C24230]("_CTServerConnectionUnregisterSilentHoursCallback", @"CoreTelephony");
  _cleanup___CTServerConnectionUnregisterSilentHoursCallback = result;
  return result;
}

- (void)_cleanupClient:(id)client
{
  v12 = *MEMORY[0x277D85DE8];
  if (client)
  {
    v5 = ICFDefaultLog(self, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109120;
      pid = xpc_connection_get_pid(client);
      _os_log_impl(&dword_254B1F000, v5, OS_LOG_TYPE_DEFAULT, "Removing client %d", &v10, 8u);
    }

    v6 = [(NSMutableArray *)self->_clients removeObject:client];
    v8 = ICFDefaultLog(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(NSMutableArray *)self->_clients count];
      v10 = 67109120;
      pid = v9;
      _os_log_impl(&dword_254B1F000, v8, OS_LOG_TYPE_DEFAULT, "We have %d clients left", &v10, 8u);
    }

    if (![(NSMutableArray *)self->_clients count])
    {
      [(ICFCallServer *)self _cleanup];

      self->_clients = 0;
    }
  }
}

- (void)_configureWithClient:(id)client
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = ICFDefaultLog(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    clientCopy = client;
    _os_log_impl(&dword_254B1F000, v5, OS_LOG_TYPE_DEFAULT, "Configuring with client: %@", &v10, 0xCu);
  }

  if (client)
  {
    v6 = [(NSMutableArray *)self->_clients containsObject:client];
    if ((v6 & 1) == 0)
    {
      if (!self->_clients)
      {
        v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
        self->_clients = v6;
      }

      v8 = ICFDefaultLog(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        pid = xpc_connection_get_pid(client);
        v10 = 67109120;
        LODWORD(clientCopy) = pid;
        _os_log_impl(&dword_254B1F000, v8, OS_LOG_TYPE_DEFAULT, "Adding client %d", &v10, 8u);
      }

      [(NSMutableArray *)self->_clients addObject:client];
      [(ICFCallServer *)self _clientConnected];
    }
  }
}

- (void)shouldAllowIncomingCallForNumber:(id)number forProviderIdentifier:(id)identifier response:(id)response
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = ICFDefaultLog(self, a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    numberCopy = number;
    v14 = 2112;
    identifierCopy = identifier;
    _os_log_impl(&dword_254B1F000, v9, OS_LOG_TYPE_DEFAULT, "Should allow incoming call for number %@ providerIdentifier %@", buf, 0x16u);
  }

  if (response)
  {
    v10 = [response copy];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __81__ICFCallServer_shouldAllowIncomingCallForNumber_forProviderIdentifier_response___block_invoke;
    v11[3] = &unk_2797A9588;
    v11[4] = v10;
    [(ICFCallServer *)self _requestCallGrantForIdentifier:number forProviderIdentifier:identifier waitForResponse:0 completionBlock:v11];
  }
}

- (void)dealloc
{
  v3 = ICFDefaultLog(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254B1F000, v3, OS_LOG_TYPE_DEFAULT, "Deallocing server", buf, 2u);
  }

  [(ICFCallServer *)self _cleanup];
  v4.receiver = self;
  v4.super_class = ICFCallServer;
  [(ICFCallServer *)&v4 dealloc];
}

- (void)init
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = @"com.apple.incoming-call-filter-server";
  _os_log_error_impl(&dword_254B1F000, log, OS_LOG_TYPE_ERROR, "Could not configure server: %@", &v1, 0xCu);
}

void __102__ICFCallServer__requestCallGrantForIdentifier_forProviderIdentifier_waitForResponse_completionBlock___block_invoke_33_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 32);
  v4 = 138412546;
  v5 = a1;
  v6 = 1024;
  v7 = v3;
  _os_log_error_impl(&dword_254B1F000, log, OS_LOG_TYPE_ERROR, "Error requesting client: %@  (0x%X)", &v4, 0x12u);
}

@end