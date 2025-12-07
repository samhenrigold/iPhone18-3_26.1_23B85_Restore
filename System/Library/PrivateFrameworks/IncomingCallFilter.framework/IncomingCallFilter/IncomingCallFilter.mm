uint64_t ICFRegisterCallFilterBlockWithIdentifier(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = ICFDefaultLog(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = a1;
    v11 = 2112;
    v12 = a2;
    _os_log_impl(&dword_254B1F000, v4, OS_LOG_TYPE_DEFAULT, "Registering filter block %@ with identifier %@", buf, 0x16u);
  }

  if (a1)
  {
    v5 = [a1 copy];
    v6 = v8;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __ICFRegisterCallFilterBlockWithIdentifier_block_invoke;
    v8[3] = &unk_2797A9398;
    v8[4] = v5;
  }

  else
  {
    v6 = 0;
  }

  return ICFRegisterCallFilterResultBlockWithIdentifier(v6, a2);
}

uint64_t ICFRegisterCallFilterResultBlockWithIdentifier(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = ICFDefaultLog(a1, a2);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v16 = 138412546;
    v17 = a1;
    v18 = 2112;
    v19 = a2;
    _os_log_impl(&dword_254B1F000, v4, OS_LOG_TYPE_DEFAULT, "Registering filter result block %@ with identifier %@", &v16, 0x16u);
  }

  _ICFConfigureGlobals(v5, v6);
  v7 = [sFilterLock lock];
  if (a1 && (v7 = [a2 length]) != 0)
  {
    if (!sFilterBlocks)
    {
      sFilterBlocks = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v9 = [a1 copy];
    v10 = [sFilterBlocks setObject:v9 forKey:a2];
    ICFPrintFilters(v10, v11);

    _ICFConnectToServer(v12, v13);
  }

  else
  {
    v14 = ICFDefaultLog(v7, v8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_254B1F000, v14, OS_LOG_TYPE_DEFAULT, "No block or block id - we're done", &v16, 2u);
    }
  }

  return [sFilterLock unlock];
}

void _ICFConfigureGlobals(uint64_t a1, uint64_t a2)
{
  v2 = ICFDefaultLog(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_254B1F000, v2, OS_LOG_TYPE_DEFAULT, "Configuring globals", v3, 2u);
  }

  if (_ICFConfigureGlobals_onceToken != -1)
  {
    _ICFConfigureGlobals_cold_1();
  }
}

void ICFPrintFilters(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = ICFDefaultLog(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254B1F000, v2, OS_LOG_TYPE_DEFAULT, "*** Current filters ***", buf, 2u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [sFilterBlocks allKeys];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = ICFDefaultLog(v4, v5);
        v4 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        if (v4)
        {
          v11 = [sFilterBlocks objectForKey:v9];
          *buf = 138412546;
          v18 = v9;
          v19 = 2048;
          v20 = v11;
          _os_log_impl(&dword_254B1F000, v10, OS_LOG_TYPE_DEFAULT, "* %@ -> %p", buf, 0x16u);
        }

        ++v8;
      }

      while (v6 != v8);
      v4 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
      v6 = v4;
    }

    while (v4);
  }

  v12 = ICFDefaultLog(v4, v5);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254B1F000, v12, OS_LOG_TYPE_DEFAULT, "***********************", buf, 2u);
  }
}

void _ICFConnectToServer(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = ICFDefaultLog(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254B1F000, v2, OS_LOG_TYPE_DEFAULT, "Connect to server", buf, 2u);
  }

  if (sServerConnection)
  {
    v3 = xpc_retain(sServerConnection);
  }

  else
  {
    v9 = IMXPCCreateConnectionForServiceWithQueue();
    sServerConnection = v9;
    if (v9)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = ___ICFConnectToServer_block_invoke_13;
      handler[3] = &unk_2797A9420;
      handler[4] = &__block_literal_global_11;
      xpc_connection_set_event_handler(v9, handler);
      v3 = xpc_retain(sServerConnection);
      xpc_connection_resume(sServerConnection);
      v13 = ICFDefaultLog(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v17 = sServerConnection;
        _os_log_impl(&dword_254B1F000, v13, OS_LOG_TYPE_DEFAULT, "Creating server connection %p", buf, 0xCu);
      }
    }

    else
    {
      v14 = ICFDefaultLog(0, v10);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        _ICFConnectToServer_cold_1(v14);
      }

      v3 = 0;
    }
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4 && v3)
  {
    v6 = IMInsertBoolsToXPCDictionary();
    v8 = ICFDefaultLog(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254B1F000, v8, OS_LOG_TYPE_DEFAULT, "Sending setup-request to server", buf, 2u);
    }

    xpc_connection_send_message(v3, v5);
    xpc_release(v5);
