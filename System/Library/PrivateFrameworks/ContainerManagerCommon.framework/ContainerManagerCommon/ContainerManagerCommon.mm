void ___containermanagerd_start_xpc_block_invoke_149(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1[8] + 8) + 40);
  v5 = a1[4];
  if (v4)
  {
    _containermanagerd_listener_handler_for_permanent_error(v5, v3, v4);
    _containermanagerd_self_destruct(a1[5]);
  }

  else
  {
    v6 = a1[6];
    v7 = a1[7];
    v8 = v5;
    v9 = v6;
    v10 = v7;
    v11 = v3;
    if (MEMORY[0x1E12D4840]() == MEMORY[0x1E69E9E68])
    {
      xpc_connection_set_target_queue(v11, v8);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = ___containermanagerd_listener_handler_block_invoke;
      handler[3] = &unk_1E86AFBE0;
      v14 = v8;
      v15 = v9;
      v16 = v10;
      v12 = v11;
      v17 = v12;
      xpc_connection_set_event_handler(v12, handler);
      xpc_connection_resume(v12);
    }
  }
}

void ___containermanagerd_listener_handler_block_invoke(void *a1, void *a2)
{
  v85 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v67 = v4;
  v66 = v5;
  v8 = v7;
  connection = v6;
  v68 = v3;
  if (_containermanagerd_connection_handler_onceToken != -1)
  {
    dispatch_once(&_containermanagerd_connection_handler_onceToken, &__block_literal_global_202);
  }

  v9 = MEMORY[0x1E12D4840](v68) == MEMORY[0x1E69E9E98];
  v10 = v68;
  if (!v9)
  {
    v11 = _containermanagerd_connection_handler_dispatcher;
    v12 = v68;
    v63 = v67;
    v64 = v66;
    v13 = v8;
    v62 = v11;
    reply = xpc_dictionary_create_reply(v12);
    v59 = v13;
    if (!reply)
    {
      v21 = container_log_handle_for_category();
      if (os_log_type_enabled(&v21->super, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1DF2C3000, &v21->super, OS_LOG_TYPE_ERROR, "Dictionary does not have reply context", buf, 2u);
      }

      goto LABEL_42;
    }

    uint64 = xpc_dictionary_get_uint64(v12, "Command");
    v55 = objc_autoreleasePoolPush();
    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = __Block_byref_object_copy__9797;
    v76 = __Block_byref_object_dispose__9798;
    v77 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __MCMProcessXPCEvent_block_invoke;
    block[3] = &unk_1E86B0E08;
    v15 = v13;
    v71 = v15;
    if (MCMProcessXPCEvent_onceToken != -1)
    {
      dispatch_once(&MCMProcessXPCEvent_onceToken, block);
    }

    v16 = container_log_handle_for_category();
    v60 = os_signpost_id_make_with_pointer(v16, v12);

    v17 = container_log_handle_for_category();
    v18 = v17;
    if (v60 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 134349056;
      *&buf[4] = uint64;
      _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v60, "XPCEventProcessing", " command=%{public, signpost.description:attribute}llu ", buf, 0xCu);
    }

    if (uint64 >= 0x35)
    {
      v19 = container_log_handle_for_category();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = uint64;
        _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Invalid command index: %llu", buf, 0xCu);
      }

      v57 = [[MCMError alloc] initWithErrorType:49 category:3];
      v20 = 0;
      v58 = 0;
LABEL_30:
      v29 = 0;
      v56 = 0;
      v22 = 0;
LABEL_38:
      v43 = os_transaction_create();
      v44 = v73[5];
      v73[5] = v43;

      v45 = [MCMResultPromise alloc];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __MCMProcessXPCEvent_block_invoke_10;
      v80 = &unk_1E86B0820;
      v83 = v60;
      v84 = uint64;
      v46 = v22;
      v81 = v46;
      v82 = &v72;
      v47 = [(MCMResultPromise *)v45 initWithCompletion:buf];

      v21 = [[MCMReply alloc] initWithXpcReply:reply slowWorkloop:v64 fastWorkloop:v63 resultPromise:v47];
      if (v20)
      {
        [v62 dispatchMessage:v12 context:v29 reply:v21];
      }

      else
      {
        v48 = [[MCMResultBase alloc] initWithError:v57];
        [(MCMResultPromise *)v47 completeWithResult:v48];
      }

      _Block_object_dispose(&v72, 8);
      objc_autoreleasePoolPop(v55);
      [(MCMReply *)v21 send];

LABEL_42:
      v10 = v68;
      if (!reply)
      {
        xpc_connection_cancel(connection);
        v10 = v68;
      }

      goto LABEL_44;
    }

    v58 = [[MCMClientMessageContext alloc] initForCurrentThreadContextWithXPCMessage:v12 userIdentityCache:v15];
    v69 = 0;
    v22 = [MCMProcessXPCEvent_clientFactory clientIdentityWithClientMessageContext:v58 xpcMessage:v12 error:&v69];
    v57 = v69;
    if (!v22)
    {
      v42 = container_log_handle_for_category();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v49 = [v58 pid];
        *buf = 67109378;
        *&buf[4] = v49;
        *&buf[8] = 2112;
        *&buf[10] = v57;
        _os_log_error_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_ERROR, "Error creating client identity for pid %d; error = %@", buf, 0x12u);
      }

      v20 = 0;
      goto LABEL_30;
    }

    v23 = [MCMContainerFactory alloc];
    v56 = [(MCMContainerFactory *)v23 initWithContainerCache:gContainerCache clientIdentity:v22 userIdentityCache:v15];
    current_persona = voucher_get_current_persona();
    v25 = [MCMCommandContext alloc];
    v26 = gContainerCache;
    v27 = MCMProcessXPCEvent_clientFactory;
    v28 = containermanager_copy_global_configuration();
    v29 = [(MCMCommandContext *)v25 initWithClientIdentity:v22 containerCache:v26 containerFactory:v56 userIdentityCache:v15 clientFactory:v27 kernelPersonaID:current_persona globalConfiguration:v28];

    v30 = containermanager_copy_global_configuration();
    LODWORD(v26) = [v30 dispositionForContainerClass:2] == 1;

    if (!v26)
    {
LABEL_37:
      v20 = 1;
      goto LABEL_38;
    }

    v29 = v29;
    v31 = [(MCMCommandContext *)v29 clientIdentity];
    v32 = [v31 codeSignInfo];
    if ([v31 cached] & 1) != 0 || (objc_msgSend(v32, "cached"))
    {
LABEL_36:

      goto LABEL_37;
    }

    context = objc_autoreleasePoolPush();
    v33 = gCodeSigningMapping;
    v34 = [v32 entitlements];
    v35 = [v32 identifier];
    v78 = 0;
    v54 = [v33 processCallerRegisteredEntitlements:v34 identifier:v35 error:&v78];
    v52 = v78;

    if (v54)
    {
      v36 = v54;
      if (![v54 count])
      {
LABEL_35:

        objc_autoreleasePoolPop(context);
        goto LABEL_36;
      }

      oslog = objc_alloc_init(MCMResultPromise);
      v37 = [v54 allObjects];
      v38 = [MCMCommandOperationDelete commandForOperationDeleteWithContainerIdentities:v37 removeAllCodeSignInfo:0 context:v29 resultPromise:oslog];

      [v38 execute];
      v39 = [(MCMResultPromise *)oslog result];
      v40 = [v39 error];

      v36 = v54;
      if (v40)
      {
        v41 = container_log_handle_for_category();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v40;
          _os_log_error_impl(&dword_1DF2C3000, v41, OS_LOG_TYPE_ERROR, "Failed to destroy container(s) when processing codesign entitlements; error = %@", buf, 0xCu);
        }

        v36 = v54;
      }
    }

    else
    {
      oslog = container_log_handle_for_category();
      if (os_log_type_enabled(&oslog->super, OS_LOG_TYPE_ERROR))
      {
        v50 = [v32 identifier];
        *buf = 138412546;
        *&buf[4] = v50;
        *&buf[12] = 2112;
        *&buf[14] = v52;
        _os_log_error_impl(&dword_1DF2C3000, &oslog->super, OS_LOG_TYPE_ERROR, "Error processing entitlements for %@ : %@", buf, 0x16u);
      }

      v36 = 0;
    }

    goto LABEL_35;
  }

LABEL_44:
}

void sub_1DF2C56EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id containermanager_copy_global_configuration()
{
  v0 = _gGlobalConfiguration;
  if (!_gGlobalConfiguration)
  {
    _os_crash();
    __break(1u);
  }

  return v0;
}

void __conmanupcall_block_invoke_26(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a2 > 6)
  {
    if (a2 == 7)
    {
      v9 = container_log_handle_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v14 = 67109120;
        LODWORD(v15) = a4;
        v10 = "Mach channel disconnected, this is probably very bad; error = %d";
        goto LABEL_22;
      }
    }

    else
    {
      if (a2 != 8)
      {
LABEL_12:
        v11 = container_log_handle_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v14 = 134218240;
          v15 = a2;
          v16 = 1024;
          v17 = a4;
          _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Unhandled message type; reason = %lu, error = %d", &v14, 0x12u);
        }

        goto LABEL_20;
      }

      v9 = container_log_handle_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v14 = 67109120;
        LODWORD(v15) = a4;
        v10 = "Mach channel canceled, this is probably very bad; error = %d";
LABEL_22:
        _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, v10, &v14, 8u);
      }
    }

    goto LABEL_20;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      if ((dispatch_mach_mig_demux() & 1) == 0)
      {
        msg = dispatch_mach_msg_get_msg();
        v8 = container_log_handle_for_category();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          msgh_id = msg->msgh_id;
          v14 = 67109120;
          LODWORD(v15) = msgh_id;
          _os_log_fault_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_FAULT, "Got mach message we didn't understand; msgh_id = %d", &v14, 8u);
        }

        mach_msg_destroy(msg);
      }

      goto LABEL_20;
    }

    goto LABEL_12;
  }

  v12 = container_log_handle_for_category();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v14) = 0;
    _os_log_debug_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_DEBUG, "Mach channel connected", &v14, 2u);
  }

LABEL_20:
}

void _Xget_process_containers(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 56)
  {
    v4 = -304;
    goto LABEL_10;
  }

  if (*(a1 + 39) != 1 || *(a1 + 40) != *(a1 + 52))
  {
    v4 = -300;
    goto LABEL_10;
  }

  v11 = 0;
  if (*(a1 + 56) || *(a1 + 60) <= 0x1Fu)
  {
    v4 = -309;
LABEL_10:
    *(a2 + 32) = v4;
    goto LABEL_11;
  }

  *(a2 + 52) = 0;
  v5 = (a2 + 52);
  v6 = (a2 + 28);
  *(a2 + 36) = *(a2 + 36) | 0x1000100;
  v7 = *(a1 + 28);
  v8 = *(a1 + 40);
  v9 = *(a1 + 92);
  v12[0] = *(a1 + 76);
  v12[1] = v9;
  process_containers = server_get_process_containers(v7, v8, v6, v5, &v11, v12);
  mig_deallocate(*(a1 + 28), *(a1 + 40));
  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
  if (!process_containers)
  {
    *(a2 + 36) = v11;
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = *MEMORY[0x1E69E99E0];
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
    return;
  }

  *(a2 + 32) = process_containers;
LABEL_11:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

uint64_t server_get_process_containers(void *a1, unsigned int a2, vm_offset_t *a3, mach_msg_type_number_t *a4, _DWORD *a5, _OWORD *a6)
{
  v110 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v12 = a6[1];
    *atoken.val = *a6;
    *&atoken.val[4] = v12;
    pidp = 0;
    audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
    if (pidp)
    {
      return 5;
    }

    v22 = objc_autoreleasePoolPush();
    v23 = sb_packbuff_new(0x1000uLL);
    if (v23)
    {
      v24 = v23;
      sb_packbuff_pack_uint32(v23, 0, 1);
      bytes = sb_packbuff_get_bytes(v24);
      size = sb_packbuff_get_size(v24);
      v13 = vm_read(*MEMORY[0x1E69E9A60], bytes, size, a3, a4);
      if (v13)
      {
        v27 = container_log_handle_for_category();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          atoken.val[0] = 134218496;
          *&atoken.val[1] = bytes;
          LOWORD(atoken.val[3]) = 2048;
          *(&atoken.val[3] + 2) = size;
          HIWORD(atoken.val[5]) = 1024;
          atoken.val[6] = v13;
          _os_log_error_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_ERROR, "vm_read(%p, %lu) fails: %d", &atoken, 0x1Cu);
        }

        *a5 = 0;
        *a4 = 0;
      }

      else
      {
        *a5 = 1;
        v57 = container_log_handle_for_category();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          v75 = *a4;
          atoken.val[0] = 134218496;
          *&atoken.val[1] = bytes;
          LOWORD(atoken.val[3]) = 2048;
          *(&atoken.val[3] + 2) = a3;
          HIWORD(atoken.val[5]) = 1024;
          atoken.val[6] = v75;
          _os_log_debug_impl(&dword_1DF2C3000, v57, OS_LOG_TYPE_DEBUG, "packbuff bytes: %p, reply bytes: %p, reply size: %u", &atoken, 0x1Cu);
        }
      }

      sb_packbuff_free(v24);
    }

    else
    {
      v13 = 9;
    }

    objc_autoreleasePoolPop(v22);
    return v13;
  }

  v14 = container_log_handle_for_category();
  v15 = os_signpost_id_make_with_pointer(v14, a1);

  v16 = container_log_handle_for_category();
  v17 = v16;
  v102 = v15 - 1;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    LOWORD(atoken.val[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "KernelUpcall", "", &atoken, 2u);
  }

  v18 = container_log_handle_for_category();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    atoken.val[0] = 134217984;
    *&atoken.val[1] = v15;
    _os_log_debug_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_DEBUG, "<%llx> upcall start ~~~~~~~~~~~~~~~~", &atoken, 0xCu);
  }

  v19 = a6[1];
  *atoken.val = *a6;
  *&atoken.val[4] = v19;
  pidp = 0;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  if (pidp)
  {
    v20 = 0;
    v13 = 5;
    v21 = v15 - 1;
    goto LABEL_126;
  }

  v99 = objc_autoreleasePoolPush();
  v28 = objc_opt_class();
  v104 = 0;
  v103 = 0;
  v29 = container_log_handle_for_category();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    atoken.val[0] = 67109376;
    atoken.val[1] = a2;
    LOWORD(atoken.val[2]) = 2048;
    *(&atoken.val[2] + 2) = a1;
    _os_log_debug_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_DEBUG, "request size: %u (%p)", &atoken, 0x12u);
  }

  v30 = sb_packbuff_init_with_buffer(a1, a2, 1, 0);
  v31 = container_log_handle_for_category();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v67 = sb_packbuff_get_bytes(v30);
    atoken.val[0] = 134217984;
    *&atoken.val[1] = v67;
    _os_log_debug_impl(&dword_1DF2C3000, v31, OS_LOG_TYPE_DEBUG, "request packbuff byte address:%p", &atoken, 0xCu);
  }

  v100 = v15;
  if (!v30)
  {
    v73 = container_log_handle_for_category();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      LOWORD(atoken.val[0]) = 0;
      _os_log_error_impl(&dword_1DF2C3000, v73, OS_LOG_TYPE_ERROR, "sb_packbuff_init() of request data fails", &atoken, 2u);
    }

    v38 = 0;
    v68 = 0;
    v35 = 0;
    v36 = 0;
    v20 = 0;
    v13 = 9;
    v69 = v99;
    v21 = v102;
    goto LABEL_123;
  }

  v94 = v28;
  v91 = a5;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v101 = 0;
  v35 = 0;
  v36 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (!sb_packbuff_get_item_value_type(v30, &v104))
          {
            sb_packbuff_free(v30);
            v54 = sb_packbuff_new(0x1000uLL);
            if (v54)
            {
              v55 = v54;
              v38 = [[v94 alloc] initWithCodeSignatureID:v36 containerID:v35 applicationID:v101 proc_user_id:v34 persona_id:v33 containerTypeFromSB:v32];
              v56 = [v38 processRequest];
              if (!v56)
              {
                v95 = v33;
                v20 = [v38 identifier];
                v58 = container_log_handle_for_category();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
                {
                  v93 = [v38 replyStatus];
                  v98 = [v38 dataContainerURL];
                  v90 = [v98 path];
                  atoken.val[0] = 134218498;
                  *&atoken.val[1] = v100;
                  LOWORD(atoken.val[3]) = 1024;
                  *(&atoken.val[3] + 2) = v93;
                  HIWORD(atoken.val[4]) = 2112;
                  *&atoken.val[5] = v90;
                  _os_log_debug_impl(&dword_1DF2C3000, v58, OS_LOG_TYPE_DEBUG, "<%llx> upcall result %u; data container [%@]", &atoken, 0x1Cu);
                }

                v59 = objc_opt_new();
                v60 = v59;
                if (v101)
                {
                  [v59 appendFormat:@"appID[%@]", v101];
                }

                v97 = v60;
                if (v35)
                {
                  v61 = [v60 length];
                  v62 = @", ";
                  if (!v61)
                  {
                    v62 = &stru_1F5A5B2B8;
                  }

                  [v60 appendFormat:@"%@conID[%@]", v62, v35];
                }

                if (v36)
                {
                  v63 = [v60 length];
                  v64 = @", ";
                  if (!v63)
                  {
                    v64 = &stru_1F5A5B2B8;
                  }

                  [v60 appendFormat:@"%@codID[%@]", v64, v36];
                }

                v65 = container_log_handle_for_category();
                if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                {
                  v89 = [v38 replyStatus];
                  v92 = [v38 dataContainerURL];
                  if (v92)
                  {
                    v88 = [v38 dataContainerURL];
                    v66 = [v88 path];
                  }

                  else
                  {
                    v66 = &stru_1F5A5B2B8;
                  }

                  atoken.val[0] = 67110402;
                  atoken.val[1] = v32;
                  LOWORD(atoken.val[2]) = 1024;
                  *(&atoken.val[2] + 2) = v34;
                  HIWORD(atoken.val[3]) = 1024;
                  atoken.val[4] = v95;
                  LOWORD(atoken.val[5]) = 2114;
                  *(&atoken.val[5] + 2) = v97;
                  HIWORD(atoken.val[7]) = 1024;
                  v107 = v89;
                  v108 = 2114;
                  v76 = v66;
                  v109 = v66;
                  _os_log_impl(&dword_1DF2C3000, v65, OS_LOG_TYPE_DEFAULT, "kernel_upcall {%u; %u.%u; %{public}@} -> {%u; [%{public}@]}", &atoken, 0x2Eu);
                  if (v92)
                  {
                  }
                }

                v77 = [v38 replyStatus];
                if (v77 == 1)
                {
                  v78 = [v38 dataContainerURL];

                  if (v78)
                  {
                    v79 = [v38 dataContainerURL];
                    v77 = __server_get_process_containers_block_invoke(v55, v79) == 0;
                  }

                  else
                  {
                    v77 = 1;
                  }
                }

                __server_get_process_containers_block_invoke_8(v55, v77);
                v80 = sb_packbuff_get_bytes(v55);
                v81 = sb_packbuff_get_size(v55);
                v13 = vm_read(*MEMORY[0x1E69E9A60], v80, v81, a3, a4);
                if (v13)
                {
                  v96 = v81;
                  v82 = container_log_handle_for_category();
                  v73 = v97;
                  if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                  {
                    atoken.val[0] = 134218496;
                    *&atoken.val[1] = v80;
                    LOWORD(atoken.val[3]) = 2048;
                    *(&atoken.val[3] + 2) = v96;
                    HIWORD(atoken.val[5]) = 1024;
                    atoken.val[6] = v13;
                    _os_log_error_impl(&dword_1DF2C3000, v82, OS_LOG_TYPE_ERROR, "vm_read(%p, %lu) fails: %d", &atoken, 0x1Cu);
                  }

                  *v91 = 0;
                  *a4 = 0;
                }

                else
                {
                  *v91 = 1;
                  v83 = container_log_handle_for_category();
                  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
                  {
                    v87 = *a4;
                    atoken.val[0] = 134218496;
                    *&atoken.val[1] = v80;
                    LOWORD(atoken.val[3]) = 2048;
                    *(&atoken.val[3] + 2) = a3;
                    HIWORD(atoken.val[5]) = 1024;
                    atoken.val[6] = v87;
                    _os_log_debug_impl(&dword_1DF2C3000, v83, OS_LOG_TYPE_DEBUG, "packbuff bytes: %p, reply bytes: %p, reply size: %u", &atoken, 0x1Cu);
                  }

                  v73 = v97;
                }

                sb_packbuff_free(v55);
                goto LABEL_122;
              }

              v13 = v56;
              v20 = 0;
            }

            else
            {
              v38 = 0;
              v20 = 0;
              v13 = 9;
            }

LABEL_96:
            v69 = v99;
            v68 = v101;
            v21 = v102;
            goto LABEL_124;
          }

          if (v104 <= 3u)
          {
            break;
          }

          if (v104 <= 5u)
          {
            if (v104 == 4)
            {
              v42 = v32;
              v43 = v34;
              v44 = v33;
              v45 = unpackToNSString(v30, "CM_KERN_REQUEST_APP_GROUP_ID");
              v46 = container_log_handle_for_category();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
              {
                atoken.val[0] = 134218242;
                *&atoken.val[1] = v100;
                LOWORD(atoken.val[3]) = 2112;
                *(&atoken.val[3] + 2) = v45;
                v47 = v46;
                v48 = "<%llx> app group id: [%@]";
                goto LABEL_66;
              }

              goto LABEL_63;
            }

            if (v104 != 5)
            {
LABEL_97:
              v73 = container_log_handle_for_category();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                atoken.val[0] = 67109120;
                atoken.val[1] = v104;
                _os_log_error_impl(&dword_1DF2C3000, v73, OS_LOG_TYPE_ERROR, "unexpected value: %u\n", &atoken, 8u);
              }

              v38 = 0;
              v20 = 0;
              v13 = 4;
              goto LABEL_122;
            }

            v32 = sb_packbuff_unpack_uint32(v30, &v103);
            v41 = container_log_handle_for_category();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              atoken.val[0] = 134218240;
              *&atoken.val[1] = v100;
              LOWORD(atoken.val[3]) = 1024;
              *(&atoken.val[3] + 2) = v32;
              _os_log_debug_impl(&dword_1DF2C3000, v41, OS_LOG_TYPE_DEBUG, "<%llx> container type: [%u]", &atoken, 0x12u);
            }

            if (v103)
            {
              v73 = container_log_handle_for_category();
              if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_105;
              }

              atoken.val[0] = 67109120;
              atoken.val[1] = v103;
              v71 = "failed: to unpack uint32 for CM_KERN_REQUEST_CONTAINER_TYPE. error: %d\n";
