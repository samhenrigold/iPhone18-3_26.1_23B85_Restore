void *_NETRBClientCreateInternal(NSObject *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 2000;
  v7 = 0;
  if (!NETRBLogCreate(a1, a2))
  {
    if (__NETRBClientGetTypeID_pred != -1)
    {
      _NETRBClientCreateInternal_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    v7 = Instance;
    if (Instance)
    {
      bzero((Instance + 16), 0x218uLL);
      if (a1)
      {
        v7[2] = a1;
        dispatch_retain(a1);
        if (a2)
        {
          v7[3] = _Block_copy(a2);
        }
      }

      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      v10 = __NETRBClientGetQueue___netrbQueue;
      if (__NETRBClientGetQueue___netrbQueue)
      {
        if (__NETRBClientGetXpcQueue_predXpc != -1)
        {
          _NETRBClientCreateInternal_cold_3();
        }

        if (__NETRBClientGetXpcQueue___netrbXpcQueue)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = ___NETRBClientCreateInternal_block_invoke;
          block[3] = &unk_2799673C0;
          block[6] = v7;
          block[7] = __NETRBClientGetXpcQueue___netrbXpcQueue;
          block[4] = &v18;
          block[5] = &v14;
          block[8] = v10;
          block[9] = a4;
          dispatch_sync(v10, block);
          if (*(v19 + 24) == 1 && (v15[3] | 2) == 0x7D2)
          {
            *(v19 + 24) = 0;
          }
        }

        else
        {
          NETRBErrorLog("unable to create XPC queue");
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }

      if ((v19[3] & 1) == 0)
      {
        CFRelease(v7);
        v7 = 0;
      }
    }

    else
    {
      v11 = __error();
      v12 = strerror(*v11);
      NETRBErrorLog("unable to create client object %s", v12);
    }
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v7;
}

uint64_t NETRBLogCreate(uint64_t a1, uint64_t a2)
{
  if (NETRBLogCreate_predLog != -1)
  {
    NETRBLogCreate_cold_1();
  }

  if (NETRBLogCreate_error)
  {
    return 12;
  }

  else
  {
    return 0;
  }
}

void __NETRBLogCreate_block_invoke()
{
  __netrbLog = os_log_create("com.apple.MobileInternetSharing", "framework.netrb");
  if (!__netrbLog)
  {
    NETRBLogCreate_error = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __NETRBLogCreate_block_invoke_cold_1();
    }
  }
}

BOOL NETRBXPCCreate(dispatch_queue_t targetq, uint64_t a2)
{
  if (__netrbConnection)
  {
    NETRBDebugLog("xpc connection %p to daemon already exists", __netrbConnection);
    return 1;
  }

  __netrbConnection = xpc_connection_create_mach_service(netrbXPCService, targetq, 2uLL);
  if (!__netrbConnection)
  {
    goto LABEL_7;
  }

  if (MEMORY[0x25F870830]() != MEMORY[0x277D86450])
  {
    if (__netrbConnection)
    {
      xpc_release(__netrbConnection);
LABEL_8:
      result = 0;
      __netrbConnection = 0;
      return result;
    }

LABEL_7:
    NETRBErrorLog("unable to create connection to daemon %s", netrbXPCService);
    goto LABEL_8;
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = __NETRBXPCCreate_block_invoke;
  handler[3] = &__block_descriptor_tmp_77;
  handler[4] = __netrbConnection;
  handler[5] = a2;
  xpc_connection_set_event_handler(__netrbConnection, handler);
  NETRBInfoLog("connection %p to daemon created", __netrbConnection);
  xpc_connection_resume(__netrbConnection);
  return __netrbConnection != 0;
}

uint64_t NETRBXPCEndPointCreate(dispatch_queue_t targetq)
{
  if (__netrbReceiverConnection)
  {
    NETRBDebugLog("xpc endpoint connection already exists");
  }

  else
  {
    v2 = xpc_connection_create(0, targetq);
    __netrbReceiverConnection = v2;
    if (!v2)
    {
      NETRBErrorLog("unable to create xpc endpoint connection");
      return 0;
    }

    v3 = v2;
    NETRBInfoLog("listener connection %p created", v2);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = __NETRBXPCEndPointCreate_block_invoke;
    handler[3] = &__block_descriptor_tmp_72;
    handler[4] = v3;
    handler[5] = targetq;
    xpc_connection_set_event_handler(v3, handler);
    xpc_connection_resume(__netrbReceiverConnection);
  }

  return 1;
}

uint64_t NETRBXPCSetupAndSend(NSObject *a1, xpc_object_t xdict, uint64_t a3)
{
  if (xpc_dictionary_get_uint64(xdict, netrbXPCKey) == 1000)
  {
    if (!__netrbReceiverConnection)
    {
      return 0;
    }

    xpc_dictionary_set_connection(xdict, netrbXPCClientComm, __netrbReceiverConnection);
  }

  if (a1)
  {
    v6 = __netrbConnection != 0;
    if (__netrbConnection)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 0x40000000;
      handler[2] = ____NETRBXPCSendMessage_block_invoke;
      handler[3] = &unk_279967370;
      handler[4] = a3;
      xpc_connection_send_message_with_reply(__netrbConnection, xdict, a1, handler);
    }

    else
    {
      NETRBDebugLog("connection to daemon does not exist");
    }

    return v6;
  }

  if (!__netrbConnection)
  {
    NETRBDebugLog("connection to daemon does not exist");
    return 0;
  }

  v7 = xpc_connection_send_message_with_reply_sync(__netrbConnection, xdict);
  v8 = v7;
  v9 = MEMORY[0x277D86468];
  if (v7)
  {
    v10 = MEMORY[0x25F870830](v7);
    if (v10 != MEMORY[0x277D86480])
    {
      v11 = v10;
      if (v10 == v9)
      {
        if (xpc_dictionary_get_uint64(v8, netrbXPCResponse) == 2002)
        {
          NETRBErrorLog("error: aborting XPC connection to daemon");
          NETRBXPCCleanup();
        }

        v11 = MEMORY[0x277D86468];
      }

      else
      {
        NETRBErrorLog("unknown response");
        NETRBXPCCleanup();
      }

      goto LABEL_18;
    }

    string = xpc_dictionary_get_string(v8, *MEMORY[0x277D86400]);
    NETRBErrorLog("xpc_connection_send_message_with_reply_sync() received %s", string);
    NETRBXPCCleanup();
  }

  else
  {
    NETRBXPCCleanup();
    NETRBErrorLog("NULL response from xpc_connection_send_message_with_reply_sync");
  }

  v11 = MEMORY[0x277D86480];
LABEL_18:
  if (v11 == v9)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  (*(a3 + 16))(a3, v13);
  if (v8)
  {
    xpc_release(v8);
  }

  return 1;
}

uint64_t _NETRBClientGetGlobalServiceState(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 2000;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (__NETRBClientGetQueue_predQueue != -1)
        {
          v7 = a1;
          _NETRBClientCreateInternal_cold_2();
          a1 = v7;
        }

        if (__NETRBClientGetQueue___netrbQueue)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = ___NETRBClientGetGlobalServiceState_block_invoke;
          block[3] = &unk_279967518;
          block[4] = &v13;
          block[5] = &v9;
          block[6] = &v21;
          block[7] = &v17;
          block[8] = a1;
          dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
          if (*(v14 + 24) == 1)
          {
            *(v14 + 24) = v10[3] == 2001;
            *a2 = *(v22 + 6);
            *a3 = *(v18 + 6);
          }
        }

        else
        {
          NETRBErrorLog("unable to create framework queue", a2, a3, v7);
        }
      }

      else
      {
        NETRBErrorLog("reason cannot be NULL", a2, 0);
      }
    }

    else
    {
      NETRBErrorLog("state cannot be NULL", 0, a3);
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL", a2, a3);
  }

  v5 = *(v14 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v5;
}

uint64_t __NETRBClientValidateClient(_BYTE *a1)
{
  if (!a1)
  {
    NETRBErrorLog("client handler is NULL");
    return 22;
  }

  if (!a1[288])
  {
    return 22;
  }

  if (!__netrbClientList)
  {
    NETRBErrorLog("client list is empty");
    return 22;
  }

  Count = CFArrayGetCount(__netrbClientList);
  if (!Count)
  {
    NETRBErrorLog("client is not added to the list");
    return 22;
  }

  v3 = Count;
  if (Count < 1)
  {
LABEL_13:
    NETRBErrorLog("unknown client");
    return 22;
  }

  v4 = 0;
  while (CFArrayGetValueAtIndex(__netrbClientList, v4) != a1)
  {
    if (v3 == ++v4)
    {
      goto LABEL_13;
    }
  }

  return 0;
}