LABEL_13:
    xpc_release(v3);
    return;
  }

  if (v4)
  {
    xpc_release(v4);
  }

  if (v3)
  {
    goto LABEL_13;
  }
}

uint64_t ICFUnregisterCallFilterResultBlockWithIdentifier(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = ICFDefaultLog(a1, a2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    *v19 = 138412290;
    *&v19[4] = a1;
    _os_log_impl(&dword_254B1F000, v3, OS_LOG_TYPE_DEFAULT, "Unregistering filter block with identifier %@", v19, 0xCu);
  }

  _ICFConfigureGlobals(v4, v5);
  [sFilterLock lock];
  if (![a1 length])
  {
    v16 = ICFDefaultLog(0, v6);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      return [sFilterLock unlock];
    }

    *v19 = 0;
    v17 = "No block id - we're done";
LABEL_19:
    _os_log_impl(&dword_254B1F000, v16, OS_LOG_TYPE_DEFAULT, v17, v19, 2u);
    return [sFilterLock unlock];
  }

  if (!sFilterBlocks)
  {
    v16 = ICFDefaultLog(0, v6);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      return [sFilterLock unlock];
    }

    *v19 = 0;
    v17 = "No filter blocks registered - we're done";
    goto LABEL_19;
  }

  if (![sFilterBlocks objectForKey:a1])
  {
    v16 = ICFDefaultLog(0, v7);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      return [sFilterLock unlock];
    }

    *v19 = 0;
    v17 = "We're not keeping track of this filter - we're done";
    goto LABEL_19;
  }

  v8 = [sFilterBlocks removeObjectForKey:a1];
  ICFPrintFilters(v8, v9);
  if (![sFilterBlocks count])
  {

    sFilterBlocks = 0;
    v12 = ICFDefaultLog(v10, v11);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      *v19 = 0;
      _os_log_impl(&dword_254B1F000, v12, OS_LOG_TYPE_DEFAULT, "No more filter blocks registered", v19, 2u);
    }

    if (sServerConnection)
    {
      v15 = ICFDefaultLog(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_254B1F000, v15, OS_LOG_TYPE_DEFAULT, "Disconnecting from server", v19, 2u);
      }

      xpc_connection_cancel(sServerConnection);
    }
  }

  return [sFilterLock unlock];
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