LABEL_132:
              _os_log_error_impl(&dword_1DF2C3000, v73, OS_LOG_TYPE_ERROR, v71, &atoken, 8u);
              goto LABEL_105;
            }
          }

          else
          {
            switch(v104)
            {
              case 6u:
                v42 = v32;
                v43 = v34;
                v44 = v33;
                v45 = unpackToNSString(v30, "CM_KERN_REQUEST_CONTAINER_ID");
                v46 = container_log_handle_for_category();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                {
                  atoken.val[0] = 134218242;
                  *&atoken.val[1] = v100;
                  LOWORD(atoken.val[3]) = 2112;
                  *(&atoken.val[3] + 2) = v45;
                  v47 = v46;
                  v48 = "<%llx> system container id: [%@]";
                  goto LABEL_66;
                }

LABEL_63:

                v33 = v44;
                v34 = v43;
                v32 = v42;
                if (!v45)
                {
                  v20 = 0;
                  v13 = 5;
                  v69 = v99;
                  v68 = v101;
                  v21 = v102;
                  goto LABEL_125;
                }

                break;
              case 7u:
                v42 = v32;
                v43 = v34;
                v44 = v33;
                v45 = unpackToNSString(v30, "CM_KERN_REQUEST_SYSTEM_GROUP_CONTAINER_ID");
                v46 = container_log_handle_for_category();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                {
                  atoken.val[0] = 134218242;
                  *&atoken.val[1] = v100;
                  LOWORD(atoken.val[3]) = 2112;
                  *(&atoken.val[3] + 2) = v45;
                  v47 = v46;
                  v48 = "<%llx> system group id: [%@]";
LABEL_66:
                  _os_log_debug_impl(&dword_1DF2C3000, v47, OS_LOG_TYPE_DEBUG, v48, &atoken, 0x16u);
                  goto LABEL_63;
                }

                goto LABEL_63;
              case 8u:
                v33 = sb_packbuff_unpack_uint32(v30, &v103);
                v37 = container_log_handle_for_category();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                {
                  atoken.val[0] = 134218240;
                  *&atoken.val[1] = v100;
                  LOWORD(atoken.val[3]) = 1024;
                  *(&atoken.val[3] + 2) = v33;
                  _os_log_debug_impl(&dword_1DF2C3000, v37, OS_LOG_TYPE_DEBUG, "<%llx> persona id: [%u]", &atoken, 0x12u);
                }

                if (v103)
                {
                  v73 = container_log_handle_for_category();
                  if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_105;
                  }

                  atoken.val[0] = 67109120;
                  atoken.val[1] = v103;
                  v71 = "failed: to unpack uint32 for CM_KERN_REQUEST_PERSONA_ID. error: %d\n";
                  goto LABEL_132;
                }

                break;
              default:
                goto LABEL_97;
            }
          }
        }

        if (v104 > 1u)
        {
          break;
        }

        if (v104)
        {
          v38 = unpackToNSString(v30, "CM_KERN_REQUEST_CONTAINER_ID");

          v39 = container_log_handle_for_category();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            atoken.val[0] = 134218242;
            *&atoken.val[1] = v100;
            LOWORD(atoken.val[3]) = 2112;
            *(&atoken.val[3] + 2) = v38;
            _os_log_debug_impl(&dword_1DF2C3000, v39, OS_LOG_TYPE_DEBUG, "<%llx> container id: [%@]", &atoken, 0x16u);
          }

          v35 = v38;
          if (!v38)
          {
            goto LABEL_95;
          }
        }

        else
        {
          v49 = v32;
          v50 = v34;
          v51 = v33;
          v38 = unpackToNSString(v30, "CM_KERN_REQUEST_CODE_SIGNATURE_ID");

          v52 = container_log_handle_for_category();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            atoken.val[0] = 134218242;
            *&atoken.val[1] = v100;
            LOWORD(atoken.val[3]) = 2112;
            *(&atoken.val[3] + 2) = v38;
            _os_log_debug_impl(&dword_1DF2C3000, v52, OS_LOG_TYPE_DEBUG, "<%llx> code signature: [%@]", &atoken, 0x16u);
          }

          v36 = v38;
          v33 = v51;
          v34 = v50;
          v32 = v49;
          if (!v38)
          {
LABEL_95:
            v20 = 0;
            v13 = 5;
            goto LABEL_96;
          }
        }
      }

      if (v104 != 2)
      {
        break;
      }

      v38 = unpackToNSString(v30, "CM_KERN_REQUEST_APPLICATION_ID");

      v53 = container_log_handle_for_category();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        atoken.val[0] = 134218242;
        *&atoken.val[1] = v100;
        LOWORD(atoken.val[3]) = 2112;
        *(&atoken.val[3] + 2) = v38;
        _os_log_debug_impl(&dword_1DF2C3000, v53, OS_LOG_TYPE_DEBUG, "<%llx> application id: [%@]", &atoken, 0x16u);
      }

      v101 = v38;
      if (!v38)
      {
        v68 = 0;
        v20 = 0;
        v13 = 5;
        v69 = v99;
        v21 = v102;
        goto LABEL_124;
      }
    }

    if (v104 != 3)
    {
      goto LABEL_97;
    }

    v34 = sb_packbuff_unpack_uint32(v30, &v103);
    v40 = container_log_handle_for_category();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      atoken.val[0] = 134218240;
      *&atoken.val[1] = v100;
      LOWORD(atoken.val[3]) = 1024;
      *(&atoken.val[3] + 2) = v34;
      _os_log_debug_impl(&dword_1DF2C3000, v40, OS_LOG_TYPE_DEBUG, "<%llx> uid: [%u]", &atoken, 0x12u);
    }
  }

  while (!v103);
  v73 = container_log_handle_for_category();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
  {
    atoken.val[0] = 67109120;
    atoken.val[1] = v103;
    v71 = "failed: to unpack uint32 for CM_KERN_REQUEST_UID. error: %d\n";
    goto LABEL_132;
  }

LABEL_105:
  v38 = 0;
  v20 = 0;
  v13 = 5;
LABEL_122:
  v69 = v99;
  v68 = v101;
  v21 = v102;
LABEL_123:

LABEL_124:
LABEL_125:

  objc_autoreleasePoolPop(v69);
  v15 = v100;
LABEL_126:
  v84 = container_log_handle_for_category();
  v85 = v84;
  if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v84))
  {
    atoken.val[0] = 138477827;
    *&atoken.val[1] = v20;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v85, OS_SIGNPOST_INTERVAL_END, v15, "KernelUpcall", " identifier=%{private, signpost.description:attribute}@ ", &atoken, 0xCu);
  }

  return v13;
}

void *sb_packbuff_init_with_buffer(void *a1, uint64_t a2, int a3, int a4)
{
  result = malloc_type_calloc(1uLL, 0x38uLL, 0x1010040EDCA6020uLL);
  if (result)
  {
    *result = a4;
    result[1] = 0;
    result[2] = a2;
    v9 = a2;
    result[5] = a1;
    result[6] = a1;
    if (!a3)
    {
      *a1 = 0;
      a2 = result[2];
      v9 = 8;
    }

    result[3] = a2 - v9;
    result[4] = v9;
  }

  return result;
}

id unpackToNSString(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v7 = 0;
  v3 = sb_packbuff_unpack_string(a1, &v8, &v7);
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v3];
  }

  else
  {
    v5 = container_log_handle_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = a2;
      v11 = 1024;
      v12 = v7;
      _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "failed: to unpack string for %s. error: %d\n", buf, 0x12u);
    }

    v4 = 0;
  }

  return v4;
}

uint64_t sb_packbuff_unpack_string(void *a1, void *a2, int *a3)
{
  v9 = 0;
  v8 = 0;
  v5 = sb_packbuff_unpack_item(a1, 2, 0, &v8, &v9);
  if (!v5)
  {
    if (v9 && (v6 = (v9 - 1), !*(v8 + v6)))
    {
      v5 = 0;
      if (a2)
      {
        *a2 = v6;
      }
    }

    else
    {
      v5 = 22;
    }
  }

  if (a3)
  {
    *a3 = v5;
  }

  return v8;
}

uint64_t sb_packbuff_get_item_value_type(void *a1, _WORD *a2)
{
  v3 = a1[5];
  v2 = a1[6];
  if (v2 < v3 || (v2 + 4) > v3 + a1[4] || !*v2)
  {
    return 0;
  }

  *a2 = v2[1];
  return 1;
}

uint64_t sb_packbuff_unpack_item(void *a1, uint64_t a2, _DWORD *a3, unsigned __int16 **a4, _DWORD *a5)
{
  v5 = a1[5];
  v6 = a1[6];
  if (v6 < v5)
  {
    return 34;
  }

  v7 = (v6 + 8);
  if (v6 + 8 > v5 + a1[4])
  {
    return 34;
  }

  if (*v6 != a2)
  {
    return 22;
  }

  if ((a2 & 0xFFFE) != 2)
  {
    if (a3)
    {
      *a3 = *(v6 + 4);
      v11 = 8;
      goto LABEL_15;
    }

    return 22;
  }

  v8 = 22;
  if (!a4 || !a5)
  {
    return v8;
  }

  v10 = *(v6 + 4);
  LODWORD(v6) = 8 - (*(v6 + 4) & 7);
  *a4 = v7;
  *a5 = v10;
  if ((v10 & 7) != 0)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v10 + v6 + 8;
  v5 = a1[5];
  v6 = a1[6];
LABEL_15:
  v12 = (v6 + v11);
  if (v12 < v5 || v12 >= v5 + a1[2])
  {
    return 34;
  }

  if ((v11 & 7) != 0)
  {
    sb_packbuff_unpack_item_cold_1();
  }

  v8 = 0;
  a1[6] = v12;
  return v8;
}

uint64_t sb_packbuff_unpack_uint32(void *a1, int *a2)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v3 < v2 || (v5 = v3 + 8, v3 + 8 > v2 + a1[4]))
  {
    result = 0;
LABEL_4:
    v7 = 34;
    goto LABEL_5;
  }

  if (*v3 == 1)
  {
    result = *(v3 + 4);
    if (v5 >= v2 + a1[2])
    {
      goto LABEL_4;
    }

    v7 = 0;
    a1[6] = v5;
  }

  else
  {
    result = 0;
    v7 = 22;
  }

LABEL_5:
  if (a2)
  {
    *a2 = v7;
  }

  return result;
}

void sb_packbuff_free(char *a1)
{
  if (a1)
  {
    if (*a1 == 2)
    {
      if (MEMORY[0x1E12D45E0](*MEMORY[0x1E69E9A60], *(a1 + 5), *(a1 + 2)) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sb_packbuff_free_cold_1(a1 + 5, a1 + 2);
      }
    }

    else if (*a1 == 1)
    {
      free(*(a1 + 5));
    }

    free(a1);
  }
}

void *sb_packbuff_new(unint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x38uLL, 0x1010040EDCA6020uLL);
  v3 = v2;
  if (v2)
  {
    v4 = 256;
    if (a1 >= 8)
    {
      v4 = a1;
    }

    v2[1] = v4;
    *v2 = 1;
    if (sb_packbuff_realloc(v2, 0))
    {
      free(v3);
      return 0;
    }

    else
    {
      *(v3 + 3) -= 8;
      *(v3 + 4) = 8;
      **(v3 + 6) = 0;
    }
  }

  return v3;
}

uint64_t sb_packbuff_realloc(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 45;
  }

  if (*a1 != 1)
  {
    return 45;
  }

  v5 = 8 - (a2 & 7);
  v6 = (a2 & 7) == 0;
  v7 = *(a1 + 16) + v2;
  *(a1 + 16) = v7;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8 + a2;
  if (v9 > v7 - *(a1 + 32))
  {
    v7 += v9;
    *(a1 + 16) = v7;
  }

  v10 = reallocf(*(a1 + 40), v7);
  *(a1 + 40) = v10;
  if (!v10)
  {
    return 12;
  }

  v11 = v10;
  result = 0;
  v13 = *(a1 + 32);
  *(a1 + 24) = *(a1 + 16) - v13;
  if (v13)
  {
    v11 = v11 + v13 - 8;
  }

  *(a1 + 48) = v11;
  return result;
}

id MCMContainerSchemaDefinitionForClass(unint64_t a1)
{
  if (MCMContainerSchemaDefinitionForClass_onceToken != -1)
  {
    dispatch_once(&MCMContainerSchemaDefinitionForClass_onceToken, &__block_literal_global_8360);
  }

  if (a1 <= 0xD)
  {
    if (((1 << a1) & 0xE54) != 0)
    {
      v2 = MCMContainerSchemaDefinitionForClass_userDataSchemaDefinition;
LABEL_10:
      v3 = v2;
      goto LABEL_11;
    }

    if (((1 << a1) & 0x2080) != 0)
    {
      v2 = MCMContainerSchemaDefinitionForClass_groupSchemaDefinition;
      goto LABEL_10;
    }

    if (a1 == 12)
    {
      v2 = MCMContainerSchemaDefinitionForClass_systemSchemaDefinition;
      goto LABEL_10;
    }
  }

  v3 = MEMORY[0x1E695E0F0];
  v5 = MEMORY[0x1E695E0F0];
LABEL_11:

  return v3;
}

void __server_get_process_containers_block_invoke_8(void *a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = sb_packbuff_pack_uint32(a1, 0, a2);
  if (v3)
  {
    v4 = v3;
    v5 = container_log_handle_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67109632;
      v6[1] = v4;
      v7 = 1024;
      v8 = 0;
      v9 = 1024;
      v10 = a2;
      _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "sb_packbuff_pack_uint32() fails: %d; type: %u, value: %u\n", v6, 0x14u);
    }
  }
}

uint64_t sb_packbuff_pack_item(void *a1, unsigned int a2, __int16 a3, int a4, void *__src, size_t __n)
{
  v6 = __n;
  v12 = 8;
  if (__n)
  {
    if ((__n & 7) != 0)
    {
      v13 = 8 - (__n & 7);
    }

    else
    {
      v13 = 0;
    }

    result = 34;
    v15 = __n + v13;
    if (__CFADD__(__n, v13) || v15 > 0xFFFFFFF7)
    {
      return result;
    }

    v12 = v15 + 8;
  }

  else
  {
    v15 = 0;
    v13 = 0;
  }

  if (a1[3] >= v12 || (result = sb_packbuff_realloc(a1, v12), !result))
  {
    v16 = a1[6];
    *v16 = a2;
    *(v16 + 2) = a3;
    if (a2 > 1)
    {
      if (!__src)
      {
        sb_packbuff_pack_item_cold_1();
      }

      *(v16 + 4) = v6;
      v17 = (a1[6] + 8);
      memcpy(v17, __src, v6);
      if (v13)
      {
        bzero(&v17[v6], v13);
      }
    }

    else
    {
      if (v15)
      {
        sb_packbuff_pack_item_cold_2();
      }

      *(v16 + 4) = a4;
    }

    result = 0;
    v18 = a1[4] + v12;
    a1[3] -= v12;
    a1[4] = v18;
    v19 = (a1[6] + v12);
    a1[6] = v19;
    *v19 = 0;
  }

  return result;
}

id sub_1DF2CC93C(uint64_t a1, uint64_t a2, void *a3)
{
  v153 = *MEMORY[0x1E69E9840];
  v6 = sub_1DF3B0D0C();
  v7 = *(v6 - 8);
  v143 = v6;
  v144 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v145 = &v135[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1DF3B0CEC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v135[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v146 = &v135[-v14];
  v15 = [v3 containerPath];
  if (a3)
  {
    a3 = sub_1DF3B0DBC();
  }

  *&v151[0] = 0;
  v16 = [v15 urlForPart:a1 partDomain:a3 error:v151];
  swift_unknownObjectRelease();

  v17 = *&v151[0];
  if (!v16)
  {
    goto LABEL_9;
  }

  v18 = v146;
  sub_1DF3B0CCC();
  v19 = v17;

  v20 = [v3 type];
  if (v20 > 2)
  {
    if (v20 == 3)
    {
      v142 = v19;
      if (!*MEMORY[0x1E69E9BB0])
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_13:
      v24 = v10;
      v139 = sub_1DF3B0E2C();
      v26 = v25;
LABEL_16:

      v29 = [v3 useProxiedClientForTarget];
      v30 = [v3 clientIdentity];
      if ((v29 & 1) == 0)
      {
        v31 = [v30 proximateClient];
        swift_unknownObjectRelease();
        v30 = v31;
      }

      v32 = v143;
      [v30 auditToken];
      swift_unknownObjectRelease();
      v151[0] = v149;
      v151[1] = v150;
      v152[0] = v149;
      v152[1] = v150;
      pid = container_audit_token_get_pid();
      v34 = sub_1DF2D25C4();
      (*(v144 + 16))(v145, v34, v32);
      (*(v24 + 16))(v13, v18, v9);
      v35 = v3;

      v36 = sub_1DF3B0CFC();
      v37 = sub_1DF3B0EBC();
      v26, v38, v39, v40, v41, v42, v43, v44;

      v45 = os_log_type_enabled(v36, v37);
      v141 = v24;
      v140 = v9;
      if (v45)
      {
        v53 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        *&v152[0] = v138;
        *v53 = 136316162;
        LODWORD(v148) = pid;
        v137 = v36;
        v54 = sub_1DF3B0FFC();
        v56 = v55;
        v57 = sub_1DF2D1250(v54, v55, v152);
        v56, v58, v59, v60, v61, v62, v63, v64;
        *(v53 + 4) = v57;
        *(v53 + 12) = 2080;
        v65 = [v35 identifier];
        v66 = sub_1DF3B0DCC();
        v136 = v37;
        v67 = v9;
        v69 = v68;

        v70 = sub_1DF2D1250(v66, v69, v152);
        v69, v71, v72, v73, v74, v75, v76, v77;
        *(v53 + 14) = v70;
        *(v53 + 22) = 2080;
        v148 = [v35 containerClass];
        type metadata accessor for container_class_t(0);
        v78 = sub_1DF3B0DDC();
        v80 = v79;
        v81 = sub_1DF2D1250(v78, v79, v152);
        v80, v82, v83, v84, v85, v86, v87, v88;
        *(v53 + 24) = v81;
        *(v53 + 32) = 2080;
        v89 = sub_1DF3B0CDC();
        v91 = v90;
        v92 = *(v24 + 8);
        v92(v13, v67);
        v93 = sub_1DF2D1250(v89, v91, v152);
        v91, v94, v95, v96, v97, v98, v99, v100;
        *(v53 + 34) = v93;
        *(v53 + 42) = 2080;
        v101 = sub_1DF2D1250(v139, v26, v152);
        v26, v102, v103, v104, v105, v106, v107, v108;
        *(v53 + 44) = v101;
        v109 = v137;
        _os_log_impl(&dword_1DF2C3000, v137, v136, "Issuing token to pid %s for identifier = [%s](%s, path = [%s] (extension class: %s", v53, 0x34u);
        v110 = v138;
        swift_arrayDestroy();
        MEMORY[0x1E12D4520](v110, -1, -1);
        MEMORY[0x1E12D4520](v53, -1, -1);

        (*(v144 + 8))(v145, v143);
      }

      else
      {
        v26, v46, v47, v48, v49, v50, v51, v52;

        v92 = *(v24 + 8);
        v92(v13, v9);
        (*(v144 + 8))(v145, v32);
      }

      v111 = v146;
      sub_1DF3B0CDC();
      v113 = v112;
      sub_1DF3B0DFC();
      v26, v114, v115, v116, v117, v118, v119, v120;
      sub_1DF3B0DFC();
      v113, v121, v122, v123, v124, v125, v126, v127;
      v128 = container_sandbox_issue_custom_extension();

      if (v128)
      {
        v16 = sub_1DF3B0E2C();
        MEMORY[0x1E12D4520](v128, -1, -1);
      }

      else
      {
        v16 = [objc_allocWithZone(MCMError) initWithErrorType:90 category:1];
        sub_1DF2D75B0();
        v129 = swift_allocError();
        *v130 = v16;
        v147 = v129;
        swift_willThrow();
      }

      v92(v111, v140);

      return v16;
    }

    goto LABEL_26;
  }

  if (v20 == 1)
  {
    v27 = [objc_msgSend(v3 containerConfig)];
    swift_unknownObjectRelease();
    if (v27)
    {
      v142 = v19;
      v24 = v10;
      v139 = sub_1DF3B0DCC();
      v26 = v28;

      goto LABEL_16;
    }

    v131 = [objc_allocWithZone(MCMError) initWithErrorType:72 category:3];
LABEL_28:
    v16 = v131;
    sub_1DF2D75B0();
    v132 = swift_allocError();
    *v133 = v16;
    v147 = v132;
    swift_willThrow();
    (*(v10 + 8))(v18, v9);

    return v16;
  }

  if (v20 == 2)
  {
    v142 = v19;
    if (!*MEMORY[0x1E69E9BA8])
    {
      __break(1u);
LABEL_9:
      if (v17)
      {
        sub_1DF2D75B0();
        v21 = swift_allocError();
        *v22 = v17;
        v147 = v21;
        swift_willThrow();
        v23 = v17;
        return v16;
      }

      __break(1u);
      goto LABEL_31;
    }

    goto LABEL_13;
  }

  if (v20)
  {
LABEL_26:
    v131 = [objc_allocWithZone(MCMError) initWithErrorType:38 category:3];
    goto LABEL_28;
  }

LABEL_32:
  result = sub_1DF3B0FBC();
  __break(1u);
  return result;
}

uint64_t __server_get_process_containers_block_invoke(void *a1, id a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [a2 fileSystemRepresentation];
  v6 = strlen(v5);
  v7 = sb_packbuff_pack_string(a1, 1, v5, v6);
  if (v7)
  {
    v8 = container_log_handle_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109634;
      v10[1] = v7;
      v11 = 1024;
      v12 = 1;
      v13 = 2080;
      v14 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "sb_packbuff_pack_string() fails: %d; type: %u, path: %s\n", v10, 0x18u);
    }
  }

  return v7;
}

