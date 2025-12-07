@interface ACSIntrospect
@end

@implementation ACSIntrospect

void ___ACSIntrospect_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = *MEMORY[0x277D85DE8];
  v26 = 0;
  SharedLocatorConnection = aclGetSharedLocatorConnection(*(a1 + 72), &v26, a3, a4, a5, a6, a7, a8);
  if (SharedLocatorConnection)
  {
    v10 = SharedLocatorConnection;
    xpc_retain(SharedLocatorConnection);
    v11 = *(a1 + 40);
    global_queue = dispatch_get_global_queue(0, 0);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 0x40000000;
    v22[2] = ___ACSIntrospect_block_invoke_2;
    v22[3] = &unk_278CC59F0;
    v23 = *(a1 + 72);
    v13 = *(a1 + 48);
    v22[6] = *(a1 + 56);
    v22[4] = *(a1 + 32);
    v22[5] = v13;
    v22[7] = *(a1 + 64);
    v22[8] = v10;
    xpc_connection_send_message_with_reply(v10, v11, global_queue, v22);
    xpc_release(*(a1 + 40));
  }

  else
  {
    xpc_release(*(a1 + 40));
    v14 = qword_280BB8FB0;
    if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 72);
      v16 = *(a1 + 48);
      v17 = v26;
      v18 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
      *buf = 67109890;
      v28 = v15;
      v29 = 2080;
      v30 = v16;
      v31 = 2112;
      v32 = v17;
      v33 = 2048;
      v34 = v18;
      _os_log_impl(&dword_2411B8000, v14, OS_LOG_TYPE_DEFAULT, "#%08x %s -> error: %@, elapsed %.3f", buf, 0x26u);
    }

    v19 = *(a1 + 32);
    if (v19)
    {
      Copy = v26;
      if (v26)
      {
        Copy = aclErrorCreateCopy(v26);
        v19 = *(a1 + 32);
      }

      v21 = *(a1 + 64);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ACSIntrospect_block_invoke_175;
      block[3] = &unk_278CC59A0;
      block[4] = v19;
      block[5] = Copy;
      v25 = *(a1 + 72);
      block[6] = *(a1 + 48);
      block[7] = v21;
      dispatch_async(v21, block);
    }

    if (v26)
    {
      CFRelease(v26);
    }
  }
}

void ___ACSIntrospect_block_invoke_175(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (CFGetRetainCount(v2) != 1)
    {
      ___ACSIntrospect_block_invoke_175_cold_1();
    }

    CFRetain(*(a1 + 40));
  }

  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {
    if (CFGetRetainCount(v3) <= 1)
    {
      _A_CALLBACK_BLOCK_RELEASED_AN_ASSETCACHESERVICES_OBJECT_IT_DID_NOT_OWN(*(a1 + 64), *(a1 + 48), "error", *(a1 + 40));
    }

    CFRelease(*(a1 + 40));
    v4 = *(a1 + 40);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  v5 = *(a1 + 56);

  dispatch_release(v5);
}

void ___ACSIntrospect_block_invoke_2(uint64_t a1, __CFString *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEBUG))
  {
    ___ACSIntrospect_block_invoke_2_cold_1();
  }

  if (MEMORY[0x245CDE690](a2) == MEMORY[0x277D86468])
  {
    if (xpc_dictionary_get_value(a2, "introspection"))
    {
      v12 = _CFXPCCreateCFObjectFromXPCObject();
    }

    else
    {
      v12 = 0;
    }

    v11 = aclErrorCreateFromXPC(*(a1 + 72), a2);
  }

  else
  {
    v8 = @"XPC_ERROR_CONNECTION_INTERRUPTED";
    v9 = @"XPC_ERROR_CONNECTION_INVALID";
    if (a2 == MEMORY[0x277D86420])
    {
      v10 = @"XPC_ERROR_TERMINATION_IMMINENT";
    }

    else
    {
      v10 = a2;
    }

    if (a2 != MEMORY[0x277D863F8])
    {
      v9 = v10;
    }

    if (a2 != MEMORY[0x277D863F0])
    {
      v8 = v9;
    }

    v11 = aclErrorCreate(*(a1 + 72), *MEMORY[0x277CBEE48], 100, @"unexpected reply from XPC service %s: %@", v4, v5, v6, v7, "com.apple.AssetCacheLocatorService", v8);
    v12 = 0;
  }

  v13 = qword_280BB8FB0;
  if (os_log_type_enabled(qword_280BB8FB0, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 72);
    v15 = *(a1 + 40);
    v16 = CFAbsoluteTimeGetCurrent() - *(a1 + 48);
    *buf = 67110147;
    v24 = v14;
    v25 = 2080;
    v26 = v15;
    v27 = 2113;
    v28 = v12;
    v29 = 2112;
    v30 = v11;
    v31 = 2048;
    v32 = v16;
    _os_log_impl(&dword_2411B8000, v13, OS_LOG_TYPE_DEFAULT, "#%08x %s -> result %{private}@, error %@, elapsed %.3f", buf, 0x30u);
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    if (v11)
    {
      Copy = aclErrorCreateCopy(v11);
      v17 = *(a1 + 32);
    }

    else
    {
      Copy = 0;
    }

    v19 = *(a1 + 56);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ACSIntrospect_block_invoke_178;
    block[3] = &unk_278CC59C8;
    block[4] = v17;
    block[5] = v12;
    v22 = *(a1 + 72);
    v20 = *(a1 + 40);
    block[6] = Copy;
    block[7] = v20;
    block[8] = v19;
    dispatch_async(v19, block);
  }

  else if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  xpc_release(*(a1 + 64));
}

void ___ACSIntrospect_block_invoke_178(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (CFGetRetainCount(v2) != 1)
    {
      ___ACSIntrospect_block_invoke_178_cold_1();
    }

    CFRetain(*(a1 + 40));
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    if (CFGetRetainCount(v3) != 1)
    {
      ___ACSIntrospect_block_invoke_178_cold_2();
    }

    CFRetain(*(a1 + 48));
  }

  (*(*(a1 + 32) + 16))();
  v4 = *(a1 + 40);
  if (v4)
  {
    if (CFGetRetainCount(v4) <= 1)
    {
      _A_CALLBACK_BLOCK_RELEASED_AN_ASSETCACHESERVICES_OBJECT_IT_DID_NOT_OWN(*(a1 + 72), *(a1 + 56), "introspection", *(a1 + 40));
    }

    CFRelease(*(a1 + 40));
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    if (CFGetRetainCount(v5) <= 1)
    {
      _A_CALLBACK_BLOCK_RELEASED_AN_ASSETCACHESERVICES_OBJECT_IT_DID_NOT_OWN(*(a1 + 72), *(a1 + 56), "error", *(a1 + 48));
    }

    CFRelease(*(a1 + 48));
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 64);

  dispatch_release(v8);
}

@end