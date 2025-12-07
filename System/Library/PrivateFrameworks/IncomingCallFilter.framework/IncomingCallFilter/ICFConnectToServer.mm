@interface ICFConnectToServer
@end

@implementation ICFConnectToServer

void ___ICFConnectToServer_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = ICFDefaultLog(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_254B1F000, v2, OS_LOG_TYPE_DEFAULT, "[WARN] Connection went invalid, exiting", v3, 2u);
  }

  xpc_release(sServerConnection);
  sServerConnection = 0;
}

void ___ICFConnectToServer_block_invoke_8(uint64_t a1, _xpc_connection_s *a2, void *a3)
{
  v3 = a3;
  v53 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x259C24500](a3);
  v7 = v5;
  v8 = MEMORY[0x277D86480];
  if (v5 == MEMORY[0x277D86480])
  {
    if (v3 == MEMORY[0x277D863F8])
    {
      v35 = ICFDefaultLog(v5, v6);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        ___ICFConnectToServer_block_invoke_8_cold_3(a2);
      }

      xpc_connection_cancel(a2);
      v38 = ICFDefaultLog(v36, v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254B1F000, v38, OS_LOG_TYPE_DEFAULT, "Cleaning up connection", buf, 2u);
      }

      xpc_release(sServerConnection);
      sServerConnection = 0;
    }

    else if (v3 == MEMORY[0x277D863F0])
    {
      v39 = ICFDefaultLog(v5, v6);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        ___ICFConnectToServer_block_invoke_8_cold_2(a2);
      }
    }

    else if (v3 == MEMORY[0x277D86420])
    {
      v29 = ICFDefaultLog(v5, v6);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        ___ICFConnectToServer_block_invoke_8_cold_1(a2);
      }
    }
  }

  v9 = MEMORY[0x259C244A0](v3);
  v11 = ICFDefaultLog(v9, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    pid = xpc_connection_get_pid(a2);
    *buf = 67109378;
    *v52 = pid;
    *&v52[4] = 2080;
    *&v52[6] = v9;
    _os_log_impl(&dword_254B1F000, v11, OS_LOG_TYPE_DEFAULT, "received message from peer(%d): %s", buf, 0x12u);
  }

  free(v9);
  if (v7 != v8)
  {
    v13 = IMGetXPCStringFromDictionary();
    v14 = IMGetXPCStringFromDictionary();
    v16 = ICFDefaultLog(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v52 = v13;
      *&v52[8] = 2112;
      *&v52[10] = v14;
      _os_log_impl(&dword_254B1F000, v16, OS_LOG_TYPE_DEFAULT, "Incoming call filtering query for number %@ and provider identifier %@", buf, 0x16u);
    }

    v17 = 0x281002000uLL;
    [sFilterLock lock];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v18 = [sFilterBlocks allValues];
    v19 = [v18 countByEnumeratingWithState:&v41 objects:buf count:16];
    if (v19)
    {
      v20 = v19;
      v40 = v3;
      v21 = *v42;
LABEL_9:
      v22 = 0;
      while (1)
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v41 + 1) + 8 * v22);
        v24 = v23[2](v23, v13, v14);
        v26 = ICFDefaultLog(v24, v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = @"deny";
          if (!v24)
          {
            v27 = @"allow";
          }

          *v45 = 138412802;
          v46 = v23;
          v28 = @"not blocked";
          if (v24 == 2)
          {
            v28 = @"blocked";
          }

          v47 = 2112;
          v48 = v27;
          v49 = 2112;
          v50 = v28;
          _os_log_impl(&dword_254B1F000, v26, OS_LOG_TYPE_DEFAULT, "We asked the filter %@ and it's telling us to %@ the call, and that the call was %@", v45, 0x20u);
        }

        if (v24)
        {
          break;
        }

        if (v20 == ++v22)
        {
          v20 = [v18 countByEnumeratingWithState:&v41 objects:buf count:16];
          if (v20)
          {
            goto LABEL_9;
          }

          break;
        }
      }

      v3 = v40;
      v17 = 0x281002000;
    }

    [*(v17 + 360) unlock];
    reply = xpc_dictionary_create_reply(v3);
    if (reply)
    {
      v31 = reply;
      IMInsertBoolsToXPCDictionary();
      IMInsertBoolsToXPCDictionary();
      v32 = MEMORY[0x259C244A0](v31);
      v34 = ICFDefaultLog(v32, v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *v45 = 136315394;
        v46 = v32;
        v47 = 2048;
        v48 = a2;
        _os_log_impl(&dword_254B1F000, v34, OS_LOG_TYPE_DEFAULT, "Forwarding reply %s to connection %p", v45, 0x16u);
      }

      free(v32);
      xpc_connection_send_message(a2, v31);
      xpc_release(v31);
    }
  }
}

void ___ICFConnectToServer_block_invoke_8_cold_1(_xpc_connection_s *a1)
{
  LODWORD(v7) = 67109120;
  HIDWORD(v7) = xpc_connection_get_pid(a1);
  OUTLINED_FUNCTION_0(&dword_254B1F000, v1, v2, "peer(%d) received XPC_ERROR_TERMINATION_IMMINENT", v3, v4, v5, v6, v7);
}

void ___ICFConnectToServer_block_invoke_8_cold_2(_xpc_connection_s *a1)
{
  LODWORD(v7) = 67109120;
  HIDWORD(v7) = xpc_connection_get_pid(a1);
  OUTLINED_FUNCTION_0(&dword_254B1F000, v1, v2, "peer(%d) received XPC_ERROR_CONNECTION_INTERRUPTED", v3, v4, v5, v6, v7);
}

void ___ICFConnectToServer_block_invoke_8_cold_3(_xpc_connection_s *a1)
{
  LODWORD(v7) = 67109120;
  HIDWORD(v7) = xpc_connection_get_pid(a1);
  OUTLINED_FUNCTION_0(&dword_254B1F000, v1, v2, "peer(%d) received XPC_ERROR_CONNECTION_INVALID", v3, v4, v5, v6, v7);
}

@end