uint64_t sb_packbuff_pack_string(void *a1, __int16 a2, void *__src, unint64_t a4)
{
  if (a4 > 0xFFFFFFFE || *(__src + a4))
  {
    return 22;
  }

  else
  {
    return sb_packbuff_pack_item(a1, 2u, a2, 0, __src, (a4 + 1));
  }
}

uint64_t MCMArrayContainsOnlyClass(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = a1;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = 0;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

id sub_1DF2CDEF0(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1DF3B0CEC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[OBJC_IVAR___MCMSandboxExtension_useLegacyExtensionPolicy] = 0;
  v4[OBJC_IVAR___MCMSandboxExtension_useProxiedClientForTarget] = 0;
  *&v4[OBJC_IVAR___MCMSandboxExtension_type] = 1;
  *&v4[OBJC_IVAR___MCMSandboxExtension_reason] = 0;
  *&v4[OBJC_IVAR___MCMSandboxExtension_clientIdentity] = a1;
  *&v4[OBJC_IVAR___MCMSandboxExtension_containerPath] = a2;
  *&v4[OBJC_IVAR___MCMSandboxExtension_containerIdentity] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = [a2 containerRootURL];
  sub_1DF3B0CCC();

  sub_1DF3B0CDC();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v15 = objc_allocWithZone(MCMFileHandle);
  v16 = sub_1DF3B0DBC();
  v14, v17, v18, v19, v20, v21, v22, v23;
  LOBYTE(v56) = 0;
  v24 = [v15 initWithPath:v16 relativeToFileHandle:0 direction:10 symlinks:1 createMode:0 createDPClass:0 openLazily:v56];

  *&v4[OBJC_IVAR___MCMSandboxExtension_fhSandbox] = v24;
  v25 = [a1 codeSignInfo];
  v26 = [a3 containerConfig];
  *&v4[OBJC_IVAR___MCMSandboxExtension_containerConfig] = v26;
  v27 = [v26 containerClass];
  *&v4[OBJC_IVAR___MCMSandboxExtension_containerClass] = v27;
  v28 = [a3 identifier];
  v29 = sub_1DF3B0DCC();
  v31 = v30;

  v32 = &v4[OBJC_IVAR___MCMSandboxExtension_identifier];
  *v32 = v29;
  v32[1] = v31;
  v33 = [v25 identifier];
  v34 = sub_1DF3B0DCC();
  v36 = v35;

  v37 = &v4[OBJC_IVAR___MCMSandboxExtension_clientIdentifier];
  *v37 = v34;
  v37[1] = v36;
  v38 = [v25 teamIdentifier];
  if (v38)
  {
    v39 = v38;
    v40 = sub_1DF3B0DCC();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  v43 = &v4[OBJC_IVAR___MCMSandboxExtension_clientTeamIdentifier];
  *v43 = v40;
  v43[1] = v42;
  [a1 auditToken];
  v57 = v61;
  v58 = v60;
  v44 = objc_allocWithZone(MCMAMFI);
  v60 = v58;
  v61 = v57;
  v45 = [v44 initWithAuditToken_];
  *&v4[OBJC_IVAR___MCMSandboxExtension_amfi] = v45;
  v46 = [v25 entitlements];
  *&v4[OBJC_IVAR___MCMSandboxExtension_entitlements] = v46;
  v47 = [objc_msgSend(a1 proximateClient)];
  swift_unknownObjectRelease();
  v48 = [v47 identifier];
  swift_unknownObjectRelease();
  v49 = sub_1DF3B0DCC();
  v51 = v50;

  v52 = &v4[OBJC_IVAR___MCMSandboxExtension_proximateClientIdentifier];
  *v52 = v49;
  v52[1] = v51;
  if (*v37 == v49 && v37[1] == v51)
  {
    swift_unknownObjectRelease();
    v53 = 0;
  }

  else
  {
    v54 = sub_1DF3B100C();
    swift_unknownObjectRelease();
    v53 = v54 ^ 1;
  }

  v4[OBJC_IVAR___MCMSandboxExtension_isProxiedClient] = v53 & 1;
  v59.receiver = v4;
  v59.super_class = MCMSandboxExtension;
  return objc_msgSendSuper2(&v59, sel_init);
}

id sub_1DF2CE5BC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = sub_1DF3B0D0C();
  MEMORY[0x1EEE9AC00](v9);
  if (![v4 type])
  {
    if (!a4)
    {
      return 0;
    }

LABEL_8:
    v15 = 0;
    result = 0;
    *a4 = 0;
    return result;
  }

  v10 = [v4 entitlements];
  if (!v10)
  {
    v17 = [objc_allocWithZone(MCMError) initWithErrorType_];
    if (a4)
    {
      v18 = v17;
      v19 = v17;
      result = 0;
      *a4 = v18;
      return result;
    }

    return 0;
  }

  v11 = v10;
  if ([v4 useLegacyExtensionPolicy])
  {
    v12 = [v4 containerClass];
    v13 = [v4 identifier];
    LOBYTE(v12) = [v11 isOwnerOfContainerWithClass:v12 identifier:v13];

    if ((v12 & 1) == 0)
    {
      v14 = [objc_msgSend(v4 containerIdentity)];
      swift_unknownObjectRelease();
      if ((v14 & 1) == 0)
      {
        [v4 setReason_];
        swift_unknownObjectRelease();
        if (!a4)
        {
          return 0;
        }

        goto LABEL_8;
      }
    }
  }

  sub_1DF2CEECC(v11, a1, a2, a3);
  v21 = sub_1DF2CC93C(a1, a2, a3);
  swift_unknownObjectRelease();
  if (a4)
  {
    v20 = 0;
    *a4 = 0;
  }

  else
  {
  }

  return v21;
}

id sub_1DF2CEE3C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + *a3 + 8);

  v4 = sub_1DF3B0DBC();
  v3, v5, v6, v7, v8, v9, v10, v11;

  return v4;
}

void sub_1DF2CEECC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v92 = a1;
  v93 = a3;
  v9 = sub_1DF3B0D0C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v4 type] != 1 && a2 == 0)
  {
    v90 = v5;
    v91 = v10;
    v14 = [v4 proximateClientIdentifier];
    v15 = sub_1DF3B0DCC();
    v17 = v16;

    v18 = [objc_msgSend(v4 containerConfig)];
    swift_unknownObjectRelease();
    v19 = sub_1DF3B0E6C();

    v89 = v15;
    LOBYTE(v18) = sub_1DF2D5850(v15, v17, v19);
    v19, v20, v21, v22, v23, v24, v25, v26;
    if ((v18 & 1) == 0)
    {
      v40 = sub_1DF2D25C4();
      v41 = v91;
      (*(v91 + 16))(v12, v40, v9);
      v42 = v4;

      v43 = sub_1DF3B0CFC();
      v44 = sub_1DF3B0EAC();
      v17, v45, v46, v47, v48, v49, v50, v51;

      if (os_log_type_enabled(v43, v44))
      {
        v52 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v95 = v93;
        *v52 = 136315394;
        v94 = [v42 type];
        type metadata accessor for MCMSandboxExtensionType(0);
        sub_1DF2D7558();
        v53 = v44;
        v54 = sub_1DF3B0FFC();
        v56 = v55;
        v57 = sub_1DF2D1250(v54, v55, &v95);
        v56, v58, v59, v60, v61, v62, v63, v64;
        *(v52 + 4) = v57;
        *(v52 + 12) = 2080;
        v65 = sub_1DF2D1250(v89, v17, &v95);
        v17, v66, v67, v68, v69, v70, v71, v72;
        *(v52 + 14) = v65;
        _os_log_impl(&dword_1DF2C3000, v43, v53, "Refusing to issue requested sandbox extension type %s to [%s]", v52, 0x16u);
        v73 = v93;
        swift_arrayDestroy();
        MEMORY[0x1E12D4520](v73, -1, -1);
        MEMORY[0x1E12D4520](v52, -1, -1);
      }

      else
      {

        v17, v77, v78, v79, v80, v81, v82, v83;
      }

      (*(v41 + 8))(v12, v9);
      goto LABEL_30;
    }

    v17, v27, v28, v29, v30, v31, v32, v33;
    v6 = v90;
  }

  v34 = [v4 type];
  if ((v34 - 1) > 2)
  {
    v39 = 1;
    goto LABEL_12;
  }

  v35 = qword_1DF3BD5F8[(v34 - 1)];
  v36 = [objc_msgSend(v4 clientIdentity)];
  swift_unknownObjectRelease();
  v37 = [v4 containerIdentity];
  if (a4)
  {
    v38 = sub_1DF3B0DBC();
  }

  else
  {
    v38 = 0;
  }

  v74 = [v36 isAllowedToPerformOperationType:0 containerIdentity:v37 part:a2 partDomain:v38 access:v35];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (v74 > 2)
  {
    switch(v74)
    {
      case 3:
        v39 = 5;
        break;
      case 4:
        v39 = 12;
        break;
      case 5:
        v39 = 9;
        break;
      default:
        goto LABEL_30;
    }

    goto LABEL_12;
  }

  if (!v74)
  {
    [v4 setReason_];
    goto LABEL_30;
  }

  if (v74 == 1)
  {
    v85 = [objc_msgSend(v4 containerPath)];
    swift_unknownObjectRelease();
    if (v85)
    {
      v86 = [objc_allocWithZone(MCMError) initWithErrorType_];
      sub_1DF2D6D5C();
      swift_allocError();
      *v87 = v86;
      goto LABEL_31;
    }

    v88 = [objc_msgSend(v4 containerConfig)];
    swift_unknownObjectRelease();
    if ((v88 & 1) == 0 || ([v4 isProxiedClient] & 1) == 0 && (a2 || objc_msgSend(v4, sel_type) != 1))
    {
LABEL_30:
      sub_1DF2D6D5C();
      swift_allocError();
      *v84 = 0;
LABEL_31:
      swift_willThrow();
      return;
    }

    v39 = 2;
LABEL_12:
    [v4 setReason_];
    return;
  }

  if (v74 != 2)
  {
    goto LABEL_30;
  }

  [v4 setReason_];
  v75 = [objc_msgSend(v4 containerConfig)];
  swift_unknownObjectRelease();
  if (!v75 || (sub_1DF2D5948(v92), !v6))
  {
    v76 = [objc_msgSend(v4 containerConfig)];
    swift_unknownObjectRelease();
    if (v76)
    {
      sub_1DF2D6DB0();
    }
  }
}

uint64_t sub_1DF2CF904(void *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  if ([v4 isSupported_] && (v8 = objc_msgSend(a1, sel_normalizedContainerClass), v9 = *&v4[OBJC_IVAR___MCMEntitlementLookup_classes], *(v9 + 16)) && (v10 = sub_1DF2CFAD0(v8), (v11 & 1) != 0))
  {
    v12 = *(v9 + 56) + 16 * v10;
    if (*(v12 + 8))
    {
      v13 = 1;
    }

    else
    {
      v15 = *v12;
      if (sub_1DF3B0DCC() == a2 && v16 == a3)
      {
        v23 = v16;
      }

      else
      {
        v24 = v16;
        v25 = sub_1DF3B100C();

        v24, v26, v27, v28, v29, v30, v31, v32;
        if ((v25 & 1) == 0)
        {
          v42[0] = a2;
          v42[1] = a3;
          MEMORY[0x1EEE9AC00](v33);
          v41[2] = v42;
          v13 = sub_1DF2CFBA8(sub_1DF2CFC70, v41, v15);
          v15, v34, v35, v36, v37, v38, v39, v40;
          return v13 & 1;
        }

        v23 = v15;
      }

      v23, v16, v17, v18, v19, v20, v21, v22;
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

unint64_t sub_1DF2CFAD0(uint64_t a1)
{
  sub_1DF3B109C();
  MEMORY[0x1E12D2A50](a1);
  v2 = sub_1DF3B10BC();

  return sub_1DF2CFB3C(a1, v2);
}

unint64_t sub_1DF2CFB3C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1DF2CFBA8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v19[0] = *(v7 - 1);
      v19[1] = v8;

      v9 = a1(v19);
      v8, v10, v11, v12, v13, v14, v15, v16;
      if (v3)
      {
        break;
      }

      v17 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v17) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1DF2CFC8C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF3B100C() & 1;
  }
}

void sub_1DF2D07C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1DF2D11C4(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1DF3B0D0C();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1DF2D1250(uint64_t a1, MCMAnalytics *a2, uint64_t *a3)
{

  v6 = sub_1DF2D14C0(v18, 0, 0, 1, a1, a2);
  v14 = v18[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v18[0] = a1;
    v18[1] = a2;
    v16 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = v6;
  a2, v7, v8, v9, v10, v11, v12, v13;
  ObjectType = swift_getObjectType();
  v18[0] = v15;
  v16 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1DF2D2724(v18, v16);
    *a3 = v16 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v18);
  return v14;
}

void *sub_1DF2D131C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1DF2D144C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1DF3B0FAC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1DF3B0E3C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DF2D144C(v10, 0);
        result = sub_1DF3B0F7C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_1DF2D144C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30B60, &qword_1DF3BE0F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1DF2D14C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1DF2D25E8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1DF3B0FAC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

id __MCMProcessXPCEvent_block_invoke_10(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = container_log_handle_for_category();
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = *(a1 + 56);
    v8 = [*(a1 + 32) codeSignInfo];
    v9 = [v8 identifier];
    v10 = v9;
    v11 = @"<unknown>";
    if (v9)
    {
      v11 = v9;
    }

    v26 = 134349315;
    *v27 = v7;
    *&v27[8] = 2113;
    *&v27[10] = v11;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v5, OS_SIGNPOST_INTERVAL_END, v6, "XPCEventProcessing", " command=%{public, signpost.description:attribute}llu  clientIdentifier=%{private, signpost.description:attribute}@ ", &v26, 0x16u);
  }

  v12 = [v3 error];

  v13 = container_log_handle_for_category();
  v14 = v13;
  if (v12)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v15 = containermanager_copy_global_configuration();
    v16 = [v15 currentUser];
    v17 = [v16 UID];
    v18 = *(a1 + 56);
    v19 = [*(a1 + 32) shortDescription];
    v20 = [v3 error];
    v26 = 67109890;
    *v27 = v17;
    *&v27[4] = 2048;
    *&v27[6] = v18;
    *&v27[14] = 2112;
    *&v27[16] = v19;
    v28 = 2112;
    v29 = v20;
    _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "[%u] command=%llu, client=%@, error=%@", &v26, 0x26u);
  }

  else
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_10;
    }

    v15 = containermanager_copy_global_configuration();
    v16 = [v15 currentUser];
    v24 = [v16 UID];
    v25 = *(a1 + 56);
    v19 = [*(a1 + 32) shortDescription];
    v26 = 67109634;
    *v27 = v24;
    *&v27[4] = 2048;
    *&v27[6] = v25;
    *&v27[14] = 2112;
    *&v27[16] = v19;
    _os_log_debug_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_DEBUG, "[%u] command=%llu, client=%@, error=(null)", &v26, 0x1Cu);
  }

LABEL_10:
  v21 = *(*(a1 + 40) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = 0;

  return v3;
}

void *sub_1DF2D25E8(uint64_t a1, unint64_t a2)
{
  v3 = sub_1DF2D131C(a1, a2);
  sub_1DF2D2638(&unk_1F5A59CF0);
  return v3;
}

void sub_1DF2D2638(MCMAnalytics *result)
{
  v2 = *result->db;
  v3 = *v1;
  v4 = *(*v1)->db;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= (v3[1].super.isa >> 1))
  {
    if (*result->db)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v26 = v4 + v2;
  }

  else
  {
    v26 = v4;
  }

  v3 = sub_1DF2D6AF0(isUniquelyReferenced_nonNull_native, v26, 1, v3, v11, v12, v13, v14);
  if (!*result->db)
  {
LABEL_13:
    result, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v15 = *v3->db;
  if (((v3[1].super.isa >> 1) - v15) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[1].queue + v15, &result[1].queue, v2);
  result, v16, v17, v18, v19, v20, v21, v22;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v23 = *v3->db;
  v24 = __OFADD__(v23, v2);
  v25 = v23 + v2;
  if (!v24)
  {
    *v3->db = v25;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1DF2D2724(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_1DF2D27CC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void ___containermanagerd_perform_launch_tasks_block_invoke()
{

  _containermanagerd_keybagd_notification_callback();
}

void _containermanagerd_keybagd_notification_callback()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = MKBGetDeviceLockState();
  v1 = MCMLockStateQueue();
  v2 = container_log_handle_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3[0] = 67109120;
    v3[1] = v0;
    _os_log_debug_impl(&dword_1DF2C3000, v2, OS_LOG_TYPE_DEBUG, "LockState=%d", v3, 8u);
  }

  if (v0 == 1)
  {
    if (_containermanagerd_keybagd_notification_callback_previousState != 1)
    {
      dispatch_suspend(v1);
    }

    goto LABEL_9;
  }

  if (!v0)
  {
    if (_containermanagerd_keybagd_notification_callback_previousState == 1)
    {
      dispatch_resume(v1);
    }

LABEL_9:
    _containermanagerd_keybagd_notification_callback_previousState = v0;
  }
}

id MCMLockStateQueue()
{
  if (MCMLockStateQueue_onceToken != -1)
  {
    dispatch_once(&MCMLockStateQueue_onceToken, &__block_literal_global_15);
  }

  v0 = MCMLockStateQueue_lockStateQueue;

  return v0;
}

uint64_t sub_1DF2D54D4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1DF2D5568()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DF2D55E8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;
  v8[7], v16, v17, v18, v19, v20, v21, v22;
  v8[11], v23, v24, v25, v26, v27, v28, v29;

  return MEMORY[0x1EEE6BDD0](v8, 120, 7);
}

void *sub_1DF2D5640@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id sub_1DF2D5778(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  v3 = swift_unknownObjectRetain();

  return v3;
}