uint64_t _NETRBClientDestroy(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 2000;
  if (a1)
  {
    if (__NETRBClientGetQueue_predQueue != -1)
    {
      _NETRBClientCreateInternal_cold_2();
    }

    if (__NETRBClientGetQueue___netrbQueue)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___NETRBClientDestroy_block_invoke;
      block[3] = &unk_279967410;
      block[4] = &v9;
      block[5] = &v5;
      block[6] = a1;
      dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
      if (*(v10 + 24) == 1)
      {
        *(v10 + 24) = v6[3] == 2001;
      }
    }

    else
    {
      NETRBErrorLog("unable to create framework queue");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

  v2 = *(v10 + 24);
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  return v2;
}

void __NETRBClientRemoveFromList(const void *a1)
{
  if (__netrbClientList && CFArrayGetCount(__netrbClientList) >= 1)
  {
    v2 = 0;
    while (CFArrayGetValueAtIndex(__netrbClientList, v2) != a1)
    {
      if (++v2 >= CFArrayGetCount(__netrbClientList))
      {
        return;
      }
    }

    CFArrayRemoveValueAtIndex(__netrbClientList, v2);
    if (!CFArrayGetCount(__netrbClientList))
    {
      NETRBXPCCleanup();
      NETRBEndPointCleanup();
      CFRelease(__netrbClientList);
      __netrbClientList = 0;
    }
  }
}

BOOL NETRBXPCCleanup()
{
  v0 = __netrbConnection;
  if (__netrbConnection)
  {
    NETRBInfoLog("cleaning up connection %p to daemon", __netrbConnection);
    xpc_connection_cancel(__netrbConnection);
    xpc_release(__netrbConnection);
    __netrbConnection = 0;
  }

  return v0 != 0;
}

BOOL NETRBEndPointCleanup()
{
  v0 = __netrbReceiverConnection;
  if (__netrbReceiverConnection)
  {
    NETRBInfoLog("cleaning up listener connection %p", __netrbReceiverConnection);
    xpc_connection_cancel(__netrbReceiverConnection);
    xpc_release(__netrbReceiverConnection);
    __netrbReceiverConnection = 0;
  }

  return v0 != 0;
}

uint64_t __NETRBClientRelease(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    _Block_release(v2);
    a1[3] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
    a1[2] = 0;
  }

  return NETRBInfoLog("releasing client %p", a1);
}

void __NETRBXPCCreate_block_invoke(uint64_t a1, xpc_object_t object)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __NETRBXPCCreate_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_76;
  v3 = *(a1 + 32);
  v4[4] = object;
  v4[5] = v3;
  xpc_retain(object);
  dispatch_async(*(a1 + 40), v4);
}

void __NETRBXPCEndPointCreate_block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x25F870830](a2);
  v5 = *(a1 + 32);
  if (v5 && (v5 == __netrbReceiverConnection ? (v6 = v4 == MEMORY[0x277D86480]) : (v6 = 0), v6))
  {
    if (a2 == MEMORY[0x277D86420])
    {
      NETRBInfoLog("received XPC_ERROR_TERMINATION_IMMINENT for %p");
    }

    else if (a2 == MEMORY[0x277D863F8])
    {
      NETRBInfoLog("XPC_ERROR_CONNECTION_INVALID for %p");
    }
  }

  else if (v4 == MEMORY[0x277D86450])
  {
    v7 = *(a1 + 40);
    NETRBInfoLog("new notification connection %p from daemon", a2);
    if (__netrbNotificationConnection)
    {
      xpc_connection_cancel(__netrbNotificationConnection);
      xpc_release(__netrbNotificationConnection);
      __netrbNotificationConnection = 0;
    }

    __netrbNotificationConnection = xpc_retain(a2);
    xpc_connection_set_target_queue(a2, v7);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = ____NETRBXPCNewNotificationConnection_block_invoke;
    handler[3] = &__block_descriptor_tmp_86;
    handler[4] = a2;
    xpc_connection_set_event_handler(a2, handler);
    xpc_connection_resume(a2);
  }
}

void __NETRBXPCCreate_block_invoke_2(uint64_t a1)
{
  if (MEMORY[0x25F870830](*(a1 + 32)) == MEMORY[0x277D86480])
  {
    v2 = *(a1 + 40);
    if (v2 == __netrbConnection)
    {
      string = xpc_dictionary_get_string(*(a1 + 32), *MEMORY[0x277D86400]);
      NETRBErrorLog("xpc connection %p to daemon error: %s", v2, string);
      NETRBXPCCleanup();
    }
  }

  else
  {
    NETRBErrorLog("unrecognized event");
  }

  v4 = *(a1 + 32);

  xpc_release(v4);
}

uint64_t netrbInitIfnetTrafficDescriptor(void *a1, uint64_t a2)
{
  if (!a1 || (v4 = MEMORY[0x25F870830](), v5 = MEMORY[0x277D86468], v4 != MEMORY[0x277D86468]))
  {
    NETRBErrorLog("metadata is not dictionary object", a2);
    return 0;
  }

  value = xpc_dictionary_get_value(a1, netrbClientLowLatencyFlowParam);
  if (!value || (v9 = value, MEMORY[0x25F870830]() != v5))
  {
    NETRBErrorLog("metadata does not contain low latency flow parameter dictionary.", v8);
    return 0;
  }

  v45 = 0uLL;
  v44 = 0uLL;
  v10 = xpc_dictionary_get_value(v9, netrbClientIfnetTrafficDescriptorIpVersion);
  v11 = MEMORY[0x277D864C8];
  if (v10 && (v12 = v10, MEMORY[0x25F870830]() == v11))
  {
    v22 = xpc_uint64_get_value(v12);
    v24 = v22;
    if (v22 != 4 && v22 != 96)
    {
      NETRBErrorLog("IP version (%hhu) is not supported or is invalid", v23);
      return 0;
    }

    if (a2)
    {
      *(a2 + 8) |= 1u;
      *(a2 + 9) = v22;
    }

    v25 = xpc_dictionary_get_value(v9, netrbClientIfnetTrafficDescriptorLocalIp);
    v26 = MEMORY[0x277D864C0];
    if (v25 && (v27 = v25, MEMORY[0x25F870830]() == v26))
    {
      string_ptr = xpc_string_get_string_ptr(v27);
      if (a2)
      {
        *(a2 + 8) |= 4u;
      }
    }

    else
    {
      NETRBInfoLog("local IP is not present or has incorrect type");
      string_ptr = 0;
    }

    v29 = xpc_dictionary_get_value(v9, netrbClientIfnetTrafficDescriptorRemoteIp);
    if (v29 && (v30 = v29, MEMORY[0x25F870830]() == v26))
    {
      v31 = xpc_string_get_string_ptr(v30);
      if (a2)
      {
        *(a2 + 8) |= 8u;
      }
    }

    else
    {
      NETRBInfoLog("remote IP is not present or has incorrect type");
      v31 = 0;
    }

    if (v24 == 4)
    {
      if (string_ptr && inet_pton(2, string_ptr, &v45 + 12) != 1 || v31 && inet_pton(2, v31, &v44 + 12) != 1)
      {
        NETRBErrorLog("local or remote IPv4 address is malformed.", v32);
        return 0;
      }

      if (a2)
      {
        *(a2 + 24) = HIDWORD(v45);
        *(a2 + 40) = HIDWORD(v44);
      }
    }

    else
    {
      if (string_ptr && inet_pton(30, string_ptr, &v45) != 1 || v31 && inet_pton(30, v31, &v44) != 1)
      {
        NETRBErrorLog("local or remote IPv6 address is malformed.", v41);
        return 0;
      }

      if (a2)
      {
        v42 = v44;
        *(a2 + 12) = v45;
        *(a2 + 28) = v42;
      }
    }
  }

  else
  {
    NETRBErrorLog("IP version is not present");
  }

  v13 = xpc_dictionary_get_value(v9, netrbClientIfnetTrafficDescriptorIpProtocol);
  if (v13 && (v14 = v13, MEMORY[0x25F870830]() == v11))
  {
    v33 = xpc_uint64_get_value(v14);
    if (v33 != 17 && v33 != 6)
    {
      NETRBErrorLog("IP protocol is not supported or is invalid.", v34);
      return 0;
    }

    if (a2)
    {
      *(a2 + 8) |= 2u;
      *(a2 + 10) = v33;
    }
  }

  else
  {
    NETRBInfoLog("IP protocol is not present or has incorrect type");
  }

  v15 = xpc_dictionary_get_value(v9, netrbClientIfnetTrafficDescriptorLocalPort);
  if (v15)
  {
    v16 = v15;
    if (MEMORY[0x25F870830]() != v11)
    {
LABEL_21:
      NETRBErrorLog("Local port specified does not have UINT64 type.", v17);
      return 0;
    }

    v18 = xpc_uint64_get_value(v16);
    if (v18 - 0x10000 < 0xFFFFFFFFFFFF0001)
    {
      NETRBErrorLog("Illegal local port %llu", v19);
      return 0;
    }

    if (a2)
    {
      *(a2 + 8) |= 0x10u;
      *(a2 + 44) = bswap32(v18) >> 16;
    }
  }

  else
  {
    NETRBInfoLog("No local port specified.");
  }

  v20 = xpc_dictionary_get_value(v9, netrbClientIfnetTrafficDescriptorRemotePort);
  if (v20)
  {
    v21 = v20;
    if (MEMORY[0x25F870830]() != v11)
    {
      goto LABEL_21;
    }

    v39 = xpc_uint64_get_value(v21);
    if (v39 - 0x10000 < 0xFFFFFFFFFFFF0001)
    {
      NETRBErrorLog("Illegal remote port %llu", v40);
      return 0;
    }

    if (a2)
    {
      *(a2 + 8) |= 0x20u;
      *(a2 + 46) = bswap32(v39) >> 16;
    }
  }

  else
  {
    NETRBErrorLog("No local port specified.");
  }

  v36 = xpc_dictionary_get_value(v9, netrbClientIfnetTrafficDescriptorConnectionIdleTimeout);
  if (v36)
  {
    v37 = v36;
    if (MEMORY[0x25F870830]() != v11)
    {
      NETRBErrorLog("Connection idle timeout does not have UINT64 type.", v38);
      return 0;
    }

    if (xpc_uint64_get_value(v37) >= 0x69781)
    {
      NETRBErrorLog("Connection idle timeout exceeds max limit of %u seconds", v43);
      return 0;
    }
  }

  return 1;
}