void __ICFXPCServer_peer_event_handler(_xpc_connection_s *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = ICFDefaultLog(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    pid = xpc_connection_get_pid(a1);
    _os_log_impl(&dword_254B1F000, v4, OS_LOG_TYPE_DEFAULT, "Receiving message from peer (%d)", buf, 8u);
  }

  v5 = MEMORY[0x259C24500](a2);
  if (v5 == MEMORY[0x277D86480])
  {
    if (a2 == MEMORY[0x277D863F8])
    {
      v16 = ICFDefaultLog(v5, v6);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        ___ICFConnectToServer_block_invoke_8_cold_3(a1);
      }

      [+[ICFCallServer sharedInstance](ICFCallServer _cleanupClient:"_cleanupClient:", a1];
      xpc_connection_cancel(a1);
    }

    else if (a2 == MEMORY[0x277D863F0])
    {
      v25 = ICFDefaultLog(v5, v6);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        ___ICFConnectToServer_block_invoke_8_cold_2(a1);
      }

      [+[ICFCallServer sharedInstance](ICFCallServer _cleanupClient:"_cleanupClient:", a1];
    }

    else if (a2 == MEMORY[0x277D86420])
    {
      v15 = ICFDefaultLog(v5, v6);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        ___ICFConnectToServer_block_invoke_8_cold_1(a1);
      }
    }
  }

  else if (v5 == MEMORY[0x277D86468])
  {
    v7 = MEMORY[0x259C244A0](a2);
    v9 = ICFDefaultLog(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = xpc_connection_get_pid(a1);
      *buf = 67109378;
      pid = v10;
      v29 = 2080;
      v30 = v7;
      _os_log_impl(&dword_254B1F000, v9, OS_LOG_TYPE_DEFAULT, "Received message from peer(%d): %s", buf, 0x12u);
    }

    free(v7);
    v11 = xpc_dictionary_get_BOOL(a2, "setup-request");
    if (v11)
    {
      v13 = ICFDefaultLog(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = xpc_connection_get_pid(a1);
        *buf = 67109120;
        pid = v14;
        _os_log_impl(&dword_254B1F000, v13, OS_LOG_TYPE_DEFAULT, "Received setup-request from (%d)", buf, 8u);
      }

      [+[ICFCallServer sharedInstance](ICFCallServer _configureWithClient:"_configureWithClient:", a1];
    }

    else
    {
      v17 = xpc_dictionary_get_BOOL(a2, "call-request");
      if (v17)
      {
        v19 = ICFDefaultLog(v17, v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = xpc_connection_get_pid(a1);
          *buf = 67109120;
          pid = v20;
          _os_log_impl(&dword_254B1F000, v19, OS_LOG_TYPE_DEFAULT, "Received call-request from (%d)", buf, 8u);
        }

        reply = xpc_dictionary_create_reply(a2);
        v22 = IMGetXPCStringFromDictionary();
        v23 = IMGetXPCStringFromDictionary();
        v24 = +[ICFCallServer sharedInstance];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = ____ICFXPCServer_peer_event_handler_block_invoke;
        v26[3] = &unk_2797A9448;
        v26[4] = reply;
        v26[5] = a1;
        [(ICFCallServer *)v24 shouldAllowIncomingCallForNumber:v22 forProviderIdentifier:v23 response:v26];
      }
    }
  }
}

uint64_t ICFCallServerCTServerConnection()
{
  v11 = *MEMORY[0x277D85DE8];
  result = ICFCallServerCTServerConnection_sConnection;
  if (!ICFCallServerCTServerConnection_sConnection)
  {
    if (ICFCallServerCTServerConnection__pred__CTServerConnectionCreateWithIdentifierCoreTelephony != -1)
    {
      ICFCallServerCTServerConnection_cold_1();
    }

    if (ICFCallServerCTServerConnection__pred__CTServerConnectionSetTargetQueueCoreTelephony != -1)
    {
      ICFCallServerCTServerConnection_cold_2();
    }

    v8 = 0;
    memset(v7, 0, sizeof(v7));
    v1 = ICFCallServerCTServerConnection___CTServerConnectionCreateWithIdentifier(*MEMORY[0x277CBECE8], @"ICFCallServer", _ServerConnectionCallback, v7);
    ICFCallServerCTServerConnection_sConnection = v1;
    v2 = ICFCallServerCTServerConnection___CTServerConnectionSetTargetQueue;
    global_queue = dispatch_get_global_queue(0, 0);
    v4 = v2(v1, global_queue);
    v6 = ICFDefaultLog(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = ICFCallServerCTServerConnection_sConnection;
      _os_log_impl(&dword_254B1F000, v6, OS_LOG_TYPE_DEFAULT, "Setup CTServerConnection %p", buf, 0xCu);
    }

    return ICFCallServerCTServerConnection_sConnection;
  }

  return result;
}

void *__ICFCallServerCTServerConnection_block_invoke_2()
{
  result = MEMORY[0x259C24230]("_CTServerConnectionSetTargetQueue", @"CoreTelephony");
  ICFCallServerCTServerConnection___CTServerConnectionSetTargetQueue = result;
  return result;
}