uint64_t sub_1DF2D57DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  *(a1 + v6) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1DF2D5850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1DF3B109C();
  sub_1DF3B0E0C();
  v6 = sub_1DF3B10BC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1DF3B100C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1DF2D5948(void *a1)
{
  v177 = a1;
  v187[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30A70, &qword_1DF3BD408);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v178 = &v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v179 = &v175 - v5;
  v6 = sub_1DF3B0CEC();
  v180 = *(v6 - 8);
  v181 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DF3B0D0C();
  v182 = *(v9 - 8);
  v183 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v175 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v175 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v175 - v16;
  v184 = 0;
  v18 = [v1 fhSandbox];
  v186[0] = 0;
  v19 = [v18 openWithError_];
  swift_unknownObjectRelease();
  if (!v19)
  {
    v66 = v186[0];
    v67 = sub_1DF3B0C9C();

    swift_willThrow();
    v186[0] = v67;
    v68 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30A50, &qword_1DF3BD400);
    sub_1DF2D7818(0, &qword_1ECE30A78, 0x1E696ABC0);
    if (swift_dynamicCast())
    {

      v69 = v185;
      v70 = sub_1DF2D25C4();
      v72 = v182;
      v71 = v183;
      (*(v182 + 16))(v15, v70, v183);
      v73 = v1;
      v74 = v69;
      v75 = sub_1DF3B0CFC();
      v76 = sub_1DF3B0EAC();

      LODWORD(v178) = v76;
      v77 = os_log_type_enabled(v75, v76);
      v78 = &selRef__consolidateSystemDaemonMigrationStatusWithLibraryURL_;
      v79 = &selRef__consolidateSystemDaemonMigrationStatusWithLibraryURL_;
      if (v77)
      {
        v80 = swift_slowAlloc();
        v176 = swift_slowAlloc();
        v177 = swift_slowAlloc();
        v187[0] = v177;
        *v80 = 136315906;
        v81 = [v73 clientIdentifier];
        v82 = sub_1DF3B0DCC();
        v175 = v75;
        v83 = v82;
        v85 = v84;

        v86 = sub_1DF2D1250(v83, v85, v187);
        v85, v87, v88, v89, v90, v91, v92, v93;
        *(v80 + 4) = v86;
        *(v80 + 12) = 2080;
        v94 = [v73 identifier];
        v95 = sub_1DF3B0DCC();
        v97 = v96;

        v98 = sub_1DF2D1250(v95, v97, v187);
        v97, v99, v100, v101, v102, v103, v104, v105;
        *(v80 + 14) = v98;
        *(v80 + 22) = 2080;
        v106 = [objc_msgSend(v73 containerPath)];
        swift_unknownObjectRelease();
        sub_1DF3B0CCC();

        v107 = sub_1DF3B0CDC();
        v109 = v108;
        v111 = v180;
        v110 = v181;
        (*(v180 + 8))(v8, v181);
        v112 = sub_1DF2D1250(v107, v109, v187);
        v109, v113, v114, v115, v116, v117, v118, v119;
        *(v80 + 24) = v112;
        v79 = &selRef__consolidateSystemDaemonMigrationStatusWithLibraryURL_;
        *(v80 + 32) = 2112;
        *(v80 + 34) = v74;
        v120 = v176;
        *v176 = v74;
        v121 = v74;
        v122 = v175;
        _os_log_impl(&dword_1DF2C3000, v175, v178, "[%s] requesting [%s]: Failed to open [%s] during app group non-TCC policy protection check: %@", v80, 0x2Au);
        sub_1DF2D7604(v120);
        MEMORY[0x1E12D4520](v120, -1, -1);
        v123 = v177;
        swift_arrayDestroy();
        MEMORY[0x1E12D4520](v123, -1, -1);
        v124 = v80;
        v78 = &selRef__consolidateSystemDaemonMigrationStatusWithLibraryURL_;
        MEMORY[0x1E12D4520](v124, -1, -1);

        (*(v182 + 8))(v15, v183);
      }

      else
      {

        (*(v72 + 8))(v15, v71);
        v111 = v180;
        v110 = v181;
      }

      [v73 setReason_];
      v167 = v74;
      v168 = [objc_msgSend(v73 v78[410])];
      swift_unknownObjectRelease();
      v169 = v179;
      goto LABEL_25;
    }

LABEL_28:

    return;
  }

  v20 = v186[0];
  v21 = [v1 fhSandbox];
  v186[0] = 0;
  v22 = [v21 checkAppContainerProtection:&v184 error:v186];
  swift_unknownObjectRelease();
  if (!v22)
  {
    v125 = v186[0];
    v126 = sub_1DF3B0C9C();

    swift_willThrow();
    v186[0] = v126;
    v127 = v126;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30A50, &qword_1DF3BD400);
    sub_1DF2D7818(0, &qword_1ECE30A78, 0x1E696ABC0);
    if (swift_dynamicCast())
    {

      v128 = v185;
      v129 = sub_1DF2D25C4();
      v131 = v182;
      v130 = v183;
      (*(v182 + 16))(v12, v129, v183);
      v132 = v1;
      v133 = v128;
      v134 = sub_1DF3B0CFC();
      v135 = sub_1DF3B0EAC();

      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        v177 = swift_slowAlloc();
        v179 = swift_slowAlloc();
        v187[0] = v179;
        *v136 = 136315650;
        v137 = [v132 clientIdentifier];
        LODWORD(v176) = v135;
        v138 = v137;
        v139 = sub_1DF3B0DCC();
        v141 = v140;

        v142 = sub_1DF2D1250(v139, v141, v187);
        v141, v143, v144, v145, v146, v147, v148, v149;
        *(v136 + 4) = v142;
        *(v136 + 12) = 2080;
        v150 = [v132 identifier];
        v151 = sub_1DF3B0DCC();
        v153 = v152;

        v154 = sub_1DF2D1250(v151, v153, v187);
        v153, v155, v156, v157, v158, v159, v160, v161;
        *(v136 + 14) = v154;
        *(v136 + 22) = 2112;
        *(v136 + 24) = v133;
        v162 = v177;
        *v177 = v133;
        v163 = v133;
        _os_log_impl(&dword_1DF2C3000, v134, v176, "[%s] requesting [%s]: Failed to check app group container non-TCC policy protection; error = %@", v136, 0x20u);
        sub_1DF2D7604(v162);
        MEMORY[0x1E12D4520](v162, -1, -1);
        v164 = v179;
        swift_arrayDestroy();
        MEMORY[0x1E12D4520](v164, -1, -1);
        MEMORY[0x1E12D4520](v136, -1, -1);

        (*(v131 + 8))(v12, v183);
      }

      else
      {

        (*(v131 + 8))(v12, v130);
      }

      v111 = v180;
      v110 = v181;
      [v132 setReason_];
      v167 = v133;
      v168 = [objc_msgSend(v132 containerPath)];
      swift_unknownObjectRelease();
      v169 = v178;
LABEL_25:
      sub_1DF3B0CCC();

      (*(v111 + 56))(v169, 0, 1, v110);
      v170 = sub_1DF3B0C8C();

      v171 = 0;
      if ((*(v111 + 48))(v169, 1, v110) != 1)
      {
        v171 = sub_1DF3B0CAC();
        (*(v111 + 8))(v169, v110);
      }

      v172 = [objc_allocWithZone(MCMError) initWithNSError:v170 url:v171 defaultErrorType:144];

      sub_1DF2D6D5C();
      swift_allocError();
      *v173 = v172;
      swift_willThrow();

      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v23 = v186[0];
  v24 = sub_1DF2D25C4();
  v26 = v182;
  v25 = v183;
  (*(v182 + 16))(v17, v24, v183);
  v27 = v1;
  v28 = sub_1DF3B0CFC();
  v29 = sub_1DF3B0EBC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    v186[0] = v181;
    *v30 = 136315650;
    v31 = [v27 clientIdentifier];
    v32 = sub_1DF3B0DCC();
    v34 = v33;

    v35 = sub_1DF2D1250(v32, v34, v186);
    v34, v36, v37, v38, v39, v40, v41, v42;
    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    v43 = [v27 identifier];
    v44 = sub_1DF3B0DCC();
    v46 = v45;

    v47 = sub_1DF2D1250(v44, v46, v186);
    v46, v48, v49, v50, v51, v52, v53, v54;
    *(v30 + 14) = v47;
    *(v30 + 22) = 2080;
    swift_beginAccess();
    if (v184)
    {
      v55 = 0;
    }

    else
    {
      v55 = 544501614;
    }

    if (v184)
    {
      v56 = 0xE000000000000000;
    }

    else
    {
      v56 = 0xE400000000000000;
    }

    v57 = sub_1DF2D1250(v55, v56, v186);
    v56, v58, v59, v60, v61, v62, v63, v64;
    *(v30 + 24) = v57;
    _os_log_impl(&dword_1DF2C3000, v28, v29, "[%s] requesting [%s]: App group container is %sprotected with a non-TCC policy", v30, 0x20u);
    v65 = v181;
    swift_arrayDestroy();
    MEMORY[0x1E12D4520](v65, -1, -1);
    MEMORY[0x1E12D4520](v30, -1, -1);

    (*(v182 + 8))(v17, v183);
  }

  else
  {

    (*(v26 + 8))(v17, v25);
  }

  swift_beginAccess();
  if (v184 == 1)
  {
    v165 = [v27 identifier];
    v166 = [v177 isOwnerOfProtectedAppGroupContainerWithIdentifier_];

    if (v166)
    {
      [v27 setReason_];
    }

    else
    {
      [v27 setReason_];
      sub_1DF2D6D5C();
      swift_allocError();
      *v174 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_1DF2D6660()
{
  v1 = v0;
  v2 = sub_1DF3B0D0C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 clientTeamIdentifier];
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = sub_1DF3B0DCC();
  v10 = v9;

  v11 = [objc_msgSend(v1 containerConfig)];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30A88, &qword_1DF3BD418);
  v12 = sub_1DF3B0DAC();

  if (!*v12->db)
  {
    v10, v13, v14, v15, v16, v17, v18, v19;
    goto LABEL_8;
  }

  v20 = sub_1DF2D6BE4(v8, v10);
  v22 = v21;
  v10, v21, v23, v24, v25, v26, v27, v28;
  if ((v22 & 1) == 0)
  {
LABEL_8:
    v12, v29, v30, v31, v32, v33, v34, v35;
    return 0;
  }

  v36 = *(v12[2].queue + v20);

  v12, v37, v38, v39, v40, v41, v42, v43;
  v44 = [v1 identifier];
  sub_1DF3B0DCC();
  v46 = v45;

  v47 = sub_1DF3B0DEC();
  v49 = v48;
  v46, v48, v50, v51, v52, v53, v54, v55;
  LOBYTE(v47) = sub_1DF2D5850(v47, v49, v36);
  v49, v56, v57, v58, v59, v60, v61, v62;
  v36, v63, v64, v65, v66, v67, v68, v69;
  if ((v47 & 1) == 0)
  {
    return 0;
  }

  v70 = sub_1DF2D25C4();
  (*(v3 + 16))(v5, v70, v2);
  v71 = v1;
  v72 = sub_1DF3B0CFC();
  v73 = sub_1DF3B0EBC();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v102 = v75;
    *v74 = 136446466;
    v76 = [v71 clientIdentifier];
    v101 = v3;
    v77 = v76;
    v78 = sub_1DF3B0DCC();
    v80 = v79;

    v81 = sub_1DF2D1250(v78, v80, &v102);
    v80, v82, v83, v84, v85, v86, v87, v88;
    *(v74 + 4) = v81;
    *(v74 + 12) = 2082;
    v89 = [v71 identifier];
    v90 = sub_1DF3B0DCC();
    v92 = v91;

    v93 = sub_1DF2D1250(v90, v92, &v102);
    v92, v94, v95, v96, v97, v98, v99, v100;
    *(v74 + 14) = v93;
    _os_log_impl(&dword_1DF2C3000, v72, v73, "[%{public}s] requesting [%{public}s]: DEVELOPER ACTION REQUIRED. Requestor's signature is given temporary compatibility affordance to access a TCC-protected group container. Group containers identifiers should be authorized by a provisioning profile.", v74, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D4520](v75, -1, -1);
    MEMORY[0x1E12D4520](v74, -1, -1);

    (*(v101 + 8))(v5, v2);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return 1;
}

id MCMSandboxExtension.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