uint64_t _NETRBNetworkCopy(uint64_t a1, uint64_t a2)
{
  if (_NETRBNetworkGetTypeId_pred != -1)
  {
    _NETRBNetworkCopy_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(Instance + 48) = *(a2 + 48);
  *(Instance + 64) = v6;
  *(Instance + 16) = v4;
  *(Instance + 32) = v5;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(Instance + 128) = *(a2 + 128);
  *(Instance + 96) = v8;
  *(Instance + 112) = v9;
  *(Instance + 80) = v7;
  *(Instance + 136) = 0;
  *(Instance + 144) = 0;
  v10 = *(a2 + 136);
  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = malloc_type_malloc(0x18uLL, 0x10200400817995AuLL);
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = (Instance + 136);
      }

      v14 = *v10;
      v12[2] = *(v10 + 2);
      *v12 = v14;
      *v12 = *v13;
      *v13 = v12;
      v10 = *v10;
      v11 = v12;
    }

    while (v10);
  }

  v15 = *(a2 + 144);
  if (v15)
  {
    v16 = 0;
    do
    {
      v17 = malloc_type_malloc(0x20uLL, 0x10200401B9196EFuLL);
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = (Instance + 144);
      }

      v19 = v15[1];
      *v17 = *v15;
      v17[1] = v19;
      *v17 = *v18;
      *v18 = v17;
      v15 = *v15;
      v16 = v17;
    }

    while (v15);
  }

  return Instance;
}

uint64_t _NETRBClientStartService(uint64_t a1, char *__s1, int a3, int a4, void *a5)
{
  v68 = 0;
  v69 = &v68;
  v70 = 0x2000000000;
  v71 = 0;
  if (!a1)
  {
    NETRBErrorLog("client handle cannot be NULL", __s1);
    goto LABEL_23;
  }

  if ((a3 - 205) <= 0xFFFFFFFA)
  {
    NETRBErrorLog("incorrect operation mode %d", __s1);
    goto LABEL_23;
  }

  if ((a4 - 304) <= 0xFFFFFFFB)
  {
    NETRBErrorLog("incorrect bridge type %d", __s1);
    goto LABEL_23;
  }

  if (__s1 && *__s1 && strncmp(__s1, netrbClientAnyExternal, 0x10uLL) && !if_nametoindex(__s1))
  {
    NETRBErrorLog("incorrect external interface name %s", v10);
    goto LABEL_23;
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  if (!v11)
  {
    NETRBErrorLog("xpc_dictionary_create() failed");
    goto LABEL_23;
  }

  v12 = v11;
  if (!a5 || (v13 = MEMORY[0x25F870830](a5), v14 = MEMORY[0x277D86468], v13 != MEMORY[0x277D86468]))
  {
    NETRBErrorLog("incorrect interface object");
LABEL_20:
    v20 = v12;
LABEL_21:
    xpc_release(v20);
    goto LABEL_23;
  }

  value = xpc_dictionary_get_value(a5, netrbClientDeviceType);
  if (!value || (v16 = value, v17 = MEMORY[0x25F870830](), v18 = MEMORY[0x277D864C8], v17 != MEMORY[0x277D864C8]) || (v19 = xpc_uint64_get_value(v16), v19 >= 7))
  {
    NETRBErrorLog("device type is incorrect");
    goto LABEL_20;
  }

  v23 = v19;
  xpc_dictionary_set_uint64(v12, netrbXPCDeviceType, v19);
  if (v23 != 1)
  {
    v26 = xpc_dictionary_get_value(a5, netrbClientInterfaceName);
    if (!v26 || (v27 = v26, MEMORY[0x25F870830]() != MEMORY[0x277D864C0]) || (string_ptr = xpc_string_get_string_ptr(v27), !if_nametoindex(string_ptr)))
    {
      NETRBErrorLog("interface name is incorrect");
      goto LABEL_20;
    }

    v33 = netrbXPCInterfaceName;
    v34 = xpc_string_get_string_ptr(v27);
    xpc_dictionary_set_string(v12, v33, v34);
  }

  v24 = xpc_dictionary_get_value(a5, netrbClientInterfaceMTU);
  if (v24)
  {
    v25 = v24;
    if (MEMORY[0x25F870830]() != v18)
    {
      NETRBErrorLog("incorrect format for interface mtu");
      goto LABEL_20;
    }

    v28 = netrbXPCInterfaceMTU;
    v29 = xpc_uint64_get_value(v25);
    xpc_dictionary_set_uint64(v12, v28, v29);
  }

  v30 = xpc_dictionary_get_value(a5, netrbClientInterfaceInstance);
  if (v30)
  {
    v31 = v30;
    if (MEMORY[0x25F870830]() != v18)
    {
      NETRBErrorLog("incorrect format for interface instance");
      goto LABEL_20;
    }

    v35 = netrbXPCInterfaceInstance;
    v36 = xpc_uint64_get_value(v31);
    xpc_dictionary_set_uint64(v12, v35, v36);
  }

  v37 = xpc_dictionary_get_value(a5, netrbClientInterfaceStartAddress);
  if (v37)
  {
    v38 = v37;
    if (MEMORY[0x25F870830]() != MEMORY[0x277D864C0])
    {
      NETRBErrorLog("incorrect format for interface start address");
      goto LABEL_20;
    }

    v39 = netrbXPCStartAddress;
    v40 = xpc_string_get_string_ptr(v38);
    xpc_dictionary_set_string(v12, v39, v40);
  }

  v41 = xpc_dictionary_get_value(a5, netrbClientInterfaceEndAddress);
  if (v41)
  {
    v42 = v41;
    if (MEMORY[0x25F870830]() != MEMORY[0x277D864C0])
    {
      NETRBErrorLog("incorrect format for interface end address");
      goto LABEL_20;
    }

    v43 = netrbXPCEndAddress;
    v44 = xpc_string_get_string_ptr(v42);
    xpc_dictionary_set_string(v12, v43, v44);
  }

  v45 = xpc_dictionary_get_value(a5, netrbClientInterfaceNetworkMask);
  if (v45)
  {
    v46 = v45;
    if (MEMORY[0x25F870830]() != MEMORY[0x277D864C0])
    {
      NETRBErrorLog("incorrect format for interface network mask");
      goto LABEL_20;
    }

    v47 = netrbXPCNetworkMask;
    v48 = xpc_string_get_string_ptr(v46);
    xpc_dictionary_set_string(v12, v47, v48);
  }

  v49 = xpc_dictionary_get_value(a5, netrbClientNatType);
  if (!v49)
  {
    if (a3 != 201)
    {
      xpc_dictionary_set_uint64(v12, netrbXPCNatType, 0x1F5uLL);
LABEL_60:
      v53 = 0;
      goto LABEL_61;
    }

    xpc_dictionary_set_uint64(v12, netrbXPCNatType, 0x1F4uLL);
LABEL_55:
    if (!insert_nat66_params(a5, v12))
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

  v50 = v49;
  if (MEMORY[0x25F870830]() != v18)
  {
    NETRBErrorLog("incorrect format for nat type");
    goto LABEL_20;
  }

  v51 = xpc_uint64_get_value(v50);
  v52 = v51;
  if (v51 - 503 <= 0xFFFFFFFC)
  {
    NETRBErrorLog("incorrect nat type %d");
    goto LABEL_20;
  }

  xpc_dictionary_set_uint64(v12, netrbXPCNatType, v51);
  if (v52 == 500)
  {
    goto LABEL_55;
  }

  if (v52 != 502)
  {
    goto LABEL_60;
  }

  v54 = xpc_dictionary_get_value(a5, netrbClientNat64Param);
  if (!v54)
  {
    goto LABEL_60;
  }

  v55 = v54;
  if (MEMORY[0x25F870830]() != v14)
  {
    NETRBErrorLog("incorrect format for nat64 param dictionary");
    goto LABEL_20;
  }

  v56 = xpc_dictionary_create(0, 0, 0);
  if (!v56)
  {
    NETRBErrorLog("xpc_dictionary_create() failed for NAT64 dictionary");
    goto LABEL_20;
  }

  v53 = v56;
  v57 = xpc_dictionary_get_value(v55, netrbClientDns64Prefix);
  if (v57)
  {
    v58 = v57;
    if (MEMORY[0x25F870830]() != MEMORY[0x277D864C0])
    {
      NETRBErrorLog("incorrect format for dns64 prefix");
LABEL_82:
      xpc_release(v12);
LABEL_67:
      v20 = v53;
      goto LABEL_21;
    }

    v59 = netrbXPCDns64Prefix;
    v60 = xpc_string_get_string_ptr(v58);
    xpc_dictionary_set_string(v53, v59, v60);
  }

  v61 = xpc_dictionary_get_value(v55, netrbClientRaPrefix);
  if (v61)
  {
    v62 = v61;
    if (MEMORY[0x25F870830]() != MEMORY[0x277D864C0])
    {
      NETRBErrorLog("incorrect format for NAT64 RA prefix");
      goto LABEL_82;
    }

    v63 = netrbXPCRaPrefix;
    v64 = xpc_string_get_string_ptr(v62);
    xpc_dictionary_set_string(v53, v63, v64);
  }

  xpc_dictionary_set_value(v12, netrbXPCNat64Param, v53);
LABEL_61:
  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (__NETRBClientGetQueue___netrbQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___NETRBClientStartService_block_invoke;
    block[3] = &unk_279967458;
    block[4] = &v68;
    block[5] = a1;
    v66 = a3;
    v67 = a4;
    block[6] = v12;
    block[7] = __s1;
    block[8] = __NETRBClientGetQueue___netrbQueue;
    dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
  }

  else
  {
    NETRBErrorLog("unable to create framework queue");
  }

  xpc_release(v12);
  if (v53)
  {
    goto LABEL_67;
  }

LABEL_23:
  v21 = *(v69 + 24);
  _Block_object_dispose(&v68, 8);
  return v21;
}

uint64_t insert_nat66_params(void *a1, void *a2)
{
  value = xpc_dictionary_get_value(a1, netrbClientNat66Param);
  if (value)
  {
    v4 = value;
    if (MEMORY[0x25F870830]() != MEMORY[0x277D86468])
    {
      NETRBErrorLog("incorrect format for nat66 param dictionary");
      return 0;
    }

    string = xpc_dictionary_get_string(v4, netrbClientRaPrefix);
    if (!string)
    {
      NETRBErrorLog("NAT66 RA prefix is invalid/missing");
      return 0;
    }

    v7 = string;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, netrbXPCRaPrefix, v7);
    xpc_dictionary_set_value(a2, netrbXPCNat66Param, v8);
  }

  return 1;
}

void __NETRBClientResponseHandler(void *a1, int a2, void *a3, uint64_t a4)
{
  NETRBInfoLog("client %p %s xpc response received", a1, (&off_279967CA0)[a2 - 1001]);
  if (!__NETRBClientValidateClient(a1))
  {
    if (!a1[2] || !a1[3])
    {
      NETRBDebugLog("no queue or handler block to send response");
      goto LABEL_9;
    }

    if (a3)
    {
      if (xpc_dictionary_get_uint64(a3, netrbXPCResponse) == 2003)
      {
        NETRBDebugLog("service object destroyed before service completed");
        goto LABEL_9;
      }

      v9 = xpc_dictionary_create(0, 0, 0);
      if (v9)
      {
        v8 = v9;
        if (xpc_dictionary_get_uint64(a3, netrbXPCResponse) != 2002)
        {
          uint64 = xpc_dictionary_get_uint64(a3, netrbXPCResponse);
          if (uint64 == 2001)
          {
            v15 = 5002;
          }

          else
          {
            v15 = 5003;
          }

          xpc_dictionary_set_uint64(v8, netrbClientNotificationKey, v15);
          if (a2 != 1014 || uint64 != 2000)
          {
            if (a2 == 1014 && uint64 == 2001)
            {
              notification_insert_keys(v8, a3);
            }

            goto LABEL_18;
          }

          v16 = xpc_dictionary_get_uint64(a3, netrbXPCErrorCode);
          if (!v16)
          {
LABEL_18:
            v13 = a1[2];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 0x40000000;
            block[2] = ____NETRBClientResponseHandler_block_invoke;
            block[3] = &__block_descriptor_tmp_228;
            v18 = a2;
            block[4] = a1;
            block[5] = a4;
            block[6] = v8;
            dispatch_async(v13, block);
            return;
          }

          v12 = v16;
          v10 = netrbClientErrorCode;
          v11 = v8;
LABEL_17:
          xpc_dictionary_set_uint64(v11, v10, v12);
          goto LABEL_18;
        }

LABEL_16:
        v10 = netrbClientNotificationKey;
        v11 = v8;
        v12 = 5003;
        goto LABEL_17;
      }
    }

    else
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      if (v8)
      {
        goto LABEL_16;
      }
    }

    NETRBErrorLog("xpc_dictionary_create() failed");
    goto LABEL_9;
  }

  NETRBDebugLog("client already destroyed");
LABEL_9:

  CFRelease(a1);
}