void sub_254B21DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v49 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_254B223F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ICFCallProviderShouldAllowIncomingCallWithQueue(uint64_t a1, uint64_t a2, NSObject *global_queue, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = ICFDefaultLog(a1, a2);
  v9 = v8;
  if (a4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = a1;
      *&buf[12] = 2112;
      *&buf[14] = a2;
      _os_log_impl(&dword_254B1F000, v9, OS_LOG_TYPE_DEFAULT, "number %@,   providerIdentifier %@", buf, 0x16u);
    }

    v10 = [a4 copy];
    if (ICFCallProviderShouldAllowIncomingCallWithQueue_onceToken != -1)
    {
      ICFCallProviderShouldAllowIncomingCallWithQueue_cold_1();
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    v24 = __Block_byref_object_copy_;
    v25 = __Block_byref_object_dispose_;
    v11 = IMXPCCreateConnectionForServiceWithQueue();
    v26 = v11;
    if (*(*&buf[8] + 40))
    {
      v13 = ICFDefaultLog(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_254B1F000, v13, OS_LOG_TYPE_DEFAULT, "We have a remote connection let's build a request message", v21, 2u);
      }

      v14 = xpc_dictionary_create(0, 0, 0);
      if (v14)
      {
        IMInsertNSStringsToXPCDictionary();
        IMInsertNSStringsToXPCDictionary();
        xpc_dictionary_set_BOOL(v14, "call-request", 1);
        v17 = ICFDefaultLog(v15, v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v21 = 138412290;
          v22 = v14;
          _os_log_impl(&dword_254B1F000, v17, OS_LOG_TYPE_DEFAULT, "Sending request message %@", v21, 0xCu);
        }

        if (!global_queue)
        {
          global_queue = dispatch_get_global_queue(2, 0);
        }

        v18 = *(*&buf[8] + 40);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __ICFCallProviderShouldAllowIncomingCallWithQueue_block_invoke_9;
        handler[3] = &unk_2797A95B0;
        handler[4] = v10;
        handler[5] = buf;
        xpc_connection_send_message_with_reply(v18, v14, global_queue, handler);
        xpc_release(v14);
      }

      else
      {
        xpc_connection_cancel(*(*&buf[8] + 40));
        xpc_release(*(*&buf[8] + 40));
      }
    }

    else
    {
      v19 = ICFDefaultLog(v11, v12);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_254B1F000, v19, OS_LOG_TYPE_DEFAULT, "[WARN] No Connection !!", v21, 2u);
      }

      if (v10)
      {
        v10[2](v10, 1, 1);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    ICFCallProviderShouldAllowIncomingCallWithQueue_cold_2(v9);
  }
}

void sub_254B22C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

dispatch_queue_t __ICFCallProviderShouldAllowIncomingCallWithQueue_block_invoke()
{
  result = dispatch_queue_create("com.apple.ICFCallProviderMessageQueue", 0);
  ICFCallProviderShouldAllowIncomingCallWithQueue_connectionRequestQueue = result;
  return result;
}

void __ICFCallProviderShouldAllowIncomingCallWithQueue_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = ICFDefaultLog(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_254B1F000, v2, OS_LOG_TYPE_DEFAULT, "[WARN] RemoteConnection died", v3, 2u);
  }
}

void __ICFCallProviderShouldAllowIncomingCallWithQueue_block_invoke_9(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x259C24500](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    v11 = ICFDefaultLog(v4, v5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __ICFCallProviderShouldAllowIncomingCallWithQueue_block_invoke_9_cold_1(a2, v11);
    }
  }

  else
  {
    v6 = xpc_dictionary_get_BOOL(a2, "response");
    v7 = xpc_dictionary_get_BOOL(a2, "isBlocked");
    v9 = ICFDefaultLog(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (v6)
      {
        v10 = @"YES";
      }

      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_254B1F000, v9, OS_LOG_TYPE_DEFAULT, "Got result: %@", &v12, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
  xpc_connection_cancel(*(*(*(a1 + 40) + 8) + 40));
  xpc_release(*(*(*(a1 + 40) + 8) + 40));
}

uint64_t ICFDefaultLog(uint64_t a1, uint64_t a2)
{
  if (ICFDefaultLog_onceToken != -1)
  {
    ICFDefaultLog_cold_1();
  }

  return ICFDefaultLog_ICFDefaultLog;
}

os_log_t __ICFDefaultLog_block_invoke()
{
  result = os_log_create("com.apple.calls.incomingcallfilter", "Default");
  ICFDefaultLog_ICFDefaultLog = result;
  return result;
}

void __ICFCallProviderShouldAllowIncomingCallWithQueue_block_invoke_9_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  string = xpc_dictionary_get_string(a1, *MEMORY[0x277D86400]);
  v4 = 136315138;
  v5 = string;
  _os_log_error_impl(&dword_254B1F000, a2, OS_LOG_TYPE_ERROR, "Error requesting client: %s", &v4, 0xCu);
}