MCMAnalytics *sub_1DF2D6AF0(MCMAnalytics *result, int64_t a2, void *a3, MCMAnalytics *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    isa = a4[1].super.isa;
    v11 = isa >> 1;
    if ((isa >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = isa & 0xFFFFFFFFFFFFFFFELL;
      if ((isa & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->db;
  if (v11 <= v12)
  {
    v13 = *a4->db;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30B60, &qword_1DF3BE0F0);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *v14->db = v12;
    v14[1].super.isa = (2 * v15 - 64);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  p_queue = &v14[1].queue;
  v17 = &a4[1].queue;
  if (v9)
  {
    if (v14 != a4 || p_queue >= &v17[v12])
    {
      memmove(p_queue, v17, v12);
    }

    *a4->db = 0;
  }

  else
  {
    memcpy(p_queue, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

unint64_t sub_1DF2D6BE4(uint64_t a1, uint64_t a2)
{
  sub_1DF3B109C();
  sub_1DF3B0E0C();
  v4 = sub_1DF3B10BC();

  return sub_1DF2D6C5C(a1, a2, v4);
}

unint64_t sub_1DF2D6C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1DF3B100C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1DF2D6D5C()
{
  result = qword_1ECE30A58;
  if (!qword_1ECE30A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE30A58);
  }

  return result;
}

id sub_1DF2D6DB0()
{
  v2 = sub_1DF3B0D0C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v117[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v117[-v8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v117[-v10];
  if (sub_1DF2D6660())
  {
    return [v0 setReason_];
  }

  v120 = v1;
  v121 = v2;
  v13 = [v0 identifier];
  v14 = [v13 stringByExtractingTeamIDPrefix];

  if (v14 || (v15 = [objc_msgSend(v0 containerConfig)], swift_unknownObjectRelease(), v15))
  {
    v16 = [objc_msgSend(v0 amfi)];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    [v0 setReason_];
    v17 = [v0 reason];
    v18 = sub_1DF2D25C4();
    v19 = v3;
    v20 = *(v3 + 16);
    if (v17 <= 1)
    {
      v52 = v121;
      v20(v11, v18, v121);
      v53 = v0;
      v54 = sub_1DF3B0CFC();
      v55 = sub_1DF3B0EBC();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v122 = v120;
        *v56 = 136446466;
        v57 = [v53 clientIdentifier];
        v58 = sub_1DF3B0DCC();
        v60 = v59;

        v61 = sub_1DF2D1250(v58, v60, &v122);
        v60, v62, v63, v64, v65, v66, v67, v68;
        *(v56 + 4) = v61;
        *(v56 + 12) = 2082;
        v69 = [v53 identifier];
        v70 = sub_1DF3B0DCC();
        v72 = v71;

        v73 = sub_1DF2D1250(v70, v72, &v122);
        v72, v74, v75, v76, v77, v78, v79, v80;
        *(v56 + 14) = v73;
        _os_log_impl(&dword_1DF2C3000, v54, v55, "[%{public}s] requesting [%{public}s]: REJECTED. Requestor's signature does not allow it to access a TCC-protected group container. Group containers identifiers should be prefixed by requestor's team ID to allow access on this platform.", v56, 0x16u);
        v81 = v120;
        swift_arrayDestroy();
        MEMORY[0x1E12D4520](v81, -1, -1);
        MEMORY[0x1E12D4520](v56, -1, -1);

        (*(v3 + 8))(v11, v121);
      }

      else
      {

        (*(v3 + 8))(v11, v52);
      }

      sub_1DF2D6D5C();
      swift_allocError();
      *v82 = 0;
      return swift_willThrow();
    }

    else
    {
      v21 = v121;
      v20(v9, v18, v121);
      v22 = v0;
      v23 = sub_1DF3B0CFC();
      v24 = sub_1DF3B0EBC();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v118 = v24;
        v26 = v25;
        v119 = swift_slowAlloc();
        v122 = v119;
        *v26 = 136446466;
        v27 = [v22 clientIdentifier];
        v28 = sub_1DF3B0DCC();
        v30 = v29;

        v31 = sub_1DF2D1250(v28, v30, &v122);
        v30, v32, v33, v34, v35, v36, v37, v38;
        *(v26 + 4) = v31;
        *(v26 + 12) = 2082;
        v39 = [v22 identifier];
        v40 = sub_1DF3B0DCC();
        v42 = v41;

        v43 = sub_1DF2D1250(v40, v42, &v122);
        v42, v44, v45, v46, v47, v48, v49, v50;
        *(v26 + 14) = v43;
        _os_log_impl(&dword_1DF2C3000, v23, v118, "[%{public}s] requesting [%{public}s]: APPROVED. Requestor's signature allows it to access a TCC-protected group container", v26, 0x16u);
        v51 = v119;
        swift_arrayDestroy();
        MEMORY[0x1E12D4520](v51, -1, -1);
        MEMORY[0x1E12D4520](v26, -1, -1);
      }

      return (*(v19 + 8))(v9, v21);
    }
  }

  else
  {
    v83 = sub_1DF2D25C4();
    v84 = v3;
    v85 = *(v3 + 16);
    v86 = v121;
    v85(v6, v83, v121);
    v87 = v0;
    v88 = sub_1DF3B0CFC();
    v89 = sub_1DF3B0EBC();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v118 = v89;
      v91 = v90;
      v119 = swift_slowAlloc();
      v122 = v119;
      *v91 = 136446466;
      v92 = [v87 clientIdentifier];
      v93 = sub_1DF3B0DCC();
      v95 = v94;

      v96 = sub_1DF2D1250(v93, v95, &v122);
      v95, v97, v98, v99, v100, v101, v102, v103;
      *(v91 + 4) = v96;
      *(v91 + 12) = 2082;
      v104 = [v87 identifier];
      v105 = sub_1DF3B0DCC();
      v107 = v106;

      v108 = sub_1DF2D1250(v105, v107, &v122);
      v107, v109, v110, v111, v112, v113, v114, v115;
      *(v91 + 14) = v108;
      _os_log_impl(&dword_1DF2C3000, v88, v118, "[%{public}s] requesting [%{public}s]: The container IS NOT PROTECTED since it isn't prefixed by team ID. Group containers identifiers must be prefixed by requestor's team ID on this platform for container security to be enforced.", v91, 0x16u);
      v116 = v119;
      swift_arrayDestroy();
      MEMORY[0x1E12D4520](v116, -1, -1);
      MEMORY[0x1E12D4520](v91, -1, -1);
    }

    (*(v84 + 8))(v6, v86);
    return [v87 setReason_];
  }
}

unint64_t sub_1DF2D7558()
{
  result = qword_1ECE30A60;
  if (!qword_1ECE30A60)
  {
    type metadata accessor for MCMSandboxExtensionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE30A60);
  }

  return result;
}

unint64_t sub_1DF2D75B0()
{
  result = qword_1EE172D28;
  if (!qword_1EE172D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE172D28);
  }

  return result;
}

uint64_t sub_1DF2D7604(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30A80, &qword_1DF3BD410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF2D7678(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF2D76C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1DF2D771C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1DF2D7738(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1DF2D7768(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF2D77B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DF2D7818(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1DF2D7870()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30BD0, &qword_1DF3BD620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF3BD610;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x80000001DF3BECB0;
  *(inited + 48) = sub_1DF3B0F0C();
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x80000001DF3BE890;
  *(inited + 72) = sub_1DF3B0DBC();
  *(inited + 80) = 0x65644970756F7267;
  *(inited + 88) = 0xEF7265696669746ELL;
  *(inited + 96) = sub_1DF3B0DBC();
  strcpy((inited + 104), "teamIdentifier");
  *(inited + 119) = -18;
  if (*(v0 + 48))
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  v3 = sub_1DF3B0DBC();
  v2, v4, v5, v6, v7, v8, v9, v10;
  *(inited + 120) = v3;
  *(inited + 128) = 0x6C7469746E457369;
  *(inited + 136) = 0xEA00000000006465;
  *(inited + 144) = sub_1DF3B0E4C();
  v11 = sub_1DF2D7B58(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30BD8, qword_1DF3BD628);
  swift_arrayDestroy();
  return v11;
}

uint64_t sub_1DF2D7A20()
{
  sub_1DF3B0F9C();
  0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
  MEMORY[0x1E12D27C0](v0[1], v0[2]);
  MEMORY[0x1E12D27C0](58, 0xE100000000000000);
  if (v0[6])
  {
    v8 = v0[5];
    v9 = v0[6];
  }

  else
  {
    v9 = 0xE600000000000000;
    v8 = 0x3E656E6F6E3CLL;
  }

  MEMORY[0x1E12D27C0](v8, v9);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1E12D27C0](0x5B203E3D205DLL, 0xE600000000000000);
  MEMORY[0x1E12D27C0](v0[3], v0[4]);
  MEMORY[0x1E12D27C0](2112093, 0xE300000000000000);
  v17 = sub_1DF2E23A0();
  v19 = v18;
  MEMORY[0x1E12D27C0](v17);
  v19, v20, v21, v22, v23, v24, v25, v26;
  return 91;
}

unint64_t sub_1DF2D7B58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30BF0, "Ȫ");
    v3 = sub_1DF3B0FEC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1DF2D6BE4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF2D7C5C(uint64_t a1)
{
  result = sub_1DF2D7C84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DF2D7C84()
{
  result = qword_1ECE30BE0;
  if (!qword_1ECE30BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE30BE0);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DF2D7CF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF2D7D3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for MCMAnalyticsAppGroupAuthResult()
{
  if (!qword_1ECE30BE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECE30BE8);
    }
  }
}

uint64_t _s8SettingsVwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t _s8SettingsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

id sub_1DF2D7EC4(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC22ContainerManagerCommon18MCMResultAuthorize_authResult] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1DF2D7F38(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithError_];

  return v3;
}

id sub_1DF2D8094()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MCMResultAuthorize();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata accessor for container_authorize_result_t()
{
  if (!qword_1ECE30C00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECE30C00);
    }
  }
}

uint64_t sub_1DF2D8118(uint64_t a1, MCMAnalytics *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1 == 0x6C6E6F2D68746170 && a2 == 0xE900000000000079;
  if (v10 || (sub_1DF3B100C() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x6C6E6F2D64616572 && a2 == 0xE900000000000079 || (sub_1DF3B100C() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x6972772D64616572 && a2 == 0xEA00000000006574)
  {
    0xEA00000000006574, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = sub_1DF3B100C();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

void type metadata accessor for MCMAccessType()
{
  if (!qword_1ECE30FA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECE30FA0);
    }
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MCMAccessType(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    if (v2 == 2)
    {
      return 0x6972772D64616572;
    }

    if (v2 != 1)
    {
      result = sub_1DF3B101C();
      __break(1u);
      return result;
    }

    v4 = 1684104562;
  }

  else
  {
    v4 = 1752457584;
  }

  return v4 | 0x6C6E6F2D00000000;
}

BOOL sub_1DF2D834C(unint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    return 1;
  }

  if (a2 == 2)
  {
    return a1 < 2;
  }

  return a2 == 1 && !a1;
}

unint64_t sub_1DF2D8388()
{
  result = qword_1ECE30C08;
  if (!qword_1ECE30C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE30C10, &qword_1DF3BD7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE30C08);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id sub_1DF2D866C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {

    v6 = sub_1DF3B0E5C();
    v5, v7, v8, v9, v10, v11, v12, v13;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1DF2D8704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v6 = sub_1DF3B0E6C();
  }

  else
  {
    v6 = 0;
  }

  v7 = *a4;
  swift_beginAccess();
  v8 = *(a1 + v7);
  *(a1 + v7) = v6;
  v8, v9, v10, v11, v12, v13, v14, v15;
}

id sub_1DF2D883C(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___MCMCommandAuthorize____lazy_storage___amfi;
  if (*&v2[OBJC_IVAR___MCMCommandAuthorize____lazy_storage___amfi])
  {
    v4 = *&v2[OBJC_IVAR___MCMCommandAuthorize____lazy_storage___amfi];
  }

  else
  {
    [v2 auditToken];
    v8 = v11;
    v9 = v10;
    v5 = objc_allocWithZone(MCMAMFI);
    v10 = v9;
    v11 = v8;
    v6 = [v5 initWithAuditToken_];
    *&v2[v3] = v6;
    v4 = v6;
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v4;
}

_BYTE *sub_1DF2D8910(uint64_t a1, id a2, uint64_t a3)
{
  v6 = OBJC_IVAR___MCMCommandAuthorize_identifiers;
  *&v3[OBJC_IVAR___MCMCommandAuthorize_identifiers] = 0;
  v7 = OBJC_IVAR___MCMCommandAuthorize_groupIdentifiers;
  *&v3[OBJC_IVAR___MCMCommandAuthorize_groupIdentifiers] = 0;
  v8 = OBJC_IVAR___MCMCommandAuthorize_userIdentity;
  *&v3[OBJC_IVAR___MCMCommandAuthorize_userIdentity] = 0;
  *&v3[OBJC_IVAR___MCMCommandAuthorize____lazy_storage___amfi] = 0;
  v9 = OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements;
  *&v3[OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements] = 0;
  v10 = &v3[OBJC_IVAR___MCMCommandAuthorize_targetPlatform];
  *v10 = 0;
  v10[4] = 1;
  v11 = [objc_msgSend(a2 globalConfiguration)];
  swift_unknownObjectRelease();
  result = [v11 configForContainerClass_];
  if (result)
  {
    v13 = result;
    swift_unknownObjectRelease();
    *&v3[OBJC_IVAR___MCMCommandAuthorize_containerConfig] = v13;
    v14 = &v3[OBJC_IVAR___MCMCommandAuthorize_auditToken];
    *v14 = 0u;
    v14[1] = 0u;
    v3[OBJC_IVAR___MCMCommandAuthorize_onBehalfOfSelf] = 1;
    swift_beginAccess();
    v15 = *&v3[v6];
    *&v3[v6] = 0;
    v15, v16, v17, v18, v19, v20, v21, v22;
    swift_beginAccess();
    v23 = *&v3[v7];
    *&v3[v7] = 0;
    v23, v24, v25, v26, v27, v28, v29, v30;
    swift_beginAccess();
    v31 = *&v3[v8];
    *&v3[v8] = 0;

    v32 = &v3[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier];
    *v32 = 0x3E656E6F6E3CLL;
    v32[1] = 0xE600000000000000;
    *&v3[v9] = 0;
    swift_unknownObjectRelease();
    v33 = [objc_allocWithZone(MCMClientCodeSignInfo) init];
    *&v3[OBJC_IVAR___MCMCommandAuthorize_targetClientCodeSignInfo] = v33;
    v103.receiver = v3;
    v103.super_class = MCMCommandAuthorize;
    v34 = objc_msgSendSuper2(&v103, sel_initWithMessage_context_reply_, a1, a2, a3);
    type metadata accessor for MCMXPCMessageAuthorize();
    v35 = swift_dynamicCastClass();
    if (v35)
    {
      v36 = v35;
      swift_unknownObjectRetain();
      v37 = [v36 containerConfig];
      v38 = OBJC_IVAR___MCMCommandAuthorize_containerConfig;
      swift_beginAccess();
      *&v34[v38] = v37;
      swift_unknownObjectRelease();
      swift_unknownObjectRetain();
      v39 = [v36 identifiers];
      if (v39)
      {
        v40 = v39;
        v41 = sub_1DF3B0E6C();
      }

      else
      {
        v41 = 0;
      }

      v42 = OBJC_IVAR___MCMCommandAuthorize_identifiers;
      swift_beginAccess();
      v43 = *&v34[v42];
      *&v34[v42] = v41;
      v43, v44, v45, v46, v47, v48, v49, v50;
      v51 = [v36 groupIdentifiers];
      if (v51)
      {
        v52 = v51;
        v53 = sub_1DF3B0E6C();
      }

      else
      {
        v53 = 0;
      }

      v54 = OBJC_IVAR___MCMCommandAuthorize_groupIdentifiers;
      swift_beginAccess();
      v55 = *&v34[v54];
      *&v34[v54] = v53;
      v55, v56, v57, v58, v59, v60, v61, v62;
      v63 = MEMORY[0x1E69E7D40];
      v64 = (*((*MEMORY[0x1E69E7D40] & *v36) + 0x68))();
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v71 = &v34[OBJC_IVAR___MCMCommandAuthorize_auditToken];
      swift_beginAccess();
      *v71 = v64;
      v71[1] = v66;
      v71[2] = v68;
      v71[3] = v70;
      v72 = [v36 userIdentity];
      swift_unknownObjectRelease();
      v73 = OBJC_IVAR___MCMCommandAuthorize_userIdentity;
      swift_beginAccess();
      v74 = *&v34[v73];
      *&v34[v73] = v72;

      v75 = (*((*v63 & *v36) + 0x98))();
      v76 = OBJC_IVAR___MCMCommandAuthorize_onBehalfOfSelf;
      swift_beginAccess();
      v34[v76] = v75 & 1;
      if (v75)
      {
        v77 = [v34 context];
        v78 = [v77 clientIdentity];

        v79 = [v78 codeSignInfo];
        *&v34[OBJC_IVAR___MCMCommandAuthorize_targetClientCodeSignInfo] = v79;
        swift_unknownObjectRelease();
        LODWORD(v77) = [v78 platform];

        v80 = &v34[OBJC_IVAR___MCMCommandAuthorize_targetPlatform];
        *v80 = v77;
        v80[4] = 0;
      }

      else
      {
        v81 = container_client_create_from_audit_token();
        v82 = [a2 clientFactory];
        if (v82)
        {
          if (v81 && (v83 = [v82 clientIdentityWithClient:v81 proximateClient:0 error:0]) != 0)
          {
            v84 = v83;
            v85 = [v83 codeSignInfo];
            *&v34[OBJC_IVAR___MCMCommandAuthorize_targetClientCodeSignInfo] = v85;
            swift_unknownObjectRelease();
            v86 = [v84 platform];
            swift_unknownObjectRelease();

            v87 = &v34[OBJC_IVAR___MCMCommandAuthorize_targetPlatform];
            *v87 = v86;
            v87[4] = 0;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        container_free_client();
      }

      v88 = [*&v34[OBJC_IVAR___MCMCommandAuthorize_targetClientCodeSignInfo] identifier];
      v89 = sub_1DF3B0DCC();
      v91 = v90;

      v92 = &v34[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier];
      v93 = *&v34[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier + 8];
      *v92 = v89;
      v92[1] = v91;
      v93, v94, v95, v96, v97, v98, v99, v100;
      v101 = [swift_unknownObjectRetain() entitlements];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
      *&v34[OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements] = v101;
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return v34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DF2D915C()
{
  v1 = v0;
  if (*&v0[OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements])
  {
    sub_1DF2D9328();
    if (v2)
    {
      v3 = v2;
      type metadata accessor for MCMResultAuthorize();
      v4 = sub_1DF2D7EC4(v3);
    }

    else
    {
      v9 = [objc_allocWithZone(MCMError) initWithErrorType:40 category:3];
      v10 = [objc_allocWithZone(MCMResultBase) initWithError_];

      if (!v10)
      {
        return;
      }

      v4 = v10;
    }

    v6 = v4;
    v11 = [v1 resultPromise];
    if (!v11)
    {
      v13 = v6;
      goto LABEL_12;
    }

    v12 = v11;
    v6 = v6;
    [v12 completeWithResult_];
    v13 = v6;
    goto LABEL_10;
  }

  v5 = [objc_allocWithZone(MCMError) initWithErrorType:80 category:3];
  type metadata accessor for MCMResultAuthorize();
  v13 = v5;
  v6 = sub_1DF2D7F38(v13);
  v7 = [v1 resultPromise];
  if (v7)
  {
    v8 = v7;
    v6 = v6;
    [v8 completeWithResult_];
LABEL_10:
    swift_unknownObjectRelease();
  }

LABEL_12:
}

void sub_1DF2D9328()
{
  v1 = [objc_msgSend(v0 containerConfig)];
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = sub_1DF2D9A4C();
  }

  else
  {
    sub_1DF2D9C88();
  }

  if (v2 != 300)
  {
    sub_1DF2D97F8();
    sub_1DF2D9404();
  }
}

void sub_1DF2D9404()
{
  v1 = v0;
  v2 = [v0 containerConfig];
  v3 = *&v0[OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements];
  if (v3)
  {
    if ([swift_unknownObjectRetain() isAllowedToPerformOperationType:0 forAllContainersOfContainerConfig:v2 part:0 partDomain:0 access:2])
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v4 = [v1 groupIdentifiers];
      if (v4)
      {
        v5 = v4;
        v6 = sub_1DF3B0E6C();
      }

      else
      {
        v6 = 0;
      }

      if ([v2 singleOwner])
      {
        v6, v7, v8, v9, v10, v11, v12, v13;
        v14 = [v1 identifiers];
        if (v14)
        {
          v15 = v14;
          v6 = sub_1DF3B0E6C();
        }

        else
        {
          v6 = 0;
        }
      }

      v52 = [v1 userIdentity];
      if (v52)
      {
        if (v6)
        {
          v50 = v2;
          v16 = 0;
          v17 = v6 + 56;
          v18 = 1;
          v19 = 1 << *(v6 + 32);
          v20 = -1;
          if (v19 < 64)
          {
            v20 = ~(-1 << v19);
          }

          v21 = v20 & *(v6 + 56);
          v22 = &v1[OBJC_IVAR___MCMCommandAuthorize_targetPlatform];
          v23 = (v19 + 63) >> 6;
          v48 = v1;
          v49 = v6;
          v47 = &v1[OBJC_IVAR___MCMCommandAuthorize_targetPlatform];
          if (v21)
          {
            while (1)
            {
              v51 = v18;
              v24 = v16;
LABEL_22:
              v25 = *(*(v6 + 48) + ((v24 << 10) | (16 * __clz(__rbit64(v21)))) + 8);
              if (v22[4])
              {

                active_platform = dyld_get_active_platform();
              }

              else
              {
                active_platform = *v22;
              }

              v27 = [v1 context];
              v28 = [v27 userIdentityCache];

              swift_unknownObjectRetain();
              v29 = v52;
              v30 = sub_1DF3B0DBC();
              v25, v31, v32, v33, v34, v35, v36, v37;
              v38 = [objc_opt_self() containerIdentityWithUserIdentity:v29 identifier:v30 containerConfig:v50 platform:active_platform transient:0 userIdentityCache:v28 error:0];

              swift_unknownObjectRelease();
              if (!v38)
              {
                break;
              }

              v21 &= v21 - 1;
              v39 = [v3 isAllowedToPerformOperationType:0 containerIdentity:v38 part:0 partDomain:0 access:2];

              v18 = v51 & (v39 != 0);
              v16 = v24;
              v1 = v48;
              v6 = v49;
              v22 = v47;
              if (!v21)
              {
                goto LABEL_18;
              }
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          else
          {
LABEL_18:
            while (1)
            {
              v24 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                break;
              }

              if (v24 >= v23)
              {

                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                return;
              }

              v21 = *(v17 + 8 * v24);
              ++v16;
              if (v21)
              {
                v51 = v18;
                goto LABEL_22;
              }
            }

            __break(1u);
          }
        }

        else
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v6, v40, v41, v42, v43, v44, v45, v46;
      }
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1DF2D97F8()
{
  v1 = v0;
  v2 = [objc_msgSend(v0 containerConfig)];
  swift_unknownObjectRelease();
  if (v2 != 13)
  {
    return;
  }

  v3 = [objc_opt_self() sharedBypassList];
  v4 = [v1 groupIdentifiers];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1DF3B0E6C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_msgSend(v1 containerConfig)];
  swift_unknownObjectRelease();
  if (!v7)
  {
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_20:

    return;
  }

  v6, v8, v9, v10, v11, v12, v13, v14;
  v15 = [v1 identifiers];
  if (!v15)
  {
    goto LABEL_20;
  }

  v16 = v15;
  v6 = sub_1DF3B0E6C();

LABEL_9:
  v17 = 0;
  v18 = 1;
  v19 = 1 << *(v6 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v6 + 56);
  for (i = (v19 + 63) >> 6; v21; v18 &= v25)
  {
    v23 = v17;
LABEL_17:
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v25 = *(*(v6 + 48) + ((v23 << 10) | (16 * v24)) + 8);

    v26 = sub_1DF3B0DBC();
    v25, v27, v28, v29, v30, v31, v32, v33;
    LOBYTE(v25) = [v3 systemGroupContainerIdIsWellknown_];
  }

  while (1)
  {
    v23 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v23 >= i)
    {

      return;
    }

    v21 = *(v6 + 56 + 8 * v23);
    ++v17;
    if (v21)
    {
      v17 = v23;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_1DF2D9A4C()
{
  v1 = [v0 identifiers];
  if (!v1)
  {
    return 100;
  }

  v2 = v1;
  v3 = sub_1DF3B0E6C();

  if (*v3->db != 1)
  {
    v3, v4, v5, v6, v7, v8, v9, v10;
    return 100;
  }

  v11 = sub_1DF2D9C0C(v3);
  v13 = v12;
  v3, v12, v14, v15, v16, v17, v18, v19;
  if (!v13)
  {
    return 100;
  }

  v25 = *&v0[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier];
  v26 = *&v0[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier + 8];
  if (v11 == v25 && v13 == v26)
  {
    v13, v20, v25, v26, v21, v22, v23, v24;
    goto LABEL_13;
  }

  v28 = sub_1DF3B100C();
  v13, v29, v30, v31, v32, v33, v34, v35;
  if ((v28 & 1) == 0)
  {
    return 100;
  }

LABEL_13:
  v37 = [v0 containerConfig];
  v38 = *&v0[OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements];
  if (v38)
  {
    swift_unknownObjectRetain();
    v39 = [v37 requiredEntitlement];
    if (v39)
    {
      v40 = v39;
      v41 = [v38 isEntitledWithBoolEntitlement_];

      swift_unknownObjectRelease();
      if ((v41 & 1) == 0)
      {
        swift_unknownObjectRelease();
        return 100;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v42 = [objc_msgSend(v0 containerConfig)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v42)
  {
    return 300;
  }

  else
  {
    return 200;
  }
}

uint64_t sub_1DF2D9C0C(uint64_t a1)
{
  v2 = sub_1DF3B0F3C();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1DF2DAB58(v2, *(a1 + 36), 0, a1);

  return v4;
}

void sub_1DF2D9C88()
{
  v1 = [v0 identifiers];
  if (!v1)
  {
LABEL_14:
    v44 = [v0 groupIdentifiers];
    if (v44)
    {
      v45 = v44;
      v46 = sub_1DF3B0E6C();

      if (*&v0[OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements])
      {
        v54 = v46 + 56;
        v55 = 1;
        v56 = 1 << *(v46 + 32);
        v57 = -1;
        if (v56 < 64)
        {
          v57 = ~(-1 << v56);
        }

        v58 = v57 & *(v46 + 56);
        v59 = (v56 + 63) >> 6;
        v84 = *&v0[OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements];
        swift_unknownObjectRetain();
        v60 = 0;
        while (v58)
        {
          v85 = v55;
          v61 = v60;
LABEL_27:
          v62 = __clz(__rbit64(v58));
          v58 &= v58 - 1;
          v63 = v46;
          v64 = (*(v46 + 48) + ((v61 << 10) | (16 * v62)));
          v66 = *v64;
          v65 = v64[1];

          v67 = [objc_msgSend(v0 containerConfig)];
          swift_unknownObjectRelease();
          v68 = sub_1DF3B0DBC();
          LODWORD(v67) = [v84 isOwnerOfContainerWithClass:v67 identifier:v68];

          if (v67)
          {
            v76 = sub_1DF2D9FE4(v66, v65);
            v65, v77, v78, v79, v80, v81, v82, v83;
            v55 = v85 & v76;
          }

          else
          {
            v65, v69, v70, v71, v72, v73, v74, v75;
            v55 = 0;
          }

          v60 = v61;
          v46 = v63;
        }

        while (1)
        {
          v61 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            break;
          }

          if (v61 >= v59)
          {

            swift_unknownObjectRelease();
            return;
          }

          v58 = *(v54 + 8 * v61);
          ++v60;
          if (v58)
          {
            v85 = v55;
            goto LABEL_27;
          }
        }

        __break(1u);
      }

      else
      {
        v46, v47, v48, v49, v50, v51, v52, v53;
      }
    }

    return;
  }

  v2 = v1;
  v3 = sub_1DF3B0E6C();

  v11 = *&v0[OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements];
  if (!v11)
  {
    v3, v4, v5, v6, v7, v8, v9, v10;
    goto LABEL_14;
  }

  swift_unknownObjectRetain();
  v12 = [v11 isAllowedToPerformOperationType:0 forAllContainersOfContainerConfig:objc_msgSend(v0 part:sel_containerConfig) partDomain:0 access:{0, 2}];
  swift_unknownObjectRelease();
  if (*v3->db != 1)
  {
    v3, v13, v14, v15, v16, v17, v18, v19;
LABEL_10:
    swift_unknownObjectRelease();
    if (v12)
    {
      return;
    }

    goto LABEL_14;
  }

  v20 = sub_1DF2D9C0C(v3);
  v22 = v21;
  v3, v21, v23, v24, v25, v26, v27, v28;
  if (!v22)
  {
    goto LABEL_10;
  }

  v34 = *&v0[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier];
  v35 = *&v0[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier + 8];
  if (v20 == v34 && v22 == v35)
  {
    v22, v29, v34, v35, v30, v31, v32, v33;
    swift_unknownObjectRelease();
    return;
  }

  v36 = sub_1DF3B100C();
  v22, v37, v38, v39, v40, v41, v42, v43;
  swift_unknownObjectRelease();
  if (!v12 && (v36 & 1) == 0)
  {
    goto LABEL_14;
  }
}

uint64_t sub_1DF2D9FE4(uint64_t a1, MCMAnalytics *a2)
{
  v5 = sub_1DF3B0D0C();
  v103 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v101 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v101 - v12;
  v14 = [objc_msgSend(v2 containerConfig)];
  swift_unknownObjectRelease();
  if (!v14)
  {
    return 1;
  }

  v15 = a1;
  if (sub_1DF2DA648(a1, a2))
  {
    v16 = sub_1DF2D25C4();
    v17 = v103;
    v18 = v5;
    (*(v103 + 16))(v13, v16, v5);
    v19 = v2;

    v20 = sub_1DF3B0CFC();
    v21 = sub_1DF3B0EBC();
    a2, v22, v23, v24, v25, v26, v27, v28;

    if (os_log_type_enabled(v20, v21))
    {
      v29 = v17;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v102 = v18;
      v32 = v15;
      v33 = v31;
      v104 = v31;
      *v30 = 136315394;
      v34 = &v19[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier];
      v35 = *&v19[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier];
      v36 = *(v34 + 1);

      v37 = sub_1DF2D1250(v35, v36, &v104);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v30 + 4) = v37;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_1DF2D1250(v32, a2, &v104);
      _os_log_impl(&dword_1DF2C3000, v20, v21, "[%s] requesting [%s]: DEVELOPER ACTION REQUIRED. Requestor's signature is given temporary compatibility affordance to access a TCC-protected group container. Group containers identifiers should be prefixed by requestor's team ID on this platform.", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D4520](v33, -1, -1);
      MEMORY[0x1E12D4520](v30, -1, -1);

      (*(v29 + 8))(v13, v102);
    }

    else
    {

      (*(v17 + 8))(v13, v5);
    }

    return 1;
  }

  v45 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v102 = a1;
  v46 = sub_1DF3B0DBC();
  v47 = [v45 initWithString_];

  v48 = [v47 stringByExtractingTeamIDPrefix];
  v51 = [sub_1DF2D883C(v49 v50)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v52 = sub_1DF2D25C4();
  v53 = *(v103 + 16);
  if (v51 >= 2)
  {
    v53(v11, v52, v5);
    v54 = v2;

    v55 = sub_1DF3B0CFC();
    v56 = sub_1DF3B0EBC();
    a2, v57, v58, v59, v60, v61, v62, v63;

    if (os_log_type_enabled(v55, v56))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v104 = v65;
      *v64 = 136315394;
      v66 = &v54[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier];
      v67 = *&v54[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier];
      v68 = *(v66 + 1);

      v69 = sub_1DF2D1250(v67, v68, &v104);
      v68, v70, v71, v72, v73, v74, v75, v76;
      *(v64 + 4) = v69;
      *(v64 + 12) = 2080;
      *(v64 + 14) = sub_1DF2D1250(v102, a2, &v104);
      _os_log_impl(&dword_1DF2C3000, v55, v56, "[%s] requesting [%s]: APPROVED. Requestor's signature allows it to access a TCC-protected group container", v64, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D4520](v65, -1, -1);
      MEMORY[0x1E12D4520](v64, -1, -1);
    }

    (*(v103 + 8))(v11, v5);
    return 1;
  }

  v53(v8, v52, v5);
  v78 = v2;

  v79 = sub_1DF3B0CFC();
  v80 = sub_1DF3B0EAC();
  a2, v81, v82, v83, v84, v85, v86, v87;

  if (os_log_type_enabled(v79, v80))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v104 = v89;
    *v88 = 136315394;
    v90 = &v78[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier];
    v91 = *&v78[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier];
    v92 = *(v90 + 1);

    v93 = sub_1DF2D1250(v91, v92, &v104);
    v92, v94, v95, v96, v97, v98, v99, v100;
    *(v88 + 4) = v93;
    *(v88 + 12) = 2080;
    *(v88 + 14) = sub_1DF2D1250(v102, a2, &v104);
    _os_log_impl(&dword_1DF2C3000, v79, v80, "[%s] requesting [%s]: REJECTED. Requestor's signature does not allow it to access a TCC-protected group container. Group containers identifiers should be prefixed by requestor's team ID to allow access on this platform.", v88, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D4520](v89, -1, -1);
    MEMORY[0x1E12D4520](v88, -1, -1);
  }

  (*(v103 + 8))(v8, v5);
  return 0;
}

uint64_t sub_1DF2DA648(uint64_t a1, uint64_t a2)
{
  v3 = [*&v2[OBJC_IVAR___MCMCommandAuthorize_targetClientCodeSignInfo] teamIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1DF3B0DCC();
    v7 = v6;

    v8 = [objc_msgSend(v2 containerConfig)];
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30A88, &qword_1DF3BD418);
    v9 = sub_1DF3B0DAC();

    if (*v9->db)
    {
      v17 = sub_1DF2D6BE4(v5, v7);
      v19 = v18;
      v7, v18, v20, v21, v22, v23, v24, v25;
      if (v19)
      {
        v33 = *(v9[2].queue + v17);

        v9, v34, v35, v36, v37, v38, v39, v40;
        v41 = sub_1DF3B0DEC();
        v43 = v42;
        v44 = sub_1DF2D5850(v41, v42, v33);
        v43, v45, v46, v47, v48, v49, v50, v51;
        v33, v52, v53, v54, v55, v56, v57, v58;
        return v44 & 1;
      }
    }

    else
    {
      v7, v10, v11, v12, v13, v14, v15, v16;
    }

    v9, v26, v27, v28, v29, v30, v31, v32;
  }

  return 0;
}

id MCMCommandAuthorize.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_1DF2DA904(void *a1, uint64_t a2)
{
  v5 = OBJC_IVAR___MCMCommandAuthorize_identifiers;
  *&v2[OBJC_IVAR___MCMCommandAuthorize_identifiers] = 0;
  v6 = OBJC_IVAR___MCMCommandAuthorize_groupIdentifiers;
  *&v2[OBJC_IVAR___MCMCommandAuthorize_groupIdentifiers] = 0;
  v7 = OBJC_IVAR___MCMCommandAuthorize_userIdentity;
  *&v2[OBJC_IVAR___MCMCommandAuthorize_userIdentity] = 0;
  *&v2[OBJC_IVAR___MCMCommandAuthorize____lazy_storage___amfi] = 0;
  v8 = OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements;
  *&v2[OBJC_IVAR___MCMCommandAuthorize_targetClientEntitlements] = 0;
  v9 = &v2[OBJC_IVAR___MCMCommandAuthorize_targetPlatform];
  *v9 = 0;
  v9[4] = 1;
  v10 = [objc_msgSend(a1 globalConfiguration)];
  swift_unknownObjectRelease();
  result = [v10 configForContainerClass_];
  if (result)
  {
    v12 = result;
    swift_unknownObjectRelease();
    *&v2[OBJC_IVAR___MCMCommandAuthorize_containerConfig] = v12;
    v13 = &v2[OBJC_IVAR___MCMCommandAuthorize_auditToken];
    *v13 = 0u;
    v13[1] = 0u;
    v2[OBJC_IVAR___MCMCommandAuthorize_onBehalfOfSelf] = 1;
    swift_beginAccess();
    v14 = *&v2[v5];
    *&v2[v5] = 0;
    v14, v15, v16, v17, v18, v19, v20, v21;
    swift_beginAccess();
    v22 = *&v2[v6];
    *&v2[v6] = 0;
    v22, v23, v24, v25, v26, v27, v28, v29;
    swift_beginAccess();
    v30 = *&v2[v7];
    *&v2[v7] = 0;

    v31 = &v2[OBJC_IVAR___MCMCommandAuthorize_targetClientIdentifier];
    *v31 = 0x3E656E6F6E3CLL;
    v31[1] = 0xE600000000000000;
    *&v2[v8] = 0;
    swift_unknownObjectRelease();
    v32 = [objc_allocWithZone(MCMClientCodeSignInfo) init];
    *&v2[OBJC_IVAR___MCMCommandAuthorize_targetClientCodeSignInfo] = v32;
    v33.receiver = v2;
    v33.super_class = MCMCommandAuthorize;
    return objc_msgSendSuper2(&v33, sel_initWithContext_resultPromise_, a1, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t type metadata accessor for MCMCommandAuthorize()
{
  result = qword_1ECE348B0;
  if (!qword_1ECE348B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECE348B0);
  }

  return result;
}

uint64_t sub_1DF2DAB58(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1DF2DABF0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_1DF3B0D0C();
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  v5 = container_log_handle_for_category();
  return sub_1DF3B0D1C();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1DF2DACBC(char *a1)
{
  v2 = swift_allocObject();
  sub_1DF2DAD0C(a1);
  return v2;
}

uint64_t sub_1DF2DAD0C(char *a1)
{
  v2 = v1;
  v74[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1DF3B0D3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DF3B0D0C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v1 + OBJC_IVAR____TtC22ContainerManagerCommon20MCMAnalyticsDatabase_settings);
  *v12 = 0xD00000000000004FLL;
  v12[1] = 0x80000001DF3BED00;
  v71 = v5;
  v13 = *(v5 + 16);
  v66 = OBJC_IVAR____TtC22ContainerManagerCommon20MCMAnalyticsDatabase_dbPath;
  v67 = v12;
  v13(v1 + OBJC_IVAR____TtC22ContainerManagerCommon20MCMAnalyticsDatabase_dbPath, a1, v4);
  v74[0] = 0;
  v72 = 1;
  v14 = sub_1DF2DABBC();
  v68 = v9;
  v69 = v8;
  (*(v9 + 16))(v11, v14, v8);
  v13(v7, a1, v4);
  v15 = sub_1DF3B0CFC();
  v16 = sub_1DF3B0E8C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v65 = v1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v73 = v19;
    *v18 = 136315138;
    sub_1DF2DB79C();
    v20 = sub_1DF3B0FFC();
    v64 = a1;
    v21 = v4;
    v23 = v22;
    v24 = v7;
    v25 = *(v71 + 8);
    v25(v24, v21);
    v26 = sub_1DF2D1250(v20, v23, &v73);
    v27 = v23;
    v4 = v21;
    a1 = v64;
    v27, v28, v29, v30, v31, v32, v33, v34;
    *(v18 + 4) = v26;
    _os_log_impl(&dword_1DF2C3000, v15, v16, "Opening Analytics db at [%s]", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1E12D4520](v19, -1, -1);
    v35 = v18;
    v2 = v65;
    MEMORY[0x1E12D4520](v35, -1, -1);
  }

  else
  {

    v37 = v7;
    v25 = *(v71 + 8);
    v25(v37, v4);
  }

  v36 = (*(v68 + 8))(v11, v69);
  MEMORY[0x1EEE9AC00](v36);
  *(&v64 - 2) = &v72;
  *(&v64 - 1) = v74;
  v38 = v70;
  sub_1DF3B0D2C();
  if (!v38)
  {
    v39 = v74[0];
    if (v74[0])
    {
      if (!v72)
      {
        *(v2 + OBJC_IVAR____TtC22ContainerManagerCommon20MCMAnalyticsDatabase_db) = v74[0];
        sub_1DF2E510C(v39);
        v53 = v52;
        v55 = v54;
        v25(a1, v4);
        v56 = (v2 + OBJC_IVAR____TtC22ContainerManagerCommon20MCMAnalyticsDatabase_statements);
        *v56 = v53;
        v56[1] = v55;
        return v2;
      }

      v40 = v4;
      v41 = sqlite3_extended_errcode(v74[0]);
      sub_1DF2DB360();
      swift_allocError();
      *v42 = v41;
      v4 = v40;
      *(v42 + 4) = 0;
      swift_willThrow();
      sqlite3_close(v39);
    }

    else
    {
      sub_1DF2DB360();
      swift_allocError();
      *v43 = 1;
      *(v43 + 4) = 0;
      swift_willThrow();
    }

    v25(a1, v4);
    v25((v2 + v66), v4);
    v67[1], v44, v45, v46, v47, v48, v49, v50;
    type metadata accessor for MCMAnalyticsDatabase(0);
    swift_deallocPartialClassInstance();
    return v2;
  }

  v25((v2 + v66), v4);
  v67[1], v57, v58, v59, v60, v61, v62, v63;
  type metadata accessor for MCMAnalyticsDatabase(0);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1DF2DB2D8(const char *a1)
{
  v2 = *(v1 + 16);
  result = sqlite3_open_v2(a1, *(v1 + 24), 4194310, 0);
  *v2 = result;
  return result;
}

uint64_t type metadata accessor for MCMAnalyticsDatabase(uint64_t a1)
{
  result = qword_1ECE34960;
  if (!qword_1ECE34960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DF2DB360()
{
  result = qword_1ECE30C70;
  if (!qword_1ECE30C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE30C70);
  }

  return result;
}

uint64_t sub_1DF2DB3B4()
{
  v1 = v0;
  v2 = sub_1DF3B0D0C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  sub_1DF2E5FD8();
  v7 = OBJC_IVAR____TtC22ContainerManagerCommon20MCMAnalyticsDatabase_db;
  if (sqlite3_close_v2(*(v0 + OBJC_IVAR____TtC22ContainerManagerCommon20MCMAnalyticsDatabase_db)))
  {
    v8 = sub_1DF2DABBC();
    (*(v3 + 16))(v6, v8, v2);

    v9 = sub_1DF3B0CFC();
    v10 = sub_1DF3B0EAC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = sqlite3_extended_errcode(*(v1 + v7));

      _os_log_impl(&dword_1DF2C3000, v9, v10, "Failed to close database: %d", v11, 8u);
      MEMORY[0x1E12D4520](v11, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
  }

  v12 = OBJC_IVAR____TtC22ContainerManagerCommon20MCMAnalyticsDatabase_dbPath;
  v13 = sub_1DF3B0D3C();
  (*(*(v13 - 8) + 8))(v1 + v12, v13);
  *(v1 + OBJC_IVAR____TtC22ContainerManagerCommon20MCMAnalyticsDatabase_settings + 8), v14, v15, v16, v17, v18, v19, v20;
  return v1;
}

uint64_t sub_1DF2DB718()
{
  sub_1DF2DB3B4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1DF2DB79C()
{
  result = qword_1ECE30C78;
  if (!qword_1ECE30C78)
  {
    sub_1DF3B0D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE30C78);
  }

  return result;
}

uint64_t sub_1DF2DB7FC(uint64_t a1)
{
  result = sub_1DF3B0D3C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MCMAnalyticsDatabase.DatabaseError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MCMAnalyticsDatabase.DatabaseError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

id sub_1DF2DB9E0(uint64_t a1, MCMAnalytics *a2)
{
  v4 = a1;
  *(v2 + OBJC_IVAR___MCMEntitlementLookup_rawData) = a1;
  v114 = sub_1DF2DD204(MEMORY[0x1E69E7CC0]);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;

  v17 = 0;
  while (v8)
  {
    v18 = v17;
LABEL_16:
    v21 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v22 = v21 | (v18 << 6);
    v23 = (*(v4 + 48) + 16 * v22);
    v25 = *v23;
    v24 = v23[1];
    sub_1DF2D2724(*(v4 + 56) + 32 * v22, v122);
    *&v123 = v25;
    *(&v123 + 1) = v24;
    sub_1DF2DD320(v122, &v124);

LABEL_17:
    v126 = v123;
    v127[0] = v124;
    v127[1] = v125;
    v26 = *(&v123 + 1);
    if (!*(&v123 + 1))
    {
      a2, v10, v11, v12, v13, v14, v15, v16;

      *&v113[OBJC_IVAR___MCMEntitlementLookup_classes] = v114;
      v121.receiver = v113;
      v121.super_class = MCMEntitlementLookup;
      return objc_msgSendSuper2(&v121, sel_init);
    }

    v27 = v126;
    sub_1DF2DD320(v127, &v123);
    if (!*a2->db)
    {
      v26, v28, v29, v30, v31, v32, v33, v34;
      goto LABEL_5;
    }

    v35 = sub_1DF2D6BE4(v27, v26);
    v37 = v36;
    v26, v36, v38, v39, v40, v41, v42, v43;
    if (v37)
    {
      v44 = v4;
      v45 = *(a2[2].queue + v35);
      sub_1DF2D2724(&v123, v122);
      sub_1DF2D2724(v122, v120);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v109 = v119;
        __swift_destroy_boxed_opaque_existential_0(v122);
        v47 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v122);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30CF8, &qword_1DF3BD910);
        if (!swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_0(&v123);
          swift_unknownObjectRelease();
          v46 = v120;
          goto LABEL_23;
        }

        v109 = 0;
        v47 = v119;
      }

      __swift_destroy_boxed_opaque_existential_0(v120);
      v48 = [v45 normalizedContainerClass];
      v110 = v47;
      v112 = v48;
      if (v114[2])
      {
        v56 = v114;
        v105 = sub_1DF2CFAD0(v48);
        v58 = v57;
        v110, v57, v59, v60, v61, v62, v63, v64;
        if ((v58 & 1) == 0)
        {
          goto LABEL_34;
        }

        v106 = *(v114[7] + 16 * v105 + 8);
        *&v122[0] = v110;

        sub_1DF2DC740(v65);
        v111 = *&v122[0];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v122[0] = v114;
        v66 = sub_1DF2CFAD0(v112);
        v68 = v114[2];
        v69 = (v67 & 1) == 0;
        v70 = __OFADD__(v68, v69);
        v71 = v68 + v69;
        if (v70)
        {
          goto LABEL_56;
        }

        if (v114[3] >= v71)
        {
          v72 = v112;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v118 = v66;
            v102 = v67;
            sub_1DF2DC5D0();
            v67 = v102;
            v66 = v118;
            v72 = v112;
          }
        }

        else
        {
          v115 = v67;
          sub_1DF2DC32C(v71, isUniquelyReferenced_nonNull_native);
          v72 = v112;
          v66 = sub_1DF2CFAD0(v112);
          v74 = v73 & 1;
          v67 = v115;
          if ((v115 & 1) != v74)
          {
            goto LABEL_58;
          }
        }

        v91 = v106 | v109;
        v114 = *&v122[0];
        if (v67)
        {
          v92 = *(*&v122[0] + 56) + 16 * v66;
          v86 = *v92;
          *v92 = v111;
          *(v92 + 8) = v91 & 1;
          goto LABEL_49;
        }

        *(*&v122[0] + 8 * (v66 >> 6) + 64) |= 1 << v66;
        *(v114[6] + 8 * v66) = v72;
        v100 = v114[7] + 16 * v66;
        *v100 = v111;
        *(v100 + 8) = v91 & 1;
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(&v123);
        v88 = v114;
        v101 = v114[2];
        v70 = __OFADD__(v101, 1);
        v90 = v101 + 1;
        if (v70)
        {
          goto LABEL_57;
        }

LABEL_51:
        v88[2] = v90;
        v4 = v44;
      }

      else
      {
        v75 = v47;
        v56 = v114;
        v75, v49, v50, v51, v52, v53, v54, v55;
LABEL_34:
        v116 = swift_isUniquelyReferenced_nonNull_native();
        *&v122[0] = v56;
        v77 = sub_1DF2CFAD0(v112);
        v78 = v56[2];
        v79 = (v76 & 1) == 0;
        v80 = v78 + v79;
        if (__OFADD__(v78, v79))
        {
          goto LABEL_54;
        }

        if (v56[3] >= v80)
        {
          v81 = v112;
          if ((v116 & 1) == 0)
          {
            v117 = v77;
            v108 = v76;
            sub_1DF2DC5D0();
            v76 = v108;
            v77 = v117;
          }
        }

        else
        {
          v107 = v76;
          sub_1DF2DC32C(v80, v116);
          v81 = v112;
          v82 = sub_1DF2CFAD0(v112);
          v84 = v83 & 1;
          v76 = v107;
          if ((v107 & 1) != v84)
          {
            goto LABEL_58;
          }

          v77 = v82;
        }

        v114 = *&v122[0];
        if ((v76 & 1) == 0)
        {
          *(*&v122[0] + 8 * (v77 >> 6) + 64) |= 1 << v77;
          *(v114[6] + 8 * v77) = v81;
          v87 = v114[7] + 16 * v77;
          *v87 = v110;
          *(v87 + 8) = v109;
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0(&v123);
          v88 = v114;
          v89 = v114[2];
          v70 = __OFADD__(v89, 1);
          v90 = v89 + 1;
          if (v70)
          {
            goto LABEL_55;
          }

          goto LABEL_51;
        }

        v85 = *(*&v122[0] + 56) + 16 * v77;
        v86 = *v85;
        *v85 = v110;
        *(v85 + 8) = v109;
LABEL_49:
        swift_unknownObjectRelease();
        v86, v93, v94, v95, v96, v97, v98, v99;
        v46 = &v123;
LABEL_23:
        __swift_destroy_boxed_opaque_existential_0(v46);
        v4 = v44;
      }
    }

    else
    {
LABEL_5:
      __swift_destroy_boxed_opaque_existential_0(&v123);
    }
  }

  if (v9 <= v17 + 1)
  {
    v19 = v17 + 1;
  }

  else
  {
    v19 = v9;
  }

  v20 = v19 - 1;
  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v9)
    {
      v8 = 0;
      v124 = 0u;
      v125 = 0u;
      v17 = v20;
      v123 = 0u;
      goto LABEL_17;
    }

    v8 = *(v5 + 8 * v18);
    ++v17;
    if (v8)
    {
      v17 = v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  type metadata accessor for container_class_t(0);
  result = sub_1DF3B103C();
  __break(1u);
  return result;
}

uint64_t sub_1DF2DC104(void *a1)
{
  v2 = [a1 normalizedContainerClass];
  v3 = *(v1 + OBJC_IVAR___MCMEntitlementLookup_classes);
  if (!*(v3 + 16))
  {
    return MEMORY[0x1E69E7CD0];
  }

  v4 = sub_1DF2CFAD0(v2);
  if ((v5 & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v6 = *(*(v3 + 56) + 16 * v4);

  v8 = sub_1DF2DD4D0(v7);
  v6, v9, v10, v11, v12, v13, v14, v15;
  return v8;
}

id MCMEntitlementLookup.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1DF2DC2A0()
{
  v1 = *v0;
  sub_1DF3B109C();
  MEMORY[0x1E12D2A50](v1);
  return sub_1DF3B10BC();
}

uint64_t sub_1DF2DC2E8(uint64_t a1)
{
  v2 = *v1;
  sub_1DF3B109C();
  MEMORY[0x1E12D2A50](v2);
  return sub_1DF3B10BC();
}

uint64_t sub_1DF2DC32C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30DE0, &qword_1DF3BDA08);
  v34 = v4;
  result = sub_1DF3B0FDC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      if ((v34 & 1) == 0)
      {
      }

      sub_1DF3B109C();
      MEMORY[0x1E12D2A50](v21);
      result = sub_1DF3B10BC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1DF2DC5D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30DE0, &qword_1DF3BDA08);
  v2 = *v0;
  v3 = sub_1DF3B0FCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 16 * v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v20 = *(v4 + 56) + 16 * v17;
        *v20 = v19;
        *(v20 + 8) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1DF2DC740(MCMAnalytics *result)
{
  v2 = *result->db;
  v3 = *v1;
  v4 = *(*v1)->db;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= (v3[1].super.isa >> 1))
  {
    if (*result->db)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v25 = v4 + v2;
  }

  else
  {
    v25 = v4;
  }

  v3 = sub_1DF2DC834(isUniquelyReferenced_nonNull_native, v25, 1, v3, v11, v12, v13, v14);
  if (!*result->db)
  {
LABEL_13:
    result, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if (((v3[1].super.isa >> 1) - *v3->db) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();
  result, v15, v16, v17, v18, v19, v20, v21;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v22 = *v3->db;
  v23 = __OFADD__(v22, v2);
  v24 = v22 + v2;
  if (!v23)
  {
    *v3->db = v24;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

MCMAnalytics *sub_1DF2DC834(MCMAnalytics *result, int64_t a2, void *a3, MCMAnalytics *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    isa = a4[1].super.isa;
    v11 = isa >> 1;
    if ((isa >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = isa & 0xFFFFFFFFFFFFFFFELL;
      if ((isa & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->db;
  if (v11 <= v12)
  {
    v13 = *a4->db;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30DD8, &qword_1DF3BDA00);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->db = v12;
    v14[1].super.isa = (2 * (v16 >> 4));
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  p_queue = &v14[1].queue;
  v18 = &a4[1].queue;
  if (v9)
  {
    if (v14 != a4 || p_queue >= &v18[16 * v12])
    {
      memmove(p_queue, v18, 16 * v12);
    }

    *a4->db = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

uint64_t sub_1DF2DC940(void *a1, uint64_t a2, MCMAnalytics *a3)
{
  v7 = *v3;
  sub_1DF3B109C();
  sub_1DF3B0E0C();
  v8 = sub_1DF3B10BC();
  v15 = -1 << *(v7 + 32);
  v16 = v8 & ~v15;
  if ((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (1)
    {
      v18 = (*(v7 + 48) + 16 * v16);
      v19 = v18[1];
      v20 = *v18 == a2 && v19 == a3;
      if (v20 || (sub_1DF3B100C() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    a3, v19, v9, v10, v11, v12, v13, v14;
    v23 = (*(v7 + 48) + 16 * v16);
    v24 = v23[1];
    *a1 = *v23;
    a1[1] = v24;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;

    sub_1DF2DCCF0(a2, a3, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DF2DCA90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30DD0, &qword_1DF3BD9F8);
  result = sub_1DF3B0F6C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1DF3B109C();
      sub_1DF3B0E0C();
      result = sub_1DF3B10BC();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DF2DCCF0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DF2DCA90(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1DF2DCE70();
      goto LABEL_16;
    }

    sub_1DF2DCFCC(v8 + 1);
  }

  v10 = *v4;
  sub_1DF3B109C();
  sub_1DF3B0E0C();
  result = sub_1DF3B10BC();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1DF3B100C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1DF3B102C();
  __break(1u);
  return result;
}

void *sub_1DF2DCE70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30DD0, &qword_1DF3BD9F8);
  v2 = *v0;
  v3 = sub_1DF3B0F5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1DF2DCFCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30DD0, &qword_1DF3BD9F8);
  result = sub_1DF3B0F6C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1DF3B109C();

      sub_1DF3B0E0C();
      result = sub_1DF3B10BC();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void *sub_1DF2DD204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30DE0, &qword_1DF3BDA08);
  v3 = sub_1DF3B0FEC();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_1DF2CFAD0(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = v3[7] + 16 * v9;
    *v12 = result;
    *(v12 + 8) = v6 & 1;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 24;
    v4 = *(v11 - 2);
    v17 = *(v11 - 1);
    v6 = *v11;

    v9 = sub_1DF2CFAD0(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

_OWORD *sub_1DF2DD320(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1DF2DD330(void *a1, uint64_t a2)
{
  if ([v2 isSupported_] && (v4 = objc_msgSend(a1, sel_normalizedContainerClass), v5 = *&v2[OBJC_IVAR___MCMEntitlementLookup_classes], *(v5 + 16)) && (v6 = sub_1DF2CFAD0(v4), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 16 * v6;
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = sub_1DF3B0DCC();
    v19 = v12;
    if (v10 == 1)
    {
      v12, v12, v13, v14, v15, v16, v17, v18;
      v20 = 1;
    }

    else
    {
      v22 = v11;
      v23 = sub_1DF3B0DCC();
      v31 = v24;
      if (v23 == v22 && v24 == v19)
      {
        v19, v24, v25, v26, v27, v28, v29, v30;
        v39 = v31;
      }

      else
      {
        v40 = sub_1DF3B100C();

        v31, v41, v42, v43, v44, v45, v46, v47;
        if ((v40 & 1) == 0)
        {
          v71[0] = v22;
          v71[1] = v19;
          MEMORY[0x1EEE9AC00](v48);
          v70[2] = v71;
          v20 = sub_1DF2CFBA8(sub_1DF2CFC70, v70, v9);
          v19, v56, v57, v58, v59, v60, v61, v62;
          v9, v63, v64, v65, v66, v67, v68, v69;
          return v20 & 1;
        }

        v9, v49, v50, v51, v52, v53, v54, v55;
        v39 = v19;
      }

      v39, v32, v33, v34, v35, v36, v37, v38;
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1DF2DD4D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E12D2820](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v15 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1DF2DC940(v14, v6, v5);
      v14[1], v7, v8, v9, v10, v11, v12, v13;
      v4 += 2;
      --v2;
    }

    while (v2);
    return v15;
  }

  return result;
}

unint64_t type metadata accessor for MCMEntitlementLookup()
{
  result = qword_1ECE34970[0];
  if (!qword_1ECE34970[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ECE34970);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1DF2DD5C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF2DD610(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DF2DD664()
{
  result = qword_1EE172D40;
  if (!qword_1EE172D40)
  {
    type metadata accessor for container_class_t(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE172D40);
  }

  return result;
}

unint64_t sub_1DF2DD6D0()
{
  result = qword_1ECE30EB0;
  if (!qword_1ECE30EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE30EB8, qword_1DF3BDA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE30EB0);
  }

  return result;
}

void type metadata accessor for container_part_t()
{
  if (!qword_1ECE30FB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECE30FB0);
    }
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MCMSandboxExtensionType(uint64_t a1)
{
  v2 = *v1;
  if (*v1 <= 1)
  {
    if (!v2)
    {
      return 1701736302;
    }

    if (v2 == 1)
    {
      return 0x656E6961746E6F63;
    }

    goto LABEL_11;
  }

  if (v2 == 2)
  {
    return 0x6C6E6F2D64616572;
  }

  if (v2 != 3)
  {
LABEL_11:
    result = sub_1DF3B101C();
    __break(1u);
    return result;
  }

  return 0x6972772D64616572;
}

unint64_t sub_1DF2DD85C()
{
  result = qword_1ECE30EC0;
  if (!qword_1ECE30EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE30EC8, &qword_1DF3BDAB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE30EC0);
  }

  return result;
}

unint64_t sub_1DF2DD8C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30BD0, &qword_1DF3BD620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF3BDB00;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  if (*(v0 + 8))
  {
    v2 = *(v0 + 8);
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v3 = sub_1DF3B0DBC();
  v2, v4, v5, v6, v7, v8, v9, v10;
  *(inited + 48) = v3;
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x80000001DF3BF1B0;
  *(inited + 72) = sub_1DF3B0DBC();
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x80000001DF3BF1D0;
  *(inited + 96) = sub_1DF3B0DBC();
  *(inited + 104) = 0xD00000000000001ALL;
  *(inited + 112) = 0x80000001DF3BF1F0;
  *(inited + 120) = sub_1DF3B108C();
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x80000001DF3BF210;
  *(inited + 144) = sub_1DF3B108C();
  *(inited + 152) = 0xD000000000000013;
  *(inited + 160) = 0x80000001DF3BF250;
  *(inited + 168) = sub_1DF3B0E4C();
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = 0x80000001DF3BF230;
  *(inited + 192) = sub_1DF3B108C();
  *(inited + 200) = 0xD000000000000011;
  *(inited + 208) = 0x80000001DF3BF270;
  *(inited + 216) = sub_1DF3B0E4C();
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x80000001DF3BF290;
  *(inited + 240) = sub_1DF3B0DBC();
  *(inited + 248) = 0xD00000000000001BLL;
  *(inited + 256) = 0x80000001DF3BF2B0;
  *(inited + 264) = sub_1DF3B108C();
  strcpy((inited + 272), "containerClass");
  *(inited + 287) = -18;
  *(inited + 288) = sub_1DF3B10CC();
  v11 = sub_1DF2D7B58(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30BD8, qword_1DF3BD628);
  swift_arrayDestroy();
  return v11;
}

uint64_t sub_1DF2DDB30()
{
  sub_1DF3B0F9C();
  0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
  MEMORY[0x1E12D27C0](*(v0 + 32), *(v0 + 40));
  MEMORY[0x1E12D27C0](58, 0xE100000000000000);
  v8 = sub_1DF3B0FFC();
  v10 = v9;
  MEMORY[0x1E12D27C0](v8);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1E12D27C0](58, 0xE100000000000000);
  v18 = sub_1DF3B0FFC();
  v20 = v19;
  MEMORY[0x1E12D27C0](v18);
  v20, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1E12D27C0](58, 0xE100000000000000);
  v28 = sub_1DF3B0FFC();
  v30 = v29;
  MEMORY[0x1E12D27C0](v28);
  v30, v31, v32, v33, v34, v35, v36, v37;
  MEMORY[0x1E12D27C0](58, 0xE100000000000000);
  v38 = sub_1DF3B0FFC();
  v40 = v39;
  MEMORY[0x1E12D27C0](v38);
  v40, v41, v42, v43, v44, v45, v46, v47;
  MEMORY[0x1E12D27C0](58, 0xE100000000000000);
  if (*(v0 + 60))
  {
    v48 = 1702195828;
  }

  else
  {
    v48 = 0x65736C6166;
  }

  if (*(v0 + 60))
  {
    v49 = 0xE400000000000000;
  }

  else
  {
    v49 = 0xE500000000000000;
  }

  MEMORY[0x1E12D27C0](v48, v49);
  v49, v50, v51, v52, v53, v54, v55, v56;
  MEMORY[0x1E12D27C0](58, 0xE100000000000000);
  if (*(v0 + 61))
  {
    v57 = 1702195828;
  }

  else
  {
    v57 = 0x65736C6166;
  }

  if (*(v0 + 61))
  {
    v58 = 0xE400000000000000;
  }

  else
  {
    v58 = 0xE500000000000000;
  }

  MEMORY[0x1E12D27C0](v57, v58);
  v58, v59, v60, v61, v62, v63, v64, v65;
  MEMORY[0x1E12D27C0](58, 0xE100000000000000);
  MEMORY[0x1E12D27C0](*(v0 + 64), *(v0 + 72));
  MEMORY[0x1E12D27C0](58, 0xE100000000000000);
  v66 = sub_1DF3B0FFC();
  v68 = v67;
  MEMORY[0x1E12D27C0](v66);
  v68, v69, v70, v71, v72, v73, v74, v75;
  MEMORY[0x1E12D27C0](58, 0xE100000000000000);
  if (*(v0 + 8))
  {
    v76 = *v0;
    v77 = *(v0 + 8);
  }

  else
  {
    v77 = 0xE500000000000000;
    v76 = 0x3E6C6C613CLL;
  }

  MEMORY[0x1E12D27C0](v76, v77);
  v77, v78, v79, v80, v81, v82, v83, v84;
  MEMORY[0x1E12D27C0](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_1DF2DDDF4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, int a10, char a11, char a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 52) = a8;
  *(a9 + 56) = a10;
  *(a9 + 60) = a11;
  *(a9 + 61) = a12;
  *(a9 + 64) = a13;
  *(a9 + 72) = a14;
  *(a9 + 80) = a15;
  *(a9 + 88) = a16;
  return result;
}

void sub_1DF2DDE9C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DF3B0D0C();
  MEMORY[0x1EEE9AC00](v4);
  if (a1)
  {
    v5 = *(*a1 + 120);

    LOBYTE(v5) = v5(v2);

    if (v5)
    {
      v6 = sub_1DF2DE100();
      sub_1DF2E4154(&_s21AmbiguousPersonaEventVN, v6);
    }
  }
}

unint64_t sub_1DF2DE100()
{
  result = qword_1ECE310C0;
  if (!qword_1ECE310C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE310C0);
  }

  return result;
}

unint64_t sub_1DF2DE154(uint64_t a1)
{
  result = sub_1DF2DE17C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DF2DE17C()
{
  result = qword_1ECE30ED0;
  if (!qword_1ECE30ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE30ED0);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1DF2DE1EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF2DE234(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DF2DE29C()
{
  v1 = v0 + OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_auditToken;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1DF2DE2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_auditToken);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

uint64_t sub_1DF2DE3B8()
{
  v1 = OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_flags;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DF2DE3FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_flags;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DF2DE4AC()
{
  v1 = OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_onBehalfOfSelf;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DF2DE4F0(char a1)
{
  v3 = OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_onBehalfOfSelf;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1DF2DE5A0(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = &v3[OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_auditToken];
  *v7 = 0u;
  v7[1] = 0u;
  *&v3[OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_flags] = 0;
  v3[OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_onBehalfOfSelf] = 0;
  v20.receiver = v3;
  v20.super_class = type metadata accessor for MCMXPCMessageAuthorize();
  v8 = objc_msgSendSuper2(&v20, sel_initWithXPCObject_context_error_, a1, a2, a3);
  if (!v8)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 0;
  }

  v9 = v8;
  v10 = v8;
  uint64 = xpc_dictionary_get_uint64(a1, "Flags");
  v12 = OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_flags;
  swift_beginAccess();
  *&v10[v12] = uint64;
  LODWORD(uint64) = xpc_dictionary_get_BOOL(a1, "OnBehalfOfSelf");
  v13 = OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_onBehalfOfSelf;
  swift_beginAccess();
  v10[v13] = uint64;
  if (uint64)
  {
    v14 = [a2 clientIdentity];
    [v14 auditToken];
  }

  else
  {
    v19 = 32;
    data = xpc_dictionary_get_data(a1, "AuditToken", &v19);
    if (!data)
    {
      *a3 = 38;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v18 = &v10[OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_auditToken];
      swift_beginAccess();
      *v18 = 0u;
      v18[1] = 0u;
      goto LABEL_8;
    }

    v21 = *data;
    v22 = data[1];
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v17 = &v10[OBJC_IVAR____TtC22ContainerManagerCommon22MCMXPCMessageAuthorize_auditToken];
  swift_beginAccess();
  *v17 = v21;
  v17[1] = v22;
LABEL_8:

  return v9;
}

id sub_1DF2DE908(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MCMXPCMessageAuthorize();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

BOOL sub_1DF2DE980(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1DF2DE9B0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1DF2DE9DC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void sub_1DF2DEAB4(MCMAnalytics *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DF2DECB8(a1);
  a1, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DF2DEB44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF2DEB64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1DF2DEC0C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for container_authorize_flags_t(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF2DECB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

id sub_1DF2DED68(uint64_t a1, MCMAnalytics *a2)
{
  *(v2 + OBJC_IVAR___MCMEntitlementAccess_rawData) = a1;
  v66 = sub_1DF2E0FAC(MEMORY[0x1E69E7CC0]);
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v16 = 0;
  while (v7)
  {
    v18 = v16;
LABEL_17:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v22 = v21 | (v18 << 6);
    v23 = (*(a1 + 48) + 16 * v22);
    v25 = *v23;
    v24 = v23[1];
    sub_1DF2D2724(*(a1 + 56) + 32 * v22, v69);
    *&v70 = v25;
    *(&v70 + 1) = v24;
    sub_1DF2DD320(v69, &v71);

LABEL_18:
    v73 = v70;
    v74[0] = v71;
    v74[1] = v72;
    v26 = *(&v70 + 1);
    if (!*(&v70 + 1))
    {
      a2, v9, v10, v11, v12, v13, v14, v15;

      *&v65[OBJC_IVAR___MCMEntitlementAccess_classes] = v66;
      v68.receiver = v65;
      v68.super_class = MCMEntitlementAccess;
      return objc_msgSendSuper2(&v68, sel_init);
    }

    v27 = v73;
    sub_1DF2DD320(v74, &v70);
    if (!*a2->db)
    {
      v17 = v26;
LABEL_5:
      v17, v28, v29, v30, v31, v32, v33, v34;
      goto LABEL_6;
    }

    v35 = sub_1DF2D6BE4(v27, v26);
    v37 = v36;
    v26, v36, v38, v39, v40, v41, v42, v43;
    if (v37)
    {
      v44 = *(a2[2].queue + v35);
      sub_1DF2D2724(&v70, v69);
      swift_unknownObjectRetain();
      v45 = sub_1DF2E19F8(v69);
      if (v45)
      {
        v64 = v45;
        v46 = [v44 containerClass];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v69[0] = v66;
        v63 = v46;
        v47 = sub_1DF2DFEF4(v46, sub_1DF2CFB3C);
        v49 = v66[2];
        v50 = (v48 & 1) == 0;
        v51 = __OFADD__(v49, v50);
        v52 = v49 + v50;
        if (v51)
        {
          goto LABEL_36;
        }

        v53 = v48;
        if (v66[3] < v52)
        {
          sub_1DF2E04D0(v52, isUniquelyReferenced_nonNull_native);
          v47 = sub_1DF2DFEF4(v63, sub_1DF2CFB3C);
          if ((v53 & 1) != (v54 & 1))
          {
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        v55 = v64;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v67 = v48;
          v60 = v47;
          sub_1DF2E0A4C();
          v47 = v60;
          v53 = v67;
LABEL_27:
          v55 = v64;
        }

        v66 = *&v69[0];
        if (v53)
        {
          v56 = *(*&v69[0] + 56);
          v57 = *(v56 + 8 * v47);
          *(v56 + 8 * v47) = v55;
          swift_unknownObjectRelease();
          v17 = v57;
          goto LABEL_5;
        }

        *(*&v69[0] + 8 * (v47 >> 6) + 64) |= 1 << v47;
        *(v66[6] + 8 * v47) = v63;
        *(v66[7] + 8 * v47) = v55;
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(&v70);
        v58 = v66[2];
        v51 = __OFADD__(v58, 1);
        v59 = v58 + 1;
        if (v51)
        {
          goto LABEL_37;
        }

        v66[2] = v59;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v70);
        swift_unknownObjectRelease();
      }
    }

    else
    {
LABEL_6:
      __swift_destroy_boxed_opaque_existential_0(&v70);
    }
  }

  if (v8 <= v16 + 1)
  {
    v19 = v16 + 1;
  }

  else
  {
    v19 = v8;
  }

  v20 = v19 - 1;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v8)
    {
      v7 = 0;
      v71 = 0u;
      v72 = 0u;
      v16 = v20;
      v70 = 0u;
      goto LABEL_18;
    }

    v7 = *(a1 + 64 + 8 * v18);
    ++v16;
    if (v7)
    {
      v16 = v18;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  type metadata accessor for container_class_t(0);
  result = sub_1DF3B103C();
  __break(1u);
  return result;
}

uint64_t sub_1DF2DF1B0(void *a1, uint64_t a2, MCMAnalytics *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v16 = *(v8 + OBJC_IVAR___MCMEntitlementAccess_classes);
  v17 = [a1 containerClass];
  if (!*(v16 + 16))
  {
    goto LABEL_37;
  }

  v18 = sub_1DF2DFEF4(v17, sub_1DF2CFB3C);
  if ((v19 & 1) == 0)
  {
    goto LABEL_37;
  }

  v180 = a5;
  v20 = *(*(v16 + 56) + 8 * v18);
  v21 = sub_1DF3B0DCC();
  v23 = v22;
  if (v21 == a2 && v22 == a3)
  {

    goto LABEL_23;
  }

  v179 = a6;
  v25 = sub_1DF3B100C();

  v23, v26, v27, v28, v29, v30, v31, v32;
  if (v25)
  {
    goto LABEL_19;
  }

  v40 = sub_1DF3B0DCC();
  v23 = v41;
  if (!*v20->db)
  {
    a6 = v179;
    goto LABEL_23;
  }

  v48 = sub_1DF2D6BE4(v40, v41);
  v50 = v49;
  v23, v49, v51, v52, v53, v54, v55, v56;
  if ((v50 & 1) == 0 || (v23 = *(v20[2].queue + v48), !*v23->db))
  {
LABEL_19:
    a6 = v179;
LABEL_20:
    if (!*v20->db)
    {
      goto LABEL_36;
    }

    goto LABEL_24;
  }

  v57 = sub_1DF2DFEF4(a4, sub_1DF2CFB3C);
  a6 = v179;
  if ((v33 & 1) == 0)
  {
    goto LABEL_20;
  }

  v58 = (v23[2].queue + 24 * v57);
  v60 = *v58;
  v59 = v58[1];
  v61 = v58[2];
  v62 = *(*v58)->db;
  v63 = 32;
  do
  {
    if (!v62)
    {
      goto LABEL_20;
    }

    v64 = *(&v60->super.isa + v63);
    v63 += 8;
    --v62;
  }

  while (v64 != a7);
  v177 = v59;
  v178 = v61;

  v65 = sub_1DF2D834C(a8, v177);
  if (v65)
  {
    if (!v178)
    {
      v60, v66, v67, v68, v69, v70, v71, v72;
      v165 = v23;
LABEL_43:
      v165, v158, v159, v160, v161, v162, v163, v164;
      goto LABEL_44;
    }

    if (v179)
    {
      v177 = &v176;
      v181 = v180;
      v182 = v179;
      MEMORY[0x1EEE9AC00](v65);
      v175 = &v181;
      v74 = v73;
      HIDWORD(v176) = sub_1DF2CFBA8(sub_1DF2CFC70, v174, v73);
      v74, v75, v76, v77, v78, v79, v80, v81;
      v60, v82, v83, v84, v85, v86, v87, v88;
      v23, v89, v90, v91, v92, v93, v94, v95;
      if ((v176 & 0x100000000) != 0)
      {
LABEL_44:
        v20, v33, v34, v35, v36, v37, v38, v39;
        v114 = 1;
        return v114 & 1;
      }

      goto LABEL_19;
    }

    v166 = v178;
  }

  else
  {
    v166 = v178;
  }

  v166, v66, v67, v68, v69, v70, v71, v72;
  v60, v167, v168, v169, v170, v171, v172, v173;
LABEL_23:
  v23, v41, v42, v43, v44, v45, v46, v47;
  if (*v20->db)
  {
LABEL_24:
    v96 = sub_1DF2D6BE4(a2, a3);
    if ((v33 & 1) == 0)
    {
      goto LABEL_36;
    }

    v97 = *(v20[2].queue + v96);
    if (!*v97->db)
    {
      goto LABEL_36;
    }

    v98 = sub_1DF2DFEF4(a4, sub_1DF2CFB3C);
    if ((v33 & 1) == 0)
    {
      goto LABEL_36;
    }

    v99 = (v97[2].queue + 24 * v98);
    v100 = *v99;
    v101 = v99[1];
    v102 = v99[2];
    v103 = *(*v99)->db;
    v104 = 32;
    do
    {
      if (!v103)
      {
        goto LABEL_36;
      }

      v105 = *(&v100->super.isa + v104);
      v104 += 8;
      --v103;
    }

    while (v105 != a7);

    v106 = sub_1DF2D834C(a8, v101);
    if (!v106)
    {
LABEL_35:
      v102, v107, v108, v109, v110, v111, v112, v113;
      v100, v143, v144, v145, v146, v147, v148, v149;
      v97, v150, v151, v152, v153, v154, v155, v156;
      goto LABEL_36;
    }

    if (v102)
    {
      if (a6)
      {
        v181 = v180;
        v182 = a6;
        MEMORY[0x1EEE9AC00](v106);
        v175 = &v181;
        v114 = sub_1DF2CFBA8(sub_1DF2CFC54, v174, v102);
        v102, v115, v116, v117, v118, v119, v120, v121;
        v100, v122, v123, v124, v125, v126, v127, v128;
        v97, v129, v130, v131, v132, v133, v134, v135;
        v20, v136, v137, v138, v139, v140, v141, v142;
        return v114 & 1;
      }

      goto LABEL_35;
    }

    v100, v107, v108, v109, v110, v111, v112, v113;
    v165 = v97;
    goto LABEL_43;
  }

LABEL_36:
  v20, v33, v34, v35, v36, v37, v38, v39;
LABEL_37:
  v114 = 0;
  return v114 & 1;
}

uint64_t sub_1DF2DF6AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = *(v6 + OBJC_IVAR___MCMEntitlementAccess_classes);
  v13 = [a1 containerClass];
  if (!*(v12 + 16))
  {
    goto LABEL_37;
  }

  v14 = sub_1DF2DFEF4(v13, sub_1DF2CFB3C);
  if ((v15 & 1) == 0)
  {
    goto LABEL_37;
  }

  v206 = a3;
  v207 = a4;
  v16 = *(*(v12 + 56) + 8 * v14);
  v17 = sub_1DF3B0DCC();
  v19 = v18;
  v20 = sub_1DF3B0DCC();
  v22 = v21;
  if (v20 == v17 && v21 == v19)
  {

LABEL_21:
    v22, v40, v41, v42, v43, v44, v45, v46;
    goto LABEL_22;
  }

  v24 = sub_1DF3B100C();

  v22, v25, v26, v27, v28, v29, v30, v31;
  if ((v24 & 1) == 0)
  {
    v39 = sub_1DF3B0DCC();
    v22 = v40;
    if (*v16->db)
    {
      v47 = sub_1DF2D6BE4(v39, v40);
      v49 = v48;
      v22, v48, v50, v51, v52, v53, v54, v55;
      if ((v49 & 1) == 0)
      {
        goto LABEL_22;
      }

      v22 = *(v16[2].queue + v47);
      if (!*v22->db)
      {
        goto LABEL_22;
      }

      v56 = sub_1DF2DFEF4(a2, sub_1DF2CFB3C);
      if ((v32 & 1) == 0)
      {
        goto LABEL_22;
      }

      v57 = v22[2].queue + 24 * v56;
      v58 = *v57;
      v59 = *(v57 + 8);
      v205 = *(v57 + 16);
      v60 = *v58->db;
      v61 = 32;
      do
      {
        if (!v60)
        {
          goto LABEL_22;
        }

        v62 = *(&v58->super.isa + v61);
        v61 += 8;
        --v60;
      }

      while (v62 != a5);

      v63 = sub_1DF2D834C(a6, v59);
      if (v63)
      {
        if (!v205)
        {
          v58, v64, v65, v66, v67, v68, v69, v70;
          v22, v195, v196, v197, v198, v199, v200, v201;
LABEL_42:
          v16, v32, v33, v34, v35, v36, v37, v38;
          v187 = v19;
          goto LABEL_43;
        }

        if (v207)
        {
          v204[1] = v204;
          v208 = v206;
          v209 = v207;
          MEMORY[0x1EEE9AC00](v63);
          v203 = &v208;
          v71 = v205;
          v72 = sub_1DF2CFBA8(sub_1DF2CFC70, v202, v205);
          v73 = v71;
          LOBYTE(v71) = v72;
          v73, v74, v75, v76, v77, v78, v79, v80;
          v58, v81, v82, v83, v84, v85, v86, v87;
          v22, v88, v89, v90, v91, v92, v93, v94;
          if (v71)
          {
            goto LABEL_42;
          }

          goto LABEL_22;
        }
      }

      v205, v64, v65, v66, v67, v68, v69, v70;
      v58, v188, v189, v190, v191, v192, v193, v194;
    }

    goto LABEL_21;
  }

LABEL_22:
  if (*v16->db)
  {
    v95 = sub_1DF2D6BE4(v17, v19);
    v97 = v96;
    v19, v96, v98, v99, v100, v101, v102, v103;
    if (v97)
    {
      v111 = *(v16[2].queue + v95);
      if (*v111->db)
      {
        v112 = sub_1DF2DFEF4(a2, sub_1DF2CFB3C);
        if (v104)
        {
          v113 = (v111[2].queue + 24 * v112);
          v114 = *v113;
          v115 = v113[1];
          v116 = v113[2];
          v117 = *(*v113)->db;
          v118 = 32;
          do
          {
            if (!v117)
            {
              goto LABEL_35;
            }

            v119 = *(&v114->super.isa + v118);
            v118 += 8;
            --v117;
          }

          while (v119 != a5);

          v120 = sub_1DF2D834C(a6, v115);
          if (v120)
          {
            if (!v116)
            {
              v114, v121, v122, v123, v124, v125, v126, v127;
              v111, v173, v174, v175, v176, v177, v178, v179;
              v187 = v16;
LABEL_43:
              v187, v180, v181, v182, v183, v184, v185, v186;
              v128 = 1;
              return v128 & 1;
            }

            if (v207)
            {
              v208 = v206;
              v209 = v207;
              MEMORY[0x1EEE9AC00](v120);
              v203 = &v208;
              v128 = sub_1DF2CFBA8(sub_1DF2CFC70, v202, v116);
              v116, v129, v130, v131, v132, v133, v134, v135;
              v114, v136, v137, v138, v139, v140, v141, v142;
              v111, v143, v144, v145, v146, v147, v148, v149;
              v16, v150, v151, v152, v153, v154, v155, v156;
              return v128 & 1;
            }
          }

          v116, v121, v122, v123, v124, v125, v126, v127;
          v114, v158, v159, v160, v161, v162, v163, v164;
          v111, v165, v166, v167, v168, v169, v170, v171;
        }
      }
    }

LABEL_35:
    v157 = v16;
  }

  else
  {
    v16, v32, v33, v34, v35, v36, v37, v38;
    v157 = v19;
  }

  v157, v104, v105, v106, v107, v108, v109, v110;
LABEL_37:
  v128 = 0;
  return v128 & 1;
}

uint64_t sub_1DF2DFB9C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___MCMEntitlementAccess_classes);
  v3 = [a1 containerClass];
  if (!*(v2 + 16))
  {
    return MEMORY[0x1E69E7CD0];
  }

  v4 = sub_1DF2DFEF4(v3, sub_1DF2CFB3C);
  if ((v5 & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v6 = *(*(v2 + 56) + 8 * v4);
  swift_bridgeObjectRetain_n();
  sub_1DF2DFC68(v6);
  v34 = v7;
  v8 = sub_1DF3B0DCC();
  v10 = v9;
  sub_1DF2E0BA8(v8, v9);
  v12 = v11;
  v10, v11, v13, v14, v15, v16, v17, v18;
  v6, v19, v20, v21, v22, v23, v24, v25;
  v12, v26, v27, v28, v29, v30, v31, v32;
  return v34;
}

void sub_1DF2DFC68(uint64_t a1)
{
  v2 = 0;
  v19[2] = MEMORY[0x1E12D2820](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = (*(a1 + 48) + ((v7 << 10) | (16 * v8)));
    v10 = *v9;
    v11 = v9[1];

    sub_1DF2DC940(v19, v10, v11);
    v19[1], v12, v13, v14, v15, v16, v17, v18;
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

id MCMEntitlementAccess.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1DF2DFEF4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_1DF3B109C();
  MEMORY[0x1E12D2A50](a1);
  v3 = sub_1DF3B10BC();

  return a2(a1, v3);
}

uint64_t sub_1DF2DFF6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30FD8, &unk_1DF3BDFB0);
  v34 = v4;
  result = sub_1DF3B0FDC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 24 * v20);
      v23 = *v22;
      v35 = v22[1];
      v24 = v22[2];
      if ((v34 & 1) == 0)
      {
      }

      sub_1DF3B109C();
      MEMORY[0x1E12D2A50](v21);
      result = sub_1DF3B10BC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 24 * v15);
      *v16 = v23;
      v16[1] = v35;
      v16[2] = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DF2E0228(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30FF0, qword_1DF3BDFC8);
  v34 = v4;
  result = sub_1DF3B0FDC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1DF3B109C();
      sub_1DF3B0E0C();
      result = sub_1DF3B10BC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DF2E04D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30FE8, &qword_1DF3BDFC0);
  v30 = v4;
  result = sub_1DF3B0FDC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1DF3B109C();
      MEMORY[0x1E12D2A50](v20);
      result = sub_1DF3B10BC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1DF2E0760()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30FD8, &unk_1DF3BDFB0);
  v2 = *v0;
  v3 = sub_1DF3B0FCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 24 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = (*(v4 + 56) + 24 * v17);
        *v22 = v20;
        v22[1] = v19;
        v22[2] = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DF2E08DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30FF0, qword_1DF3BDFC8);
  v2 = *v0;
  v3 = sub_1DF3B0FCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DF2E0A4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30FE8, &qword_1DF3BDFC0);
  v2 = *v0;
  v3 = sub_1DF3B0FCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1DF2E0BA8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1DF3B109C();
  sub_1DF3B0E0C();
  v6 = sub_1DF3B10BC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1DF3B100C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DF2DCE70();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1DF2E0CE4(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_1DF2E0CE4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1DF3B0F4C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 16 * v6 + 8);
        sub_1DF3B109C();

        sub_1DF3B0E0C();
        v11 = sub_1DF3B10BC();
        v10, v12, v13, v14, v15, v16, v17, v18;
        v19 = v11 & v7;
        if (v2 >= v9)
        {
          if (v19 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v19 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v19)
        {
LABEL_11:
          v20 = *(v3 + 48);
          v21 = (v20 + 16 * v2);
          v22 = (v20 + 16 * v6);
          if (v2 != v6 || v21 >= v22 + 1)
          {
            *v21 = *v22;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

MCMAnalytics *sub_1DF2E0EA8(MCMAnalytics *result, int64_t a2, void *a3, MCMAnalytics *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    isa = a4[1].super.isa;
    v11 = isa >> 1;
    if ((isa >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = isa & 0xFFFFFFFFFFFFFFFELL;
      if ((isa & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->db;
  if (v11 <= v12)
  {
    v13 = *a4->db;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30FD0, &qword_1DF3BDFA8);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *v14->db = v12;
    v14[1].super.isa = (2 * (v16 >> 3));
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  p_queue = &v14[1].queue;
  v18 = &a4[1].queue;
  if (v9)
  {
    if (v14 != a4 || p_queue >= &v18[8 * v12])
    {
      memmove(p_queue, v18, 8 * v12);
    }

    *a4->db = 0;
  }

  else
  {
    memcpy(p_queue, v18, 8 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

void *sub_1DF2E0FAC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30FE8, &qword_1DF3BDFC0);
  v3 = sub_1DF3B0FEC();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1DF2DFEF4(v4, sub_1DF2CFB3C);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1DF2DFEF4(v4, sub_1DF2CFB3C);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DF2E10DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30FF0, qword_1DF3BDFC8);
    v3 = sub_1DF3B0FEC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1DF2D6BE4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1DF2E11E0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30FD8, &unk_1DF3BDFB0);
  v3 = sub_1DF3B0FEC();
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v8 = sub_1DF2DFEF4(v4, sub_1DF2CFB3C);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v5;
  v12 = a1 + 11;
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v3[6] + 8 * v10) = v4;
    v13 = (v3[7] + 24 * v10);
    *v13 = result;
    v13[1] = v7;
    v13[2] = v6;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 4;
    v4 = *(v12 - 3);
    v18 = *(v12 - 2);
    v7 = *(v12 - 1);
    v19 = *v12;

    v10 = sub_1DF2DFEF4(v4, sub_1DF2CFB3C);
    v12 = v17;
    v6 = v19;
    result = v18;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

MCMAnalytics *sub_1DF2E1348(void *a1)
{
  sub_1DF2D2724(a1, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30FC0, &unk_1DF3BDF98);
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  v9 = v75;
  if (!*v75->db || (v10 = sub_1DF2D6BE4(0x737365636361, 0xE600000000000000), (v2 & 1) == 0))
  {
    v75, v2, v3, v4, v5, v6, v7, v8;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(a1);
    goto LABEL_10;
  }

  sub_1DF2D2724(v75[2].queue + 32 * v10, v74);
  if (swift_dynamicCast() & 1) == 0 || (sub_1DF2D8118(v72, v73, v11, v12, v13, v14, v15, v16), (v17))
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
LABEL_7:
    v9, v24, v25, v26, v27, v28, v29, v30;
LABEL_10:
    v31 = 0;
    goto LABEL_11;
  }

  if (*v9->db && (v33 = sub_1DF2D6BE4(0x6F6974617265706FLL, 0xEA0000000000736ELL), (v17 & 1) != 0) && (sub_1DF2D2724(v9[2].queue + 32 * v33, v74), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30CF8, &qword_1DF3BD910), swift_dynamicCast()))
  {
    v34 = v72;
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

  v35 = *(v34 + 16);
  v71 = v34;
  if (v35)
  {
    v36 = (v34 + 40);
    v31 = MEMORY[0x1E69E7CC0];
    do
    {
      v37 = *(v36 - 1);
      v38 = *v36;

      v45 = sub_1DF2E4CA0(v37, v38, v39, v40, v41, v42, v43, v44);
      if ((v17 & 1) == 0)
      {
        v46 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_1DF2E0EA8(0, *v31->db + 1, 1, v31, v20, v21, v22, v23);
        }

        v48 = *v31->db;
        isa = v31[1].super.isa;
        if (v48 >= isa >> 1)
        {
          v31 = sub_1DF2E0EA8((isa > 1), v48 + 1, 1, v31, v20, v21, v22, v23);
        }

        *v31->db = v48 + 1;
        *(&v31[1].queue + v48) = v46;
      }

      v36 += 2;
      --v35;
    }

    while (v35);
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  v71, v17, v18, v19, v20, v21, v22, v23;
  if (!*v31->db)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v31, v64, v65, v66, v67, v68, v69, v70;
    goto LABEL_7;
  }

  if (*v9->db && (v56 = sub_1DF2D6BE4(0x736E69616D6F64, 0xE700000000000000), (v49 & 1) != 0))
  {
    sub_1DF2D2724(v9[2].queue + 32 * v56, v74);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v9, v57, v58, v59, v60, v61, v62, v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30CF8, &qword_1DF3BD910);
    swift_dynamicCast();
  }

  else
  {
    v9, v49, v50, v51, v52, v53, v54, v55;
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

LABEL_11:
  __swift_destroy_boxed_opaque_existential_0(v76);
  return v31;
}

MCMAnalytics *sub_1DF2E1660(void *a1)
{
  v1 = a1;
  sub_1DF2D2724(a1, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE30FC0, &unk_1DF3BDF98);
  if (swift_dynamicCast())
  {
    v2 = v76;
    v3 = sub_1DF2E11E0(MEMORY[0x1E69E7CC0]);
    v4 = 0;
    v5 = 1 << *(v76 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v76 + 64);
    v8 = (v5 + 63) >> 6;
    while (1)
    {
      while (1)
      {
        v9 = v4;
        if (!v7)
        {
          if (v8 <= v4 + 1)
          {
            v11 = v4 + 1;
          }

          else
          {
            v11 = v8;
          }

          v4 = v11 - 1;
          while (1)
          {
            v10 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              break;
            }

            if (v10 >= v8)
            {
              v7 = 0;
              v72 = 0u;
              v73 = 0u;
              v71 = 0u;
              goto LABEL_15;
            }

            v7 = *(v2 + 64 + 8 * v10);
            ++v9;
            if (v7)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          type metadata accessor for container_part_t();
          result = sub_1DF3B103C();
          __break(1u);
          return result;
        }

        v10 = v4;
LABEL_14:
        v12 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v13 = v12 | (v10 << 6);
        v14 = (*(v2 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_1DF2D2724(*(v2 + 56) + 32 * v13, v70);
        *&v71 = v15;
        *(&v71 + 1) = v16;
        sub_1DF2DD320(v70, &v72);

        v4 = v10;
LABEL_15:
        v74 = v71;
        v75[0] = v72;
        v75[1] = v73;
        v17 = *(&v71 + 1);
        if (!*(&v71 + 1))
        {
          __swift_destroy_boxed_opaque_existential_0(v1);

          if (*v3->db)
          {
            goto LABEL_35;
          }

          v3, v58, v59, v60, v61, v62, v63, v64;
          goto LABEL_34;
        }

        sub_1DF2DD320(v75, &v71);
        v18 = sub_1DF3B0DBC();
        v17, v19, v20, v21, v22, v23, v24, v25;
        v26 = MCMGetContainerPartForName(v18);

        if (v26 != 7)
        {
          sub_1DF2D2724(&v71, v70);
          v27 = sub_1DF2E1348(v70);
          if (v27)
          {
            break;
          }
        }

LABEL_17:
        __swift_destroy_boxed_opaque_existential_0(&v71);
      }

      v66 = v27;
      v67 = v28;
      v68 = v29;
      v69 = v1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v70[0] = v3;
      v31 = sub_1DF2DFEF4(v26, sub_1DF2CFB3C);
      v39 = *v3->db;
      v40 = (v32 & 1) == 0;
      v41 = __OFADD__(v39, v40);
      v42 = v39 + v40;
      if (v41)
      {
        goto LABEL_37;
      }

      v43 = v32;
      if (v3[1].super.isa < v42)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_25;
      }

      v54 = v31;
      sub_1DF2E0760();
      v31 = v54;
      v1 = v69;
      v3 = *&v70[0];
      if (v43)
      {
LABEL_26:
        v44 = v3[2].queue + 24 * v31;
        v45 = *v44;
        v46 = *(v44 + 16);
        *v44 = v66;
        *(v44 + 8) = v67;
        *(v44 + 16) = v68;
        v45, v32, v33, v34, v35, v36, v37, v38;
        v46, v47, v48, v49, v50, v51, v52, v53;
        goto LABEL_17;
      }

LABEL_29:
      *&v3[2].db[8 * (v31 >> 6)] |= 1 << v31;
      *(v3[2].super.isa + v31) = v26;
      v55 = (v3[2].queue + 24 * v31);
      *v55 = v66;
      v55[1] = v67;
      v55[2] = v68;
      __swift_destroy_boxed_opaque_existential_0(&v71);
      v56 = *v3->db;
      v41 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v41)
      {
        goto LABEL_38;
      }

      *v3->db = v57;
    }

    sub_1DF2DFF6C(v42, isUniquelyReferenced_nonNull_native);
    v31 = sub_1DF2DFEF4(v26, sub_1DF2CFB3C);
    if ((v43 & 1) != (v32 & 1))
    {
      goto LABEL_39;
    }

LABEL_25:
    v1 = v69;
    v3 = *&v70[0];
    if (v43)
    {
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  __swift_destroy_boxed_opaque_existential_0(v1);
LABEL_34:
  v3 = 0;
LABEL_35:
  __swift_destroy_boxed_opaque_existential_0(v77);
  return v3;
}