uint64_t _NETRBClientStopService(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (a1)
  {
    if (__NETRBClientGetQueue_predQueue != -1)
    {
      _NETRBClientCreateInternal_cold_2();
    }

    if (__NETRBClientGetQueue___netrbQueue)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___NETRBClientStopService_block_invoke;
      block[3] = &unk_2799674A0;
      block[4] = &v5;
      block[5] = a1;
      block[6] = __NETRBClientGetQueue___netrbQueue;
      dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
    }

    else
    {
      NETRBErrorLog("unable to create framework queue");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t _NETRBClientGetDynamicStoreKey(uint64_t a1, char *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (a1)
  {
    if (a2)
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 0x40000000;
        v6[2] = ___NETRBClientGetDynamicStoreKey_block_invoke;
        v6[3] = &unk_2799674C8;
        v6[4] = &v7;
        v6[5] = a1;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, v6);
        if (*(v8 + 24) == 1)
        {
          strcpy(a2, "com.apple.MobileInternetSharing");
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue", a2);
      }
    }

    else
    {
      NETRBErrorLog("key cannot be NULL", 0);
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL", a2);
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t _NETRBClientSetGlobalServiceState(uint64_t a1, int a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 2000;
  if (a1)
  {
    if ((a2 - 1024) > 0xFFFFFFFB)
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBClientSetGlobalServiceState_block_invoke;
        block[3] = &unk_279967568;
        v7 = a2;
        block[4] = &v12;
        block[5] = &v8;
        block[6] = a1;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
        if (*(v13 + 24) == 1)
        {
          *(v13 + 24) = v9[3] == 2001;
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("incorrect state %d");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

  v4 = *(v13 + 24);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v4;
}

uint64_t _NETRBClientGetExtName(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 2000;
  if (a1)
  {
    if (a2)
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 0x40000000;
        v6[2] = ___NETRBClientGetExtName_block_invoke;
        v6[3] = &unk_2799675B8;
        v6[4] = &v11;
        v6[5] = &v7;
        v6[6] = a1;
        v6[7] = a2;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, v6);
        if (*(v12 + 24) == 1)
        {
          *(v12 + 24) = v8[3] == 2001;
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue", a2);
      }
    }

    else
    {
      NETRBErrorLog("external name cannot be NULL", 0);
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL", a2);
  }

  v4 = *(v12 + 24);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void *_NETRBClientCopyFixtureForwardedPorts(void *a1)
{
  v1 = a1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 2000;
  if (!a1)
  {
    NETRBErrorLog("client handle cannot be NULL");
    goto LABEL_12;
  }

  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  if (!__NETRBClientGetQueue___netrbQueue)
  {
    NETRBErrorLog("unable to create framework queue");
LABEL_11:
    v1 = 0;
    goto LABEL_12;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___NETRBClientCopyFixtureForwardedPorts_block_invoke;
  block[3] = &unk_279967608;
  block[4] = &v9;
  block[5] = &v5;
  block[6] = &v17;
  block[7] = &v13;
  block[8] = v1;
  dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
  if (*(v10 + 24) != 1 || v6[3] != 2001)
  {
    goto LABEL_11;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  v1 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, netrbClientForwardedLowPort, *(v18 + 12));
    xpc_dictionary_set_uint64(v1, netrbClientForwardedHighPort, *(v14 + 12));
  }

  else
  {
    NETRBErrorLog("xpc_dictionary_create() failed");
    *(v10 + 24) = 0;
  }

LABEL_12:
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return v1;
}

uint64_t _NETRBClientSetFixtureForwardedPorts(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 2000;
  if (a1)
  {
    if (a2 && MEMORY[0x25F870830](a2) == MEMORY[0x277D86468])
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 0x40000000;
        v6[2] = ___NETRBClientSetFixtureForwardedPorts_block_invoke;
        v6[3] = &unk_279967658;
        v6[6] = a1;
        v6[7] = a2;
        v6[4] = &v11;
        v6[5] = &v7;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, v6);
        if (*(v12 + 24) == 1)
        {
          *(v12 + 24) = v8[3] == 2001;
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("forwarded ports should be a xpc dictionary");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

  v4 = *(v12 + 24);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

uint64_t _NETRBClientIsAllowedMoreHost(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 2000;
  if (a1)
  {
    if (__NETRBClientGetQueue_predQueue != -1)
    {
      _NETRBClientCreateInternal_cold_2();
    }

    if (__NETRBClientGetQueue___netrbQueue)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___NETRBClientIsAllowedMoreHost_block_invoke;
      block[3] = &unk_2799676A8;
      block[4] = &v9;
      block[5] = &v5;
      block[6] = a1;
      dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
      if (*(v10 + 24) == 1)
      {
        *(v10 + 24) = v6[3] == 2001;
      }
    }

    else
    {
      NETRBErrorLog("unable to create framework queue");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

  v2 = *(v10 + 24);
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  return v2;
}

uint64_t _NETRBClientAddHost(uint64_t a1, unsigned int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_uint64(v4, netrbClientHostIftype, a2);
    xpc_dictionary_set_uint64(v5, netrbClientHostDeviceId, 0xFFFFFFFFuLL);
    v6 = _NETRBClientAddHostExt(a1, v5);
    xpc_release(v5);
    return v6;
  }

  else
  {
    NETRBErrorLog("failed to create xpc dictionary for add host.");
    return 0;
  }
}

uint64_t _NETRBClientAddHostExt(uint64_t a1, void *a2)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 2000;
  if (!a2 || MEMORY[0x25F870830](a2) != MEMORY[0x277D86468])
  {
    NETRBErrorLog("request is not dictionary object");
LABEL_4:
    *(v22 + 24) = 0;
    goto LABEL_5;
  }

  value = xpc_dictionary_get_value(a2, netrbClientHostIftype);
  if (!value || (v7 = value, v8 = MEMORY[0x25F870830](), v9 = MEMORY[0x277D864C8], v8 != MEMORY[0x277D864C8]))
  {
    NETRBErrorLog("netrbIftype does not exist in request.");
    goto LABEL_4;
  }

  v10 = xpc_uint64_get_value(v7);
  v11 = xpc_dictionary_get_value(a2, netrbClientHostDeviceId);
  if (!v11 || (v12 = v11, MEMORY[0x25F870830]() != v9))
  {
    NETRBErrorLog("device ID does not exist in request.");
    goto LABEL_4;
  }

  v13 = xpc_uint64_get_value(v12);
  if (a1)
  {
    if ((v10 - 7) > 0xFFFFFFFA)
    {
      v14 = v13;
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBClientAddHostExt_block_invoke;
        block[3] = &unk_2799676F8;
        v16 = v10;
        block[6] = a1;
        block[7] = v14;
        block[4] = &v21;
        block[5] = &v17;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
        if (*(v22 + 24) == 1)
        {
          *(v22 + 24) = v18[3] == 2001;
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("incorrect device type value %d");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

LABEL_5:
  v4 = *(v22 + 24);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v4;
}

uint64_t _NETRBClientRemoveHostExt(uint64_t a1, void *a2)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 2000;
  if (!a2 || MEMORY[0x25F870830](a2) != MEMORY[0x277D86468])
  {
    NETRBErrorLog("request is not dictionary object");
LABEL_4:
    *(v22 + 24) = 0;
    goto LABEL_5;
  }

  value = xpc_dictionary_get_value(a2, netrbClientHostIftype);
  if (!value || (v7 = value, v8 = MEMORY[0x25F870830](), v9 = MEMORY[0x277D864C8], v8 != MEMORY[0x277D864C8]))
  {
    NETRBErrorLog("netrbIftype does not exist in request.");
    goto LABEL_4;
  }

  v10 = xpc_uint64_get_value(v7);
  v11 = xpc_dictionary_get_value(a2, netrbClientHostDeviceId);
  if (!v11 || (v12 = v11, MEMORY[0x25F870830]() != v9))
  {
    NETRBErrorLog("device ID does not exist in request.");
    goto LABEL_4;
  }

  v13 = xpc_uint64_get_value(v12);
  if (a1)
  {
    if ((v10 - 7) > 0xFFFFFFFA)
    {
      v14 = v13;
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBClientRemoveHostExt_block_invoke;
        block[3] = &unk_279967748;
        v16 = v10;
        block[6] = a1;
        block[7] = v14;
        block[4] = &v21;
        block[5] = &v17;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
        if (*(v22 + 24) == 1)
        {
          *(v22 + 24) = v18[3] == 2001;
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("incorrect device type value %d");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

LABEL_5:
  v4 = *(v22 + 24);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v4;
}

uint64_t _NETRBClientRemoveHost(uint64_t a1, unsigned int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_uint64(v4, netrbClientHostIftype, a2);
    xpc_dictionary_set_uint64(v5, netrbClientHostDeviceId, 0xFFFFFFFFuLL);
    v6 = _NETRBClientRemoveHostExt(a1, v5);
    xpc_release(v5);
    return v6;
  }

  else
  {
    NETRBErrorLog("failed to create xpc dictionary for remove host.");
    return 0;
  }
}

uint64_t _NETRBClientGetHostCount(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 2000;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (__NETRBClientGetQueue_predQueue != -1)
        {
          v7 = a1;
          _NETRBClientCreateInternal_cold_2();
          a1 = v7;
        }

        if (__NETRBClientGetQueue___netrbQueue)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = ___NETRBClientGetHostCount_block_invoke;
          block[3] = &unk_279967798;
          block[4] = &v13;
          block[5] = &v9;
          block[6] = &v21;
          block[7] = &v17;
          block[8] = a1;
          dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
          if (*(v14 + 24) == 1)
          {
            *(v14 + 24) = v10[3] == 2001;
            *a2 = *(v22 + 6);
            *a3 = *(v18 + 6);
          }
        }

        else
        {
          NETRBErrorLog("unable to create framework queue", a2, a3, v7);
        }
      }

      else
      {
        NETRBErrorLog("current cannot be NULL", a2, 0);
      }
    }

    else
    {
      NETRBErrorLog("max cannot be NULL", 0, a3);
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL", a2, a3);
  }

  v5 = *(v14 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v5;
}

uint64_t _NETRBClientSetHostCount(uint64_t a1, int a2, int a3)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 2000;
  if (a1)
  {
    if ((a2 - 7) > 0xFFFFFFFA)
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBClientSetHostCount_block_invoke;
        block[3] = &unk_2799677E8;
        v9 = a2;
        v10 = a3;
        block[4] = &v15;
        block[5] = &v11;
        block[6] = a1;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
        if (*(v16 + 24) == 1)
        {
          *(v16 + 24) = v12[3] == 2001;
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("incorrect device type value %d");
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL");
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v6;
}

uint64_t _NETRBClientNewInterface(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v52 = 0;
  v53 = &v52;
  v54 = 0x2000000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2000000000;
  v51 = 0;
  if (!a1)
  {
    NETRBErrorLog("client handle cannot be NULL", a2, a3, a4);
    goto LABEL_43;
  }

  v4 = a4;
  v6 = a2;
  v49[3] = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    string = xpc_dictionary_get_string(v4, netrbClientExternalInterface);
  }

  else
  {
    string = 0;
  }

  if ((v6 - 201) < 3)
  {
    if (string)
    {
      NETRBErrorLog("specifying external interface not supported", v8, v9, v10);
      goto LABEL_43;
    }

    if (v4)
    {
      uint64 = xpc_dictionary_get_uint64(v4, netrbClientInterfaceMTU);
      goto LABEL_16;
    }

LABEL_22:
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 1;
LABEL_38:
    if (__NETRBClientGetQueue_predQueue != -1)
    {
      v38 = v20;
      _NETRBClientCreateInternal_cold_2();
      v20 = v38;
    }

    if (__NETRBClientGetQueue___netrbQueue)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___NETRBClientNewInterface_block_invoke;
      block[3] = &unk_279967830;
      block[6] = a1;
      block[7] = string;
      v42 = v25;
      v43 = v23;
      v44 = v4;
      v45 = v24;
      v46 = v22;
      v47 = v21;
      v40 = v6;
      v41 = v20;
      block[4] = &v48;
      block[5] = &v52;
      block[8] = a3;
      block[9] = __NETRBClientGetQueue___netrbQueue;
      dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
    }

    else
    {
      NETRBErrorLog("unable to create framework queue");
    }

    goto LABEL_43;
  }

  if (v6 != 204)
  {
    NETRBErrorLog("incorrect operation mode %d", v8, v9, v10);
    goto LABEL_43;
  }

  if (!string || !*string)
  {
    NETRBErrorLog("interface must be specified", v8, v9, v10);
    goto LABEL_43;
  }

  if (!v4)
  {
    goto LABEL_22;
  }

  uint64 = 0;
LABEL_16:
  v12 = v49[3];
  v13 = xpc_dictionary_get_string(v4, netrbClientInterfaceStartAddress);
  v14 = xpc_dictionary_get_string(v4, netrbClientInterfaceEndAddress);
  v15 = xpc_dictionary_get_string(v4, netrbClientInterfaceNetworkMask);
  if (v13 && v14 && (v19 = v15) != 0)
  {
    xpc_dictionary_set_string(v12, netrbXPCStartAddress, v13);
    xpc_dictionary_set_string(v12, netrbXPCEndAddress, v14);
    xpc_dictionary_set_string(v12, netrbXPCNetworkMask, v19);
  }

  else if (v13 | v14)
  {
    NETRBErrorLog("All of %s, %s, and %s must be specified", v16, v17, v18);
    goto LABEL_43;
  }

  if (insert_nat66_params(v4, v49[3]))
  {
    v26 = v49[3];
    uuid = xpc_dictionary_get_uuid(v4, netrbClientNetworkIdentifier);
    if (uuid)
    {
      xpc_dictionary_set_uuid(v26, netrbXPCNetworkIdentifier, uuid);
      v28 = xpc_dictionary_get_string(v4, netrbClientInterfaceIPv4Address);
      v29 = xpc_dictionary_get_string(v4, netrbClientInterfaceNetworkMask);
      v32 = v29;
      if (v28 && v29)
      {
        xpc_dictionary_set_string(v26, netrbXPCInterfaceIPv4Address, v28);
        xpc_dictionary_set_string(v26, netrbXPCNetworkMask, v32);
      }

      else if (v28 | v29)
      {
        NETRBErrorLog("%s, and %s must be specified", v30, v31);
        goto LABEL_43;
      }

      v33 = xpc_dictionary_get_string(v4, netrbClientInterfaceIPv6Address);
      if (v33)
      {
        xpc_dictionary_set_string(v26, netrbXPCInterfaceIPv6Address, v33);
      }
    }

    if (xpc_dictionary_get_value(v4, netrbClientAllocateMACAddress))
    {
      v25 = xpc_dictionary_get_BOOL(v4, netrbClientAllocateMACAddress);
    }

    else
    {
      v25 = 1;
    }

    v23 = xpc_dictionary_get_BOOL(v4, netrbClientEnableTSO);
    v22 = xpc_dictionary_get_BOOL(v4, netrbClientEnableIsolation);
    v21 = xpc_dictionary_get_BOOL(v4, netrbClientEnableChecksumOffload);
    v24 = xpc_dictionary_get_BOOL(v4, netrbClientEnableMACNAT);
    LOBYTE(v4) = xpc_dictionary_get_BOOL(v4, netrbClientEnableVirtIOHeader);
    v20 = uint64;
    goto LABEL_38;
  }

LABEL_43:
  v34 = v49[3];
  if (v34)
  {
    xpc_release(v34);
  }

  v35 = *(v53 + 24);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);
  return v35;
}

uint64_t _NETRBClientAddIPPortForwardingRule(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  if (cf)
  {
    v8 = a6;
    v10 = a4;
    v11 = a3;
    v12 = a2;
    if (a4 == 2 || a4 == 30)
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      v14 = __NETRBClientGetQueue___netrbQueue;
      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBClientAddIPPortForwardingRule_block_invoke;
        block[3] = &unk_2799678A8;
        v20 = v12;
        v18 = v11;
        v21 = v10;
        block[6] = cf;
        block[7] = a5;
        v19 = v8;
        block[4] = a7;
        block[5] = &v22;
        block[8] = __NETRBClientGetQueue___netrbQueue;
        CFRetain(cf);
        dispatch_sync(v14, block);
        if ((v23[3] & 1) == 0)
        {
          CFRelease(cf);
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("invalid address family %d", a2, a3, a4, a5, a6, a7);
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL", a2, a3, a4, a5, a6, a7);
  }

  v15 = *(v23 + 24);
  _Block_object_dispose(&v22, 8);
  return v15;
}

void *netrbMakePortForwardingRuleDict(unsigned int a1, unsigned int a2, unsigned int a3, void *a4, unsigned int a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3 != 30 && a3 != 2 || !a4 && a5 || a4 && !a5 || a4 && !inet_ntop(a3, a4, string, 0x2Eu))
  {
    return 0;
  }

  v12 = xpc_dictionary_create(0, 0, 0);
  v10 = v12;
  if (a1)
  {
    xpc_dictionary_set_uint64(v12, netrbXPCPortForwardingRuleProtocol, a1);
  }

  if (a2)
  {
    xpc_dictionary_set_uint64(v10, netrbXPCPortForwardingRuleExternalPort, a2);
  }

  xpc_dictionary_set_uint64(v10, netrbXPCPortForwardingRuleAddressFamily, a3);
  if (a5)
  {
    xpc_dictionary_set_uint64(v10, netrbXPCPortForwardingRuleInternalPort, a5);
  }

  if (a4)
  {
    xpc_dictionary_set_string(v10, netrbXPCPortForwardingRuleInternalAddress, string);
  }

  return v10;
}

uint64_t _NETRBClientRemoveIPPortForwardingRule(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  if (cf)
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    if (a4 == 2 || a4 == 30)
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      v10 = __NETRBClientGetQueue___netrbQueue;
      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBClientRemoveIPPortForwardingRule_block_invoke;
        block[3] = &unk_279967920;
        v15 = v8;
        v14 = v7;
        v16 = v6;
        block[4] = a5;
        block[5] = &v17;
        block[6] = cf;
        block[7] = __NETRBClientGetQueue___netrbQueue;
        CFRetain(cf);
        dispatch_sync(v10, block);
        if ((v18[3] & 1) == 0)
        {
          CFRelease(cf);
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("invalid address family %d", a2, a3, a4, a5);
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL", a2, a3, a4, a5);
  }

  v11 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return v11;
}

uint64_t _NETRBClientGetIPPortForwardingRules(CFTypeRef cf, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  if (cf)
  {
    v4 = a2;
    if (a2 == 2 || a2 == 30)
    {
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      v6 = __NETRBClientGetQueue___netrbQueue;
      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBClientGetIPPortForwardingRules_block_invoke;
        block[3] = &unk_279967998;
        v10 = v4;
        block[4] = a3;
        block[5] = &v11;
        block[6] = cf;
        block[7] = __NETRBClientGetQueue___netrbQueue;
        CFRetain(cf);
        dispatch_sync(v6, block);
        if ((v12[3] & 1) == 0)
        {
          CFRelease(cf);
        }
      }

      else
      {
        NETRBErrorLog("unable to create framework queue");
      }
    }

    else
    {
      NETRBErrorLog("invalid address family %d", a2, a3);
    }
  }

  else
  {
    NETRBErrorLog("client handle cannot be NULL", a2, a3);
  }

  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v7;
}

const char *_NETRBIPPortForwardingDictGetDetails(xpc_object_t xdict, _BYTE *a2, _WORD *a3, uint64_t a4, void *a5, _WORD *a6)
{
  if (!xdict)
  {
    NETRBErrorLog("rule is NULL", a2, a3, a4, a5, a6);
    return 0;
  }

  v8 = a4;
  if (a4 != 2 && a4 != 30)
  {
    NETRBErrorLog("invalid address family %d", a2, a3, a4, a5, a6);
    return 0;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, netrbXPCPortForwardingRuleProtocol);
  *a2 = uint64;
  if (!uint64)
  {
    return 0;
  }

  v13 = xpc_dictionary_get_uint64(xdict, netrbXPCPortForwardingRuleExternalPort);
  *a3 = v13;
  if (!v13)
  {
    return 0;
  }

  v14 = xpc_dictionary_get_uint64(xdict, netrbXPCPortForwardingRuleInternalPort);
  *a6 = v14;
  if (!v14)
  {
    return 0;
  }

  if (xpc_dictionary_get_uint64(xdict, netrbXPCPortForwardingRuleAddressFamily) != v8)
  {
    NETRBErrorLog("returned address family %d != %d", v15, v16, v17, v18, v19);
    return 0;
  }

  result = xpc_dictionary_get_string(xdict, netrbXPCPortForwardingRuleInternalAddress);
  if (result)
  {
    return (inet_pton(v8, result, a5) != 0);
  }

  return result;
}

uint64_t NETRBClientSendNotification(void *a1)
{
  if (!__netrbClientList || (Count = CFArrayGetCount(__netrbClientList)) == 0)
  {
    NETRBErrorLog("received notification but no clients");
    return 0;
  }

  v3 = Count;
  v4 = xpc_dictionary_create(0, 0, 0);
  if (!v4)
  {
    NETRBErrorLog("xpc_dictionary_create() failed");
    return 0;
  }

  v5 = v4;
  v6 = netrbClientNotificationKey;
  uint64 = xpc_dictionary_get_uint64(a1, netrbXPCNotification);
  xpc_dictionary_set_uint64(v5, v6, uint64);
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(__netrbClientList, i);
      if (ValueAtIndex)
      {
        v10 = ValueAtIndex;
        if (ValueAtIndex[2])
        {
          if (ValueAtIndex[3])
          {
            xpc_retain(v5);
            CFRetain(v10);
            v11 = v10[2];
            v13[0] = MEMORY[0x277D85DD0];
            v13[1] = 0x40000000;
            v13[2] = __NETRBClientSendNotification_block_invoke;
            v13[3] = &__block_descriptor_tmp_179;
            v13[4] = v10;
            v13[5] = v5;
            dispatch_async(v11, v13);
          }
        }
      }
    }
  }

  xpc_release(v5);
  return 1;
}

void __NETRBClientSendNotification_block_invoke(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2000000000;
  v5 = 0;
  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __NETRBClientSendNotification_block_invoke_2;
  block[3] = &unk_2799679C0;
  block[4] = v4;
  v3 = *(a1 + 32);
  dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
  xpc_release(*(a1 + 40));
  CFRelease(*(a1 + 32));
  _Block_object_dispose(v4, 8);
}

uint64_t __NETRBClientSendNotification_block_invoke_2(uint64_t a1)
{
  result = __NETRBClientValidateClient(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!result)
  {
    v3 = *(*(*(a1 + 40) + 24) + 16);

    return v3();
  }

  return result;
}

uint64_t _NETRBClientModifyLowLatencyFlow(uint64_t a1, void *a2, char a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  inited = netrbInitIfnetTrafficDescriptor(a2, 0);
  *(v12 + 24) = inited;
  if (inited)
  {
    if (__NETRBClientGetQueue_predQueue != -1)
    {
      _NETRBClientCreateInternal_cold_2();
    }

    if (__NETRBClientGetQueue___netrbQueue)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 0x40000000;
      v9[2] = ___NETRBClientModifyLowLatencyFlow_block_invoke;
      v9[3] = &unk_279967B78;
      v9[4] = &v11;
      v9[5] = a1;
      v9[6] = a2;
      v10 = a3;
      dispatch_sync(__NETRBClientGetQueue___netrbQueue, v9);
    }

    else
    {
      NETRBErrorLog("unable to create framework queue");
    }
  }

  else
  {
    NETRBErrorLog("input xpc dictionary is malformed.");
  }

  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t _NETRBCreateNetworkConfiguration(unsigned int a1, void *a2)
{
  if (_NETRBNetworkGetTypeId_pred != -1)
  {
    _NETRBNetworkCopy_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    *(Instance + 144) = 0;
    *(Instance + 112) = 0u;
    *(Instance + 128) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    if (a1 >= 2)
    {
      if (a1 == 2)
      {
        NETRBErrorLog("%s SPI doesn't support bridged mode");
      }

      else
      {
        NETRBErrorLog("%s: invalid operation mode");
      }

      CFRelease(v5);
      v5 = 0;
      result = 6002;
    }

    else
    {
      *(Instance + 36) = a1;
      result = 0;
      if (a1 == 1)
      {
        v5[10] |= 2u;
        v5[14] |= 4u;
      }
    }
  }

  else
  {
    NETRBErrorLog("%s: _CFRuntimeCreateInstance", "_NETRBCreateNetworkConfiguration");
    result = 6003;
  }

  *a2 = v5;
  return result;
}

uint64_t _NETRBCreateNetwork(void *a1, uint64_t a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v8 = 0;
  if (NETRBLogCreate(a1, a2))
  {
    *(v14 + 6) = 6003;
  }

  else
  {
    GlobalClient = __NETRBNetworkCreateGlobalClient();
    *(v14 + 6) = GlobalClient;
    if (GlobalClient)
    {
      NETRBErrorLog("%s: __NETRBNetworkCreateGlobalClient", "_NETRBCreateNetwork");
    }

    else
    {
      _NETRBSerializeNetwork(a1, &v8);
      *(v14 + 6) = 0;
      if (__NETRBClientGetQueue_predQueue != -1)
      {
        _NETRBClientCreateInternal_cold_2();
      }

      if (__NETRBClientGetQueue___netrbQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___NETRBCreateNetwork_block_invoke;
        block[3] = &unk_279967A30;
        v4 = v8;
        block[6] = a1;
        block[7] = v8;
        block[4] = &v13;
        block[5] = &v9;
        dispatch_sync(__NETRBClientGetQueue___netrbQueue, block);
        if ((v10[3] & 1) == 0)
        {
          NETRBErrorLog("%s: failed", "_NETRBCreateNetwork");
          *(v14 + 6) = 1;
        }
      }

      else
      {
        NETRBErrorLog("%s: unable to create framework queue", "_NETRBCreateNetwork");
        *(v14 + 6) = 6003;
        v4 = v8;
      }

      if (v4)
      {
        xpc_release(v4);
      }
    }
  }

  v5 = *(v14 + 6);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v5;
}

uint64_t __NETRBNetworkCreateGlobalClient()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  if (__NETRBNetworkGetServiceQueue_predNetworkQueue != -1)
  {
    __NETRBNetworkCreateGlobalClient_cold_1();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ____NETRBNetworkCreateGlobalClient_block_invoke;
  block[3] = &unk_279967C00;
  block[4] = &v3;
  dispatch_sync(__NETRBNetworkGetServiceQueue___networkServiceQueue, block);
  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t _NETRBSerializeNetwork(void *a1, xpc_object_t *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  *a2 = v4;
  xpc_dictionary_set_data(v4, netrbXPCNetworkSerialization, a1 + 2, 0x78uLL);
  v5 = a1[17];
  if (v5)
  {
    v6 = 0;
    do
    {
      v5 = *v5;
      v6 += 24;
    }

    while (v5);
    v7 = malloc_type_malloc(v6, 0xA056F487uLL);
    bzero(v7, v6);
    v8 = a1[17];
    if (v8)
    {
      v9 = v7;
      do
      {
        v10 = *v8;
        v9[2] = *(v8 + 2);
        *v9 = v10;
        v9 += 3;
        v8 = *v8;
      }

      while (v8);
    }

    xpc_dictionary_set_data(*a2, netrbXPCNetworkSerializationDHCPReservation, v7, v6);
    free(v7);
  }

  v11 = a1[18];
  if (v11)
  {
    v12 = 0;
    do
    {
      v11 = *v11;
      v12 += 32;
    }

    while (v11);
    v13 = malloc_type_malloc(v12, 0x95A4A4E9uLL);
    bzero(v13, v12);
    v14 = a1[18];
    if (v14)
    {
      v15 = v13;
      do
      {
        v16 = v14[1];
        *v15 = *v14;
        v15[1] = v16;
        v15 += 2;
        v14 = *v14;
      }

      while (v14);
    }

    xpc_dictionary_set_data(*a2, netrbXPCNetworkSerializationPortForwarding, v13, v12);
    free(v13);
  }

  return 0;
}

uint64_t _NETRBNetworkStartVirtualMachineInterface(void *a1, void *a2, void *a3)
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2000000000;
  v31 = 0;
  v27 = 0;
  if (NETRBLogCreate(a1, a2))
  {
    goto LABEL_2;
  }

  GlobalClient = __NETRBNetworkCreateGlobalClient();
  *(v33 + 6) = GlobalClient;
  if (GlobalClient)
  {
    NETRBErrorLog("%s: __NETRBNetworkCreateGlobalClient", "_NETRBNetworkStartVirtualMachineInterface");
    goto LABEL_5;
  }

  if (_NETRBInterfaceGetTypeId_pred != -1)
  {
    _NETRBNetworkStartVirtualMachineInterface_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    NETRBErrorLog("%s: _CFRuntimeCreateInstance", "_NETRBNetworkStartVirtualMachineInterface");
LABEL_2:
    *(v33 + 6) = 6003;
    goto LABEL_5;
  }

  v10 = Instance;
  *(Instance + 48) = 0;
  NETRBInfoLog("%s: adding virtual interface to network %p", "_NETRBNetworkStartVirtualMachineInterface", a1);
  if (__NETRBClientGetQueue_predQueue != -1)
  {
    _NETRBClientCreateInternal_cold_2();
  }

  v11 = __NETRBClientGetQueue___netrbQueue;
  if (!__NETRBClientGetQueue___netrbQueue)
  {
    v13 = 0;
    v14 = 6003;
    NETRBErrorLog("%s: unable to create framework queue");
LABEL_25:
    *(v33 + 6) = v14;
LABEL_26:
    CFRelease(v10);
    goto LABEL_27;
  }

  _NETRBSerializeNetwork(a1, &v27);
  *(v33 + 6) = 0;
  if (a3)
  {
    if (xpc_dictionary_get_value(a3, netrbClientAllocateMACAddress))
    {
      v12 = xpc_dictionary_get_BOOL(a3, netrbClientAllocateMACAddress);
    }

    else
    {
      v12 = 1;
    }

    v16 = xpc_dictionary_get_BOOL(a3, netrbClientEnableTSO);
    v15 = xpc_dictionary_get_BOOL(a3, netrbClientEnableIsolation);
    v19 = xpc_dictionary_get_BOOL(a3, netrbClientEnableChecksumOffload);
    v18 = xpc_dictionary_get_BOOL(a3, netrbClientEnableMACNAT);
    v17 = xpc_dictionary_get_BOOL(a3, netrbClientEnableVirtIOHeader);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v12 = 1;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___NETRBNetworkStartVirtualMachineInterface_block_invoke;
  block[3] = &unk_279967A80;
  v21 = v12;
  v13 = v27;
  block[6] = a1;
  block[7] = v27;
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v15;
  v26 = v19;
  block[4] = &v32;
  block[5] = &v28;
  block[8] = a3;
  block[9] = v10;
  dispatch_sync(v11, block);
  if (!*(v29 + 24))
  {
    v14 = 1;
    NETRBErrorLog("%s: _NETRBClientNewInterface");
    goto LABEL_25;
  }

  if (*(v33 + 6))
  {
    goto LABEL_26;
  }

  *a2 = v10;
  CFRetain(a1);
  if (*(v33 + 6))
  {
    goto LABEL_26;
  }

LABEL_27:
  if (v13)
  {
    xpc_release(v13);
  }

LABEL_5:
  v7 = *(v33 + 6);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  return v7;
}

unint64_t _NETRBEtherAton(const char *a1)
{
  v3 = 0;
  v2 = 0;
  sscanf(a1, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", &v2, &v2 + 1, &v2 + 2, &v2 + 3, &v3, &v3 + 1);
  return v2 | (v3 << 32);
}

uint64_t _NETRBNetworkSetIPv4Addresses(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  *(a1 + 44) = *a2;
  *(a1 + 48) = *a3;
  return 0;
}

uint64_t _NETRBNetworkSetIPv6Prefix(uint64_t a1, _OWORD *a2, int a3)
{
  *(a1 + 60) = *a2;
  *(a1 + 76) = a3;
  return 0;
}

uint64_t _NETRBNetworkAddPortForwardingRule(uint64_t a1, char a2, int a3, __int16 a4, __int16 a5, uint64_t a6)
{
  v11 = malloc_type_malloc(0x20uLL, 0x10200401B9196EFuLL);
  v12 = v11;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 8) = a2;
  if (a3 == 2 || a3 == 30)
  {
    *(v11 + 9) = a3;
    *(v11 + 5) = a4;
    *(v11 + 6) = a5;
    __memcpy_chk();
    v13 = 0;
    *v12 = *(a1 + 144);
    *(a1 + 144) = v12;
  }

  else
  {
    NETRBErrorLog("%s: invalid address family %u", "_NETRBNetworkAddPortForwardingRule", a3);
    v13 = 6002;
  }

  if (a3 != 2 && a3 != 30)
  {
    free(v12);
  }

  return v13;
}

uint64_t _NETRBNetworkAddDHCPReservation(uint64_t a1, int *a2, _DWORD *a3)
{
  v6 = malloc_type_malloc(0x18uLL, 0x10200400817995AuLL);
  v7 = *a2;
  v6[6] = *(a2 + 2);
  *(v6 + 2) = v7;
  *(v6 + 4) = *a3;
  *v6 = *(a1 + 136);
  *(a1 + 136) = v6;
  return 0;
}

uint64_t _NETRBDeserializeNetworkConfig(void *a1, uint64_t a2)
{
  v23 = 0;
  length = 0;
  v22 = 0;
  data = xpc_dictionary_get_data(a1, netrbXPCNetworkSerialization, &length);
  if (length == 120)
  {
    v5 = *data;
    v6 = data[1];
    v7 = data[3];
    *(a2 + 32) = data[2];
    *(a2 + 48) = v7;
    *a2 = v5;
    *(a2 + 16) = v6;
    v8 = data[4];
    v9 = data[5];
    v10 = data[6];
    *(a2 + 112) = *(data + 14);
    *(a2 + 80) = v9;
    *(a2 + 96) = v10;
    *(a2 + 64) = v8;
    *(a2 + 120) = 0;
    v11 = (a2 + 120);
    *(a2 + 128) = 0;
    v12 = xpc_dictionary_get_data(a1, netrbXPCNetworkSerializationDHCPReservation, &v23);
    if (v12 && v23 >= 0x18)
    {
      v13 = v23 / 0x18;
      v14 = v12 + 16;
      do
      {
        v15 = malloc_type_malloc(0x18uLL, 0x10200400817995AuLL);
        v15[1] = 0;
        v15[2] = 0;
        *v15 = 0;
        v16 = *(v14 - 2);
        *(v15 + 2) = *(v14 - 2);
        *(v15 + 6) = v16;
        v17 = *v14;
        v14 += 6;
        *(v15 + 4) = v17;
        *v15 = *v11;
        *v11 = v15;
        --v13;
      }

      while (v13);
    }

    result = xpc_dictionary_get_data(a1, netrbXPCNetworkSerializationPortForwarding, &v22);
    if (result)
    {
      if (v22 >= 0x20)
      {
        v19 = v22 >> 5;
        v20 = result + 8;
        do
        {
          v21 = malloc_type_malloc(0x20uLL, 0x10200401B9196EFuLL);
          *v21 = 0u;
          *(v21 + 1) = 0u;
          *(v21 + 4) = *v20;
          *(v21 + 10) = *(v20 + 2);
          *(v21 + 1) = *(v20 + 8);
          *v21 = *(a2 + 128);
          *(a2 + 128) = v21;
          v20 += 32;
          --v19;
        }

        while (v19);
      }

      return 0;
    }
  }

  else
  {
    NETRBErrorLog("%s: invalid serialized network", "_NETRBDeserializeNetworkConfig");
    return 6002;
  }

  return result;
}

uint64_t _NETRBDeserializeNetwork(void *a1, void *a2)
{
  if (_NETRBNetworkGetTypeId_pred != -1)
  {
    _NETRBNetworkCopy_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    v6 = _NETRBDeserializeNetworkConfig(a1, Instance + 16);
    if (v6)
    {
      CFRelease(v5);
      v5 = 0;
    }
  }

  else
  {
    NETRBErrorLog("%s: _CFRuntimeCreateInstance", "_NETRBDeserializeNetwork");
    v6 = 6003;
  }

  *a2 = v5;
  return v6;
}

uint64_t _NETRBNetworkGetIPv4Subnet(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  *a2 = *(result + 44);
  *a3 = *(result + 48);
  return result;
}

__n128 _NETRBNetworkGetIPv6Prefix(uint64_t a1, __n128 *a2, _BYTE *a3)
{
  result = *(a1 + 60);
  *a2 = result;
  *a3 = *(a1 + 76);
  return result;
}

void notification_insert_keys(void *a1, xpc_object_t xdict)
{
  v16 = *MEMORY[0x277D85DE8];
  string = xpc_dictionary_get_string(xdict, netrbXPCMACAddress);
  if (string)
  {
    xpc_dictionary_set_string(a1, netrbClientMACAddress, string);
  }

  *v15 = 0;
  *&v15[8] = 0;
  uuid = xpc_dictionary_get_uuid(xdict, netrbXPCMACUUID);
  if (uuid)
  {
    *v15 = *uuid;
    xpc_dictionary_set_uuid(a1, netrbClientMACUUID, v15);
  }

  v6 = xpc_dictionary_dup_fd(xdict, netrbXPCInterfaceSocket);
  if (v6 != -1)
  {
    xpc_dictionary_set_uint64(a1, netrbClientSocketFD, v6);
  }

  v7 = xpc_dictionary_get_string(xdict, netrbXPCStartAddress);
  v8 = xpc_dictionary_get_string(xdict, netrbXPCEndAddress);
  v9 = xpc_dictionary_get_string(xdict, netrbXPCNetworkMask);
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && v9 != 0)
  {
    v12 = v9;
    xpc_dictionary_set_string(a1, netrbClientInterfaceStartAddress, v7);
    xpc_dictionary_set_string(a1, netrbClientInterfaceEndAddress, v8);
    xpc_dictionary_set_string(a1, netrbClientInterfaceNetworkMask, v12);
  }

  value = xpc_dictionary_get_value(xdict, netrbXPCInterfaceMTU);
  if (value)
  {
    xpc_dictionary_set_value(a1, netrbClientInterfaceMTU, value);
  }

  v14 = xpc_dictionary_get_value(xdict, netrbXPCNat66Param);
  if (v14)
  {
    xpc_dictionary_set_value(a1, netrbClientNat66Param, v14);
  }
}

void *__NETRBNetworkRelease(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    value = 0;
    if (__NETRBClientValidateClient(_NETRBNetworkClient))
    {
      NETRBErrorLog("%s: invalid network global client", "__NETRBNetworkRelease");
    }

    else
    {
      _NETRBSerializeNetwork(a1, &value);
      v2 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v2, netrbXPCKey, 0x401uLL);
      xpc_dictionary_set_string(v2, netrbXPCClientID, (_NETRBNetworkClient + 32));
      v3 = value;
      xpc_dictionary_set_value(v2, netrbXPCNetworkObject, value);
      NETRBXPCSetupAndSend(0, v2, &__block_literal_global_265);
      if (v2)
      {
        xpc_release(v2);
      }

      if (v3)
      {
        xpc_release(v3);
      }
    }
  }

  while (1)
  {
    v4 = *(a1 + 136);
    if (!v4)
    {
      break;
    }

    *(a1 + 136) = *v4;
    free(v4);
  }

  while (1)
  {
    result = *(a1 + 144);
    if (!result)
    {
      break;
    }

    *(a1 + 144) = *result;
    free(result);
  }

  return result;
}

void __NETRBInterfaceRelease(uint64_t a1)
{
  value = 0;
  if (__NETRBClientValidateClient(_NETRBNetworkClient))
  {
    NETRBErrorLog("%s: invalid network global client");
  }

  else if (*(a1 + 56))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v2, netrbXPCKey, 0x3FFuLL);
    xpc_dictionary_set_string(v2, netrbXPCClientID, (_NETRBNetworkClient + 32));
    xpc_dictionary_set_uint64(v2, netrbXPCInterfaceId, *(a1 + 48));
    _NETRBSerializeNetwork(*(a1 + 56), &value);
    v3 = value;
    xpc_dictionary_set_value(v2, netrbXPCNetworkObject, value);
    NETRBXPCSetupAndSend(0, v2, &__block_literal_global_282);
    if (v2)
    {
      xpc_release(v2);
    }

    if (v3)
    {
      xpc_release(v3);
    }

    if (__NETRBNetworkGetServiceQueue_predNetworkQueue != -1)
    {
      ____NETRBNetworkCreateGlobalClient_block_invoke_cold_1();
    }

    dispatch_sync(__NETRBNetworkGetServiceQueue___networkServiceQueue, &__block_literal_global_285);
    v4 = *(a1 + 56);

    CFRelease(v4);
  }

  else
  {
    NETRBErrorLog("%s: no associated network");
  }
}